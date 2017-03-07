package tool

import (
	"encoding/json"
	"errors"
	"fmt"
	"skilldirectory/util"

	"github.com/Sirupsen/logrus"
	"github.com/gocql/gocql"
)

// TimestampFormat is a CSQL-compatible timestamp format
const TimestampFormat = "2006-01-02 15:04:05-0700"

type CassandraConnector struct {
	*gocql.Session
	*logrus.Logger
	path     string
	port     string
	keyspace string
	username string
	password string
}

type CassandraQueryOptions struct {
	Filters []Filter
}

type Filter struct {
	key   string
	value string
	id    bool
}

type ReadAllInterface interface {
	GetType() interface{}
}

func (f Filter) query() string {
	queryString := fmt.Sprintf("%s", f.key)
	queryString += " = "
	if !f.id {
		queryString += "'"
	}
	queryString += f.value
	if !f.id {
		queryString += "'"
	}
	return queryString
}

func ConnectToCassandra(log *logrus.Logger) *CassandraConnector {
	cassUrl := GetProperty("CASSANDRA_URL")
	cassPort := GetProperty("CASSANDRA_PORT")
	cassKeyspace := GetProperty("CASSANDRA_KEYSPACE")
	cassUsername := GetProperty("CASSANDRA_USERNAME")
	cassPassword := GetProperty("CASSANDRA_PASSWORD")

	return NewCassandraConnector(cassUrl, cassPort, cassKeyspace, cassUsername, cassPassword, log)
}

func NewCassandraConnector(path, port, keyspace, username,
	password string, logger *logrus.Logger) *CassandraConnector {
	logger.Printf("New Connector Path: %s, Port: %s, Keyspace: %s, Username: %s",
		path, port, keyspace, username)
	logger.Debug("Using Password: " + password)
	cluster := gocql.NewCluster(path)
	cluster.Keyspace = keyspace
	cluster.Consistency = gocql.Quorum
	cluster.Authenticator = gocql.PasswordAuthenticator{
		Username: username,
		Password: password,
	}
	session, err := cluster.CreateSession()
	if err != nil {
		logger.Panic(err)
	}
	cassConn := CassandraConnector{
		path:     path,
		port:     port,
		keyspace: keyspace,
		username: username,
		password: password,
	}
	cassConn.Session = session
	cassConn.Logger = logger
	return &cassConn
}

/*
NewCassandraQueryOptions creates a new options object.
key: query field name
value: query value
id: True if field is a UUID Cassandra key
*/
func NewCassandraQueryOptions(key, value string, id bool) CassandraQueryOptions {
	filter := Filter{key, value, id}
	return CassandraQueryOptions{
		Filters: []Filter{filter},
	}
}

/*
AddFilter adds a filter to an CassandraQueryOptions object
key: query field name
value: query value
id: True if field is a UUID Cassandra key
*/
func (o *CassandraQueryOptions) AddFilter(key, value string, id bool) {
	filter := Filter{key, value, id}
	o.Filters = append(o.Filters, filter)
}

func (c CassandraConnector) Save(table, key string, object interface{}) error {
	b, err := json.Marshal(object)
	if err != nil {
		return err
	}
	query := "INSERT INTO " + table + " JSON '" + util.SanitizeInput(string(b)) + "'"
	c.Debugf("Running this CQL Query: \n\t%q\n", query)
	return c.Query(query).Exec()
}

func (c CassandraConnector) Read(table, id string, opts CassandraQueryOptions, object interface{}) error {
	query := makeReadQueryStr(table, id, opts, c)
	c.Debugf("Running this CQL Query: \n\t%q\n", query)
	byteQ := []byte{}
	err := c.Query(query).Consistency(gocql.One).Scan(&byteQ)
	if err != nil {
		return err
	}
	return json.Unmarshal(byteQ, &object)
}

func (c CassandraConnector) Delete(table, id string, opts CassandraQueryOptions) error {
	query := makeDeleteQueryStr(table, id, opts, c)
	if query == "" {
		return errors.New("Attempting to delete with no id")
	}
	c.Debugf("Running the following DELETE query:\n\t%q\n", query)
	return c.Query(query).Exec()
}

func makeReadQueryStr(table string, id string, opts CassandraQueryOptions, c CassandraConnector) string {
	query := "SELECT JSON * FROM " + table + makeQueryConditionStr(table, id, opts, c)
	c.Infof("Reading:%s,%s,%v", table, id, opts)
	return query
}

func makeDeleteQueryStr(table string, id string, opts CassandraQueryOptions, c CassandraConnector) string {
	query := "DELETE FROM " + table + makeQueryConditionStr(table, id, opts, c)
	c.Infof("Deleting:%s,%s,%v", table, id, opts)
	return query
}

func makeQueryConditionStr(table string, id string, opts CassandraQueryOptions, c CassandraConnector) string {
	query := " WHERE "
	firstField := true

	if id != "" {
		firstField = false
		query += "id = " + id
	}
	for _, filter := range opts.Filters {
		if filter.key == "id" {
			continue
		}
		if filter.value == "" {
			value, err := c.readCol(table, id, filter.key)
			if err != nil {
				c.Warnf("Read column failed:%s,%s,%s", table, id, filter.key)
				continue
			}
			filter.value = value
		}
		if !firstField {
			query += " AND "
		}
		query += filter.query()
		firstField = false
	}
	query += ";"

	return query
}

func (c CassandraConnector) readCol(table, id, col string) (string, error) {
	// Get value for this column
	colQuery := "SELECT " + col + " FROM " + table + " WHERE id = " + id
	m := make(map[string]interface{})
	err := c.Query(colQuery).Consistency(gocql.One).MapScan(m)
	if err != nil {
		return "", err
	}

	// value can be of different types. Based on type, append it onto the
	// base query string.
	var colVal string
	switch v := m[col].(type) {
	case int:
		colVal = string(v)
	case string:
		colVal = "'" + v + "'"
	case gocql.UUID:
		colVal = v.String()
	default:
		return "", fmt.Errorf("Unrecognized value type, %T, for column, %q", m[col], col)
	}
	return colVal, nil
}

func (c CassandraConnector) ReadAll(table string, readType ReadAllInterface) ([]interface{}, error) {
	return c.FilteredReadAll(table, CassandraQueryOptions{}, readType)
}

func (c CassandraConnector) FilteredReadAll(table string, opts CassandraQueryOptions, readType ReadAllInterface) ([]interface{}, error) {
	query := "SELECT JSON * FROM " + table
	if opts.Filters != nil {
		query += " WHERE "
	}
	for _, filter := range opts.Filters {
		query += filter.query()
	}
	query += ";"
	queryBytes := []byte{}
	queryObject := readType.GetType()
	queryObjectArray := []interface{}{}
	var err error
	c.Debugf("Performing query: %s", query)
	iter := c.Query(query).Iter()
	for iter.Scan(&queryBytes) {
		err = json.Unmarshal(queryBytes, &queryObject)
		if err != nil {
			return nil, fmt.Errorf("Read all unmarshal err: %s", err)
		}
		queryObjectArray = append(queryObjectArray, queryObject)
	}
	return queryObjectArray, nil
}
