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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0adb5959-53d2-46fe-bc27-4835c9abfb7b',NULL,'registration-page-form','bb595e6a-d7c1-45a3-bc28-540800b4e67f','f764d579-5231-4af6-8b9b-53be3640e4ff',0,10,1,'2841a6b6-0144-4c11-82dd-fe1f38c61668',NULL),('0d0055ee-d5c3-4655-b78a-257546f695a8',NULL,'client-jwt','bb595e6a-d7c1-45a3-bc28-540800b4e67f','b053efec-04e6-48cf-ae34-9a38f3ba3e68',2,20,0,NULL,NULL),('148f87c9-8d95-4c75-b823-682fca1e9023',NULL,'direct-grant-validate-username','bb595e6a-d7c1-45a3-bc28-540800b4e67f','3ba7eafd-e833-49d1-8e9f-c27f94c74020',0,10,0,NULL,NULL),('1574f050-3f6e-4668-bbd7-d29a1a86827e',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','3ba7eafd-e833-49d1-8e9f-c27f94c74020',1,30,1,'387c910f-9bf5-4de9-b225-fbfb55c94d46',NULL),('16071a5d-c65d-403e-9916-915304af447e',NULL,'direct-grant-validate-otp','bb595e6a-d7c1-45a3-bc28-540800b4e67f','387c910f-9bf5-4de9-b225-fbfb55c94d46',0,20,0,NULL,NULL),('1d6baff9-bf7d-45a8-8991-606d4f3f3e62',NULL,'docker-http-basic-authenticator','bb595e6a-d7c1-45a3-bc28-540800b4e67f','3c2129ef-eb3d-4705-9b03-150cda4f1641',0,10,0,NULL,NULL),('215629d4-3eef-4192-a74d-db37ab1d2814',NULL,'conditional-user-configured','bb595e6a-d7c1-45a3-bc28-540800b4e67f','387c910f-9bf5-4de9-b225-fbfb55c94d46',0,10,0,NULL,NULL),('229231b2-5366-4e9b-a8fd-44252f7b1fad',NULL,'idp-confirm-link','bb595e6a-d7c1-45a3-bc28-540800b4e67f','b850c493-45f4-42d5-9cb2-9baed0f42c83',0,10,0,NULL,NULL),('2a79dff3-f1cf-4c0a-9692-2bbccbaf0c2d',NULL,'registration-recaptcha-action','bb595e6a-d7c1-45a3-bc28-540800b4e67f','2841a6b6-0144-4c11-82dd-fe1f38c61668',3,60,0,NULL,NULL),('2b65b3c5-e0a2-43e8-b708-50c501063460',NULL,'reset-credentials-choose-user','bb595e6a-d7c1-45a3-bc28-540800b4e67f','54bf066e-14ba-4ab0-a242-a1ed041c6525',0,10,0,NULL,NULL),('4720ec49-229d-4187-873f-14d404c48b6a',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','3f503380-7dfe-44ec-a782-0c0aa1da3203',0,20,1,'7b44781c-956a-40e5-99e5-ae8373c6490a',NULL),('4e66abb9-9f65-46a8-b939-0d0823847c18',NULL,'client-secret','bb595e6a-d7c1-45a3-bc28-540800b4e67f','b053efec-04e6-48cf-ae34-9a38f3ba3e68',2,10,0,NULL,NULL),('4f84d734-b28f-40cc-94c2-92e7d26d9b12',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','b850c493-45f4-42d5-9cb2-9baed0f42c83',0,20,1,'5347eff8-bc4c-450b-a699-ff6702ae525b',NULL),('50e7d948-ad28-4677-a217-75e440da5c33',NULL,'auth-otp-form','bb595e6a-d7c1-45a3-bc28-540800b4e67f','fcd41a0a-162b-4c30-a7fb-9b514c092f01',0,20,0,NULL,NULL),('67bcff81-802a-4b1f-8af2-201a0477b5a6',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','54bf066e-14ba-4ab0-a242-a1ed041c6525',1,40,1,'395b47cc-20fe-4682-a58f-c45fa475a118',NULL),('6b66b04d-5739-4a0c-be04-c79e2380adf0',NULL,'direct-grant-validate-password','bb595e6a-d7c1-45a3-bc28-540800b4e67f','3ba7eafd-e833-49d1-8e9f-c27f94c74020',0,20,0,NULL,NULL),('70a0291b-5263-42e4-ad9b-364b8b396720',NULL,'http-basic-authenticator','bb595e6a-d7c1-45a3-bc28-540800b4e67f','68a061b8-67e6-4635-ab00-7a8be74632ee',0,10,0,NULL,NULL),('70a21cce-0946-40ac-a9b2-990422d44e01',NULL,'idp-email-verification','bb595e6a-d7c1-45a3-bc28-540800b4e67f','5347eff8-bc4c-450b-a699-ff6702ae525b',2,10,0,NULL,NULL),('78c52dcd-bd0b-4bda-b817-644fd2d13cfa',NULL,'identity-provider-redirector','bb595e6a-d7c1-45a3-bc28-540800b4e67f','8c3bb430-93ae-40dd-a62c-faff8b9bf607',2,25,0,NULL,NULL),('81879805-e54b-404a-b677-930c18635162',NULL,'auth-username-password-form','bb595e6a-d7c1-45a3-bc28-540800b4e67f','021a2fb4-0fa8-45b0-8b37-4beacb296906',0,10,0,NULL,NULL),('8312bc94-4d90-433f-beb1-fb505bec87f3',NULL,'client-x509','bb595e6a-d7c1-45a3-bc28-540800b4e67f','b053efec-04e6-48cf-ae34-9a38f3ba3e68',2,40,0,NULL,NULL),('86ad1d01-9984-424d-beb3-81868f4ee2e0',NULL,'registration-terms-and-conditions','bb595e6a-d7c1-45a3-bc28-540800b4e67f','2841a6b6-0144-4c11-82dd-fe1f38c61668',3,70,0,NULL,NULL),('8a3d10ef-705c-4cde-b80b-19ea5d8418a5',NULL,'conditional-user-configured','bb595e6a-d7c1-45a3-bc28-540800b4e67f','fcd41a0a-162b-4c30-a7fb-9b514c092f01',0,10,0,NULL,NULL),('92ae1a0e-2237-4543-af9f-68abcdcd72b9',NULL,'reset-password','bb595e6a-d7c1-45a3-bc28-540800b4e67f','54bf066e-14ba-4ab0-a242-a1ed041c6525',0,30,0,NULL,NULL),('9344b8da-d503-4164-939d-5efdfe755a09',NULL,'idp-create-user-if-unique','bb595e6a-d7c1-45a3-bc28-540800b4e67f','7b44781c-956a-40e5-99e5-ae8373c6490a',2,10,0,NULL,'c0721044-3d42-4054-a102-294a02c4b904'),('98bc5595-c580-42a0-afa3-09b5f62275cc',NULL,'client-secret-jwt','bb595e6a-d7c1-45a3-bc28-540800b4e67f','b053efec-04e6-48cf-ae34-9a38f3ba3e68',2,30,0,NULL,NULL),('9b40a9db-823c-4d43-bc22-ece3535933c2',NULL,'registration-user-creation','bb595e6a-d7c1-45a3-bc28-540800b4e67f','2841a6b6-0144-4c11-82dd-fe1f38c61668',0,20,0,NULL,NULL),('9f2941b3-2591-4eb3-87b7-4e7fd14a5b77',NULL,'reset-otp','bb595e6a-d7c1-45a3-bc28-540800b4e67f','395b47cc-20fe-4682-a58f-c45fa475a118',0,20,0,NULL,NULL),('9f892c00-a6e4-46e2-866d-0134ac2325bd',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','52f79e33-2f61-4b44-8132-8a6db0e1c130',1,20,1,'30cc85f8-190d-4968-9a3a-248d6de95e06',NULL),('a1197860-1506-40bf-aba0-9fde845bee74',NULL,'auth-cookie','bb595e6a-d7c1-45a3-bc28-540800b4e67f','8c3bb430-93ae-40dd-a62c-faff8b9bf607',2,10,0,NULL,NULL),('ae70e2d7-dccf-40a7-8b2a-f85fb0d8d648',NULL,'idp-username-password-form','bb595e6a-d7c1-45a3-bc28-540800b4e67f','52f79e33-2f61-4b44-8132-8a6db0e1c130',0,10,0,NULL,NULL),('b7e5f854-b8ca-4096-bc59-e2e9f05607b1',NULL,'auth-spnego','bb595e6a-d7c1-45a3-bc28-540800b4e67f','8c3bb430-93ae-40dd-a62c-faff8b9bf607',3,20,0,NULL,NULL),('bc4cf622-74b3-4eb3-8b2a-bb881e303be8',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','8c3bb430-93ae-40dd-a62c-faff8b9bf607',2,30,1,'021a2fb4-0fa8-45b0-8b37-4beacb296906',NULL),('bcb6e62b-a5b6-41a0-a5ff-b88486863148',NULL,'reset-credential-email','bb595e6a-d7c1-45a3-bc28-540800b4e67f','54bf066e-14ba-4ab0-a242-a1ed041c6525',0,20,0,NULL,NULL),('c12e21a7-3537-4f4f-8167-662739c8cce6',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','7b44781c-956a-40e5-99e5-ae8373c6490a',2,20,1,'b850c493-45f4-42d5-9cb2-9baed0f42c83',NULL),('c928cab1-6db1-49f4-983c-14f0b2fb2421',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','5347eff8-bc4c-450b-a699-ff6702ae525b',2,20,1,'52f79e33-2f61-4b44-8132-8a6db0e1c130',NULL),('cd05cf9a-1a38-4152-b5f9-98d4ad40e2ac',NULL,'auth-otp-form','bb595e6a-d7c1-45a3-bc28-540800b4e67f','30cc85f8-190d-4968-9a3a-248d6de95e06',0,20,0,NULL,NULL),('d63b0651-c121-488a-8ede-293173f660e2',NULL,'conditional-user-configured','bb595e6a-d7c1-45a3-bc28-540800b4e67f','30cc85f8-190d-4968-9a3a-248d6de95e06',0,10,0,NULL,NULL),('e1c21885-9cbf-40f0-ab24-0e1150974d73',NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','021a2fb4-0fa8-45b0-8b37-4beacb296906',1,20,1,'fcd41a0a-162b-4c30-a7fb-9b514c092f01',NULL),('f1b6cedf-70ab-43f0-8c3b-f9738a712487',NULL,'idp-review-profile','bb595e6a-d7c1-45a3-bc28-540800b4e67f','3f503380-7dfe-44ec-a782-0c0aa1da3203',0,10,0,NULL,'e4aba029-2716-4ec9-8573-f53027f6bc00'),('f259716b-f617-407b-bdcd-f907a0f01dfa',NULL,'registration-password-action','bb595e6a-d7c1-45a3-bc28-540800b4e67f','2841a6b6-0144-4c11-82dd-fe1f38c61668',0,50,0,NULL,NULL),('f4c9633d-ab8e-468f-95fd-f816451f5d38',NULL,'conditional-user-configured','bb595e6a-d7c1-45a3-bc28-540800b4e67f','395b47cc-20fe-4682-a58f-c45fa475a118',0,10,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('021a2fb4-0fa8-45b0-8b37-4beacb296906','forms','Username, password, otp and other auth forms.','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('2841a6b6-0144-4c11-82dd-fe1f38c61668','registration form','registration form','bb595e6a-d7c1-45a3-bc28-540800b4e67f','form-flow',0,1),('30cc85f8-190d-4968-9a3a-248d6de95e06','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('387c910f-9bf5-4de9-b225-fbfb55c94d46','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('395b47cc-20fe-4682-a58f-c45fa475a118','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('3ba7eafd-e833-49d1-8e9f-c27f94c74020','direct grant','OpenID Connect Resource Owner Grant','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('3c2129ef-eb3d-4705-9b03-150cda4f1641','docker auth','Used by Docker clients to authenticate against the IDP','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('3f503380-7dfe-44ec-a782-0c0aa1da3203','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('52f79e33-2f61-4b44-8132-8a6db0e1c130','Verify Existing Account by Re-authentication','Reauthentication of existing account','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('5347eff8-bc4c-450b-a699-ff6702ae525b','Account verification options','Method with which to verity the existing account','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('54bf066e-14ba-4ab0-a242-a1ed041c6525','reset credentials','Reset credentials for a user if they forgot their password or something','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('68a061b8-67e6-4635-ab00-7a8be74632ee','saml ecp','SAML ECP Profile Authentication Flow','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('7b44781c-956a-40e5-99e5-ae8373c6490a','User creation or linking','Flow for the existing/non-existing user alternatives','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('8c3bb430-93ae-40dd-a62c-faff8b9bf607','browser','browser based authentication','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('b053efec-04e6-48cf-ae34-9a38f3ba3e68','clients','Base authentication for clients','bb595e6a-d7c1-45a3-bc28-540800b4e67f','client-flow',1,1),('b850c493-45f4-42d5-9cb2-9baed0f42c83','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1),('f764d579-5231-4af6-8b9b-53be3640e4ff','registration','registration flow','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',1,1),('fcd41a0a-162b-4c30-a7fb-9b514c092f01','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','bb595e6a-d7c1-45a3-bc28-540800b4e67f','basic-flow',0,1);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('c0721044-3d42-4054-a102-294a02c4b904','create unique user config','bb595e6a-d7c1-45a3-bc28-540800b4e67f'),('e4aba029-2716-4ec9-8573-f53027f6bc00','review profile config','bb595e6a-d7c1-45a3-bc28-540800b4e67f');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('c0721044-3d42-4054-a102-294a02c4b904','false','require.password.update.after.registration'),('e4aba029-2716-4ec9-8573-f53027f6bc00','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('02363cef-4ea8-487e-8565-44b5f53f5752',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('023df708-c205-46d6-b2cd-31a9894be12c',1,1,'_platform',0,0,'FLRUn5SIWinrCNVQ5UkzYCr5VunxHSwV',NULL,0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('1e8b1b50-cdb2-4178-9130-a761f672c037',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('4ac2a27d-b608-4022-8b3b-07d4df386c5a',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('4de35737-4510-411e-b7b4-ba015310f3dd',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('b8d8d038-721a-408f-9c28-81aaf4326e85',1,0,'_platform-console',0,1,'mqXuAs0b1yS7E376IrSipc2HkA4sodJW',NULL,0,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('023df708-c205-46d6-b2cd-31a9894be12c','backchannel.logout.revoke.offline.tokens','false'),('023df708-c205-46d6-b2cd-31a9894be12c','backchannel.logout.session.required','true'),('023df708-c205-46d6-b2cd-31a9894be12c','client.secret.creation.time','1718269933'),('023df708-c205-46d6-b2cd-31a9894be12c','client_credentials.use_refresh_token','false'),('023df708-c205-46d6-b2cd-31a9894be12c','display.on.consent.screen','false'),('023df708-c205-46d6-b2cd-31a9894be12c','exclude.session.state.from.auth.response','false'),('023df708-c205-46d6-b2cd-31a9894be12c','id.token.as.detached.signature','false'),('023df708-c205-46d6-b2cd-31a9894be12c','oauth2.device.authorization.grant.enabled','false'),('023df708-c205-46d6-b2cd-31a9894be12c','oidc.ciba.grant.enabled','false'),('023df708-c205-46d6-b2cd-31a9894be12c','require.pushed.authorization.requests','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.artifact.binding','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.assertion.signature','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.authnstatement','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.client.signature','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.encrypt','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.force.post.binding','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.multivalued.roles','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.onetimeuse.condition','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.server.signature','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml.server.signature.keyinfo.ext','false'),('023df708-c205-46d6-b2cd-31a9894be12c','saml_force_name_id_format','false'),('023df708-c205-46d6-b2cd-31a9894be12c','tls.client.certificate.bound.access.tokens','false'),('023df708-c205-46d6-b2cd-31a9894be12c','use.refresh.tokens','true'),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','pkce.code.challenge.method','S256'),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','post.logout.redirect.uris','+'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','access.token.lifespan','86400'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','acr.loa.map','{}'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','backchannel.logout.revoke.offline.tokens','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','backchannel.logout.session.required','true'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','client.session.idle.timeout','86400'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','client.session.max.lifespan','86400'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','client_credentials.use_refresh_token','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','display.on.consent.screen','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','exclude.session.state.from.auth.response','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','frontchannel.logout.session.required','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','id.token.as.detached.signature','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','oauth2.device.authorization.grant.enabled','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','oidc.ciba.grant.enabled','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','require.pushed.authorization.requests','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.allow.ecp.flow','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.artifact.binding','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.assertion.signature','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.authnstatement','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.client.signature','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.encrypt','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.force.post.binding','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.multivalued.roles','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.onetimeuse.condition','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.server.signature','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml.server.signature.keyinfo.ext','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','saml_force_name_id_format','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','tls.client.certificate.bound.access.tokens','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','token.response.type.bearer.lower-case','false'),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','use.refresh.tokens','true'),('1e8b1b50-cdb2-4178-9130-a761f672c037','post.logout.redirect.uris','+'),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','pkce.code.challenge.method','S256'),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','post.logout.redirect.uris','+'),('b8d8d038-721a-408f-9c28-81aaf4326e85','backchannel.logout.revoke.offline.tokens','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','backchannel.logout.session.required','true'),('b8d8d038-721a-408f-9c28-81aaf4326e85','client.secret.creation.time','1718269935'),('b8d8d038-721a-408f-9c28-81aaf4326e85','client_credentials.use_refresh_token','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','display.on.consent.screen','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','exclude.session.state.from.auth.response','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','id.token.as.detached.signature','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','oauth2.device.authorization.grant.enabled','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','oidc.ciba.grant.enabled','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','post.logout.redirect.uris','/*'),('b8d8d038-721a-408f-9c28-81aaf4326e85','require.pushed.authorization.requests','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.artifact.binding','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.assertion.signature','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.authnstatement','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.client.signature','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.encrypt','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.force.post.binding','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.multivalued.roles','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.onetimeuse.condition','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.server.signature','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml.server.signature.keyinfo.ext','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','saml_force_name_id_format','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','tls.client.certificate.bound.access.tokens','false'),('b8d8d038-721a-408f-9c28-81aaf4326e85','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('09186e27-b526-4635-b52f-8ed792a42c15','roles','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect scope for add user roles to the access token','openid-connect'),('113981be-0776-4f0e-9792-aa081a634842','role_list','bb595e6a-d7c1-45a3-bc28-540800b4e67f','SAML role list','saml'),('8787effb-284c-4a41-bf5d-4eb52fae9fa1','address','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect built-in scope: address','openid-connect'),('9953d2ff-3cfa-444f-aaef-f0cb58674406','web-origins','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('af5af0d8-ef1a-447a-aa5c-c918fa25387b','phone','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect built-in scope: phone','openid-connect'),('b48f51de-9bc0-40f8-986a-e995e2d7cbac','email','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect built-in scope: email','openid-connect'),('e70a4245-eb87-4c18-9088-0ff4eacadbc2','acr','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('e85fb2fc-85db-4b95-96ec-b2b379ac9b18','microprofile-jwt','bb595e6a-d7c1-45a3-bc28-540800b4e67f','Microprofile - JWT built-in scope','openid-connect'),('ed9aaae2-cd79-4a67-a7c7-279854c1b8d8','offline_access','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect built-in scope: offline_access','openid-connect'),('ede9531c-ccf6-4609-b120-a82d0706649d','profile','bb595e6a-d7c1-45a3-bc28-540800b4e67f','OpenID Connect built-in scope: profile','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('09186e27-b526-4635-b52f-8ed792a42c15','${rolesScopeConsentText}','consent.screen.text'),('09186e27-b526-4635-b52f-8ed792a42c15','true','display.on.consent.screen'),('09186e27-b526-4635-b52f-8ed792a42c15','false','include.in.token.scope'),('113981be-0776-4f0e-9792-aa081a634842','${samlRoleListScopeConsentText}','consent.screen.text'),('113981be-0776-4f0e-9792-aa081a634842','true','display.on.consent.screen'),('8787effb-284c-4a41-bf5d-4eb52fae9fa1','${addressScopeConsentText}','consent.screen.text'),('8787effb-284c-4a41-bf5d-4eb52fae9fa1','true','display.on.consent.screen'),('8787effb-284c-4a41-bf5d-4eb52fae9fa1','true','include.in.token.scope'),('9953d2ff-3cfa-444f-aaef-f0cb58674406','','consent.screen.text'),('9953d2ff-3cfa-444f-aaef-f0cb58674406','false','display.on.consent.screen'),('9953d2ff-3cfa-444f-aaef-f0cb58674406','false','include.in.token.scope'),('af5af0d8-ef1a-447a-aa5c-c918fa25387b','${phoneScopeConsentText}','consent.screen.text'),('af5af0d8-ef1a-447a-aa5c-c918fa25387b','true','display.on.consent.screen'),('af5af0d8-ef1a-447a-aa5c-c918fa25387b','true','include.in.token.scope'),('b48f51de-9bc0-40f8-986a-e995e2d7cbac','${emailScopeConsentText}','consent.screen.text'),('b48f51de-9bc0-40f8-986a-e995e2d7cbac','true','display.on.consent.screen'),('b48f51de-9bc0-40f8-986a-e995e2d7cbac','true','include.in.token.scope'),('e70a4245-eb87-4c18-9088-0ff4eacadbc2','false','display.on.consent.screen'),('e70a4245-eb87-4c18-9088-0ff4eacadbc2','false','include.in.token.scope'),('e85fb2fc-85db-4b95-96ec-b2b379ac9b18','false','display.on.consent.screen'),('e85fb2fc-85db-4b95-96ec-b2b379ac9b18','true','include.in.token.scope'),('ed9aaae2-cd79-4a67-a7c7-279854c1b8d8','${offlineAccessScopeConsentText}','consent.screen.text'),('ed9aaae2-cd79-4a67-a7c7-279854c1b8d8','true','display.on.consent.screen'),('ede9531c-ccf6-4609-b120-a82d0706649d','${profileScopeConsentText}','consent.screen.text'),('ede9531c-ccf6-4609-b120-a82d0706649d','true','display.on.consent.screen'),('ede9531c-ccf6-4609-b120-a82d0706649d','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('02363cef-4ea8-487e-8565-44b5f53f5752','09186e27-b526-4635-b52f-8ed792a42c15',1),('02363cef-4ea8-487e-8565-44b5f53f5752','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('02363cef-4ea8-487e-8565-44b5f53f5752','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('02363cef-4ea8-487e-8565-44b5f53f5752','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('02363cef-4ea8-487e-8565-44b5f53f5752','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('02363cef-4ea8-487e-8565-44b5f53f5752','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('02363cef-4ea8-487e-8565-44b5f53f5752','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('02363cef-4ea8-487e-8565-44b5f53f5752','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('02363cef-4ea8-487e-8565-44b5f53f5752','ede9531c-ccf6-4609-b120-a82d0706649d',1),('023df708-c205-46d6-b2cd-31a9894be12c','09186e27-b526-4635-b52f-8ed792a42c15',1),('023df708-c205-46d6-b2cd-31a9894be12c','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('023df708-c205-46d6-b2cd-31a9894be12c','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('023df708-c205-46d6-b2cd-31a9894be12c','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('023df708-c205-46d6-b2cd-31a9894be12c','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('023df708-c205-46d6-b2cd-31a9894be12c','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('023df708-c205-46d6-b2cd-31a9894be12c','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('023df708-c205-46d6-b2cd-31a9894be12c','ede9531c-ccf6-4609-b120-a82d0706649d',1),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','09186e27-b526-4635-b52f-8ed792a42c15',1),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','ede9531c-ccf6-4609-b120-a82d0706649d',1),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','09186e27-b526-4635-b52f-8ed792a42c15',1),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('1633fc3a-f7f8-40c5-bf00-e9d51206e2c4','ede9531c-ccf6-4609-b120-a82d0706649d',1),('1e8b1b50-cdb2-4178-9130-a761f672c037','09186e27-b526-4635-b52f-8ed792a42c15',1),('1e8b1b50-cdb2-4178-9130-a761f672c037','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('1e8b1b50-cdb2-4178-9130-a761f672c037','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('1e8b1b50-cdb2-4178-9130-a761f672c037','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('1e8b1b50-cdb2-4178-9130-a761f672c037','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('1e8b1b50-cdb2-4178-9130-a761f672c037','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('1e8b1b50-cdb2-4178-9130-a761f672c037','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('1e8b1b50-cdb2-4178-9130-a761f672c037','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('1e8b1b50-cdb2-4178-9130-a761f672c037','ede9531c-ccf6-4609-b120-a82d0706649d',1),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','09186e27-b526-4635-b52f-8ed792a42c15',1),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','ede9531c-ccf6-4609-b120-a82d0706649d',1),('4de35737-4510-411e-b7b4-ba015310f3dd','09186e27-b526-4635-b52f-8ed792a42c15',1),('4de35737-4510-411e-b7b4-ba015310f3dd','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('4de35737-4510-411e-b7b4-ba015310f3dd','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('4de35737-4510-411e-b7b4-ba015310f3dd','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('4de35737-4510-411e-b7b4-ba015310f3dd','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('4de35737-4510-411e-b7b4-ba015310f3dd','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('4de35737-4510-411e-b7b4-ba015310f3dd','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('4de35737-4510-411e-b7b4-ba015310f3dd','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('4de35737-4510-411e-b7b4-ba015310f3dd','ede9531c-ccf6-4609-b120-a82d0706649d',1),('b8d8d038-721a-408f-9c28-81aaf4326e85','09186e27-b526-4635-b52f-8ed792a42c15',1),('b8d8d038-721a-408f-9c28-81aaf4326e85','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('b8d8d038-721a-408f-9c28-81aaf4326e85','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('b8d8d038-721a-408f-9c28-81aaf4326e85','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('b8d8d038-721a-408f-9c28-81aaf4326e85','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('b8d8d038-721a-408f-9c28-81aaf4326e85','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('b8d8d038-721a-408f-9c28-81aaf4326e85','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('b8d8d038-721a-408f-9c28-81aaf4326e85','ede9531c-ccf6-4609-b120-a82d0706649d',1),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','09186e27-b526-4635-b52f-8ed792a42c15',1),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('c3219b1f-f1c5-46e8-8766-ce95c274c8f9','ede9531c-ccf6-4609-b120-a82d0706649d',1);
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('ed9aaae2-cd79-4a67-a7c7-279854c1b8d8','063d8b0a-ddaf-4e8e-a20f-c10d9b7242c2');
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
INSERT INTO `COMPONENT` VALUES ('038647bc-1c56-448c-a4fa-0951d922bf12','rsa-enc-generated','bb595e6a-d7c1-45a3-bc28-540800b4e67f','rsa-enc-generated','org.keycloak.keys.KeyProvider','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL),('1ec72c60-4fe7-443d-b78a-16a78b23f353','Max Clients Limit','bb595e6a-d7c1-45a3-bc28-540800b4e67f','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','anonymous'),('2496f5be-e053-48a3-9425-2ca2923fff43','rsa-generated','bb595e6a-d7c1-45a3-bc28-540800b4e67f','rsa-generated','org.keycloak.keys.KeyProvider','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL),('29a81ad1-072d-4a53-adf8-e129969e12be',NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL),('5a621b74-9e82-4bff-a867-b4a386b9c076','hmac-generated-hs512','bb595e6a-d7c1-45a3-bc28-540800b4e67f','hmac-generated','org.keycloak.keys.KeyProvider','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL),('61db933b-5594-47ab-8dfa-b253683fa9b8','Allowed Protocol Mapper Types','bb595e6a-d7c1-45a3-bc28-540800b4e67f','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','authenticated'),('6e4fbc7d-2f8a-4830-9fef-4d1107b4a098','Trusted Hosts','bb595e6a-d7c1-45a3-bc28-540800b4e67f','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','anonymous'),('78ef5f72-c13d-4ec6-aaa9-994d4f515bb3','Allowed Client Scopes','bb595e6a-d7c1-45a3-bc28-540800b4e67f','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','anonymous'),('7989082a-ac52-4400-8237-510e509815bc','Allowed Client Scopes','bb595e6a-d7c1-45a3-bc28-540800b4e67f','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','authenticated'),('869a55e3-751d-4520-b617-828122ffcf19','Full Scope Disabled','bb595e6a-d7c1-45a3-bc28-540800b4e67f','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','anonymous'),('addd1506-1d29-4120-b4fd-d020a6e4c8cb','Consent Required','bb595e6a-d7c1-45a3-bc28-540800b4e67f','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','anonymous'),('cc573bb5-f5df-47f6-ba97-c927746e44c6','Allowed Protocol Mapper Types','bb595e6a-d7c1-45a3-bc28-540800b4e67f','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','anonymous'),('de4b3031-a774-4038-9174-3a71beebbe34','aes-generated','bb595e6a-d7c1-45a3-bc28-540800b4e67f','aes-generated','org.keycloak.keys.KeyProvider','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('01109350-2755-42d2-bd72-7b6cc00fdb69','78ef5f72-c13d-4ec6-aaa9-994d4f515bb3','allow-default-scopes','true'),('0e17c36d-b515-4604-bd20-3e2dd04120cb','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('13f09348-4a7d-4e92-aeca-a481d44a3e0f','de4b3031-a774-4038-9174-3a71beebbe34','secret','YoDm2bO9MZCCbdE52iI0vg'),('21bb6f3e-304a-4c81-b8af-2211cc9ab053','2496f5be-e053-48a3-9425-2ca2923fff43','keyUse','SIG'),('3358da6a-d7ce-4c59-a04c-1247be9e6452','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4bf5fe35-eb8c-42c3-80e4-8292c0dde6ab','5a621b74-9e82-4bff-a867-b4a386b9c076','secret','3tuVDZI8vkGP3RvGtaUXMXDOO1xt7LeBvQOeqj9yiL4itFutXcbkK_Hm9S0s1N1--Zg0KGVfWYt6ArO9R9ugV0XKljUdbAexDgZvNs0hA_A7a74L1TmA3WqvtxEl0zfWWfIMKvjC9187Q4drgz28dIybjwvsRIHuu5D-hicuZHU'),('5211f368-d173-4f50-8f67-c894ffc10e28','2496f5be-e053-48a3-9425-2ca2923fff43','privateKey','MIIEogIBAAKCAQEArIb2VlqAtYW2Own8+WhDwHzPV90MR6wnxbc/1/7J2LdpbScjPhIcpTFJH6YB4ddmz/TtU2KSlmTWQtXbo/lInVyCPsuCLXQ3RsrpG4xIxiZQ7KZHhKxfsgCQCmaV1Yv8tleLfMTZngNuQ9u3mPfxTQ/ZljL6S2qLhscS4d4QYYQ3Lad9al8UNJGFYoZnuDC4F3WjukAYXrvljudxUfr2IidMgl2vFlfrEsLX5hVqbUAfcMt0W4QSJ+Qm3TzXp7N0D/BetC/+o8VvnKaxgxUmYBl7fC70zqTmZgOrMJJwF3b7bXmXnWkrKyHjiN7s2/+uQxJ5LhfT+XQYs2OCN/5SkwIDAQABAoIBADIZcvk6iLutm3BjgyGNxHbmB3PVTdaWSGpiv1hitYyIHkZDIjnJGqZhvIFDPLKvUTy8PBqFulmP6KQ54/Em145SqcPAZwn6AH8/Nxf30b4wrDk8Q/Jj99oBzdInXgVIBFeS7n+JzkPTbTapXBRAk8K0ApRaM1KpGuFFd9c9G/ak6oH+hXr99HPP+pLJHKxqYISogJplOyP1xyJY8p3kfTsXtFA9IJ2u7V2nDugBW2NE1RuDTYEzkxGrHsdLZgVikWs9gMlPHFrtgNpDXAbjphvlvslbNUcqMbxFLA18s/Jadku/lBUkCRj62orixehGqLX49D06ZegxG3UBrSAQE6ECgYEA6XDVv50rIfFj7B/3QCgyQf7ClkLucJWLknNHvaJr5/grhZf/JeOwa6Ku1eSe9TuGjUnTr9sy3Bpc+KvmzKoxBNkgNtWZutX9AXpPrWoGSFd2TA98PnXFxgns/QhnmJ+9QsnAeErG8/cXXeMT/tbbSh+MhruYDYWKgKFMxQIBhrECgYEAvTMq02zQu9pv5afT/o3y2nWcPCUeHVaKbFCVDHFGnbaOFgoVIbrKwQ+fnasZWmBi0MrU1UuxZp+xK7ZG+QWLtI92Cs2EoleVnM0lr0Eimd3PH3S+B7YxgZUm8GlKXeBtpJf3z0nqU8LYa7dXzJQSm6+ZxaaJCqiaTP63bokCRoMCgYBLpUHOruqMPEHKAW3Iv33RvvFladkEaKFq2qpzvA9FgzjvOJr4tzizGGuZalVMWHa4kCTlxp1Lj8ty1Zmb1sa9sHJs8ni3f6JV+UGai1Hv3U+7RAVZ5CYrj4nZUQDpB1J4MxKIqIqiAf7zcKNJIGy9L04FVwLl1tFT73EGIilGcQKBgDljlt7wx9Pja0OnB5fUKND5Eb3wqFTP1kcKnlta1MesAydOQaCsjynGem0R5CvUxsR8cdiNEC+Hyu7uaFLKytinF3ApbMztcjVQyNiDEmLHtDbfa3DdY+DhhCEyXttg4wElE4bt7cUgehMaVuh4Fbjhp+wbGsB/6eXm8W724hjPAoGAXlyP/CIKonA5WWPt9nJATZpjB4hqBbXiFfez7AsSn8WM77Ma4TnQCGQ0qJdK8xDTTAZlRIz/ncm4QAYaP7TTpm8OKU3sEAfPWhKYsA3EgwtmqUccgPmTwwKFWQLPACwnzL4t9qnoMVDmIGxxWRLocWRF+XEvnV3MG5StI7xfVLQ='),('55593184-407d-4292-90e5-53515c0a63b4','038647bc-1c56-448c-a4fa-0951d922bf12','priority','100'),('568949f4-4b9e-474d-a51c-6939c6857bbc','6e4fbc7d-2f8a-4830-9fef-4d1107b4a098','client-uris-must-match','true'),('5a8a6d40-32e4-4cbe-b374-688d86bdfca5','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5f23cea6-0ad1-4f20-840f-37a181729e7f','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','saml-user-property-mapper'),('64a084fe-1de2-4582-a4a9-42035b5d2160','1ec72c60-4fe7-443d-b78a-16a78b23f353','max-clients','200'),('6adf7f0f-fea3-42c2-a822-bf7321bd2a61','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('73d3f197-f895-453c-a146-13079a40c65a','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','saml-role-list-mapper'),('748224e4-9f27-4821-8443-204603f524a5','5a621b74-9e82-4bff-a867-b4a386b9c076','priority','100'),('8786c0a8-faa8-48b8-bd59-80cfd25618c2','7989082a-ac52-4400-8237-510e509815bc','allow-default-scopes','true'),('88b45df1-7ff1-425a-8399-22f82240f1eb','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','saml-user-property-mapper'),('89ce2c27-65c5-46f3-b740-abe22edb9da8','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('8a9c3232-9e86-4be9-8d12-5d0942858dbc','2496f5be-e053-48a3-9425-2ca2923fff43','priority','100'),('8dc82169-1bac-4ee4-8c3f-fa6bef451256','038647bc-1c56-448c-a4fa-0951d922bf12','privateKey','MIIEoQIBAAKCAQEAyvPWgW/KB7MYaUJ7L6/9hMBe47vpIx5UfrCz6NmmNxcoMqolBAAaS1V3Fx8SvDfIUi4KwqXJEmAs1VBGVsm3Ci/PRyjqRFXSm0uFTydIuWhqB+c5kimgR/aEueK96X/cdZb5O0tHh49nzYa9UF+OAzPs4nC0Cbip160amFfTg9HbcuXFDHGwKiVcXh50NWZHqPc4WM7utfDZFVsdVOVctUA2lC72tcnaLc1lNm7fkbJCf9nlQUCpCSAU1B27CY0aRw+oiNAF0YWUXuQs856KE9cLOI7WYvspPDUA6NGxP1keCOC0I2AzUsK8B8WkEjK/FkDlU9pNJhxrYRQAqRjWnwIDAQABAoH/bvzqUd7QnWVT9DxnIa0c93w8aE5bMNllW+NGgBCG1ZnUYeCqXYWw24HhnsNfe48F/esv90Kys1nlKsK7tLqbXvbGZCP7+WL1yfeC78aL/tkbIzdQRJ5/CNvHueBF+2vxJF1r7wE8HOZP3hXRciLPhvDemvcHfkl+mHQSFz3wbiVcJCXvGiBU/duFMuPqge7SBC0rb66SgxRRJns7NTxM4IkTZH5voZko/AQlSYLR99vhBQckIax8wMhWui/nNOzwO++fxFtf+vWTJ75S9iv5Qa5O6e6X3bmE+trPeXeK0CyksN3eUWkGsQc4r6wvkl9JJRdn6qX+l0uyguIn3jjBAoGBAPGAAK5BsCf3O/yxYyyGCHvCXwmjWh0Ez7QPFzRB23aCK8dqpaRvhMsLX1wu5vjkcHgHeMwWJiLmvq3kAugv3UmQjL0YIMUt8CbiNwByvELPEzSwIp0dNm3lmDKZPsSnRwF9m0O/lOy4kuOBCRZUdO0dKhZGBS+xc7nCD3Yeeg73AoGBANcjVlKtY3su6HAHaMjJPhxzZniPU+Ofew6pYHhFYpHhGC13H5PfzpViG4L9L+7xgD3kb27R15BTQiYBbcj8vi2tmR8u5AWCDu1HEN5qCMv4mL+Aq0vtam0//EZlAm+9KQxVT2NAiqWAfM4TuvWF3SqgoMXlgSnRYq5RJ+SYjwOZAoGBAMjjZa2Ozu4v5yKInKrIw/3O7ieiTq+c9PofI3pA3kJyfeBggnGKorgUObsA+PlJbZUrAf0i345gy3TzGsfyKO2s5KXXkEr1r7NoscAZsSkSADPv4Js5VbGNL1HH0ELds182ERYGI+fWkbnV+K0ujCVCAWSN0nqd7lozZ5EmQPp5AoGAZYwCdOfuqvhLMoXsycljjd5SodlVSX2/gf4k0OA/VIgg92Tg/NWJFy3FuqBzfZ90XsJybqaRz0fdUz8daN8TjVABlJx3eLoY/Zqrta/rEwv2XX4IXMBlmce39io7ai6pL28dF8YhK1loj4T0nGthJ3vGJ2LbArgYkhswb1ArQRECgYAXtxBOmi2PobIO5lk1y/uI/ru4q+479CgcH8hporQ9S8CLExEnBs6XGGQKghOJhf8vjJqAOOPEYjdUSWqgK5vdDyKTBs+q6ZApGHjhiAC5Sbl2EzuAXOYU783TChioz6YHka5kCdSLoG5Vb1xWNXpitxrCrOTQUVdCPhgZRNI2bQ=='),('9ac33801-ad7f-420f-91b4-6b0dc9c9b2a0','29a81ad1-072d-4a53-adf8-e129969e12be','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('9afb7d05-fba7-4880-80aa-a9cb1943284a','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','oidc-full-name-mapper'),('9ffb2701-d7f9-4b95-abe0-dcc390d1df0b','de4b3031-a774-4038-9174-3a71beebbe34','priority','100'),('a97211bc-a1ba-4a83-8879-c84752ecbca1','038647bc-1c56-448c-a4fa-0951d922bf12','algorithm','RSA-OAEP'),('af468af1-9bf2-4630-bd54-30f83d03a276','de4b3031-a774-4038-9174-3a71beebbe34','kid','873d6191-b60e-4cb1-8cf8-616cb83fd153'),('bc2b7a31-34f1-4a17-b1fc-a9a0c28377d9','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('c115edc7-345b-441b-92a7-37af1857f69b','2496f5be-e053-48a3-9425-2ca2923fff43','certificate','MIICmzCCAYMCBgGQEN5XcDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjEzMDkxMDI1WhcNMzQwNjEzMDkxMjA1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCshvZWWoC1hbY7Cfz5aEPAfM9X3QxHrCfFtz/X/snYt2ltJyM+EhylMUkfpgHh12bP9O1TYpKWZNZC1duj+UidXII+y4ItdDdGyukbjEjGJlDspkeErF+yAJAKZpXVi/y2V4t8xNmeA25D27eY9/FND9mWMvpLaouGxxLh3hBhhDctp31qXxQ0kYVihme4MLgXdaO6QBheu+WO53FR+vYiJ0yCXa8WV+sSwtfmFWptQB9wy3RbhBIn5CbdPNens3QP8F60L/6jxW+cprGDFSZgGXt8LvTOpOZmA6swknAXdvtteZedaSsrIeOI3uzb/65DEnkuF9P5dBizY4I3/lKTAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAI5rf/eOwJWFGNSsvmJYyIW65cD382MRi+xAFLGmYXxDZiKuFxArtmHpxFCWZVe4Sk/Pv0XwSvBlMLWv5cZWM18cjGqGqr4+YLlZRnnSUSJ+iruoj7X6fBboeh9D8xQ4r39jBbgUxKhE3dMXv8t5UnmIdv0TJf3Rtxv5qPGgFRM4PyxIJNkfBHZ5+fLAQpyt9QZWPL7Y91hxpwMBakaFw7kC8Y0xAQ//QKrOxssVY3A5XLfmBiXiSeUZ1bNiSFBUomFpNl3xC6HOfxuGvmh8fzCe2xANcA/kuNYW+wOaLCIXckOzK2P0xtvpvSLlBjYH24wbq0mbTqxd3UCoev/Hk5A='),('c23f2473-9b67-4b4f-9a0b-aac455dd514d','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('c8006700-9830-4c26-8c72-0b9efccbe51d','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','oidc-address-mapper'),('cdc32d36-3134-4ad4-8fe4-20fcec7e3c0e','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','oidc-address-mapper'),('d6352036-29b9-408e-a9b8-8a025de5d4d6','6e4fbc7d-2f8a-4830-9fef-4d1107b4a098','host-sending-registration-request-must-match','true'),('d7b9a7c1-18dd-4874-ba08-792bcbef0c98','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('ea0cc83c-95d2-44c1-844f-3bca2c53fc47','5a621b74-9e82-4bff-a867-b4a386b9c076','kid','18aafbf1-fc9d-4d5f-8954-24ca6b3442ce'),('ec49a383-7b0b-4f96-81cf-e0e6b3744cf4','cc573bb5-f5df-47f6-ba97-c927746e44c6','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('eee4c481-72d8-4694-9f2a-246cfba0e92f','038647bc-1c56-448c-a4fa-0951d922bf12','certificate','MIICmzCCAYMCBgGQEN5YLTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjEzMDkxMDI1WhcNMzQwNjEzMDkxMjA1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDK89aBb8oHsxhpQnsvr/2EwF7ju+kjHlR+sLPo2aY3FygyqiUEABpLVXcXHxK8N8hSLgrCpckSYCzVUEZWybcKL89HKOpEVdKbS4VPJ0i5aGoH5zmSKaBH9oS54r3pf9x1lvk7S0eHj2fNhr1QX44DM+zicLQJuKnXrRqYV9OD0dty5cUMcbAqJVxeHnQ1Zkeo9zhYzu618NkVWx1U5Vy1QDaULva1ydotzWU2bt+RskJ/2eVBQKkJIBTUHbsJjRpHD6iI0AXRhZRe5CzznooT1ws4jtZi+yk8NQDo0bE/WR4I4LQjYDNSwrwHxaQSMr8WQOVT2k0mHGthFACpGNafAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAleZb//qyPn3D5TPvZCJRU4XglUhVaFYY27cHjXf+AEstDU2U0ntm+7sKdb22kau6e//BFou7nW5Yx0kjQSQyAxxazjkwXWZ/fhZiUyqvCUSkfIK84MoXKj2xrjcWCsZ/9/57MupjRh/MddYqH1nzJqqvnrPO5X/AoZmEYVcAQfxGxmLGau1wCD7Tw7GdnQrpTHhDfnChui30fCa5m2J/m9hfLtmYm+W+GzaLLqBPL0lkJnFVptgd3Zw/7by1nUTWB4+t3f5ZbzC1BnvLlqE4lnGSo9Uc+eQkRbV/hs6fVfNPBX50x6L9Fjay/LUahRygey4lCxU4OJDOMBpBXa/Dw='),('f1c3247a-9235-417c-9e64-555048cf7b23','5a621b74-9e82-4bff-a867-b4a386b9c076','algorithm','HS512'),('f48ab3f4-e6a2-4d6a-bb3f-22a98fdccafd','038647bc-1c56-448c-a4fa-0951d922bf12','keyUse','ENC'),('f8c6ed64-9d9d-4bc0-94a6-d94aefe915e5','61db933b-5594-47ab-8dfa-b253683fa9b8','allowed-protocol-mapper-types','saml-role-list-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('0476f44f-31d8-4638-b438-6a29f708d387','8ce5d6f7-5694-48c1-b349-c6766ed35233'),('3312f668-48c7-4116-87a8-949a95dac9f6','c1bc4cf3-b5e8-4186-bb20-d73dab762635'),('38ed9e11-48ea-4034-bf1a-bda2ccaa57a9','9455519c-17a2-425f-a52a-9cad0f1ad8c4'),('3d465376-213e-4158-b066-fd13cd40c16d','104c9a4c-d9e8-4592-97af-f3e2866349f2'),('3d465376-213e-4158-b066-fd13cd40c16d','fd29f706-2468-4aa2-be73-8deb7125825e'),('6ec1f01a-a554-4224-bd6a-10629153db06','02ea7a38-a516-45f1-b9c5-262636c20962'),('6ec1f01a-a554-4224-bd6a-10629153db06','104c9a4c-d9e8-4592-97af-f3e2866349f2'),('6ec1f01a-a554-4224-bd6a-10629153db06','24370d4b-291f-46cc-b5f8-7eacec4185a2'),('6ec1f01a-a554-4224-bd6a-10629153db06','3312f668-48c7-4116-87a8-949a95dac9f6'),('6ec1f01a-a554-4224-bd6a-10629153db06','3d465376-213e-4158-b066-fd13cd40c16d'),('6ec1f01a-a554-4224-bd6a-10629153db06','50dabca9-bc28-427c-a0fa-eff02ceb939b'),('6ec1f01a-a554-4224-bd6a-10629153db06','600afac3-e3b0-43e6-9d11-9112d2ec627d'),('6ec1f01a-a554-4224-bd6a-10629153db06','86ae0af9-f974-4119-b07f-66a514ff4593'),('6ec1f01a-a554-4224-bd6a-10629153db06','8b4a4306-75cf-4114-86dd-da5f66c199e0'),('6ec1f01a-a554-4224-bd6a-10629153db06','92281a3b-48b2-4b2b-aef6-999225447990'),('6ec1f01a-a554-4224-bd6a-10629153db06','940f5b89-94e1-4e03-a79a-fa6c7c846ff9'),('6ec1f01a-a554-4224-bd6a-10629153db06','9a3eb901-2437-465d-bab1-64f6ceefe880'),('6ec1f01a-a554-4224-bd6a-10629153db06','b159f642-2dc5-4ee8-bdf9-2846a73ed660'),('6ec1f01a-a554-4224-bd6a-10629153db06','c1bc4cf3-b5e8-4186-bb20-d73dab762635'),('6ec1f01a-a554-4224-bd6a-10629153db06','c7cf9859-3221-43e8-aafb-526d74bae49b'),('6ec1f01a-a554-4224-bd6a-10629153db06','d69f2e5a-e658-4ebb-9b36-58e42bbe8c0e'),('6ec1f01a-a554-4224-bd6a-10629153db06','e53777cd-3196-4991-b43a-697a0cf0fd3c'),('6ec1f01a-a554-4224-bd6a-10629153db06','eaa4089f-230c-4f4c-859f-a0f7e0fec103'),('6ec1f01a-a554-4224-bd6a-10629153db06','fd29f706-2468-4aa2-be73-8deb7125825e'),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','063d8b0a-ddaf-4e8e-a20f-c10d9b7242c2'),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','38ed9e11-48ea-4034-bf1a-bda2ccaa57a9'),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','71bca973-4392-4c54-8a14-330b3e9740bb'),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','af9ec1af-8a73-45f4-a299-527b4efa8b13');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('10304a68-6671-4526-a3f3-f26755244f2d',NULL,'password','8f13d822-20a4-4628-8eb2-5da3a7f93b2b',1718269926969,NULL,'{\"value\":\"NF37if/knSlg9bkdU3x1p9g2/euhaRMjmVZK+hnIYpxCK8moTZ5iwf7aUZ01eilrRBYBMl7Fijaph6a6DXmH5g==\",\"salt\":\"C/cIBWhO0KJYaXzbWEcj2w==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-13 18:11:54',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-13 18:11:54',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-13 18:11:54',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-13 18:11:54',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-13 18:11:54',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-13 18:11:54',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-13 18:11:55',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-13 18:11:55',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-13 18:11:55',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-13 18:11:56',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-13 18:11:56',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-13 18:11:56',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-13 18:11:56',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 18:11:56',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 18:11:56',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 18:11:56',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-13 18:11:56',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-13 18:11:57',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-13 18:11:57',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-13 18:11:57',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-13 18:11:57',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-13 18:11:57',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-13 18:11:57',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-13 18:11:57',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-13 18:11:57',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-13 18:11:57',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-13 18:11:58',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-13 18:11:58',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-13 18:11:58',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-13 18:11:58',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-13 18:11:58',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-13 18:11:58',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 18:11:58',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 18:11:58',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 18:11:58',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 18:11:58',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-13 18:11:58',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8269911879'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-13 18:11:58',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-13 18:11:58',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 18:11:58',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 18:11:58',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 18:11:58',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-13 18:11:59',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-13 18:11:59',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 18:11:59',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 18:11:59',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 18:11:59',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 18:11:59',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-13 18:11:59',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-13 18:12:00',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-13 18:12:00',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-13 18:12:00',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-13 18:12:00',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-13 18:12:00',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 18:12:00',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 18:12:00',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 18:12:00',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-13 18:12:01',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-13 18:12:01',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-13 18:12:01',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-13 18:12:01',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-13 18:12:01',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-13 18:12:01',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-13 18:12:01',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-13 18:12:01',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-13 18:12:01',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-13 18:12:01',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-13 18:12:01',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-13 18:12:01',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-13 18:12:01',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8269911879'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-13 18:12:01',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8269911879'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 18:12:01',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8269911879'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 18:12:01',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8269911879'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 18:12:01',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8269911879'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 18:12:01',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-13 18:12:01',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 18:12:01',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 18:12:01',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 18:12:02',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-13 18:12:02',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 18:12:02',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 18:12:02',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 18:12:02',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 18:12:02',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8269911879'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-13 18:12:02',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-13 18:12:02',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'8269911879'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-13 18:12:02',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-13 18:12:02',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'8269911879'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8269911879'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8269911879'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-13 18:12:02',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8269911879'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-13 18:12:02',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-13 18:12:02',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-13 18:12:02',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-13 18:12:02',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-13 18:12:02',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-13 18:12:02',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-13 18:12:02',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8269911879'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-13 18:12:02',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-06-13 18:12:02',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-13 18:12:02',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8269911879'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-13 18:12:02',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-13 18:12:02',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-13 18:12:02',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-13 18:12:02',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'8269911879'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-13 18:12:02',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 18:12:02',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 18:12:02',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 18:12:02',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-13 18:12:02',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-13 18:12:02',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-13 18:12:02',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-13 18:12:02',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8269911879');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('bb595e6a-d7c1-45a3-bc28-540800b4e67f','09186e27-b526-4635-b52f-8ed792a42c15',1),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','113981be-0776-4f0e-9792-aa081a634842',1),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','8787effb-284c-4a41-bf5d-4eb52fae9fa1',0),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','9953d2ff-3cfa-444f-aaef-f0cb58674406',1),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','af5af0d8-ef1a-447a-aa5c-c918fa25387b',0),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','b48f51de-9bc0-40f8-986a-e995e2d7cbac',1),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','e70a4245-eb87-4c18-9088-0ff4eacadbc2',1),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','e85fb2fc-85db-4b95-96ec-b2b379ac9b18',0),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','ed9aaae2-cd79-4a67-a7c7-279854c1b8d8',0),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','ede9531c-ccf6-4609-b120-a82d0706649d',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('02ea7a38-a516-45f1-b9c5-262636c20962','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,'${role_create-realm}','create-realm','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL,NULL),('0476f44f-31d8-4638-b438-6a29f708d387','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_manage-consent}','manage-consent','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('063d8b0a-ddaf-4e8e-a20f-c10d9b7242c2','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,'${role_offline-access}','offline_access','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL,NULL),('104c9a4c-d9e8-4592-97af-f3e2866349f2','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_query-users}','query-users','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('24370d4b-291f-46cc-b5f8-7eacec4185a2','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_query-realms}','query-realms','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('2456d0c6-3966-4850-8650-257cf53b2553','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_view-applications}','view-applications','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('3312f668-48c7-4116-87a8-949a95dac9f6','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_view-clients}','view-clients','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('38ed9e11-48ea-4034-bf1a-bda2ccaa57a9','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_manage-account}','manage-account','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('3d465376-213e-4158-b066-fd13cd40c16d','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_view-users}','view-users','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('50dabca9-bc28-427c-a0fa-eff02ceb939b','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_create-client}','create-client','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('600afac3-e3b0-43e6-9d11-9112d2ec627d','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_manage-events}','manage-events','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('6ec1f01a-a554-4224-bd6a-10629153db06','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,'${role_admin}','admin','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL,NULL),('71bca973-4392-4c54-8a14-330b3e9740bb','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_view-profile}','view-profile','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('86ae0af9-f974-4119-b07f-66a514ff4593','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_view-identity-providers}','view-identity-providers','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('8b4a4306-75cf-4114-86dd-da5f66c199e0','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_manage-identity-providers}','manage-identity-providers','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('8ce5d6f7-5694-48c1-b349-c6766ed35233','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_view-consent}','view-consent','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('92281a3b-48b2-4b2b-aef6-999225447990','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_view-events}','view-events','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('940f5b89-94e1-4e03-a79a-fa6c7c846ff9','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_manage-users}','manage-users','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('9455519c-17a2-425f-a52a-9cad0f1ad8c4','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_manage-account-links}','manage-account-links','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('9a3eb901-2437-465d-bab1-64f6ceefe880','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_view-authorization}','view-authorization','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('af9ec1af-8a73-45f4-a299-527b4efa8b13','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,'${role_uma_authorization}','uma_authorization','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL,NULL),('b159f642-2dc5-4ee8-bdf9-2846a73ed660','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_manage-realm}','manage-realm','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('c1bc4cf3-b5e8-4186-bb20-d73dab762635','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_query-clients}','query-clients','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('c7cf9859-3221-43e8-aafb-526d74bae49b','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_view-realm}','view-realm','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('c84d71d2-9f68-49f8-ad0d-b6236738af43','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_view-groups}','view-groups','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('d69f2e5a-e658-4ebb-9b36-58e42bbe8c0e','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_manage-clients}','manage-clients','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('db2693e4-527a-4bdf-b211-806c8588447f','1e8b1b50-cdb2-4178-9130-a761f672c037',1,'${role_delete-account}','delete-account','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1e8b1b50-cdb2-4178-9130-a761f672c037',NULL),('e53777cd-3196-4991-b43a-697a0cf0fd3c','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_manage-authorization}','manage-authorization','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('eaa4089f-230c-4f4c-859f-a0f7e0fec103','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_impersonation}','impersonation','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL),('f30ffbf0-0ef4-4dc6-a1ea-1100aea35791','c3219b1f-f1c5-46e8-8766-ce95c274c8f9',1,'${role_read-token}','read-token','bb595e6a-d7c1-45a3-bc28-540800b4e67f','c3219b1f-f1c5-46e8-8766-ce95c274c8f9',NULL),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,'${role_default-roles}','default-roles-master','bb595e6a-d7c1-45a3-bc28-540800b4e67f',NULL,NULL),('fd29f706-2468-4aa2-be73-8deb7125825e','4de35737-4510-411e-b7b4-ba015310f3dd',1,'${role_query-groups}','query-groups','bb595e6a-d7c1-45a3-bc28-540800b4e67f','4de35737-4510-411e-b7b4-ba015310f3dd',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('tdzol','24.0.3',1718269923);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0696024b-dba6-4346-b342-f5968d694fba','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'af5af0d8-ef1a-447a-aa5c-c918fa25387b'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','address','openid-connect','oidc-address-mapper',NULL,'8787effb-284c-4a41-bf5d-4eb52fae9fa1'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','023df708-c205-46d6-b2cd-31a9894be12c',NULL),('2443e083-2395-4d3c-b1cb-816ecf5f8f29','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'9953d2ff-3cfa-444f-aaef-f0cb58674406'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('31a31089-9c6c-4715-8d72-30390891b13b','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('356b14db-06c1-4c99-ab23-108c33966e05','audience resolve','openid-connect','oidc-audience-resolve-mapper','107f56e4-b75d-4a24-9f5d-dbf8a1b30db4',NULL),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('56cbf0c2-354c-4e02-a0a2-c460dfb39725','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'09186e27-b526-4635-b52f-8ed792a42c15'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('6c19ee1a-5f86-4c33-9555-7ab30ac393f4','full name','openid-connect','oidc-full-name-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'b48f51de-9bc0-40f8-986a-e995e2d7cbac'),('82516f5d-e730-401c-bd53-f5655a72cb5e','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('866dc770-a5a0-41da-8ff6-e6bbdea03551','role list','saml','saml-role-list-mapper',NULL,'113981be-0776-4f0e-9792-aa081a634842'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','023df708-c205-46d6-b2cd-31a9894be12c',NULL),('af3fef00-b6cb-4918-b601-59ec1380c278','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e85fb2fc-85db-4b95-96ec-b2b379ac9b18'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('b60d0c8b-6056-4934-877a-3a5021b65379','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('c126d464-1362-4eec-b670-3b7780b0ce3b','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'09186e27-b526-4635-b52f-8ed792a42c15'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','023df708-c205-46d6-b2cd-31a9894be12c',NULL),('c91b7145-c108-418e-9efc-e55d06ca92a4','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('d55ec7b2-4261-4152-a16e-4a9e530dc766','acr loa level','openid-connect','oidc-acr-mapper',NULL,'e70a4245-eb87-4c18-9088-0ff4eacadbc2'),('de46556d-1ce6-4947-b635-343472a74bc0','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'af5af0d8-ef1a-447a-aa5c-c918fa25387b'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'09186e27-b526-4635-b52f-8ed792a42c15'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ede9531c-ccf6-4609-b120-a82d0706649d'),('f3dcd9e5-f971-456e-8df7-221db073dead','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e85fb2fc-85db-4b95-96ec-b2b379ac9b18'),('f41d8ed5-567b-4563-a434-2046d63f5071','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b48f51de-9bc0-40f8-986a-e995e2d7cbac'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','locale','openid-connect','oidc-usermodel-attribute-mapper','4ac2a27d-b608-4022-8b3b-07d4df386c5a',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0696024b-dba6-4346-b342-f5968d694fba','true','access.token.claim'),('0696024b-dba6-4346-b342-f5968d694fba','phone_number_verified','claim.name'),('0696024b-dba6-4346-b342-f5968d694fba','true','id.token.claim'),('0696024b-dba6-4346-b342-f5968d694fba','true','introspection.token.claim'),('0696024b-dba6-4346-b342-f5968d694fba','boolean','jsonType.label'),('0696024b-dba6-4346-b342-f5968d694fba','phoneNumberVerified','user.attribute'),('0696024b-dba6-4346-b342-f5968d694fba','true','userinfo.token.claim'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','true','access.token.claim'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','true','id.token.claim'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','true','introspection.token.claim'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','country','user.attribute.country'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','formatted','user.attribute.formatted'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','locality','user.attribute.locality'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','postal_code','user.attribute.postal_code'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','region','user.attribute.region'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','street','user.attribute.street'),('0f1fa94a-862d-4362-bb94-6b526b9855e2','true','userinfo.token.claim'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','true','access.token.claim'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','birthdate','claim.name'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','true','id.token.claim'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','true','introspection.token.claim'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','String','jsonType.label'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','birthdate','user.attribute'),('0fabf9c9-fa9a-4eff-9916-08254c0ff69b','true','userinfo.token.claim'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','true','access.token.claim'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','clientAddress','claim.name'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','true','id.token.claim'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','String','jsonType.label'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','clientAddress','user.session.note'),('1075da3c-e7e1-4f30-afd8-7d03ec8f23da','true','userinfo.token.claim'),('2443e083-2395-4d3c-b1cb-816ecf5f8f29','true','access.token.claim'),('2443e083-2395-4d3c-b1cb-816ecf5f8f29','true','introspection.token.claim'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','true','access.token.claim'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','gender','claim.name'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','true','id.token.claim'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','true','introspection.token.claim'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','String','jsonType.label'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','gender','user.attribute'),('28a28254-8da3-4b20-b33a-1d1282c24e6f','true','userinfo.token.claim'),('31a31089-9c6c-4715-8d72-30390891b13b','true','access.token.claim'),('31a31089-9c6c-4715-8d72-30390891b13b','profile','claim.name'),('31a31089-9c6c-4715-8d72-30390891b13b','true','id.token.claim'),('31a31089-9c6c-4715-8d72-30390891b13b','true','introspection.token.claim'),('31a31089-9c6c-4715-8d72-30390891b13b','String','jsonType.label'),('31a31089-9c6c-4715-8d72-30390891b13b','profile','user.attribute'),('31a31089-9c6c-4715-8d72-30390891b13b','true','userinfo.token.claim'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','true','access.token.claim'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','family_name','claim.name'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','true','id.token.claim'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','true','introspection.token.claim'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','String','jsonType.label'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','lastName','user.attribute'),('49f49fed-a75c-42c2-87cd-311bdcfc11dc','true','userinfo.token.claim'),('56cbf0c2-354c-4e02-a0a2-c460dfb39725','true','access.token.claim'),('56cbf0c2-354c-4e02-a0a2-c460dfb39725','true','introspection.token.claim'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','true','access.token.claim'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','website','claim.name'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','true','id.token.claim'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','true','introspection.token.claim'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','String','jsonType.label'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','website','user.attribute'),('598f9686-74a8-4c58-9c3b-96c3d588f93d','true','userinfo.token.claim'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','true','access.token.claim'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','picture','claim.name'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','true','id.token.claim'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','true','introspection.token.claim'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','String','jsonType.label'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','picture','user.attribute'),('5e88ba8d-d74e-4d3b-849f-a91913db25bb','true','userinfo.token.claim'),('6c19ee1a-5f86-4c33-9555-7ab30ac393f4','true','access.token.claim'),('6c19ee1a-5f86-4c33-9555-7ab30ac393f4','true','id.token.claim'),('6c19ee1a-5f86-4c33-9555-7ab30ac393f4','true','introspection.token.claim'),('6c19ee1a-5f86-4c33-9555-7ab30ac393f4','true','userinfo.token.claim'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','true','access.token.claim'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','email_verified','claim.name'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','true','id.token.claim'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','true','introspection.token.claim'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','boolean','jsonType.label'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','emailVerified','user.attribute'),('7ef33c08-fc74-4789-b65a-e7258d7538fd','true','userinfo.token.claim'),('82516f5d-e730-401c-bd53-f5655a72cb5e','true','access.token.claim'),('82516f5d-e730-401c-bd53-f5655a72cb5e','updated_at','claim.name'),('82516f5d-e730-401c-bd53-f5655a72cb5e','true','id.token.claim'),('82516f5d-e730-401c-bd53-f5655a72cb5e','true','introspection.token.claim'),('82516f5d-e730-401c-bd53-f5655a72cb5e','long','jsonType.label'),('82516f5d-e730-401c-bd53-f5655a72cb5e','updatedAt','user.attribute'),('82516f5d-e730-401c-bd53-f5655a72cb5e','true','userinfo.token.claim'),('866dc770-a5a0-41da-8ff6-e6bbdea03551','Role','attribute.name'),('866dc770-a5a0-41da-8ff6-e6bbdea03551','Basic','attribute.nameformat'),('866dc770-a5a0-41da-8ff6-e6bbdea03551','false','single'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','true','access.token.claim'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','clientHost','claim.name'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','true','id.token.claim'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','String','jsonType.label'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','clientHost','user.session.note'),('9650e2b2-ba43-4b58-9031-2e09e0ea23a0','true','userinfo.token.claim'),('af3fef00-b6cb-4918-b601-59ec1380c278','true','access.token.claim'),('af3fef00-b6cb-4918-b601-59ec1380c278','upn','claim.name'),('af3fef00-b6cb-4918-b601-59ec1380c278','true','id.token.claim'),('af3fef00-b6cb-4918-b601-59ec1380c278','true','introspection.token.claim'),('af3fef00-b6cb-4918-b601-59ec1380c278','String','jsonType.label'),('af3fef00-b6cb-4918-b601-59ec1380c278','username','user.attribute'),('af3fef00-b6cb-4918-b601-59ec1380c278','true','userinfo.token.claim'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','true','access.token.claim'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','given_name','claim.name'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','true','id.token.claim'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','true','introspection.token.claim'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','String','jsonType.label'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','firstName','user.attribute'),('b1e49b17-a61f-4d1b-9e1e-b2a8d24e6a59','true','userinfo.token.claim'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','true','access.token.claim'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','nickname','claim.name'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','true','id.token.claim'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','true','introspection.token.claim'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','String','jsonType.label'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','nickname','user.attribute'),('b3aee88c-26f0-455f-bda3-102eaa00e1bf','true','userinfo.token.claim'),('b60d0c8b-6056-4934-877a-3a5021b65379','true','access.token.claim'),('b60d0c8b-6056-4934-877a-3a5021b65379','zoneinfo','claim.name'),('b60d0c8b-6056-4934-877a-3a5021b65379','true','id.token.claim'),('b60d0c8b-6056-4934-877a-3a5021b65379','true','introspection.token.claim'),('b60d0c8b-6056-4934-877a-3a5021b65379','String','jsonType.label'),('b60d0c8b-6056-4934-877a-3a5021b65379','zoneinfo','user.attribute'),('b60d0c8b-6056-4934-877a-3a5021b65379','true','userinfo.token.claim'),('c126d464-1362-4eec-b670-3b7780b0ce3b','true','access.token.claim'),('c126d464-1362-4eec-b670-3b7780b0ce3b','realm_access.roles','claim.name'),('c126d464-1362-4eec-b670-3b7780b0ce3b','true','introspection.token.claim'),('c126d464-1362-4eec-b670-3b7780b0ce3b','String','jsonType.label'),('c126d464-1362-4eec-b670-3b7780b0ce3b','true','multivalued'),('c126d464-1362-4eec-b670-3b7780b0ce3b','foo','user.attribute'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','true','access.token.claim'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','clientId','claim.name'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','true','id.token.claim'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','String','jsonType.label'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','clientId','user.session.note'),('c1bcd2dd-a43b-4297-85b5-80a516a9991e','true','userinfo.token.claim'),('c91b7145-c108-418e-9efc-e55d06ca92a4','true','access.token.claim'),('c91b7145-c108-418e-9efc-e55d06ca92a4','middle_name','claim.name'),('c91b7145-c108-418e-9efc-e55d06ca92a4','true','id.token.claim'),('c91b7145-c108-418e-9efc-e55d06ca92a4','true','introspection.token.claim'),('c91b7145-c108-418e-9efc-e55d06ca92a4','String','jsonType.label'),('c91b7145-c108-418e-9efc-e55d06ca92a4','middleName','user.attribute'),('c91b7145-c108-418e-9efc-e55d06ca92a4','true','userinfo.token.claim'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','true','access.token.claim'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','locale','claim.name'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','true','id.token.claim'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','true','introspection.token.claim'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','String','jsonType.label'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','locale','user.attribute'),('cf3a63df-adfe-4124-9dc8-32b1aa58b6e1','true','userinfo.token.claim'),('d55ec7b2-4261-4152-a16e-4a9e530dc766','true','access.token.claim'),('d55ec7b2-4261-4152-a16e-4a9e530dc766','true','id.token.claim'),('d55ec7b2-4261-4152-a16e-4a9e530dc766','true','introspection.token.claim'),('de46556d-1ce6-4947-b635-343472a74bc0','true','access.token.claim'),('de46556d-1ce6-4947-b635-343472a74bc0','phone_number','claim.name'),('de46556d-1ce6-4947-b635-343472a74bc0','true','id.token.claim'),('de46556d-1ce6-4947-b635-343472a74bc0','true','introspection.token.claim'),('de46556d-1ce6-4947-b635-343472a74bc0','String','jsonType.label'),('de46556d-1ce6-4947-b635-343472a74bc0','phoneNumber','user.attribute'),('de46556d-1ce6-4947-b635-343472a74bc0','true','userinfo.token.claim'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','true','access.token.claim'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','resource_access.${client_id}.roles','claim.name'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','true','introspection.token.claim'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','String','jsonType.label'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','true','multivalued'),('e5d95604-6f00-4b36-bf99-b6afa47d3f66','foo','user.attribute'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','true','access.token.claim'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','preferred_username','claim.name'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','true','id.token.claim'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','true','introspection.token.claim'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','String','jsonType.label'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','username','user.attribute'),('e76cc8d8-1ec6-472f-a7a3-a35e37ba0ba7','true','userinfo.token.claim'),('f3dcd9e5-f971-456e-8df7-221db073dead','true','access.token.claim'),('f3dcd9e5-f971-456e-8df7-221db073dead','groups','claim.name'),('f3dcd9e5-f971-456e-8df7-221db073dead','true','id.token.claim'),('f3dcd9e5-f971-456e-8df7-221db073dead','true','introspection.token.claim'),('f3dcd9e5-f971-456e-8df7-221db073dead','String','jsonType.label'),('f3dcd9e5-f971-456e-8df7-221db073dead','true','multivalued'),('f3dcd9e5-f971-456e-8df7-221db073dead','foo','user.attribute'),('f41d8ed5-567b-4563-a434-2046d63f5071','true','access.token.claim'),('f41d8ed5-567b-4563-a434-2046d63f5071','email','claim.name'),('f41d8ed5-567b-4563-a434-2046d63f5071','true','id.token.claim'),('f41d8ed5-567b-4563-a434-2046d63f5071','true','introspection.token.claim'),('f41d8ed5-567b-4563-a434-2046d63f5071','String','jsonType.label'),('f41d8ed5-567b-4563-a434-2046d63f5071','email','user.attribute'),('f41d8ed5-567b-4563-a434-2046d63f5071','true','userinfo.token.claim'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','true','access.token.claim'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','locale','claim.name'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','true','id.token.claim'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','true','introspection.token.claim'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','String','jsonType.label'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','locale','user.attribute'),('fadd8d91-df2e-4293-901f-35ebb1dc61f7','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('bb595e6a-d7c1-45a3-bc28-540800b4e67f',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'4de35737-4510-411e-b7b4-ba015310f3dd',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','8c3bb430-93ae-40dd-a62c-faff8b9bf607','f764d579-5231-4af6-8b9b-53be3640e4ff','3ba7eafd-e833-49d1-8e9f-c27f94c74020','54bf066e-14ba-4ab0-a242-a1ed041c6525','b053efec-04e6-48cf-ae34-9a38f3ba3e68',31536000,0,900,1,0,'3c2129ef-eb3d-4705-9b03-150cda4f1641',0,0,0,0,'f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','bb595e6a-d7c1-45a3-bc28-540800b4e67f','false'),('cibaAuthRequestedUserHint','bb595e6a-d7c1-45a3-bc28-540800b4e67f','login_hint'),('cibaBackchannelTokenDeliveryMode','bb595e6a-d7c1-45a3-bc28-540800b4e67f','poll'),('cibaExpiresIn','bb595e6a-d7c1-45a3-bc28-540800b4e67f','120'),('cibaInterval','bb595e6a-d7c1-45a3-bc28-540800b4e67f','5'),('defaultSignatureAlgorithm','bb595e6a-d7c1-45a3-bc28-540800b4e67f','RS256'),('displayName','bb595e6a-d7c1-45a3-bc28-540800b4e67f','Keycloak'),('displayNameHtml','bb595e6a-d7c1-45a3-bc28-540800b4e67f','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','bb595e6a-d7c1-45a3-bc28-540800b4e67f','30'),('firstBrokerLoginFlowId','bb595e6a-d7c1-45a3-bc28-540800b4e67f','3f503380-7dfe-44ec-a782-0c0aa1da3203'),('maxDeltaTimeSeconds','bb595e6a-d7c1-45a3-bc28-540800b4e67f','43200'),('maxFailureWaitSeconds','bb595e6a-d7c1-45a3-bc28-540800b4e67f','900'),('maxTemporaryLockouts','bb595e6a-d7c1-45a3-bc28-540800b4e67f','0'),('minimumQuickLoginWaitSeconds','bb595e6a-d7c1-45a3-bc28-540800b4e67f','60'),('oauth2DeviceCodeLifespan','bb595e6a-d7c1-45a3-bc28-540800b4e67f','600'),('oauth2DevicePollingInterval','bb595e6a-d7c1-45a3-bc28-540800b4e67f','5'),('offlineSessionMaxLifespan','bb595e6a-d7c1-45a3-bc28-540800b4e67f','31536000'),('offlineSessionMaxLifespanEnabled','bb595e6a-d7c1-45a3-bc28-540800b4e67f','true'),('parRequestUriLifespan','bb595e6a-d7c1-45a3-bc28-540800b4e67f','60'),('permanentLockout','bb595e6a-d7c1-45a3-bc28-540800b4e67f','false'),('quickLoginCheckMilliSeconds','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1000'),('realmReusableOtpCode','bb595e6a-d7c1-45a3-bc28-540800b4e67f','false'),('waitIncrementSeconds','bb595e6a-d7c1-45a3-bc28-540800b4e67f','60'),('_browser_header.contentSecurityPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','bb595e6a-d7c1-45a3-bc28-540800b4e67f',''),('_browser_header.referrerPolicy','bb595e6a-d7c1-45a3-bc28-540800b4e67f','no-referrer'),('_browser_header.strictTransportSecurity','bb595e6a-d7c1-45a3-bc28-540800b4e67f','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','bb595e6a-d7c1-45a3-bc28-540800b4e67f','nosniff'),('_browser_header.xFrameOptions','bb595e6a-d7c1-45a3-bc28-540800b4e67f','SAMEORIGIN'),('_browser_header.xRobotsTag','bb595e6a-d7c1-45a3-bc28-540800b4e67f','none'),('_browser_header.xXSSProtection','bb595e6a-d7c1-45a3-bc28-540800b4e67f','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('bb595e6a-d7c1-45a3-bc28-540800b4e67f','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'bb595e6a-d7c1-45a3-bc28-540800b4e67f');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('bb595e6a-d7c1-45a3-bc28-540800b4e67f','en'),('bb595e6a-d7c1-45a3-bc28-540800b4e67f','ja');
UNLOCK TABLES;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
INSERT INTO `REDIRECT_URIS` VALUES ('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','/realms/master/account/*'),('1e8b1b50-cdb2-4178-9130-a761f672c037','/realms/master/account/*'),('4ac2a27d-b608-4022-8b3b-07d4df386c5a','/admin/master/console/*'),('b8d8d038-721a-408f-9c28-81aaf4326e85','/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('00782ea7-6a6e-4c5e-9bbf-8e898225acc1','TERMS_AND_CONDITIONS','Terms and Conditions','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,0,'TERMS_AND_CONDITIONS',20),('159d7fdb-bdbf-42a8-9621-fe7bc613d8ee','UPDATE_PASSWORD','Update Password','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'UPDATE_PASSWORD',30),('2e7c7150-fe80-4cd7-b0d8-a1aaae7927d5','webauthn-register-passwordless','Webauthn Register Passwordless','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'webauthn-register-passwordless',80),('474ea95a-c75b-4e91-ad6a-dc81e608ccb8','VERIFY_EMAIL','Verify Email','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'VERIFY_EMAIL',50),('7249e560-5ce1-443e-8cb9-09ecc510182a','webauthn-register','Webauthn Register','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'webauthn-register',70),('7a8f00ec-24e7-47fa-bf87-d95c94584cfe','update_user_locale','Update User Locale','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'update_user_locale',1000),('a2109917-5847-43a1-b1e7-62a1b854a830','UPDATE_PROFILE','Update Profile','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'UPDATE_PROFILE',40),('bf530eeb-150e-44ef-b3ce-e005cd4728c8','delete_account','Delete Account','bb595e6a-d7c1-45a3-bc28-540800b4e67f',0,0,'delete_account',60),('d2dbb8d2-f6f6-4e12-a9f7-508341fbfbf3','delete_credential','Delete Credential','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'delete_credential',100),('ddfc3203-d4bd-44df-9225-6a83024e37f7','VERIFY_PROFILE','Verify Profile','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'VERIFY_PROFILE',90),('ee12f9f4-5732-473b-b4b3-8b2774d758ae','CONFIGURE_TOTP','Configure OTP','bb595e6a-d7c1-45a3-bc28-540800b4e67f',1,0,'CONFIGURE_TOTP',10);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','38ed9e11-48ea-4034-bf1a-bda2ccaa57a9'),('107f56e4-b75d-4a24-9f5d-dbf8a1b30db4','c84d71d2-9f68-49f8-ad0d-b6236738af43');
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
INSERT INTO `USER_ENTITY` VALUES ('3ca18600-daa5-4090-982b-c8ba899c9393',NULL,'d6739e6e-0c45-4478-8641-4c1cc02215d1',0,1,NULL,NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','service-account-_platform',1718269933500,'023df708-c205-46d6-b2cd-31a9894be12c',0),('8f13d822-20a4-4628-8eb2-5da3a7f93b2b',NULL,'ee1636f0-37e3-44a5-891e-00d3099ca0b6',0,1,NULL,NULL,NULL,'bb595e6a-d7c1-45a3-bc28-540800b4e67f','admin',1718269926316,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('6ec1f01a-a554-4224-bd6a-10629153db06','3ca18600-daa5-4090-982b-c8ba899c9393'),('6ec1f01a-a554-4224-bd6a-10629153db06','8f13d822-20a4-4628-8eb2-5da3a7f93b2b'),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','3ca18600-daa5-4090-982b-c8ba899c9393'),('f69fd3d4-4500-4bf7-a3fe-c1862aa10e7b','8f13d822-20a4-4628-8eb2-5da3a7f93b2b');
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
INSERT INTO `WEB_ORIGINS` VALUES ('4ac2a27d-b608-4022-8b3b-07d4df386c5a','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-06-13 18:12:21','dummy','2024-06-13 18:12:21','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-06-13 18:12:15','dummy','2024-06-13 18:12:15','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-06-13 18:12:15','dummy','2024-06-13 18:12:15','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-06-13 18:12:15','dummy','2024-06-13 18:12:15','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-06-13 18:12:15','dummy','2024-06-13 18:12:15','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-06-13 18:12:15','dummy','2024-06-13 18:12:15','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-06-13 18:12:14.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-06-13 18:12:14.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-06-13 18:12:12','system','2024-06-13 18:12:12','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-06-13 18:12:21','dummy','2024-06-13 18:12:21','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-06-13 18:12:12','system','2024-06-13 18:12:15','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-06-13 18:12:12','system','2024-06-13 18:12:15','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-06-13 18:12:12','system','2024-06-13 18:12:15','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-06-13 18:12:21','dummy','2024-06-13 18:12:21','dummy'),('_default','platform.roles',1000,'2024-06-13 18:12:12','system','2024-06-13 18:12:12','system'),('_default','platform.users',10000,'2024-06-13 18:12:12','system','2024-06-13 18:12:12','system'),('_default','platform.workspaces',100,'2024-06-13 18:12:12','system','2024-06-13 18:12:12','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-06-13 18:12:12','1.9.0','2024-06-13 18:12:12','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-06-13 18:12:13','1.9.0','2024-06-13 18:12:13','1.9.0'),(3,'1.5.0','START',NULL,'2024-06-13 18:12:13','1.9.0','2024-06-13 18:12:13','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-06-13 18:12:14','1.9.0','2024-06-13 18:12:14','1.9.0'),(5,'1.5.2','START',NULL,'2024-06-13 18:12:14','1.9.0','2024-06-13 18:12:14','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-06-13 18:12:14','1.9.0','2024-06-13 18:12:14','1.9.0'),(7,'1.6.0','START',NULL,'2024-06-13 18:12:14','1.9.0','2024-06-13 18:12:14','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(9,'1.7.0','START',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(11,'1.8.0','START',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(13,'1.8.1','START',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(15,'1.8.2','START',NULL,'2024-06-13 18:12:15','1.9.0','2024-06-13 18:12:15','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-06-13 18:12:16','1.9.0','2024-06-13 18:12:16','1.9.0'),(17,'1.9.0','START',NULL,'2024-06-13 18:12:16','1.9.0','2024-06-13 18:12:16','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-06-13 18:12:16','1.9.0','2024-06-13 18:12:16','1.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"023df708-c205-46d6-b2cd-31a9894be12c\", \"TOKEN_CHECK_CLIENT_SECRET\": \"FLRUn5SIWinrCNVQ5UkzYCr5VunxHSwV\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"1633fc3a-f7f8-40c5-bf00-e9d51206e2c4\"}','2024-06-13 18:12:13','system','2024-06-13 18:12:13','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-06-13 18:11:28','system','2024-06-13 18:12:16','1.9.0');
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

-- Dump completed on 2024-06-13 18:15:12
SET foreign_key_checks = 1;
