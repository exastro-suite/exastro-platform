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
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('04262e1e-2a62-4b0f-a974-9207cbf2bab8',NULL,'direct-grant-validate-password','3a222216-37a0-400c-a667-c1c98910d4a5','877d678d-4d8d-4329-b983-51aecbb4ce71',0,20,0,NULL,NULL),('04276e6c-521b-4217-b77e-0b1653578713',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','126d9a99-1dcc-4ce5-bf53-0c7381f3b0c2',2,20,1,'58d2213f-b27f-410d-8d9e-22da885ab4cf',NULL),('0b415d22-78ee-4e1c-a3f3-7d052d531ae1',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','877d678d-4d8d-4329-b983-51aecbb4ce71',1,30,1,'a37f8630-d2d9-4136-bbb4-6283b46f9f43',NULL),('107981f5-285b-4156-aac8-cd3e19e1b80c',NULL,'reset-credentials-choose-user','3a222216-37a0-400c-a667-c1c98910d4a5','0d87e935-0e50-4c31-bb91-9cc3d77b7277',0,10,0,NULL,NULL),('194995e9-dd93-44df-877c-071d761494e9',NULL,'http-basic-authenticator','3a222216-37a0-400c-a667-c1c98910d4a5','57d43e87-1afb-4c40-bd76-438cc0c34932',0,10,0,NULL,NULL),('21d35fd3-8d3d-4bb2-9cb0-f3904837d9fa',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','dbf7f9d2-b204-45f9-a8ae-2a1f288e8f25',2,30,1,'0dc70031-52d5-4e82-ac56-cf8bbe6b3a42',NULL),('278ac298-7a61-4302-b8ed-21d1b419bc48',NULL,'idp-confirm-link','3a222216-37a0-400c-a667-c1c98910d4a5','58d2213f-b27f-410d-8d9e-22da885ab4cf',0,10,0,NULL,NULL),('35b54c2b-0e86-4509-9493-14e9b669ed60',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','0cb7a7f1-9b70-46e7-aeb7-e4c5bfd27f88',0,20,1,'126d9a99-1dcc-4ce5-bf53-0c7381f3b0c2',NULL),('382a916f-3bdf-43c9-8277-4f2458d8013f',NULL,'idp-create-user-if-unique','3a222216-37a0-400c-a667-c1c98910d4a5','126d9a99-1dcc-4ce5-bf53-0c7381f3b0c2',2,10,0,NULL,'e003abe6-b6a6-47d2-af17-f2f8199cc593'),('3ad4f7a4-7cd4-4cb7-821f-c852327d18a7',NULL,'client-x509','3a222216-37a0-400c-a667-c1c98910d4a5','425c1efe-efe5-42e8-9422-3bd17950ce52',2,40,0,NULL,NULL),('3b56a1b8-c59f-4e13-a409-51a4f372b3a2',NULL,'reset-credential-email','3a222216-37a0-400c-a667-c1c98910d4a5','0d87e935-0e50-4c31-bb91-9cc3d77b7277',0,20,0,NULL,NULL),('408cf11a-00cd-44b9-9335-1e3037e7a2d1',NULL,'conditional-user-configured','3a222216-37a0-400c-a667-c1c98910d4a5','2363a31f-a8b1-44b7-8b93-3790260bdc40',0,10,0,NULL,NULL),('42da0abb-77b8-408a-a3ff-e410a0c633c3',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','0d87e935-0e50-4c31-bb91-9cc3d77b7277',1,40,1,'2363a31f-a8b1-44b7-8b93-3790260bdc40',NULL),('435439ed-0f7e-4de9-9ed2-51ddd5770a1d',NULL,'reset-password','3a222216-37a0-400c-a667-c1c98910d4a5','0d87e935-0e50-4c31-bb91-9cc3d77b7277',0,30,0,NULL,NULL),('48153502-be25-48b4-bef6-ba79559a675a',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','0dc70031-52d5-4e82-ac56-cf8bbe6b3a42',1,20,1,'a365a1f4-97bc-4f82-ac8b-8d376c0a0641',NULL),('4fc913b4-0ca5-4d47-a019-19448375b38b',NULL,'identity-provider-redirector','3a222216-37a0-400c-a667-c1c98910d4a5','dbf7f9d2-b204-45f9-a8ae-2a1f288e8f25',2,25,0,NULL,NULL),('551b84d3-0289-4b87-9891-7afd3bb6998e',NULL,'conditional-user-configured','3a222216-37a0-400c-a667-c1c98910d4a5','a365a1f4-97bc-4f82-ac8b-8d376c0a0641',0,10,0,NULL,NULL),('56d7be5b-aef0-455f-9f6c-9f95045b4e0d',NULL,'registration-terms-and-conditions','3a222216-37a0-400c-a667-c1c98910d4a5','9956522c-dda2-4d88-af44-3330b7b17415',3,70,0,NULL,NULL),('5cf8ecdb-3ab3-4e82-9c75-e75f6212a76e',NULL,'direct-grant-validate-username','3a222216-37a0-400c-a667-c1c98910d4a5','877d678d-4d8d-4329-b983-51aecbb4ce71',0,10,0,NULL,NULL),('5f4ec320-2ef0-4805-95a1-b081c8948c1f',NULL,'direct-grant-validate-otp','3a222216-37a0-400c-a667-c1c98910d4a5','a37f8630-d2d9-4136-bbb4-6283b46f9f43',0,20,0,NULL,NULL),('600db6c3-32c7-4052-812d-e5b0cdb5e3d6',NULL,'reset-otp','3a222216-37a0-400c-a667-c1c98910d4a5','2363a31f-a8b1-44b7-8b93-3790260bdc40',0,20,0,NULL,NULL),('60849442-96d0-48b6-9e51-5723b328f727',NULL,'client-secret','3a222216-37a0-400c-a667-c1c98910d4a5','425c1efe-efe5-42e8-9422-3bd17950ce52',2,10,0,NULL,NULL),('69047b5c-3392-4d1d-82e1-10161333ee43',NULL,'idp-email-verification','3a222216-37a0-400c-a667-c1c98910d4a5','5b8b63ca-576d-4654-868b-bf1b6533df16',2,10,0,NULL,NULL),('7e622341-bd93-4b66-8fcb-61feddb557bd',NULL,'registration-recaptcha-action','3a222216-37a0-400c-a667-c1c98910d4a5','9956522c-dda2-4d88-af44-3330b7b17415',3,60,0,NULL,NULL),('846b0af6-e8d6-46e8-9e5d-b0920e365c22',NULL,'auth-spnego','3a222216-37a0-400c-a667-c1c98910d4a5','dbf7f9d2-b204-45f9-a8ae-2a1f288e8f25',3,20,0,NULL,NULL),('8a20941f-159f-4a0e-8f8b-296f533e047a',NULL,'docker-http-basic-authenticator','3a222216-37a0-400c-a667-c1c98910d4a5','279eeb37-6772-470d-968d-32b0f23ac1b0',0,10,0,NULL,NULL),('8a61f9d3-fc99-4fc5-86f3-5d941950945f',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','58d2213f-b27f-410d-8d9e-22da885ab4cf',0,20,1,'5b8b63ca-576d-4654-868b-bf1b6533df16',NULL),('95d4c9df-bf60-44ab-b254-8d116b676e51',NULL,'auth-otp-form','3a222216-37a0-400c-a667-c1c98910d4a5','d15c8c56-1968-49fa-95d8-6d7c62d6617d',0,20,0,NULL,NULL),('9dad6f92-10ac-4c73-ab50-9170ab1939f7',NULL,'registration-password-action','3a222216-37a0-400c-a667-c1c98910d4a5','9956522c-dda2-4d88-af44-3330b7b17415',0,50,0,NULL,NULL),('a08ad30f-be02-42f6-a2fd-6c057e6b8d86',NULL,'registration-user-creation','3a222216-37a0-400c-a667-c1c98910d4a5','9956522c-dda2-4d88-af44-3330b7b17415',0,20,0,NULL,NULL),('a1acf57e-d457-41a2-9ecb-66437a362776',NULL,'client-jwt','3a222216-37a0-400c-a667-c1c98910d4a5','425c1efe-efe5-42e8-9422-3bd17950ce52',2,20,0,NULL,NULL),('a659e76a-f934-46b3-9bb2-be44a03e6f99',NULL,'auth-otp-form','3a222216-37a0-400c-a667-c1c98910d4a5','a365a1f4-97bc-4f82-ac8b-8d376c0a0641',0,20,0,NULL,NULL),('b4d7403a-1d25-4c8b-8e6a-3ab4a3a1b7ac',NULL,'client-secret-jwt','3a222216-37a0-400c-a667-c1c98910d4a5','425c1efe-efe5-42e8-9422-3bd17950ce52',2,30,0,NULL,NULL),('b5cdd540-1cd7-4189-bf2d-37762530e8b3',NULL,'conditional-user-configured','3a222216-37a0-400c-a667-c1c98910d4a5','a37f8630-d2d9-4136-bbb4-6283b46f9f43',0,10,0,NULL,NULL),('b631d585-fa1d-461c-bafe-967eed08ce39',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','5a5047c7-75e6-4380-b90a-997319e5f7a3',1,20,1,'d15c8c56-1968-49fa-95d8-6d7c62d6617d',NULL),('bf68ba48-6b52-4984-afc8-065c6e7e6b89',NULL,'registration-page-form','3a222216-37a0-400c-a667-c1c98910d4a5','77520c8e-fb66-4696-98bb-d611cf25afd4',0,10,1,'9956522c-dda2-4d88-af44-3330b7b17415',NULL),('c7644f64-3a1b-44b0-bfc4-e2d15b4f1198',NULL,'auth-cookie','3a222216-37a0-400c-a667-c1c98910d4a5','dbf7f9d2-b204-45f9-a8ae-2a1f288e8f25',2,10,0,NULL,NULL),('cb04f400-e8ed-4836-91b9-f0107f5d0b2b',NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','5b8b63ca-576d-4654-868b-bf1b6533df16',2,20,1,'5a5047c7-75e6-4380-b90a-997319e5f7a3',NULL),('db44aa2f-6b8a-4a6f-9216-cbd2e41ca9a8',NULL,'conditional-user-configured','3a222216-37a0-400c-a667-c1c98910d4a5','d15c8c56-1968-49fa-95d8-6d7c62d6617d',0,10,0,NULL,NULL),('ddffc41a-f88f-4fdc-a666-8623a9463134',NULL,'idp-username-password-form','3a222216-37a0-400c-a667-c1c98910d4a5','5a5047c7-75e6-4380-b90a-997319e5f7a3',0,10,0,NULL,NULL),('eadb8024-21a3-42bb-94d7-146f3dde6ac9',NULL,'auth-username-password-form','3a222216-37a0-400c-a667-c1c98910d4a5','0dc70031-52d5-4e82-ac56-cf8bbe6b3a42',0,10,0,NULL,NULL),('fc1df303-8211-45bf-99cb-df0ae8d2efd2',NULL,'idp-review-profile','3a222216-37a0-400c-a667-c1c98910d4a5','0cb7a7f1-9b70-46e7-aeb7-e4c5bfd27f88',0,10,0,NULL,'99961811-d9ea-4560-9d53-197fabcf7281');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0cb7a7f1-9b70-46e7-aeb7-e4c5bfd27f88','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1),('0d87e935-0e50-4c31-bb91-9cc3d77b7277','reset credentials','Reset credentials for a user if they forgot their password or something','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1),('0dc70031-52d5-4e82-ac56-cf8bbe6b3a42','forms','Username, password, otp and other auth forms.','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('126d9a99-1dcc-4ce5-bf53-0c7381f3b0c2','User creation or linking','Flow for the existing/non-existing user alternatives','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('2363a31f-a8b1-44b7-8b93-3790260bdc40','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('279eeb37-6772-470d-968d-32b0f23ac1b0','docker auth','Used by Docker clients to authenticate against the IDP','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1),('425c1efe-efe5-42e8-9422-3bd17950ce52','clients','Base authentication for clients','3a222216-37a0-400c-a667-c1c98910d4a5','client-flow',1,1),('57d43e87-1afb-4c40-bd76-438cc0c34932','saml ecp','SAML ECP Profile Authentication Flow','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1),('58d2213f-b27f-410d-8d9e-22da885ab4cf','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('5a5047c7-75e6-4380-b90a-997319e5f7a3','Verify Existing Account by Re-authentication','Reauthentication of existing account','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('5b8b63ca-576d-4654-868b-bf1b6533df16','Account verification options','Method with which to verity the existing account','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('77520c8e-fb66-4696-98bb-d611cf25afd4','registration','registration flow','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1),('877d678d-4d8d-4329-b983-51aecbb4ce71','direct grant','OpenID Connect Resource Owner Grant','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1),('9956522c-dda2-4d88-af44-3330b7b17415','registration form','registration form','3a222216-37a0-400c-a667-c1c98910d4a5','form-flow',0,1),('a365a1f4-97bc-4f82-ac8b-8d376c0a0641','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('a37f8630-d2d9-4136-bbb4-6283b46f9f43','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('d15c8c56-1968-49fa-95d8-6d7c62d6617d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',0,1),('dbf7f9d2-b204-45f9-a8ae-2a1f288e8f25','browser','browser based authentication','3a222216-37a0-400c-a667-c1c98910d4a5','basic-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('99961811-d9ea-4560-9d53-197fabcf7281','review profile config','3a222216-37a0-400c-a667-c1c98910d4a5'),('e003abe6-b6a6-47d2-af17-f2f8199cc593','create unique user config','3a222216-37a0-400c-a667-c1c98910d4a5');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('99961811-d9ea-4560-9d53-197fabcf7281','missing','update.profile.on.first.login'),('e003abe6-b6a6-47d2-af17-f2f8199cc593','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('14365de2-4235-41e6-9594-fad2d5cd3184',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('286413cc-efb0-4a92-b52e-d8323d321007',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('37036fd8-1535-408b-a8f9-13a04534e389',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('489f1498-3103-4f13-90a8-2d6b37396c0a',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('561c1be0-5309-413d-a856-49449b3417ef',1,1,'_platform',0,0,'jWbLCkI26IUUo2kd2qRColHDlJL8Nzby',NULL,0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('92c38d77-d1ec-4363-bca9-a9692adb4049',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e',1,0,'_platform-console',0,1,'Mz19k299XzORYRsVkNmrPJz44WcllPok',NULL,0,NULL,0,'3a222216-37a0-400c-a667-c1c98910d4a5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('14365de2-4235-41e6-9594-fad2d5cd3184','access.token.lifespan','86400'),('14365de2-4235-41e6-9594-fad2d5cd3184','acr.loa.map','{}'),('14365de2-4235-41e6-9594-fad2d5cd3184','backchannel.logout.revoke.offline.tokens','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','backchannel.logout.session.required','true'),('14365de2-4235-41e6-9594-fad2d5cd3184','client.session.idle.timeout','86400'),('14365de2-4235-41e6-9594-fad2d5cd3184','client.session.max.lifespan','86400'),('14365de2-4235-41e6-9594-fad2d5cd3184','client_credentials.use_refresh_token','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','display.on.consent.screen','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','exclude.session.state.from.auth.response','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','frontchannel.logout.session.required','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','id.token.as.detached.signature','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','oauth2.device.authorization.grant.enabled','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','oidc.ciba.grant.enabled','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','require.pushed.authorization.requests','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.allow.ecp.flow','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.artifact.binding','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.assertion.signature','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.authnstatement','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.client.signature','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.encrypt','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.force.post.binding','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.multivalued.roles','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.onetimeuse.condition','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.server.signature','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml.server.signature.keyinfo.ext','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','saml_force_name_id_format','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','tls.client.certificate.bound.access.tokens','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','token.response.type.bearer.lower-case','false'),('14365de2-4235-41e6-9594-fad2d5cd3184','use.refresh.tokens','true'),('286413cc-efb0-4a92-b52e-d8323d321007','post.logout.redirect.uris','+'),('489f1498-3103-4f13-90a8-2d6b37396c0a','pkce.code.challenge.method','S256'),('489f1498-3103-4f13-90a8-2d6b37396c0a','post.logout.redirect.uris','+'),('561c1be0-5309-413d-a856-49449b3417ef','backchannel.logout.revoke.offline.tokens','false'),('561c1be0-5309-413d-a856-49449b3417ef','backchannel.logout.session.required','true'),('561c1be0-5309-413d-a856-49449b3417ef','client.secret.creation.time','1713501587'),('561c1be0-5309-413d-a856-49449b3417ef','client_credentials.use_refresh_token','false'),('561c1be0-5309-413d-a856-49449b3417ef','display.on.consent.screen','false'),('561c1be0-5309-413d-a856-49449b3417ef','exclude.session.state.from.auth.response','false'),('561c1be0-5309-413d-a856-49449b3417ef','id.token.as.detached.signature','false'),('561c1be0-5309-413d-a856-49449b3417ef','oauth2.device.authorization.grant.enabled','false'),('561c1be0-5309-413d-a856-49449b3417ef','oidc.ciba.grant.enabled','false'),('561c1be0-5309-413d-a856-49449b3417ef','require.pushed.authorization.requests','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.artifact.binding','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.assertion.signature','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.authnstatement','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.client.signature','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.encrypt','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.force.post.binding','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.multivalued.roles','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.onetimeuse.condition','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.server.signature','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml.server.signature.keyinfo.ext','false'),('561c1be0-5309-413d-a856-49449b3417ef','saml_force_name_id_format','false'),('561c1be0-5309-413d-a856-49449b3417ef','tls.client.certificate.bound.access.tokens','false'),('561c1be0-5309-413d-a856-49449b3417ef','use.refresh.tokens','true'),('92c38d77-d1ec-4363-bca9-a9692adb4049','pkce.code.challenge.method','S256'),('92c38d77-d1ec-4363-bca9-a9692adb4049','post.logout.redirect.uris','+'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','backchannel.logout.revoke.offline.tokens','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','backchannel.logout.session.required','true'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','client.secret.creation.time','1713501590'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','client_credentials.use_refresh_token','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','display.on.consent.screen','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','exclude.session.state.from.auth.response','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','id.token.as.detached.signature','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','oauth2.device.authorization.grant.enabled','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','oidc.ciba.grant.enabled','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','post.logout.redirect.uris','/*'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','require.pushed.authorization.requests','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.artifact.binding','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.assertion.signature','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.authnstatement','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.client.signature','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.encrypt','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.force.post.binding','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.multivalued.roles','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.onetimeuse.condition','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.server.signature','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml.server.signature.keyinfo.ext','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','saml_force_name_id_format','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','tls.client.certificate.bound.access.tokens','false'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('20bf22d3-e493-41ad-8299-93829b669782','phone','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect built-in scope: phone','openid-connect'),('23c190ac-d1c6-4e5f-acf6-47af1e8c1166','web-origins','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('48d88128-ccaa-4c57-b10f-08694724b445','email','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect built-in scope: email','openid-connect'),('49c007c3-818a-45e0-9949-fdc35fefaad4','profile','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect built-in scope: profile','openid-connect'),('61a9dd28-2f16-42e8-96af-223c22a01f1c','address','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect built-in scope: address','openid-connect'),('7bbf2e14-1661-4abb-b9bf-2851a018098a','offline_access','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect built-in scope: offline_access','openid-connect'),('b5be5801-1dbf-4292-8701-84b3a43ce8fd','microprofile-jwt','3a222216-37a0-400c-a667-c1c98910d4a5','Microprofile - JWT built-in scope','openid-connect'),('b7fd4591-8be9-4ee7-97c3-989be07a498d','role_list','3a222216-37a0-400c-a667-c1c98910d4a5','SAML role list','saml'),('f11f66c4-b63d-4d19-86e9-9db29a5a9e79','acr','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('f28511d7-d40d-4948-a79e-154a06352aed','roles','3a222216-37a0-400c-a667-c1c98910d4a5','OpenID Connect scope for add user roles to the access token','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('20bf22d3-e493-41ad-8299-93829b669782','${phoneScopeConsentText}','consent.screen.text'),('20bf22d3-e493-41ad-8299-93829b669782','true','display.on.consent.screen'),('20bf22d3-e493-41ad-8299-93829b669782','true','include.in.token.scope'),('23c190ac-d1c6-4e5f-acf6-47af1e8c1166','','consent.screen.text'),('23c190ac-d1c6-4e5f-acf6-47af1e8c1166','false','display.on.consent.screen'),('23c190ac-d1c6-4e5f-acf6-47af1e8c1166','false','include.in.token.scope'),('48d88128-ccaa-4c57-b10f-08694724b445','${emailScopeConsentText}','consent.screen.text'),('48d88128-ccaa-4c57-b10f-08694724b445','true','display.on.consent.screen'),('48d88128-ccaa-4c57-b10f-08694724b445','true','include.in.token.scope'),('49c007c3-818a-45e0-9949-fdc35fefaad4','${profileScopeConsentText}','consent.screen.text'),('49c007c3-818a-45e0-9949-fdc35fefaad4','true','display.on.consent.screen'),('49c007c3-818a-45e0-9949-fdc35fefaad4','true','include.in.token.scope'),('61a9dd28-2f16-42e8-96af-223c22a01f1c','${addressScopeConsentText}','consent.screen.text'),('61a9dd28-2f16-42e8-96af-223c22a01f1c','true','display.on.consent.screen'),('61a9dd28-2f16-42e8-96af-223c22a01f1c','true','include.in.token.scope'),('7bbf2e14-1661-4abb-b9bf-2851a018098a','${offlineAccessScopeConsentText}','consent.screen.text'),('7bbf2e14-1661-4abb-b9bf-2851a018098a','true','display.on.consent.screen'),('b5be5801-1dbf-4292-8701-84b3a43ce8fd','false','display.on.consent.screen'),('b5be5801-1dbf-4292-8701-84b3a43ce8fd','true','include.in.token.scope'),('b7fd4591-8be9-4ee7-97c3-989be07a498d','${samlRoleListScopeConsentText}','consent.screen.text'),('b7fd4591-8be9-4ee7-97c3-989be07a498d','true','display.on.consent.screen'),('f11f66c4-b63d-4d19-86e9-9db29a5a9e79','false','display.on.consent.screen'),('f11f66c4-b63d-4d19-86e9-9db29a5a9e79','false','include.in.token.scope'),('f28511d7-d40d-4948-a79e-154a06352aed','${rolesScopeConsentText}','consent.screen.text'),('f28511d7-d40d-4948-a79e-154a06352aed','true','display.on.consent.screen'),('f28511d7-d40d-4948-a79e-154a06352aed','false','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('14365de2-4235-41e6-9594-fad2d5cd3184','20bf22d3-e493-41ad-8299-93829b669782',0),('14365de2-4235-41e6-9594-fad2d5cd3184','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('14365de2-4235-41e6-9594-fad2d5cd3184','48d88128-ccaa-4c57-b10f-08694724b445',1),('14365de2-4235-41e6-9594-fad2d5cd3184','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('14365de2-4235-41e6-9594-fad2d5cd3184','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('14365de2-4235-41e6-9594-fad2d5cd3184','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('14365de2-4235-41e6-9594-fad2d5cd3184','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('14365de2-4235-41e6-9594-fad2d5cd3184','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('14365de2-4235-41e6-9594-fad2d5cd3184','f28511d7-d40d-4948-a79e-154a06352aed',1),('286413cc-efb0-4a92-b52e-d8323d321007','20bf22d3-e493-41ad-8299-93829b669782',0),('286413cc-efb0-4a92-b52e-d8323d321007','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('286413cc-efb0-4a92-b52e-d8323d321007','48d88128-ccaa-4c57-b10f-08694724b445',1),('286413cc-efb0-4a92-b52e-d8323d321007','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('286413cc-efb0-4a92-b52e-d8323d321007','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('286413cc-efb0-4a92-b52e-d8323d321007','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('286413cc-efb0-4a92-b52e-d8323d321007','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('286413cc-efb0-4a92-b52e-d8323d321007','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('286413cc-efb0-4a92-b52e-d8323d321007','f28511d7-d40d-4948-a79e-154a06352aed',1),('37036fd8-1535-408b-a8f9-13a04534e389','20bf22d3-e493-41ad-8299-93829b669782',0),('37036fd8-1535-408b-a8f9-13a04534e389','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('37036fd8-1535-408b-a8f9-13a04534e389','48d88128-ccaa-4c57-b10f-08694724b445',1),('37036fd8-1535-408b-a8f9-13a04534e389','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('37036fd8-1535-408b-a8f9-13a04534e389','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('37036fd8-1535-408b-a8f9-13a04534e389','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('37036fd8-1535-408b-a8f9-13a04534e389','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('37036fd8-1535-408b-a8f9-13a04534e389','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('37036fd8-1535-408b-a8f9-13a04534e389','f28511d7-d40d-4948-a79e-154a06352aed',1),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','20bf22d3-e493-41ad-8299-93829b669782',0),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','48d88128-ccaa-4c57-b10f-08694724b445',1),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('450296b4-dcc7-4ed1-ac2c-17fd0fdde8b8','f28511d7-d40d-4948-a79e-154a06352aed',1),('489f1498-3103-4f13-90a8-2d6b37396c0a','20bf22d3-e493-41ad-8299-93829b669782',0),('489f1498-3103-4f13-90a8-2d6b37396c0a','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('489f1498-3103-4f13-90a8-2d6b37396c0a','48d88128-ccaa-4c57-b10f-08694724b445',1),('489f1498-3103-4f13-90a8-2d6b37396c0a','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('489f1498-3103-4f13-90a8-2d6b37396c0a','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('489f1498-3103-4f13-90a8-2d6b37396c0a','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('489f1498-3103-4f13-90a8-2d6b37396c0a','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('489f1498-3103-4f13-90a8-2d6b37396c0a','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('489f1498-3103-4f13-90a8-2d6b37396c0a','f28511d7-d40d-4948-a79e-154a06352aed',1),('561c1be0-5309-413d-a856-49449b3417ef','20bf22d3-e493-41ad-8299-93829b669782',0),('561c1be0-5309-413d-a856-49449b3417ef','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('561c1be0-5309-413d-a856-49449b3417ef','48d88128-ccaa-4c57-b10f-08694724b445',1),('561c1be0-5309-413d-a856-49449b3417ef','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('561c1be0-5309-413d-a856-49449b3417ef','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('561c1be0-5309-413d-a856-49449b3417ef','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('561c1be0-5309-413d-a856-49449b3417ef','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('561c1be0-5309-413d-a856-49449b3417ef','f28511d7-d40d-4948-a79e-154a06352aed',1),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','20bf22d3-e493-41ad-8299-93829b669782',0),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','48d88128-ccaa-4c57-b10f-08694724b445',1),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('60ee93f7-f7b3-47c8-a85b-1060d9b8483e','f28511d7-d40d-4948-a79e-154a06352aed',1),('92c38d77-d1ec-4363-bca9-a9692adb4049','20bf22d3-e493-41ad-8299-93829b669782',0),('92c38d77-d1ec-4363-bca9-a9692adb4049','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('92c38d77-d1ec-4363-bca9-a9692adb4049','48d88128-ccaa-4c57-b10f-08694724b445',1),('92c38d77-d1ec-4363-bca9-a9692adb4049','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('92c38d77-d1ec-4363-bca9-a9692adb4049','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('92c38d77-d1ec-4363-bca9-a9692adb4049','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('92c38d77-d1ec-4363-bca9-a9692adb4049','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('92c38d77-d1ec-4363-bca9-a9692adb4049','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('92c38d77-d1ec-4363-bca9-a9692adb4049','f28511d7-d40d-4948-a79e-154a06352aed',1),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','20bf22d3-e493-41ad-8299-93829b669782',0),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','48d88128-ccaa-4c57-b10f-08694724b445',1),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','f28511d7-d40d-4948-a79e-154a06352aed',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('7bbf2e14-1661-4abb-b9bf-2851a018098a','b28396d7-e99c-434c-abd0-844906d88ff6');
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
INSERT INTO `COMPONENT` VALUES ('026bb903-8c1d-46d7-9e5b-fbde0c6e7456',NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','3a222216-37a0-400c-a667-c1c98910d4a5',NULL),('03c9ee03-4a3c-4f23-87d1-95fc569678e3','Allowed Client Scopes','3a222216-37a0-400c-a667-c1c98910d4a5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','authenticated'),('13dadd38-ff12-4109-b0c2-0a2d7a48b64b','Max Clients Limit','3a222216-37a0-400c-a667-c1c98910d4a5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','anonymous'),('1661cde1-8ef0-4a13-9f98-72a13d4f4271','Allowed Protocol Mapper Types','3a222216-37a0-400c-a667-c1c98910d4a5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','authenticated'),('22f48dbc-ed3b-4e7c-9c08-fb414eccd7ba','Allowed Client Scopes','3a222216-37a0-400c-a667-c1c98910d4a5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','anonymous'),('2b73ab28-e782-4531-b4a8-656a4448a997','aes-generated','3a222216-37a0-400c-a667-c1c98910d4a5','aes-generated','org.keycloak.keys.KeyProvider','3a222216-37a0-400c-a667-c1c98910d4a5',NULL),('3286ad09-077e-4c25-a97c-253afe0e8aca','rsa-generated','3a222216-37a0-400c-a667-c1c98910d4a5','rsa-generated','org.keycloak.keys.KeyProvider','3a222216-37a0-400c-a667-c1c98910d4a5',NULL),('52d4285c-4a22-4333-a124-893a0b4c8012','hmac-generated-hs512','3a222216-37a0-400c-a667-c1c98910d4a5','hmac-generated','org.keycloak.keys.KeyProvider','3a222216-37a0-400c-a667-c1c98910d4a5',NULL),('602db4f4-dbf5-4489-9f51-2b4cf1bba8b6','rsa-enc-generated','3a222216-37a0-400c-a667-c1c98910d4a5','rsa-enc-generated','org.keycloak.keys.KeyProvider','3a222216-37a0-400c-a667-c1c98910d4a5',NULL),('83aa78da-821b-475f-8870-9e70206445a9','Consent Required','3a222216-37a0-400c-a667-c1c98910d4a5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','anonymous'),('9d064026-13f6-427a-83a9-f0ebff1bbc71','Allowed Protocol Mapper Types','3a222216-37a0-400c-a667-c1c98910d4a5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','anonymous'),('a217328f-c3ca-4c9c-aaa4-3dbc955230d9','Full Scope Disabled','3a222216-37a0-400c-a667-c1c98910d4a5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','anonymous'),('a86a010e-1bb6-4345-bc97-90d5c7105843','Trusted Hosts','3a222216-37a0-400c-a667-c1c98910d4a5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','anonymous');
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('0e86d8e8-bdf3-46f4-b75e-8ecaf44a43d5','52d4285c-4a22-4333-a124-893a0b4c8012','priority','100'),('21becde2-2cab-41ca-a771-3dcea954bbcf','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','oidc-address-mapper'),('22faca87-1f53-4cfc-be86-ca615c02d801','602db4f4-dbf5-4489-9f51-2b4cf1bba8b6','algorithm','RSA-OAEP'),('287b780a-fdc1-42d2-ae8c-a7b33a56369a','602db4f4-dbf5-4489-9f51-2b4cf1bba8b6','certificate','MIICmzCCAYMCBgGO9KckhjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNDE5MDQzNzU4WhcNMzQwNDE5MDQzOTM4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDC9RBRMcWR0JVqpZfwBRWZLO+gifw0EPqk9vyVGHCTQzG23Gx+xQFSGgtFpXC52d0s8sKYqx1slpopyQAINKUHsTvLt3n1q2IUaAlad9qjDgPPsqmvLXnQ0Ko4NL8V8iVB7G7eCllHTlP2Rj45Mc2Pd3a5rMKAhhLL7AaqzJJYdVA0Pt9lC1Ed+TimSOsU7OJeti/Ra/C6x1tZAd/N0xWqr/tmxxySeC4528oPWAM7QgalxBPvCieoJyG9NfeprgmXSHc05rjDJDaRXXkgG7+Nfv7LebIbiam77VSe2isYdxEt2DNKdxPTJIL1zJQuQo3NexXy2FcHKOVVrxnTSir1AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAEBxCl1lLwznc+eb5N0vi/zseM+temY+40wv0CKJNXZj/X0GtLMVTqDqoxDQZtQTu4/L/smKTHHgLtmWtC7Rw7kSsjLfnGJIsXYINbech+2dRVQ1CBEcqTxPJMKbVKExRuRA9wFHRkWgny8NHT4/H0WX90QpCzzORieQ5F16LmaDf345P9I40zg8EljPDg0NwQ2OilA3GffpgLazNJH9FYJlbo//7xSVmyuaNs8QOtMcSXtBL9kpdQO2JKabZTNocbzXOHHhCa0SHtG2kDPMz395MDez4r/SUIkyq5t0sXXtoenGRwhojsFlZPqQz32BaXi9+89uKN+dCX7zDW26wAo='),('31acab19-fb93-49aa-b06d-9f7f98b54691','3286ad09-077e-4c25-a97c-253afe0e8aca','priority','100'),('37eea8c7-fd5d-4db4-be99-1b9bd87da0ce','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','oidc-full-name-mapper'),('416efa96-27ec-4b69-ba2d-3968f65764a9','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('4ba280d9-b96c-4b06-b9bd-004424ddec3a','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5e4ea0ac-01c5-47d1-ab10-2a59355e5527','3286ad09-077e-4c25-a97c-253afe0e8aca','certificate','MIICmzCCAYMCBgGO9KciWzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNDE5MDQzNzU3WhcNMzQwNDE5MDQzOTM3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC6Nk+vJ4vJ+kkMYhyAQcpRLsWq0Rx0o6ElMofQVGAwKKEkTvX2OkaXfH2iObvdgjWiHT6rdflST9N/5HcJrf9Lqg+zc49FDbymT4kjgB+ULsrhmn2TCTpQIqNTNc3F/Cm4lDeW293Nl1pZJg7gvGOAJhDvBYSUK70rnVpYmE/E0xNAYb5p2/0Mvgq+QrSO+/QEMUzYNuJVMagiYrY/aP4VgrWBpfTTPiunRy7DvRxaOTVBRP12+pg1z/jB10rdieXQ3glaZiyUQLt57DJ+gpiaGXqoQxrsOs4/G4flnviGu44ooRa6S0t+8ff7EBbHTjNV/i4jX0zhTM4ZKM20iCb1AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAKV7ekzdZuzTYYOxQwamNqfGVGtXuG7sdPehZqN11HjMp8Y9zI/TT6S/LxkOAVCzsqCMDUYFmLkeyJFYTL8ouaaWoBkl8XOumWL0Zr39qkcU24gASwnUr5Kh5VqY6XHgpQAtk7butDRJLehrDu81Rq54czqceUpydHtv043sEl/HH7X8J5Gs9ANC/9bsu7sQ2Et2c8i3qapB2u81I+QRcqOidqgcYtcwQYqSHXoVJDMqJxcvzSfO9xIrFbP/2VZyBvzM9e4NvU5Yr/cwptC9MdU0qetW8s0wzLdVEMYQrFmDRBMHrWHnHeAcJzIaTcUaZk8cI2OaZWds6EDTww/3eOg='),('5f80af11-4f8c-4010-92cf-195f5bfa5400','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('63030ee3-6cfc-47c4-a82d-63952ced3606','2b73ab28-e782-4531-b4a8-656a4448a997','kid','5c4ee116-2710-42a7-b4d3-21f93d037295'),('65fee7f3-2d25-46ca-99c2-ec950ae99ba9','2b73ab28-e782-4531-b4a8-656a4448a997','secret','SfwVnGeqhCDF_xbx0rG3RQ'),('6c35913a-673c-4d51-8ed4-b2b41ddb0ee4','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('6e6ab074-92a8-4b6e-afb2-583760ab2ffd','3286ad09-077e-4c25-a97c-253afe0e8aca','privateKey','MIIEpAIBAAKCAQEAujZPryeLyfpJDGIcgEHKUS7FqtEcdKOhJTKH0FRgMCihJE719jpGl3x9ojm73YI1oh0+q3X5Uk/Tf+R3Ca3/S6oPs3OPRQ28pk+JI4AflC7K4Zp9kwk6UCKjUzXNxfwpuJQ3ltvdzZdaWSYO4LxjgCYQ7wWElCu9K51aWJhPxNMTQGG+adv9DL4KvkK0jvv0BDFM2DbiVTGoImK2P2j+FYK1gaX00z4rp0cuw70cWjk1QUT9dvqYNc/4wddK3Ynl0N4JWmYslEC7eewyfoKYmhl6qEMa7DrOPxuH5Z74hruOKKEWuktLfvH3+xAWx04zVf4uI19M4UzOGSjNtIgm9QIDAQABAoIBAAE69KHSoBDQj4T+bPPH+3830OSFBywaHKlzQQR2WkBXNGFaCDP9RJQhpW7Z9MzM3G/aw5w8Zk5N6rbQmpy8wpAMapgj7lFletaadex/HzZKbNq6u5OqHvGCmROmqlphhSEMEaX0g+2kz1sBbl27wOiK19fMcIjOFSzhmEQ3lWdWfspJkr+Sze+YzMTteoXHqsCEaPZqlVvPyCDhLVMm3v4xW+sBABdAHhFkeEimtvTq/hyJQQznEPdc3nq6TK+u87leEqlXg2JP3WSEpnBaxKDfRLutgWdP3//Owlx9DcltgMho7Rsqi6HVyPoeiqSll+g4YUS5itKyARBesBphR80CgYEA317ZoUiQ60lUKj85ikatJe8qAioXebTM+IifRINiFEl3RHdrsr1Uq0jF1PLlZA+a68YIjZrBSztIr3JIsrQSzysaUZmLGGZg0IWH20qJg0rtHIIHE840JZoXETRsvGp+Utv6TumNPptzmUwjryMm7Fs9hWadIQj9DBb8lxhyEvMCgYEA1Wnju33J4aMNbfW5rMpD2TTb2USP39H5HlwYda24yT3xXLlHNYWHwuBBsKd1N58xfAOXutphlNqzIViOWYCWxg1ZR8RMwYLdIuT+rO1+tb5iZwyruJenSaUpBQfcWDRO2AZ3xM3+BZGodTTTH2aGumDdVxYlLEuz0Si/vV5fSHcCgYBIF7Tl+SXMyr3/ZKiNmIIJ3EcSq8Mn5NLC5FWDJ2RgZ9W2o1R/O9w37CTttfeTc/XsYt4f1fLM9TVgauJLyxLHCoJUE9pw5ZoZsv9GJ6h6V5RvvwfJvKPX/wOy6diudzCOTbFcBsUvj7yfnZNm01Gct1YD2DqejugdHs4ndhxbQQKBgQCVAxrAD1Sm9/KolKrQu2okf4QCcJ0E6tfHGwb5JBOicF3XIIdYF6RzraIwdryh2cXzkY6gKVt5VDs/TVYXqHGeWDO+qJHvjDBb7QjmNe4DeKu8yFwex8VG5st9d7+i1uM2c02tXSfBO7MkI35Gro/kEz55UD0kcLddk9ZNo1dkgQKBgQCKg6L1LT3rqLRf2qbfno1ZQmMeq4wlSSLYRRAxTlD5WQYelrPoLeI7fkQClzStizUg9bFMaDnMpBGwbFC2dSYmpxSUUgZpuU4X/sE4jVG2tyUExmOlr8SUew4yB/C0+ACRrsUl8PVo2MYtht2jLnjQ/faCbAJAonge+zgtaXji+Q=='),('74c9d74e-ab3d-402b-9ddb-b01349f6851f','52d4285c-4a22-4333-a124-893a0b4c8012','algorithm','HS512'),('777f5ec6-9eda-4388-94e7-0ab591ae4c11','13dadd38-ff12-4109-b0c2-0a2d7a48b64b','max-clients','200'),('7df656b2-abb7-4656-a9a7-ad29c371bba3','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','saml-role-list-mapper'),('7e63806f-9a30-4d07-bc20-d5f319cb6e3f','a86a010e-1bb6-4345-bc97-90d5c7105843','host-sending-registration-request-must-match','true'),('8d162581-28a2-4090-ae78-96fe0899912d','3286ad09-077e-4c25-a97c-253afe0e8aca','keyUse','SIG'),('92d097e5-f019-448d-b90b-8f63c97c0aaf','026bb903-8c1d-46d7-9e5b-fbde0c6e7456','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('9d43b7b0-810a-464a-a1df-618a0004bc3e','602db4f4-dbf5-4489-9f51-2b4cf1bba8b6','privateKey','MIIEowIBAAKCAQEAwvUQUTHFkdCVaqWX8AUVmSzvoIn8NBD6pPb8lRhwk0MxttxsfsUBUhoLRaVwudndLPLCmKsdbJaaKckACDSlB7E7y7d59atiFGgJWnfaow4Dz7Kpry150NCqODS/FfIlQexu3gpZR05T9kY+OTHNj3d2uazCgIYSy+wGqsySWHVQND7fZQtRHfk4pkjrFOziXrYv0WvwusdbWQHfzdMVqq/7ZsccknguOdvKD1gDO0IGpcQT7wonqCchvTX3qa4Jl0h3NOa4wyQ2kV15IBu/jX7+y3myG4mpu+1UntorGHcRLdgzSncT0ySC9cyULkKNzXsV8thXByjlVa8Z00oq9QIDAQABAoIBAFmm62GDM1kaI9PeoY+pLuT5IprfSWDCHBjnUYDYs9Asmrx+AdCMFM7mFh/pc/yrQMgOPMmLCuVoHi2v9nlPiEKQ0LAeSBHexaQfsYluS1cnNz54aQqbLYUGp/hf3S2g5Fw790HZXXPqg7bhV3Tiv6ZFaA37cZg7z4ICIJDDsVrGjiRrX886ImCFE5DlNUuR83n7JcfEJQbLw+7AG/9VkTBzrP8snulieOzIIJTOTxJx7E6eqeo/1r2O8x3Nr/tjNuyzUyKd3JDMgbPM9ZLeNbWSh7ejUuZri3wx6SH2ZwLHKiZ2/ldT7NvXAy6CWWzjRvXDyftwM+4C9ZM/DGZ15OMCgYEA60Mf7dicaBWXyjwM0sCvlXuSVu7AoOemYtmVKANrr+8HxBRKpQQEj9hxLDSmxdSxaPwpjiMXTUYLlBt1zR4K/t/kgPZepMVTF1wiFfd2FDUf+sZt2d0gzZjQ2J5Ri1FY7qvuf+ffGoZBj6/D1vrdFfMuEiFVAJmN3ViyR4WVqbsCgYEA1CRtSipg7GHpdtMd9aPKqwKSj54h/A7FDhpmgaTAfZ+VkSxKRdsNBmErcNAyzT4fg9kAquJLle1/xvZv7yS60+lFj9Po7Op2Nv5v/oXYZbBPyGRPhO7RSnbymIB69PVHb2f7hgw7qeEzKaimTWDi60Uh/0a2hHqNT9/lv9yzmw8CgYB4LZPz5gEP0mf1sPND/ZY0ICnDKrdP+sWuHUPqasTp3Ir1CQCQhxrleEVntYWz7VCrNpTrvNU8bhmgEN7+ZuhrBmgt0KzMMtidSD1JR14UOIcbjZ2z+xe0rumQnl89cdKiKUXuJL59SDPZeInsGb4yZkUUkd5gLhCgD50SmBS53QKBgEJj/Af/50FTCxtyyqd7UQvfzDpCBOS7QpQ9UuMzykIGVWqPb9cYzKS4eD3gCmYNERPUL89K7tjG8Pw1V6aB2i5DjM+MRBMQ9VoUmrwO60A3w2A1dGVnz/v76cQsQU60DF0jL6Yt4eYyYi6hZxpEPf/fLNqVKL2hFORwb5hx24ulAoGBAISWigRKlu+Bj90hMONaJgDQnuzP1IvQhrgGA3/SeujBpHAPGpShrG0+HYPgJfxb+XHmp8BCDgkhqKHfrxflf6IMzeUZKpQttNLij99gFdIPMIQp8lDOuFFh4CVVZW0yrH4/1mKi7PEUByiARHRvGVeHem1/gzDDR5Buu3GLDcsf'),('a07f12ba-e2e2-43fb-bb0b-65911fd92f4b','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','saml-user-property-mapper'),('a098636a-820f-4218-96be-2bb9d527525b','a86a010e-1bb6-4345-bc97-90d5c7105843','client-uris-must-match','true'),('a22413c0-84a4-46b8-ae9a-6b769beaee17','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','saml-role-list-mapper'),('a4424196-a98d-4e8e-83f8-645dd2bedc0f','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','saml-user-property-mapper'),('aa72ec25-01a2-400c-ab87-bf27eb5a7a6a','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ac1f6807-2aa6-4612-8ae7-11fa908bcfd0','52d4285c-4a22-4333-a124-893a0b4c8012','kid','4482a43c-6603-4c8a-8ec3-0d2d9c478c7d'),('b8d4bb1f-1cdc-4d70-ae5f-d2a33776d1e6','03c9ee03-4a3c-4f23-87d1-95fc569678e3','allow-default-scopes','true'),('b8e6e953-b791-455c-abde-a30fd15e5e33','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('bf35d2b5-ffaf-49d4-8ea1-e14a83b695f5','602db4f4-dbf5-4489-9f51-2b4cf1bba8b6','keyUse','ENC'),('c322acf7-054a-47a9-92f7-968babf3266d','2b73ab28-e782-4531-b4a8-656a4448a997','priority','100'),('c6fe36d7-8e2b-4ace-bddf-eedbb75bcfdb','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c6fea915-82ca-4857-865f-f16d39d84faa','52d4285c-4a22-4333-a124-893a0b4c8012','secret','c-pAP_I3gVC4hf60G0mpuZ0dFs8C23I9N-bJOXMQOuQQDDSDFhI4CvW_uFEuY4gViQSrIypWg1aKY-S4vA-k5yEDpDnBMAlarNt-2MxT345JpgQG9kyLS5gIS3pZvgIxNolgTly1H75tgJ0DsQAohlrStYG_1FtsFg1qWcgkr-o'),('dbdff84a-17bb-474e-ae7f-6efa18d0507f','22f48dbc-ed3b-4e7c-9c08-fb414eccd7ba','allow-default-scopes','true'),('e30afb92-ad6f-4845-8b32-46a46635dff3','1661cde1-8ef0-4a13-9f98-72a13d4f4271','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e6cacf86-8034-4246-acd2-b05ffdf3faf7','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f2a3b151-1933-4477-90e0-4adf938826e3','602db4f4-dbf5-4489-9f51-2b4cf1bba8b6','priority','100'),('ffed14d0-4c16-4cfd-8878-241074a00c17','9d064026-13f6-427a-83a9-f0ebff1bbc71','allowed-protocol-mapper-types','oidc-address-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('430b40f6-61fb-4b50-be90-e5d19859d858','cf1547db-e97c-4cc1-9d43-c5ace00877b3'),('430b40f6-61fb-4b50-be90-e5d19859d858','ec36354e-823d-414f-a168-0bd10076f8ea'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','0a8f477a-4386-4988-ad97-4503e250acb3'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','168f66c6-e2c0-4578-8555-7d6aaba18e82'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','363de1d7-9bc8-425f-8ecf-704ddb5e0cca'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','3bd611d7-d1d5-4691-be32-2e9cff770e9b'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','3eb62004-cb65-43d7-92ab-861801e15b3e'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','41bb6b87-71e3-43c1-976b-2903e34b2824'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','430b40f6-61fb-4b50-be90-e5d19859d858'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','4494c3bd-712e-49a9-8165-4df62e64d55b'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','45c32df8-649a-4f53-a4ee-27b8a15ae936'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','6bcd45a6-a1ce-495f-b12c-d4e1c3e28620'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','8f8d5c69-6f15-4388-9e30-ae8ca423e500'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','96e2421c-b146-4fae-ad40-39d4c770ad7e'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','a5e39e86-66d1-41d2-8dc5-9da2792f5abe'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','b8f4085e-b0c1-4a27-989f-6ff86a9bc654'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','cf1547db-e97c-4cc1-9d43-c5ace00877b3'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','dda7ae98-c873-4880-8d37-f04f6af304d0'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','ddcf567a-b83d-4311-9ab4-ea1f43dbf3fe'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','ea62cc3f-024b-4b1d-a611-d09c7f8cc928'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','ec36354e-823d-414f-a168-0bd10076f8ea'),('6b069c07-3059-4f8d-b761-c40ef4e81b68','ba83781b-686e-475f-8c16-2108dc262c80'),('ea62cc3f-024b-4b1d-a611-d09c7f8cc928','3eb62004-cb65-43d7-92ab-861801e15b3e'),('f4644e10-53b6-499b-8993-b5f114899f13','4d0efe89-fff9-4039-96b4-1ee7674a00ba'),('f74a98ae-0841-46e5-9994-db490675d0a3','13eed709-0de7-4bdb-800a-436f53576ab2'),('f74a98ae-0841-46e5-9994-db490675d0a3','30e57364-2c9e-4953-9e52-25cf69617c6a'),('f74a98ae-0841-46e5-9994-db490675d0a3','b28396d7-e99c-434c-abd0-844906d88ff6'),('f74a98ae-0841-46e5-9994-db490675d0a3','f4644e10-53b6-499b-8993-b5f114899f13');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('f22be826-2eb9-4282-94ae-19e5a37844dd',NULL,'password','7aa7a8af-c4c7-4d62-96c4-c9fc7e6af6d1',1713501580616,NULL,'{\"value\":\"HCJAtcg3qzlgyCd33AtScHolZv8SYlfEWm/5qHT39d0NtNnQDniWQoMRlaNa6QLVU/kqk93DB962s9TY+gd6Yw==\",\"salt\":\"Vcw+Pb66cmbFfz0kNPL9qw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-04-19 13:39:13',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-04-19 13:39:13',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-04-19 13:39:14',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-04-19 13:39:14',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-04-19 13:39:15',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-04-19 13:39:15',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-04-19 13:39:17',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-04-19 13:39:17',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-04-19 13:39:17',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-04-19 13:39:18',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-04-19 13:39:18',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-04-19 13:39:18',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-04-19 13:39:18',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 13:39:19',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 13:39:19',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 13:39:19',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 13:39:19',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-04-19 13:39:19',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-04-19 13:39:20',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-04-19 13:39:20',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-04-19 13:39:20',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-04-19 13:39:20',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-04-19 13:39:21',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-04-19 13:39:21',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-04-19 13:39:21',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-04-19 13:39:21',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-04-19 13:39:22',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-04-19 13:39:22',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-04-19 13:39:23',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-04-19 13:39:24',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-04-19 13:39:24',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-04-19 13:39:24',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 13:39:24',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 13:39:24',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 13:39:24',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 13:39:24',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 13:39:24',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3501549252'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-04-19 13:39:24',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-04-19 13:39:24',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 13:39:24',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 13:39:24',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 13:39:24',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 13:39:26',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-04-19 13:39:26',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 13:39:26',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 13:39:26',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 13:39:26',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 13:39:27',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 13:39:27',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-04-19 13:39:27',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-04-19 13:39:27',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-04-19 13:39:27',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-04-19 13:39:28',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-04-19 13:39:28',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 13:39:28',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 13:39:28',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 13:39:28',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 13:39:29',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-04-19 13:39:29',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-04-19 13:39:30',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-04-19 13:39:30',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-04-19 13:39:30',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-04-19 13:39:30',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-04-19 13:39:30',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 13:39:30',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 13:39:30',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 13:39:30',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-04-19 13:39:30',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-04-19 13:39:30',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-04-19 13:39:30',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3501549252'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-04-19 13:39:30',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'3501549252'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 13:39:30',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3501549252'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 13:39:30',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3501549252'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 13:39:30',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3501549252'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 13:39:30',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 13:39:30',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 13:39:30',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 13:39:30',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 13:39:31',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 13:39:31',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 13:39:31',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 13:39:31',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 13:39:31',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 13:39:31',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3501549252'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 13:39:31',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-04-19 13:39:31',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'3501549252'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-04-19 13:39:31',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-04-19 13:39:31',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'3501549252'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3501549252'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'3501549252'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 13:39:31',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3501549252'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 13:39:31',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-04-19 13:39:32',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-04-19 13:39:32',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-04-19 13:39:32',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-04-19 13:39:32',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 13:39:32',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 13:39:32',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3501549252'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 13:39:32',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-04-19 13:39:32',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-04-19 13:39:32',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'3501549252'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-04-19 13:39:32',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-04-19 13:39:32',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-04-19 13:39:32',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-04-19 13:39:32',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'3501549252'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-04-19 13:39:32',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 13:39:32',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 13:39:32',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 13:39:32',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 13:39:32',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 13:39:32',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 13:39:32',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 13:39:32',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3501549252');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('3a222216-37a0-400c-a667-c1c98910d4a5','20bf22d3-e493-41ad-8299-93829b669782',0),('3a222216-37a0-400c-a667-c1c98910d4a5','23c190ac-d1c6-4e5f-acf6-47af1e8c1166',1),('3a222216-37a0-400c-a667-c1c98910d4a5','48d88128-ccaa-4c57-b10f-08694724b445',1),('3a222216-37a0-400c-a667-c1c98910d4a5','49c007c3-818a-45e0-9949-fdc35fefaad4',1),('3a222216-37a0-400c-a667-c1c98910d4a5','61a9dd28-2f16-42e8-96af-223c22a01f1c',0),('3a222216-37a0-400c-a667-c1c98910d4a5','7bbf2e14-1661-4abb-b9bf-2851a018098a',0),('3a222216-37a0-400c-a667-c1c98910d4a5','b5be5801-1dbf-4292-8701-84b3a43ce8fd',0),('3a222216-37a0-400c-a667-c1c98910d4a5','b7fd4591-8be9-4ee7-97c3-989be07a498d',1),('3a222216-37a0-400c-a667-c1c98910d4a5','f11f66c4-b63d-4d19-86e9-9db29a5a9e79',1),('3a222216-37a0-400c-a667-c1c98910d4a5','f28511d7-d40d-4948-a79e-154a06352aed',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('07758deb-2196-44c2-9075-d2e2dab43f20','37036fd8-1535-408b-a8f9-13a04534e389',1,'${role_read-token}','read-token','3a222216-37a0-400c-a667-c1c98910d4a5','37036fd8-1535-408b-a8f9-13a04534e389',NULL),('0a8f477a-4386-4988-ad97-4503e250acb3','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_manage-identity-providers}','manage-identity-providers','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('13eed709-0de7-4bdb-800a-436f53576ab2','3a222216-37a0-400c-a667-c1c98910d4a5',0,'${role_uma_authorization}','uma_authorization','3a222216-37a0-400c-a667-c1c98910d4a5',NULL,NULL),('168f66c6-e2c0-4578-8555-7d6aaba18e82','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_manage-events}','manage-events','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('2986651a-d2f1-4628-a311-6ac85387f59d','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_view-groups}','view-groups','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('30e57364-2c9e-4953-9e52-25cf69617c6a','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_view-profile}','view-profile','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('363de1d7-9bc8-425f-8ecf-704ddb5e0cca','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_view-realm}','view-realm','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('3bd611d7-d1d5-4691-be32-2e9cff770e9b','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_view-authorization}','view-authorization','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('3eb62004-cb65-43d7-92ab-861801e15b3e','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_query-clients}','query-clients','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('41bb6b87-71e3-43c1-976b-2903e34b2824','3a222216-37a0-400c-a667-c1c98910d4a5',0,'${role_create-realm}','create-realm','3a222216-37a0-400c-a667-c1c98910d4a5',NULL,NULL),('430b40f6-61fb-4b50-be90-e5d19859d858','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_view-users}','view-users','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('4494c3bd-712e-49a9-8165-4df62e64d55b','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_manage-clients}','manage-clients','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('45c32df8-649a-4f53-a4ee-27b8a15ae936','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_view-events}','view-events','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('4d0efe89-fff9-4039-96b4-1ee7674a00ba','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_manage-account-links}','manage-account-links','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('655e47d6-7b1c-43f4-935e-1c207029b2c3','3a222216-37a0-400c-a667-c1c98910d4a5',0,'${role_admin}','admin','3a222216-37a0-400c-a667-c1c98910d4a5',NULL,NULL),('6b069c07-3059-4f8d-b761-c40ef4e81b68','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_manage-consent}','manage-consent','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('6bcd45a6-a1ce-495f-b12c-d4e1c3e28620','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_create-client}','create-client','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('8f8d5c69-6f15-4388-9e30-ae8ca423e500','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_manage-users}','manage-users','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('96e2421c-b146-4fae-ad40-39d4c770ad7e','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_query-realms}','query-realms','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('a5e39e86-66d1-41d2-8dc5-9da2792f5abe','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_manage-authorization}','manage-authorization','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('b28396d7-e99c-434c-abd0-844906d88ff6','3a222216-37a0-400c-a667-c1c98910d4a5',0,'${role_offline-access}','offline_access','3a222216-37a0-400c-a667-c1c98910d4a5',NULL,NULL),('b8f4085e-b0c1-4a27-989f-6ff86a9bc654','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_view-identity-providers}','view-identity-providers','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('ba83781b-686e-475f-8c16-2108dc262c80','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_view-consent}','view-consent','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('cf1547db-e97c-4cc1-9d43-c5ace00877b3','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_query-groups}','query-groups','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('dda7ae98-c873-4880-8d37-f04f6af304d0','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_impersonation}','impersonation','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('ddcf567a-b83d-4311-9ab4-ea1f43dbf3fe','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_manage-realm}','manage-realm','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('df3f62c0-6a8a-43ae-8ea5-da471ffe6e7c','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_delete-account}','delete-account','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('ea62cc3f-024b-4b1d-a611-d09c7f8cc928','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_view-clients}','view-clients','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('ec36354e-823d-414f-a168-0bd10076f8ea','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1,'${role_query-users}','query-users','3a222216-37a0-400c-a667-c1c98910d4a5','60ee93f7-f7b3-47c8-a85b-1060d9b8483e',NULL),('f378d27f-d391-400a-97a5-25d989504461','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_view-applications}','view-applications','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('f4644e10-53b6-499b-8993-b5f114899f13','286413cc-efb0-4a92-b52e-d8323d321007',1,'${role_manage-account}','manage-account','3a222216-37a0-400c-a667-c1c98910d4a5','286413cc-efb0-4a92-b52e-d8323d321007',NULL),('f74a98ae-0841-46e5-9994-db490675d0a3','3a222216-37a0-400c-a667-c1c98910d4a5',0,'${role_default-roles}','default-roles-master','3a222216-37a0-400c-a667-c1c98910d4a5',NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('unf1o','24.0.3',1713501573);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('068926d4-2ace-4de1-9ab9-75505dfcb7f1','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('0a76314b-2a8f-441e-9086-154dabeabbc8','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('22448121-6919-4a52-87b2-66e13588b4fd','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'f28511d7-d40d-4948-a79e-154a06352aed'),('312f4e6a-84bf-4377-88f6-5551ec934651','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('351c0733-df08-4841-ae3f-5a2551def4b3','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','561c1be0-5309-413d-a856-49449b3417ef',NULL),('35f786c2-7c20-428e-bba7-ad901a2b6bff','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b5be5801-1dbf-4292-8701-84b3a43ce8fd'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','address','openid-connect','oidc-address-mapper',NULL,'61a9dd28-2f16-42e8-96af-223c22a01f1c'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('5a5efa84-fbea-4282-922e-f38679e7b86e','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'20bf22d3-e493-41ad-8299-93829b669782'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','561c1be0-5309-413d-a856-49449b3417ef',NULL),('6f973547-6cdb-428c-948a-a18568ebe83d','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'48d88128-ccaa-4c57-b10f-08694724b445'),('785fcd20-86b3-4c0a-a194-14437a2c3844','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'b5be5801-1dbf-4292-8701-84b3a43ce8fd'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'48d88128-ccaa-4c57-b10f-08694724b445'),('9131d510-3157-4af1-8c93-2947421cf6d0','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'20bf22d3-e493-41ad-8299-93829b669782'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','561c1be0-5309-413d-a856-49449b3417ef',NULL),('9d3d199b-92e3-486c-b663-eecd1aa17231','role list','saml','saml-role-list-mapper',NULL,'b7fd4591-8be9-4ee7-97c3-989be07a498d'),('a28b6d77-b4b0-40f4-9e16-6abccb61f197','full name','openid-connect','oidc-full-name-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('ab0d9841-da38-4237-881d-f9f7ac79bdff','acr loa level','openid-connect','oidc-acr-mapper',NULL,'f11f66c4-b63d-4d19-86e9-9db29a5a9e79'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('c263a4cf-98be-40ea-889d-0adabb1982c7','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'f28511d7-d40d-4948-a79e-154a06352aed'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','locale','openid-connect','oidc-usermodel-attribute-mapper','92c38d77-d1ec-4363-bca9-a9692adb4049',NULL),('d6c504e1-c24b-4119-bed8-9048df498fd2','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'23c190ac-d1c6-4e5f-acf6-47af1e8c1166'),('d894b65e-e06a-4e56-81f2-6677f9098e70','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f28511d7-d40d-4948-a79e-154a06352aed'),('e5c3302d-55e3-4308-951e-f03c956a78d3','audience resolve','openid-connect','oidc-audience-resolve-mapper','489f1498-3103-4f13-90a8-2d6b37396c0a',NULL),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'49c007c3-818a-45e0-9949-fdc35fefaad4');
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('068926d4-2ace-4de1-9ab9-75505dfcb7f1','true','access.token.claim'),('068926d4-2ace-4de1-9ab9-75505dfcb7f1','nickname','claim.name'),('068926d4-2ace-4de1-9ab9-75505dfcb7f1','true','id.token.claim'),('068926d4-2ace-4de1-9ab9-75505dfcb7f1','true','introspection.token.claim'),('068926d4-2ace-4de1-9ab9-75505dfcb7f1','String','jsonType.label'),('068926d4-2ace-4de1-9ab9-75505dfcb7f1','nickname','user.attribute'),('068926d4-2ace-4de1-9ab9-75505dfcb7f1','true','userinfo.token.claim'),('0a76314b-2a8f-441e-9086-154dabeabbc8','true','access.token.claim'),('0a76314b-2a8f-441e-9086-154dabeabbc8','profile','claim.name'),('0a76314b-2a8f-441e-9086-154dabeabbc8','true','id.token.claim'),('0a76314b-2a8f-441e-9086-154dabeabbc8','true','introspection.token.claim'),('0a76314b-2a8f-441e-9086-154dabeabbc8','String','jsonType.label'),('0a76314b-2a8f-441e-9086-154dabeabbc8','profile','user.attribute'),('0a76314b-2a8f-441e-9086-154dabeabbc8','true','userinfo.token.claim'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','true','access.token.claim'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','preferred_username','claim.name'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','true','id.token.claim'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','true','introspection.token.claim'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','String','jsonType.label'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','username','user.attribute'),('1c1604ab-c0ed-4c0a-9314-e3ce291963ec','true','userinfo.token.claim'),('22448121-6919-4a52-87b2-66e13588b4fd','true','access.token.claim'),('22448121-6919-4a52-87b2-66e13588b4fd','true','introspection.token.claim'),('312f4e6a-84bf-4377-88f6-5551ec934651','true','access.token.claim'),('312f4e6a-84bf-4377-88f6-5551ec934651','given_name','claim.name'),('312f4e6a-84bf-4377-88f6-5551ec934651','true','id.token.claim'),('312f4e6a-84bf-4377-88f6-5551ec934651','true','introspection.token.claim'),('312f4e6a-84bf-4377-88f6-5551ec934651','String','jsonType.label'),('312f4e6a-84bf-4377-88f6-5551ec934651','firstName','user.attribute'),('312f4e6a-84bf-4377-88f6-5551ec934651','true','userinfo.token.claim'),('351c0733-df08-4841-ae3f-5a2551def4b3','true','access.token.claim'),('351c0733-df08-4841-ae3f-5a2551def4b3','clientHost','claim.name'),('351c0733-df08-4841-ae3f-5a2551def4b3','true','id.token.claim'),('351c0733-df08-4841-ae3f-5a2551def4b3','String','jsonType.label'),('351c0733-df08-4841-ae3f-5a2551def4b3','clientHost','user.session.note'),('351c0733-df08-4841-ae3f-5a2551def4b3','true','userinfo.token.claim'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','true','access.token.claim'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','upn','claim.name'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','true','id.token.claim'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','true','introspection.token.claim'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','String','jsonType.label'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','username','user.attribute'),('35f786c2-7c20-428e-bba7-ad901a2b6bff','true','userinfo.token.claim'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','true','access.token.claim'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','true','id.token.claim'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','true','introspection.token.claim'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','country','user.attribute.country'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','formatted','user.attribute.formatted'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','locality','user.attribute.locality'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','postal_code','user.attribute.postal_code'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','region','user.attribute.region'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','street','user.attribute.street'),('4cb3612e-01fb-4db8-a9e5-e43ee9743290','true','userinfo.token.claim'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','true','access.token.claim'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','middle_name','claim.name'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','true','id.token.claim'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','true','introspection.token.claim'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','String','jsonType.label'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','middleName','user.attribute'),('4d3ae902-fc6e-4a7e-93cb-62781085af8d','true','userinfo.token.claim'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','true','access.token.claim'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','locale','claim.name'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','true','id.token.claim'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','true','introspection.token.claim'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','String','jsonType.label'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','locale','user.attribute'),('54712ddf-c63e-4276-92d6-7d53a3d3f9d8','true','userinfo.token.claim'),('5a5efa84-fbea-4282-922e-f38679e7b86e','true','access.token.claim'),('5a5efa84-fbea-4282-922e-f38679e7b86e','phone_number_verified','claim.name'),('5a5efa84-fbea-4282-922e-f38679e7b86e','true','id.token.claim'),('5a5efa84-fbea-4282-922e-f38679e7b86e','true','introspection.token.claim'),('5a5efa84-fbea-4282-922e-f38679e7b86e','boolean','jsonType.label'),('5a5efa84-fbea-4282-922e-f38679e7b86e','phoneNumberVerified','user.attribute'),('5a5efa84-fbea-4282-922e-f38679e7b86e','true','userinfo.token.claim'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','true','access.token.claim'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','clientAddress','claim.name'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','true','id.token.claim'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','String','jsonType.label'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','clientAddress','user.session.note'),('64c5b55e-c4b7-4ff2-a6d4-6e66e1d91364','true','userinfo.token.claim'),('6f973547-6cdb-428c-948a-a18568ebe83d','true','access.token.claim'),('6f973547-6cdb-428c-948a-a18568ebe83d','zoneinfo','claim.name'),('6f973547-6cdb-428c-948a-a18568ebe83d','true','id.token.claim'),('6f973547-6cdb-428c-948a-a18568ebe83d','true','introspection.token.claim'),('6f973547-6cdb-428c-948a-a18568ebe83d','String','jsonType.label'),('6f973547-6cdb-428c-948a-a18568ebe83d','zoneinfo','user.attribute'),('6f973547-6cdb-428c-948a-a18568ebe83d','true','userinfo.token.claim'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','true','access.token.claim'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','email','claim.name'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','true','id.token.claim'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','true','introspection.token.claim'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','String','jsonType.label'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','email','user.attribute'),('762bd0cb-9f9d-41ad-b38d-f3e78f48cc80','true','userinfo.token.claim'),('785fcd20-86b3-4c0a-a194-14437a2c3844','true','access.token.claim'),('785fcd20-86b3-4c0a-a194-14437a2c3844','groups','claim.name'),('785fcd20-86b3-4c0a-a194-14437a2c3844','true','id.token.claim'),('785fcd20-86b3-4c0a-a194-14437a2c3844','true','introspection.token.claim'),('785fcd20-86b3-4c0a-a194-14437a2c3844','String','jsonType.label'),('785fcd20-86b3-4c0a-a194-14437a2c3844','true','multivalued'),('785fcd20-86b3-4c0a-a194-14437a2c3844','foo','user.attribute'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','true','access.token.claim'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','email_verified','claim.name'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','true','id.token.claim'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','true','introspection.token.claim'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','boolean','jsonType.label'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','emailVerified','user.attribute'),('8b5f91ad-fc74-48ce-a432-bc59a5414b57','true','userinfo.token.claim'),('9131d510-3157-4af1-8c93-2947421cf6d0','true','access.token.claim'),('9131d510-3157-4af1-8c93-2947421cf6d0','birthdate','claim.name'),('9131d510-3157-4af1-8c93-2947421cf6d0','true','id.token.claim'),('9131d510-3157-4af1-8c93-2947421cf6d0','true','introspection.token.claim'),('9131d510-3157-4af1-8c93-2947421cf6d0','String','jsonType.label'),('9131d510-3157-4af1-8c93-2947421cf6d0','birthdate','user.attribute'),('9131d510-3157-4af1-8c93-2947421cf6d0','true','userinfo.token.claim'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','true','access.token.claim'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','phone_number','claim.name'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','true','id.token.claim'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','true','introspection.token.claim'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','String','jsonType.label'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','phoneNumber','user.attribute'),('9aa57a44-3ea8-43da-8711-3b3ac42f60b7','true','userinfo.token.claim'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','true','access.token.claim'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','clientId','claim.name'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','true','id.token.claim'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','String','jsonType.label'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','clientId','user.session.note'),('9c0ab4d8-4818-4d1d-8f5a-f11d706a7ade','true','userinfo.token.claim'),('9d3d199b-92e3-486c-b663-eecd1aa17231','Role','attribute.name'),('9d3d199b-92e3-486c-b663-eecd1aa17231','Basic','attribute.nameformat'),('9d3d199b-92e3-486c-b663-eecd1aa17231','false','single'),('a28b6d77-b4b0-40f4-9e16-6abccb61f197','true','access.token.claim'),('a28b6d77-b4b0-40f4-9e16-6abccb61f197','true','id.token.claim'),('a28b6d77-b4b0-40f4-9e16-6abccb61f197','true','introspection.token.claim'),('a28b6d77-b4b0-40f4-9e16-6abccb61f197','true','userinfo.token.claim'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','true','access.token.claim'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','website','claim.name'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','true','id.token.claim'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','true','introspection.token.claim'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','String','jsonType.label'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','website','user.attribute'),('a449947a-1b71-4d21-b1d3-01cffa42e0a4','true','userinfo.token.claim'),('ab0d9841-da38-4237-881d-f9f7ac79bdff','true','access.token.claim'),('ab0d9841-da38-4237-881d-f9f7ac79bdff','true','id.token.claim'),('ab0d9841-da38-4237-881d-f9f7ac79bdff','true','introspection.token.claim'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','true','access.token.claim'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','picture','claim.name'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','true','id.token.claim'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','true','introspection.token.claim'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','String','jsonType.label'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','picture','user.attribute'),('ad118ebd-4220-4756-93f7-b87ac1c8658c','true','userinfo.token.claim'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','true','access.token.claim'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','gender','claim.name'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','true','id.token.claim'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','true','introspection.token.claim'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','String','jsonType.label'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','gender','user.attribute'),('bec57a89-31d2-47ab-a03a-cfa88e3f80d3','true','userinfo.token.claim'),('c263a4cf-98be-40ea-889d-0adabb1982c7','true','access.token.claim'),('c263a4cf-98be-40ea-889d-0adabb1982c7','resource_access.${client_id}.roles','claim.name'),('c263a4cf-98be-40ea-889d-0adabb1982c7','true','introspection.token.claim'),('c263a4cf-98be-40ea-889d-0adabb1982c7','String','jsonType.label'),('c263a4cf-98be-40ea-889d-0adabb1982c7','true','multivalued'),('c263a4cf-98be-40ea-889d-0adabb1982c7','foo','user.attribute'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','true','access.token.claim'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','locale','claim.name'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','true','id.token.claim'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','true','introspection.token.claim'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','String','jsonType.label'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','locale','user.attribute'),('ce40f542-27c1-41ce-a5c5-611bdd9e6b9b','true','userinfo.token.claim'),('d6c504e1-c24b-4119-bed8-9048df498fd2','true','access.token.claim'),('d6c504e1-c24b-4119-bed8-9048df498fd2','true','introspection.token.claim'),('d894b65e-e06a-4e56-81f2-6677f9098e70','true','access.token.claim'),('d894b65e-e06a-4e56-81f2-6677f9098e70','realm_access.roles','claim.name'),('d894b65e-e06a-4e56-81f2-6677f9098e70','true','introspection.token.claim'),('d894b65e-e06a-4e56-81f2-6677f9098e70','String','jsonType.label'),('d894b65e-e06a-4e56-81f2-6677f9098e70','true','multivalued'),('d894b65e-e06a-4e56-81f2-6677f9098e70','foo','user.attribute'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','true','access.token.claim'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','family_name','claim.name'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','true','id.token.claim'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','true','introspection.token.claim'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','String','jsonType.label'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','lastName','user.attribute'),('e9ab73e9-e44a-4c3d-b03a-cac793dcd0de','true','userinfo.token.claim'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','true','access.token.claim'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','updated_at','claim.name'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','true','id.token.claim'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','true','introspection.token.claim'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','long','jsonType.label'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','updatedAt','user.attribute'),('f25ac9b1-8c32-4536-8c20-74c45a1e8532','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('3a222216-37a0-400c-a667-c1c98910d4a5',60,300,60,NULL,NULL,NULL,1,0,0,NULL,'master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'60ee93f7-f7b3-47c8-a85b-1060d9b8483e',1800,0,NULL,0,0,0,0,0,1,30,6,'HmacSHA1','totp','dbf7f9d2-b204-45f9-a8ae-2a1f288e8f25','77520c8e-fb66-4696-98bb-d611cf25afd4','877d678d-4d8d-4329-b983-51aecbb4ce71','0d87e935-0e50-4c31-bb91-9cc3d77b7277','425c1efe-efe5-42e8-9422-3bd17950ce52',31536000,0,900,1,0,'279eeb37-6772-470d-968d-32b0f23ac1b0',0,0,0,0,'f74a98ae-0841-46e5-9994-db490675d0a3');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','3a222216-37a0-400c-a667-c1c98910d4a5','false'),('cibaAuthRequestedUserHint','3a222216-37a0-400c-a667-c1c98910d4a5','login_hint'),('cibaBackchannelTokenDeliveryMode','3a222216-37a0-400c-a667-c1c98910d4a5','poll'),('cibaExpiresIn','3a222216-37a0-400c-a667-c1c98910d4a5','120'),('cibaInterval','3a222216-37a0-400c-a667-c1c98910d4a5','5'),('defaultSignatureAlgorithm','3a222216-37a0-400c-a667-c1c98910d4a5','RS256'),('displayName','3a222216-37a0-400c-a667-c1c98910d4a5','Keycloak'),('displayNameHtml','3a222216-37a0-400c-a667-c1c98910d4a5','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','3a222216-37a0-400c-a667-c1c98910d4a5','30'),('firstBrokerLoginFlowId','3a222216-37a0-400c-a667-c1c98910d4a5','0cb7a7f1-9b70-46e7-aeb7-e4c5bfd27f88'),('maxDeltaTimeSeconds','3a222216-37a0-400c-a667-c1c98910d4a5','43200'),('maxFailureWaitSeconds','3a222216-37a0-400c-a667-c1c98910d4a5','900'),('maxTemporaryLockouts','3a222216-37a0-400c-a667-c1c98910d4a5','0'),('minimumQuickLoginWaitSeconds','3a222216-37a0-400c-a667-c1c98910d4a5','60'),('oauth2DeviceCodeLifespan','3a222216-37a0-400c-a667-c1c98910d4a5','600'),('oauth2DevicePollingInterval','3a222216-37a0-400c-a667-c1c98910d4a5','5'),('offlineSessionMaxLifespan','3a222216-37a0-400c-a667-c1c98910d4a5','31536000'),('offlineSessionMaxLifespanEnabled','3a222216-37a0-400c-a667-c1c98910d4a5','true'),('parRequestUriLifespan','3a222216-37a0-400c-a667-c1c98910d4a5','60'),('permanentLockout','3a222216-37a0-400c-a667-c1c98910d4a5','false'),('quickLoginCheckMilliSeconds','3a222216-37a0-400c-a667-c1c98910d4a5','1000'),('realmReusableOtpCode','3a222216-37a0-400c-a667-c1c98910d4a5','false'),('waitIncrementSeconds','3a222216-37a0-400c-a667-c1c98910d4a5','60'),('_browser_header.contentSecurityPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','3a222216-37a0-400c-a667-c1c98910d4a5',''),('_browser_header.referrerPolicy','3a222216-37a0-400c-a667-c1c98910d4a5','no-referrer'),('_browser_header.strictTransportSecurity','3a222216-37a0-400c-a667-c1c98910d4a5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','3a222216-37a0-400c-a667-c1c98910d4a5','nosniff'),('_browser_header.xFrameOptions','3a222216-37a0-400c-a667-c1c98910d4a5','SAMEORIGIN'),('_browser_header.xRobotsTag','3a222216-37a0-400c-a667-c1c98910d4a5','none'),('_browser_header.xXSSProtection','3a222216-37a0-400c-a667-c1c98910d4a5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('3a222216-37a0-400c-a667-c1c98910d4a5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'3a222216-37a0-400c-a667-c1c98910d4a5');
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
INSERT INTO `REDIRECT_URIS` VALUES ('286413cc-efb0-4a92-b52e-d8323d321007','/realms/master/account/*'),('489f1498-3103-4f13-90a8-2d6b37396c0a','/realms/master/account/*'),('92c38d77-d1ec-4363-bca9-a9692adb4049','/admin/master/console/*'),('a6715e82-5a8e-453e-9b2d-a57bc855ea6e','/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('324600a9-2ddd-44bf-91d9-a8da28add448','CONFIGURE_TOTP','Configure OTP','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'CONFIGURE_TOTP',10),('427014bb-2726-49a0-bb53-0a48d3469272','update_user_locale','Update User Locale','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'update_user_locale',1000),('5218d0fe-fe0d-4048-88ca-03a124a7b123','webauthn-register-passwordless','Webauthn Register Passwordless','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'webauthn-register-passwordless',80),('6c0ac447-ca80-4c78-8a4a-353861dbe76e','VERIFY_EMAIL','Verify Email','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'VERIFY_EMAIL',50),('7b103de3-cc36-45a4-acbb-911b78ae7a87','VERIFY_PROFILE','Verify Profile','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'VERIFY_PROFILE',90),('ca9311c1-4abf-445a-ad05-ce09faf3a945','webauthn-register','Webauthn Register','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'webauthn-register',70),('cf36307c-6090-4af8-acc9-04ea104be404','UPDATE_PASSWORD','Update Password','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'UPDATE_PASSWORD',30),('d14a0e98-bc1d-4b65-ab84-290ebbd8831f','UPDATE_PROFILE','Update Profile','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'UPDATE_PROFILE',40),('e23525e3-94d9-4347-b07a-f443e9cb9bda','delete_credential','Delete Credential','3a222216-37a0-400c-a667-c1c98910d4a5',1,0,'delete_credential',100),('f57f202e-4fb1-487a-b818-c534e64ddc51','delete_account','Delete Account','3a222216-37a0-400c-a667-c1c98910d4a5',0,0,'delete_account',60),('fdae9848-49e0-44d1-a831-43017be5eb11','TERMS_AND_CONDITIONS','Terms and Conditions','3a222216-37a0-400c-a667-c1c98910d4a5',0,0,'TERMS_AND_CONDITIONS',20);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('489f1498-3103-4f13-90a8-2d6b37396c0a','2986651a-d2f1-4628-a311-6ac85387f59d'),('489f1498-3103-4f13-90a8-2d6b37396c0a','f4644e10-53b6-499b-8993-b5f114899f13');
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
INSERT INTO `USER_ENTITY` VALUES ('7aa7a8af-c4c7-4d62-96c4-c9fc7e6af6d1',NULL,'536c2fac-0998-4734-bab9-efbfaf545ea5',0,1,NULL,NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','admin',1713501579664,NULL,0),('9932d48f-69ec-40a8-a52f-af2aa915d9bd',NULL,'43030283-2423-41e0-84be-abc2fe8b8063',0,1,NULL,NULL,NULL,'3a222216-37a0-400c-a667-c1c98910d4a5','service-account-_platform',1713501587919,'561c1be0-5309-413d-a856-49449b3417ef',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('655e47d6-7b1c-43f4-935e-1c207029b2c3','7aa7a8af-c4c7-4d62-96c4-c9fc7e6af6d1'),('655e47d6-7b1c-43f4-935e-1c207029b2c3','9932d48f-69ec-40a8-a52f-af2aa915d9bd'),('f74a98ae-0841-46e5-9994-db490675d0a3','7aa7a8af-c4c7-4d62-96c4-c9fc7e6af6d1'),('f74a98ae-0841-46e5-9994-db490675d0a3','9932d48f-69ec-40a8-a52f-af2aa915d9bd');
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
INSERT INTO `WEB_ORIGINS` VALUES ('92c38d77-d1ec-4363-bca9-a9692adb4049','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-04-19 13:39:59','dummy','2024-04-19 13:39:59','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-04-19 13:39:49.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-04-19 13:39:49.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-04-19 13:39:46','system','2024-04-19 13:39:46','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-04-19 13:39:59','dummy','2024-04-19 13:39:59','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-04-19 13:39:46','system','2024-04-19 13:39:50','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-04-19 13:39:46','system','2024-04-19 13:39:50','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-04-19 13:39:46','system','2024-04-19 13:39:50','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-04-19 13:39:59','dummy','2024-04-19 13:39:59','dummy'),('_default','platform.roles',1000,'2024-04-19 13:39:46','system','2024-04-19 13:39:46','system'),('_default','platform.users',10000,'2024-04-19 13:39:46','system','2024-04-19 13:39:46','system'),('_default','platform.workspaces',100,'2024-04-19 13:39:46','system','2024-04-19 13:39:46','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-04-19 13:39:45','1.8.1','2024-04-19 13:39:45','1.8.1'),(2,'1.3.0','SUCCEED',NULL,'2024-04-19 13:39:48','1.8.1','2024-04-19 13:39:48','1.8.1'),(3,'1.5.0','START',NULL,'2024-04-19 13:39:48','1.8.1','2024-04-19 13:39:48','1.8.1'),(4,'1.5.0','SUCCEED',NULL,'2024-04-19 13:39:49','1.8.1','2024-04-19 13:39:49','1.8.1'),(5,'1.5.2','START',NULL,'2024-04-19 13:39:49','1.8.1','2024-04-19 13:39:49','1.8.1'),(6,'1.5.2','SUCCEED',NULL,'2024-04-19 13:39:49','1.8.1','2024-04-19 13:39:49','1.8.1'),(7,'1.6.0','START',NULL,'2024-04-19 13:39:49','1.8.1','2024-04-19 13:39:49','1.8.1'),(8,'1.6.0','SUCCEED',NULL,'2024-04-19 13:39:50','1.8.1','2024-04-19 13:39:50','1.8.1'),(9,'1.7.0','START',NULL,'2024-04-19 13:39:50','1.8.1','2024-04-19 13:39:50','1.8.1'),(10,'1.7.0','SUCCEED',NULL,'2024-04-19 13:39:50','1.8.1','2024-04-19 13:39:50','1.8.1'),(11,'1.8.0','START',NULL,'2024-04-19 13:39:50','1.8.1','2024-04-19 13:39:50','1.8.1'),(12,'1.8.0','SUCCEED',NULL,'2024-04-19 13:39:50','1.8.1','2024-04-19 13:39:50','1.8.1'),(13,'1.8.1','SUCCEED','Update to System Version','2024-04-19 13:39:50','1.8.1','2024-04-19 13:39:50','1.8.1');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"561c1be0-5309-413d-a856-49449b3417ef\", \"TOKEN_CHECK_CLIENT_SECRET\": \"jWbLCkI26IUUo2kd2qRColHDlJL8Nzby\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"14365de2-4235-41e6-9594-fad2d5cd3184\"}','2024-04-19 13:39:48','system','2024-04-19 13:39:48','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.8.2','2024-04-19 13:38:30','system','2024-04-19 13:39:50','1.8.2');
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

-- Dump completed on 2024-04-19 13:44:04
SET foreign_key_checks = 1;

