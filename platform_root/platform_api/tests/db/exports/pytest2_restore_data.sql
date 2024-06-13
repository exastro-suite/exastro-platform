SET foreign_key_checks = 0;
DELETE FROM keycloak.DATABASECHANGELOGLOCK;
DELETE FROM keycloak.DATABASECHANGELOG;
DELETE FROM keycloak.POLICY_CONFIG;
DELETE FROM keycloak.CLIENT;
DELETE FROM keycloak.ADMIN_EVENT_ENTITY;
DELETE FROM keycloak.CLIENT_SESSION_ROLE;
DELETE FROM keycloak.WEB_ORIGINS;
DELETE FROM keycloak.FEDERATED_USER;
DELETE FROM keycloak.EVENT_ENTITY;
DELETE FROM keycloak.USER_CONSENT;
DELETE FROM keycloak.CLIENT_SESSION_NOTE;
DELETE FROM keycloak.MIGRATION_MODEL;
DELETE FROM keycloak.REALM_EVENTS_LISTENERS;
DELETE FROM keycloak.OFFLINE_CLIENT_SESSION;
DELETE FROM keycloak.KEYCLOAK_ROLE;
DELETE FROM keycloak.GROUP_ATTRIBUTE;
DELETE FROM keycloak.PROTOCOL_MAPPER_CONFIG;
DELETE FROM keycloak.REDIRECT_URIS;
DELETE FROM keycloak.SCOPE_MAPPING;
DELETE FROM keycloak.KEYCLOAK_GROUP;
DELETE FROM keycloak.USER_ATTRIBUTE;
DELETE FROM keycloak.USER_ENTITY;
DELETE FROM keycloak.USER_FEDERATION_PROVIDER;
DELETE FROM keycloak.RESOURCE_POLICY;
DELETE FROM keycloak.RESOURCE_SCOPE;
DELETE FROM keycloak.FEDERATED_IDENTITY;
DELETE FROM keycloak.USER_SESSION;
DELETE FROM keycloak.IDENTITY_PROVIDER_CONFIG;
DELETE FROM keycloak.COMPOSITE_ROLE;
DELETE FROM keycloak.SCOPE_POLICY;
DELETE FROM keycloak.REALM_ATTRIBUTE;
DELETE FROM keycloak.CLIENT_SESSION;
DELETE FROM keycloak.USER_ROLE_MAPPING;
DELETE FROM keycloak.CLIENT_ATTRIBUTES;
DELETE FROM keycloak.REALM_SMTP_CONFIG;
DELETE FROM keycloak.BROKER_LINK;
DELETE FROM keycloak.REALM;
DELETE FROM keycloak.REALM_ENABLED_EVENT_TYPES;
DELETE FROM keycloak.REALM_REQUIRED_CREDENTIAL;
DELETE FROM keycloak.FED_USER_CONSENT;
DELETE FROM keycloak.USER_FEDERATION_CONFIG;
DELETE FROM keycloak.IDENTITY_PROVIDER;
DELETE FROM keycloak.FED_USER_CONSENT_CL_SCOPE;
DELETE FROM keycloak.REALM_SUPPORTED_LOCALES;
DELETE FROM keycloak.USER_SESSION_NOTE;
DELETE FROM keycloak.CLIENT_SCOPE_CLIENT;
DELETE FROM keycloak.FED_USER_ATTRIBUTE;
DELETE FROM keycloak.CLIENT_AUTH_FLOW_BINDINGS;
DELETE FROM keycloak.CREDENTIAL;
DELETE FROM keycloak.IDENTITY_PROVIDER_MAPPER;
DELETE FROM keycloak.USER_CONSENT_CLIENT_SCOPE;
DELETE FROM keycloak.CLIENT_SESSION_PROT_MAPPER;
DELETE FROM keycloak.CLIENT_NODE_REGISTRATIONS;
DELETE FROM keycloak.CLIENT_SCOPE;
DELETE FROM keycloak.CLIENT_SCOPE_ROLE_MAPPING;
DELETE FROM keycloak.RESOURCE_ATTRIBUTE;
DELETE FROM keycloak.FED_USER_GROUP_MEMBERSHIP;
DELETE FROM keycloak.FED_USER_ROLE_MAPPING;
DELETE FROM keycloak.COMPONENT_CONFIG;
DELETE FROM keycloak.USER_REQUIRED_ACTION;
DELETE FROM keycloak.RESOURCE_SERVER_RESOURCE;
DELETE FROM keycloak.CLIENT_SESSION_AUTH_STATUS;
DELETE FROM keycloak.AUTHENTICATION_FLOW;
DELETE FROM keycloak.AUTHENTICATION_EXECUTION;
DELETE FROM keycloak.USER_FEDERATION_MAPPER;
DELETE FROM keycloak.USER_FEDERATION_MAPPER_CONFIG;
DELETE FROM keycloak.IDP_MAPPER_CONFIG;
DELETE FROM keycloak.AUTHENTICATOR_CONFIG_ENTRY;
DELETE FROM keycloak.AUTHENTICATOR_CONFIG;
DELETE FROM keycloak.RESOURCE_SERVER_SCOPE;
DELETE FROM keycloak.REQUIRED_ACTION_CONFIG;
DELETE FROM keycloak.CLIENT_SCOPE_ATTRIBUTES;
DELETE FROM keycloak.DEFAULT_CLIENT_SCOPE;
DELETE FROM keycloak.REQUIRED_ACTION_PROVIDER;
DELETE FROM keycloak.CLIENT_USER_SESSION_NOTE;
DELETE FROM keycloak.OFFLINE_USER_SESSION;
DELETE FROM keycloak.RESOURCE_URIS;
DELETE FROM keycloak.CLIENT_INITIAL_ACCESS;
DELETE FROM keycloak.ROLE_ATTRIBUTE;
DELETE FROM keycloak.USERNAME_LOGIN_FAILURE;
DELETE FROM keycloak.USER_GROUP_MEMBERSHIP;
DELETE FROM keycloak.GROUP_ROLE_MAPPING;
DELETE FROM keycloak.REALM_DEFAULT_GROUPS;
DELETE FROM keycloak.COMPONENT;
DELETE FROM keycloak.PROTOCOL_MAPPER;
DELETE FROM keycloak.RESOURCE_SERVER_POLICY;
DELETE FROM keycloak.ASSOCIATED_POLICY;
DELETE FROM keycloak.FED_USER_CREDENTIAL;
DELETE FROM keycloak.FED_USER_REQUIRED_ACTION;
DELETE FROM keycloak.RESOURCE_SERVER_PERM_TICKET;
DELETE FROM keycloak.REALM_LOCALIZATIONS;
DELETE FROM keycloak.RESOURCE_SERVER;
DELETE FROM platform.T_PLATFORM_VERSION;
DELETE FROM platform.T_PLATFORM_MIGRATION_HISTORY;
DELETE FROM platform.T_PLATFORM_PRIVATE;
DELETE FROM platform.T_ORGANIZATION;
DELETE FROM platform.T_ORGANIZATION_DB;
DELETE FROM platform.T_ORGANIZATION_PLAN;
DELETE FROM platform.T_PLAN;
DELETE FROM platform.T_PLAN_ITEM;
DELETE FROM platform.T_PLAN_LIMIT;
DELETE FROM platform.T_REFRESH_TOKEN;
DELETE FROM platform.M_SYSTEM_CONFIG;
DELETE FROM platform.T_MAINTENANCE_MODE;
DELETE FROM platform.T_PROCESS_QUEUE;
-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: platform-db    Database: keycloak
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.8-MariaDB-1:10.4.8+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `keycloak`
--

USE `keycloak`;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0059d4d1-ccd9-4f38-8f8f-3117318e1dfd',NULL,'client-x509','2274a9da-5a10-4c32-99e8-c01577061a5d','9634c6fc-e6ec-4714-b787-08278d2302c5',2,40,0,NULL,NULL),('10d22540-30c1-4cad-b034-d335ed1bbe87',NULL,'registration-password-action','2274a9da-5a10-4c32-99e8-c01577061a5d','75b35209-aee2-4e2e-9b38-0e0714dfdfb0',0,50,0,NULL,NULL),('1fdcc967-512e-4b1c-82c8-d36807f330df',NULL,'conditional-user-configured','2274a9da-5a10-4c32-99e8-c01577061a5d','8c4c7a70-7b28-45bf-bf9b-bcb4d5f123f6',0,10,0,NULL,NULL),('2015fdd5-c63e-4906-8be9-e419549f482e',NULL,'reset-password','2274a9da-5a10-4c32-99e8-c01577061a5d','78f6d120-07c7-4c2f-8835-cd7e7ea30dfa',0,30,0,NULL,NULL),('2464a7ff-d57c-4283-a961-bbba7c3547c3',NULL,'http-basic-authenticator','2274a9da-5a10-4c32-99e8-c01577061a5d','afb350de-4249-4f8d-98fe-e66a992480ba',0,10,0,NULL,NULL),('288015a3-ea17-4bf5-953f-d3d55f37869d',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','9de60ca2-f315-42a2-bd02-e0bfd903b3dc',0,20,1,'28b832f8-9190-4e6b-a06e-7e8c83917684',NULL),('32b15bd4-d0ee-4829-ac3d-c679247d36fa',NULL,'auth-otp-form','2274a9da-5a10-4c32-99e8-c01577061a5d','ee716cd3-138e-4597-92c1-5d23fc899e08',0,20,0,NULL,NULL),('370c27ad-2743-48a6-a5ac-e7cb1efcd473',NULL,'direct-grant-validate-otp','2274a9da-5a10-4c32-99e8-c01577061a5d','759cb6bb-b977-4317-ba51-e6a9275fdd48',0,20,0,NULL,NULL),('370fd3e8-58b4-47cc-abb9-dfd4d08d26dc',NULL,'auth-cookie','2274a9da-5a10-4c32-99e8-c01577061a5d','50cb78e6-d5db-4c29-aa32-051815bca44c',2,10,0,NULL,NULL),('3ef8e407-a949-45a1-b17e-c2ef3d668f9c',NULL,'auth-spnego','2274a9da-5a10-4c32-99e8-c01577061a5d','50cb78e6-d5db-4c29-aa32-051815bca44c',3,20,0,NULL,NULL),('412b5c70-eb8f-4d2b-aad4-bc9b31c1421d',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','50cb78e6-d5db-4c29-aa32-051815bca44c',2,30,1,'a9286d48-3331-4841-b968-493a96405f49',NULL),('42de68d5-f09b-496f-a2a6-2923725fcc27',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','47d8c24a-bf31-4564-9faf-a1578f7d3bde',2,20,1,'9de60ca2-f315-42a2-bd02-e0bfd903b3dc',NULL),('4c5ff04c-64b4-4b27-8ad4-35e54742089c',NULL,'idp-confirm-link','2274a9da-5a10-4c32-99e8-c01577061a5d','9de60ca2-f315-42a2-bd02-e0bfd903b3dc',0,10,0,NULL,NULL),('4e9aea75-5af0-430e-bc8e-997072ea400f',NULL,'docker-http-basic-authenticator','2274a9da-5a10-4c32-99e8-c01577061a5d','01fb9b36-e900-4047-af24-06ac070aa101',0,10,0,NULL,NULL),('5481af4a-df00-459b-bf50-4940eb1ad1f6',NULL,'auth-username-password-form','2274a9da-5a10-4c32-99e8-c01577061a5d','a9286d48-3331-4841-b968-493a96405f49',0,10,0,NULL,NULL),('58717763-e7bb-42b8-9f45-f39d7820ccd6',NULL,'client-jwt','2274a9da-5a10-4c32-99e8-c01577061a5d','9634c6fc-e6ec-4714-b787-08278d2302c5',2,20,0,NULL,NULL),('5ef9d45a-309f-40fc-abd5-48761ef75772',NULL,'idp-create-user-if-unique','2274a9da-5a10-4c32-99e8-c01577061a5d','47d8c24a-bf31-4564-9faf-a1578f7d3bde',2,10,0,NULL,'1c6e6317-0313-410c-9f2f-a1c180568338'),('5f0f309e-8501-47e2-baee-0380dffbeae9',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','4bbad33a-0c24-41dc-8510-5af69add280d',0,20,1,'47d8c24a-bf31-4564-9faf-a1578f7d3bde',NULL),('64074efe-9b92-4731-9c97-43d4fa4c5deb',NULL,'client-secret-jwt','2274a9da-5a10-4c32-99e8-c01577061a5d','9634c6fc-e6ec-4714-b787-08278d2302c5',2,30,0,NULL,NULL),('694ce4e7-9def-434f-82c9-8a428930ebb7',NULL,'idp-review-profile','2274a9da-5a10-4c32-99e8-c01577061a5d','4bbad33a-0c24-41dc-8510-5af69add280d',0,10,0,NULL,'7e79bcc1-ae2d-40fb-a7c6-5ed2a1790967'),('6ac11b9a-cce7-4f42-90b3-9f4edd87ecda',NULL,'identity-provider-redirector','2274a9da-5a10-4c32-99e8-c01577061a5d','50cb78e6-d5db-4c29-aa32-051815bca44c',2,25,0,NULL,NULL),('717131cf-cbe2-4256-afbe-5353adf1d7b7',NULL,'reset-otp','2274a9da-5a10-4c32-99e8-c01577061a5d','bb681441-cfda-4baf-8779-6050b8b45b2c',0,20,0,NULL,NULL),('726bec78-d837-41b9-88e7-5dd6197191e8',NULL,'direct-grant-validate-password','2274a9da-5a10-4c32-99e8-c01577061a5d','72a54efb-59c7-48a6-a38f-b1c16db72797',0,20,0,NULL,NULL),('749096ae-ad38-4dd3-91cd-fa0cf308707b',NULL,'conditional-user-configured','2274a9da-5a10-4c32-99e8-c01577061a5d','759cb6bb-b977-4317-ba51-e6a9275fdd48',0,10,0,NULL,NULL),('76e32555-fe6f-4142-ac1a-f4bf7d104162',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','78f6d120-07c7-4c2f-8835-cd7e7ea30dfa',1,40,1,'bb681441-cfda-4baf-8779-6050b8b45b2c',NULL),('79c3a496-3c3e-4fd4-8ff2-9635ded2445a',NULL,'registration-user-creation','2274a9da-5a10-4c32-99e8-c01577061a5d','75b35209-aee2-4e2e-9b38-0e0714dfdfb0',0,20,0,NULL,NULL),('7cff2357-8407-401b-9f52-22b6fc2850b9',NULL,'reset-credentials-choose-user','2274a9da-5a10-4c32-99e8-c01577061a5d','78f6d120-07c7-4c2f-8835-cd7e7ea30dfa',0,10,0,NULL,NULL),('8f544ba7-5417-4986-8d08-7606a8ea8d4f',NULL,'registration-page-form','2274a9da-5a10-4c32-99e8-c01577061a5d','4a881b65-19b2-42b1-ba6c-e13302f9cfb4',0,10,1,'75b35209-aee2-4e2e-9b38-0e0714dfdfb0',NULL),('a0875c0e-8c42-4813-a110-718adb2b742a',NULL,'registration-terms-and-conditions','2274a9da-5a10-4c32-99e8-c01577061a5d','75b35209-aee2-4e2e-9b38-0e0714dfdfb0',3,70,0,NULL,NULL),('a0fbca62-c56b-43ef-95e1-7530fd1a71eb',NULL,'conditional-user-configured','2274a9da-5a10-4c32-99e8-c01577061a5d','ee716cd3-138e-4597-92c1-5d23fc899e08',0,10,0,NULL,NULL),('a1daa5d8-4931-4b29-881e-64e75a1dfb88',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','72a54efb-59c7-48a6-a38f-b1c16db72797',1,30,1,'759cb6bb-b977-4317-ba51-e6a9275fdd48',NULL),('a97f111f-eaab-4edc-97ab-62cb659a193c',NULL,'idp-email-verification','2274a9da-5a10-4c32-99e8-c01577061a5d','28b832f8-9190-4e6b-a06e-7e8c83917684',2,10,0,NULL,NULL),('b68079a6-55eb-46c6-a150-6c3e71f37b2d',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','a9286d48-3331-4841-b968-493a96405f49',1,20,1,'ee716cd3-138e-4597-92c1-5d23fc899e08',NULL),('b6a2ab3a-952a-40d1-ab2e-6a6dff1f0fc5',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','c55f6c19-1147-4a01-bf03-63af19fb40a2',1,20,1,'8c4c7a70-7b28-45bf-bf9b-bcb4d5f123f6',NULL),('b968db54-d67e-43f5-a83c-095a5a0b7046',NULL,'conditional-user-configured','2274a9da-5a10-4c32-99e8-c01577061a5d','bb681441-cfda-4baf-8779-6050b8b45b2c',0,10,0,NULL,NULL),('d87b878e-6c01-4c4b-8f9e-4e17ec4566a6',NULL,'registration-recaptcha-action','2274a9da-5a10-4c32-99e8-c01577061a5d','75b35209-aee2-4e2e-9b38-0e0714dfdfb0',3,60,0,NULL,NULL),('daa6ba67-2236-41c8-bc16-73d193a3f8ae',NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','28b832f8-9190-4e6b-a06e-7e8c83917684',2,20,1,'c55f6c19-1147-4a01-bf03-63af19fb40a2',NULL),('dbc6e199-2b29-4047-a2e7-ad63dd2069d2',NULL,'idp-username-password-form','2274a9da-5a10-4c32-99e8-c01577061a5d','c55f6c19-1147-4a01-bf03-63af19fb40a2',0,10,0,NULL,NULL),('de593cbc-1081-4e6d-b993-a0d1ed8d0638',NULL,'direct-grant-validate-username','2274a9da-5a10-4c32-99e8-c01577061a5d','72a54efb-59c7-48a6-a38f-b1c16db72797',0,10,0,NULL,NULL),('e650bca0-c271-4f10-a916-4dfe399c9302',NULL,'client-secret','2274a9da-5a10-4c32-99e8-c01577061a5d','9634c6fc-e6ec-4714-b787-08278d2302c5',2,10,0,NULL,NULL),('ef84c9b3-895e-42f6-bcff-5c97316a72f1',NULL,'reset-credential-email','2274a9da-5a10-4c32-99e8-c01577061a5d','78f6d120-07c7-4c2f-8835-cd7e7ea30dfa',0,20,0,NULL,NULL),('f0f7321d-46df-497c-b482-ef31425704f9',NULL,'auth-otp-form','2274a9da-5a10-4c32-99e8-c01577061a5d','8c4c7a70-7b28-45bf-bf9b-bcb4d5f123f6',0,20,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('01fb9b36-e900-4047-af24-06ac070aa101','docker auth','Used by Docker clients to authenticate against the IDP','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('28b832f8-9190-4e6b-a06e-7e8c83917684','Account verification options','Method with which to verity the existing account','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('47d8c24a-bf31-4564-9faf-a1578f7d3bde','User creation or linking','Flow for the existing/non-existing user alternatives','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('4a881b65-19b2-42b1-ba6c-e13302f9cfb4','registration','registration flow','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('4bbad33a-0c24-41dc-8510-5af69add280d','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('50cb78e6-d5db-4c29-aa32-051815bca44c','browser','browser based authentication','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('72a54efb-59c7-48a6-a38f-b1c16db72797','direct grant','OpenID Connect Resource Owner Grant','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('759cb6bb-b977-4317-ba51-e6a9275fdd48','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('75b35209-aee2-4e2e-9b38-0e0714dfdfb0','registration form','registration form','2274a9da-5a10-4c32-99e8-c01577061a5d','form-flow',0,1),('78f6d120-07c7-4c2f-8835-cd7e7ea30dfa','reset credentials','Reset credentials for a user if they forgot their password or something','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('8c4c7a70-7b28-45bf-bf9b-bcb4d5f123f6','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('9634c6fc-e6ec-4714-b787-08278d2302c5','clients','Base authentication for clients','2274a9da-5a10-4c32-99e8-c01577061a5d','client-flow',1,1),('9de60ca2-f315-42a2-bd02-e0bfd903b3dc','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('a9286d48-3331-4841-b968-493a96405f49','forms','Username, password, otp and other auth forms.','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('afb350de-4249-4f8d-98fe-e66a992480ba','saml ecp','SAML ECP Profile Authentication Flow','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',1,1),('bb681441-cfda-4baf-8779-6050b8b45b2c','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('c55f6c19-1147-4a01-bf03-63af19fb40a2','Verify Existing Account by Re-authentication','Reauthentication of existing account','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1),('ee716cd3-138e-4597-92c1-5d23fc899e08','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','2274a9da-5a10-4c32-99e8-c01577061a5d','basic-flow',0,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('1c6e6317-0313-410c-9f2f-a1c180568338','create unique user config','2274a9da-5a10-4c32-99e8-c01577061a5d'),('7e79bcc1-ae2d-40fb-a7c6-5ed2a1790967','review profile config','2274a9da-5a10-4c32-99e8-c01577061a5d');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('1c6e6317-0313-410c-9f2f-a1c180568338','false','require.password.update.after.registration'),('7e79bcc1-ae2d-40fb-a7c6-5ed2a1790967','missing','update.profile.on.first.login');
UNLOCK TABLES;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
INSERT INTO `CLIENT` VALUES ('20849ade-df33-45a0-8f4e-b4a458876287',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2d4b17de-bddb-43d3-9139-b9611ebb9caa',1,0,'_platform-console',0,1,'EFY2yEpz72Ft47K92ipyhq6xlnFSA8GB',NULL,0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('5bceb347-c45c-435d-a285-b5e70207ab12',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('5ec411e1-98b6-42bd-8766-420f6b43f72a',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('62d72c31-b5e0-4152-9ea7-dadd34647345',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('78e4eee3-12b3-44a1-8980-0319f9240675',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('85772dfb-fa72-4393-a572-31977a15a0ed',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('d7210a45-f13e-4978-bd9e-65cc83efa46f',1,1,'_platform',0,0,'KF7ylcnMzoLoWPzG7GrVHHIPi3Hr4fOg',NULL,0,NULL,0,'2274a9da-5a10-4c32-99e8-c01577061a5d','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('2d4b17de-bddb-43d3-9139-b9611ebb9caa','backchannel.logout.revoke.offline.tokens','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','backchannel.logout.session.required','true'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','client.secret.creation.time','1718253978'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','client_credentials.use_refresh_token','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','display.on.consent.screen','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','exclude.session.state.from.auth.response','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','id.token.as.detached.signature','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','oauth2.device.authorization.grant.enabled','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','oidc.ciba.grant.enabled','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','post.logout.redirect.uris','/*'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','require.pushed.authorization.requests','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.artifact.binding','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.assertion.signature','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.authnstatement','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.client.signature','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.encrypt','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.force.post.binding','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.multivalued.roles','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.onetimeuse.condition','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.server.signature','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml.server.signature.keyinfo.ext','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','saml_force_name_id_format','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','tls.client.certificate.bound.access.tokens','false'),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','use.refresh.tokens','true'),('5ec411e1-98b6-42bd-8766-420f6b43f72a','post.logout.redirect.uris','+'),('62d72c31-b5e0-4152-9ea7-dadd34647345','pkce.code.challenge.method','S256'),('62d72c31-b5e0-4152-9ea7-dadd34647345','post.logout.redirect.uris','+'),('85772dfb-fa72-4393-a572-31977a15a0ed','pkce.code.challenge.method','S256'),('85772dfb-fa72-4393-a572-31977a15a0ed','post.logout.redirect.uris','+'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','access.token.lifespan','86400'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','acr.loa.map','{}'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','backchannel.logout.revoke.offline.tokens','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','backchannel.logout.session.required','true'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','client.session.idle.timeout','86400'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','client.session.max.lifespan','86400'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','client_credentials.use_refresh_token','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','display.on.consent.screen','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','exclude.session.state.from.auth.response','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','frontchannel.logout.session.required','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','id.token.as.detached.signature','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','oauth2.device.authorization.grant.enabled','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','oidc.ciba.grant.enabled','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','require.pushed.authorization.requests','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.allow.ecp.flow','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.artifact.binding','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.assertion.signature','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.authnstatement','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.client.signature','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.encrypt','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.force.post.binding','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.multivalued.roles','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.onetimeuse.condition','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.server.signature','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml.server.signature.keyinfo.ext','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','saml_force_name_id_format','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','tls.client.certificate.bound.access.tokens','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','token.response.type.bearer.lower-case','false'),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','use.refresh.tokens','true'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','backchannel.logout.revoke.offline.tokens','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','backchannel.logout.session.required','true'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','client.secret.creation.time','1718253976'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','client_credentials.use_refresh_token','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','display.on.consent.screen','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','exclude.session.state.from.auth.response','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','id.token.as.detached.signature','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','oauth2.device.authorization.grant.enabled','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','oidc.ciba.grant.enabled','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','require.pushed.authorization.requests','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.artifact.binding','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.assertion.signature','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.authnstatement','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.client.signature','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.encrypt','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.force.post.binding','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.multivalued.roles','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.onetimeuse.condition','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.server.signature','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml.server.signature.keyinfo.ext','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','saml_force_name_id_format','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','tls.client.certificate.bound.access.tokens','false'),('d7210a45-f13e-4978-bd9e-65cc83efa46f','use.refresh.tokens','true');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
INSERT INTO `CLIENT_SCOPE` VALUES ('13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3','address','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect built-in scope: address','openid-connect'),('18ea7289-34da-4919-b209-feea7c378be8','offline_access','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect built-in scope: offline_access','openid-connect'),('406e6bff-c46e-4a95-bb5d-f01ba7a6e638','web-origins','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('41c1b373-7d0a-431e-9ac4-20de33d4944b','email','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect built-in scope: email','openid-connect'),('593d88c0-df36-4f97-9087-b9883601e295','phone','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect built-in scope: phone','openid-connect'),('5addef7c-dcbf-4126-acf0-813401870870','microprofile-jwt','2274a9da-5a10-4c32-99e8-c01577061a5d','Microprofile - JWT built-in scope','openid-connect'),('696297b5-309d-4c97-b0d7-f7341089faff','profile','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect built-in scope: profile','openid-connect'),('7f3241a7-28d6-4e7b-97cd-18348336c7ee','acr','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('a7b8259b-191f-419a-b17e-51c5dd2f6def','roles','2274a9da-5a10-4c32-99e8-c01577061a5d','OpenID Connect scope for add user roles to the access token','openid-connect'),('b4fa066d-10b5-4010-92a3-a18840140709','role_list','2274a9da-5a10-4c32-99e8-c01577061a5d','SAML role list','saml');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3','${addressScopeConsentText}','consent.screen.text'),('13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3','true','display.on.consent.screen'),('13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3','true','include.in.token.scope'),('18ea7289-34da-4919-b209-feea7c378be8','${offlineAccessScopeConsentText}','consent.screen.text'),('18ea7289-34da-4919-b209-feea7c378be8','true','display.on.consent.screen'),('406e6bff-c46e-4a95-bb5d-f01ba7a6e638','','consent.screen.text'),('406e6bff-c46e-4a95-bb5d-f01ba7a6e638','false','display.on.consent.screen'),('406e6bff-c46e-4a95-bb5d-f01ba7a6e638','false','include.in.token.scope'),('41c1b373-7d0a-431e-9ac4-20de33d4944b','${emailScopeConsentText}','consent.screen.text'),('41c1b373-7d0a-431e-9ac4-20de33d4944b','true','display.on.consent.screen'),('41c1b373-7d0a-431e-9ac4-20de33d4944b','true','include.in.token.scope'),('593d88c0-df36-4f97-9087-b9883601e295','${phoneScopeConsentText}','consent.screen.text'),('593d88c0-df36-4f97-9087-b9883601e295','true','display.on.consent.screen'),('593d88c0-df36-4f97-9087-b9883601e295','true','include.in.token.scope'),('5addef7c-dcbf-4126-acf0-813401870870','false','display.on.consent.screen'),('5addef7c-dcbf-4126-acf0-813401870870','true','include.in.token.scope'),('696297b5-309d-4c97-b0d7-f7341089faff','${profileScopeConsentText}','consent.screen.text'),('696297b5-309d-4c97-b0d7-f7341089faff','true','display.on.consent.screen'),('696297b5-309d-4c97-b0d7-f7341089faff','true','include.in.token.scope'),('7f3241a7-28d6-4e7b-97cd-18348336c7ee','false','display.on.consent.screen'),('7f3241a7-28d6-4e7b-97cd-18348336c7ee','false','include.in.token.scope'),('a7b8259b-191f-419a-b17e-51c5dd2f6def','${rolesScopeConsentText}','consent.screen.text'),('a7b8259b-191f-419a-b17e-51c5dd2f6def','true','display.on.consent.screen'),('a7b8259b-191f-419a-b17e-51c5dd2f6def','false','include.in.token.scope'),('b4fa066d-10b5-4010-92a3-a18840140709','${samlRoleListScopeConsentText}','consent.screen.text'),('b4fa066d-10b5-4010-92a3-a18840140709','true','display.on.consent.screen');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('20849ade-df33-45a0-8f4e-b4a458876287','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('20849ade-df33-45a0-8f4e-b4a458876287','18ea7289-34da-4919-b209-feea7c378be8',0),('20849ade-df33-45a0-8f4e-b4a458876287','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('20849ade-df33-45a0-8f4e-b4a458876287','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('20849ade-df33-45a0-8f4e-b4a458876287','593d88c0-df36-4f97-9087-b9883601e295',0),('20849ade-df33-45a0-8f4e-b4a458876287','5addef7c-dcbf-4126-acf0-813401870870',0),('20849ade-df33-45a0-8f4e-b4a458876287','696297b5-309d-4c97-b0d7-f7341089faff',1),('20849ade-df33-45a0-8f4e-b4a458876287','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('20849ade-df33-45a0-8f4e-b4a458876287','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','18ea7289-34da-4919-b209-feea7c378be8',0),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','593d88c0-df36-4f97-9087-b9883601e295',0),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','5addef7c-dcbf-4126-acf0-813401870870',0),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','696297b5-309d-4c97-b0d7-f7341089faff',1),('2d4b17de-bddb-43d3-9139-b9611ebb9caa','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('5bceb347-c45c-435d-a285-b5e70207ab12','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('5bceb347-c45c-435d-a285-b5e70207ab12','18ea7289-34da-4919-b209-feea7c378be8',0),('5bceb347-c45c-435d-a285-b5e70207ab12','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('5bceb347-c45c-435d-a285-b5e70207ab12','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('5bceb347-c45c-435d-a285-b5e70207ab12','593d88c0-df36-4f97-9087-b9883601e295',0),('5bceb347-c45c-435d-a285-b5e70207ab12','5addef7c-dcbf-4126-acf0-813401870870',0),('5bceb347-c45c-435d-a285-b5e70207ab12','696297b5-309d-4c97-b0d7-f7341089faff',1),('5bceb347-c45c-435d-a285-b5e70207ab12','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('5bceb347-c45c-435d-a285-b5e70207ab12','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('5ec411e1-98b6-42bd-8766-420f6b43f72a','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('5ec411e1-98b6-42bd-8766-420f6b43f72a','18ea7289-34da-4919-b209-feea7c378be8',0),('5ec411e1-98b6-42bd-8766-420f6b43f72a','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('5ec411e1-98b6-42bd-8766-420f6b43f72a','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('5ec411e1-98b6-42bd-8766-420f6b43f72a','593d88c0-df36-4f97-9087-b9883601e295',0),('5ec411e1-98b6-42bd-8766-420f6b43f72a','5addef7c-dcbf-4126-acf0-813401870870',0),('5ec411e1-98b6-42bd-8766-420f6b43f72a','696297b5-309d-4c97-b0d7-f7341089faff',1),('5ec411e1-98b6-42bd-8766-420f6b43f72a','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('5ec411e1-98b6-42bd-8766-420f6b43f72a','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('62d72c31-b5e0-4152-9ea7-dadd34647345','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('62d72c31-b5e0-4152-9ea7-dadd34647345','18ea7289-34da-4919-b209-feea7c378be8',0),('62d72c31-b5e0-4152-9ea7-dadd34647345','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('62d72c31-b5e0-4152-9ea7-dadd34647345','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('62d72c31-b5e0-4152-9ea7-dadd34647345','593d88c0-df36-4f97-9087-b9883601e295',0),('62d72c31-b5e0-4152-9ea7-dadd34647345','5addef7c-dcbf-4126-acf0-813401870870',0),('62d72c31-b5e0-4152-9ea7-dadd34647345','696297b5-309d-4c97-b0d7-f7341089faff',1),('62d72c31-b5e0-4152-9ea7-dadd34647345','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('62d72c31-b5e0-4152-9ea7-dadd34647345','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('78e4eee3-12b3-44a1-8980-0319f9240675','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('78e4eee3-12b3-44a1-8980-0319f9240675','18ea7289-34da-4919-b209-feea7c378be8',0),('78e4eee3-12b3-44a1-8980-0319f9240675','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('78e4eee3-12b3-44a1-8980-0319f9240675','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('78e4eee3-12b3-44a1-8980-0319f9240675','593d88c0-df36-4f97-9087-b9883601e295',0),('78e4eee3-12b3-44a1-8980-0319f9240675','5addef7c-dcbf-4126-acf0-813401870870',0),('78e4eee3-12b3-44a1-8980-0319f9240675','696297b5-309d-4c97-b0d7-f7341089faff',1),('78e4eee3-12b3-44a1-8980-0319f9240675','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('78e4eee3-12b3-44a1-8980-0319f9240675','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('85772dfb-fa72-4393-a572-31977a15a0ed','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('85772dfb-fa72-4393-a572-31977a15a0ed','18ea7289-34da-4919-b209-feea7c378be8',0),('85772dfb-fa72-4393-a572-31977a15a0ed','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('85772dfb-fa72-4393-a572-31977a15a0ed','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('85772dfb-fa72-4393-a572-31977a15a0ed','593d88c0-df36-4f97-9087-b9883601e295',0),('85772dfb-fa72-4393-a572-31977a15a0ed','5addef7c-dcbf-4126-acf0-813401870870',0),('85772dfb-fa72-4393-a572-31977a15a0ed','696297b5-309d-4c97-b0d7-f7341089faff',1),('85772dfb-fa72-4393-a572-31977a15a0ed','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('85772dfb-fa72-4393-a572-31977a15a0ed','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','18ea7289-34da-4919-b209-feea7c378be8',0),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','593d88c0-df36-4f97-9087-b9883601e295',0),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','5addef7c-dcbf-4126-acf0-813401870870',0),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','696297b5-309d-4c97-b0d7-f7341089faff',1),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('cb87b06f-1ab4-449b-beb4-78387ff4fd7c','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('d7210a45-f13e-4978-bd9e-65cc83efa46f','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('d7210a45-f13e-4978-bd9e-65cc83efa46f','18ea7289-34da-4919-b209-feea7c378be8',0),('d7210a45-f13e-4978-bd9e-65cc83efa46f','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('d7210a45-f13e-4978-bd9e-65cc83efa46f','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('d7210a45-f13e-4978-bd9e-65cc83efa46f','593d88c0-df36-4f97-9087-b9883601e295',0),('d7210a45-f13e-4978-bd9e-65cc83efa46f','5addef7c-dcbf-4126-acf0-813401870870',0),('d7210a45-f13e-4978-bd9e-65cc83efa46f','696297b5-309d-4c97-b0d7-f7341089faff',1),('d7210a45-f13e-4978-bd9e-65cc83efa46f','a7b8259b-191f-419a-b17e-51c5dd2f6def',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('18ea7289-34da-4919-b209-feea7c378be8','1fdd6a26-d4cb-443a-8c34-4afb7dcef028');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
INSERT INTO `COMPONENT` VALUES ('1080b41b-88f5-464b-a08f-16aafd008464','Allowed Client Scopes','2274a9da-5a10-4c32-99e8-c01577061a5d','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','authenticated'),('1b8eca81-4d84-4a77-a8c1-98b548fd0c2c','rsa-generated','2274a9da-5a10-4c32-99e8-c01577061a5d','rsa-generated','org.keycloak.keys.KeyProvider','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL),('2a25ccf5-30d2-4e65-99fa-9338b0d63d74','Max Clients Limit','2274a9da-5a10-4c32-99e8-c01577061a5d','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','anonymous'),('2a4309ff-f250-40a0-ab19-87d0fb5e0969','Consent Required','2274a9da-5a10-4c32-99e8-c01577061a5d','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','anonymous'),('307f732d-a38d-4f00-b725-0f6b37a71d2e','Full Scope Disabled','2274a9da-5a10-4c32-99e8-c01577061a5d','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','anonymous'),('401b56d3-c870-4f3b-8824-ce9572e0601d','aes-generated','2274a9da-5a10-4c32-99e8-c01577061a5d','aes-generated','org.keycloak.keys.KeyProvider','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL),('42226348-b8f5-4d12-bd53-93089acfafd9','Allowed Client Scopes','2274a9da-5a10-4c32-99e8-c01577061a5d','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','anonymous'),('63f71adf-cf5a-4b2d-940a-b141fcc603c3','Allowed Protocol Mapper Types','2274a9da-5a10-4c32-99e8-c01577061a5d','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','anonymous'),('8a880690-0e48-42d6-8426-ea7280e8d045','rsa-enc-generated','2274a9da-5a10-4c32-99e8-c01577061a5d','rsa-enc-generated','org.keycloak.keys.KeyProvider','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL),('b8f0eebc-fce9-4737-b98f-93ff7b962191','Trusted Hosts','2274a9da-5a10-4c32-99e8-c01577061a5d','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','anonymous'),('d3ce14c9-fa85-4de3-9bbe-0f19c55303c1','hmac-generated-hs512','2274a9da-5a10-4c32-99e8-c01577061a5d','hmac-generated','org.keycloak.keys.KeyProvider','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL),('e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','Allowed Protocol Mapper Types','2274a9da-5a10-4c32-99e8-c01577061a5d','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','authenticated'),('fa8ba6bd-f056-400e-b72a-1f67f26b612d',NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('027978e9-c940-41e5-9ae0-1ec89a1dca78','8a880690-0e48-42d6-8426-ea7280e8d045','privateKey','MIIEowIBAAKCAQEAq29bj/7p7GkemgPy++X7jcn4RJlIs4yCMJHgUX6ZucV+tOxEJFD6qHSoAw54pJ+FZJBQHsgn3mdHX/EuyjB3taXGkKM2hxHLoEFyTAurdqoV5GTUCW/DeLAYevGJ4IvEzpv+uJbCUMwfuKOlXHGVQbGb6tY1eChwj7OI8J8Oq+friIEnTU5em3N1QBkklgi/ujk7enpP+61HzjRo2lP4/e8D0/CdB66y8HVx+v3V6mAbjPs3zih00zGOwF1Xv1OntpPKbe15czNgwQjHQD0vkIqCIQLTMRLXH8McXSBgVojcQCd/GSAfa8UJQyplyqHp006FNPpv0bmRsu2/N9l5LwIDAQABAoIBAD6LLl7u053Nzf3Hgg7XXTph3GL+fzEOCnM4zRs+Mkw9mpfb+JI9Pu1VPfR7g5Ufo5VINwq74Bu6FyaQAY9/NjU9iR88hEiru9u39MB8o23z6G++P0NAFJLDv/KeizwyEbeE3t2uFq9OgSYmAc6jm53vc6AtzS0Mp+AtUkDi7oHVTVA0IFX0QF7eqV1rRkLsOX32ek8/9k5Dd0H4adMVuZO2+PdSFehLbXpJ+1Wkxbm190L+lB2SFQzgTdjL3ZDbk5V63jDUpCDZouVr5iox8n7f1HUzF4SQFv0k162G4zZ6+Lyh1d+KHTecb+KLW82ApPbPd3VK1zjA4pkKzRSyOx0CgYEA6wd+ttK5+UmqPKlcsNjdqS81MNjlagmC18bfD6RNf6JOmPMgBtmynSCtriwO2ed5pecHyJhgR4X7wbL23GTJ8da2R7lbvgTWKIL7eC742HdJu3Psb9aOfSb4T34x2bal6QUzlKf0s/uzbXJlny9KqhCaNbrJ8OFA9ZgKfkslJNMCgYEAurtAScWilaDbb8LmtJxcsddflXTL6RCMqI6hjtvSwz4UfDhvcHBHdFo9JnNyMfxXEje9XNiNudZaVL3ZnxoiMKbJW6uzRbvq8je8rbYZxFmPty1ny/htu3ZZoPZwN7sr47b0o3HssfD0APRUWSD4ed4/urSesqtd4vhpgKXJ0LUCgYBy35bvhM+hKIAsZhsH1PeCWbCFz31R9pQdIvajjorSd2IzH6Hntz+1zOMW3jHkD19F10XWpaNpUfNbGT3POvP5YBh3tgFBPtvtsRd4Bn1aT/OZy28kupmqUgHL2MJExyEQY5pybiUMU1m/hMpmo5a6yKKW4FUThwVZBJccY14kQQKBgHlIvFXuR07WfxDVT9HJqa9dS1kg1nzX4fRtR+QpRXjI7rdMVJ18X/zjy8oYu/hZhRhxGc6fXVZyMpPOB/Z+G+zrt+eR20wU5WJT73oIyC2vWlhI5p0mC+fx0/9ncbXRHY23PKiYi3t8HJAuIkcN0jYds9kKDfXQtpeAb84+YJntAoGBAODlrVIdSyo/59Jg/+BQP2ur9C+3rkn0/ft8fQSn3J6j6BwLFuwW6AU7M/381vrw4Hvn4+sbsapaBC/Q0I2+pTUE/zdnievaUAuKanXalI4jR5bs+X7OLCZYO03IvWrBBjtfSX3LZ1vSfmfvYKYv97LgwHliSJNwGU7Uqqdl26aQ'),('0aa4a134-eb1b-4aca-b00a-f04643fcb2f3','fa8ba6bd-f056-400e-b72a-1f67f26b612d','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('0b07ef7d-bcb2-4b55-aef0-a75b3147c956','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('0b2a75f4-e98d-4f33-a9c3-42bf2d6f52d7','d3ce14c9-fa85-4de3-9bbe-0f19c55303c1','kid','30f3fa6e-b295-4023-9594-efa60292157a'),('24775145-04d1-4afa-b12a-6da26378b9b9','42226348-b8f5-4d12-bd53-93089acfafd9','allow-default-scopes','true'),('2829ecb8-cd58-4a7a-adc3-7a6720614859','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','oidc-full-name-mapper'),('28bf2bb0-2bbe-4cc2-ba9b-d006c0533cc8','d3ce14c9-fa85-4de3-9bbe-0f19c55303c1','algorithm','HS512'),('2c815128-86f4-44e2-a4cf-e707c816ad99','b8f0eebc-fce9-4737-b98f-93ff7b962191','host-sending-registration-request-must-match','true'),('30a1bada-0eea-461b-b9d0-cffc4ae48b22','8a880690-0e48-42d6-8426-ea7280e8d045','algorithm','RSA-OAEP'),('3383e3f7-208c-4e83-8310-bebb2b18ee0d','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('4e6eed4d-dbb9-45ac-adf1-fe58fc5d5987','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','saml-user-property-mapper'),('5a7635a5-13ef-49fc-8578-67a3950dcc91','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','saml-user-property-mapper'),('67768c9c-e0a4-42c3-ad3e-7006f8a3bd66','401b56d3-c870-4f3b-8824-ce9572e0601d','secret','auAPRRm6-z8mb5VjzmQL-w'),('67bea7d6-b321-40c4-a575-dcf4a1889887','1080b41b-88f5-464b-a08f-16aafd008464','allow-default-scopes','true'),('744c3906-1eb3-4074-a642-c20e0fdabcb8','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','saml-role-list-mapper'),('7792f958-0032-4555-8de3-9053253b6e8c','1b8eca81-4d84-4a77-a8c1-98b548fd0c2c','certificate','MIICmzCCAYMCBgGQD+rZezANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjEzMDQ0NDI3WhcNMzQwNjEzMDQ0NjA3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC/ZwLajN056IhmOzbs+3GgVJ7MOg3EZxKWl56kJLuyobTlLfOprG3hxGUUvZbVrHibHzYIzmLN4Du+9KIrQkl0ITZGZGwS+Eu4GRqfeDRsIdHez64vo87LtWdI2eEi0UOyAo72yzJpWIOzgod9HHUtVWdcQTxOgxb3hayjcBIzRqnlCTXB3cTWLFpszpgMkQm2ItQBkepzrjXdOdPY7Fuqda9Glzuj7RsAKkVPSIYiV0eh21zhwV3bbW1+UxIvSQifmwUDIYOmNBye0bfwLNvaIZDkY6aTzzHwVgwWqW5NEGNPbsA7NfYN4hUrEdqBwYqztFYX2d8XzTNgFT7xDm9tAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIkZT+ilKa28B3iCHXeaQRKZw0rdf1YBu3kGKA0iwPOqBy4RF6Y8FaCjfQPL/qGvMTnJmELiiFp7XQPH5HBpRM9q5R99danPLL6JheAGSjPa99vJ4skjpy0NV1TVSP6hPU+0lLvp9fDC3SxB5sS8tdnf0Bt0pAE3HviNBSzXBmxA0FExmY9ITQXsMzNeXc3wUfTV2WxB8E4bjovya8OKTzqLUV0b8eyYXGijxWcVf2NU0Fpaxws37YkfuLBMoGwB7r1Sy8ElsI1mZGStSv0+5jTijIgG0j0am+1Sgpun4iDjHa8tpyYnOurgFh+7eTOSwz3QsgSnL00mf0ahFDYVqkQ='),('791516f1-8e19-44af-bca4-486d93d005f9','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','oidc-address-mapper'),('876acc19-471d-4c7f-883f-f53f067a9f7a','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('93d07fcf-b813-45df-a18e-19390d294d8d','401b56d3-c870-4f3b-8824-ce9572e0601d','priority','100'),('a27e88f9-16e2-41c6-93c3-0d39a8af4738','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('a286addf-0400-43ff-9ea2-a582d7af5443','1b8eca81-4d84-4a77-a8c1-98b548fd0c2c','keyUse','SIG'),('a35439d1-7190-4371-a29d-f5271551cf40','1b8eca81-4d84-4a77-a8c1-98b548fd0c2c','priority','100'),('b5ae1f80-16fd-4a21-8015-a64862d661ae','8a880690-0e48-42d6-8426-ea7280e8d045','certificate','MIICmzCCAYMCBgGQD+rbTTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjEzMDQ0NDI4WhcNMzQwNjEzMDQ0NjA4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCrb1uP/unsaR6aA/L75fuNyfhEmUizjIIwkeBRfpm5xX607EQkUPqodKgDDnikn4VkkFAeyCfeZ0df8S7KMHe1pcaQozaHEcugQXJMC6t2qhXkZNQJb8N4sBh68Yngi8TOm/64lsJQzB+4o6VccZVBsZvq1jV4KHCPs4jwnw6r5+uIgSdNTl6bc3VAGSSWCL+6OTt6ek/7rUfONGjaU/j97wPT8J0HrrLwdXH6/dXqYBuM+zfOKHTTMY7AXVe/U6e2k8pt7XlzM2DBCMdAPS+QioIhAtMxEtcfwxxdIGBWiNxAJ38ZIB9rxQlDKmXKoenTToU0+m/RuZGy7b832XkvAgMBAAEwDQYJKoZIhvcNAQELBQADggEBADRsnyK0m4bTp1iB5u4emRp8ETzDZyfqfmi+Pnkmt7NO6ut8MrfK72vuK9dafoO6E2NAuRrDn/B8RFDDhkxG1HPCMVPaHHW5fhBU1mDDX9hrysCMOeGHdwQDeAW+0qSyeGUZb7s4MLloK4OpQoLChEFAUMQ8YKxeaZxBizkS9siyqPaZswLFzoynOGwUEEvPsluRhx4gRyu7FdHeLVgdTM2Jp4StGxjvnMKV+VsENZbpA3A6DvC8fhubAAYBoNy1gE22nsAXMTa9TR8y2oFo8+nnJOQ/t5Wr/PBWMTZhyP7+LqEXB8t9yjY1io0fVfB64O/5xdnywjUyasvUuNMndcU='),('b637b34d-e6f8-4702-bd2f-1743f07e7ed9','1b8eca81-4d84-4a77-a8c1-98b548fd0c2c','privateKey','MIIEogIBAAKCAQEAv2cC2ozdOeiIZjs27PtxoFSezDoNxGcSlpeepCS7sqG05S3zqaxt4cRlFL2W1ax4mx82CM5izeA7vvSiK0JJdCE2RmRsEvhLuBkan3g0bCHR3s+uL6POy7VnSNnhItFDsgKO9ssyaViDs4KHfRx1LVVnXEE8ToMW94Wso3ASM0ap5Qk1wd3E1ixabM6YDJEJtiLUAZHqc6413TnT2OxbqnWvRpc7o+0bACpFT0iGIldHodtc4cFd221tflMSL0kIn5sFAyGDpjQcntG38Czb2iGQ5GOmk88x8FYMFqluTRBjT27AOzX2DeIVKxHagcGKs7RWF9nfF80zYBU+8Q5vbQIDAQABAoIBAAiB6qWON1MYm993aFSWRJGs0TYgqnX9Yt0gtiNzoogpGeJJ7ZewG146nYeTeb3boay7cWpoygl+mwk81Gx50MwBoej1E7ywHqV7MCzAagwYYLy3nHVvoYR6drHNRW2HwauK45HirEX0cj4rYhxUhHzUW/jEyYpv1zh/T5IgLB7tRGvLPy7Tgr0HjHsfs1bAMHAxS5l13H5T1I2760OA76/uB47+RxM+L9mIYscFhpc3ARclyr8h7MX6ovGNyDPYE4e/jhiI+FNrxLczK00/TE9En/q9q+0JJ78PoAMPjAfXT2tUZ/+eCD5lOfvjDbOhmmLiQxLhBjdpq69NbaZhl4ECgYEA7Yrby4AEHJ89Jg0D21ILFHkhC2u1pR9/CHR4oWa+0RU9Wiaxhf2DyMU3vGswkRKYLFtlvFXhGqwccpAOnGQ7h5acYJMFpjIPpjtJH/CFZTFR8iavP3taCtIxl8P32zcz/VspZZfSelCyXYJV5cU83/PpkzLwy+eXtJTEwYx6nU0CgYEAzkZYZC/cgfBAidL9Ooks1D/BNWeYFBkv5BDrSu2L6ORWsl2EVJUp3MG8z8agYlJPB8CJrGrF/ng46Eh1WAi4qkRlNtddQuxEyn6cf7Tm3YT2ALJ8igKn4TuM2geuZxw/EReG4pboG/9+9Bylq473921jxHayquwFxE+nlcC+iqECgYANht7FU+DoEFlXFV6m2qEu5Ubwc43AfW6qeJd1+XfcSC1aOOHbE3ixsileXWxClqB7xiig9PMApdRo4bMzTLHnIrh892JW+HrTqISdgQDXpltYQsOwBcI244lXbx1qKlaXkt1kn6Sounetw4JIt1akGiuu6jO0KNgGvIIH04wX8QKBgHSQ5iR/s4Gubho0pCtvF2k+OgXe6973uMuOEBlAkh7i4mdbV4ug245H4VYdLcdCMiz0ThikIg1CjQ4e3EkKbKizi+ro22gVMm6oC/JTHV+zYn1UX/Jxu8MZLuiLDLByEuWqwOvNUY9425pBkhGX8mLda1K7rQ3P4RZl2RNUX5jhAoGALB27RzAkhKw6JXESe9lRz3eUbrKp7bILFxUhQZRwzTSy0r2bICtaqiehUbiOW+OVDed9tYT9LG+8XA8Rl3A0dqg1D4Sa76M3XE2x2R98mLf3amTXln0RNeiFBwYxQ7uRBDurLqL4GjJdkrT88bUDbZ8clAYKpqM8UwOezcoNsvI='),('b903a815-429b-4f35-ab02-51eb6afb6ea3','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b98ebbb4-2bc3-4c1b-9cc9-7cb4e09180eb','d3ce14c9-fa85-4de3-9bbe-0f19c55303c1','priority','100'),('c046c75a-09d0-4484-8434-c75941dbfa4a','d3ce14c9-fa85-4de3-9bbe-0f19c55303c1','secret','Cau0mui1pFtLR_OtvFoySwMzqbpbafX4fL7fKDz4YdhdGAhUrGrWLzg8Wg2fJSmVF4PERyuRd9GDVAki9GtUGJQb9JDuty88i1rD-3ctlxLv4afIAJ5Eax3ZA1laej2JPVeIEQRO1z2pKxA7K-ts1Df0PJgPvhvA-SRPSC33jCE'),('d46110fd-42d0-47ea-8ec8-4019204f9666','401b56d3-c870-4f3b-8824-ce9572e0601d','kid','5bc06017-2137-4467-8159-78323c01db24'),('d732e894-695e-40c8-be57-b06185ba6227','8a880690-0e48-42d6-8426-ea7280e8d045','priority','100'),('d7ae354a-879a-48ba-ba25-8a9ef9e922a5','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dbe07e35-1f08-44cd-9949-cde7a261dfce','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('dc805a11-262f-428c-aa24-36b10348ec71','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e0cec8fc-6411-473c-9f03-8b021aae258f','63f71adf-cf5a-4b2d-940a-b141fcc603c3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e914d774-3dc7-48b7-acac-e6a9e04f07c0','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','saml-role-list-mapper'),('eb1aff67-d1ca-4fe8-a2e2-bcce37028e41','8a880690-0e48-42d6-8426-ea7280e8d045','keyUse','ENC'),('ed9efcf8-5683-42fd-9350-c8640b353c1b','2a25ccf5-30d2-4e65-99fa-9338b0d63d74','max-clients','200'),('ef693762-ac87-4b58-9540-ccc72944e4ce','b8f0eebc-fce9-4737-b98f-93ff7b962191','client-uris-must-match','true'),('f13b7ee3-4cef-43ed-83fc-dd21079900f7','e84c0fdd-f0be-41b9-af5e-2a0bc07c862d','allowed-protocol-mapper-types','oidc-address-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('2a227051-c847-4a1e-8c6b-456897e531ba','8223680c-74f8-4994-b8be-9b733e683f11'),('2a227051-c847-4a1e-8c6b-456897e531ba','91718929-4399-45ae-a8c9-ad41ca909c93'),('67fa63b9-0dbe-43be-b213-50d1df053463','9a55df23-06c5-412b-ab7d-0881b6593c23'),('b5d8b2d7-51f1-4443-9047-beab930371f0','06078b63-ca55-4944-8f43-195cd3fe42f3'),('b5d8b2d7-51f1-4443-9047-beab930371f0','143f3b22-498a-45bd-bae2-cb479bc3fffa'),('b5d8b2d7-51f1-4443-9047-beab930371f0','223f6ac4-0591-4652-a1bd-54c951c4b536'),('b5d8b2d7-51f1-4443-9047-beab930371f0','2a227051-c847-4a1e-8c6b-456897e531ba'),('b5d8b2d7-51f1-4443-9047-beab930371f0','314ca08f-e440-4e7f-a276-71b1016fa994'),('b5d8b2d7-51f1-4443-9047-beab930371f0','4389241f-5487-4f22-bc8f-0e306e1d3ce1'),('b5d8b2d7-51f1-4443-9047-beab930371f0','5a15b2d9-fae6-48a8-b201-96c04931df0d'),('b5d8b2d7-51f1-4443-9047-beab930371f0','5e927cdb-40e1-45ee-b959-0b285df78b76'),('b5d8b2d7-51f1-4443-9047-beab930371f0','8223680c-74f8-4994-b8be-9b733e683f11'),('b5d8b2d7-51f1-4443-9047-beab930371f0','8c70a6ed-a560-4331-b905-8b5ec2573332'),('b5d8b2d7-51f1-4443-9047-beab930371f0','91718929-4399-45ae-a8c9-ad41ca909c93'),('b5d8b2d7-51f1-4443-9047-beab930371f0','c4ab33b4-8cf8-4731-aaf3-0ff840cdcbcb'),('b5d8b2d7-51f1-4443-9047-beab930371f0','da85c353-1a32-43a0-9e83-81f669c22091'),('b5d8b2d7-51f1-4443-9047-beab930371f0','e5f4900d-ad4e-473e-ac0f-6d2d66a0b06b'),('b5d8b2d7-51f1-4443-9047-beab930371f0','ee844dc8-a50c-4a26-b038-ce06c1581586'),('b5d8b2d7-51f1-4443-9047-beab930371f0','eff3a7a9-02a8-4b0c-88d7-30c8ff004a9c'),('b5d8b2d7-51f1-4443-9047-beab930371f0','f7f515d1-fa0a-45d7-9ef4-af9e0463cddd'),('b5d8b2d7-51f1-4443-9047-beab930371f0','f993a3dd-b56f-440a-82f5-c5eade925866'),('b5d8b2d7-51f1-4443-9047-beab930371f0','fc3c5150-376e-423d-8c16-5877bc1c4ed6'),('ba2268a8-f354-4b65-9e6d-c8830fdec026','bee061cb-272b-4f22-9ebc-2950715d9426'),('c4ab33b4-8cf8-4731-aaf3-0ff840cdcbcb','e5f4900d-ad4e-473e-ac0f-6d2d66a0b06b'),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','1fdd6a26-d4cb-443a-8c34-4afb7dcef028'),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','67fa63b9-0dbe-43be-b213-50d1df053463'),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','95aab626-a911-4035-a819-c9f72a86297f'),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','f3813f66-2cef-4d2e-8cda-772089aaddec');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('6ff0c264-99a3-40c0-9710-d8d159f310d8',NULL,'password','3bd30dd1-bf73-43f6-9b4e-0e124a181abd',1718253969728,NULL,'{\"value\":\"RiTssw3YoAi/X7OjHT8neTMzq4bkPCuaLqkzXPIF++pKxgyvmbIKxt1FZkEF17csSiPopG00ttt8vTMWgnYo/Q==\",\"salt\":\"Br/Lp4+13D1NR7irJwPhZw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-13 13:45:54',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-13 13:45:54',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-13 13:45:54',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-13 13:45:54',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-13 13:45:55',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-13 13:45:55',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-13 13:45:56',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-13 13:45:56',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-13 13:45:56',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-13 13:45:57',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-13 13:45:57',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-13 13:45:57',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-13 13:45:57',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 13:45:57',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 13:45:57',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 13:45:57',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 13:45:57',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-13 13:45:58',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-13 13:45:58',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-13 13:45:58',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-13 13:45:58',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-13 13:45:58',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-13 13:45:58',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-13 13:45:58',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-13 13:45:58',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-13 13:45:58',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-13 13:45:59',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-13 13:45:59',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-13 13:45:59',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-13 13:46:00',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-13 13:46:00',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-13 13:46:00',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 13:46:00',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 13:46:00',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 13:46:00',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 13:46:00',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 13:46:00',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8253952036'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-13 13:46:00',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-13 13:46:00',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 13:46:00',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 13:46:00',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 13:46:00',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 13:46:01',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-13 13:46:01',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 13:46:01',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 13:46:01',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 13:46:01',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 13:46:01',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 13:46:01',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-13 13:46:02',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-13 13:46:02',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-13 13:46:02',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-13 13:46:02',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-13 13:46:02',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 13:46:02',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 13:46:02',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 13:46:02',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 13:46:03',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-13 13:46:03',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-13 13:46:03',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-13 13:46:03',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-13 13:46:03',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-13 13:46:03',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-13 13:46:03',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-13 13:46:03',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-13 13:46:03',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-13 13:46:03',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-13 13:46:03',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-13 13:46:03',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-13 13:46:03',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8253952036'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-13 13:46:03',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8253952036'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 13:46:03',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8253952036'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 13:46:03',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8253952036'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 13:46:03',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8253952036'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 13:46:04',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 13:46:04',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 13:46:04',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 13:46:04',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 13:46:04',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 13:46:04',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 13:46:04',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 13:46:04',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 13:46:04',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 13:46:04',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8253952036'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 13:46:04',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-13 13:46:04',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'8253952036'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-13 13:46:04',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-13 13:46:04',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'8253952036'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8253952036'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8253952036'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 13:46:04',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8253952036'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 13:46:04',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-13 13:46:04',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-13 13:46:04',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-13 13:46:04',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-13 13:46:04',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-13 13:46:04',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-13 13:46:04',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8253952036'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-13 13:46:04',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-06-13 13:46:04',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-13 13:46:04',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8253952036'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-13 13:46:04',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-13 13:46:04',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-13 13:46:04',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-13 13:46:04',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'8253952036'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-13 13:46:04',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 13:46:04',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 13:46:04',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 13:46:05',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 13:46:05',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-13 13:46:05',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-13 13:46:05',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-13 13:46:05',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8253952036');
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,0,NULL,NULL),(1000,0,NULL,NULL),(1001,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('2274a9da-5a10-4c32-99e8-c01577061a5d','13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3',0),('2274a9da-5a10-4c32-99e8-c01577061a5d','18ea7289-34da-4919-b209-feea7c378be8',0),('2274a9da-5a10-4c32-99e8-c01577061a5d','406e6bff-c46e-4a95-bb5d-f01ba7a6e638',1),('2274a9da-5a10-4c32-99e8-c01577061a5d','41c1b373-7d0a-431e-9ac4-20de33d4944b',1),('2274a9da-5a10-4c32-99e8-c01577061a5d','593d88c0-df36-4f97-9087-b9883601e295',0),('2274a9da-5a10-4c32-99e8-c01577061a5d','5addef7c-dcbf-4126-acf0-813401870870',0),('2274a9da-5a10-4c32-99e8-c01577061a5d','696297b5-309d-4c97-b0d7-f7341089faff',1),('2274a9da-5a10-4c32-99e8-c01577061a5d','7f3241a7-28d6-4e7b-97cd-18348336c7ee',1),('2274a9da-5a10-4c32-99e8-c01577061a5d','a7b8259b-191f-419a-b17e-51c5dd2f6def',1),('2274a9da-5a10-4c32-99e8-c01577061a5d','b4fa066d-10b5-4010-92a3-a18840140709',1);
UNLOCK TABLES;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('06078b63-ca55-4944-8f43-195cd3fe42f3','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_view-authorization}','view-authorization','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('143f3b22-498a-45bd-bae2-cb479bc3fffa','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_manage-realm}','manage-realm','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('18225257-f25a-4876-98a4-ab9d7fe4bd75','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_view-groups}','view-groups','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('1fdd6a26-d4cb-443a-8c34-4afb7dcef028','2274a9da-5a10-4c32-99e8-c01577061a5d',0,'${role_offline-access}','offline_access','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL,NULL),('223f6ac4-0591-4652-a1bd-54c951c4b536','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_manage-clients}','manage-clients','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('2a227051-c847-4a1e-8c6b-456897e531ba','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_view-users}','view-users','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('314ca08f-e440-4e7f-a276-71b1016fa994','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_query-realms}','query-realms','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('4389241f-5487-4f22-bc8f-0e306e1d3ce1','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_view-realm}','view-realm','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('5a15b2d9-fae6-48a8-b201-96c04931df0d','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_manage-authorization}','manage-authorization','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('5e927cdb-40e1-45ee-b959-0b285df78b76','2274a9da-5a10-4c32-99e8-c01577061a5d',0,'${role_create-realm}','create-realm','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL,NULL),('67fa63b9-0dbe-43be-b213-50d1df053463','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_manage-account}','manage-account','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('8223680c-74f8-4994-b8be-9b733e683f11','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_query-users}','query-users','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('8c70a6ed-a560-4331-b905-8b5ec2573332','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_manage-users}','manage-users','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('91718929-4399-45ae-a8c9-ad41ca909c93','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_query-groups}','query-groups','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('95aab626-a911-4035-a819-c9f72a86297f','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_view-profile}','view-profile','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('9a55df23-06c5-412b-ab7d-0881b6593c23','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_manage-account-links}','manage-account-links','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('b5d8b2d7-51f1-4443-9047-beab930371f0','2274a9da-5a10-4c32-99e8-c01577061a5d',0,'${role_admin}','admin','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL,NULL),('ba2268a8-f354-4b65-9e6d-c8830fdec026','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_manage-consent}','manage-consent','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('bdbc3cd7-0405-49ac-ad8f-f05fa1e744fe','78e4eee3-12b3-44a1-8980-0319f9240675',1,'${role_read-token}','read-token','2274a9da-5a10-4c32-99e8-c01577061a5d','78e4eee3-12b3-44a1-8980-0319f9240675',NULL),('bee061cb-272b-4f22-9ebc-2950715d9426','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_view-consent}','view-consent','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('c10d3a72-f7c6-41a4-aaf6-d004490cdf9a','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_delete-account}','delete-account','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('c4ab33b4-8cf8-4731-aaf3-0ff840cdcbcb','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_view-clients}','view-clients','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('d698e832-0a1e-4aa8-aaa7-0a3d3eec59a9','5ec411e1-98b6-42bd-8766-420f6b43f72a',1,'${role_view-applications}','view-applications','2274a9da-5a10-4c32-99e8-c01577061a5d','5ec411e1-98b6-42bd-8766-420f6b43f72a',NULL),('da85c353-1a32-43a0-9e83-81f669c22091','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_manage-events}','manage-events','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('e5f4900d-ad4e-473e-ac0f-6d2d66a0b06b','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_query-clients}','query-clients','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('ee844dc8-a50c-4a26-b038-ce06c1581586','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_create-client}','create-client','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('eff3a7a9-02a8-4b0c-88d7-30c8ff004a9c','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_manage-identity-providers}','manage-identity-providers','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('f3813f66-2cef-4d2e-8cda-772089aaddec','2274a9da-5a10-4c32-99e8-c01577061a5d',0,'${role_uma_authorization}','uma_authorization','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL,NULL),('f7f515d1-fa0a-45d7-9ef4-af9e0463cddd','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_view-identity-providers}','view-identity-providers','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('f993a3dd-b56f-440a-82f5-c5eade925866','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_view-events}','view-events','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('fc3c5150-376e-423d-8c16-5877bc1c4ed6','20849ade-df33-45a0-8f4e-b4a458876287',1,'${role_impersonation}','impersonation','2274a9da-5a10-4c32-99e8-c01577061a5d','20849ade-df33-45a0-8f4e-b4a458876287',NULL),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','2274a9da-5a10-4c32-99e8-c01577061a5d',0,'${role_default-roles}','default-roles-master','2274a9da-5a10-4c32-99e8-c01577061a5d',NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('z82vj','24.0.3',1718253965);
UNLOCK TABLES;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('03abaad8-67a6-4899-8e02-bda7bff42d3a','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('0be26375-69cb-4f83-94e0-332339f09db3','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'41c1b373-7d0a-431e-9ac4-20de33d4944b'),('0cad1811-a7be-4052-a255-00e3ae015f27','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5addef7c-dcbf-4126-acf0-813401870870'),('293a86d9-8508-4035-adf2-6e0505fd9c41','audience resolve','openid-connect','oidc-audience-resolve-mapper','85772dfb-fa72-4393-a572-31977a15a0ed',NULL),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','address','openid-connect','oidc-address-mapper',NULL,'13f0b27a-6d53-4fd0-ad76-4dbfc84d2bf3'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41c1b373-7d0a-431e-9ac4-20de33d4944b'),('3d7bb2e5-0ce8-48d0-a8e4-e106ac4066a2','acr loa level','openid-connect','oidc-acr-mapper',NULL,'7f3241a7-28d6-4e7b-97cd-18348336c7ee'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('4e74ff26-2438-48a9-9744-2ab8d517b645','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('5093ead4-8207-42d8-8b7d-81ff979384b7','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'406e6bff-c46e-4a95-bb5d-f01ba7a6e638'),('53fbd20c-e008-47a2-92b1-e2c9ebf93ee1','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'a7b8259b-191f-419a-b17e-51c5dd2f6def'),('58215c11-1683-4827-ba75-92682a2f8925','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','d7210a45-f13e-4978-bd9e-65cc83efa46f',NULL),('586afb02-44f4-4801-9152-55add1501d0c','full name','openid-connect','oidc-full-name-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','d7210a45-f13e-4978-bd9e-65cc83efa46f',NULL),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','locale','openid-connect','oidc-usermodel-attribute-mapper','62d72c31-b5e0-4152-9ea7-dadd34647345',NULL),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('a612a5d5-cd64-4871-afab-61b864f37ff6','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'5addef7c-dcbf-4126-acf0-813401870870'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','d7210a45-f13e-4978-bd9e-65cc83efa46f',NULL),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'593d88c0-df36-4f97-9087-b9883601e295'),('c4cd9099-11c5-4728-983d-81940ce23fd4','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'593d88c0-df36-4f97-9087-b9883601e295'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'a7b8259b-191f-419a-b17e-51c5dd2f6def'),('e73cef4e-16b7-4272-97a2-a7234450357e','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('eac48c83-c4a7-4548-b56e-71ba9fc29fbc','role list','saml','saml-role-list-mapper',NULL,'b4fa066d-10b5-4010-92a3-a18840140709'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'696297b5-309d-4c97-b0d7-f7341089faff'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a7b8259b-191f-419a-b17e-51c5dd2f6def');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('03abaad8-67a6-4899-8e02-bda7bff42d3a','true','access.token.claim'),('03abaad8-67a6-4899-8e02-bda7bff42d3a','given_name','claim.name'),('03abaad8-67a6-4899-8e02-bda7bff42d3a','true','id.token.claim'),('03abaad8-67a6-4899-8e02-bda7bff42d3a','true','introspection.token.claim'),('03abaad8-67a6-4899-8e02-bda7bff42d3a','String','jsonType.label'),('03abaad8-67a6-4899-8e02-bda7bff42d3a','firstName','user.attribute'),('03abaad8-67a6-4899-8e02-bda7bff42d3a','true','userinfo.token.claim'),('0be26375-69cb-4f83-94e0-332339f09db3','true','access.token.claim'),('0be26375-69cb-4f83-94e0-332339f09db3','email_verified','claim.name'),('0be26375-69cb-4f83-94e0-332339f09db3','true','id.token.claim'),('0be26375-69cb-4f83-94e0-332339f09db3','true','introspection.token.claim'),('0be26375-69cb-4f83-94e0-332339f09db3','boolean','jsonType.label'),('0be26375-69cb-4f83-94e0-332339f09db3','emailVerified','user.attribute'),('0be26375-69cb-4f83-94e0-332339f09db3','true','userinfo.token.claim'),('0cad1811-a7be-4052-a255-00e3ae015f27','true','access.token.claim'),('0cad1811-a7be-4052-a255-00e3ae015f27','middle_name','claim.name'),('0cad1811-a7be-4052-a255-00e3ae015f27','true','id.token.claim'),('0cad1811-a7be-4052-a255-00e3ae015f27','true','introspection.token.claim'),('0cad1811-a7be-4052-a255-00e3ae015f27','String','jsonType.label'),('0cad1811-a7be-4052-a255-00e3ae015f27','middleName','user.attribute'),('0cad1811-a7be-4052-a255-00e3ae015f27','true','userinfo.token.claim'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','true','access.token.claim'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','zoneinfo','claim.name'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','true','id.token.claim'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','true','introspection.token.claim'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','String','jsonType.label'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','zoneinfo','user.attribute'),('1726b153-7cac-45e6-8fd1-a23d4d9b2de3','true','userinfo.token.claim'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','true','access.token.claim'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','upn','claim.name'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','true','id.token.claim'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','true','introspection.token.claim'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','String','jsonType.label'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','username','user.attribute'),('2897a2fc-093e-4647-9e7f-cfcb585bf95b','true','userinfo.token.claim'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','true','access.token.claim'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','true','id.token.claim'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','true','introspection.token.claim'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','country','user.attribute.country'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','formatted','user.attribute.formatted'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','locality','user.attribute.locality'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','postal_code','user.attribute.postal_code'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','region','user.attribute.region'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','street','user.attribute.street'),('2f4e8696-a9be-47cd-a8de-d2bea0df7db9','true','userinfo.token.claim'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','true','access.token.claim'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','locale','claim.name'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','true','id.token.claim'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','true','introspection.token.claim'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','String','jsonType.label'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','locale','user.attribute'),('34e73026-b8b5-4a2f-8464-53f854eb0d6d','true','userinfo.token.claim'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','true','access.token.claim'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','email','claim.name'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','true','id.token.claim'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','true','introspection.token.claim'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','String','jsonType.label'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','email','user.attribute'),('3cb36042-ae70-4876-8dba-4c67e37f3ede','true','userinfo.token.claim'),('3d7bb2e5-0ce8-48d0-a8e4-e106ac4066a2','true','access.token.claim'),('3d7bb2e5-0ce8-48d0-a8e4-e106ac4066a2','true','id.token.claim'),('3d7bb2e5-0ce8-48d0-a8e4-e106ac4066a2','true','introspection.token.claim'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','true','access.token.claim'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','birthdate','claim.name'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','true','id.token.claim'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','true','introspection.token.claim'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','String','jsonType.label'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','birthdate','user.attribute'),('407d50b6-3c31-440d-96f3-7167a7d2c3a1','true','userinfo.token.claim'),('4e74ff26-2438-48a9-9744-2ab8d517b645','true','access.token.claim'),('4e74ff26-2438-48a9-9744-2ab8d517b645','website','claim.name'),('4e74ff26-2438-48a9-9744-2ab8d517b645','true','id.token.claim'),('4e74ff26-2438-48a9-9744-2ab8d517b645','true','introspection.token.claim'),('4e74ff26-2438-48a9-9744-2ab8d517b645','String','jsonType.label'),('4e74ff26-2438-48a9-9744-2ab8d517b645','website','user.attribute'),('4e74ff26-2438-48a9-9744-2ab8d517b645','true','userinfo.token.claim'),('5093ead4-8207-42d8-8b7d-81ff979384b7','true','access.token.claim'),('5093ead4-8207-42d8-8b7d-81ff979384b7','true','introspection.token.claim'),('53fbd20c-e008-47a2-92b1-e2c9ebf93ee1','true','access.token.claim'),('53fbd20c-e008-47a2-92b1-e2c9ebf93ee1','true','introspection.token.claim'),('58215c11-1683-4827-ba75-92682a2f8925','true','access.token.claim'),('58215c11-1683-4827-ba75-92682a2f8925','clientHost','claim.name'),('58215c11-1683-4827-ba75-92682a2f8925','true','id.token.claim'),('58215c11-1683-4827-ba75-92682a2f8925','String','jsonType.label'),('58215c11-1683-4827-ba75-92682a2f8925','clientHost','user.session.note'),('58215c11-1683-4827-ba75-92682a2f8925','true','userinfo.token.claim'),('586afb02-44f4-4801-9152-55add1501d0c','true','access.token.claim'),('586afb02-44f4-4801-9152-55add1501d0c','true','id.token.claim'),('586afb02-44f4-4801-9152-55add1501d0c','true','introspection.token.claim'),('586afb02-44f4-4801-9152-55add1501d0c','true','userinfo.token.claim'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','true','access.token.claim'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','nickname','claim.name'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','true','id.token.claim'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','true','introspection.token.claim'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','String','jsonType.label'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','nickname','user.attribute'),('5b7b808c-86ea-48c3-b692-ca31ad369c8d','true','userinfo.token.claim'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','true','access.token.claim'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','clientId','claim.name'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','true','id.token.claim'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','String','jsonType.label'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','clientId','user.session.note'),('78f9d794-0dd7-4e66-9be8-8eb7dd946c9a','true','userinfo.token.claim'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','true','access.token.claim'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','locale','claim.name'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','true','id.token.claim'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','true','introspection.token.claim'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','String','jsonType.label'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','locale','user.attribute'),('9af97c98-fe23-4466-af08-dd6d57ccd4d3','true','userinfo.token.claim'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','true','access.token.claim'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','preferred_username','claim.name'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','true','id.token.claim'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','true','introspection.token.claim'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','String','jsonType.label'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','username','user.attribute'),('a3b7c1bd-ce59-4ca7-a422-0b9d3c7795fd','true','userinfo.token.claim'),('a612a5d5-cd64-4871-afab-61b864f37ff6','true','access.token.claim'),('a612a5d5-cd64-4871-afab-61b864f37ff6','picture','claim.name'),('a612a5d5-cd64-4871-afab-61b864f37ff6','true','id.token.claim'),('a612a5d5-cd64-4871-afab-61b864f37ff6','true','introspection.token.claim'),('a612a5d5-cd64-4871-afab-61b864f37ff6','String','jsonType.label'),('a612a5d5-cd64-4871-afab-61b864f37ff6','picture','user.attribute'),('a612a5d5-cd64-4871-afab-61b864f37ff6','true','userinfo.token.claim'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','true','access.token.claim'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','groups','claim.name'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','true','id.token.claim'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','true','introspection.token.claim'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','String','jsonType.label'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','true','multivalued'),('a77ef22b-1dce-4df2-993f-0ed84e5d72e4','foo','user.attribute'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','true','access.token.claim'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','profile','claim.name'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','true','id.token.claim'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','true','introspection.token.claim'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','String','jsonType.label'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','profile','user.attribute'),('a8977c2d-580b-4b1c-bc0f-4e95099d52b3','true','userinfo.token.claim'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','true','access.token.claim'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','clientAddress','claim.name'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','true','id.token.claim'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','String','jsonType.label'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','clientAddress','user.session.note'),('af1619e5-2dba-4efb-91d0-9e2327a0a867','true','userinfo.token.claim'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','true','access.token.claim'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','phone_number_verified','claim.name'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','true','id.token.claim'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','true','introspection.token.claim'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','boolean','jsonType.label'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','phoneNumberVerified','user.attribute'),('b8d9d4fd-4471-4670-8f42-73e7ba840dcf','true','userinfo.token.claim'),('c4cd9099-11c5-4728-983d-81940ce23fd4','true','access.token.claim'),('c4cd9099-11c5-4728-983d-81940ce23fd4','phone_number','claim.name'),('c4cd9099-11c5-4728-983d-81940ce23fd4','true','id.token.claim'),('c4cd9099-11c5-4728-983d-81940ce23fd4','true','introspection.token.claim'),('c4cd9099-11c5-4728-983d-81940ce23fd4','String','jsonType.label'),('c4cd9099-11c5-4728-983d-81940ce23fd4','phoneNumber','user.attribute'),('c4cd9099-11c5-4728-983d-81940ce23fd4','true','userinfo.token.claim'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','true','access.token.claim'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','resource_access.${client_id}.roles','claim.name'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','true','introspection.token.claim'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','String','jsonType.label'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','true','multivalued'),('c886b27c-a2d1-453f-910b-b1ac94a1efeb','foo','user.attribute'),('e73cef4e-16b7-4272-97a2-a7234450357e','true','access.token.claim'),('e73cef4e-16b7-4272-97a2-a7234450357e','updated_at','claim.name'),('e73cef4e-16b7-4272-97a2-a7234450357e','true','id.token.claim'),('e73cef4e-16b7-4272-97a2-a7234450357e','true','introspection.token.claim'),('e73cef4e-16b7-4272-97a2-a7234450357e','long','jsonType.label'),('e73cef4e-16b7-4272-97a2-a7234450357e','updatedAt','user.attribute'),('e73cef4e-16b7-4272-97a2-a7234450357e','true','userinfo.token.claim'),('eac48c83-c4a7-4548-b56e-71ba9fc29fbc','Role','attribute.name'),('eac48c83-c4a7-4548-b56e-71ba9fc29fbc','Basic','attribute.nameformat'),('eac48c83-c4a7-4548-b56e-71ba9fc29fbc','false','single'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','true','access.token.claim'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','gender','claim.name'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','true','id.token.claim'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','true','introspection.token.claim'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','String','jsonType.label'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','gender','user.attribute'),('f6a87a39-59ed-4220-8fb0-c3a72ddb0540','true','userinfo.token.claim'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','true','access.token.claim'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','family_name','claim.name'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','true','id.token.claim'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','true','introspection.token.claim'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','String','jsonType.label'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','lastName','user.attribute'),('f7359b5d-c311-4684-9f45-b0459a2d9cf7','true','userinfo.token.claim'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','true','access.token.claim'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','realm_access.roles','claim.name'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','true','introspection.token.claim'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','String','jsonType.label'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','true','multivalued'),('f8e81d7f-3dd1-4e6a-b0e2-0ed7e8af2628','foo','user.attribute');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('2274a9da-5a10-4c32-99e8-c01577061a5d',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'20849ade-df33-45a0-8f4e-b4a458876287',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','50cb78e6-d5db-4c29-aa32-051815bca44c','4a881b65-19b2-42b1-ba6c-e13302f9cfb4','72a54efb-59c7-48a6-a38f-b1c16db72797','78f6d120-07c7-4c2f-8835-cd7e7ea30dfa','9634c6fc-e6ec-4714-b787-08278d2302c5',31536000,0,900,1,0,'01fb9b36-e900-4047-af24-06ac070aa101',0,0,0,0,'fe8f4ac0-c565-49fe-be6c-e2618275c7d0');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','2274a9da-5a10-4c32-99e8-c01577061a5d','false'),('cibaAuthRequestedUserHint','2274a9da-5a10-4c32-99e8-c01577061a5d','login_hint'),('cibaBackchannelTokenDeliveryMode','2274a9da-5a10-4c32-99e8-c01577061a5d','poll'),('cibaExpiresIn','2274a9da-5a10-4c32-99e8-c01577061a5d','120'),('cibaInterval','2274a9da-5a10-4c32-99e8-c01577061a5d','5'),('defaultSignatureAlgorithm','2274a9da-5a10-4c32-99e8-c01577061a5d','RS256'),('displayName','2274a9da-5a10-4c32-99e8-c01577061a5d','Keycloak'),('displayNameHtml','2274a9da-5a10-4c32-99e8-c01577061a5d','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','2274a9da-5a10-4c32-99e8-c01577061a5d','30'),('firstBrokerLoginFlowId','2274a9da-5a10-4c32-99e8-c01577061a5d','4bbad33a-0c24-41dc-8510-5af69add280d'),('maxDeltaTimeSeconds','2274a9da-5a10-4c32-99e8-c01577061a5d','43200'),('maxFailureWaitSeconds','2274a9da-5a10-4c32-99e8-c01577061a5d','900'),('maxTemporaryLockouts','2274a9da-5a10-4c32-99e8-c01577061a5d','0'),('minimumQuickLoginWaitSeconds','2274a9da-5a10-4c32-99e8-c01577061a5d','60'),('oauth2DeviceCodeLifespan','2274a9da-5a10-4c32-99e8-c01577061a5d','600'),('oauth2DevicePollingInterval','2274a9da-5a10-4c32-99e8-c01577061a5d','5'),('offlineSessionMaxLifespan','2274a9da-5a10-4c32-99e8-c01577061a5d','31536000'),('offlineSessionMaxLifespanEnabled','2274a9da-5a10-4c32-99e8-c01577061a5d','true'),('parRequestUriLifespan','2274a9da-5a10-4c32-99e8-c01577061a5d','60'),('permanentLockout','2274a9da-5a10-4c32-99e8-c01577061a5d','false'),('quickLoginCheckMilliSeconds','2274a9da-5a10-4c32-99e8-c01577061a5d','1000'),('realmReusableOtpCode','2274a9da-5a10-4c32-99e8-c01577061a5d','false'),('waitIncrementSeconds','2274a9da-5a10-4c32-99e8-c01577061a5d','60'),('_browser_header.contentSecurityPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','2274a9da-5a10-4c32-99e8-c01577061a5d',''),('_browser_header.referrerPolicy','2274a9da-5a10-4c32-99e8-c01577061a5d','no-referrer'),('_browser_header.strictTransportSecurity','2274a9da-5a10-4c32-99e8-c01577061a5d','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','2274a9da-5a10-4c32-99e8-c01577061a5d','nosniff'),('_browser_header.xFrameOptions','2274a9da-5a10-4c32-99e8-c01577061a5d','SAMEORIGIN'),('_browser_header.xRobotsTag','2274a9da-5a10-4c32-99e8-c01577061a5d','none'),('_browser_header.xXSSProtection','2274a9da-5a10-4c32-99e8-c01577061a5d','1; mode=block');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('2274a9da-5a10-4c32-99e8-c01577061a5d','jboss-logging');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'2274a9da-5a10-4c32-99e8-c01577061a5d');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('2274a9da-5a10-4c32-99e8-c01577061a5d','en'),('2274a9da-5a10-4c32-99e8-c01577061a5d','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('2d4b17de-bddb-43d3-9139-b9611ebb9caa','/*'),('5ec411e1-98b6-42bd-8766-420f6b43f72a','/realms/master/account/*'),('62d72c31-b5e0-4152-9ea7-dadd34647345','/admin/master/console/*'),('85772dfb-fa72-4393-a572-31977a15a0ed','/realms/master/account/*');
UNLOCK TABLES;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('100aef81-0994-48f6-9123-b4bc96b663f0','webauthn-register-passwordless','Webauthn Register Passwordless','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'webauthn-register-passwordless',80),('14deaa6a-c928-4768-b215-cbb9e49fc0bb','UPDATE_PROFILE','Update Profile','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'UPDATE_PROFILE',40),('2ac02cff-c9cc-466d-ad0f-57301c5c01f2','CONFIGURE_TOTP','Configure OTP','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'CONFIGURE_TOTP',10),('2b319d74-8825-4678-848e-a188a218b2e4','VERIFY_EMAIL','Verify Email','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'VERIFY_EMAIL',50),('9062f628-c8d0-4afc-b0d3-b2df48012a0e','UPDATE_PASSWORD','Update Password','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'UPDATE_PASSWORD',30),('90eb5ce1-1e53-493f-83cf-169736e140f6','VERIFY_PROFILE','Verify Profile','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'VERIFY_PROFILE',90),('b83ab608-5019-4215-b891-590cc1626ce9','delete_account','Delete Account','2274a9da-5a10-4c32-99e8-c01577061a5d',0,0,'delete_account',60),('d51b68e8-f2ca-4bd0-bca3-e692f72a3ce4','delete_credential','Delete Credential','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'delete_credential',100),('e0d6b48d-182e-40a3-aa1e-6ad34b9432ff','TERMS_AND_CONDITIONS','Terms and Conditions','2274a9da-5a10-4c32-99e8-c01577061a5d',0,0,'TERMS_AND_CONDITIONS',20),('e26e8fa3-6312-45ca-b8c1-ff2a703c7a53','webauthn-register','Webauthn Register','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'webauthn-register',70),('e7c9da75-24d3-4ea9-a840-c3b2fb1af89d','update_user_locale','Update User Locale','2274a9da-5a10-4c32-99e8-c01577061a5d',1,0,'update_user_locale',1000);
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
INSERT INTO `SCOPE_MAPPING` VALUES ('85772dfb-fa72-4393-a572-31977a15a0ed','18225257-f25a-4876-98a4-ab9d7fe4bd75'),('85772dfb-fa72-4393-a572-31977a15a0ed','67fa63b9-0dbe-43be-b213-50d1df053463');
UNLOCK TABLES;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
INSERT INTO `USER_ENTITY` VALUES ('3bd30dd1-bf73-43f6-9b4e-0e124a181abd',NULL,'bb009841-b8fe-4954-bdfd-41c77e59ef56',0,1,NULL,NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','admin',1718253969058,NULL,0),('f62c2fdc-18ff-4daa-a99c-6def39141dbf',NULL,'3013cbf9-9db8-4a4d-8e3d-7623b77ede5f',0,1,NULL,NULL,NULL,'2274a9da-5a10-4c32-99e8-c01577061a5d','service-account-_platform',1718253977204,'d7210a45-f13e-4978-bd9e-65cc83efa46f',0);
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('b5d8b2d7-51f1-4443-9047-beab930371f0','3bd30dd1-bf73-43f6-9b4e-0e124a181abd'),('b5d8b2d7-51f1-4443-9047-beab930371f0','f62c2fdc-18ff-4daa-a99c-6def39141dbf'),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','3bd30dd1-bf73-43f6-9b4e-0e124a181abd'),('fe8f4ac0-c565-49fe-be6c-e2618275c7d0','f62c2fdc-18ff-4daa-a99c-6def39141dbf');
UNLOCK TABLES;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
INSERT INTO `WEB_ORIGINS` VALUES ('62d72c31-b5e0-4152-9ea7-dadd34647345','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-06-13 13:46:26','dummy','2024-06-13 13:46:26','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-06-13 13:46:19','dummy','2024-06-13 13:46:19','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-06-13 13:46:19','dummy','2024-06-13 13:46:19','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-06-13 13:46:19','dummy','2024-06-13 13:46:19','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-06-13 13:46:18.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-06-13 13:46:18.000000',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `T_ORGANIZATION`
--

LOCK TABLES `T_ORGANIZATION` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `T_ORGANIZATION_DB`
--

LOCK TABLES `T_ORGANIZATION_DB` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `T_ORGANIZATION_PLAN`
--

LOCK TABLES `T_ORGANIZATION_PLAN` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN`
--

LOCK TABLES `T_PLAN` WRITE;
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-06-13 13:46:16','system','2024-06-13 13:46:16','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-06-13 13:46:26','dummy','2024-06-13 13:46:26','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-06-13 13:46:16','system','2024-06-13 13:46:18','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-06-13 13:46:16','system','2024-06-13 13:46:18','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-06-13 13:46:16','system','2024-06-13 13:46:18','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-06-13 13:46:26','dummy','2024-06-13 13:46:26','dummy'),('_default','platform.roles',1000,'2024-06-13 13:46:16','system','2024-06-13 13:46:16','system'),('_default','platform.users',10000,'2024-06-13 13:46:16','system','2024-06-13 13:46:16','system'),('_default','platform.workspaces',100,'2024-06-13 13:46:16','system','2024-06-13 13:46:16','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-06-13 13:46:15','1.9.0','2024-06-13 13:46:15','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-06-13 13:46:17','1.9.0','2024-06-13 13:46:17','1.9.0'),(3,'1.5.0','START',NULL,'2024-06-13 13:46:17','1.9.0','2024-06-13 13:46:17','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(5,'1.5.2','START',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(7,'1.6.0','START',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(9,'1.7.0','START',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(11,'1.8.0','START',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(13,'1.8.1','START',NULL,'2024-06-13 13:46:18','1.9.0','2024-06-13 13:46:18','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-06-13 13:46:19','1.9.0','2024-06-13 13:46:19','1.9.0'),(15,'1.8.2','START',NULL,'2024-06-13 13:46:19','1.9.0','2024-06-13 13:46:19','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-06-13 13:46:19','1.9.0','2024-06-13 13:46:19','1.9.0'),(17,'1.9.0','START',NULL,'2024-06-13 13:46:19','1.9.0','2024-06-13 13:46:19','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-06-13 13:46:19','1.9.0','2024-06-13 13:46:19','1.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"d7210a45-f13e-4978-bd9e-65cc83efa46f\", \"TOKEN_CHECK_CLIENT_SECRET\": \"KF7ylcnMzoLoWPzG7GrVHHIPi3Hr4fOg\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"cb87b06f-1ab4-449b-beb4-78387ff4fd7c\"}','2024-06-13 13:46:17','system','2024-06-13 13:46:17','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-06-13 13:45:26','system','2024-06-13 13:46:19','1.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PROCESS_QUEUE`
--

LOCK TABLES `T_PROCESS_QUEUE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 13:49:02
SET foreign_key_checks = 1;
