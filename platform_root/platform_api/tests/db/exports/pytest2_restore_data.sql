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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('05bec3cb-968b-4042-ad65-973e20010c56',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','da017dd8-ea0f-4242-9b79-23a2be37bb49',0,20,1,'d7eba282-bf80-4a57-8587-97c8c7ea9497',NULL),('0b80773c-22f3-4e24-b0f9-cf2249426ea4',NULL,'registration-password-action','39fcfef7-161c-4a8c-bb75-de91d0487b68','2aa6c377-d259-40f4-9af5-ed4ce8e84097',0,50,0,NULL,NULL),('0e3235ed-b79d-4508-b65a-2ad45652158a',NULL,'registration-user-creation','39fcfef7-161c-4a8c-bb75-de91d0487b68','2aa6c377-d259-40f4-9af5-ed4ce8e84097',0,20,0,NULL,NULL),('26f8d225-dc0c-44a1-92f7-071955e79a3f',NULL,'client-secret','39fcfef7-161c-4a8c-bb75-de91d0487b68','65704fb5-d51b-498b-8451-2bb879659876',2,10,0,NULL,NULL),('2b790f66-3218-4d0e-ae06-0df9e80c2670',NULL,'reset-credentials-choose-user','39fcfef7-161c-4a8c-bb75-de91d0487b68','85c05186-2090-444d-acd0-149e7dc71587',0,10,0,NULL,NULL),('2f785884-8ebf-40c3-81a4-9648502cc083',NULL,'reset-credential-email','39fcfef7-161c-4a8c-bb75-de91d0487b68','85c05186-2090-444d-acd0-149e7dc71587',0,20,0,NULL,NULL),('352e05da-847d-4b31-b9c6-adb9ff50f50f',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','8b7257c6-595e-4138-ac33-542134468a5c',2,20,1,'a5121206-e898-435b-ab1e-cf84eb3c40bf',NULL),('37419b56-9c86-4b3e-a4f7-2e4901408643',NULL,'auth-otp-form','39fcfef7-161c-4a8c-bb75-de91d0487b68','173458e6-d058-4aa8-b047-29314b3cba87',0,20,0,NULL,NULL),('3ab2a7d9-dda7-4281-802e-0c76878768af',NULL,'conditional-user-configured','39fcfef7-161c-4a8c-bb75-de91d0487b68','1732f80d-a5b9-4e8a-95eb-8fe3b87b08b7',0,10,0,NULL,NULL),('423a97a5-0018-4440-92e1-469575b5e069',NULL,'registration-page-form','39fcfef7-161c-4a8c-bb75-de91d0487b68','6df32743-b72e-414c-9d96-22300cb251af',0,10,1,'2aa6c377-d259-40f4-9af5-ed4ce8e84097',NULL),('541ef978-93aa-45d0-8fe5-98679f08b4f9',NULL,'direct-grant-validate-password','39fcfef7-161c-4a8c-bb75-de91d0487b68','d3c2dc70-72c0-4b55-84bc-7da2b4ee6753',0,20,0,NULL,NULL),('6bdda86d-665f-4d47-9923-32803308022d',NULL,'registration-recaptcha-action','39fcfef7-161c-4a8c-bb75-de91d0487b68','2aa6c377-d259-40f4-9af5-ed4ce8e84097',3,60,0,NULL,NULL),('716d2e7b-3382-4588-ba4f-98abad486bae',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','4f69516d-a96a-424f-b7b8-9b9cb3825c70',2,30,1,'3f2815ab-4105-4764-8855-2f580b54b0b1',NULL),('75f537f2-fbb9-45c6-b20b-9a0879a11111',NULL,'client-secret-jwt','39fcfef7-161c-4a8c-bb75-de91d0487b68','65704fb5-d51b-498b-8451-2bb879659876',2,30,0,NULL,NULL),('8db9677a-0d04-456e-b48f-47d202f0dd17',NULL,'reset-otp','39fcfef7-161c-4a8c-bb75-de91d0487b68','81a291a1-de3d-4123-b0df-ab2d50f321fa',0,20,0,NULL,NULL),('8f18ca05-6e52-4364-bc2b-675af284ea6e',NULL,'http-basic-authenticator','39fcfef7-161c-4a8c-bb75-de91d0487b68','a421a875-b5b0-4601-a275-6045c8c0e60d',0,10,0,NULL,NULL),('96da2bf8-84bb-4029-aa61-18bc64b51534',NULL,'conditional-user-configured','39fcfef7-161c-4a8c-bb75-de91d0487b68','81a291a1-de3d-4123-b0df-ab2d50f321fa',0,10,0,NULL,NULL),('9706125b-7152-4b29-be09-c92f1f820a17',NULL,'idp-create-user-if-unique','39fcfef7-161c-4a8c-bb75-de91d0487b68','d7eba282-bf80-4a57-8587-97c8c7ea9497',2,10,0,NULL,'bae6000a-0aec-48ae-8324-800f368d75ed'),('9ec7e762-3059-48dc-a73c-33888eb25f25',NULL,'idp-email-verification','39fcfef7-161c-4a8c-bb75-de91d0487b68','8b7257c6-595e-4138-ac33-542134468a5c',2,10,0,NULL,NULL),('a376e36a-52f8-45c1-88e3-d07e84aeae91',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','f8cc4cfd-f200-4fb5-99fb-821b3dc217aa',0,20,1,'8b7257c6-595e-4138-ac33-542134468a5c',NULL),('a4567e69-0959-4c1f-ae49-e6da23451086',NULL,'reset-password','39fcfef7-161c-4a8c-bb75-de91d0487b68','85c05186-2090-444d-acd0-149e7dc71587',0,30,0,NULL,NULL),('a5ab3f27-5e7b-4d5d-adbf-77be8c3b1f09',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','d3c2dc70-72c0-4b55-84bc-7da2b4ee6753',1,30,1,'1732f80d-a5b9-4e8a-95eb-8fe3b87b08b7',NULL),('ae96a210-010e-4315-bae8-8d6672023556',NULL,'registration-terms-and-conditions','39fcfef7-161c-4a8c-bb75-de91d0487b68','2aa6c377-d259-40f4-9af5-ed4ce8e84097',3,70,0,NULL,NULL),('aec7a7e4-f461-4d4d-9be8-68b8f9b5caaa',NULL,'auth-spnego','39fcfef7-161c-4a8c-bb75-de91d0487b68','4f69516d-a96a-424f-b7b8-9b9cb3825c70',3,20,0,NULL,NULL),('b031aa2a-e1ec-4a5b-b847-4298c1d1238e',NULL,'client-x509','39fcfef7-161c-4a8c-bb75-de91d0487b68','65704fb5-d51b-498b-8451-2bb879659876',2,40,0,NULL,NULL),('b0da549d-6e84-49e9-afaf-49cdf3147e00',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','a5121206-e898-435b-ab1e-cf84eb3c40bf',1,20,1,'0f2a3cf2-ce97-494b-963a-fb9c142675d3',NULL),('b8639720-d607-4f02-801a-dbe33749c9a7',NULL,'docker-http-basic-authenticator','39fcfef7-161c-4a8c-bb75-de91d0487b68','97aa9e0a-181e-45dd-8924-40d113efe131',0,10,0,NULL,NULL),('bde552b5-0a77-4ed6-9f99-da8ae0360238',NULL,'direct-grant-validate-username','39fcfef7-161c-4a8c-bb75-de91d0487b68','d3c2dc70-72c0-4b55-84bc-7da2b4ee6753',0,10,0,NULL,NULL),('bfdc4189-efb1-485f-bc8a-bec4e8326463',NULL,'idp-confirm-link','39fcfef7-161c-4a8c-bb75-de91d0487b68','f8cc4cfd-f200-4fb5-99fb-821b3dc217aa',0,10,0,NULL,NULL),('cbcb57fa-e46b-4ddb-9d35-2385b5d13180',NULL,'direct-grant-validate-otp','39fcfef7-161c-4a8c-bb75-de91d0487b68','1732f80d-a5b9-4e8a-95eb-8fe3b87b08b7',0,20,0,NULL,NULL),('d03ea348-c3ba-44cb-825c-030124de94ac',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','d7eba282-bf80-4a57-8587-97c8c7ea9497',2,20,1,'f8cc4cfd-f200-4fb5-99fb-821b3dc217aa',NULL),('d28e8a4e-029a-406c-85bc-14d04f4c0e3b',NULL,'identity-provider-redirector','39fcfef7-161c-4a8c-bb75-de91d0487b68','4f69516d-a96a-424f-b7b8-9b9cb3825c70',2,25,0,NULL,NULL),('da494242-bb7f-48b0-8fdc-ea1400862d1a',NULL,'conditional-user-configured','39fcfef7-161c-4a8c-bb75-de91d0487b68','0f2a3cf2-ce97-494b-963a-fb9c142675d3',0,10,0,NULL,NULL),('e0b47d7f-7c46-4fe8-8fc3-ee9a5dfc6450',NULL,'auth-cookie','39fcfef7-161c-4a8c-bb75-de91d0487b68','4f69516d-a96a-424f-b7b8-9b9cb3825c70',2,10,0,NULL,NULL),('e0b78d81-47cd-4154-bfcb-c6a6fa9df0ce',NULL,'idp-review-profile','39fcfef7-161c-4a8c-bb75-de91d0487b68','da017dd8-ea0f-4242-9b79-23a2be37bb49',0,10,0,NULL,'7ffc8a85-dd96-4bbd-ba9a-3d5e076b9219'),('e3b531db-865d-49d8-9dde-3ead7c519b61',NULL,'idp-username-password-form','39fcfef7-161c-4a8c-bb75-de91d0487b68','a5121206-e898-435b-ab1e-cf84eb3c40bf',0,10,0,NULL,NULL),('e5ff4f8f-d939-44fc-ae34-7e6f9db145a3',NULL,'auth-username-password-form','39fcfef7-161c-4a8c-bb75-de91d0487b68','3f2815ab-4105-4764-8855-2f580b54b0b1',0,10,0,NULL,NULL),('e903a6d3-9f47-4c21-8d16-4f3b2ff356a1',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','3f2815ab-4105-4764-8855-2f580b54b0b1',1,20,1,'173458e6-d058-4aa8-b047-29314b3cba87',NULL),('ee92bff2-0430-4508-b29e-0b553af00617',NULL,'client-jwt','39fcfef7-161c-4a8c-bb75-de91d0487b68','65704fb5-d51b-498b-8451-2bb879659876',2,20,0,NULL,NULL),('f2fe397d-a38e-45e9-917c-8e605b9f94e1',NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','85c05186-2090-444d-acd0-149e7dc71587',1,40,1,'81a291a1-de3d-4123-b0df-ab2d50f321fa',NULL),('f6fa3f85-aaf1-44c5-8625-cbdeec04a929',NULL,'conditional-user-configured','39fcfef7-161c-4a8c-bb75-de91d0487b68','173458e6-d058-4aa8-b047-29314b3cba87',0,10,0,NULL,NULL),('ff7749ff-110d-4dff-a553-bfcffe809bd1',NULL,'auth-otp-form','39fcfef7-161c-4a8c-bb75-de91d0487b68','0f2a3cf2-ce97-494b-963a-fb9c142675d3',0,20,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0f2a3cf2-ce97-494b-963a-fb9c142675d3','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('1732f80d-a5b9-4e8a-95eb-8fe3b87b08b7','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('173458e6-d058-4aa8-b047-29314b3cba87','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('2aa6c377-d259-40f4-9af5-ed4ce8e84097','registration form','registration form','39fcfef7-161c-4a8c-bb75-de91d0487b68','form-flow',0,1),('3f2815ab-4105-4764-8855-2f580b54b0b1','forms','Username, password, otp and other auth forms.','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('4f69516d-a96a-424f-b7b8-9b9cb3825c70','browser','browser based authentication','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('65704fb5-d51b-498b-8451-2bb879659876','clients','Base authentication for clients','39fcfef7-161c-4a8c-bb75-de91d0487b68','client-flow',1,1),('6df32743-b72e-414c-9d96-22300cb251af','registration','registration flow','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('81a291a1-de3d-4123-b0df-ab2d50f321fa','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('85c05186-2090-444d-acd0-149e7dc71587','reset credentials','Reset credentials for a user if they forgot their password or something','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('8b7257c6-595e-4138-ac33-542134468a5c','Account verification options','Method with which to verity the existing account','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('97aa9e0a-181e-45dd-8924-40d113efe131','docker auth','Used by Docker clients to authenticate against the IDP','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('a421a875-b5b0-4601-a275-6045c8c0e60d','saml ecp','SAML ECP Profile Authentication Flow','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('a5121206-e898-435b-ab1e-cf84eb3c40bf','Verify Existing Account by Re-authentication','Reauthentication of existing account','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('d3c2dc70-72c0-4b55-84bc-7da2b4ee6753','direct grant','OpenID Connect Resource Owner Grant','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('d7eba282-bf80-4a57-8587-97c8c7ea9497','User creation or linking','Flow for the existing/non-existing user alternatives','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1),('da017dd8-ea0f-4242-9b79-23a2be37bb49','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',1,1),('f8cc4cfd-f200-4fb5-99fb-821b3dc217aa','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','39fcfef7-161c-4a8c-bb75-de91d0487b68','basic-flow',0,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('7ffc8a85-dd96-4bbd-ba9a-3d5e076b9219','review profile config','39fcfef7-161c-4a8c-bb75-de91d0487b68'),('bae6000a-0aec-48ae-8324-800f368d75ed','create unique user config','39fcfef7-161c-4a8c-bb75-de91d0487b68');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('7ffc8a85-dd96-4bbd-ba9a-3d5e076b9219','missing','update.profile.on.first.login'),('bae6000a-0aec-48ae-8324-800f368d75ed','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('2a613451-afba-46e2-8217-2d870d815872',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('34ca0108-40ac-455c-af78-fc8c3d5a84e7',1,0,'_platform-console',0,1,'dummy',NULL,0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('54722643-08d7-404a-9263-44c7df3bc70c',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('91419cfd-2608-42e3-b4d7-d99b465d03d7',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac',1,1,'_platform',0,0,'dummy',NULL,0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('da3be843-bd63-41d0-a98b-fab3299f3fd8',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'39fcfef7-161c-4a8c-bb75-de91d0487b68','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('2a613451-afba-46e2-8217-2d870d815872','pkce.code.challenge.method','S256'),('2a613451-afba-46e2-8217-2d870d815872','post.logout.redirect.uris','+'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','backchannel.logout.revoke.offline.tokens','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','backchannel.logout.session.required','true'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','client.secret.creation.time','1713483000'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','client_credentials.use_refresh_token','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','display.on.consent.screen','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','exclude.session.state.from.auth.response','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','id.token.as.detached.signature','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','oauth2.device.authorization.grant.enabled','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','oidc.ciba.grant.enabled','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','post.logout.redirect.uris','/*'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','require.pushed.authorization.requests','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.artifact.binding','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.assertion.signature','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.authnstatement','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.client.signature','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.encrypt','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.force.post.binding','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.multivalued.roles','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.onetimeuse.condition','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.server.signature','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml.server.signature.keyinfo.ext','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','saml_force_name_id_format','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','tls.client.certificate.bound.access.tokens','false'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','use.refresh.tokens','true'),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','pkce.code.challenge.method','S256'),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','post.logout.redirect.uris','+'),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','post.logout.redirect.uris','+'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','access.token.lifespan','86400'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','acr.loa.map','{}'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','backchannel.logout.revoke.offline.tokens','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','backchannel.logout.session.required','true'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','client.session.idle.timeout','86400'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','client.session.max.lifespan','86400'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','client_credentials.use_refresh_token','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','display.on.consent.screen','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','exclude.session.state.from.auth.response','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','frontchannel.logout.session.required','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','id.token.as.detached.signature','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','oauth2.device.authorization.grant.enabled','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','oidc.ciba.grant.enabled','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','require.pushed.authorization.requests','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.allow.ecp.flow','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.artifact.binding','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.assertion.signature','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.authnstatement','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.client.signature','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.encrypt','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.force.post.binding','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.multivalued.roles','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.onetimeuse.condition','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.server.signature','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml.server.signature.keyinfo.ext','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','saml_force_name_id_format','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','tls.client.certificate.bound.access.tokens','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','token.response.type.bearer.lower-case','false'),('91419cfd-2608-42e3-b4d7-d99b465d03d7','use.refresh.tokens','true'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','backchannel.logout.revoke.offline.tokens','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','backchannel.logout.session.required','true'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','client.secret.creation.time','1713482997'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','client_credentials.use_refresh_token','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','display.on.consent.screen','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','exclude.session.state.from.auth.response','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','id.token.as.detached.signature','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','oauth2.device.authorization.grant.enabled','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','oidc.ciba.grant.enabled','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','require.pushed.authorization.requests','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.artifact.binding','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.assertion.signature','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.authnstatement','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.client.signature','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.encrypt','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.force.post.binding','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.multivalued.roles','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.onetimeuse.condition','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.server.signature','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml.server.signature.keyinfo.ext','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','saml_force_name_id_format','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','tls.client.certificate.bound.access.tokens','false'),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('0ed6d187-bdd1-4260-aa73-9d3afd34dfc5','profile','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect built-in scope: profile','openid-connect'),('531421ed-4434-4cd9-a56b-42828383f176','web-origins','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('5fb8f78d-eb44-4e7f-8c6e-ef2608b2ff5a','role_list','39fcfef7-161c-4a8c-bb75-de91d0487b68','SAML role list','saml'),('60707093-68cd-492d-87eb-d716e303001c','microprofile-jwt','39fcfef7-161c-4a8c-bb75-de91d0487b68','Microprofile - JWT built-in scope','openid-connect'),('8f3b6c47-b4e1-4057-99be-162b88e353b7','phone','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect built-in scope: phone','openid-connect'),('9f3620a9-6e05-4a96-9fc1-122811b9d571','acr','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('a338649f-5223-4404-a76b-34dbc3e12fd4','offline_access','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect built-in scope: offline_access','openid-connect'),('beb90740-2669-47da-8992-6ed98d9014c9','roles','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect scope for add user roles to the access token','openid-connect'),('da02c185-3c94-40a0-87db-be48bcad13e1','address','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect built-in scope: address','openid-connect'),('f5bc233f-ef40-40f3-8b7c-48d56bb0885b','email','39fcfef7-161c-4a8c-bb75-de91d0487b68','OpenID Connect built-in scope: email','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('0ed6d187-bdd1-4260-aa73-9d3afd34dfc5','${profileScopeConsentText}','consent.screen.text'),('0ed6d187-bdd1-4260-aa73-9d3afd34dfc5','true','display.on.consent.screen'),('0ed6d187-bdd1-4260-aa73-9d3afd34dfc5','true','include.in.token.scope'),('531421ed-4434-4cd9-a56b-42828383f176','','consent.screen.text'),('531421ed-4434-4cd9-a56b-42828383f176','false','display.on.consent.screen'),('531421ed-4434-4cd9-a56b-42828383f176','false','include.in.token.scope'),('5fb8f78d-eb44-4e7f-8c6e-ef2608b2ff5a','${samlRoleListScopeConsentText}','consent.screen.text'),('5fb8f78d-eb44-4e7f-8c6e-ef2608b2ff5a','true','display.on.consent.screen'),('60707093-68cd-492d-87eb-d716e303001c','false','display.on.consent.screen'),('60707093-68cd-492d-87eb-d716e303001c','true','include.in.token.scope'),('8f3b6c47-b4e1-4057-99be-162b88e353b7','${phoneScopeConsentText}','consent.screen.text'),('8f3b6c47-b4e1-4057-99be-162b88e353b7','true','display.on.consent.screen'),('8f3b6c47-b4e1-4057-99be-162b88e353b7','true','include.in.token.scope'),('9f3620a9-6e05-4a96-9fc1-122811b9d571','false','display.on.consent.screen'),('9f3620a9-6e05-4a96-9fc1-122811b9d571','false','include.in.token.scope'),('a338649f-5223-4404-a76b-34dbc3e12fd4','${offlineAccessScopeConsentText}','consent.screen.text'),('a338649f-5223-4404-a76b-34dbc3e12fd4','true','display.on.consent.screen'),('beb90740-2669-47da-8992-6ed98d9014c9','${rolesScopeConsentText}','consent.screen.text'),('beb90740-2669-47da-8992-6ed98d9014c9','true','display.on.consent.screen'),('beb90740-2669-47da-8992-6ed98d9014c9','false','include.in.token.scope'),('da02c185-3c94-40a0-87db-be48bcad13e1','${addressScopeConsentText}','consent.screen.text'),('da02c185-3c94-40a0-87db-be48bcad13e1','true','display.on.consent.screen'),('da02c185-3c94-40a0-87db-be48bcad13e1','true','include.in.token.scope'),('f5bc233f-ef40-40f3-8b7c-48d56bb0885b','${emailScopeConsentText}','consent.screen.text'),('f5bc233f-ef40-40f3-8b7c-48d56bb0885b','true','display.on.consent.screen'),('f5bc233f-ef40-40f3-8b7c-48d56bb0885b','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('2a613451-afba-46e2-8217-2d870d815872','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('2a613451-afba-46e2-8217-2d870d815872','531421ed-4434-4cd9-a56b-42828383f176',1),('2a613451-afba-46e2-8217-2d870d815872','60707093-68cd-492d-87eb-d716e303001c',0),('2a613451-afba-46e2-8217-2d870d815872','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('2a613451-afba-46e2-8217-2d870d815872','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('2a613451-afba-46e2-8217-2d870d815872','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('2a613451-afba-46e2-8217-2d870d815872','beb90740-2669-47da-8992-6ed98d9014c9',1),('2a613451-afba-46e2-8217-2d870d815872','da02c185-3c94-40a0-87db-be48bcad13e1',0),('2a613451-afba-46e2-8217-2d870d815872','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','531421ed-4434-4cd9-a56b-42828383f176',1),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','60707093-68cd-492d-87eb-d716e303001c',0),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','beb90740-2669-47da-8992-6ed98d9014c9',1),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','da02c185-3c94-40a0-87db-be48bcad13e1',0),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','531421ed-4434-4cd9-a56b-42828383f176',1),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','60707093-68cd-492d-87eb-d716e303001c',0),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','beb90740-2669-47da-8992-6ed98d9014c9',1),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','da02c185-3c94-40a0-87db-be48bcad13e1',0),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('54722643-08d7-404a-9263-44c7df3bc70c','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('54722643-08d7-404a-9263-44c7df3bc70c','531421ed-4434-4cd9-a56b-42828383f176',1),('54722643-08d7-404a-9263-44c7df3bc70c','60707093-68cd-492d-87eb-d716e303001c',0),('54722643-08d7-404a-9263-44c7df3bc70c','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('54722643-08d7-404a-9263-44c7df3bc70c','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('54722643-08d7-404a-9263-44c7df3bc70c','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('54722643-08d7-404a-9263-44c7df3bc70c','beb90740-2669-47da-8992-6ed98d9014c9',1),('54722643-08d7-404a-9263-44c7df3bc70c','da02c185-3c94-40a0-87db-be48bcad13e1',0),('54722643-08d7-404a-9263-44c7df3bc70c','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','531421ed-4434-4cd9-a56b-42828383f176',1),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','60707093-68cd-492d-87eb-d716e303001c',0),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','beb90740-2669-47da-8992-6ed98d9014c9',1),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','da02c185-3c94-40a0-87db-be48bcad13e1',0),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('91419cfd-2608-42e3-b4d7-d99b465d03d7','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('91419cfd-2608-42e3-b4d7-d99b465d03d7','531421ed-4434-4cd9-a56b-42828383f176',1),('91419cfd-2608-42e3-b4d7-d99b465d03d7','60707093-68cd-492d-87eb-d716e303001c',0),('91419cfd-2608-42e3-b4d7-d99b465d03d7','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('91419cfd-2608-42e3-b4d7-d99b465d03d7','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('91419cfd-2608-42e3-b4d7-d99b465d03d7','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('91419cfd-2608-42e3-b4d7-d99b465d03d7','beb90740-2669-47da-8992-6ed98d9014c9',1),('91419cfd-2608-42e3-b4d7-d99b465d03d7','da02c185-3c94-40a0-87db-be48bcad13e1',0),('91419cfd-2608-42e3-b4d7-d99b465d03d7','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','531421ed-4434-4cd9-a56b-42828383f176',1),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','60707093-68cd-492d-87eb-d716e303001c',0),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','beb90740-2669-47da-8992-6ed98d9014c9',1),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','da02c185-3c94-40a0-87db-be48bcad13e1',0),('94f2dd11-8fad-4ad2-9747-4d3cfd8993ac','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','531421ed-4434-4cd9-a56b-42828383f176',1),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','60707093-68cd-492d-87eb-d716e303001c',0),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','beb90740-2669-47da-8992-6ed98d9014c9',1),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','da02c185-3c94-40a0-87db-be48bcad13e1',0),('d14af5d1-faf2-4864-aaa7-b83f77e1f277','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1),('da3be843-bd63-41d0-a98b-fab3299f3fd8','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('da3be843-bd63-41d0-a98b-fab3299f3fd8','531421ed-4434-4cd9-a56b-42828383f176',1),('da3be843-bd63-41d0-a98b-fab3299f3fd8','60707093-68cd-492d-87eb-d716e303001c',0),('da3be843-bd63-41d0-a98b-fab3299f3fd8','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('da3be843-bd63-41d0-a98b-fab3299f3fd8','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('da3be843-bd63-41d0-a98b-fab3299f3fd8','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('da3be843-bd63-41d0-a98b-fab3299f3fd8','beb90740-2669-47da-8992-6ed98d9014c9',1),('da3be843-bd63-41d0-a98b-fab3299f3fd8','da02c185-3c94-40a0-87db-be48bcad13e1',0),('da3be843-bd63-41d0-a98b-fab3299f3fd8','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('a338649f-5223-4404-a76b-34dbc3e12fd4','aa0271c9-89b9-419c-9731-6994f8eb462a');
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
INSERT INTO `COMPONENT` VALUES ('0a1dfe45-f081-484b-90fb-cb2bffc00652','Allowed Client Scopes','39fcfef7-161c-4a8c-bb75-de91d0487b68','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','anonymous'),('17a2c2e9-f2a1-4aa8-848a-6bbfcf88489d','Full Scope Disabled','39fcfef7-161c-4a8c-bb75-de91d0487b68','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','anonymous'),('5ef2b567-b0ab-4a91-bfa0-d5f08df03909','hmac-generated-hs512','39fcfef7-161c-4a8c-bb75-de91d0487b68','hmac-generated','org.keycloak.keys.KeyProvider','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL),('60f16c6b-9865-41c9-9def-f31fa8bc5c4b','Consent Required','39fcfef7-161c-4a8c-bb75-de91d0487b68','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','anonymous'),('65a59f40-64f7-4af8-b2e0-fd04fc064be4','rsa-generated','39fcfef7-161c-4a8c-bb75-de91d0487b68','rsa-generated','org.keycloak.keys.KeyProvider','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL),('68c39b7d-d57f-4742-a66c-79b6a96892ec','Allowed Client Scopes','39fcfef7-161c-4a8c-bb75-de91d0487b68','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','authenticated'),('6eddb446-b37b-453a-a7c1-d2447189be94','Allowed Protocol Mapper Types','39fcfef7-161c-4a8c-bb75-de91d0487b68','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','authenticated'),('9db5e0c6-3e4d-43ae-b629-9782dfb2d916','Allowed Protocol Mapper Types','39fcfef7-161c-4a8c-bb75-de91d0487b68','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','anonymous'),('a5523b73-8b72-41d0-9d32-e0e8d9432341','aes-generated','39fcfef7-161c-4a8c-bb75-de91d0487b68','aes-generated','org.keycloak.keys.KeyProvider','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL),('d5a861d8-9f2b-479b-9172-621fdadcf25f','Max Clients Limit','39fcfef7-161c-4a8c-bb75-de91d0487b68','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','anonymous'),('df010804-b2dd-485a-8880-b468847d2ecf','rsa-enc-generated','39fcfef7-161c-4a8c-bb75-de91d0487b68','rsa-enc-generated','org.keycloak.keys.KeyProvider','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL),('e3f77193-d90b-4e97-a30d-81474e3f80f1','Trusted Hosts','39fcfef7-161c-4a8c-bb75-de91d0487b68','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','anonymous'),('f6701cee-5f0a-40e1-b203-1e1516449a7c',NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0452fdbe-5091-4b84-8021-e47488692293','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('2af09c73-932e-4e74-9958-6c3f6fccc6fd','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('2bb2936f-7000-4a39-b8e0-7806752e128a','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','saml-user-property-mapper'),('2f0121b9-cf53-452e-9062-34cf57f9dace','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','oidc-full-name-mapper'),('3bba0644-40ec-48d6-8e45-b7dd3e10751f','5ef2b567-b0ab-4a91-bfa0-d5f08df03909','kid','7263bdb8-90fb-4f0d-8d29-5a1a3495cd8d'),('3ef190e4-1a12-401a-8f20-e40f4d9d2a10','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','oidc-full-name-mapper'),('3efde5ea-9332-450d-ba4c-2a7a854f0080','e3f77193-d90b-4e97-a30d-81474e3f80f1','client-uris-must-match','true'),('3f9c5478-43d3-4f16-b16f-b4246715322b','df010804-b2dd-485a-8880-b468847d2ecf','keyUse','ENC'),('44d5aedb-596b-4b4f-bff5-d8a1dbe064d6','68c39b7d-d57f-4742-a66c-79b6a96892ec','allow-default-scopes','true'),('4a740b51-e9f8-4813-a1dd-a86b72cf3c71','a5523b73-8b72-41d0-9d32-e0e8d9432341','priority','100'),('4c2b5990-1620-4575-8ed7-9dc47a33138f','65a59f40-64f7-4af8-b2e0-fd04fc064be4','keyUse','SIG'),('4d369e2b-b8ca-45f6-bc7b-9356626d6b67','5ef2b567-b0ab-4a91-bfa0-d5f08df03909','secret','Dj7nTE2PagJ7V6FprvR7CzwQk8F4JFgkruzIXYom9j10h0DNfu5dJI7jeFBnZ1tU0XmsD2kMfKQIA6gKIKYrpXb0ZCG4XX0w78tRVZI8SKR8ymFQYzXoqlra_IBYwSuU9TXx2Riuw6MVoy61OPgOaOjemsxa4s_ZsnORzZOpoSc'),('5fc66f00-2591-46ae-806d-3adb1b20bfe5','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('71dc7292-fa87-4b7f-a1c8-ed61c9a0d47c','a5523b73-8b72-41d0-9d32-e0e8d9432341','kid','d6600d39-93f2-42d4-b58f-ab74628b7792'),('74243021-86dd-4d1a-9751-b0dbafc90f56','e3f77193-d90b-4e97-a30d-81474e3f80f1','host-sending-registration-request-must-match','true'),('7516f074-d221-4303-a147-d497bb0499c3','0a1dfe45-f081-484b-90fb-cb2bffc00652','allow-default-scopes','true'),('79bdd04b-e1a3-4143-82c9-a74d54077d5f','5ef2b567-b0ab-4a91-bfa0-d5f08df03909','priority','100'),('7a18c3aa-1efd-4fcc-824f-660e7c0af7fd','f6701cee-5f0a-40e1-b203-1e1516449a7c','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('7c536784-6511-4022-a990-f01a70ee90ce','a5523b73-8b72-41d0-9d32-e0e8d9432341','secret','wleGyovdvdZgmJ_ivAAexw'),('8133b110-5c46-43ed-a33d-c4ad8beb50b1','d5a861d8-9f2b-479b-9172-621fdadcf25f','max-clients','200'),('859aca56-79cf-4cd8-bd89-3831e146eb40','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('8a115518-7f67-45e0-a111-28f2111ef731','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','saml-user-property-mapper'),('8af19a5e-1d14-407d-9d1c-55ee56bfe507','5ef2b567-b0ab-4a91-bfa0-d5f08df03909','algorithm','HS512'),('8af47d3d-065a-40b6-acd1-bf4104dc6f98','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8da67d25-81f2-4687-aeb2-886273449cf6','65a59f40-64f7-4af8-b2e0-fd04fc064be4','privateKey','MIIEogIBAAKCAQEA0gl5U56MXwFyVp4/MBmDhs9KEDY5vdwVS92Bk3IjDEjZlIKskxBuUENjbqsKTbgpgI2SuSxgu1IOmMfRuA5cXHD4WKuC5hKWKETBtMoSParF76Ag9K9Bo3r2gSijDD9pfAmSIHTptPajM4mQ6qHKc1vhnpDHrpvSsXwxpp1oJXzcK4ZCQOK7UmuWZHnOW4kbNzGxiZr+quFdoCkdfOjNrNmCytqK917ZILInKc+HL5J2yMEAgNvxAMjk32cg+h6qmJi37P40bO4Xne1iLUv6zoN7dyNbBwzzhecbxpCjaVbSAK91XSovnMSBRr2X7YvPcj6g1ZhUxyOMlt5sA96mAQIDAQABAoIBAANQnPaXOQCYMEAdDULqvtWrgzAQUFxREzui9P7pEpPeDnkL5Zdd71pwRdXNo0L+FhbuT74rwiG9YMzufRPaPiuYqNgVajfMBqH/ZniTpogMoEUbkjQ/voR1q1r3KOOc7e2Zj7yCu9wxoaUYQGOY8W4H/t6WywqpcOuA2fPBkOQ5NeoX6NBKfz+L2bOH7c2HZyi6TY7RZVKXG04x5Plaobc7xR2JBW9i+8XWEKyZXe2PL9xp6hqBwKesr4AQytai8InenMpuYxEfkJ9UgTLAWuvdg7L+ZXyHAsbi2877RiP7+NDdCtWcxiLDPJadoES34Aro0po3qpjbJ652BUeznPECgYEA+uNgS7uihVcJ10zGuDpmC/sTbzJV5anhPTfjBY/w8u7BHFY8FJJWEOBPXLpWDnD0VAlmCj7KagVvlX5T05wZKwS6zx54Id/Z6yX4+XMosbxy1TyRq3EwK30eVi86srQaVFsma4pqDjJ4Pb4g+99xGaGcUEMbJ9eOmmh/G2+4CoUCgYEA1lEE/FQWAIK9wY5DIfqO4f32lotW4g/TrzldJuEaZ6/zMEJsuMoTogQJEY0/QrmOhYRsPdjVQvpbaW21RmnfwI2PNIgbRpC3q7X2wNtp55UiKi/SAArj91UwDlBdVco/A+qKhAKIbBxTMIMyNlQxyYDjnHaJg5jvUPyytGQUTE0CgYBnYlcGHjXkeG9ntw2UUQxIF5h0k+ttjklwrpzwZ9ZEZTpScP6lA4BPx/8sGOTpYoZsMstHoYRLmB3ZHotwgbylS3enbcjXPKVSDv2/3UKBq0QutpzYZvYQlahwn1my1iCbbkwwuILngsiluLli0TqL81q0gFKqYlszKahnJ+xQ+QKBgHlB7eg2SxyO3H4e16zp7t2+qz4SKF5PRh3l/uZ4hlAUJSww6QLEkscgMWFU4W4HPrQccIGtpTv4GrBT+jSUwpxXe6blO0l5p/HnSm1jt0/n+SSVWePcRY8zC7WNksFvZKf6k9SM+lLw08Cm+kny6RhxbFaiWruyU/UmhJW76iAhAoGAUp8RHRpx+6I8XnjtnA9pBnr8ObOSei2Uzo7Tn5bktu6/TjdLcXgLCufNMM3e9xkBrPwnUARnOiwVGZLVlwtK8gkmTEc4MJWkO0so2mzaOF49RKw58Swh/JtjwXpGVBSQLdqeODpxjTpK0MKKSlA8GYy/DBj3vwpQv99jTtfKmzk='),('990f70ab-3255-41e8-be71-14b337dfb81e','65a59f40-64f7-4af8-b2e0-fd04fc064be4','priority','100'),('9b623f73-fea9-48c0-a475-41ef04c4e050','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','saml-role-list-mapper'),('b29aa535-7c58-439b-9a97-14503699957a','df010804-b2dd-485a-8880-b468847d2ecf','certificate','MIICmzCCAYMCBgGO84t83TANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNDE4MjMyODA4WhcNMzQwNDE4MjMyOTQ4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDETtw1D0OhhxwvwfDdQOv4jYeTDM7tpREPqQuJW6JlkMyn/c0jlhTvZJaokP+T3AEs4i1xk7FhpYyVIzvg+UKLDMVagu8V7brVr9OpdGqfSjSA2DgOhWLrnLhYnbz0tG8V4KaGJDTow65F8fDTEIWb87UGyzJ/SZJflNWxXXJca/Dk4djItZ16ax0RkfmLp+3cISv2cxoet+LgHm6A47WMmn2wyllzaOWiESzys7tWmaFmUFVS+FESk3NjYFQRpg/2qqMMfNCRcWj2CpuaJnB5xdW9PGvTdsPItBvB3gF2a6qzMz4yEDyAGZQ5WIg6IYGFH3O93Dc2lpG+X2J0zEXFAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGwPs2V2UOxSgBCSL+9RhRbMetKMxKoxW+AwTCQDOvhZMDXdxN7Mg5oGfWo2j8Rqe3loLfLfvzAyRvSB+/ZxFY3plQTpG9xyCuAq2UA+J1uRLYLxCD9Z6A4YwknIiLVVeAr1+jAQDPjYM2tJvsV8W544K3r8Sgq2gP2CWE8pRBYqKZlpTOujTJaMPAgdO6eVgxbHtCoj4dq++dG+EjDd4+iYZtI+ESbIzr9C7uEKht9WLqR75C5LNhKno34c565wPchvQvBMd5pNGdppSELlZxsRAl500wfS33+oSPfs7WYwOR3p3T8iP2xFrfkFmfwwirvoINcYDrzj+8Uz0Jx8PhI='),('c1ea5b5c-9c2d-4874-a086-8c9eb0cbdfe5','df010804-b2dd-485a-8880-b468847d2ecf','privateKey','MIIEpQIBAAKCAQEAxE7cNQ9DoYccL8Hw3UDr+I2HkwzO7aURD6kLiVuiZZDMp/3NI5YU72SWqJD/k9wBLOItcZOxYaWMlSM74PlCiwzFWoLvFe261a/TqXRqn0o0gNg4DoVi65y4WJ289LRvFeCmhiQ06MOuRfHw0xCFm/O1Bssyf0mSX5TVsV1yXGvw5OHYyLWdemsdEZH5i6ft3CEr9nMaHrfi4B5ugOO1jJp9sMpZc2jlohEs8rO7VpmhZlBVUvhREpNzY2BUEaYP9qqjDHzQkXFo9gqbmiZwecXVvTxr03bDyLQbwd4BdmuqszM+MhA8gBmUOViIOiGBhR9zvdw3NpaRvl9idMxFxQIDAQABAoIBABsU+w2p361sz49qHNHVR0iYs9uuUGzaER69Nj16og6LeaRyX+bZKWW2VY+HQ28RUqsvv8+zray4M0sO24+nq4210xMvzY6Tp6sbsOJnkF8N1GzzB1a/gZxaGFeHWV5T9yBISAjo/VCgUE5PeKcRmDEh37dCeKK1Umdzx8BKkUCdGLKuLgS+8MMZMhDU4vgkpA3GBDAaO9gmebKK+NDAPmKTZIpsYi1dOe0ZJ+ZLp0/9j9WrHF/bUGCDqn+KLHwEJsKfWsz37lFnKevVzOyetks2lXo9+eQMUaAFh72chuRtTkc7BdwLj52FzMZBDQxnGaz2v29qHbvXwQ8vmQElIFECgYEA5v4sNMidNF6nYcE8BUGce7GAB5iA1w4bOu8NibOzisEKY8V7zxx4IQz3Ukna0JtEf2HobIsiQu3tLt5oJXwY0U6pBGoppmPkJRbg5fsd/OfXhP0BYdpHWdLhOtvEzK7dnID9hZYYjaJUE9Zs61SZpTTn2pWlB6JC0Nhyxf1H1FECgYEA2Y9rOyrb1pQ1lJB9trQ4us2bUUGrVdHO2uv1HS8R/nlCKW05RfISfVHCYhNqSAgXEKO/jI+G7/xe4tImfzuvKGvnumMw1QpZoZfjfSK97f9pvaH/uuk7JTscx4n9h0ot1E5GexnM1qOStfL7tyGnFubTN/K/uqmHMmug9pJJATUCgYEA3tgM26tChfhe8F7UQZnnlilKg4lrmo0gVf2ziMoVhuHu3QvzAn7Loc75dqiLcb6pGV7iNH0Rw5H3xMSJosgSxTJmujyVC9HIksN8mkJlzsv3znOq9rT3Kr/Xy8mjFXgJkeebLVn9O/6DsFOn5mxKgegFWYoOmMvAO+zk5P8RYdECgYEAi+q0p+S0ZZgDrXwPnYTiRyEcFnIJYrQAOMMvbIltJR+O8V2RS+6W/YmrXa/m1lR9oPHuqtNTkNvZmj5VC9aym2hqK3DHYvu5ETfB0iSZyYpN0utwsCB3LUaLB7kzF+MY/kUpBtpc5l1kaSfPwsMd1pi0lnLD46RLkp2tc2Y5FVECgYEAm1OZW5Yf7vACxWAInqvQuNpXtOSOWIAn5deF+GyNtY/cWkjjdci+EPZdXp94ZAithWgmwY/LPtEPS+M4xeRjCwMXY/sRKOyQnDOtgCK5GAMTrWVF1pfJ93u7pYJhVnpJFb2ie9m1iYtD+1EP79Yn+9KG5tpk8lnD9HOOFgqxm+o='),('c9cd3357-be94-4797-8323-58d889a7e376','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','oidc-address-mapper'),('d2c3bcc3-1049-4f91-8fa9-f29545fffcde','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d7809eb8-28b6-4127-8962-71d5394ecba4','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','saml-role-list-mapper'),('d96b8f7a-d12d-4352-b3b3-ac0ccd3f5582','9db5e0c6-3e4d-43ae-b629-9782dfb2d916','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('dc2467d3-73a4-46e1-8b1d-17103ca82d93','df010804-b2dd-485a-8880-b468847d2ecf','algorithm','RSA-OAEP'),('e0ed12f6-31fb-41c1-bc6d-0396a26bbe7f','df010804-b2dd-485a-8880-b468847d2ecf','priority','100'),('ee4771fb-9e56-4899-a096-f1d545acb8a0','65a59f40-64f7-4af8-b2e0-fd04fc064be4','certificate','MIICmzCCAYMCBgGO84t61TANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNDE4MjMyODA4WhcNMzQwNDE4MjMyOTQ4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDSCXlTnoxfAXJWnj8wGYOGz0oQNjm93BVL3YGTciMMSNmUgqyTEG5QQ2NuqwpNuCmAjZK5LGC7Ug6Yx9G4DlxccPhYq4LmEpYoRMG0yhI9qsXvoCD0r0GjevaBKKMMP2l8CZIgdOm09qMziZDqocpzW+GekMeum9KxfDGmnWglfNwrhkJA4rtSa5Zkec5biRs3MbGJmv6q4V2gKR186M2s2YLK2or3Xtkgsicpz4cvknbIwQCA2/EAyOTfZyD6HqqYmLfs/jRs7hed7WItS/rOg3t3I1sHDPOF5xvGkKNpVtIAr3VdKi+cxIFGvZfti89yPqDVmFTHI4yW3mwD3qYBAgMBAAEwDQYJKoZIhvcNAQELBQADggEBABb4Zcsrb0NQxE7SC6zuzb/xhWy3DOC2XWJ+KDvK6YTnXr+AFIA3V1ODeXoqmFZLe6np9Bw4VOIheVFbqcQMxhuj24Fkk2KWBNHvYBK733WpntKb3RKoG2pLF0fWdTO+khZiE2DmlAe3KjVMrTlpawrovB9TFaSyEMP3H1j/oOVR6b8xzwjIsyxPoMSe3KwSSAZy4LF34TfSR3wyZaaYyov51o9DfFvjOF+nb+qWWCotCyO5gwXxheXaghGb1rOpSomvJ3a1sCVnepX83wbRTqf84IJr2FI6QMJK6LpxlNcbarowUK57qQ965AbWoKt5XxwsksJnVQAb7/V/subQMYc='),('eeea3165-5210-4f59-a698-dca7e42090a1','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('f48f5278-6666-4619-8a2d-eac446768b7d','6eddb446-b37b-453a-a7c1-d2447189be94','allowed-protocol-mapper-types','oidc-address-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('40f483af-7bbe-4958-b932-6a8d510c0193','12cb39bd-2ed9-4627-b479-64e041baa7ad'),('40f483af-7bbe-4958-b932-6a8d510c0193','f001c01a-25e7-4a3d-9233-f9bb2a83721f'),('65083436-ed37-4b19-b2b2-f8dea7cf8221','1f975a89-4f85-41bc-baf5-2170ed737580'),('658bb849-4a47-4b85-a9a0-68989c9f08b7','d07c7eb8-8640-460a-944e-01160760b652'),('b9c99148-9ef9-4020-9328-f53273cd8bc5','1490d851-7243-415d-b0d1-435bc6cf92cf'),('e38892cb-b73d-4ad6-8579-5f388d545242','0321cbd1-fb22-4e34-8f84-7265835acbd5'),('e38892cb-b73d-4ad6-8579-5f388d545242','0a8f0f58-a609-4e89-a092-51c4f86fec86'),('e38892cb-b73d-4ad6-8579-5f388d545242','0e5163d1-febe-4d88-ba94-d4cd7e253a52'),('e38892cb-b73d-4ad6-8579-5f388d545242','125d626d-f1bc-4169-9c1f-d1ae2316768b'),('e38892cb-b73d-4ad6-8579-5f388d545242','12cb39bd-2ed9-4627-b479-64e041baa7ad'),('e38892cb-b73d-4ad6-8579-5f388d545242','1490d851-7243-415d-b0d1-435bc6cf92cf'),('e38892cb-b73d-4ad6-8579-5f388d545242','189dbd2a-05ab-4835-804e-81a43c582fbf'),('e38892cb-b73d-4ad6-8579-5f388d545242','1cc579c8-9d20-4c3a-b6db-a0b6337314b2'),('e38892cb-b73d-4ad6-8579-5f388d545242','37d5fb8d-ce94-4e24-98b3-cfe1bf28325c'),('e38892cb-b73d-4ad6-8579-5f388d545242','40f483af-7bbe-4958-b932-6a8d510c0193'),('e38892cb-b73d-4ad6-8579-5f388d545242','8d28f5eb-f4e6-4b9a-8757-96baafef1ba3'),('e38892cb-b73d-4ad6-8579-5f388d545242','b9c99148-9ef9-4020-9328-f53273cd8bc5'),('e38892cb-b73d-4ad6-8579-5f388d545242','d3d57671-4512-4450-97eb-0a2435092315'),('e38892cb-b73d-4ad6-8579-5f388d545242','d892c22a-d457-4007-8c5f-0f28065b2dc6'),('e38892cb-b73d-4ad6-8579-5f388d545242','e586209a-4400-436f-b77c-9fd323e4e5c9'),('e38892cb-b73d-4ad6-8579-5f388d545242','e979a486-62ff-4b8f-9faa-76d7b8d2f927'),('e38892cb-b73d-4ad6-8579-5f388d545242','e9c1919c-1004-4c4e-bc73-31cc116ae203'),('e38892cb-b73d-4ad6-8579-5f388d545242','f001c01a-25e7-4a3d-9233-f9bb2a83721f'),('e38892cb-b73d-4ad6-8579-5f388d545242','fc96954a-d22c-4483-bad9-9988630d1cc5'),('e53449e8-18de-4529-a67c-d4fda664ce63','1d2706c0-3f07-4bec-95b2-bbfadaaf6676'),('e53449e8-18de-4529-a67c-d4fda664ce63','217f9b89-a006-4f46-8782-03ab604cf4ab'),('e53449e8-18de-4529-a67c-d4fda664ce63','658bb849-4a47-4b85-a9a0-68989c9f08b7'),('e53449e8-18de-4529-a67c-d4fda664ce63','aa0271c9-89b9-419c-9731-6994f8eb462a');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('cd3d22a9-dedd-4492-bb43-ef8a28369b91',NULL,'password','9591c60e-56b5-47e2-8ced-b011ce05542b',1713482990894,NULL,'{\"value\":\"5IL4kCCyOerhaEHfdK1BbjYxO6HitYLRtJOxwD8MUZH5wCgc1edmf35rWiP9sRxEwnQDstxch8twKh08Usi1fQ==\",\"salt\":\"JaBKqx57IIB/dLDTpWBu+Q==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-04-19 08:29:13',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-04-19 08:29:13',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-04-19 08:29:14',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-04-19 08:29:14',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-04-19 08:29:17',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-04-19 08:29:17',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-04-19 08:29:19',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-04-19 08:29:19',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-04-19 08:29:19',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-04-19 08:29:22',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-04-19 08:29:23',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-04-19 08:29:23',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-04-19 08:29:23',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 08:29:23',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 08:29:23',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 08:29:23',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 08:29:23',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-04-19 08:29:25',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-04-19 08:29:26',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-04-19 08:29:26',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-04-19 08:29:26',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-04-19 08:29:26',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-04-19 08:29:26',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-04-19 08:29:26',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-04-19 08:29:26',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-04-19 08:29:27',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-04-19 08:29:29',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-04-19 08:29:29',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-04-19 08:29:30',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-04-19 08:29:30',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-04-19 08:29:30',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-04-19 08:29:30',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 08:29:31',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 08:29:31',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 08:29:31',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 08:29:31',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 08:29:31',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3482947096'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-04-19 08:29:31',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-04-19 08:29:31',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 08:29:31',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 08:29:31',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 08:29:31',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 08:29:33',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-04-19 08:29:33',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 08:29:33',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 08:29:33',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 08:29:33',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 08:29:35',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 08:29:35',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-04-19 08:29:36',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-04-19 08:29:36',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-04-19 08:29:36',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-04-19 08:29:36',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-04-19 08:29:36',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 08:29:37',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 08:29:37',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 08:29:37',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 08:29:39',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-04-19 08:29:40',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-04-19 08:29:40',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-04-19 08:29:40',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-04-19 08:29:40',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-04-19 08:29:40',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-04-19 08:29:40',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 08:29:40',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 08:29:40',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 08:29:40',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-04-19 08:29:40',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-04-19 08:29:40',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-04-19 08:29:41',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3482947096'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-04-19 08:29:41',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'3482947096'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 08:29:41',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3482947096'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 08:29:41',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3482947096'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 08:29:41',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3482947096'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 08:29:41',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 08:29:41',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 08:29:41',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 08:29:41',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 08:29:41',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 08:29:41',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 08:29:41',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 08:29:41',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 08:29:41',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 08:29:41',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3482947096'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 08:29:41',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-04-19 08:29:41',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'3482947096'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-04-19 08:29:42',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-04-19 08:29:42',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'3482947096'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3482947096'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'3482947096'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 08:29:42',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3482947096'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 08:29:42',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-04-19 08:29:43',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-04-19 08:29:43',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-04-19 08:29:43',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-04-19 08:29:43',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 08:29:43',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 08:29:43',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3482947096'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 08:29:43',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-04-19 08:29:43',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-04-19 08:29:43',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'3482947096'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-04-19 08:29:43',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-04-19 08:29:43',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-04-19 08:29:43',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-04-19 08:29:43',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'3482947096'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-04-19 08:29:43',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 08:29:43',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 08:29:43',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 08:29:43',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 08:29:44',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 08:29:44',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 08:29:44',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 08:29:44',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3482947096');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('39fcfef7-161c-4a8c-bb75-de91d0487b68','0ed6d187-bdd1-4260-aa73-9d3afd34dfc5',1),('39fcfef7-161c-4a8c-bb75-de91d0487b68','531421ed-4434-4cd9-a56b-42828383f176',1),('39fcfef7-161c-4a8c-bb75-de91d0487b68','5fb8f78d-eb44-4e7f-8c6e-ef2608b2ff5a',1),('39fcfef7-161c-4a8c-bb75-de91d0487b68','60707093-68cd-492d-87eb-d716e303001c',0),('39fcfef7-161c-4a8c-bb75-de91d0487b68','8f3b6c47-b4e1-4057-99be-162b88e353b7',0),('39fcfef7-161c-4a8c-bb75-de91d0487b68','9f3620a9-6e05-4a96-9fc1-122811b9d571',1),('39fcfef7-161c-4a8c-bb75-de91d0487b68','a338649f-5223-4404-a76b-34dbc3e12fd4',0),('39fcfef7-161c-4a8c-bb75-de91d0487b68','beb90740-2669-47da-8992-6ed98d9014c9',1),('39fcfef7-161c-4a8c-bb75-de91d0487b68','da02c185-3c94-40a0-87db-be48bcad13e1',0),('39fcfef7-161c-4a8c-bb75-de91d0487b68','f5bc233f-ef40-40f3-8b7c-48d56bb0885b',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0321cbd1-fb22-4e34-8f84-7265835acbd5','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_view-events}','view-events','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('0a8f0f58-a609-4e89-a092-51c4f86fec86','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_manage-identity-providers}','manage-identity-providers','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('0e5163d1-febe-4d88-ba94-d4cd7e253a52','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_impersonation}','impersonation','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('125d626d-f1bc-4169-9c1f-d1ae2316768b','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_query-realms}','query-realms','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('12cb39bd-2ed9-4627-b479-64e041baa7ad','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_query-users}','query-users','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('1490d851-7243-415d-b0d1-435bc6cf92cf','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_query-clients}','query-clients','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('189dbd2a-05ab-4835-804e-81a43c582fbf','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,'${role_create-realm}','create-realm','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL,NULL),('1cc579c8-9d20-4c3a-b6db-a0b6337314b2','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_manage-events}','manage-events','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('1d2706c0-3f07-4bec-95b2-bbfadaaf6676','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_view-profile}','view-profile','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('1f975a89-4f85-41bc-baf5-2170ed737580','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_view-consent}','view-consent','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('217f9b89-a006-4f46-8782-03ab604cf4ab','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,'${role_uma_authorization}','uma_authorization','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL,NULL),('2827cb75-36bc-4a69-8f38-e76fcea46d50','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_delete-account}','delete-account','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('37d5fb8d-ce94-4e24-98b3-cfe1bf28325c','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_manage-users}','manage-users','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('40f483af-7bbe-4958-b932-6a8d510c0193','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_view-users}','view-users','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('65083436-ed37-4b19-b2b2-f8dea7cf8221','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_manage-consent}','manage-consent','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('658bb849-4a47-4b85-a9a0-68989c9f08b7','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_manage-account}','manage-account','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('8d28f5eb-f4e6-4b9a-8757-96baafef1ba3','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_view-realm}','view-realm','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('aa0271c9-89b9-419c-9731-6994f8eb462a','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,'${role_offline-access}','offline_access','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL,NULL),('b9c99148-9ef9-4020-9328-f53273cd8bc5','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_view-clients}','view-clients','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('d07c7eb8-8640-460a-944e-01160760b652','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_manage-account-links}','manage-account-links','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('d3d57671-4512-4450-97eb-0a2435092315','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_manage-authorization}','manage-authorization','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('d892c22a-d457-4007-8c5f-0f28065b2dc6','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_manage-realm}','manage-realm','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('e38892cb-b73d-4ad6-8579-5f388d545242','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,'${role_admin}','admin','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL,NULL),('e53449e8-18de-4529-a67c-d4fda664ce63','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,'${role_default-roles}','default-roles-master','39fcfef7-161c-4a8c-bb75-de91d0487b68',NULL,NULL),('e586209a-4400-436f-b77c-9fd323e4e5c9','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_manage-clients}','manage-clients','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('e5a3636a-d9bb-4b18-b646-f6a72a70e2d7','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_view-applications}','view-applications','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('e979a486-62ff-4b8f-9faa-76d7b8d2f927','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_view-authorization}','view-authorization','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('e9881f57-6a60-4605-b732-97545f3f5ae1','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',1,'${role_view-groups}','view-groups','39fcfef7-161c-4a8c-bb75-de91d0487b68','791522c1-d6bb-40a1-b2fe-4abaa2c242e7',NULL),('e9bf5c93-67a2-474a-877b-28f2da515aae','54722643-08d7-404a-9263-44c7df3bc70c',1,'${role_read-token}','read-token','39fcfef7-161c-4a8c-bb75-de91d0487b68','54722643-08d7-404a-9263-44c7df3bc70c',NULL),('e9c1919c-1004-4c4e-bc73-31cc116ae203','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_create-client}','create-client','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('f001c01a-25e7-4a3d-9233-f9bb2a83721f','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_query-groups}','query-groups','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL),('fc96954a-d22c-4483-bad9-9988630d1cc5','d14af5d1-faf2-4864-aaa7-b83f77e1f277',1,'${role_view-identity-providers}','view-identity-providers','39fcfef7-161c-4a8c-bb75-de91d0487b68','d14af5d1-faf2-4864-aaa7-b83f77e1f277',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('3lyp6','24.0.3',1713482984);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('07530c20-636a-42f0-b9ee-e4b08a4febff','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'beb90740-2669-47da-8992-6ed98d9014c9'),('0ad4f5c8-451d-4f94-a269-3ff4b722b7cd','acr loa level','openid-connect','oidc-acr-mapper',NULL,'9f3620a9-6e05-4a96-9fc1-122811b9d571'),('0d00e868-ac95-448d-b63c-0ceebbb17693','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'531421ed-4434-4cd9-a56b-42828383f176'),('1382048b-3948-49e9-98de-19aee2ead0bb','full name','openid-connect','oidc-full-name-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('1e7db15d-38d8-4e11-939b-0e03023f523a','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('38c545ab-1625-4120-87cb-8396855d3881','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'f5bc233f-ef40-40f3-8b7c-48d56bb0885b'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','94f2dd11-8fad-4ad2-9747-4d3cfd8993ac',NULL),('505a94b9-7ee8-436b-8902-3194124347b8','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8f3b6c47-b4e1-4057-99be-162b88e353b7'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','address','openid-connect','oidc-address-mapper',NULL,'da02c185-3c94-40a0-87db-be48bcad13e1'),('73226244-a0a0-4513-8122-9fca060983ac','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('8059827a-168f-4c52-aa85-28cfa19f8612','role list','saml','saml-role-list-mapper',NULL,'5fb8f78d-eb44-4e7f-8c6e-ef2608b2ff5a'),('8fe9b4b1-68bf-4271-aee7-be071c23f352','audience resolve','openid-connect','oidc-audience-resolve-mapper','2a613451-afba-46e2-8217-2d870d815872',NULL),('9745dc11-5c9b-4f36-82ae-a37760518c1d','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'beb90740-2669-47da-8992-6ed98d9014c9'),('a40e536d-7947-4544-96ea-b3f1fccded1d','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f5bc233f-ef40-40f3-8b7c-48d56bb0885b'),('a65014d0-c462-44cc-b25d-144fd1033a96','locale','openid-connect','oidc-usermodel-attribute-mapper','3dae8ed7-3578-41b7-8a8b-5b5fa876ca46',NULL),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'beb90740-2669-47da-8992-6ed98d9014c9'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('bea8412d-115a-46b4-b65c-9400d0476ebf','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'60707093-68cd-492d-87eb-d716e303001c'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','94f2dd11-8fad-4ad2-9747-4d3cfd8993ac',NULL),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0ed6d187-bdd1-4260-aa73-9d3afd34dfc5'),('dd823e77-b625-43dd-a28d-d3973afb82ec','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','94f2dd11-8fad-4ad2-9747-4d3cfd8993ac',NULL),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'60707093-68cd-492d-87eb-d716e303001c'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8f3b6c47-b4e1-4057-99be-162b88e353b7');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('07530c20-636a-42f0-b9ee-e4b08a4febff','true','access.token.claim'),('07530c20-636a-42f0-b9ee-e4b08a4febff','true','introspection.token.claim'),('0ad4f5c8-451d-4f94-a269-3ff4b722b7cd','true','access.token.claim'),('0ad4f5c8-451d-4f94-a269-3ff4b722b7cd','true','id.token.claim'),('0ad4f5c8-451d-4f94-a269-3ff4b722b7cd','true','introspection.token.claim'),('0d00e868-ac95-448d-b63c-0ceebbb17693','true','access.token.claim'),('0d00e868-ac95-448d-b63c-0ceebbb17693','true','introspection.token.claim'),('1382048b-3948-49e9-98de-19aee2ead0bb','true','access.token.claim'),('1382048b-3948-49e9-98de-19aee2ead0bb','true','id.token.claim'),('1382048b-3948-49e9-98de-19aee2ead0bb','true','introspection.token.claim'),('1382048b-3948-49e9-98de-19aee2ead0bb','true','userinfo.token.claim'),('1e7db15d-38d8-4e11-939b-0e03023f523a','true','access.token.claim'),('1e7db15d-38d8-4e11-939b-0e03023f523a','zoneinfo','claim.name'),('1e7db15d-38d8-4e11-939b-0e03023f523a','true','id.token.claim'),('1e7db15d-38d8-4e11-939b-0e03023f523a','true','introspection.token.claim'),('1e7db15d-38d8-4e11-939b-0e03023f523a','String','jsonType.label'),('1e7db15d-38d8-4e11-939b-0e03023f523a','zoneinfo','user.attribute'),('1e7db15d-38d8-4e11-939b-0e03023f523a','true','userinfo.token.claim'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','true','access.token.claim'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','birthdate','claim.name'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','true','id.token.claim'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','true','introspection.token.claim'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','String','jsonType.label'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','birthdate','user.attribute'),('1f436e5e-66b9-4baa-9e46-3c1f88210684','true','userinfo.token.claim'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','true','access.token.claim'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','nickname','claim.name'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','true','id.token.claim'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','true','introspection.token.claim'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','String','jsonType.label'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','nickname','user.attribute'),('2e27950e-2825-4775-b70a-6da9c7e37ed6','true','userinfo.token.claim'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','true','access.token.claim'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','locale','claim.name'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','true','id.token.claim'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','true','introspection.token.claim'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','String','jsonType.label'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','locale','user.attribute'),('36fc6375-399b-4fe6-8ecf-00981ce846a4','true','userinfo.token.claim'),('38c545ab-1625-4120-87cb-8396855d3881','true','access.token.claim'),('38c545ab-1625-4120-87cb-8396855d3881','gender','claim.name'),('38c545ab-1625-4120-87cb-8396855d3881','true','id.token.claim'),('38c545ab-1625-4120-87cb-8396855d3881','true','introspection.token.claim'),('38c545ab-1625-4120-87cb-8396855d3881','String','jsonType.label'),('38c545ab-1625-4120-87cb-8396855d3881','gender','user.attribute'),('38c545ab-1625-4120-87cb-8396855d3881','true','userinfo.token.claim'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','true','access.token.claim'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','email_verified','claim.name'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','true','id.token.claim'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','true','introspection.token.claim'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','boolean','jsonType.label'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','emailVerified','user.attribute'),('3c1ce0b5-f745-41c0-a881-6a38f760f52d','true','userinfo.token.claim'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','true','access.token.claim'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','clientId','claim.name'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','true','id.token.claim'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','String','jsonType.label'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','clientId','user.session.note'),('3cdb8962-73c3-4264-8c2b-e7e371c93faf','true','userinfo.token.claim'),('505a94b9-7ee8-436b-8902-3194124347b8','true','access.token.claim'),('505a94b9-7ee8-436b-8902-3194124347b8','phone_number_verified','claim.name'),('505a94b9-7ee8-436b-8902-3194124347b8','true','id.token.claim'),('505a94b9-7ee8-436b-8902-3194124347b8','true','introspection.token.claim'),('505a94b9-7ee8-436b-8902-3194124347b8','boolean','jsonType.label'),('505a94b9-7ee8-436b-8902-3194124347b8','phoneNumberVerified','user.attribute'),('505a94b9-7ee8-436b-8902-3194124347b8','true','userinfo.token.claim'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','true','access.token.claim'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','family_name','claim.name'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','true','id.token.claim'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','true','introspection.token.claim'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','String','jsonType.label'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','lastName','user.attribute'),('5664de8b-de55-4d6e-b67f-f83e5c4b5541','true','userinfo.token.claim'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','true','access.token.claim'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','true','id.token.claim'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','true','introspection.token.claim'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','country','user.attribute.country'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','formatted','user.attribute.formatted'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','locality','user.attribute.locality'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','postal_code','user.attribute.postal_code'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','region','user.attribute.region'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','street','user.attribute.street'),('6ff99670-30ff-4834-a16c-7aabcc358ec2','true','userinfo.token.claim'),('73226244-a0a0-4513-8122-9fca060983ac','true','access.token.claim'),('73226244-a0a0-4513-8122-9fca060983ac','updated_at','claim.name'),('73226244-a0a0-4513-8122-9fca060983ac','true','id.token.claim'),('73226244-a0a0-4513-8122-9fca060983ac','true','introspection.token.claim'),('73226244-a0a0-4513-8122-9fca060983ac','long','jsonType.label'),('73226244-a0a0-4513-8122-9fca060983ac','updatedAt','user.attribute'),('73226244-a0a0-4513-8122-9fca060983ac','true','userinfo.token.claim'),('8059827a-168f-4c52-aa85-28cfa19f8612','Role','attribute.name'),('8059827a-168f-4c52-aa85-28cfa19f8612','Basic','attribute.nameformat'),('8059827a-168f-4c52-aa85-28cfa19f8612','false','single'),('9745dc11-5c9b-4f36-82ae-a37760518c1d','true','access.token.claim'),('9745dc11-5c9b-4f36-82ae-a37760518c1d','resource_access.${client_id}.roles','claim.name'),('9745dc11-5c9b-4f36-82ae-a37760518c1d','true','introspection.token.claim'),('9745dc11-5c9b-4f36-82ae-a37760518c1d','String','jsonType.label'),('9745dc11-5c9b-4f36-82ae-a37760518c1d','true','multivalued'),('9745dc11-5c9b-4f36-82ae-a37760518c1d','foo','user.attribute'),('a40e536d-7947-4544-96ea-b3f1fccded1d','true','access.token.claim'),('a40e536d-7947-4544-96ea-b3f1fccded1d','email','claim.name'),('a40e536d-7947-4544-96ea-b3f1fccded1d','true','id.token.claim'),('a40e536d-7947-4544-96ea-b3f1fccded1d','true','introspection.token.claim'),('a40e536d-7947-4544-96ea-b3f1fccded1d','String','jsonType.label'),('a40e536d-7947-4544-96ea-b3f1fccded1d','email','user.attribute'),('a40e536d-7947-4544-96ea-b3f1fccded1d','true','userinfo.token.claim'),('a65014d0-c462-44cc-b25d-144fd1033a96','true','access.token.claim'),('a65014d0-c462-44cc-b25d-144fd1033a96','locale','claim.name'),('a65014d0-c462-44cc-b25d-144fd1033a96','true','id.token.claim'),('a65014d0-c462-44cc-b25d-144fd1033a96','true','introspection.token.claim'),('a65014d0-c462-44cc-b25d-144fd1033a96','String','jsonType.label'),('a65014d0-c462-44cc-b25d-144fd1033a96','locale','user.attribute'),('a65014d0-c462-44cc-b25d-144fd1033a96','true','userinfo.token.claim'),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','true','access.token.claim'),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','realm_access.roles','claim.name'),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','true','introspection.token.claim'),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','String','jsonType.label'),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','true','multivalued'),('aa0ec03d-44c6-4c74-b2a2-a2b2387e5de8','foo','user.attribute'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','true','access.token.claim'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','picture','claim.name'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','true','id.token.claim'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','true','introspection.token.claim'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','String','jsonType.label'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','picture','user.attribute'),('ab4a5eed-c9a2-4200-93a2-4a68dde8f753','true','userinfo.token.claim'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','true','access.token.claim'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','profile','claim.name'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','true','id.token.claim'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','true','introspection.token.claim'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','String','jsonType.label'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','profile','user.attribute'),('bdc0426d-d85b-4f38-ba8a-7c19d4e123d5','true','userinfo.token.claim'),('bea8412d-115a-46b4-b65c-9400d0476ebf','true','access.token.claim'),('bea8412d-115a-46b4-b65c-9400d0476ebf','website','claim.name'),('bea8412d-115a-46b4-b65c-9400d0476ebf','true','id.token.claim'),('bea8412d-115a-46b4-b65c-9400d0476ebf','true','introspection.token.claim'),('bea8412d-115a-46b4-b65c-9400d0476ebf','String','jsonType.label'),('bea8412d-115a-46b4-b65c-9400d0476ebf','website','user.attribute'),('bea8412d-115a-46b4-b65c-9400d0476ebf','true','userinfo.token.claim'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','true','access.token.claim'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','middle_name','claim.name'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','true','id.token.claim'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','true','introspection.token.claim'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','String','jsonType.label'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','middleName','user.attribute'),('c4a526a0-4c23-41e1-8823-cf4048794ce6','true','userinfo.token.claim'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','true','access.token.claim'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','upn','claim.name'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','true','id.token.claim'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','true','introspection.token.claim'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','String','jsonType.label'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','username','user.attribute'),('cad5d148-1b6d-44b5-bdcf-ff567d4a584d','true','userinfo.token.claim'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','true','access.token.claim'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','given_name','claim.name'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','true','id.token.claim'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','true','introspection.token.claim'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','String','jsonType.label'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','firstName','user.attribute'),('d21ae7e8-9ee9-4387-9e4d-a56af7e73c28','true','userinfo.token.claim'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','true','access.token.claim'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','clientAddress','claim.name'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','true','id.token.claim'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','String','jsonType.label'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','clientAddress','user.session.note'),('d7cf91d1-447f-4c1c-b00e-13619b4a4df5','true','userinfo.token.claim'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','true','access.token.claim'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','preferred_username','claim.name'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','true','id.token.claim'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','true','introspection.token.claim'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','String','jsonType.label'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','username','user.attribute'),('dcfc962a-3eca-4fa4-b2f2-760beb0d9719','true','userinfo.token.claim'),('dd823e77-b625-43dd-a28d-d3973afb82ec','true','access.token.claim'),('dd823e77-b625-43dd-a28d-d3973afb82ec','clientHost','claim.name'),('dd823e77-b625-43dd-a28d-d3973afb82ec','true','id.token.claim'),('dd823e77-b625-43dd-a28d-d3973afb82ec','String','jsonType.label'),('dd823e77-b625-43dd-a28d-d3973afb82ec','clientHost','user.session.note'),('dd823e77-b625-43dd-a28d-d3973afb82ec','true','userinfo.token.claim'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','true','access.token.claim'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','groups','claim.name'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','true','id.token.claim'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','true','introspection.token.claim'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','String','jsonType.label'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','true','multivalued'),('e5b2686e-9d28-4cb6-96a3-805c450fa55f','foo','user.attribute'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','true','access.token.claim'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','phone_number','claim.name'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','true','id.token.claim'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','true','introspection.token.claim'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','String','jsonType.label'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','phoneNumber','user.attribute'),('eacef31c-7f50-4dfd-8a61-b8c3eb2c9de5','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('39fcfef7-161c-4a8c-bb75-de91d0487b68',60,300,60,NULL,NULL,NULL,1,0,0,NULL,'master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'d14af5d1-faf2-4864-aaa7-b83f77e1f277',1800,0,NULL,0,0,0,0,0,1,30,6,'HmacSHA1','totp','4f69516d-a96a-424f-b7b8-9b9cb3825c70','6df32743-b72e-414c-9d96-22300cb251af','d3c2dc70-72c0-4b55-84bc-7da2b4ee6753','85c05186-2090-444d-acd0-149e7dc71587','65704fb5-d51b-498b-8451-2bb879659876',31536000,0,900,1,0,'97aa9e0a-181e-45dd-8924-40d113efe131',0,0,0,0,'e53449e8-18de-4529-a67c-d4fda664ce63');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','39fcfef7-161c-4a8c-bb75-de91d0487b68','false'),('cibaAuthRequestedUserHint','39fcfef7-161c-4a8c-bb75-de91d0487b68','login_hint'),('cibaBackchannelTokenDeliveryMode','39fcfef7-161c-4a8c-bb75-de91d0487b68','poll'),('cibaExpiresIn','39fcfef7-161c-4a8c-bb75-de91d0487b68','120'),('cibaInterval','39fcfef7-161c-4a8c-bb75-de91d0487b68','5'),('defaultSignatureAlgorithm','39fcfef7-161c-4a8c-bb75-de91d0487b68','RS256'),('displayName','39fcfef7-161c-4a8c-bb75-de91d0487b68','Keycloak'),('displayNameHtml','39fcfef7-161c-4a8c-bb75-de91d0487b68','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','39fcfef7-161c-4a8c-bb75-de91d0487b68','30'),('firstBrokerLoginFlowId','39fcfef7-161c-4a8c-bb75-de91d0487b68','da017dd8-ea0f-4242-9b79-23a2be37bb49'),('maxDeltaTimeSeconds','39fcfef7-161c-4a8c-bb75-de91d0487b68','43200'),('maxFailureWaitSeconds','39fcfef7-161c-4a8c-bb75-de91d0487b68','900'),('maxTemporaryLockouts','39fcfef7-161c-4a8c-bb75-de91d0487b68','0'),('minimumQuickLoginWaitSeconds','39fcfef7-161c-4a8c-bb75-de91d0487b68','60'),('oauth2DeviceCodeLifespan','39fcfef7-161c-4a8c-bb75-de91d0487b68','600'),('oauth2DevicePollingInterval','39fcfef7-161c-4a8c-bb75-de91d0487b68','5'),('offlineSessionMaxLifespan','39fcfef7-161c-4a8c-bb75-de91d0487b68','31536000'),('offlineSessionMaxLifespanEnabled','39fcfef7-161c-4a8c-bb75-de91d0487b68','true'),('parRequestUriLifespan','39fcfef7-161c-4a8c-bb75-de91d0487b68','60'),('permanentLockout','39fcfef7-161c-4a8c-bb75-de91d0487b68','false'),('quickLoginCheckMilliSeconds','39fcfef7-161c-4a8c-bb75-de91d0487b68','1000'),('realmReusableOtpCode','39fcfef7-161c-4a8c-bb75-de91d0487b68','false'),('waitIncrementSeconds','39fcfef7-161c-4a8c-bb75-de91d0487b68','60'),('_browser_header.contentSecurityPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','39fcfef7-161c-4a8c-bb75-de91d0487b68',''),('_browser_header.referrerPolicy','39fcfef7-161c-4a8c-bb75-de91d0487b68','no-referrer'),('_browser_header.strictTransportSecurity','39fcfef7-161c-4a8c-bb75-de91d0487b68','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','39fcfef7-161c-4a8c-bb75-de91d0487b68','nosniff'),('_browser_header.xFrameOptions','39fcfef7-161c-4a8c-bb75-de91d0487b68','SAMEORIGIN'),('_browser_header.xRobotsTag','39fcfef7-161c-4a8c-bb75-de91d0487b68','none'),('_browser_header.xXSSProtection','39fcfef7-161c-4a8c-bb75-de91d0487b68','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('39fcfef7-161c-4a8c-bb75-de91d0487b68','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'39fcfef7-161c-4a8c-bb75-de91d0487b68');
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
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('2a613451-afba-46e2-8217-2d870d815872','/realms/master/account/*'),('34ca0108-40ac-455c-af78-fc8c3d5a84e7','/*'),('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','/admin/master/console/*'),('791522c1-d6bb-40a1-b2fe-4abaa2c242e7','/realms/master/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0f5829c1-c691-4939-bb11-7976ad2fb2f3','VERIFY_EMAIL','Verify Email','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'VERIFY_EMAIL',50),('2fb2949d-34b8-432a-8bb1-691654d0b9d8','delete_account','Delete Account','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,0,'delete_account',60),('3e53e5c7-6002-412e-8c27-e96d37021b72','UPDATE_PASSWORD','Update Password','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'UPDATE_PASSWORD',30),('43865ffe-0716-414d-8719-ca7c1f9f30fe','UPDATE_PROFILE','Update Profile','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'UPDATE_PROFILE',40),('46df615e-d8ec-494e-941a-41d2479fc3a6','webauthn-register','Webauthn Register','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'webauthn-register',70),('4ca2e74e-8885-4393-b67e-2392021fe55c','CONFIGURE_TOTP','Configure OTP','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'CONFIGURE_TOTP',10),('56931587-7632-40d1-bd59-9bb2a6378d49','TERMS_AND_CONDITIONS','Terms and Conditions','39fcfef7-161c-4a8c-bb75-de91d0487b68',0,0,'TERMS_AND_CONDITIONS',20),('659f90ee-f48e-47de-8f8c-1d029fa65394','delete_credential','Delete Credential','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'delete_credential',100),('824af8b9-ddc1-4fa9-b2d5-d25848ce0add','webauthn-register-passwordless','Webauthn Register Passwordless','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'webauthn-register-passwordless',80),('8e846652-9cb4-45a1-af6a-13a1ed5d4189','update_user_locale','Update User Locale','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'update_user_locale',1000),('b6416e3b-cb30-43e9-825d-4ecca1c8e7c6','VERIFY_PROFILE','Verify Profile','39fcfef7-161c-4a8c-bb75-de91d0487b68',1,0,'VERIFY_PROFILE',90);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('2a613451-afba-46e2-8217-2d870d815872','658bb849-4a47-4b85-a9a0-68989c9f08b7'),('2a613451-afba-46e2-8217-2d870d815872','e9881f57-6a60-4605-b732-97545f3f5ae1');
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
INSERT INTO `USER_ENTITY` VALUES ('468f39c3-d878-42c7-b9e0-45cc0f825535',NULL,'e69f3898-ddf2-4bc9-a0ca-954f021a0245',0,1,NULL,NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','service-account-_platform',1713482997937,'94f2dd11-8fad-4ad2-9747-4d3cfd8993ac',0),('9591c60e-56b5-47e2-8ced-b011ce05542b',NULL,'b66acdd4-1cf9-485d-94d6-04400ed68954',0,1,NULL,NULL,NULL,'39fcfef7-161c-4a8c-bb75-de91d0487b68','admin',1713482990070,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('e38892cb-b73d-4ad6-8579-5f388d545242','468f39c3-d878-42c7-b9e0-45cc0f825535'),('e38892cb-b73d-4ad6-8579-5f388d545242','9591c60e-56b5-47e2-8ced-b011ce05542b'),('e53449e8-18de-4529-a67c-d4fda664ce63','468f39c3-d878-42c7-b9e0-45cc0f825535'),('e53449e8-18de-4529-a67c-d4fda664ce63','9591c60e-56b5-47e2-8ced-b011ce05542b');
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
INSERT INTO `WEB_ORIGINS` VALUES ('3dae8ed7-3578-41b7-8a8b-5b5fa876ca46','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-04-19 08:30:10','dummy','2024-04-19 08:30:10','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-04-19 08:29:59.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-04-19 08:29:59.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-04-19 08:29:56','system','2024-04-19 08:29:56','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-04-19 08:30:10','dummy','2024-04-19 08:30:10','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-04-19 08:29:56','system','2024-04-19 08:30:00','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-04-19 08:29:56','system','2024-04-19 08:30:00','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-04-19 08:29:56','system','2024-04-19 08:30:00','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-04-19 08:30:10','dummy','2024-04-19 08:30:10','dummy'),('_default','platform.roles',1000,'2024-04-19 08:29:56','system','2024-04-19 08:29:56','system'),('_default','platform.users',10000,'2024-04-19 08:29:56','system','2024-04-19 08:29:56','system'),('_default','platform.workspaces',100,'2024-04-19 08:29:56','system','2024-04-19 08:29:56','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-04-19 08:29:55','1.8.1','2024-04-19 08:29:55','1.8.1'),(2,'1.3.0','SUCCEED',NULL,'2024-04-19 08:29:58','1.8.1','2024-04-19 08:29:58','1.8.1'),(3,'1.5.0','START',NULL,'2024-04-19 08:29:58','1.8.1','2024-04-19 08:29:58','1.8.1'),(4,'1.5.0','SUCCEED',NULL,'2024-04-19 08:29:59','1.8.1','2024-04-19 08:29:59','1.8.1'),(5,'1.5.2','START',NULL,'2024-04-19 08:29:59','1.8.1','2024-04-19 08:29:59','1.8.1'),(6,'1.5.2','SUCCEED',NULL,'2024-04-19 08:29:59','1.8.1','2024-04-19 08:29:59','1.8.1'),(7,'1.6.0','START',NULL,'2024-04-19 08:29:59','1.8.1','2024-04-19 08:29:59','1.8.1'),(8,'1.6.0','SUCCEED',NULL,'2024-04-19 08:30:00','1.8.1','2024-04-19 08:30:00','1.8.1'),(9,'1.7.0','START',NULL,'2024-04-19 08:30:00','1.8.1','2024-04-19 08:30:00','1.8.1'),(10,'1.7.0','SUCCEED',NULL,'2024-04-19 08:30:00','1.8.1','2024-04-19 08:30:00','1.8.1'),(11,'1.8.0','START',NULL,'2024-04-19 08:30:00','1.8.1','2024-04-19 08:30:00','1.8.1'),(12,'1.8.0','SUCCEED',NULL,'2024-04-19 08:30:00','1.8.1','2024-04-19 08:30:00','1.8.1'),(13,'1.8.1','SUCCEED','Update to System Version','2024-04-19 08:30:00','1.8.1','2024-04-19 08:30:00','1.8.1');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"94f2dd11-8fad-4ad2-9747-4d3cfd8993ac\", \"TOKEN_CHECK_CLIENT_SECRET\": \"dummy\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"91419cfd-2608-42e3-b4d7-d99b465d03d7\"}','2024-04-19 08:29:58','system','2024-04-19 08:33:36','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.8.1','2024-04-19 08:28:19','system','2024-04-19 08:30:00','1.8.1');
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

-- Dump completed on 2024-04-19  8:33:40
SET foreign_key_checks = 1;
