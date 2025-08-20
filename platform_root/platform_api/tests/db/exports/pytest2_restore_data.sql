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
DELETE FROM platform.T_PROCESS_QUEUE_LOCK;
-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: makedb-platform-db    Database: keycloak
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('06edce43-9827-4fa8-8e31-09ee1786b4fa',NULL,'direct-grant-validate-otp','d63d5856-45a9-4459-8724-12c3fcd22dd7','f06a04f1-acfd-4824-b672-871e89bc8ef8',0,20,0,NULL,NULL),('1b58659c-7ac5-430a-ab50-d3c524b84a11',NULL,'auth-otp-form','d63d5856-45a9-4459-8724-12c3fcd22dd7','372c22d0-1215-4616-8758-aeb594fe0bd9',0,20,0,NULL,NULL),('1c9fa195-b45b-45e0-9ef0-f07962c6276b',NULL,'http-basic-authenticator','d63d5856-45a9-4459-8724-12c3fcd22dd7','1571de53-94cb-4988-bf32-c97800dd5a7d',0,10,0,NULL,NULL),('23eaf29a-22be-400f-a23f-5b4a5a7b7bc1',NULL,'reset-credentials-choose-user','d63d5856-45a9-4459-8724-12c3fcd22dd7','b8ade12a-f5a4-40c3-ba3a-e91db06531b2',0,10,0,NULL,NULL),('3344d26d-3f76-4776-a73c-11a20efb56bc',NULL,'direct-grant-validate-password','d63d5856-45a9-4459-8724-12c3fcd22dd7','02e57919-beca-4a7e-8120-2b8c365f62b1',0,20,0,NULL,NULL),('3796a8fb-6f7b-4d3a-ad04-c7c9d9a98496',NULL,'conditional-user-configured','d63d5856-45a9-4459-8724-12c3fcd22dd7','f06a04f1-acfd-4824-b672-871e89bc8ef8',0,10,0,NULL,NULL),('37aa5545-c740-4044-8e6b-2b2697e027df',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','a42117b2-02ac-491e-aeb0-7b4b14db22a7',2,20,1,'9d4a5fb5-3ee0-40ff-a763-76028a60eafa',NULL),('44892d1e-075e-4350-b754-4efda930029d',NULL,'client-secret-jwt','d63d5856-45a9-4459-8724-12c3fcd22dd7','f2c89812-07a2-4af0-a791-8ac0781bd131',2,30,0,NULL,NULL),('4ab1eb6e-998c-4220-ac48-612f89755f17',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','b8ade12a-f5a4-40c3-ba3a-e91db06531b2',1,40,1,'41d680c0-f63d-4323-9f89-bd198d5e1dd6',NULL),('4b19155f-9a5e-4268-b5e8-f48d005bfae5',NULL,'idp-review-profile','d63d5856-45a9-4459-8724-12c3fcd22dd7','5e943095-9109-4478-b769-7fa0fc643d7c',0,10,0,NULL,'424932ae-ef89-4921-877e-1c02f9e64a5c'),('5048235b-6653-4c53-8680-5810e632eb72',NULL,'conditional-user-configured','d63d5856-45a9-4459-8724-12c3fcd22dd7','41d680c0-f63d-4323-9f89-bd198d5e1dd6',0,10,0,NULL,NULL),('53211e77-354b-4a18-a077-4c155c2423e8',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','04358a01-6679-46e9-8dc6-380e9a7b7a09',2,20,1,'52023f10-6e6f-4361-91b8-9d72806b729e',NULL),('5a21d078-c0fc-4654-9650-f7f7696702e1',NULL,'client-x509','d63d5856-45a9-4459-8724-12c3fcd22dd7','f2c89812-07a2-4af0-a791-8ac0781bd131',2,40,0,NULL,NULL),('6240ac69-cd68-4ab7-bc8d-8126ca2e5717',NULL,'registration-user-creation','d63d5856-45a9-4459-8724-12c3fcd22dd7','db9da97e-f368-4e31-9cc6-50e1468d10d6',0,20,0,NULL,NULL),('62b2ea0b-67d5-46bc-8de4-94eb8dd16965',NULL,'conditional-user-configured','d63d5856-45a9-4459-8724-12c3fcd22dd7','372c22d0-1215-4616-8758-aeb594fe0bd9',0,10,0,NULL,NULL),('636cf2c7-a3fe-4b26-b5aa-6b8c4f831cb7',NULL,'registration-terms-and-conditions','d63d5856-45a9-4459-8724-12c3fcd22dd7','db9da97e-f368-4e31-9cc6-50e1468d10d6',3,70,0,NULL,NULL),('66e89043-3895-4bbb-9e08-7850e1d57984',NULL,'auth-spnego','d63d5856-45a9-4459-8724-12c3fcd22dd7','cb7054ba-151d-40bf-b348-e9f1fc4a6685',3,20,0,NULL,NULL),('671e9d72-7eff-4aed-800b-0dba9adc61a8',NULL,'idp-create-user-if-unique','d63d5856-45a9-4459-8724-12c3fcd22dd7','a42117b2-02ac-491e-aeb0-7b4b14db22a7',2,10,0,NULL,'ee51c233-568a-42f6-b83e-53c8739117f8'),('68a2a16c-3b9f-41db-b8e3-c45439afc3cb',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','cb7054ba-151d-40bf-b348-e9f1fc4a6685',2,30,1,'a65debad-f4aa-47f3-8c7c-20bcc07b3304',NULL),('6e547094-9c21-4e91-8eda-8867740761be',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','52023f10-6e6f-4361-91b8-9d72806b729e',1,20,1,'372c22d0-1215-4616-8758-aeb594fe0bd9',NULL),('70c91ef9-05ad-439b-88cf-eb58726cb60c',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','a65debad-f4aa-47f3-8c7c-20bcc07b3304',1,20,1,'9e47dc1c-4e34-44f2-933e-26c39e549fc1',NULL),('725aa0d7-95c4-4e39-9fd7-da9e78a27f13',NULL,'reset-password','d63d5856-45a9-4459-8724-12c3fcd22dd7','b8ade12a-f5a4-40c3-ba3a-e91db06531b2',0,30,0,NULL,NULL),('73471935-74dd-420b-a023-750925534545',NULL,'auth-cookie','d63d5856-45a9-4459-8724-12c3fcd22dd7','cb7054ba-151d-40bf-b348-e9f1fc4a6685',2,10,0,NULL,NULL),('7779110d-d1df-4a55-84b5-877ed2fa36ac',NULL,'idp-username-password-form','d63d5856-45a9-4459-8724-12c3fcd22dd7','52023f10-6e6f-4361-91b8-9d72806b729e',0,10,0,NULL,NULL),('885131cb-3d11-4e8b-b459-71085f02aa76',NULL,'direct-grant-validate-username','d63d5856-45a9-4459-8724-12c3fcd22dd7','02e57919-beca-4a7e-8120-2b8c365f62b1',0,10,0,NULL,NULL),('98fddbb5-63bb-47eb-99a0-71f79b7a112d',NULL,'registration-recaptcha-action','d63d5856-45a9-4459-8724-12c3fcd22dd7','db9da97e-f368-4e31-9cc6-50e1468d10d6',3,60,0,NULL,NULL),('9eff0ed3-0ef0-4ca4-b32a-ea2ee496531c',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','9d4a5fb5-3ee0-40ff-a763-76028a60eafa',0,20,1,'04358a01-6679-46e9-8dc6-380e9a7b7a09',NULL),('a25bb71b-f685-498c-8dd6-1415cb9c6c5c',NULL,'identity-provider-redirector','d63d5856-45a9-4459-8724-12c3fcd22dd7','cb7054ba-151d-40bf-b348-e9f1fc4a6685',2,25,0,NULL,NULL),('ac93ffb1-6e7f-4239-806d-7ad66a38bdfa',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','5e943095-9109-4478-b769-7fa0fc643d7c',0,20,1,'a42117b2-02ac-491e-aeb0-7b4b14db22a7',NULL),('bcd65236-108e-49ed-9e64-6a7286bfd793',NULL,'auth-username-password-form','d63d5856-45a9-4459-8724-12c3fcd22dd7','a65debad-f4aa-47f3-8c7c-20bcc07b3304',0,10,0,NULL,NULL),('bd01fd3f-0512-4f9a-805c-903ff08376fb',NULL,'registration-page-form','d63d5856-45a9-4459-8724-12c3fcd22dd7','03d89bb3-5293-40e1-82ff-7623b1a5f880',0,10,1,'db9da97e-f368-4e31-9cc6-50e1468d10d6',NULL),('be5538ca-cf94-4543-8515-0af1337204a6',NULL,'reset-credential-email','d63d5856-45a9-4459-8724-12c3fcd22dd7','b8ade12a-f5a4-40c3-ba3a-e91db06531b2',0,20,0,NULL,NULL),('c68a3e6b-e73d-4b39-816b-a40f70308200',NULL,'auth-otp-form','d63d5856-45a9-4459-8724-12c3fcd22dd7','9e47dc1c-4e34-44f2-933e-26c39e549fc1',0,20,0,NULL,NULL),('c9127930-f773-4414-a39b-0eb674f544a6',NULL,'idp-email-verification','d63d5856-45a9-4459-8724-12c3fcd22dd7','04358a01-6679-46e9-8dc6-380e9a7b7a09',2,10,0,NULL,NULL),('cfe5c5fb-eca4-4360-a0c0-f420a2785983',NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','02e57919-beca-4a7e-8120-2b8c365f62b1',1,30,1,'f06a04f1-acfd-4824-b672-871e89bc8ef8',NULL),('d934ed59-ef55-4e27-8c03-532121e1232e',NULL,'conditional-user-configured','d63d5856-45a9-4459-8724-12c3fcd22dd7','9e47dc1c-4e34-44f2-933e-26c39e549fc1',0,10,0,NULL,NULL),('d9e38f1b-a555-4f5c-bd7f-a290e8ec8dc8',NULL,'reset-otp','d63d5856-45a9-4459-8724-12c3fcd22dd7','41d680c0-f63d-4323-9f89-bd198d5e1dd6',0,20,0,NULL,NULL),('de51db1c-5293-4496-9aea-a655cd39b92f',NULL,'idp-confirm-link','d63d5856-45a9-4459-8724-12c3fcd22dd7','9d4a5fb5-3ee0-40ff-a763-76028a60eafa',0,10,0,NULL,NULL),('df44679f-1c7e-42f7-bdab-6d2611a13cab',NULL,'client-jwt','d63d5856-45a9-4459-8724-12c3fcd22dd7','f2c89812-07a2-4af0-a791-8ac0781bd131',2,20,0,NULL,NULL),('e96ea813-1418-4bbe-834d-be05f08100f4',NULL,'docker-http-basic-authenticator','d63d5856-45a9-4459-8724-12c3fcd22dd7','3ffaf962-80a0-4a45-ac2e-63f1cf0b3686',0,10,0,NULL,NULL),('ef17f616-e180-479c-aecf-e42c099eea32',NULL,'client-secret','d63d5856-45a9-4459-8724-12c3fcd22dd7','f2c89812-07a2-4af0-a791-8ac0781bd131',2,10,0,NULL,NULL),('fc5604ce-bef9-4c1d-b44b-aec3a305ae44',NULL,'registration-password-action','d63d5856-45a9-4459-8724-12c3fcd22dd7','db9da97e-f368-4e31-9cc6-50e1468d10d6',0,50,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('02e57919-beca-4a7e-8120-2b8c365f62b1','direct grant','OpenID Connect Resource Owner Grant','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('03d89bb3-5293-40e1-82ff-7623b1a5f880','registration','registration flow','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('04358a01-6679-46e9-8dc6-380e9a7b7a09','Account verification options','Method with which to verity the existing account','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('1571de53-94cb-4988-bf32-c97800dd5a7d','saml ecp','SAML ECP Profile Authentication Flow','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('372c22d0-1215-4616-8758-aeb594fe0bd9','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('3ffaf962-80a0-4a45-ac2e-63f1cf0b3686','docker auth','Used by Docker clients to authenticate against the IDP','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('41d680c0-f63d-4323-9f89-bd198d5e1dd6','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('52023f10-6e6f-4361-91b8-9d72806b729e','Verify Existing Account by Re-authentication','Reauthentication of existing account','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('5e943095-9109-4478-b769-7fa0fc643d7c','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('9d4a5fb5-3ee0-40ff-a763-76028a60eafa','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('9e47dc1c-4e34-44f2-933e-26c39e549fc1','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('a42117b2-02ac-491e-aeb0-7b4b14db22a7','User creation or linking','Flow for the existing/non-existing user alternatives','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('a65debad-f4aa-47f3-8c7c-20bcc07b3304','forms','Username, password, otp and other auth forms.','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('b8ade12a-f5a4-40c3-ba3a-e91db06531b2','reset credentials','Reset credentials for a user if they forgot their password or something','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('cb7054ba-151d-40bf-b348-e9f1fc4a6685','browser','browser based authentication','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',1,1),('db9da97e-f368-4e31-9cc6-50e1468d10d6','registration form','registration form','d63d5856-45a9-4459-8724-12c3fcd22dd7','form-flow',0,1),('f06a04f1-acfd-4824-b672-871e89bc8ef8','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','d63d5856-45a9-4459-8724-12c3fcd22dd7','basic-flow',0,1),('f2c89812-07a2-4af0-a791-8ac0781bd131','clients','Base authentication for clients','d63d5856-45a9-4459-8724-12c3fcd22dd7','client-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('424932ae-ef89-4921-877e-1c02f9e64a5c','review profile config','d63d5856-45a9-4459-8724-12c3fcd22dd7'),('ee51c233-568a-42f6-b83e-53c8739117f8','create unique user config','d63d5856-45a9-4459-8724-12c3fcd22dd7');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('424932ae-ef89-4921-877e-1c02f9e64a5c','missing','update.profile.on.first.login'),('ee51c233-568a-42f6-b83e-53c8739117f8','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('1625a12a-cd9e-4a46-b504-150558240eaf',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('24da96d3-9f67-40ae-99c4-fbedfb709bf8',1,1,'_platform',0,0,'WPupAQvMGMerpR9PSBYlQcaf86tCb3Uj',NULL,0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('56c87de1-4813-4d28-a459-8405f32b68cf',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('577e2716-7b68-4a25-9ee6-73a6791054c8',1,0,'_platform-console',0,1,'0AYMbLSLwQt3mNV0A3An8s0or6U5K0uF',NULL,0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('83598f0e-84a3-49b2-8a9a-afc445eb2826',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('ca6ac670-98a2-47a1-bc02-1ead139d5908',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'d63d5856-45a9-4459-8724-12c3fcd22dd7','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('1625a12a-cd9e-4a46-b504-150558240eaf','pkce.code.challenge.method','S256'),('1625a12a-cd9e-4a46-b504-150558240eaf','post.logout.redirect.uris','+'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','backchannel.logout.revoke.offline.tokens','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','backchannel.logout.session.required','true'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','client.secret.creation.time','1755646285'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','client_credentials.use_refresh_token','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','display.on.consent.screen','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','exclude.session.state.from.auth.response','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','id.token.as.detached.signature','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','oauth2.device.authorization.grant.enabled','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','oidc.ciba.grant.enabled','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','require.pushed.authorization.requests','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.artifact.binding','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.assertion.signature','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.authnstatement','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.client.signature','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.encrypt','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.force.post.binding','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.multivalued.roles','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.onetimeuse.condition','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.server.signature','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml.server.signature.keyinfo.ext','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','saml_force_name_id_format','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','tls.client.certificate.bound.access.tokens','false'),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','use.refresh.tokens','true'),('56c87de1-4813-4d28-a459-8405f32b68cf','pkce.code.challenge.method','S256'),('56c87de1-4813-4d28-a459-8405f32b68cf','post.logout.redirect.uris','+'),('577e2716-7b68-4a25-9ee6-73a6791054c8','backchannel.logout.revoke.offline.tokens','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','backchannel.logout.session.required','true'),('577e2716-7b68-4a25-9ee6-73a6791054c8','client.secret.creation.time','1755646286'),('577e2716-7b68-4a25-9ee6-73a6791054c8','client_credentials.use_refresh_token','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','display.on.consent.screen','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','exclude.session.state.from.auth.response','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','id.token.as.detached.signature','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','oauth2.device.authorization.grant.enabled','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','oidc.ciba.grant.enabled','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','post.logout.redirect.uris','/*'),('577e2716-7b68-4a25-9ee6-73a6791054c8','require.pushed.authorization.requests','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.artifact.binding','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.assertion.signature','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.authnstatement','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.client.signature','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.encrypt','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.force.post.binding','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.multivalued.roles','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.onetimeuse.condition','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.server.signature','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml.server.signature.keyinfo.ext','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','saml_force_name_id_format','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','tls.client.certificate.bound.access.tokens','false'),('577e2716-7b68-4a25-9ee6-73a6791054c8','use.refresh.tokens','true'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','access.token.lifespan','86400'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','acr.loa.map','{}'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','backchannel.logout.revoke.offline.tokens','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','backchannel.logout.session.required','true'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','client.session.idle.timeout','86400'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','client.session.max.lifespan','86400'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','client_credentials.use_refresh_token','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','display.on.consent.screen','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','exclude.session.state.from.auth.response','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','frontchannel.logout.session.required','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','id.token.as.detached.signature','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','oauth2.device.authorization.grant.enabled','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','oidc.ciba.grant.enabled','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','require.pushed.authorization.requests','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.allow.ecp.flow','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.artifact.binding','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.assertion.signature','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.authnstatement','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.client.signature','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.encrypt','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.force.post.binding','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.multivalued.roles','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.onetimeuse.condition','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.server.signature','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml.server.signature.keyinfo.ext','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','saml_force_name_id_format','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','tls.client.certificate.bound.access.tokens','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','token.response.type.bearer.lower-case','false'),('83598f0e-84a3-49b2-8a9a-afc445eb2826','use.refresh.tokens','true'),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('34fd6cda-da7e-41e6-b95b-898044ea566e','offline_access','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect built-in scope: offline_access','openid-connect'),('44a01ecc-e357-491a-9dd9-a2cae10bd743','phone','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect built-in scope: phone','openid-connect'),('6a1c8de7-0e73-4ea4-b531-afefc3694e2e','roles','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect scope for add user roles to the access token','openid-connect'),('6bc11853-b90c-4d1d-a355-21f6214b645f','address','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect built-in scope: address','openid-connect'),('75bb8e6c-835e-491c-8c49-ead3a6fe6981','microprofile-jwt','d63d5856-45a9-4459-8724-12c3fcd22dd7','Microprofile - JWT built-in scope','openid-connect'),('b2cb9c99-dd77-4be7-a3af-35b5d59ce52d','profile','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect built-in scope: profile','openid-connect'),('b497551d-7bdd-4f19-951f-69cc8045ce71','role_list','d63d5856-45a9-4459-8724-12c3fcd22dd7','SAML role list','saml'),('c79dba05-e81e-4896-a598-a14e49e2c479','acr','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('d3d749fb-5120-49f3-b8ac-4adae5cdbb9a','web-origins','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('e21eb8d2-dfc1-4378-a475-61f75853ea0c','email','d63d5856-45a9-4459-8724-12c3fcd22dd7','OpenID Connect built-in scope: email','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('34fd6cda-da7e-41e6-b95b-898044ea566e','${offlineAccessScopeConsentText}','consent.screen.text'),('34fd6cda-da7e-41e6-b95b-898044ea566e','true','display.on.consent.screen'),('44a01ecc-e357-491a-9dd9-a2cae10bd743','${phoneScopeConsentText}','consent.screen.text'),('44a01ecc-e357-491a-9dd9-a2cae10bd743','true','display.on.consent.screen'),('44a01ecc-e357-491a-9dd9-a2cae10bd743','true','include.in.token.scope'),('6a1c8de7-0e73-4ea4-b531-afefc3694e2e','${rolesScopeConsentText}','consent.screen.text'),('6a1c8de7-0e73-4ea4-b531-afefc3694e2e','true','display.on.consent.screen'),('6a1c8de7-0e73-4ea4-b531-afefc3694e2e','false','include.in.token.scope'),('6bc11853-b90c-4d1d-a355-21f6214b645f','${addressScopeConsentText}','consent.screen.text'),('6bc11853-b90c-4d1d-a355-21f6214b645f','true','display.on.consent.screen'),('6bc11853-b90c-4d1d-a355-21f6214b645f','true','include.in.token.scope'),('75bb8e6c-835e-491c-8c49-ead3a6fe6981','false','display.on.consent.screen'),('75bb8e6c-835e-491c-8c49-ead3a6fe6981','true','include.in.token.scope'),('b2cb9c99-dd77-4be7-a3af-35b5d59ce52d','${profileScopeConsentText}','consent.screen.text'),('b2cb9c99-dd77-4be7-a3af-35b5d59ce52d','true','display.on.consent.screen'),('b2cb9c99-dd77-4be7-a3af-35b5d59ce52d','true','include.in.token.scope'),('b497551d-7bdd-4f19-951f-69cc8045ce71','${samlRoleListScopeConsentText}','consent.screen.text'),('b497551d-7bdd-4f19-951f-69cc8045ce71','true','display.on.consent.screen'),('c79dba05-e81e-4896-a598-a14e49e2c479','false','display.on.consent.screen'),('c79dba05-e81e-4896-a598-a14e49e2c479','false','include.in.token.scope'),('d3d749fb-5120-49f3-b8ac-4adae5cdbb9a','','consent.screen.text'),('d3d749fb-5120-49f3-b8ac-4adae5cdbb9a','false','display.on.consent.screen'),('d3d749fb-5120-49f3-b8ac-4adae5cdbb9a','false','include.in.token.scope'),('e21eb8d2-dfc1-4378-a475-61f75853ea0c','${emailScopeConsentText}','consent.screen.text'),('e21eb8d2-dfc1-4378-a475-61f75853ea0c','true','display.on.consent.screen'),('e21eb8d2-dfc1-4378-a475-61f75853ea0c','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('1625a12a-cd9e-4a46-b504-150558240eaf','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('1625a12a-cd9e-4a46-b504-150558240eaf','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('1625a12a-cd9e-4a46-b504-150558240eaf','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('1625a12a-cd9e-4a46-b504-150558240eaf','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('1625a12a-cd9e-4a46-b504-150558240eaf','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('1625a12a-cd9e-4a46-b504-150558240eaf','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('1625a12a-cd9e-4a46-b504-150558240eaf','c79dba05-e81e-4896-a598-a14e49e2c479',1),('1625a12a-cd9e-4a46-b504-150558240eaf','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('1625a12a-cd9e-4a46-b504-150558240eaf','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('24da96d3-9f67-40ae-99c4-fbedfb709bf8','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('56c87de1-4813-4d28-a459-8405f32b68cf','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('56c87de1-4813-4d28-a459-8405f32b68cf','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('56c87de1-4813-4d28-a459-8405f32b68cf','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('56c87de1-4813-4d28-a459-8405f32b68cf','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('56c87de1-4813-4d28-a459-8405f32b68cf','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('56c87de1-4813-4d28-a459-8405f32b68cf','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('56c87de1-4813-4d28-a459-8405f32b68cf','c79dba05-e81e-4896-a598-a14e49e2c479',1),('56c87de1-4813-4d28-a459-8405f32b68cf','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('56c87de1-4813-4d28-a459-8405f32b68cf','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('577e2716-7b68-4a25-9ee6-73a6791054c8','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('577e2716-7b68-4a25-9ee6-73a6791054c8','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('577e2716-7b68-4a25-9ee6-73a6791054c8','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('577e2716-7b68-4a25-9ee6-73a6791054c8','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('577e2716-7b68-4a25-9ee6-73a6791054c8','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('577e2716-7b68-4a25-9ee6-73a6791054c8','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('577e2716-7b68-4a25-9ee6-73a6791054c8','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('577e2716-7b68-4a25-9ee6-73a6791054c8','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('83598f0e-84a3-49b2-8a9a-afc445eb2826','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('83598f0e-84a3-49b2-8a9a-afc445eb2826','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('83598f0e-84a3-49b2-8a9a-afc445eb2826','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('83598f0e-84a3-49b2-8a9a-afc445eb2826','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('83598f0e-84a3-49b2-8a9a-afc445eb2826','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('83598f0e-84a3-49b2-8a9a-afc445eb2826','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('83598f0e-84a3-49b2-8a9a-afc445eb2826','c79dba05-e81e-4896-a598-a14e49e2c479',1),('83598f0e-84a3-49b2-8a9a-afc445eb2826','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('83598f0e-84a3-49b2-8a9a-afc445eb2826','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','c79dba05-e81e-4896-a598-a14e49e2c479',1),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('c831ae5a-aa40-4f52-a668-bcb3eee4c8d9','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('ca6ac670-98a2-47a1-bc02-1ead139d5908','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('ca6ac670-98a2-47a1-bc02-1ead139d5908','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('ca6ac670-98a2-47a1-bc02-1ead139d5908','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('ca6ac670-98a2-47a1-bc02-1ead139d5908','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('ca6ac670-98a2-47a1-bc02-1ead139d5908','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('ca6ac670-98a2-47a1-bc02-1ead139d5908','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('ca6ac670-98a2-47a1-bc02-1ead139d5908','c79dba05-e81e-4896-a598-a14e49e2c479',1),('ca6ac670-98a2-47a1-bc02-1ead139d5908','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('ca6ac670-98a2-47a1-bc02-1ead139d5908','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','c79dba05-e81e-4896-a598-a14e49e2c479',1),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','c79dba05-e81e-4896-a598-a14e49e2c479',1),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('f4e8729a-2209-4abe-aae1-c9c8c8eb241d','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('34fd6cda-da7e-41e6-b95b-898044ea566e','1205425e-b92f-489d-a497-0c19a25ca69c');
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
INSERT INTO `COMPONENT` VALUES ('0d3166f0-1b3d-45a1-9963-f95d6c9e5ede','Trusted Hosts','d63d5856-45a9-4459-8724-12c3fcd22dd7','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','anonymous'),('2618e614-dca9-4ec5-84cf-318552d52d28','Allowed Client Scopes','d63d5856-45a9-4459-8724-12c3fcd22dd7','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','anonymous'),('2b9ce7af-c212-490a-bd76-74ca206e4185','aes-generated','d63d5856-45a9-4459-8724-12c3fcd22dd7','aes-generated','org.keycloak.keys.KeyProvider','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL),('2f3a278c-61c6-4d24-ae85-d528096eec05','rsa-generated','d63d5856-45a9-4459-8724-12c3fcd22dd7','rsa-generated','org.keycloak.keys.KeyProvider','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL),('3a5cc8ab-087b-4d41-a918-5d82ecff5be9',NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL),('708313f2-931b-4a22-b1c2-694dbd1f1c27','Max Clients Limit','d63d5856-45a9-4459-8724-12c3fcd22dd7','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','anonymous'),('7647ea3d-7308-4836-9a78-bc786f076050','Allowed Client Scopes','d63d5856-45a9-4459-8724-12c3fcd22dd7','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','authenticated'),('8b39514d-2a6b-4805-821e-46bd29012dd6','Consent Required','d63d5856-45a9-4459-8724-12c3fcd22dd7','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','anonymous'),('a2f227d8-e618-4a57-9078-7cf5ff9e0e96','Allowed Protocol Mapper Types','d63d5856-45a9-4459-8724-12c3fcd22dd7','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','authenticated'),('b5184faf-141a-44c4-bcba-2f81975f63f8','Full Scope Disabled','d63d5856-45a9-4459-8724-12c3fcd22dd7','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','anonymous'),('bda45c50-bb34-419c-84f4-49a2f2a280c4','rsa-enc-generated','d63d5856-45a9-4459-8724-12c3fcd22dd7','rsa-enc-generated','org.keycloak.keys.KeyProvider','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL),('e244a6f8-1870-4881-bdcb-ee5f8142bcf5','Allowed Protocol Mapper Types','d63d5856-45a9-4459-8724-12c3fcd22dd7','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','anonymous'),('febf1674-f752-49dc-b197-f11eaa609936','hmac-generated-hs512','d63d5856-45a9-4459-8724-12c3fcd22dd7','hmac-generated','org.keycloak.keys.KeyProvider','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0b0ef9d3-ac1f-41fb-8956-dd27b93766b1','2b9ce7af-c212-490a-bd76-74ca206e4185','secret','9EyZSTo4RE7lR6yGIJgJuw'),('131807da-9735-42d1-84d6-33874f4f7f24','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','oidc-address-mapper'),('17076f4c-ac47-4f14-bb5d-e53de192efbf','bda45c50-bb34-419c-84f4-49a2f2a280c4','keyUse','ENC'),('2a2d1c3e-4c21-49aa-bb37-cbdde7b6ae82','febf1674-f752-49dc-b197-f11eaa609936','kid','ce7e05c2-52b2-41df-9d4b-b9b37ac019ac'),('3a107578-035c-4c7e-b8f8-b91c5b1e6676','bda45c50-bb34-419c-84f4-49a2f2a280c4','certificate','MIICmzCCAYMCBgGYxKw6nzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUwODE5MjMyOTM4WhcNMzUwODE5MjMzMTE4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDezNhgMKZwP/UfJluzvHUaae0R0nkVEleXEIjsSI60+TFK1ivJi5g0z2zT5GxBt0rOq3QF1yn5Vsi66gEYrPdEwjdb3T+0prXwrrUbjYXAQKU9AmPw4cm1TYBxby1T3NE9UsFYyClc3z0j0LLKB0NFz0RX3WDppLy5DaIA9qaTmD9ntaezKkwjddZwt5S7XXPf+zosOIbS7CxWBsuwzJbjPRYrXhpeWugGw/jP6IKecjQU7Yvl8S6fXh1dlXc9+/7GF+wxu4seKhrt1Ge/PMwq2yQHcG/zJR0N7aZj9Del1xx7ZJTqeeiLgyUoaStKqooo0EUWVACc4JtQWA4zo+4TAgMBAAEwDQYJKoZIhvcNAQELBQADggEBALlL2ZcigR0xKqoLr/rZ3U+2q/rrVLrPuPlKBwItchGqsIYOXAoQXSluJtKCVI4P1OHIelWluB8XUf854Ti2RKVWfKzyvGdJaEb9jYtMckPIVX5t0+9uVp0nV7egAkvC1pUttnfmJKYDLm53apwlYMlCgua/P0pDSclsdo/rt3sJ6JC0OqzRoVLstHZ4h4sGSRYZ7KYm2uhD2F/b23BjNJwM/7ZpFi8ldgaSg28VQl7Ii32E2UzWRJJ4i58+Gdjre1H5xxKUT04EhFo8JhKL/VfiiFPRzUzY4RMekWDFvNO0APlAhmAuSl9PcReOUvuytbLI72Aubm/8IviaI8d+4X0='),('3f25b110-a861-4c79-8168-49cea23a52c3','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','saml-role-list-mapper'),('446157b9-b897-4797-aa0b-eeb1fd41f339','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','saml-user-property-mapper'),('48160d98-fe91-45ab-85f0-92733f7990a2','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('55cccdae-e106-412d-b888-55e4cf9f548a','3a5cc8ab-087b-4d41-a918-5d82ecff5be9','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('63959a22-c5e6-4adf-90a8-66e95303751d','2b9ce7af-c212-490a-bd76-74ca206e4185','priority','100'),('79c2eefe-d40e-4c7b-85ae-af86d52af765','2f3a278c-61c6-4d24-ae85-d528096eec05','keyUse','SIG'),('7e1f6888-71af-490b-815e-098a240053aa','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7fd116ec-b0e2-4c40-acd5-326fc4147096','0d3166f0-1b3d-45a1-9963-f95d6c9e5ede','host-sending-registration-request-must-match','true'),('87158e72-b74b-4e46-af0e-a53c6d260336','febf1674-f752-49dc-b197-f11eaa609936','priority','100'),('877ba3dc-33f2-4cb8-b019-313785df515b','bda45c50-bb34-419c-84f4-49a2f2a280c4','privateKey','MIIEowIBAAKCAQEA3szYYDCmcD/1HyZbs7x1GmntEdJ5FRJXlxCI7EiOtPkxStYryYuYNM9s0+RsQbdKzqt0Bdcp+VbIuuoBGKz3RMI3W90/tKa18K61G42FwEClPQJj8OHJtU2AcW8tU9zRPVLBWMgpXN89I9CyygdDRc9EV91g6aS8uQ2iAPamk5g/Z7WnsypMI3XWcLeUu11z3/s6LDiG0uwsVgbLsMyW4z0WK14aXlroBsP4z+iCnnI0FO2L5fEun14dXZV3Pfv+xhfsMbuLHioa7dRnvzzMKtskB3Bv8yUdDe2mY/Q3pdcce2SU6nnoi4MlKGkrSqqKKNBFFlQAnOCbUFgOM6PuEwIDAQABAoIBABRtDU1MSIYJUbddtJHhg47nX9pUGdEKZx4CCxDhL2F8vb3RrXQDKJzMLiWtpGsl8GV1fI6TL6rx/4x7VZxl3HQ2ULhLAW3WIYoDn7ZQnuQwSQszLpHFRtEos3oy1MytIEBnV4iEg/Oawn0ybfcYUVzovVLyMydYeLYyf269LiphDVvsRiDWdceS9CXOZuHAgJn1fd4jC9ppX0Mlinj3XjHT05ymsmPWMjz1rpe1puURWHe6TH3MMDon4K9Lvp/eWMoanRpDGnoT33GDzeLGCLEcvtJQGqQT4qx4MHh8YFuMqOeTihVwfztDcZbzFiUCjn+I92C5sS4k36AaZQlu71ECgYEA/DtrQPeIX8bHR4t/xBr9Cevk5l2FmyMKSuYumZ99YJ3gtVy5+H3a4pH3hs2xBq2hZPpZKGrLAVlQMq0opMaUgycWnA+ccH7gx3oICtpl/X22TlJLNveJO/fI18s3VXSpT/EId60/qfL7TbTsMTC4maAY+Ss6Hms1qJsQzS44s9kCgYEA4iDfjcGzR+VK98qCFDIFY6Rg+6sYz04d8VJTbsL9TKGtGcKZNXfGOJfBHds8Ev8FqX4T/Rr4IZzpkK44OC/eEvjcgWvWf2x/YwtbVibI4h0DNMMuPj6F2PnYEs+UhthFQaFHJtADlDRYihLIcex3myUNLsm45hQKAEIfpsZyOcsCgYEA9d7F8hJY8WPHJcqpxPO57U3xV02ay1sg0VoH2uBJS0Eapi+5aKzmDS3UZ6diBOyEAva2qltPgAUb1ApPMDAS3LXhqEbfbBmB63DdHhc+jBda+oXlo7MwJzCmqxQA4GBUGwUOB/rtsDCXH2xZQKoJiFczgM/OW5COQcjGW/vOciECgYBybAPy7RLUzHeUzwnnQjBr7R+N+VPCglqwY+IH5+7YOe8nW8q+vW618EQt4WOSkSzCSSPALUdlasrdBOs5sy8CFp8tde3B6JrE+VgsTc/Uaq3WovThVi3QTwxA6HzVhtX0kbE5OIS3F429wCdhTjBvdt4m0LgY5AbzfoIZl8zw5QKBgGM877iVqcPVtvmXSLlk+qCssu52Pw1KCPmDRvZZAeCVeyVgoCeMUJ2Ymwbx70IG6oQnbxN6ct4SAaFJAohi5k5eITi+eQ+BboY7W2SSHXg7NvGzPUP7Iu0XuTfhFMQJin7YCYUaGEYsRuZN7r3e39FtnHFlityu29ECXcjY0Pgs'),('8b4c6805-af02-46e8-afee-db8fea64aa93','febf1674-f752-49dc-b197-f11eaa609936','secret','18QvgbO4CHeUhifIlO6dZT5vb3Q_IaE5lYyHPlUFV0kq40SvxUxUWvuByBTpjUXxBqOeAHaWGoZtLdjjkaPsk1C3OGdOrc2oCnzFULChAE4BHianwwGmFUiHsJegXWIKbUiL-YkzPpaY75ueJOLYNKceHsabNvlULMAnlX2_OXE'),('8c286e5f-f77c-4b65-aabf-9d7644dea42d','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','oidc-address-mapper'),('8e81416d-ba26-4243-835e-3fa50b10ee14','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('90128461-4150-40d1-ac22-32a8c068f32b','2b9ce7af-c212-490a-bd76-74ca206e4185','kid','51d0276b-1e4b-4460-b3aa-d9f154868414'),('a2a45060-d849-4e3c-8fb8-f6154950e7e1','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','saml-user-property-mapper'),('ae4823ad-1699-4f38-8470-eee2b490ce7b','2618e614-dca9-4ec5-84cf-318552d52d28','allow-default-scopes','true'),('af6bd05f-2751-4043-a18c-acc5fd76230a','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b5b16511-91f4-4df7-9b59-0184366de443','0d3166f0-1b3d-45a1-9963-f95d6c9e5ede','client-uris-must-match','true'),('b5dc3f2a-82d3-4b33-aa70-0c84e07613d0','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','saml-role-list-mapper'),('b6239734-49b9-4ba8-bd20-44c4bf7db835','bda45c50-bb34-419c-84f4-49a2f2a280c4','priority','100'),('b778b3eb-6f1c-44ad-9467-3e9f346bd6e6','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('bf787f44-5674-44f7-ba9b-015bf0038d69','bda45c50-bb34-419c-84f4-49a2f2a280c4','algorithm','RSA-OAEP'),('c3746ab0-fe39-4bda-92fa-35a70d8998da','febf1674-f752-49dc-b197-f11eaa609936','algorithm','HS512'),('c4f184aa-cc54-4086-b725-a504b2ca4b96','708313f2-931b-4a22-b1c2-694dbd1f1c27','max-clients','200'),('c98d4b82-1b20-4f57-ab2e-2fea41ec7c5b','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('cdc3d510-d289-4a61-9fec-8943fc04ab8d','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d14085f1-2bcc-4ccd-9ebe-0db20e933996','2f3a278c-61c6-4d24-ae85-d528096eec05','priority','100'),('d388dde5-18b7-4f85-af5b-31fa0d55ad4f','7647ea3d-7308-4836-9a78-bc786f076050','allow-default-scopes','true'),('d7c5b0ac-9022-4344-a780-79593b2cb24c','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dd0544a1-0e4e-4e46-92af-0a5962474c8b','2f3a278c-61c6-4d24-ae85-d528096eec05','privateKey','MIIEpAIBAAKCAQEA204nI10TPxb9DpXQgj38RMQ2KDdqgnn52+O+lFtFrJK9oH+YmEYiyIy5zjVWglqEOW5EeklJMInjRVc73kq5JCyjC7kAdpWMb/m+n52pgbdEO25io5dNcAJFHmFlY7HyTHFdGsWlzI0slem1+gTdnYKrrEsnJAAy4YNrh8k3/Ekmw8wua7aWHBubcQFZ5B4vMDGOY2YLA5SlwWOGCjfrVE8/llrLgYROLRLISB4d//YBbXLcaP098r/yzTA5HiZGK9e2U31UVU5MfC5FCj4PcpNtLTrmfX0tukc5h+wRSgi+M28rxPwTvHSuNg4J8/ra0dQPVZj7l8IkflG7oBf5VQIDAQABAoIBAAlDWFDck2hfSrS31upMFEs9ScJSG5FuSy5NWiqUXlwx3d5Dysi9HFFXQa6NlIgGAGltQxQyjeuwb0/ppYbiphulN6/SPSGaeHzu/MJrhjzgkPpnqQqa5J5It5hXFHwXszx6WgHm+5/+YzXj0hgWO4bLKFWAiSMypPOJ5FwEakp2zSoM1XzSrXKyef2LpndflzKxl0aGYfdVlsJbk+Xf7WxNAuqmhZ948lIZSz4PGPj9DAtU3iSOyDVra9sYDJm4DKGS/IMxSyefd1Vizi2fPppnH/AfKKfNB4aOiesBIXN0qsbTEUFepLq+Z8Sh+5kOqK/3EC+IiM04ZVNBMP4U1sECgYEA95UCy8O5qC1pS+EqkXeq6SJorMsb3pF37OtVs7zt8g6t5CvP5LcWarfNRmLiT9vAFZc1jkhosf8OYBQM7m4aKeUbqLflN9D02QoKBvv8EzpewRuzfDl6ezwA+GNqM5OKHpjIhEwhpS1ds1KyiylPzfMhH4TmLJWyeUQ0GyaIWjUCgYEA4sMETpq3nxbi1HwBIzyeEeJelA4cKmgSsdfrLfQ3T7wuJzYwbkozB1n+ps791zo0IVkHm4ZE2b1hZfoVP2VPQ8jftiq1oGqk6yzEzBC/Fv6J8CBY/s7CeHQ/8+cE3jqbVRjK7gZTfpGDOgxlMyOr+7gE6AXG7EEhNHv1vsCSBqECgYEA71XTYBuTTCqqEbpXpkwiokCrI+8sv9msLxHIxXosI8VhAKQB0r3TI9MO064fzMdIRxbnpOYGn5tK0EJRxeQV0s4yEMXFBlIvf+iejOXnZscUdmVK+xmtd5gn7/Za4gUMjktv+8SE+eKDJCkbhD+pcBRKvueAgzUrVOND48M6KMkCgYB8J14yU0950SP8RrCwxD2feRtjYJ5XMYgayyc+j9nA1D1IxsiZehKaUdG1LtuYfYuRPpeFtWv481Fibhw4C5XsfQzPRm8PF5SYFnjhacHWKyMG0A8p47ZiEPP67F+j9N6bJunkjJ4mTDFXFPZLm5pMRaKaDp+tNrOhcsVH3VOWQQKBgQDJ9x7rQTHzcfD5LqVDIkwp08D7mJZHPkRZqsVrYkjtwfYXsCo3EGRbaz7knOUq3KKQxZMuafhFe4iOUBbWkRDQtqgfdlonxBlK/98LnUX/+th99Eo9+szgz9HXNZHCKD5XAIKFVqt/yEAS1JWz85IknF8CqM/YkrlLrcaidv7TTQ=='),('de0942ef-91e1-48eb-8412-0962f287b946','2f3a278c-61c6-4d24-ae85-d528096eec05','certificate','MIICmzCCAYMCBgGYxKw6GzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjUwODE5MjMyOTM4WhcNMzUwODE5MjMzMTE4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDbTicjXRM/Fv0OldCCPfxExDYoN2qCefnb476UW0Wskr2gf5iYRiLIjLnONVaCWoQ5bkR6SUkwieNFVzveSrkkLKMLuQB2lYxv+b6fnamBt0Q7bmKjl01wAkUeYWVjsfJMcV0axaXMjSyV6bX6BN2dgqusSyckADLhg2uHyTf8SSbDzC5rtpYcG5txAVnkHi8wMY5jZgsDlKXBY4YKN+tUTz+WWsuBhE4tEshIHh3/9gFtctxo/T3yv/LNMDkeJkYr17ZTfVRVTkx8LkUKPg9yk20tOuZ9fS26RzmH7BFKCL4zbyvE/BO8dK42Dgnz+trR1A9VmPuXwiR+UbugF/lVAgMBAAEwDQYJKoZIhvcNAQELBQADggEBABzQaJTKHh9ViuMC7qB38K9/ydmjQgJFi4e+Rx3TeSjhzPhBd41SP+SFJYnjzBbVG+VgI6isxOwI7i31/Wxm5wXPkHlTmm4SLr8Tj2dkqTo6vaKSXF8oxTvu6rdzG2wWEPLY4p1CDmDWflo7pEuDRfuoY/z77wqPmJNnEyOY0YiTbdi3n7D2iPJWyG9bzAfBN55wnImLXMjewvzeHv59pENuJbAyaL1bFS9ibMcKYGkteSCTjtNI1PbWgHz+w7HBvWLbstOYT5gEXQYC0AU4uoB3RA0Onv7UpiKy2ozxiwANRKt7V87RkqumATgKUynORBeRup8zSsu5VsT5rh/lXb4='),('f846319b-9bed-4387-bd1b-108ccfdfc1c9','e244a6f8-1870-4881-bdcb-ee5f8142bcf5','allowed-protocol-mapper-types','oidc-full-name-mapper'),('fa8a69f4-75a0-4765-8eba-82dec8839aaf','a2f227d8-e618-4a57-9078-7cf5ff9e0e96','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('2c909aee-9b0b-4a51-976b-7d7a474986aa','60bcc479-8ae1-4666-a97c-98e54939a6ca'),('370d7f3e-dfd2-4368-bb90-6bd4d30a9a79','7a233ce3-4fa0-439b-9fca-e9c859b43df5'),('6284fefc-dd29-4ba0-a121-5d03dbee3221','1205425e-b92f-489d-a497-0c19a25ca69c'),('6284fefc-dd29-4ba0-a121-5d03dbee3221','5fd9ec0b-f35a-4aaf-a2f2-0af14cb2d1f2'),('6284fefc-dd29-4ba0-a121-5d03dbee3221','a0ec164e-7836-43da-99e7-a177498eede6'),('6284fefc-dd29-4ba0-a121-5d03dbee3221','ec179260-6564-4ad5-9d8e-fec362c40244'),('722efefd-af7e-41b3-bd82-73c6d610f66c','8fef5738-e4ef-42eb-9e63-be12964a0ce5'),('722efefd-af7e-41b3-bd82-73c6d610f66c','fbd5699b-c160-4904-a553-3f0847984ebb'),('85538690-0cd0-4983-b311-caefb165157d','159adc04-44dc-4fff-b4d8-121a07e89ecf'),('85538690-0cd0-4983-b311-caefb165157d','222b05d1-3674-49d2-beff-535c636a3792'),('85538690-0cd0-4983-b311-caefb165157d','2c909aee-9b0b-4a51-976b-7d7a474986aa'),('85538690-0cd0-4983-b311-caefb165157d','381c5ddd-e435-4ee0-92e5-ae413cc8a33e'),('85538690-0cd0-4983-b311-caefb165157d','3b36946a-2eee-4aca-85b8-b83f00b54e40'),('85538690-0cd0-4983-b311-caefb165157d','47f51427-ea56-440c-b0bc-2279c40cb283'),('85538690-0cd0-4983-b311-caefb165157d','53a361ce-a052-43b5-9b6a-545ebd4f0821'),('85538690-0cd0-4983-b311-caefb165157d','58affaf9-3d14-4f43-a8e9-797440135797'),('85538690-0cd0-4983-b311-caefb165157d','5bc6ec26-08f8-4b00-88cc-04ed332404e7'),('85538690-0cd0-4983-b311-caefb165157d','5d0dfb26-2073-46e1-99ad-91a3109faec1'),('85538690-0cd0-4983-b311-caefb165157d','60bcc479-8ae1-4666-a97c-98e54939a6ca'),('85538690-0cd0-4983-b311-caefb165157d','722efefd-af7e-41b3-bd82-73c6d610f66c'),('85538690-0cd0-4983-b311-caefb165157d','89d92dbe-39fe-47af-9add-03b9b14490d4'),('85538690-0cd0-4983-b311-caefb165157d','8fef5738-e4ef-42eb-9e63-be12964a0ce5'),('85538690-0cd0-4983-b311-caefb165157d','ae9732b1-eadc-4d7f-ad80-5b4f02e66c35'),('85538690-0cd0-4983-b311-caefb165157d','c6eb14c6-8f4a-4fce-ba7d-9b0077741a8a'),('85538690-0cd0-4983-b311-caefb165157d','d626891a-7842-4967-8491-478f5648577f'),('85538690-0cd0-4983-b311-caefb165157d','dfff9d66-f26f-4cd6-8a41-8e1f02a8e879'),('85538690-0cd0-4983-b311-caefb165157d','fbd5699b-c160-4904-a553-3f0847984ebb'),('ec179260-6564-4ad5-9d8e-fec362c40244','f3cec065-2449-4a5b-a52f-fb9e0c378989');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('f0e79389-d21b-41b3-8653-9eed548245d6',NULL,'password','b99bb457-11d0-4564-9d89-fb9ff8f86465',1755646279513,NULL,'{\"value\":\"pt3vWMFn9LFsNbqU3QA3gsUiirluhyEfJscqPAIKBGSvxc6OuZkOlce8xBf97tfJM61xXPdXf60J1d17AckP1w==\",\"salt\":\"6HzgnmR6i/9X1URbyyIrcg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2025-08-20 08:31:09',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2025-08-20 08:31:09',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2025-08-20 08:31:09',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2025-08-20 08:31:09',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2025-08-20 08:31:10',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2025-08-20 08:31:10',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2025-08-20 08:31:10',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2025-08-20 08:31:10',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2025-08-20 08:31:10',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2025-08-20 08:31:11',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2025-08-20 08:31:11',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2025-08-20 08:31:11',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2025-08-20 08:31:11',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-08-20 08:31:11',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-08-20 08:31:11',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-08-20 08:31:11',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2025-08-20 08:31:11',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2025-08-20 08:31:11',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2025-08-20 08:31:11',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2025-08-20 08:31:11',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2025-08-20 08:31:11',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2025-08-20 08:31:11',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2025-08-20 08:31:11',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2025-08-20 08:31:11',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2025-08-20 08:31:11',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2025-08-20 08:31:12',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2025-08-20 08:31:12',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2025-08-20 08:31:12',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2025-08-20 08:31:12',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2025-08-20 08:31:12',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2025-08-20 08:31:12',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2025-08-20 08:31:12',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-08-20 08:31:12',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-08-20 08:31:12',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-08-20 08:31:13',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2025-08-20 08:31:13',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2025-08-20 08:31:13',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'5646267810'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2025-08-20 08:31:13',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2025-08-20 08:31:13',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2025-08-20 08:31:13',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2025-08-20 08:31:13',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2025-08-20 08:31:13',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2025-08-20 08:31:13',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2025-08-20 08:31:13',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-08-20 08:31:13',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-08-20 08:31:13',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-08-20 08:31:13',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-08-20 08:31:13',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2025-08-20 08:31:13',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2025-08-20 08:31:14',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2025-08-20 08:31:14',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2025-08-20 08:31:14',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2025-08-20 08:31:14',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2025-08-20 08:31:14',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-08-20 08:31:14',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-08-20 08:31:14',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-08-20 08:31:14',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2025-08-20 08:31:15',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2025-08-20 08:31:15',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2025-08-20 08:31:15',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2025-08-20 08:31:15',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2025-08-20 08:31:15',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2025-08-20 08:31:15',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2025-08-20 08:31:15',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2025-08-20 08:31:15',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2025-08-20 08:31:15',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2025-08-20 08:31:15',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2025-08-20 08:31:15',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2025-08-20 08:31:15',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2025-08-20 08:31:15',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'5646267810'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2025-08-20 08:31:15',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'5646267810'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-08-20 08:31:15',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'5646267810'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-08-20 08:31:15',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'5646267810'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-08-20 08:31:15',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'5646267810'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-08-20 08:31:15',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2025-08-20 08:31:15',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-08-20 08:31:15',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-08-20 08:31:15',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-08-20 08:31:15',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2025-08-20 08:31:15',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-08-20 08:31:15',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-08-20 08:31:15',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-08-20 08:31:15',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-08-20 08:31:15',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'5646267810'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2025-08-20 08:31:15',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2025-08-20 08:31:15',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'5646267810'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2025-08-20 08:31:15',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2025-08-20 08:31:15',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'5646267810'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'5646267810'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'5646267810'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2025-08-20 08:31:15',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:15',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'5646267810'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:15',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:15',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:15',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:16',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:16',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2025-08-20 08:31:16',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2025-08-20 08:31:16',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2025-08-20 08:31:16',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2025-08-20 08:31:16',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2025-08-20 08:31:16',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-08-20 08:31:16',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-08-20 08:31:16',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'5646267810'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2025-08-20 08:31:16',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2025-08-20 08:31:16',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2025-08-20 08:31:16',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'5646267810'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2025-08-20 08:31:16',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2025-08-20 08:31:16',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2025-08-20 08:31:16',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2025-08-20 08:31:16',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'5646267810'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2025-08-20 08:31:16',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-08-20 08:31:16',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-08-20 08:31:16',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-08-20 08:31:16',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2025-08-20 08:31:16',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-08-20 08:31:16',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-08-20 08:31:16',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2025-08-20 08:31:16',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'5646267810');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('d63d5856-45a9-4459-8724-12c3fcd22dd7','34fd6cda-da7e-41e6-b95b-898044ea566e',0),('d63d5856-45a9-4459-8724-12c3fcd22dd7','44a01ecc-e357-491a-9dd9-a2cae10bd743',0),('d63d5856-45a9-4459-8724-12c3fcd22dd7','6a1c8de7-0e73-4ea4-b531-afefc3694e2e',1),('d63d5856-45a9-4459-8724-12c3fcd22dd7','6bc11853-b90c-4d1d-a355-21f6214b645f',0),('d63d5856-45a9-4459-8724-12c3fcd22dd7','75bb8e6c-835e-491c-8c49-ead3a6fe6981',0),('d63d5856-45a9-4459-8724-12c3fcd22dd7','b2cb9c99-dd77-4be7-a3af-35b5d59ce52d',1),('d63d5856-45a9-4459-8724-12c3fcd22dd7','b497551d-7bdd-4f19-951f-69cc8045ce71',1),('d63d5856-45a9-4459-8724-12c3fcd22dd7','c79dba05-e81e-4896-a598-a14e49e2c479',1),('d63d5856-45a9-4459-8724-12c3fcd22dd7','d3d749fb-5120-49f3-b8ac-4adae5cdbb9a',1),('d63d5856-45a9-4459-8724-12c3fcd22dd7','e21eb8d2-dfc1-4378-a475-61f75853ea0c',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('108609a5-9680-4d92-9427-8d7f1ba3131e','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_view-applications}','view-applications','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('1205425e-b92f-489d-a497-0c19a25ca69c','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,'${role_offline-access}','offline_access','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL,NULL),('159adc04-44dc-4fff-b4d8-121a07e89ecf','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_view-identity-providers}','view-identity-providers','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('222b05d1-3674-49d2-beff-535c636a3792','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_create-client}','create-client','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('2c909aee-9b0b-4a51-976b-7d7a474986aa','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_view-clients}','view-clients','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('370d7f3e-dfd2-4368-bb90-6bd4d30a9a79','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_manage-consent}','manage-consent','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('381c5ddd-e435-4ee0-92e5-ae413cc8a33e','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_manage-authorization}','manage-authorization','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('3b36946a-2eee-4aca-85b8-b83f00b54e40','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_manage-identity-providers}','manage-identity-providers','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('47f51427-ea56-440c-b0bc-2279c40cb283','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_query-realms}','query-realms','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('53a361ce-a052-43b5-9b6a-545ebd4f0821','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_manage-clients}','manage-clients','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('58affaf9-3d14-4f43-a8e9-797440135797','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_manage-events}','manage-events','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('5bc6ec26-08f8-4b00-88cc-04ed332404e7','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,'${role_create-realm}','create-realm','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL,NULL),('5d0dfb26-2073-46e1-99ad-91a3109faec1','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_manage-realm}','manage-realm','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('5fd9ec0b-f35a-4aaf-a2f2-0af14cb2d1f2','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_view-profile}','view-profile','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('60bcc479-8ae1-4666-a97c-98e54939a6ca','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_query-clients}','query-clients','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('6284fefc-dd29-4ba0-a121-5d03dbee3221','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,'${role_default-roles}','default-roles-master','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL,NULL),('6a251f0a-6a3c-4037-b1f6-5db6859be2e1','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_view-groups}','view-groups','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('722efefd-af7e-41b3-bd82-73c6d610f66c','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_view-users}','view-users','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('7a233ce3-4fa0-439b-9fca-e9c859b43df5','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_view-consent}','view-consent','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('85538690-0cd0-4983-b311-caefb165157d','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,'${role_admin}','admin','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL,NULL),('89d92dbe-39fe-47af-9add-03b9b14490d4','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_manage-users}','manage-users','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('8d27a13f-b355-4dc5-8798-eac4212aa336','ca6ac670-98a2-47a1-bc02-1ead139d5908',1,'${role_read-token}','read-token','d63d5856-45a9-4459-8724-12c3fcd22dd7','ca6ac670-98a2-47a1-bc02-1ead139d5908',NULL),('8fef5738-e4ef-42eb-9e63-be12964a0ce5','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_query-users}','query-users','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('91b7944d-9e3c-4bcf-bae8-b7c749cfcd40','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_delete-account}','delete-account','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('a0ec164e-7836-43da-99e7-a177498eede6','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,'${role_uma_authorization}','uma_authorization','d63d5856-45a9-4459-8724-12c3fcd22dd7',NULL,NULL),('ae9732b1-eadc-4d7f-ad80-5b4f02e66c35','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_impersonation}','impersonation','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('c6eb14c6-8f4a-4fce-ba7d-9b0077741a8a','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_view-realm}','view-realm','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('d626891a-7842-4967-8491-478f5648577f','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_view-events}','view-events','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('dfff9d66-f26f-4cd6-8a41-8e1f02a8e879','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_view-authorization}','view-authorization','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL),('ec179260-6564-4ad5-9d8e-fec362c40244','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_manage-account}','manage-account','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('f3cec065-2449-4a5b-a52f-fb9e0c378989','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',1,'${role_manage-account-links}','manage-account-links','d63d5856-45a9-4459-8724-12c3fcd22dd7','e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1',NULL),('fbd5699b-c160-4904-a553-3f0847984ebb','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1,'${role_query-groups}','query-groups','d63d5856-45a9-4459-8724-12c3fcd22dd7','c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('p9wby','24.0.5',1755646276);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0166882c-17ec-4499-9e7c-b449d4de93c0','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'75bb8e6c-835e-491c-8c49-ead3a6fe6981'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'44a01ecc-e357-491a-9dd9-a2cae10bd743'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('1fd2d536-2d85-4254-b984-c5bdf8045584','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('27c27d40-1b79-48b8-b7e6-4b75f131cfeb','full name','openid-connect','oidc-full-name-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('3d10c743-58fe-4209-b24b-34b7d86fe9f6','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'d3d749fb-5120-49f3-b8ac-4adae5cdbb9a'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'6a1c8de7-0e73-4ea4-b531-afefc3694e2e'),('599b5935-6e60-4309-8e92-c0dd32af666a','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('5ce9bbd5-64c9-4629-a0a8-d33783063177','role list','saml','saml-role-list-mapper',NULL,'b497551d-7bdd-4f19-951f-69cc8045ce71'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','24da96d3-9f67-40ae-99c4-fbedfb709bf8',NULL),('5e995016-7c01-4df4-9236-603af3dd88fe','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'6a1c8de7-0e73-4ea4-b531-afefc3694e2e'),('694d37f8-b493-43b3-93cb-c4d9f463892a','acr loa level','openid-connect','oidc-acr-mapper',NULL,'c79dba05-e81e-4896-a598-a14e49e2c479'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','locale','openid-connect','oidc-usermodel-attribute-mapper','1625a12a-cd9e-4a46-b504-150558240eaf',NULL),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'6a1c8de7-0e73-4ea4-b531-afefc3694e2e'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','24da96d3-9f67-40ae-99c4-fbedfb709bf8',NULL),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('b6533ee3-d294-4374-b7ac-5af34213f450','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'44a01ecc-e357-491a-9dd9-a2cae10bd743'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'e21eb8d2-dfc1-4378-a475-61f75853ea0c'),('c98e825f-48be-48e1-93e7-71ba24ef5df1','audience resolve','openid-connect','oidc-audience-resolve-mapper','56c87de1-4813-4d28-a459-8405f32b68cf',NULL),('cf1dec99-2290-4393-a0cb-e997225e346a','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e21eb8d2-dfc1-4378-a475-61f75853ea0c'),('d01073d7-101e-44fe-9713-b9fbfa062092','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('d0559146-8da6-43ef-8610-1851112fa845','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'75bb8e6c-835e-491c-8c49-ead3a6fe6981'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('ef61647a-234a-458a-babc-26948fb13819','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','24da96d3-9f67-40ae-99c4-fbedfb709bf8',NULL),('f8e5c5d1-70da-402f-8f80-46013dbd7800','address','openid-connect','oidc-address-mapper',NULL,'6bc11853-b90c-4d1d-a355-21f6214b645f'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b2cb9c99-dd77-4be7-a3af-35b5d59ce52d');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0166882c-17ec-4499-9e7c-b449d4de93c0','true','access.token.claim'),('0166882c-17ec-4499-9e7c-b449d4de93c0','upn','claim.name'),('0166882c-17ec-4499-9e7c-b449d4de93c0','true','id.token.claim'),('0166882c-17ec-4499-9e7c-b449d4de93c0','true','introspection.token.claim'),('0166882c-17ec-4499-9e7c-b449d4de93c0','String','jsonType.label'),('0166882c-17ec-4499-9e7c-b449d4de93c0','username','user.attribute'),('0166882c-17ec-4499-9e7c-b449d4de93c0','true','userinfo.token.claim'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','true','access.token.claim'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','phone_number_verified','claim.name'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','true','id.token.claim'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','true','introspection.token.claim'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','boolean','jsonType.label'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','phoneNumberVerified','user.attribute'),('18f65bc5-0e92-41bb-b7e0-cca8b1e48e58','true','userinfo.token.claim'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','true','access.token.claim'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','middle_name','claim.name'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','true','id.token.claim'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','true','introspection.token.claim'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','String','jsonType.label'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','middleName','user.attribute'),('1f462ca8-4cf0-40ea-911c-c2888e11b142','true','userinfo.token.claim'),('1fd2d536-2d85-4254-b984-c5bdf8045584','true','access.token.claim'),('1fd2d536-2d85-4254-b984-c5bdf8045584','updated_at','claim.name'),('1fd2d536-2d85-4254-b984-c5bdf8045584','true','id.token.claim'),('1fd2d536-2d85-4254-b984-c5bdf8045584','true','introspection.token.claim'),('1fd2d536-2d85-4254-b984-c5bdf8045584','long','jsonType.label'),('1fd2d536-2d85-4254-b984-c5bdf8045584','updatedAt','user.attribute'),('1fd2d536-2d85-4254-b984-c5bdf8045584','true','userinfo.token.claim'),('27c27d40-1b79-48b8-b7e6-4b75f131cfeb','true','access.token.claim'),('27c27d40-1b79-48b8-b7e6-4b75f131cfeb','true','id.token.claim'),('27c27d40-1b79-48b8-b7e6-4b75f131cfeb','true','introspection.token.claim'),('27c27d40-1b79-48b8-b7e6-4b75f131cfeb','true','userinfo.token.claim'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','true','access.token.claim'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','preferred_username','claim.name'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','true','id.token.claim'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','true','introspection.token.claim'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','String','jsonType.label'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','username','user.attribute'),('2a0ac242-3d1f-46ef-8989-77523c8e1817','true','userinfo.token.claim'),('3d10c743-58fe-4209-b24b-34b7d86fe9f6','true','access.token.claim'),('3d10c743-58fe-4209-b24b-34b7d86fe9f6','true','introspection.token.claim'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','true','access.token.claim'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','realm_access.roles','claim.name'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','true','introspection.token.claim'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','String','jsonType.label'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','true','multivalued'),('527bf5b2-ac7f-4a55-9756-ba433e7dec05','foo','user.attribute'),('599b5935-6e60-4309-8e92-c0dd32af666a','true','access.token.claim'),('599b5935-6e60-4309-8e92-c0dd32af666a','gender','claim.name'),('599b5935-6e60-4309-8e92-c0dd32af666a','true','id.token.claim'),('599b5935-6e60-4309-8e92-c0dd32af666a','true','introspection.token.claim'),('599b5935-6e60-4309-8e92-c0dd32af666a','String','jsonType.label'),('599b5935-6e60-4309-8e92-c0dd32af666a','gender','user.attribute'),('599b5935-6e60-4309-8e92-c0dd32af666a','true','userinfo.token.claim'),('5ce9bbd5-64c9-4629-a0a8-d33783063177','Role','attribute.name'),('5ce9bbd5-64c9-4629-a0a8-d33783063177','Basic','attribute.nameformat'),('5ce9bbd5-64c9-4629-a0a8-d33783063177','false','single'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','true','access.token.claim'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','clientId','claim.name'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','true','id.token.claim'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','String','jsonType.label'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','clientId','user.session.note'),('5e2b6c64-72d4-4f91-a8ec-814b777d0c1e','true','userinfo.token.claim'),('5e995016-7c01-4df4-9236-603af3dd88fe','true','access.token.claim'),('5e995016-7c01-4df4-9236-603af3dd88fe','true','introspection.token.claim'),('694d37f8-b493-43b3-93cb-c4d9f463892a','true','access.token.claim'),('694d37f8-b493-43b3-93cb-c4d9f463892a','true','id.token.claim'),('694d37f8-b493-43b3-93cb-c4d9f463892a','true','introspection.token.claim'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','true','access.token.claim'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','locale','claim.name'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','true','id.token.claim'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','true','introspection.token.claim'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','String','jsonType.label'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','locale','user.attribute'),('6d1c8ccd-7799-41d8-8e82-7d1fc08b3678','true','userinfo.token.claim'),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','true','access.token.claim'),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','resource_access.${client_id}.roles','claim.name'),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','true','introspection.token.claim'),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','String','jsonType.label'),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','true','multivalued'),('910ec1a5-dfec-40a5-a18a-cdd10527b3ca','foo','user.attribute'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','true','access.token.claim'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','website','claim.name'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','true','id.token.claim'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','true','introspection.token.claim'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','String','jsonType.label'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','website','user.attribute'),('a3b13e54-11d4-41cc-a335-6b59ac22b484','true','userinfo.token.claim'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','true','access.token.claim'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','clientAddress','claim.name'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','true','id.token.claim'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','String','jsonType.label'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','clientAddress','user.session.note'),('a91bcb25-e8a0-4cdc-b030-a2558cf16240','true','userinfo.token.claim'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','true','access.token.claim'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','birthdate','claim.name'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','true','id.token.claim'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','true','introspection.token.claim'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','String','jsonType.label'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','birthdate','user.attribute'),('affcecdd-2aa3-4310-b953-c0dd5f54e2a8','true','userinfo.token.claim'),('b6533ee3-d294-4374-b7ac-5af34213f450','true','access.token.claim'),('b6533ee3-d294-4374-b7ac-5af34213f450','phone_number','claim.name'),('b6533ee3-d294-4374-b7ac-5af34213f450','true','id.token.claim'),('b6533ee3-d294-4374-b7ac-5af34213f450','true','introspection.token.claim'),('b6533ee3-d294-4374-b7ac-5af34213f450','String','jsonType.label'),('b6533ee3-d294-4374-b7ac-5af34213f450','phoneNumber','user.attribute'),('b6533ee3-d294-4374-b7ac-5af34213f450','true','userinfo.token.claim'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','true','access.token.claim'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','family_name','claim.name'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','true','id.token.claim'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','true','introspection.token.claim'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','String','jsonType.label'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','lastName','user.attribute'),('c1f80fb3-ac31-4510-9360-d61b13a4fc12','true','userinfo.token.claim'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','true','access.token.claim'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','email_verified','claim.name'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','true','id.token.claim'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','true','introspection.token.claim'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','boolean','jsonType.label'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','emailVerified','user.attribute'),('c88511d6-67c2-4cc9-9248-7a5ffcae3dc7','true','userinfo.token.claim'),('cf1dec99-2290-4393-a0cb-e997225e346a','true','access.token.claim'),('cf1dec99-2290-4393-a0cb-e997225e346a','email','claim.name'),('cf1dec99-2290-4393-a0cb-e997225e346a','true','id.token.claim'),('cf1dec99-2290-4393-a0cb-e997225e346a','true','introspection.token.claim'),('cf1dec99-2290-4393-a0cb-e997225e346a','String','jsonType.label'),('cf1dec99-2290-4393-a0cb-e997225e346a','email','user.attribute'),('cf1dec99-2290-4393-a0cb-e997225e346a','true','userinfo.token.claim'),('d01073d7-101e-44fe-9713-b9fbfa062092','true','access.token.claim'),('d01073d7-101e-44fe-9713-b9fbfa062092','zoneinfo','claim.name'),('d01073d7-101e-44fe-9713-b9fbfa062092','true','id.token.claim'),('d01073d7-101e-44fe-9713-b9fbfa062092','true','introspection.token.claim'),('d01073d7-101e-44fe-9713-b9fbfa062092','String','jsonType.label'),('d01073d7-101e-44fe-9713-b9fbfa062092','zoneinfo','user.attribute'),('d01073d7-101e-44fe-9713-b9fbfa062092','true','userinfo.token.claim'),('d0559146-8da6-43ef-8610-1851112fa845','true','access.token.claim'),('d0559146-8da6-43ef-8610-1851112fa845','locale','claim.name'),('d0559146-8da6-43ef-8610-1851112fa845','true','id.token.claim'),('d0559146-8da6-43ef-8610-1851112fa845','true','introspection.token.claim'),('d0559146-8da6-43ef-8610-1851112fa845','String','jsonType.label'),('d0559146-8da6-43ef-8610-1851112fa845','locale','user.attribute'),('d0559146-8da6-43ef-8610-1851112fa845','true','userinfo.token.claim'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','true','access.token.claim'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','profile','claim.name'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','true','id.token.claim'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','true','introspection.token.claim'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','String','jsonType.label'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','profile','user.attribute'),('dcbd541e-7f2a-4260-a748-3ab0f54e5088','true','userinfo.token.claim'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','true','access.token.claim'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','groups','claim.name'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','true','id.token.claim'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','true','introspection.token.claim'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','String','jsonType.label'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','true','multivalued'),('e2b1e575-4f8b-4074-bcbe-1e26b39e2635','foo','user.attribute'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','true','access.token.claim'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','nickname','claim.name'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','true','id.token.claim'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','true','introspection.token.claim'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','String','jsonType.label'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','nickname','user.attribute'),('eb7407a0-0216-4a13-8e06-170fc4df89f5','true','userinfo.token.claim'),('ef61647a-234a-458a-babc-26948fb13819','true','access.token.claim'),('ef61647a-234a-458a-babc-26948fb13819','clientHost','claim.name'),('ef61647a-234a-458a-babc-26948fb13819','true','id.token.claim'),('ef61647a-234a-458a-babc-26948fb13819','String','jsonType.label'),('ef61647a-234a-458a-babc-26948fb13819','clientHost','user.session.note'),('ef61647a-234a-458a-babc-26948fb13819','true','userinfo.token.claim'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','true','access.token.claim'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','true','id.token.claim'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','true','introspection.token.claim'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','country','user.attribute.country'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','formatted','user.attribute.formatted'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','locality','user.attribute.locality'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','postal_code','user.attribute.postal_code'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','region','user.attribute.region'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','street','user.attribute.street'),('f8e5c5d1-70da-402f-8f80-46013dbd7800','true','userinfo.token.claim'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','true','access.token.claim'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','picture','claim.name'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','true','id.token.claim'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','true','introspection.token.claim'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','String','jsonType.label'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','picture','user.attribute'),('fce5a8f7-4d5e-447b-a7d1-afcb54776ff7','true','userinfo.token.claim'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','true','access.token.claim'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','given_name','claim.name'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','true','id.token.claim'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','true','introspection.token.claim'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','String','jsonType.label'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','firstName','user.attribute'),('fd859ea0-6bd4-4012-a009-adeabc1f5454','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('d63d5856-45a9-4459-8724-12c3fcd22dd7',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'c831ae5a-aa40-4f52-a668-bcb3eee4c8d9',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','cb7054ba-151d-40bf-b348-e9f1fc4a6685','03d89bb3-5293-40e1-82ff-7623b1a5f880','02e57919-beca-4a7e-8120-2b8c365f62b1','b8ade12a-f5a4-40c3-ba3a-e91db06531b2','f2c89812-07a2-4af0-a791-8ac0781bd131',31536000,0,900,1,0,'3ffaf962-80a0-4a45-ac2e-63f1cf0b3686',0,0,0,0,'6284fefc-dd29-4ba0-a121-5d03dbee3221');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','d63d5856-45a9-4459-8724-12c3fcd22dd7','false'),('cibaAuthRequestedUserHint','d63d5856-45a9-4459-8724-12c3fcd22dd7','login_hint'),('cibaBackchannelTokenDeliveryMode','d63d5856-45a9-4459-8724-12c3fcd22dd7','poll'),('cibaExpiresIn','d63d5856-45a9-4459-8724-12c3fcd22dd7','120'),('cibaInterval','d63d5856-45a9-4459-8724-12c3fcd22dd7','5'),('defaultSignatureAlgorithm','d63d5856-45a9-4459-8724-12c3fcd22dd7','RS256'),('displayName','d63d5856-45a9-4459-8724-12c3fcd22dd7','Keycloak'),('displayNameHtml','d63d5856-45a9-4459-8724-12c3fcd22dd7','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','d63d5856-45a9-4459-8724-12c3fcd22dd7','30'),('firstBrokerLoginFlowId','d63d5856-45a9-4459-8724-12c3fcd22dd7','5e943095-9109-4478-b769-7fa0fc643d7c'),('maxDeltaTimeSeconds','d63d5856-45a9-4459-8724-12c3fcd22dd7','43200'),('maxFailureWaitSeconds','d63d5856-45a9-4459-8724-12c3fcd22dd7','900'),('maxTemporaryLockouts','d63d5856-45a9-4459-8724-12c3fcd22dd7','0'),('minimumQuickLoginWaitSeconds','d63d5856-45a9-4459-8724-12c3fcd22dd7','60'),('oauth2DeviceCodeLifespan','d63d5856-45a9-4459-8724-12c3fcd22dd7','600'),('oauth2DevicePollingInterval','d63d5856-45a9-4459-8724-12c3fcd22dd7','5'),('offlineSessionMaxLifespan','d63d5856-45a9-4459-8724-12c3fcd22dd7','31536000'),('offlineSessionMaxLifespanEnabled','d63d5856-45a9-4459-8724-12c3fcd22dd7','true'),('parRequestUriLifespan','d63d5856-45a9-4459-8724-12c3fcd22dd7','60'),('permanentLockout','d63d5856-45a9-4459-8724-12c3fcd22dd7','false'),('quickLoginCheckMilliSeconds','d63d5856-45a9-4459-8724-12c3fcd22dd7','1000'),('realmReusableOtpCode','d63d5856-45a9-4459-8724-12c3fcd22dd7','false'),('waitIncrementSeconds','d63d5856-45a9-4459-8724-12c3fcd22dd7','60'),('_browser_header.contentSecurityPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','d63d5856-45a9-4459-8724-12c3fcd22dd7',''),('_browser_header.referrerPolicy','d63d5856-45a9-4459-8724-12c3fcd22dd7','no-referrer'),('_browser_header.strictTransportSecurity','d63d5856-45a9-4459-8724-12c3fcd22dd7','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','d63d5856-45a9-4459-8724-12c3fcd22dd7','nosniff'),('_browser_header.xFrameOptions','d63d5856-45a9-4459-8724-12c3fcd22dd7','SAMEORIGIN'),('_browser_header.xRobotsTag','d63d5856-45a9-4459-8724-12c3fcd22dd7','none'),('_browser_header.xXSSProtection','d63d5856-45a9-4459-8724-12c3fcd22dd7','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('d63d5856-45a9-4459-8724-12c3fcd22dd7','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'d63d5856-45a9-4459-8724-12c3fcd22dd7');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('d63d5856-45a9-4459-8724-12c3fcd22dd7','en'),('d63d5856-45a9-4459-8724-12c3fcd22dd7','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('1625a12a-cd9e-4a46-b504-150558240eaf','/admin/master/console/*'),('56c87de1-4813-4d28-a459-8405f32b68cf','/realms/master/account/*'),('577e2716-7b68-4a25-9ee6-73a6791054c8','/*'),('e1c9b7e9-cd0b-41df-bb5a-0c12a83fdff1','/realms/master/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('1971e472-3c08-4a49-8396-1faa2a4ae3ac','UPDATE_PASSWORD','Update Password','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'UPDATE_PASSWORD',30),('1a106943-208b-4011-8ccb-2ea9f6a0742b','webauthn-register-passwordless','Webauthn Register Passwordless','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'webauthn-register-passwordless',80),('4934ba82-bcc1-43e3-b3ce-8c12987f47cf','update_user_locale','Update User Locale','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'update_user_locale',1000),('4e2d3aef-c2f8-4e80-b681-283fa82d0439','VERIFY_EMAIL','Verify Email','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'VERIFY_EMAIL',50),('5f22051c-07eb-4ca5-b4ad-0ea6522ffdb6','delete_credential','Delete Credential','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'delete_credential',100),('6da45427-bbb3-4e7b-ab28-d8536972304a','UPDATE_PROFILE','Update Profile','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'UPDATE_PROFILE',40),('6f36184c-61ae-4a09-bd1d-ee476396630b','VERIFY_PROFILE','Verify Profile','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'VERIFY_PROFILE',90),('8d3f4919-72be-47bb-952e-205cbba1f6f6','webauthn-register','Webauthn Register','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'webauthn-register',70),('ad797c41-627b-4993-a4a0-624bda87623a','delete_account','Delete Account','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,0,'delete_account',60),('d5e2e7ca-2f6e-4936-9f0d-199845f9ed95','CONFIGURE_TOTP','Configure OTP','d63d5856-45a9-4459-8724-12c3fcd22dd7',1,0,'CONFIGURE_TOTP',10),('de11fdd4-9bdd-4dda-b5ab-e14da377a83f','TERMS_AND_CONDITIONS','Terms and Conditions','d63d5856-45a9-4459-8724-12c3fcd22dd7',0,0,'TERMS_AND_CONDITIONS',20);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('56c87de1-4813-4d28-a459-8405f32b68cf','6a251f0a-6a3c-4037-b1f6-5db6859be2e1'),('56c87de1-4813-4d28-a459-8405f32b68cf','ec179260-6564-4ad5-9d8e-fec362c40244');
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
INSERT INTO `USER_ENTITY` VALUES ('b99bb457-11d0-4564-9d89-fb9ff8f86465',NULL,'cb1a22d9-ab6e-45ab-a93a-fa364cd5f92c',0,1,NULL,NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','admin',1755646278819,NULL,0),('ff474027-dfdc-40b2-88df-d76d6cf0a056',NULL,'1a00e877-aeb2-45b0-ad1a-85c6501a762b',0,1,NULL,NULL,NULL,'d63d5856-45a9-4459-8724-12c3fcd22dd7','service-account-_platform',1755646285635,'24da96d3-9f67-40ae-99c4-fbedfb709bf8',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('6284fefc-dd29-4ba0-a121-5d03dbee3221','b99bb457-11d0-4564-9d89-fb9ff8f86465'),('6284fefc-dd29-4ba0-a121-5d03dbee3221','ff474027-dfdc-40b2-88df-d76d6cf0a056'),('85538690-0cd0-4983-b311-caefb165157d','b99bb457-11d0-4564-9d89-fb9ff8f86465'),('85538690-0cd0-4983-b311-caefb165157d','ff474027-dfdc-40b2-88df-d76d6cf0a056');
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
INSERT INTO `WEB_ORIGINS` VALUES ('1625a12a-cd9e-4a46-b504-150558240eaf','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2025-08-20 08:31:26','dummy','2025-08-20 08:31:26','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2025-08-20 08:31:26.000000',NULL),('2','DATA_UPDATE_STOP','0','2025-08-20 08:31:26.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2025-08-20 08:31:24','system','2025-08-20 08:31:24','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2025-08-20 08:31:24','system','2025-08-20 08:31:26','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2025-08-20 08:31:24','system','2025-08-20 08:31:26','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2025-08-20 08:31:24','system','2025-08-20 08:31:26','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','platform.roles',1000,'2025-08-20 08:31:24','system','2025-08-20 08:31:24','system'),('_default','platform.users',10000,'2025-08-20 08:31:24','system','2025-08-20 08:31:24','system'),('_default','platform.workspaces',100,'2025-08-20 08:31:24','system','2025-08-20 08:31:24','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2025-08-20 08:31:24','1.11.0','2025-08-20 08:31:24','1.11.0'),(2,'1.3.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(3,'1.5.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(4,'1.5.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(5,'1.5.2','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(6,'1.5.2','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(7,'1.6.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(8,'1.6.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(9,'1.7.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(10,'1.7.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(11,'1.8.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(12,'1.8.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(13,'1.8.1','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(14,'1.8.1','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(15,'1.8.100','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(16,'1.8.100','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(17,'1.9.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(18,'1.9.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(19,'1.10.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(20,'1.10.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(21,'1.11.0','START',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0'),(22,'1.11.0','SUCCEED',NULL,'2025-08-20 08:31:26','1.11.0','2025-08-20 08:31:26','1.11.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"24da96d3-9f67-40ae-99c4-fbedfb709bf8\", \"TOKEN_CHECK_CLIENT_SECRET\": \"WPupAQvMGMerpR9PSBYlQcaf86tCb3Uj\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"83598f0e-84a3-49b2-8a9a-afc445eb2826\"}','2025-08-20 08:31:26','system','2025-08-20 08:31:26','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.11.0','2025-08-20 08:30:46','system','2025-08-20 08:31:26','1.11.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PROCESS_QUEUE`
--

LOCK TABLES `T_PROCESS_QUEUE` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `T_PROCESS_QUEUE_LOCK`
--

LOCK TABLES `T_PROCESS_QUEUE_LOCK` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-20  8:31:27
SET foreign_key_checks = 1;
