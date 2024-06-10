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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('071f3c51-f097-4004-a686-db86284c7beb',NULL,'direct-grant-validate-password','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8e9360e2-cba2-4af0-8ff8-5d7ebcf6f89f',0,20,0,NULL,NULL),('08a4b02d-bb88-44be-8d65-535be0bc81ce',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','2c9b30ab-95c3-40bb-a9a2-92ea05a0e4d5',0,20,1,'d84e7227-c2b2-4e28-a45b-076d26b6c7be',NULL),('0aa6abc3-fd1e-4700-ac6e-422ec5f612ed',NULL,'auth-spnego','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8325c67a-7a80-4310-a1a7-48245c0eabec',3,20,0,NULL,NULL),('0c2bc983-dc71-4f5c-9265-c51c863ed050',NULL,'auth-cookie','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8325c67a-7a80-4310-a1a7-48245c0eabec',2,10,0,NULL,NULL),('0f4d5629-9827-4f2c-92d4-2e876ed721f4',NULL,'idp-confirm-link','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','2c9b30ab-95c3-40bb-a9a2-92ea05a0e4d5',0,10,0,NULL,NULL),('200f96dd-fb1e-4b32-a7be-667d5a73ba19',NULL,'conditional-user-configured','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','b287e5b9-a614-4a53-8e8f-815983f64253',0,10,0,NULL,NULL),('26db9503-24e3-4ebd-acbf-a4ad903ab7fe',NULL,'client-secret-jwt','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d9783834-ca52-4527-9b66-f3f41d9c6dcf',2,30,0,NULL,NULL),('290698ef-f74a-46e0-815b-70c679ba0a35',NULL,'reset-credentials-choose-user','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1c2242c7-7662-4688-a83b-75268ae2550a',0,10,0,NULL,NULL),('2d088721-81df-48b2-a243-d72e0ed10d5a',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','3c55012c-8adc-4d08-9579-875a5fc017e2',1,20,1,'b287e5b9-a614-4a53-8e8f-815983f64253',NULL),('455a99fd-efb9-48a9-8770-ae7c26710be5',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1c2242c7-7662-4688-a83b-75268ae2550a',1,40,1,'536aa645-ad2c-4a62-afda-f2da40297548',NULL),('54800e82-041a-4968-8527-f2e3287afddd',NULL,'idp-email-verification','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d84e7227-c2b2-4e28-a45b-076d26b6c7be',2,10,0,NULL,NULL),('556cc1b9-6517-4f51-a747-e4a2b4e5b3ad',NULL,'reset-otp','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','536aa645-ad2c-4a62-afda-f2da40297548',0,20,0,NULL,NULL),('58516807-a3c8-4d76-8d7d-415534a2cbdc',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8325c67a-7a80-4310-a1a7-48245c0eabec',2,30,1,'3c55012c-8adc-4d08-9579-875a5fc017e2',NULL),('5f805850-874f-46e6-834c-ca80d3bf920a',NULL,'conditional-user-configured','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','683d7e9f-4e23-459e-a159-353108fd05de',0,10,0,NULL,NULL),('636fccbd-e818-4911-8b4e-1a3b0971e96e',NULL,'reset-password','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1c2242c7-7662-4688-a83b-75268ae2550a',0,30,0,NULL,NULL),('6695f7d6-352d-4296-9163-d4c3a40c64a5',NULL,'client-x509','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d9783834-ca52-4527-9b66-f3f41d9c6dcf',2,40,0,NULL,NULL),('694b35dc-5e46-45ca-aabe-589f6ea9350d',NULL,'identity-provider-redirector','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8325c67a-7a80-4310-a1a7-48245c0eabec',2,25,0,NULL,NULL),('6f635071-2123-4b55-8cc3-d789d6de30cd',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0fefb45c-b839-4567-a54c-cb96950701bc',1,20,1,'641fe0bc-e64c-4108-a1e4-6c8a67ba7722',NULL),('757b670b-3c8f-4ed0-9476-0f86fcfeeac6',NULL,'conditional-user-configured','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','641fe0bc-e64c-4108-a1e4-6c8a67ba7722',0,10,0,NULL,NULL),('77e42600-a9df-4b1a-808f-41211e44560c',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8e9360e2-cba2-4af0-8ff8-5d7ebcf6f89f',1,30,1,'683d7e9f-4e23-459e-a159-353108fd05de',NULL),('795449a0-ec33-43c9-8030-25c71463888b',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','e5dfd7eb-1ad3-4a57-9796-024deb7aec86',0,20,1,'47c25bba-c9a4-496d-9002-1282c0522185',NULL),('7afdd2e4-2c8a-40a7-a5a9-c2819f9c005c',NULL,'registration-recaptcha-action','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0b5011bd-4b19-46f6-a632-6a5b41287f65',3,60,0,NULL,NULL),('81634c78-b6a7-4414-9605-3063d8e59d56',NULL,'auth-otp-form','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','641fe0bc-e64c-4108-a1e4-6c8a67ba7722',0,20,0,NULL,NULL),('81e09131-ea2c-4b8e-a2e5-c30e1b39afcd',NULL,'reset-credential-email','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1c2242c7-7662-4688-a83b-75268ae2550a',0,20,0,NULL,NULL),('8ffb4278-d0e3-4784-8908-fcce7af40479',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','47c25bba-c9a4-496d-9002-1282c0522185',2,20,1,'2c9b30ab-95c3-40bb-a9a2-92ea05a0e4d5',NULL),('91bbb489-c1cf-4532-b17f-23b7968623b3',NULL,'registration-terms-and-conditions','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0b5011bd-4b19-46f6-a632-6a5b41287f65',3,70,0,NULL,NULL),('937d2e44-a962-4bb0-8701-8e1ac26bb1d5',NULL,'idp-create-user-if-unique','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','47c25bba-c9a4-496d-9002-1282c0522185',2,10,0,NULL,'03a85958-d8e1-41e0-8ddc-917d3b1c6bc4'),('94624a51-4dc5-4ff8-ac76-3c69307416e9',NULL,'idp-username-password-form','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0fefb45c-b839-4567-a54c-cb96950701bc',0,10,0,NULL,NULL),('9a252a55-6eb2-40c3-9238-e5bb15d1f97d',NULL,'registration-password-action','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0b5011bd-4b19-46f6-a632-6a5b41287f65',0,50,0,NULL,NULL),('a9c817d3-9003-4c0c-a980-8194519591df',NULL,'client-secret','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d9783834-ca52-4527-9b66-f3f41d9c6dcf',2,10,0,NULL,NULL),('bb699aa5-ef77-46f3-835e-715ec681a28c',NULL,'docker-http-basic-authenticator','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','18085a10-314a-4c4b-a922-56e0f95fd58d',0,10,0,NULL,NULL),('c0bc1b0f-f259-4af2-93b3-67a49c05d682',NULL,'http-basic-authenticator','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','322b35b8-8efc-4777-bbe2-900c84f46838',0,10,0,NULL,NULL),('c6f28275-5d0f-4410-a3c3-af8c40f02ebd',NULL,'client-jwt','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d9783834-ca52-4527-9b66-f3f41d9c6dcf',2,20,0,NULL,NULL),('c87baad5-68c2-48e7-99c7-c15244512d5c',NULL,'direct-grant-validate-username','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','8e9360e2-cba2-4af0-8ff8-5d7ebcf6f89f',0,10,0,NULL,NULL),('cc0501d4-d74a-4865-bdd2-e81955cd79a8',NULL,'registration-page-form','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','352a591c-4046-46aa-9492-fbb0cf721f05',0,10,1,'0b5011bd-4b19-46f6-a632-6a5b41287f65',NULL),('ce649640-ec86-4fb9-b286-28a2bcb7b65b',NULL,'auth-otp-form','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','b287e5b9-a614-4a53-8e8f-815983f64253',0,20,0,NULL,NULL),('ce722e36-3198-44f2-81d1-7aeaded39258',NULL,'registration-user-creation','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0b5011bd-4b19-46f6-a632-6a5b41287f65',0,20,0,NULL,NULL),('e2bcdc35-040a-4073-93d9-a39acaf68d0e',NULL,'idp-review-profile','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','e5dfd7eb-1ad3-4a57-9796-024deb7aec86',0,10,0,NULL,'206e4868-087f-4c92-82a4-1e9971f80ecd'),('ed045831-93e7-4336-97e1-7b04a1d3a82b',NULL,'direct-grant-validate-otp','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','683d7e9f-4e23-459e-a159-353108fd05de',0,20,0,NULL,NULL),('f10478b9-e305-4ae5-9789-33b21f3d6992',NULL,'conditional-user-configured','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','536aa645-ad2c-4a62-afda-f2da40297548',0,10,0,NULL,NULL),('f348e330-7f50-4448-8326-4fdffd54e76c',NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d84e7227-c2b2-4e28-a45b-076d26b6c7be',2,20,1,'0fefb45c-b839-4567-a54c-cb96950701bc',NULL),('febf1d93-08fe-4fd3-888f-6e45c948f526',NULL,'auth-username-password-form','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','3c55012c-8adc-4d08-9579-875a5fc017e2',0,10,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0b5011bd-4b19-46f6-a632-6a5b41287f65','registration form','registration form','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','form-flow',0,1),('0fefb45c-b839-4567-a54c-cb96950701bc','Verify Existing Account by Re-authentication','Reauthentication of existing account','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('18085a10-314a-4c4b-a922-56e0f95fd58d','docker auth','Used by Docker clients to authenticate against the IDP','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1),('1c2242c7-7662-4688-a83b-75268ae2550a','reset credentials','Reset credentials for a user if they forgot their password or something','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1),('2c9b30ab-95c3-40bb-a9a2-92ea05a0e4d5','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('322b35b8-8efc-4777-bbe2-900c84f46838','saml ecp','SAML ECP Profile Authentication Flow','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1),('352a591c-4046-46aa-9492-fbb0cf721f05','registration','registration flow','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1),('3c55012c-8adc-4d08-9579-875a5fc017e2','forms','Username, password, otp and other auth forms.','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('47c25bba-c9a4-496d-9002-1282c0522185','User creation or linking','Flow for the existing/non-existing user alternatives','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('536aa645-ad2c-4a62-afda-f2da40297548','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('641fe0bc-e64c-4108-a1e4-6c8a67ba7722','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('683d7e9f-4e23-459e-a159-353108fd05de','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('8325c67a-7a80-4310-a1a7-48245c0eabec','browser','browser based authentication','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1),('8e9360e2-cba2-4af0-8ff8-5d7ebcf6f89f','direct grant','OpenID Connect Resource Owner Grant','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1),('b287e5b9-a614-4a53-8e8f-815983f64253','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('d84e7227-c2b2-4e28-a45b-076d26b6c7be','Account verification options','Method with which to verity the existing account','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',0,1),('d9783834-ca52-4527-9b66-f3f41d9c6dcf','clients','Base authentication for clients','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','client-flow',1,1),('e5dfd7eb-1ad3-4a57-9796-024deb7aec86','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','basic-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('03a85958-d8e1-41e0-8ddc-917d3b1c6bc4','create unique user config','f00cbb37-dfa0-4b77-88e6-8acdf02606cc'),('206e4868-087f-4c92-82a4-1e9971f80ecd','review profile config','f00cbb37-dfa0-4b77-88e6-8acdf02606cc');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('03a85958-d8e1-41e0-8ddc-917d3b1c6bc4','false','require.password.update.after.registration'),('206e4868-087f-4c92-82a4-1e9971f80ecd','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('11aa5ef0-630b-49d7-8b17-0f0da629e445',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('5101d081-60cd-4385-827d-9acaee6f862c',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('697891f5-228e-459b-88a7-7a6a0dfae003',1,1,'_platform',0,0,'gQhPf5RhsOxUGIYHMGNByOn8YdWdaZvZ',NULL,0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('6a743898-b923-4d17-a099-72398d1ffa9f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('79b4f5b6-b01f-4672-8186-080ea5a8fe10',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('94f335c7-1dc4-4b8f-bd31-a29b0888225d',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('c99c6c21-1776-4ea1-bb6b-feb463801223',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('f6a70197-8712-4e1b-98a1-a63cc145b418',1,0,'_platform-console',0,1,'31IHIPp00jT8HCZ3nlD8fXGShA4bI3LW',NULL,0,NULL,0,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('11aa5ef0-630b-49d7-8b17-0f0da629e445','post.logout.redirect.uris','+'),('5101d081-60cd-4385-827d-9acaee6f862c','access.token.lifespan','86400'),('5101d081-60cd-4385-827d-9acaee6f862c','acr.loa.map','{}'),('5101d081-60cd-4385-827d-9acaee6f862c','backchannel.logout.revoke.offline.tokens','false'),('5101d081-60cd-4385-827d-9acaee6f862c','backchannel.logout.session.required','true'),('5101d081-60cd-4385-827d-9acaee6f862c','client.session.idle.timeout','86400'),('5101d081-60cd-4385-827d-9acaee6f862c','client.session.max.lifespan','86400'),('5101d081-60cd-4385-827d-9acaee6f862c','client_credentials.use_refresh_token','false'),('5101d081-60cd-4385-827d-9acaee6f862c','display.on.consent.screen','false'),('5101d081-60cd-4385-827d-9acaee6f862c','exclude.session.state.from.auth.response','false'),('5101d081-60cd-4385-827d-9acaee6f862c','frontchannel.logout.session.required','false'),('5101d081-60cd-4385-827d-9acaee6f862c','id.token.as.detached.signature','false'),('5101d081-60cd-4385-827d-9acaee6f862c','oauth2.device.authorization.grant.enabled','false'),('5101d081-60cd-4385-827d-9acaee6f862c','oidc.ciba.grant.enabled','false'),('5101d081-60cd-4385-827d-9acaee6f862c','require.pushed.authorization.requests','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.allow.ecp.flow','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.artifact.binding','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.assertion.signature','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.authnstatement','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.client.signature','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.encrypt','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.force.post.binding','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.multivalued.roles','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.onetimeuse.condition','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.server.signature','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml.server.signature.keyinfo.ext','false'),('5101d081-60cd-4385-827d-9acaee6f862c','saml_force_name_id_format','false'),('5101d081-60cd-4385-827d-9acaee6f862c','tls.client.certificate.bound.access.tokens','false'),('5101d081-60cd-4385-827d-9acaee6f862c','token.response.type.bearer.lower-case','false'),('5101d081-60cd-4385-827d-9acaee6f862c','use.refresh.tokens','true'),('697891f5-228e-459b-88a7-7a6a0dfae003','backchannel.logout.revoke.offline.tokens','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','backchannel.logout.session.required','true'),('697891f5-228e-459b-88a7-7a6a0dfae003','client.secret.creation.time','1717741350'),('697891f5-228e-459b-88a7-7a6a0dfae003','client_credentials.use_refresh_token','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','display.on.consent.screen','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','exclude.session.state.from.auth.response','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','id.token.as.detached.signature','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','oauth2.device.authorization.grant.enabled','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','oidc.ciba.grant.enabled','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','require.pushed.authorization.requests','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.artifact.binding','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.assertion.signature','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.authnstatement','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.client.signature','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.encrypt','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.force.post.binding','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.multivalued.roles','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.onetimeuse.condition','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.server.signature','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml.server.signature.keyinfo.ext','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','saml_force_name_id_format','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','tls.client.certificate.bound.access.tokens','false'),('697891f5-228e-459b-88a7-7a6a0dfae003','use.refresh.tokens','true'),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','pkce.code.challenge.method','S256'),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','post.logout.redirect.uris','+'),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','pkce.code.challenge.method','S256'),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','post.logout.redirect.uris','+'),('f6a70197-8712-4e1b-98a1-a63cc145b418','backchannel.logout.revoke.offline.tokens','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','backchannel.logout.session.required','true'),('f6a70197-8712-4e1b-98a1-a63cc145b418','client.secret.creation.time','1717741352'),('f6a70197-8712-4e1b-98a1-a63cc145b418','client_credentials.use_refresh_token','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','display.on.consent.screen','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','exclude.session.state.from.auth.response','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','id.token.as.detached.signature','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','oauth2.device.authorization.grant.enabled','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','oidc.ciba.grant.enabled','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','post.logout.redirect.uris','/*'),('f6a70197-8712-4e1b-98a1-a63cc145b418','require.pushed.authorization.requests','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.artifact.binding','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.assertion.signature','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.authnstatement','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.client.signature','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.encrypt','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.force.post.binding','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.multivalued.roles','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.onetimeuse.condition','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.server.signature','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml.server.signature.keyinfo.ext','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','saml_force_name_id_format','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','tls.client.certificate.bound.access.tokens','false'),('f6a70197-8712-4e1b-98a1-a63cc145b418','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('1c6e93b7-0c6e-496e-956f-85165f13b170','offline_access','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect built-in scope: offline_access','openid-connect'),('21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9','email','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect built-in scope: email','openid-connect'),('386bcf49-cef9-4658-ada0-db9e0526000f','acr','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('38b6efc4-0686-4645-867a-c84602e75114','microprofile-jwt','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','Microprofile - JWT built-in scope','openid-connect'),('89f59fd3-856a-4dd8-8399-723c6711a513','address','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect built-in scope: address','openid-connect'),('944a8727-6b27-4b53-82da-1d9855b83657','roles','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect scope for add user roles to the access token','openid-connect'),('a3d2df99-6b84-408b-8dcf-138fca71482b','profile','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect built-in scope: profile','openid-connect'),('bd0a3327-0b51-47eb-8769-a1efe6cb27df','phone','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect built-in scope: phone','openid-connect'),('c9041516-4ac5-4ff9-8646-d9b53d2b211b','web-origins','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d1745dc3-5351-429e-aaa9-a9f63c17ba8b','role_list','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','SAML role list','saml');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('1c6e93b7-0c6e-496e-956f-85165f13b170','${offlineAccessScopeConsentText}','consent.screen.text'),('1c6e93b7-0c6e-496e-956f-85165f13b170','true','display.on.consent.screen'),('21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9','${emailScopeConsentText}','consent.screen.text'),('21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9','true','display.on.consent.screen'),('21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9','true','include.in.token.scope'),('386bcf49-cef9-4658-ada0-db9e0526000f','false','display.on.consent.screen'),('386bcf49-cef9-4658-ada0-db9e0526000f','false','include.in.token.scope'),('38b6efc4-0686-4645-867a-c84602e75114','false','display.on.consent.screen'),('38b6efc4-0686-4645-867a-c84602e75114','true','include.in.token.scope'),('89f59fd3-856a-4dd8-8399-723c6711a513','${addressScopeConsentText}','consent.screen.text'),('89f59fd3-856a-4dd8-8399-723c6711a513','true','display.on.consent.screen'),('89f59fd3-856a-4dd8-8399-723c6711a513','true','include.in.token.scope'),('944a8727-6b27-4b53-82da-1d9855b83657','${rolesScopeConsentText}','consent.screen.text'),('944a8727-6b27-4b53-82da-1d9855b83657','true','display.on.consent.screen'),('944a8727-6b27-4b53-82da-1d9855b83657','false','include.in.token.scope'),('a3d2df99-6b84-408b-8dcf-138fca71482b','${profileScopeConsentText}','consent.screen.text'),('a3d2df99-6b84-408b-8dcf-138fca71482b','true','display.on.consent.screen'),('a3d2df99-6b84-408b-8dcf-138fca71482b','true','include.in.token.scope'),('bd0a3327-0b51-47eb-8769-a1efe6cb27df','${phoneScopeConsentText}','consent.screen.text'),('bd0a3327-0b51-47eb-8769-a1efe6cb27df','true','display.on.consent.screen'),('bd0a3327-0b51-47eb-8769-a1efe6cb27df','true','include.in.token.scope'),('c9041516-4ac5-4ff9-8646-d9b53d2b211b','','consent.screen.text'),('c9041516-4ac5-4ff9-8646-d9b53d2b211b','false','display.on.consent.screen'),('c9041516-4ac5-4ff9-8646-d9b53d2b211b','false','include.in.token.scope'),('d1745dc3-5351-429e-aaa9-a9f63c17ba8b','${samlRoleListScopeConsentText}','consent.screen.text'),('d1745dc3-5351-429e-aaa9-a9f63c17ba8b','true','display.on.consent.screen');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('11aa5ef0-630b-49d7-8b17-0f0da629e445','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('11aa5ef0-630b-49d7-8b17-0f0da629e445','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('11aa5ef0-630b-49d7-8b17-0f0da629e445','386bcf49-cef9-4658-ada0-db9e0526000f',1),('11aa5ef0-630b-49d7-8b17-0f0da629e445','38b6efc4-0686-4645-867a-c84602e75114',0),('11aa5ef0-630b-49d7-8b17-0f0da629e445','89f59fd3-856a-4dd8-8399-723c6711a513',0),('11aa5ef0-630b-49d7-8b17-0f0da629e445','944a8727-6b27-4b53-82da-1d9855b83657',1),('11aa5ef0-630b-49d7-8b17-0f0da629e445','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('11aa5ef0-630b-49d7-8b17-0f0da629e445','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('11aa5ef0-630b-49d7-8b17-0f0da629e445','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','386bcf49-cef9-4658-ada0-db9e0526000f',1),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','38b6efc4-0686-4645-867a-c84602e75114',0),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','89f59fd3-856a-4dd8-8399-723c6711a513',0),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','944a8727-6b27-4b53-82da-1d9855b83657',1),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('5101d081-60cd-4385-827d-9acaee6f862c','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('5101d081-60cd-4385-827d-9acaee6f862c','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('5101d081-60cd-4385-827d-9acaee6f862c','386bcf49-cef9-4658-ada0-db9e0526000f',1),('5101d081-60cd-4385-827d-9acaee6f862c','38b6efc4-0686-4645-867a-c84602e75114',0),('5101d081-60cd-4385-827d-9acaee6f862c','89f59fd3-856a-4dd8-8399-723c6711a513',0),('5101d081-60cd-4385-827d-9acaee6f862c','944a8727-6b27-4b53-82da-1d9855b83657',1),('5101d081-60cd-4385-827d-9acaee6f862c','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('5101d081-60cd-4385-827d-9acaee6f862c','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('5101d081-60cd-4385-827d-9acaee6f862c','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('697891f5-228e-459b-88a7-7a6a0dfae003','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('697891f5-228e-459b-88a7-7a6a0dfae003','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('697891f5-228e-459b-88a7-7a6a0dfae003','38b6efc4-0686-4645-867a-c84602e75114',0),('697891f5-228e-459b-88a7-7a6a0dfae003','89f59fd3-856a-4dd8-8399-723c6711a513',0),('697891f5-228e-459b-88a7-7a6a0dfae003','944a8727-6b27-4b53-82da-1d9855b83657',1),('697891f5-228e-459b-88a7-7a6a0dfae003','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('697891f5-228e-459b-88a7-7a6a0dfae003','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('697891f5-228e-459b-88a7-7a6a0dfae003','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('6a743898-b923-4d17-a099-72398d1ffa9f','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('6a743898-b923-4d17-a099-72398d1ffa9f','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('6a743898-b923-4d17-a099-72398d1ffa9f','386bcf49-cef9-4658-ada0-db9e0526000f',1),('6a743898-b923-4d17-a099-72398d1ffa9f','38b6efc4-0686-4645-867a-c84602e75114',0),('6a743898-b923-4d17-a099-72398d1ffa9f','89f59fd3-856a-4dd8-8399-723c6711a513',0),('6a743898-b923-4d17-a099-72398d1ffa9f','944a8727-6b27-4b53-82da-1d9855b83657',1),('6a743898-b923-4d17-a099-72398d1ffa9f','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('6a743898-b923-4d17-a099-72398d1ffa9f','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('6a743898-b923-4d17-a099-72398d1ffa9f','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','386bcf49-cef9-4658-ada0-db9e0526000f',1),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','38b6efc4-0686-4645-867a-c84602e75114',0),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','89f59fd3-856a-4dd8-8399-723c6711a513',0),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','944a8727-6b27-4b53-82da-1d9855b83657',1),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','386bcf49-cef9-4658-ada0-db9e0526000f',1),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','38b6efc4-0686-4645-867a-c84602e75114',0),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','89f59fd3-856a-4dd8-8399-723c6711a513',0),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','944a8727-6b27-4b53-82da-1d9855b83657',1),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('c99c6c21-1776-4ea1-bb6b-feb463801223','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('c99c6c21-1776-4ea1-bb6b-feb463801223','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('c99c6c21-1776-4ea1-bb6b-feb463801223','386bcf49-cef9-4658-ada0-db9e0526000f',1),('c99c6c21-1776-4ea1-bb6b-feb463801223','38b6efc4-0686-4645-867a-c84602e75114',0),('c99c6c21-1776-4ea1-bb6b-feb463801223','89f59fd3-856a-4dd8-8399-723c6711a513',0),('c99c6c21-1776-4ea1-bb6b-feb463801223','944a8727-6b27-4b53-82da-1d9855b83657',1),('c99c6c21-1776-4ea1-bb6b-feb463801223','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('c99c6c21-1776-4ea1-bb6b-feb463801223','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('c99c6c21-1776-4ea1-bb6b-feb463801223','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('f6a70197-8712-4e1b-98a1-a63cc145b418','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('f6a70197-8712-4e1b-98a1-a63cc145b418','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('f6a70197-8712-4e1b-98a1-a63cc145b418','38b6efc4-0686-4645-867a-c84602e75114',0),('f6a70197-8712-4e1b-98a1-a63cc145b418','89f59fd3-856a-4dd8-8399-723c6711a513',0),('f6a70197-8712-4e1b-98a1-a63cc145b418','944a8727-6b27-4b53-82da-1d9855b83657',1),('f6a70197-8712-4e1b-98a1-a63cc145b418','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('f6a70197-8712-4e1b-98a1-a63cc145b418','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('f6a70197-8712-4e1b-98a1-a63cc145b418','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('1c6e93b7-0c6e-496e-956f-85165f13b170','2bec12fa-1bdf-4c1e-91e3-bedbf5a42b9e');
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
INSERT INTO `COMPONENT` VALUES ('0c5276ca-a132-408b-b446-dab748a9a79f','Full Scope Disabled','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','anonymous'),('15138ba7-ba79-43b5-8610-b2421349dce1','Allowed Client Scopes','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','authenticated'),('1e5a3262-d90b-41e2-88b7-6e33abeb465f','Trusted Hosts','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','anonymous'),('37d62b9b-4865-4a05-8c7f-5df35c99fb57','Max Clients Limit','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','anonymous'),('59530d2f-d6b2-421e-ba48-506750b770a5','aes-generated','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','aes-generated','org.keycloak.keys.KeyProvider','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL),('5cb0fc6f-dbb2-4532-82ff-3aa16e9d9a2c','hmac-generated-hs512','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','hmac-generated','org.keycloak.keys.KeyProvider','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL),('63b7b3b4-9e7d-4dc1-923f-bdf2472fdaa7','rsa-generated','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','rsa-generated','org.keycloak.keys.KeyProvider','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL),('6a599c27-0eba-4091-99c6-d17b742f52ca','Allowed Protocol Mapper Types','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','anonymous'),('7f9c64cf-3d99-4e81-ab53-191372ef316d',NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL),('a63bcd90-51de-4ae4-b363-5516fbd53063','Allowed Client Scopes','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','anonymous'),('ae5f70b1-91d2-4c59-b6f1-91f72179400a','Consent Required','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','anonymous'),('c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','Allowed Protocol Mapper Types','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','authenticated'),('cc65cf17-7e79-4496-9636-d4adeb415547','rsa-enc-generated','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','rsa-enc-generated','org.keycloak.keys.KeyProvider','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('04ec6d46-8514-4854-9ab8-f3a968ce8df8','7f9c64cf-3d99-4e81-ab53-191372ef316d','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('05921062-15ad-474b-b0ac-0cbfded9c517','37d62b9b-4865-4a05-8c7f-5df35c99fb57','max-clients','200'),('0b9770f3-7727-4ab2-929a-a0e64032a35b','15138ba7-ba79-43b5-8610-b2421349dce1','allow-default-scopes','true'),('11a07846-80b4-4f3c-8d46-20747392a548','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','oidc-address-mapper'),('15486c60-f27e-4fb8-80b4-b46870fcfc55','63b7b3b4-9e7d-4dc1-923f-bdf2472fdaa7','priority','100'),('18bb6099-6dbd-4cd8-84ca-73ed174c567c','59530d2f-d6b2-421e-ba48-506750b770a5','secret','9_-mrrxJkB_z8CW_DXZSSA'),('1c205e27-2b6e-415b-b7fd-7b72d5f71e92','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','oidc-full-name-mapper'),('1eda42e0-56f0-422d-910c-98e5b6082c0e','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('3700e824-fc15-4e4d-a42b-b882c8b45efb','1e5a3262-d90b-41e2-88b7-6e33abeb465f','client-uris-must-match','true'),('39bb7d12-e30c-4a7c-acdd-a542fd844ab4','cc65cf17-7e79-4496-9636-d4adeb415547','priority','100'),('3ab7a885-5037-4865-a815-c660879ab483','5cb0fc6f-dbb2-4532-82ff-3aa16e9d9a2c','secret','3WVe8UTL0aQ99yI7lJTdVwvH4zpBPfSYAVRym2lmSVQYBAn-G-VBuaBtrwyDP-yM7VgzbsJhm1qomn-pNEu0qohXbitZ5lIUTNokrCNfVXqoFimcyv7Tj0FhgHLvNzJ5V71MV7E-Usgm5wCAktdW8W4YY25_BpcH9GlGMuw_xHc'),('3bf50b6e-1c78-48d2-9517-20a523a3df3d','cc65cf17-7e79-4496-9636-d4adeb415547','keyUse','ENC'),('3e4d1bd1-316d-427b-834d-ca30afd0206f','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','saml-role-list-mapper'),('490c3ba1-1c6f-4eaa-9ba9-c9871448a2cc','63b7b3b4-9e7d-4dc1-923f-bdf2472fdaa7','keyUse','SIG'),('4dd4e3f5-ffe9-4ccd-a4ab-2893294f5c57','59530d2f-d6b2-421e-ba48-506750b770a5','priority','100'),('4fb96d1b-7eaf-4575-be77-d358a5d3d392','59530d2f-d6b2-421e-ba48-506750b770a5','kid','920816e8-91dd-47f6-b7f5-ced3a580bd5e'),('5fd69f9c-545a-4003-bc7b-a0319851d1ca','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','saml-user-property-mapper'),('69312249-1116-48fa-bbb7-6980aa2dc31b','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','oidc-address-mapper'),('790c45e7-1593-4911-b8d0-2805d432671a','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('7a5569c0-8c7a-4f2e-b3ce-c4745eded063','5cb0fc6f-dbb2-4532-82ff-3aa16e9d9a2c','priority','100'),('8549ec62-5bf4-417e-9544-d43b94dc978c','cc65cf17-7e79-4496-9636-d4adeb415547','algorithm','RSA-OAEP'),('921f2481-0f3d-4760-8976-d075dfd45a5b','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('92baf637-54be-49a6-a72a-f5168e448a7d','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('9358726e-f345-4ab7-a85d-9191796a1fa7','a63bcd90-51de-4ae4-b363-5516fbd53063','allow-default-scopes','true'),('9a2384dd-ac92-468d-a2b1-cbebf8e93470','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ae5abc03-7650-436a-8f45-b23344f65df7','5cb0fc6f-dbb2-4532-82ff-3aa16e9d9a2c','kid','ceeb9d18-8515-4515-80f3-3a6cba0db021'),('b8ed4b21-5051-4095-845a-80381f2c6582','5cb0fc6f-dbb2-4532-82ff-3aa16e9d9a2c','algorithm','HS512'),('c4265cf7-52e3-4e4e-983e-1b24f7288dbb','63b7b3b4-9e7d-4dc1-923f-bdf2472fdaa7','certificate','MIICmzCCAYMCBgGP8VzT6jANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjA3MDYyMDQzWhcNMzQwNjA3MDYyMjIzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCqOhd9Uw8eAx1UtwRlI520gb5HTSPBtfDv4PWwVtrhXErOEJaEhJv8g+kFLvLRf0mXapqEcU/LC3+Ezcqh85pVG2Slg7Eta1jEP405vGyhOx/qq6V/HxmQzBSk5+ttLWEnuy+888XlbMliPpq1YWEMUjMIVXL6Ki/dLUDDp3GGDC42WX1IbkDWqXd25IAM5sWmBwuUfj6c+MRFT0YrNFXBPDUvRImA/6s5Ca6+kZI7RDLtFUpw7ajNhVFeW1r45w3xv9OtDTRBjtqFULZ7yK9YbRcHB8wyBT8gOvJSN5EtffxyYiB4z99ZF8VbZWY3QmyY8heehwgrZk1W90mZ/ffjAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIXw8/nzt/udoVTqYCtAxPiVV6b+B9bI4oUTwzzTTu47gakuy2vO4I6ebpB6RM2DvhicLNfal6iNO0JPr7ho6CU2WIzll3cCfy7HJPNX/wUCGfP4Vp7T6XEmghRKVafTXsVal1KKw47DBJhYOGPKj9JVyQPieJcTmeVKwWH8PtiAPIYRqJ+QuXMvtq2RTu7OklMhPszaSJAZUJH6Oidju6aDeRDLAmjPXIO5EF7TGL5ZzUEDQxOffuwAqMjKEFtAnueuhlqimO7+ZvBmpc2A37szKvxGgGoYTIwU8RlEutDMLj2ubpu5vJUwV/wPJPU0RYUj6SmEBUZr7VTeKwSjgT8='),('c5b2d061-3f1f-4c6d-b37f-c8c27d0f2bb4','1e5a3262-d90b-41e2-88b7-6e33abeb465f','host-sending-registration-request-must-match','true'),('cdf5a85c-1274-4995-93e6-19b67d7ecc91','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('d93e73fd-08fe-4961-8b8f-23e8e63aed84','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','oidc-full-name-mapper'),('d9742b2d-4490-493b-ae89-c701460ea685','cc65cf17-7e79-4496-9636-d4adeb415547','certificate','MIICmzCCAYMCBgGP8VzUiDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjA3MDYyMDQzWhcNMzQwNjA3MDYyMjIzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC8ZklTVoxIJ3OKDmTLUFcoMXjfjjC8kvYB8dAqegKfSxs13jxmonbvNK1Zszeq847ec98OCwETYblF61B5Vc6mAsTuOOeAiJ0RvbvjSIdn5tgRDv5/RKLGDuR4LHHOJjKBgIkJ/Mrp/OxnmHhK5328SNZ1zCALpLDyg988cbL+dJV65k14xGrW42Z2sr7rcRg17Sl/QPjNAWjyM7bjg0CREZd4Vw2hRHH7yXmGSy4F+KVDxdd8iuXbSw0TepBmj1iq3oZgpDIQSYubWliZVUnhJuTLWZiyr/oWEs5yPtZgfoc/AfVZqpDSti6cV12TK/Wf7jhTXA6i+Vt8/25IsICdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAFskxZGaROB+L+F852gg7QZI5ZHVqyhjFggbhe5Kphyz6ujXwc45Yog5sEWlR6Bq+BCdWaDrVFHFMVkWFzeeubfYAXQKxzG8MqnTzxg1t01xEFl8eOeeAcylscfxQrDdVLxHEI727/P6HmeEPrhG5mHneFE7VLfaUbjtKnyM6wASPwwvmhgLZnkz2fgQbW2DRq+dCsjFZ7RFhI1sZv0xAFJXzkAEV/fnMMpWZoSHNSTJGJWFMM5WOm03sbx1uhW3TRXcdPru55zybFrdVaKIiRPceoGnJYZi5j5EmKmHjW21qZ7QDvaBsrPx64eBJ/KpmhFC9rFrXmSLO31GSzPiLQk='),('db27cf60-f0a2-40b7-b5fb-3f3b65cd7e71','c2f03256-5a5e-4e4e-a77d-b6ef68bacca3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dc238b62-6c97-463c-b4ba-3aa196ce6c62','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','saml-user-property-mapper'),('f016c4dd-3233-44ff-bac1-12f87c23dd4b','63b7b3b4-9e7d-4dc1-923f-bdf2472fdaa7','privateKey','MIIEpAIBAAKCAQEAqjoXfVMPHgMdVLcEZSOdtIG+R00jwbXw7+D1sFba4VxKzhCWhISb/IPpBS7y0X9Jl2qahHFPywt/hM3KofOaVRtkpYOxLWtYxD+NObxsoTsf6qulfx8ZkMwUpOfrbS1hJ7svvPPF5WzJYj6atWFhDFIzCFVy+iov3S1Aw6dxhgwuNll9SG5A1ql3duSADObFpgcLlH4+nPjERU9GKzRVwTw1L0SJgP+rOQmuvpGSO0Qy7RVKcO2ozYVRXlta+OcN8b/TrQ00QY7ahVC2e8ivWG0XBwfMMgU/IDryUjeRLX38cmIgeM/fWRfFW2VmN0JsmPIXnocIK2ZNVvdJmf334wIDAQABAoIBAFBLQIMz54CPlYk9HsyaJSxcuqUlRMV9jZ2Irjs0bOA6SWqztlvhtTZB/mscfxrEgLD0btgkHrA2xzqcW4VSw6x7VFkiKjOzW9aN546hS1gt7FskBddVkxiSuvYiExGXgylbiSQGlIUocEFwKEeAHGfUag/3RlmsBpG8Y70mQU0psrv1TEeVg5OkWJIViUl1+IiDbDyarig8q+VvhYnCNKo2knMaUxbCRWtFvjeRDsVfjSwh3O9sQiZQ9WK9jrWvW6zLI0k14+9aj4OyS+wZZZqyhEtjOycG18R7ggdE0EjLeaWzasF/Yu863w4UL/6Qae48Gq2vaQUG0tAcQ91SbYkCgYEA0w0DakEZ2N4XajbHc3tV6Pz6bs93uqYfcddJO/nurYtdPY/b3twZk7hPOM5j3lUHhDuJGzMUN4dSMPoihV17zcm0G5gk6WUCuidbGkdtLRpUU1/yyxNDpPQFmlhEja2RW5cqdJyWoKjmemS58n2srdcCDAeD8rSHN/c+OzCorH0CgYEAzntDTpJ7cWCTeXEwBtrDHwoOjWH7UjX6jcOy0jmfLKqcTjkWP9sja/N7J4L8u4oYuG9a1e8CfxdJBDiSXCBqiRJzHmkvTazVrH4s3b9uWedOwimuonqv4+YBZioByo1qpCz4UMh88wIyFeF78QxJdkH1RYC30UfeNxzNDkyHQ98CgYEAqPyjfmGQC5iQ0Qf5nZrkyAA/mZhfOsEnLmT+C5rspGKRjuhwWbqMdD5AmLCRQIV+1j9BYdj9WBTvF65BE94tcjIOF4Y0D/lEPL+kb58/aLzLRlLuOfI72IlXLyV8BqEyYU7hvKtg5FU47klWpjZAnJUq22ztFtm753D9kDE+7ZUCgYBC/DAYtGLBpFATjMnE34F/d1bDPS84O3S+OuevVawy5GJy6ggyzRfPtJyWc+MjwChG5TE1yCUqL9arPOMWahnFwCuCiSMkctaa8BAEHE9jcSvWx4j1AxI+v+ZiS2xrVrdq7X/dTT1j5Kl0+cKor5DBgaJdWuXHSiZoALrxUZhsRwKBgQCrXNqY4jwRr6i0hpHK96oxD4E1PEgElHn8b5zvddNxzO1Gg5pCKldmx9ibUjyh93k46zholsC36PinaAEEh7huXhmw8Ve2ev/7BhoD3U5vgQNSs8Kw5Q+CWJzKnmTB9rhY8sUPjdUq4BZX2ZcVFz5YdqncmBAqOBZKyo4BXV2yRg=='),('f055def1-4d30-47cc-b300-e0fa0c0f7dca','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('f59b62c6-345e-4a5e-b545-ddb06a7bb8d3','cc65cf17-7e79-4496-9636-d4adeb415547','privateKey','MIIEowIBAAKCAQEAvGZJU1aMSCdzig5ky1BXKDF4344wvJL2AfHQKnoCn0sbNd48ZqJ27zStWbM3qvOO3nPfDgsBE2G5RetQeVXOpgLE7jjngIidEb2740iHZ+bYEQ7+f0Sixg7keCxxziYygYCJCfzK6fzsZ5h4Sud9vEjWdcwgC6Sw8oPfPHGy/nSVeuZNeMRq1uNmdrK+63EYNe0pf0D4zQFo8jO244NAkRGXeFcNoURx+8l5hksuBfilQ8XXfIrl20sNE3qQZo9Yqt6GYKQyEEmLm1pYmVVJ4Sbky1mYsq/6FhLOcj7WYH6HPwH1WaqQ0rYunFddkyv1n+44U1wOovlbfP9uSLCAnQIDAQABAoIBAAqp6X2XmQIehYorbWYaqoxCXJqexEBwOw96HfPBizNz/1rJtPaEPKImg6dfnweEmLIbseTsF4f+0ItWGex8QGGiJ35qZyQd13IhIKjpOozVgqZYiGwwuNvoDOOGdHycKeCto1QW5G9hGwp0FV78AmBtaQIq5ydxj3hyoWic8Oo5GzqB+ZMakvnd1mVQHvyasOSZcgFX/LJaWPoSA3or/vGy6H2QFA7tfBEH3Or7bfGSh8TAU5yQ3v2GP235GLrby+RczrwvONwactA/l+5/5MFybftuQo36c0XJU/O2ZvGwJh7v9ZjpYyCPaX0F16uXUgiBcABo932W1dLfaXA4AfECgYEA42jMQTE8Q+2uQ5Ie01W44RFrzr0TzFEScV+KKo9Jps7+VIFhrOH//d0P+axZiVv/GZEt+vb7PqLUMBOv12B576JAtGLoePND2eWrggnvZPzwDyLLdEFKaZBfywcfB8gqZ6+AArZ0QRmTcfoMjkqdryi9/iLJF6H/l+NFZNz24HUCgYEA1BXzz0RzVuDetxX0abBPuz77iHWBMW30mnJmXJgrTqAHK+HWCcHRYGGrzdh4f26OqDbzn1DEpomj9z42IDv67Ui/1iHmBj8O8pFARLs7kne27P5+M5vxOj2tpgIHb1otSGAOa1kypq6S+0RPP2Xi8cPuhwK3wU8BdwRv//3cmokCgYEAhtsOxVo9MsswHEH6pbif+lgqZl8Z7n/lP/Y4KSTvuEvn5pUTJ0KeXB1L6/OY5Sv5C2BctAbi1zIYQqpqDH7Z0JGXbWF6Gr+n7P+VxXe+z1Rvx4oKvNY7Gn7TT8LZU/QPsY0RjIpGRpS0K1LtPzRgbg7rHFnkhm868weDj1y5ykECgYAjb3+LE/7Jd0z+/jYWKpVHzeAtDqUFYz/JRm//7JTf0DEijds7Shz3o5oXDKIleI1xYa0W42HYCYtR1h0pCZyFZPBYkNVkGckfklFQqo/riwEPW/4uFVIazw9ie1hOrJyASTxfh0nFO8nnHaS4DQf8KSaDfFrDe7Xc8urbtMjVMQKBgAsCAXwIvrBWM1+HOqO7v2OhthaA982CXcXrWanOZhj5w7Asse3zOFtwMh575EAEILASbSSKVw0y/CqLLfDJ+XbfNFMke2Urg8fKzWaK/gld08+YymLBDE37Woa1Q+E28zOJd+o3oiccNUnHpjvmw6OfuI00YKXllYLHo9ghy1ZI'),('fdc24089-1a48-4888-94ef-ba85d6798f8f','6a599c27-0eba-4091-99c6-d17b742f52ca','allowed-protocol-mapper-types','saml-role-list-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('22421da4-4407-459e-9350-0b7ca0025494','0bffe256-c48b-419c-8969-71b5d28f71a2'),('3995a87d-3f60-42cb-9e94-933447a3a187','5b061aea-0f8b-4d90-a973-66922618500c'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','00d7e779-9ad6-47ce-805b-8754efcce8db'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','06cf4d5d-3afd-4c94-a2f7-9295b857dbd7'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','1c1ce43d-1fe5-4226-a17f-97619efa024f'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','4529e076-f6c9-4c25-ae5b-fb72e892f609'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','486ce6e1-a4de-4351-9ef4-2d88ebbdaa57'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','5e784866-a0bb-4e58-ac0c-7aa458fc290a'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','61e33853-033d-4c53-9582-e521a01f6187'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','6210d989-98a5-4e63-af0e-22b0d20c54db'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','6f87e688-e525-499e-870e-a345a54c1f68'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','7fe5deb4-16f6-415d-85e5-bb36b892cb61'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','85b8733c-46b0-4052-9d01-01695dffd34b'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','9994d3cf-07f9-492b-b807-44404e3e47fa'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','9d68b96a-24b8-4081-b472-c88cca291925'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','b2714d10-127d-46b6-9789-7592f024dd16'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','b7d880a0-f70b-4096-b5dc-7367b7871cda'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','c8855faf-f5c8-42f4-a9ac-7ac76ded4089'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','d14bb648-41a1-4b6c-9af4-8797a7fbbbf5'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','df300ed6-777c-429a-ac62-c011c30607a1'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','f94eac39-a706-4d54-8229-10aac16fad85'),('5e784866-a0bb-4e58-ac0c-7aa458fc290a','85b8733c-46b0-4052-9d01-01695dffd34b'),('5e784866-a0bb-4e58-ac0c-7aa458fc290a','9d68b96a-24b8-4081-b472-c88cca291925'),('7134554a-bc7c-49c7-a930-313558a0b102','1a72caf6-3435-4b32-952c-ddd4d309db39'),('7134554a-bc7c-49c7-a930-313558a0b102','22421da4-4407-459e-9350-0b7ca0025494'),('7134554a-bc7c-49c7-a930-313558a0b102','2bec12fa-1bdf-4c1e-91e3-bedbf5a42b9e'),('7134554a-bc7c-49c7-a930-313558a0b102','2bf257af-349f-43cd-a486-128fc47ac1ea'),('b7d880a0-f70b-4096-b5dc-7367b7871cda','486ce6e1-a4de-4351-9ef4-2d88ebbdaa57');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('6e551e5b-d83c-4db5-b383-1cc595ba9872',NULL,'password','51edb423-5a84-43f3-8e21-3c3fdd1a71c7',1717741345301,NULL,'{\"value\":\"5oS6wHpjW6lZ7PS25rHXFGXqwc31BBsIKPL3ePl/3a1LTm44ZD4dTT2d0tRLE4XK0DCLASa00fHSVRlMlcuh4Q==\",\"salt\":\"CVjSQwO3bRYQIZC95+2UvQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-07 15:22:11',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-07 15:22:11',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-07 15:22:11',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-07 15:22:11',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-07 15:22:12',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-07 15:22:12',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-07 15:22:12',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-07 15:22:12',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-07 15:22:12',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-07 15:22:13',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-07 15:22:14',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-07 15:22:14',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-07 15:22:14',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-07 15:22:14',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-07 15:22:14',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-07 15:22:14',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-07 15:22:14',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-07 15:22:14',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-07 15:22:14',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-07 15:22:14',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-07 15:22:14',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-07 15:22:14',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-07 15:22:15',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-07 15:22:15',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-07 15:22:15',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-07 15:22:15',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-07 15:22:15',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-07 15:22:15',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-07 15:22:16',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-07 15:22:16',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-07 15:22:16',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-07 15:22:16',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-07 15:22:16',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-07 15:22:16',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-07 15:22:16',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-07 15:22:16',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-07 15:22:16',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'7741329207'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-07 15:22:16',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-07 15:22:16',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-07 15:22:16',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-07 15:22:16',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-07 15:22:16',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-07 15:22:17',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-07 15:22:17',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-07 15:22:17',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-07 15:22:17',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-07 15:22:17',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-07 15:22:17',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-07 15:22:17',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-07 15:22:18',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-07 15:22:18',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-07 15:22:18',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-07 15:22:18',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-07 15:22:18',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-07 15:22:18',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-07 15:22:18',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-07 15:22:18',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-07 15:22:19',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-07 15:22:19',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-07 15:22:19',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-07 15:22:19',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-07 15:22:19',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-07 15:22:19',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-07 15:22:19',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-07 15:22:19',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-07 15:22:19',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-07 15:22:19',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-07 15:22:19',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-07 15:22:19',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-07 15:22:19',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'7741329207'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-07 15:22:19',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'7741329207'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-07 15:22:19',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'7741329207'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-07 15:22:19',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'7741329207'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-07 15:22:19',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'7741329207'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-07 15:22:20',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-07 15:22:20',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-07 15:22:20',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-07 15:22:20',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-07 15:22:20',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-07 15:22:20',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-07 15:22:20',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-07 15:22:20',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-07 15:22:20',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-07 15:22:20',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'7741329207'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-07 15:22:20',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-07 15:22:20',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'7741329207'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-07 15:22:20',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-07 15:22:20',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'7741329207'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'7741329207'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'7741329207'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-07 15:22:20',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'7741329207'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-07 15:22:20',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-07 15:22:20',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-07 15:22:20',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-07 15:22:20',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-07 15:22:20',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-07 15:22:20',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-07 15:22:20',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'7741329207'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-07 15:22:20',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-06-07 15:22:20',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-07 15:22:20',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'7741329207'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-07 15:22:20',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-07 15:22:20',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-07 15:22:20',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-07 15:22:20',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'7741329207'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-07 15:22:20',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-07 15:22:20',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-07 15:22:20',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-07 15:22:20',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-07 15:22:20',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-07 15:22:20',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-07 15:22:20',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-07 15:22:20',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'7741329207');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1c6e93b7-0c6e-496e-956f-85165f13b170',0),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9',1),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','386bcf49-cef9-4658-ada0-db9e0526000f',1),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','38b6efc4-0686-4645-867a-c84602e75114',0),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','89f59fd3-856a-4dd8-8399-723c6711a513',0),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','944a8727-6b27-4b53-82da-1d9855b83657',1),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','a3d2df99-6b84-408b-8dcf-138fca71482b',1),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','bd0a3327-0b51-47eb-8769-a1efe6cb27df',0),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','c9041516-4ac5-4ff9-8646-d9b53d2b211b',1),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','d1745dc3-5351-429e-aaa9-a9f63c17ba8b',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('00d7e779-9ad6-47ce-805b-8754efcce8db','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_query-realms}','query-realms','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('058874fa-2545-451e-889e-040dba5532f6','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_delete-account}','delete-account','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('06cf4d5d-3afd-4c94-a2f7-9295b857dbd7','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_view-events}','view-events','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('0bffe256-c48b-419c-8969-71b5d28f71a2','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_manage-account-links}','manage-account-links','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('1a72caf6-3435-4b32-952c-ddd4d309db39','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_view-profile}','view-profile','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('1c1ce43d-1fe5-4226-a17f-97619efa024f','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_manage-realm}','manage-realm','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('22421da4-4407-459e-9350-0b7ca0025494','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_manage-account}','manage-account','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('2bec12fa-1bdf-4c1e-91e3-bedbf5a42b9e','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,'${role_offline-access}','offline_access','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL,NULL),('2bf257af-349f-43cd-a486-128fc47ac1ea','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,'${role_uma_authorization}','uma_authorization','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL,NULL),('3995a87d-3f60-42cb-9e94-933447a3a187','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_manage-consent}','manage-consent','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('4529e076-f6c9-4c25-ae5b-fb72e892f609','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_manage-users}','manage-users','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('486ce6e1-a4de-4351-9ef4-2d88ebbdaa57','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_query-clients}','query-clients','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,'${role_admin}','admin','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL,NULL),('5b061aea-0f8b-4d90-a973-66922618500c','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_view-consent}','view-consent','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('5b3ac048-05cc-43d1-bc4b-6847aec84d6f','6a743898-b923-4d17-a099-72398d1ffa9f',1,'${role_read-token}','read-token','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','6a743898-b923-4d17-a099-72398d1ffa9f',NULL),('5e784866-a0bb-4e58-ac0c-7aa458fc290a','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_view-users}','view-users','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('61e33853-033d-4c53-9582-e521a01f6187','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_view-realm}','view-realm','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('6210d989-98a5-4e63-af0e-22b0d20c54db','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_create-client}','create-client','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('6f87e688-e525-499e-870e-a345a54c1f68','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_manage-authorization}','manage-authorization','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('7134554a-bc7c-49c7-a930-313558a0b102','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,'${role_default-roles}','default-roles-master','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL,NULL),('7fe5deb4-16f6-415d-85e5-bb36b892cb61','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_manage-identity-providers}','manage-identity-providers','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('85b8733c-46b0-4052-9d01-01695dffd34b','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_query-users}','query-users','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('9994d3cf-07f9-492b-b807-44404e3e47fa','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_manage-clients}','manage-clients','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('9d68b96a-24b8-4081-b472-c88cca291925','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_query-groups}','query-groups','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('b2714d10-127d-46b6-9789-7592f024dd16','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,'${role_create-realm}','create-realm','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',NULL,NULL),('b7d880a0-f70b-4096-b5dc-7367b7871cda','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_view-clients}','view-clients','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('c8855faf-f5c8-42f4-a9ac-7ac76ded4089','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_view-identity-providers}','view-identity-providers','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('d14bb648-41a1-4b6c-9af4-8797a7fbbbf5','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_manage-events}','manage-events','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('df300ed6-777c-429a-ac62-c011c30607a1','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_impersonation}','impersonation','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('f3817d74-8888-4600-ae62-684216da4e3e','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_view-applications}','view-applications','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL),('f94eac39-a706-4d54-8229-10aac16fad85','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1,'${role_view-authorization}','view-authorization','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',NULL),('fab050da-e6ac-4125-80f1-d5171cd9c5f6','11aa5ef0-630b-49d7-8b17-0f0da629e445',1,'${role_view-groups}','view-groups','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','11aa5ef0-630b-49d7-8b17-0f0da629e445',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('2dd2t','24.0.3',1717741341);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('009c2258-4b1e-44ad-ba80-4bcf015940e8','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('2e18f558-4339-4a66-8019-328f4dd766ba','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'38b6efc4-0686-4645-867a-c84602e75114'),('30d14b35-3ab7-4383-ae81-bb1998ceab84','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'944a8727-6b27-4b53-82da-1d9855b83657'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','697891f5-228e-459b-88a7-7a6a0dfae003',NULL),('44dac637-0191-4aa3-ae5c-5b9e7c487c5d','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c9041516-4ac5-4ff9-8646-d9b53d2b211b'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('499faa79-36a9-4689-a8ee-06e0da36da34','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','address','openid-connect','oidc-address-mapper',NULL,'89f59fd3-856a-4dd8-8399-723c6711a513'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','locale','openid-connect','oidc-usermodel-attribute-mapper','79b4f5b6-b01f-4672-8186-080ea5a8fe10',NULL),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('6b2bca6b-1bea-4805-9207-b61f812313e3','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'38b6efc4-0686-4645-867a-c84602e75114'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','697891f5-228e-459b-88a7-7a6a0dfae003',NULL),('85a1d176-4160-4808-8d1e-6477fbd2a12d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'944a8727-6b27-4b53-82da-1d9855b83657'),('8ef28859-d3a2-41c3-a215-97002a58580f','full name','openid-connect','oidc-full-name-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'944a8727-6b27-4b53-82da-1d9855b83657'),('963148fb-dcf2-4394-8f22-4a900b4b768b','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9'),('aaa490ec-b805-4331-9385-f940d5f50f90','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bd0a3327-0b51-47eb-8769-a1efe6cb27df'),('b9ca73fd-007f-4c66-89e5-35216906e75e','acr loa level','openid-connect','oidc-acr-mapper',NULL,'386bcf49-cef9-4658-ada0-db9e0526000f'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'21f9dbdf-b8e6-4d7f-97ef-ee91b83ee2f9'),('e276c24c-4304-46b4-bbe4-f99bd86ed076','role list','saml','saml-role-list-mapper',NULL,'d1745dc3-5351-429e-aaa9-a9f63c17ba8b'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b'),('e8f4426c-a0af-4644-8d35-3976ec10560c','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bd0a3327-0b51-47eb-8769-a1efe6cb27df'),('f3d01216-97b2-4589-87e4-5665745133c5','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','697891f5-228e-459b-88a7-7a6a0dfae003',NULL),('f969b7ac-d2cb-4633-abd9-d360108cb87e','audience resolve','openid-connect','oidc-audience-resolve-mapper','94f335c7-1dc4-4b8f-bd31-a29b0888225d',NULL),('fe4aa127-973c-422d-8077-854104263a13','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a3d2df99-6b84-408b-8dcf-138fca71482b');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('009c2258-4b1e-44ad-ba80-4bcf015940e8','true','access.token.claim'),('009c2258-4b1e-44ad-ba80-4bcf015940e8','gender','claim.name'),('009c2258-4b1e-44ad-ba80-4bcf015940e8','true','id.token.claim'),('009c2258-4b1e-44ad-ba80-4bcf015940e8','true','introspection.token.claim'),('009c2258-4b1e-44ad-ba80-4bcf015940e8','String','jsonType.label'),('009c2258-4b1e-44ad-ba80-4bcf015940e8','gender','user.attribute'),('009c2258-4b1e-44ad-ba80-4bcf015940e8','true','userinfo.token.claim'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','true','access.token.claim'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','preferred_username','claim.name'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','true','id.token.claim'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','true','introspection.token.claim'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','String','jsonType.label'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','username','user.attribute'),('0203947a-90a1-4f23-9e8a-e9c84abf12eb','true','userinfo.token.claim'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','true','access.token.claim'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','picture','claim.name'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','true','id.token.claim'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','true','introspection.token.claim'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','String','jsonType.label'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','picture','user.attribute'),('0f8b68e5-f4c2-4fca-a525-9219e044dd53','true','userinfo.token.claim'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','true','access.token.claim'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','website','claim.name'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','true','id.token.claim'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','true','introspection.token.claim'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','String','jsonType.label'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','website','user.attribute'),('28d4ea66-8d10-4b97-a4ee-e2277033e413','true','userinfo.token.claim'),('2e18f558-4339-4a66-8019-328f4dd766ba','true','access.token.claim'),('2e18f558-4339-4a66-8019-328f4dd766ba','upn','claim.name'),('2e18f558-4339-4a66-8019-328f4dd766ba','true','id.token.claim'),('2e18f558-4339-4a66-8019-328f4dd766ba','true','introspection.token.claim'),('2e18f558-4339-4a66-8019-328f4dd766ba','String','jsonType.label'),('2e18f558-4339-4a66-8019-328f4dd766ba','username','user.attribute'),('2e18f558-4339-4a66-8019-328f4dd766ba','true','userinfo.token.claim'),('30d14b35-3ab7-4383-ae81-bb1998ceab84','true','access.token.claim'),('30d14b35-3ab7-4383-ae81-bb1998ceab84','true','introspection.token.claim'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','true','access.token.claim'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','clientHost','claim.name'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','true','id.token.claim'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','String','jsonType.label'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','clientHost','user.session.note'),('31fc9413-0317-4cba-b1ae-5d3a9502b573','true','userinfo.token.claim'),('44dac637-0191-4aa3-ae5c-5b9e7c487c5d','true','access.token.claim'),('44dac637-0191-4aa3-ae5c-5b9e7c487c5d','true','introspection.token.claim'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','true','access.token.claim'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','locale','claim.name'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','true','id.token.claim'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','true','introspection.token.claim'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','String','jsonType.label'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','locale','user.attribute'),('45b20f4b-f8d0-4c15-88a1-75e811f031a9','true','userinfo.token.claim'),('499faa79-36a9-4689-a8ee-06e0da36da34','true','access.token.claim'),('499faa79-36a9-4689-a8ee-06e0da36da34','updated_at','claim.name'),('499faa79-36a9-4689-a8ee-06e0da36da34','true','id.token.claim'),('499faa79-36a9-4689-a8ee-06e0da36da34','true','introspection.token.claim'),('499faa79-36a9-4689-a8ee-06e0da36da34','long','jsonType.label'),('499faa79-36a9-4689-a8ee-06e0da36da34','updatedAt','user.attribute'),('499faa79-36a9-4689-a8ee-06e0da36da34','true','userinfo.token.claim'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','true','access.token.claim'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','true','id.token.claim'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','true','introspection.token.claim'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','country','user.attribute.country'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','formatted','user.attribute.formatted'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','locality','user.attribute.locality'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','postal_code','user.attribute.postal_code'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','region','user.attribute.region'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','street','user.attribute.street'),('4ae52fcc-9e60-4e1e-872d-b89ca8640c84','true','userinfo.token.claim'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','true','access.token.claim'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','locale','claim.name'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','true','id.token.claim'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','true','introspection.token.claim'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','String','jsonType.label'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','locale','user.attribute'),('4dda54a2-af6c-4f0a-9040-43f369528fa6','true','userinfo.token.claim'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','true','access.token.claim'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','given_name','claim.name'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','true','id.token.claim'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','true','introspection.token.claim'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','String','jsonType.label'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','firstName','user.attribute'),('580ffb46-4d4d-4f6c-ac54-aa16d3b27f6a','true','userinfo.token.claim'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','true','access.token.claim'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','birthdate','claim.name'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','true','id.token.claim'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','true','introspection.token.claim'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','String','jsonType.label'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','birthdate','user.attribute'),('613e981a-9990-429b-a0e1-9c97fcdfdcba','true','userinfo.token.claim'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','true','access.token.claim'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','profile','claim.name'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','true','id.token.claim'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','true','introspection.token.claim'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','String','jsonType.label'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','profile','user.attribute'),('69d2e9a7-95e8-45ec-bc75-de9f93e65957','true','userinfo.token.claim'),('6b2bca6b-1bea-4805-9207-b61f812313e3','true','access.token.claim'),('6b2bca6b-1bea-4805-9207-b61f812313e3','groups','claim.name'),('6b2bca6b-1bea-4805-9207-b61f812313e3','true','id.token.claim'),('6b2bca6b-1bea-4805-9207-b61f812313e3','true','introspection.token.claim'),('6b2bca6b-1bea-4805-9207-b61f812313e3','String','jsonType.label'),('6b2bca6b-1bea-4805-9207-b61f812313e3','true','multivalued'),('6b2bca6b-1bea-4805-9207-b61f812313e3','foo','user.attribute'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','true','access.token.claim'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','zoneinfo','claim.name'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','true','id.token.claim'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','true','introspection.token.claim'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','String','jsonType.label'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','zoneinfo','user.attribute'),('74cf1524-d7c0-4129-81dc-47ae67c77d78','true','userinfo.token.claim'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','true','access.token.claim'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','clientAddress','claim.name'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','true','id.token.claim'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','String','jsonType.label'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','clientAddress','user.session.note'),('7d3f85d1-e688-4fd2-aac0-a25fb92befdd','true','userinfo.token.claim'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','true','access.token.claim'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','nickname','claim.name'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','true','id.token.claim'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','true','introspection.token.claim'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','String','jsonType.label'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','nickname','user.attribute'),('85a1d176-4160-4808-8d1e-6477fbd2a12d','true','userinfo.token.claim'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','true','access.token.claim'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','realm_access.roles','claim.name'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','true','introspection.token.claim'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','String','jsonType.label'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','true','multivalued'),('8ed8ef4b-b9a8-46f4-b56a-0cf018c48c99','foo','user.attribute'),('8ef28859-d3a2-41c3-a215-97002a58580f','true','access.token.claim'),('8ef28859-d3a2-41c3-a215-97002a58580f','true','id.token.claim'),('8ef28859-d3a2-41c3-a215-97002a58580f','true','introspection.token.claim'),('8ef28859-d3a2-41c3-a215-97002a58580f','true','userinfo.token.claim'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','true','access.token.claim'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','resource_access.${client_id}.roles','claim.name'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','true','introspection.token.claim'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','String','jsonType.label'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','true','multivalued'),('8f653fb4-7314-49ab-9b9e-56b1d0372529','foo','user.attribute'),('963148fb-dcf2-4394-8f22-4a900b4b768b','true','access.token.claim'),('963148fb-dcf2-4394-8f22-4a900b4b768b','email','claim.name'),('963148fb-dcf2-4394-8f22-4a900b4b768b','true','id.token.claim'),('963148fb-dcf2-4394-8f22-4a900b4b768b','true','introspection.token.claim'),('963148fb-dcf2-4394-8f22-4a900b4b768b','String','jsonType.label'),('963148fb-dcf2-4394-8f22-4a900b4b768b','email','user.attribute'),('963148fb-dcf2-4394-8f22-4a900b4b768b','true','userinfo.token.claim'),('aaa490ec-b805-4331-9385-f940d5f50f90','true','access.token.claim'),('aaa490ec-b805-4331-9385-f940d5f50f90','phone_number_verified','claim.name'),('aaa490ec-b805-4331-9385-f940d5f50f90','true','id.token.claim'),('aaa490ec-b805-4331-9385-f940d5f50f90','true','introspection.token.claim'),('aaa490ec-b805-4331-9385-f940d5f50f90','boolean','jsonType.label'),('aaa490ec-b805-4331-9385-f940d5f50f90','phoneNumberVerified','user.attribute'),('aaa490ec-b805-4331-9385-f940d5f50f90','true','userinfo.token.claim'),('b9ca73fd-007f-4c66-89e5-35216906e75e','true','access.token.claim'),('b9ca73fd-007f-4c66-89e5-35216906e75e','true','id.token.claim'),('b9ca73fd-007f-4c66-89e5-35216906e75e','true','introspection.token.claim'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','true','access.token.claim'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','email_verified','claim.name'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','true','id.token.claim'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','true','introspection.token.claim'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','boolean','jsonType.label'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','emailVerified','user.attribute'),('c4c6e85a-8c3c-41e0-93bb-7779112524dc','true','userinfo.token.claim'),('e276c24c-4304-46b4-bbe4-f99bd86ed076','Role','attribute.name'),('e276c24c-4304-46b4-bbe4-f99bd86ed076','Basic','attribute.nameformat'),('e276c24c-4304-46b4-bbe4-f99bd86ed076','false','single'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','true','access.token.claim'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','middle_name','claim.name'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','true','id.token.claim'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','true','introspection.token.claim'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','String','jsonType.label'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','middleName','user.attribute'),('e28ebb4e-dc7b-4650-ab6d-1863ebc569ec','true','userinfo.token.claim'),('e8f4426c-a0af-4644-8d35-3976ec10560c','true','access.token.claim'),('e8f4426c-a0af-4644-8d35-3976ec10560c','phone_number','claim.name'),('e8f4426c-a0af-4644-8d35-3976ec10560c','true','id.token.claim'),('e8f4426c-a0af-4644-8d35-3976ec10560c','true','introspection.token.claim'),('e8f4426c-a0af-4644-8d35-3976ec10560c','String','jsonType.label'),('e8f4426c-a0af-4644-8d35-3976ec10560c','phoneNumber','user.attribute'),('e8f4426c-a0af-4644-8d35-3976ec10560c','true','userinfo.token.claim'),('f3d01216-97b2-4589-87e4-5665745133c5','true','access.token.claim'),('f3d01216-97b2-4589-87e4-5665745133c5','clientId','claim.name'),('f3d01216-97b2-4589-87e4-5665745133c5','true','id.token.claim'),('f3d01216-97b2-4589-87e4-5665745133c5','String','jsonType.label'),('f3d01216-97b2-4589-87e4-5665745133c5','clientId','user.session.note'),('f3d01216-97b2-4589-87e4-5665745133c5','true','userinfo.token.claim'),('fe4aa127-973c-422d-8077-854104263a13','true','access.token.claim'),('fe4aa127-973c-422d-8077-854104263a13','family_name','claim.name'),('fe4aa127-973c-422d-8077-854104263a13','true','id.token.claim'),('fe4aa127-973c-422d-8077-854104263a13','true','introspection.token.claim'),('fe4aa127-973c-422d-8077-854104263a13','String','jsonType.label'),('fe4aa127-973c-422d-8077-854104263a13','lastName','user.attribute'),('fe4aa127-973c-422d-8077-854104263a13','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('f00cbb37-dfa0-4b77-88e6-8acdf02606cc',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'21edbecd-8bbd-4ff8-bdc4-d7e24eb3652b',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','8325c67a-7a80-4310-a1a7-48245c0eabec','352a591c-4046-46aa-9492-fbb0cf721f05','8e9360e2-cba2-4af0-8ff8-5d7ebcf6f89f','1c2242c7-7662-4688-a83b-75268ae2550a','d9783834-ca52-4527-9b66-f3f41d9c6dcf',31536000,0,900,1,0,'18085a10-314a-4c4b-a922-56e0f95fd58d',0,0,0,0,'7134554a-bc7c-49c7-a930-313558a0b102');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','false'),('cibaAuthRequestedUserHint','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','login_hint'),('cibaBackchannelTokenDeliveryMode','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','poll'),('cibaExpiresIn','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','120'),('cibaInterval','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','5'),('defaultSignatureAlgorithm','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','RS256'),('displayName','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','Keycloak'),('displayNameHtml','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','30'),('firstBrokerLoginFlowId','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','e5dfd7eb-1ad3-4a57-9796-024deb7aec86'),('maxDeltaTimeSeconds','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','43200'),('maxFailureWaitSeconds','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','900'),('maxTemporaryLockouts','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','0'),('minimumQuickLoginWaitSeconds','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','60'),('oauth2DeviceCodeLifespan','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','600'),('oauth2DevicePollingInterval','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','5'),('offlineSessionMaxLifespan','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','31536000'),('offlineSessionMaxLifespanEnabled','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','true'),('parRequestUriLifespan','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','60'),('permanentLockout','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','false'),('quickLoginCheckMilliSeconds','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1000'),('realmReusableOtpCode','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','false'),('waitIncrementSeconds','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','60'),('_browser_header.contentSecurityPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',''),('_browser_header.referrerPolicy','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','no-referrer'),('_browser_header.strictTransportSecurity','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','nosniff'),('_browser_header.xFrameOptions','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','SAMEORIGIN'),('_browser_header.xRobotsTag','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','none'),('_browser_header.xXSSProtection','f00cbb37-dfa0-4b77-88e6-8acdf02606cc','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','en'),('f00cbb37-dfa0-4b77-88e6-8acdf02606cc','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('11aa5ef0-630b-49d7-8b17-0f0da629e445','/realms/master/account/*'),('79b4f5b6-b01f-4672-8186-080ea5a8fe10','/admin/master/console/*'),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','/realms/master/account/*'),('f6a70197-8712-4e1b-98a1-a63cc145b418','/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('320e36d2-3449-43c1-bbe7-db27400bc798','UPDATE_PROFILE','Update Profile','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'UPDATE_PROFILE',40),('405f7e7a-97e9-4c21-8960-9d61a191bb2f','VERIFY_EMAIL','Verify Email','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'VERIFY_EMAIL',50),('44ff2951-2f60-486a-9597-66985bafdd10','update_user_locale','Update User Locale','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'update_user_locale',1000),('515416e3-d122-4afc-91fd-db7f8243ede4','VERIFY_PROFILE','Verify Profile','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'VERIFY_PROFILE',90),('51561ae8-153b-4913-ad45-2d46ceadae78','delete_credential','Delete Credential','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'delete_credential',100),('7d6c669b-9b19-42fb-9f7e-cd7ed3469540','UPDATE_PASSWORD','Update Password','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'UPDATE_PASSWORD',30),('8b1103dd-9ea6-4d1e-9434-af5098d59560','webauthn-register','Webauthn Register','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'webauthn-register',70),('acf0b8b7-9824-45d7-b1a5-35015d82cde5','CONFIGURE_TOTP','Configure OTP','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'CONFIGURE_TOTP',10),('b2b87080-1876-4e13-9ed1-69ce01b126ac','webauthn-register-passwordless','Webauthn Register Passwordless','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',1,0,'webauthn-register-passwordless',80),('ce781c03-29b8-4b1b-88d2-5a8c3ea86fbb','delete_account','Delete Account','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,0,'delete_account',60),('d51a4690-3f2e-48a2-8e3b-460b2b6e7590','TERMS_AND_CONDITIONS','Terms and Conditions','f00cbb37-dfa0-4b77-88e6-8acdf02606cc',0,0,'TERMS_AND_CONDITIONS',20);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('94f335c7-1dc4-4b8f-bd31-a29b0888225d','22421da4-4407-459e-9350-0b7ca0025494'),('94f335c7-1dc4-4b8f-bd31-a29b0888225d','fab050da-e6ac-4125-80f1-d5171cd9c5f6');
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
INSERT INTO `USER_ENTITY` VALUES ('0e07e4fc-ef7e-4641-894d-c06f1a9947e7',NULL,'00046dd5-189d-415b-9a9e-fc07df7c2e54',0,1,NULL,NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','service-account-_platform',1717741350816,'697891f5-228e-459b-88a7-7a6a0dfae003',0),('51edb423-5a84-43f3-8e21-3c3fdd1a71c7',NULL,'f3fa513f-3289-4243-abd7-0d2d318a7cf9',0,1,NULL,NULL,NULL,'f00cbb37-dfa0-4b77-88e6-8acdf02606cc','admin',1717741344685,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('4cb0574b-3dbc-4e10-b4df-e27cc137d062','0e07e4fc-ef7e-4641-894d-c06f1a9947e7'),('4cb0574b-3dbc-4e10-b4df-e27cc137d062','51edb423-5a84-43f3-8e21-3c3fdd1a71c7'),('7134554a-bc7c-49c7-a930-313558a0b102','0e07e4fc-ef7e-4641-894d-c06f1a9947e7'),('7134554a-bc7c-49c7-a930-313558a0b102','51edb423-5a84-43f3-8e21-3c3fdd1a71c7');
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
INSERT INTO `WEB_ORIGINS` VALUES ('79b4f5b6-b01f-4672-8186-080ea5a8fe10','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-06-07 15:22:39','dummy','2024-06-07 15:22:39','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-06-07 15:22:33','dummy','2024-06-07 15:22:33','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-06-07 15:22:33','dummy','2024-06-07 15:22:33','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-06-07 15:22:31.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-06-07 15:22:31.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-06-07 15:22:29','system','2024-06-07 15:22:29','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-06-07 15:22:39','dummy','2024-06-07 15:22:39','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-06-07 15:22:29','system','2024-06-07 15:22:32','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-06-07 15:22:29','system','2024-06-07 15:22:32','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-06-07 15:22:29','system','2024-06-07 15:22:32','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-06-07 15:22:39','dummy','2024-06-07 15:22:39','dummy'),('_default','platform.roles',1000,'2024-06-07 15:22:29','system','2024-06-07 15:22:29','system'),('_default','platform.users',10000,'2024-06-07 15:22:29','system','2024-06-07 15:22:29','system'),('_default','platform.workspaces',100,'2024-06-07 15:22:29','system','2024-06-07 15:22:29','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-06-07 15:22:29','1.8.2','2024-06-07 15:22:29','1.8.2'),(2,'1.3.0','SUCCEED',NULL,'2024-06-07 15:22:31','1.8.2','2024-06-07 15:22:31','1.8.2'),(3,'1.5.0','START',NULL,'2024-06-07 15:22:31','1.8.2','2024-06-07 15:22:31','1.8.2'),(4,'1.5.0','SUCCEED',NULL,'2024-06-07 15:22:31','1.8.2','2024-06-07 15:22:31','1.8.2'),(5,'1.5.2','START',NULL,'2024-06-07 15:22:31','1.8.2','2024-06-07 15:22:31','1.8.2'),(6,'1.5.2','SUCCEED',NULL,'2024-06-07 15:22:31','1.8.2','2024-06-07 15:22:31','1.8.2'),(7,'1.6.0','START',NULL,'2024-06-07 15:22:31','1.8.2','2024-06-07 15:22:31','1.8.2'),(8,'1.6.0','SUCCEED',NULL,'2024-06-07 15:22:32','1.8.2','2024-06-07 15:22:32','1.8.2'),(9,'1.7.0','START',NULL,'2024-06-07 15:22:32','1.8.2','2024-06-07 15:22:32','1.8.2'),(10,'1.7.0','SUCCEED',NULL,'2024-06-07 15:22:32','1.8.2','2024-06-07 15:22:32','1.8.2'),(11,'1.8.0','START',NULL,'2024-06-07 15:22:32','1.8.2','2024-06-07 15:22:32','1.8.2'),(12,'1.8.0','SUCCEED',NULL,'2024-06-07 15:22:32','1.8.2','2024-06-07 15:22:32','1.8.2'),(13,'1.8.1','START',NULL,'2024-06-07 15:22:32','1.8.2','2024-06-07 15:22:32','1.8.2'),(14,'1.8.1','SUCCEED',NULL,'2024-06-07 15:22:33','1.8.2','2024-06-07 15:22:33','1.8.2'),(15,'1.8.2','START',NULL,'2024-06-07 15:22:33','1.8.2','2024-06-07 15:22:33','1.8.2'),(16,'1.8.2','SUCCEED',NULL,'2024-06-07 15:22:33','1.8.2','2024-06-07 15:22:33','1.8.2');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"697891f5-228e-459b-88a7-7a6a0dfae003\", \"TOKEN_CHECK_CLIENT_SECRET\": \"gQhPf5RhsOxUGIYHMGNByOn8YdWdaZvZ\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"5101d081-60cd-4385-827d-9acaee6f862c\"}','2024-06-07 15:22:31','system','2024-06-07 15:22:31','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.8.2','2024-06-07 15:21:45','system','2024-06-07 15:22:33','1.8.2');
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

-- Dump completed on 2024-06-07 15:23:57
SET foreign_key_checks = 1;
