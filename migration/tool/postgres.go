package tool

import (
	"fmt"

	log "github.com/Sirupsen/logrus"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/postgres"
)

type PostgresConnector struct {
	db *gorm.DB
	*log.Logger
	path     string
	port     string
	keyspace string
	username string
	password string
}

type GormInterface interface {
	DB() *gorm.DB
}

func ConnectToPostgres(logger *log.Logger) *PostgresConnector {
	postgresUrl := GetProperty("POSTGRES_URL")
	postgresPort := GetProperty("POSTGRES_PORT")
	postgresKeyspace := GetProperty("POSTGRES_KEYSPACE")
	postgresUsername := GetProperty("POSTGRES_USERNAME")
	postgresPassword := GetProperty("POSTGRES_PASSWORD")

	return NewPostgresConnector(postgresUrl, postgresPort, postgresKeyspace, postgresUsername,
		postgresPassword, logger)

}

func NewPostgresConnector(path, port, keyspace, username,
	password string, logger *log.Logger) *PostgresConnector {
	logger.Printf("New Connector Path: %s, Port: %s, Keyspace: %s, Username: %s",
		path, port, keyspace, username)
	logger.Debug("Using Password: " + password)
	logger.Printf("New Connector Path: %s, Port: %s, Keyspace: %s, Username: %s",
		path, port, keyspace, username)
	logger.Debug("Using password: " + password)

	postgresString := fmt.Sprintf(
		"host=%s port=%s user=%s dbname=%s sslmode=disable password=%s",
		path, port, username, keyspace, password)
	fmt.Println(postgresString)
	db, err := gorm.Open("postgres", postgresString)
	if err != nil {
		fmt.Printf("Error Type: %T\n", err)
		logger.Panic(err)
	}
	return &PostgresConnector{
		db,
		logger,
		path,
		port,
		keyspace,
		username,
		password,
	}
}

func (p PostgresConnector) DB() *gorm.DB {
	return p.db
}
