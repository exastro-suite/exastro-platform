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
DELETE FROM platform.T_REFRESH_TOKEN;
DELETE FROM platform.M_SYSTEM_CONFIG;
DELETE FROM platform.T_MAINTENANCE_MODE;
DELETE FROM platform.T_PROCESS_QUEUE;
DELETE FROM platform.T_PLAN_LIMIT;
-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('059609cb-5086-4310-8ec7-0ea2a9c42bb9',NULL,'auth-cookie','9dd2268c-42da-4e99-b9ce-40b751259146','d304d4c6-e8be-42e6-afaf-853e35f2861e',2,10,0,NULL,NULL),('14c845e2-8936-4175-8c9c-354c70c7b821',NULL,'idp-review-profile','9dd2268c-42da-4e99-b9ce-40b751259146','0bf73a54-820a-4591-a835-00ffebb51a72',0,10,0,NULL,'98d77aa8-baff-49b6-b68d-72cbe216326a'),('1646d42f-ec68-4923-a76d-a0f33a0adc02',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','0bf73a54-820a-4591-a835-00ffebb51a72',0,20,1,'57d4fc1b-2345-4550-ad66-df20957475fb',NULL),('276c9a0d-0522-48bb-aa7b-f83b81eb86a4',NULL,'client-secret-jwt','9dd2268c-42da-4e99-b9ce-40b751259146','a86b39f7-876d-485d-8d12-1619457d6d3f',2,30,0,NULL,NULL),('3460f768-e2f8-463f-b4c3-dfbdfab2d5c7',NULL,'registration-password-action','9dd2268c-42da-4e99-b9ce-40b751259146','2f12c62e-58ab-464b-a2fe-dcfb24f4cfaf',0,50,0,NULL,NULL),('3860ead7-aaf6-4df5-94bf-2f4caaa584fc',NULL,'client-jwt','9dd2268c-42da-4e99-b9ce-40b751259146','a86b39f7-876d-485d-8d12-1619457d6d3f',2,20,0,NULL,NULL),('3893d9a3-99d2-4a35-8fb6-8005d652952b',NULL,'reset-password','9dd2268c-42da-4e99-b9ce-40b751259146','560b36ee-755e-4bf9-a656-6b20d078fd21',0,30,0,NULL,NULL),('39f1f145-487a-4388-a8fb-bc41948fc1cd',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','f2a20430-9ed7-4d02-9b9f-1ebb636d2988',1,30,1,'6fd29150-d426-43a6-893f-0f739d095276',NULL),('3c8e2597-73ce-4295-a320-e415a0138ecf',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','e495ee36-60e2-48ac-a8a2-71173db8e843',1,20,1,'eaa12c0c-bf45-4152-9418-f4174c91d5ce',NULL),('3c94c5ab-abb5-4e6a-bd78-ed496b171e4a',NULL,'reset-credential-email','9dd2268c-42da-4e99-b9ce-40b751259146','560b36ee-755e-4bf9-a656-6b20d078fd21',0,20,0,NULL,NULL),('4585721c-f5dd-4562-bf26-abe77a9c0500',NULL,'conditional-user-configured','9dd2268c-42da-4e99-b9ce-40b751259146','8229b959-35d4-43a9-99be-daffab5e178c',0,10,0,NULL,NULL),('488e67cb-5b09-45c0-9897-e8f3aa552885',NULL,'conditional-user-configured','9dd2268c-42da-4e99-b9ce-40b751259146','43ea9250-19e7-428e-b49a-32e924a97a8c',0,10,0,NULL,NULL),('4f8556d1-9cb6-4bda-9f44-023138847162',NULL,'registration-terms-and-conditions','9dd2268c-42da-4e99-b9ce-40b751259146','2f12c62e-58ab-464b-a2fe-dcfb24f4cfaf',3,70,0,NULL,NULL),('5081779a-ecb0-4fbc-931d-71274cadd593',NULL,'auth-spnego','9dd2268c-42da-4e99-b9ce-40b751259146','d304d4c6-e8be-42e6-afaf-853e35f2861e',3,20,0,NULL,NULL),('522d7dbc-2d11-4815-aad1-77d5e33abfe9',NULL,'direct-grant-validate-username','9dd2268c-42da-4e99-b9ce-40b751259146','f2a20430-9ed7-4d02-9b9f-1ebb636d2988',0,10,0,NULL,NULL),('55eabe88-aa66-4868-bede-2397d19deade',NULL,'identity-provider-redirector','9dd2268c-42da-4e99-b9ce-40b751259146','d304d4c6-e8be-42e6-afaf-853e35f2861e',2,25,0,NULL,NULL),('5a4739ea-a965-42ba-8f57-3ed1502bcaa1',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','09e0695d-3e7b-4fa1-ab04-ce7f30a13d83',1,20,1,'43ea9250-19e7-428e-b49a-32e924a97a8c',NULL),('5e91fcb2-e1cd-4bc6-ac2c-c0c6a60ba3e7',NULL,'direct-grant-validate-otp','9dd2268c-42da-4e99-b9ce-40b751259146','6fd29150-d426-43a6-893f-0f739d095276',0,20,0,NULL,NULL),('5fddb868-fa59-4034-b3fd-809383ec8705',NULL,'idp-create-user-if-unique','9dd2268c-42da-4e99-b9ce-40b751259146','57d4fc1b-2345-4550-ad66-df20957475fb',2,10,0,NULL,'c7d26889-3275-4e39-ac8c-26f432b77f2f'),('687e8f22-efdb-42a4-a562-1ec896cfdc42',NULL,'client-x509','9dd2268c-42da-4e99-b9ce-40b751259146','a86b39f7-876d-485d-8d12-1619457d6d3f',2,40,0,NULL,NULL),('69362ea9-af42-425f-aa76-d58e6558ef08',NULL,'reset-otp','9dd2268c-42da-4e99-b9ce-40b751259146','8229b959-35d4-43a9-99be-daffab5e178c',0,20,0,NULL,NULL),('6eca9e6f-5e88-4a74-a7f7-18926f723982',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','57d4fc1b-2345-4550-ad66-df20957475fb',2,20,1,'96f50b4a-8cda-43e8-a171-45ff9829c54b',NULL),('73aef2d0-1553-4753-b206-c8f357759ef6',NULL,'registration-page-form','9dd2268c-42da-4e99-b9ce-40b751259146','a390c586-abe1-47ad-ba0b-327fd2b4f07b',0,10,1,'2f12c62e-58ab-464b-a2fe-dcfb24f4cfaf',NULL),('745c0609-af6f-42d5-90b6-0a951f5e1677',NULL,'registration-recaptcha-action','9dd2268c-42da-4e99-b9ce-40b751259146','2f12c62e-58ab-464b-a2fe-dcfb24f4cfaf',3,60,0,NULL,NULL),('7fa89626-f0ca-4829-9bfa-820f969628c1',NULL,'client-secret','9dd2268c-42da-4e99-b9ce-40b751259146','a86b39f7-876d-485d-8d12-1619457d6d3f',2,10,0,NULL,NULL),('7ffc6b42-5956-42a7-a1b1-bb4bc4eb66d1',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','732899ba-c353-406a-b484-0f49def31524',2,20,1,'e495ee36-60e2-48ac-a8a2-71173db8e843',NULL),('844bda13-482a-491c-9736-22a64d8aa0d5',NULL,'auth-otp-form','9dd2268c-42da-4e99-b9ce-40b751259146','eaa12c0c-bf45-4152-9418-f4174c91d5ce',0,20,0,NULL,NULL),('8bfc7edc-d0d5-4138-807b-17c095531475',NULL,'idp-username-password-form','9dd2268c-42da-4e99-b9ce-40b751259146','e495ee36-60e2-48ac-a8a2-71173db8e843',0,10,0,NULL,NULL),('92989b8e-ec79-4c80-b67d-be4f3b9d91d2',NULL,'http-basic-authenticator','9dd2268c-42da-4e99-b9ce-40b751259146','e840af52-58a9-4612-8adc-646e598fd5f0',0,10,0,NULL,NULL),('99bacc32-7e21-489f-a7ea-eb04f395fa64',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','d304d4c6-e8be-42e6-afaf-853e35f2861e',2,30,1,'09e0695d-3e7b-4fa1-ab04-ce7f30a13d83',NULL),('99c7ec39-1f0e-46a6-9f0b-bb3a3202d24a',NULL,'conditional-user-configured','9dd2268c-42da-4e99-b9ce-40b751259146','eaa12c0c-bf45-4152-9418-f4174c91d5ce',0,10,0,NULL,NULL),('aca44763-a082-4ad5-a234-65078f02432c',NULL,'conditional-user-configured','9dd2268c-42da-4e99-b9ce-40b751259146','6fd29150-d426-43a6-893f-0f739d095276',0,10,0,NULL,NULL),('ae431795-96bd-42f4-8795-e1583c0ee0ed',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','560b36ee-755e-4bf9-a656-6b20d078fd21',1,40,1,'8229b959-35d4-43a9-99be-daffab5e178c',NULL),('af77adfa-8d83-4b1b-b37f-93e56034a338',NULL,'idp-email-verification','9dd2268c-42da-4e99-b9ce-40b751259146','732899ba-c353-406a-b484-0f49def31524',2,10,0,NULL,NULL),('b2d23f5d-10ba-4c8d-84cf-61fe2fb4b246',NULL,'direct-grant-validate-password','9dd2268c-42da-4e99-b9ce-40b751259146','f2a20430-9ed7-4d02-9b9f-1ebb636d2988',0,20,0,NULL,NULL),('bac86044-a3b7-4fc4-ba88-97e80d42ef50',NULL,'docker-http-basic-authenticator','9dd2268c-42da-4e99-b9ce-40b751259146','f81daec5-b880-4b24-acdd-1127c259205d',0,10,0,NULL,NULL),('bd005113-23f7-462f-9c16-adc9c8b02f96',NULL,'auth-otp-form','9dd2268c-42da-4e99-b9ce-40b751259146','43ea9250-19e7-428e-b49a-32e924a97a8c',0,20,0,NULL,NULL),('cee09983-cb74-48ea-9e9e-fb7cc5d9805f',NULL,'registration-user-creation','9dd2268c-42da-4e99-b9ce-40b751259146','2f12c62e-58ab-464b-a2fe-dcfb24f4cfaf',0,20,0,NULL,NULL),('d6651624-a150-4ce6-ab0c-7ca4d09f24c1',NULL,'auth-username-password-form','9dd2268c-42da-4e99-b9ce-40b751259146','09e0695d-3e7b-4fa1-ab04-ce7f30a13d83',0,10,0,NULL,NULL),('dcf7400d-39ba-4772-9623-cf9598034b97',NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','96f50b4a-8cda-43e8-a171-45ff9829c54b',0,20,1,'732899ba-c353-406a-b484-0f49def31524',NULL),('f12b9cc8-8a9e-43c9-8cf9-d766d104e9b3',NULL,'idp-confirm-link','9dd2268c-42da-4e99-b9ce-40b751259146','96f50b4a-8cda-43e8-a171-45ff9829c54b',0,10,0,NULL,NULL),('ff15007f-6f05-4959-b235-35285bb47e4a',NULL,'reset-credentials-choose-user','9dd2268c-42da-4e99-b9ce-40b751259146','560b36ee-755e-4bf9-a656-6b20d078fd21',0,10,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('09e0695d-3e7b-4fa1-ab04-ce7f30a13d83','forms','Username, password, otp and other auth forms.','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('0bf73a54-820a-4591-a835-00ffebb51a72','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1),('2f12c62e-58ab-464b-a2fe-dcfb24f4cfaf','registration form','registration form','9dd2268c-42da-4e99-b9ce-40b751259146','form-flow',0,1),('43ea9250-19e7-428e-b49a-32e924a97a8c','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('560b36ee-755e-4bf9-a656-6b20d078fd21','reset credentials','Reset credentials for a user if they forgot their password or something','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1),('57d4fc1b-2345-4550-ad66-df20957475fb','User creation or linking','Flow for the existing/non-existing user alternatives','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('6fd29150-d426-43a6-893f-0f739d095276','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('732899ba-c353-406a-b484-0f49def31524','Account verification options','Method with which to verity the existing account','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('8229b959-35d4-43a9-99be-daffab5e178c','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('96f50b4a-8cda-43e8-a171-45ff9829c54b','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('a390c586-abe1-47ad-ba0b-327fd2b4f07b','registration','registration flow','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1),('a86b39f7-876d-485d-8d12-1619457d6d3f','clients','Base authentication for clients','9dd2268c-42da-4e99-b9ce-40b751259146','client-flow',1,1),('d304d4c6-e8be-42e6-afaf-853e35f2861e','browser','browser based authentication','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1),('e495ee36-60e2-48ac-a8a2-71173db8e843','Verify Existing Account by Re-authentication','Reauthentication of existing account','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('e840af52-58a9-4612-8adc-646e598fd5f0','saml ecp','SAML ECP Profile Authentication Flow','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1),('eaa12c0c-bf45-4152-9418-f4174c91d5ce','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',0,1),('f2a20430-9ed7-4d02-9b9f-1ebb636d2988','direct grant','OpenID Connect Resource Owner Grant','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1),('f81daec5-b880-4b24-acdd-1127c259205d','docker auth','Used by Docker clients to authenticate against the IDP','9dd2268c-42da-4e99-b9ce-40b751259146','basic-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('98d77aa8-baff-49b6-b68d-72cbe216326a','review profile config','9dd2268c-42da-4e99-b9ce-40b751259146'),('c7d26889-3275-4e39-ac8c-26f432b77f2f','create unique user config','9dd2268c-42da-4e99-b9ce-40b751259146');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('98d77aa8-baff-49b6-b68d-72cbe216326a','missing','update.profile.on.first.login'),('c7d26889-3275-4e39-ac8c-26f432b77f2f','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('181b681d-1ba3-4aa7-8898-e109f9dbf470',1,0,'_platform-console',0,1,'sJRsvIfYIARTOKJLCLWMAZyxkQgCrN08',NULL,0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('7a015574-371d-4fdf-aa1e-19e0dfd2e116',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('83693928-0408-449c-9544-a02104d84830',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('ab82c3a4-56c4-4396-901c-04e5e4368138',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02',1,1,'_platform',0,0,'KhqnS5zTLCcjVC1OIui6wwZEsmJ8tN1J',NULL,0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'9dd2268c-42da-4e99-b9ce-40b751259146','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('181b681d-1ba3-4aa7-8898-e109f9dbf470','backchannel.logout.revoke.offline.tokens','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','backchannel.logout.session.required','true'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','client.secret.creation.time','1728266508'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','client_credentials.use_refresh_token','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','display.on.consent.screen','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','exclude.session.state.from.auth.response','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','id.token.as.detached.signature','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','oauth2.device.authorization.grant.enabled','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','oidc.ciba.grant.enabled','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','post.logout.redirect.uris','/*'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','require.pushed.authorization.requests','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.artifact.binding','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.assertion.signature','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.authnstatement','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.client.signature','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.encrypt','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.force.post.binding','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.multivalued.roles','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.onetimeuse.condition','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.server.signature','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml.server.signature.keyinfo.ext','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','saml_force_name_id_format','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','tls.client.certificate.bound.access.tokens','false'),('181b681d-1ba3-4aa7-8898-e109f9dbf470','use.refresh.tokens','true'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','access.token.lifespan','86400'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','acr.loa.map','{}'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','backchannel.logout.revoke.offline.tokens','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','backchannel.logout.session.required','true'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','client.session.idle.timeout','86400'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','client.session.max.lifespan','86400'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','client_credentials.use_refresh_token','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','display.on.consent.screen','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','exclude.session.state.from.auth.response','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','frontchannel.logout.session.required','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','id.token.as.detached.signature','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','oauth2.device.authorization.grant.enabled','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','oidc.ciba.grant.enabled','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','require.pushed.authorization.requests','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.allow.ecp.flow','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.artifact.binding','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.assertion.signature','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.authnstatement','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.client.signature','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.encrypt','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.force.post.binding','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.multivalued.roles','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.onetimeuse.condition','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.server.signature','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml.server.signature.keyinfo.ext','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','saml_force_name_id_format','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','tls.client.certificate.bound.access.tokens','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','token.response.type.bearer.lower-case','false'),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','use.refresh.tokens','true'),('83693928-0408-449c-9544-a02104d84830','pkce.code.challenge.method','S256'),('83693928-0408-449c-9544-a02104d84830','post.logout.redirect.uris','+'),('ab82c3a4-56c4-4396-901c-04e5e4368138','pkce.code.challenge.method','S256'),('ab82c3a4-56c4-4396-901c-04e5e4368138','post.logout.redirect.uris','+'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','backchannel.logout.revoke.offline.tokens','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','backchannel.logout.session.required','true'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','client.secret.creation.time','1728266507'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','client_credentials.use_refresh_token','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','display.on.consent.screen','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','exclude.session.state.from.auth.response','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','id.token.as.detached.signature','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','oauth2.device.authorization.grant.enabled','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','oidc.ciba.grant.enabled','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','require.pushed.authorization.requests','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.artifact.binding','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.assertion.signature','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.authnstatement','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.client.signature','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.encrypt','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.force.post.binding','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.multivalued.roles','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.onetimeuse.condition','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.server.signature','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml.server.signature.keyinfo.ext','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','saml_force_name_id_format','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','tls.client.certificate.bound.access.tokens','false'),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','use.refresh.tokens','true'),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('004a00fc-9807-460d-83fb-cb8c03b18eaf','role_list','9dd2268c-42da-4e99-b9ce-40b751259146','SAML role list','saml'),('1a2db67b-2752-4846-b050-c7180acf0f18','offline_access','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect built-in scope: offline_access','openid-connect'),('23c788b7-4b24-4465-bb0b-a7de8d54952f','address','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect built-in scope: address','openid-connect'),('63dd2d93-1121-41d7-8dbd-0ec5fa46e36d','web-origins','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('6fd234bf-e075-45a9-b653-5cfdf0687853','microprofile-jwt','9dd2268c-42da-4e99-b9ce-40b751259146','Microprofile - JWT built-in scope','openid-connect'),('a852180a-9f68-46b4-aec6-23dd91bffa5a','acr','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('c201328c-03ac-4d31-b82d-7fd11f8bb603','email','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect built-in scope: email','openid-connect'),('c3e70d19-ff43-4f5b-87d5-c61ddd0bc841','roles','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect scope for add user roles to the access token','openid-connect'),('c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf','phone','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect built-in scope: phone','openid-connect'),('ec4d42ae-d90c-472c-bf66-069ab4bb7574','profile','9dd2268c-42da-4e99-b9ce-40b751259146','OpenID Connect built-in scope: profile','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('004a00fc-9807-460d-83fb-cb8c03b18eaf','${samlRoleListScopeConsentText}','consent.screen.text'),('004a00fc-9807-460d-83fb-cb8c03b18eaf','true','display.on.consent.screen'),('1a2db67b-2752-4846-b050-c7180acf0f18','${offlineAccessScopeConsentText}','consent.screen.text'),('1a2db67b-2752-4846-b050-c7180acf0f18','true','display.on.consent.screen'),('23c788b7-4b24-4465-bb0b-a7de8d54952f','${addressScopeConsentText}','consent.screen.text'),('23c788b7-4b24-4465-bb0b-a7de8d54952f','true','display.on.consent.screen'),('23c788b7-4b24-4465-bb0b-a7de8d54952f','true','include.in.token.scope'),('63dd2d93-1121-41d7-8dbd-0ec5fa46e36d','','consent.screen.text'),('63dd2d93-1121-41d7-8dbd-0ec5fa46e36d','false','display.on.consent.screen'),('63dd2d93-1121-41d7-8dbd-0ec5fa46e36d','false','include.in.token.scope'),('6fd234bf-e075-45a9-b653-5cfdf0687853','false','display.on.consent.screen'),('6fd234bf-e075-45a9-b653-5cfdf0687853','true','include.in.token.scope'),('a852180a-9f68-46b4-aec6-23dd91bffa5a','false','display.on.consent.screen'),('a852180a-9f68-46b4-aec6-23dd91bffa5a','false','include.in.token.scope'),('c201328c-03ac-4d31-b82d-7fd11f8bb603','${emailScopeConsentText}','consent.screen.text'),('c201328c-03ac-4d31-b82d-7fd11f8bb603','true','display.on.consent.screen'),('c201328c-03ac-4d31-b82d-7fd11f8bb603','true','include.in.token.scope'),('c3e70d19-ff43-4f5b-87d5-c61ddd0bc841','${rolesScopeConsentText}','consent.screen.text'),('c3e70d19-ff43-4f5b-87d5-c61ddd0bc841','true','display.on.consent.screen'),('c3e70d19-ff43-4f5b-87d5-c61ddd0bc841','false','include.in.token.scope'),('c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf','${phoneScopeConsentText}','consent.screen.text'),('c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf','true','display.on.consent.screen'),('c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf','true','include.in.token.scope'),('ec4d42ae-d90c-472c-bf66-069ab4bb7574','${profileScopeConsentText}','consent.screen.text'),('ec4d42ae-d90c-472c-bf66-069ab4bb7574','true','display.on.consent.screen'),('ec4d42ae-d90c-472c-bf66-069ab4bb7574','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('181b681d-1ba3-4aa7-8898-e109f9dbf470','1a2db67b-2752-4846-b050-c7180acf0f18',0),('181b681d-1ba3-4aa7-8898-e109f9dbf470','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('181b681d-1ba3-4aa7-8898-e109f9dbf470','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('181b681d-1ba3-4aa7-8898-e109f9dbf470','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('181b681d-1ba3-4aa7-8898-e109f9dbf470','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('181b681d-1ba3-4aa7-8898-e109f9dbf470','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('181b681d-1ba3-4aa7-8898-e109f9dbf470','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('181b681d-1ba3-4aa7-8898-e109f9dbf470','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','1a2db67b-2752-4846-b050-c7180acf0f18',0),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('7a015574-371d-4fdf-aa1e-19e0dfd2e116','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('83693928-0408-449c-9544-a02104d84830','1a2db67b-2752-4846-b050-c7180acf0f18',0),('83693928-0408-449c-9544-a02104d84830','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('83693928-0408-449c-9544-a02104d84830','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('83693928-0408-449c-9544-a02104d84830','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('83693928-0408-449c-9544-a02104d84830','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('83693928-0408-449c-9544-a02104d84830','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('83693928-0408-449c-9544-a02104d84830','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('83693928-0408-449c-9544-a02104d84830','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('83693928-0408-449c-9544-a02104d84830','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','1a2db67b-2752-4846-b050-c7180acf0f18',0),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('ab82c3a4-56c4-4396-901c-04e5e4368138','1a2db67b-2752-4846-b050-c7180acf0f18',0),('ab82c3a4-56c4-4396-901c-04e5e4368138','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('ab82c3a4-56c4-4396-901c-04e5e4368138','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('ab82c3a4-56c4-4396-901c-04e5e4368138','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('ab82c3a4-56c4-4396-901c-04e5e4368138','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('ab82c3a4-56c4-4396-901c-04e5e4368138','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('ab82c3a4-56c4-4396-901c-04e5e4368138','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('ab82c3a4-56c4-4396-901c-04e5e4368138','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('ab82c3a4-56c4-4396-901c-04e5e4368138','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','1a2db67b-2752-4846-b050-c7180acf0f18',0),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','1a2db67b-2752-4846-b050-c7180acf0f18',0),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('af4bbc69-6c9d-4e4a-a04c-a4372eb8ca53','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','1a2db67b-2752-4846-b050-c7180acf0f18',0),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','1a2db67b-2752-4846-b050-c7180acf0f18',0),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('f37ac1b8-03cb-4ce5-ad09-7526f7ad479c','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('1a2db67b-2752-4846-b050-c7180acf0f18','0ffcb777-048f-4e86-b858-bad29fa7b55d');
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
INSERT INTO `COMPONENT` VALUES ('0b530a30-28ca-4c0f-b1ef-3d61c105a870','aes-generated','9dd2268c-42da-4e99-b9ce-40b751259146','aes-generated','org.keycloak.keys.KeyProvider','9dd2268c-42da-4e99-b9ce-40b751259146',NULL),('5713189a-311e-43b9-8e73-13967c44b25f','Allowed Protocol Mapper Types','9dd2268c-42da-4e99-b9ce-40b751259146','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','anonymous'),('6d269993-3fbe-4185-bc89-6ff0de6b38df',NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','9dd2268c-42da-4e99-b9ce-40b751259146',NULL),('72c23946-0ffb-40cd-9253-1161f769a389','Max Clients Limit','9dd2268c-42da-4e99-b9ce-40b751259146','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','anonymous'),('78e680cf-5506-4aec-9497-7dd276bc24e8','rsa-enc-generated','9dd2268c-42da-4e99-b9ce-40b751259146','rsa-enc-generated','org.keycloak.keys.KeyProvider','9dd2268c-42da-4e99-b9ce-40b751259146',NULL),('7bbf0936-163b-401a-a88e-081a288e7f0c','Allowed Client Scopes','9dd2268c-42da-4e99-b9ce-40b751259146','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','authenticated'),('9935b5c0-eec2-4a84-a51d-e3a9abc54b29','hmac-generated-hs512','9dd2268c-42da-4e99-b9ce-40b751259146','hmac-generated','org.keycloak.keys.KeyProvider','9dd2268c-42da-4e99-b9ce-40b751259146',NULL),('abc4bd66-8dd8-4097-a450-4865061dcea4','Full Scope Disabled','9dd2268c-42da-4e99-b9ce-40b751259146','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','anonymous'),('b0a8fecd-5fb4-4d9a-ab1f-8b5b72e90510','Trusted Hosts','9dd2268c-42da-4e99-b9ce-40b751259146','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','anonymous'),('b24dd2fe-a296-439c-8cab-12341e26d064','rsa-generated','9dd2268c-42da-4e99-b9ce-40b751259146','rsa-generated','org.keycloak.keys.KeyProvider','9dd2268c-42da-4e99-b9ce-40b751259146',NULL),('c8c8a27f-c80d-47a0-bf2c-a7d626bf2555','Allowed Client Scopes','9dd2268c-42da-4e99-b9ce-40b751259146','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','anonymous'),('e4ae843d-9f51-4770-9c74-84097cd47613','Consent Required','9dd2268c-42da-4e99-b9ce-40b751259146','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','anonymous'),('e96ff10d-e962-4909-ab66-bba37ca9e0c8','Allowed Protocol Mapper Types','9dd2268c-42da-4e99-b9ce-40b751259146','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','authenticated');
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('04385957-aa1d-4185-a19f-a07804d11673','72c23946-0ffb-40cd-9253-1161f769a389','max-clients','200'),('1843c32c-a8ba-4351-8a59-2da91dd4fa5b','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','oidc-address-mapper'),('1bebe4e9-0a8e-4f8f-b82d-3e1077d20f76','9935b5c0-eec2-4a84-a51d-e3a9abc54b29','algorithm','HS512'),('1e36b6ad-042f-4183-a64d-29d7809dcdd4','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('21169629-aee2-4b7a-b894-40a7ca8330a3','c8c8a27f-c80d-47a0-bf2c-a7d626bf2555','allow-default-scopes','true'),('24affc3d-cd11-4781-bc5b-3a5b6b04d8f9','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('260d7ee9-bb84-4325-b70f-41c05d3eef87','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','saml-user-property-mapper'),('278bcead-ccf1-4cd3-97d5-6ac852b1fd04','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','oidc-address-mapper'),('2f2cdcb1-de38-4254-ba78-6ef8cb107065','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','oidc-full-name-mapper'),('381b2bce-97b8-499f-ad1e-db92090a75b3','0b530a30-28ca-4c0f-b1ef-3d61c105a870','secret','YnbnjpTsXzFXXDQqV7_4XQ'),('432acaef-e1c4-4a3f-8d3a-1809341896f9','78e680cf-5506-4aec-9497-7dd276bc24e8','priority','100'),('53ee2f0f-9840-414d-ae42-631e5676538b','7bbf0936-163b-401a-a88e-081a288e7f0c','allow-default-scopes','true'),('5b7afe5d-848f-4d16-8954-68061d20c751','b24dd2fe-a296-439c-8cab-12341e26d064','priority','100'),('5d4c76e1-e06c-4a5b-8b76-b53f2d6cf09e','b24dd2fe-a296-439c-8cab-12341e26d064','certificate','MIICmzCCAYMCBgGSZLX7MDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQxMDA3MDIwMDAwWhcNMzQxMDA3MDIwMTQwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCz1lEs0R7t2IO63RFq9NN+mqq1K/3RA9qGonI2tXL4otsAr9Gozf3qRMWZuyBIEtAe+mdwIuOQMCQC1oQfiAdfJnmmoIK8W+584H6aFGjgAQ33y61qu4IdOd2iB+LjVQF9gDjVw8ARKTRxIv+DKWis8eXYp2KSTxIFUsLo5P0Cuo4nfsAs7ASlRmAIRaskAZeYl34P7p8Chl61pUNObZSQtjBjp0si6XUKlQFqytltuAn3OT1t+NnmSguytxlpzHkg6QRawyzYUk9lZaSTUpT5tHl9ufVcCUGpIIcnwj/v+1i/rK0D0X+OE/ThZQTMMMJs8V2oiqxRzozJEXd+SznTAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAD10EQAI0I3R2gnzI8VsCNeGcLig2q9rjd6RfI6YgQd+wDTLasD/F00eJQXOxbfjqjWm3gXIP8AELL/lmdXBMcMqlyCyzpnBYLzEz/pHk1OI6GIZxJzzDRJa0xOOcW8jNVU9+6rPs9OGWOQYoTDL9wKix3kuNHxsiC1VKhWyqzpqD1C7iaelP6urrE5EU8XnD9blHiYelnJJHyHoOx6ISb7//mMQz1q1odnrHHOtcbaJ7i/y6G7BXk0kHTpc6cpdOdh0g8Nywe2XSIYf49W+/sXD+ecNGg8JAN/ftQC1ABczDzvD6EdzOaH/72qtGzCzGkn7ywjEkepH4B1lwU3emmo='),('6447fab1-fa7d-4eec-9b69-f4d757da9b71','0b530a30-28ca-4c0f-b1ef-3d61c105a870','priority','100'),('6cefc10d-4e9a-4dc2-9558-33c37cc558bc','9935b5c0-eec2-4a84-a51d-e3a9abc54b29','priority','100'),('6e82bb71-cff7-4e64-b509-538823f1178d','9935b5c0-eec2-4a84-a51d-e3a9abc54b29','secret','6BQOVfWdC2hxUziSh3S5zWFrgUKmJ9UCIc7kQSrh4wAuci2IfhUJOc_eyJwsYMuW-7D0Wsf1JNRNxjqZUqWANngQjXdZTJ9yzLLZlSnwJXQXNKTZ5RACMnS7W8YcxqxcE0MxcLwoBTmEp65BY20hbMAajznt6dQDJV0lwIZwwBw'),('72676191-8a3c-401a-aaad-ce237ce960ce','b0a8fecd-5fb4-4d9a-ab1f-8b5b72e90510','host-sending-registration-request-must-match','true'),('768aa0cb-55d4-4aec-a723-2bbf363c60d2','78e680cf-5506-4aec-9497-7dd276bc24e8','algorithm','RSA-OAEP'),('89b07aa5-d12d-4225-82bc-65d93c25d60c','78e680cf-5506-4aec-9497-7dd276bc24e8','privateKey','MIIEpAIBAAKCAQEA0HTkdD5jNYgezyO5ODVIHOHR3zcW5VQWTLjQyGcTI2CHbVegDjMkMKxNcKPzge/yBk+UoXxDfSEVVk9sA8nqoj6mfhyQjoPWQX3WZFUIcVivGUQ2snoEf/4X8eAlH3lBkPxWdFkhTWr+UnvnBIrXSIDQJ8fRwEsjR4uiB3a3mBKJ0a5250j7rEnKipK80yiBajD7OGHCCTzp8X8bImOwZOcU/KDQJ9lPOjiu+7gTpdUg6th3SIQyDArKXiqk5lCz4JTjE528dUGmGW4YIXfkRQNXFhFzQrwUPQOmhzT8Jla6DVUAlyVRjM7Qh0Pgy7eSRf85mRm0OoE1As/8qXUaowIDAQABAoIBADskjxS0Bq3Pev5GImziIR2grEzqcmKKYvFNll7lb7af0oyhSdX9iI0OtcH5okMBcud7eK4AdZ1w337ndbv1c86oe9BYBmOI4Ccgrs00mvqdsMA4bFRi7hfqXZzQfXfajVG3ZkgIabxvWMzKPpc5VS9K7MP8m3Q1XUMVSNlZQ2mvhVH8Si5VkWERUN7q8gAh6ANs06788ZKrrHivV9J7KY9kiagt3/Z3kabAFlS6ajhxvL6OxjK/IwQBVlY/4GnV0NpK8Hn2fCwF0XE4eab7A5YwXeFLRFUJa1KdfNyuRl0AoyYGo+YDZqqb2RagLzmxiWNAkwCoVF3lbeq7HSlOENECgYEA+dcNKd3bY5pPLs9RrShOghNjbFk9SlsTorxGw1km8LSSfQlDfAOdIR5viN8ujFT9sNevYMooxdAt29RA6XTPMGy6dPdCbUis0Psi5FRXF4vXN2Grs26df/t1N7TJpqoR91jB2PNujHPsmS1HCwlxxMSTUzfMLyI5ilBZ7w7v4+0CgYEA1ZiiuwGOa6yABRuMm1BezOcbOKHW1iIf7YTbJ6fu2Xtu0hiniR2a++8ZSmRzS02z+5891uR/FbpwqA2H8Y4cxzdxUMXTeTbaM9O6YTcapsMyLkaYuSIaqgJEneDVFZzGSWa04x8cgVTgg18JZLLeo47G3+Ro52T4SKPaXg6tRs8CgYEAhbCi1Z1nMVQ4POcpYIwp/obbc/YIywoTZshy4UOKh9FIdeoIF4tjgH5l1or+wI8WNZQkv5lN2hQ9Bd39Yi9kUxhLah2JiSsTdrx7/kx3Uh09a+Ay3dA6LWrkXYu7QBjPhlkTWcFhjXzWxVyqIGjMXSuHXkeEVlBtE+tNRJPsoD0CgYEAyx/ggV61hggBptnQGVORE+Mjq/OcTv8cxc/2afv11LThasMvb+HLpZJ3xptIWXCHnN6O/HFHue4XfHmBsmGnVHyRMnMu7LMRRwAu2oyAt94hNojEbCrWmJ6Xilxpx6fTmbImi2bmwMdqywPx9uVzfK8myXx5lrQauVm5LIFgn1kCgYAJRXlTmF1gGQpv0oHaRkz/RcHXJ0k8jk/f3UCZa4BnehvwWmOenEYIyETmLGioCzg5HUlhg+Z1wFjc899bg7LptsjTe0orkKrw2DgztDRq2nmxiknE5ipA2QJ/cP2/yuEsSACWhjuIc9OU7j6SkQ10DPq3cj7tQH1sNOhDU98CXg=='),('8f272449-105a-4172-8066-69f2de8d1e27','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('90ee04b3-533e-45cb-8655-03ca5e63090d','b0a8fecd-5fb4-4d9a-ab1f-8b5b72e90510','client-uris-must-match','true'),('916dd1f9-7cbb-4d17-aa8f-d286327a6c0f','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','saml-role-list-mapper'),('9d63bf2e-5358-4418-92a4-48bb3812b72d','78e680cf-5506-4aec-9497-7dd276bc24e8','certificate','MIICmzCCAYMCBgGSZLX8aTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQxMDA3MDIwMDAxWhcNMzQxMDA3MDIwMTQxWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQdOR0PmM1iB7PI7k4NUgc4dHfNxblVBZMuNDIZxMjYIdtV6AOMyQwrE1wo/OB7/IGT5ShfEN9IRVWT2wDyeqiPqZ+HJCOg9ZBfdZkVQhxWK8ZRDayegR//hfx4CUfeUGQ/FZ0WSFNav5Se+cEitdIgNAnx9HASyNHi6IHdreYEonRrnbnSPusScqKkrzTKIFqMPs4YcIJPOnxfxsiY7Bk5xT8oNAn2U86OK77uBOl1SDq2HdIhDIMCspeKqTmULPglOMTnbx1QaYZbhghd+RFA1cWEXNCvBQ9A6aHNPwmVroNVQCXJVGMztCHQ+DLt5JF/zmZGbQ6gTUCz/ypdRqjAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAfKYAbilhuBBz4YypWdqPqpn0W00iko7LX52vrfNTiG9eXfc2I6VWB9d6KWsigGSle5CUKIB/22132BIvdq9DH23aphD08+eSugySyu/xcFNHb8rXRfAtuuCbzgN8/b0EcBQuGcndJ78W8ena2sawWWjditIaTkXfFcBnGxzbiTNibLehWWX0Vh32RluacOc//21REHal5Ampwqt0ZxsjhmeApRzBt24LO2SpciaW8k8Gd/VLnH70MUdWQu2KH4hopB2iiMF1n28rtAaM/aVr52TlVUzM1QHyh42FFp0k4L9EfCGSoEra7AcuvY9dAICMlvKZ5CxeisZ6UNhEKNnGM='),('a16c20bb-afab-4606-ae0d-6511587c1c25','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a99c675d-76c7-431e-8f5d-54af93b34241','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b88ae92d-821e-4d82-8604-3ebca5ccc455','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('bda12fcf-9d43-422d-ab7f-cef827321576','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','saml-user-property-mapper'),('c7f14adc-8cb7-4d13-8497-cfd68000c630','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('cb6f839c-bd37-4158-ba32-b00cb3eba1ce','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ce045ad8-c406-40ac-a62a-aa169f3e26d9','9935b5c0-eec2-4a84-a51d-e3a9abc54b29','kid','0689ea8f-c9cc-400b-af06-0d8382e06a7b'),('db04dada-be41-47a4-8740-4742ec4e1a10','6d269993-3fbe-4185-bc89-6ff0de6b38df','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('db67c233-6607-4e85-b1a1-2e9ae3ec9b7a','78e680cf-5506-4aec-9497-7dd276bc24e8','keyUse','ENC'),('ec26b30a-5218-45f3-b85e-c4d20e7b5a00','e96ff10d-e962-4909-ab66-bba37ca9e0c8','allowed-protocol-mapper-types','saml-role-list-mapper'),('ee889cea-c15b-41e1-8288-42e5a6af801f','b24dd2fe-a296-439c-8cab-12341e26d064','privateKey','MIIEpQIBAAKCAQEAs9ZRLNEe7diDut0RavTTfpqqtSv90QPahqJyNrVy+KLbAK/RqM396kTFmbsgSBLQHvpncCLjkDAkAtaEH4gHXyZ5pqCCvFvufOB+mhRo4AEN98utaruCHTndogfi41UBfYA41cPAESk0cSL/gylorPHl2Kdikk8SBVLC6OT9ArqOJ37ALOwEpUZgCEWrJAGXmJd+D+6fAoZetaVDTm2UkLYwY6dLIul1CpUBasrZbbgJ9zk9bfjZ5koLsrcZacx5IOkEWsMs2FJPZWWkk1KU+bR5fbn1XAlBqSCHJ8I/7/tYv6ytA9F/jhP04WUEzDDCbPFdqIqsUc6MyRF3fks50wIDAQABAoIBACh558pVBQeWcEu6HwX6NbHsoNhnHtkQ63nbDSbYHxjsGqukZuV9+5TjRrBLqD/gkBww0uAv0hUtaKWE37bzGGmnkMDapqI7dMmBg60tQ8+LHTg1DQKVUns+f25NJRlylAPJvMEMLmoOYqHGNUkxpEAsr8VcIzj39//fuUPO6k1XC6Wihs6lhjylBQUBkJwq30iry7VhrVq9hU49T2WnAxHRMGVLFa1SJGI/wMBlEqKjXKk7ZXUJfHIUkPxTQleErq4k06i4ljBtkSbljrGvb3H5Ads7CQ8p5XnESxh9yoGpbnZ4iKyCSblNbno2Ibj1Ji0NVOCbAx+U8onJ7n0x7hECgYEA73J8JqivwrQXvy2ITEWzF5L9FjC04y6S9XR35pEt/PNtDPyLR+eD6QvkaPZRLOlfOsN6r5nCaPIH+1BMRIjFy4R9sHtxPnDVPMJss6bTx6ytQm1PaQgtDpjdTsMq6fXIWBrugclPJ5uG3tznCAQh0Q9dY9nH7st9D20pwlvWtuMCgYEAwETosqTiOpArhNV0HJWUUkxpXJRJgW/zlXrs0vSxDsDMhfJcQQKPoUh5REUzzzcf1dSKZd6TJSUUFHKNtEfmQ3xxILMEKd0IKDovl21Am1hadoUScFAGgC3duobsB6u8nprZsSIJ7Znc1DZX7aVkr0FrOgg+V1N7uMnMtxW59FECgYEAlfDb+51gSo1Z3XaWxiRTTKzX3SBs9WJB1oCzYGeDI8YPgLVYRpOcT8AJrQypsnUFFBg66GFhkzQUeXRD/hqjuZji2DPEqzQe46hgR3NtZLkl2dX3hy7+gAiLdPnUEqO9bCaZOh6keYnzv/UWmzdzMaXsdk123HsCejmCj9nQr78CgYEAhDofylQI3Xuu4jCmJM5d7edtAmVc0+65F1Ets7riVaIURf4yoebv/lxIQcJR6i0f8L+12m8ixQXl9FX/zD8yRbE8X9+demjvJjM17a8OIoe11xKXZrQydE6W0aPeiTv7gRw/oEkniMcrDqq898uqHbkg1A09SnM4gBIQfs0rULECgYEAvUQ+3IvlkQ+gocMH+rudXEuv0ezzLkftrPMg7FAI24VKRfUzAvuJJkcb4yoKMD4QHXhFWkmrorpulCpEyauZr9bE8jdj7ljEVZ5O/cTV0RqGd1M0KV36EgGEwJHXsYGoJZmcY7OQxmsdtMjSldxzNIo47Y153wZB1qbKNinjQN0='),('f0f9ab5b-446c-4b77-a149-ba46b033e946','5713189a-311e-43b9-8e73-13967c44b25f','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('f48ed082-cfae-4d4e-ae60-e365b9511670','0b530a30-28ca-4c0f-b1ef-3d61c105a870','kid','923f7c8f-69dd-4331-8f54-d821de26395f'),('f585b318-6f47-49a2-bbcf-12924bbfe3f3','b24dd2fe-a296-439c-8cab-12341e26d064','keyUse','SIG');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('05230728-743e-4871-a978-3adb10abeeb8','9a9eaa61-32ba-4e76-9b54-c7a09db409f0'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','05230728-743e-4871-a978-3adb10abeeb8'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','1a52a93e-8531-416b-8885-8e40504c6898'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','1c45f026-0085-43f0-afe9-d07575c2c7f5'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','26fe97f9-898c-4b44-81a0-45e56bf3fae8'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','28ec5a85-3291-4de5-8db5-dc2bbb2a6482'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','2eeda92d-0600-4e9b-bc9b-aba683e77862'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','4558cf57-ad98-471e-ab1f-c9834abc4b4c'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','4809513e-77be-42f0-ba89-9828b0420cae'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','968f9cea-cf92-4ba4-8c99-8beef31fae84'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','9a9eaa61-32ba-4e76-9b54-c7a09db409f0'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','b3d587e2-7da6-4cf2-bd2b-1cf093337c92'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','c88f76b3-ad11-4be9-813a-45e2fc9f7235'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','cf923a7b-f5a8-43e2-814a-1974f9f22de8'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','dba9af0b-b7e4-4542-8b7b-9da3954c4a16'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','e03f14dc-f2a2-40e9-bdcc-ec836ba05670'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','e2523193-991b-4f69-bbe4-766b5f5a0653'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','e66e473f-32cb-4967-8f5b-97dbaa5c21e2'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','e701f666-6b3d-41bb-9665-780f2b0deeaa'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','fd698fcf-9279-4ed6-8b90-bd463482aa3a'),('9db26701-bc39-4099-8d60-1f5c95064014','0ffcb777-048f-4e86-b858-bad29fa7b55d'),('9db26701-bc39-4099-8d60-1f5c95064014','4790f5a5-c50d-4c95-9a97-efdaaaf15ec2'),('9db26701-bc39-4099-8d60-1f5c95064014','6fcb184a-5ade-41a6-8bb4-8b9de521b00f'),('9db26701-bc39-4099-8d60-1f5c95064014','cc34e658-1259-47f9-908c-8b96a40c7de2'),('c88f76b3-ad11-4be9-813a-45e2fc9f7235','28ec5a85-3291-4de5-8db5-dc2bbb2a6482'),('c88f76b3-ad11-4be9-813a-45e2fc9f7235','4558cf57-ad98-471e-ab1f-c9834abc4b4c'),('c9bdcf40-2699-474d-a1ce-67a10c8e3bde','772408bc-4860-490a-9a08-23a89a958baf'),('cc34e658-1259-47f9-908c-8b96a40c7de2','e26892cd-99ec-45fe-b294-c43d6c2956b6');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('98c9ea20-d180-45e0-ac08-c386d53e0f60',NULL,'password','52455306-81bf-4362-8e40-c77f86b92727',1728266502226,NULL,'{\"value\":\"BF0QtrMc1PHAO+Jt25hRnqRfzUzvZfe6IHCthMpYla87MHMXwFRasOaplx40+X+tBSPMk2wj7rHMwsBIr2GAgg==\",\"salt\":\"yqXuX2HRvcBRSDbTUdiPQw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-10-07 11:01:31',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-10-07 11:01:31',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-10-07 11:01:31',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-10-07 11:01:31',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-10-07 11:01:31',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-10-07 11:01:31',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-10-07 11:01:32',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-10-07 11:01:32',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-10-07 11:01:32',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-10-07 11:01:33',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-10-07 11:01:33',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-10-07 11:01:33',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-10-07 11:01:33',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:01:33',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:01:33',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:01:33',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:01:33',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-10-07 11:01:33',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-10-07 11:01:34',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-10-07 11:01:34',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-10-07 11:01:34',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-10-07 11:01:34',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-10-07 11:01:34',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-10-07 11:01:34',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-10-07 11:01:34',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-10-07 11:01:34',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-10-07 11:01:34',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-10-07 11:01:34',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-10-07 11:01:35',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-10-07 11:01:35',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-10-07 11:01:35',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-10-07 11:01:35',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:01:35',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:01:35',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:01:35',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:01:35',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:01:35',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8266489470'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-10-07 11:01:35',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-10-07 11:01:35',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:01:35',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:01:35',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:01:35',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:01:36',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-10-07 11:01:36',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:01:36',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:01:36',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:01:36',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:01:36',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:01:36',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-10-07 11:01:36',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-10-07 11:01:36',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-10-07 11:01:36',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-10-07 11:01:36',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-10-07 11:01:36',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:01:36',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:01:36',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:01:37',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:01:37',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-10-07 11:01:37',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-10-07 11:01:37',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-10-07 11:01:37',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-10-07 11:01:37',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-10-07 11:01:37',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-10-07 11:01:37',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-10-07 11:01:37',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-10-07 11:01:38',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-10-07 11:01:38',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-10-07 11:01:38',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-10-07 11:01:38',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-10-07 11:01:38',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8266489470'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-10-07 11:01:38',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8266489470'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:01:38',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8266489470'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:01:38',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8266489470'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:01:38',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8266489470'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:01:38',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:01:38',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:01:38',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:01:38',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:01:38',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:01:38',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:01:38',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:01:38',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:01:38',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:01:38',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8266489470'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:01:38',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-10-07 11:01:38',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'8266489470'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-10-07 11:01:38',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-10-07 11:01:38',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'8266489470'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8266489470'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8266489470'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:01:38',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8266489470'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:01:38',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-10-07 11:01:38',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-10-07 11:01:38',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-10-07 11:01:38',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-10-07 11:01:38',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-10-07 11:01:38',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-10-07 11:01:38',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8266489470'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-10-07 11:01:38',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-10-07 11:01:38',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-10-07 11:01:38',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8266489470'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-10-07 11:01:38',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-10-07 11:01:38',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-10-07 11:01:38',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-10-07 11:01:38',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'8266489470'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-10-07 11:01:38',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:01:38',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:01:38',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:01:38',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:01:38',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-10-07 11:01:38',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-10-07 11:01:38',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-10-07 11:01:38',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8266489470');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('9dd2268c-42da-4e99-b9ce-40b751259146','004a00fc-9807-460d-83fb-cb8c03b18eaf',1),('9dd2268c-42da-4e99-b9ce-40b751259146','1a2db67b-2752-4846-b050-c7180acf0f18',0),('9dd2268c-42da-4e99-b9ce-40b751259146','23c788b7-4b24-4465-bb0b-a7de8d54952f',0),('9dd2268c-42da-4e99-b9ce-40b751259146','63dd2d93-1121-41d7-8dbd-0ec5fa46e36d',1),('9dd2268c-42da-4e99-b9ce-40b751259146','6fd234bf-e075-45a9-b653-5cfdf0687853',0),('9dd2268c-42da-4e99-b9ce-40b751259146','a852180a-9f68-46b4-aec6-23dd91bffa5a',1),('9dd2268c-42da-4e99-b9ce-40b751259146','c201328c-03ac-4d31-b82d-7fd11f8bb603',1),('9dd2268c-42da-4e99-b9ce-40b751259146','c3e70d19-ff43-4f5b-87d5-c61ddd0bc841',1),('9dd2268c-42da-4e99-b9ce-40b751259146','c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf',0),('9dd2268c-42da-4e99-b9ce-40b751259146','ec4d42ae-d90c-472c-bf66-069ab4bb7574',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('05230728-743e-4871-a978-3adb10abeeb8','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_view-clients}','view-clients','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('0ffcb777-048f-4e86-b858-bad29fa7b55d','9dd2268c-42da-4e99-b9ce-40b751259146',0,'${role_offline-access}','offline_access','9dd2268c-42da-4e99-b9ce-40b751259146',NULL,NULL),('1a52a93e-8531-416b-8885-8e40504c6898','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_manage-realm}','manage-realm','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('1c45f026-0085-43f0-afe9-d07575c2c7f5','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_manage-users}','manage-users','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('26fe97f9-898c-4b44-81a0-45e56bf3fae8','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_view-events}','view-events','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('28ec5a85-3291-4de5-8db5-dc2bbb2a6482','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_query-groups}','query-groups','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('2a34b7b0-bf53-4e7f-8503-f4aaa8bd985c','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_delete-account}','delete-account','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('2eeda92d-0600-4e9b-bc9b-aba683e77862','9dd2268c-42da-4e99-b9ce-40b751259146',0,'${role_create-realm}','create-realm','9dd2268c-42da-4e99-b9ce-40b751259146',NULL,NULL),('452ebb9c-8f32-4767-b5f6-6962c349f093','f37ac1b8-03cb-4ce5-ad09-7526f7ad479c',1,'${role_read-token}','read-token','9dd2268c-42da-4e99-b9ce-40b751259146','f37ac1b8-03cb-4ce5-ad09-7526f7ad479c',NULL),('4558cf57-ad98-471e-ab1f-c9834abc4b4c','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_query-users}','query-users','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('4790f5a5-c50d-4c95-9a97-efdaaaf15ec2','9dd2268c-42da-4e99-b9ce-40b751259146',0,'${role_uma_authorization}','uma_authorization','9dd2268c-42da-4e99-b9ce-40b751259146',NULL,NULL),('4809513e-77be-42f0-ba89-9828b0420cae','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_manage-authorization}','manage-authorization','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('6fcb184a-5ade-41a6-8bb4-8b9de521b00f','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_view-profile}','view-profile','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('772408bc-4860-490a-9a08-23a89a958baf','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_view-consent}','view-consent','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('93dbb2c6-f699-4a68-ae38-560955c2e863','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_view-applications}','view-applications','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('968f9cea-cf92-4ba4-8c99-8beef31fae84','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_query-realms}','query-realms','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','9dd2268c-42da-4e99-b9ce-40b751259146',0,'${role_admin}','admin','9dd2268c-42da-4e99-b9ce-40b751259146',NULL,NULL),('9a9eaa61-32ba-4e76-9b54-c7a09db409f0','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_query-clients}','query-clients','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('9db26701-bc39-4099-8d60-1f5c95064014','9dd2268c-42da-4e99-b9ce-40b751259146',0,'${role_default-roles}','default-roles-master','9dd2268c-42da-4e99-b9ce-40b751259146',NULL,NULL),('b3d587e2-7da6-4cf2-bd2b-1cf093337c92','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_manage-clients}','manage-clients','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('c88f76b3-ad11-4be9-813a-45e2fc9f7235','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_view-users}','view-users','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('c9bdcf40-2699-474d-a1ce-67a10c8e3bde','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_manage-consent}','manage-consent','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('cc34e658-1259-47f9-908c-8b96a40c7de2','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_manage-account}','manage-account','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('cf923a7b-f5a8-43e2-814a-1974f9f22de8','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_view-realm}','view-realm','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('dba9af0b-b7e4-4542-8b7b-9da3954c4a16','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_impersonation}','impersonation','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('e03f14dc-f2a2-40e9-bdcc-ec836ba05670','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_manage-identity-providers}','manage-identity-providers','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('e2523193-991b-4f69-bbe4-766b5f5a0653','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_manage-events}','manage-events','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('e26892cd-99ec-45fe-b294-c43d6c2956b6','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_manage-account-links}','manage-account-links','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('e66e473f-32cb-4967-8f5b-97dbaa5c21e2','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_create-client}','create-client','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('e701f666-6b3d-41bb-9665-780f2b0deeaa','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_view-authorization}','view-authorization','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL),('ee4c61dc-ddf9-47ff-996e-b329029b8682','db585ebd-a0fb-449a-bbc4-a251e8b27fad',1,'${role_view-groups}','view-groups','9dd2268c-42da-4e99-b9ce-40b751259146','db585ebd-a0fb-449a-bbc4-a251e8b27fad',NULL),('fd698fcf-9279-4ed6-8b90-bd463482aa3a','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1,'${role_view-identity-providers}','view-identity-providers','9dd2268c-42da-4e99-b9ce-40b751259146','99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('8w1yj','24.0.5',1728266499);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('1ca87991-8e20-4ecd-a980-66495765ec9d','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02',NULL),('2a1ed096-32a4-409c-a195-6735056ed306','full name','openid-connect','oidc-full-name-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('344673d4-7e0d-4acc-8cd3-36627304ca47','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02',NULL),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('367c014c-06f7-4992-bd0b-0a7507429ef9','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf'),('3bc16f86-0959-49da-9605-5af3866d2796','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c3e70d19-ff43-4f5b-87d5-c61ddd0bc841'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'6fd234bf-e075-45a9-b653-5cfdf0687853'),('47256d58-0654-489a-825a-d5a044d8beab','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('4b0f76c4-e9f2-4c42-b982-488f5acc2fe6','audience resolve','openid-connect','oidc-audience-resolve-mapper','83693928-0408-449c-9544-a02104d84830',NULL),('54992a7c-1b63-413d-9d2d-b4299ef9b182','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'c3e70d19-ff43-4f5b-87d5-c61ddd0bc841'),('58b3d6de-9198-424b-81bd-6b3004769226','role list','saml','saml-role-list-mapper',NULL,'004a00fc-9807-460d-83fb-cb8c03b18eaf'),('6a56c735-739b-4553-96b8-8208f74672c5','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'c201328c-03ac-4d31-b82d-7fd11f8bb603'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fd234bf-e075-45a9-b653-5cfdf0687853'),('70494594-0835-4519-a491-296b3afebb66','address','openid-connect','oidc-address-mapper',NULL,'23c788b7-4b24-4465-bb0b-a7de8d54952f'),('7b5236ed-1829-48b9-a1f0-1d604fc65efe','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'63dd2d93-1121-41d7-8dbd-0ec5fa46e36d'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('90ea9400-3b1c-4102-9204-5f25220e4228','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('9d203021-fbd7-427d-833e-3cc39544b724','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c201328c-03ac-4d31-b82d-7fd11f8bb603'),('bb629926-0eeb-4e49-8e18-185f903a78f8','acr loa level','openid-connect','oidc-acr-mapper',NULL,'a852180a-9f68-46b4-aec6-23dd91bffa5a'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02',NULL),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c498f76e-6cd6-4e7c-ba4a-a0f65b8443bf'),('d735120a-08c4-495f-9c39-4248ea204012','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','locale','openid-connect','oidc-usermodel-attribute-mapper','ab82c3a4-56c4-4396-901c-04e5e4368138',NULL),('fb67a4cc-fbd5-430b-9bcf-48696163c350','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'c3e70d19-ff43-4f5b-87d5-c61ddd0bc841'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ec4d42ae-d90c-472c-bf66-069ab4bb7574');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('1ca87991-8e20-4ecd-a980-66495765ec9d','true','access.token.claim'),('1ca87991-8e20-4ecd-a980-66495765ec9d','website','claim.name'),('1ca87991-8e20-4ecd-a980-66495765ec9d','true','id.token.claim'),('1ca87991-8e20-4ecd-a980-66495765ec9d','true','introspection.token.claim'),('1ca87991-8e20-4ecd-a980-66495765ec9d','String','jsonType.label'),('1ca87991-8e20-4ecd-a980-66495765ec9d','website','user.attribute'),('1ca87991-8e20-4ecd-a980-66495765ec9d','true','userinfo.token.claim'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','true','access.token.claim'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','clientAddress','claim.name'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','true','id.token.claim'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','String','jsonType.label'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','clientAddress','user.session.note'),('1e189e6b-7531-485c-9931-5e1513cdd2ea','true','userinfo.token.claim'),('2a1ed096-32a4-409c-a195-6735056ed306','true','access.token.claim'),('2a1ed096-32a4-409c-a195-6735056ed306','true','id.token.claim'),('2a1ed096-32a4-409c-a195-6735056ed306','true','introspection.token.claim'),('2a1ed096-32a4-409c-a195-6735056ed306','true','userinfo.token.claim'),('344673d4-7e0d-4acc-8cd3-36627304ca47','true','access.token.claim'),('344673d4-7e0d-4acc-8cd3-36627304ca47','clientId','claim.name'),('344673d4-7e0d-4acc-8cd3-36627304ca47','true','id.token.claim'),('344673d4-7e0d-4acc-8cd3-36627304ca47','String','jsonType.label'),('344673d4-7e0d-4acc-8cd3-36627304ca47','clientId','user.session.note'),('344673d4-7e0d-4acc-8cd3-36627304ca47','true','userinfo.token.claim'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','true','access.token.claim'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','middle_name','claim.name'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','true','id.token.claim'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','true','introspection.token.claim'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','String','jsonType.label'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','middleName','user.attribute'),('367a59e0-5b7a-47d5-a23a-5d3c138ff64b','true','userinfo.token.claim'),('367c014c-06f7-4992-bd0b-0a7507429ef9','true','access.token.claim'),('367c014c-06f7-4992-bd0b-0a7507429ef9','locale','claim.name'),('367c014c-06f7-4992-bd0b-0a7507429ef9','true','id.token.claim'),('367c014c-06f7-4992-bd0b-0a7507429ef9','true','introspection.token.claim'),('367c014c-06f7-4992-bd0b-0a7507429ef9','String','jsonType.label'),('367c014c-06f7-4992-bd0b-0a7507429ef9','locale','user.attribute'),('367c014c-06f7-4992-bd0b-0a7507429ef9','true','userinfo.token.claim'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','true','access.token.claim'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','phone_number_verified','claim.name'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','true','id.token.claim'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','true','introspection.token.claim'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','boolean','jsonType.label'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','phoneNumberVerified','user.attribute'),('3a523c2e-4a80-4d5f-baea-cb39ffcb75a8','true','userinfo.token.claim'),('3bc16f86-0959-49da-9605-5af3866d2796','true','access.token.claim'),('3bc16f86-0959-49da-9605-5af3866d2796','realm_access.roles','claim.name'),('3bc16f86-0959-49da-9605-5af3866d2796','true','introspection.token.claim'),('3bc16f86-0959-49da-9605-5af3866d2796','String','jsonType.label'),('3bc16f86-0959-49da-9605-5af3866d2796','true','multivalued'),('3bc16f86-0959-49da-9605-5af3866d2796','foo','user.attribute'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','true','access.token.claim'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','groups','claim.name'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','true','id.token.claim'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','true','introspection.token.claim'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','String','jsonType.label'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','true','multivalued'),('3d9b92e9-0794-4557-ae8d-d81af6b4fe49','foo','user.attribute'),('47256d58-0654-489a-825a-d5a044d8beab','true','access.token.claim'),('47256d58-0654-489a-825a-d5a044d8beab','family_name','claim.name'),('47256d58-0654-489a-825a-d5a044d8beab','true','id.token.claim'),('47256d58-0654-489a-825a-d5a044d8beab','true','introspection.token.claim'),('47256d58-0654-489a-825a-d5a044d8beab','String','jsonType.label'),('47256d58-0654-489a-825a-d5a044d8beab','lastName','user.attribute'),('47256d58-0654-489a-825a-d5a044d8beab','true','userinfo.token.claim'),('54992a7c-1b63-413d-9d2d-b4299ef9b182','true','access.token.claim'),('54992a7c-1b63-413d-9d2d-b4299ef9b182','true','introspection.token.claim'),('58b3d6de-9198-424b-81bd-6b3004769226','Role','attribute.name'),('58b3d6de-9198-424b-81bd-6b3004769226','Basic','attribute.nameformat'),('58b3d6de-9198-424b-81bd-6b3004769226','false','single'),('6a56c735-739b-4553-96b8-8208f74672c5','true','access.token.claim'),('6a56c735-739b-4553-96b8-8208f74672c5','email_verified','claim.name'),('6a56c735-739b-4553-96b8-8208f74672c5','true','id.token.claim'),('6a56c735-739b-4553-96b8-8208f74672c5','true','introspection.token.claim'),('6a56c735-739b-4553-96b8-8208f74672c5','boolean','jsonType.label'),('6a56c735-739b-4553-96b8-8208f74672c5','emailVerified','user.attribute'),('6a56c735-739b-4553-96b8-8208f74672c5','true','userinfo.token.claim'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','true','access.token.claim'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','upn','claim.name'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','true','id.token.claim'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','true','introspection.token.claim'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','String','jsonType.label'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','username','user.attribute'),('6b1c2633-d9aa-4fa5-a262-7e385dd085b9','true','userinfo.token.claim'),('70494594-0835-4519-a491-296b3afebb66','true','access.token.claim'),('70494594-0835-4519-a491-296b3afebb66','true','id.token.claim'),('70494594-0835-4519-a491-296b3afebb66','true','introspection.token.claim'),('70494594-0835-4519-a491-296b3afebb66','country','user.attribute.country'),('70494594-0835-4519-a491-296b3afebb66','formatted','user.attribute.formatted'),('70494594-0835-4519-a491-296b3afebb66','locality','user.attribute.locality'),('70494594-0835-4519-a491-296b3afebb66','postal_code','user.attribute.postal_code'),('70494594-0835-4519-a491-296b3afebb66','region','user.attribute.region'),('70494594-0835-4519-a491-296b3afebb66','street','user.attribute.street'),('70494594-0835-4519-a491-296b3afebb66','true','userinfo.token.claim'),('7b5236ed-1829-48b9-a1f0-1d604fc65efe','true','access.token.claim'),('7b5236ed-1829-48b9-a1f0-1d604fc65efe','true','introspection.token.claim'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','true','access.token.claim'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','picture','claim.name'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','true','id.token.claim'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','true','introspection.token.claim'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','String','jsonType.label'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','picture','user.attribute'),('86196492-3ea8-4383-9f95-fcbf2f767ac4','true','userinfo.token.claim'),('90ea9400-3b1c-4102-9204-5f25220e4228','true','access.token.claim'),('90ea9400-3b1c-4102-9204-5f25220e4228','gender','claim.name'),('90ea9400-3b1c-4102-9204-5f25220e4228','true','id.token.claim'),('90ea9400-3b1c-4102-9204-5f25220e4228','true','introspection.token.claim'),('90ea9400-3b1c-4102-9204-5f25220e4228','String','jsonType.label'),('90ea9400-3b1c-4102-9204-5f25220e4228','gender','user.attribute'),('90ea9400-3b1c-4102-9204-5f25220e4228','true','userinfo.token.claim'),('9d203021-fbd7-427d-833e-3cc39544b724','true','access.token.claim'),('9d203021-fbd7-427d-833e-3cc39544b724','birthdate','claim.name'),('9d203021-fbd7-427d-833e-3cc39544b724','true','id.token.claim'),('9d203021-fbd7-427d-833e-3cc39544b724','true','introspection.token.claim'),('9d203021-fbd7-427d-833e-3cc39544b724','String','jsonType.label'),('9d203021-fbd7-427d-833e-3cc39544b724','birthdate','user.attribute'),('9d203021-fbd7-427d-833e-3cc39544b724','true','userinfo.token.claim'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','true','access.token.claim'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','profile','claim.name'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','true','id.token.claim'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','true','introspection.token.claim'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','String','jsonType.label'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','profile','user.attribute'),('add475e1-4cc0-402d-add4-3d9fb1a28a95','true','userinfo.token.claim'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','true','access.token.claim'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','given_name','claim.name'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','true','id.token.claim'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','true','introspection.token.claim'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','String','jsonType.label'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','firstName','user.attribute'),('b23edbb3-2fbc-40d2-a965-129011c9f02a','true','userinfo.token.claim'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','true','access.token.claim'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','email','claim.name'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','true','id.token.claim'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','true','introspection.token.claim'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','String','jsonType.label'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','email','user.attribute'),('b42b7fdd-4778-447d-8ebe-7d7df9b766b7','true','userinfo.token.claim'),('bb629926-0eeb-4e49-8e18-185f903a78f8','true','access.token.claim'),('bb629926-0eeb-4e49-8e18-185f903a78f8','true','id.token.claim'),('bb629926-0eeb-4e49-8e18-185f903a78f8','true','introspection.token.claim'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','true','access.token.claim'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','nickname','claim.name'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','true','id.token.claim'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','true','introspection.token.claim'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','String','jsonType.label'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','nickname','user.attribute'),('bbdce2fe-939a-4ba3-bd1f-9d43e9da480c','true','userinfo.token.claim'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','true','access.token.claim'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','clientHost','claim.name'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','true','id.token.claim'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','String','jsonType.label'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','clientHost','user.session.note'),('c2ae626a-05e7-47d4-99f8-0db0be6768e4','true','userinfo.token.claim'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','true','access.token.claim'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','phone_number','claim.name'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','true','id.token.claim'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','true','introspection.token.claim'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','String','jsonType.label'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','phoneNumber','user.attribute'),('d32d40b0-26b5-45f8-80c8-eaa6ccf317f2','true','userinfo.token.claim'),('d735120a-08c4-495f-9c39-4248ea204012','true','access.token.claim'),('d735120a-08c4-495f-9c39-4248ea204012','updated_at','claim.name'),('d735120a-08c4-495f-9c39-4248ea204012','true','id.token.claim'),('d735120a-08c4-495f-9c39-4248ea204012','true','introspection.token.claim'),('d735120a-08c4-495f-9c39-4248ea204012','long','jsonType.label'),('d735120a-08c4-495f-9c39-4248ea204012','updatedAt','user.attribute'),('d735120a-08c4-495f-9c39-4248ea204012','true','userinfo.token.claim'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','true','access.token.claim'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','locale','claim.name'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','true','id.token.claim'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','true','introspection.token.claim'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','String','jsonType.label'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','locale','user.attribute'),('f58d25f1-70b0-40f8-9e84-5e39eb81dfdf','true','userinfo.token.claim'),('fb67a4cc-fbd5-430b-9bcf-48696163c350','true','access.token.claim'),('fb67a4cc-fbd5-430b-9bcf-48696163c350','resource_access.${client_id}.roles','claim.name'),('fb67a4cc-fbd5-430b-9bcf-48696163c350','true','introspection.token.claim'),('fb67a4cc-fbd5-430b-9bcf-48696163c350','String','jsonType.label'),('fb67a4cc-fbd5-430b-9bcf-48696163c350','true','multivalued'),('fb67a4cc-fbd5-430b-9bcf-48696163c350','foo','user.attribute'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','true','access.token.claim'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','zoneinfo','claim.name'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','true','id.token.claim'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','true','introspection.token.claim'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','String','jsonType.label'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','zoneinfo','user.attribute'),('fe488c77-b822-4aaf-b8ee-c22a6d567bea','true','userinfo.token.claim'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','true','access.token.claim'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','preferred_username','claim.name'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','true','id.token.claim'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','true','introspection.token.claim'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','String','jsonType.label'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','username','user.attribute'),('ffc5999b-811a-48a2-81d9-d843e49fbc10','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('9dd2268c-42da-4e99-b9ce-40b751259146',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'99a0c59c-5bdf-4d2b-b30a-88e1ae8a3324',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','d304d4c6-e8be-42e6-afaf-853e35f2861e','a390c586-abe1-47ad-ba0b-327fd2b4f07b','f2a20430-9ed7-4d02-9b9f-1ebb636d2988','560b36ee-755e-4bf9-a656-6b20d078fd21','a86b39f7-876d-485d-8d12-1619457d6d3f',31536000,0,900,1,0,'f81daec5-b880-4b24-acdd-1127c259205d',0,0,0,0,'9db26701-bc39-4099-8d60-1f5c95064014');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','9dd2268c-42da-4e99-b9ce-40b751259146','false'),('cibaAuthRequestedUserHint','9dd2268c-42da-4e99-b9ce-40b751259146','login_hint'),('cibaBackchannelTokenDeliveryMode','9dd2268c-42da-4e99-b9ce-40b751259146','poll'),('cibaExpiresIn','9dd2268c-42da-4e99-b9ce-40b751259146','120'),('cibaInterval','9dd2268c-42da-4e99-b9ce-40b751259146','5'),('defaultSignatureAlgorithm','9dd2268c-42da-4e99-b9ce-40b751259146','RS256'),('displayName','9dd2268c-42da-4e99-b9ce-40b751259146','Keycloak'),('displayNameHtml','9dd2268c-42da-4e99-b9ce-40b751259146','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','9dd2268c-42da-4e99-b9ce-40b751259146','30'),('firstBrokerLoginFlowId','9dd2268c-42da-4e99-b9ce-40b751259146','0bf73a54-820a-4591-a835-00ffebb51a72'),('maxDeltaTimeSeconds','9dd2268c-42da-4e99-b9ce-40b751259146','43200'),('maxFailureWaitSeconds','9dd2268c-42da-4e99-b9ce-40b751259146','900'),('maxTemporaryLockouts','9dd2268c-42da-4e99-b9ce-40b751259146','0'),('minimumQuickLoginWaitSeconds','9dd2268c-42da-4e99-b9ce-40b751259146','60'),('oauth2DeviceCodeLifespan','9dd2268c-42da-4e99-b9ce-40b751259146','600'),('oauth2DevicePollingInterval','9dd2268c-42da-4e99-b9ce-40b751259146','5'),('offlineSessionMaxLifespan','9dd2268c-42da-4e99-b9ce-40b751259146','31536000'),('offlineSessionMaxLifespanEnabled','9dd2268c-42da-4e99-b9ce-40b751259146','true'),('parRequestUriLifespan','9dd2268c-42da-4e99-b9ce-40b751259146','60'),('permanentLockout','9dd2268c-42da-4e99-b9ce-40b751259146','false'),('quickLoginCheckMilliSeconds','9dd2268c-42da-4e99-b9ce-40b751259146','1000'),('realmReusableOtpCode','9dd2268c-42da-4e99-b9ce-40b751259146','false'),('waitIncrementSeconds','9dd2268c-42da-4e99-b9ce-40b751259146','60'),('_browser_header.contentSecurityPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','9dd2268c-42da-4e99-b9ce-40b751259146',''),('_browser_header.referrerPolicy','9dd2268c-42da-4e99-b9ce-40b751259146','no-referrer'),('_browser_header.strictTransportSecurity','9dd2268c-42da-4e99-b9ce-40b751259146','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','9dd2268c-42da-4e99-b9ce-40b751259146','nosniff'),('_browser_header.xFrameOptions','9dd2268c-42da-4e99-b9ce-40b751259146','SAMEORIGIN'),('_browser_header.xRobotsTag','9dd2268c-42da-4e99-b9ce-40b751259146','none'),('_browser_header.xXSSProtection','9dd2268c-42da-4e99-b9ce-40b751259146','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('9dd2268c-42da-4e99-b9ce-40b751259146','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'9dd2268c-42da-4e99-b9ce-40b751259146');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('9dd2268c-42da-4e99-b9ce-40b751259146','en'),('9dd2268c-42da-4e99-b9ce-40b751259146','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('181b681d-1ba3-4aa7-8898-e109f9dbf470','/*'),('83693928-0408-449c-9544-a02104d84830','/realms/master/account/*'),('ab82c3a4-56c4-4396-901c-04e5e4368138','/admin/master/console/*'),('db585ebd-a0fb-449a-bbc4-a251e8b27fad','/realms/master/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0e0b89e8-ea55-462b-a48e-c1f129bfb9bc','UPDATE_PASSWORD','Update Password','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'UPDATE_PASSWORD',30),('29db9190-04aa-40c4-a9e8-d1edae372b8d','TERMS_AND_CONDITIONS','Terms and Conditions','9dd2268c-42da-4e99-b9ce-40b751259146',0,0,'TERMS_AND_CONDITIONS',20),('2b11ce4d-a537-430b-ad59-31a89f6f57ce','CONFIGURE_TOTP','Configure OTP','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'CONFIGURE_TOTP',10),('3167918f-6dec-46bb-a25b-ca830bb94288','VERIFY_PROFILE','Verify Profile','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'VERIFY_PROFILE',90),('46403115-81d4-47d2-aeef-263c9d249892','UPDATE_PROFILE','Update Profile','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'UPDATE_PROFILE',40),('6af30da2-50f6-4a78-b1ca-575f55c79eea','delete_account','Delete Account','9dd2268c-42da-4e99-b9ce-40b751259146',0,0,'delete_account',60),('6d485964-02b4-40b8-90e7-1a11567a6ae3','webauthn-register-passwordless','Webauthn Register Passwordless','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'webauthn-register-passwordless',80),('a33636ad-55f0-4ab1-852c-6c0c31539a59','VERIFY_EMAIL','Verify Email','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'VERIFY_EMAIL',50),('b9aef694-c42c-4828-9a6d-006943d5ae0b','delete_credential','Delete Credential','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'delete_credential',100),('fcfd78f6-d671-4262-9be8-7d5c34c9a9d5','webauthn-register','Webauthn Register','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'webauthn-register',70),('fd06aaa4-3630-41a0-b138-ae95c3379c92','update_user_locale','Update User Locale','9dd2268c-42da-4e99-b9ce-40b751259146',1,0,'update_user_locale',1000);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('83693928-0408-449c-9544-a02104d84830','cc34e658-1259-47f9-908c-8b96a40c7de2'),('83693928-0408-449c-9544-a02104d84830','ee4c61dc-ddf9-47ff-996e-b329029b8682');
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
INSERT INTO `USER_ENTITY` VALUES ('52455306-81bf-4362-8e40-c77f86b92727',NULL,'d6259a2f-2bc2-4e76-a700-6b4df966fdd2',0,1,NULL,NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','admin',1728266501694,NULL,0),('ac4fb252-7c2f-4818-a08f-155de3ffe84e',NULL,'eb9d7128-c93f-4ff8-aa47-36ae2f6b3ebd',0,1,NULL,NULL,NULL,'9dd2268c-42da-4e99-b9ce-40b751259146','service-account-_platform',1728266507998,'ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('98be1be2-13da-47c9-b0bc-932a31d5f8dd','52455306-81bf-4362-8e40-c77f86b92727'),('98be1be2-13da-47c9-b0bc-932a31d5f8dd','ac4fb252-7c2f-4818-a08f-155de3ffe84e'),('9db26701-bc39-4099-8d60-1f5c95064014','52455306-81bf-4362-8e40-c77f86b92727'),('9db26701-bc39-4099-8d60-1f5c95064014','ac4fb252-7c2f-4818-a08f-155de3ffe84e');
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
INSERT INTO `WEB_ORIGINS` VALUES ('ab82c3a4-56c4-4396-901c-04e5e4368138','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-10-07 11:01:54','dummy','2024-10-07 11:01:54','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2024-10-07 11:01:48','dummy','2024-10-07 11:01:48','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-10-07 11:01:48.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-10-07 11:01:48.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-10-07 11:01:47','system','2024-10-07 11:01:47','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-10-07 11:01:54','dummy','2024-10-07 11:01:54','dummy'),('ita.organization.common.upload_file_size_limit','{\"description\": \"Maximum byte size of upload file for organization default\", \"max\": 107374182400}','2024-10-07 11:01:55','dummy','2024-10-07 11:01:55','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-10-07 11:01:47','system','2024-10-07 11:01:48','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-10-07 11:01:47','system','2024-10-07 11:01:48','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-10-07 11:01:47','system','2024-10-07 11:01:48','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-10-07 11:01:54','dummy','2024-10-07 11:01:54','dummy'),('_default','ita.organization.common.upload_file_size_limit',104857600,'2024-10-07 11:01:55','dummy','2024-10-07 11:01:55','dummy'),('_default','platform.roles',1000,'2024-10-07 11:01:47','system','2024-10-07 11:01:47','system'),('_default','platform.users',10000,'2024-10-07 11:01:47','system','2024-10-07 11:01:47','system'),('_default','platform.workspaces',100,'2024-10-07 11:01:47','system','2024-10-07 11:01:47','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-10-07 11:01:46','1.9.0','2024-10-07 11:01:46','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(3,'1.5.0','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(5,'1.5.2','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(7,'1.6.0','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(9,'1.7.0','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(11,'1.8.0','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(13,'1.8.1','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(15,'1.8.100','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(16,'1.8.100','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(17,'1.9.0','START',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-10-07 11:01:48','1.9.0','2024-10-07 11:01:48','1.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"ae8d47ec-fcd8-4f65-a151-57a7e7fcdc02\", \"TOKEN_CHECK_CLIENT_SECRET\": \"KhqnS5zTLCcjVC1OIui6wwZEsmJ8tN1J\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"7a015574-371d-4fdf-aa1e-19e0dfd2e116\"}','2024-10-07 11:01:48','system','2024-10-07 11:01:48','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.10.0','2024-10-07 11:01:09','system','2024-10-07 11:01:48','1.10.0');
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

-- Dump completed on 2024-10-07 11:16:33
SET foreign_key_checks = 1;
