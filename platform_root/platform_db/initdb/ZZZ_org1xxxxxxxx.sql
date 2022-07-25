-- 仮、本来はOrganization作成時にDBを作成
CREATE USER org1xxxxxxxx_user IDENTIFIED BY 'password';
CREATE DATABASE org1xxxxxxxx CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL PRIVILEGES ON org1xxxxxxxx.* TO org1xxxxxxxx_user;

USE org1xxxxxxxx;

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
INSERT INTO platform.organization (organization_id, organization_name) VALUES ("exastro-common-auth", "ExastroCommonAuth");
INSERT INTO platform.organization_db (organization_id, db_host, db_port, db_database, db_user, db_password) VALUES ("exastro-common-auth", "platform-db", 3306, "org1xxxxxxxx", "org1xxxxxxxx_user", "password");
INSERT INTO org1xxxxxxxx.organization_private (id, informations) VALUES (1, JSON_OBJECT(
-- "INTERNAL_API_CLIENT_CLIENTID","exastro-common-auth-pf",
-- "INTERNAL_API_CLIENT_ID","pf-client-ID",
-- "INTERNAL_API_CLIENT_SECRET","pf-client-secret"
 "USER_TOKEN_CLIENT_CLIENTID","exastro-common-auth-public",
 "USER_TOKEN_CLIENT_ID","pb-client-ID",

 "TOKEN_CHECK_CLIENT_CLIENTID","exastro-common-auth-bearer",
 "TOKEN_CHECK_CLIENT_CLIENTID","br-ID",
 "TOKEN_CHECK_CLIENT_SECRET","bearer-client-secret"
));
INSERT INTO org1xxxxxxxx.workspace (workspace_id, workspace_name) VALUES ("workspace001", "workspace001");
INSERT INTO org1xxxxxxxx.workspace (workspace_id, workspace_name) VALUES ("workspace002", "workspace002");
INSERT INTO org1xxxxxxxx.workspace (workspace_id, workspace_name) VALUES ("workspaceAAA", "workspaceAAA");
INSERT INTO org1xxxxxxxx.workspace (workspace_id, workspace_name) VALUES ("workspaceBBB", "workspaceBBB");
