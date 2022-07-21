-- 仮、本来はOrganization作成時にDBを作成
CREATE USER org1_user IDENTIFIED BY 'password';
CREATE DATABASE org1db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON org1db.* TO org1_user;

USE org1db;

CREATE TABLE IF NOT EXISTS organization_private
(
  id int not null,
  informations json not null,
  create_at datetime not null DEFAULT CURRENT_TIMESTAMP,
  update_at datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS workspace
(
  workspace_id varchar(255) not null,
  workspace_name varchar(255) not null,
  create_at datetime not null DEFAULT CURRENT_TIMESTAMP,
  update_at datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (workspace_id)
);

CREATE TABLE IF NOT EXISTS environment
(
  environment_id varchar(255) not null,
  environment_name varchar(255) not null,
  create_at datetime not null DEFAULT CURRENT_TIMESTAMP,
  update_at datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (environment_id)
);

CREATE TABLE IF NOT EXISTS workspace_environment
(
  workspace_id varchar(255) not null,
  environment_id varchar(255) not null,
  create_at datetime not null DEFAULT CURRENT_TIMESTAMP,
  update_at datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (workspace_id, environment_id)
);

-- 仮データ
INSERT INTO platform.organization (organization_id, organization_name) VALUES ("org1", "オーガナイゼーション１");
INSERT INTO platform.organization_db (organization_id, db_host, db_port, db_database, db_user, db_password) VALUES ("org1", "platform-db", 3306, "org1db", "org1_user", "password");
INSERT INTO org1db.organization_private (id, informations) VALUES (1, JSON_OBJECT("TOKEN_CHECK_CLIENT_SECRET","bearer-client-secret", "INTERNAL_API_CLIENT_SECRET","pf-client-secret" ));
INSERT INTO org1db.workspace (workspace_id, workspace_name) VALUES ("ws1", "ワークスペース１");
INSERT INTO org1db.workspace (workspace_id, workspace_name) VALUES ("ws2", "ワークスペース２");
INSERT INTO org1db.workspace (workspace_id, workspace_name) VALUES ("ws3", "ワークスペース３");
