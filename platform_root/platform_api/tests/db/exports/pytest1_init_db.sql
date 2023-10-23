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
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `keycloak`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `keycloak` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `keycloak`;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text DEFAULT NULL,
  `REPRESENTATION` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0974d48f-2c24-4e53-bafd-ac87652d8650',NULL,'reset-password','694c94b3-5787-4841-9a35-61110ad80322','7f7fcb56-be06-4b4b-a44b-abf2d7c75fac',0,30,'\0',NULL,NULL),('1de618b7-ef23-4c0e-80d7-8cc7d61d19d5',NULL,'idp-email-verification','694c94b3-5787-4841-9a35-61110ad80322','b9d2214b-4987-486a-a653-3fbd0e7878c7',2,10,'\0',NULL,NULL),('1eac7d2b-4e26-42c8-835f-613c452911e6',NULL,'conditional-user-configured','694c94b3-5787-4841-9a35-61110ad80322','abdfa29e-9ec0-413d-be37-37d7afc7510b',0,10,'\0',NULL,NULL),('23fe062c-a157-46e5-9a7c-9397dbb31bd8',NULL,'direct-grant-validate-password','694c94b3-5787-4841-9a35-61110ad80322','b1bdbbec-fe70-4a37-a9a5-e0f444b2a5bf',0,20,'\0',NULL,NULL),('29701766-c16d-4a88-85ed-ef0ac27a6b91',NULL,'client-jwt','694c94b3-5787-4841-9a35-61110ad80322','c102b044-efde-4c17-833e-3663f64092d7',2,20,'\0',NULL,NULL),('2ab79425-c7f6-4f35-b35e-fcbf864afbeb',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','e0164e28-f789-404c-8f4e-9a19bcdacbda',1,20,'','abdfa29e-9ec0-413d-be37-37d7afc7510b',NULL),('329427df-7994-4afb-ace9-a7f3f62e1c27',NULL,'idp-create-user-if-unique','694c94b3-5787-4841-9a35-61110ad80322','cf548a7d-7ce4-4ff4-b16e-1fb2c9863d53',2,10,'\0',NULL,'90ddb2b2-4eaf-4bc3-9b27-95f48638e283'),('3363fdb2-515f-4a3f-8006-a8ec03680dc4',NULL,'idp-username-password-form','694c94b3-5787-4841-9a35-61110ad80322','e0164e28-f789-404c-8f4e-9a19bcdacbda',0,10,'\0',NULL,NULL),('3e6c4d01-3a7c-4859-9ca6-670ca3772d93',NULL,'docker-http-basic-authenticator','694c94b3-5787-4841-9a35-61110ad80322','998cfa23-44f0-4ff5-a342-1efe1733842c',0,10,'\0',NULL,NULL),('3f1aacde-89b7-4126-872d-075dd6777f73',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','7f7fcb56-be06-4b4b-a44b-abf2d7c75fac',1,40,'','5928f323-9805-4cd5-a071-dda5f7719e9c',NULL),('3fb00dbb-de87-4913-8e4e-fac9170fc098',NULL,'registration-user-creation','694c94b3-5787-4841-9a35-61110ad80322','a119fbfe-ca31-4b49-8ca8-be00fd4a1ae0',0,20,'\0',NULL,NULL),('464dd090-2a10-42f9-a09a-daf900d821ec',NULL,'auth-spnego','694c94b3-5787-4841-9a35-61110ad80322','c52f4526-29cd-47ac-85f2-09c9583b6584',3,20,'\0',NULL,NULL),('503ca790-86bc-4f5a-8168-87cb9ba6eab8',NULL,'direct-grant-validate-otp','694c94b3-5787-4841-9a35-61110ad80322','32f80c7e-e7e9-4bb6-ae2b-745f9ed73166',0,20,'\0',NULL,NULL),('5a3b8fb0-7de8-46df-bbd9-ef5829a15386',NULL,'conditional-user-configured','694c94b3-5787-4841-9a35-61110ad80322','32f80c7e-e7e9-4bb6-ae2b-745f9ed73166',0,10,'\0',NULL,NULL),('62666056-f954-4fcf-8053-c9ea8ee9cbb4',NULL,'registration-profile-action','694c94b3-5787-4841-9a35-61110ad80322','a119fbfe-ca31-4b49-8ca8-be00fd4a1ae0',0,40,'\0',NULL,NULL),('671f83f8-d6fd-4c85-9301-333d8410a64b',NULL,'client-secret-jwt','694c94b3-5787-4841-9a35-61110ad80322','c102b044-efde-4c17-833e-3663f64092d7',2,30,'\0',NULL,NULL),('6d56bd30-cc4e-4e17-945a-61641ad9ff6c',NULL,'http-basic-authenticator','694c94b3-5787-4841-9a35-61110ad80322','ad0f828b-7c0d-4131-a55d-e0459ecd012e',0,10,'\0',NULL,NULL),('6d75e2fd-4b1a-4e56-bd09-91ccd5ff9834',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','81aa2a28-a07f-4e60-bc2f-6c2e80dc3a5e',0,20,'','cf548a7d-7ce4-4ff4-b16e-1fb2c9863d53',NULL),('7430d508-b12c-418e-872a-3a24cd9a381c',NULL,'auth-spnego','694c94b3-5787-4841-9a35-61110ad80322','295a3beb-b1de-4e6e-91bd-602ba6b93133',3,30,'\0',NULL,NULL),('773bc34d-ca00-4770-898c-d230a9327ed5',NULL,'registration-password-action','694c94b3-5787-4841-9a35-61110ad80322','a119fbfe-ca31-4b49-8ca8-be00fd4a1ae0',0,50,'\0',NULL,NULL),('7773f70e-cfbd-4967-9fb8-4f465bf8b72a',NULL,'registration-page-form','694c94b3-5787-4841-9a35-61110ad80322','490259c1-7830-42d5-9447-ccefcb408c02',0,10,'','a119fbfe-ca31-4b49-8ca8-be00fd4a1ae0',NULL),('7fa51a8a-361f-4b4d-aa75-258c40b602b2',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','c52f4526-29cd-47ac-85f2-09c9583b6584',2,30,'','25ec5bf2-f4f5-4e5e-ab8e-75d43c554dab',NULL),('80bc9b91-089c-49f8-8fd4-945d71b13d82',NULL,'conditional-user-configured','694c94b3-5787-4841-9a35-61110ad80322','5928f323-9805-4cd5-a071-dda5f7719e9c',0,10,'\0',NULL,NULL),('82aa5a45-f09c-4a96-b0d7-0fe441e5038a',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','28b8aab7-3986-4e21-8eae-31292ae6f0f1',0,20,'','b9d2214b-4987-486a-a653-3fbd0e7878c7',NULL),('8842495f-1e99-49f3-95d2-8889da552d65',NULL,'reset-credential-email','694c94b3-5787-4841-9a35-61110ad80322','7f7fcb56-be06-4b4b-a44b-abf2d7c75fac',0,20,'\0',NULL,NULL),('8853fe11-b19a-4ed8-8a95-430aeb71f856',NULL,'conditional-user-configured','694c94b3-5787-4841-9a35-61110ad80322','030a8a11-1d47-40ab-9ab4-b27b44d8849f',0,10,'\0',NULL,NULL),('8aa34f18-761c-4ec7-b14c-442e5a9dab93',NULL,'identity-provider-redirector','694c94b3-5787-4841-9a35-61110ad80322','c52f4526-29cd-47ac-85f2-09c9583b6584',2,25,'\0',NULL,NULL),('8c2859a0-c397-4dae-aa63-28510c0fc082',NULL,'auth-username-password-form','694c94b3-5787-4841-9a35-61110ad80322','25ec5bf2-f4f5-4e5e-ab8e-75d43c554dab',0,10,'\0',NULL,NULL),('8ef8f673-dece-4438-85f8-91a02b99bcdb',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','25ec5bf2-f4f5-4e5e-ab8e-75d43c554dab',1,20,'','030a8a11-1d47-40ab-9ab4-b27b44d8849f',NULL),('9b71abf1-6a95-4121-b282-d9ae1facb91a',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','b9d2214b-4987-486a-a653-3fbd0e7878c7',2,20,'','e0164e28-f789-404c-8f4e-9a19bcdacbda',NULL),('b0f7ed62-bc0c-4e55-a065-c961ea279499',NULL,'reset-otp','694c94b3-5787-4841-9a35-61110ad80322','5928f323-9805-4cd5-a071-dda5f7719e9c',0,20,'\0',NULL,NULL),('b76b54e9-d6e6-46bf-9755-8f06cf26e5b1',NULL,'registration-recaptcha-action','694c94b3-5787-4841-9a35-61110ad80322','a119fbfe-ca31-4b49-8ca8-be00fd4a1ae0',3,60,'\0',NULL,NULL),('b8de9685-a8d5-4f5f-9754-e7c3901a51e2',NULL,'auth-otp-form','694c94b3-5787-4841-9a35-61110ad80322','abdfa29e-9ec0-413d-be37-37d7afc7510b',0,20,'\0',NULL,NULL),('ba0ec47b-ba02-4320-99f9-7855a51e73f1',NULL,'idp-confirm-link','694c94b3-5787-4841-9a35-61110ad80322','28b8aab7-3986-4e21-8eae-31292ae6f0f1',0,10,'\0',NULL,NULL),('c17d225e-b1b1-4234-9c53-2c5cd536ae6f',NULL,'auth-cookie','694c94b3-5787-4841-9a35-61110ad80322','c52f4526-29cd-47ac-85f2-09c9583b6584',2,10,'\0',NULL,NULL),('d1b7c665-71dd-4d7a-bfc6-fa108085da47',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','cf548a7d-7ce4-4ff4-b16e-1fb2c9863d53',2,20,'','28b8aab7-3986-4e21-8eae-31292ae6f0f1',NULL),('d5236321-78c6-4436-b6ec-14d311aa7283',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','7d2878f0-2bad-40af-9edd-dbd4319e416f',0,20,'','295a3beb-b1de-4e6e-91bd-602ba6b93133',NULL),('d78cbe76-9dca-40fa-b01f-df5af6042d5b',NULL,'client-x509','694c94b3-5787-4841-9a35-61110ad80322','c102b044-efde-4c17-833e-3663f64092d7',2,40,'\0',NULL,NULL),('d870c43c-5873-4981-b141-04fab751bcec',NULL,'client-secret','694c94b3-5787-4841-9a35-61110ad80322','c102b044-efde-4c17-833e-3663f64092d7',2,10,'\0',NULL,NULL),('d912160f-3ab1-444b-8b0a-7f06b847268e',NULL,'no-cookie-redirect','694c94b3-5787-4841-9a35-61110ad80322','7d2878f0-2bad-40af-9edd-dbd4319e416f',0,10,'\0',NULL,NULL),('dd290a3e-bb33-4f25-9505-f15833b2d18a',NULL,'basic-auth','694c94b3-5787-4841-9a35-61110ad80322','295a3beb-b1de-4e6e-91bd-602ba6b93133',0,10,'\0',NULL,NULL),('e046ad79-0500-445d-8ddc-2be18ee428b3',NULL,'basic-auth-otp','694c94b3-5787-4841-9a35-61110ad80322','295a3beb-b1de-4e6e-91bd-602ba6b93133',3,20,'\0',NULL,NULL),('f7b4c60f-13dc-4e86-8d3d-39f8803bd877',NULL,'auth-otp-form','694c94b3-5787-4841-9a35-61110ad80322','030a8a11-1d47-40ab-9ab4-b27b44d8849f',0,20,'\0',NULL,NULL),('f894a8be-583a-4521-a725-a4e6f3d6b010',NULL,'idp-review-profile','694c94b3-5787-4841-9a35-61110ad80322','81aa2a28-a07f-4e60-bc2f-6c2e80dc3a5e',0,10,'\0',NULL,'abfcc015-d3cb-449a-826e-9236f76ff7fd'),('fa0ab9cd-e7e6-4d74-bfa9-06d9524d95b2',NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','b1bdbbec-fe70-4a37-a9a5-e0f444b2a5bf',1,30,'','32f80c7e-e7e9-4bb6-ae2b-745f9ed73166',NULL),('faccaaa6-1d82-4ac9-9798-21c4ec041afc',NULL,'direct-grant-validate-username','694c94b3-5787-4841-9a35-61110ad80322','b1bdbbec-fe70-4a37-a9a5-e0f444b2a5bf',0,10,'\0',NULL,NULL),('fc32ad9c-95b7-4bdc-a8c4-0d5f15c5fa10',NULL,'reset-credentials-choose-user','694c94b3-5787-4841-9a35-61110ad80322','7f7fcb56-be06-4b4b-a44b-abf2d7c75fac',0,10,'\0',NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('030a8a11-1d47-40ab-9ab4-b27b44d8849f','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('25ec5bf2-f4f5-4e5e-ab8e-75d43c554dab','forms','Username, password, otp and other auth forms.','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('28b8aab7-3986-4e21-8eae-31292ae6f0f1','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('295a3beb-b1de-4e6e-91bd-602ba6b93133','Authentication Options','Authentication options.','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('32f80c7e-e7e9-4bb6-ae2b-745f9ed73166','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('490259c1-7830-42d5-9447-ccefcb408c02','registration','registration flow','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('5928f323-9805-4cd5-a071-dda5f7719e9c','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('7d2878f0-2bad-40af-9edd-dbd4319e416f','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('7f7fcb56-be06-4b4b-a44b-abf2d7c75fac','reset credentials','Reset credentials for a user if they forgot their password or something','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('81aa2a28-a07f-4e60-bc2f-6c2e80dc3a5e','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('998cfa23-44f0-4ff5-a342-1efe1733842c','docker auth','Used by Docker clients to authenticate against the IDP','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('a119fbfe-ca31-4b49-8ca8-be00fd4a1ae0','registration form','registration form','694c94b3-5787-4841-9a35-61110ad80322','form-flow','\0',''),('abdfa29e-9ec0-413d-be37-37d7afc7510b','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('ad0f828b-7c0d-4131-a55d-e0459ecd012e','saml ecp','SAML ECP Profile Authentication Flow','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('b1bdbbec-fe70-4a37-a9a5-e0f444b2a5bf','direct grant','OpenID Connect Resource Owner Grant','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('b9d2214b-4987-486a-a653-3fbd0e7878c7','Account verification options','Method with which to verity the existing account','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('c102b044-efde-4c17-833e-3663f64092d7','clients','Base authentication for clients','694c94b3-5787-4841-9a35-61110ad80322','client-flow','',''),('c52f4526-29cd-47ac-85f2-09c9583b6584','browser','browser based authentication','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','',''),('cf548a7d-7ce4-4ff4-b16e-1fb2c9863d53','User creation or linking','Flow for the existing/non-existing user alternatives','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0',''),('e0164e28-f789-404c-8f4e-9a19bcdacbda','Verify Existing Account by Re-authentication','Reauthentication of existing account','694c94b3-5787-4841-9a35-61110ad80322','basic-flow','\0','');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('90ddb2b2-4eaf-4bc3-9b27-95f48638e283','create unique user config','694c94b3-5787-4841-9a35-61110ad80322'),('abfcc015-d3cb-449a-826e-9236f76ff7fd','review profile config','694c94b3-5787-4841-9a35-61110ad80322');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('90ddb2b2-4eaf-4bc3-9b27-95f48638e283','false','require.password.update.after.registration'),('abfcc015-d3cb-449a-826e-9236f76ff7fd','missing','update.profile.on.first.login');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ALWAYS_DISPLAY_IN_CONSOLE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('0eee33df-dce2-42ec-aa5c-03b792f82a54','','\0','security-admin-console',0,'',NULL,'/admin/master/console/','\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','','\0','master-realm',0,'\0',NULL,NULL,'',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('8f919182-cb9c-47a3-a736-c61bbe0a469b','','\0','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','\0','account',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','','\0','account-console',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('d7925af5-0255-4780-85a3-74fdbcea0338','','','_platform-api',0,'',NULL,NULL,'\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('e9865e08-4622-44d9-a374-4a3bed3df785','','\0','_platform-console',0,'','UuazVxT63j7OMnXrmtRdG5PiHwK43EaT',NULL,'\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','','\0'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','','','_platform',0,'\0','mW5dnlnNNOAhrpet5sorVtepdKLhPLwr',NULL,'\0',NULL,'\0','694c94b3-5787-4841-9a35-61110ad80322','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','','\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('0eee33df-dce2-42ec-aa5c-03b792f82a54','pkce.code.challenge.method','S256'),('0eee33df-dce2-42ec-aa5c-03b792f82a54','post.logout.redirect.uris','+'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','post.logout.redirect.uris','+'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','pkce.code.challenge.method','S256'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','post.logout.redirect.uris','+'),('d7925af5-0255-4780-85a3-74fdbcea0338','access.token.lifespan','86400'),('d7925af5-0255-4780-85a3-74fdbcea0338','acr.loa.map','{}'),('d7925af5-0255-4780-85a3-74fdbcea0338','backchannel.logout.revoke.offline.tokens','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','backchannel.logout.session.required','true'),('d7925af5-0255-4780-85a3-74fdbcea0338','client.session.idle.timeout','86400'),('d7925af5-0255-4780-85a3-74fdbcea0338','client.session.max.lifespan','86400'),('d7925af5-0255-4780-85a3-74fdbcea0338','client_credentials.use_refresh_token','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','display.on.consent.screen','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','exclude.session.state.from.auth.response','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','frontchannel.logout.session.required','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','id.token.as.detached.signature','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','oauth2.device.authorization.grant.enabled','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','oidc.ciba.grant.enabled','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','require.pushed.authorization.requests','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.allow.ecp.flow','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.artifact.binding','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.assertion.signature','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.authnstatement','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.client.signature','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.encrypt','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.force.post.binding','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.multivalued.roles','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.onetimeuse.condition','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.server.signature','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml.server.signature.keyinfo.ext','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','saml_force_name_id_format','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','tls.client.certificate.bound.access.tokens','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','token.response.type.bearer.lower-case','false'),('d7925af5-0255-4780-85a3-74fdbcea0338','use.refresh.tokens','true'),('e9865e08-4622-44d9-a374-4a3bed3df785','backchannel.logout.revoke.offline.tokens','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','backchannel.logout.session.required','true'),('e9865e08-4622-44d9-a374-4a3bed3df785','client.secret.creation.time','1698036363'),('e9865e08-4622-44d9-a374-4a3bed3df785','client_credentials.use_refresh_token','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','display.on.consent.screen','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','exclude.session.state.from.auth.response','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','id.token.as.detached.signature','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','oauth2.device.authorization.grant.enabled','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','oidc.ciba.grant.enabled','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','post.logout.redirect.uris','/*'),('e9865e08-4622-44d9-a374-4a3bed3df785','require.pushed.authorization.requests','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.artifact.binding','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.assertion.signature','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.authnstatement','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.client.signature','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.encrypt','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.force.post.binding','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.multivalued.roles','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.onetimeuse.condition','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.server.signature','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml.server.signature.keyinfo.ext','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','saml_force_name_id_format','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','tls.client.certificate.bound.access.tokens','false'),('e9865e08-4622-44d9-a374-4a3bed3df785','use.refresh.tokens','true'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','backchannel.logout.revoke.offline.tokens','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','backchannel.logout.session.required','true'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','client.secret.creation.time','1698036362'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','client_credentials.use_refresh_token','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','display.on.consent.screen','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','exclude.session.state.from.auth.response','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','id.token.as.detached.signature','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','oauth2.device.authorization.grant.enabled','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','oidc.ciba.grant.enabled','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','require.pushed.authorization.requests','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.artifact.binding','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.assertion.signature','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.authnstatement','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.client.signature','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.encrypt','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.force.post.binding','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.multivalued.roles','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.onetimeuse.condition','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.server.signature','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml.server.signature.keyinfo.ext','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','saml_force_name_id_format','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','tls.client.certificate.bound.access.tokens','false'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','use.refresh.tokens','true');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('018c4318-626b-4354-8dba-60c1c46163cc','email','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect built-in scope: email','openid-connect'),('02407c91-01cc-4d28-81e6-9c23b3e2780e','role_list','694c94b3-5787-4841-9a35-61110ad80322','SAML role list','saml'),('46537f91-cae8-479f-bcd1-4f918093fcee','web-origins','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('657d4b8c-e5d0-490b-86b2-2a1d68d1c140','acr','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('75276849-646b-46c3-899e-42a69a826978','phone','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect built-in scope: phone','openid-connect'),('a4254e82-9c42-4b30-9bcc-f6b382275c51','offline_access','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect built-in scope: offline_access','openid-connect'),('b20b4c0c-1226-4356-872f-358867dff81e','roles','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect scope for add user roles to the access token','openid-connect'),('b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e','profile','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect built-in scope: profile','openid-connect'),('ee308e4d-a99a-4279-849d-2287e91e413b','microprofile-jwt','694c94b3-5787-4841-9a35-61110ad80322','Microprofile - JWT built-in scope','openid-connect'),('f0d2a080-148a-4a69-b1fd-85761cc51cd6','address','694c94b3-5787-4841-9a35-61110ad80322','OpenID Connect built-in scope: address','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('018c4318-626b-4354-8dba-60c1c46163cc','${emailScopeConsentText}','consent.screen.text'),('018c4318-626b-4354-8dba-60c1c46163cc','true','display.on.consent.screen'),('018c4318-626b-4354-8dba-60c1c46163cc','true','include.in.token.scope'),('02407c91-01cc-4d28-81e6-9c23b3e2780e','${samlRoleListScopeConsentText}','consent.screen.text'),('02407c91-01cc-4d28-81e6-9c23b3e2780e','true','display.on.consent.screen'),('46537f91-cae8-479f-bcd1-4f918093fcee','','consent.screen.text'),('46537f91-cae8-479f-bcd1-4f918093fcee','false','display.on.consent.screen'),('46537f91-cae8-479f-bcd1-4f918093fcee','false','include.in.token.scope'),('657d4b8c-e5d0-490b-86b2-2a1d68d1c140','false','display.on.consent.screen'),('657d4b8c-e5d0-490b-86b2-2a1d68d1c140','false','include.in.token.scope'),('75276849-646b-46c3-899e-42a69a826978','${phoneScopeConsentText}','consent.screen.text'),('75276849-646b-46c3-899e-42a69a826978','true','display.on.consent.screen'),('75276849-646b-46c3-899e-42a69a826978','true','include.in.token.scope'),('a4254e82-9c42-4b30-9bcc-f6b382275c51','${offlineAccessScopeConsentText}','consent.screen.text'),('a4254e82-9c42-4b30-9bcc-f6b382275c51','true','display.on.consent.screen'),('b20b4c0c-1226-4356-872f-358867dff81e','${rolesScopeConsentText}','consent.screen.text'),('b20b4c0c-1226-4356-872f-358867dff81e','true','display.on.consent.screen'),('b20b4c0c-1226-4356-872f-358867dff81e','false','include.in.token.scope'),('b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e','${profileScopeConsentText}','consent.screen.text'),('b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e','true','display.on.consent.screen'),('b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e','true','include.in.token.scope'),('ee308e4d-a99a-4279-849d-2287e91e413b','false','display.on.consent.screen'),('ee308e4d-a99a-4279-849d-2287e91e413b','true','include.in.token.scope'),('f0d2a080-148a-4a69-b1fd-85761cc51cd6','${addressScopeConsentText}','consent.screen.text'),('f0d2a080-148a-4a69-b1fd-85761cc51cd6','true','display.on.consent.screen'),('f0d2a080-148a-4a69-b1fd-85761cc51cd6','true','include.in.token.scope');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('0eee33df-dce2-42ec-aa5c-03b792f82a54','018c4318-626b-4354-8dba-60c1c46163cc',''),('0eee33df-dce2-42ec-aa5c-03b792f82a54','46537f91-cae8-479f-bcd1-4f918093fcee',''),('0eee33df-dce2-42ec-aa5c-03b792f82a54','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('0eee33df-dce2-42ec-aa5c-03b792f82a54','75276849-646b-46c3-899e-42a69a826978','\0'),('0eee33df-dce2-42ec-aa5c-03b792f82a54','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('0eee33df-dce2-42ec-aa5c-03b792f82a54','b20b4c0c-1226-4356-872f-358867dff81e',''),('0eee33df-dce2-42ec-aa5c-03b792f82a54','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('0eee33df-dce2-42ec-aa5c-03b792f82a54','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('0eee33df-dce2-42ec-aa5c-03b792f82a54','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','018c4318-626b-4354-8dba-60c1c46163cc',''),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','46537f91-cae8-479f-bcd1-4f918093fcee',''),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','75276849-646b-46c3-899e-42a69a826978','\0'),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','b20b4c0c-1226-4356-872f-358867dff81e',''),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('624a48d0-b7ee-466f-af72-3a046e9e4bfa','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','018c4318-626b-4354-8dba-60c1c46163cc',''),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','46537f91-cae8-479f-bcd1-4f918093fcee',''),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','75276849-646b-46c3-899e-42a69a826978','\0'),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','b20b4c0c-1226-4356-872f-358867dff81e',''),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('6592ea8c-0f44-4eff-8c73-c2cef41810fa','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('8f919182-cb9c-47a3-a736-c61bbe0a469b','018c4318-626b-4354-8dba-60c1c46163cc',''),('8f919182-cb9c-47a3-a736-c61bbe0a469b','46537f91-cae8-479f-bcd1-4f918093fcee',''),('8f919182-cb9c-47a3-a736-c61bbe0a469b','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('8f919182-cb9c-47a3-a736-c61bbe0a469b','75276849-646b-46c3-899e-42a69a826978','\0'),('8f919182-cb9c-47a3-a736-c61bbe0a469b','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('8f919182-cb9c-47a3-a736-c61bbe0a469b','b20b4c0c-1226-4356-872f-358867dff81e',''),('8f919182-cb9c-47a3-a736-c61bbe0a469b','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('8f919182-cb9c-47a3-a736-c61bbe0a469b','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('8f919182-cb9c-47a3-a736-c61bbe0a469b','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','018c4318-626b-4354-8dba-60c1c46163cc',''),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','46537f91-cae8-479f-bcd1-4f918093fcee',''),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','75276849-646b-46c3-899e-42a69a826978','\0'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','b20b4c0c-1226-4356-872f-358867dff81e',''),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','018c4318-626b-4354-8dba-60c1c46163cc',''),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','46537f91-cae8-479f-bcd1-4f918093fcee',''),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','75276849-646b-46c3-899e-42a69a826978','\0'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','b20b4c0c-1226-4356-872f-358867dff81e',''),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('d7925af5-0255-4780-85a3-74fdbcea0338','018c4318-626b-4354-8dba-60c1c46163cc',''),('d7925af5-0255-4780-85a3-74fdbcea0338','46537f91-cae8-479f-bcd1-4f918093fcee',''),('d7925af5-0255-4780-85a3-74fdbcea0338','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('d7925af5-0255-4780-85a3-74fdbcea0338','75276849-646b-46c3-899e-42a69a826978','\0'),('d7925af5-0255-4780-85a3-74fdbcea0338','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('d7925af5-0255-4780-85a3-74fdbcea0338','b20b4c0c-1226-4356-872f-358867dff81e',''),('d7925af5-0255-4780-85a3-74fdbcea0338','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('d7925af5-0255-4780-85a3-74fdbcea0338','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('d7925af5-0255-4780-85a3-74fdbcea0338','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('e9865e08-4622-44d9-a374-4a3bed3df785','018c4318-626b-4354-8dba-60c1c46163cc',''),('e9865e08-4622-44d9-a374-4a3bed3df785','46537f91-cae8-479f-bcd1-4f918093fcee',''),('e9865e08-4622-44d9-a374-4a3bed3df785','75276849-646b-46c3-899e-42a69a826978','\0'),('e9865e08-4622-44d9-a374-4a3bed3df785','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('e9865e08-4622-44d9-a374-4a3bed3df785','b20b4c0c-1226-4356-872f-358867dff81e',''),('e9865e08-4622-44d9-a374-4a3bed3df785','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('e9865e08-4622-44d9-a374-4a3bed3df785','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('e9865e08-4622-44d9-a374-4a3bed3df785','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','018c4318-626b-4354-8dba-60c1c46163cc',''),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','46537f91-cae8-479f-bcd1-4f918093fcee',''),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','75276849-646b-46c3-899e-42a69a826978','\0'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','b20b4c0c-1226-4356-872f-358867dff81e',''),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('f24cad3f-e51b-4a4f-96c0-aefd11f33613','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('a4254e82-9c42-4b30-9bcc-f6b382275c51','8fe817de-7b91-42cd-bdd5-f102909fcb2e');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION`
--

DROP TABLE IF EXISTS `CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`),
  CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_AUTH_STATUS`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_AUTH_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`),
  CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_PROT_MAPPER`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_PROT_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`),
  CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_ROLE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`),
  CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('04794f71-b74c-406e-aa86-f784c28040e6','Trusted Hosts','694c94b3-5787-4841-9a35-61110ad80322','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','anonymous'),('09872000-48e7-4148-ae34-01e7e1ae9f20','Full Scope Disabled','694c94b3-5787-4841-9a35-61110ad80322','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','anonymous'),('0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','Allowed Protocol Mapper Types','694c94b3-5787-4841-9a35-61110ad80322','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','anonymous'),('16a70532-3b02-438b-b2f8-466de5d75656','hmac-generated','694c94b3-5787-4841-9a35-61110ad80322','hmac-generated','org.keycloak.keys.KeyProvider','694c94b3-5787-4841-9a35-61110ad80322',NULL),('32d52674-bad4-48a2-b568-e7a9d5bc9461','rsa-enc-generated','694c94b3-5787-4841-9a35-61110ad80322','rsa-enc-generated','org.keycloak.keys.KeyProvider','694c94b3-5787-4841-9a35-61110ad80322',NULL),('43d30535-3a50-420b-86d8-0cf3b44893e8','rsa-generated','694c94b3-5787-4841-9a35-61110ad80322','rsa-generated','org.keycloak.keys.KeyProvider','694c94b3-5787-4841-9a35-61110ad80322',NULL),('5afce171-2034-4f60-994b-a8a8586fd7e9','Allowed Client Scopes','694c94b3-5787-4841-9a35-61110ad80322','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','authenticated'),('5f3f20fc-ad75-4e5f-8f27-c320a8a1970d','Allowed Client Scopes','694c94b3-5787-4841-9a35-61110ad80322','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','anonymous'),('66547383-15ea-4768-82b6-a37be46222fd','aes-generated','694c94b3-5787-4841-9a35-61110ad80322','aes-generated','org.keycloak.keys.KeyProvider','694c94b3-5787-4841-9a35-61110ad80322',NULL),('bf3e18b0-844e-4752-8afe-480a0b94aa20','Consent Required','694c94b3-5787-4841-9a35-61110ad80322','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','anonymous'),('db35fbf8-f649-4466-a927-fb6f1afd586d','Allowed Protocol Mapper Types','694c94b3-5787-4841-9a35-61110ad80322','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','authenticated'),('eb4fe9b9-dd1e-4eb1-a917-ae7a777c9903','Max Clients Limit','694c94b3-5787-4841-9a35-61110ad80322','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','694c94b3-5787-4841-9a35-61110ad80322','anonymous');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('04ca669f-e06f-4c0f-a5ce-5b45a365cccb','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('0e1594f2-41ea-46f3-9ac3-12934d1c6f88','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','oidc-address-mapper'),('1a2d772d-0ecf-4954-a9a2-0923b04a1c5d','32d52674-bad4-48a2-b568-e7a9d5bc9461','algorithm','RSA-OAEP'),('1f41a9c5-bf97-4be0-8163-d1bfed5d7086','66547383-15ea-4768-82b6-a37be46222fd','kid','c0740d9f-4eff-48c1-b5a1-85da2fcc6eac'),('27e7dc64-3861-4c94-bebe-42f2d008d561','eb4fe9b9-dd1e-4eb1-a917-ae7a777c9903','max-clients','200'),('2f0580ce-e6c7-4330-b9e1-79dfa1053c86','5afce171-2034-4f60-994b-a8a8586fd7e9','allow-default-scopes','true'),('2f78339a-c782-437a-9eb0-8d47c78100a0','43d30535-3a50-420b-86d8-0cf3b44893e8','certificate','MIICmzCCAYMCBgGLWtqQgzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDIzMDQ0NDE1WhcNMzMxMDIzMDQ0NTU1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC1MlJ7hUvp+4Rk02fhn53mWDi4cMnvBiPBGMQvvLNbm/be7sSHu4TMyo3qKShTjPIyDedNs97slSbWYnUV7xlwiTwNZi4E0rQARhvmhR55NmcQ9xwBXbvHAZgj68lGmVGmXCzk2TzF5uZR8yAbvAxckJhdXfZ3cqeUT1D9XR2nrNaP6sLB2jpxC2tJy1KJtccyRfPuWlxudKeyH8sos4yAuTV25m6E5uYBN8PngHepluGVWe29h4obh8Hv0pjgbrU9jggOLHUvUXVuhtH3ED1ISnlunRFZ2+AXm1I8WG180z2+5vtCtIU4gxDUH6E88sAXRJrKPSJApGdBoxtrOUAZAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHlBjEDJ36MGf6CtodDiD/BlPGdU6dDPH/ZkAdWWzRRmJ08oUmlFhJ5WEdGCMqrf58IPRGAubrqTKhTrEe3XxtxkEwLL0OgYCtDr/cHahlNe776POebGfsDhLAyjmIjYQjoPYn/IPmZPTGgxY+5YYc0KBRJjJsFwkrMVpeKyIbABd7AsiRevokTji8VvpkpBQL00v92UPI96FluGaFviChH0cW/ZYp3Q9cHjS704+TBOpYyp3WG/cW9oymYD3Hg14iEwbWwztlovlUPXsfKl4Cfh25nTVuUiXUf51hPIM8EiAujR7nPCUvE1g4gBnmHOiSPPifboGFGqEq82uTE4ZyM='),('32b6d133-7327-4e3d-8277-3892d97f4a9c','16a70532-3b02-438b-b2f8-466de5d75656','algorithm','HS256'),('334286b6-53bd-4fa9-bbef-b4efdfe4fe73','32d52674-bad4-48a2-b568-e7a9d5bc9461','priority','100'),('3dc0aa5a-f630-4225-9282-4e7b2436939b','16a70532-3b02-438b-b2f8-466de5d75656','priority','100'),('418e64d6-2526-4176-8f34-5b3a759c305a','66547383-15ea-4768-82b6-a37be46222fd','priority','100'),('5a2de92a-6ec9-484b-9411-34442a533661','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','saml-user-property-mapper'),('6d60a02b-04c5-44b6-8b4f-5dbd2712b7f4','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('77be3a4e-6d2f-4ba8-b462-93301add5ce5','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('81af265b-a5d1-43f1-8d38-697c79889722','04794f71-b74c-406e-aa86-f784c28040e6','client-uris-must-match','true'),('8a8451dc-78fc-47f4-a8ed-9075b2ca3553','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('8fb8e5ed-9339-411e-aeeb-4f3106515b7f','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('9860c11d-9738-4bfc-8960-91ae69558940','16a70532-3b02-438b-b2f8-466de5d75656','kid','0d437c66-37e8-420e-874c-c8af04bd5e18'),('a37b5885-aa30-4da1-85e6-3539c756a947','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','saml-role-list-mapper'),('a444dc28-f025-4249-a516-cc0d0201256b','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a821f494-0616-4acb-9af4-ea7afc680bad','43d30535-3a50-420b-86d8-0cf3b44893e8','privateKey','MIIEogIBAAKCAQEAtTJSe4VL6fuEZNNn4Z+d5lg4uHDJ7wYjwRjEL7yzW5v23u7Eh7uEzMqN6ikoU4zyMg3nTbPe7JUm1mJ1Fe8ZcIk8DWYuBNK0AEYb5oUeeTZnEPccAV27xwGYI+vJRplRplws5Nk8xebmUfMgG7wMXJCYXV32d3KnlE9Q/V0dp6zWj+rCwdo6cQtrSctSibXHMkXz7lpcbnSnsh/LKLOMgLk1duZuhObmATfD54B3qZbhlVntvYeKG4fB79KY4G61PY4IDix1L1F1bobR9xA9SEp5bp0RWdvgF5tSPFhtfNM9vub7QrSFOIMQ1B+hPPLAF0Sayj0iQKRnQaMbazlAGQIDAQABAoIBAA4VHqb9+aPySdxiN9knxChiY+olzfP3SLEZwSmqo0/z47B44ypfbxdRiM0RrNItiqdMQFVgLOu7Pdz8ovf08Me3ysSJ0/rI+3dn+4QjhXZLPaBqbDFI/S6e15m3GhoUEW36DP0uSxRgeTcWS8EMEPPiwwzCoESxUwfqUDOY2JSu7wlyvchoK2O0cZDX1CU0aQnEv5P7VihH4EHhgJDnULSziZ4QQRsuFU4mqrM7wWTPqGs2Rwn0JAQ7Lm17GYxQPT3rSVYtDSxd/oJuIfy+IRjdCnFHKU3aZHKP0honZgPnScFji49lSRKS+jWx5eqTNo+f+KaOYKBbaQpodxXgmtkCgYEA7mZwrbOiXAWVEqmgQ7VDgAq9/NCN/Y0F9fP1SPIJmv1r/1oXzTo4wzfrlU6s06T8wXv/UlpsXOR/YYjHiY6CokAoBVJBVS1djwSJ6In1B2eV2XY6EApiWl/C/Z1H9+dTIZgP9teueb7BYh/3N/y6rN0IKLLR3AtZHICvqzui6rUCgYEAwpLIc4mCPSqcJ0F7wEv2UwG/CHHP+3w7YHWTzmmiMqYx7eI11KkvVI6lOa8x2NAaTWPUX+rzRYWuDRaTSdowJhSq4RymU5QgPFZnivfxrbLCyGnk34jv8fsUYhejaVSZbt76WkpcvsK05u+pEk1bBjFwYCwf80RlOzuCjeXFSlUCgYAYYhPeQEQ34z5HBWBl7HE19GNQK0iKiVT1vfj1eAPxfUABgwZyMCVEGkEXKU/V6ccMRxFrK+JvcdNxd1rpP9EupR8yxCH4g0ZRbWZpiUqtcjPKZSQ1Jcq/cZHw/Jgyy88d3X6sgYzP2OnQjnJroIa7TXQbLYb3WZXIq4TMH7JfDQKBgBPWl22ARbEq2QT/njh7BkBsWyfnQsdnYT5yfoF7L7huTYTtnYNzRIogiSQagsCSZzwgw5SMBgW+nYJkHNxYzLP1Q370Rtkarza3sJLwuMl3Ankgot9PvPc1HFzsABNLNuGhBnGSR2aDv6IUKW7eSDuXatfDZ/aLsK6bYLJLDRSJAoGAFoRlMLedffRVmwWVfsoQyhCTQusV7fX+K9SQLAb3G71BxvPoUlIdesWdaymGEOMtUPPz7OAUvrblQy7WPl6U4EpCyw13w9xFfNngwVNZnDdzZVaNq3eqX4EWejazgOTlI9xtbQD309SgDJ/gwZBwSgBJwLBYlb0TxrBAQNdeSds='),('aa43cd23-e398-4517-8970-963c633c5f63','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','saml-role-list-mapper'),('af0ef666-44ae-49c2-9cb0-48bfc2427f85','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b7446359-3c8c-43f3-900a-e963dd527a8f','43d30535-3a50-420b-86d8-0cf3b44893e8','keyUse','SIG'),('bfeefeb6-3684-4770-a834-aec3c0ce4777','04794f71-b74c-406e-aa86-f784c28040e6','host-sending-registration-request-must-match','true'),('c379367f-92d9-494c-8110-b95cd704ce88','5f3f20fc-ad75-4e5f-8f27-c320a8a1970d','allow-default-scopes','true'),('c567cb9e-d0a5-499f-85e1-01660ab14c77','32d52674-bad4-48a2-b568-e7a9d5bc9461','certificate','MIICmzCCAYMCBgGLWtqROzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDIzMDQ0NDE1WhcNMzMxMDIzMDQ0NTU1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDei4v+250HMpHpj8cc9k6T/fthcZycXxeNM1kMzvWMzeaVz5PJs6Ia/SL7LBRGkbpKnthtZQ+jJXDei79smPJgtlCn6Acq0gPom4n2JJFHfsrqMvE9bhSXUC0QclcpiJdZV5VHsvFHYVbjPgGBvg+nmuEnJ445+62gz1cvp0Q0RT6D4UN2nYtvNf5nzNsPtohnoot/Jg7jow3osxfvfICTFh0Ph5KTSCYAEinH4K7vFStgMvdDZOKHe8DeKIxjthQ1v0Chz0szQnvZ4VhnnSGxQ/JTyIZpjUgi0gpWKtNPcKXTv/Lax2dC/Iu/uOTExAFxkniFu+R4IYj6DPF79SJHAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJPTOERH8lbSH89KwMk5BFVDiEvKLwRqOGK21kkH0++UzyHQzxtgBiltkbfs8OyBPKXaUOhW0WXi5QUBmlcQmo2OBK5iZi5l9oSXsb46Bleb/iUAIX5cMB9+Rpz6317tTRIqb5Z6YFfegNwi5JVhPSASW9QkZuy9v2CuIC5hFAJt7VIpVyjEgzUYL1TalCGBGvU6ddoi6cCjgGV1t5sazx5odvckgQVskv6jI+DCJEePngXj5JRtYK5BqyWB6KUsciqBjLBi12M8Lqgw/5ST5c63/b1BP32v/27eCmcN13f//l7jqYM60vemETtbNneiXFHGG9K5BJQzHpY0dWdUd00='),('d627f13b-cd0e-4366-97d5-0204783cb003','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d81faa1c-e3f6-4d09-99c0-112f0c219a70','43d30535-3a50-420b-86d8-0cf3b44893e8','priority','100'),('dba4ca0d-35a0-4c56-b88e-c32e3dfa7e80','db35fbf8-f649-4466-a927-fb6f1afd586d','allowed-protocol-mapper-types','saml-user-property-mapper'),('dc54503d-1e29-484b-9670-27cfc4f0bcdb','32d52674-bad4-48a2-b568-e7a9d5bc9461','keyUse','ENC'),('de7dc671-86a1-4383-bafb-270d5bf702f7','66547383-15ea-4768-82b6-a37be46222fd','secret','M77iIFztMRYlGcBkIkaZNA'),('e56803f3-1357-459d-a75a-500afc5a2cf4','16a70532-3b02-438b-b2f8-466de5d75656','secret','dhGVGEiyCzO0QmSqCleo_AFJZkcw0A4_4kDOKeYownUkmCHIlEAlZ8Y42cKAig78jlVfXW_8ut28vq8ZqZHUuQ'),('f5087fa2-3d2c-465d-b74b-1fbcab7dd9fa','32d52674-bad4-48a2-b568-e7a9d5bc9461','privateKey','MIIEpQIBAAKCAQEA3ouL/tudBzKR6Y/HHPZOk/37YXGcnF8XjTNZDM71jM3mlc+TybOiGv0i+ywURpG6Sp7YbWUPoyVw3ou/bJjyYLZQp+gHKtID6JuJ9iSRR37K6jLxPW4Ul1AtEHJXKYiXWVeVR7LxR2FW4z4Bgb4Pp5rhJyeOOfutoM9XL6dENEU+g+FDdp2LbzX+Z8zbD7aIZ6KLfyYO46MN6LMX73yAkxYdD4eSk0gmABIpx+Cu7xUrYDL3Q2Tih3vA3iiMY7YUNb9Aoc9LM0J72eFYZ50hsUPyU8iGaY1IItIKVirTT3Cl07/y2sdnQvyLv7jkxMQBcZJ4hbvkeCGI+gzxe/UiRwIDAQABAoIBABRBGx1iRikQ3zAkrSM4/5nUidEqkphgxzdLWcAirefXbYnA+gW82vTIiSssWIQRC1Ad+OYBRqpl4/SSlM+AyWkn7rCkG32NiQbd8RvSjtkKSdQwOBM2i5qMlNgPBVklsgX9mfvhO2MbEYSzxgCq7ah8HiB+0cumg6eZIf7s+Et8E68GwM3gNb4Er4uO2wfgHZjKM8gw/vFWVej5fEiUFt7Wtc4lUKGC3XJ9zUvZiYE8bkP0dF/qb/acYUEAIRcZI/MHEhI1oJFpAEZs5MXpAWCE9Zrme6G3uN5zGg9FM0/jSXlZLMskAyK4jioHcABlkZDQtjO4AlAKRmDZZgwQtUECgYEA/L/Skf4CldP9ChpiSshwfpeRsAvMv8qVXRPqNID7eFXEE8/HGLW1E9srQienvEb5etrTuST2+509N3NdHjqmxlP45Y+B0QJB6P8+9UUGxtlt9SpmffoeH4WnZfM9oD49mkgAAYIG4BxqAJxt6Kb+OeRI7x/2md7KGyiaZGGEI7cCgYEA4WhG5XZjH5Jc2opQ5q/OAEY+9O2Fd6DLrzOE/j0+wnhPSk6GeQ65fEwTosxOzqgyX1RbFGKi5funo09S90c1OohJeGbsj339U0WnXybq2dGywtNtBq5pEUl5l41G4EWXtEcbq3XYb74QB87YN41wUHLHnnAtPanwv25mJuRqlfECgYEA+krrt++Xl9AqkUq3c98yp+ppN7E3veZcK6SBFiV04iHs3sGwJGQtQdCU8hpbHTQb8vGpIXvdqiZ4bOUtnbXvWg/mN075+4UEyDucmT8WCu1e2p52iOKb2hN9RpSuvnVkg9gxSUz+igkZYCmJHg/hSmsrXsKEbrQV6Pc4jZeUR9kCgYEAmG1JtBYwxcLWI7rxJm6wYaMfI8YTQWhtFNdEEiEcdamiBN/BM8/vQsy3YpnCmSFInwqOZOSmv9tD673SnwF6T1CmTlNbmVVbn5o0qrXIju+tcO5EhgYfat9C6GdTDIpDIlgLsBELAdWHRaBsunRdBSn5L30wOsjW0r03OwmvwiECgYEAiyO59pEVSZhEup5Buac9siQspTptUxu6wYm1p+upIl1RxudKfxBRBSgsnQKVj0TiElBpwD28nX3rOYB3x7Upjk0HSMjUj6TOwdkeLlvXWYYJwXW2uxgjKPLttu+F4nflgz14A4WR9yfFHyXqRs+v0q/yiwnnh/ZS4e4L4PsJMUU='),('f8261f3a-bc94-48b9-9a2e-7b4a89ca7772','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','oidc-address-mapper'),('f9ff20ee-d297-4141-9bd5-c3116bd401c6','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('fce06c28-b6ad-4614-b8bb-cd4678408f77','0fe17a2f-8a65-4ce5-8a9a-ac9f8c68f614','allowed-protocol-mapper-types','oidc-full-name-mapper');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('21aa0758-29e1-47e3-94f6-ff26c754a3c6','0f567efb-0317-436b-a22d-ef8b50b36c36'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','14c11984-0f5c-4dca-95c4-44d1cbe9096f'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','28ba3854-bcef-4595-8811-4a1c7970110e'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','30b0ec2d-c30e-44a1-acdd-fbaa1f1a37c9'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','3f3fd4fe-6a5b-4a06-b268-cc52d5e265b1'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','58d075c6-36c6-4f67-b374-59a5c117ec49'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','752304ec-aaeb-47ad-80c6-1383c201c43f'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','7bc41334-96c2-4c80-a42c-a9fcfdb41420'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','81729003-1c28-4c57-8638-b11056401c86'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','89bfb885-61f4-497e-a765-e191135396d2'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','8ce78148-d617-4aff-a1ea-c243292ea504'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','9bd66f7a-fa03-44fa-bfb1-fac42ea9a266'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','9ef5d414-dc5b-4a82-ab79-07eb4f5bb488'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','b63da227-50dd-4a42-b7c6-6097c9259360'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','bd88f430-59c2-4819-af20-0e99b931a80e'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','e7201a17-bc6c-4747-aa24-56bb2ff9a4e9'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','f036563c-7a58-4040-94a9-7ae6ed285c21'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','f20fce1a-c9ef-4a78-b086-f48a452d31a3'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','ff95fb83-1553-4c62-8741-4b2bb15b7b02'),('4dfc6627-769c-486b-80c8-be635cf3ac06','19ef073c-59a2-4cb8-b27f-d5d552a62a04'),('4dfc6627-769c-486b-80c8-be635cf3ac06','57354760-cc73-43cf-887b-5c63fa7d23c5'),('4dfc6627-769c-486b-80c8-be635cf3ac06','8fe817de-7b91-42cd-bdd5-f102909fcb2e'),('4dfc6627-769c-486b-80c8-be635cf3ac06','cea08bf7-d2ba-4c7b-8fa5-8ffe4cf8eafa'),('57354760-cc73-43cf-887b-5c63fa7d23c5','3a8097a0-84db-44c6-98b3-1edeca7db707'),('bd88f430-59c2-4819-af20-0e99b931a80e','0f567efb-0317-436b-a22d-ef8b50b36c36'),('bd88f430-59c2-4819-af20-0e99b931a80e','14c11984-0f5c-4dca-95c4-44d1cbe9096f'),('cfc8ff1f-31a8-42ea-82f0-d5c3d59aced4','7010e6a7-780c-4678-9308-61a28989fc03'),('f20fce1a-c9ef-4a78-b086-f48a452d31a3','b63da227-50dd-4a42-b7c6-6097c9259360');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('31b83263-d746-4acb-bf85-9a8f3f5b599e',NULL,'password','a8638437-fa82-464a-8bf0-a46db270af5d',1698036356280,NULL,'{\"value\":\"BHqbYyUyKKeylieUovUvuhDJY24z6erNK9sLpdEaX+xvq/oYKZBpKC+vcBBgxOCoCaJvexFEGw5nUqbmQyxfiQ==\",\"salt\":\"pogaDW0yrL1M2RliDB8dFw==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-10-23 13:45:43',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-10-23 13:45:43',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-10-23 13:45:43',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-10-23 13:45:43',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-10-23 13:45:44',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-10-23 13:45:44',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-10-23 13:45:45',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-10-23 13:45:45',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-10-23 13:45:45',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-10-23 13:45:45',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-10-23 13:45:46',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-10-23 13:45:46',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-10-23 13:45:46',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-23 13:45:46',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-23 13:45:46',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-23 13:45:46',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-23 13:45:46',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-10-23 13:45:46',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-10-23 13:45:47',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-10-23 13:45:47',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-23 13:45:47',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-23 13:45:47',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-10-23 13:45:47',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-10-23 13:45:47',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-10-23 13:45:47',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-10-23 13:45:47',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-10-23 13:45:48',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-10-23 13:45:48',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-10-23 13:45:48',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-10-23 13:45:48',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-10-23 13:45:48',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-10-23 13:45:48',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-23 13:45:48',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-23 13:45:48',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-23 13:45:48',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-10-23 13:45:48',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-23 13:45:49',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8036341358'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-10-23 13:45:49',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-10-23 13:45:49',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-23 13:45:49',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-23 13:45:49',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-10-23 13:45:49',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-23 13:45:49',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-10-23 13:45:49',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-23 13:45:49',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-23 13:45:49',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-23 13:45:49',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-23 13:45:50',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-23 13:45:50',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-10-23 13:45:50',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-10-23 13:45:50',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-10-23 13:45:50',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-10-23 13:45:50',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-10-23 13:45:50',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-23 13:45:50',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-23 13:45:50',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-23 13:45:51',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-23 13:45:51',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-10-23 13:45:51',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-10-23 13:45:51',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-23 13:45:52',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-23 13:45:52',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-10-23 13:45:52',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-10-23 13:45:52',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-23 13:45:52',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-10-23 13:45:52',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-23 13:45:52',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-10-23 13:45:52',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-10-23 13:45:52',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-10-23 13:45:52',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8036341358'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-10-23 13:45:52',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'8036341358'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-23 13:45:52',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8036341358'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-23 13:45:52',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8036341358'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-23 13:45:52',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8036341358'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-23 13:45:52',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-23 13:45:52',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-23 13:45:52',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-23 13:45:52',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-23 13:45:52',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-23 13:45:52',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-23 13:45:52',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-23 13:45:52',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-23 13:45:52',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-23 13:45:52',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8036341358'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-23 13:45:52',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-10-23 13:45:52',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'8036341358'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-23 13:45:52',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-23 13:45:52',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'8036341358'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'8036341358'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'8036341358'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8036341358'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8036341358'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-23 13:45:52',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8036341358'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8036341358'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8036341358'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8036341358'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8036341358'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-23 13:45:52',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'8036341358'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-10-23 13:45:52',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'8036341358'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2023-10-23 13:45:52',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2023-10-23 13:45:52',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8036341358'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2023-10-23 13:45:52',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'8036341358'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-23 13:45:52',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-23 13:45:52',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8036341358'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-23 13:45:52',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8036341358');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL),(1000,'\0',NULL,NULL),(1001,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('694c94b3-5787-4841-9a35-61110ad80322','018c4318-626b-4354-8dba-60c1c46163cc',''),('694c94b3-5787-4841-9a35-61110ad80322','02407c91-01cc-4d28-81e6-9c23b3e2780e',''),('694c94b3-5787-4841-9a35-61110ad80322','46537f91-cae8-479f-bcd1-4f918093fcee',''),('694c94b3-5787-4841-9a35-61110ad80322','657d4b8c-e5d0-490b-86b2-2a1d68d1c140',''),('694c94b3-5787-4841-9a35-61110ad80322','75276849-646b-46c3-899e-42a69a826978','\0'),('694c94b3-5787-4841-9a35-61110ad80322','a4254e82-9c42-4b30-9bcc-f6b382275c51','\0'),('694c94b3-5787-4841-9a35-61110ad80322','b20b4c0c-1226-4356-872f-358867dff81e',''),('694c94b3-5787-4841-9a35-61110ad80322','b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e',''),('694c94b3-5787-4841-9a35-61110ad80322','ee308e4d-a99a-4279-849d-2287e91e413b','\0'),('694c94b3-5787-4841-9a35-61110ad80322','f0d2a080-148a-4a69-b1fd-85761cc51cd6','\0');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  KEY `IDX_GROUP_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0f567efb-0317-436b-a22d-ef8b50b36c36','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_query-groups}','query-groups','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('14c11984-0f5c-4dca-95c4-44d1cbe9096f','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_query-users}','query-users','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('19ef073c-59a2-4cb8-b27f-d5d552a62a04','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_view-profile}','view-profile','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','694c94b3-5787-4841-9a35-61110ad80322','\0','${role_admin}','admin','694c94b3-5787-4841-9a35-61110ad80322',NULL,NULL),('2206a092-7c89-4b9c-8378-7bd1f807748b','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_view-groups}','view-groups','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('28ba3854-bcef-4595-8811-4a1c7970110e','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_query-realms}','query-realms','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('30b0ec2d-c30e-44a1-acdd-fbaa1f1a37c9','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_manage-clients}','manage-clients','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('3a8097a0-84db-44c6-98b3-1edeca7db707','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_manage-account-links}','manage-account-links','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('3f3fd4fe-6a5b-4a06-b268-cc52d5e265b1','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_create-client}','create-client','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('403b246f-eee2-413d-b350-3b40e7a133d0','624a48d0-b7ee-466f-af72-3a046e9e4bfa','','${role_read-token}','read-token','694c94b3-5787-4841-9a35-61110ad80322','624a48d0-b7ee-466f-af72-3a046e9e4bfa',NULL),('4dfc6627-769c-486b-80c8-be635cf3ac06','694c94b3-5787-4841-9a35-61110ad80322','\0','${role_default-roles}','default-roles-master','694c94b3-5787-4841-9a35-61110ad80322',NULL,NULL),('506c0e76-fcc5-42cf-81e0-771b0bdede32','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_delete-account}','delete-account','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('57354760-cc73-43cf-887b-5c63fa7d23c5','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_manage-account}','manage-account','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('58d075c6-36c6-4f67-b374-59a5c117ec49','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_view-events}','view-events','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('6472653a-eeb5-4628-bcdf-60e3a1c55c62','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_view-applications}','view-applications','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('7010e6a7-780c-4678-9308-61a28989fc03','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_view-consent}','view-consent','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('752304ec-aaeb-47ad-80c6-1383c201c43f','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_manage-realm}','manage-realm','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('7bc41334-96c2-4c80-a42c-a9fcfdb41420','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_manage-users}','manage-users','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('81729003-1c28-4c57-8638-b11056401c86','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_manage-events}','manage-events','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('89bfb885-61f4-497e-a765-e191135396d2','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_view-identity-providers}','view-identity-providers','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('8ce78148-d617-4aff-a1ea-c243292ea504','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_view-realm}','view-realm','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('8fe817de-7b91-42cd-bdd5-f102909fcb2e','694c94b3-5787-4841-9a35-61110ad80322','\0','${role_offline-access}','offline_access','694c94b3-5787-4841-9a35-61110ad80322',NULL,NULL),('9bd66f7a-fa03-44fa-bfb1-fac42ea9a266','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_manage-identity-providers}','manage-identity-providers','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('9ef5d414-dc5b-4a82-ab79-07eb4f5bb488','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_view-authorization}','view-authorization','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('b63da227-50dd-4a42-b7c6-6097c9259360','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_query-clients}','query-clients','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('bd88f430-59c2-4819-af20-0e99b931a80e','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_view-users}','view-users','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('cea08bf7-d2ba-4c7b-8fa5-8ffe4cf8eafa','694c94b3-5787-4841-9a35-61110ad80322','\0','${role_uma_authorization}','uma_authorization','694c94b3-5787-4841-9a35-61110ad80322',NULL,NULL),('cfc8ff1f-31a8-42ea-82f0-d5c3d59aced4','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','','${role_manage-consent}','manage-consent','694c94b3-5787-4841-9a35-61110ad80322','98b3061a-f39b-4c1b-8de9-b0a4feae7ae0',NULL),('e7201a17-bc6c-4747-aa24-56bb2ff9a4e9','694c94b3-5787-4841-9a35-61110ad80322','\0','${role_create-realm}','create-realm','694c94b3-5787-4841-9a35-61110ad80322',NULL,NULL),('f036563c-7a58-4040-94a9-7ae6ed285c21','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_impersonation}','impersonation','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('f20fce1a-c9ef-4a78-b086-f48a452d31a3','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_view-clients}','view-clients','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL),('ff95fb83-1553-4c62-8741-4b2bb15b7b02','6592ea8c-0f44-4eff-8c73-c2cef41810fa','','${role_manage-authorization}','manage-authorization','694c94b3-5787-4841-9a35-61110ad80322','6592ea8c-0f44-4eff-8c73-c2cef41810fa',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('04qr6','20.0.5',1698036353);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_CSS_PRELOAD` (`CLIENT_ID`,`OFFLINE_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`),
  KEY `IDX_OFFLINE_USS_PRELOAD` (`OFFLINE_FLAG`,`CREATED_ON`,`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USERSESS` (`REALM_ID`,`OFFLINE_FLAG`,`USER_SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0f1af7ae-6c80-45f8-927f-c673002b3d12','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('1e5fff63-7579-4bc3-b0e0-9227bc894745','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'b20b4c0c-1226-4356-872f-358867dff81e'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('22952776-6dde-4c82-90f8-1c97391f3f23','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('3044cde5-b326-4705-a65f-6054a641ef8c','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'ee308e4d-a99a-4279-849d-2287e91e413b'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('4393e71d-befa-4320-af49-ac828573a4d5','email','openid-connect','oidc-usermodel-property-mapper',NULL,'018c4318-626b-4354-8dba-60c1c46163cc'),('5901643e-b652-4206-a5eb-88392b49d989','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('6332c221-460a-4445-9700-3a4bcb54377b','username','openid-connect','oidc-usermodel-property-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('664ddd75-65ca-470a-9efa-cffbd7f93064','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'75276849-646b-46c3-899e-42a69a826978'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','locale','openid-connect','oidc-usermodel-attribute-mapper','0eee33df-dce2-42ec-aa5c-03b792f82a54',NULL),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'018c4318-626b-4354-8dba-60c1c46163cc'),('9defe75e-fc71-40db-b256-dbfc40b21f6f','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'b20b4c0c-1226-4356-872f-358867dff81e'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','f24cad3f-e51b-4a4f-96c0-aefd11f33613',NULL),('a2bd72e0-76af-43bb-8622-98d4b99896e4','full name','openid-connect','oidc-full-name-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('a3f9d922-57c7-4270-9624-2803330717fc','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','f24cad3f-e51b-4a4f-96c0-aefd11f33613',NULL),('a4603734-59f1-43db-b09b-09d8032fd607','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'b20b4c0c-1226-4356-872f-358867dff81e'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','address','openid-connect','oidc-address-mapper',NULL,'f0d2a080-148a-4a69-b1fd-85761cc51cd6'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ee308e4d-a99a-4279-849d-2287e91e413b'),('b65ddbc2-d0d1-4f03-ae2e-f0a4eb20a079','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'46537f91-cae8-479f-bcd1-4f918093fcee'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('b8b496d8-b9f6-4abd-ab9c-ce21da8622d9','acr loa level','openid-connect','oidc-acr-mapper',NULL,'657d4b8c-e5d0-490b-86b2-2a1d68d1c140'),('bffc4876-0e87-45a9-a3d0-2af9c9e39b78','audience resolve','openid-connect','oidc-audience-resolve-mapper','d19bf47f-c7ad-4aab-b8cc-d3c0841dc352',NULL),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'75276849-646b-46c3-899e-42a69a826978'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','f24cad3f-e51b-4a4f-96c0-aefd11f33613',NULL),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b24bc3d6-eb0d-44ba-8960-5572a8ca9f9e'),('fae1d49f-5842-4fd5-bf0d-bcc2427f81fd','role list','saml','saml-role-list-mapper',NULL,'02407c91-01cc-4d28-81e6-9c23b3e2780e');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0f1af7ae-6c80-45f8-927f-c673002b3d12','true','access.token.claim'),('0f1af7ae-6c80-45f8-927f-c673002b3d12','gender','claim.name'),('0f1af7ae-6c80-45f8-927f-c673002b3d12','true','id.token.claim'),('0f1af7ae-6c80-45f8-927f-c673002b3d12','String','jsonType.label'),('0f1af7ae-6c80-45f8-927f-c673002b3d12','gender','user.attribute'),('0f1af7ae-6c80-45f8-927f-c673002b3d12','true','userinfo.token.claim'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','true','access.token.claim'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','birthdate','claim.name'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','true','id.token.claim'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','String','jsonType.label'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','birthdate','user.attribute'),('1cfc3491-09a3-4432-981c-3ed82d7e6345','true','userinfo.token.claim'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','true','access.token.claim'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','middle_name','claim.name'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','true','id.token.claim'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','String','jsonType.label'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','middleName','user.attribute'),('20345f9a-97e5-42b1-bd7f-ef1e46714210','true','userinfo.token.claim'),('22952776-6dde-4c82-90f8-1c97391f3f23','true','access.token.claim'),('22952776-6dde-4c82-90f8-1c97391f3f23','nickname','claim.name'),('22952776-6dde-4c82-90f8-1c97391f3f23','true','id.token.claim'),('22952776-6dde-4c82-90f8-1c97391f3f23','String','jsonType.label'),('22952776-6dde-4c82-90f8-1c97391f3f23','nickname','user.attribute'),('22952776-6dde-4c82-90f8-1c97391f3f23','true','userinfo.token.claim'),('3044cde5-b326-4705-a65f-6054a641ef8c','true','access.token.claim'),('3044cde5-b326-4705-a65f-6054a641ef8c','upn','claim.name'),('3044cde5-b326-4705-a65f-6054a641ef8c','true','id.token.claim'),('3044cde5-b326-4705-a65f-6054a641ef8c','String','jsonType.label'),('3044cde5-b326-4705-a65f-6054a641ef8c','username','user.attribute'),('3044cde5-b326-4705-a65f-6054a641ef8c','true','userinfo.token.claim'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','true','access.token.claim'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','updated_at','claim.name'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','true','id.token.claim'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','long','jsonType.label'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','updatedAt','user.attribute'),('37ce51c6-d8ac-4412-b6e2-f3ef8db78f7c','true','userinfo.token.claim'),('4393e71d-befa-4320-af49-ac828573a4d5','true','access.token.claim'),('4393e71d-befa-4320-af49-ac828573a4d5','email','claim.name'),('4393e71d-befa-4320-af49-ac828573a4d5','true','id.token.claim'),('4393e71d-befa-4320-af49-ac828573a4d5','String','jsonType.label'),('4393e71d-befa-4320-af49-ac828573a4d5','email','user.attribute'),('4393e71d-befa-4320-af49-ac828573a4d5','true','userinfo.token.claim'),('5901643e-b652-4206-a5eb-88392b49d989','true','access.token.claim'),('5901643e-b652-4206-a5eb-88392b49d989','picture','claim.name'),('5901643e-b652-4206-a5eb-88392b49d989','true','id.token.claim'),('5901643e-b652-4206-a5eb-88392b49d989','String','jsonType.label'),('5901643e-b652-4206-a5eb-88392b49d989','picture','user.attribute'),('5901643e-b652-4206-a5eb-88392b49d989','true','userinfo.token.claim'),('6332c221-460a-4445-9700-3a4bcb54377b','true','access.token.claim'),('6332c221-460a-4445-9700-3a4bcb54377b','preferred_username','claim.name'),('6332c221-460a-4445-9700-3a4bcb54377b','true','id.token.claim'),('6332c221-460a-4445-9700-3a4bcb54377b','String','jsonType.label'),('6332c221-460a-4445-9700-3a4bcb54377b','username','user.attribute'),('6332c221-460a-4445-9700-3a4bcb54377b','true','userinfo.token.claim'),('664ddd75-65ca-470a-9efa-cffbd7f93064','true','access.token.claim'),('664ddd75-65ca-470a-9efa-cffbd7f93064','phone_number_verified','claim.name'),('664ddd75-65ca-470a-9efa-cffbd7f93064','true','id.token.claim'),('664ddd75-65ca-470a-9efa-cffbd7f93064','boolean','jsonType.label'),('664ddd75-65ca-470a-9efa-cffbd7f93064','phoneNumberVerified','user.attribute'),('664ddd75-65ca-470a-9efa-cffbd7f93064','true','userinfo.token.claim'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','true','access.token.claim'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','given_name','claim.name'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','true','id.token.claim'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','String','jsonType.label'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','firstName','user.attribute'),('6ac3f6e5-b328-4f30-ba6e-d7fa597d3ce6','true','userinfo.token.claim'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','true','access.token.claim'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','locale','claim.name'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','true','id.token.claim'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','String','jsonType.label'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','locale','user.attribute'),('6d0ee5fa-882a-4c9f-9a1e-d0b2deacb3df','true','userinfo.token.claim'),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','true','access.token.claim'),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','zoneinfo','claim.name'),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','true','id.token.claim'),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','String','jsonType.label'),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','zoneinfo','user.attribute'),('6faeb30f-84d9-4c7a-a11d-4bc65362db9f','true','userinfo.token.claim'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','true','access.token.claim'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','email_verified','claim.name'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','true','id.token.claim'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','boolean','jsonType.label'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','emailVerified','user.attribute'),('8476a28b-23a5-4017-9e0a-ffef46aed82a','true','userinfo.token.claim'),('9defe75e-fc71-40db-b256-dbfc40b21f6f','true','access.token.claim'),('9defe75e-fc71-40db-b256-dbfc40b21f6f','resource_access.${client_id}.roles','claim.name'),('9defe75e-fc71-40db-b256-dbfc40b21f6f','String','jsonType.label'),('9defe75e-fc71-40db-b256-dbfc40b21f6f','true','multivalued'),('9defe75e-fc71-40db-b256-dbfc40b21f6f','foo','user.attribute'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','true','access.token.claim'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','clientHost','claim.name'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','true','id.token.claim'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','String','jsonType.label'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','clientHost','user.session.note'),('a14b333b-930b-4bf8-8633-6434b6fa84f2','true','userinfo.token.claim'),('a2bd72e0-76af-43bb-8622-98d4b99896e4','true','access.token.claim'),('a2bd72e0-76af-43bb-8622-98d4b99896e4','true','id.token.claim'),('a2bd72e0-76af-43bb-8622-98d4b99896e4','true','userinfo.token.claim'),('a3f9d922-57c7-4270-9624-2803330717fc','true','access.token.claim'),('a3f9d922-57c7-4270-9624-2803330717fc','clientAddress','claim.name'),('a3f9d922-57c7-4270-9624-2803330717fc','true','id.token.claim'),('a3f9d922-57c7-4270-9624-2803330717fc','String','jsonType.label'),('a3f9d922-57c7-4270-9624-2803330717fc','clientAddress','user.session.note'),('a3f9d922-57c7-4270-9624-2803330717fc','true','userinfo.token.claim'),('a4603734-59f1-43db-b09b-09d8032fd607','true','access.token.claim'),('a4603734-59f1-43db-b09b-09d8032fd607','realm_access.roles','claim.name'),('a4603734-59f1-43db-b09b-09d8032fd607','String','jsonType.label'),('a4603734-59f1-43db-b09b-09d8032fd607','true','multivalued'),('a4603734-59f1-43db-b09b-09d8032fd607','foo','user.attribute'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','true','access.token.claim'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','true','id.token.claim'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','country','user.attribute.country'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','formatted','user.attribute.formatted'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','locality','user.attribute.locality'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','postal_code','user.attribute.postal_code'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','region','user.attribute.region'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','street','user.attribute.street'),('a8ea658a-9d40-40cc-a4fe-bc0bf0dbe37b','true','userinfo.token.claim'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','true','access.token.claim'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','family_name','claim.name'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','true','id.token.claim'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','String','jsonType.label'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','lastName','user.attribute'),('aed0e00f-7648-4151-baa6-3fdbf9b9e5a4','true','userinfo.token.claim'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','true','access.token.claim'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','groups','claim.name'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','true','id.token.claim'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','String','jsonType.label'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','true','multivalued'),('b162e258-2bc0-49bd-8ff5-3fcc00e07451','foo','user.attribute'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','true','access.token.claim'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','profile','claim.name'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','true','id.token.claim'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','String','jsonType.label'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','profile','user.attribute'),('b88c21f8-7a41-4338-84d1-d37b23f78db2','true','userinfo.token.claim'),('b8b496d8-b9f6-4abd-ab9c-ce21da8622d9','true','access.token.claim'),('b8b496d8-b9f6-4abd-ab9c-ce21da8622d9','true','id.token.claim'),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','true','access.token.claim'),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','locale','claim.name'),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','true','id.token.claim'),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','String','jsonType.label'),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','locale','user.attribute'),('c66f9308-5dc2-4d36-93e3-78af0077b2ce','true','userinfo.token.claim'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','true','access.token.claim'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','phone_number','claim.name'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','true','id.token.claim'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','String','jsonType.label'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','phoneNumber','user.attribute'),('d470eb78-8e9d-4632-a925-dc58fbd2ac33','true','userinfo.token.claim'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','true','access.token.claim'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','clientId','claim.name'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','true','id.token.claim'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','String','jsonType.label'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','clientId','user.session.note'),('e9dc2a6d-86fa-47db-8f1f-a5b598c0edbd','true','userinfo.token.claim'),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','true','access.token.claim'),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','website','claim.name'),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','true','id.token.claim'),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','String','jsonType.label'),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','website','user.attribute'),('f69f1006-9912-4358-a9d7-bb0d0a8b23d0','true','userinfo.token.claim'),('fae1d49f-5842-4fd5-bf0d-bcc2427f81fd','Role','attribute.name'),('fae1d49f-5842-4fd5-bf0d-bcc2427f81fd','Basic','attribute.nameformat'),('fae1d49f-5842-4fd5-bf0d-bcc2427f81fd','false','single');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` text DEFAULT NULL,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int(11) DEFAULT 0,
  `OTP_POLICY_WINDOW` int(11) DEFAULT 1,
  `OTP_POLICY_PERIOD` int(11) DEFAULT 30,
  `OTP_POLICY_DIGITS` int(11) DEFAULT 6,
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT 0,
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('694c94b3-5787-4841-9a35-61110ad80322',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','NONE',1800,36000,'\0','\0','6592ea8c-0f44-4eff-8c73-c2cef41810fa',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','c52f4526-29cd-47ac-85f2-09c9583b6584','490259c1-7830-42d5-9447-ccefcb408c02','b1bdbbec-fe70-4a37-a9a5-e0f444b2a5bf','7f7fcb56-be06-4b4b-a44b-abf2d7c75fac','c102b044-efde-4c17-833e-3663f64092d7',31536000,'\0',900,'','\0','998cfa23-44f0-4ff5-a342-1efe1733842c',0,'\0',0,0,'4dfc6627-769c-486b-80c8-be635cf3ac06');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','694c94b3-5787-4841-9a35-61110ad80322','false'),('cibaAuthRequestedUserHint','694c94b3-5787-4841-9a35-61110ad80322','login_hint'),('cibaBackchannelTokenDeliveryMode','694c94b3-5787-4841-9a35-61110ad80322','poll'),('cibaExpiresIn','694c94b3-5787-4841-9a35-61110ad80322','120'),('cibaInterval','694c94b3-5787-4841-9a35-61110ad80322','5'),('defaultSignatureAlgorithm','694c94b3-5787-4841-9a35-61110ad80322','RS256'),('displayName','694c94b3-5787-4841-9a35-61110ad80322','Keycloak'),('displayNameHtml','694c94b3-5787-4841-9a35-61110ad80322','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','694c94b3-5787-4841-9a35-61110ad80322','30'),('maxDeltaTimeSeconds','694c94b3-5787-4841-9a35-61110ad80322','43200'),('maxFailureWaitSeconds','694c94b3-5787-4841-9a35-61110ad80322','900'),('minimumQuickLoginWaitSeconds','694c94b3-5787-4841-9a35-61110ad80322','60'),('oauth2DeviceCodeLifespan','694c94b3-5787-4841-9a35-61110ad80322','600'),('oauth2DevicePollingInterval','694c94b3-5787-4841-9a35-61110ad80322','5'),('offlineSessionMaxLifespan','694c94b3-5787-4841-9a35-61110ad80322','31536000'),('offlineSessionMaxLifespanEnabled','694c94b3-5787-4841-9a35-61110ad80322','true'),('parRequestUriLifespan','694c94b3-5787-4841-9a35-61110ad80322','60'),('permanentLockout','694c94b3-5787-4841-9a35-61110ad80322','false'),('quickLoginCheckMilliSeconds','694c94b3-5787-4841-9a35-61110ad80322','1000'),('realmReusableOtpCode','694c94b3-5787-4841-9a35-61110ad80322','false'),('waitIncrementSeconds','694c94b3-5787-4841-9a35-61110ad80322','60'),('webAuthnPolicyAttestationConveyancePreference','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyAuthenticatorAttachment','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','694c94b3-5787-4841-9a35-61110ad80322','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','694c94b3-5787-4841-9a35-61110ad80322','false'),('webAuthnPolicyCreateTimeout','694c94b3-5787-4841-9a35-61110ad80322','0'),('webAuthnPolicyCreateTimeoutPasswordless','694c94b3-5787-4841-9a35-61110ad80322','0'),('webAuthnPolicyRequireResidentKey','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyRpEntityName','694c94b3-5787-4841-9a35-61110ad80322','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','694c94b3-5787-4841-9a35-61110ad80322','keycloak'),('webAuthnPolicyRpId','694c94b3-5787-4841-9a35-61110ad80322',''),('webAuthnPolicyRpIdPasswordless','694c94b3-5787-4841-9a35-61110ad80322',''),('webAuthnPolicySignatureAlgorithms','694c94b3-5787-4841-9a35-61110ad80322','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','694c94b3-5787-4841-9a35-61110ad80322','ES256'),('webAuthnPolicyUserVerificationRequirement','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','694c94b3-5787-4841-9a35-61110ad80322','not specified'),('_browser_header.contentSecurityPolicy','694c94b3-5787-4841-9a35-61110ad80322','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','694c94b3-5787-4841-9a35-61110ad80322',''),('_browser_header.strictTransportSecurity','694c94b3-5787-4841-9a35-61110ad80322','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','694c94b3-5787-4841-9a35-61110ad80322','nosniff'),('_browser_header.xFrameOptions','694c94b3-5787-4841-9a35-61110ad80322','SAMEORIGIN'),('_browser_header.xRobotsTag','694c94b3-5787-4841-9a35-61110ad80322','none'),('_browser_header.xXSSProtection','694c94b3-5787-4841-9a35-61110ad80322','1; mode=block');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('694c94b3-5787-4841-9a35-61110ad80322','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','694c94b3-5787-4841-9a35-61110ad80322');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('0eee33df-dce2-42ec-aa5c-03b792f82a54','/admin/master/console/*'),('98b3061a-f39b-4c1b-8de9-b0a4feae7ae0','/realms/master/account/*'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','/realms/master/account/*'),('e9865e08-4622-44d9-a374-4a3bed3df785','/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0b9bb75e-bf37-4719-b863-14290fbef62b','webauthn-register-passwordless','Webauthn Register Passwordless','694c94b3-5787-4841-9a35-61110ad80322','','\0','webauthn-register-passwordless',80),('227c89f8-c489-4836-be69-22afd384bde7','update_user_locale','Update User Locale','694c94b3-5787-4841-9a35-61110ad80322','','\0','update_user_locale',1000),('48fdd5b4-5e41-4bf3-879a-42c8b18e01da','VERIFY_EMAIL','Verify Email','694c94b3-5787-4841-9a35-61110ad80322','','\0','VERIFY_EMAIL',50),('4e4e68e9-2748-4632-b000-ef824814375e','webauthn-register','Webauthn Register','694c94b3-5787-4841-9a35-61110ad80322','','\0','webauthn-register',70),('53c7924f-1454-4387-bb25-afabcef7218c','delete_account','Delete Account','694c94b3-5787-4841-9a35-61110ad80322','\0','\0','delete_account',60),('b7c59257-8d8b-402d-8d3b-e5857d857728','terms_and_conditions','Terms and Conditions','694c94b3-5787-4841-9a35-61110ad80322','\0','\0','terms_and_conditions',20),('c5200096-9e1b-4daf-a774-9b73c019d81e','UPDATE_PROFILE','Update Profile','694c94b3-5787-4841-9a35-61110ad80322','','\0','UPDATE_PROFILE',40),('c86bc263-2d3d-4c7b-83e4-3245da0b3db6','CONFIGURE_TOTP','Configure OTP','694c94b3-5787-4841-9a35-61110ad80322','','\0','CONFIGURE_TOTP',10),('e7b46f8c-2d59-4812-9afd-a1b51b47ab3d','UPDATE_PASSWORD','Update Password','694c94b3-5787-4841-9a35-61110ad80322','','\0','UPDATE_PASSWORD',30);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES ('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','2206a092-7c89-4b9c-8378-7bd1f807748b'),('d19bf47f-c7ad-4aab-b8cc-d3c0841dc352','57354760-cc73-43cf-887b-5c63fa7d23c5');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERNAME_LOGIN_FAILURE`
--

DROP TABLE IF EXISTS `USERNAME_LOGIN_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int(11) DEFAULT NULL,
  `LAST_FAILURE` bigint(20) DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int(11) DEFAULT NULL,
  PRIMARY KEY (`REALM_ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`),
  KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('6cd2af61-c19f-4465-b41a-0b85606f9f51',NULL,'76378604-c62f-4ae4-aa8e-d9231782fe98','\0','',NULL,NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','service-account-_platform',1698036362416,'f24cad3f-e51b-4a4f-96c0-aefd11f33613',0),('a8638437-fa82-464a-8bf0-a46db270af5d',NULL,'ced3029b-027b-4afb-85ad-f34a18e5b897','\0','',NULL,NULL,NULL,'694c94b3-5787-4841-9a35-61110ad80322','admin',1698036355969,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('21aa0758-29e1-47e3-94f6-ff26c754a3c6','6cd2af61-c19f-4465-b41a-0b85606f9f51'),('21aa0758-29e1-47e3-94f6-ff26c754a3c6','a8638437-fa82-464a-8bf0-a46db270af5d'),('4dfc6627-769c-486b-80c8-be635cf3ac06','6cd2af61-c19f-4465-b41a-0b85606f9f51'),('4dfc6627-769c-486b-80c8-be635cf3ac06','a8638437-fa82-464a-8bf0-a46db270af5d');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION`
--

DROP TABLE IF EXISTS `USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int(11) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int(11) DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` text DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('0eee33df-dce2-42ec-aa5c-03b792f82a54','+');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `platform`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `platform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `platform`;

--
-- Table structure for table `M_SYSTEM_CONFIG`
--

DROP TABLE IF EXISTS `M_SYSTEM_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `M_SYSTEM_CONFIG` (
  `CONFIG_KEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONFIG_VALUE` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CONFIG_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_SYSTEM_CONFIG`
--

LOCK TABLES `M_SYSTEM_CONFIG` WRITE;
/*!40000 ALTER TABLE `M_SYSTEM_CONFIG` DISABLE KEYS */;
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2023-10-23 13:46:06','dummy','2023-10-23 13:46:06','dummy');
/*!40000 ALTER TABLE `M_SYSTEM_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_MAINTENANCE_MODE`
--

DROP TABLE IF EXISTS `T_MAINTENANCE_MODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_MAINTENANCE_MODE` (
  `MAINTENANCE_ID` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `MODE_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SETTING_VALUE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime(6) DEFAULT NULL,
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`MAINTENANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_MAINTENANCE_MODE`
--

LOCK TABLES `T_MAINTENANCE_MODE` WRITE;
/*!40000 ALTER TABLE `T_MAINTENANCE_MODE` DISABLE KEYS */;
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2023-10-23 13:46:03.000000',NULL),('2','DATA_UPDATE_STOP','0','2023-10-23 13:46:03.000000',NULL);
/*!40000 ALTER TABLE `T_MAINTENANCE_MODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION`
--

DROP TABLE IF EXISTS `T_ORGANIZATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_ORGANIZATION` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ORGANIZATION_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION`
--

LOCK TABLES `T_ORGANIZATION` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_DB`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_ORGANIZATION_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_DB`
--

LOCK TABLES `T_ORGANIZATION_DB` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PLAN`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_ORGANIZATION_PLAN` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `PLAN_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`START_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_PLAN`
--

LOCK TABLES `T_ORGANIZATION_PLAN` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PLAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_ORGANIZATION_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLAN`
--

DROP TABLE IF EXISTS `T_PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PLAN` (
  `PLAN_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PLAN_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLAN`
--

LOCK TABLES `T_PLAN` WRITE;
/*!40000 ALTER TABLE `T_PLAN` DISABLE KEYS */;
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2023-10-23 13:46:01','system','2023-10-23 13:46:01','system');
/*!40000 ALTER TABLE `T_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLAN_ITEM`
--

DROP TABLE IF EXISTS `T_PLAN_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PLAN_ITEM` (
  `LIMIT_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LIMIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLAN_ITEM`
--

LOCK TABLES `T_PLAN_ITEM` WRITE;
/*!40000 ALTER TABLE `T_PLAN_ITEM` DISABLE KEYS */;
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2023-10-23 13:46:06','dummy','2023-10-23 13:46:06','dummy'),('platform.roles','{\"description\": \"default limit\", \"max\": 1000}','2023-10-23 13:46:01','system','2023-10-23 13:46:01','system'),('platform.users','{\"description\": \"default limit\", \"max\": 10000}','2023-10-23 13:46:01','system','2023-10-23 13:46:01','system'),('platform.workspaces','{\"description\": \"default limit\", \"max\": 1000}','2023-10-23 13:46:01','system','2023-10-23 13:46:01','system');
/*!40000 ALTER TABLE `T_PLAN_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLAN_LIMIT`
--

DROP TABLE IF EXISTS `T_PLAN_LIMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PLAN_LIMIT` (
  `PLAN_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LIMIT_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LIMIT_VALUE` int(11) NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`,`LIMIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLAN_LIMIT`
--

LOCK TABLES `T_PLAN_LIMIT` WRITE;
/*!40000 ALTER TABLE `T_PLAN_LIMIT` DISABLE KEYS */;
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2023-10-23 13:46:06','dummy','2023-10-23 13:46:06','dummy'),('_default','platform.roles',1000,'2023-10-23 13:46:01','system','2023-10-23 13:46:01','system'),('_default','platform.users',10000,'2023-10-23 13:46:01','system','2023-10-23 13:46:01','system'),('_default','platform.workspaces',100,'2023-10-23 13:46:01','system','2023-10-23 13:46:01','system');
/*!40000 ALTER TABLE `T_PLAN_LIMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLATFORM_MIGRATION_HISTORY`
--

DROP TABLE IF EXISTS `T_PLATFORM_MIGRATION_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PLATFORM_MIGRATION_HISTORY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RESULT` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MESSAGE` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2023-10-23 13:46:01','1.7.0','2023-10-23 13:46:01','1.7.0'),(2,'1.3.0','SUCCEED',NULL,'2023-10-23 13:46:02','1.7.0','2023-10-23 13:46:02','1.7.0'),(3,'1.5.0','START',NULL,'2023-10-23 13:46:02','1.7.0','2023-10-23 13:46:02','1.7.0'),(4,'1.5.0','SUCCEED',NULL,'2023-10-23 13:46:02','1.7.0','2023-10-23 13:46:02','1.7.0'),(5,'1.5.2','START',NULL,'2023-10-23 13:46:02','1.7.0','2023-10-23 13:46:02','1.7.0'),(6,'1.5.2','SUCCEED',NULL,'2023-10-23 13:46:03','1.7.0','2023-10-23 13:46:03','1.7.0'),(7,'1.6.0','START',NULL,'2023-10-23 13:46:03','1.7.0','2023-10-23 13:46:03','1.7.0'),(8,'1.6.0','SUCCEED',NULL,'2023-10-23 13:46:03','1.7.0','2023-10-23 13:46:03','1.7.0'),(9,'1.7.0','START',NULL,'2023-10-23 13:46:03','1.7.0','2023-10-23 13:46:03','1.7.0'),(10,'1.7.0','SUCCEED',NULL,'2023-10-23 13:46:03','1.7.0','2023-10-23 13:46:03','1.7.0');
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLATFORM_PRIVATE`
--

DROP TABLE IF EXISTS `T_PLATFORM_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PLATFORM_PRIVATE` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_PRIVATE`
--

LOCK TABLES `T_PLATFORM_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"f24cad3f-e51b-4a4f-96c0-aefd11f33613\", \"TOKEN_CHECK_CLIENT_SECRET\": \"mW5dnlnNNOAhrpet5sorVtepdKLhPLwr\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"d7925af5-0255-4780-85a3-74fdbcea0338\"}','2023-10-23 13:46:02','system','2023-10-23 13:46:02','system');
/*!40000 ALTER TABLE `T_PLATFORM_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLATFORM_VERSION`
--

DROP TABLE IF EXISTS `T_PLATFORM_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PLATFORM_VERSION` (
  `ID` int(11) NOT NULL,
  `VERSION` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_VERSION`
--

LOCK TABLES `T_PLATFORM_VERSION` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_VERSION` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.7.0','2023-10-23 13:45:18','system','2023-10-23 13:46:03','1.7.0');
/*!40000 ALTER TABLE `T_PLATFORM_VERSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PROCESS_QUEUE`
--

DROP TABLE IF EXISTS `T_PROCESS_QUEUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_PROCESS_QUEUE` (
  `PROCESS_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `PROCESS_KIND` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `PROCESS_EXEC_ID` varchar(26) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `WORKSPACE_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`PROCESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PROCESS_QUEUE`
--

LOCK TABLES `T_PROCESS_QUEUE` WRITE;
/*!40000 ALTER TABLE `T_PROCESS_QUEUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_PROCESS_QUEUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `T_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_REFRESH_TOKEN` (
  `USER_ID` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SESSION_ID` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-23 13:46:27
