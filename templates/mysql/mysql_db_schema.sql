# Tabelle für Benutzerkonten erstellen
CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED AUTO_INCREMENT NOT NULL,
  username VARCHAR(128) NOT NULL,
  domain VARCHAR(128) NOT NULL,
  password VARCHAR(128) NOT NULL,
  UNIQUE (id),
  PRIMARY KEY (username, domain) );

# Tabelle für Domains
CREATE TABLE IF NOT EXISTS domains (
  domain VARCHAR(128) NOT NULL,
  UNIQUE (domain));

# Tabelle für Aliase
CREATE TABLE IF NOT EXISTS aliases (
  id INT UNSIGNED AUTO_INCREMENT NOT NULL,
  source VARCHAR(128) NOT NULL,
  destination VARCHAR(128) NOT NULL,
  UNIQUE (id),
  PRIMARY KEY (source, destination) );
