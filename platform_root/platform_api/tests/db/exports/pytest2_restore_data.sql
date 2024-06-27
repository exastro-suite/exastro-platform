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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('051c99f7-493e-4db3-afeb-4c5c6c066e56',NULL,'conditional-user-configured','fa43b5a7-aaed-48a7-bb09-be045f976d24','7efb2bc6-b253-4265-b32a-edcc1e35bd17',0,10,0,NULL,NULL),('16da5a1e-743d-4b4a-99c0-f6156c252d16',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','906ada08-4df7-4952-80c2-27baf553b03a',1,30,1,'f76e8c09-5d4f-4dfe-a906-ce1ea9fb7825',NULL),('1f9ed19c-443e-4569-aa57-670fdd24a9bb',NULL,'conditional-user-configured','fa43b5a7-aaed-48a7-bb09-be045f976d24','2dd43602-34cf-4f96-9dda-36aa564aca1b',0,10,0,NULL,NULL),('22036d16-3e66-405d-92e5-d05ea65b7656',NULL,'docker-http-basic-authenticator','fa43b5a7-aaed-48a7-bb09-be045f976d24','e70dc007-3f52-4cb4-9183-a4cb68e6d9c3',0,10,0,NULL,NULL),('22aaced1-200c-430a-aac1-c70ee3f6abe7',NULL,'reset-credential-email','fa43b5a7-aaed-48a7-bb09-be045f976d24','53e9bbaf-99fa-4817-b302-891d397e2c7d',0,20,0,NULL,NULL),('2bb8f7d6-bdf3-4b98-95ad-46147ba9b151',NULL,'registration-user-creation','fa43b5a7-aaed-48a7-bb09-be045f976d24','c5f7072e-3f98-46b9-80cc-36c7cbecdefb',0,20,0,NULL,NULL),('3ba92b65-d3c8-45b0-a793-3cca36c5ffb2',NULL,'direct-grant-validate-password','fa43b5a7-aaed-48a7-bb09-be045f976d24','906ada08-4df7-4952-80c2-27baf553b03a',0,20,0,NULL,NULL),('44da8b9d-985a-4f3e-9c07-d6821df71d8c',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','53e9bbaf-99fa-4817-b302-891d397e2c7d',1,40,1,'2dd43602-34cf-4f96-9dda-36aa564aca1b',NULL),('48ad444e-96bb-43cd-9c35-f5a644001008',NULL,'auth-otp-form','fa43b5a7-aaed-48a7-bb09-be045f976d24','7efb2bc6-b253-4265-b32a-edcc1e35bd17',0,20,0,NULL,NULL),('49283f40-2406-4378-808e-6630da498763',NULL,'idp-email-verification','fa43b5a7-aaed-48a7-bb09-be045f976d24','4eb7df72-7090-4859-af61-02e61d36dc84',2,10,0,NULL,NULL),('4f1b074f-fb0f-40c0-a399-f481690656ca',NULL,'registration-password-action','fa43b5a7-aaed-48a7-bb09-be045f976d24','c5f7072e-3f98-46b9-80cc-36c7cbecdefb',0,50,0,NULL,NULL),('5470d3a8-74e4-4544-bae9-49b2e11e3c07',NULL,'conditional-user-configured','fa43b5a7-aaed-48a7-bb09-be045f976d24','496a358c-5021-40a8-8ead-08f5ebdca8c7',0,10,0,NULL,NULL),('5966c451-6823-488d-9ced-a880f1902b49',NULL,'idp-create-user-if-unique','fa43b5a7-aaed-48a7-bb09-be045f976d24','f8c51686-da26-4697-a4e2-2f42cc39b8f5',2,10,0,NULL,'21e48c16-ee7a-4867-8c6c-17abe6824f9e'),('5afae1bd-15e7-4b9a-ac98-958c8e6acc7d',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','4eb7df72-7090-4859-af61-02e61d36dc84',2,20,1,'643f1c97-7762-4b2d-b3f0-f5985cbc42a5',NULL),('6578092c-9e65-4740-b99b-f39736fe0b29',NULL,'conditional-user-configured','fa43b5a7-aaed-48a7-bb09-be045f976d24','f76e8c09-5d4f-4dfe-a906-ce1ea9fb7825',0,10,0,NULL,NULL),('680f4457-a535-478d-972e-aa69681e2e73',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','088a35aa-bd1d-4c44-b535-edce8e00ef96',1,20,1,'7efb2bc6-b253-4265-b32a-edcc1e35bd17',NULL),('6b310043-8c09-41b6-b3bb-8a2dfe2198a3',NULL,'reset-otp','fa43b5a7-aaed-48a7-bb09-be045f976d24','2dd43602-34cf-4f96-9dda-36aa564aca1b',0,20,0,NULL,NULL),('6e46c25f-b458-4a97-b046-a4a2775f0ae0',NULL,'registration-terms-and-conditions','fa43b5a7-aaed-48a7-bb09-be045f976d24','c5f7072e-3f98-46b9-80cc-36c7cbecdefb',3,70,0,NULL,NULL),('740d62a3-a975-4a88-a3a5-8dea2a270bc0',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','d6523352-96d7-4d7d-a840-b5bb003f4a25',2,30,1,'088a35aa-bd1d-4c44-b535-edce8e00ef96',NULL),('74f61983-e8d8-408e-b36b-6266c2c07512',NULL,'idp-confirm-link','fa43b5a7-aaed-48a7-bb09-be045f976d24','85739f49-3b60-413e-9683-4e9c47b1a444',0,10,0,NULL,NULL),('824c2e9d-4de9-46e8-9484-93faa6fb0c24',NULL,'auth-spnego','fa43b5a7-aaed-48a7-bb09-be045f976d24','d6523352-96d7-4d7d-a840-b5bb003f4a25',3,20,0,NULL,NULL),('847cc2c7-76f8-4574-b6d9-e90babfce1e5',NULL,'direct-grant-validate-otp','fa43b5a7-aaed-48a7-bb09-be045f976d24','f76e8c09-5d4f-4dfe-a906-ce1ea9fb7825',0,20,0,NULL,NULL),('8e3c4c09-465a-4f9e-84ff-aeb2b094a1f1',NULL,'client-secret','fa43b5a7-aaed-48a7-bb09-be045f976d24','37d59464-ff46-46e4-bd24-b21c065d6452',2,10,0,NULL,NULL),('94634dc1-c2bb-4141-8ac7-411e47fc6889',NULL,'idp-username-password-form','fa43b5a7-aaed-48a7-bb09-be045f976d24','643f1c97-7762-4b2d-b3f0-f5985cbc42a5',0,10,0,NULL,NULL),('9c2188ac-c37e-4386-aa25-2207916fa338',NULL,'direct-grant-validate-username','fa43b5a7-aaed-48a7-bb09-be045f976d24','906ada08-4df7-4952-80c2-27baf553b03a',0,10,0,NULL,NULL),('a513f5a3-0a95-4dbe-a258-6aff1ed77a57',NULL,'auth-username-password-form','fa43b5a7-aaed-48a7-bb09-be045f976d24','088a35aa-bd1d-4c44-b535-edce8e00ef96',0,10,0,NULL,NULL),('abe4e980-be37-4751-a623-8e3911303635',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','f8c51686-da26-4697-a4e2-2f42cc39b8f5',2,20,1,'85739f49-3b60-413e-9683-4e9c47b1a444',NULL),('adb14c13-a052-476b-8f64-f39735dd180f',NULL,'auth-cookie','fa43b5a7-aaed-48a7-bb09-be045f976d24','d6523352-96d7-4d7d-a840-b5bb003f4a25',2,10,0,NULL,NULL),('b27b7fe3-8888-435d-a280-9e613cebfecd',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','cab39ed0-3fa7-4a76-8e7a-267be67e04f7',0,20,1,'f8c51686-da26-4697-a4e2-2f42cc39b8f5',NULL),('b90cbccc-f39b-4e25-9ba0-f94ca443add2',NULL,'client-secret-jwt','fa43b5a7-aaed-48a7-bb09-be045f976d24','37d59464-ff46-46e4-bd24-b21c065d6452',2,30,0,NULL,NULL),('c19aa4e2-1184-402c-b472-7a8ce6b55e71',NULL,'client-x509','fa43b5a7-aaed-48a7-bb09-be045f976d24','37d59464-ff46-46e4-bd24-b21c065d6452',2,40,0,NULL,NULL),('d04ce448-9788-4f45-b2b2-37006a36263b',NULL,'registration-page-form','fa43b5a7-aaed-48a7-bb09-be045f976d24','7bd8b788-0871-4b7d-bc09-8ae68ad27f0b',0,10,1,'c5f7072e-3f98-46b9-80cc-36c7cbecdefb',NULL),('d08d4437-cc33-48b0-b790-a0c0d97fe093',NULL,'client-jwt','fa43b5a7-aaed-48a7-bb09-be045f976d24','37d59464-ff46-46e4-bd24-b21c065d6452',2,20,0,NULL,NULL),('d6ee756e-5f8d-4704-b14d-c6bb11192382',NULL,'registration-recaptcha-action','fa43b5a7-aaed-48a7-bb09-be045f976d24','c5f7072e-3f98-46b9-80cc-36c7cbecdefb',3,60,0,NULL,NULL),('d906584e-0b95-4574-97a3-2260f53f92fd',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','643f1c97-7762-4b2d-b3f0-f5985cbc42a5',1,20,1,'496a358c-5021-40a8-8ead-08f5ebdca8c7',NULL),('da6cbf0f-ed04-4647-a8e6-d7393e931907',NULL,'reset-credentials-choose-user','fa43b5a7-aaed-48a7-bb09-be045f976d24','53e9bbaf-99fa-4817-b302-891d397e2c7d',0,10,0,NULL,NULL),('dad071fa-65b8-4ce8-bf64-74d8ca2fb602',NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','85739f49-3b60-413e-9683-4e9c47b1a444',0,20,1,'4eb7df72-7090-4859-af61-02e61d36dc84',NULL),('ec8a7929-f4a3-46e4-85ad-b92ec2eb4081',NULL,'auth-otp-form','fa43b5a7-aaed-48a7-bb09-be045f976d24','496a358c-5021-40a8-8ead-08f5ebdca8c7',0,20,0,NULL,NULL),('f2971263-7dc1-425f-9353-15a537621680',NULL,'reset-password','fa43b5a7-aaed-48a7-bb09-be045f976d24','53e9bbaf-99fa-4817-b302-891d397e2c7d',0,30,0,NULL,NULL),('fab176fa-9111-4894-868d-d277ae8c6c87',NULL,'identity-provider-redirector','fa43b5a7-aaed-48a7-bb09-be045f976d24','d6523352-96d7-4d7d-a840-b5bb003f4a25',2,25,0,NULL,NULL),('ff0209f6-b145-451c-b24c-8e4d3f23a206',NULL,'http-basic-authenticator','fa43b5a7-aaed-48a7-bb09-be045f976d24','9aa933b1-c271-4d2f-bb77-6ddb0e61381f',0,10,0,NULL,NULL),('ffece6fd-13b3-439f-8bab-a722bbe76a43',NULL,'idp-review-profile','fa43b5a7-aaed-48a7-bb09-be045f976d24','cab39ed0-3fa7-4a76-8e7a-267be67e04f7',0,10,0,NULL,'d06c7d6a-3d7a-45be-908c-d1971e465304');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('088a35aa-bd1d-4c44-b535-edce8e00ef96','forms','Username, password, otp and other auth forms.','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('2dd43602-34cf-4f96-9dda-36aa564aca1b','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('37d59464-ff46-46e4-bd24-b21c065d6452','clients','Base authentication for clients','fa43b5a7-aaed-48a7-bb09-be045f976d24','client-flow',1,1),('496a358c-5021-40a8-8ead-08f5ebdca8c7','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('4eb7df72-7090-4859-af61-02e61d36dc84','Account verification options','Method with which to verity the existing account','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('53e9bbaf-99fa-4817-b302-891d397e2c7d','reset credentials','Reset credentials for a user if they forgot their password or something','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('643f1c97-7762-4b2d-b3f0-f5985cbc42a5','Verify Existing Account by Re-authentication','Reauthentication of existing account','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('7bd8b788-0871-4b7d-bc09-8ae68ad27f0b','registration','registration flow','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('7efb2bc6-b253-4265-b32a-edcc1e35bd17','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('85739f49-3b60-413e-9683-4e9c47b1a444','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('906ada08-4df7-4952-80c2-27baf553b03a','direct grant','OpenID Connect Resource Owner Grant','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('9aa933b1-c271-4d2f-bb77-6ddb0e61381f','saml ecp','SAML ECP Profile Authentication Flow','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('c5f7072e-3f98-46b9-80cc-36c7cbecdefb','registration form','registration form','fa43b5a7-aaed-48a7-bb09-be045f976d24','form-flow',0,1),('cab39ed0-3fa7-4a76-8e7a-267be67e04f7','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('d6523352-96d7-4d7d-a840-b5bb003f4a25','browser','browser based authentication','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('e70dc007-3f52-4cb4-9183-a4cb68e6d9c3','docker auth','Used by Docker clients to authenticate against the IDP','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',1,1),('f76e8c09-5d4f-4dfe-a906-ce1ea9fb7825','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1),('f8c51686-da26-4697-a4e2-2f42cc39b8f5','User creation or linking','Flow for the existing/non-existing user alternatives','fa43b5a7-aaed-48a7-bb09-be045f976d24','basic-flow',0,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('21e48c16-ee7a-4867-8c6c-17abe6824f9e','create unique user config','fa43b5a7-aaed-48a7-bb09-be045f976d24'),('d06c7d6a-3d7a-45be-908c-d1971e465304','review profile config','fa43b5a7-aaed-48a7-bb09-be045f976d24');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('21e48c16-ee7a-4867-8c6c-17abe6824f9e','false','require.password.update.after.registration'),('d06c7d6a-3d7a-45be-908c-d1971e465304','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2df5edf8-7628-447b-ae56-9655aed1d9bf',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('43589cf4-94e2-42f3-9286-6c6ab156905b',1,1,'_platform',0,0,'dDUUPe3ELqNQ1GfLvxjaCCrRGksgq5qs',NULL,0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('54de7636-e771-49b6-b0b3-f1fc0a26eaba',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('82f1f618-1a13-4648-aad1-915b087d8bd1',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('95fd77ac-bc56-4554-ba2e-297f5f3538e5',1,0,'_platform-console',0,1,'HBZKpNTDRgoHTqaegviNchDhOUsw6mbe',NULL,0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('9c14cff8-3f13-41b6-95a2-fcec46424857',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('d644e264-ac5c-4735-8bdd-06539e5d6c71',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('dc0c34e4-ee30-463c-89ff-c9978905cec2',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'fa43b5a7-aaed-48a7-bb09-be045f976d24','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('2df5edf8-7628-447b-ae56-9655aed1d9bf','access.token.lifespan','86400'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','acr.loa.map','{}'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','backchannel.logout.revoke.offline.tokens','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','backchannel.logout.session.required','true'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','client.session.idle.timeout','86400'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','client.session.max.lifespan','86400'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','client_credentials.use_refresh_token','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','display.on.consent.screen','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','exclude.session.state.from.auth.response','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','frontchannel.logout.session.required','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','id.token.as.detached.signature','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','oauth2.device.authorization.grant.enabled','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','oidc.ciba.grant.enabled','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','require.pushed.authorization.requests','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.allow.ecp.flow','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.artifact.binding','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.assertion.signature','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.authnstatement','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.client.signature','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.encrypt','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.force.post.binding','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.multivalued.roles','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.onetimeuse.condition','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.server.signature','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml.server.signature.keyinfo.ext','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','saml_force_name_id_format','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','tls.client.certificate.bound.access.tokens','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','token.response.type.bearer.lower-case','false'),('2df5edf8-7628-447b-ae56-9655aed1d9bf','use.refresh.tokens','true'),('43589cf4-94e2-42f3-9286-6c6ab156905b','backchannel.logout.revoke.offline.tokens','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','backchannel.logout.session.required','true'),('43589cf4-94e2-42f3-9286-6c6ab156905b','client.secret.creation.time','1719474398'),('43589cf4-94e2-42f3-9286-6c6ab156905b','client_credentials.use_refresh_token','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','display.on.consent.screen','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','exclude.session.state.from.auth.response','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','id.token.as.detached.signature','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','oauth2.device.authorization.grant.enabled','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','oidc.ciba.grant.enabled','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','require.pushed.authorization.requests','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.artifact.binding','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.assertion.signature','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.authnstatement','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.client.signature','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.encrypt','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.force.post.binding','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.multivalued.roles','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.onetimeuse.condition','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.server.signature','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml.server.signature.keyinfo.ext','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','saml_force_name_id_format','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','tls.client.certificate.bound.access.tokens','false'),('43589cf4-94e2-42f3-9286-6c6ab156905b','use.refresh.tokens','true'),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','pkce.code.challenge.method','S256'),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','post.logout.redirect.uris','+'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','backchannel.logout.revoke.offline.tokens','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','backchannel.logout.session.required','true'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','client.secret.creation.time','1719474400'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','client_credentials.use_refresh_token','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','display.on.consent.screen','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','exclude.session.state.from.auth.response','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','id.token.as.detached.signature','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','oauth2.device.authorization.grant.enabled','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','oidc.ciba.grant.enabled','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','post.logout.redirect.uris','/*'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','require.pushed.authorization.requests','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.artifact.binding','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.assertion.signature','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.authnstatement','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.client.signature','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.encrypt','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.force.post.binding','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.multivalued.roles','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.onetimeuse.condition','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.server.signature','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml.server.signature.keyinfo.ext','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','saml_force_name_id_format','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','tls.client.certificate.bound.access.tokens','false'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','use.refresh.tokens','true'),('9c14cff8-3f13-41b6-95a2-fcec46424857','post.logout.redirect.uris','+'),('dc0c34e4-ee30-463c-89ff-c9978905cec2','pkce.code.challenge.method','S256'),('dc0c34e4-ee30-463c-89ff-c9978905cec2','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9','offline_access','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect built-in scope: offline_access','openid-connect'),('1a994053-4b0a-4cdc-9898-12559ccdf804','roles','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect scope for add user roles to the access token','openid-connect'),('2d780133-2a3e-431f-853e-42c82e911025','microprofile-jwt','fa43b5a7-aaed-48a7-bb09-be045f976d24','Microprofile - JWT built-in scope','openid-connect'),('6e7d8f64-ee98-403b-b8c7-0c095f58eac0','web-origins','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('8ce9aa6f-04e8-4f74-a41e-0d7651a81068','profile','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect built-in scope: profile','openid-connect'),('aadf98b3-0bc7-4930-bb0a-197abfaef646','address','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect built-in scope: address','openid-connect'),('ac09551a-d129-4698-9b3a-59d87c4c6405','email','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect built-in scope: email','openid-connect'),('d372ff43-a7b8-4ce7-8246-9970908b0786','phone','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect built-in scope: phone','openid-connect'),('e7b9f80f-4774-492d-b183-aecff45107c6','role_list','fa43b5a7-aaed-48a7-bb09-be045f976d24','SAML role list','saml'),('ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc','acr','fa43b5a7-aaed-48a7-bb09-be045f976d24','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9','${offlineAccessScopeConsentText}','consent.screen.text'),('0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9','true','display.on.consent.screen'),('1a994053-4b0a-4cdc-9898-12559ccdf804','${rolesScopeConsentText}','consent.screen.text'),('1a994053-4b0a-4cdc-9898-12559ccdf804','true','display.on.consent.screen'),('1a994053-4b0a-4cdc-9898-12559ccdf804','false','include.in.token.scope'),('2d780133-2a3e-431f-853e-42c82e911025','false','display.on.consent.screen'),('2d780133-2a3e-431f-853e-42c82e911025','true','include.in.token.scope'),('6e7d8f64-ee98-403b-b8c7-0c095f58eac0','','consent.screen.text'),('6e7d8f64-ee98-403b-b8c7-0c095f58eac0','false','display.on.consent.screen'),('6e7d8f64-ee98-403b-b8c7-0c095f58eac0','false','include.in.token.scope'),('8ce9aa6f-04e8-4f74-a41e-0d7651a81068','${profileScopeConsentText}','consent.screen.text'),('8ce9aa6f-04e8-4f74-a41e-0d7651a81068','true','display.on.consent.screen'),('8ce9aa6f-04e8-4f74-a41e-0d7651a81068','true','include.in.token.scope'),('aadf98b3-0bc7-4930-bb0a-197abfaef646','${addressScopeConsentText}','consent.screen.text'),('aadf98b3-0bc7-4930-bb0a-197abfaef646','true','display.on.consent.screen'),('aadf98b3-0bc7-4930-bb0a-197abfaef646','true','include.in.token.scope'),('ac09551a-d129-4698-9b3a-59d87c4c6405','${emailScopeConsentText}','consent.screen.text'),('ac09551a-d129-4698-9b3a-59d87c4c6405','true','display.on.consent.screen'),('ac09551a-d129-4698-9b3a-59d87c4c6405','true','include.in.token.scope'),('d372ff43-a7b8-4ce7-8246-9970908b0786','${phoneScopeConsentText}','consent.screen.text'),('d372ff43-a7b8-4ce7-8246-9970908b0786','true','display.on.consent.screen'),('d372ff43-a7b8-4ce7-8246-9970908b0786','true','include.in.token.scope'),('e7b9f80f-4774-492d-b183-aecff45107c6','${samlRoleListScopeConsentText}','consent.screen.text'),('e7b9f80f-4774-492d-b183-aecff45107c6','true','display.on.consent.screen'),('ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc','false','display.on.consent.screen'),('ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc','false','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','2d780133-2a3e-431f-853e-42c82e911025',0),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1),('2df5edf8-7628-447b-ae56-9655aed1d9bf','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('2df5edf8-7628-447b-ae56-9655aed1d9bf','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('2df5edf8-7628-447b-ae56-9655aed1d9bf','2d780133-2a3e-431f-853e-42c82e911025',0),('2df5edf8-7628-447b-ae56-9655aed1d9bf','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('2df5edf8-7628-447b-ae56-9655aed1d9bf','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('2df5edf8-7628-447b-ae56-9655aed1d9bf','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('2df5edf8-7628-447b-ae56-9655aed1d9bf','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('2df5edf8-7628-447b-ae56-9655aed1d9bf','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('2df5edf8-7628-447b-ae56-9655aed1d9bf','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1),('43589cf4-94e2-42f3-9286-6c6ab156905b','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('43589cf4-94e2-42f3-9286-6c6ab156905b','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('43589cf4-94e2-42f3-9286-6c6ab156905b','2d780133-2a3e-431f-853e-42c82e911025',0),('43589cf4-94e2-42f3-9286-6c6ab156905b','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('43589cf4-94e2-42f3-9286-6c6ab156905b','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('43589cf4-94e2-42f3-9286-6c6ab156905b','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('43589cf4-94e2-42f3-9286-6c6ab156905b','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('43589cf4-94e2-42f3-9286-6c6ab156905b','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','2d780133-2a3e-431f-853e-42c82e911025',0),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1),('82f1f618-1a13-4648-aad1-915b087d8bd1','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('82f1f618-1a13-4648-aad1-915b087d8bd1','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('82f1f618-1a13-4648-aad1-915b087d8bd1','2d780133-2a3e-431f-853e-42c82e911025',0),('82f1f618-1a13-4648-aad1-915b087d8bd1','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('82f1f618-1a13-4648-aad1-915b087d8bd1','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('82f1f618-1a13-4648-aad1-915b087d8bd1','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('82f1f618-1a13-4648-aad1-915b087d8bd1','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('82f1f618-1a13-4648-aad1-915b087d8bd1','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('82f1f618-1a13-4648-aad1-915b087d8bd1','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','2d780133-2a3e-431f-853e-42c82e911025',0),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('9c14cff8-3f13-41b6-95a2-fcec46424857','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('9c14cff8-3f13-41b6-95a2-fcec46424857','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('9c14cff8-3f13-41b6-95a2-fcec46424857','2d780133-2a3e-431f-853e-42c82e911025',0),('9c14cff8-3f13-41b6-95a2-fcec46424857','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('9c14cff8-3f13-41b6-95a2-fcec46424857','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('9c14cff8-3f13-41b6-95a2-fcec46424857','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('9c14cff8-3f13-41b6-95a2-fcec46424857','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('9c14cff8-3f13-41b6-95a2-fcec46424857','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('9c14cff8-3f13-41b6-95a2-fcec46424857','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1),('d644e264-ac5c-4735-8bdd-06539e5d6c71','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('d644e264-ac5c-4735-8bdd-06539e5d6c71','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('d644e264-ac5c-4735-8bdd-06539e5d6c71','2d780133-2a3e-431f-853e-42c82e911025',0),('d644e264-ac5c-4735-8bdd-06539e5d6c71','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('d644e264-ac5c-4735-8bdd-06539e5d6c71','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('d644e264-ac5c-4735-8bdd-06539e5d6c71','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('d644e264-ac5c-4735-8bdd-06539e5d6c71','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('d644e264-ac5c-4735-8bdd-06539e5d6c71','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('d644e264-ac5c-4735-8bdd-06539e5d6c71','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1),('dc0c34e4-ee30-463c-89ff-c9978905cec2','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('dc0c34e4-ee30-463c-89ff-c9978905cec2','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('dc0c34e4-ee30-463c-89ff-c9978905cec2','2d780133-2a3e-431f-853e-42c82e911025',0),('dc0c34e4-ee30-463c-89ff-c9978905cec2','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('dc0c34e4-ee30-463c-89ff-c9978905cec2','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('dc0c34e4-ee30-463c-89ff-c9978905cec2','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('dc0c34e4-ee30-463c-89ff-c9978905cec2','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('dc0c34e4-ee30-463c-89ff-c9978905cec2','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('dc0c34e4-ee30-463c-89ff-c9978905cec2','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9','0a929d01-43d1-4591-98ac-2aa705844c5a');
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
INSERT INTO `COMPONENT` VALUES ('07bb2e63-689a-418a-93cd-b3ae18ea7b62','Trusted Hosts','fa43b5a7-aaed-48a7-bb09-be045f976d24','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','anonymous'),('0e3184d8-fd55-405c-aa55-c55e6ac20f70','Max Clients Limit','fa43b5a7-aaed-48a7-bb09-be045f976d24','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','anonymous'),('438fbb2c-4e8d-4edf-ad2a-0c17d56ac688','hmac-generated-hs512','fa43b5a7-aaed-48a7-bb09-be045f976d24','hmac-generated','org.keycloak.keys.KeyProvider','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL),('5315eb1b-0d94-40ef-af12-aae1b4ff119d','Allowed Protocol Mapper Types','fa43b5a7-aaed-48a7-bb09-be045f976d24','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','anonymous'),('75108dff-8f13-4a9e-899b-9f25ad4db87b','Full Scope Disabled','fa43b5a7-aaed-48a7-bb09-be045f976d24','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','anonymous'),('8791646e-ca9d-463d-93a8-e14ae4b429e6','Allowed Protocol Mapper Types','fa43b5a7-aaed-48a7-bb09-be045f976d24','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','authenticated'),('a625599c-ea97-4120-bd54-ccd646ec1186','rsa-generated','fa43b5a7-aaed-48a7-bb09-be045f976d24','rsa-generated','org.keycloak.keys.KeyProvider','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL),('a76e3b28-a40e-4645-a2a8-cf57428b7a6c','rsa-enc-generated','fa43b5a7-aaed-48a7-bb09-be045f976d24','rsa-enc-generated','org.keycloak.keys.KeyProvider','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL),('bdca9826-99f5-4dde-a58a-f5c5121e5011','Consent Required','fa43b5a7-aaed-48a7-bb09-be045f976d24','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','anonymous'),('e16565f0-2f79-4a3c-8992-41dca88f9500',NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL),('e9926e48-ca1a-4b16-bd33-d485a827bffb','aes-generated','fa43b5a7-aaed-48a7-bb09-be045f976d24','aes-generated','org.keycloak.keys.KeyProvider','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL),('ed916c1c-d86c-4f8a-9aac-ccc56f182e52','Allowed Client Scopes','fa43b5a7-aaed-48a7-bb09-be045f976d24','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','authenticated'),('f435b1f7-00c1-4d90-a0d4-ec4bda0ce52c','Allowed Client Scopes','fa43b5a7-aaed-48a7-bb09-be045f976d24','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','anonymous');
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0c73018e-aa33-431a-a053-4a0e5ab8dbaa','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','saml-role-list-mapper'),('11b3da62-2083-48c6-8d2b-2e1de4189d06','ed916c1c-d86c-4f8a-9aac-ccc56f182e52','allow-default-scopes','true'),('17cb6beb-8210-42fd-ba4e-168598690ff8','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','saml-user-property-mapper'),('28f9a81d-e893-4514-96f2-5774ab0f566c','f435b1f7-00c1-4d90-a0d4-ec4bda0ce52c','allow-default-scopes','true'),('306bcc97-885e-4d25-bc28-b32086c603fb','0e3184d8-fd55-405c-aa55-c55e6ac20f70','max-clients','200'),('39b06ccb-b90e-4e23-8dc9-275e2b77b7f2','a76e3b28-a40e-4645-a2a8-cf57428b7a6c','privateKey','MIIEpAIBAAKCAQEAogn3NOfuDxg50Hw6qn96y9KFuHACRW/c5MCjeYXyk9D6HINrK6rCm4oZVjFVi0/3cDZZM16Zf8LzRVX3hyWoFUSXX8ZtLhRAYISt+9Z0uGHx+LxSblFwnrwehSgUBZ1q2aiQKEMTdIzdOfAdsAhPQUpSSUDou6LtWSY67uchfzBOldx5YESis6n+EEtfCWK7E2IFC5nJI8TZbyKF/lPFknP26T6asMtpDoK3FKWjAvRsbtMfXQJVGpCISybeOYr65yp1YpESD6wWU6KaXLy7mG01He71lkLqjDZT/hrDzrM5depSOsvHmwpadA9ED8glzdyAGcBje0otqGJGMU7/LQIDAQABAoIBAAnYHCYhLwPIv35sha3lB8NJO2l8mI66YIufLm9MFXQofoFr9H9XJPKJHcfwQFex2ID/NEUcKqwp3liog9y4i3EbVSzy46Aoh861UNKbcUTgYnBvlHxyQyrJl/sT979tlFe712IyzQRIKIqEDXGr15DKYJxlrp3zpILFgVARR6Yv4rWQXImximycA2Z0KL5gbaJwzAs1NhEPefRwBPtTHDRiFUvf3RalCcnEh8HfZmIcfmtfVC87Y+Uwlya51EqDAM4/B6qRj15HhW8b7suQpjanbPRStYFIB0Ck36JXUp+HrvZwlhiqeSX1jZTkovUynXyCNosQyrSOBW5cHC+gniECgYEA5Flzp6Lw5fGgICNcQeTJfoAn+jNSHijNNyo2MRuAck0qxL5nA5wTIL87bC/o/4ZUKtpINnnn1/IuISmCjw1EZD/pu9FAIm68y+/YKURCjv9PR+MW4EPrAinH7N+ilmFzFcZY1NkMxIoZcjMmmFy1Kxb4i+1V8B9uXuKTbioJKh0CgYEAtaj4lOkkBWeDCODXofJnRt8BbfV8mWCmnkGU0/rVq5VhxzYdtXX+XvRwHqnEHOEpsJkn89BS5tNJqJkTUU4Txe2SlMBFVZ1XV5gzo3DLExWvIqUd/E+DHQhwYM3X4upiu1r7Yp4uYxEGSJMRH5Lz8aw0Sj/w0JFW5+utLmWLnFECgYEA1pDLIRD1hUum56vyS6R8RRaM+gfxOI+kTRqn8zrhVgX2kwpKZ9TnEFVAs+bM7BW/zshvJGkmFf7lo5mKqXqQ8hYwPaBgwDoHwyVqm1QdqppyV50l6LNJBy5VQtncv6tv5V0MKWyOF7ugL3Oq523tekDKaUkpAEm4fwYt/E0ZcW0CgYBo0MQNd6/3BlDO8Jy6rpj0hXvXrEtmXCQHMCPlY9ehlyHBxfHCYACTXUrMBnxHhYt+gABTZ6JN2R+pDhndUcWK8JchCQd4bL6WphU1esFRk7NntAnnKSGnwNTGpj6oiUDKhaaCsm5lbs9HVMQOicYDba8GIHqcfR+91XgpSyIQ4QKBgQDNvNpYkGmZmHj4k3nquAFB55Pa1dQMt8xbVINNcA2XbL/N+QX6GTD+3RplkxF2lXgqcI4QYiKtU5MCXx9TWcyltkAMRsXJcUr0e+cftmUmrhlpLotHMi5UkiRq/MTKCmrInKcsPqhrM+4gAqs9DEkVkhy7qYvU8L0TdSg5J+TXYQ=='),('3a08b9ce-ed76-4c5b-acf0-5ac1d4cee59e','a76e3b28-a40e-4645-a2a8-cf57428b7a6c','algorithm','RSA-OAEP'),('40e7ea89-8ceb-44c8-9d50-3a4c13ef121b','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4296809b-d0a6-45cf-9bd8-ea5b0a7b1598','a625599c-ea97-4120-bd54-ccd646ec1186','priority','100'),('440830ec-ff26-4941-be6f-ad8782a82200','07bb2e63-689a-418a-93cd-b3ae18ea7b62','host-sending-registration-request-must-match','true'),('4c8fd169-49ce-49b8-a96f-7c636be72226','438fbb2c-4e8d-4edf-ad2a-0c17d56ac688','secret','kCZlix0qDi6Klj9YuFCujjClvUX2saJx--UGydL_BjoCgcp_KSEOFHfbKGUUif0FSD62ufSAqXOmYrkUvLDkIS9OeZxts0gf49J_NdQLjR_CGsxllFuhcRVX4f4vxHeK3qTRPItPRryPIfpC7iqQr-iN0F9-aiGcz3iNVr8InBw'),('4fcc59d7-be7b-4ac2-bc01-53aab4b9a402','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('515d90d3-475a-4994-872f-4c3c34ee77d2','a625599c-ea97-4120-bd54-ccd646ec1186','keyUse','SIG'),('5643e15d-3dfb-423b-9fbc-e4b672f46106','e16565f0-2f79-4a3c-8992-41dca88f9500','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('5ab475c3-5910-4806-a060-2bddbc6e5001','e9926e48-ca1a-4b16-bd33-d485a827bffb','kid','9aa88e64-a325-43f4-831c-dcffc865989d'),('5d20a808-9ebc-4b5f-be8a-aee02aa07215','a76e3b28-a40e-4645-a2a8-cf57428b7a6c','priority','100'),('6066acd6-cd47-47dd-b975-5fe3675bf9f9','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('64670ecb-bd60-4f26-86f5-13e97335e728','a625599c-ea97-4120-bd54-ccd646ec1186','certificate','MIICmzCCAYMCBgGQWKj6njANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjI3MDc0NDQ3WhcNMzQwNjI3MDc0NjI3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCswrcCXIj4CSuTKUHBeuE18Mk5C+KQe8W4+DbHgjN+q3vtr3ooEuRXaBUrT+MtqLl3qnzR/8PoIvn147zsggnSRqCOYceVvM43URqER9iaTSMF6lRfJJ/IqKJYWputSB3PbjAn/tWij37WFyHyL1fTmWUAk3PhxfrdFcvo3/6xs75FcRBZ5rwfI9TIuVVqj/ZfnV3IJsk9kRQGVNh4iIpNGnY5fdO0teeMDpqAIa9DL44WJik7nx7iceBRJcL9kJKZCCqgy3dlVS+ky5rXPn4etGGYJHk2isqHgm4f02lEQ/kcSTYT7O5Loo6T9DWATHCyQ+MRhn4l15VVVY3gafmHAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGzZvKTmK7oQ1njqjOiZ+R94ll1SmGH6GSUswXdXN49hwKmMSjzvScsQWVG1+5hiRelUZ/hddJ/raq4Z+ArDXRQUDXfcOputOGsNylErYt/9692EajYOS+YnpP2VYmWdZN1CRxVtpvSDPBBDNmo7lOaNErhoV4SSVb5sfbkugFW1Yf0bwRPUb/adPWNdu+3ktm9RVORdlOMzoMSkB8eqde/YVBnkQJGZQgh4rPRAq4nhMs44+jN+Py7pi77cQTKZj2jqTYN4h7fs2EZPmVhpu/8XHlYU7Jtm5hFfbw7pP3UzbP+Ft7/jJAoSnRqbvOakZBzG70TriQOk54Cr6MG/Jrw='),('66c34b55-5166-4c1c-a4e9-78bd4eb0da4d','438fbb2c-4e8d-4edf-ad2a-0c17d56ac688','kid','a16ce1c0-789d-4b35-82d6-4283b4c856b0'),('68b9369c-2886-4ae8-92c6-3b1973f4b06e','a76e3b28-a40e-4645-a2a8-cf57428b7a6c','keyUse','ENC'),('68e8d4b3-c16d-49d0-83fc-f54188704f30','07bb2e63-689a-418a-93cd-b3ae18ea7b62','client-uris-must-match','true'),('6e4b7b29-1797-4379-aed0-a121b5915a4d','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('81997918-3352-4de1-b45b-df199c64cd94','e9926e48-ca1a-4b16-bd33-d485a827bffb','priority','100'),('855055db-b7f8-4808-b162-dceb2ded1916','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('98b11899-7957-4d2a-8a46-b04808f34dee','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('9bb7437d-88de-4131-b263-d5798aa86eea','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','oidc-full-name-mapper'),('a66a7da2-6305-4f5e-ba7d-d9e9c2643ce2','e9926e48-ca1a-4b16-bd33-d485a827bffb','secret','tZLdP74lkQrO6lfM5rkiOw'),('a87d631a-d17c-46ca-af8c-7aa300a2347e','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','saml-user-property-mapper'),('ba1799b0-3786-4ba2-8b02-21a3d7698b64','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','oidc-address-mapper'),('bebbf7a6-f068-47b1-a840-bc78818a6cfb','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c653f33c-26b8-4309-9199-45cdae60b8a5','a76e3b28-a40e-4645-a2a8-cf57428b7a6c','certificate','MIICmzCCAYMCBgGQWKj80zANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjI3MDc0NDQ4WhcNMzQwNjI3MDc0NjI4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCiCfc05+4PGDnQfDqqf3rL0oW4cAJFb9zkwKN5hfKT0Pocg2srqsKbihlWMVWLT/dwNlkzXpl/wvNFVfeHJagVRJdfxm0uFEBghK371nS4YfH4vFJuUXCevB6FKBQFnWrZqJAoQxN0jN058B2wCE9BSlJJQOi7ou1ZJjru5yF/ME6V3HlgRKKzqf4QS18JYrsTYgULmckjxNlvIoX+U8WSc/bpPpqwy2kOgrcUpaMC9Gxu0x9dAlUakIhLJt45ivrnKnVikRIPrBZToppcvLuYbTUd7vWWQuqMNlP+GsPOszl16lI6y8ebClp0D0QPyCXN3IAZwGN7Si2oYkYxTv8tAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAFXCOx1FoHB6gZS9AkzfzLSbWyae3r/tGJtryvDvi30G377nVtfbOiutB2HLGhui7Z4H/UTjWo6gPLNX18z8yg1Qg/BDlsQtsc7yms+yjTTsofVzEEDo3O030nLyTHI6c+K+KEYpb4BFItYbebpSEuNsizGLq+dceLtMI6ETS9dl+FLfB2OgcTLxpV8tyCgMR47XwiKxpV4gAfSqs5uDt5YmzhpE5rLBIMWEj3VnXF3p4NvWcdQZWJtg+JChAGc6oeroQlphP8EnAKxCmMr4FHLKcFwCFRDI7eH2RWBfYbQlKIgq4Yt+RYW043quYymsS3hF+TwZdeHnh3d2RxkySdo='),('dc8b6d4b-01b9-4171-b590-1ef8db521b8f','a625599c-ea97-4120-bd54-ccd646ec1186','privateKey','MIIEpAIBAAKCAQEArMK3AlyI+AkrkylBwXrhNfDJOQvikHvFuPg2x4Izfqt77a96KBLkV2gVK0/jLai5d6p80f/D6CL59eO87IIJ0kagjmHHlbzON1EahEfYmk0jBepUXySfyKiiWFqbrUgdz24wJ/7Voo9+1hch8i9X05llAJNz4cX63RXL6N/+sbO+RXEQWea8HyPUyLlVao/2X51dyCbJPZEUBlTYeIiKTRp2OX3TtLXnjA6agCGvQy+OFiYpO58e4nHgUSXC/ZCSmQgqoMt3ZVUvpMua1z5+HrRhmCR5NorKh4JuH9NpREP5HEk2E+zuS6KOk/Q1gExwskPjEYZ+JdeVVVWN4Gn5hwIDAQABAoIBAAvR9ruOoUB3QCf9dqZKRgZuxxXEHmhMT6bsNLNJ0UQlb4E/tFfxkvX4BRrFiIGjPa1WWNv1Z+4GFpwgTNjRvOJKOsoDHqi8Fk/qmKncUJGeHXtWIRexZc1Q3Gq3KFeey4tZuqnB4dQRhVgYlRYA7z1nDWYQsKkN5rAhwaXZTY/S44ewBPYna+zUsfOgSp5PBr917fIE9jzB6uyCOqtfHvsrvF5iHx2nkV8e8RzO8JiUk2byWzZtYTe3r2pZPMJzPzAjaTClH/Ium/JCcHd6AVqmfyYH1KJkonn6gogWH4BLFdaCpNyzArPG/zQb/xMcqmynZn4ZkbmgoLj8Ze/3PeECgYEA63ESY20TIGQZv5gOAcj83BJqdegev392NwxLjABPGdFVqEIZMWB+lKbU4HYoWg1UC2PamTPhsfJVL7Fz8Fm11fDFsA5zYnQ2vMxxKj/+RmIQY+kErde7Nj9NR0Y7XUtFurVx9QUjA700YKimswLeKxZVrvn8T++IqhSOEbPb1vMCgYEAu9iBlCMn/FDQJZ0+ft9eSh3jWoS/LJWszuhi3Z63XSt05vdAPPJSU6fG2DKe0bK1JVJHyRPPQiuqGVQRVNPProiYudOGaBtzDSwHKIuw+939ov34InrT3loxPYnbNdqzciZp5uPc56gjj7YjiWRTPKCfPK8sGmPY8nf67eFa4B0CgYEAuS6/ctqI77IsGmljov3N/N6zQ7fl72M2vQd7qEtZ7AmdoPEUVaT7CrrJtx7YkDPpheftORD4lPjxDck6UrKM9hAhvV8wXCDiKM94tu2MdxmMoLjXyFBlXL6fbs8LxE5/MuKiFkELEFbSCrC8JRK9YhB4Jl9TmB/kUzpFoCDiagcCgYBkz9kbC5MWErjitvUnWfFcjZXKqpt+7gUENit5DQkTc5MVsXREQTh1tQE+Xkxl9ibJlNL50yvUM2LinP+AKvy2ipCMij0D+ldQpmRhGjcttQG+S9azin/SQU1T3XxL9sd/Z6ZGR9vyZ4ZORk3kGnehfgJ3qvtcXmG8HzAIIn2G8QKBgQCBBl+Xk0Rt1MEcSYd8yb1729/d5rnCpkrdsq30+nigZIV7svsVI1XUCQEqnhBMZHmatywWJ4zMqtmD1eJsdj2kF58m+6ip4rjyp06sDNXW7LDpMb3up7lxa/On4uXTQ45mrcvQW5T+FPjkXg57K6imsn5yMe7oP6hdU0ANwT/z6Q=='),('dcb855d2-fc4f-4779-9215-b13810dc0481','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','saml-role-list-mapper'),('de6091c5-0a59-4a7d-a17c-54e0cba158a0','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','oidc-address-mapper'),('deaa45c9-08a7-4e4b-9ab7-2092904a35d0','8791646e-ca9d-463d-93a8-e14ae4b429e6','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ee2adec8-feec-4c70-bb9a-0cf16cf2b0d1','438fbb2c-4e8d-4edf-ad2a-0c17d56ac688','priority','100'),('f4791c8e-a861-4ebd-8755-151ade19442f','5315eb1b-0d94-40ef-af12-aae1b4ff119d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('f8cc8e25-0e59-417f-a55d-1f019281232b','438fbb2c-4e8d-4edf-ad2a-0c17d56ac688','algorithm','HS512');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('291ce55f-999b-4479-a2a9-932db4b8396d','140e1efe-8691-44ca-a45a-bfe61674d605'),('291ce55f-999b-4479-a2a9-932db4b8396d','ba5e44a8-df69-4e7c-9225-6f44f98db9db'),('47872e73-1b74-4492-bb19-38fcc0c588aa','47052b4a-60b8-4d2b-b3e6-40155a852766'),('785dda70-f77c-4841-b28b-a6e3cd83463d','c35d03b5-26e0-4d7b-b412-e478b11e7910'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','0d5ccba9-281b-4d62-a252-2ced1942e28e'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','12ca4d00-55a7-4f74-8c8c-f2966933cd4b'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','140e1efe-8691-44ca-a45a-bfe61674d605'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','27cb6771-cdee-4c4b-911c-40ccb354ff85'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','291ce55f-999b-4479-a2a9-932db4b8396d'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','32bede74-401b-4e9f-a99f-8f27304e88d0'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','3840a6df-3247-46d4-9018-e0ee93ea6ce6'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','435ffec7-4a64-4e6f-8c65-a9d263b1e6c0'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','47052b4a-60b8-4d2b-b3e6-40155a852766'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','47872e73-1b74-4492-bb19-38fcc0c588aa'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','7d3b4694-f610-44b0-bf8a-5d10fa43a135'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','81440f5d-ff8e-45f0-aa30-50a1a13cafd5'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','a331de43-4295-4b81-aff2-23b523a2df2a'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','ad5221ee-9678-40bc-9a0d-474c6b49d5b6'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','ba3c4af1-8a51-4c0b-b4ac-427fee26576b'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','ba5e44a8-df69-4e7c-9225-6f44f98db9db'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','c6a5ec6c-bf3d-43f8-94e1-7d6be16f0abe'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','df961f7c-b789-4584-b9ee-65cf43e77dbc'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','f663a9ee-1e08-4366-9dda-fa089aba535f'),('b43d791c-f933-4c8e-b47c-dffc85d333bc','0a929d01-43d1-4591-98ac-2aa705844c5a'),('b43d791c-f933-4c8e-b47c-dffc85d333bc','785dda70-f77c-4841-b28b-a6e3cd83463d'),('b43d791c-f933-4c8e-b47c-dffc85d333bc','f1176323-b5cc-4703-a6b7-17a8d580a8e1'),('b43d791c-f933-4c8e-b47c-dffc85d333bc','f6d17326-dd42-4271-809e-0cf09a63eb05'),('be5442cb-4131-4352-ad1c-3f86f96ac48e','958f01ec-19ad-47cb-8fcf-a955b5476074');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('46e53e83-288a-4552-9198-8e61abcd3fcf',NULL,'password','028c254c-160d-42c6-8b4f-c1f8c45851a0',1719474389959,NULL,'{\"value\":\"LcvyBxfcQ4uQVI47BE3u9T1ptto0OhbTaYMqEOWhJ4ZRUr/0Pnsoa1qBmaxUG7rmW6g8vStey/bb/l+bn0/OUg==\",\"salt\":\"uI4PbEYEV7hyPNLPshHVEg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-27 16:46:08',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-27 16:46:08',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-27 16:46:08',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-27 16:46:09',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-27 16:46:09',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-27 16:46:09',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-27 16:46:11',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-27 16:46:11',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-27 16:46:11',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-27 16:46:12',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-27 16:46:13',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-27 16:46:13',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-27 16:46:13',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-27 16:46:13',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-27 16:46:13',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-27 16:46:13',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-27 16:46:13',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-27 16:46:13',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-27 16:46:14',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-27 16:46:14',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-27 16:46:14',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-27 16:46:14',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-27 16:46:14',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-27 16:46:14',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-27 16:46:14',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-27 16:46:14',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-27 16:46:16',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-27 16:46:16',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-27 16:46:16',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-27 16:46:17',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-27 16:46:17',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-27 16:46:17',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-27 16:46:17',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-27 16:46:17',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-27 16:46:17',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-27 16:46:17',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-27 16:46:17',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'9474365243'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-27 16:46:17',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-27 16:46:17',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-27 16:46:17',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-27 16:46:17',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-27 16:46:17',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-27 16:46:18',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-27 16:46:18',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-27 16:46:18',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-27 16:46:18',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-27 16:46:18',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-27 16:46:19',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-27 16:46:19',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-27 16:46:19',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-27 16:46:20',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-27 16:46:20',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-27 16:46:20',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-27 16:46:20',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-27 16:46:20',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-27 16:46:20',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-27 16:46:20',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-27 16:46:21',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-27 16:46:21',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-27 16:46:21',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-27 16:46:21',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-27 16:46:21',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-27 16:46:21',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-27 16:46:21',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-27 16:46:21',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-27 16:46:22',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-27 16:46:22',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-27 16:46:22',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-27 16:46:22',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-27 16:46:22',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'9474365243'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-27 16:46:22',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'9474365243'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-27 16:46:22',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'9474365243'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-27 16:46:22',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'9474365243'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-27 16:46:22',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'9474365243'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-27 16:46:22',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-27 16:46:22',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-27 16:46:22',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-27 16:46:22',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-27 16:46:22',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-27 16:46:22',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-27 16:46:22',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-27 16:46:22',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-27 16:46:22',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-27 16:46:22',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'9474365243'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-27 16:46:22',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-27 16:46:22',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'9474365243'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-27 16:46:22',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-27 16:46:22',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'9474365243'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'9474365243'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'9474365243'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-27 16:46:22',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'9474365243'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-27 16:46:23',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-27 16:46:23',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-27 16:46:23',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-27 16:46:23',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-27 16:46:23',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-27 16:46:23',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-27 16:46:23',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'9474365243'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-27 16:46:23',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-06-27 16:46:23',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-27 16:46:23',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'9474365243'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-27 16:46:23',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-27 16:46:23',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-27 16:46:23',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-27 16:46:23',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'9474365243'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-27 16:46:23',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-27 16:46:23',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-27 16:46:23',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-27 16:46:23',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-27 16:46:23',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-27 16:46:23',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-27 16:46:23',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-27 16:46:23',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'9474365243');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('fa43b5a7-aaed-48a7-bb09-be045f976d24','0e3e5c4c-bf7d-4ab0-b5e2-2ce80f11edc9',0),('fa43b5a7-aaed-48a7-bb09-be045f976d24','1a994053-4b0a-4cdc-9898-12559ccdf804',1),('fa43b5a7-aaed-48a7-bb09-be045f976d24','2d780133-2a3e-431f-853e-42c82e911025',0),('fa43b5a7-aaed-48a7-bb09-be045f976d24','6e7d8f64-ee98-403b-b8c7-0c095f58eac0',1),('fa43b5a7-aaed-48a7-bb09-be045f976d24','8ce9aa6f-04e8-4f74-a41e-0d7651a81068',1),('fa43b5a7-aaed-48a7-bb09-be045f976d24','aadf98b3-0bc7-4930-bb0a-197abfaef646',0),('fa43b5a7-aaed-48a7-bb09-be045f976d24','ac09551a-d129-4698-9b3a-59d87c4c6405',1),('fa43b5a7-aaed-48a7-bb09-be045f976d24','d372ff43-a7b8-4ce7-8246-9970908b0786',0),('fa43b5a7-aaed-48a7-bb09-be045f976d24','e7b9f80f-4774-492d-b183-aecff45107c6',1),('fa43b5a7-aaed-48a7-bb09-be045f976d24','ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0a929d01-43d1-4591-98ac-2aa705844c5a','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,'${role_offline-access}','offline_access','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL,NULL),('0d5ccba9-281b-4d62-a252-2ced1942e28e','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_manage-events}','manage-events','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('12ca4d00-55a7-4f74-8c8c-f2966933cd4b','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_view-identity-providers}','view-identity-providers','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('140e1efe-8691-44ca-a45a-bfe61674d605','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_query-users}','query-users','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('27cb6771-cdee-4c4b-911c-40ccb354ff85','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_view-authorization}','view-authorization','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('281acd30-cdc5-40ba-943b-e71a509e6266','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_view-applications}','view-applications','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('291ce55f-999b-4479-a2a9-932db4b8396d','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_view-users}','view-users','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('32bede74-401b-4e9f-a99f-8f27304e88d0','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_manage-realm}','manage-realm','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('3840a6df-3247-46d4-9018-e0ee93ea6ce6','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,'${role_create-realm}','create-realm','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL,NULL),('435ffec7-4a64-4e6f-8c65-a9d263b1e6c0','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_manage-authorization}','manage-authorization','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('462c8f9f-7ff5-41e9-bcbf-487785bfb52e','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_delete-account}','delete-account','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('47052b4a-60b8-4d2b-b3e6-40155a852766','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_query-clients}','query-clients','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('47872e73-1b74-4492-bb19-38fcc0c588aa','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_view-clients}','view-clients','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('5c84917c-0b57-464c-84fc-4e36d5867e52','2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46',1,'${role_read-token}','read-token','fa43b5a7-aaed-48a7-bb09-be045f976d24','2c4e91b5-bbe0-4f76-8aa2-8183b5d44f46',NULL),('6d2a337a-d861-46dd-aecf-38a04df942e8','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_view-groups}','view-groups','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('785dda70-f77c-4841-b28b-a6e3cd83463d','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_manage-account}','manage-account','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('7d3b4694-f610-44b0-bf8a-5d10fa43a135','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_create-client}','create-client','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,'${role_admin}','admin','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL,NULL),('81440f5d-ff8e-45f0-aa30-50a1a13cafd5','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_query-realms}','query-realms','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('958f01ec-19ad-47cb-8fcf-a955b5476074','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_view-consent}','view-consent','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('a331de43-4295-4b81-aff2-23b523a2df2a','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_manage-identity-providers}','manage-identity-providers','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('ad5221ee-9678-40bc-9a0d-474c6b49d5b6','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_view-events}','view-events','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('b43d791c-f933-4c8e-b47c-dffc85d333bc','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,'${role_default-roles}','default-roles-master','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL,NULL),('ba3c4af1-8a51-4c0b-b4ac-427fee26576b','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_impersonation}','impersonation','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('ba5e44a8-df69-4e7c-9225-6f44f98db9db','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_query-groups}','query-groups','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('be5442cb-4131-4352-ad1c-3f86f96ac48e','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_manage-consent}','manage-consent','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('c35d03b5-26e0-4d7b-b412-e478b11e7910','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_manage-account-links}','manage-account-links','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL),('c6a5ec6c-bf3d-43f8-94e1-7d6be16f0abe','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_view-realm}','view-realm','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('df961f7c-b789-4584-b9ee-65cf43e77dbc','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_manage-users}','manage-users','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('f1176323-b5cc-4703-a6b7-17a8d580a8e1','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,'${role_uma_authorization}','uma_authorization','fa43b5a7-aaed-48a7-bb09-be045f976d24',NULL,NULL),('f663a9ee-1e08-4366-9dda-fa089aba535f','d644e264-ac5c-4735-8bdd-06539e5d6c71',1,'${role_manage-clients}','manage-clients','fa43b5a7-aaed-48a7-bb09-be045f976d24','d644e264-ac5c-4735-8bdd-06539e5d6c71',NULL),('f6d17326-dd42-4271-809e-0cf09a63eb05','9c14cff8-3f13-41b6-95a2-fcec46424857',1,'${role_view-profile}','view-profile','fa43b5a7-aaed-48a7-bb09-be045f976d24','9c14cff8-3f13-41b6-95a2-fcec46424857',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('jkhrf','24.0.5',1719474384);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('04f898c0-8601-42dc-bf70-9bb96e1b6105','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('25a90688-e27a-451e-b56c-564971fd3ba3','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('33ac564b-8cef-4d2e-a239-b8dc3a213f50','role list','saml','saml-role-list-mapper',NULL,'e7b9f80f-4774-492d-b183-aecff45107c6'),('37d6d96d-af31-4f04-ad60-70066d6e7535','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','43589cf4-94e2-42f3-9286-6c6ab156905b',NULL),('3c7fff30-bf01-46ca-8547-7124bbe743ab','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'1a994053-4b0a-4cdc-9898-12559ccdf804'),('4911e58b-73f7-4584-ab7f-3153976b95c2','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d780133-2a3e-431f-853e-42c82e911025'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('5d4742cb-13ec-4252-81ee-456558a381e1','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','43589cf4-94e2-42f3-9286-6c6ab156905b',NULL),('60de4248-bf2c-4adf-97fa-6c0764100da5','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'2d780133-2a3e-431f-853e-42c82e911025'),('6ba8d428-6d31-4558-b8a7-45291b3ccb7a','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'6e7d8f64-ee98-403b-b8c7-0c095f58eac0'),('70bbf182-c461-487a-ba9c-670a1f720c5d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('78ccc008-fe7d-4bec-9bda-4c5170746030','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'1a994053-4b0a-4cdc-9898-12559ccdf804'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','43589cf4-94e2-42f3-9286-6c6ab156905b',NULL),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'ac09551a-d129-4698-9b3a-59d87c4c6405'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ac09551a-d129-4698-9b3a-59d87c4c6405'),('9678c828-4bce-4acb-bd3c-035d000898e4','address','openid-connect','oidc-address-mapper',NULL,'aadf98b3-0bc7-4930-bb0a-197abfaef646'),('98061ca5-ec00-4f04-9ca7-f532e023428e','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d372ff43-a7b8-4ce7-8246-9970908b0786'),('a2602e30-1585-4b3d-8832-af64ee64d614','locale','openid-connect','oidc-usermodel-attribute-mapper','dc0c34e4-ee30-463c-89ff-c9978905cec2',NULL),('abdd8da1-f3b0-458c-b84d-e09fa7343679','full name','openid-connect','oidc-full-name-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('b7fa7bc3-23f3-43d4-988b-9644ee124bc4','audience resolve','openid-connect','oidc-audience-resolve-mapper','54de7636-e771-49b6-b0b3-f1fc0a26eaba',NULL),('bdb044cb-89b7-4a39-8a49-e27770ab283d','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d372ff43-a7b8-4ce7-8246-9970908b0786'),('c0b15a0a-d109-41c4-884e-13c445b854de','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('c5d48349-2d75-4b8e-8dea-c6829339fce6','acr loa level','openid-connect','oidc-acr-mapper',NULL,'ecb2b6aa-b2bc-4f80-b7ea-2bf7d7565fdc'),('d4582069-15bd-41b4-846a-743ef3a46776','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('e6e49efc-9c19-4fea-a0f9-815ab11cddfb','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'1a994053-4b0a-4cdc-9898-12559ccdf804'),('f562e39e-b0da-4b6d-9153-43a020c2b101','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068'),('f82e186d-5c05-4b6e-95f1-1e338985014d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8ce9aa6f-04e8-4f74-a41e-0d7651a81068');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('04f898c0-8601-42dc-bf70-9bb96e1b6105','true','access.token.claim'),('04f898c0-8601-42dc-bf70-9bb96e1b6105','picture','claim.name'),('04f898c0-8601-42dc-bf70-9bb96e1b6105','true','id.token.claim'),('04f898c0-8601-42dc-bf70-9bb96e1b6105','true','introspection.token.claim'),('04f898c0-8601-42dc-bf70-9bb96e1b6105','String','jsonType.label'),('04f898c0-8601-42dc-bf70-9bb96e1b6105','picture','user.attribute'),('04f898c0-8601-42dc-bf70-9bb96e1b6105','true','userinfo.token.claim'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','true','access.token.claim'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','given_name','claim.name'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','true','id.token.claim'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','true','introspection.token.claim'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','String','jsonType.label'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','firstName','user.attribute'),('0cc1efff-1bf7-481d-b0e8-e9b9941810d7','true','userinfo.token.claim'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','true','access.token.claim'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','middle_name','claim.name'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','true','id.token.claim'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','true','introspection.token.claim'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','String','jsonType.label'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','middleName','user.attribute'),('1f1af2da-e2d7-4871-86f2-311b2f21513d','true','userinfo.token.claim'),('25a90688-e27a-451e-b56c-564971fd3ba3','true','access.token.claim'),('25a90688-e27a-451e-b56c-564971fd3ba3','birthdate','claim.name'),('25a90688-e27a-451e-b56c-564971fd3ba3','true','id.token.claim'),('25a90688-e27a-451e-b56c-564971fd3ba3','true','introspection.token.claim'),('25a90688-e27a-451e-b56c-564971fd3ba3','String','jsonType.label'),('25a90688-e27a-451e-b56c-564971fd3ba3','birthdate','user.attribute'),('25a90688-e27a-451e-b56c-564971fd3ba3','true','userinfo.token.claim'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','true','access.token.claim'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','preferred_username','claim.name'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','true','id.token.claim'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','true','introspection.token.claim'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','String','jsonType.label'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','username','user.attribute'),('26deedbe-cbdf-4a67-a3ee-43c8a30b0efb','true','userinfo.token.claim'),('33ac564b-8cef-4d2e-a239-b8dc3a213f50','Role','attribute.name'),('33ac564b-8cef-4d2e-a239-b8dc3a213f50','Basic','attribute.nameformat'),('33ac564b-8cef-4d2e-a239-b8dc3a213f50','false','single'),('37d6d96d-af31-4f04-ad60-70066d6e7535','true','access.token.claim'),('37d6d96d-af31-4f04-ad60-70066d6e7535','clientHost','claim.name'),('37d6d96d-af31-4f04-ad60-70066d6e7535','true','id.token.claim'),('37d6d96d-af31-4f04-ad60-70066d6e7535','String','jsonType.label'),('37d6d96d-af31-4f04-ad60-70066d6e7535','clientHost','user.session.note'),('37d6d96d-af31-4f04-ad60-70066d6e7535','true','userinfo.token.claim'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','true','access.token.claim'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','family_name','claim.name'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','true','id.token.claim'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','true','introspection.token.claim'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','String','jsonType.label'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','lastName','user.attribute'),('3c7fff30-bf01-46ca-8547-7124bbe743ab','true','userinfo.token.claim'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','true','access.token.claim'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','resource_access.${client_id}.roles','claim.name'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','true','introspection.token.claim'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','String','jsonType.label'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','true','multivalued'),('475c8e3a-86fb-4395-b9d8-df54f0ffcfc5','foo','user.attribute'),('4911e58b-73f7-4584-ab7f-3153976b95c2','true','access.token.claim'),('4911e58b-73f7-4584-ab7f-3153976b95c2','upn','claim.name'),('4911e58b-73f7-4584-ab7f-3153976b95c2','true','id.token.claim'),('4911e58b-73f7-4584-ab7f-3153976b95c2','true','introspection.token.claim'),('4911e58b-73f7-4584-ab7f-3153976b95c2','String','jsonType.label'),('4911e58b-73f7-4584-ab7f-3153976b95c2','username','user.attribute'),('4911e58b-73f7-4584-ab7f-3153976b95c2','true','userinfo.token.claim'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','true','access.token.claim'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','website','claim.name'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','true','id.token.claim'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','true','introspection.token.claim'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','String','jsonType.label'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','website','user.attribute'),('50d91901-1dc8-42f2-a25e-9c81f17de67f','true','userinfo.token.claim'),('5d4742cb-13ec-4252-81ee-456558a381e1','true','access.token.claim'),('5d4742cb-13ec-4252-81ee-456558a381e1','clientAddress','claim.name'),('5d4742cb-13ec-4252-81ee-456558a381e1','true','id.token.claim'),('5d4742cb-13ec-4252-81ee-456558a381e1','String','jsonType.label'),('5d4742cb-13ec-4252-81ee-456558a381e1','clientAddress','user.session.note'),('5d4742cb-13ec-4252-81ee-456558a381e1','true','userinfo.token.claim'),('60de4248-bf2c-4adf-97fa-6c0764100da5','true','access.token.claim'),('60de4248-bf2c-4adf-97fa-6c0764100da5','groups','claim.name'),('60de4248-bf2c-4adf-97fa-6c0764100da5','true','id.token.claim'),('60de4248-bf2c-4adf-97fa-6c0764100da5','true','introspection.token.claim'),('60de4248-bf2c-4adf-97fa-6c0764100da5','String','jsonType.label'),('60de4248-bf2c-4adf-97fa-6c0764100da5','true','multivalued'),('60de4248-bf2c-4adf-97fa-6c0764100da5','foo','user.attribute'),('6ba8d428-6d31-4558-b8a7-45291b3ccb7a','true','access.token.claim'),('6ba8d428-6d31-4558-b8a7-45291b3ccb7a','true','introspection.token.claim'),('70bbf182-c461-487a-ba9c-670a1f720c5d','true','access.token.claim'),('70bbf182-c461-487a-ba9c-670a1f720c5d','nickname','claim.name'),('70bbf182-c461-487a-ba9c-670a1f720c5d','true','id.token.claim'),('70bbf182-c461-487a-ba9c-670a1f720c5d','true','introspection.token.claim'),('70bbf182-c461-487a-ba9c-670a1f720c5d','String','jsonType.label'),('70bbf182-c461-487a-ba9c-670a1f720c5d','nickname','user.attribute'),('70bbf182-c461-487a-ba9c-670a1f720c5d','true','userinfo.token.claim'),('78ccc008-fe7d-4bec-9bda-4c5170746030','true','access.token.claim'),('78ccc008-fe7d-4bec-9bda-4c5170746030','realm_access.roles','claim.name'),('78ccc008-fe7d-4bec-9bda-4c5170746030','true','introspection.token.claim'),('78ccc008-fe7d-4bec-9bda-4c5170746030','String','jsonType.label'),('78ccc008-fe7d-4bec-9bda-4c5170746030','true','multivalued'),('78ccc008-fe7d-4bec-9bda-4c5170746030','foo','user.attribute'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','true','access.token.claim'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','clientId','claim.name'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','true','id.token.claim'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','String','jsonType.label'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','clientId','user.session.note'),('80728892-7cfe-4cb4-a205-4d7dd154fefb','true','userinfo.token.claim'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','true','access.token.claim'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','email_verified','claim.name'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','true','id.token.claim'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','true','introspection.token.claim'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','boolean','jsonType.label'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','emailVerified','user.attribute'),('83a7b07a-10ce-4a6c-9557-e3d3e66c4cd6','true','userinfo.token.claim'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','true','access.token.claim'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','email','claim.name'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','true','id.token.claim'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','true','introspection.token.claim'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','String','jsonType.label'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','email','user.attribute'),('840fef4d-3f41-4f89-9716-5c7c6c6358d9','true','userinfo.token.claim'),('9678c828-4bce-4acb-bd3c-035d000898e4','true','access.token.claim'),('9678c828-4bce-4acb-bd3c-035d000898e4','true','id.token.claim'),('9678c828-4bce-4acb-bd3c-035d000898e4','true','introspection.token.claim'),('9678c828-4bce-4acb-bd3c-035d000898e4','country','user.attribute.country'),('9678c828-4bce-4acb-bd3c-035d000898e4','formatted','user.attribute.formatted'),('9678c828-4bce-4acb-bd3c-035d000898e4','locality','user.attribute.locality'),('9678c828-4bce-4acb-bd3c-035d000898e4','postal_code','user.attribute.postal_code'),('9678c828-4bce-4acb-bd3c-035d000898e4','region','user.attribute.region'),('9678c828-4bce-4acb-bd3c-035d000898e4','street','user.attribute.street'),('9678c828-4bce-4acb-bd3c-035d000898e4','true','userinfo.token.claim'),('98061ca5-ec00-4f04-9ca7-f532e023428e','true','access.token.claim'),('98061ca5-ec00-4f04-9ca7-f532e023428e','phone_number','claim.name'),('98061ca5-ec00-4f04-9ca7-f532e023428e','true','id.token.claim'),('98061ca5-ec00-4f04-9ca7-f532e023428e','true','introspection.token.claim'),('98061ca5-ec00-4f04-9ca7-f532e023428e','String','jsonType.label'),('98061ca5-ec00-4f04-9ca7-f532e023428e','phoneNumber','user.attribute'),('98061ca5-ec00-4f04-9ca7-f532e023428e','true','userinfo.token.claim'),('a2602e30-1585-4b3d-8832-af64ee64d614','true','access.token.claim'),('a2602e30-1585-4b3d-8832-af64ee64d614','locale','claim.name'),('a2602e30-1585-4b3d-8832-af64ee64d614','true','id.token.claim'),('a2602e30-1585-4b3d-8832-af64ee64d614','true','introspection.token.claim'),('a2602e30-1585-4b3d-8832-af64ee64d614','String','jsonType.label'),('a2602e30-1585-4b3d-8832-af64ee64d614','locale','user.attribute'),('a2602e30-1585-4b3d-8832-af64ee64d614','true','userinfo.token.claim'),('abdd8da1-f3b0-458c-b84d-e09fa7343679','true','access.token.claim'),('abdd8da1-f3b0-458c-b84d-e09fa7343679','true','id.token.claim'),('abdd8da1-f3b0-458c-b84d-e09fa7343679','true','introspection.token.claim'),('abdd8da1-f3b0-458c-b84d-e09fa7343679','true','userinfo.token.claim'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','true','access.token.claim'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','phone_number_verified','claim.name'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','true','id.token.claim'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','true','introspection.token.claim'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','boolean','jsonType.label'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','phoneNumberVerified','user.attribute'),('bdb044cb-89b7-4a39-8a49-e27770ab283d','true','userinfo.token.claim'),('c0b15a0a-d109-41c4-884e-13c445b854de','true','access.token.claim'),('c0b15a0a-d109-41c4-884e-13c445b854de','updated_at','claim.name'),('c0b15a0a-d109-41c4-884e-13c445b854de','true','id.token.claim'),('c0b15a0a-d109-41c4-884e-13c445b854de','true','introspection.token.claim'),('c0b15a0a-d109-41c4-884e-13c445b854de','long','jsonType.label'),('c0b15a0a-d109-41c4-884e-13c445b854de','updatedAt','user.attribute'),('c0b15a0a-d109-41c4-884e-13c445b854de','true','userinfo.token.claim'),('c5d48349-2d75-4b8e-8dea-c6829339fce6','true','access.token.claim'),('c5d48349-2d75-4b8e-8dea-c6829339fce6','true','id.token.claim'),('c5d48349-2d75-4b8e-8dea-c6829339fce6','true','introspection.token.claim'),('d4582069-15bd-41b4-846a-743ef3a46776','true','access.token.claim'),('d4582069-15bd-41b4-846a-743ef3a46776','zoneinfo','claim.name'),('d4582069-15bd-41b4-846a-743ef3a46776','true','id.token.claim'),('d4582069-15bd-41b4-846a-743ef3a46776','true','introspection.token.claim'),('d4582069-15bd-41b4-846a-743ef3a46776','String','jsonType.label'),('d4582069-15bd-41b4-846a-743ef3a46776','zoneinfo','user.attribute'),('d4582069-15bd-41b4-846a-743ef3a46776','true','userinfo.token.claim'),('e6e49efc-9c19-4fea-a0f9-815ab11cddfb','true','access.token.claim'),('e6e49efc-9c19-4fea-a0f9-815ab11cddfb','true','introspection.token.claim'),('f562e39e-b0da-4b6d-9153-43a020c2b101','true','access.token.claim'),('f562e39e-b0da-4b6d-9153-43a020c2b101','gender','claim.name'),('f562e39e-b0da-4b6d-9153-43a020c2b101','true','id.token.claim'),('f562e39e-b0da-4b6d-9153-43a020c2b101','true','introspection.token.claim'),('f562e39e-b0da-4b6d-9153-43a020c2b101','String','jsonType.label'),('f562e39e-b0da-4b6d-9153-43a020c2b101','gender','user.attribute'),('f562e39e-b0da-4b6d-9153-43a020c2b101','true','userinfo.token.claim'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','true','access.token.claim'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','profile','claim.name'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','true','id.token.claim'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','true','introspection.token.claim'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','String','jsonType.label'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','profile','user.attribute'),('f766d97c-829d-4ac7-ad59-9eb0240f2ba7','true','userinfo.token.claim'),('f82e186d-5c05-4b6e-95f1-1e338985014d','true','access.token.claim'),('f82e186d-5c05-4b6e-95f1-1e338985014d','locale','claim.name'),('f82e186d-5c05-4b6e-95f1-1e338985014d','true','id.token.claim'),('f82e186d-5c05-4b6e-95f1-1e338985014d','true','introspection.token.claim'),('f82e186d-5c05-4b6e-95f1-1e338985014d','String','jsonType.label'),('f82e186d-5c05-4b6e-95f1-1e338985014d','locale','user.attribute'),('f82e186d-5c05-4b6e-95f1-1e338985014d','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('fa43b5a7-aaed-48a7-bb09-be045f976d24',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'d644e264-ac5c-4735-8bdd-06539e5d6c71',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','d6523352-96d7-4d7d-a840-b5bb003f4a25','7bd8b788-0871-4b7d-bc09-8ae68ad27f0b','906ada08-4df7-4952-80c2-27baf553b03a','53e9bbaf-99fa-4817-b302-891d397e2c7d','37d59464-ff46-46e4-bd24-b21c065d6452',31536000,0,900,1,0,'e70dc007-3f52-4cb4-9183-a4cb68e6d9c3',0,0,0,0,'b43d791c-f933-4c8e-b47c-dffc85d333bc');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','fa43b5a7-aaed-48a7-bb09-be045f976d24','false'),('cibaAuthRequestedUserHint','fa43b5a7-aaed-48a7-bb09-be045f976d24','login_hint'),('cibaBackchannelTokenDeliveryMode','fa43b5a7-aaed-48a7-bb09-be045f976d24','poll'),('cibaExpiresIn','fa43b5a7-aaed-48a7-bb09-be045f976d24','120'),('cibaInterval','fa43b5a7-aaed-48a7-bb09-be045f976d24','5'),('defaultSignatureAlgorithm','fa43b5a7-aaed-48a7-bb09-be045f976d24','RS256'),('displayName','fa43b5a7-aaed-48a7-bb09-be045f976d24','Keycloak'),('displayNameHtml','fa43b5a7-aaed-48a7-bb09-be045f976d24','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','fa43b5a7-aaed-48a7-bb09-be045f976d24','30'),('firstBrokerLoginFlowId','fa43b5a7-aaed-48a7-bb09-be045f976d24','cab39ed0-3fa7-4a76-8e7a-267be67e04f7'),('maxDeltaTimeSeconds','fa43b5a7-aaed-48a7-bb09-be045f976d24','43200'),('maxFailureWaitSeconds','fa43b5a7-aaed-48a7-bb09-be045f976d24','900'),('maxTemporaryLockouts','fa43b5a7-aaed-48a7-bb09-be045f976d24','0'),('minimumQuickLoginWaitSeconds','fa43b5a7-aaed-48a7-bb09-be045f976d24','60'),('oauth2DeviceCodeLifespan','fa43b5a7-aaed-48a7-bb09-be045f976d24','600'),('oauth2DevicePollingInterval','fa43b5a7-aaed-48a7-bb09-be045f976d24','5'),('offlineSessionMaxLifespan','fa43b5a7-aaed-48a7-bb09-be045f976d24','31536000'),('offlineSessionMaxLifespanEnabled','fa43b5a7-aaed-48a7-bb09-be045f976d24','true'),('parRequestUriLifespan','fa43b5a7-aaed-48a7-bb09-be045f976d24','60'),('permanentLockout','fa43b5a7-aaed-48a7-bb09-be045f976d24','false'),('quickLoginCheckMilliSeconds','fa43b5a7-aaed-48a7-bb09-be045f976d24','1000'),('realmReusableOtpCode','fa43b5a7-aaed-48a7-bb09-be045f976d24','false'),('waitIncrementSeconds','fa43b5a7-aaed-48a7-bb09-be045f976d24','60'),('_browser_header.contentSecurityPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','fa43b5a7-aaed-48a7-bb09-be045f976d24',''),('_browser_header.referrerPolicy','fa43b5a7-aaed-48a7-bb09-be045f976d24','no-referrer'),('_browser_header.strictTransportSecurity','fa43b5a7-aaed-48a7-bb09-be045f976d24','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','fa43b5a7-aaed-48a7-bb09-be045f976d24','nosniff'),('_browser_header.xFrameOptions','fa43b5a7-aaed-48a7-bb09-be045f976d24','SAMEORIGIN'),('_browser_header.xRobotsTag','fa43b5a7-aaed-48a7-bb09-be045f976d24','none'),('_browser_header.xXSSProtection','fa43b5a7-aaed-48a7-bb09-be045f976d24','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('fa43b5a7-aaed-48a7-bb09-be045f976d24','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'fa43b5a7-aaed-48a7-bb09-be045f976d24');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('fa43b5a7-aaed-48a7-bb09-be045f976d24','en'),('fa43b5a7-aaed-48a7-bb09-be045f976d24','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('54de7636-e771-49b6-b0b3-f1fc0a26eaba','/realms/master/account/*'),('95fd77ac-bc56-4554-ba2e-297f5f3538e5','/*'),('9c14cff8-3f13-41b6-95a2-fcec46424857','/realms/master/account/*'),('dc0c34e4-ee30-463c-89ff-c9978905cec2','/admin/master/console/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0d1aa8a8-39a4-44b6-9759-1d2fc98f35b7','CONFIGURE_TOTP','Configure OTP','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'CONFIGURE_TOTP',10),('179b01f4-e9fb-47c2-b6f2-643a8d970b7d','delete_account','Delete Account','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,0,'delete_account',60),('18d72d47-1849-4919-8dec-d75c5eb95a3c','TERMS_AND_CONDITIONS','Terms and Conditions','fa43b5a7-aaed-48a7-bb09-be045f976d24',0,0,'TERMS_AND_CONDITIONS',20),('1b88d9c4-80b9-434d-a158-7637574455e1','update_user_locale','Update User Locale','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'update_user_locale',1000),('36d533e2-d270-4395-8d34-fff18be4235d','VERIFY_PROFILE','Verify Profile','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'VERIFY_PROFILE',90),('3fe4b73b-0870-4709-81e0-8e76d57cc0f7','webauthn-register','Webauthn Register','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'webauthn-register',70),('56074a20-7641-4bb0-8702-00e7d0b704c5','UPDATE_PROFILE','Update Profile','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'UPDATE_PROFILE',40),('59078c6d-7d61-466b-bfdb-89cda4838cbc','VERIFY_EMAIL','Verify Email','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'VERIFY_EMAIL',50),('7436e8bf-ba74-4d42-91f8-4fab7dc2ab91','webauthn-register-passwordless','Webauthn Register Passwordless','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'webauthn-register-passwordless',80),('8d2858d4-d17e-4b37-999a-b2b3dc2caf5c','delete_credential','Delete Credential','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'delete_credential',100),('c7bda66e-7e90-4735-bb20-c30d594363d3','UPDATE_PASSWORD','Update Password','fa43b5a7-aaed-48a7-bb09-be045f976d24',1,0,'UPDATE_PASSWORD',30);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('54de7636-e771-49b6-b0b3-f1fc0a26eaba','6d2a337a-d861-46dd-aecf-38a04df942e8'),('54de7636-e771-49b6-b0b3-f1fc0a26eaba','785dda70-f77c-4841-b28b-a6e3cd83463d');
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
INSERT INTO `USER_ENTITY` VALUES ('028c254c-160d-42c6-8b4f-c1f8c45851a0',NULL,'1bd51c37-42de-40a8-a693-83bcc6a48fe7',0,1,NULL,NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','admin',1719474389152,NULL,0),('3e27e2db-1b41-41c2-b1e4-6e77a9988db8',NULL,'0cdb34b3-be87-4642-8ec8-681a78c6d707',0,1,NULL,NULL,NULL,'fa43b5a7-aaed-48a7-bb09-be045f976d24','service-account-_platform',1719474398375,'43589cf4-94e2-42f3-9286-6c6ab156905b',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','028c254c-160d-42c6-8b4f-c1f8c45851a0'),('7dc4ff5c-fc53-4f01-a6a6-9e815d3837be','3e27e2db-1b41-41c2-b1e4-6e77a9988db8'),('b43d791c-f933-4c8e-b47c-dffc85d333bc','028c254c-160d-42c6-8b4f-c1f8c45851a0'),('b43d791c-f933-4c8e-b47c-dffc85d333bc','3e27e2db-1b41-41c2-b1e4-6e77a9988db8');
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
INSERT INTO `WEB_ORIGINS` VALUES ('dc0c34e4-ee30-463c-89ff-c9978905cec2','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-06-27 16:46:41','dummy','2024-06-27 16:46:41','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-06-27 16:46:41','dummy','2024-06-27 16:46:41','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-06-27 16:46:41','dummy','2024-06-27 16:46:41','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-06-27 16:46:41','dummy','2024-06-27 16:46:41','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-06-27 16:46:41','dummy','2024-06-27 16:46:41','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-06-27 16:46:39.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-06-27 16:46:39.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-06-27 16:46:37','system','2024-06-27 16:46:37','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-06-27 16:46:37','system','2024-06-27 16:46:40','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-06-27 16:46:37','system','2024-06-27 16:46:40','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-06-27 16:46:37','system','2024-06-27 16:46:40','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','platform.roles',1000,'2024-06-27 16:46:37','system','2024-06-27 16:46:37','system'),('_default','platform.users',10000,'2024-06-27 16:46:37','system','2024-06-27 16:46:37','system'),('_default','platform.workspaces',100,'2024-06-27 16:46:37','system','2024-06-27 16:46:37','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-06-27 16:46:36','1.9.0','2024-06-27 16:46:36','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-06-27 16:46:38','1.9.0','2024-06-27 16:46:38','1.9.0'),(3,'1.5.0','START',NULL,'2024-06-27 16:46:38','1.9.0','2024-06-27 16:46:38','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-06-27 16:46:39','1.9.0','2024-06-27 16:46:39','1.9.0'),(5,'1.5.2','START',NULL,'2024-06-27 16:46:39','1.9.0','2024-06-27 16:46:39','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-06-27 16:46:39','1.9.0','2024-06-27 16:46:39','1.9.0'),(7,'1.6.0','START',NULL,'2024-06-27 16:46:39','1.9.0','2024-06-27 16:46:39','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-06-27 16:46:40','1.9.0','2024-06-27 16:46:40','1.9.0'),(9,'1.7.0','START',NULL,'2024-06-27 16:46:40','1.9.0','2024-06-27 16:46:40','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-06-27 16:46:40','1.9.0','2024-06-27 16:46:40','1.9.0'),(11,'1.8.0','START',NULL,'2024-06-27 16:46:40','1.9.0','2024-06-27 16:46:40','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-06-27 16:46:40','1.9.0','2024-06-27 16:46:40','1.9.0'),(13,'1.8.1','START',NULL,'2024-06-27 16:46:40','1.9.0','2024-06-27 16:46:40','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-06-27 16:46:41','1.9.0','2024-06-27 16:46:41','1.9.0'),(15,'1.8.2','START',NULL,'2024-06-27 16:46:41','1.9.0','2024-06-27 16:46:41','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-06-27 16:46:41','1.9.0','2024-06-27 16:46:41','1.9.0'),(17,'1.9.0','START',NULL,'2024-06-27 16:46:41','1.9.0','2024-06-27 16:46:41','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-06-27 16:46:41','1.9.0','2024-06-27 16:46:41','1.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"43589cf4-94e2-42f3-9286-6c6ab156905b\", \"TOKEN_CHECK_CLIENT_SECRET\": \"dDUUPe3ELqNQ1GfLvxjaCCrRGksgq5qs\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"2df5edf8-7628-447b-ae56-9655aed1d9bf\"}','2024-06-27 16:46:38','system','2024-06-27 16:46:38','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-06-27 16:45:32','system','2024-06-27 16:46:41','1.9.0');
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 16:46:43
SET foreign_key_checks = 1;
