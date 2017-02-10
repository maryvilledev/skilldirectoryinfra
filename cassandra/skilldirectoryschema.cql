CREATE KEYSPACE IF NOT EXISTS skill_directory_keyspace with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.skills (
	name       varchar,
	id         uuid PRIMARY KEY,
	skill_type varchar
);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.links (
	id        uuid,
	name      varchar,
	url       varchar,
	skill_id  uuid,
	link_type varchar,
	PRIMARY KEY (skill_id, id)
);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.teammembers (
    name  varchar,
    id    uuid PRIMARY KEY,
    title varchar
);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.tmskills (
    id             uuid,
    skill_id       varchar,
    team_member_id varchar,
    wish_list      boolean,
    proficiency    int,
    PRIMARY KEY (team_member_id, id)
);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.skillreviews_by_id (
    id             uuid,
    skill_id       uuid,
    team_member_id uuid,
    body           varchar,
    timestamp      timestamp,
    year           timestamp,
    positive       boolean,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.skillreviews_by_skill (
    id             uuid,
    skill_id       uuid,
    team_member_id uuid,
    body           varchar,
    timestamp      timestamp,
    year           timestamp,
    positive       boolean,
    PRIMARY KEY (skill_id, timestamp)
) WITH CLUSTERING ORDER BY (timestamp DESC);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.skillreviews_by_year (
    id             uuid,
    skill_id       uuid,
    team_member_id uuid,
    body           varchar,
    timestamp      timestamp,
    year		   timestamp,
    positive       boolean,
    PRIMARY KEY (year, timestamp)
) WITH CLUSTERING ORDER BY (timestamp DESC);

CREATE TABLE IF NOT EXISTS skill_directory_keyspace.skillicons (
    skill_id uuid, // Will contain associated skill's id
    url      varchar,
    PRIMARY KEY (skill_id)
);

CREATE INDEX IF NOT EXISTS ON skill_directory_keyspace.skills ( skill_type );
CREATE INDEX IF NOT EXISTS ON skill_directory_keyspace.tmskills ( id );
CREATE INDEX IF NOT EXISTS ON skill_directory_keyspace.links ( id );