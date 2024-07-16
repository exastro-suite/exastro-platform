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
-- MySQL dump 10.13  Distrib 8.0.38, for Linux (x86_64)
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('134a46f2-b870-44a1-aeba-b7a4a208e2b9',NULL,'identity-provider-redirector','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','70500993-06d0-415f-8157-7d2e93050bac',2,25,0,NULL,NULL),('19d89b34-bdd3-4a61-820e-6f3f5b9fb98d',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','cc82fd1c-8e3e-4147-9445-1f46a670e7dc',1,20,1,'25afd5ed-5b97-4d34-8c49-92eb6ce42160',NULL),('1d56c7d6-104d-4826-a425-e1ffa2604160',NULL,'registration-terms-and-conditions','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','fd329d60-111b-4c3f-a917-7319978e0c2a',3,70,0,NULL,NULL),('29fce840-fef7-4e96-b68f-429204e152c4',NULL,'reset-otp','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','aeeb0e43-5f99-43c7-a605-4ce64f6d3cee',0,20,0,NULL,NULL),('35900804-7213-4083-8fa7-504804ef533e',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','70500993-06d0-415f-8157-7d2e93050bac',2,30,1,'beef187b-f71b-413b-8495-291aaa0e0f0e',NULL),('3aad47df-5ef3-4426-ab60-7d5e7deb541f',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','91430fc3-42b6-44af-8205-6a678b16a19e',0,20,1,'ffe8b92d-fd54-4e74-b32a-78f2ec4f316b',NULL),('418040e2-8b75-4e1e-965f-f0ccf089e273',NULL,'conditional-user-configured','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','aeeb0e43-5f99-43c7-a605-4ce64f6d3cee',0,10,0,NULL,NULL),('455938ca-a1e1-4f2b-8a95-351356ce7b5a',NULL,'direct-grant-validate-password','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','4b029d44-420a-4990-aada-531f3418fb3f',0,20,0,NULL,NULL),('4700a6ca-ec8f-40a0-af1e-d3b2eaca84df',NULL,'idp-create-user-if-unique','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','ffe8b92d-fd54-4e74-b32a-78f2ec4f316b',2,10,0,NULL,'fbe8b5f8-33af-48ae-a5eb-8d8996e16cba'),('49c0bb58-977c-4a73-a801-89227d2d34e9',NULL,'auth-username-password-form','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','beef187b-f71b-413b-8495-291aaa0e0f0e',0,10,0,NULL,NULL),('4b5cc0e6-f8c9-498f-833b-95124db2c062',NULL,'idp-confirm-link','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','023b57e6-dfa2-470f-8cdc-5d31b34f7d93',0,10,0,NULL,NULL),('51a36cd8-549d-4441-bb5f-c22288e2cb17',NULL,'registration-user-creation','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','fd329d60-111b-4c3f-a917-7319978e0c2a',0,20,0,NULL,NULL),('5ddd2442-9e6a-4598-ae3a-a151aef836dd',NULL,'conditional-user-configured','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','69b74e34-fc78-4eaf-9d62-7cd9c71364e3',0,10,0,NULL,NULL),('63bcfcdf-3b7c-4b23-b0f8-5399c055847d',NULL,'client-secret','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a8c13158-6a34-43f7-bc6f-fdfedbdd6518',2,10,0,NULL,NULL),('661aff97-c30a-41af-a5da-bf0c61494ef5',NULL,'http-basic-authenticator','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','e0c90caa-b365-4009-9f25-7b8320cf0f2e',0,10,0,NULL,NULL),('6d4fb39a-570b-4758-9d65-9d0c83308f0b',NULL,'direct-grant-validate-otp','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','7a546213-6e11-43bf-b468-fdb463f9a96e',0,20,0,NULL,NULL),('6f2d4a51-db36-4e83-bdb5-13f37fc7b82d',NULL,'auth-otp-form','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','69b74e34-fc78-4eaf-9d62-7cd9c71364e3',0,20,0,NULL,NULL),('77d8656d-8d4a-4f7f-8af4-789104667549',NULL,'client-jwt','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a8c13158-6a34-43f7-bc6f-fdfedbdd6518',2,20,0,NULL,NULL),('7bf086f3-111f-4fa2-842e-8422b23bea09',NULL,'reset-credential-email','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a4e447ba-335d-4984-a819-96af275c7a9f',0,20,0,NULL,NULL),('813f019d-772b-432b-a3c6-75878740b61e',NULL,'client-secret-jwt','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a8c13158-6a34-43f7-bc6f-fdfedbdd6518',2,30,0,NULL,NULL),('929e8796-c41f-4a78-aa90-4811c2a6d889',NULL,'conditional-user-configured','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','25afd5ed-5b97-4d34-8c49-92eb6ce42160',0,10,0,NULL,NULL),('942f9a2c-2820-4ec0-a249-9e8808b43c5c',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','4b029d44-420a-4990-aada-531f3418fb3f',1,30,1,'7a546213-6e11-43bf-b468-fdb463f9a96e',NULL),('9541ff86-c0d7-4004-b53b-a428a268369d',NULL,'idp-review-profile','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','91430fc3-42b6-44af-8205-6a678b16a19e',0,10,0,NULL,'53dabf23-6184-4eb0-98a0-61dc83856d17'),('9b3c9fb9-0fbe-4076-b787-8528cd0bb11d',NULL,'registration-recaptcha-action','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','fd329d60-111b-4c3f-a917-7319978e0c2a',3,60,0,NULL,NULL),('a450d861-d672-4dcf-9fd5-8460ecd7049e',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','ffe8b92d-fd54-4e74-b32a-78f2ec4f316b',2,20,1,'023b57e6-dfa2-470f-8cdc-5d31b34f7d93',NULL),('a4565337-2129-4347-90ee-0e00954145f3',NULL,'auth-cookie','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','70500993-06d0-415f-8157-7d2e93050bac',2,10,0,NULL,NULL),('abb90d5a-d03b-4730-b23b-a9caed3e3824',NULL,'client-x509','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a8c13158-6a34-43f7-bc6f-fdfedbdd6518',2,40,0,NULL,NULL),('b8a5f82f-3028-43c2-80f2-914bb600de0d',NULL,'registration-page-form','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','1eea0ede-eae6-4c82-997d-7c35c494f31e',0,10,1,'fd329d60-111b-4c3f-a917-7319978e0c2a',NULL),('bb753fd5-6420-49ae-aa0a-c0dd925646c9',NULL,'idp-email-verification','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','b03eebf8-b8bf-4eb4-902c-e057c4217afd',2,10,0,NULL,NULL),('c053636a-076b-4a05-b720-bc12eb67f981',NULL,'conditional-user-configured','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','7a546213-6e11-43bf-b468-fdb463f9a96e',0,10,0,NULL,NULL),('c0e78d5f-5d8e-4f78-bc0d-0e4768bf8632',NULL,'direct-grant-validate-username','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','4b029d44-420a-4990-aada-531f3418fb3f',0,10,0,NULL,NULL),('c2628a20-1fef-4690-a016-f5bc15dbf09e',NULL,'reset-credentials-choose-user','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a4e447ba-335d-4984-a819-96af275c7a9f',0,10,0,NULL,NULL),('cef7c255-62a6-45e2-ab29-0614562979ee',NULL,'idp-username-password-form','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','cc82fd1c-8e3e-4147-9445-1f46a670e7dc',0,10,0,NULL,NULL),('d689aef5-1028-41ca-bb97-3f15f62e14ec',NULL,'docker-http-basic-authenticator','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','c06ec10c-755a-440a-ade0-d9e2004cdfba',0,10,0,NULL,NULL),('d70626b2-50f3-4dd2-9f7a-cc6c25d8e960',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','b03eebf8-b8bf-4eb4-902c-e057c4217afd',2,20,1,'cc82fd1c-8e3e-4147-9445-1f46a670e7dc',NULL),('db948005-8c4c-415d-8592-4451854a365e',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a4e447ba-335d-4984-a819-96af275c7a9f',1,40,1,'aeeb0e43-5f99-43c7-a605-4ce64f6d3cee',NULL),('ddc75a34-ef74-46c9-8552-2f22afd41626',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','beef187b-f71b-413b-8495-291aaa0e0f0e',1,20,1,'69b74e34-fc78-4eaf-9d62-7cd9c71364e3',NULL),('e5136e42-e396-4ba3-b6ce-de9bb7b0cd65',NULL,'registration-password-action','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','fd329d60-111b-4c3f-a917-7319978e0c2a',0,50,0,NULL,NULL),('e6005219-2698-42d9-8da7-8b416b0b4e62',NULL,'reset-password','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','a4e447ba-335d-4984-a819-96af275c7a9f',0,30,0,NULL,NULL),('e6773442-befc-42b8-bf31-4d9a6e5bc119',NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','023b57e6-dfa2-470f-8cdc-5d31b34f7d93',0,20,1,'b03eebf8-b8bf-4eb4-902c-e057c4217afd',NULL),('ee8b0e10-7fa5-4553-ad35-cbd81392dfea',NULL,'auth-spnego','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','70500993-06d0-415f-8157-7d2e93050bac',3,20,0,NULL,NULL),('fef4077c-0ace-492b-abb6-86433802a8ab',NULL,'auth-otp-form','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','25afd5ed-5b97-4d34-8c49-92eb6ce42160',0,20,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('023b57e6-dfa2-470f-8cdc-5d31b34f7d93','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('1eea0ede-eae6-4c82-997d-7c35c494f31e','registration','registration flow','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('25afd5ed-5b97-4d34-8c49-92eb6ce42160','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('4b029d44-420a-4990-aada-531f3418fb3f','direct grant','OpenID Connect Resource Owner Grant','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('69b74e34-fc78-4eaf-9d62-7cd9c71364e3','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('70500993-06d0-415f-8157-7d2e93050bac','browser','browser based authentication','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('7a546213-6e11-43bf-b468-fdb463f9a96e','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('91430fc3-42b6-44af-8205-6a678b16a19e','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('a4e447ba-335d-4984-a819-96af275c7a9f','reset credentials','Reset credentials for a user if they forgot their password or something','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('a8c13158-6a34-43f7-bc6f-fdfedbdd6518','clients','Base authentication for clients','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','client-flow',1,1),('aeeb0e43-5f99-43c7-a605-4ce64f6d3cee','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('b03eebf8-b8bf-4eb4-902c-e057c4217afd','Account verification options','Method with which to verity the existing account','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('beef187b-f71b-413b-8495-291aaa0e0f0e','forms','Username, password, otp and other auth forms.','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('c06ec10c-755a-440a-ade0-d9e2004cdfba','docker auth','Used by Docker clients to authenticate against the IDP','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('cc82fd1c-8e3e-4147-9445-1f46a670e7dc','Verify Existing Account by Re-authentication','Reauthentication of existing account','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1),('e0c90caa-b365-4009-9f25-7b8320cf0f2e','saml ecp','SAML ECP Profile Authentication Flow','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',1,1),('fd329d60-111b-4c3f-a917-7319978e0c2a','registration form','registration form','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','form-flow',0,1),('ffe8b92d-fd54-4e74-b32a-78f2ec4f316b','User creation or linking','Flow for the existing/non-existing user alternatives','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','basic-flow',0,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('53dabf23-6184-4eb0-98a0-61dc83856d17','review profile config','e4686173-cbe9-4b5a-81cb-3c9c69988d0a'),('fbe8b5f8-33af-48ae-a5eb-8d8996e16cba','create unique user config','e4686173-cbe9-4b5a-81cb-3c9c69988d0a');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('53dabf23-6184-4eb0-98a0-61dc83856d17','missing','update.profile.on.first.login'),('fbe8b5f8-33af-48ae-a5eb-8d8996e16cba','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('2176a1da-d362-402d-885b-7aa5b355a292',1,0,'_platform-console',0,1,'ugdeoFCwYLmivF5iRdgvppwYdxgoubJS',NULL,0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2a8c1b07-3e98-4a91-9781-d2887e687a40',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('906983d4-e489-4f52-b734-f3b9e4c8dd89',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('a4090246-0a4a-43a0-a6b6-6c578451a691',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('babef077-033a-4c4c-a9aa-1cf6017dd173',1,1,'_platform',0,0,'6KOFlLgmBLdxwl15QbKxPpKSzqNlKLyX',NULL,0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('2176a1da-d362-402d-885b-7aa5b355a292','backchannel.logout.revoke.offline.tokens','false'),('2176a1da-d362-402d-885b-7aa5b355a292','backchannel.logout.session.required','true'),('2176a1da-d362-402d-885b-7aa5b355a292','client.secret.creation.time','1721116651'),('2176a1da-d362-402d-885b-7aa5b355a292','client_credentials.use_refresh_token','false'),('2176a1da-d362-402d-885b-7aa5b355a292','display.on.consent.screen','false'),('2176a1da-d362-402d-885b-7aa5b355a292','exclude.session.state.from.auth.response','false'),('2176a1da-d362-402d-885b-7aa5b355a292','id.token.as.detached.signature','false'),('2176a1da-d362-402d-885b-7aa5b355a292','oauth2.device.authorization.grant.enabled','false'),('2176a1da-d362-402d-885b-7aa5b355a292','oidc.ciba.grant.enabled','false'),('2176a1da-d362-402d-885b-7aa5b355a292','post.logout.redirect.uris','/*'),('2176a1da-d362-402d-885b-7aa5b355a292','require.pushed.authorization.requests','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.artifact.binding','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.assertion.signature','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.authnstatement','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.client.signature','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.encrypt','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.force.post.binding','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.multivalued.roles','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.onetimeuse.condition','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.server.signature','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml.server.signature.keyinfo.ext','false'),('2176a1da-d362-402d-885b-7aa5b355a292','saml_force_name_id_format','false'),('2176a1da-d362-402d-885b-7aa5b355a292','tls.client.certificate.bound.access.tokens','false'),('2176a1da-d362-402d-885b-7aa5b355a292','use.refresh.tokens','true'),('2a8c1b07-3e98-4a91-9781-d2887e687a40','pkce.code.challenge.method','S256'),('2a8c1b07-3e98-4a91-9781-d2887e687a40','post.logout.redirect.uris','+'),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','pkce.code.challenge.method','S256'),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','post.logout.redirect.uris','+'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','access.token.lifespan','86400'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','acr.loa.map','{}'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','backchannel.logout.revoke.offline.tokens','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','backchannel.logout.session.required','true'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','client.session.idle.timeout','86400'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','client.session.max.lifespan','86400'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','client_credentials.use_refresh_token','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','display.on.consent.screen','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','exclude.session.state.from.auth.response','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','frontchannel.logout.session.required','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','id.token.as.detached.signature','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','oauth2.device.authorization.grant.enabled','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','oidc.ciba.grant.enabled','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','require.pushed.authorization.requests','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.allow.ecp.flow','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.artifact.binding','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.assertion.signature','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.authnstatement','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.client.signature','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.encrypt','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.force.post.binding','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.multivalued.roles','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.onetimeuse.condition','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.server.signature','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml.server.signature.keyinfo.ext','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','saml_force_name_id_format','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','tls.client.certificate.bound.access.tokens','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','token.response.type.bearer.lower-case','false'),('906983d4-e489-4f52-b734-f3b9e4c8dd89','use.refresh.tokens','true'),('babef077-033a-4c4c-a9aa-1cf6017dd173','backchannel.logout.revoke.offline.tokens','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','backchannel.logout.session.required','true'),('babef077-033a-4c4c-a9aa-1cf6017dd173','client.secret.creation.time','1721116648'),('babef077-033a-4c4c-a9aa-1cf6017dd173','client_credentials.use_refresh_token','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','display.on.consent.screen','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','exclude.session.state.from.auth.response','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','id.token.as.detached.signature','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','oauth2.device.authorization.grant.enabled','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','oidc.ciba.grant.enabled','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','require.pushed.authorization.requests','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.artifact.binding','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.assertion.signature','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.authnstatement','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.client.signature','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.encrypt','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.force.post.binding','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.multivalued.roles','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.onetimeuse.condition','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.server.signature','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml.server.signature.keyinfo.ext','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','saml_force_name_id_format','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','tls.client.certificate.bound.access.tokens','false'),('babef077-033a-4c4c-a9aa-1cf6017dd173','use.refresh.tokens','true'),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('19e0c6b4-62e8-4d2e-946d-24e7b15546b1','offline_access','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect built-in scope: offline_access','openid-connect'),('37e2bdfb-f934-49ae-9370-95c5c177946b','profile','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect built-in scope: profile','openid-connect'),('380a6412-c89d-4b52-bca4-a29b19b45ca1','role_list','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','SAML role list','saml'),('5ab49fc1-d0f0-49a2-bb00-636822655f88','phone','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect built-in scope: phone','openid-connect'),('8513542d-340b-45d9-8741-3059a4d1ce73','address','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect built-in scope: address','openid-connect'),('96ed698c-83b5-444a-8550-f9b1e2690b83','microprofile-jwt','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','Microprofile - JWT built-in scope','openid-connect'),('ab0089d0-0513-49ea-8cb1-4d20a98fcf73','email','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect built-in scope: email','openid-connect'),('ddfed24f-5cef-4a38-8b70-36d78fccc774','web-origins','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('f486e4bc-e7a7-4fee-aaf6-dbf125d6f378','acr','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('fdc284e3-a179-4b42-be85-a54aa8f7fd5a','roles','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','OpenID Connect scope for add user roles to the access token','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('19e0c6b4-62e8-4d2e-946d-24e7b15546b1','${offlineAccessScopeConsentText}','consent.screen.text'),('19e0c6b4-62e8-4d2e-946d-24e7b15546b1','true','display.on.consent.screen'),('37e2bdfb-f934-49ae-9370-95c5c177946b','${profileScopeConsentText}','consent.screen.text'),('37e2bdfb-f934-49ae-9370-95c5c177946b','true','display.on.consent.screen'),('37e2bdfb-f934-49ae-9370-95c5c177946b','true','include.in.token.scope'),('380a6412-c89d-4b52-bca4-a29b19b45ca1','${samlRoleListScopeConsentText}','consent.screen.text'),('380a6412-c89d-4b52-bca4-a29b19b45ca1','true','display.on.consent.screen'),('5ab49fc1-d0f0-49a2-bb00-636822655f88','${phoneScopeConsentText}','consent.screen.text'),('5ab49fc1-d0f0-49a2-bb00-636822655f88','true','display.on.consent.screen'),('5ab49fc1-d0f0-49a2-bb00-636822655f88','true','include.in.token.scope'),('8513542d-340b-45d9-8741-3059a4d1ce73','${addressScopeConsentText}','consent.screen.text'),('8513542d-340b-45d9-8741-3059a4d1ce73','true','display.on.consent.screen'),('8513542d-340b-45d9-8741-3059a4d1ce73','true','include.in.token.scope'),('96ed698c-83b5-444a-8550-f9b1e2690b83','false','display.on.consent.screen'),('96ed698c-83b5-444a-8550-f9b1e2690b83','true','include.in.token.scope'),('ab0089d0-0513-49ea-8cb1-4d20a98fcf73','${emailScopeConsentText}','consent.screen.text'),('ab0089d0-0513-49ea-8cb1-4d20a98fcf73','true','display.on.consent.screen'),('ab0089d0-0513-49ea-8cb1-4d20a98fcf73','true','include.in.token.scope'),('ddfed24f-5cef-4a38-8b70-36d78fccc774','','consent.screen.text'),('ddfed24f-5cef-4a38-8b70-36d78fccc774','false','display.on.consent.screen'),('ddfed24f-5cef-4a38-8b70-36d78fccc774','false','include.in.token.scope'),('f486e4bc-e7a7-4fee-aaf6-dbf125d6f378','false','display.on.consent.screen'),('f486e4bc-e7a7-4fee-aaf6-dbf125d6f378','false','include.in.token.scope'),('fdc284e3-a179-4b42-be85-a54aa8f7fd5a','${rolesScopeConsentText}','consent.screen.text'),('fdc284e3-a179-4b42-be85-a54aa8f7fd5a','true','display.on.consent.screen'),('fdc284e3-a179-4b42-be85-a54aa8f7fd5a','false','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('2176a1da-d362-402d-885b-7aa5b355a292','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('2176a1da-d362-402d-885b-7aa5b355a292','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('2176a1da-d362-402d-885b-7aa5b355a292','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('2176a1da-d362-402d-885b-7aa5b355a292','8513542d-340b-45d9-8741-3059a4d1ce73',0),('2176a1da-d362-402d-885b-7aa5b355a292','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('2176a1da-d362-402d-885b-7aa5b355a292','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('2176a1da-d362-402d-885b-7aa5b355a292','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('2176a1da-d362-402d-885b-7aa5b355a292','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','8513542d-340b-45d9-8741-3059a4d1ce73',0),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('2494687a-ce52-46eb-ae92-9750e5d0f2bd','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('2a8c1b07-3e98-4a91-9781-d2887e687a40','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('2a8c1b07-3e98-4a91-9781-d2887e687a40','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('2a8c1b07-3e98-4a91-9781-d2887e687a40','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('2a8c1b07-3e98-4a91-9781-d2887e687a40','8513542d-340b-45d9-8741-3059a4d1ce73',0),('2a8c1b07-3e98-4a91-9781-d2887e687a40','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('2a8c1b07-3e98-4a91-9781-d2887e687a40','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('2a8c1b07-3e98-4a91-9781-d2887e687a40','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('2a8c1b07-3e98-4a91-9781-d2887e687a40','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('2a8c1b07-3e98-4a91-9781-d2887e687a40','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','8513542d-340b-45d9-8741-3059a4d1ce73',0),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('906983d4-e489-4f52-b734-f3b9e4c8dd89','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('906983d4-e489-4f52-b734-f3b9e4c8dd89','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('906983d4-e489-4f52-b734-f3b9e4c8dd89','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('906983d4-e489-4f52-b734-f3b9e4c8dd89','8513542d-340b-45d9-8741-3059a4d1ce73',0),('906983d4-e489-4f52-b734-f3b9e4c8dd89','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('906983d4-e489-4f52-b734-f3b9e4c8dd89','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('906983d4-e489-4f52-b734-f3b9e4c8dd89','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('906983d4-e489-4f52-b734-f3b9e4c8dd89','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('906983d4-e489-4f52-b734-f3b9e4c8dd89','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('a4090246-0a4a-43a0-a6b6-6c578451a691','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('a4090246-0a4a-43a0-a6b6-6c578451a691','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('a4090246-0a4a-43a0-a6b6-6c578451a691','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('a4090246-0a4a-43a0-a6b6-6c578451a691','8513542d-340b-45d9-8741-3059a4d1ce73',0),('a4090246-0a4a-43a0-a6b6-6c578451a691','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('a4090246-0a4a-43a0-a6b6-6c578451a691','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('a4090246-0a4a-43a0-a6b6-6c578451a691','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('a4090246-0a4a-43a0-a6b6-6c578451a691','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('a4090246-0a4a-43a0-a6b6-6c578451a691','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('babef077-033a-4c4c-a9aa-1cf6017dd173','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('babef077-033a-4c4c-a9aa-1cf6017dd173','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('babef077-033a-4c4c-a9aa-1cf6017dd173','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('babef077-033a-4c4c-a9aa-1cf6017dd173','8513542d-340b-45d9-8741-3059a4d1ce73',0),('babef077-033a-4c4c-a9aa-1cf6017dd173','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('babef077-033a-4c4c-a9aa-1cf6017dd173','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('babef077-033a-4c4c-a9aa-1cf6017dd173','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('babef077-033a-4c4c-a9aa-1cf6017dd173','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','8513542d-340b-45d9-8741-3059a4d1ce73',0),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('c07317e2-bb2f-4dde-bc30-e54f1ceb1354','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','8513542d-340b-45d9-8741-3059a4d1ce73',0),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('19e0c6b4-62e8-4d2e-946d-24e7b15546b1','25ff44f6-9e6a-413b-8bf0-a684b5c1dd55');
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
INSERT INTO `COMPONENT` VALUES ('13a85ee4-63ab-4c75-b691-46db5f92a833','Consent Required','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','anonymous'),('4fb17b6c-86d3-4a6d-bfd1-2f459d3c2717','Allowed Client Scopes','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','anonymous'),('6ae3fcf6-783b-417c-bfe3-ea0312c82174','Full Scope Disabled','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','anonymous'),('6fb2b59a-db50-441b-89df-765355c71137','Allowed Protocol Mapper Types','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','authenticated'),('8a95b129-857f-4545-b7ec-b18b21be7d17','rsa-generated','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','rsa-generated','org.keycloak.keys.KeyProvider','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL),('9eb44776-ac2d-480c-bbb1-792cb8079931',NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL),('a05edab0-db20-4d04-9b48-b9a288a861cc','Allowed Protocol Mapper Types','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','anonymous'),('a33e222d-898e-4993-8191-740ac39c81da','aes-generated','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','aes-generated','org.keycloak.keys.KeyProvider','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL),('aeb10d90-6a69-4f0b-b1f0-a31045308170','hmac-generated-hs512','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','hmac-generated','org.keycloak.keys.KeyProvider','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL),('d5c00137-f02f-4544-af1a-82b3bf8df192','rsa-enc-generated','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','rsa-enc-generated','org.keycloak.keys.KeyProvider','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL),('db106dbd-46c7-49ae-9eb4-dc671ce9f429','Trusted Hosts','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','anonymous'),('e6c337d4-c380-4eee-91c3-4db112c1a38b','Max Clients Limit','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','anonymous'),('f2b56661-868a-49e6-a20a-e7b5242eeb55','Allowed Client Scopes','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','authenticated');
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('006aeb01-9e33-41d7-85ce-09c84cd170e2','d5c00137-f02f-4544-af1a-82b3bf8df192','privateKey','MIIEowIBAAKCAQEA/2YgwZs04Sf5vKoAV0xSTw8lPUB0c71wjbUSZySJEtxRIEaAmsLrJoYwhvH6o2zVyNfomAVTpLr8J2uTLVb+ucUlbxzuFDXReOW+tVkm++y/h+hd7S8E7L/Z6PT/2IYutK3BQf5QR+XuJL59sezTg/QoQxN59HxpK7ZXC7g3hydyj/E2UM1LDDZRDb+KxDsS65xncJxdIjBJGRpN3xmEDY/d1hGj310UilMdNT9VMEFTNPh2q4o819aiJRK8LT/29Nudo+HrxeBL5n1mcxk4NoSj6xdKoCKHZarqbwbjgFXf/VplrDHPYN4y6LKU5X8ksryjti3RjQPnqLaGG21UZwIDAQABAoIBAHvc4/YBd9var1u4dwHfmeuNxNm38MJRFc0kDBDJv1DOWOn2R1jHP5QncFGB+bRYjDYjwEI6Ex7JMJFNsstCbbdazZTdyvkyQK0JfzwkSKvVXe5j22m0bAcF5ID+kTZJnU0zF48R741vDdf0KrGn0c0lFIGzaGoSDE+O1xhv9z4sA3Y/e0lsRB0Gd9On0H35SUM55HEhUgdskbzlDZh144WKHHtoJY2q8iC/lmu1LljECKDNDMpo9JT45ZevjgiO8KAOMcVNe9P44E3ddG6P3HNLLTGjPHepzMFNqUtUiLzIvdVK6zRD/JEOi/rPluysiZELhc/E+AUJ1JwxEOLba4ECgYEA//MgoKS4MR2DPJ9MeZZbot2R5RWsYQcRzjKnO0oFMjQ+SHpL5dqlW+SFTjCkLHjmzACz46KLZebMzeOR+USTgr6Cc3x+xxvDz1QYIJlInrbY2A2EbBnuW0+F/UMtI+K7CJNhH38ASTTMRbvuFKhnOEfDNs+ogiQax7TxF7EGQOkCgYEA/3L5CZVXKr1SUuqN1rCpUYpwgyslDcFO3IHgVYzeOgt312yd+mlcayrIqRqMpQca2u4+7Gkmiibco7tO17hvrqmyQ3LYulXK4KZCdaET2G0d6B0aZCORX70C4kYX1L1b/w6p0mS+LcqODVElAq9fhl9VxRXbp5rlskzGSuFhGM8CgYBgw8FdGolMgFTicXNPMIo6e7wxuMzv7eVMaJgS8Twfq+K0MhBJuSz1HeNMGVWoPpk7HTTlZcl/4A8j89p3O/bs4iudj766dgPEeY2ZnXn4DzbSD+I1oGQd/2Wvx1rki06cwmNgrfoksyJbZt5uzvAfNfpW2ZFiilXZlM3lYBb2KQKBgHrjrLrXhV+iRIBvJl0qD8qSdx4jG2hKns2mDW4anq395mFUd4uINFW5916izxZ1HI5GHy9MRqYfm/WInp1YtSGpsYCRN4Is07TPRxmfrBRqKgEIPzH9imosW77PSZemoSNKwpfcr0EION5fMxbfl2zlYDW4FjvDYM0t8hcD5doxAoGBALkxq/sKzU/NOFKxWLfFSRCNZevTY2Wac/bIp0SieA+DAx6xsYhiy12WY0D0JZ77IWfeVS99o0H+lP1I6ZGcEr1fLMWkVCIRnKfif9VQ7xGowNBz+GBn43ktydhdpi6C+x2V852E22CgHQsKLfhisd7s7rN4OeF/TV2/eix3M3Zv'),('0a6fa1ba-3d28-4e52-93f5-30a9eee10c80','a33e222d-898e-4993-8191-740ac39c81da','secret','noStFWe0RboJ8yJaH-cE2g'),('0daeb418-b612-4ad2-b9be-56ba36a27720','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','oidc-full-name-mapper'),('14c1d3ad-1d0e-4e0b-9cd8-0847376fa868','e6c337d4-c380-4eee-91c3-4db112c1a38b','max-clients','200'),('1732e9dd-a462-49c2-9860-eb7fc96ce982','db106dbd-46c7-49ae-9eb4-dc671ce9f429','client-uris-must-match','true'),('189c8e01-d713-4418-82ef-e2d7fe33d7d0','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('1b927936-9ceb-46a4-9f8b-e077eae8cade','d5c00137-f02f-4544-af1a-82b3bf8df192','algorithm','RSA-OAEP'),('1e62b0fc-9451-47ce-a728-8325c3b97b9d','a33e222d-898e-4993-8191-740ac39c81da','priority','100'),('1f75d3c7-331e-4c3d-9be0-45557da4ca84','d5c00137-f02f-4544-af1a-82b3bf8df192','priority','100'),('1fe2798e-f21a-480a-98e6-acc227800c04','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('27c0d830-14a4-4a45-8371-6f94eccfa29f','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','saml-user-property-mapper'),('2bdf1e01-ea1a-44a1-bcd0-28db57b5b396','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','saml-role-list-mapper'),('32369858-cd80-4888-8b38-d0e017ba72f8','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('447dccf2-0ebe-4eb7-9778-df100f43b82e','8a95b129-857f-4545-b7ec-b18b21be7d17','keyUse','SIG'),('4ae8685d-fcb4-469f-b93e-0d02d9bcebed','8a95b129-857f-4545-b7ec-b18b21be7d17','certificate','MIICmzCCAYMCBgGQuovDmjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNzE2MDc1NTQwWhcNMzQwNzE2MDc1NzIwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDTCtCfSKTsPUb0b4uBo9CzpTO0wkUhdPxmoCnrDn4y1nONvH9F2JjUL13ZonTtHPitxNG8SZtFcyVk01z8UBG5iBPANpUJoEirmQmOQlMnUBlQ0VoHdFLirCare2w6ZjMjauHh42osq8D8B3dpdmogQHnjygtsSxf2xWtDVQEgq2EFhZdMI8QZsk8GQJUjFK0PzS1azkfBVfkOLU8tSc5C1YC2mfLKh+h+/0Lm6z1z9oIWWNBP/dgdL5cG4kho6P3Ns/1FqURB0ibP2jX+1FU+rJZCfmbKlsYrwTfa8zxre1uh4zKYXqbuD8wnFrJjtP5R9nKLfLxvjkcgZlUJd7UdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBALwZcpX8qAZvTvP6yx7Rol9ATxVdA7hlHPCq7ae3AyEKhVvt1XBsdBeW5r8Mb7D+4pLeFSlIc8lGNpPUqdjZykoH6CQp4joURsIMTZyJnJBMNOfw6Uq5GFRQX9JiQzEV6stgG75o525/Gdws8jJoFsMTXrqsI1p5MLNp2F44ry/J6p7y6MULuQU6kv3dqRW8xLshCsD7/ahANJu2BeHIxcxxuq0UzMWbpD8/zVQpmZHoUFetK7N/8i8io7NiNJNLjNkubw10CMC9mtWMWfts+dbA30udoOSjEmruEMoffDb41T44ty7q40Ms6bMjjspqjg3ilNzxphR+RCzo83v2Alw='),('512510f6-96c5-4d43-a313-435565cf6431','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','oidc-address-mapper'),('5d598984-ada5-4c67-a6dd-54756bff25d3','aeb10d90-6a69-4f0b-b1f0-a31045308170','priority','100'),('753fe834-6c2f-4a78-b241-c2eb2b0b1d75','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('770b49d5-25d8-4e7f-86aa-bdf12f7c8e65','aeb10d90-6a69-4f0b-b1f0-a31045308170','algorithm','HS512'),('780377ce-61f6-4a51-8b08-6dce70a2280c','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('80e1e875-9397-4a46-a66c-16964fd17912','8a95b129-857f-4545-b7ec-b18b21be7d17','privateKey','MIIEowIBAAKCAQEA0wrQn0ik7D1G9G+LgaPQs6UztMJFIXT8ZqAp6w5+MtZzjbx/RdiY1C9d2aJ07Rz4rcTRvEmbRXMlZNNc/FARuYgTwDaVCaBIq5kJjkJTJ1AZUNFaB3RS4qwmq3tsOmYzI2rh4eNqLKvA/Ad3aXZqIEB548oLbEsX9sVrQ1UBIKthBYWXTCPEGbJPBkCVIxStD80tWs5HwVX5Di1PLUnOQtWAtpnyyofofv9C5us9c/aCFljQT/3YHS+XBuJIaOj9zbP9RalEQdImz9o1/tRVPqyWQn5mypbGK8E32vM8a3tboeMymF6m7g/MJxayY7T+UfZyi3y8b45HIGZVCXe1HQIDAQABAoIBAAoNRlGH4r8TzhjfZTwoAs1DrZpK9IL68PisYUK+XnlqaHeURlWb0u+sT+KJT9tpWVjheoHm2Zvtt5a9UHz+DVISbqpljyS1uzBdKizZ8N76/DGyvwCC5F3CiFb7mnSPoJjrwtWBAPIeviLi8ieWSci+eW/FlFS0oPASiCDdYB/fo5xMcAG+HZZXYgBwTYERfrsrV0ZaLWXBErdIruhyGxDSqTOSXGwK7M9ekRdpTJ9Rr+tAqTQfNpWVajdTNon+RPjXU43CgHTuZeHEXWfnfXi7dk9GpDyHnpL9sexbyLkfiMXVUB2ai9NmO2DgyoWHTCDTNqONBY/FZBnXCEQp6nsCgYEA+hntb1JOk9tqevsLEtyRO8eobNEFfFtrRYroIawBI4ju5djC3MR75Z7fO617zUoS7+zUWr99pwvV6FZygmQM16436rS6dQULfCdjy+VIKdHX5pdELaiB2liexBiNQ4Gb1jl/M9ZBGL1+8p9VvIvHrbY9pQ3soMs9R060zEyJO28CgYEA2AUOGuvW9zUjgonkceI2iCZOyaqsztklV5bWnCtgFJF9yrOO1Yd5YtihkbQCz4ig1bQxYoO2tm+KfvBJ5SqkYjqGKymiZdEQvRjhbP04kZf5dw+nqr8a8McECGbGKl/TeVJnhp4j1cpf0ypUDos4Qsd8+l7LmS2RLx76jpX2AjMCgYAxvXpVS39JNLgmoUsAg1F3HCxJCAEZTG03NXsZR0YqtQ8eM0/97C3f6wrmqYgXugWuJeHN8oug71+ph5fait9q/cEtMqhqoYg5NvRIFt+VQaC4wZjTo9G/hSR+R4vAw0QlBOZhftkPfJCE3F+G0h3yVG5KJ0zKZeFYDzUx9H7OjQKBgH+S/LGJdnqoN0BwjylynyHo/b67vTKrqxH/Ut8H/sYm5lM/l6sjRtzJcyHJXZ+S4OlUcZXsk4tKdFBjOEDO3iXkyjfTbsUSowAKIZdsNGxHhFx8Mlj0Y8SuxALyLzX3Qbz0nY8y9Zbc3Zqn9Nxh++f0SCrUsQjVkFhzwyVSCudhAoGBAMqaaFzMBQqzVGWm/iGKfSthAhZzB1AuTy2XYhAOcCIfaTbgwtTr+4dAFdQvODTQJuFb0BWqyEFk7AUlh1Jf3BE4QlX18GyhvM09oHfGWWzBEUFrqIxiBSpXHlxOLkY2h6llk4Yq49rUh4It/84F+77ifYSZjP+BzMmhUx7PJ8R+'),('837d3375-d675-4a58-affc-c09fe6aaa54e','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','saml-role-list-mapper'),('8bf9adf3-fdc7-442d-a89e-cdb8c546fe53','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','oidc-address-mapper'),('8fa6636b-faca-442f-8ac8-e5c305f3282e','aeb10d90-6a69-4f0b-b1f0-a31045308170','kid','58f4b3b2-481c-4db4-ac67-eec28f667dc9'),('9c5994e7-67b9-47c3-bacf-c48f02d78f4e','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('a06227ea-3f0c-4ef1-87c6-de94677d49b5','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a06d4656-cd4a-46e7-bb26-ec7af4b504e7','a33e222d-898e-4993-8191-740ac39c81da','kid','7c51a557-5a10-4eec-ba01-e359ddb1d52d'),('abafb064-2d6b-4945-89f1-5386d11dd2db','d5c00137-f02f-4544-af1a-82b3bf8df192','certificate','MIICmzCCAYMCBgGQuovFcTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNzE2MDc1NTQwWhcNMzQwNzE2MDc1NzIwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQD/ZiDBmzThJ/m8qgBXTFJPDyU9QHRzvXCNtRJnJIkS3FEgRoCawusmhjCG8fqjbNXI1+iYBVOkuvwna5MtVv65xSVvHO4UNdF45b61WSb77L+H6F3tLwTsv9no9P/Yhi60rcFB/lBH5e4kvn2x7NOD9ChDE3n0fGkrtlcLuDeHJ3KP8TZQzUsMNlENv4rEOxLrnGdwnF0iMEkZGk3fGYQNj93WEaPfXRSKUx01P1UwQVM0+HarijzX1qIlErwtP/b0252j4evF4EvmfWZzGTg2hKPrF0qgIodlqupvBuOAVd/9WmWsMc9g3jLospTlfySyvKO2LdGNA+eotoYbbVRnAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAP0NL7/h6+kQwxEmCikL5HInoU8QkYLdvjnY63EMi4cXLA7M3MgdVbh9vShnlMUdkQL0S877/hW1mQaKVG+vp68sBRldHcss/oaLTI92Y1MsM3sSCJxuMbkil8JFvaFCqjEIPRKEyLQ8Cpsfo0CMH+OZD5THQkErEYRrhDBYyfX6G6O9k1iDlJEC1OvjH6X199MFGPttxK5ApRCShtj8DDDKxIw1xya46oVOPlhvlFHChv6rbbd2xOH7pTkjDNjpw5Gdh3EWIeoV7oDz8KdJMrCld2ZeALEQtA2Tx+yhjbaY+h7LmMKiyXiRWeDG42Emq6ws/tJycjYkPVjaY/OeTXA='),('b13879ed-4fba-47c7-8e76-8eb9c432314b','9eb44776-ac2d-480c-bbb1-792cb8079931','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('bd61b2be-036f-465c-b751-766a6da19713','f2b56661-868a-49e6-a20a-e7b5242eeb55','allow-default-scopes','true'),('c2818811-8c6c-4452-98c8-1cd1a88b2300','8a95b129-857f-4545-b7ec-b18b21be7d17','priority','100'),('d447a4f1-394c-4d16-8f65-c9edd18a9a05','4fb17b6c-86d3-4a6d-bfd1-2f459d3c2717','allow-default-scopes','true'),('db8083b7-8a72-43ab-bedd-9384ad18af48','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','oidc-full-name-mapper'),('e7f067a1-c4b3-42b3-a2d4-ea3e33b79646','a05edab0-db20-4d04-9b48-b9a288a861cc','allowed-protocol-mapper-types','saml-user-property-mapper'),('e8ca8473-b5af-4040-8ee7-ee449d524c17','aeb10d90-6a69-4f0b-b1f0-a31045308170','secret','AoVfrSKyhFaS2ibXXVVQAPM0OCLCBAnRKHUWklaKTqRqJqnJNDuEnuuYrGD6yfsSWHqZJnWQl-yekKQQqk0hxQ6y2m6wdt8I35viGYEbd0kmALlUzkShXPfkjUZcLERXhX8HG7P3dTRqftTZb3RnnMi_GrPnoC1cpfMY630IrFk'),('f73f3cf5-98a5-4f88-829d-a256d45a0885','6fb2b59a-db50-441b-89df-765355c71137','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('fdd0205f-d0f0-44dd-99ab-77ea5cbcf138','db106dbd-46c7-49ae-9eb4-dc671ce9f429','host-sending-registration-request-must-match','true'),('fe98bd20-d09a-4919-a2bd-51afd99a7464','d5c00137-f02f-4544-af1a-82b3bf8df192','keyUse','ENC');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','22cc272f-6eb6-4142-8d37-c9720538062e'),('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','25ff44f6-9e6a-413b-8bf0-a684b5c1dd55'),('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','5a9f47f8-5ba9-46f8-a6d6-973550d0212e'),('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','d466617a-7554-4498-817d-7a1d9180c440'),('326b2ef2-5329-404d-a028-27443aed0ce4','ab3493ed-6137-4645-9b66-4b90fd957176'),('5ad05ddd-33da-4f2b-aaba-514d35af7e93','40b6de34-2c06-4a28-8866-8410ee6359a2'),('5ad05ddd-33da-4f2b-aaba-514d35af7e93','83f06853-9f7b-421a-a1fc-9d5e060d53f7'),('d131df6f-df28-4533-a14c-07b6018ce974','0c426993-34a9-46aa-b150-63c3cf241b02'),('d131df6f-df28-4533-a14c-07b6018ce974','181a5084-35a1-4ab4-8aa5-c307b875416b'),('d131df6f-df28-4533-a14c-07b6018ce974','256fa7b3-7035-41f2-8fee-a13e467be15a'),('d131df6f-df28-4533-a14c-07b6018ce974','2a0767ad-9b32-4943-85ab-e18afb853ae7'),('d131df6f-df28-4533-a14c-07b6018ce974','326b2ef2-5329-404d-a028-27443aed0ce4'),('d131df6f-df28-4533-a14c-07b6018ce974','40b6de34-2c06-4a28-8866-8410ee6359a2'),('d131df6f-df28-4533-a14c-07b6018ce974','4bf4be62-6209-46f1-9d7c-9af60f8037e6'),('d131df6f-df28-4533-a14c-07b6018ce974','50f46a80-5714-4c30-9948-cdb9ead13a77'),('d131df6f-df28-4533-a14c-07b6018ce974','51066100-b6e5-43cf-800b-a258166ad8a7'),('d131df6f-df28-4533-a14c-07b6018ce974','5ad05ddd-33da-4f2b-aaba-514d35af7e93'),('d131df6f-df28-4533-a14c-07b6018ce974','76a55313-7b90-4270-a2e5-1a18e07bf10a'),('d131df6f-df28-4533-a14c-07b6018ce974','81191e64-fd87-4b00-80e3-43938ce4542f'),('d131df6f-df28-4533-a14c-07b6018ce974','83f06853-9f7b-421a-a1fc-9d5e060d53f7'),('d131df6f-df28-4533-a14c-07b6018ce974','ab3493ed-6137-4645-9b66-4b90fd957176'),('d131df6f-df28-4533-a14c-07b6018ce974','bb16d2c7-f980-4015-bb03-f1fd8e8338d5'),('d131df6f-df28-4533-a14c-07b6018ce974','c606c35a-2634-410f-bff6-666e387c1848'),('d131df6f-df28-4533-a14c-07b6018ce974','e8926ca2-1793-4f55-968d-6221777ba9cb'),('d131df6f-df28-4533-a14c-07b6018ce974','f142487b-0a64-44b1-bb12-a704d05fdbaf'),('d131df6f-df28-4533-a14c-07b6018ce974','f14c4eca-0661-4f52-a83e-dd350d5e8e99'),('d466617a-7554-4498-817d-7a1d9180c440','fbd88dc0-ef87-48ce-981e-ab868936a8d7'),('d9d0908f-b1e5-44b1-9f37-dffa37fb0b58','a6a9efad-da0f-4de9-bbea-a36e5ededf89');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('3e7c0afe-31ac-4738-b431-78089f6b2b6c',NULL,'password','42e15cca-4bd3-4bde-9389-6758b43275a9',1721116642692,NULL,'{\"value\":\"itUCMpkpJ28TUxYOG4mWEwn7dncMpXgHAbFgdvR0nEgqkwNlMW3Oft25BsglpeY/ER/z86gD0E7ga2XBrqCZqg==\",\"salt\":\"TU2aTDd4JSTkvEXoyZHAhw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-07-16 16:57:02',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-07-16 16:57:02',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-07-16 16:57:02',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-07-16 16:57:02',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-07-16 16:57:03',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-07-16 16:57:03',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-07-16 16:57:04',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-07-16 16:57:04',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-07-16 16:57:04',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-07-16 16:57:05',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-07-16 16:57:06',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-07-16 16:57:06',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-07-16 16:57:06',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:57:06',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:57:06',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:57:06',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:57:06',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-07-16 16:57:07',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-07-16 16:57:07',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-07-16 16:57:07',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-07-16 16:57:07',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-07-16 16:57:07',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-07-16 16:57:07',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-07-16 16:57:07',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-07-16 16:57:08',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-07-16 16:57:08',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-07-16 16:57:09',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-07-16 16:57:09',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-07-16 16:57:09',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-07-16 16:57:09',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-07-16 16:57:10',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-07-16 16:57:10',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:57:10',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:57:10',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:57:10',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:57:10',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:57:10',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1116619465'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-07-16 16:57:10',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-07-16 16:57:10',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:57:10',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:57:10',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:57:10',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:57:11',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-07-16 16:57:11',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:57:11',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:57:11',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:57:11',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:57:12',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:57:12',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-07-16 16:57:12',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-07-16 16:57:12',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-07-16 16:57:12',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-07-16 16:57:12',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-07-16 16:57:12',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:57:12',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:57:12',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:57:12',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:57:14',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-07-16 16:57:14',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-07-16 16:57:14',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-07-16 16:57:14',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-07-16 16:57:14',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-07-16 16:57:14',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-07-16 16:57:14',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-07-16 16:57:14',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-07-16 16:57:14',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-07-16 16:57:14',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-07-16 16:57:14',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-07-16 16:57:14',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-07-16 16:57:14',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1116619465'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-07-16 16:57:14',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'1116619465'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:57:14',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1116619465'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:57:14',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1116619465'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:57:14',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1116619465'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:57:14',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:57:14',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:57:14',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:57:14',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:57:15',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:57:15',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:57:15',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:57:15',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:57:15',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:57:15',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1116619465'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:57:15',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-07-16 16:57:15',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'1116619465'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-07-16 16:57:15',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-07-16 16:57:15',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'1116619465'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1116619465'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'1116619465'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:57:15',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1116619465'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:57:15',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-07-16 16:57:15',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-07-16 16:57:15',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-07-16 16:57:15',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-07-16 16:57:15',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-16 16:57:15',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-16 16:57:15',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1116619465'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-16 16:57:15',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-07-16 16:57:15',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-07-16 16:57:15',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'1116619465'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-07-16 16:57:15',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-07-16 16:57:15',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-07-16 16:57:15',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-07-16 16:57:15',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'1116619465'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-07-16 16:57:15',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:57:15',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:57:15',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:57:16',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:57:16',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-16 16:57:16',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-16 16:57:16',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-16 16:57:16',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1116619465');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','19e0c6b4-62e8-4d2e-946d-24e7b15546b1',0),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','37e2bdfb-f934-49ae-9370-95c5c177946b',1),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','380a6412-c89d-4b52-bca4-a29b19b45ca1',1),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','5ab49fc1-d0f0-49a2-bb00-636822655f88',0),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','8513542d-340b-45d9-8741-3059a4d1ce73',0),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','96ed698c-83b5-444a-8550-f9b1e2690b83',0),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','ab0089d0-0513-49ea-8cb1-4d20a98fcf73',1),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','ddfed24f-5cef-4a38-8b70-36d78fccc774',1),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','f486e4bc-e7a7-4fee-aaf6-dbf125d6f378',1),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','fdc284e3-a179-4b42-be85-a54aa8f7fd5a',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0c426993-34a9-46aa-b150-63c3cf241b02','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_manage-events}','manage-events','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('181a5084-35a1-4ab4-8aa5-c307b875416b','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_manage-identity-providers}','manage-identity-providers','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,'${role_default-roles}','default-roles-master','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL,NULL),('22cc272f-6eb6-4142-8d37-c9720538062e','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,'${role_uma_authorization}','uma_authorization','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL,NULL),('256fa7b3-7035-41f2-8fee-a13e467be15a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_manage-authorization}','manage-authorization','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('25ff44f6-9e6a-413b-8bf0-a684b5c1dd55','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,'${role_offline-access}','offline_access','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL,NULL),('2834b89a-4e1c-4d46-97c4-de16ee09df22','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_view-groups}','view-groups','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('2a0767ad-9b32-4943-85ab-e18afb853ae7','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_manage-realm}','manage-realm','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('2fea8a58-6c19-4976-886a-fdd6f792d432','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_delete-account}','delete-account','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('326b2ef2-5329-404d-a028-27443aed0ce4','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_view-clients}','view-clients','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('362cc095-36b1-4dec-8ce0-0058a59bdde1','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_view-applications}','view-applications','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('40b6de34-2c06-4a28-8866-8410ee6359a2','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_query-users}','query-users','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('4bf4be62-6209-46f1-9d7c-9af60f8037e6','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,'${role_create-realm}','create-realm','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL,NULL),('50f46a80-5714-4c30-9948-cdb9ead13a77','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_impersonation}','impersonation','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('51066100-b6e5-43cf-800b-a258166ad8a7','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_create-client}','create-client','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('5a9f47f8-5ba9-46f8-a6d6-973550d0212e','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_view-profile}','view-profile','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('5ad05ddd-33da-4f2b-aaba-514d35af7e93','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_view-users}','view-users','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('76a55313-7b90-4270-a2e5-1a18e07bf10a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_manage-users}','manage-users','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('81191e64-fd87-4b00-80e3-43938ce4542f','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_manage-clients}','manage-clients','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('83f06853-9f7b-421a-a1fc-9d5e060d53f7','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_query-groups}','query-groups','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('9994fcf9-e613-41a7-bf6d-b5c6ffcf5e05','c07317e2-bb2f-4dde-bc30-e54f1ceb1354',1,'${role_read-token}','read-token','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','c07317e2-bb2f-4dde-bc30-e54f1ceb1354',NULL),('a6a9efad-da0f-4de9-bbea-a36e5ededf89','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_view-consent}','view-consent','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('ab3493ed-6137-4645-9b66-4b90fd957176','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_query-clients}','query-clients','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('bb16d2c7-f980-4015-bb03-f1fd8e8338d5','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_view-events}','view-events','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('c606c35a-2634-410f-bff6-666e387c1848','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_view-identity-providers}','view-identity-providers','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('d131df6f-df28-4533-a14c-07b6018ce974','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,'${role_admin}','admin','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',NULL,NULL),('d466617a-7554-4498-817d-7a1d9180c440','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_manage-account}','manage-account','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('d9d0908f-b1e5-44b1-9f37-dffa37fb0b58','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_manage-consent}','manage-consent','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL),('e8926ca2-1793-4f55-968d-6221777ba9cb','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_query-realms}','query-realms','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('f142487b-0a64-44b1-bb12-a704d05fdbaf','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_view-realm}','view-realm','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('f14c4eca-0661-4f52-a83e-dd350d5e8e99','2494687a-ce52-46eb-ae92-9750e5d0f2bd',1,'${role_view-authorization}','view-authorization','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','2494687a-ce52-46eb-ae92-9750e5d0f2bd',NULL),('fbd88dc0-ef87-48ce-981e-ab868936a8d7','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',1,'${role_manage-account-links}','manage-account-links','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('2wj8j','24.0.5',1721116636);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('004969d8-313c-4976-a4be-6047e0f2c891','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('01f03376-2e41-4844-b909-7667488bd5df','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'fdc284e3-a179-4b42-be85-a54aa8f7fd5a'),('0538ae0e-a53d-461a-a803-841b73dcafd5','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('07e95203-66c7-404a-a6ea-37b77d267a47','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'ab0089d0-0513-49ea-8cb1-4d20a98fcf73'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5ab49fc1-d0f0-49a2-bb00-636822655f88'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','babef077-033a-4c4c-a9aa-1cf6017dd173',NULL),('0e945115-a895-4772-9103-887d3f75cbc0','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','babef077-033a-4c4c-a9aa-1cf6017dd173',NULL),('10e0bc3c-388d-4301-934c-5833acd99e4c','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'96ed698c-83b5-444a-8550-f9b1e2690b83'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('1f5a0c70-12ae-433d-8616-aa04077918f7','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('33b32138-5cb9-4983-8921-879e1eee20c8','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','address','openid-connect','oidc-address-mapper',NULL,'8513542d-340b-45d9-8741-3059a4d1ce73'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','locale','openid-connect','oidc-usermodel-attribute-mapper','7f46a1ed-ce22-4ae6-b348-8e124e397a5d',NULL),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','babef077-033a-4c4c-a9aa-1cf6017dd173',NULL),('7f77517c-0a3b-41ab-b386-91f9237b7519','role list','saml','saml-role-list-mapper',NULL,'380a6412-c89d-4b52-bca4-a29b19b45ca1'),('7ff09e4f-5e38-4d1c-a89f-7e6373a9b82f','full name','openid-connect','oidc-full-name-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('81019927-e407-4050-be10-88784d7e677b','acr loa level','openid-connect','oidc-acr-mapper',NULL,'f486e4bc-e7a7-4fee-aaf6-dbf125d6f378'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ab0089d0-0513-49ea-8cb1-4d20a98fcf73'),('979e95f2-8553-46ea-96ed-ae621baa9991','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'fdc284e3-a179-4b42-be85-a54aa8f7fd5a'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('9bb250d6-b320-4ef5-99a7-5fec28060898','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('ac102c63-5e67-4461-878b-c6a496a2a620','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'fdc284e3-a179-4b42-be85-a54aa8f7fd5a'),('ba9546a5-6d77-4e01-b159-32d100af8c65','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'ddfed24f-5cef-4a38-8b70-36d78fccc774'),('bf644fc0-5414-4d58-9597-c02552064a50','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'96ed698c-83b5-444a-8550-f9b1e2690b83'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('df68c081-1edd-4980-80de-45abfe025644','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5ab49fc1-d0f0-49a2-bb00-636822655f88'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'37e2bdfb-f934-49ae-9370-95c5c177946b'),('fc06dece-9c09-4221-91f5-64acbdc27b11','audience resolve','openid-connect','oidc-audience-resolve-mapper','2a8c1b07-3e98-4a91-9781-d2887e687a40',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('004969d8-313c-4976-a4be-6047e0f2c891','true','access.token.claim'),('004969d8-313c-4976-a4be-6047e0f2c891','profile','claim.name'),('004969d8-313c-4976-a4be-6047e0f2c891','true','id.token.claim'),('004969d8-313c-4976-a4be-6047e0f2c891','true','introspection.token.claim'),('004969d8-313c-4976-a4be-6047e0f2c891','String','jsonType.label'),('004969d8-313c-4976-a4be-6047e0f2c891','profile','user.attribute'),('004969d8-313c-4976-a4be-6047e0f2c891','true','userinfo.token.claim'),('01f03376-2e41-4844-b909-7667488bd5df','true','access.token.claim'),('01f03376-2e41-4844-b909-7667488bd5df','realm_access.roles','claim.name'),('01f03376-2e41-4844-b909-7667488bd5df','true','introspection.token.claim'),('01f03376-2e41-4844-b909-7667488bd5df','String','jsonType.label'),('01f03376-2e41-4844-b909-7667488bd5df','true','multivalued'),('01f03376-2e41-4844-b909-7667488bd5df','foo','user.attribute'),('0538ae0e-a53d-461a-a803-841b73dcafd5','true','access.token.claim'),('0538ae0e-a53d-461a-a803-841b73dcafd5','picture','claim.name'),('0538ae0e-a53d-461a-a803-841b73dcafd5','true','id.token.claim'),('0538ae0e-a53d-461a-a803-841b73dcafd5','true','introspection.token.claim'),('0538ae0e-a53d-461a-a803-841b73dcafd5','String','jsonType.label'),('0538ae0e-a53d-461a-a803-841b73dcafd5','picture','user.attribute'),('0538ae0e-a53d-461a-a803-841b73dcafd5','true','userinfo.token.claim'),('07e95203-66c7-404a-a6ea-37b77d267a47','true','access.token.claim'),('07e95203-66c7-404a-a6ea-37b77d267a47','email_verified','claim.name'),('07e95203-66c7-404a-a6ea-37b77d267a47','true','id.token.claim'),('07e95203-66c7-404a-a6ea-37b77d267a47','true','introspection.token.claim'),('07e95203-66c7-404a-a6ea-37b77d267a47','boolean','jsonType.label'),('07e95203-66c7-404a-a6ea-37b77d267a47','emailVerified','user.attribute'),('07e95203-66c7-404a-a6ea-37b77d267a47','true','userinfo.token.claim'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','true','access.token.claim'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','middle_name','claim.name'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','true','id.token.claim'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','true','introspection.token.claim'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','String','jsonType.label'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','middleName','user.attribute'),('092e1b0d-0cc2-427e-9f26-1e61b2dd098c','true','userinfo.token.claim'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','true','access.token.claim'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','phone_number_verified','claim.name'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','true','id.token.claim'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','true','introspection.token.claim'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','boolean','jsonType.label'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','phoneNumberVerified','user.attribute'),('0c95e524-936d-438c-a3a3-7de0e1bbc7a5','true','userinfo.token.claim'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','true','access.token.claim'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','clientHost','claim.name'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','true','id.token.claim'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','String','jsonType.label'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','clientHost','user.session.note'),('0dc9e432-e3ab-4d37-8947-70b9ba5cadbb','true','userinfo.token.claim'),('0e945115-a895-4772-9103-887d3f75cbc0','true','access.token.claim'),('0e945115-a895-4772-9103-887d3f75cbc0','clientAddress','claim.name'),('0e945115-a895-4772-9103-887d3f75cbc0','true','id.token.claim'),('0e945115-a895-4772-9103-887d3f75cbc0','String','jsonType.label'),('0e945115-a895-4772-9103-887d3f75cbc0','clientAddress','user.session.note'),('0e945115-a895-4772-9103-887d3f75cbc0','true','userinfo.token.claim'),('10e0bc3c-388d-4301-934c-5833acd99e4c','true','access.token.claim'),('10e0bc3c-388d-4301-934c-5833acd99e4c','groups','claim.name'),('10e0bc3c-388d-4301-934c-5833acd99e4c','true','id.token.claim'),('10e0bc3c-388d-4301-934c-5833acd99e4c','true','introspection.token.claim'),('10e0bc3c-388d-4301-934c-5833acd99e4c','String','jsonType.label'),('10e0bc3c-388d-4301-934c-5833acd99e4c','true','multivalued'),('10e0bc3c-388d-4301-934c-5833acd99e4c','foo','user.attribute'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','true','access.token.claim'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','preferred_username','claim.name'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','true','id.token.claim'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','true','introspection.token.claim'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','String','jsonType.label'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','username','user.attribute'),('1cd13b75-0a8b-4923-8328-6cb1ea35b34a','true','userinfo.token.claim'),('1f5a0c70-12ae-433d-8616-aa04077918f7','true','access.token.claim'),('1f5a0c70-12ae-433d-8616-aa04077918f7','zoneinfo','claim.name'),('1f5a0c70-12ae-433d-8616-aa04077918f7','true','id.token.claim'),('1f5a0c70-12ae-433d-8616-aa04077918f7','true','introspection.token.claim'),('1f5a0c70-12ae-433d-8616-aa04077918f7','String','jsonType.label'),('1f5a0c70-12ae-433d-8616-aa04077918f7','zoneinfo','user.attribute'),('1f5a0c70-12ae-433d-8616-aa04077918f7','true','userinfo.token.claim'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','true','access.token.claim'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','website','claim.name'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','true','id.token.claim'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','true','introspection.token.claim'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','String','jsonType.label'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','website','user.attribute'),('227f01bf-0cdb-4807-a84a-864f5db5bb54','true','userinfo.token.claim'),('33b32138-5cb9-4983-8921-879e1eee20c8','true','access.token.claim'),('33b32138-5cb9-4983-8921-879e1eee20c8','given_name','claim.name'),('33b32138-5cb9-4983-8921-879e1eee20c8','true','id.token.claim'),('33b32138-5cb9-4983-8921-879e1eee20c8','true','introspection.token.claim'),('33b32138-5cb9-4983-8921-879e1eee20c8','String','jsonType.label'),('33b32138-5cb9-4983-8921-879e1eee20c8','firstName','user.attribute'),('33b32138-5cb9-4983-8921-879e1eee20c8','true','userinfo.token.claim'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','true','access.token.claim'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','true','id.token.claim'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','true','introspection.token.claim'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','country','user.attribute.country'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','formatted','user.attribute.formatted'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','locality','user.attribute.locality'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','postal_code','user.attribute.postal_code'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','region','user.attribute.region'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','street','user.attribute.street'),('3e5917f2-b1f1-4d71-b50b-dadfd7f87b22','true','userinfo.token.claim'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','true','access.token.claim'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','locale','claim.name'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','true','id.token.claim'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','true','introspection.token.claim'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','String','jsonType.label'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','locale','user.attribute'),('5acc2bf8-5374-4b3c-bd4e-76cfffcf65a0','true','userinfo.token.claim'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','true','access.token.claim'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','locale','claim.name'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','true','id.token.claim'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','true','introspection.token.claim'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','String','jsonType.label'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','locale','user.attribute'),('7c44d4f6-c864-4b8f-b865-3cc5afc8204d','true','userinfo.token.claim'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','true','access.token.claim'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','clientId','claim.name'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','true','id.token.claim'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','String','jsonType.label'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','clientId','user.session.note'),('7ee947fc-5a1d-419a-870d-7e0d6dba3bd4','true','userinfo.token.claim'),('7f77517c-0a3b-41ab-b386-91f9237b7519','Role','attribute.name'),('7f77517c-0a3b-41ab-b386-91f9237b7519','Basic','attribute.nameformat'),('7f77517c-0a3b-41ab-b386-91f9237b7519','false','single'),('7ff09e4f-5e38-4d1c-a89f-7e6373a9b82f','true','access.token.claim'),('7ff09e4f-5e38-4d1c-a89f-7e6373a9b82f','true','id.token.claim'),('7ff09e4f-5e38-4d1c-a89f-7e6373a9b82f','true','introspection.token.claim'),('7ff09e4f-5e38-4d1c-a89f-7e6373a9b82f','true','userinfo.token.claim'),('81019927-e407-4050-be10-88784d7e677b','true','access.token.claim'),('81019927-e407-4050-be10-88784d7e677b','true','id.token.claim'),('81019927-e407-4050-be10-88784d7e677b','true','introspection.token.claim'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','true','access.token.claim'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','email','claim.name'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','true','id.token.claim'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','true','introspection.token.claim'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','String','jsonType.label'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','email','user.attribute'),('86ab0e95-0ffc-4ad4-9e2d-9b7a03f744e5','true','userinfo.token.claim'),('979e95f2-8553-46ea-96ed-ae621baa9991','true','access.token.claim'),('979e95f2-8553-46ea-96ed-ae621baa9991','true','introspection.token.claim'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','true','access.token.claim'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','birthdate','claim.name'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','true','id.token.claim'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','true','introspection.token.claim'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','String','jsonType.label'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','birthdate','user.attribute'),('9b4791fb-3258-41cd-87d2-dfdc67d65554','true','userinfo.token.claim'),('9bb250d6-b320-4ef5-99a7-5fec28060898','true','access.token.claim'),('9bb250d6-b320-4ef5-99a7-5fec28060898','nickname','claim.name'),('9bb250d6-b320-4ef5-99a7-5fec28060898','true','id.token.claim'),('9bb250d6-b320-4ef5-99a7-5fec28060898','true','introspection.token.claim'),('9bb250d6-b320-4ef5-99a7-5fec28060898','String','jsonType.label'),('9bb250d6-b320-4ef5-99a7-5fec28060898','nickname','user.attribute'),('9bb250d6-b320-4ef5-99a7-5fec28060898','true','userinfo.token.claim'),('ac102c63-5e67-4461-878b-c6a496a2a620','true','access.token.claim'),('ac102c63-5e67-4461-878b-c6a496a2a620','resource_access.${client_id}.roles','claim.name'),('ac102c63-5e67-4461-878b-c6a496a2a620','true','introspection.token.claim'),('ac102c63-5e67-4461-878b-c6a496a2a620','String','jsonType.label'),('ac102c63-5e67-4461-878b-c6a496a2a620','true','multivalued'),('ac102c63-5e67-4461-878b-c6a496a2a620','foo','user.attribute'),('ba9546a5-6d77-4e01-b159-32d100af8c65','true','access.token.claim'),('ba9546a5-6d77-4e01-b159-32d100af8c65','true','introspection.token.claim'),('bf644fc0-5414-4d58-9597-c02552064a50','true','access.token.claim'),('bf644fc0-5414-4d58-9597-c02552064a50','upn','claim.name'),('bf644fc0-5414-4d58-9597-c02552064a50','true','id.token.claim'),('bf644fc0-5414-4d58-9597-c02552064a50','true','introspection.token.claim'),('bf644fc0-5414-4d58-9597-c02552064a50','String','jsonType.label'),('bf644fc0-5414-4d58-9597-c02552064a50','username','user.attribute'),('bf644fc0-5414-4d58-9597-c02552064a50','true','userinfo.token.claim'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','true','access.token.claim'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','family_name','claim.name'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','true','id.token.claim'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','true','introspection.token.claim'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','String','jsonType.label'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','lastName','user.attribute'),('c7904ad3-1c4f-4daf-b858-8130b19dd53c','true','userinfo.token.claim'),('df68c081-1edd-4980-80de-45abfe025644','true','access.token.claim'),('df68c081-1edd-4980-80de-45abfe025644','phone_number','claim.name'),('df68c081-1edd-4980-80de-45abfe025644','true','id.token.claim'),('df68c081-1edd-4980-80de-45abfe025644','true','introspection.token.claim'),('df68c081-1edd-4980-80de-45abfe025644','String','jsonType.label'),('df68c081-1edd-4980-80de-45abfe025644','phoneNumber','user.attribute'),('df68c081-1edd-4980-80de-45abfe025644','true','userinfo.token.claim'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','true','access.token.claim'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','gender','claim.name'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','true','id.token.claim'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','true','introspection.token.claim'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','String','jsonType.label'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','gender','user.attribute'),('e479a4dc-ed1c-44a5-823a-8df82007fc21','true','userinfo.token.claim'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','true','access.token.claim'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','updated_at','claim.name'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','true','id.token.claim'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','true','introspection.token.claim'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','long','jsonType.label'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','updatedAt','user.attribute'),('f81f4011-e0b2-4aa2-9abd-15e86460efd8','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('e4686173-cbe9-4b5a-81cb-3c9c69988d0a',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'2494687a-ce52-46eb-ae92-9750e5d0f2bd',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','70500993-06d0-415f-8157-7d2e93050bac','1eea0ede-eae6-4c82-997d-7c35c494f31e','4b029d44-420a-4990-aada-531f3418fb3f','a4e447ba-335d-4984-a819-96af275c7a9f','a8c13158-6a34-43f7-bc6f-fdfedbdd6518',31536000,0,900,1,0,'c06ec10c-755a-440a-ade0-d9e2004cdfba',0,0,0,0,'1a4a43c2-6926-4dc3-96ce-1c55bdc7c440');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','false'),('cibaAuthRequestedUserHint','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','login_hint'),('cibaBackchannelTokenDeliveryMode','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','poll'),('cibaExpiresIn','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','120'),('cibaInterval','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','5'),('defaultSignatureAlgorithm','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','RS256'),('displayName','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','Keycloak'),('displayNameHtml','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','30'),('firstBrokerLoginFlowId','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','91430fc3-42b6-44af-8205-6a678b16a19e'),('maxDeltaTimeSeconds','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','43200'),('maxFailureWaitSeconds','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','900'),('maxTemporaryLockouts','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','0'),('minimumQuickLoginWaitSeconds','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','60'),('oauth2DeviceCodeLifespan','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','600'),('oauth2DevicePollingInterval','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','5'),('offlineSessionMaxLifespan','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','31536000'),('offlineSessionMaxLifespanEnabled','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','true'),('parRequestUriLifespan','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','60'),('permanentLockout','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','false'),('quickLoginCheckMilliSeconds','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','1000'),('realmReusableOtpCode','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','false'),('waitIncrementSeconds','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','60'),('_browser_header.contentSecurityPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',''),('_browser_header.referrerPolicy','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','no-referrer'),('_browser_header.strictTransportSecurity','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','nosniff'),('_browser_header.xFrameOptions','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','SAMEORIGIN'),('_browser_header.xRobotsTag','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','none'),('_browser_header.xXSSProtection','e4686173-cbe9-4b5a-81cb-3c9c69988d0a','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','en'),('e4686173-cbe9-4b5a-81cb-3c9c69988d0a','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('2176a1da-d362-402d-885b-7aa5b355a292','/*'),('2a8c1b07-3e98-4a91-9781-d2887e687a40','/realms/master/account/*'),('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','/admin/master/console/*'),('eb1d8fa4-414b-4cfb-b0ff-a8a4625f356e','/realms/master/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('06cf500f-10b8-4627-8c07-b6349f6046dd','UPDATE_PASSWORD','Update Password','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'UPDATE_PASSWORD',30),('0bceae28-e2f3-4c66-a484-38acb9895a49','CONFIGURE_TOTP','Configure OTP','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'CONFIGURE_TOTP',10),('30262761-d79a-4eea-bf26-0f239fdf5ce5','TERMS_AND_CONDITIONS','Terms and Conditions','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,0,'TERMS_AND_CONDITIONS',20),('340b5371-6fcb-404c-a1e5-4ea5d2367ec0','VERIFY_EMAIL','Verify Email','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'VERIFY_EMAIL',50),('44b3b529-fa6e-45e3-8679-a38079da2eba','delete_credential','Delete Credential','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'delete_credential',100),('85a113a6-8506-422c-8605-ae7a30fa18dc','update_user_locale','Update User Locale','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'update_user_locale',1000),('8e3f48ad-7970-4a7a-b512-50aed229b960','webauthn-register','Webauthn Register','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'webauthn-register',70),('94bc7878-958d-4577-baff-d7fa72f3ed0e','UPDATE_PROFILE','Update Profile','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'UPDATE_PROFILE',40),('9b2b50be-5d4a-4318-aa79-0cf06d6c7621','delete_account','Delete Account','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',0,0,'delete_account',60),('f3aae82b-46de-4e01-922a-c90887436fc9','webauthn-register-passwordless','Webauthn Register Passwordless','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'webauthn-register-passwordless',80),('f8fc605d-356d-416a-a099-f05cfdac6365','VERIFY_PROFILE','Verify Profile','e4686173-cbe9-4b5a-81cb-3c9c69988d0a',1,0,'VERIFY_PROFILE',90);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('2a8c1b07-3e98-4a91-9781-d2887e687a40','2834b89a-4e1c-4d46-97c4-de16ee09df22'),('2a8c1b07-3e98-4a91-9781-d2887e687a40','d466617a-7554-4498-817d-7a1d9180c440');
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
INSERT INTO `USER_ENTITY` VALUES ('42e15cca-4bd3-4bde-9389-6758b43275a9',NULL,'6b0b0f40-a241-495e-9f46-9de7d9000573',0,1,NULL,NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','admin',1721116641489,NULL,0),('c403566e-afd2-4542-9579-6fab024aa8ff',NULL,'1f9f0cb1-8bf3-40ff-a87c-f272725ebe2e',0,1,NULL,NULL,NULL,'e4686173-cbe9-4b5a-81cb-3c9c69988d0a','service-account-_platform',1721116649323,'babef077-033a-4c4c-a9aa-1cf6017dd173',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','42e15cca-4bd3-4bde-9389-6758b43275a9'),('1a4a43c2-6926-4dc3-96ce-1c55bdc7c440','c403566e-afd2-4542-9579-6fab024aa8ff'),('d131df6f-df28-4533-a14c-07b6018ce974','42e15cca-4bd3-4bde-9389-6758b43275a9'),('d131df6f-df28-4533-a14c-07b6018ce974','c403566e-afd2-4542-9579-6fab024aa8ff');
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
INSERT INTO `WEB_ORIGINS` VALUES ('7f46a1ed-ce22-4ae6-b348-8e124e397a5d','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-07-16 16:57:40','dummy','2024-07-16 16:57:40','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-07-16 16:57:32','dummy','2024-07-16 16:57:32','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-07-16 16:57:32','dummy','2024-07-16 16:57:32','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-07-16 16:57:32','dummy','2024-07-16 16:57:32','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-07-16 16:57:32','dummy','2024-07-16 16:57:32','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-07-16 16:57:32','dummy','2024-07-16 16:57:32','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2024-07-16 16:57:33','dummy','2024-07-16 16:57:33','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2024-07-16 16:57:33','dummy','2024-07-16 16:57:33','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-07-16 16:57:30.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-07-16 16:57:30.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-07-16 16:57:28','system','2024-07-16 16:57:28','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-07-16 16:57:40','dummy','2024-07-16 16:57:40','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-07-16 16:57:28','system','2024-07-16 16:57:31','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-07-16 16:57:28','system','2024-07-16 16:57:31','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-07-16 16:57:28','system','2024-07-16 16:57:31','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-07-16 16:57:40','dummy','2024-07-16 16:57:40','dummy'),('_default','platform.roles',1000,'2024-07-16 16:57:28','system','2024-07-16 16:57:28','system'),('_default','platform.users',10000,'2024-07-16 16:57:28','system','2024-07-16 16:57:28','system'),('_default','platform.workspaces',100,'2024-07-16 16:57:28','system','2024-07-16 16:57:28','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-07-16 16:57:27','1.9.0','2024-07-16 16:57:27','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-07-16 16:57:29','1.9.0','2024-07-16 16:57:29','1.9.0'),(3,'1.5.0','START',NULL,'2024-07-16 16:57:29','1.9.0','2024-07-16 16:57:29','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-07-16 16:57:30','1.9.0','2024-07-16 16:57:30','1.9.0'),(5,'1.5.2','START',NULL,'2024-07-16 16:57:30','1.9.0','2024-07-16 16:57:30','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-07-16 16:57:30','1.9.0','2024-07-16 16:57:30','1.9.0'),(7,'1.6.0','START',NULL,'2024-07-16 16:57:30','1.9.0','2024-07-16 16:57:30','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-07-16 16:57:31','1.9.0','2024-07-16 16:57:31','1.9.0'),(9,'1.7.0','START',NULL,'2024-07-16 16:57:31','1.9.0','2024-07-16 16:57:31','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-07-16 16:57:31','1.9.0','2024-07-16 16:57:31','1.9.0'),(11,'1.8.0','START',NULL,'2024-07-16 16:57:31','1.9.0','2024-07-16 16:57:31','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-07-16 16:57:31','1.9.0','2024-07-16 16:57:31','1.9.0'),(13,'1.8.1','START',NULL,'2024-07-16 16:57:31','1.9.0','2024-07-16 16:57:31','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-07-16 16:57:32','1.9.0','2024-07-16 16:57:32','1.9.0'),(15,'1.8.2','START',NULL,'2024-07-16 16:57:32','1.9.0','2024-07-16 16:57:32','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-07-16 16:57:33','1.9.0','2024-07-16 16:57:33','1.9.0'),(17,'1.9.0','START',NULL,'2024-07-16 16:57:33','1.9.0','2024-07-16 16:57:33','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-07-16 16:57:33','1.9.0','2024-07-16 16:57:33','1.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"babef077-033a-4c4c-a9aa-1cf6017dd173\", \"TOKEN_CHECK_CLIENT_SECRET\": \"6KOFlLgmBLdxwl15QbKxPpKSzqNlKLyX\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"906983d4-e489-4f52-b734-f3b9e4c8dd89\"}','2024-07-16 16:57:29','system','2024-07-16 16:57:29','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-07-16 16:56:27','system','2024-07-16 16:57:33','1.9.0');
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

-- Dump completed on 2024-07-16 17:02:05
SET foreign_key_checks = 1;
