SET @database='Blocks';

CREATE DATABASE IF NOT EXISTS @database;

use @database;

CREATE TABLE  IF NOT EXISTS User (
  uid int(10) unsigned NOT NULL,
  email varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  token varchar(255) DEFAULT NULL,
  PRIMARY KEY ( uid ),
  UNIQUE KEY token_UNIQUE ( token ),
  UNIQUE KEY email_UNIQUE ( email )
) ENGINE=InnoDB DEFAULT CHARSET=Latin1;

CREATE TABLE IF NOT EXISTS Blocks (
  idblock int(10) unsigned NOT NULL AUTO_INCREMENT,
  title varchar(255) DEFAULT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  content text,
  PRIMARY KEY ( idblock )
) ENGINE=InnoDB DEFAULT CHARSET=Latin1;

