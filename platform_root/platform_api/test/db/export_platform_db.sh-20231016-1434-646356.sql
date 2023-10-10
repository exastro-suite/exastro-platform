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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('17863497-351e-4ba9-8869-17c9af32848e',NULL,'idp-email-verification','ee20d08c-c9c2-4531-ab1f-c709672a263d','d21ac981-f23e-4634-8f62-bfb4d2ddd83c',2,10,'\0',NULL,NULL),('1b0b37bd-a071-474f-8914-fd7cf642696c',NULL,'registration-page-form','ee20d08c-c9c2-4531-ab1f-c709672a263d','cdbae8c1-9817-4733-a6d2-b270cbdfbaaa',0,10,'','240d4295-e319-41e6-9b76-01bcc27915f0',NULL),('1c3da2d6-3df3-43a5-b49f-68561d4238e8',NULL,'auth-otp-form','ee20d08c-c9c2-4531-ab1f-c709672a263d','93604571-56f0-438d-8713-099be9f59c7e',0,20,'\0',NULL,NULL),('291ca6fb-05e5-4c1a-9b65-ea4612efe4cd',NULL,'auth-spnego','ee20d08c-c9c2-4531-ab1f-c709672a263d','2067afcc-b3f6-42c0-9a79-7d6a8ec3942a',3,30,'\0',NULL,NULL),('2c485cc8-324a-4097-8a13-01bd74a55755',NULL,'conditional-user-configured','ee20d08c-c9c2-4531-ab1f-c709672a263d','93604571-56f0-438d-8713-099be9f59c7e',0,10,'\0',NULL,NULL),('3196c7b7-67c8-46f8-b64e-4bb94c1b492f',NULL,'direct-grant-validate-username','ee20d08c-c9c2-4531-ab1f-c709672a263d','2734ce80-f927-4a4e-82fa-09bb320ff254',0,10,'\0',NULL,NULL),('3b0a1ae0-5c4d-4709-8679-ab6d3c4a2e2b',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','7d550cc9-50c8-4055-8a4c-9a43a3cc0ed7',1,20,'','15e356be-2582-409f-8b46-0b47a94f0075',NULL),('3d5159d1-e82f-455a-b7fc-4ad983421eb1',NULL,'conditional-user-configured','ee20d08c-c9c2-4531-ab1f-c709672a263d','d2c45caa-aa4c-4dad-ad81-e8a6d89b486e',0,10,'\0',NULL,NULL),('45b00500-687f-4ccb-961e-af93d2584b73',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','ee72039a-7c30-4ea1-bbb2-62738d5ce6c2',0,20,'','2067afcc-b3f6-42c0-9a79-7d6a8ec3942a',NULL),('48c26219-b5fa-4132-8832-8c4c70305c14',NULL,'client-x509','ee20d08c-c9c2-4531-ab1f-c709672a263d','c96420de-23b2-464f-aae6-4c685e20e6f1',2,40,'\0',NULL,NULL),('490b966a-d98c-4899-a1c6-59042d382e40',NULL,'docker-http-basic-authenticator','ee20d08c-c9c2-4531-ab1f-c709672a263d','804ae815-be15-408a-84d5-7944457c0f1b',0,10,'\0',NULL,NULL),('4df09020-52d8-4108-be27-e1f8bcc77ac4',NULL,'client-secret','ee20d08c-c9c2-4531-ab1f-c709672a263d','c96420de-23b2-464f-aae6-4c685e20e6f1',2,10,'\0',NULL,NULL),('5495551d-3024-4a0d-ac17-d56637f359db',NULL,'registration-profile-action','ee20d08c-c9c2-4531-ab1f-c709672a263d','240d4295-e319-41e6-9b76-01bcc27915f0',0,40,'\0',NULL,NULL),('56fcc61f-d318-4f25-b40b-68b7daba9059',NULL,'idp-create-user-if-unique','ee20d08c-c9c2-4531-ab1f-c709672a263d','3c5b6b0e-29e7-4bfa-b6c1-e4a8e67229fe',2,10,'\0',NULL,'c1ee672a-ec41-43e1-bd25-900b1a6c2433'),('5d48c5d3-8e6d-4925-b456-34fbcd9bf898',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','2734ce80-f927-4a4e-82fa-09bb320ff254',1,30,'','d2c45caa-aa4c-4dad-ad81-e8a6d89b486e',NULL),('6314bcaa-09a1-4889-adf0-fb1c08f76cbf',NULL,'basic-auth','ee20d08c-c9c2-4531-ab1f-c709672a263d','2067afcc-b3f6-42c0-9a79-7d6a8ec3942a',0,10,'\0',NULL,NULL),('6e39ef1e-acfb-44e4-abd6-82120fcbb7a8',NULL,'reset-credential-email','ee20d08c-c9c2-4531-ab1f-c709672a263d','5a6c8e2e-06a4-43c9-ad4c-153d724feacd',0,20,'\0',NULL,NULL),('71b78826-9caf-458c-b34d-ed93e3266634',NULL,'idp-username-password-form','ee20d08c-c9c2-4531-ab1f-c709672a263d','7d550cc9-50c8-4055-8a4c-9a43a3cc0ed7',0,10,'\0',NULL,NULL),('74af0b9a-f9f3-44d0-a2d7-64ecb78705f2',NULL,'conditional-user-configured','ee20d08c-c9c2-4531-ab1f-c709672a263d','15e356be-2582-409f-8b46-0b47a94f0075',0,10,'\0',NULL,NULL),('7cde4a80-3e9e-4883-8663-40f5ca4dad0b',NULL,'idp-review-profile','ee20d08c-c9c2-4531-ab1f-c709672a263d','6abb4715-eaf9-49ec-ac4c-c8a79e6746c2',0,10,'\0',NULL,'1ecb9905-5eb1-430b-b796-eea179cf6a89'),('83339910-7223-4e19-8825-143e450f6e38',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','9ed79691-5152-4301-87b2-f2652b803c39',2,30,'','dc045812-af17-4201-8fb7-ed045fe33e3e',NULL),('863bdd79-f8fa-460f-bb9d-00981b27945d',NULL,'auth-spnego','ee20d08c-c9c2-4531-ab1f-c709672a263d','9ed79691-5152-4301-87b2-f2652b803c39',3,20,'\0',NULL,NULL),('880dae4c-530a-4e05-bd7b-604e22025f61',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','5a6c8e2e-06a4-43c9-ad4c-153d724feacd',1,40,'','ba73546d-4765-44c6-97ab-0301788da8db',NULL),('90590184-58eb-421f-abad-e27ca8cd4e66',NULL,'registration-password-action','ee20d08c-c9c2-4531-ab1f-c709672a263d','240d4295-e319-41e6-9b76-01bcc27915f0',0,50,'\0',NULL,NULL),('98c0ec5a-5859-4b48-8c5c-43b5565ff4f3',NULL,'no-cookie-redirect','ee20d08c-c9c2-4531-ab1f-c709672a263d','ee72039a-7c30-4ea1-bbb2-62738d5ce6c2',0,10,'\0',NULL,NULL),('9d69f909-653d-469a-ba83-ec845ed6cbad',NULL,'auth-cookie','ee20d08c-c9c2-4531-ab1f-c709672a263d','9ed79691-5152-4301-87b2-f2652b803c39',2,10,'\0',NULL,NULL),('a07bf79b-3712-4db2-803b-7a744defaaab',NULL,'auth-otp-form','ee20d08c-c9c2-4531-ab1f-c709672a263d','15e356be-2582-409f-8b46-0b47a94f0075',0,20,'\0',NULL,NULL),('a8ba2216-de4f-4bcf-9165-7b458a00d7e1',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','dc045812-af17-4201-8fb7-ed045fe33e3e',1,20,'','93604571-56f0-438d-8713-099be9f59c7e',NULL),('a9178def-7616-40e6-adbd-330eb0e5a529',NULL,'registration-user-creation','ee20d08c-c9c2-4531-ab1f-c709672a263d','240d4295-e319-41e6-9b76-01bcc27915f0',0,20,'\0',NULL,NULL),('ac6a6bf7-b529-4da5-9545-1f7b6b38541e',NULL,'client-secret-jwt','ee20d08c-c9c2-4531-ab1f-c709672a263d','c96420de-23b2-464f-aae6-4c685e20e6f1',2,30,'\0',NULL,NULL),('b0f89346-55b8-4555-be6a-3fb9e969b0d2',NULL,'basic-auth-otp','ee20d08c-c9c2-4531-ab1f-c709672a263d','2067afcc-b3f6-42c0-9a79-7d6a8ec3942a',3,20,'\0',NULL,NULL),('b2013484-4e19-4140-adeb-f112ea599541',NULL,'identity-provider-redirector','ee20d08c-c9c2-4531-ab1f-c709672a263d','9ed79691-5152-4301-87b2-f2652b803c39',2,25,'\0',NULL,NULL),('b250b55f-6a41-4990-a3aa-fdba31c290b5',NULL,'reset-password','ee20d08c-c9c2-4531-ab1f-c709672a263d','5a6c8e2e-06a4-43c9-ad4c-153d724feacd',0,30,'\0',NULL,NULL),('c1d9415c-0587-4aab-8703-ab26eecb5dbc',NULL,'direct-grant-validate-password','ee20d08c-c9c2-4531-ab1f-c709672a263d','2734ce80-f927-4a4e-82fa-09bb320ff254',0,20,'\0',NULL,NULL),('c6561537-8c38-4fc1-848b-6339247f6b01',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','3c5b6b0e-29e7-4bfa-b6c1-e4a8e67229fe',2,20,'','bf3cf8af-6b04-4dc6-9f93-2fd19862fc30',NULL),('cfd72ece-0edb-405d-8086-b02277b79af2',NULL,'client-jwt','ee20d08c-c9c2-4531-ab1f-c709672a263d','c96420de-23b2-464f-aae6-4c685e20e6f1',2,20,'\0',NULL,NULL),('d1d42802-1235-47e5-a4e0-fa88419cd245',NULL,'direct-grant-validate-otp','ee20d08c-c9c2-4531-ab1f-c709672a263d','d2c45caa-aa4c-4dad-ad81-e8a6d89b486e',0,20,'\0',NULL,NULL),('d34eac9b-5fd3-41f4-8093-53b311508e1e',NULL,'idp-confirm-link','ee20d08c-c9c2-4531-ab1f-c709672a263d','bf3cf8af-6b04-4dc6-9f93-2fd19862fc30',0,10,'\0',NULL,NULL),('d5bc5aac-e01a-4020-9643-455e6cd58a54',NULL,'auth-username-password-form','ee20d08c-c9c2-4531-ab1f-c709672a263d','dc045812-af17-4201-8fb7-ed045fe33e3e',0,10,'\0',NULL,NULL),('d692a5f6-4e67-4ec1-bad1-7504e87cb4cf',NULL,'reset-credentials-choose-user','ee20d08c-c9c2-4531-ab1f-c709672a263d','5a6c8e2e-06a4-43c9-ad4c-153d724feacd',0,10,'\0',NULL,NULL),('d8fc1b75-4da1-4985-803f-78fd24e49f13',NULL,'conditional-user-configured','ee20d08c-c9c2-4531-ab1f-c709672a263d','ba73546d-4765-44c6-97ab-0301788da8db',0,10,'\0',NULL,NULL),('dbe5e159-0c6e-4030-930d-52938f0dfe31',NULL,'reset-otp','ee20d08c-c9c2-4531-ab1f-c709672a263d','ba73546d-4765-44c6-97ab-0301788da8db',0,20,'\0',NULL,NULL),('dc47053b-594f-493d-b1d3-d000abc8b005',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','6abb4715-eaf9-49ec-ac4c-c8a79e6746c2',0,20,'','3c5b6b0e-29e7-4bfa-b6c1-e4a8e67229fe',NULL),('de8ed071-8289-4114-a4a8-f0a803aa0e26',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','bf3cf8af-6b04-4dc6-9f93-2fd19862fc30',0,20,'','d21ac981-f23e-4634-8f62-bfb4d2ddd83c',NULL),('e1c8abf9-e9f5-430b-b775-cc2d77ae88ae',NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','d21ac981-f23e-4634-8f62-bfb4d2ddd83c',2,20,'','7d550cc9-50c8-4055-8a4c-9a43a3cc0ed7',NULL),('e35e0e67-e5ac-4548-be58-0d635126aa48',NULL,'http-basic-authenticator','ee20d08c-c9c2-4531-ab1f-c709672a263d','4c96f8c7-4304-41c6-bc58-1fa05c0c148e',0,10,'\0',NULL,NULL),('f5d09570-7511-4ef8-a5bc-cdee176bdb01',NULL,'registration-recaptcha-action','ee20d08c-c9c2-4531-ab1f-c709672a263d','240d4295-e319-41e6-9b76-01bcc27915f0',3,60,'\0',NULL,NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('15e356be-2582-409f-8b46-0b47a94f0075','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('2067afcc-b3f6-42c0-9a79-7d6a8ec3942a','Authentication Options','Authentication options.','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('240d4295-e319-41e6-9b76-01bcc27915f0','registration form','registration form','ee20d08c-c9c2-4531-ab1f-c709672a263d','form-flow','\0',''),('2734ce80-f927-4a4e-82fa-09bb320ff254','direct grant','OpenID Connect Resource Owner Grant','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('3c5b6b0e-29e7-4bfa-b6c1-e4a8e67229fe','User creation or linking','Flow for the existing/non-existing user alternatives','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('4c96f8c7-4304-41c6-bc58-1fa05c0c148e','saml ecp','SAML ECP Profile Authentication Flow','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('5a6c8e2e-06a4-43c9-ad4c-153d724feacd','reset credentials','Reset credentials for a user if they forgot their password or something','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('6abb4715-eaf9-49ec-ac4c-c8a79e6746c2','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('7d550cc9-50c8-4055-8a4c-9a43a3cc0ed7','Verify Existing Account by Re-authentication','Reauthentication of existing account','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('804ae815-be15-408a-84d5-7944457c0f1b','docker auth','Used by Docker clients to authenticate against the IDP','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('93604571-56f0-438d-8713-099be9f59c7e','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('9ed79691-5152-4301-87b2-f2652b803c39','browser','browser based authentication','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('ba73546d-4765-44c6-97ab-0301788da8db','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('bf3cf8af-6b04-4dc6-9f93-2fd19862fc30','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('c96420de-23b2-464f-aae6-4c685e20e6f1','clients','Base authentication for clients','ee20d08c-c9c2-4531-ab1f-c709672a263d','client-flow','',''),('cdbae8c1-9817-4733-a6d2-b270cbdfbaaa','registration','registration flow','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','',''),('d21ac981-f23e-4634-8f62-bfb4d2ddd83c','Account verification options','Method with which to verity the existing account','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('d2c45caa-aa4c-4dad-ad81-e8a6d89b486e','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('dc045812-af17-4201-8fb7-ed045fe33e3e','forms','Username, password, otp and other auth forms.','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','\0',''),('ee72039a-7c30-4ea1-bbb2-62738d5ce6c2','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','ee20d08c-c9c2-4531-ab1f-c709672a263d','basic-flow','','');
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('1ecb9905-5eb1-430b-b796-eea179cf6a89','review profile config','ee20d08c-c9c2-4531-ab1f-c709672a263d'),('c1ee672a-ec41-43e1-bd25-900b1a6c2433','create unique user config','ee20d08c-c9c2-4531-ab1f-c709672a263d');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('1ecb9905-5eb1-430b-b796-eea179cf6a89','missing','update.profile.on.first.login'),('c1ee672a-ec41-43e1-bd25-900b1a6c2433','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('12c65874-86cd-4e6e-a721-d52bc40bb1ae','','','_platform-api',0,'',NULL,NULL,'\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('24231764-2288-4783-8d8a-affe2da884d0','','\0','master-realm',0,'\0',NULL,NULL,'',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','','\0','account-console',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','','\0','account',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','','','_platform',0,'\0','PPPmiKGtlHoC6F3UFO6VXGh8jH1j5NgS',NULL,'\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('7d198b4e-a365-4285-a351-fc9e2c91fc90','','\0','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('8777a869-ec55-42d3-89bf-24f744f1e61d','','\0','_platform-console',0,'','JFo6MzsvG7RtYERnmoUKwZm67og8rQY2',NULL,'\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','','\0'),('d6636d19-1143-45b1-a31b-852c80a23a15','','\0','security-admin-console',0,'',NULL,'/admin/master/console/','\0',NULL,'\0','ee20d08c-c9c2-4531-ab1f-c709672a263d','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0');
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('12c65874-86cd-4e6e-a721-d52bc40bb1ae','access.token.lifespan','86400'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','acr.loa.map','{}'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','backchannel.logout.revoke.offline.tokens','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','backchannel.logout.session.required','true'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','client.session.idle.timeout','86400'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','client.session.max.lifespan','86400'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','client_credentials.use_refresh_token','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','display.on.consent.screen','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','exclude.session.state.from.auth.response','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','frontchannel.logout.session.required','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','id.token.as.detached.signature','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','oauth2.device.authorization.grant.enabled','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','oidc.ciba.grant.enabled','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','require.pushed.authorization.requests','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.allow.ecp.flow','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.artifact.binding','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.assertion.signature','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.authnstatement','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.client.signature','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.encrypt','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.force.post.binding','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.multivalued.roles','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.onetimeuse.condition','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.server.signature','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml.server.signature.keyinfo.ext','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','saml_force_name_id_format','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','tls.client.certificate.bound.access.tokens','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','token.response.type.bearer.lower-case','false'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','use.refresh.tokens','true'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','pkce.code.challenge.method','S256'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','post.logout.redirect.uris','+'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','post.logout.redirect.uris','+'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','backchannel.logout.revoke.offline.tokens','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','backchannel.logout.session.required','true'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','client.secret.creation.time','1697434386'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','client_credentials.use_refresh_token','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','display.on.consent.screen','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','exclude.session.state.from.auth.response','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','id.token.as.detached.signature','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','oauth2.device.authorization.grant.enabled','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','oidc.ciba.grant.enabled','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','require.pushed.authorization.requests','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.artifact.binding','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.assertion.signature','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.authnstatement','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.client.signature','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.encrypt','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.force.post.binding','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.multivalued.roles','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.onetimeuse.condition','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.server.signature','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml.server.signature.keyinfo.ext','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','saml_force_name_id_format','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','tls.client.certificate.bound.access.tokens','false'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','use.refresh.tokens','true'),('8777a869-ec55-42d3-89bf-24f744f1e61d','backchannel.logout.revoke.offline.tokens','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','backchannel.logout.session.required','true'),('8777a869-ec55-42d3-89bf-24f744f1e61d','client.secret.creation.time','1697434387'),('8777a869-ec55-42d3-89bf-24f744f1e61d','client_credentials.use_refresh_token','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','display.on.consent.screen','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','exclude.session.state.from.auth.response','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','id.token.as.detached.signature','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','oauth2.device.authorization.grant.enabled','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','oidc.ciba.grant.enabled','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','post.logout.redirect.uris','/*'),('8777a869-ec55-42d3-89bf-24f744f1e61d','require.pushed.authorization.requests','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.artifact.binding','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.assertion.signature','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.authnstatement','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.client.signature','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.encrypt','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.force.post.binding','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.multivalued.roles','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.onetimeuse.condition','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.server.signature','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml.server.signature.keyinfo.ext','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','saml_force_name_id_format','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','tls.client.certificate.bound.access.tokens','false'),('8777a869-ec55-42d3-89bf-24f744f1e61d','use.refresh.tokens','true'),('d6636d19-1143-45b1-a31b-852c80a23a15','pkce.code.challenge.method','S256'),('d6636d19-1143-45b1-a31b-852c80a23a15','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('8659c1af-960d-42e4-bf68-5248e94e47d4','address','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect built-in scope: address','openid-connect'),('981f482c-38b4-471b-87a1-cf522ff6e5e4','roles','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect scope for add user roles to the access token','openid-connect'),('b227e84e-342c-4e15-92a3-657f7fd0817d','microprofile-jwt','ee20d08c-c9c2-4531-ab1f-c709672a263d','Microprofile - JWT built-in scope','openid-connect'),('b97b34a2-c25a-4068-b95a-553f05dfa725','role_list','ee20d08c-c9c2-4531-ab1f-c709672a263d','SAML role list','saml'),('c5d989c5-8e32-4d06-8ed4-d8ab6b72230b','profile','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect built-in scope: profile','openid-connect'),('c6d3d65c-0780-41a6-9ab5-4f33f7592c2d','email','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect built-in scope: email','openid-connect'),('d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','phone','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect built-in scope: phone','openid-connect'),('d68f694a-6e98-4496-9fcf-a22d0f4cd2d9','web-origins','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('ef4f2031-f75e-4d2c-a541-5cafde2b9971','acr','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('f56e55d8-a64a-4913-9241-fc635cd2fe94','offline_access','ee20d08c-c9c2-4531-ab1f-c709672a263d','OpenID Connect built-in scope: offline_access','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('8659c1af-960d-42e4-bf68-5248e94e47d4','${addressScopeConsentText}','consent.screen.text'),('8659c1af-960d-42e4-bf68-5248e94e47d4','true','display.on.consent.screen'),('8659c1af-960d-42e4-bf68-5248e94e47d4','true','include.in.token.scope'),('981f482c-38b4-471b-87a1-cf522ff6e5e4','${rolesScopeConsentText}','consent.screen.text'),('981f482c-38b4-471b-87a1-cf522ff6e5e4','true','display.on.consent.screen'),('981f482c-38b4-471b-87a1-cf522ff6e5e4','false','include.in.token.scope'),('b227e84e-342c-4e15-92a3-657f7fd0817d','false','display.on.consent.screen'),('b227e84e-342c-4e15-92a3-657f7fd0817d','true','include.in.token.scope'),('b97b34a2-c25a-4068-b95a-553f05dfa725','${samlRoleListScopeConsentText}','consent.screen.text'),('b97b34a2-c25a-4068-b95a-553f05dfa725','true','display.on.consent.screen'),('c5d989c5-8e32-4d06-8ed4-d8ab6b72230b','${profileScopeConsentText}','consent.screen.text'),('c5d989c5-8e32-4d06-8ed4-d8ab6b72230b','true','display.on.consent.screen'),('c5d989c5-8e32-4d06-8ed4-d8ab6b72230b','true','include.in.token.scope'),('c6d3d65c-0780-41a6-9ab5-4f33f7592c2d','${emailScopeConsentText}','consent.screen.text'),('c6d3d65c-0780-41a6-9ab5-4f33f7592c2d','true','display.on.consent.screen'),('c6d3d65c-0780-41a6-9ab5-4f33f7592c2d','true','include.in.token.scope'),('d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','${phoneScopeConsentText}','consent.screen.text'),('d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','true','display.on.consent.screen'),('d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','true','include.in.token.scope'),('d68f694a-6e98-4496-9fcf-a22d0f4cd2d9','','consent.screen.text'),('d68f694a-6e98-4496-9fcf-a22d0f4cd2d9','false','display.on.consent.screen'),('d68f694a-6e98-4496-9fcf-a22d0f4cd2d9','false','include.in.token.scope'),('ef4f2031-f75e-4d2c-a541-5cafde2b9971','false','display.on.consent.screen'),('ef4f2031-f75e-4d2c-a541-5cafde2b9971','false','include.in.token.scope'),('f56e55d8-a64a-4913-9241-fc635cd2fe94','${offlineAccessScopeConsentText}','consent.screen.text'),('f56e55d8-a64a-4913-9241-fc635cd2fe94','true','display.on.consent.screen');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('12c65874-86cd-4e6e-a721-d52bc40bb1ae','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('12c65874-86cd-4e6e-a721-d52bc40bb1ae','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('24231764-2288-4783-8d8a-affe2da884d0','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('24231764-2288-4783-8d8a-affe2da884d0','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('24231764-2288-4783-8d8a-affe2da884d0','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('24231764-2288-4783-8d8a-affe2da884d0','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('24231764-2288-4783-8d8a-affe2da884d0','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('24231764-2288-4783-8d8a-affe2da884d0','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('24231764-2288-4783-8d8a-affe2da884d0','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('24231764-2288-4783-8d8a-affe2da884d0','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('24231764-2288-4783-8d8a-affe2da884d0','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('313a1f93-99d5-480d-90e5-2490b4f21ddd','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('313a1f93-99d5-480d-90e5-2490b4f21ddd','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('313a1f93-99d5-480d-90e5-2490b4f21ddd','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('313a1f93-99d5-480d-90e5-2490b4f21ddd','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('313a1f93-99d5-480d-90e5-2490b4f21ddd','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('56a97974-53c7-4f0e-a375-b47b934bb8c0','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('56a97974-53c7-4f0e-a375-b47b934bb8c0','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('56a97974-53c7-4f0e-a375-b47b934bb8c0','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('56a97974-53c7-4f0e-a375-b47b934bb8c0','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('56a97974-53c7-4f0e-a375-b47b934bb8c0','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('72d458b4-ffae-4a92-a4f6-ab93da84e8c0','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('7ce260a4-a1e8-4939-b9ca-90ea5dff8182','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('7d198b4e-a365-4285-a351-fc9e2c91fc90','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('7d198b4e-a365-4285-a351-fc9e2c91fc90','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('7d198b4e-a365-4285-a351-fc9e2c91fc90','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('7d198b4e-a365-4285-a351-fc9e2c91fc90','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('7d198b4e-a365-4285-a351-fc9e2c91fc90','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('7d198b4e-a365-4285-a351-fc9e2c91fc90','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('7d198b4e-a365-4285-a351-fc9e2c91fc90','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('7d198b4e-a365-4285-a351-fc9e2c91fc90','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('7d198b4e-a365-4285-a351-fc9e2c91fc90','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('8777a869-ec55-42d3-89bf-24f744f1e61d','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('8777a869-ec55-42d3-89bf-24f744f1e61d','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('8777a869-ec55-42d3-89bf-24f744f1e61d','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('8777a869-ec55-42d3-89bf-24f744f1e61d','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('8777a869-ec55-42d3-89bf-24f744f1e61d','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('8777a869-ec55-42d3-89bf-24f744f1e61d','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('8777a869-ec55-42d3-89bf-24f744f1e61d','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('8777a869-ec55-42d3-89bf-24f744f1e61d','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0'),('d6636d19-1143-45b1-a31b-852c80a23a15','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('d6636d19-1143-45b1-a31b-852c80a23a15','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('d6636d19-1143-45b1-a31b-852c80a23a15','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('d6636d19-1143-45b1-a31b-852c80a23a15','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('d6636d19-1143-45b1-a31b-852c80a23a15','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('d6636d19-1143-45b1-a31b-852c80a23a15','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('d6636d19-1143-45b1-a31b-852c80a23a15','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('d6636d19-1143-45b1-a31b-852c80a23a15','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('d6636d19-1143-45b1-a31b-852c80a23a15','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0');
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('f56e55d8-a64a-4913-9241-fc635cd2fe94','2057f673-5837-4a20-99d8-c037f27dac72');
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
INSERT INTO `COMPONENT` VALUES ('08422f45-c833-47ca-bf25-75a439ce4f2c','Allowed Protocol Mapper Types','ee20d08c-c9c2-4531-ab1f-c709672a263d','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','anonymous'),('0c4b6225-7ba8-4a76-8d5b-dd68a51ff29f','rsa-generated','ee20d08c-c9c2-4531-ab1f-c709672a263d','rsa-generated','org.keycloak.keys.KeyProvider','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL),('2913c7d4-546a-4a86-a470-bd6c3b073d80','Allowed Client Scopes','ee20d08c-c9c2-4531-ab1f-c709672a263d','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','anonymous'),('2cdfe38a-5f3c-4ccd-8832-5f347073f87e','Max Clients Limit','ee20d08c-c9c2-4531-ab1f-c709672a263d','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','anonymous'),('60331745-a11d-4d17-9674-1a195f4512ae','rsa-enc-generated','ee20d08c-c9c2-4531-ab1f-c709672a263d','rsa-enc-generated','org.keycloak.keys.KeyProvider','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL),('67986ae7-ca4f-4b53-9b4b-73529956483f','hmac-generated','ee20d08c-c9c2-4531-ab1f-c709672a263d','hmac-generated','org.keycloak.keys.KeyProvider','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL),('696a9816-643f-4e22-b447-792fcb2a2f50','Allowed Protocol Mapper Types','ee20d08c-c9c2-4531-ab1f-c709672a263d','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','authenticated'),('880cfd47-d25d-4017-9542-a74e5c5aff2b','Allowed Client Scopes','ee20d08c-c9c2-4531-ab1f-c709672a263d','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','authenticated'),('9cf40e7a-bd97-4426-a696-4550f87a99d1','Full Scope Disabled','ee20d08c-c9c2-4531-ab1f-c709672a263d','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','anonymous'),('b0384ec9-0612-4304-b9a4-fd58d095135a','aes-generated','ee20d08c-c9c2-4531-ab1f-c709672a263d','aes-generated','org.keycloak.keys.KeyProvider','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL),('c282a9f4-d6ee-4030-8180-67e569fb4c39','Trusted Hosts','ee20d08c-c9c2-4531-ab1f-c709672a263d','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','anonymous'),('d9647b66-4c17-49d0-8d85-a17e5908543b','Consent Required','ee20d08c-c9c2-4531-ab1f-c709672a263d','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('05ea8190-2901-4efa-a95f-0c27c6a64ba4','67986ae7-ca4f-4b53-9b4b-73529956483f','secret','GfKwyy2gtfl2KGv_O6WejFdUE3g0w_Db9GSuT7ajHD5WstJFSbyoVulZPkC5WhQejnb211hYh7cQlYF-0WLwvA'),('0908f566-163e-4622-aae7-212877792be4','0c4b6225-7ba8-4a76-8d5b-dd68a51ff29f','privateKey','MIIEpAIBAAKCAQEA0gKK4pOaR0DIQ0QmH/fBQhKnnS9vc57QV1OLbbplRs0C1vBQvizF5AH3UKT+3l4Z0W8Mo1/Y5m4f0keWiAEpaX6IKjdvo/egGVEyo/7MDDDbcWXaxSvNlrAHpjrf5C0b4M55Mxw2p36h/HrZWBeiOeBzKafr4ZQ8nzqch2uEh2tC/6550UHzmpBMXK9F+PuDU9azxemVK7axk/1mHsrXdkkxjAJNhnXOfv2ERfERVb94GFoEvFErsJqDPulmMPhKvawRbtAKXISIyrmnTOdS1BFrRw5oQj8KgTOJsycSuqLqjVS9Q9K59vF/bdq9bxFi5NiKJIxdnfalJZov0xzbDwIDAQABAoIBAApScqtums4haoEX4pHUARfeHTFAyXG9iWWevG3RFApAqFY9Kz11q5JTNb8tJOkevJZ1Jqy0WM+r86dyZP0xUBeYea6C2VtjSpID/NZfqdLNkfOcZdN8HYI9tlqJbpi4o4lPTK4M7HNwv3B5RKErpDRuX5VZZLgf1kJImgnz6Gh+xR/fLs6cjzGsDfGQju9F0k5wJCD0se1apNxokEhwZ5iEg9hncLzvr30edmtkBGYR8+7aaflG3nPQ/mEPEHvqTsmlCBvR4QoPpeOVr8u3yCqnCmeoxrZ+dDtaHWAlRDE2Z2mrIMnsq1menyQPN7rb9UuMen1kr9lWOX6fPCvcaWECgYEA+WfsyMSNv0wa2A/qVBVdXlObSbfZpEZUgF3T73U3rbiAOpm1tUCubM4aCQcOZVD/ja0uC3Twqj8eu6ykqVT43xSYidJ9teqGDAT1H6lXhfVhjHZiBrMWfzknPdIE787r2VJpT58G9Gs0FAUpAzQpjfJ05qAeOKIsxfE62zxmnC8CgYEA14/4XnPRt84I+dVwQHaBcrFibkyRz7LHfdxBitJ52QPOa2VhvKe149UbM/7OxGI8i16ZunBwHgvCvA6BLK5sKj5esTor+0DdNHIWpkip1liElCxAy9kOZG8VBT7toUleMRtaErvz7JI+7cJJSdjpfQ+ZzCOM3ledgxslxIitlyECgYEAuN77Gprvw0QjhdLOTMOFcT0iF5PLJUTosDpctdw6iHABxO5ZTeCDKq3fiJ+NYTaYJ6mePunQ1zFwk4bWi5or3BhFNawseOM9t70ZAf4hnW+VfmvmH7cyTt3Lo7yA4k2Mb4vx+g4UNqsccFae3vwUbV6ynp1DqZE1BQjaKtZr7QsCgYAZoRR2pm6Y2/ZVPftKrsxVRqHdW106xJbTcAya5Mt38evo+PTV6VrG69+AHxuWXde0+lpswFGUQPG2SkMxfMt/ekrn53KzPNMQGUB4JMuMoJmixGAv3G7JoittpD28n2yDiiz7bT1jM0AoJKFyFkgshl5S1yc4iFJB9EhZRabeAQKBgQDBHAUpsZIhmuX42TVpkhnGtgj2EmyGesorXb2pM5B9KqRcpjJ3eBnwP3NKz/hX+goQEtrW2tMU8963EUOhHEq6vDB6u81/TLzH/Q1Zg95hwFbHmlGmNaCOEPSj1P7m9E6D0Da2HkABTPGhQW1DWVyzu4ciV5j61kZG/W8idiCIUQ=='),('129a6422-ce79-4a86-9fc2-2cbee5b9455e','b0384ec9-0612-4304-b9a4-fd58d095135a','secret','rdrDdXZjCczt_fQ6dQf4Zg'),('27dd4102-ced4-4fad-aef4-c464b9d56455','b0384ec9-0612-4304-b9a4-fd58d095135a','kid','d91ed628-3177-436f-b139-7ebbc2d069ea'),('29966081-439f-44b0-abe1-df82c0a3e8c0','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','saml-user-property-mapper'),('31e749bb-8d4a-4d3a-8ff9-e9d3ab0182d6','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('3f2c8434-6de3-4d70-92c8-64bef2ead151','60331745-a11d-4d17-9674-1a195f4512ae','keyUse','ENC'),('4321b86c-6ff7-48c4-9c81-2aa9c77dcaf6','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','saml-role-list-mapper'),('4a08ca10-cfa2-4104-bbe6-0ac90b3855c3','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','saml-user-property-mapper'),('4e4c1d23-16a2-4cc3-97da-13002c3c0fdd','60331745-a11d-4d17-9674-1a195f4512ae','certificate','MIICmzCCAYMCBgGLNvk0bzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDE2MDUzMTIzWhcNMzMxMDE2MDUzMzAzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC6tdvkw7TMkFubA7x/IKapm8KhS9bs6VrPE4KdCAms0zdYn6DNdjuqAVqmMVWKRxLPNhFgHNBdYI+Bic1LeGaJduwuuMlXbs16C8KbinRUkejnNMyItcnh0vEgxd0caNpZacS12olSVDS9SksZZ05DHr40N8BIfKGpRV1pIcJZJP5D7ZT4wnomZXDieIFU40sb0cQuzuEsqiZSTTH/ixKZZhq3ZoQwaBd1wm8RAQOQ7fen0ABiSzPSsjoDD54w3h0iOckbTE8xLU0v2yC3T8ebpjeyztxNPGuU5CTcAR2YI/ykBd363ghFx5ah2J7RULgb2k1E8OzO628dvAMOwqMNAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAByqZxJS10QdLr/WchE/DSdiEYsRvBurEYNPPlWt0F0/U2ng5HE/agiuhpnMJa7daQEseaVRVyB3YkxFUsg2aglax8A55TZgAnvNtyXaXBZsupgK06dczZk7x5uRBkp6CW/1Rg50ArCcmgRhI/8enwhMO8mHTjnizqy20mjSrzoKvWOnzRZEKEZanXpWdpBUtyt1d81l9LvkBmCeHoOyTGGDrEs5jr5QNX5mykDZy54iHiTmozg6CUOeW4SoFv6ZZofJXnws2LAv5rTIPSzbOmYBMs97ennpj+Nt2u0QsBBnR157weV4v3jG6mEYSVg5tT6rX+wlbWImMPiD39zRrg='),('5707a177-1bb6-449d-ad06-2c82f37aca44','67986ae7-ca4f-4b53-9b4b-73529956483f','priority','100'),('5e487973-11ec-4880-8080-7a0e44392422','0c4b6225-7ba8-4a76-8d5b-dd68a51ff29f','certificate','MIICmzCCAYMCBgGLNvkzvjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDE2MDUzMTIzWhcNMzMxMDE2MDUzMzAzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDSAorik5pHQMhDRCYf98FCEqedL29zntBXU4ttumVGzQLW8FC+LMXkAfdQpP7eXhnRbwyjX9jmbh/SR5aIASlpfogqN2+j96AZUTKj/swMMNtxZdrFK82WsAemOt/kLRvgznkzHDanfqH8etlYF6I54HMpp+vhlDyfOpyHa4SHa0L/rnnRQfOakExcr0X4+4NT1rPF6ZUrtrGT/WYeytd2STGMAk2Gdc5+/YRF8RFVv3gYWgS8USuwmoM+6WYw+Eq9rBFu0ApchIjKuadM51LUEWtHDmhCPwqBM4mzJxK6ouqNVL1D0rn28X9t2r1vEWLk2IokjF2d9qUlmi/THNsPAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGWtIKcrqGN6XufPRY+g7sTUx5Yr5m5QWl+d/QyHnjMfyLHN4zOwCttUtwR8sJ5K8r2JhT1z4t1jz4ipOkDfRvIjDEWOQGp7Q3fB/bBknNKg8gZqqNNW8E67/I6D+l6LF36RvKdb4vJUqtzNesMol3c4eUU9hhZ2yXU0KXoIpQrwEX5luMPuSecjkN/4y+kZX20FOUFN2yjdijR3mZdqizqomrNbZRAUFoDsGYd1n/MXuuWh038PvVUSx74apargr9W/syJDGkVZVVEIQMibSuBdgqCNSC+3TzjvdqRpuzb+tpj3I6rr8qkwuGHGVV2k+cpd7X3LLW2TbDwRA0xrTyQ='),('606f20d7-a470-4303-800c-85c16581acc7','0c4b6225-7ba8-4a76-8d5b-dd68a51ff29f','priority','100'),('611d0e23-a529-4cf6-a0cd-4f1f45f395a3','0c4b6225-7ba8-4a76-8d5b-dd68a51ff29f','keyUse','SIG'),('66faf89e-eab4-4f40-a357-f5ff0be8ad47','2913c7d4-546a-4a86-a470-bd6c3b073d80','allow-default-scopes','true'),('6d2dc91f-a9b3-4c69-b411-5f237802d731','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('7666c7e6-9f6d-4309-9f77-3db55f55687c','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('8b36aff3-b610-4d36-919d-4fd13d48a3c8','60331745-a11d-4d17-9674-1a195f4512ae','privateKey','MIIEpAIBAAKCAQEAurXb5MO0zJBbmwO8fyCmqZvCoUvW7OlazxOCnQgJrNM3WJ+gzXY7qgFapjFVikcSzzYRYBzQXWCPgYnNS3hmiXbsLrjJV27NegvCm4p0VJHo5zTMiLXJ4dLxIMXdHGjaWWnEtdqJUlQ0vUpLGWdOQx6+NDfASHyhqUVdaSHCWST+Q+2U+MJ6JmVw4niBVONLG9HELs7hLKomUk0x/4sSmWYat2aEMGgXdcJvEQEDkO33p9AAYksz0rI6Aw+eMN4dIjnJG0xPMS1NL9sgt0/Hm6Y3ss7cTTxrlOQk3AEdmCP8pAXd+t4IRceWodie0VC4G9pNRPDszutvHbwDDsKjDQIDAQABAoIBAANkoK1knRmGmhOUGs3Yow68BOp3fV1q1DqlKR9/cOWSJRRYOkzhlC3/vkz84ogTyJS5b9FmVKcNxS3eejuf4YUoAxzKQOZ03gkUw6Gd/4U17ZyeCgWGADg5ZCZrUhxdD3LGiEuhwBMd8qNqATlh9jskCOLcDIOEuE9iMlNhyK1kBbifG1M5BY10RRM32k8DqNp5o+YmRFR1UE3GTTqgKz09UnSzimDYmP2IEPxHfzrf5jxpXP0UB0vz50IASEyTa/lHfm4b794C1Ypa4g9je9veft9ixx4pXc8/Ouos8WvoUFD6bObWU92jBghvBtCMLcR/gQm8TBOKmP0u0PfvUEECgYEA87rH5tuxkNdjXA0xN95I+FWppB+fsEZPHssEHml5RLh1CFy3kOB2UMjdCkkWS43UdpTTXoTI7kTxA0/JS4CMPcopD8FK34o6kjIzpCzC3hlcVjbb0oqgnt6yE5u2jBmqHo8Tf0zWCJS9AyrFdw5h+1If/GRftuqmgAenaz9ruZECgYEAxBw08+ZlN+BZc03g3BWrVRwHX4NvJEbxU9CqqTQvENqWbiGCOYQubQPv0Jv23HkTrUk9Pq43muQeq2+qbEw3Gd+YasRTHtgFGOGezKhPmXkvSHfwx8jz7via7Q2YQA/WB+70+ZlY4dJhsy3EAISZjSO7RoIiVtAibbx9dC62870CgYEA0np2r3MCAOdAsvnhizG3Kl4vxcBZk0zkft8ri2fiheoVh0cqbz6oblNIL922F0FAPbeAYZuiOcHnsMhyOXWlpqaylxyBoFIrCp234wuUrWCRURLG+yckVo5SkoRiPNLdCs7cM48TNw3bvKRvKsWM8BCX9spnrfsuFlqFxiRaz0ECgYEAujJN1IUb9UF9rIx0woGQeu5x0a3pCHiTCRFF+AEj7sybp1UJX7KwobDrMRXj/NC4bf7rt2eSQ+3zcLJFDS4P4vD4teZRRSe1LzqIm6fya7Uzv4qhgg66DFrePdR6idh/TmkDDzkZus8VFBqPzi4X3HnghcFo+SQEjEw6kOUJr8ECgYArLBzssdftVHyXiIT21TigpwJeiUiJk5gdrrasiueRLk11mcP1IRXrURlnHX0bXa/xcq54ePbK6GzihvTthYfk7bo52YkCQ+E1rwfUnwoPuT1/rJjd9Ef+7znv68FTwdbQfhRLFAlAe9lrmri6zNDMT/R0IpsuFbvLlC9woedcPQ=='),('8cf4efd8-64d6-46b9-806f-7abafd7cdf13','880cfd47-d25d-4017-9542-a74e5c5aff2b','allow-default-scopes','true'),('91b52522-1611-4820-8928-e9adcc57ab63','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a2932103-e15e-46e8-83a5-b3834b8fd7a2','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a983245d-1079-45d0-8574-7afefcd4ac02','2cdfe38a-5f3c-4ccd-8832-5f347073f87e','max-clients','200'),('a9d79b40-eca7-4f4b-8250-f94cfab6625b','c282a9f4-d6ee-4030-8180-67e569fb4c39','client-uris-must-match','true'),('abd70d68-aca0-4c03-ba4c-a312d521f609','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','saml-role-list-mapper'),('b09c1894-e523-45e3-9cfa-df0e0fc42762','c282a9f4-d6ee-4030-8180-67e569fb4c39','host-sending-registration-request-must-match','true'),('b682e52d-5afc-46a6-94ca-34d6e549165d','67986ae7-ca4f-4b53-9b4b-73529956483f','algorithm','HS256'),('be742e62-ef3a-40e5-8fa5-c8e163c99876','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('c2fda4bc-c95e-4883-9014-3ce1d202a3e2','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','oidc-address-mapper'),('d1051b29-2d4b-46ec-ac57-b864df04ba78','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('de313c64-28de-464b-98d3-3f46c9718f9c','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('e059d4a6-6d84-47c6-af1e-bc04f9b90b61','60331745-a11d-4d17-9674-1a195f4512ae','priority','100'),('e278cd24-79f7-47de-952e-49fe502e8b50','08422f45-c833-47ca-bf25-75a439ce4f2c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('e2ef0b92-e4c8-4038-8e06-0446fcd33a3f','67986ae7-ca4f-4b53-9b4b-73529956483f','kid','50f87f11-a652-44b8-bcd5-90b95f137983'),('e524dc1a-c12e-4f20-bbfb-fae4b7d5ff33','b0384ec9-0612-4304-b9a4-fd58d095135a','priority','100'),('efd89788-1bfd-41aa-9e32-5c40dd02a04b','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','oidc-address-mapper'),('f6be560c-bfb8-4c43-9149-60ed1112e8a0','696a9816-643f-4e22-b447-792fcb2a2f50','allowed-protocol-mapper-types','oidc-full-name-mapper'),('fe0bfabe-adc9-4db9-b3f9-ebf325f52232','60331745-a11d-4d17-9674-1a195f4512ae','algorithm','RSA-OAEP');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('2d6f0a26-74ac-4748-a71e-714ea0e4a92b','e3eb40ba-b69b-4c78-943b-c5b2ea991092'),('5b3d27bb-7476-4b5a-aba4-e1ff44e554f9','4cba9be1-e7e0-4797-bc01-b1ac1cf11371'),('884edb3c-016c-4353-992e-b39b5c10289b','107754cb-9a25-4592-89f7-54e634ae7cd4'),('884edb3c-016c-4353-992e-b39b5c10289b','2368ee48-158b-4b9a-92f4-0bca00251712'),('884edb3c-016c-4353-992e-b39b5c10289b','2731208e-b460-4908-814a-061c00816b4f'),('884edb3c-016c-4353-992e-b39b5c10289b','29248555-e42b-436e-9494-473e50a386bb'),('884edb3c-016c-4353-992e-b39b5c10289b','4cba9be1-e7e0-4797-bc01-b1ac1cf11371'),('884edb3c-016c-4353-992e-b39b5c10289b','56147e0e-d8c2-4920-964b-05545a67d2b0'),('884edb3c-016c-4353-992e-b39b5c10289b','5b3d27bb-7476-4b5a-aba4-e1ff44e554f9'),('884edb3c-016c-4353-992e-b39b5c10289b','78d58291-8c4d-4f66-ba3f-72ef590287cd'),('884edb3c-016c-4353-992e-b39b5c10289b','8d7e62db-5190-4d70-b3e3-bee17fcc82a1'),('884edb3c-016c-4353-992e-b39b5c10289b','9fd3583c-e251-4b65-8cb6-641946d39ada'),('884edb3c-016c-4353-992e-b39b5c10289b','a61b93d7-df90-4316-bb44-0439371df028'),('884edb3c-016c-4353-992e-b39b5c10289b','aa6e0b49-7915-44a4-a4af-583da547b9fe'),('884edb3c-016c-4353-992e-b39b5c10289b','b48d566d-0d87-47fc-b9a2-e3e43f76d513'),('884edb3c-016c-4353-992e-b39b5c10289b','ca0f7840-e4f2-4ba2-b744-0fd02a7d965d'),('884edb3c-016c-4353-992e-b39b5c10289b','d172a986-734b-4ae6-8283-6be4986e2884'),('884edb3c-016c-4353-992e-b39b5c10289b','dd92683c-6425-4346-b5cd-19d874ed9c27'),('884edb3c-016c-4353-992e-b39b5c10289b','e108ba5d-48c8-43a3-b21d-4a82981c3d39'),('884edb3c-016c-4353-992e-b39b5c10289b','ec2c898a-962a-47f6-a7a8-def93261c41c'),('884edb3c-016c-4353-992e-b39b5c10289b','f64c185a-6395-44d0-8b75-c2b90e2b9f64'),('d172a986-734b-4ae6-8283-6be4986e2884','2731208e-b460-4908-814a-061c00816b4f'),('d172a986-734b-4ae6-8283-6be4986e2884','8d7e62db-5190-4d70-b3e3-bee17fcc82a1'),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','2057f673-5837-4a20-99d8-c037f27dac72'),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','21d3a773-37fa-48f4-9d1d-5d724d9e5d0e'),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','2d6f0a26-74ac-4748-a71e-714ea0e4a92b'),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','ccdc10e7-60d8-4734-8a68-c931258be62f'),('e0765b48-1a02-408f-a105-98de6bb2ccfe','5d470642-3d0e-451f-bb3b-3c999553b133');
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
INSERT INTO `CREDENTIAL` VALUES ('f32434e0-7140-41d6-aed6-a5ca59e2a9ac',NULL,'password','b3a31032-200e-42b8-9d2f-43e022f4b0e2',1697434384417,NULL,'{\"value\":\"ttgkRnzifbPg2853QUpK9ihAye0fHDjn9jJNaP/CYf05/NYqGtgzVbyCjf5q/8IR/3iClENZ43RKQpGDJJjJwQ==\",\"salt\":\"5x1abPPAKeH477uWLqQHxQ==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-10-16 14:32:52',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-10-16 14:32:52',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-10-16 14:32:52',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-10-16 14:32:52',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-10-16 14:32:53',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-10-16 14:32:53',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-10-16 14:32:54',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-10-16 14:32:54',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-10-16 14:32:54',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-10-16 14:32:54',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-10-16 14:32:55',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-10-16 14:32:55',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-10-16 14:32:55',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-16 14:32:55',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-16 14:32:55',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-16 14:32:55',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-16 14:32:55',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-10-16 14:32:55',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-10-16 14:32:56',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-10-16 14:32:56',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-16 14:32:56',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-16 14:32:56',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-10-16 14:32:56',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-10-16 14:32:56',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-10-16 14:32:56',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-10-16 14:32:56',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-10-16 14:32:56',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-10-16 14:32:56',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-10-16 14:32:57',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-10-16 14:32:57',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-10-16 14:32:57',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-10-16 14:32:57',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-16 14:32:57',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-16 14:32:57',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-16 14:32:57',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-10-16 14:32:57',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-16 14:32:57',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7434370577'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-10-16 14:32:57',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-10-16 14:32:57',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-16 14:32:57',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-16 14:32:57',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-10-16 14:32:57',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-16 14:32:58',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-10-16 14:32:58',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-16 14:32:58',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-16 14:32:58',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-16 14:32:58',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-16 14:32:58',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-16 14:32:58',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-10-16 14:32:59',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-10-16 14:32:59',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-10-16 14:32:59',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-10-16 14:32:59',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-10-16 14:32:59',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-16 14:32:59',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-16 14:32:59',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-16 14:32:59',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-16 14:33:00',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-10-16 14:33:00',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-10-16 14:33:00',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-16 14:33:00',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-16 14:33:00',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-10-16 14:33:00',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-10-16 14:33:00',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-16 14:33:00',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-10-16 14:33:00',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-16 14:33:00',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-10-16 14:33:00',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-10-16 14:33:00',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-10-16 14:33:00',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'7434370577'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-10-16 14:33:00',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'7434370577'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-16 14:33:00',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7434370577'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-16 14:33:00',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7434370577'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-16 14:33:00',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'7434370577'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-16 14:33:00',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-16 14:33:00',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-16 14:33:00',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-16 14:33:00',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-16 14:33:00',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-16 14:33:00',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-16 14:33:00',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-16 14:33:00',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-16 14:33:00',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-16 14:33:00',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'7434370577'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-16 14:33:00',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-10-16 14:33:00',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'7434370577'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-16 14:33:00',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-16 14:33:00',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'7434370577'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'7434370577'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'7434370577'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7434370577'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'7434370577'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:00',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-16 14:33:01',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'7434370577'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7434370577'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7434370577'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7434370577'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7434370577'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-16 14:33:01',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'7434370577'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-10-16 14:33:01',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'7434370577'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2023-10-16 14:33:01',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2023-10-16 14:33:01',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'7434370577'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2023-10-16 14:33:01',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'7434370577'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-16 14:33:01',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-16 14:33:01',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'7434370577'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-16 14:33:01',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'7434370577');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('ee20d08c-c9c2-4531-ab1f-c709672a263d','8659c1af-960d-42e4-bf68-5248e94e47d4','\0'),('ee20d08c-c9c2-4531-ab1f-c709672a263d','981f482c-38b4-471b-87a1-cf522ff6e5e4',''),('ee20d08c-c9c2-4531-ab1f-c709672a263d','b227e84e-342c-4e15-92a3-657f7fd0817d','\0'),('ee20d08c-c9c2-4531-ab1f-c709672a263d','b97b34a2-c25a-4068-b95a-553f05dfa725',''),('ee20d08c-c9c2-4531-ab1f-c709672a263d','c5d989c5-8e32-4d06-8ed4-d8ab6b72230b',''),('ee20d08c-c9c2-4531-ab1f-c709672a263d','c6d3d65c-0780-41a6-9ab5-4f33f7592c2d',''),('ee20d08c-c9c2-4531-ab1f-c709672a263d','d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4','\0'),('ee20d08c-c9c2-4531-ab1f-c709672a263d','d68f694a-6e98-4496-9fcf-a22d0f4cd2d9',''),('ee20d08c-c9c2-4531-ab1f-c709672a263d','ef4f2031-f75e-4d2c-a541-5cafde2b9971',''),('ee20d08c-c9c2-4531-ab1f-c709672a263d','f56e55d8-a64a-4913-9241-fc635cd2fe94','\0');
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('107754cb-9a25-4592-89f7-54e634ae7cd4','24231764-2288-4783-8d8a-affe2da884d0','','${role_manage-events}','manage-events','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('2057f673-5837-4a20-99d8-c037f27dac72','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','${role_offline-access}','offline_access','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL,NULL),('21d3a773-37fa-48f4-9d1d-5d724d9e5d0e','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_view-profile}','view-profile','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('2368ee48-158b-4b9a-92f4-0bca00251712','24231764-2288-4783-8d8a-affe2da884d0','','${role_manage-authorization}','manage-authorization','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('2731208e-b460-4908-814a-061c00816b4f','24231764-2288-4783-8d8a-affe2da884d0','','${role_query-users}','query-users','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('29248555-e42b-436e-9494-473e50a386bb','24231764-2288-4783-8d8a-affe2da884d0','','${role_manage-realm}','manage-realm','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('2d6f0a26-74ac-4748-a71e-714ea0e4a92b','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_manage-account}','manage-account','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('378bd393-b706-433f-a721-829f709322cb','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_view-groups}','view-groups','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('4cba9be1-e7e0-4797-bc01-b1ac1cf11371','24231764-2288-4783-8d8a-affe2da884d0','','${role_query-clients}','query-clients','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('56147e0e-d8c2-4920-964b-05545a67d2b0','24231764-2288-4783-8d8a-affe2da884d0','','${role_view-realm}','view-realm','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('58213b3d-e923-4647-b2b0-7c164cc9c8bd','7ce260a4-a1e8-4939-b9ca-90ea5dff8182','','${role_read-token}','read-token','ee20d08c-c9c2-4531-ab1f-c709672a263d','7ce260a4-a1e8-4939-b9ca-90ea5dff8182',NULL),('5b3d27bb-7476-4b5a-aba4-e1ff44e554f9','24231764-2288-4783-8d8a-affe2da884d0','','${role_view-clients}','view-clients','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('5d470642-3d0e-451f-bb3b-3c999553b133','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_view-consent}','view-consent','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('78d58291-8c4d-4f66-ba3f-72ef590287cd','24231764-2288-4783-8d8a-affe2da884d0','','${role_impersonation}','impersonation','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('7d579c4a-b1bc-4962-ba69-bcf2b6b29153','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_delete-account}','delete-account','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('884edb3c-016c-4353-992e-b39b5c10289b','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','${role_admin}','admin','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL,NULL),('8d7e62db-5190-4d70-b3e3-bee17fcc82a1','24231764-2288-4783-8d8a-affe2da884d0','','${role_query-groups}','query-groups','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('9fd3583c-e251-4b65-8cb6-641946d39ada','24231764-2288-4783-8d8a-affe2da884d0','','${role_view-identity-providers}','view-identity-providers','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('a61b93d7-df90-4316-bb44-0439371df028','24231764-2288-4783-8d8a-affe2da884d0','','${role_query-realms}','query-realms','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('aa6e0b49-7915-44a4-a4af-583da547b9fe','24231764-2288-4783-8d8a-affe2da884d0','','${role_manage-clients}','manage-clients','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('b1a573a1-a5a7-4528-aafd-a1ef16fb8994','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_view-applications}','view-applications','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('b48d566d-0d87-47fc-b9a2-e3e43f76d513','24231764-2288-4783-8d8a-affe2da884d0','','${role_view-events}','view-events','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('ca0f7840-e4f2-4ba2-b744-0fd02a7d965d','24231764-2288-4783-8d8a-affe2da884d0','','${role_view-authorization}','view-authorization','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('ccdc10e7-60d8-4734-8a68-c931258be62f','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','${role_uma_authorization}','uma_authorization','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL,NULL),('d172a986-734b-4ae6-8283-6be4986e2884','24231764-2288-4783-8d8a-affe2da884d0','','${role_view-users}','view-users','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','${role_default-roles}','default-roles-master','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL,NULL),('dd92683c-6425-4346-b5cd-19d874ed9c27','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','${role_create-realm}','create-realm','ee20d08c-c9c2-4531-ab1f-c709672a263d',NULL,NULL),('e0765b48-1a02-408f-a105-98de6bb2ccfe','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_manage-consent}','manage-consent','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('e108ba5d-48c8-43a3-b21d-4a82981c3d39','24231764-2288-4783-8d8a-affe2da884d0','','${role_manage-users}','manage-users','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('e3eb40ba-b69b-4c78-943b-c5b2ea991092','56a97974-53c7-4f0e-a375-b47b934bb8c0','','${role_manage-account-links}','manage-account-links','ee20d08c-c9c2-4531-ab1f-c709672a263d','56a97974-53c7-4f0e-a375-b47b934bb8c0',NULL),('ec2c898a-962a-47f6-a7a8-def93261c41c','24231764-2288-4783-8d8a-affe2da884d0','','${role_manage-identity-providers}','manage-identity-providers','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL),('f64c185a-6395-44d0-8b75-c2b90e2b9f64','24231764-2288-4783-8d8a-affe2da884d0','','${role_create-client}','create-client','ee20d08c-c9c2-4531-ab1f-c709672a263d','24231764-2288-4783-8d8a-affe2da884d0',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('i83c8','20.0.5',1697434381);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','email','openid-connect','oidc-usermodel-property-mapper',NULL,'c6d3d65c-0780-41a6-9ab5-4f33f7592c2d'),('1068390f-2f56-49d7-9768-f86f5d53e809','audience resolve','openid-connect','oidc-audience-resolve-mapper','313a1f93-99d5-480d-90e5-2490b4f21ddd',NULL),('1fe887b3-43f1-4230-afbb-71dd146f7f48','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'981f482c-38b4-471b-87a1-cf522ff6e5e4'),('242a8bec-99a1-45e8-899e-6fc45047f22e','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('3acb94ba-c3d7-4919-8be5-71a72da18670','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('529bfe78-81a5-4b08-9b35-6c9964c67140','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'981f482c-38b4-471b-87a1-cf522ff6e5e4'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'b227e84e-342c-4e15-92a3-657f7fd0817d'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','72d458b4-ffae-4a92-a4f6-ab93da84e8c0',NULL),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('8540202f-c67c-4a09-bc80-205e6c290718','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('8722058f-bcd9-47c2-901c-e9fe314e425e','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'c6d3d65c-0780-41a6-9ab5-4f33f7592c2d'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('8b189a10-a26e-4241-8410-35fdea987df7','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('942c29c5-2d53-4e75-bc9d-08f14d000105','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','72d458b4-ffae-4a92-a4f6-ab93da84e8c0',NULL),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','72d458b4-ffae-4a92-a4f6-ab93da84e8c0',NULL),('a81038da-413d-4251-a9c7-e4f82edbc46e','address','openid-connect','oidc-address-mapper',NULL,'8659c1af-960d-42e4-bf68-5248e94e47d4'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4'),('b3166921-63c7-4c47-a627-701aac43ed02','locale','openid-connect','oidc-usermodel-attribute-mapper','d6636d19-1143-45b1-a31b-852c80a23a15',NULL),('c7effa1c-777c-41ad-818f-22e98fa8df81','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'b227e84e-342c-4e15-92a3-657f7fd0817d'),('c98bf56a-d297-4958-adcc-ccb419e7d76c','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'981f482c-38b4-471b-87a1-cf522ff6e5e4'),('cdcd93b4-c302-4b35-9b93-2d17da525f70','role list','saml','saml-role-list-mapper',NULL,'b97b34a2-c25a-4068-b95a-553f05dfa725'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('d0370c18-93d1-4fd8-82d4-a2be23fee62a','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'d68f694a-6e98-4496-9fcf-a22d0f4cd2d9'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d3342b64-ccf0-4fd4-bcf7-6de2f7dd3cd4'),('e2137ec0-9389-4edb-a7b5-2082633836aa','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('e2d99076-1203-4b3b-906e-158613448df4','username','openid-connect','oidc-usermodel-property-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('ef937fb2-7e8d-494a-942f-50b385d11bb0','full name','openid-connect','oidc-full-name-mapper',NULL,'c5d989c5-8e32-4d06-8ed4-d8ab6b72230b'),('f3356ec7-2c78-45e8-a487-6c939be2db2f','acr loa level','openid-connect','oidc-acr-mapper',NULL,'ef4f2031-f75e-4d2c-a541-5cafde2b9971');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','true','access.token.claim'),('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','email','claim.name'),('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','true','id.token.claim'),('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','String','jsonType.label'),('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','email','user.attribute'),('04676dbb-bae4-4b2c-9cd5-9e54ac99047d','true','userinfo.token.claim'),('1fe887b3-43f1-4230-afbb-71dd146f7f48','true','access.token.claim'),('1fe887b3-43f1-4230-afbb-71dd146f7f48','resource_access.${client_id}.roles','claim.name'),('1fe887b3-43f1-4230-afbb-71dd146f7f48','String','jsonType.label'),('1fe887b3-43f1-4230-afbb-71dd146f7f48','true','multivalued'),('1fe887b3-43f1-4230-afbb-71dd146f7f48','foo','user.attribute'),('242a8bec-99a1-45e8-899e-6fc45047f22e','true','access.token.claim'),('242a8bec-99a1-45e8-899e-6fc45047f22e','profile','claim.name'),('242a8bec-99a1-45e8-899e-6fc45047f22e','true','id.token.claim'),('242a8bec-99a1-45e8-899e-6fc45047f22e','String','jsonType.label'),('242a8bec-99a1-45e8-899e-6fc45047f22e','profile','user.attribute'),('242a8bec-99a1-45e8-899e-6fc45047f22e','true','userinfo.token.claim'),('3acb94ba-c3d7-4919-8be5-71a72da18670','true','access.token.claim'),('3acb94ba-c3d7-4919-8be5-71a72da18670','middle_name','claim.name'),('3acb94ba-c3d7-4919-8be5-71a72da18670','true','id.token.claim'),('3acb94ba-c3d7-4919-8be5-71a72da18670','String','jsonType.label'),('3acb94ba-c3d7-4919-8be5-71a72da18670','middleName','user.attribute'),('3acb94ba-c3d7-4919-8be5-71a72da18670','true','userinfo.token.claim'),('529bfe78-81a5-4b08-9b35-6c9964c67140','true','access.token.claim'),('529bfe78-81a5-4b08-9b35-6c9964c67140','realm_access.roles','claim.name'),('529bfe78-81a5-4b08-9b35-6c9964c67140','String','jsonType.label'),('529bfe78-81a5-4b08-9b35-6c9964c67140','true','multivalued'),('529bfe78-81a5-4b08-9b35-6c9964c67140','foo','user.attribute'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','true','access.token.claim'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','upn','claim.name'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','true','id.token.claim'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','String','jsonType.label'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','username','user.attribute'),('5a3f3747-1a46-4658-8b66-acab3a5fea2f','true','userinfo.token.claim'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','true','access.token.claim'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','clientAddress','claim.name'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','true','id.token.claim'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','String','jsonType.label'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','clientAddress','user.session.note'),('7e1cd5bc-88d0-471e-b681-cd0f80879acc','true','userinfo.token.claim'),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','true','access.token.claim'),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','updated_at','claim.name'),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','true','id.token.claim'),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','long','jsonType.label'),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','updatedAt','user.attribute'),('84c0df0c-cafd-4375-b1f3-a802f5f9f558','true','userinfo.token.claim'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','true','access.token.claim'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','website','claim.name'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','true','id.token.claim'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','String','jsonType.label'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','website','user.attribute'),('8521f5f4-4a20-4fd7-8ebf-a1aa30bc44d7','true','userinfo.token.claim'),('8540202f-c67c-4a09-bc80-205e6c290718','true','access.token.claim'),('8540202f-c67c-4a09-bc80-205e6c290718','zoneinfo','claim.name'),('8540202f-c67c-4a09-bc80-205e6c290718','true','id.token.claim'),('8540202f-c67c-4a09-bc80-205e6c290718','String','jsonType.label'),('8540202f-c67c-4a09-bc80-205e6c290718','zoneinfo','user.attribute'),('8540202f-c67c-4a09-bc80-205e6c290718','true','userinfo.token.claim'),('8722058f-bcd9-47c2-901c-e9fe314e425e','true','access.token.claim'),('8722058f-bcd9-47c2-901c-e9fe314e425e','email_verified','claim.name'),('8722058f-bcd9-47c2-901c-e9fe314e425e','true','id.token.claim'),('8722058f-bcd9-47c2-901c-e9fe314e425e','boolean','jsonType.label'),('8722058f-bcd9-47c2-901c-e9fe314e425e','emailVerified','user.attribute'),('8722058f-bcd9-47c2-901c-e9fe314e425e','true','userinfo.token.claim'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','true','access.token.claim'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','family_name','claim.name'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','true','id.token.claim'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','String','jsonType.label'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','lastName','user.attribute'),('8a28b5ef-ff2d-46fa-8700-4b62d3da102d','true','userinfo.token.claim'),('8b189a10-a26e-4241-8410-35fdea987df7','true','access.token.claim'),('8b189a10-a26e-4241-8410-35fdea987df7','nickname','claim.name'),('8b189a10-a26e-4241-8410-35fdea987df7','true','id.token.claim'),('8b189a10-a26e-4241-8410-35fdea987df7','String','jsonType.label'),('8b189a10-a26e-4241-8410-35fdea987df7','nickname','user.attribute'),('8b189a10-a26e-4241-8410-35fdea987df7','true','userinfo.token.claim'),('942c29c5-2d53-4e75-bc9d-08f14d000105','true','access.token.claim'),('942c29c5-2d53-4e75-bc9d-08f14d000105','picture','claim.name'),('942c29c5-2d53-4e75-bc9d-08f14d000105','true','id.token.claim'),('942c29c5-2d53-4e75-bc9d-08f14d000105','String','jsonType.label'),('942c29c5-2d53-4e75-bc9d-08f14d000105','picture','user.attribute'),('942c29c5-2d53-4e75-bc9d-08f14d000105','true','userinfo.token.claim'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','true','access.token.claim'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','clientHost','claim.name'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','true','id.token.claim'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','String','jsonType.label'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','clientHost','user.session.note'),('944e46e6-c21d-41a7-81ab-55d5d752c48a','true','userinfo.token.claim'),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','true','access.token.claim'),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','clientId','claim.name'),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','true','id.token.claim'),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','String','jsonType.label'),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','clientId','user.session.note'),('9eae38d0-31d6-41c6-b2f0-30ce8740d25c','true','userinfo.token.claim'),('a81038da-413d-4251-a9c7-e4f82edbc46e','true','access.token.claim'),('a81038da-413d-4251-a9c7-e4f82edbc46e','true','id.token.claim'),('a81038da-413d-4251-a9c7-e4f82edbc46e','country','user.attribute.country'),('a81038da-413d-4251-a9c7-e4f82edbc46e','formatted','user.attribute.formatted'),('a81038da-413d-4251-a9c7-e4f82edbc46e','locality','user.attribute.locality'),('a81038da-413d-4251-a9c7-e4f82edbc46e','postal_code','user.attribute.postal_code'),('a81038da-413d-4251-a9c7-e4f82edbc46e','region','user.attribute.region'),('a81038da-413d-4251-a9c7-e4f82edbc46e','street','user.attribute.street'),('a81038da-413d-4251-a9c7-e4f82edbc46e','true','userinfo.token.claim'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','true','access.token.claim'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','birthdate','claim.name'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','true','id.token.claim'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','String','jsonType.label'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','birthdate','user.attribute'),('aaf7b29d-7fb6-449f-aa76-8a2a176d5bd5','true','userinfo.token.claim'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','true','access.token.claim'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','phone_number','claim.name'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','true','id.token.claim'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','String','jsonType.label'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','phoneNumber','user.attribute'),('b3142439-4c2b-4aa3-bf61-f1c4f399b430','true','userinfo.token.claim'),('b3166921-63c7-4c47-a627-701aac43ed02','true','access.token.claim'),('b3166921-63c7-4c47-a627-701aac43ed02','locale','claim.name'),('b3166921-63c7-4c47-a627-701aac43ed02','true','id.token.claim'),('b3166921-63c7-4c47-a627-701aac43ed02','String','jsonType.label'),('b3166921-63c7-4c47-a627-701aac43ed02','locale','user.attribute'),('b3166921-63c7-4c47-a627-701aac43ed02','true','userinfo.token.claim'),('c7effa1c-777c-41ad-818f-22e98fa8df81','true','access.token.claim'),('c7effa1c-777c-41ad-818f-22e98fa8df81','groups','claim.name'),('c7effa1c-777c-41ad-818f-22e98fa8df81','true','id.token.claim'),('c7effa1c-777c-41ad-818f-22e98fa8df81','String','jsonType.label'),('c7effa1c-777c-41ad-818f-22e98fa8df81','true','multivalued'),('c7effa1c-777c-41ad-818f-22e98fa8df81','foo','user.attribute'),('cdcd93b4-c302-4b35-9b93-2d17da525f70','Role','attribute.name'),('cdcd93b4-c302-4b35-9b93-2d17da525f70','Basic','attribute.nameformat'),('cdcd93b4-c302-4b35-9b93-2d17da525f70','false','single'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','true','access.token.claim'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','locale','claim.name'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','true','id.token.claim'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','String','jsonType.label'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','locale','user.attribute'),('cf3d2b8d-cb79-49bd-8091-0933a7babb7d','true','userinfo.token.claim'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','true','access.token.claim'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','gender','claim.name'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','true','id.token.claim'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','String','jsonType.label'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','gender','user.attribute'),('d0765b86-027c-41fa-a15d-7cef3ea5a9e8','true','userinfo.token.claim'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','true','access.token.claim'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','phone_number_verified','claim.name'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','true','id.token.claim'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','boolean','jsonType.label'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','phoneNumberVerified','user.attribute'),('db9101f5-c109-4ba7-b9bc-2dfd63023386','true','userinfo.token.claim'),('e2137ec0-9389-4edb-a7b5-2082633836aa','true','access.token.claim'),('e2137ec0-9389-4edb-a7b5-2082633836aa','given_name','claim.name'),('e2137ec0-9389-4edb-a7b5-2082633836aa','true','id.token.claim'),('e2137ec0-9389-4edb-a7b5-2082633836aa','String','jsonType.label'),('e2137ec0-9389-4edb-a7b5-2082633836aa','firstName','user.attribute'),('e2137ec0-9389-4edb-a7b5-2082633836aa','true','userinfo.token.claim'),('e2d99076-1203-4b3b-906e-158613448df4','true','access.token.claim'),('e2d99076-1203-4b3b-906e-158613448df4','preferred_username','claim.name'),('e2d99076-1203-4b3b-906e-158613448df4','true','id.token.claim'),('e2d99076-1203-4b3b-906e-158613448df4','String','jsonType.label'),('e2d99076-1203-4b3b-906e-158613448df4','username','user.attribute'),('e2d99076-1203-4b3b-906e-158613448df4','true','userinfo.token.claim'),('ef937fb2-7e8d-494a-942f-50b385d11bb0','true','access.token.claim'),('ef937fb2-7e8d-494a-942f-50b385d11bb0','true','id.token.claim'),('ef937fb2-7e8d-494a-942f-50b385d11bb0','true','userinfo.token.claim'),('f3356ec7-2c78-45e8-a487-6c939be2db2f','true','access.token.claim'),('f3356ec7-2c78-45e8-a487-6c939be2db2f','true','id.token.claim');
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
INSERT INTO `REALM` VALUES ('ee20d08c-c9c2-4531-ab1f-c709672a263d',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','NONE',1800,36000,'\0','\0','24231764-2288-4783-8d8a-affe2da884d0',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','9ed79691-5152-4301-87b2-f2652b803c39','cdbae8c1-9817-4733-a6d2-b270cbdfbaaa','2734ce80-f927-4a4e-82fa-09bb320ff254','5a6c8e2e-06a4-43c9-ad4c-153d724feacd','c96420de-23b2-464f-aae6-4c685e20e6f1',31536000,'\0',900,'','\0','804ae815-be15-408a-84d5-7944457c0f1b',0,'\0',0,0,'d67b8d42-a9fc-4240-a500-6ba8e03d33e3');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','ee20d08c-c9c2-4531-ab1f-c709672a263d','false'),('cibaAuthRequestedUserHint','ee20d08c-c9c2-4531-ab1f-c709672a263d','login_hint'),('cibaBackchannelTokenDeliveryMode','ee20d08c-c9c2-4531-ab1f-c709672a263d','poll'),('cibaExpiresIn','ee20d08c-c9c2-4531-ab1f-c709672a263d','120'),('cibaInterval','ee20d08c-c9c2-4531-ab1f-c709672a263d','5'),('defaultSignatureAlgorithm','ee20d08c-c9c2-4531-ab1f-c709672a263d','RS256'),('displayName','ee20d08c-c9c2-4531-ab1f-c709672a263d','Keycloak'),('displayNameHtml','ee20d08c-c9c2-4531-ab1f-c709672a263d','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','ee20d08c-c9c2-4531-ab1f-c709672a263d','30'),('maxDeltaTimeSeconds','ee20d08c-c9c2-4531-ab1f-c709672a263d','43200'),('maxFailureWaitSeconds','ee20d08c-c9c2-4531-ab1f-c709672a263d','900'),('minimumQuickLoginWaitSeconds','ee20d08c-c9c2-4531-ab1f-c709672a263d','60'),('oauth2DeviceCodeLifespan','ee20d08c-c9c2-4531-ab1f-c709672a263d','600'),('oauth2DevicePollingInterval','ee20d08c-c9c2-4531-ab1f-c709672a263d','5'),('offlineSessionMaxLifespan','ee20d08c-c9c2-4531-ab1f-c709672a263d','31536000'),('offlineSessionMaxLifespanEnabled','ee20d08c-c9c2-4531-ab1f-c709672a263d','true'),('parRequestUriLifespan','ee20d08c-c9c2-4531-ab1f-c709672a263d','60'),('permanentLockout','ee20d08c-c9c2-4531-ab1f-c709672a263d','false'),('quickLoginCheckMilliSeconds','ee20d08c-c9c2-4531-ab1f-c709672a263d','1000'),('realmReusableOtpCode','ee20d08c-c9c2-4531-ab1f-c709672a263d','false'),('waitIncrementSeconds','ee20d08c-c9c2-4531-ab1f-c709672a263d','60'),('webAuthnPolicyAttestationConveyancePreference','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyAuthenticatorAttachment','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','ee20d08c-c9c2-4531-ab1f-c709672a263d','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','false'),('webAuthnPolicyCreateTimeout','ee20d08c-c9c2-4531-ab1f-c709672a263d','0'),('webAuthnPolicyCreateTimeoutPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','0'),('webAuthnPolicyRequireResidentKey','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyRpEntityName','ee20d08c-c9c2-4531-ab1f-c709672a263d','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','keycloak'),('webAuthnPolicyRpId','ee20d08c-c9c2-4531-ab1f-c709672a263d',''),('webAuthnPolicyRpIdPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d',''),('webAuthnPolicySignatureAlgorithms','ee20d08c-c9c2-4531-ab1f-c709672a263d','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','ES256'),('webAuthnPolicyUserVerificationRequirement','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','not specified'),('_browser_header.contentSecurityPolicy','ee20d08c-c9c2-4531-ab1f-c709672a263d','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','ee20d08c-c9c2-4531-ab1f-c709672a263d',''),('_browser_header.strictTransportSecurity','ee20d08c-c9c2-4531-ab1f-c709672a263d','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','ee20d08c-c9c2-4531-ab1f-c709672a263d','nosniff'),('_browser_header.xFrameOptions','ee20d08c-c9c2-4531-ab1f-c709672a263d','SAMEORIGIN'),('_browser_header.xRobotsTag','ee20d08c-c9c2-4531-ab1f-c709672a263d','none'),('_browser_header.xXSSProtection','ee20d08c-c9c2-4531-ab1f-c709672a263d','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('ee20d08c-c9c2-4531-ab1f-c709672a263d','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','ee20d08c-c9c2-4531-ab1f-c709672a263d');
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
INSERT INTO `REDIRECT_URIS` VALUES ('313a1f93-99d5-480d-90e5-2490b4f21ddd','/realms/master/account/*'),('56a97974-53c7-4f0e-a375-b47b934bb8c0','/realms/master/account/*'),('8777a869-ec55-42d3-89bf-24f744f1e61d','/*'),('d6636d19-1143-45b1-a31b-852c80a23a15','/admin/master/console/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('309c14be-14d1-4dac-abc8-acff04f01622','CONFIGURE_TOTP','Configure OTP','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','CONFIGURE_TOTP',10),('704a6c0d-66e4-4176-99d4-fa3864d68c18','delete_account','Delete Account','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','\0','delete_account',60),('84117d39-dcec-4594-8636-77b8958be190','terms_and_conditions','Terms and Conditions','ee20d08c-c9c2-4531-ab1f-c709672a263d','\0','\0','terms_and_conditions',20),('8411d441-9ec8-49b3-a811-cc99f778f06f','UPDATE_PASSWORD','Update Password','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','UPDATE_PASSWORD',30),('9753d3a7-7ca0-4e8e-b626-87eaebe5b71b','UPDATE_PROFILE','Update Profile','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','UPDATE_PROFILE',40),('9b763564-44a9-43da-920e-b24740786f10','webauthn-register-passwordless','Webauthn Register Passwordless','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','webauthn-register-passwordless',80),('ca901d30-5966-4fab-b755-84fbad7022bc','VERIFY_EMAIL','Verify Email','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','VERIFY_EMAIL',50),('cec06626-3987-4708-9086-4479ebf1dd94','update_user_locale','Update User Locale','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','update_user_locale',1000),('fc2b0942-b208-4351-a7c1-ad9665d80bc9','webauthn-register','Webauthn Register','ee20d08c-c9c2-4531-ab1f-c709672a263d','','\0','webauthn-register',70);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('313a1f93-99d5-480d-90e5-2490b4f21ddd','2d6f0a26-74ac-4748-a71e-714ea0e4a92b'),('313a1f93-99d5-480d-90e5-2490b4f21ddd','378bd393-b706-433f-a721-829f709322cb');
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
INSERT INTO `USER_ENTITY` VALUES ('b3a31032-200e-42b8-9d2f-43e022f4b0e2',NULL,'eb5b1bff-94cf-4ee6-b315-a06056703ec8','\0','',NULL,NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','admin',1697434384086,NULL,0),('dce1970e-d19a-4e9a-afb3-7aeae03dffc2',NULL,'42655d31-12c4-4afb-b979-2b57fda2c08f','\0','',NULL,NULL,NULL,'ee20d08c-c9c2-4531-ab1f-c709672a263d','service-account-_platform',1697434386726,'72d458b4-ffae-4a92-a4f6-ab93da84e8c0',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('884edb3c-016c-4353-992e-b39b5c10289b','b3a31032-200e-42b8-9d2f-43e022f4b0e2'),('884edb3c-016c-4353-992e-b39b5c10289b','dce1970e-d19a-4e9a-afb3-7aeae03dffc2'),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','b3a31032-200e-42b8-9d2f-43e022f4b0e2'),('d67b8d42-a9fc-4240-a500-6ba8e03d33e3','dce1970e-d19a-4e9a-afb3-7aeae03dffc2');
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
INSERT INTO `WEB_ORIGINS` VALUES ('d6636d19-1143-45b1-a31b-852c80a23a15','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2023-10-16 14:33:11','dummy','2023-10-16 14:33:11','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2023-10-16 14:33:07.000000',NULL),('2','DATA_UPDATE_STOP','0','2023-10-16 14:33:07.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2023-10-16 14:33:06','system','2023-10-16 14:33:06','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2023-10-16 14:33:11','dummy','2023-10-16 14:33:11','dummy'),('platform.roles','{\"description\": \"default limit\", \"max\": 1000}','2023-10-16 14:33:06','system','2023-10-16 14:33:06','system'),('platform.users','{\"description\": \"default limit\", \"max\": 10000}','2023-10-16 14:33:06','system','2023-10-16 14:33:06','system'),('platform.workspaces','{\"description\": \"default limit\", \"max\": 1000}','2023-10-16 14:33:06','system','2023-10-16 14:33:06','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2023-10-16 14:33:11','dummy','2023-10-16 14:33:11','dummy'),('_default','platform.roles',1000,'2023-10-16 14:33:06','system','2023-10-16 14:33:06','system'),('_default','platform.users',10000,'2023-10-16 14:33:06','system','2023-10-16 14:33:06','system'),('_default','platform.workspaces',100,'2023-10-16 14:33:06','system','2023-10-16 14:33:06','system');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2023-10-16 14:33:05','1.6.0','2023-10-16 14:33:05','1.6.0'),(2,'1.3.0','SUCCEED',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0'),(3,'1.5.0','START',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0'),(4,'1.5.0','SUCCEED',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0'),(5,'1.5.2','START',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0'),(6,'1.5.2','SUCCEED',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0'),(7,'1.6.0','START',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0'),(8,'1.6.0','SUCCEED',NULL,'2023-10-16 14:33:07','1.6.0','2023-10-16 14:33:07','1.6.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"72d458b4-ffae-4a92-a4f6-ab93da84e8c0\", \"TOKEN_CHECK_CLIENT_SECRET\": \"PPPmiKGtlHoC6F3UFO6VXGh8jH1j5NgS\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"12c65874-86cd-4e6e-a721-d52bc40bb1ae\"}','2023-10-16 14:33:07','system','2023-10-16 14:33:07','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.6.0','2023-10-16 14:32:28','system','2023-10-16 14:33:07','1.6.0');
/*!40000 ALTER TABLE `T_PLATFORM_VERSION` ENABLE KEYS */;
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

-- Dump completed on 2023-10-16 14:34:48
