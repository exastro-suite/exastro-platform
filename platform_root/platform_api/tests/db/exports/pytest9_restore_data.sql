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
DELETE FROM keycloak.RESOURCE_SERVER_POLICY;
DELETE FROM keycloak.CLIENT_SCOPE;
DELETE FROM keycloak.CLIENT_SCOPE_ROLE_MAPPING;
DELETE FROM keycloak.RESOURCE_ATTRIBUTE;
DELETE FROM keycloak.FED_USER_GROUP_MEMBERSHIP;
DELETE FROM keycloak.FED_USER_ROLE_MAPPING;
DELETE FROM keycloak.COMPONENT_CONFIG;
DELETE FROM keycloak.RESOURCE_SERVER;
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
DELETE FROM keycloak.ASSOCIATED_POLICY;
DELETE FROM keycloak.FED_USER_CREDENTIAL;
DELETE FROM keycloak.FED_USER_REQUIRED_ACTION;
DELETE FROM keycloak.RESOURCE_SERVER_PERM_TICKET;
DELETE FROM keycloak.REALM_LOCALIZATIONS;
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
-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: keycloak
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
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('08a2e736-5123-4925-b81b-766231f831b3',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','fcf7fa94-7b0e-4492-98b0-a97dd897898a',1,20,'','ecd18abb-8373-4be8-8aad-44dafefa0cd9',NULL),('0b16aaf0-ee68-49ca-a774-168934d4476b',NULL,'direct-grant-validate-otp','29efd369-6ea8-4f51-b244-80384278b15b','6c4d965f-1f16-4f7d-9414-2d0ab270e568',0,20,'\0',NULL,NULL),('134c59ec-ec5b-4610-9295-9067e716dea5',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','7da16cbd-504d-4bc2-a183-17a7c4c061be',1,40,'','14adac4a-9d26-4f09-8174-da1bbc501562',NULL),('14849f63-b4b7-43f2-ad94-f473fd8a6478',NULL,'reset-credential-email','29efd369-6ea8-4f51-b244-80384278b15b','7da16cbd-504d-4bc2-a183-17a7c4c061be',0,20,'\0',NULL,NULL),('19363ae3-58bb-410a-8125-7abed00bfe49',NULL,'registration-user-creation','29efd369-6ea8-4f51-b244-80384278b15b','31576237-9bfd-447c-b121-dd73b6614eba',0,20,'\0',NULL,NULL),('1ab0d313-2dd0-43f5-9000-2de86cdab6f9',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','3111d6dd-9d51-415b-ba00-d76ba2a7bfe8',2,30,'','fcf7fa94-7b0e-4492-98b0-a97dd897898a',NULL),('1f5962bb-05fc-4ded-8630-a89bfc3b4745',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','95479e1d-5e4a-418c-b1a5-10f19dcef28d',0,20,'','6066eff3-a102-4c21-87ab-dde357e837a1',NULL),('29543beb-348b-425f-9228-4e29b236cc9c',NULL,'identity-provider-redirector','29efd369-6ea8-4f51-b244-80384278b15b','3111d6dd-9d51-415b-ba00-d76ba2a7bfe8',2,25,'\0',NULL,NULL),('2a79c318-9a57-454d-a7ba-0133989783c0',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','ceb8cf8e-cdf8-4563-9ed9-c1e3d8cc0633',2,20,'','95479e1d-5e4a-418c-b1a5-10f19dcef28d',NULL),('313a1ad5-5662-43e6-9eb0-b4550af31c33',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','1bc3cc57-66e3-48bf-a5b8-c9717ac6c73c',1,20,'','8ab90d3a-64e6-4c57-8185-f5a8c9c62242',NULL),('3704a222-d85c-41e1-a0e8-5f3308ade89c',NULL,'idp-confirm-link','29efd369-6ea8-4f51-b244-80384278b15b','95479e1d-5e4a-418c-b1a5-10f19dcef28d',0,10,'\0',NULL,NULL),('37fc5f14-44c4-4818-ad0e-2f8ee50ec464',NULL,'auth-spnego','29efd369-6ea8-4f51-b244-80384278b15b','3111d6dd-9d51-415b-ba00-d76ba2a7bfe8',3,20,'\0',NULL,NULL),('43eccaa6-633b-4e0e-8902-5c9e2dc12674',NULL,'conditional-user-configured','29efd369-6ea8-4f51-b244-80384278b15b','8ab90d3a-64e6-4c57-8185-f5a8c9c62242',0,10,'\0',NULL,NULL),('498c73e0-e3d5-486d-b439-fbb008fd67ff',NULL,'reset-credentials-choose-user','29efd369-6ea8-4f51-b244-80384278b15b','7da16cbd-504d-4bc2-a183-17a7c4c061be',0,10,'\0',NULL,NULL),('4ab28183-ce4c-4e97-9aec-d40e114d972b',NULL,'idp-email-verification','29efd369-6ea8-4f51-b244-80384278b15b','6066eff3-a102-4c21-87ab-dde357e837a1',2,10,'\0',NULL,NULL),('4ff5d067-efb1-4535-a90b-d13995da3e2e',NULL,'basic-auth-otp','29efd369-6ea8-4f51-b244-80384278b15b','8ceaa8e6-500f-48d0-9f1c-e7e97bcc926e',3,20,'\0',NULL,NULL),('50531f94-5cdd-4f26-95b0-a0ba8157970b',NULL,'client-jwt','29efd369-6ea8-4f51-b244-80384278b15b','4954dc17-3c39-4a99-a4a3-16584a14eb27',2,20,'\0',NULL,NULL),('58aa255b-4ae5-4465-b540-e3302bb31c6e',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','138f41aa-3b0e-455c-b6c9-186ea2d720df',0,20,'','ceb8cf8e-cdf8-4563-9ed9-c1e3d8cc0633',NULL),('59775bed-747f-460b-8dd3-2a40715c9a92',NULL,'idp-create-user-if-unique','29efd369-6ea8-4f51-b244-80384278b15b','ceb8cf8e-cdf8-4563-9ed9-c1e3d8cc0633',2,10,'\0',NULL,'54f78f75-0929-4eef-9ea6-1c7ad96e5ab1'),('5cee4442-67a5-46ec-a29b-a39fd77febba',NULL,'registration-page-form','29efd369-6ea8-4f51-b244-80384278b15b','7338e156-3fd9-4abc-94f3-4ed9144a4e03',0,10,'','31576237-9bfd-447c-b121-dd73b6614eba',NULL),('635e100f-e593-4a9e-93a7-b3cc7ccf7e4e',NULL,'idp-review-profile','29efd369-6ea8-4f51-b244-80384278b15b','138f41aa-3b0e-455c-b6c9-186ea2d720df',0,10,'\0',NULL,'8875c78a-7e41-4990-b22f-9cbac37eb896'),('63eb886e-bed3-4e17-bead-925a86a1c1a3',NULL,'registration-profile-action','29efd369-6ea8-4f51-b244-80384278b15b','31576237-9bfd-447c-b121-dd73b6614eba',0,40,'\0',NULL,NULL),('71599ea2-4ebd-472b-80d4-7c67c1579101',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','9e866d36-6f39-4930-a0ee-09fa52a81198',0,20,'','8ceaa8e6-500f-48d0-9f1c-e7e97bcc926e',NULL),('77698059-17c5-45b3-9703-4d0742e6bc27',NULL,'auth-otp-form','29efd369-6ea8-4f51-b244-80384278b15b','ecd18abb-8373-4be8-8aad-44dafefa0cd9',0,20,'\0',NULL,NULL),('79a3eb72-00b0-4d85-a2ac-3362b6584be8',NULL,'auth-otp-form','29efd369-6ea8-4f51-b244-80384278b15b','8ab90d3a-64e6-4c57-8185-f5a8c9c62242',0,20,'\0',NULL,NULL),('81126f74-c771-4a7f-82ac-34720dd0c521',NULL,'conditional-user-configured','29efd369-6ea8-4f51-b244-80384278b15b','14adac4a-9d26-4f09-8174-da1bbc501562',0,10,'\0',NULL,NULL),('833ad02d-d7bf-49ce-8e44-22850c4b7f59',NULL,'http-basic-authenticator','29efd369-6ea8-4f51-b244-80384278b15b','d322b6ac-0f17-4e21-a848-f1bfdf547f62',0,10,'\0',NULL,NULL),('8dd01eb2-9532-48b8-8397-17647a7eaed2',NULL,'client-secret-jwt','29efd369-6ea8-4f51-b244-80384278b15b','4954dc17-3c39-4a99-a4a3-16584a14eb27',2,30,'\0',NULL,NULL),('909b3750-ce49-4714-834e-45f5456faf44',NULL,'auth-spnego','29efd369-6ea8-4f51-b244-80384278b15b','8ceaa8e6-500f-48d0-9f1c-e7e97bcc926e',3,30,'\0',NULL,NULL),('9241ddd1-6fd1-464b-8922-b12ed7d557fe',NULL,'client-secret','29efd369-6ea8-4f51-b244-80384278b15b','4954dc17-3c39-4a99-a4a3-16584a14eb27',2,10,'\0',NULL,NULL),('9bbdc3af-68b4-4891-a028-42201cb627ac',NULL,'auth-username-password-form','29efd369-6ea8-4f51-b244-80384278b15b','fcf7fa94-7b0e-4492-98b0-a97dd897898a',0,10,'\0',NULL,NULL),('a263322f-4d4b-46d7-a8b3-050d551e6730',NULL,'reset-otp','29efd369-6ea8-4f51-b244-80384278b15b','14adac4a-9d26-4f09-8174-da1bbc501562',0,20,'\0',NULL,NULL),('a551d508-3352-4423-be88-faa3501af6dd',NULL,'direct-grant-validate-password','29efd369-6ea8-4f51-b244-80384278b15b','7dd3f8b9-44fe-4996-ad8b-e22942919a33',0,20,'\0',NULL,NULL),('bb40356f-c9cc-45d1-a3fc-d5696caa99e0',NULL,'no-cookie-redirect','29efd369-6ea8-4f51-b244-80384278b15b','9e866d36-6f39-4930-a0ee-09fa52a81198',0,10,'\0',NULL,NULL),('c3b91a32-78ca-4209-b149-3e76fe58a6e2',NULL,'registration-recaptcha-action','29efd369-6ea8-4f51-b244-80384278b15b','31576237-9bfd-447c-b121-dd73b6614eba',3,60,'\0',NULL,NULL),('c40d6e5c-c78c-4e2d-8ba6-431511ea2dc2',NULL,'docker-http-basic-authenticator','29efd369-6ea8-4f51-b244-80384278b15b','b45fb312-58b5-4b5b-a975-342e513ae1c3',0,10,'\0',NULL,NULL),('c6abbec6-b97a-4e03-9087-703c71fe9483',NULL,'auth-cookie','29efd369-6ea8-4f51-b244-80384278b15b','3111d6dd-9d51-415b-ba00-d76ba2a7bfe8',2,10,'\0',NULL,NULL),('ca3f38db-4201-4bf2-8831-9d62f863dab1',NULL,'idp-username-password-form','29efd369-6ea8-4f51-b244-80384278b15b','1bc3cc57-66e3-48bf-a5b8-c9717ac6c73c',0,10,'\0',NULL,NULL),('cdbb1d19-dee3-4a03-8967-8d29e6c0a646',NULL,'registration-password-action','29efd369-6ea8-4f51-b244-80384278b15b','31576237-9bfd-447c-b121-dd73b6614eba',0,50,'\0',NULL,NULL),('d11de829-cdde-400a-8ddb-9fd2bd3830bd',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','6066eff3-a102-4c21-87ab-dde357e837a1',2,20,'','1bc3cc57-66e3-48bf-a5b8-c9717ac6c73c',NULL),('d1d6589e-c49f-43de-913e-3b854484db9a',NULL,'direct-grant-validate-username','29efd369-6ea8-4f51-b244-80384278b15b','7dd3f8b9-44fe-4996-ad8b-e22942919a33',0,10,'\0',NULL,NULL),('d3b597e2-3f6a-4f28-88be-10b3245794b4',NULL,'conditional-user-configured','29efd369-6ea8-4f51-b244-80384278b15b','ecd18abb-8373-4be8-8aad-44dafefa0cd9',0,10,'\0',NULL,NULL),('d5bd0a8f-3362-465f-899b-4571957a526a',NULL,'conditional-user-configured','29efd369-6ea8-4f51-b244-80384278b15b','6c4d965f-1f16-4f7d-9414-2d0ab270e568',0,10,'\0',NULL,NULL),('d677b4b9-8164-4278-b5e7-9a17e2252c3e',NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','7dd3f8b9-44fe-4996-ad8b-e22942919a33',1,30,'','6c4d965f-1f16-4f7d-9414-2d0ab270e568',NULL),('e5fb90c4-a01b-487e-a8e8-9289bd95db4a',NULL,'reset-password','29efd369-6ea8-4f51-b244-80384278b15b','7da16cbd-504d-4bc2-a183-17a7c4c061be',0,30,'\0',NULL,NULL),('f4011692-e78a-4649-bee9-ca91d4b94d43',NULL,'client-x509','29efd369-6ea8-4f51-b244-80384278b15b','4954dc17-3c39-4a99-a4a3-16584a14eb27',2,40,'\0',NULL,NULL),('fab44d25-6d38-4680-91c1-8651834f6a14',NULL,'basic-auth','29efd369-6ea8-4f51-b244-80384278b15b','8ceaa8e6-500f-48d0-9f1c-e7e97bcc926e',0,10,'\0',NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('138f41aa-3b0e-455c-b6c9-186ea2d720df','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('14adac4a-9d26-4f09-8174-da1bbc501562','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('1bc3cc57-66e3-48bf-a5b8-c9717ac6c73c','Verify Existing Account by Re-authentication','Reauthentication of existing account','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('3111d6dd-9d51-415b-ba00-d76ba2a7bfe8','browser','browser based authentication','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('31576237-9bfd-447c-b121-dd73b6614eba','registration form','registration form','29efd369-6ea8-4f51-b244-80384278b15b','form-flow','\0',''),('4954dc17-3c39-4a99-a4a3-16584a14eb27','clients','Base authentication for clients','29efd369-6ea8-4f51-b244-80384278b15b','client-flow','',''),('6066eff3-a102-4c21-87ab-dde357e837a1','Account verification options','Method with which to verity the existing account','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('6c4d965f-1f16-4f7d-9414-2d0ab270e568','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('7338e156-3fd9-4abc-94f3-4ed9144a4e03','registration','registration flow','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('7da16cbd-504d-4bc2-a183-17a7c4c061be','reset credentials','Reset credentials for a user if they forgot their password or something','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('7dd3f8b9-44fe-4996-ad8b-e22942919a33','direct grant','OpenID Connect Resource Owner Grant','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('8ab90d3a-64e6-4c57-8185-f5a8c9c62242','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('8ceaa8e6-500f-48d0-9f1c-e7e97bcc926e','Authentication Options','Authentication options.','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('95479e1d-5e4a-418c-b1a5-10f19dcef28d','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('9e866d36-6f39-4930-a0ee-09fa52a81198','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('b45fb312-58b5-4b5b-a975-342e513ae1c3','docker auth','Used by Docker clients to authenticate against the IDP','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('ceb8cf8e-cdf8-4563-9ed9-c1e3d8cc0633','User creation or linking','Flow for the existing/non-existing user alternatives','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('d322b6ac-0f17-4e21-a848-f1bfdf547f62','saml ecp','SAML ECP Profile Authentication Flow','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','',''),('ecd18abb-8373-4be8-8aad-44dafefa0cd9','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0',''),('fcf7fa94-7b0e-4492-98b0-a97dd897898a','forms','Username, password, otp and other auth forms.','29efd369-6ea8-4f51-b244-80384278b15b','basic-flow','\0','');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('54f78f75-0929-4eef-9ea6-1c7ad96e5ab1','create unique user config','29efd369-6ea8-4f51-b244-80384278b15b'),('8875c78a-7e41-4990-b22f-9cbac37eb896','review profile config','29efd369-6ea8-4f51-b244-80384278b15b');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('54f78f75-0929-4eef-9ea6-1c7ad96e5ab1','false','require.password.update.after.registration'),('8875c78a-7e41-4990-b22f-9cbac37eb896','missing','update.profile.on.first.login');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('180027f4-ec6e-4489-879b-20758d1cb95f','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('31a07a84-4084-49f5-b399-755fde8adc88','','\0','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('39d2cedb-45b3-468e-8adb-07db234b51f0','','\0','security-admin-console',0,'',NULL,'/admin/master/console/','\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','','','_platform',0,'\0','dummy',NULL,'\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('527ffa5c-e8d7-49c0-9702-affa116dccac','','','_platform-api',0,'',NULL,NULL,'\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','','\0','_platform-console',0,'','dummy',NULL,'\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','','\0'),('a2a0427c-454c-487a-9f1a-40100ada14a8','','\0','master-realm',0,'\0',NULL,NULL,'',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','','\0','account',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','','\0','account-console',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','29efd369-6ea8-4f51-b244-80384278b15b','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('39d2cedb-45b3-468e-8adb-07db234b51f0','pkce.code.challenge.method','S256'),('39d2cedb-45b3-468e-8adb-07db234b51f0','post.logout.redirect.uris','+'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','backchannel.logout.revoke.offline.tokens','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','backchannel.logout.session.required','true'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','client.secret.creation.time','1698213822'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','client_credentials.use_refresh_token','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','display.on.consent.screen','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','exclude.session.state.from.auth.response','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','id.token.as.detached.signature','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','oauth2.device.authorization.grant.enabled','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','oidc.ciba.grant.enabled','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','require.pushed.authorization.requests','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.artifact.binding','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.assertion.signature','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.authnstatement','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.client.signature','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.encrypt','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.force.post.binding','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.multivalued.roles','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.onetimeuse.condition','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.server.signature','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml.server.signature.keyinfo.ext','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','saml_force_name_id_format','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','tls.client.certificate.bound.access.tokens','false'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','use.refresh.tokens','true'),('527ffa5c-e8d7-49c0-9702-affa116dccac','access.token.lifespan','86400'),('527ffa5c-e8d7-49c0-9702-affa116dccac','acr.loa.map','{}'),('527ffa5c-e8d7-49c0-9702-affa116dccac','backchannel.logout.revoke.offline.tokens','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','backchannel.logout.session.required','true'),('527ffa5c-e8d7-49c0-9702-affa116dccac','client.session.idle.timeout','86400'),('527ffa5c-e8d7-49c0-9702-affa116dccac','client.session.max.lifespan','86400'),('527ffa5c-e8d7-49c0-9702-affa116dccac','client_credentials.use_refresh_token','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','display.on.consent.screen','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','exclude.session.state.from.auth.response','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','frontchannel.logout.session.required','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','id.token.as.detached.signature','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','oauth2.device.authorization.grant.enabled','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','oidc.ciba.grant.enabled','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','require.pushed.authorization.requests','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.allow.ecp.flow','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.artifact.binding','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.assertion.signature','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.authnstatement','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.client.signature','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.encrypt','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.force.post.binding','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.multivalued.roles','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.onetimeuse.condition','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.server.signature','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml.server.signature.keyinfo.ext','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','saml_force_name_id_format','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','tls.client.certificate.bound.access.tokens','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','token.response.type.bearer.lower-case','false'),('527ffa5c-e8d7-49c0-9702-affa116dccac','use.refresh.tokens','true'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','backchannel.logout.revoke.offline.tokens','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','backchannel.logout.session.required','true'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','client.secret.creation.time','1698213823'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','client_credentials.use_refresh_token','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','display.on.consent.screen','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','exclude.session.state.from.auth.response','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','id.token.as.detached.signature','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','oauth2.device.authorization.grant.enabled','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','oidc.ciba.grant.enabled','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','post.logout.redirect.uris','/*'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','require.pushed.authorization.requests','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.artifact.binding','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.assertion.signature','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.authnstatement','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.client.signature','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.encrypt','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.force.post.binding','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.multivalued.roles','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.onetimeuse.condition','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.server.signature','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml.server.signature.keyinfo.ext','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','saml_force_name_id_format','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','tls.client.certificate.bound.access.tokens','false'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','use.refresh.tokens','true'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','post.logout.redirect.uris','+'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','pkce.code.challenge.method','S256'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','post.logout.redirect.uris','+');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('276bc628-688b-40bf-97f1-f78ea287f145','acr','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('475bf907-b45d-44f1-b641-95b010f2f30a','web-origins','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('69024e7a-d261-4993-8518-cdfe0b144ed2','email','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect built-in scope: email','openid-connect'),('811f08dc-9d93-452b-8397-7ebeac030a21','profile','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect built-in scope: profile','openid-connect'),('8b85228d-6c76-488b-99c6-a5a2fdd8c058','offline_access','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect built-in scope: offline_access','openid-connect'),('8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','address','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect built-in scope: address','openid-connect'),('a2dd472c-7e0c-474c-8ce5-e7b96d917f35','roles','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect scope for add user roles to the access token','openid-connect'),('bc7cff7b-7b16-4801-91a6-4e6ffad1371d','role_list','29efd369-6ea8-4f51-b244-80384278b15b','SAML role list','saml'),('f034c84d-f9d2-460e-a600-2355bcaf2185','microprofile-jwt','29efd369-6ea8-4f51-b244-80384278b15b','Microprofile - JWT built-in scope','openid-connect'),('f04ded8a-42d9-4562-ae60-5be33646f67c','phone','29efd369-6ea8-4f51-b244-80384278b15b','OpenID Connect built-in scope: phone','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('276bc628-688b-40bf-97f1-f78ea287f145','false','display.on.consent.screen'),('276bc628-688b-40bf-97f1-f78ea287f145','false','include.in.token.scope'),('475bf907-b45d-44f1-b641-95b010f2f30a','','consent.screen.text'),('475bf907-b45d-44f1-b641-95b010f2f30a','false','display.on.consent.screen'),('475bf907-b45d-44f1-b641-95b010f2f30a','false','include.in.token.scope'),('69024e7a-d261-4993-8518-cdfe0b144ed2','${emailScopeConsentText}','consent.screen.text'),('69024e7a-d261-4993-8518-cdfe0b144ed2','true','display.on.consent.screen'),('69024e7a-d261-4993-8518-cdfe0b144ed2','true','include.in.token.scope'),('811f08dc-9d93-452b-8397-7ebeac030a21','${profileScopeConsentText}','consent.screen.text'),('811f08dc-9d93-452b-8397-7ebeac030a21','true','display.on.consent.screen'),('811f08dc-9d93-452b-8397-7ebeac030a21','true','include.in.token.scope'),('8b85228d-6c76-488b-99c6-a5a2fdd8c058','${offlineAccessScopeConsentText}','consent.screen.text'),('8b85228d-6c76-488b-99c6-a5a2fdd8c058','true','display.on.consent.screen'),('8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','${addressScopeConsentText}','consent.screen.text'),('8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','true','display.on.consent.screen'),('8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','true','include.in.token.scope'),('a2dd472c-7e0c-474c-8ce5-e7b96d917f35','${rolesScopeConsentText}','consent.screen.text'),('a2dd472c-7e0c-474c-8ce5-e7b96d917f35','true','display.on.consent.screen'),('a2dd472c-7e0c-474c-8ce5-e7b96d917f35','false','include.in.token.scope'),('bc7cff7b-7b16-4801-91a6-4e6ffad1371d','${samlRoleListScopeConsentText}','consent.screen.text'),('bc7cff7b-7b16-4801-91a6-4e6ffad1371d','true','display.on.consent.screen'),('f034c84d-f9d2-460e-a600-2355bcaf2185','false','display.on.consent.screen'),('f034c84d-f9d2-460e-a600-2355bcaf2185','true','include.in.token.scope'),('f04ded8a-42d9-4562-ae60-5be33646f67c','${phoneScopeConsentText}','consent.screen.text'),('f04ded8a-42d9-4562-ae60-5be33646f67c','true','display.on.consent.screen'),('f04ded8a-42d9-4562-ae60-5be33646f67c','true','include.in.token.scope');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('180027f4-ec6e-4489-879b-20758d1cb95f','276bc628-688b-40bf-97f1-f78ea287f145',''),('180027f4-ec6e-4489-879b-20758d1cb95f','475bf907-b45d-44f1-b641-95b010f2f30a',''),('180027f4-ec6e-4489-879b-20758d1cb95f','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('180027f4-ec6e-4489-879b-20758d1cb95f','811f08dc-9d93-452b-8397-7ebeac030a21',''),('180027f4-ec6e-4489-879b-20758d1cb95f','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('180027f4-ec6e-4489-879b-20758d1cb95f','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('180027f4-ec6e-4489-879b-20758d1cb95f','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('180027f4-ec6e-4489-879b-20758d1cb95f','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('180027f4-ec6e-4489-879b-20758d1cb95f','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('31a07a84-4084-49f5-b399-755fde8adc88','276bc628-688b-40bf-97f1-f78ea287f145',''),('31a07a84-4084-49f5-b399-755fde8adc88','475bf907-b45d-44f1-b641-95b010f2f30a',''),('31a07a84-4084-49f5-b399-755fde8adc88','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('31a07a84-4084-49f5-b399-755fde8adc88','811f08dc-9d93-452b-8397-7ebeac030a21',''),('31a07a84-4084-49f5-b399-755fde8adc88','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('31a07a84-4084-49f5-b399-755fde8adc88','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('31a07a84-4084-49f5-b399-755fde8adc88','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('31a07a84-4084-49f5-b399-755fde8adc88','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('31a07a84-4084-49f5-b399-755fde8adc88','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('39d2cedb-45b3-468e-8adb-07db234b51f0','276bc628-688b-40bf-97f1-f78ea287f145',''),('39d2cedb-45b3-468e-8adb-07db234b51f0','475bf907-b45d-44f1-b641-95b010f2f30a',''),('39d2cedb-45b3-468e-8adb-07db234b51f0','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('39d2cedb-45b3-468e-8adb-07db234b51f0','811f08dc-9d93-452b-8397-7ebeac030a21',''),('39d2cedb-45b3-468e-8adb-07db234b51f0','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('39d2cedb-45b3-468e-8adb-07db234b51f0','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('39d2cedb-45b3-468e-8adb-07db234b51f0','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('39d2cedb-45b3-468e-8adb-07db234b51f0','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('39d2cedb-45b3-468e-8adb-07db234b51f0','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','475bf907-b45d-44f1-b641-95b010f2f30a',''),('51c8a37b-cde3-496e-ba78-2e50988ceab5','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('51c8a37b-cde3-496e-ba78-2e50988ceab5','811f08dc-9d93-452b-8397-7ebeac030a21',''),('51c8a37b-cde3-496e-ba78-2e50988ceab5','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('51c8a37b-cde3-496e-ba78-2e50988ceab5','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('51c8a37b-cde3-496e-ba78-2e50988ceab5','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('527ffa5c-e8d7-49c0-9702-affa116dccac','276bc628-688b-40bf-97f1-f78ea287f145',''),('527ffa5c-e8d7-49c0-9702-affa116dccac','475bf907-b45d-44f1-b641-95b010f2f30a',''),('527ffa5c-e8d7-49c0-9702-affa116dccac','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('527ffa5c-e8d7-49c0-9702-affa116dccac','811f08dc-9d93-452b-8397-7ebeac030a21',''),('527ffa5c-e8d7-49c0-9702-affa116dccac','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('527ffa5c-e8d7-49c0-9702-affa116dccac','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('527ffa5c-e8d7-49c0-9702-affa116dccac','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('527ffa5c-e8d7-49c0-9702-affa116dccac','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('527ffa5c-e8d7-49c0-9702-affa116dccac','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','475bf907-b45d-44f1-b641-95b010f2f30a',''),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','811f08dc-9d93-452b-8397-7ebeac030a21',''),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('a2a0427c-454c-487a-9f1a-40100ada14a8','276bc628-688b-40bf-97f1-f78ea287f145',''),('a2a0427c-454c-487a-9f1a-40100ada14a8','475bf907-b45d-44f1-b641-95b010f2f30a',''),('a2a0427c-454c-487a-9f1a-40100ada14a8','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('a2a0427c-454c-487a-9f1a-40100ada14a8','811f08dc-9d93-452b-8397-7ebeac030a21',''),('a2a0427c-454c-487a-9f1a-40100ada14a8','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('a2a0427c-454c-487a-9f1a-40100ada14a8','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('a2a0427c-454c-487a-9f1a-40100ada14a8','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('a2a0427c-454c-487a-9f1a-40100ada14a8','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('a2a0427c-454c-487a-9f1a-40100ada14a8','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','276bc628-688b-40bf-97f1-f78ea287f145',''),('a585e00d-64e2-4289-95e5-f4d0830de5c2','475bf907-b45d-44f1-b641-95b010f2f30a',''),('a585e00d-64e2-4289-95e5-f4d0830de5c2','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('a585e00d-64e2-4289-95e5-f4d0830de5c2','811f08dc-9d93-452b-8397-7ebeac030a21',''),('a585e00d-64e2-4289-95e5-f4d0830de5c2','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('a585e00d-64e2-4289-95e5-f4d0830de5c2','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','f04ded8a-42d9-4562-ae60-5be33646f67c','\0'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','276bc628-688b-40bf-97f1-f78ea287f145',''),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','475bf907-b45d-44f1-b641-95b010f2f30a',''),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','811f08dc-9d93-452b-8397-7ebeac030a21',''),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','f04ded8a-42d9-4562-ae60-5be33646f67c','\0');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('8b85228d-6c76-488b-99c6-a5a2fdd8c058','d431ae22-8be2-4ec1-96bb-0d31279d5a5d');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('0c14f95a-3c26-4b32-b46e-48005b43e5d3','Allowed Client Scopes','29efd369-6ea8-4f51-b244-80384278b15b','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','authenticated'),('0ee5f165-1e28-49d1-9b00-13c89c5ec82a','rsa-generated','29efd369-6ea8-4f51-b244-80384278b15b','rsa-generated','org.keycloak.keys.KeyProvider','29efd369-6ea8-4f51-b244-80384278b15b',NULL),('3512afc1-3e30-44b6-bcff-183cbada1e9b','Full Scope Disabled','29efd369-6ea8-4f51-b244-80384278b15b','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','anonymous'),('3b3253c5-9671-4ec6-880f-83741daeb21c','Trusted Hosts','29efd369-6ea8-4f51-b244-80384278b15b','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','anonymous'),('3c5392c4-71f8-41d9-b504-02574cb5a257','hmac-generated','29efd369-6ea8-4f51-b244-80384278b15b','hmac-generated','org.keycloak.keys.KeyProvider','29efd369-6ea8-4f51-b244-80384278b15b',NULL),('6bbae057-3ca1-4968-81a8-55555872cd9e','Max Clients Limit','29efd369-6ea8-4f51-b244-80384278b15b','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','anonymous'),('7bb1d4b1-ac4f-4610-ae6d-55c6f82a32f5','rsa-enc-generated','29efd369-6ea8-4f51-b244-80384278b15b','rsa-enc-generated','org.keycloak.keys.KeyProvider','29efd369-6ea8-4f51-b244-80384278b15b',NULL),('8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','Allowed Protocol Mapper Types','29efd369-6ea8-4f51-b244-80384278b15b','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','anonymous'),('ac751fe4-0c9b-4f32-a2ee-291c397474e8','Allowed Protocol Mapper Types','29efd369-6ea8-4f51-b244-80384278b15b','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','authenticated'),('b568dd95-4349-496b-b3b3-6c4808963b28','aes-generated','29efd369-6ea8-4f51-b244-80384278b15b','aes-generated','org.keycloak.keys.KeyProvider','29efd369-6ea8-4f51-b244-80384278b15b',NULL),('e7d89794-f4d6-4b22-9e4f-2416ebe7867c','Allowed Client Scopes','29efd369-6ea8-4f51-b244-80384278b15b','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','anonymous'),('f0bce015-4b3a-4bf7-b5c6-cd09dfe58ae1','Consent Required','29efd369-6ea8-4f51-b244-80384278b15b','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','29efd369-6ea8-4f51-b244-80384278b15b','anonymous');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0b8e2dfc-80cb-4153-ab7c-a1d8a2deacd5','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','oidc-full-name-mapper'),('0faf9513-2ac0-43fb-b8ed-675c23091bfe','3b3253c5-9671-4ec6-880f-83741daeb21c','client-uris-must-match','true'),('193a25be-fd7a-479e-b926-778b77cdc1f0','7bb1d4b1-ac4f-4610-ae6d-55c6f82a32f5','priority','100'),('1ecee239-cf04-4c4c-8449-9d69b1c816fc','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','oidc-address-mapper'),('265c5f03-cdc6-4bec-9e5e-77656c1f2853','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','saml-role-list-mapper'),('41b585c8-87de-4293-bed1-398f73e1ad17','7bb1d4b1-ac4f-4610-ae6d-55c6f82a32f5','keyUse','ENC'),('46000370-ef32-49c6-b78a-a38ec954b1a9','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('4a59750c-5291-4707-8077-50f92f902c63','b568dd95-4349-496b-b3b3-6c4808963b28','secret','KsVHowXctocq01apzisjiw'),('4d7d0b37-fdeb-4092-99a0-9836add07905','0ee5f165-1e28-49d1-9b00-13c89c5ec82a','keyUse','SIG'),('4ed32360-35ae-4914-9b73-9ca1aba00309','3c5392c4-71f8-41d9-b504-02574cb5a257','priority','100'),('5192de90-4d73-4a3d-8ed3-5c14fbe035b4','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','saml-user-property-mapper'),('5b96875b-eab0-4648-b342-ae760eb520db','e7d89794-f4d6-4b22-9e4f-2416ebe7867c','allow-default-scopes','true'),('7629cadd-07e0-41d3-a25a-507bf9e95dbe','7bb1d4b1-ac4f-4610-ae6d-55c6f82a32f5','algorithm','RSA-OAEP'),('8fd568b4-274b-414e-9bd5-8a9b0bd45812','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','oidc-address-mapper'),('9d80b715-444d-4a22-a6a5-4202dd4f3ce0','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','saml-user-property-mapper'),('9f7d0c4f-b59b-4b9e-9192-3db16c91e8fa','7bb1d4b1-ac4f-4610-ae6d-55c6f82a32f5','privateKey','MIIEpAIBAAKCAQEA20nzcRaTiazEwD04jdBXxY//DZfM5YQIUkSH4tYxHMqJRFX4X1OQxTz9PnVIIj/cQvrUUVB/vkJjd+ET03Fg+Ao8G99VBrxFGrJt3b1cRwnf+PbOqWryoweDFM8pNSGvUxZC7XrCKdRXI7SfxDZ6/SmdiieYNNAeOMdkKs6jCdXSf5MxL08/54DVg+TTcOWHRdvHFbXG/40vQhKGWYOdP0M+PgMAhHhi0kQnxOwOFSMls4dSDN38HwHWqerCxJKGCH4y01WMOZH7OyDFFs4h9l1QQljbb3umnAAwK1sHExNLXZNW8b5RstgIggqphh1l4b0LnhCdL7lvJi+Xwt9m9wIDAQABAoIBAGW/b+HamFVqoRYTsfB3Kaqk8DKV6z/ZXeUSIDzbpokV3tAi1a4hf4xNCrIWyAQAPoqjiK08HTGh6zY97K2Qr24XjaFfJDwOUkAbZ0faK31Ysx/5IJXSZkfH3gXjQ1sASLHUI/S9n2a6PD54eiMYJkPeMddfHMvwfv1YYv1LyLFwNV0kBWlC0DmdRS6Sx1gp4+Ogk9iVxTGpDgNdzkI6e5d5EA+wpRO+p5B3alpy/5m3687vfFgbkpml12uiWWd4qZVVdApADVlJp7b8eR0UQGsDnxUitIBPQxvzt+5SIP6OCNLZw4vJPvUsXR4NG2Ed5W79G18nszUrVvoJehxjq9kCgYEA+gC7bUnFljfEBgNFtBttnnxYmsnDcQhHaMVqcQxDMeDrVFCkLoEZk7yaggLv9v4jw3giw4LDQzC7X+i6ES6jeGTukrOiuqp0ImWzjksONBSg7iYFRSTrvdfUd+HbliDnjgGD++1sM2yX4rrFYl0QoJcGba0VGlCAkadZbZw2KCkCgYEA4IyaqoQebxnyqIRJyol5EhbSU2vTxx0iMTc1QnA2Y9nbZ7egvaDSxQpDkW2ACCYmrG5w+eo75ybaheEJLzYE3Zw6YPk0BydhoDzg0q87hi+58w2gAshsdobmpCdIogAMgMz4iIcnP4mRaBfcZf3witd/uETDxsDGh5Z/aslleh8CgYEAndkGfgt9MMqG/xDj2sMSpGV4gEryFpUWmUVEXppSdtS/YR4Fe8NRheEoYPw/zOBLbmiU8oLGjM7hD75edOjQl/yKUaAQF/H1n549D5O+JQ39SkBBRZX5LoVuhj7ZqWGfMh8s2Uzf61weTi6E4AVIsUyJ54fH8jRv6QcTxMxDuXkCgYEAo9o1qiOKSav3g7w0VFSIQgjhJPpTqMG7h4ovlPFo3ufD0CUQaA8IfbuFnoL2n/um0MAuNE8VsxCI+JRDLW4Pkt5DQyvVKTs1Y8XIkDRKDRqaZ58TmbRCYSMC/dmkiIHcncfzuzxUCWsK7ZgrvUjV05p4mi+jZE6bD6lkBLo9ECUCgYBxfDzf7caZ4WmziUS6bWQ4VYLhyQdsJm+RwVsLtd0PSUHjQIwG2qHfi5tUlK1UWELZVBmyKgVfdlHrH/jL4RAGvf8MdcqmL3Mu26Ojp+iagHNxwuH/O9yYtwV30JJsiwXH0Yg805FfaAdSqkMHUJ0i3i6qBxwNlxoL4uno2QJgQA=='),('a002069c-cee4-4cd3-a5fa-41098c5428b1','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a0ba489b-4bdc-4a07-9129-2a4ee4df2814','0ee5f165-1e28-49d1-9b00-13c89c5ec82a','certificate','MIICmzCCAYMCBgGLZW5oDTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDI1MDYwMTU2WhcNMzMxMDI1MDYwMzM2WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDgsKmdT8DA5QCNH2ZPHipPjBB/QxDTztaRplsYJfyUMu1S2pK/ZA9R135hHrk8sh2mhyquSELxxZ/F0rTrF3wXcb/7gaBHfPcne4dpFFmE5IbtuEFKdve38IOWYZ/YrnNav8jbQqKgneuMdtSgEikd1WECjSslR6oqhhFjYqOLk4DHdYN9yav4o4nStKHqT40LrRjnmZ1OsMh61ohu29uN8q1Xdvt4kZqcZ5cdfbZKyzc5yTKfhSHsit5qpaoIZUqxy/jOXBLZzNZzwDSUYIaxQymie7485+uiWg1xZ3wpi2kC6VfOstzI/iFINpx+dsG/bnJsVSuEMCCYZM79dNH3AgMBAAEwDQYJKoZIhvcNAQELBQADggEBABqYVuHuBtZ/VI1FVSNoACra4Cv8jCy76W0bD1fuOZwEGwW55dn5+yeaaZaGOp2C846NZpLiwOjYGDtkqhruVqx+qwtsV9rE0HHhp6sPdJhPnYk/mILpR+/q9qUaa0TNMZpdaIdp+O/5Rcuck/gKld7/juKrvLFdAkXWy0JpfUCGn1/RvaNj/+qyH/4J6KrxstqPHOQD5pjN6s9BDK/Cs8eINqSCngcxMX0nGv40jggsCeoUBGlKbClWgsjUbaIOmMVcJQLeaUamHnYIFC7H63Mo+LUbW2pcz3qW1x+XFJCXaRpBkQBET3Pf24zP793SIJYz/IJZUJnjkK8rmpGCl3s='),('a145c8dd-62ee-4bc2-9312-5775af6d3c90','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('abf5cb0d-2cdd-428f-a610-8c86c56ebdeb','3b3253c5-9671-4ec6-880f-83741daeb21c','host-sending-registration-request-must-match','true'),('b5f98e8a-fca9-44fd-9426-ef85ba31e81e','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b69cb491-b9b1-447d-92e4-966e1fee6779','7bb1d4b1-ac4f-4610-ae6d-55c6f82a32f5','certificate','MIICmzCCAYMCBgGLZW5qiDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDI1MDYwMTU2WhcNMzMxMDI1MDYwMzM2WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDbSfNxFpOJrMTAPTiN0FfFj/8Nl8zlhAhSRIfi1jEcyolEVfhfU5DFPP0+dUgiP9xC+tRRUH++QmN34RPTcWD4Cjwb31UGvEUasm3dvVxHCd/49s6pavKjB4MUzyk1Ia9TFkLtesIp1FcjtJ/ENnr9KZ2KJ5g00B44x2QqzqMJ1dJ/kzEvTz/ngNWD5NNw5YdF28cVtcb/jS9CEoZZg50/Qz4+AwCEeGLSRCfE7A4VIyWzh1IM3fwfAdap6sLEkoYIfjLTVYw5kfs7IMUWziH2XVBCWNtve6acADArWwcTE0tdk1bxvlGy2AiCCqmGHWXhvQueEJ0vuW8mL5fC32b3AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGo+7Q71miV/HmjF5Bnhdn3o9u8vECZch/X4Fwh7Ta5haC15+DuJNjjelJyqG1+4/I10KyMxjqTGVN2dMBmqzwTemWJCRWn4V6X3KVR957ZWVt07wyUgdpLSXiwgZ2kSry3lcVUNsbjohMaKXfN3YrajkViaz+X94KDK8EofRQTD/jT29h/16pmYTjVvaYJ4deAGBV1/SezsLAE+ML4zzOOi0A++L67V5UnYTZ/r8eUyPeKGuICzOeb5a6GMDPE8pI2r22f5i1Y2NCeBxG0gMp2phhfBHhfOjpMFTgjRtW8l3PUnEitog7xVV6TyVPbpyFf87qabzkuMiT+r/fnhdic='),('bab05c0c-bc40-4800-876a-f2a43c4fc1b7','b568dd95-4349-496b-b3b3-6c4808963b28','kid','d47c9d6e-86e0-401f-a60b-ecd4a4549018'),('bdcd6b7b-7f0b-424b-8c3d-a7499adc27cd','3c5392c4-71f8-41d9-b504-02574cb5a257','kid','87f7936e-7dad-49d3-8a30-44473d2b15ec'),('c9d76911-79bf-4923-b813-911882b7739a','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d20b0caa-3682-4da1-8a06-ec97c2f1de96','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','saml-role-list-mapper'),('dae5e2f4-b1a7-4bb7-afef-5d7066bcf7fa','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e0a10414-b513-44dc-8e96-6c6ffb8b9d86','8b4e5ee1-5150-4375-bd52-6b787ed4ff1f','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e51277f4-1cc2-4b7e-850c-d5aa1687de24','0ee5f165-1e28-49d1-9b00-13c89c5ec82a','priority','100'),('e938d7df-0ac0-4aff-807d-867ada119fe6','b568dd95-4349-496b-b3b3-6c4808963b28','priority','100'),('f0152d6d-5aed-46ba-86e7-4784ad6bccda','6bbae057-3ca1-4968-81a8-55555872cd9e','max-clients','200'),('f08a88e8-6157-4ce3-a574-54486e2da7fe','0ee5f165-1e28-49d1-9b00-13c89c5ec82a','privateKey','MIIEowIBAAKCAQEA4LCpnU/AwOUAjR9mTx4qT4wQf0MQ087WkaZbGCX8lDLtUtqSv2QPUdd+YR65PLIdpocqrkhC8cWfxdK06xd8F3G/+4GgR3z3J3uHaRRZhOSG7bhBSnb3t/CDlmGf2K5zWr/I20KioJ3rjHbUoBIpHdVhAo0rJUeqKoYRY2Kji5OAx3WDfcmr+KOJ0rSh6k+NC60Y55mdTrDIetaIbtvbjfKtV3b7eJGanGeXHX22Sss3Ockyn4Uh7IreaqWqCGVKscv4zlwS2czWc8A0lGCGsUMponu+POfroloNcWd8KYtpAulXzrLcyP4hSDacfnbBv25ybFUrhDAgmGTO/XTR9wIDAQABAoIBAC0MTl1bVY52+1bP8k+vgRUkxFP3isKkiBF4lG/xgcPmt/0yFFTqB0ZF2bE4GzRnk5lFJVH+6+kUUbW0SpCNy1PZ+v8+XHeovta8Jghzy4Tg2oqDtBdtZboLrx4x4X3sb/VEWU1YfUmNj+HAG14idfrkwofj7MATL7NJ4OeXqal8X23oHam7KMAkIfq9YPJL6EEHwTD40vg+sahxu2VNuNxv016fqvaR/3IuwWEzLqiIcSsoWbGiVXuGZ1LP3MaXnSbwXsa7pPb8vjYWDLtXEGxpfRbDfNXS7yqoxwixEOno15WX/KElzOlz6JJBgLFdIbVKmEVfwAmiHMe3mUj37yECgYEA/wNtIPcZQLmcn8zpN2HjGC7YMJ77sTLHzYsNUTRzwxifQE2T2syb4AY3mcsp3KSfz4r1F2EpJB6Xx3ldF2LbLjnVg/2eQJJuVWBeyBAMJvqHzVg4qi3jbPUtt6km8VAjgmQJrBYb7760l2uFYUY3hWP3jPFvdovNZL9mbVuRR6ECgYEA4Y8z/Ku189jZdRiyM4JCk4fMAkoT7HVYPbt0x0vXgdmLRMcKHKTPbynd0VlKpanjjoBXVrJuIMeXK7AeQOfVV0mXmRTYwMy81BPfTwL+fJQkHzIK+XU9qKk4G+Nt5bW1JGw0x2nyY4rDYt93nFOnUtUrmisQdvAaNYiUN5iSUpcCgYEA8ig1w70BXOYk5dY2jCHG/VrWbm06Ao1/EB8AGWGen9/Msco5Ied0CWq996vl56DoJLQGgxn/cE4gwQntLVzxV1cR+xGl6hli7m3h80bR013KAWPKA0gqE3hK3oGg+juoTJRkXuZrxuCoKrWuZa3A4UkJdOx7dO3Sr93VDPmL3qECgYAqX9TMaxXLsblonjMcKiSHwsM4yuHjUkg5kLXnmv/pjQz05s+nge7WW28onTXA2aG+a638w5ic3+Iueu+0EdmqhFDOmXP/BHeVAAa7uTxF+y6uDaCyLKxguymnU5qZxQE6znk73VOED9WVBZZa7/xHO3TtiZmWPpUt6XKu3yLeEQKBgBI2qq0aGjrg+ezoC+jzFtB5D/XpRiYMcm57OHV6+LIncVQLcKLi72LPD52foEpa3TfZFkVC0QUa7MPJXUOP5jzIy2kA/bEudrmooxhgAP9xPRwIGzDcFfkV2OkgQFVX4d7Gu9npr7sltUcPpQPlyevlXBWlsNjYPorgg66oHPO/'),('f2a0a510-48cf-4c91-b16c-d1db37bd82ce','0c14f95a-3c26-4b32-b46e-48005b43e5d3','allow-default-scopes','true'),('f3a6575d-6430-4c78-8e1a-691ddbad1cac','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('f5f5b146-1f8d-4398-83b5-980f458e4ce3','ac751fe4-0c9b-4f32-a2ee-291c397474e8','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('fd769cb1-5d3f-4f1c-ba33-1a6564e26b8a','3c5392c4-71f8-41d9-b504-02574cb5a257','algorithm','HS256'),('ff0e56d1-cee8-460f-9d91-24417def39f2','3c5392c4-71f8-41d9-b504-02574cb5a257','secret','kBSyPOPwdle4BaATEp4qW934kS2U3mMDU2EAHzvyWHd3wSTy1FZ9dpdzNrkZrutLea3xPADzjqLw6ldJF5JrSQ');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('479dce28-8182-4bf6-9beb-cf96fbd69859','0b4e36f7-a9b2-48e4-8c8c-dd77b5a7117f'),('479dce28-8182-4bf6-9beb-cf96fbd69859','82f4efec-709f-4dcc-9e83-b4ed80981acb'),('479dce28-8182-4bf6-9beb-cf96fbd69859','94a27c85-e773-4a6e-b0d0-66ec2a655e35'),('479dce28-8182-4bf6-9beb-cf96fbd69859','d431ae22-8be2-4ec1-96bb-0d31279d5a5d'),('68034a43-bc03-4239-adba-ad9adfc474c6','73855647-96a7-46f9-87b4-eb53f4cbce2b'),('82f4efec-709f-4dcc-9e83-b4ed80981acb','4a8d210d-faf1-4350-ae67-23612a37d25d'),('93ba8892-8e6c-4321-b1e2-ff59ca24ec9c','a42dca82-ebe1-482a-86f8-d82774c36bb6'),('93ba8892-8e6c-4321-b1e2-ff59ca24ec9c','e9716d38-6699-4192-9245-2c1ba155fcfd'),('9f9d0e39-0d60-4850-82d6-2126a8720e43','add9edd4-47c7-4773-b0eb-377e1d831063'),('e26ae738-569b-484b-909b-e81b2ec93595','22c69fb9-1799-48c1-81ba-f3daff05a4ce'),('e26ae738-569b-484b-909b-e81b2ec93595','2a2596d4-9a87-4104-b882-213ac93f0006'),('e26ae738-569b-484b-909b-e81b2ec93595','300eeb20-a2e1-4a11-a53b-93eb60bc5587'),('e26ae738-569b-484b-909b-e81b2ec93595','455542c5-b0d2-4a5d-a276-0515ba334130'),('e26ae738-569b-484b-909b-e81b2ec93595','8d83e0a8-ae10-4778-8df5-dfaa1e7900bc'),('e26ae738-569b-484b-909b-e81b2ec93595','93ba8892-8e6c-4321-b1e2-ff59ca24ec9c'),('e26ae738-569b-484b-909b-e81b2ec93595','9f9d0e39-0d60-4850-82d6-2126a8720e43'),('e26ae738-569b-484b-909b-e81b2ec93595','a42dca82-ebe1-482a-86f8-d82774c36bb6'),('e26ae738-569b-484b-909b-e81b2ec93595','a7805f36-d9ec-4c65-af22-e11822001ad8'),('e26ae738-569b-484b-909b-e81b2ec93595','a811f8f2-5a11-4937-8cbf-4a808abfb075'),('e26ae738-569b-484b-909b-e81b2ec93595','add9edd4-47c7-4773-b0eb-377e1d831063'),('e26ae738-569b-484b-909b-e81b2ec93595','ae4c3086-cc76-441d-9158-7cda48db2f5f'),('e26ae738-569b-484b-909b-e81b2ec93595','bc5e5fe2-b6f6-4dc4-84c0-1ca979a56467'),('e26ae738-569b-484b-909b-e81b2ec93595','bed18fc2-0bfc-48dc-8d38-62da2e7f3e42'),('e26ae738-569b-484b-909b-e81b2ec93595','cda51b50-bc99-40e3-8b0c-e2cacd909bbd'),('e26ae738-569b-484b-909b-e81b2ec93595','dd902bf3-be7a-40c0-94cc-3cbb0b32d925'),('e26ae738-569b-484b-909b-e81b2ec93595','e5debf7e-ec98-4b39-8db6-e28527cd4fe0'),('e26ae738-569b-484b-909b-e81b2ec93595','e9716d38-6699-4192-9245-2c1ba155fcfd'),('e26ae738-569b-484b-909b-e81b2ec93595','ee967b28-c334-4d61-9780-3b0ecf5e09f8');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('f2b1c1ee-c43c-4940-9d42-143da0e88d57',NULL,'password','f833468b-00b7-4ff3-a02d-0c34eef8c8d0',1698213817879,NULL,'{\"value\":\"E1wOmdX7G+d0xjw9LLbgcu7rKhhCkfqVK1oBSuu6W3dc5yjJ/lKGMkKF9AW0iNnEm0X/wRYFvTyWXh3fjhkb3g==\",\"salt\":\"sZmxNOK9vr12uXWu7xGltQ==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-10-25 15:03:25',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-10-25 15:03:25',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-10-25 15:03:25',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-10-25 15:03:25',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-10-25 15:03:26',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-10-25 15:03:26',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-10-25 15:03:26',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-10-25 15:03:26',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-10-25 15:03:26',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-10-25 15:03:27',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-10-25 15:03:27',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-10-25 15:03:27',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-10-25 15:03:27',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 15:03:28',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 15:03:28',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 15:03:28',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 15:03:28',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-10-25 15:03:28',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-10-25 15:03:28',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-10-25 15:03:28',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-25 15:03:28',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-25 15:03:28',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-10-25 15:03:28',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-10-25 15:03:28',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-10-25 15:03:28',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-10-25 15:03:28',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-10-25 15:03:29',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-10-25 15:03:29',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-10-25 15:03:29',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-10-25 15:03:29',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-10-25 15:03:30',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-10-25 15:03:30',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 15:03:30',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 15:03:30',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 15:03:30',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 15:03:30',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 15:03:30',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8213803064'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-10-25 15:03:30',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-10-25 15:03:30',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 15:03:30',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 15:03:30',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 15:03:30',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 15:03:30',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-10-25 15:03:30',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 15:03:30',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 15:03:30',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 15:03:30',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 15:03:31',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 15:03:31',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-10-25 15:03:31',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-10-25 15:03:31',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-10-25 15:03:31',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-10-25 15:03:31',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-10-25 15:03:31',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 15:03:31',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 15:03:31',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 15:03:31',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 15:03:32',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-10-25 15:03:32',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-10-25 15:03:33',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-25 15:03:33',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-25 15:03:33',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-10-25 15:03:33',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-10-25 15:03:33',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 15:03:33',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 15:03:33',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 15:03:33',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-10-25 15:03:33',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-10-25 15:03:33',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-10-25 15:03:33',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8213803064'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-10-25 15:03:33',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'8213803064'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 15:03:33',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8213803064'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 15:03:33',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8213803064'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 15:03:33',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8213803064'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 15:03:33',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 15:03:33',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 15:03:33',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 15:03:33',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 15:03:33',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 15:03:33',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 15:03:33',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 15:03:33',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 15:03:33',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 15:03:33',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8213803064'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 15:03:33',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-10-25 15:03:33',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'8213803064'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-25 15:03:33',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-25 15:03:33',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'8213803064'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'8213803064'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'8213803064'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8213803064'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8213803064'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 15:03:33',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8213803064'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8213803064'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8213803064'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8213803064'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8213803064'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 15:03:33',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'8213803064'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-10-25 15:03:33',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'8213803064'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2023-10-25 15:03:33',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2023-10-25 15:03:33',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8213803064'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2023-10-25 15:03:33',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'8213803064'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 15:03:33',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 15:03:33',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8213803064'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 15:03:33',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8213803064');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL),(1000,'\0',NULL,NULL),(1001,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('29efd369-6ea8-4f51-b244-80384278b15b','276bc628-688b-40bf-97f1-f78ea287f145',''),('29efd369-6ea8-4f51-b244-80384278b15b','475bf907-b45d-44f1-b641-95b010f2f30a',''),('29efd369-6ea8-4f51-b244-80384278b15b','69024e7a-d261-4993-8518-cdfe0b144ed2',''),('29efd369-6ea8-4f51-b244-80384278b15b','811f08dc-9d93-452b-8397-7ebeac030a21',''),('29efd369-6ea8-4f51-b244-80384278b15b','8b85228d-6c76-488b-99c6-a5a2fdd8c058','\0'),('29efd369-6ea8-4f51-b244-80384278b15b','8f303e94-ecd6-46fb-a0b6-8bf2923ea14d','\0'),('29efd369-6ea8-4f51-b244-80384278b15b','a2dd472c-7e0c-474c-8ce5-e7b96d917f35',''),('29efd369-6ea8-4f51-b244-80384278b15b','bc7cff7b-7b16-4801-91a6-4e6ffad1371d',''),('29efd369-6ea8-4f51-b244-80384278b15b','f034c84d-f9d2-460e-a600-2355bcaf2185','\0'),('29efd369-6ea8-4f51-b244-80384278b15b','f04ded8a-42d9-4562-ae60-5be33646f67c','\0');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0b4e36f7-a9b2-48e4-8c8c-dd77b5a7117f','29efd369-6ea8-4f51-b244-80384278b15b','\0','${role_uma_authorization}','uma_authorization','29efd369-6ea8-4f51-b244-80384278b15b',NULL,NULL),('22c69fb9-1799-48c1-81ba-f3daff05a4ce','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_view-identity-providers}','view-identity-providers','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('2a2596d4-9a87-4104-b882-213ac93f0006','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_manage-identity-providers}','manage-identity-providers','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('300eeb20-a2e1-4a11-a53b-93eb60bc5587','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_manage-authorization}','manage-authorization','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('455542c5-b0d2-4a5d-a276-0515ba334130','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_create-client}','create-client','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('479dce28-8182-4bf6-9beb-cf96fbd69859','29efd369-6ea8-4f51-b244-80384278b15b','\0','${role_default-roles}','default-roles-master','29efd369-6ea8-4f51-b244-80384278b15b',NULL,NULL),('4a8d210d-faf1-4350-ae67-23612a37d25d','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_manage-account-links}','manage-account-links','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('5948e207-e49b-407d-b910-d056b709b23b','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_view-groups}','view-groups','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('68034a43-bc03-4239-adba-ad9adfc474c6','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_manage-consent}','manage-consent','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('73855647-96a7-46f9-87b4-eb53f4cbce2b','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_view-consent}','view-consent','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('82f4efec-709f-4dcc-9e83-b4ed80981acb','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_manage-account}','manage-account','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('89c2a3a4-34b3-4c4e-892e-ffb20f31159d','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_view-applications}','view-applications','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('8d83e0a8-ae10-4778-8df5-dfaa1e7900bc','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_manage-events}','manage-events','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('93ba8892-8e6c-4321-b1e2-ff59ca24ec9c','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_view-users}','view-users','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('94a27c85-e773-4a6e-b0d0-66ec2a655e35','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_view-profile}','view-profile','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('9f9d0e39-0d60-4850-82d6-2126a8720e43','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_view-clients}','view-clients','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('a42dca82-ebe1-482a-86f8-d82774c36bb6','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_query-users}','query-users','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('a7805f36-d9ec-4c65-af22-e11822001ad8','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_view-events}','view-events','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('a811f8f2-5a11-4937-8cbf-4a808abfb075','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_manage-realm}','manage-realm','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('add9edd4-47c7-4773-b0eb-377e1d831063','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_query-clients}','query-clients','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('ae4c3086-cc76-441d-9158-7cda48db2f5f','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_view-realm}','view-realm','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('bafd119a-24eb-4c6f-9a4d-0d0810c95314','a585e00d-64e2-4289-95e5-f4d0830de5c2','','${role_delete-account}','delete-account','29efd369-6ea8-4f51-b244-80384278b15b','a585e00d-64e2-4289-95e5-f4d0830de5c2',NULL),('bc5e5fe2-b6f6-4dc4-84c0-1ca979a56467','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_query-realms}','query-realms','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('bed18fc2-0bfc-48dc-8d38-62da2e7f3e42','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_impersonation}','impersonation','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('cda51b50-bc99-40e3-8b0c-e2cacd909bbd','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_view-authorization}','view-authorization','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('d431ae22-8be2-4ec1-96bb-0d31279d5a5d','29efd369-6ea8-4f51-b244-80384278b15b','\0','${role_offline-access}','offline_access','29efd369-6ea8-4f51-b244-80384278b15b',NULL,NULL),('dd902bf3-be7a-40c0-94cc-3cbb0b32d925','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_manage-users}','manage-users','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('e26ae738-569b-484b-909b-e81b2ec93595','29efd369-6ea8-4f51-b244-80384278b15b','\0','${role_admin}','admin','29efd369-6ea8-4f51-b244-80384278b15b',NULL,NULL),('e5debf7e-ec98-4b39-8db6-e28527cd4fe0','29efd369-6ea8-4f51-b244-80384278b15b','\0','${role_create-realm}','create-realm','29efd369-6ea8-4f51-b244-80384278b15b',NULL,NULL),('e9716d38-6699-4192-9245-2c1ba155fcfd','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_query-groups}','query-groups','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('ee967b28-c334-4d61-9780-3b0ecf5e09f8','a2a0427c-454c-487a-9f1a-40100ada14a8','','${role_manage-clients}','manage-clients','29efd369-6ea8-4f51-b244-80384278b15b','a2a0427c-454c-487a-9f1a-40100ada14a8',NULL),('fad1ce60-6353-4186-b2a6-6f326e6f1e01','180027f4-ec6e-4489-879b-20758d1cb95f','','${role_read-token}','read-token','29efd369-6ea8-4f51-b244-80384278b15b','180027f4-ec6e-4489-879b-20758d1cb95f',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('tsl8h','20.0.5',1698213814);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0594c3b1-3d67-465d-a00f-12148395d9b5','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','51c8a37b-cde3-496e-ba78-2e50988ceab5',NULL),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('112f7b1c-7c2e-4f46-a65d-d2a7c50c1afc','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'a2dd472c-7e0c-474c-8ce5-e7b96d917f35'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','address','openid-connect','oidc-address-mapper',NULL,'8f303e94-ecd6-46fb-a0b6-8bf2923ea14d'),('2781baa1-c908-498f-93a0-f6fb138d50c1','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'475bf907-b45d-44f1-b641-95b010f2f30a'),('2b8b04c4-dd67-4a39-b2d8-792413da6616','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'a2dd472c-7e0c-474c-8ce5-e7b96d917f35'),('522b12ff-a221-4d34-85aa-869928c36f1d','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('680041c5-ceb1-4a91-a462-ba1ed2d3c7eb','role list','saml','saml-role-list-mapper',NULL,'bc7cff7b-7b16-4801-91a6-4e6ffad1371d'),('68e016c6-fcf3-476d-933a-c1c76117d2da','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('7acdacb1-52bd-480a-a22f-537b3adf058c','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','51c8a37b-cde3-496e-ba78-2e50988ceab5',NULL),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f04ded8a-42d9-4562-ae60-5be33646f67c'),('87f0b482-8323-4e86-9789-9080dd03e3ca','full name','openid-connect','oidc-full-name-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('b124a75c-bd3c-47c6-b5d7-176127a253e0','acr loa level','openid-connect','oidc-acr-mapper',NULL,'276bc628-688b-40bf-97f1-f78ea287f145'),('bcb28c0b-9d52-485c-9ab3-ede6b814820b','audience resolve','openid-connect','oidc-audience-resolve-mapper','b96fad0a-f70f-4338-b80e-1335e49c6d6e',NULL),('bef080c5-d438-4e1c-8656-ffdef701cc6b','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f034c84d-f9d2-460e-a600-2355bcaf2185'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'69024e7a-d261-4993-8518-cdfe0b144ed2'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','locale','openid-connect','oidc-usermodel-attribute-mapper','39d2cedb-45b3-468e-8adb-07db234b51f0',NULL),('e164a170-3527-4bee-b023-4f63eb9a21b1','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f04ded8a-42d9-4562-ae60-5be33646f67c'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','email','openid-connect','oidc-usermodel-property-mapper',NULL,'69024e7a-d261-4993-8518-cdfe0b144ed2'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'f034c84d-f9d2-460e-a600-2355bcaf2185'),('ee49022f-8f3d-4327-beb1-00b00567c603','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('f20def8d-8b90-4c44-805f-696fbfbb627e','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('f3636d53-ca59-4188-9af5-c9ba409aba99','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','51c8a37b-cde3-496e-ba78-2e50988ceab5',NULL),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','username','openid-connect','oidc-usermodel-property-mapper',NULL,'811f08dc-9d93-452b-8397-7ebeac030a21'),('f775b6e4-615c-44e7-98f8-abeaf2d5f10c','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a2dd472c-7e0c-474c-8ce5-e7b96d917f35');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0594c3b1-3d67-465d-a00f-12148395d9b5','true','access.token.claim'),('0594c3b1-3d67-465d-a00f-12148395d9b5','profile','claim.name'),('0594c3b1-3d67-465d-a00f-12148395d9b5','true','id.token.claim'),('0594c3b1-3d67-465d-a00f-12148395d9b5','String','jsonType.label'),('0594c3b1-3d67-465d-a00f-12148395d9b5','profile','user.attribute'),('0594c3b1-3d67-465d-a00f-12148395d9b5','true','userinfo.token.claim'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','true','access.token.claim'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','clientAddress','claim.name'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','true','id.token.claim'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','String','jsonType.label'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','clientAddress','user.session.note'),('0c849273-ca6e-44ca-8a23-6f72b4c38f60','true','userinfo.token.claim'),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','true','access.token.claim'),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','picture','claim.name'),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','true','id.token.claim'),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','String','jsonType.label'),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','picture','user.attribute'),('0f33bb32-72f0-49a6-898b-ff7c8ee21377','true','userinfo.token.claim'),('112f7b1c-7c2e-4f46-a65d-d2a7c50c1afc','true','access.token.claim'),('112f7b1c-7c2e-4f46-a65d-d2a7c50c1afc','resource_access.${client_id}.roles','claim.name'),('112f7b1c-7c2e-4f46-a65d-d2a7c50c1afc','String','jsonType.label'),('112f7b1c-7c2e-4f46-a65d-d2a7c50c1afc','true','multivalued'),('112f7b1c-7c2e-4f46-a65d-d2a7c50c1afc','foo','user.attribute'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','true','access.token.claim'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','nickname','claim.name'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','true','id.token.claim'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','String','jsonType.label'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','nickname','user.attribute'),('176fe139-ef23-4f6c-8f4c-9aea59a7ca10','true','userinfo.token.claim'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','true','access.token.claim'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','true','id.token.claim'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','country','user.attribute.country'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','formatted','user.attribute.formatted'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','locality','user.attribute.locality'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','postal_code','user.attribute.postal_code'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','region','user.attribute.region'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','street','user.attribute.street'),('1cc352f1-89c0-4833-8bc0-f03b22f3074c','true','userinfo.token.claim'),('522b12ff-a221-4d34-85aa-869928c36f1d','true','access.token.claim'),('522b12ff-a221-4d34-85aa-869928c36f1d','website','claim.name'),('522b12ff-a221-4d34-85aa-869928c36f1d','true','id.token.claim'),('522b12ff-a221-4d34-85aa-869928c36f1d','String','jsonType.label'),('522b12ff-a221-4d34-85aa-869928c36f1d','website','user.attribute'),('522b12ff-a221-4d34-85aa-869928c36f1d','true','userinfo.token.claim'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','true','access.token.claim'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','given_name','claim.name'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','true','id.token.claim'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','String','jsonType.label'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','firstName','user.attribute'),('66cb8974-96ba-4f11-b723-1a079ddd2a97','true','userinfo.token.claim'),('680041c5-ceb1-4a91-a462-ba1ed2d3c7eb','Role','attribute.name'),('680041c5-ceb1-4a91-a462-ba1ed2d3c7eb','Basic','attribute.nameformat'),('680041c5-ceb1-4a91-a462-ba1ed2d3c7eb','false','single'),('68e016c6-fcf3-476d-933a-c1c76117d2da','true','access.token.claim'),('68e016c6-fcf3-476d-933a-c1c76117d2da','birthdate','claim.name'),('68e016c6-fcf3-476d-933a-c1c76117d2da','true','id.token.claim'),('68e016c6-fcf3-476d-933a-c1c76117d2da','String','jsonType.label'),('68e016c6-fcf3-476d-933a-c1c76117d2da','birthdate','user.attribute'),('68e016c6-fcf3-476d-933a-c1c76117d2da','true','userinfo.token.claim'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','true','access.token.claim'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','updated_at','claim.name'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','true','id.token.claim'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','long','jsonType.label'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','updatedAt','user.attribute'),('75758d15-efa7-46db-a99b-7f7424e9dc4c','true','userinfo.token.claim'),('7acdacb1-52bd-480a-a22f-537b3adf058c','true','access.token.claim'),('7acdacb1-52bd-480a-a22f-537b3adf058c','clientHost','claim.name'),('7acdacb1-52bd-480a-a22f-537b3adf058c','true','id.token.claim'),('7acdacb1-52bd-480a-a22f-537b3adf058c','String','jsonType.label'),('7acdacb1-52bd-480a-a22f-537b3adf058c','clientHost','user.session.note'),('7acdacb1-52bd-480a-a22f-537b3adf058c','true','userinfo.token.claim'),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','true','access.token.claim'),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','phone_number_verified','claim.name'),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','true','id.token.claim'),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','boolean','jsonType.label'),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','phoneNumberVerified','user.attribute'),('8098e08f-1da1-4e69-bfd2-02a7e2ed7295','true','userinfo.token.claim'),('87f0b482-8323-4e86-9789-9080dd03e3ca','true','access.token.claim'),('87f0b482-8323-4e86-9789-9080dd03e3ca','true','id.token.claim'),('87f0b482-8323-4e86-9789-9080dd03e3ca','true','userinfo.token.claim'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','true','access.token.claim'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','middle_name','claim.name'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','true','id.token.claim'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','String','jsonType.label'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','middleName','user.attribute'),('9843a245-d8cc-41d5-90c6-1ff67c6c5338','true','userinfo.token.claim'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','true','access.token.claim'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','family_name','claim.name'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','true','id.token.claim'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','String','jsonType.label'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','lastName','user.attribute'),('a45f2a5a-30c4-4c5a-be24-bd1dcbc1274c','true','userinfo.token.claim'),('b124a75c-bd3c-47c6-b5d7-176127a253e0','true','access.token.claim'),('b124a75c-bd3c-47c6-b5d7-176127a253e0','true','id.token.claim'),('bef080c5-d438-4e1c-8656-ffdef701cc6b','true','access.token.claim'),('bef080c5-d438-4e1c-8656-ffdef701cc6b','groups','claim.name'),('bef080c5-d438-4e1c-8656-ffdef701cc6b','true','id.token.claim'),('bef080c5-d438-4e1c-8656-ffdef701cc6b','String','jsonType.label'),('bef080c5-d438-4e1c-8656-ffdef701cc6b','true','multivalued'),('bef080c5-d438-4e1c-8656-ffdef701cc6b','foo','user.attribute'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','true','access.token.claim'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','locale','claim.name'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','true','id.token.claim'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','String','jsonType.label'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','locale','user.attribute'),('cf86699e-e69f-4c7e-a694-e7ce46bd1c71','true','userinfo.token.claim'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','true','access.token.claim'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','email_verified','claim.name'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','true','id.token.claim'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','boolean','jsonType.label'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','emailVerified','user.attribute'),('d1ba7e4f-a3ae-4259-8f2c-69e0303b2ed4','true','userinfo.token.claim'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','true','access.token.claim'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','locale','claim.name'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','true','id.token.claim'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','String','jsonType.label'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','locale','user.attribute'),('d99cb2e7-7d58-47ca-bc61-a4b75baf06b4','true','userinfo.token.claim'),('e164a170-3527-4bee-b023-4f63eb9a21b1','true','access.token.claim'),('e164a170-3527-4bee-b023-4f63eb9a21b1','phone_number','claim.name'),('e164a170-3527-4bee-b023-4f63eb9a21b1','true','id.token.claim'),('e164a170-3527-4bee-b023-4f63eb9a21b1','String','jsonType.label'),('e164a170-3527-4bee-b023-4f63eb9a21b1','phoneNumber','user.attribute'),('e164a170-3527-4bee-b023-4f63eb9a21b1','true','userinfo.token.claim'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','true','access.token.claim'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','email','claim.name'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','true','id.token.claim'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','String','jsonType.label'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','email','user.attribute'),('e37d5ddd-3bc1-4d2f-afbc-9e922f059ecc','true','userinfo.token.claim'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','true','access.token.claim'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','upn','claim.name'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','true','id.token.claim'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','String','jsonType.label'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','username','user.attribute'),('ed6b7f7d-a6dc-4f79-bc59-aaf6e8cf7b44','true','userinfo.token.claim'),('ee49022f-8f3d-4327-beb1-00b00567c603','true','access.token.claim'),('ee49022f-8f3d-4327-beb1-00b00567c603','gender','claim.name'),('ee49022f-8f3d-4327-beb1-00b00567c603','true','id.token.claim'),('ee49022f-8f3d-4327-beb1-00b00567c603','String','jsonType.label'),('ee49022f-8f3d-4327-beb1-00b00567c603','gender','user.attribute'),('ee49022f-8f3d-4327-beb1-00b00567c603','true','userinfo.token.claim'),('f20def8d-8b90-4c44-805f-696fbfbb627e','true','access.token.claim'),('f20def8d-8b90-4c44-805f-696fbfbb627e','zoneinfo','claim.name'),('f20def8d-8b90-4c44-805f-696fbfbb627e','true','id.token.claim'),('f20def8d-8b90-4c44-805f-696fbfbb627e','String','jsonType.label'),('f20def8d-8b90-4c44-805f-696fbfbb627e','zoneinfo','user.attribute'),('f20def8d-8b90-4c44-805f-696fbfbb627e','true','userinfo.token.claim'),('f3636d53-ca59-4188-9af5-c9ba409aba99','true','access.token.claim'),('f3636d53-ca59-4188-9af5-c9ba409aba99','clientId','claim.name'),('f3636d53-ca59-4188-9af5-c9ba409aba99','true','id.token.claim'),('f3636d53-ca59-4188-9af5-c9ba409aba99','String','jsonType.label'),('f3636d53-ca59-4188-9af5-c9ba409aba99','clientId','user.session.note'),('f3636d53-ca59-4188-9af5-c9ba409aba99','true','userinfo.token.claim'),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','true','access.token.claim'),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','preferred_username','claim.name'),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','true','id.token.claim'),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','String','jsonType.label'),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','username','user.attribute'),('f5f943ec-f4f0-4302-aaf0-7d9745b1588e','true','userinfo.token.claim'),('f775b6e4-615c-44e7-98f8-abeaf2d5f10c','true','access.token.claim'),('f775b6e4-615c-44e7-98f8-abeaf2d5f10c','realm_access.roles','claim.name'),('f775b6e4-615c-44e7-98f8-abeaf2d5f10c','String','jsonType.label'),('f775b6e4-615c-44e7-98f8-abeaf2d5f10c','true','multivalued'),('f775b6e4-615c-44e7-98f8-abeaf2d5f10c','foo','user.attribute');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('29efd369-6ea8-4f51-b244-80384278b15b',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','NONE',1800,36000,'\0','\0','a2a0427c-454c-487a-9f1a-40100ada14a8',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','3111d6dd-9d51-415b-ba00-d76ba2a7bfe8','7338e156-3fd9-4abc-94f3-4ed9144a4e03','7dd3f8b9-44fe-4996-ad8b-e22942919a33','7da16cbd-504d-4bc2-a183-17a7c4c061be','4954dc17-3c39-4a99-a4a3-16584a14eb27',31536000,'\0',900,'','\0','b45fb312-58b5-4b5b-a975-342e513ae1c3',0,'\0',0,0,'479dce28-8182-4bf6-9beb-cf96fbd69859');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','29efd369-6ea8-4f51-b244-80384278b15b','false'),('cibaAuthRequestedUserHint','29efd369-6ea8-4f51-b244-80384278b15b','login_hint'),('cibaBackchannelTokenDeliveryMode','29efd369-6ea8-4f51-b244-80384278b15b','poll'),('cibaExpiresIn','29efd369-6ea8-4f51-b244-80384278b15b','120'),('cibaInterval','29efd369-6ea8-4f51-b244-80384278b15b','5'),('defaultSignatureAlgorithm','29efd369-6ea8-4f51-b244-80384278b15b','RS256'),('displayName','29efd369-6ea8-4f51-b244-80384278b15b','Keycloak'),('displayNameHtml','29efd369-6ea8-4f51-b244-80384278b15b','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','29efd369-6ea8-4f51-b244-80384278b15b','30'),('maxDeltaTimeSeconds','29efd369-6ea8-4f51-b244-80384278b15b','43200'),('maxFailureWaitSeconds','29efd369-6ea8-4f51-b244-80384278b15b','900'),('minimumQuickLoginWaitSeconds','29efd369-6ea8-4f51-b244-80384278b15b','60'),('oauth2DeviceCodeLifespan','29efd369-6ea8-4f51-b244-80384278b15b','600'),('oauth2DevicePollingInterval','29efd369-6ea8-4f51-b244-80384278b15b','5'),('offlineSessionMaxLifespan','29efd369-6ea8-4f51-b244-80384278b15b','31536000'),('offlineSessionMaxLifespanEnabled','29efd369-6ea8-4f51-b244-80384278b15b','true'),('parRequestUriLifespan','29efd369-6ea8-4f51-b244-80384278b15b','60'),('permanentLockout','29efd369-6ea8-4f51-b244-80384278b15b','false'),('quickLoginCheckMilliSeconds','29efd369-6ea8-4f51-b244-80384278b15b','1000'),('realmReusableOtpCode','29efd369-6ea8-4f51-b244-80384278b15b','false'),('waitIncrementSeconds','29efd369-6ea8-4f51-b244-80384278b15b','60'),('webAuthnPolicyAttestationConveyancePreference','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyAuthenticatorAttachment','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','29efd369-6ea8-4f51-b244-80384278b15b','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','29efd369-6ea8-4f51-b244-80384278b15b','false'),('webAuthnPolicyCreateTimeout','29efd369-6ea8-4f51-b244-80384278b15b','0'),('webAuthnPolicyCreateTimeoutPasswordless','29efd369-6ea8-4f51-b244-80384278b15b','0'),('webAuthnPolicyRequireResidentKey','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyRpEntityName','29efd369-6ea8-4f51-b244-80384278b15b','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','29efd369-6ea8-4f51-b244-80384278b15b','keycloak'),('webAuthnPolicyRpId','29efd369-6ea8-4f51-b244-80384278b15b',''),('webAuthnPolicyRpIdPasswordless','29efd369-6ea8-4f51-b244-80384278b15b',''),('webAuthnPolicySignatureAlgorithms','29efd369-6ea8-4f51-b244-80384278b15b','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','29efd369-6ea8-4f51-b244-80384278b15b','ES256'),('webAuthnPolicyUserVerificationRequirement','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','29efd369-6ea8-4f51-b244-80384278b15b','not specified'),('_browser_header.contentSecurityPolicy','29efd369-6ea8-4f51-b244-80384278b15b','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','29efd369-6ea8-4f51-b244-80384278b15b',''),('_browser_header.strictTransportSecurity','29efd369-6ea8-4f51-b244-80384278b15b','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','29efd369-6ea8-4f51-b244-80384278b15b','nosniff'),('_browser_header.xFrameOptions','29efd369-6ea8-4f51-b244-80384278b15b','SAMEORIGIN'),('_browser_header.xRobotsTag','29efd369-6ea8-4f51-b244-80384278b15b','none'),('_browser_header.xXSSProtection','29efd369-6ea8-4f51-b244-80384278b15b','1; mode=block');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('29efd369-6ea8-4f51-b244-80384278b15b','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','29efd369-6ea8-4f51-b244-80384278b15b');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('39d2cedb-45b3-468e-8adb-07db234b51f0','/admin/master/console/*'),('54a5bd3c-b7b0-4da0-b7e5-0c7578c96e7e','/*'),('a585e00d-64e2-4289-95e5-f4d0830de5c2','/realms/master/account/*'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','/realms/master/account/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('1faf3923-3eec-448f-9fba-bf805a61812f','terms_and_conditions','Terms and Conditions','29efd369-6ea8-4f51-b244-80384278b15b','\0','\0','terms_and_conditions',20),('6116fda4-adbf-41e7-af22-268e0a07bf8f','VERIFY_EMAIL','Verify Email','29efd369-6ea8-4f51-b244-80384278b15b','','\0','VERIFY_EMAIL',50),('8afefd6b-d82b-472e-9d04-9fc9e06e00a1','webauthn-register-passwordless','Webauthn Register Passwordless','29efd369-6ea8-4f51-b244-80384278b15b','','\0','webauthn-register-passwordless',80),('a0582026-5947-409a-bfff-b875e78ae127','webauthn-register','Webauthn Register','29efd369-6ea8-4f51-b244-80384278b15b','','\0','webauthn-register',70),('a34c47e5-b789-42b0-bded-2ac4131cc854','delete_account','Delete Account','29efd369-6ea8-4f51-b244-80384278b15b','\0','\0','delete_account',60),('b56f2b80-3218-4f8e-886c-8d0e9fa725ab','UPDATE_PROFILE','Update Profile','29efd369-6ea8-4f51-b244-80384278b15b','','\0','UPDATE_PROFILE',40),('cd517ed5-bdd8-4708-b0a9-505a60f2ae0c','UPDATE_PASSWORD','Update Password','29efd369-6ea8-4f51-b244-80384278b15b','','\0','UPDATE_PASSWORD',30),('f999d33f-8ee4-4d91-8dfc-875567a6417b','CONFIGURE_TOTP','Configure OTP','29efd369-6ea8-4f51-b244-80384278b15b','','\0','CONFIGURE_TOTP',10),('fff7685e-5991-4c9d-92c9-9cb166b031a0','update_user_locale','Update User Locale','29efd369-6ea8-4f51-b244-80384278b15b','','\0','update_user_locale',1000);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES ('b96fad0a-f70f-4338-b80e-1335e49c6d6e','5948e207-e49b-407d-b910-d056b709b23b'),('b96fad0a-f70f-4338-b80e-1335e49c6d6e','82f4efec-709f-4dcc-9e83-b4ed80981acb');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('a21117c1-c630-40a1-af78-bd7ac0a1aee0',NULL,'1bf9dcc2-782a-4e66-a0c5-5c776d210776','\0','',NULL,NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','service-account-_platform',1698213822242,'51c8a37b-cde3-496e-ba78-2e50988ceab5',0),('f833468b-00b7-4ff3-a02d-0c34eef8c8d0',NULL,'0257fa07-9cc3-4382-a7e8-fe39a0c84001','\0','',NULL,NULL,NULL,'29efd369-6ea8-4f51-b244-80384278b15b','admin',1698213817544,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('479dce28-8182-4bf6-9beb-cf96fbd69859','a21117c1-c630-40a1-af78-bd7ac0a1aee0'),('479dce28-8182-4bf6-9beb-cf96fbd69859','f833468b-00b7-4ff3-a02d-0c34eef8c8d0'),('e26ae738-569b-484b-909b-e81b2ec93595','a21117c1-c630-40a1-af78-bd7ac0a1aee0'),('e26ae738-569b-484b-909b-e81b2ec93595','f833468b-00b7-4ff3-a02d-0c34eef8c8d0');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('39d2cedb-45b3-468e-8adb-07db234b51f0','+');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
/*!40000 ALTER TABLE `M_SYSTEM_CONFIG` DISABLE KEYS */;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2023-10-25 15:03:46','dummy','2023-10-25 15:03:46','dummy');
/*!40000 ALTER TABLE `M_SYSTEM_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
/*!40000 ALTER TABLE `T_MAINTENANCE_MODE` DISABLE KEYS */;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2023-10-25 15:03:42.000000',NULL),('2','DATA_UPDATE_STOP','0','2023-10-25 15:03:42.000000',NULL);
/*!40000 ALTER TABLE `T_MAINTENANCE_MODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_ORGANIZATION`
--

LOCK TABLES `T_ORGANIZATION` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_ORGANIZATION_DB`
--

LOCK TABLES `T_ORGANIZATION_DB` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_ORGANIZATION_PLAN`
--

LOCK TABLES `T_ORGANIZATION_PLAN` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PLAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN`
--

LOCK TABLES `T_PLAN` WRITE;
/*!40000 ALTER TABLE `T_PLAN` DISABLE KEYS */;
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2023-10-25 15:03:41','system','2023-10-25 15:03:41','system');
/*!40000 ALTER TABLE `T_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
/*!40000 ALTER TABLE `T_PLAN_ITEM` DISABLE KEYS */;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2023-10-25 15:03:46','dummy','2023-10-25 15:03:46','dummy'),('platform.roles','{\"description\": \"default limit\", \"max\": 1000}','2023-10-25 15:03:41','system','2023-10-25 15:03:41','system'),('platform.users','{\"description\": \"default limit\", \"max\": 10000}','2023-10-25 15:03:41','system','2023-10-25 15:03:41','system'),('platform.workspaces','{\"description\": \"default limit\", \"max\": 1000}','2023-10-25 15:03:41','system','2023-10-25 15:03:41','system');
/*!40000 ALTER TABLE `T_PLAN_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
/*!40000 ALTER TABLE `T_PLAN_LIMIT` DISABLE KEYS */;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2023-10-25 15:03:46','dummy','2023-10-25 15:03:46','dummy'),('_default','platform.roles',1000,'2023-10-25 15:03:41','system','2023-10-25 15:03:41','system'),('_default','platform.users',10000,'2023-10-25 15:03:41','system','2023-10-25 15:03:41','system'),('_default','platform.workspaces',100,'2023-10-25 15:03:41','system','2023-10-25 15:03:41','system');
/*!40000 ALTER TABLE `T_PLAN_LIMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2023-10-25 15:03:41','1.7.0','2023-10-25 15:03:41','1.7.0'),(2,'1.3.0','SUCCEED',NULL,'2023-10-25 15:03:42','1.7.0','2023-10-25 15:03:42','1.7.0'),(3,'1.5.0','START',NULL,'2023-10-25 15:03:42','1.7.0','2023-10-25 15:03:42','1.7.0'),(4,'1.5.0','SUCCEED',NULL,'2023-10-25 15:03:42','1.7.0','2023-10-25 15:03:42','1.7.0'),(5,'1.5.2','START',NULL,'2023-10-25 15:03:42','1.7.0','2023-10-25 15:03:42','1.7.0'),(6,'1.5.2','SUCCEED',NULL,'2023-10-25 15:03:42','1.7.0','2023-10-25 15:03:42','1.7.0'),(7,'1.6.0','START',NULL,'2023-10-25 15:03:42','1.7.0','2023-10-25 15:03:42','1.7.0'),(8,'1.6.0','SUCCEED',NULL,'2023-10-25 15:03:43','1.7.0','2023-10-25 15:03:43','1.7.0'),(9,'1.7.0','START',NULL,'2023-10-25 15:03:43','1.7.0','2023-10-25 15:03:43','1.7.0'),(10,'1.7.0','SUCCEED',NULL,'2023-10-25 15:03:43','1.7.0','2023-10-25 15:03:43','1.7.0');
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"51c8a37b-cde3-496e-ba78-2e50988ceab5\", \"TOKEN_CHECK_CLIENT_SECRET\": \"dummy\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"527ffa5c-e8d7-49c0-9702-affa116dccac\"}','2023-10-25 15:03:42','system','2023-10-25 15:04:55','system');
/*!40000 ALTER TABLE `T_PLATFORM_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_VERSION` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.7.0','2023-10-25 15:03:03','system','2023-10-25 15:03:43','1.7.0');
/*!40000 ALTER TABLE `T_PLATFORM_VERSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_PROCESS_QUEUE`
--

LOCK TABLES `T_PROCESS_QUEUE` WRITE;
/*!40000 ALTER TABLE `T_PROCESS_QUEUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_PROCESS_QUEUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 15:04:57
SET foreign_key_checks = 1;
