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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('04c93d44-a568-4559-98db-9dfb5ee9ccfc',NULL,'idp-review-profile','07ba44e3-7c82-4013-a138-2ea110821efc','d77c0a90-993c-41ba-9213-7a1a9ebe397f',0,10,'\0',NULL,'f12732b8-5151-4b5f-ae2c-bd6bcb82a2f4'),('0ac3c3a0-0caa-4b1d-bba8-3b662233c0b6',NULL,'basic-auth-otp','07ba44e3-7c82-4013-a138-2ea110821efc','cf524efe-4084-4f90-a59d-eca97b0931aa',3,20,'\0',NULL,NULL),('10b1b11f-bf9e-4b53-9905-ab41750ad0b3',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','446e4c85-362b-4e0e-aad8-574bc8917860',2,30,'','64041aca-55e4-45c7-babd-c61513d5c746',NULL),('141a00ef-db06-4c1a-b58b-e81f05d816fb',NULL,'auth-spnego','07ba44e3-7c82-4013-a138-2ea110821efc','446e4c85-362b-4e0e-aad8-574bc8917860',3,20,'\0',NULL,NULL),('2c16dfcc-093a-4ef7-9854-fc1f8bd4ebd5',NULL,'conditional-user-configured','07ba44e3-7c82-4013-a138-2ea110821efc','54a656c5-6c53-4485-b909-11d978bfdf62',0,10,'\0',NULL,NULL),('333c7d53-2741-4400-97c4-970a235e8f7c',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','84b8da05-e10f-4206-afea-6a09fe3a58f5',1,40,'','442509e5-ac9f-4cdf-b638-ce5ecd28df6a',NULL),('3702069d-4756-435e-9f30-a3d3898fae33',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','3bf001eb-56b4-4af0-84ff-bf9d1e6654a5',0,20,'','cd9bc907-4a64-48de-9223-bbeacbc2e0e5',NULL),('3d2c60cd-2c3b-4777-acce-d0a6748ba16c',NULL,'client-x509','07ba44e3-7c82-4013-a138-2ea110821efc','fc834b83-e0d2-4982-a4d1-93d0038a420e',2,40,'\0',NULL,NULL),('45da9e79-23c9-4557-8332-f4adcacea966',NULL,'reset-credential-email','07ba44e3-7c82-4013-a138-2ea110821efc','84b8da05-e10f-4206-afea-6a09fe3a58f5',0,20,'\0',NULL,NULL),('4aa7005d-1767-4bc4-afb7-db26fd0b5ecd',NULL,'direct-grant-validate-otp','07ba44e3-7c82-4013-a138-2ea110821efc','429f8afd-6e76-4499-b2f0-b3eb05432c7b',0,20,'\0',NULL,NULL),('523274bf-b777-4005-969e-3e882b8d6365',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','b9df040d-da1b-483d-8eec-31daa0b537e2',0,20,'','cf524efe-4084-4f90-a59d-eca97b0931aa',NULL),('523a6a59-4605-42c8-9f09-1b6e898b33c0',NULL,'http-basic-authenticator','07ba44e3-7c82-4013-a138-2ea110821efc','774fd228-db68-4d34-9cc0-51b619da9836',0,10,'\0',NULL,NULL),('53b32f36-30af-45e5-b559-538203398ea3',NULL,'conditional-user-configured','07ba44e3-7c82-4013-a138-2ea110821efc','429f8afd-6e76-4499-b2f0-b3eb05432c7b',0,10,'\0',NULL,NULL),('56319a4f-62d1-40d1-bcd1-c845d757ac2d',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','d77c0a90-993c-41ba-9213-7a1a9ebe397f',0,20,'','7dc42927-a799-4a20-9036-60955a71d963',NULL),('56808620-f4bb-4fb1-bce4-8e6e0b8916e0',NULL,'auth-username-password-form','07ba44e3-7c82-4013-a138-2ea110821efc','64041aca-55e4-45c7-babd-c61513d5c746',0,10,'\0',NULL,NULL),('5c63c225-3aff-418b-86c5-091b0e0ab801',NULL,'auth-otp-form','07ba44e3-7c82-4013-a138-2ea110821efc','54a656c5-6c53-4485-b909-11d978bfdf62',0,20,'\0',NULL,NULL),('5e41a8b5-0c47-4992-9cad-cb317f087dd1',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','cd9bc907-4a64-48de-9223-bbeacbc2e0e5',2,20,'','33f33b52-b73f-4df8-a504-ed81b63956b0',NULL),('5e7b9056-cf0e-4f48-8779-ff244042ff13',NULL,'registration-page-form','07ba44e3-7c82-4013-a138-2ea110821efc','f19f9007-34a4-4d24-a1e5-c108a3f3dcea',0,10,'','e7a3e7e8-d777-463d-b44d-f241dd6caa90',NULL),('604aefa5-ca26-4697-bf3d-845f89b2c939',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','7dc42927-a799-4a20-9036-60955a71d963',2,20,'','3bf001eb-56b4-4af0-84ff-bf9d1e6654a5',NULL),('60b99181-64c9-4e56-b28a-c85066e23c61',NULL,'identity-provider-redirector','07ba44e3-7c82-4013-a138-2ea110821efc','446e4c85-362b-4e0e-aad8-574bc8917860',2,25,'\0',NULL,NULL),('60d0fd5c-8188-444f-bef6-431825475acc',NULL,'registration-user-creation','07ba44e3-7c82-4013-a138-2ea110821efc','e7a3e7e8-d777-463d-b44d-f241dd6caa90',0,20,'\0',NULL,NULL),('61e7b05f-9b14-4a11-b6f4-b427496edb7b',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','64041aca-55e4-45c7-babd-c61513d5c746',1,20,'','3ad12eea-fc55-40f9-8bcb-17c71e1a26ba',NULL),('633450cd-255f-473b-ba95-e856cf467fb2',NULL,'registration-password-action','07ba44e3-7c82-4013-a138-2ea110821efc','e7a3e7e8-d777-463d-b44d-f241dd6caa90',0,50,'\0',NULL,NULL),('64421b66-c34b-45e5-aa70-01ae701939c9',NULL,'docker-http-basic-authenticator','07ba44e3-7c82-4013-a138-2ea110821efc','07abf4f3-d6ca-4f43-bcfb-35736e7c4452',0,10,'\0',NULL,NULL),('69a70356-9c40-40c9-8689-7be2a5da5ae1',NULL,'reset-credentials-choose-user','07ba44e3-7c82-4013-a138-2ea110821efc','84b8da05-e10f-4206-afea-6a09fe3a58f5',0,10,'\0',NULL,NULL),('7bf75070-192e-4063-b023-28a5b8dfbbad',NULL,'auth-otp-form','07ba44e3-7c82-4013-a138-2ea110821efc','3ad12eea-fc55-40f9-8bcb-17c71e1a26ba',0,20,'\0',NULL,NULL),('845dbe95-ee7c-4c79-8f5c-11497327270a',NULL,'idp-email-verification','07ba44e3-7c82-4013-a138-2ea110821efc','cd9bc907-4a64-48de-9223-bbeacbc2e0e5',2,10,'\0',NULL,NULL),('86085def-aa0a-473c-8bcf-04664eead2c6',NULL,'reset-otp','07ba44e3-7c82-4013-a138-2ea110821efc','442509e5-ac9f-4cdf-b638-ce5ecd28df6a',0,20,'\0',NULL,NULL),('8ae44bca-c769-45e3-9889-f7150878bb3f',NULL,'basic-auth','07ba44e3-7c82-4013-a138-2ea110821efc','cf524efe-4084-4f90-a59d-eca97b0931aa',0,10,'\0',NULL,NULL),('8c0ce82d-eb27-4fc6-bc62-5d105504ff80',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','0445b744-29db-4136-9ae6-304aeacb7e20',1,30,'','429f8afd-6e76-4499-b2f0-b3eb05432c7b',NULL),('8ed30354-12a9-480c-80ef-e693eb73fd74',NULL,'idp-confirm-link','07ba44e3-7c82-4013-a138-2ea110821efc','3bf001eb-56b4-4af0-84ff-bf9d1e6654a5',0,10,'\0',NULL,NULL),('96517cc8-959c-4648-b063-021bc6f9b964',NULL,'registration-profile-action','07ba44e3-7c82-4013-a138-2ea110821efc','e7a3e7e8-d777-463d-b44d-f241dd6caa90',0,40,'\0',NULL,NULL),('9d457d38-b596-44f6-bcae-8d68a2802b4d',NULL,'no-cookie-redirect','07ba44e3-7c82-4013-a138-2ea110821efc','b9df040d-da1b-483d-8eec-31daa0b537e2',0,10,'\0',NULL,NULL),('a26d251a-9822-4bdc-a40c-87095d64a374',NULL,'direct-grant-validate-password','07ba44e3-7c82-4013-a138-2ea110821efc','0445b744-29db-4136-9ae6-304aeacb7e20',0,20,'\0',NULL,NULL),('ad006f26-9c40-42a8-a8b6-23dc7fa6ccdb',NULL,'conditional-user-configured','07ba44e3-7c82-4013-a138-2ea110821efc','442509e5-ac9f-4cdf-b638-ce5ecd28df6a',0,10,'\0',NULL,NULL),('ae591cc9-5475-40d4-a069-242860ad610d',NULL,'client-secret-jwt','07ba44e3-7c82-4013-a138-2ea110821efc','fc834b83-e0d2-4982-a4d1-93d0038a420e',2,30,'\0',NULL,NULL),('b72c3da2-45bb-452e-bada-9d386813219c',NULL,'client-jwt','07ba44e3-7c82-4013-a138-2ea110821efc','fc834b83-e0d2-4982-a4d1-93d0038a420e',2,20,'\0',NULL,NULL),('c6eed93c-7142-4cbd-827b-24432737e4ef',NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','33f33b52-b73f-4df8-a504-ed81b63956b0',1,20,'','54a656c5-6c53-4485-b909-11d978bfdf62',NULL),('d0722932-4d34-48a9-93df-2ce5b9ab230c',NULL,'conditional-user-configured','07ba44e3-7c82-4013-a138-2ea110821efc','3ad12eea-fc55-40f9-8bcb-17c71e1a26ba',0,10,'\0',NULL,NULL),('da70980b-143e-4631-9fbd-11ccb89607f4',NULL,'direct-grant-validate-username','07ba44e3-7c82-4013-a138-2ea110821efc','0445b744-29db-4136-9ae6-304aeacb7e20',0,10,'\0',NULL,NULL),('e186ad35-5b22-406e-80da-5c8efde07744',NULL,'idp-create-user-if-unique','07ba44e3-7c82-4013-a138-2ea110821efc','7dc42927-a799-4a20-9036-60955a71d963',2,10,'\0',NULL,'9137dbb6-41f8-472c-a233-920ebec175c5'),('e4c0d6a1-b96c-484b-9308-b0fa8bc080f2',NULL,'idp-username-password-form','07ba44e3-7c82-4013-a138-2ea110821efc','33f33b52-b73f-4df8-a504-ed81b63956b0',0,10,'\0',NULL,NULL),('ec44ab5f-0503-4563-aa56-aa41340b100d',NULL,'auth-cookie','07ba44e3-7c82-4013-a138-2ea110821efc','446e4c85-362b-4e0e-aad8-574bc8917860',2,10,'\0',NULL,NULL),('f398e96b-6ffe-4788-a3af-448055e15f3e',NULL,'registration-recaptcha-action','07ba44e3-7c82-4013-a138-2ea110821efc','e7a3e7e8-d777-463d-b44d-f241dd6caa90',3,60,'\0',NULL,NULL),('f3ac44d7-5c26-4139-90ba-593fed100779',NULL,'reset-password','07ba44e3-7c82-4013-a138-2ea110821efc','84b8da05-e10f-4206-afea-6a09fe3a58f5',0,30,'\0',NULL,NULL),('f5c7a04b-72fe-4e66-90da-072492bf2add',NULL,'auth-spnego','07ba44e3-7c82-4013-a138-2ea110821efc','cf524efe-4084-4f90-a59d-eca97b0931aa',3,30,'\0',NULL,NULL),('f70c517f-2a27-41b9-8234-a061be8cf468',NULL,'client-secret','07ba44e3-7c82-4013-a138-2ea110821efc','fc834b83-e0d2-4982-a4d1-93d0038a420e',2,10,'\0',NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0445b744-29db-4136-9ae6-304aeacb7e20','direct grant','OpenID Connect Resource Owner Grant','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('07abf4f3-d6ca-4f43-bcfb-35736e7c4452','docker auth','Used by Docker clients to authenticate against the IDP','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('33f33b52-b73f-4df8-a504-ed81b63956b0','Verify Existing Account by Re-authentication','Reauthentication of existing account','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('3ad12eea-fc55-40f9-8bcb-17c71e1a26ba','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('3bf001eb-56b4-4af0-84ff-bf9d1e6654a5','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('429f8afd-6e76-4499-b2f0-b3eb05432c7b','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('442509e5-ac9f-4cdf-b638-ce5ecd28df6a','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('446e4c85-362b-4e0e-aad8-574bc8917860','browser','browser based authentication','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('54a656c5-6c53-4485-b909-11d978bfdf62','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('64041aca-55e4-45c7-babd-c61513d5c746','forms','Username, password, otp and other auth forms.','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('774fd228-db68-4d34-9cc0-51b619da9836','saml ecp','SAML ECP Profile Authentication Flow','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('7dc42927-a799-4a20-9036-60955a71d963','User creation or linking','Flow for the existing/non-existing user alternatives','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('84b8da05-e10f-4206-afea-6a09fe3a58f5','reset credentials','Reset credentials for a user if they forgot their password or something','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('b9df040d-da1b-483d-8eec-31daa0b537e2','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('cd9bc907-4a64-48de-9223-bbeacbc2e0e5','Account verification options','Method with which to verity the existing account','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('cf524efe-4084-4f90-a59d-eca97b0931aa','Authentication Options','Authentication options.','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','\0',''),('d77c0a90-993c-41ba-9213-7a1a9ebe397f','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('e7a3e7e8-d777-463d-b44d-f241dd6caa90','registration form','registration form','07ba44e3-7c82-4013-a138-2ea110821efc','form-flow','\0',''),('f19f9007-34a4-4d24-a1e5-c108a3f3dcea','registration','registration flow','07ba44e3-7c82-4013-a138-2ea110821efc','basic-flow','',''),('fc834b83-e0d2-4982-a4d1-93d0038a420e','clients','Base authentication for clients','07ba44e3-7c82-4013-a138-2ea110821efc','client-flow','','');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('9137dbb6-41f8-472c-a233-920ebec175c5','create unique user config','07ba44e3-7c82-4013-a138-2ea110821efc'),('f12732b8-5151-4b5f-ae2c-bd6bcb82a2f4','review profile config','07ba44e3-7c82-4013-a138-2ea110821efc');
UNLOCK TABLES;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('9137dbb6-41f8-472c-a233-920ebec175c5','false','require.password.update.after.registration'),('f12732b8-5151-4b5f-ae2c-bd6bcb82a2f4','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('539617dd-ab3e-4960-a452-6abb924a3cd9','','\0','master-realm',0,'\0',NULL,NULL,'',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','','','_platform',0,'\0','dummy',NULL,'\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','','\0','security-admin-console',0,'',NULL,'/admin/master/console/','\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('932c02e9-7a77-492b-944c-0958aed9c620','','','_platform-api',0,'',NULL,NULL,'\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','','\0','account',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','','\0','account-console',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('d7fb047c-219d-4997-abc8-6c24c02db7df','','\0','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('efd10a57-2136-4629-8c79-b3127705c348','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','','\0','_platform-console',0,'','dummy',NULL,'\0',NULL,'\0','07ba44e3-7c82-4013-a138-2ea110821efc','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','','\0');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('5e08f676-ef74-4c98-a7ad-116f4d4764d5','backchannel.logout.revoke.offline.tokens','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','backchannel.logout.session.required','true'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','client.secret.creation.time','1698220998'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','client_credentials.use_refresh_token','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','display.on.consent.screen','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','exclude.session.state.from.auth.response','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','id.token.as.detached.signature','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','oauth2.device.authorization.grant.enabled','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','oidc.ciba.grant.enabled','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','require.pushed.authorization.requests','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.artifact.binding','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.assertion.signature','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.authnstatement','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.client.signature','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.encrypt','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.force.post.binding','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.multivalued.roles','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.onetimeuse.condition','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.server.signature','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml.server.signature.keyinfo.ext','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','saml_force_name_id_format','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','tls.client.certificate.bound.access.tokens','false'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','use.refresh.tokens','true'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','pkce.code.challenge.method','S256'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','post.logout.redirect.uris','+'),('932c02e9-7a77-492b-944c-0958aed9c620','access.token.lifespan','86400'),('932c02e9-7a77-492b-944c-0958aed9c620','acr.loa.map','{}'),('932c02e9-7a77-492b-944c-0958aed9c620','backchannel.logout.revoke.offline.tokens','false'),('932c02e9-7a77-492b-944c-0958aed9c620','backchannel.logout.session.required','true'),('932c02e9-7a77-492b-944c-0958aed9c620','client.session.idle.timeout','86400'),('932c02e9-7a77-492b-944c-0958aed9c620','client.session.max.lifespan','86400'),('932c02e9-7a77-492b-944c-0958aed9c620','client_credentials.use_refresh_token','false'),('932c02e9-7a77-492b-944c-0958aed9c620','display.on.consent.screen','false'),('932c02e9-7a77-492b-944c-0958aed9c620','exclude.session.state.from.auth.response','false'),('932c02e9-7a77-492b-944c-0958aed9c620','frontchannel.logout.session.required','false'),('932c02e9-7a77-492b-944c-0958aed9c620','id.token.as.detached.signature','false'),('932c02e9-7a77-492b-944c-0958aed9c620','oauth2.device.authorization.grant.enabled','false'),('932c02e9-7a77-492b-944c-0958aed9c620','oidc.ciba.grant.enabled','false'),('932c02e9-7a77-492b-944c-0958aed9c620','require.pushed.authorization.requests','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.allow.ecp.flow','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.artifact.binding','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.assertion.signature','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.authnstatement','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.client.signature','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.encrypt','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.force.post.binding','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.multivalued.roles','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.onetimeuse.condition','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.server.signature','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml.server.signature.keyinfo.ext','false'),('932c02e9-7a77-492b-944c-0958aed9c620','saml_force_name_id_format','false'),('932c02e9-7a77-492b-944c-0958aed9c620','tls.client.certificate.bound.access.tokens','false'),('932c02e9-7a77-492b-944c-0958aed9c620','token.response.type.bearer.lower-case','false'),('932c02e9-7a77-492b-944c-0958aed9c620','use.refresh.tokens','true'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','post.logout.redirect.uris','+'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','pkce.code.challenge.method','S256'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','post.logout.redirect.uris','+'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','backchannel.logout.revoke.offline.tokens','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','backchannel.logout.session.required','true'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','client.secret.creation.time','1698220999'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','client_credentials.use_refresh_token','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','display.on.consent.screen','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','exclude.session.state.from.auth.response','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','id.token.as.detached.signature','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','oauth2.device.authorization.grant.enabled','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','oidc.ciba.grant.enabled','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','post.logout.redirect.uris','/*'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','require.pushed.authorization.requests','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.artifact.binding','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.assertion.signature','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.authnstatement','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.client.signature','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.encrypt','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.force.post.binding','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.multivalued.roles','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.onetimeuse.condition','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.server.signature','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml.server.signature.keyinfo.ext','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','saml_force_name_id_format','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','tls.client.certificate.bound.access.tokens','false'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('0c2fea1d-0bbf-404a-9691-4fffd75e5a19','web-origins','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('5281b076-8c67-440f-949f-3abc19d57b68','address','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect built-in scope: address','openid-connect'),('54e08bb8-6057-483a-8a9c-5cf0c09b21ea','microprofile-jwt','07ba44e3-7c82-4013-a138-2ea110821efc','Microprofile - JWT built-in scope','openid-connect'),('68adc16b-199b-47be-b204-88fe76638a15','role_list','07ba44e3-7c82-4013-a138-2ea110821efc','SAML role list','saml'),('8203c0bb-b493-4220-bfec-81ee9be70242','acr','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('88e97a4a-56fe-42d6-8e21-98be6199f6ce','roles','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect scope for add user roles to the access token','openid-connect'),('8b93bb88-d220-40d0-b267-1a3b0bcaf27f','email','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect built-in scope: email','openid-connect'),('a1fe7f44-6a2c-48d5-b63e-15e01874367b','profile','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect built-in scope: profile','openid-connect'),('bf6e312c-5176-40f3-bc81-90d88b86bd15','phone','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect built-in scope: phone','openid-connect'),('cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','offline_access','07ba44e3-7c82-4013-a138-2ea110821efc','OpenID Connect built-in scope: offline_access','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('0c2fea1d-0bbf-404a-9691-4fffd75e5a19','','consent.screen.text'),('0c2fea1d-0bbf-404a-9691-4fffd75e5a19','false','display.on.consent.screen'),('0c2fea1d-0bbf-404a-9691-4fffd75e5a19','false','include.in.token.scope'),('5281b076-8c67-440f-949f-3abc19d57b68','${addressScopeConsentText}','consent.screen.text'),('5281b076-8c67-440f-949f-3abc19d57b68','true','display.on.consent.screen'),('5281b076-8c67-440f-949f-3abc19d57b68','true','include.in.token.scope'),('54e08bb8-6057-483a-8a9c-5cf0c09b21ea','false','display.on.consent.screen'),('54e08bb8-6057-483a-8a9c-5cf0c09b21ea','true','include.in.token.scope'),('68adc16b-199b-47be-b204-88fe76638a15','${samlRoleListScopeConsentText}','consent.screen.text'),('68adc16b-199b-47be-b204-88fe76638a15','true','display.on.consent.screen'),('8203c0bb-b493-4220-bfec-81ee9be70242','false','display.on.consent.screen'),('8203c0bb-b493-4220-bfec-81ee9be70242','false','include.in.token.scope'),('88e97a4a-56fe-42d6-8e21-98be6199f6ce','${rolesScopeConsentText}','consent.screen.text'),('88e97a4a-56fe-42d6-8e21-98be6199f6ce','true','display.on.consent.screen'),('88e97a4a-56fe-42d6-8e21-98be6199f6ce','false','include.in.token.scope'),('8b93bb88-d220-40d0-b267-1a3b0bcaf27f','${emailScopeConsentText}','consent.screen.text'),('8b93bb88-d220-40d0-b267-1a3b0bcaf27f','true','display.on.consent.screen'),('8b93bb88-d220-40d0-b267-1a3b0bcaf27f','true','include.in.token.scope'),('a1fe7f44-6a2c-48d5-b63e-15e01874367b','${profileScopeConsentText}','consent.screen.text'),('a1fe7f44-6a2c-48d5-b63e-15e01874367b','true','display.on.consent.screen'),('a1fe7f44-6a2c-48d5-b63e-15e01874367b','true','include.in.token.scope'),('bf6e312c-5176-40f3-bc81-90d88b86bd15','${phoneScopeConsentText}','consent.screen.text'),('bf6e312c-5176-40f3-bc81-90d88b86bd15','true','display.on.consent.screen'),('bf6e312c-5176-40f3-bc81-90d88b86bd15','true','include.in.token.scope'),('cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','${offlineAccessScopeConsentText}','consent.screen.text'),('cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','true','display.on.consent.screen');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('539617dd-ab3e-4960-a452-6abb924a3cd9','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('539617dd-ab3e-4960-a452-6abb924a3cd9','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('539617dd-ab3e-4960-a452-6abb924a3cd9','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('539617dd-ab3e-4960-a452-6abb924a3cd9','8203c0bb-b493-4220-bfec-81ee9be70242',''),('539617dd-ab3e-4960-a452-6abb924a3cd9','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('539617dd-ab3e-4960-a452-6abb924a3cd9','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('539617dd-ab3e-4960-a452-6abb924a3cd9','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('539617dd-ab3e-4960-a452-6abb924a3cd9','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('539617dd-ab3e-4960-a452-6abb924a3cd9','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('5e08f676-ef74-4c98-a7ad-116f4d4764d5','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('7b8b580a-2339-47c3-9a6c-71b1aa866534','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','8203c0bb-b493-4220-bfec-81ee9be70242',''),('7b8b580a-2339-47c3-9a6c-71b1aa866534','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('7b8b580a-2339-47c3-9a6c-71b1aa866534','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('7b8b580a-2339-47c3-9a6c-71b1aa866534','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('7b8b580a-2339-47c3-9a6c-71b1aa866534','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('7b8b580a-2339-47c3-9a6c-71b1aa866534','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('932c02e9-7a77-492b-944c-0958aed9c620','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('932c02e9-7a77-492b-944c-0958aed9c620','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('932c02e9-7a77-492b-944c-0958aed9c620','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('932c02e9-7a77-492b-944c-0958aed9c620','8203c0bb-b493-4220-bfec-81ee9be70242',''),('932c02e9-7a77-492b-944c-0958aed9c620','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('932c02e9-7a77-492b-944c-0958aed9c620','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('932c02e9-7a77-492b-944c-0958aed9c620','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('932c02e9-7a77-492b-944c-0958aed9c620','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('932c02e9-7a77-492b-944c-0958aed9c620','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','8203c0bb-b493-4220-bfec-81ee9be70242',''),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','8203c0bb-b493-4220-bfec-81ee9be70242',''),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('d7fb047c-219d-4997-abc8-6c24c02db7df','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('d7fb047c-219d-4997-abc8-6c24c02db7df','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('d7fb047c-219d-4997-abc8-6c24c02db7df','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('d7fb047c-219d-4997-abc8-6c24c02db7df','8203c0bb-b493-4220-bfec-81ee9be70242',''),('d7fb047c-219d-4997-abc8-6c24c02db7df','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('d7fb047c-219d-4997-abc8-6c24c02db7df','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('d7fb047c-219d-4997-abc8-6c24c02db7df','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('d7fb047c-219d-4997-abc8-6c24c02db7df','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('d7fb047c-219d-4997-abc8-6c24c02db7df','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('efd10a57-2136-4629-8c79-b3127705c348','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('efd10a57-2136-4629-8c79-b3127705c348','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('efd10a57-2136-4629-8c79-b3127705c348','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('efd10a57-2136-4629-8c79-b3127705c348','8203c0bb-b493-4220-bfec-81ee9be70242',''),('efd10a57-2136-4629-8c79-b3127705c348','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('efd10a57-2136-4629-8c79-b3127705c348','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('efd10a57-2136-4629-8c79-b3127705c348','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('efd10a57-2136-4629-8c79-b3127705c348','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('efd10a57-2136-4629-8c79-b3127705c348','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0');
UNLOCK TABLES;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','d74dc891-7489-4e7c-a093-f1fd93be8e7a');
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
INSERT INTO `COMPONENT` VALUES ('0e07cfab-3368-40a9-89c0-1fa788941c64','Allowed Client Scopes','07ba44e3-7c82-4013-a138-2ea110821efc','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','anonymous'),('22b58ff7-7d51-491f-a458-4522f05728f4','rsa-enc-generated','07ba44e3-7c82-4013-a138-2ea110821efc','rsa-enc-generated','org.keycloak.keys.KeyProvider','07ba44e3-7c82-4013-a138-2ea110821efc',NULL),('2bf699d4-3026-47b4-93ab-3526fd528bdf','Full Scope Disabled','07ba44e3-7c82-4013-a138-2ea110821efc','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','anonymous'),('45308e14-e6d6-415a-895e-8fc0ec5e74e8','aes-generated','07ba44e3-7c82-4013-a138-2ea110821efc','aes-generated','org.keycloak.keys.KeyProvider','07ba44e3-7c82-4013-a138-2ea110821efc',NULL),('61a0d4e7-1886-4e2c-a278-ac2e1159bc72','Trusted Hosts','07ba44e3-7c82-4013-a138-2ea110821efc','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','anonymous'),('6a7eb763-dee8-44e2-97e8-6638598ebdbd','hmac-generated','07ba44e3-7c82-4013-a138-2ea110821efc','hmac-generated','org.keycloak.keys.KeyProvider','07ba44e3-7c82-4013-a138-2ea110821efc',NULL),('6d563b34-9ece-4711-8b18-c41b727f9f8f','Max Clients Limit','07ba44e3-7c82-4013-a138-2ea110821efc','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','anonymous'),('809351f3-bc89-42eb-a1b4-057903c00a96','rsa-generated','07ba44e3-7c82-4013-a138-2ea110821efc','rsa-generated','org.keycloak.keys.KeyProvider','07ba44e3-7c82-4013-a138-2ea110821efc',NULL),('819b4699-d028-4ee5-a952-319ed036ea0d','Allowed Protocol Mapper Types','07ba44e3-7c82-4013-a138-2ea110821efc','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','anonymous'),('b3aff80c-071a-48c8-8392-19ff2b785602','Allowed Protocol Mapper Types','07ba44e3-7c82-4013-a138-2ea110821efc','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','authenticated'),('d3281d23-337d-4c18-87a5-cb0e03fa2669','Consent Required','07ba44e3-7c82-4013-a138-2ea110821efc','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','anonymous'),('d3d95755-fc19-40ed-9afe-f16d7bc5c85a','Allowed Client Scopes','07ba44e3-7c82-4013-a138-2ea110821efc','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','authenticated');
UNLOCK TABLES;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
INSERT INTO `COMPONENT_CONFIG` VALUES ('033a7deb-4588-41c2-ae4a-f7f6ed79bff4','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('037c0c64-c591-4606-9e9b-55b307a51fae','809351f3-bc89-42eb-a1b4-057903c00a96','privateKey','MIIEpAIBAAKCAQEAwG0IoXEf7TDtPLzflJqi7ILznPrbwQ9IPdj66yKUJiNeJJl8nfDOuks2KpXbf42yAyfuTyXAj3nU+llnH86XMkzjUqzUsLyqnw1c3LwmKlSIUZ3pqGA/Vo0ktW3an45ar3c2DlvnvsAR1eVcm3USCwWUTrFmcIREX45bs88v/qN+DlULGI4K1wKSVYoZvvRuF2Jw5pP177gt9TKId4M+WEZq0vTNMaPeUYz4zsuOIvPZbSN2lg/K4XldTvbhyZw51PbtjFwl2xs2CfUTHiOyfjV1d+bAt3cG6uRq/iVqq7dwjys+ZnkACLeGwqMa3h5pnwkawyYZd2kpNQjsPZwsoQIDAQABAoIBABQ6mibLq08ufrAtDGWVTJWnzhe1hQrikgYDdJxpvBCW1P+svY2mijsKK1l2e9bo1NsRVHOQXNIQfR/s7GMK/zjX3al8NxdV3CuAln+zjWETlimbW9waMypkh+SFVg+CQf0Sf5Wqmn4id7WIaVAD8ofDWEQeEO547y2q+++3Exz2EPb9keLLnK6EzzMWsuDlisSNEufwhG6GijOTd+wwlelA30LBjes3exCFUPOq18vVyNcTTYWDqweISyEmm0CZ5NlA/MBWFnIAqQCCnXP95GoTm4Iu7BjqOpQuXKSKjYMSwkp5CC4bQvFPa3t6bQMhliYL4DL/nlWR03PF/1/fpfkCgYEA8VUwsPEu+AWe76gYTXUCTV9wvnJIErmJAoaS0iFHFEAYqdaaJvx3Hj3kmoeLesaUhIEpxdQngauA5u6CrV5klyUnwncK5mhQk1vC648/V5EPexSiHITRVXN1mO53zJHUaeOqEs07WPOcpVuYXLUndT7hf9h+nzQuNS2i8BScMgkCgYEAzB7rVF3tfTQpuOkh2vGhZb1LyC54rRq3fc47jgPppMCJjOxwZfsCPbz2/VJRHkYZJPKVg+8WmKeu5Ome5cDyoH5eRS3M/WXdvSKA1iWsQXmJhPW3jJ0XQWmmVLIwEM90jZfvE3NS7sUqiAr+JZcGjz88r/weypNo6oDuu3zsa9kCgYAGj+BxDz3NtKlrrtBqWsIjRHMWWpknGTBmhy461HjQTiXdiF5MrRS4F8q9gO4D+p5TNAfkvy4L0pQAs3+OI0Ds8y+vk/kR5sg6GYalTRHV2bXoDNmTmPDwN+F8tQ9A2r5B2tTnCfmRI56gyGrOKobWI02SYlqfDZYsD/+cM5NDsQKBgQCgidDcUeNvDY+i9vjBkjk2I2Nu1d3jh5e5QnJkh39DLIsCYxMjof9pPy2inxNdlBRCkug1E93Zwkgzkep/GPm6cKkED7mhsnRrRK+/vXF1LXmTMQ5jcUnREJ7ZDivvjLpGgrBtw83+LOP+i2bHebiXAU1hvBEbkkR5613X57CqQQKBgQDM1zRa1mK4xSmEZ6k61CNUM0WrSJHn8wcUPYtnNvcVdXgZYp1LPF3z5yh5F6ddX+EqY9kUqXW9rbJjMqRJT/K16DkTXkqIqRq5Mb9DdB2hLblwRrqI09i5+j/fP/KWohX8b3IBYXN6A8JtiuA84MX/40ts8T6MT/E977iuAA9V9g=='),('05b6d9a4-5f1c-4261-b643-4c5eea151b04','61a0d4e7-1886-4e2c-a278-ac2e1159bc72','client-uris-must-match','true'),('0e5957e7-da61-49bc-9f22-dc94899cb084','22b58ff7-7d51-491f-a458-4522f05728f4','priority','100'),('1090a917-80b1-4660-8d88-6b854b2a3cd4','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('195ef1ce-db65-4635-9f67-b8afbcb35354','0e07cfab-3368-40a9-89c0-1fa788941c64','allow-default-scopes','true'),('1c8a0b36-802f-47e8-a3fb-562093bd5170','6a7eb763-dee8-44e2-97e8-6638598ebdbd','kid','3820aa63-97c2-499c-a1ca-f90ce0973028'),('23226b46-3977-495b-ba7f-456a2cdba791','45308e14-e6d6-415a-895e-8fc0ec5e74e8','priority','100'),('2cf29bdd-574c-40b6-ad34-e4293d3a2596','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','saml-role-list-mapper'),('2d4efefc-dcff-4d81-a25b-4043da1672fb','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','saml-user-property-mapper'),('3ad9b8e0-2533-40c0-8576-198b9e4b0cc0','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('40bc14ce-2572-4008-b5ec-ea1c5c5a6cec','6a7eb763-dee8-44e2-97e8-6638598ebdbd','priority','100'),('4196f012-ad01-46a4-8132-28e0f13b2298','6a7eb763-dee8-44e2-97e8-6638598ebdbd','secret','RUWjt1TR0cRqiqQSm5HT3rHstyFuZ9kNooQjZueam8yQwbgDKF-BJFusRItsUTRpltxjJMxmZq8BprVHdni6Hg'),('46742cd5-aa82-4ca9-8443-5d9157cf9ca4','6a7eb763-dee8-44e2-97e8-6638598ebdbd','algorithm','HS256'),('46d56c01-497e-43d9-89d2-2af92c857a0e','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','oidc-full-name-mapper'),('586aa6e8-c90b-40be-a55b-d5178bc75ee9','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','saml-role-list-mapper'),('5ac4f5f1-3135-43cf-b9c5-a2ec16de1526','22b58ff7-7d51-491f-a458-4522f05728f4','certificate','MIICmzCCAYMCBgGLZdvoKTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDI1MDgwMTMyWhcNMzMxMDI1MDgwMzEyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCwv6cZINnRTLONGzM3KwyvJQSIITSjyfCyAsYRIp/d40qwy2wf9yy5IY+ZB7snMymHX5u5v0WJutXkz+Y/2IdZ8fK47NwGoMHVRR/QbGOrv5eX1nO5uOe/8DeSMGs4re30uF0dwX3cBQ7cYB++/RYZ3sEMX1rZNftWCb/JGL5XLyA1zCQn/i+QIxGQ5dzW940G52I42XV/lVSQizJbE9G2ZetS3VPWjpemu0xXrsPljj6oysmh6wv2K1wR2LGEnYmWNxwO6vmBgsUfNVrfbvGGih4BU6Ui02cqcJ3HVKgaZg1iX/pPoYfpcMODx6d5vrHYZxZHsbpMT3zbI4D13l/7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBACwbfA54i/kfsGh3OY0bhGNvt2jlq+SjZbyVUBnvPM6JAqK2jPHtZGx/exGu3psE4xK56vyrqge3JqT8zozK8jdvBJTzEu0vuJH96dcYxwZkBO5fejTew+05PyZP7lWqfb6ieY/qq6+MpmxdygtWxCm/BhUyNNhmooup7iAl1pnKxFIWOodCwL97LHcAoBNQ6uuI2BvbsBMhKv6W0mOQ2gVcGlK2MMiHWIIn81E59RyKiDXopTQIveD0/vzmKuSvEAyAjbgS+zJ4aZIyaYLmTomEa1witImxYf4zhIRDMu4rBGbEWnCA7KOxVo99hdB+9G6ktj47sP2gyF+zkBISP7c='),('5d8279ec-7808-4d79-b8f8-d08cca262f7b','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','oidc-address-mapper'),('5db16169-b80c-4d22-8403-32e4c670799d','809351f3-bc89-42eb-a1b4-057903c00a96','keyUse','SIG'),('5e4952f6-d531-4bc7-84ee-e9fc73a92844','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('5e52f67f-d16c-4dcb-8c09-b93989d154fb','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('68cd3c14-413b-4f3b-a3de-abd833ec9d11','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('6b70f744-0f97-4d1c-a022-a7ed7cb7a5fe','22b58ff7-7d51-491f-a458-4522f05728f4','keyUse','ENC'),('6f81eb66-94b0-411e-b5fe-05d6ed9916dd','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','oidc-address-mapper'),('6fea4aef-5866-4143-8995-74fef01c92b3','22b58ff7-7d51-491f-a458-4522f05728f4','privateKey','MIIEogIBAAKCAQEAsL+nGSDZ0UyzjRszNysMryUEiCE0o8nwsgLGESKf3eNKsMtsH/csuSGPmQe7JzMph1+bub9FibrV5M/mP9iHWfHyuOzcBqDB1UUf0Gxjq7+Xl9Zzubjnv/A3kjBrOK3t9LhdHcF93AUO3GAfvv0WGd7BDF9a2TX7Vgm/yRi+Vy8gNcwkJ/4vkCMRkOXc1veNBudiONl1f5VUkIsyWxPRtmXrUt1T1o6XprtMV67D5Y4+qMrJoesL9itcEdixhJ2JljccDur5gYLFHzVa327xhooeAVOlItNnKnCdx1SoGmYNYl/6T6GH6XDDg8eneb6x2GcWR7G6TE982yOA9d5f+wIDAQABAoIBACBeWNmvPHSqGU/EJXL6/U2t99B+VEeSmfPfsio9Lw3RrEIIXvrTp2sYDFY4JjwdkINsLPatYqzAfJ90u3QB0XfVaWAYcIr+McE+8X6X+wDfC4IREgx3ImnyMhshpuEwaR2iDdt/Le93NauCJw4xBzUhqDT92YNh8W9mRassTt9kQhQ8H161DRk5VjlZzTbOVMxLruGnvmfRNMMgWMkMb+WvVopA8LFkXyw+yWzE4B4uACnxYwseptKgOJ+LcxHh537AP44tX5BCpoYL+T7Rl+o3ky1bnABUH9zldLeIOE6MFB5g2rzvYmy/dpO6BeW/kP3VJMPh6h67S2sM8aAAqCECgYEA1/CxEYQnJlPea5ySUd+JM/5vowMRPGpTcQkb9ShKmwSiHgoXPtiO1LOmGzqRaOFwFsa2kHFbgci295eu18CLs5VTE+c4ktbXZ6c+fHb7ZJFXRKk0SKhUhPGwKpvLzS8p2lf3XCHBIUQGSD6Xc+maBtXTxlq/6GA/AxshTFqSVwkCgYEA0YmysXyKow9WnqUbZAxNH9scQnzW8HFz9XBf7Ri80nwHtgskS/kn5GGoPxKoG6/R6nReQmSyeqo2Kw/7d3Mql35FzRAAQqCN9Ll6ku0luVPp6gEUihU4G33f8N3fzHvM1/7TwT/2K8Xsxzi4CZdHYIoPLszDylCgG2wh2C+TW+MCgYATSC7HfaFxTrPhsA1wuiEqP2IAkFmNp4Dj6whQD9T5mqRPQl9pATVf0NrYO5aYYuj7X6sVosmlASM1YJoAMfVHh+HvOQpYMk7xtoFh48324POF8gX1JvLFHD+6zkaYf8mg8ZHo7CquqcBV2yDy/L0ANz+9yoSwX0fBIz8J7lx64QKBgDRXlFa3yJ3w7+9TSSNV21Iw1r9ZFgwcGx5dgujkPA7MQtTbtaZwx+FJ79BJpcq8wdAyX3VwWBFCQaPCK0vsbeBH/8G41IfQOYW/a3oWWU0RRCZbPLk9kbV0XSN7GTOoXUQ7eMQWaTUIDRy682YZ7w+TjTVgmywHtecDvPSW9dWHAoGAJvs/taQ62HY1v3xL+wouhSGIzLgSvOwjlc5PN09oM14UFohm4BtpMPUeVf823MqwlYvx6i/Bwl115KEP1a5ddTRpAd5YBzJDY06QsJLN+LyfSP4LpQZlhktNcwkpO3yvhB8wW+7KtgsFDfoRcaKaCtaQQRG7TX4QSqE6lzJLarU='),('7d8efa42-2bc8-4337-8c97-9859d68dd713','809351f3-bc89-42eb-a1b4-057903c00a96','priority','100'),('8bd7abe8-6347-48d0-984a-73a04ac53e29','22b58ff7-7d51-491f-a458-4522f05728f4','algorithm','RSA-OAEP'),('937e8e0f-6847-4864-a0d3-cd1d6b45ee56','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('98553464-be2c-4d4f-848f-8054513d203e','6d563b34-9ece-4711-8b18-c41b727f9f8f','max-clients','200'),('a986e753-105d-4288-ba6c-55ebf79339ba','809351f3-bc89-42eb-a1b4-057903c00a96','certificate','MIICmzCCAYMCBgGLZdvmhjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDI1MDgwMTMyWhcNMzMxMDI1MDgwMzEyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDAbQihcR/tMO08vN+UmqLsgvOc+tvBD0g92PrrIpQmI14kmXyd8M66SzYqldt/jbIDJ+5PJcCPedT6WWcfzpcyTONSrNSwvKqfDVzcvCYqVIhRnemoYD9WjSS1bdqfjlqvdzYOW+e+wBHV5VybdRILBZROsWZwhERfjluzzy/+o34OVQsYjgrXApJVihm+9G4XYnDmk/XvuC31Moh3gz5YRmrS9M0xo95RjPjOy44i89ltI3aWD8rheV1O9uHJnDnU9u2MXCXbGzYJ9RMeI7J+NXV35sC3dwbq5Gr+JWqrt3CPKz5meQAIt4bCoxreHmmfCRrDJhl3aSk1COw9nCyhAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAH1L+AfvVexdznL4bCRh2adJqz9FiNQzgweM4fQ8z2EOEXOdurze+gPp3ZJ9/kLva83fq5Hz67LR3al0wpyrlxsEoTxNV8jOlTxVHujiUcHOR59uPWPshZT58guchdoRN/pYJv/mK4LOzhNoxe/2vFA+jGgtY4ILWmyUBNc1HRgOo7hBuEzgpq8A7/5ecRFmnkdVENDhEA2TTVIOrnetmqWlvRiYD6yLn97UmmPX2yFmrncsFyMGCG0lctV0vpV/qRYN6m3AK2YcXSOVfW1xWKss9CyMM2H+ZxUCbkckS+RM3EUp44rsltA3qZtuxG9GjTnytOCP4M8iC3Vn7S48bxU='),('b0e35210-a90b-4ecd-88ac-96feb0873525','45308e14-e6d6-415a-895e-8fc0ec5e74e8','kid','dd765a8d-2bcd-44fb-9f0f-586444fe8586'),('b7be6411-65d6-4a36-ab39-e00b43506f29','819b4699-d028-4ee5-a952-319ed036ea0d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b899377c-fe7a-4a17-90b7-ea5fd466eb48','45308e14-e6d6-415a-895e-8fc0ec5e74e8','secret','a2k4iHyF4RSpxpt0c8Y1ow'),('bb419d4d-7015-464c-8974-fde8434581d0','61a0d4e7-1886-4e2c-a278-ac2e1159bc72','host-sending-registration-request-must-match','true'),('bccc1727-0187-4e4d-bada-9858237fcac5','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','saml-user-property-mapper'),('d6d3b511-589c-490b-b2f6-a6b070118ca0','b3aff80c-071a-48c8-8392-19ff2b785602','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e291a6a6-adf4-4536-8589-0fa3f0d2254e','d3d95755-fc19-40ed-9afe-f16d7bc5c85a','allow-default-scopes','true');
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
INSERT INTO `COMPOSITE_ROLE` VALUES ('1f865671-d13b-4db3-8810-ade1b3a9be9c','0115cbcc-ffba-45e5-8eab-d952b3b79e81'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','0fb0e33a-d3d0-481c-a15e-215d0aa45c94'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','2a7e763c-0170-4fda-b43c-24e8ec222c78'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','2fe3458d-812f-4c46-ab8f-85f48b60d437'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','3006e9bc-2d2a-40ad-9d98-042ea4d6cc91'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','3361a1ea-1c08-4875-a561-581a3720d350'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','36ffd67e-17d9-4c36-b757-58c0897afd7a'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','51d21c3f-74a7-4922-8576-7507b117ca7c'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','53cbce58-aec8-4b38-ac3e-333853aee1e7'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','71a9eb80-0b13-4bff-b210-389bcc911b9d'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','7496a993-3928-488a-98c7-dff14bbda623'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','7b620be3-2016-48c9-8dc4-95f69a65535a'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','8c204002-e0b7-4202-9099-d125a8bd5672'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','8d19e06a-ff1a-46b6-a4d2-5e53234a2647'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','b730c892-bfb1-409b-9bf9-2e290379867d'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','c1467a8d-085f-4958-b3d1-7c81f85ff0e9'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','cf889aeb-3b34-483d-a96d-ef81c6e5caa3'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','d6cb25b6-43ec-4f34-8ba0-36746ecfd360'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','ee2d0322-3e52-45b0-8126-4dec6aebcc97'),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','6090f21f-9c57-4819-b91d-453e97f72a07'),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','98f429a8-6dd6-4d81-81a5-f260cd7c316d'),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','d2cfffae-422d-4ac4-8e3d-5e2e19499db5'),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','d74dc891-7489-4e7c-a093-f1fd93be8e7a'),('71a9eb80-0b13-4bff-b210-389bcc911b9d','0fb0e33a-d3d0-481c-a15e-215d0aa45c94'),('71a9eb80-0b13-4bff-b210-389bcc911b9d','2fe3458d-812f-4c46-ab8f-85f48b60d437'),('7b620be3-2016-48c9-8dc4-95f69a65535a','8c204002-e0b7-4202-9099-d125a8bd5672'),('d2cfffae-422d-4ac4-8e3d-5e2e19499db5','29257e0a-e64f-4bb2-a405-625f315c83e6'),('edbb3250-ee2d-47e5-a95f-df1807f6cfc2','49db0fcd-6bd5-45a0-9d4e-49a703342e3c');
UNLOCK TABLES;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
INSERT INTO `CREDENTIAL` VALUES ('7b408b75-a633-4bb0-b913-0af8f480b11f',NULL,'password','a4bf7cd3-cb2c-4309-b746-b23acdd7b097',1698220993435,NULL,'{\"value\":\"9VKK+s30cWIKOXia7BBOHLoC3H6sPbR9e3JVAW+jVtKuWSkBRyQLbu5/TXtxAF7vUAUzGulMBqeir2+hBrMkHQ==\",\"salt\":\"ihOdKli89K2iERPbXlZZfQ==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-10-25 17:03:01',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-10-25 17:03:01',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-10-25 17:03:01',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-10-25 17:03:01',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-10-25 17:03:02',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-10-25 17:03:02',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-10-25 17:03:03',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-10-25 17:03:03',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-10-25 17:03:03',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-10-25 17:03:04',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-10-25 17:03:04',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-10-25 17:03:04',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-10-25 17:03:04',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 17:03:04',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 17:03:04',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 17:03:04',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 17:03:04',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-10-25 17:03:04',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-10-25 17:03:05',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-10-25 17:03:05',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-25 17:03:05',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-25 17:03:05',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-10-25 17:03:05',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-10-25 17:03:05',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-10-25 17:03:05',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-10-25 17:03:05',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-10-25 17:03:05',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-10-25 17:03:05',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-10-25 17:03:06',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-10-25 17:03:06',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-10-25 17:03:06',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-10-25 17:03:06',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 17:03:06',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 17:03:06',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 17:03:06',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 17:03:06',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 17:03:06',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8220979649'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-10-25 17:03:06',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-10-25 17:03:06',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 17:03:06',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 17:03:06',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 17:03:06',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 17:03:07',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-10-25 17:03:07',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 17:03:07',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 17:03:07',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 17:03:07',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 17:03:07',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 17:03:07',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-10-25 17:03:07',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-10-25 17:03:08',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-10-25 17:03:08',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-10-25 17:03:08',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-10-25 17:03:08',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 17:03:08',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 17:03:08',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 17:03:08',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 17:03:08',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-10-25 17:03:09',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-10-25 17:03:09',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-25 17:03:09',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-25 17:03:09',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-10-25 17:03:09',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-10-25 17:03:09',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 17:03:09',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 17:03:09',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 17:03:09',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-10-25 17:03:09',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-10-25 17:03:09',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-10-25 17:03:09',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8220979649'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-10-25 17:03:09',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'8220979649'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 17:03:09',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8220979649'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 17:03:09',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8220979649'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 17:03:09',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8220979649'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 17:03:09',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 17:03:09',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 17:03:09',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 17:03:09',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 17:03:09',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 17:03:09',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 17:03:09',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 17:03:09',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 17:03:09',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 17:03:09',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8220979649'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 17:03:09',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-10-25 17:03:09',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'8220979649'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-25 17:03:09',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-25 17:03:09',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'8220979649'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'8220979649'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'8220979649'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8220979649'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8220979649'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 17:03:09',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8220979649'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8220979649'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8220979649'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8220979649'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8220979649'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 17:03:09',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'8220979649'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-10-25 17:03:09',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'8220979649'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2023-10-25 17:03:09',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2023-10-25 17:03:09',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8220979649'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2023-10-25 17:03:09',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'8220979649'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 17:03:09',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 17:03:09',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8220979649'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 17:03:09',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8220979649');
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL),(1000,'\0',NULL,NULL),(1001,'\0',NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('07ba44e3-7c82-4013-a138-2ea110821efc','0c2fea1d-0bbf-404a-9691-4fffd75e5a19',''),('07ba44e3-7c82-4013-a138-2ea110821efc','5281b076-8c67-440f-949f-3abc19d57b68','\0'),('07ba44e3-7c82-4013-a138-2ea110821efc','54e08bb8-6057-483a-8a9c-5cf0c09b21ea','\0'),('07ba44e3-7c82-4013-a138-2ea110821efc','68adc16b-199b-47be-b204-88fe76638a15',''),('07ba44e3-7c82-4013-a138-2ea110821efc','8203c0bb-b493-4220-bfec-81ee9be70242',''),('07ba44e3-7c82-4013-a138-2ea110821efc','88e97a4a-56fe-42d6-8e21-98be6199f6ce',''),('07ba44e3-7c82-4013-a138-2ea110821efc','8b93bb88-d220-40d0-b267-1a3b0bcaf27f',''),('07ba44e3-7c82-4013-a138-2ea110821efc','a1fe7f44-6a2c-48d5-b63e-15e01874367b',''),('07ba44e3-7c82-4013-a138-2ea110821efc','bf6e312c-5176-40f3-bc81-90d88b86bd15','\0'),('07ba44e3-7c82-4013-a138-2ea110821efc','cfe5e4db-d4b1-4ec4-afc3-152a00d4207f','\0');
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0115cbcc-ffba-45e5-8eab-d952b3b79e81','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_view-identity-providers}','view-identity-providers','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('0fb0e33a-d3d0-481c-a15e-215d0aa45c94','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_query-groups}','query-groups','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('1f865671-d13b-4db3-8810-ade1b3a9be9c','07ba44e3-7c82-4013-a138-2ea110821efc','\0','${role_admin}','admin','07ba44e3-7c82-4013-a138-2ea110821efc',NULL,NULL),('29257e0a-e64f-4bb2-a405-625f315c83e6','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_manage-account-links}','manage-account-links','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('2a7e763c-0170-4fda-b43c-24e8ec222c78','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_view-events}','view-events','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('2fe3458d-812f-4c46-ab8f-85f48b60d437','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_query-users}','query-users','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('3006e9bc-2d2a-40ad-9d98-042ea4d6cc91','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_manage-identity-providers}','manage-identity-providers','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('3361a1ea-1c08-4875-a561-581a3720d350','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_manage-events}','manage-events','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('36ffd67e-17d9-4c36-b757-58c0897afd7a','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_create-client}','create-client','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('49db0fcd-6bd5-45a0-9d4e-49a703342e3c','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_view-consent}','view-consent','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('4ca2cb99-4500-4ecb-819f-df01d6fd2cc3','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_view-applications}','view-applications','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('51d21c3f-74a7-4922-8576-7507b117ca7c','07ba44e3-7c82-4013-a138-2ea110821efc','\0','${role_create-realm}','create-realm','07ba44e3-7c82-4013-a138-2ea110821efc',NULL,NULL),('53cbce58-aec8-4b38-ac3e-333853aee1e7','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_manage-users}','manage-users','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','07ba44e3-7c82-4013-a138-2ea110821efc','\0','${role_default-roles}','default-roles-master','07ba44e3-7c82-4013-a138-2ea110821efc',NULL,NULL),('6090f21f-9c57-4819-b91d-453e97f72a07','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_view-profile}','view-profile','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('71a9eb80-0b13-4bff-b210-389bcc911b9d','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_view-users}','view-users','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('7496a993-3928-488a-98c7-dff14bbda623','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_impersonation}','impersonation','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('7b620be3-2016-48c9-8dc4-95f69a65535a','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_view-clients}','view-clients','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('8c204002-e0b7-4202-9099-d125a8bd5672','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_query-clients}','query-clients','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('8d19e06a-ff1a-46b6-a4d2-5e53234a2647','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_manage-realm}','manage-realm','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('98f429a8-6dd6-4d81-81a5-f260cd7c316d','07ba44e3-7c82-4013-a138-2ea110821efc','\0','${role_uma_authorization}','uma_authorization','07ba44e3-7c82-4013-a138-2ea110821efc',NULL,NULL),('b730c892-bfb1-409b-9bf9-2e290379867d','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_manage-authorization}','manage-authorization','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('bf6ea3a5-c9e5-411d-a225-564e9accde6f','efd10a57-2136-4629-8c79-b3127705c348','','${role_read-token}','read-token','07ba44e3-7c82-4013-a138-2ea110821efc','efd10a57-2136-4629-8c79-b3127705c348',NULL),('c1467a8d-085f-4958-b3d1-7c81f85ff0e9','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_manage-clients}','manage-clients','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('cf889aeb-3b34-483d-a96d-ef81c6e5caa3','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_view-realm}','view-realm','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('d2cfffae-422d-4ac4-8e3d-5e2e19499db5','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_manage-account}','manage-account','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('d6cb25b6-43ec-4f34-8ba0-36746ecfd360','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_query-realms}','query-realms','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('d74dc891-7489-4e7c-a093-f1fd93be8e7a','07ba44e3-7c82-4013-a138-2ea110821efc','\0','${role_offline-access}','offline_access','07ba44e3-7c82-4013-a138-2ea110821efc',NULL,NULL),('e13cd463-a164-4f90-b4cf-a3dc4da37875','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_delete-account}','delete-account','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('edbb3250-ee2d-47e5-a95f-df1807f6cfc2','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_manage-consent}','manage-consent','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL),('ee2d0322-3e52-45b0-8126-4dec6aebcc97','539617dd-ab3e-4960-a452-6abb924a3cd9','','${role_view-authorization}','view-authorization','07ba44e3-7c82-4013-a138-2ea110821efc','539617dd-ab3e-4960-a452-6abb924a3cd9',NULL),('f4dd3cca-5b72-474f-813f-3782bd6ad48f','cf39f1b4-6f39-431d-9922-cff578a5f9ce','','${role_view-groups}','view-groups','07ba44e3-7c82-4013-a138-2ea110821efc','cf39f1b4-6f39-431d-9922-cff578a5f9ce',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
INSERT INTO `MIGRATION_MODEL` VALUES ('rajwk','20.0.5',1698220990);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('02265e7d-9f0d-4311-a9ae-24dae48e1076','locale','openid-connect','oidc-usermodel-attribute-mapper','7b8b580a-2339-47c3-9a6c-71b1aa866534',NULL),('035308dc-6c77-4f76-99ce-8acb575caa34','acr loa level','openid-connect','oidc-acr-mapper',NULL,'8203c0bb-b493-4220-bfec-81ee9be70242'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bf6e312c-5176-40f3-bc81-90d88b86bd15'),('38496f15-d963-48fb-b29a-685c8dd51856','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'8b93bb88-d220-40d0-b267-1a3b0bcaf27f'),('58a246ce-8f79-407d-8067-8dc59b274869','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('58eecc61-9979-4260-9043-ba45a62907e7','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('5aff1b19-a631-4b11-86b1-a17d4860d534','address','openid-connect','oidc-address-mapper',NULL,'5281b076-8c67-440f-949f-3abc19d57b68'),('5d965aae-f550-49f6-971e-2cb4be76d115','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'88e97a4a-56fe-42d6-8e21-98be6199f6ce'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','5e08f676-ef74-4c98-a7ad-116f4d4764d5',NULL),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('7da8c6a8-ea34-485d-8b02-413e83dc9e6c','audience resolve','openid-connect','oidc-audience-resolve-mapper','d500f324-a58c-4f8d-a0b2-720ec95b8f9d',NULL),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bf6e312c-5176-40f3-bc81-90d88b86bd15'),('89aa2d24-0161-495e-95ee-77f47064d6f6','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('9697784f-bf39-4eaf-be89-466b351f3b91','role list','saml','saml-role-list-mapper',NULL,'68adc16b-199b-47be-b204-88fe76638a15'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'54e08bb8-6057-483a-8a9c-5cf0c09b21ea'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','email','openid-connect','oidc-usermodel-property-mapper',NULL,'8b93bb88-d220-40d0-b267-1a3b0bcaf27f'),('aa8b5901-1de8-49c5-bc65-252bc9d130cd','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'0c2fea1d-0bbf-404a-9691-4fffd75e5a19'),('aab37d63-d1ca-450e-8dcc-3022827189e6','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('add15a35-d540-48fa-adea-a6e54a117cee','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'88e97a4a-56fe-42d6-8e21-98be6199f6ce'),('c4894518-6326-47e1-844a-feec8e8e3dde','full name','openid-connect','oidc-full-name-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','username','openid-connect','oidc-usermodel-property-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','5e08f676-ef74-4c98-a7ad-116f4d4764d5',NULL),('d6067b3c-453b-4727-a362-6c09a90810f0','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('e5efe19e-d040-4fb7-a187-8d419e714d08','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('efd47101-8698-416d-8e54-0899be62a97a','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'88e97a4a-56fe-42d6-8e21-98be6199f6ce'),('f0877373-388d-470e-bd61-79ce55a4d5c3','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'54e08bb8-6057-483a-8a9c-5cf0c09b21ea'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1fe7f44-6a2c-48d5-b63e-15e01874367b'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','5e08f676-ef74-4c98-a7ad-116f4d4764d5',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('02265e7d-9f0d-4311-a9ae-24dae48e1076','true','access.token.claim'),('02265e7d-9f0d-4311-a9ae-24dae48e1076','locale','claim.name'),('02265e7d-9f0d-4311-a9ae-24dae48e1076','true','id.token.claim'),('02265e7d-9f0d-4311-a9ae-24dae48e1076','String','jsonType.label'),('02265e7d-9f0d-4311-a9ae-24dae48e1076','locale','user.attribute'),('02265e7d-9f0d-4311-a9ae-24dae48e1076','true','userinfo.token.claim'),('035308dc-6c77-4f76-99ce-8acb575caa34','true','access.token.claim'),('035308dc-6c77-4f76-99ce-8acb575caa34','true','id.token.claim'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','true','access.token.claim'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','locale','claim.name'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','true','id.token.claim'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','String','jsonType.label'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','locale','user.attribute'),('04848fe2-5d96-4896-a891-3dec0a0f6a38','true','userinfo.token.claim'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','true','access.token.claim'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','phone_number_verified','claim.name'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','true','id.token.claim'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','boolean','jsonType.label'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','phoneNumberVerified','user.attribute'),('12f62023-32f8-4858-8cb8-15d5eccb99a5','true','userinfo.token.claim'),('38496f15-d963-48fb-b29a-685c8dd51856','true','access.token.claim'),('38496f15-d963-48fb-b29a-685c8dd51856','zoneinfo','claim.name'),('38496f15-d963-48fb-b29a-685c8dd51856','true','id.token.claim'),('38496f15-d963-48fb-b29a-685c8dd51856','String','jsonType.label'),('38496f15-d963-48fb-b29a-685c8dd51856','zoneinfo','user.attribute'),('38496f15-d963-48fb-b29a-685c8dd51856','true','userinfo.token.claim'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','true','access.token.claim'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','email_verified','claim.name'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','true','id.token.claim'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','boolean','jsonType.label'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','emailVerified','user.attribute'),('4eb34b6f-ac44-414c-a29b-1d7a7121ecee','true','userinfo.token.claim'),('58a246ce-8f79-407d-8067-8dc59b274869','true','access.token.claim'),('58a246ce-8f79-407d-8067-8dc59b274869','family_name','claim.name'),('58a246ce-8f79-407d-8067-8dc59b274869','true','id.token.claim'),('58a246ce-8f79-407d-8067-8dc59b274869','String','jsonType.label'),('58a246ce-8f79-407d-8067-8dc59b274869','lastName','user.attribute'),('58a246ce-8f79-407d-8067-8dc59b274869','true','userinfo.token.claim'),('58eecc61-9979-4260-9043-ba45a62907e7','true','access.token.claim'),('58eecc61-9979-4260-9043-ba45a62907e7','middle_name','claim.name'),('58eecc61-9979-4260-9043-ba45a62907e7','true','id.token.claim'),('58eecc61-9979-4260-9043-ba45a62907e7','String','jsonType.label'),('58eecc61-9979-4260-9043-ba45a62907e7','middleName','user.attribute'),('58eecc61-9979-4260-9043-ba45a62907e7','true','userinfo.token.claim'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','true','access.token.claim'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','gender','claim.name'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','true','id.token.claim'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','String','jsonType.label'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','gender','user.attribute'),('59c997ea-068c-49b6-9b9a-92ad2276bd74','true','userinfo.token.claim'),('5aff1b19-a631-4b11-86b1-a17d4860d534','true','access.token.claim'),('5aff1b19-a631-4b11-86b1-a17d4860d534','true','id.token.claim'),('5aff1b19-a631-4b11-86b1-a17d4860d534','country','user.attribute.country'),('5aff1b19-a631-4b11-86b1-a17d4860d534','formatted','user.attribute.formatted'),('5aff1b19-a631-4b11-86b1-a17d4860d534','locality','user.attribute.locality'),('5aff1b19-a631-4b11-86b1-a17d4860d534','postal_code','user.attribute.postal_code'),('5aff1b19-a631-4b11-86b1-a17d4860d534','region','user.attribute.region'),('5aff1b19-a631-4b11-86b1-a17d4860d534','street','user.attribute.street'),('5aff1b19-a631-4b11-86b1-a17d4860d534','true','userinfo.token.claim'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','true','access.token.claim'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','birthdate','claim.name'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','true','id.token.claim'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','String','jsonType.label'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','birthdate','user.attribute'),('64c9deb3-88ff-40b1-8333-2fbfdb9ff155','true','userinfo.token.claim'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','true','access.token.claim'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','clientAddress','claim.name'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','true','id.token.claim'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','String','jsonType.label'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','clientAddress','user.session.note'),('6543f207-1336-40f2-ba41-b52ce0c6ba1c','true','userinfo.token.claim'),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','true','access.token.claim'),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','profile','claim.name'),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','true','id.token.claim'),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','String','jsonType.label'),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','profile','user.attribute'),('7ba5fd4d-b9d0-460c-ab12-cce351c4ffad','true','userinfo.token.claim'),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','true','access.token.claim'),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','phone_number','claim.name'),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','true','id.token.claim'),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','String','jsonType.label'),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','phoneNumber','user.attribute'),('8568a4cc-7120-4330-bad6-f5698e5ea4cc','true','userinfo.token.claim'),('89aa2d24-0161-495e-95ee-77f47064d6f6','true','access.token.claim'),('89aa2d24-0161-495e-95ee-77f47064d6f6','website','claim.name'),('89aa2d24-0161-495e-95ee-77f47064d6f6','true','id.token.claim'),('89aa2d24-0161-495e-95ee-77f47064d6f6','String','jsonType.label'),('89aa2d24-0161-495e-95ee-77f47064d6f6','website','user.attribute'),('89aa2d24-0161-495e-95ee-77f47064d6f6','true','userinfo.token.claim'),('9697784f-bf39-4eaf-be89-466b351f3b91','Role','attribute.name'),('9697784f-bf39-4eaf-be89-466b351f3b91','Basic','attribute.nameformat'),('9697784f-bf39-4eaf-be89-466b351f3b91','false','single'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','true','access.token.claim'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','groups','claim.name'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','true','id.token.claim'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','String','jsonType.label'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','true','multivalued'),('9fad9d4d-c2fc-4e8f-8808-d4779cccd415','foo','user.attribute'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','true','access.token.claim'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','email','claim.name'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','true','id.token.claim'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','String','jsonType.label'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','email','user.attribute'),('aa55e0ce-1f02-48d2-8d97-e682119089b0','true','userinfo.token.claim'),('aab37d63-d1ca-450e-8dcc-3022827189e6','true','access.token.claim'),('aab37d63-d1ca-450e-8dcc-3022827189e6','given_name','claim.name'),('aab37d63-d1ca-450e-8dcc-3022827189e6','true','id.token.claim'),('aab37d63-d1ca-450e-8dcc-3022827189e6','String','jsonType.label'),('aab37d63-d1ca-450e-8dcc-3022827189e6','firstName','user.attribute'),('aab37d63-d1ca-450e-8dcc-3022827189e6','true','userinfo.token.claim'),('add15a35-d540-48fa-adea-a6e54a117cee','true','access.token.claim'),('add15a35-d540-48fa-adea-a6e54a117cee','resource_access.${client_id}.roles','claim.name'),('add15a35-d540-48fa-adea-a6e54a117cee','String','jsonType.label'),('add15a35-d540-48fa-adea-a6e54a117cee','true','multivalued'),('add15a35-d540-48fa-adea-a6e54a117cee','foo','user.attribute'),('c4894518-6326-47e1-844a-feec8e8e3dde','true','access.token.claim'),('c4894518-6326-47e1-844a-feec8e8e3dde','true','id.token.claim'),('c4894518-6326-47e1-844a-feec8e8e3dde','true','userinfo.token.claim'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','true','access.token.claim'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','preferred_username','claim.name'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','true','id.token.claim'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','String','jsonType.label'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','username','user.attribute'),('caaefcb5-e81a-4a86-b640-e6ce7d3531a2','true','userinfo.token.claim'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','true','access.token.claim'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','clientHost','claim.name'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','true','id.token.claim'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','String','jsonType.label'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','clientHost','user.session.note'),('ccc3d92a-5501-4b02-ba28-cc4cb040698b','true','userinfo.token.claim'),('d6067b3c-453b-4727-a362-6c09a90810f0','true','access.token.claim'),('d6067b3c-453b-4727-a362-6c09a90810f0','updated_at','claim.name'),('d6067b3c-453b-4727-a362-6c09a90810f0','true','id.token.claim'),('d6067b3c-453b-4727-a362-6c09a90810f0','long','jsonType.label'),('d6067b3c-453b-4727-a362-6c09a90810f0','updatedAt','user.attribute'),('d6067b3c-453b-4727-a362-6c09a90810f0','true','userinfo.token.claim'),('e5efe19e-d040-4fb7-a187-8d419e714d08','true','access.token.claim'),('e5efe19e-d040-4fb7-a187-8d419e714d08','picture','claim.name'),('e5efe19e-d040-4fb7-a187-8d419e714d08','true','id.token.claim'),('e5efe19e-d040-4fb7-a187-8d419e714d08','String','jsonType.label'),('e5efe19e-d040-4fb7-a187-8d419e714d08','picture','user.attribute'),('e5efe19e-d040-4fb7-a187-8d419e714d08','true','userinfo.token.claim'),('efd47101-8698-416d-8e54-0899be62a97a','true','access.token.claim'),('efd47101-8698-416d-8e54-0899be62a97a','realm_access.roles','claim.name'),('efd47101-8698-416d-8e54-0899be62a97a','String','jsonType.label'),('efd47101-8698-416d-8e54-0899be62a97a','true','multivalued'),('efd47101-8698-416d-8e54-0899be62a97a','foo','user.attribute'),('f0877373-388d-470e-bd61-79ce55a4d5c3','true','access.token.claim'),('f0877373-388d-470e-bd61-79ce55a4d5c3','upn','claim.name'),('f0877373-388d-470e-bd61-79ce55a4d5c3','true','id.token.claim'),('f0877373-388d-470e-bd61-79ce55a4d5c3','String','jsonType.label'),('f0877373-388d-470e-bd61-79ce55a4d5c3','username','user.attribute'),('f0877373-388d-470e-bd61-79ce55a4d5c3','true','userinfo.token.claim'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','true','access.token.claim'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','nickname','claim.name'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','true','id.token.claim'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','String','jsonType.label'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','nickname','user.attribute'),('fea4697b-7cc2-4af3-baa8-945ac282d06c','true','userinfo.token.claim'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','true','access.token.claim'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','clientId','claim.name'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','true','id.token.claim'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','String','jsonType.label'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','clientId','user.session.note'),('ff97e47e-4b8b-4345-b187-f6deab115bf3','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
INSERT INTO `REALM` VALUES ('07ba44e3-7c82-4013-a138-2ea110821efc',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','NONE',1800,36000,'\0','\0','539617dd-ab3e-4960-a452-6abb924a3cd9',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','446e4c85-362b-4e0e-aad8-574bc8917860','f19f9007-34a4-4d24-a1e5-c108a3f3dcea','0445b744-29db-4136-9ae6-304aeacb7e20','84b8da05-e10f-4206-afea-6a09fe3a58f5','fc834b83-e0d2-4982-a4d1-93d0038a420e',31536000,'\0',900,'','\0','07abf4f3-d6ca-4f43-bcfb-35736e7c4452',0,'\0',0,0,'59c61c68-c30d-4bd6-972c-2c0518ad6e9c');
UNLOCK TABLES;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','07ba44e3-7c82-4013-a138-2ea110821efc','false'),('cibaAuthRequestedUserHint','07ba44e3-7c82-4013-a138-2ea110821efc','login_hint'),('cibaBackchannelTokenDeliveryMode','07ba44e3-7c82-4013-a138-2ea110821efc','poll'),('cibaExpiresIn','07ba44e3-7c82-4013-a138-2ea110821efc','120'),('cibaInterval','07ba44e3-7c82-4013-a138-2ea110821efc','5'),('defaultSignatureAlgorithm','07ba44e3-7c82-4013-a138-2ea110821efc','RS256'),('displayName','07ba44e3-7c82-4013-a138-2ea110821efc','Keycloak'),('displayNameHtml','07ba44e3-7c82-4013-a138-2ea110821efc','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','07ba44e3-7c82-4013-a138-2ea110821efc','30'),('maxDeltaTimeSeconds','07ba44e3-7c82-4013-a138-2ea110821efc','43200'),('maxFailureWaitSeconds','07ba44e3-7c82-4013-a138-2ea110821efc','900'),('minimumQuickLoginWaitSeconds','07ba44e3-7c82-4013-a138-2ea110821efc','60'),('oauth2DeviceCodeLifespan','07ba44e3-7c82-4013-a138-2ea110821efc','600'),('oauth2DevicePollingInterval','07ba44e3-7c82-4013-a138-2ea110821efc','5'),('offlineSessionMaxLifespan','07ba44e3-7c82-4013-a138-2ea110821efc','31536000'),('offlineSessionMaxLifespanEnabled','07ba44e3-7c82-4013-a138-2ea110821efc','true'),('parRequestUriLifespan','07ba44e3-7c82-4013-a138-2ea110821efc','60'),('permanentLockout','07ba44e3-7c82-4013-a138-2ea110821efc','false'),('quickLoginCheckMilliSeconds','07ba44e3-7c82-4013-a138-2ea110821efc','1000'),('realmReusableOtpCode','07ba44e3-7c82-4013-a138-2ea110821efc','false'),('waitIncrementSeconds','07ba44e3-7c82-4013-a138-2ea110821efc','60'),('webAuthnPolicyAttestationConveyancePreference','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyAuthenticatorAttachment','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','07ba44e3-7c82-4013-a138-2ea110821efc','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','false'),('webAuthnPolicyCreateTimeout','07ba44e3-7c82-4013-a138-2ea110821efc','0'),('webAuthnPolicyCreateTimeoutPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','0'),('webAuthnPolicyRequireResidentKey','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyRpEntityName','07ba44e3-7c82-4013-a138-2ea110821efc','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','keycloak'),('webAuthnPolicyRpId','07ba44e3-7c82-4013-a138-2ea110821efc',''),('webAuthnPolicyRpIdPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc',''),('webAuthnPolicySignatureAlgorithms','07ba44e3-7c82-4013-a138-2ea110821efc','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','ES256'),('webAuthnPolicyUserVerificationRequirement','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','07ba44e3-7c82-4013-a138-2ea110821efc','not specified'),('_browser_header.contentSecurityPolicy','07ba44e3-7c82-4013-a138-2ea110821efc','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','07ba44e3-7c82-4013-a138-2ea110821efc',''),('_browser_header.strictTransportSecurity','07ba44e3-7c82-4013-a138-2ea110821efc','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','07ba44e3-7c82-4013-a138-2ea110821efc','nosniff'),('_browser_header.xFrameOptions','07ba44e3-7c82-4013-a138-2ea110821efc','SAMEORIGIN'),('_browser_header.xRobotsTag','07ba44e3-7c82-4013-a138-2ea110821efc','none'),('_browser_header.xXSSProtection','07ba44e3-7c82-4013-a138-2ea110821efc','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('07ba44e3-7c82-4013-a138-2ea110821efc','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','07ba44e3-7c82-4013-a138-2ea110821efc');
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
INSERT INTO `REDIRECT_URIS` VALUES ('7b8b580a-2339-47c3-9a6c-71b1aa866534','/admin/master/console/*'),('cf39f1b4-6f39-431d-9922-cff578a5f9ce','/realms/master/account/*'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','/realms/master/account/*'),('fe6fa6d8-ed37-40d9-bbdd-e5986913ecd5','/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0639b149-a29d-4d9a-b2aa-36e6b692472d','webauthn-register-passwordless','Webauthn Register Passwordless','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','webauthn-register-passwordless',80),('101a992d-6346-4b1b-8b42-7d246babf7b0','UPDATE_PROFILE','Update Profile','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','UPDATE_PROFILE',40),('3c239c0e-cc8a-4279-9f32-e4d00c42819f','delete_account','Delete Account','07ba44e3-7c82-4013-a138-2ea110821efc','\0','\0','delete_account',60),('5570a120-38b9-4102-9b34-f8f40ca4128b','CONFIGURE_TOTP','Configure OTP','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','CONFIGURE_TOTP',10),('5955ee95-0bf2-4681-ac7e-f7212cfb7a20','VERIFY_EMAIL','Verify Email','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','VERIFY_EMAIL',50),('897eff3e-85f0-4caa-b6d1-eb4683764bbf','terms_and_conditions','Terms and Conditions','07ba44e3-7c82-4013-a138-2ea110821efc','\0','\0','terms_and_conditions',20),('ba6d4fb1-e65e-4d2e-b36f-56f62077d697','update_user_locale','Update User Locale','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','update_user_locale',1000),('c6c9b0e9-60b1-4ff3-9adf-4ad4269d2b16','webauthn-register','Webauthn Register','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','webauthn-register',70),('e790a4cd-61f5-4114-8dab-fc3a3e7d25a9','UPDATE_PASSWORD','Update Password','07ba44e3-7c82-4013-a138-2ea110821efc','','\0','UPDATE_PASSWORD',30);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','d2cfffae-422d-4ac4-8e3d-5e2e19499db5'),('d500f324-a58c-4f8d-a0b2-720ec95b8f9d','f4dd3cca-5b72-474f-813f-3782bd6ad48f');
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
INSERT INTO `USER_ENTITY` VALUES ('626d4e8e-270e-4e02-bfb7-1edc4c429127',NULL,'b7ace0b3-1d56-45e8-b0d7-0e0b9386df18','\0','',NULL,NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','service-account-_platform',1698220998352,'5e08f676-ef74-4c98-a7ad-116f4d4764d5',0),('a4bf7cd3-cb2c-4309-b746-b23acdd7b097',NULL,'cde80798-ca0e-4d07-8e89-530e4b8369eb','\0','',NULL,NULL,NULL,'07ba44e3-7c82-4013-a138-2ea110821efc','admin',1698220993106,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('1f865671-d13b-4db3-8810-ade1b3a9be9c','626d4e8e-270e-4e02-bfb7-1edc4c429127'),('1f865671-d13b-4db3-8810-ade1b3a9be9c','a4bf7cd3-cb2c-4309-b746-b23acdd7b097'),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','626d4e8e-270e-4e02-bfb7-1edc4c429127'),('59c61c68-c30d-4bd6-972c-2c0518ad6e9c','a4bf7cd3-cb2c-4309-b746-b23acdd7b097');
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
INSERT INTO `WEB_ORIGINS` VALUES ('7b8b580a-2339-47c3-9a6c-71b1aa866534','+');
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2023-10-25 17:03:22','dummy','2023-10-25 17:03:22','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2023-10-25 17:03:18.000000',NULL),('2','DATA_UPDATE_STOP','0','2023-10-25 17:03:18.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2023-10-25 17:03:17','system','2023-10-25 17:03:17','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2023-10-25 17:03:22','dummy','2023-10-25 17:03:22','dummy'),('platform.roles','{\"description\": \"default limit\", \"max\": 1000}','2023-10-25 17:03:17','system','2023-10-25 17:03:17','system'),('platform.users','{\"description\": \"default limit\", \"max\": 10000}','2023-10-25 17:03:17','system','2023-10-25 17:03:17','system'),('platform.workspaces','{\"description\": \"default limit\", \"max\": 1000}','2023-10-25 17:03:17','system','2023-10-25 17:03:17','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2023-10-25 17:03:22','dummy','2023-10-25 17:03:22','dummy'),('_default','platform.roles',1000,'2023-10-25 17:03:17','system','2023-10-25 17:03:17','system'),('_default','platform.users',10000,'2023-10-25 17:03:17','system','2023-10-25 17:03:17','system'),('_default','platform.workspaces',100,'2023-10-25 17:03:17','system','2023-10-25 17:03:17','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2023-10-25 17:03:17','1.7.0','2023-10-25 17:03:17','1.7.0'),(2,'1.3.0','SUCCEED',NULL,'2023-10-25 17:03:18','1.7.0','2023-10-25 17:03:18','1.7.0'),(3,'1.5.0','START',NULL,'2023-10-25 17:03:18','1.7.0','2023-10-25 17:03:18','1.7.0'),(4,'1.5.0','SUCCEED',NULL,'2023-10-25 17:03:18','1.7.0','2023-10-25 17:03:18','1.7.0'),(5,'1.5.2','START',NULL,'2023-10-25 17:03:18','1.7.0','2023-10-25 17:03:18','1.7.0'),(6,'1.5.2','SUCCEED',NULL,'2023-10-25 17:03:18','1.7.0','2023-10-25 17:03:18','1.7.0'),(7,'1.6.0','START',NULL,'2023-10-25 17:03:19','1.7.0','2023-10-25 17:03:19','1.7.0'),(8,'1.6.0','SUCCEED',NULL,'2023-10-25 17:03:19','1.7.0','2023-10-25 17:03:19','1.7.0'),(9,'1.7.0','START',NULL,'2023-10-25 17:03:19','1.7.0','2023-10-25 17:03:19','1.7.0'),(10,'1.7.0','SUCCEED',NULL,'2023-10-25 17:03:19','1.7.0','2023-10-25 17:03:19','1.7.0');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"5e08f676-ef74-4c98-a7ad-116f4d4764d5\", \"TOKEN_CHECK_CLIENT_SECRET\": \"dummy\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"932c02e9-7a77-492b-944c-0958aed9c620\"}','2023-10-25 17:03:18','system','2023-10-25 17:07:42','system');
UNLOCK TABLES;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.7.0','2023-10-25 17:02:40','system','2023-10-25 17:03:19','1.7.0');
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

-- Dump completed on 2023-10-25 18:01:18
SET foreign_key_checks = 1;
