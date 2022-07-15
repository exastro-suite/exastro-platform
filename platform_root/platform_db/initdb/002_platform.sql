CREATE USER app_user IDENTIFIED BY 'password';
CREATE DATABASE platform CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON platform.* TO app_user;

USE platform;

CREATE TABLE IF NOT EXISTS organization
(
  organization_id varchar(255) not null,
  organization_name varchar(255) not null,
  create_at datetime not null DEFAULT CURRENT_TIMESTAMP,
  update_at datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (organization_id)
);


CREATE TABLE IF NOT EXISTS organization_db
(
  organization_id varchar(255) not null,
  db_host varchar(255),
  db_port int,
  db_database varchar(255),
  db_user varchar(255),
  db_password varchar(255),
  create_at datetime not null DEFAULT CURRENT_TIMESTAMP,
  update_at datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (organization_id)
);
