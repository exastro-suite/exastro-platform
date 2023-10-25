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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('068c6fd0-0e56-4037-bbb3-edabff30fe12',NULL,'basic-auth-otp','651adee9-2b22-45bc-bb90-c8262b4a510a','be542fb8-cabd-4de6-aa9e-a88e70a8d88e',3,20,'\0',NULL,NULL),('091c18b4-e281-47fb-bf62-e08a3258f9d1',NULL,'client-secret','651adee9-2b22-45bc-bb90-c8262b4a510a','c748b5fc-35e6-41fe-b39c-f1baf5ba8721',2,10,'\0',NULL,NULL),('153921fe-a4db-4792-8ea4-a46b9aab6126',NULL,'idp-email-verification','651adee9-2b22-45bc-bb90-c8262b4a510a','e9ef1ed3-4e03-4f32-b856-245874f11310',2,10,'\0',NULL,NULL),('1a184c02-facc-432a-809c-6420c8ddf41d',NULL,'conditional-user-configured','651adee9-2b22-45bc-bb90-c8262b4a510a','b0de34ff-601a-451c-9bc0-542f6b168eb4',0,10,'\0',NULL,NULL),('1a3df8f5-cce2-41ee-81d5-651d3a6f0a25',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','4fbfcc1c-f701-48c4-8fd0-ebc37c9e8597',1,30,'','4b0cc6f1-ac6d-43f3-af31-0795767dd6b7',NULL),('20d93416-ea71-4372-8aab-3b94d64d28be',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','6049cb38-b090-46af-b03b-76b5930d67e1',2,30,'','b5690236-7792-44bf-92a8-9b08aacec027',NULL),('213d6c23-a871-4678-bc05-090bcbca7ee3',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','5e45cec9-35c4-4326-a345-c047c76b4d5f',1,40,'','26b5a729-f7de-47ae-b159-a7644c6b9941',NULL),('22398c99-6693-46f6-868c-5075f8ac0764',NULL,'registration-profile-action','651adee9-2b22-45bc-bb90-c8262b4a510a','8eb1d399-7025-4a85-9c69-947ce57d603a',0,40,'\0',NULL,NULL),('2f7d30df-d32c-4400-a06f-7775b61bdb80',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','e9ef1ed3-4e03-4f32-b856-245874f11310',2,20,'','5669d612-eb06-44b4-9764-7033c5611dbd',NULL),('318c36e8-0f92-42ce-a756-0c3fd44c33b5',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','b5690236-7792-44bf-92a8-9b08aacec027',1,20,'','b0de34ff-601a-451c-9bc0-542f6b168eb4',NULL),('354c7351-f436-4c5d-a729-577e1e521a97',NULL,'basic-auth','651adee9-2b22-45bc-bb90-c8262b4a510a','be542fb8-cabd-4de6-aa9e-a88e70a8d88e',0,10,'\0',NULL,NULL),('3b4663ac-7db7-45a0-a207-a460010f9fdd',NULL,'idp-create-user-if-unique','651adee9-2b22-45bc-bb90-c8262b4a510a','95c35097-774e-4c8e-9142-7114e10c20be',2,10,'\0',NULL,'3159de39-4168-45ab-9f48-57deb69a8c08'),('45150dc6-bd49-4fcd-ae29-4c0175ea358c',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','fa333ec5-cc1a-40b2-89ab-0769b6886b52',0,20,'','be542fb8-cabd-4de6-aa9e-a88e70a8d88e',NULL),('49da5a1f-3529-467f-83ce-c514acc74a83',NULL,'auth-otp-form','651adee9-2b22-45bc-bb90-c8262b4a510a','b137fe86-2571-4f22-82e0-94b0af9f909d',0,20,'\0',NULL,NULL),('4df6e367-7d6a-4ebe-b174-d1c0f189dc5e',NULL,'direct-grant-validate-username','651adee9-2b22-45bc-bb90-c8262b4a510a','4fbfcc1c-f701-48c4-8fd0-ebc37c9e8597',0,10,'\0',NULL,NULL),('53ce23f1-901d-4659-a1bc-b3bc9af0afa1',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','5669d612-eb06-44b4-9764-7033c5611dbd',1,20,'','b137fe86-2571-4f22-82e0-94b0af9f909d',NULL),('5638e681-6f81-4015-8937-82e50cc7edd1',NULL,'auth-username-password-form','651adee9-2b22-45bc-bb90-c8262b4a510a','b5690236-7792-44bf-92a8-9b08aacec027',0,10,'\0',NULL,NULL),('586ac34e-f4b1-4d3a-ae9f-e0e856772e48',NULL,'client-secret-jwt','651adee9-2b22-45bc-bb90-c8262b4a510a','c748b5fc-35e6-41fe-b39c-f1baf5ba8721',2,30,'\0',NULL,NULL),('643ece09-1274-4aad-9ed3-699778a236d3',NULL,'idp-confirm-link','651adee9-2b22-45bc-bb90-c8262b4a510a','97f6dc87-cb6e-43ce-9520-d2742004952c',0,10,'\0',NULL,NULL),('66d29316-c2ea-4f63-b681-e386801da79e',NULL,'reset-credential-email','651adee9-2b22-45bc-bb90-c8262b4a510a','5e45cec9-35c4-4326-a345-c047c76b4d5f',0,20,'\0',NULL,NULL),('6b1166e9-1aa6-4a62-9070-87ccfb725051',NULL,'auth-otp-form','651adee9-2b22-45bc-bb90-c8262b4a510a','b0de34ff-601a-451c-9bc0-542f6b168eb4',0,20,'\0',NULL,NULL),('6c9b3ead-d9d1-4a9a-acdd-9b5269ab5509',NULL,'client-x509','651adee9-2b22-45bc-bb90-c8262b4a510a','c748b5fc-35e6-41fe-b39c-f1baf5ba8721',2,40,'\0',NULL,NULL),('7024bc73-74ed-469b-b06f-a50789e9140f',NULL,'auth-spnego','651adee9-2b22-45bc-bb90-c8262b4a510a','6049cb38-b090-46af-b03b-76b5930d67e1',3,20,'\0',NULL,NULL),('7acf1958-a6fb-4006-9ec1-c38200114fc0',NULL,'client-jwt','651adee9-2b22-45bc-bb90-c8262b4a510a','c748b5fc-35e6-41fe-b39c-f1baf5ba8721',2,20,'\0',NULL,NULL),('82c30c9e-1ac0-4f4b-aaf6-8626769a79ea',NULL,'http-basic-authenticator','651adee9-2b22-45bc-bb90-c8262b4a510a','b71b2f5a-6f00-4eb7-b63a-77841834a3dd',0,10,'\0',NULL,NULL),('8521760b-ad6a-4c8c-87f8-42d627c846c0',NULL,'registration-page-form','651adee9-2b22-45bc-bb90-c8262b4a510a','e06f50e1-bf68-46aa-80f1-228a01b4c447',0,10,'','8eb1d399-7025-4a85-9c69-947ce57d603a',NULL),('8c24ab91-77b2-4e00-aa02-96a534e23847',NULL,'no-cookie-redirect','651adee9-2b22-45bc-bb90-c8262b4a510a','fa333ec5-cc1a-40b2-89ab-0769b6886b52',0,10,'\0',NULL,NULL),('8ea46d9e-022f-4b0f-9a22-6bb71c56755e',NULL,'auth-spnego','651adee9-2b22-45bc-bb90-c8262b4a510a','be542fb8-cabd-4de6-aa9e-a88e70a8d88e',3,30,'\0',NULL,NULL),('9112e747-5226-4f5b-9d83-01d43814d5e4',NULL,'identity-provider-redirector','651adee9-2b22-45bc-bb90-c8262b4a510a','6049cb38-b090-46af-b03b-76b5930d67e1',2,25,'\0',NULL,NULL),('9aa5982e-8c37-474f-aa04-00aa65a8148b',NULL,'reset-password','651adee9-2b22-45bc-bb90-c8262b4a510a','5e45cec9-35c4-4326-a345-c047c76b4d5f',0,30,'\0',NULL,NULL),('a33fa3d2-8e24-46e6-a02c-7f7ce3cb73a2',NULL,'direct-grant-validate-password','651adee9-2b22-45bc-bb90-c8262b4a510a','4fbfcc1c-f701-48c4-8fd0-ebc37c9e8597',0,20,'\0',NULL,NULL),('a391d50f-3cbe-4c31-a875-9f43958b9354',NULL,'auth-cookie','651adee9-2b22-45bc-bb90-c8262b4a510a','6049cb38-b090-46af-b03b-76b5930d67e1',2,10,'\0',NULL,NULL),('a51691e1-c800-4e38-938e-e8f488025302',NULL,'direct-grant-validate-otp','651adee9-2b22-45bc-bb90-c8262b4a510a','4b0cc6f1-ac6d-43f3-af31-0795767dd6b7',0,20,'\0',NULL,NULL),('aac0b177-8be1-48e9-9679-fa8b0f2f51fa',NULL,'docker-http-basic-authenticator','651adee9-2b22-45bc-bb90-c8262b4a510a','319ded58-ecc5-45d5-8341-7984738a152b',0,10,'\0',NULL,NULL),('aed786cb-5715-4197-9f05-e795dc00fd0e',NULL,'registration-password-action','651adee9-2b22-45bc-bb90-c8262b4a510a','8eb1d399-7025-4a85-9c69-947ce57d603a',0,50,'\0',NULL,NULL),('b1635af4-4a00-417a-9922-908652ebbc11',NULL,'idp-username-password-form','651adee9-2b22-45bc-bb90-c8262b4a510a','5669d612-eb06-44b4-9764-7033c5611dbd',0,10,'\0',NULL,NULL),('b20fb5db-e565-4b6b-ba9f-d283f47ddb37',NULL,'reset-otp','651adee9-2b22-45bc-bb90-c8262b4a510a','26b5a729-f7de-47ae-b159-a7644c6b9941',0,20,'\0',NULL,NULL),('ba28125a-78db-4526-bb0d-0ff81df0d71d',NULL,'registration-user-creation','651adee9-2b22-45bc-bb90-c8262b4a510a','8eb1d399-7025-4a85-9c69-947ce57d603a',0,20,'\0',NULL,NULL),('bb72975f-aded-4c0b-8718-05df5ba15f91',NULL,'conditional-user-configured','651adee9-2b22-45bc-bb90-c8262b4a510a','b137fe86-2571-4f22-82e0-94b0af9f909d',0,10,'\0',NULL,NULL),('c13aaf3e-965e-445e-ae78-8d347482debd',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','97f6dc87-cb6e-43ce-9520-d2742004952c',0,20,'','e9ef1ed3-4e03-4f32-b856-245874f11310',NULL),('c48580c3-71ea-4509-9a8c-e2717b64a55e',NULL,'reset-credentials-choose-user','651adee9-2b22-45bc-bb90-c8262b4a510a','5e45cec9-35c4-4326-a345-c047c76b4d5f',0,10,'\0',NULL,NULL),('c5a6bffe-30e6-4649-9a3f-2b0c3f44521c',NULL,'registration-recaptcha-action','651adee9-2b22-45bc-bb90-c8262b4a510a','8eb1d399-7025-4a85-9c69-947ce57d603a',3,60,'\0',NULL,NULL),('cfc21f21-b36f-496d-87a9-bec922d84482',NULL,'conditional-user-configured','651adee9-2b22-45bc-bb90-c8262b4a510a','26b5a729-f7de-47ae-b159-a7644c6b9941',0,10,'\0',NULL,NULL),('d1742cc4-90d0-42bf-b27c-83211cc0b521',NULL,'idp-review-profile','651adee9-2b22-45bc-bb90-c8262b4a510a','e1549857-2600-4e14-8edc-62d050364d3d',0,10,'\0',NULL,'e5a6e526-93e8-4180-a8fd-1d8e0be75c57'),('d796c685-c9d1-454a-919d-53d8200d9046',NULL,'conditional-user-configured','651adee9-2b22-45bc-bb90-c8262b4a510a','4b0cc6f1-ac6d-43f3-af31-0795767dd6b7',0,10,'\0',NULL,NULL),('d982fd18-abee-4dda-a65b-1d13c08f52ee',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','e1549857-2600-4e14-8edc-62d050364d3d',0,20,'','95c35097-774e-4c8e-9142-7114e10c20be',NULL),('da6bb0f1-3142-4380-a4eb-d02048c158ec',NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','95c35097-774e-4c8e-9142-7114e10c20be',2,20,'','97f6dc87-cb6e-43ce-9520-d2742004952c',NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('26b5a729-f7de-47ae-b159-a7644c6b9941','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('319ded58-ecc5-45d5-8341-7984738a152b','docker auth','Used by Docker clients to authenticate against the IDP','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('4b0cc6f1-ac6d-43f3-af31-0795767dd6b7','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('4fbfcc1c-f701-48c4-8fd0-ebc37c9e8597','direct grant','OpenID Connect Resource Owner Grant','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('5669d612-eb06-44b4-9764-7033c5611dbd','Verify Existing Account by Re-authentication','Reauthentication of existing account','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('5e45cec9-35c4-4326-a345-c047c76b4d5f','reset credentials','Reset credentials for a user if they forgot their password or something','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('6049cb38-b090-46af-b03b-76b5930d67e1','browser','browser based authentication','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('8eb1d399-7025-4a85-9c69-947ce57d603a','registration form','registration form','651adee9-2b22-45bc-bb90-c8262b4a510a','form-flow','\0',''),('95c35097-774e-4c8e-9142-7114e10c20be','User creation or linking','Flow for the existing/non-existing user alternatives','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('97f6dc87-cb6e-43ce-9520-d2742004952c','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('b0de34ff-601a-451c-9bc0-542f6b168eb4','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('b137fe86-2571-4f22-82e0-94b0af9f909d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('b5690236-7792-44bf-92a8-9b08aacec027','forms','Username, password, otp and other auth forms.','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('b71b2f5a-6f00-4eb7-b63a-77841834a3dd','saml ecp','SAML ECP Profile Authentication Flow','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('be542fb8-cabd-4de6-aa9e-a88e70a8d88e','Authentication Options','Authentication options.','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('c748b5fc-35e6-41fe-b39c-f1baf5ba8721','clients','Base authentication for clients','651adee9-2b22-45bc-bb90-c8262b4a510a','client-flow','',''),('e06f50e1-bf68-46aa-80f1-228a01b4c447','registration','registration flow','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('e1549857-2600-4e14-8edc-62d050364d3d','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','',''),('e9ef1ed3-4e03-4f32-b856-245874f11310','Account verification options','Method with which to verity the existing account','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','\0',''),('fa333ec5-cc1a-40b2-89ab-0769b6886b52','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','651adee9-2b22-45bc-bb90-c8262b4a510a','basic-flow','','');
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('3159de39-4168-45ab-9f48-57deb69a8c08','create unique user config','651adee9-2b22-45bc-bb90-c8262b4a510a'),('e5a6e526-93e8-4180-a8fd-1d8e0be75c57','review profile config','651adee9-2b22-45bc-bb90-c8262b4a510a');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('3159de39-4168-45ab-9f48-57deb69a8c08','false','require.password.update.after.registration'),('e5a6e526-93e8-4180-a8fd-1d8e0be75c57','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('05aba222-b359-449c-971d-a519b3a6af29','','\0','_platform-console',0,'','dummy',NULL,'\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','','\0'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','','\0','security-admin-console',0,'',NULL,'/admin/master/console/','\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret','${authAdminUrl}',NULL,NULL,'','\0','\0','\0'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','','\0','account-console',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',0,'\0','\0','${client_account-console}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('56afea60-8018-44a3-bc73-7cf34c003b83','','\0','broker',0,'\0',NULL,NULL,'',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('5bca1030-28bd-4bb7-aecd-17d61439cd30','','\0','master-realm',0,'\0',NULL,NULL,'',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0','\0'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','','','_platform',0,'\0','dummy',NULL,'\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','','\0','account',0,'',NULL,'/realms/master/account/','\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',0,'\0','\0','${client_account}','\0','client-secret','${authBaseUrl}',NULL,NULL,'','\0','\0','\0'),('c2f49504-8ddb-4505-bc84-4357f6139c58','','','_platform-api',0,'',NULL,NULL,'\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0'),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','','\0','admin-cli',0,'',NULL,NULL,'\0',NULL,'\0','651adee9-2b22-45bc-bb90-c8262b4a510a','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0','','\0');
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('05aba222-b359-449c-971d-a519b3a6af29','backchannel.logout.revoke.offline.tokens','false'),('05aba222-b359-449c-971d-a519b3a6af29','backchannel.logout.session.required','true'),('05aba222-b359-449c-971d-a519b3a6af29','client.secret.creation.time','1698207109'),('05aba222-b359-449c-971d-a519b3a6af29','client_credentials.use_refresh_token','false'),('05aba222-b359-449c-971d-a519b3a6af29','display.on.consent.screen','false'),('05aba222-b359-449c-971d-a519b3a6af29','exclude.session.state.from.auth.response','false'),('05aba222-b359-449c-971d-a519b3a6af29','id.token.as.detached.signature','false'),('05aba222-b359-449c-971d-a519b3a6af29','oauth2.device.authorization.grant.enabled','false'),('05aba222-b359-449c-971d-a519b3a6af29','oidc.ciba.grant.enabled','false'),('05aba222-b359-449c-971d-a519b3a6af29','post.logout.redirect.uris','/*'),('05aba222-b359-449c-971d-a519b3a6af29','require.pushed.authorization.requests','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.artifact.binding','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.assertion.signature','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.authnstatement','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.client.signature','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.encrypt','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.force.post.binding','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.multivalued.roles','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.onetimeuse.condition','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.server.signature','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml.server.signature.keyinfo.ext','false'),('05aba222-b359-449c-971d-a519b3a6af29','saml_force_name_id_format','false'),('05aba222-b359-449c-971d-a519b3a6af29','tls.client.certificate.bound.access.tokens','false'),('05aba222-b359-449c-971d-a519b3a6af29','use.refresh.tokens','true'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','pkce.code.challenge.method','S256'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','post.logout.redirect.uris','+'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','pkce.code.challenge.method','S256'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','post.logout.redirect.uris','+'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','backchannel.logout.revoke.offline.tokens','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','backchannel.logout.session.required','true'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','client.secret.creation.time','1698207108'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','client_credentials.use_refresh_token','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','display.on.consent.screen','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','exclude.session.state.from.auth.response','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','id.token.as.detached.signature','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','oauth2.device.authorization.grant.enabled','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','oidc.ciba.grant.enabled','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','require.pushed.authorization.requests','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.artifact.binding','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.assertion.signature','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.authnstatement','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.client.signature','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.encrypt','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.force.post.binding','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.multivalued.roles','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.onetimeuse.condition','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.server.signature','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml.server.signature.keyinfo.ext','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','saml_force_name_id_format','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','tls.client.certificate.bound.access.tokens','false'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','use.refresh.tokens','true'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','post.logout.redirect.uris','+'),('c2f49504-8ddb-4505-bc84-4357f6139c58','access.token.lifespan','86400'),('c2f49504-8ddb-4505-bc84-4357f6139c58','acr.loa.map','{}'),('c2f49504-8ddb-4505-bc84-4357f6139c58','backchannel.logout.revoke.offline.tokens','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','backchannel.logout.session.required','true'),('c2f49504-8ddb-4505-bc84-4357f6139c58','client.session.idle.timeout','86400'),('c2f49504-8ddb-4505-bc84-4357f6139c58','client.session.max.lifespan','86400'),('c2f49504-8ddb-4505-bc84-4357f6139c58','client_credentials.use_refresh_token','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','display.on.consent.screen','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','exclude.session.state.from.auth.response','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','frontchannel.logout.session.required','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','id.token.as.detached.signature','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','oauth2.device.authorization.grant.enabled','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','oidc.ciba.grant.enabled','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','require.pushed.authorization.requests','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.allow.ecp.flow','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.artifact.binding','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.assertion.signature','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.authnstatement','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.client.signature','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.encrypt','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.force.post.binding','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.multivalued.roles','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.onetimeuse.condition','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.server.signature','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml.server.signature.keyinfo.ext','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','saml_force_name_id_format','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','tls.client.certificate.bound.access.tokens','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','token.response.type.bearer.lower-case','false'),('c2f49504-8ddb-4505-bc84-4357f6139c58','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('09c75ce5-47ed-41b1-bd8a-43fba6a62e78','offline_access','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect built-in scope: offline_access','openid-connect'),('0e8cc96b-1f41-4366-bcbb-4f48d5560015','microprofile-jwt','651adee9-2b22-45bc-bb90-c8262b4a510a','Microprofile - JWT built-in scope','openid-connect'),('19fe1d2b-bd19-4e10-be5e-42f719a73d60','address','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect built-in scope: address','openid-connect'),('3917e618-0457-43a6-93dd-287fb61ef0e0','acr','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('670b707b-a03a-47cf-aa7d-7aaa89bad3a7','web-origins','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('6ada229b-fbb3-4eea-9755-7f674ebb0909','email','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect built-in scope: email','openid-connect'),('a1e3bbbe-4419-4b18-97e6-18a5e13d4715','profile','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect built-in scope: profile','openid-connect'),('c4729df5-21a1-4c21-881d-e0e412531344','role_list','651adee9-2b22-45bc-bb90-c8262b4a510a','SAML role list','saml'),('c971c297-d8f6-4b16-a336-cc2e1c7451aa','roles','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect scope for add user roles to the access token','openid-connect'),('d6dcb5ef-6699-4fc1-a56c-9e247919855e','phone','651adee9-2b22-45bc-bb90-c8262b4a510a','OpenID Connect built-in scope: phone','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('09c75ce5-47ed-41b1-bd8a-43fba6a62e78','${offlineAccessScopeConsentText}','consent.screen.text'),('09c75ce5-47ed-41b1-bd8a-43fba6a62e78','true','display.on.consent.screen'),('0e8cc96b-1f41-4366-bcbb-4f48d5560015','false','display.on.consent.screen'),('0e8cc96b-1f41-4366-bcbb-4f48d5560015','true','include.in.token.scope'),('19fe1d2b-bd19-4e10-be5e-42f719a73d60','${addressScopeConsentText}','consent.screen.text'),('19fe1d2b-bd19-4e10-be5e-42f719a73d60','true','display.on.consent.screen'),('19fe1d2b-bd19-4e10-be5e-42f719a73d60','true','include.in.token.scope'),('3917e618-0457-43a6-93dd-287fb61ef0e0','false','display.on.consent.screen'),('3917e618-0457-43a6-93dd-287fb61ef0e0','false','include.in.token.scope'),('670b707b-a03a-47cf-aa7d-7aaa89bad3a7','','consent.screen.text'),('670b707b-a03a-47cf-aa7d-7aaa89bad3a7','false','display.on.consent.screen'),('670b707b-a03a-47cf-aa7d-7aaa89bad3a7','false','include.in.token.scope'),('6ada229b-fbb3-4eea-9755-7f674ebb0909','${emailScopeConsentText}','consent.screen.text'),('6ada229b-fbb3-4eea-9755-7f674ebb0909','true','display.on.consent.screen'),('6ada229b-fbb3-4eea-9755-7f674ebb0909','true','include.in.token.scope'),('a1e3bbbe-4419-4b18-97e6-18a5e13d4715','${profileScopeConsentText}','consent.screen.text'),('a1e3bbbe-4419-4b18-97e6-18a5e13d4715','true','display.on.consent.screen'),('a1e3bbbe-4419-4b18-97e6-18a5e13d4715','true','include.in.token.scope'),('c4729df5-21a1-4c21-881d-e0e412531344','${samlRoleListScopeConsentText}','consent.screen.text'),('c4729df5-21a1-4c21-881d-e0e412531344','true','display.on.consent.screen'),('c971c297-d8f6-4b16-a336-cc2e1c7451aa','${rolesScopeConsentText}','consent.screen.text'),('c971c297-d8f6-4b16-a336-cc2e1c7451aa','true','display.on.consent.screen'),('c971c297-d8f6-4b16-a336-cc2e1c7451aa','false','include.in.token.scope'),('d6dcb5ef-6699-4fc1-a56c-9e247919855e','${phoneScopeConsentText}','consent.screen.text'),('d6dcb5ef-6699-4fc1-a56c-9e247919855e','true','display.on.consent.screen'),('d6dcb5ef-6699-4fc1-a56c-9e247919855e','true','include.in.token.scope');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('05aba222-b359-449c-971d-a519b3a6af29','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('05aba222-b359-449c-971d-a519b3a6af29','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('05aba222-b359-449c-971d-a519b3a6af29','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('05aba222-b359-449c-971d-a519b3a6af29','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('05aba222-b359-449c-971d-a519b3a6af29','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('05aba222-b359-449c-971d-a519b3a6af29','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('05aba222-b359-449c-971d-a519b3a6af29','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('05aba222-b359-449c-971d-a519b3a6af29','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('56afea60-8018-44a3-bc73-7cf34c003b83','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('56afea60-8018-44a3-bc73-7cf34c003b83','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('56afea60-8018-44a3-bc73-7cf34c003b83','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('56afea60-8018-44a3-bc73-7cf34c003b83','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('56afea60-8018-44a3-bc73-7cf34c003b83','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('56afea60-8018-44a3-bc73-7cf34c003b83','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('56afea60-8018-44a3-bc73-7cf34c003b83','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('56afea60-8018-44a3-bc73-7cf34c003b83','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('56afea60-8018-44a3-bc73-7cf34c003b83','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('5bca1030-28bd-4bb7-aecd-17d61439cd30','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('5bca1030-28bd-4bb7-aecd-17d61439cd30','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('5bca1030-28bd-4bb7-aecd-17d61439cd30','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('5bca1030-28bd-4bb7-aecd-17d61439cd30','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('5bca1030-28bd-4bb7-aecd-17d61439cd30','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('5bca1030-28bd-4bb7-aecd-17d61439cd30','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('5bca1030-28bd-4bb7-aecd-17d61439cd30','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('5bca1030-28bd-4bb7-aecd-17d61439cd30','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('5bca1030-28bd-4bb7-aecd-17d61439cd30','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('6215c576-f7db-4001-9ea3-852b9e3b9ca9','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('c2f49504-8ddb-4505-bc84-4357f6139c58','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('c2f49504-8ddb-4505-bc84-4357f6139c58','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('c2f49504-8ddb-4505-bc84-4357f6139c58','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('c2f49504-8ddb-4505-bc84-4357f6139c58','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('c2f49504-8ddb-4505-bc84-4357f6139c58','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('c2f49504-8ddb-4505-bc84-4357f6139c58','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('c2f49504-8ddb-4505-bc84-4357f6139c58','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('c2f49504-8ddb-4505-bc84-4357f6139c58','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('c2f49504-8ddb-4505-bc84-4357f6139c58','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0'),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('ef880f10-6f92-4937-a4d1-ab6b90f8de34','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0');
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('09c75ce5-47ed-41b1-bd8a-43fba6a62e78','8fe8551a-9e50-40e6-b48f-76d346b307c8');
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
INSERT INTO `COMPONENT` VALUES ('1399338a-7327-4df4-a56c-7d0d3fec616f','aes-generated','651adee9-2b22-45bc-bb90-c8262b4a510a','aes-generated','org.keycloak.keys.KeyProvider','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL),('24fc6644-1d02-4cbf-8678-b76205548550','hmac-generated','651adee9-2b22-45bc-bb90-c8262b4a510a','hmac-generated','org.keycloak.keys.KeyProvider','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL),('4c27eeb7-d128-4a00-b802-56df130968c6','Full Scope Disabled','651adee9-2b22-45bc-bb90-c8262b4a510a','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','anonymous'),('56d58f47-b4c7-46ed-9b78-e72515f3be39','Allowed Protocol Mapper Types','651adee9-2b22-45bc-bb90-c8262b4a510a','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','authenticated'),('5872e556-72d0-45e1-9fad-6a34ab2a68a4','rsa-enc-generated','651adee9-2b22-45bc-bb90-c8262b4a510a','rsa-enc-generated','org.keycloak.keys.KeyProvider','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL),('660f6786-3c92-4db0-bd98-3d0b2adc9554','rsa-generated','651adee9-2b22-45bc-bb90-c8262b4a510a','rsa-generated','org.keycloak.keys.KeyProvider','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL),('677c028d-f4f5-45dc-95f3-4ce284f68441','Max Clients Limit','651adee9-2b22-45bc-bb90-c8262b4a510a','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','anonymous'),('77b62a9f-bff0-4f60-bd8f-af02ecd108d2','Allowed Client Scopes','651adee9-2b22-45bc-bb90-c8262b4a510a','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','authenticated'),('7b5268a9-9af2-4d58-9517-11eb35622c9f','Consent Required','651adee9-2b22-45bc-bb90-c8262b4a510a','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','anonymous'),('8d87b543-6f24-4b92-ba20-dad69fe227bd','Trusted Hosts','651adee9-2b22-45bc-bb90-c8262b4a510a','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','anonymous'),('a3e2aa2f-b739-4851-a89e-1874621bd5cf','Allowed Protocol Mapper Types','651adee9-2b22-45bc-bb90-c8262b4a510a','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','anonymous'),('d2da302b-eeac-4510-8ff2-a009ff477c5f','Allowed Client Scopes','651adee9-2b22-45bc-bb90-c8262b4a510a','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('0227485e-9f9d-4e92-a97a-3fa3026f8e25','5872e556-72d0-45e1-9fad-6a34ab2a68a4','certificate','MIICmzCCAYMCBgGLZQf2kDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDI1MDQxMDAyWhcNMzMxMDI1MDQxMTQyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDAlsWU3WN4ExzCFiRE+Y9dFIFxL7t6v1vRlFvTAtOMH9/xIybpX47+MghcCpA6rjA4pmVdLPaSUSDDB5/8YuEYUB3H+FSgaxzTL+uo/mAw04HGgVaqVkzhAUrYtORYTTdVv1Ax+8Ac1Xfm+h1BukiHX26u4Rl6YeRoKiUFDju6abGjtB8xhcu16qEIEgU8r3WJsjfzipnf8q7dV15HCAqNVegZXF05E8ZY19JxfwsQTChLSr0IH59+qjJxOUJavVtA3k9euP1WH7kQl01aeujfhxyRXO+roxHYr4mFrIEcWdKLTGET+Qx3uH7F4qNbeIVHJ5yodmO1Jc3tzINfIc6xAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAEsC1MJ1+1qShCJ3qJMQFO+LbZz96Xonel2UF72f7sXLbo38AiptNHMVfmRLU2D0sPGrQ/75paTCU8lz17b00HmuEnztnXfDHxzdJ5d9SytqrbY+hg3avfAuBkQwbsFRlWSW8XvItFBiRZpqpMRJ6Pq+KTVmiWuyMRbIiW9iuYz2faHuCvtC0SHXfr28hzh0yY6dE2AxMpjfz/hstaV/ytKzWfmzUQeqqAO3tErdqE4f1pFKCBhRv6YsGs7Hlm+ysN3QPliKBUN43icaE3UxbxJ9ZMkB/OS/sgZLZsZfSznj3AVxvaYDxicg26B0OpLKzXMtK4Se+QSeI0yu/Wl0Hd4='),('0429d919-b207-47dd-95b1-93fe491e4562','660f6786-3c92-4db0-bd98-3d0b2adc9554','privateKey','MIIEogIBAAKCAQEA0o+jh26yUsf7hheTGbPOn37GKt8UIbk/GYXy2AhSwqL7H7GbftSwjts6+5pmQndJmBh/p1w+D1poT2FVWDJGhVagnO3LLkiiebcqYonznLdgidOSin8a8p/GPsdV1KCZj3M+0eJp8VCz3hZTqirh/gdweOsVP//Id+95IcIvRWgmL6cBDJF1Jv516+GHPAsz5MLyYFRLVCUWa12GhPgjd31YmT+hcuKgzvVARfiJV8fRbtGew7vwmy6jaPzldOtTSRBNA8TsfyiV6gqEhQCtpCaV7aHPVcQIMxXk0kzp+D6k3fltit5rg9wmBu6oBQ8LPy84zYYcfgoTOuc1c0fgewIDAQABAoIBAAeTBjFpgH2s1vXwZCjBCJZBM7S4GJvL86Kh6GXwCrYYscrmky7hTMaeyUTivXn3m4yemPz2uv7HZEgyuqS1DkdeoeFzRmNQVpPlTF+GEd7Z092xYCyePORsbe+1MPe4nT2FSkW3jNMS8Z10FSdiaoW+U8PtxPJr65Sw5x0ZRKUM9NjDQsnW/t/LOa9Hb//8+ZUrhCynXOyOisz+tfqAo4GTi4Lt1TMgT0REa7ylLNXQJHcQKkBgsK1bSTgM2v6RXc1tJAeSSBVXLaZ0XLuWQFU/aGOqYaqUh/Bx12wCnPNqW7lP+jLFWC5Xrzs/C3msoyqL7zYTuz/xQtfrhp62eo0CgYEA7wVxNXNmvhujpAOKsXDzwJKcLrUtNUp+GGyzDRWcz95aKoHEHcoHcSO4a/2FcBst8lX7MjMx28tdJZxCUllZwsejkIpLoa6ak6c+Gm3tIH9mac++EZKfhWyr903pphZ48RedlbTMNINFQ3LPkA8RbzMwkdoD2VEE+0dYocY3TGcCgYEA4YSnUfeN/zmaZsiQP60fpCulScIdhZFkmucZyBXB8VsEw/K95yHS8e1nEfRpKi2QVvUm2tUsokyJmM1RZpgi0TF0ZYaGai8NthImJLT3pwrTbp6zp4FsqqFMyTXD3B8Xgmb+x9i6GX/6x4wcMSFAWu1qdCFJG9j4aW2gN+RTfs0CgYA+G1boQZ0vxrTFmFoAc04S+sV0aYVetIWBSTVZMAV4Cdm589AGwYkff92aydxTXeyZbHgB+kV5TCVe8XRWO3tUXlWE6Dpwv5LQzQMZEPktmYz974n+vO+QVsV0VB1jF7HDS5SZ4smw12828G04jIHGODHlpBWd8SxvMoG4P238/wKBgCQDrTzXzeNubYvwh6jDmwP6vGC1EUXdXDWopmNfpiNHJ9GrGEyrCCb+hLFHWOwVbrGUYOodlQ0uL+MpFtDNhvHldfMospqOfSAQcer2w333qqBF0+byMkpli/+uCGNEy9pVXGbJ455i48euRmpKJx7eP1vgXO6HjdQ4X5fNbNAZAoGAF/U9TIHlv0kp7ooFrQ1SUF6PYWMwwk+yil5lXb0hb4Mf+DAhIxUqG/G7F3p+gxNZw03zYRppeYTr2abfKtTWzpBSFHEwCmlp7nfy58BPt60NYV9sK69+B2kI0kKVuL0cYbLhDQkhBOfc0Ff5vc5xqtuQ/oRsILcOmfj+GDB1Ul4='),('0f762738-5f92-4247-90ed-f933f524bf1c','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','oidc-address-mapper'),('114cd7f6-9ab2-4d1e-8ad2-da1b4cbb170a','8d87b543-6f24-4b92-ba20-dad69fe227bd','client-uris-must-match','true'),('344fe28b-cc7a-42df-b387-8d481e4808a2','1399338a-7327-4df4-a56c-7d0d3fec616f','kid','edde4f73-c07c-40b3-8e5f-7b7d56908957'),('3b4bd137-c929-402f-9f5c-152fd0de348b','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('3e10cda4-1ccd-48e5-af73-0ad107e04713','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('3ebb34f7-a935-4947-bdbd-b078c3310c90','77b62a9f-bff0-4f60-bd8f-af02ecd108d2','allow-default-scopes','true'),('4290f0a6-8d40-48e1-86f5-ba190cf91af5','24fc6644-1d02-4cbf-8678-b76205548550','secret','34yB68_TAcYQqWCLD-WeLww8RZ-8a23xNP6RkTjayRdo_M1kNuuuzzrHnzv7389PX2CUo58oOWkwR3Rdyd0PAw'),('43d4cdbe-8e48-4ff0-9c3f-308afd38aa58','5872e556-72d0-45e1-9fad-6a34ab2a68a4','algorithm','RSA-OAEP'),('4a6cc363-0695-43ba-bd53-5c78901afb3e','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('4bc365b9-bd1d-4cde-ba5c-92dee87306f1','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('4efc3a29-d96c-4522-bec1-6fa49670c66a','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','saml-role-list-mapper'),('56a60e94-1761-4899-a155-ac2e9c4b7ed0','24fc6644-1d02-4cbf-8678-b76205548550','algorithm','HS256'),('62feaa05-35ea-44ef-843f-54c37d432063','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','oidc-full-name-mapper'),('6899fc88-3973-4516-b9e1-5cf05d4607d1','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','saml-role-list-mapper'),('69929286-e9fe-414a-b483-25a97d2ce9ff','24fc6644-1d02-4cbf-8678-b76205548550','kid','7c5b950a-bb31-4c81-90fd-68760ba4ff6f'),('715f9c89-0389-40aa-87a1-0be939007f44','660f6786-3c92-4db0-bd98-3d0b2adc9554','certificate','MIICmzCCAYMCBgGLZQf0yjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMDI1MDQxMDAyWhcNMzMxMDI1MDQxMTQyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDSj6OHbrJSx/uGF5MZs86ffsYq3xQhuT8ZhfLYCFLCovsfsZt+1LCO2zr7mmZCd0mYGH+nXD4PWmhPYVVYMkaFVqCc7csuSKJ5typiifOct2CJ05KKfxryn8Y+x1XUoJmPcz7R4mnxULPeFlOqKuH+B3B46xU//8h373khwi9FaCYvpwEMkXUm/nXr4Yc8CzPkwvJgVEtUJRZrXYaE+CN3fViZP6Fy4qDO9UBF+IlXx9Fu0Z7Du/CbLqNo/OV061NJEE0DxOx/KJXqCoSFAK2kJpXtoc9VxAgzFeTSTOn4PqTd+W2K3muD3CYG7qgFDws/LzjNhhx+ChM65zVzR+B7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHi3dukE7VDK3uUm4MBY3QEt3eKrZ6/lwb5DG4A/MB6Te3FeuunvEgdkG3hbu+yxK3WA9Sinarm1AEIJwj1X1aLnyzPwPp9Y/pK/ufnTyEQmnz9kiBnl6D/JCvUWhCv244yXy7w7+1cQBt4oSkOcQsD8VUr/6gZoa8Sph4xnQpLhGXEZQ97T76OA7dSsFP9Ei6Q5Wi1k+zZczTBRYeKVsOFaK1XTcXvmJeUZpsyvKhWzthrx9piePa0hx2kqPnAe8Kn28qB0oUDZYH4/UZke39JGjQ7/pNk+KJdJmWSlQZTq9UC4Ihx/NcMe9KxDAI+xdLkJ/UQbICMl3YtojsvjLIA='),('768fe1f6-8fc6-47a0-9955-00e2f8197425','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','saml-user-property-mapper'),('8023e941-dbb1-4eaf-81e0-935e423e4bef','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','saml-user-property-mapper'),('8a3521b6-3d35-4bf4-87e2-8a1fe9c25a1c','660f6786-3c92-4db0-bd98-3d0b2adc9554','priority','100'),('95c45cec-a444-4f5a-999c-d1e17697434f','677c028d-f4f5-45dc-95f3-4ce284f68441','max-clients','200'),('a46b47d8-9c0f-472b-96d3-f179355a8c1e','d2da302b-eeac-4510-8ff2-a009ff477c5f','allow-default-scopes','true'),('a61cbc3d-d29b-405e-aa82-ee3e00a2afb6','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','oidc-full-name-mapper'),('aecba80f-b2d0-4979-bca0-70eb62aeb5ca','1399338a-7327-4df4-a56c-7d0d3fec616f','secret','xoY4JahNJFlyIgzL_FB5wQ'),('b2a56f33-9068-4593-9c53-bdc4b0515d68','8d87b543-6f24-4b92-ba20-dad69fe227bd','host-sending-registration-request-must-match','true'),('baf95c6f-dc30-4a9f-83bb-86fc2883b16d','5872e556-72d0-45e1-9fad-6a34ab2a68a4','keyUse','ENC'),('ccea06a2-d383-4858-8eab-7a27de91d75e','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','oidc-address-mapper'),('d128ddc2-0998-485c-88c5-53ae96471e19','24fc6644-1d02-4cbf-8678-b76205548550','priority','100'),('d29b8824-391d-445f-8713-430053f14ede','5872e556-72d0-45e1-9fad-6a34ab2a68a4','privateKey','MIIEowIBAAKCAQEAwJbFlN1jeBMcwhYkRPmPXRSBcS+7er9b0ZRb0wLTjB/f8SMm6V+O/jIIXAqQOq4wOKZlXSz2klEgwwef/GLhGFAdx/hUoGsc0y/rqP5gMNOBxoFWqlZM4QFK2LTkWE03Vb9QMfvAHNV35vodQbpIh19uruEZemHkaColBQ47ummxo7QfMYXLteqhCBIFPK91ibI384qZ3/Ku3VdeRwgKjVXoGVxdORPGWNfScX8LEEwoS0q9CB+ffqoycTlCWr1bQN5PXrj9Vh+5EJdNWnro34cckVzvq6MR2K+JhayBHFnSi0xhE/kMd7h+xeKjW3iFRyecqHZjtSXN7cyDXyHOsQIDAQABAoIBAAPqDJH9/euO1+LJ+Gq+d794jzjxs2nHQeJ8lXEweYQ7kZ2hDUVo/8sC0VCtlkjbCXfdSeoe49QNehD8sq+6gsCvwCs0TOQFyUwxiSSiJupXIigasNw9bMqV8CN/abSxvRItFUAu0bTEUe+L3dRcKOU3d1Rulsn5+15ynNYBeA1N15aU2UXKpPlYioF9ktAQtN/vg46559JvdSVVj4Y/fUm0ztenbWFY7tF46VK8BQfEsbRswTs8T15jC73U60B6LoH0xFx/sEcOAOaYtbHBnmIIuLZq3N0czYu81nmyS8mcPXS2RE3T0t1SM52QGTjVvzBF6LYDncu4NUrflVtkr1ECgYEA7X3opFeRfVhjkui9oXF2lZV88+DgAyGjQI45Yk/h/VlDx+Q9HgLrJqNJLFfjJaTJoRKl4mx7XM/bke4NhnPRDE3aMsSc2fuGiiYq4bximzriIwrf2wkhW6NeaWXIMzBCyIjO5DqA7mz6mMzj1hHhQDCxWdfdRR5nRqK8BjYi0gcCgYEAz5kGtABooKAeh/dWo0lkg5QJiyNMTy6wYFGsCpvazSpxWQHydaUvgs1w5fnU1Iw8SYE0S55ro8xTNwW8DeRXXMK5GIPOV98oLszmmUUMvrgJJ9EkCqVC7jl4rRdJfyQ0bokT+Jpn1xhf7bShPuLGKQYbW24h/zJrTpSyp6ObS4cCgYA3Y7c/pSDMoDHRELExlxn2N0BGTPtSH6VIqCMgF8t4YDpbw5KxjjKz9z9YtULIA8/23jeMQIrhEaV/OoszAY4PFZU/Y/XFLVGqpM45icthsvENBTtChbWe/tJFOLTho27gAHBocHCjqw0jWB4HTnI/m1uxvZPgy/+ATPIXbMbgPwKBgFUJDMrcw/7Pt9HgCdgW7xpKoGIjElX4/PxnV/58evLBaO6ZspRoFn8Q4icB4CE0VFmTmDVFbjgJMSj/q1lRaEux45ncG8C4wz/wZKDxvNe+kNmDfKzzpufoGLtmJ4/x55xDgC+8J77e2CSJcedNgvg47SnVgg2DvJrSpB+xD6KvAoGBALcHjEe3juZTeMTwoxCDBT+kgRzzKQqpUA24mw/oNYfYa1aa7x1UeYpuFa24JvXbRLYo040Bs5DPqjidvHDcL4lhWIClw1BakA+keVkPqhHDw78pmUIdLm2q1A5epXeA+ct3eB2ND/6N12L51q38XqNKEJIkMPAedh31z2ipsoTv'),('dfb312bd-be7e-4bbd-8c3e-dfc48ff19150','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e16bd7a2-2b6f-4cfa-a13c-a6c3813c4ab4','56d58f47-b4c7-46ed-9b78-e72515f3be39','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ea961683-4d55-49e6-baec-7e3b8dfa816a','5872e556-72d0-45e1-9fad-6a34ab2a68a4','priority','100'),('ed51699e-da66-4619-a223-919e658c8dd8','1399338a-7327-4df4-a56c-7d0d3fec616f','priority','100'),('f6e35f6d-a6be-4bec-a80e-6823f72aa2d2','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f76cb3d1-3ec0-4e4b-a7e3-e8cd949e59f6','660f6786-3c92-4db0-bd98-3d0b2adc9554','keyUse','SIG'),('ff5f5b6a-a941-435b-878e-cd941270c405','a3e2aa2f-b739-4851-a89e-1874621bd5cf','allowed-protocol-mapper-types','saml-user-attribute-mapper');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('0eeddb27-fd75-4913-aa0b-9cea97c98a00','016793e3-7e2b-4f98-84a8-d7fe97bedca6'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','1026af7a-2de1-4187-a167-957c32c52364'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','2a5a4cfb-3a3e-4866-bfe9-b6810d7f230d'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','419b4931-fa0f-453e-8b6b-e0b7684e142b'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','4d2846dd-c391-41e7-87f1-13da02221db9'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','5181d184-751a-483a-bae2-62381a6079d0'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','57bcf06a-fe11-4a14-b32c-2a1bf5aaf397'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','6e36ff00-b2c0-4936-88df-fbe1f008cdd9'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','752ea161-9487-43d1-b338-f28364aaec23'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','79395943-4699-4ee7-b38e-bec522983a40'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','84c9c182-5afb-4276-a872-21afd822803b'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','8927ffa3-aac2-4088-8d14-6cd289bdc152'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','8e8bbaf3-f075-4654-aaf5-fc4a36254d57'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','90ea5113-7209-47ed-beaa-87a6a11da1bd'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','aa06e393-d11d-422c-9e24-6b4f7e2d5a2e'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','ae65826d-a7d0-43d6-bb3d-a8c00c8962c2'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','b618281e-6f2c-4be3-91ab-d43fe66a5b77'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','cd8d03ef-e09e-401d-9119-3c41b85ac481'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','f0c4aab7-dd39-4ccc-a1ed-c21d029a3a8d'),('419b4931-fa0f-453e-8b6b-e0b7684e142b','2a5a4cfb-3a3e-4866-bfe9-b6810d7f230d'),('74254577-e48b-4008-a50a-61c2294a5e08','20912d31-3866-4ab2-9edc-a075eb84d944'),('84c9c182-5afb-4276-a872-21afd822803b','5181d184-751a-483a-bae2-62381a6079d0'),('84c9c182-5afb-4276-a872-21afd822803b','aa06e393-d11d-422c-9e24-6b4f7e2d5a2e'),('ad490435-6469-4592-952e-228b18a67f18','0161a940-de70-4dcd-a5af-017ab1515d50'),('ad490435-6469-4592-952e-228b18a67f18','74254577-e48b-4008-a50a-61c2294a5e08'),('ad490435-6469-4592-952e-228b18a67f18','8fe8551a-9e50-40e6-b48f-76d346b307c8'),('ad490435-6469-4592-952e-228b18a67f18','eac010f1-7bfb-4d01-9ab1-c5cd74960fe5'),('cbb0bd0e-d87d-43e4-a372-cb3c9d6e5b9b','6ebbbe12-4cb9-4085-8868-3ae4b2152ceb');
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
INSERT INTO `CREDENTIAL` VALUES ('413c18a1-4f89-432b-981b-2e8410e072aa',NULL,'password','dd81d845-6e62-46c5-ae54-d0f95614b8db',1698207103579,NULL,'{\"value\":\"m0BD19dXBu3D0SumRDS876Gfc1VdHls+941de1g2hkgDnSqg0Coi3rlJLVToXfnqpqAiwWv0erTbgVl0/Cs7QQ==\",\"salt\":\"oTccwgqXnc+IwS9Kc/8KWg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-10-25 13:11:31',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-10-25 13:11:31',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-10-25 13:11:31',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-10-25 13:11:31',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-10-25 13:11:32',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-10-25 13:11:32',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-10-25 13:11:32',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-10-25 13:11:32',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-10-25 13:11:32',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-10-25 13:11:33',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-10-25 13:11:33',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-10-25 13:11:33',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-10-25 13:11:33',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 13:11:33',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 13:11:33',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 13:11:33',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-10-25 13:11:33',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-10-25 13:11:34',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-10-25 13:11:34',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-10-25 13:11:34',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-25 13:11:34',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-10-25 13:11:34',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-10-25 13:11:34',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-10-25 13:11:34',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-10-25 13:11:34',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-10-25 13:11:34',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-10-25 13:11:35',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-10-25 13:11:35',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-10-25 13:11:35',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-10-25 13:11:36',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-10-25 13:11:36',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-10-25 13:11:36',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 13:11:36',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 13:11:36',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 13:11:36',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 13:11:36',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-10-25 13:11:36',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8207089267'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-10-25 13:11:36',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-10-25 13:11:36',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 13:11:36',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 13:11:36',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 13:11:36',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-10-25 13:11:36',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-10-25 13:11:36',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 13:11:37',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 13:11:37',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 13:11:37',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 13:11:37',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-10-25 13:11:37',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-10-25 13:11:37',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-10-25 13:11:37',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-10-25 13:11:37',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-10-25 13:11:37',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-10-25 13:11:37',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 13:11:37',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 13:11:37',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 13:11:38',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-10-25 13:11:38',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-10-25 13:11:38',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-10-25 13:11:38',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-25 13:11:38',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-10-25 13:11:38',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-10-25 13:11:39',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-10-25 13:11:39',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 13:11:39',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 13:11:39',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-10-25 13:11:39',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-10-25 13:11:39',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-10-25 13:11:39',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-10-25 13:11:39',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8207089267'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-10-25 13:11:39',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'8207089267'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 13:11:39',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8207089267'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 13:11:39',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8207089267'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 13:11:39',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8207089267'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 13:11:39',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-10-25 13:11:39',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 13:11:39',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 13:11:39',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 13:11:39',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-10-25 13:11:39',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 13:11:39',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 13:11:39',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 13:11:39',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 13:11:39',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8207089267'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-10-25 13:11:39',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-10-25 13:11:39',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'8207089267'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-25 13:11:39',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-10-25 13:11:39',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'8207089267'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'8207089267'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'8207089267'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8207089267'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8207089267'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-10-25 13:11:39',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8207089267'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8207089267'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8207089267'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8207089267'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8207089267'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-10-25 13:11:39',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'8207089267'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-10-25 13:11:39',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'8207089267'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2023-10-25 13:11:39',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2023-10-25 13:11:39',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8207089267'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2023-10-25 13:11:39',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'8207089267'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 13:11:39',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 13:11:39',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8207089267'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-10-25 13:11:39',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8207089267');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('651adee9-2b22-45bc-bb90-c8262b4a510a','09c75ce5-47ed-41b1-bd8a-43fba6a62e78','\0'),('651adee9-2b22-45bc-bb90-c8262b4a510a','0e8cc96b-1f41-4366-bcbb-4f48d5560015','\0'),('651adee9-2b22-45bc-bb90-c8262b4a510a','19fe1d2b-bd19-4e10-be5e-42f719a73d60','\0'),('651adee9-2b22-45bc-bb90-c8262b4a510a','3917e618-0457-43a6-93dd-287fb61ef0e0',''),('651adee9-2b22-45bc-bb90-c8262b4a510a','670b707b-a03a-47cf-aa7d-7aaa89bad3a7',''),('651adee9-2b22-45bc-bb90-c8262b4a510a','6ada229b-fbb3-4eea-9755-7f674ebb0909',''),('651adee9-2b22-45bc-bb90-c8262b4a510a','a1e3bbbe-4419-4b18-97e6-18a5e13d4715',''),('651adee9-2b22-45bc-bb90-c8262b4a510a','c4729df5-21a1-4c21-881d-e0e412531344',''),('651adee9-2b22-45bc-bb90-c8262b4a510a','c971c297-d8f6-4b16-a336-cc2e1c7451aa',''),('651adee9-2b22-45bc-bb90-c8262b4a510a','d6dcb5ef-6699-4fc1-a56c-9e247919855e','\0');
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0161a940-de70-4dcd-a5af-017ab1515d50','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','${role_uma_authorization}','uma_authorization','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL,NULL),('016793e3-7e2b-4f98-84a8-d7fe97bedca6','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_impersonation}','impersonation','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','${role_admin}','admin','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL,NULL),('1026af7a-2de1-4187-a167-957c32c52364','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_manage-users}','manage-users','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('20912d31-3866-4ab2-9edc-a075eb84d944','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_manage-account-links}','manage-account-links','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('2a5a4cfb-3a3e-4866-bfe9-b6810d7f230d','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_query-clients}','query-clients','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('419b4931-fa0f-453e-8b6b-e0b7684e142b','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_view-clients}','view-clients','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('4d2846dd-c391-41e7-87f1-13da02221db9','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','${role_create-realm}','create-realm','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL,NULL),('5181d184-751a-483a-bae2-62381a6079d0','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_query-groups}','query-groups','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('57b82983-9f77-46d3-a6fd-a60588630864','56afea60-8018-44a3-bc73-7cf34c003b83','','${role_read-token}','read-token','651adee9-2b22-45bc-bb90-c8262b4a510a','56afea60-8018-44a3-bc73-7cf34c003b83',NULL),('57bcf06a-fe11-4a14-b32c-2a1bf5aaf397','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_view-identity-providers}','view-identity-providers','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('5b49997a-66c9-471a-aff0-4c60b6e98b14','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_view-groups}','view-groups','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('6e36ff00-b2c0-4936-88df-fbe1f008cdd9','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_manage-clients}','manage-clients','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('6ebbbe12-4cb9-4085-8868-3ae4b2152ceb','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_view-consent}','view-consent','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('74254577-e48b-4008-a50a-61c2294a5e08','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_manage-account}','manage-account','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('752ea161-9487-43d1-b338-f28364aaec23','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_view-events}','view-events','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('79395943-4699-4ee7-b38e-bec522983a40','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_create-client}','create-client','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('7b33ee4e-7221-4604-9d71-61214a351fff','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_delete-account}','delete-account','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('84c9c182-5afb-4276-a872-21afd822803b','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_view-users}','view-users','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('8927ffa3-aac2-4088-8d14-6cd289bdc152','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_view-authorization}','view-authorization','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('8e8bbaf3-f075-4654-aaf5-fc4a36254d57','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_manage-realm}','manage-realm','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('8fe8551a-9e50-40e6-b48f-76d346b307c8','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','${role_offline-access}','offline_access','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL,NULL),('90ea5113-7209-47ed-beaa-87a6a11da1bd','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_manage-authorization}','manage-authorization','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('aa06e393-d11d-422c-9e24-6b4f7e2d5a2e','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_query-users}','query-users','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('ad490435-6469-4592-952e-228b18a67f18','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','${role_default-roles}','default-roles-master','651adee9-2b22-45bc-bb90-c8262b4a510a',NULL,NULL),('ae65826d-a7d0-43d6-bb3d-a8c00c8962c2','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_manage-events}','manage-events','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('aebd14aa-18a8-4006-95cf-fc817a429b9f','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_view-applications}','view-applications','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('b618281e-6f2c-4be3-91ab-d43fe66a5b77','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_view-realm}','view-realm','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('cbb0bd0e-d87d-43e4-a372-cb3c9d6e5b9b','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_manage-consent}','manage-consent','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('cd8d03ef-e09e-401d-9119-3c41b85ac481','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_query-realms}','query-realms','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL),('eac010f1-7bfb-4d01-9ab1-c5cd74960fe5','965dcd0a-3a5f-40ca-bac1-258a77bfa624','','${role_view-profile}','view-profile','651adee9-2b22-45bc-bb90-c8262b4a510a','965dcd0a-3a5f-40ca-bac1-258a77bfa624',NULL),('f0c4aab7-dd39-4ccc-a1ed-c21d029a3a8d','5bca1030-28bd-4bb7-aecd-17d61439cd30','','${role_manage-identity-providers}','manage-identity-providers','651adee9-2b22-45bc-bb90-c8262b4a510a','5bca1030-28bd-4bb7-aecd-17d61439cd30',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('1a0mv','20.0.5',1698207100);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('027d4993-748b-48b8-b3df-a0426e4c010d','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d6dcb5ef-6699-4fc1-a56c-9e247919855e'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('4026a24f-41b7-49fe-a9ea-df0e0cc9dcc1','role list','saml','saml-role-list-mapper',NULL,'c4729df5-21a1-4c21-881d-e0e412531344'),('496ff141-be4e-4f6b-aad6-724c49637d66','acr loa level','openid-connect','oidc-acr-mapper',NULL,'3917e618-0457-43a6-93dd-287fb61ef0e0'),('4bebbe22-eeea-491e-9b91-aeeb787c671c','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'670b707b-a03a-47cf-aa7d-7aaa89bad3a7'),('4f594621-5063-4e02-8834-c7d381c75a78','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'c971c297-d8f6-4b16-a336-cc2e1c7451aa'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','6215c576-f7db-4001-9ea3-852b9e3b9ca9',NULL),('5d608199-771d-449f-aa51-9c92c8e02bf0','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','username','openid-connect','oidc-usermodel-property-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('764a2a87-3176-4338-986a-0df5b17b0851','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0e8cc96b-1f41-4366-bcbb-4f48d5560015'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','locale','openid-connect','oidc-usermodel-attribute-mapper','17bacd11-275b-4d74-8b6b-63dd1767ccfc',NULL),('801f9030-6320-4405-8144-d074520d5e93','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','6215c576-f7db-4001-9ea3-852b9e3b9ca9',NULL),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','email','openid-connect','oidc-usermodel-property-mapper',NULL,'6ada229b-fbb3-4eea-9755-7f674ebb0909'),('b1a15268-9c73-410b-aa7e-3ba3bae0edbe','full name','openid-connect','oidc-full-name-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('b6d9334d-aec2-4704-934b-9e614d92daef','address','openid-connect','oidc-address-mapper',NULL,'19fe1d2b-bd19-4e10-be5e-42f719a73d60'),('ba3bab0f-ada0-48c2-b2be-26698218d3a8','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c971c297-d8f6-4b16-a336-cc2e1c7451aa'),('c0b61bcc-8761-4e58-8e51-878c2a58dd7f','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'c971c297-d8f6-4b16-a336-cc2e1c7451aa'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','6215c576-f7db-4001-9ea3-852b9e3b9ca9',NULL),('d49e609e-6c41-4d2e-8803-0c07aebae06c','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('d646aa7b-c12b-454f-bb2d-178cd0484004','audience resolve','openid-connect','oidc-audience-resolve-mapper','1f59795d-0ea3-45eb-bb05-702c67e0f1c4',NULL),('dd43d95d-7a04-4278-a788-93655a2f814b','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d6dcb5ef-6699-4fc1-a56c-9e247919855e'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a1e3bbbe-4419-4b18-97e6-18a5e13d4715'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'6ada229b-fbb3-4eea-9755-7f674ebb0909'),('ef6df666-77df-447e-a2e0-38a744105503','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'0e8cc96b-1f41-4366-bcbb-4f48d5560015');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('027d4993-748b-48b8-b3df-a0426e4c010d','true','access.token.claim'),('027d4993-748b-48b8-b3df-a0426e4c010d','gender','claim.name'),('027d4993-748b-48b8-b3df-a0426e4c010d','true','id.token.claim'),('027d4993-748b-48b8-b3df-a0426e4c010d','String','jsonType.label'),('027d4993-748b-48b8-b3df-a0426e4c010d','gender','user.attribute'),('027d4993-748b-48b8-b3df-a0426e4c010d','true','userinfo.token.claim'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','true','access.token.claim'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','updated_at','claim.name'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','true','id.token.claim'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','long','jsonType.label'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','updatedAt','user.attribute'),('02cc210f-1e4f-460f-b8b5-6dd2642d2c13','true','userinfo.token.claim'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','true','access.token.claim'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','phone_number_verified','claim.name'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','true','id.token.claim'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','boolean','jsonType.label'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','phoneNumberVerified','user.attribute'),('2805dda6-5474-4764-bcdf-1b72a27c06ef','true','userinfo.token.claim'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','true','access.token.claim'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','nickname','claim.name'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','true','id.token.claim'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','String','jsonType.label'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','nickname','user.attribute'),('29050bb6-83a5-40b3-90a3-15dd88f240b3','true','userinfo.token.claim'),('4026a24f-41b7-49fe-a9ea-df0e0cc9dcc1','Role','attribute.name'),('4026a24f-41b7-49fe-a9ea-df0e0cc9dcc1','Basic','attribute.nameformat'),('4026a24f-41b7-49fe-a9ea-df0e0cc9dcc1','false','single'),('496ff141-be4e-4f6b-aad6-724c49637d66','true','access.token.claim'),('496ff141-be4e-4f6b-aad6-724c49637d66','true','id.token.claim'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','true','access.token.claim'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','clientHost','claim.name'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','true','id.token.claim'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','String','jsonType.label'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','clientHost','user.session.note'),('5495e2b8-6d12-4cd2-a51d-003285dcca0e','true','userinfo.token.claim'),('5d608199-771d-449f-aa51-9c92c8e02bf0','true','access.token.claim'),('5d608199-771d-449f-aa51-9c92c8e02bf0','birthdate','claim.name'),('5d608199-771d-449f-aa51-9c92c8e02bf0','true','id.token.claim'),('5d608199-771d-449f-aa51-9c92c8e02bf0','String','jsonType.label'),('5d608199-771d-449f-aa51-9c92c8e02bf0','birthdate','user.attribute'),('5d608199-771d-449f-aa51-9c92c8e02bf0','true','userinfo.token.claim'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','true','access.token.claim'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','preferred_username','claim.name'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','true','id.token.claim'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','String','jsonType.label'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','username','user.attribute'),('609df1c0-6548-4bc4-8d37-6757415ebfb2','true','userinfo.token.claim'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','true','access.token.claim'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','given_name','claim.name'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','true','id.token.claim'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','String','jsonType.label'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','firstName','user.attribute'),('61066ba0-68b7-47a6-b7f7-c0262dd0e1e5','true','userinfo.token.claim'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','true','access.token.claim'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','website','claim.name'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','true','id.token.claim'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','String','jsonType.label'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','website','user.attribute'),('657f1369-9d10-4e2f-8f90-9c9a2f1a6788','true','userinfo.token.claim'),('764a2a87-3176-4338-986a-0df5b17b0851','true','access.token.claim'),('764a2a87-3176-4338-986a-0df5b17b0851','groups','claim.name'),('764a2a87-3176-4338-986a-0df5b17b0851','true','id.token.claim'),('764a2a87-3176-4338-986a-0df5b17b0851','String','jsonType.label'),('764a2a87-3176-4338-986a-0df5b17b0851','true','multivalued'),('764a2a87-3176-4338-986a-0df5b17b0851','foo','user.attribute'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','true','access.token.claim'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','locale','claim.name'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','true','id.token.claim'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','String','jsonType.label'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','locale','user.attribute'),('7b1c7fc0-5c59-4231-ac5a-c2babef0f628','true','userinfo.token.claim'),('801f9030-6320-4405-8144-d074520d5e93','true','access.token.claim'),('801f9030-6320-4405-8144-d074520d5e93','picture','claim.name'),('801f9030-6320-4405-8144-d074520d5e93','true','id.token.claim'),('801f9030-6320-4405-8144-d074520d5e93','String','jsonType.label'),('801f9030-6320-4405-8144-d074520d5e93','picture','user.attribute'),('801f9030-6320-4405-8144-d074520d5e93','true','userinfo.token.claim'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','true','access.token.claim'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','middle_name','claim.name'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','true','id.token.claim'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','String','jsonType.label'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','middleName','user.attribute'),('8e52f5d8-2d16-4e86-874a-d13f272b001a','true','userinfo.token.claim'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','true','access.token.claim'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','clientAddress','claim.name'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','true','id.token.claim'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','String','jsonType.label'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','clientAddress','user.session.note'),('a0309d7b-cf94-4673-8ea4-a9878b4cde22','true','userinfo.token.claim'),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','true','access.token.claim'),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','email','claim.name'),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','true','id.token.claim'),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','String','jsonType.label'),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','email','user.attribute'),('add1f2c0-1ba2-4b4b-9d7b-8916e0d16b67','true','userinfo.token.claim'),('b1a15268-9c73-410b-aa7e-3ba3bae0edbe','true','access.token.claim'),('b1a15268-9c73-410b-aa7e-3ba3bae0edbe','true','id.token.claim'),('b1a15268-9c73-410b-aa7e-3ba3bae0edbe','true','userinfo.token.claim'),('b6d9334d-aec2-4704-934b-9e614d92daef','true','access.token.claim'),('b6d9334d-aec2-4704-934b-9e614d92daef','true','id.token.claim'),('b6d9334d-aec2-4704-934b-9e614d92daef','country','user.attribute.country'),('b6d9334d-aec2-4704-934b-9e614d92daef','formatted','user.attribute.formatted'),('b6d9334d-aec2-4704-934b-9e614d92daef','locality','user.attribute.locality'),('b6d9334d-aec2-4704-934b-9e614d92daef','postal_code','user.attribute.postal_code'),('b6d9334d-aec2-4704-934b-9e614d92daef','region','user.attribute.region'),('b6d9334d-aec2-4704-934b-9e614d92daef','street','user.attribute.street'),('b6d9334d-aec2-4704-934b-9e614d92daef','true','userinfo.token.claim'),('ba3bab0f-ada0-48c2-b2be-26698218d3a8','true','access.token.claim'),('ba3bab0f-ada0-48c2-b2be-26698218d3a8','realm_access.roles','claim.name'),('ba3bab0f-ada0-48c2-b2be-26698218d3a8','String','jsonType.label'),('ba3bab0f-ada0-48c2-b2be-26698218d3a8','true','multivalued'),('ba3bab0f-ada0-48c2-b2be-26698218d3a8','foo','user.attribute'),('c0b61bcc-8761-4e58-8e51-878c2a58dd7f','true','access.token.claim'),('c0b61bcc-8761-4e58-8e51-878c2a58dd7f','resource_access.${client_id}.roles','claim.name'),('c0b61bcc-8761-4e58-8e51-878c2a58dd7f','String','jsonType.label'),('c0b61bcc-8761-4e58-8e51-878c2a58dd7f','true','multivalued'),('c0b61bcc-8761-4e58-8e51-878c2a58dd7f','foo','user.attribute'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','true','access.token.claim'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','profile','claim.name'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','true','id.token.claim'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','String','jsonType.label'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','profile','user.attribute'),('c2f777e6-4fcd-43e3-859e-a8c86048553e','true','userinfo.token.claim'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','true','access.token.claim'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','clientId','claim.name'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','true','id.token.claim'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','String','jsonType.label'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','clientId','user.session.note'),('c31de87c-b1cd-4136-8cce-1c90b1209fbb','true','userinfo.token.claim'),('d49e609e-6c41-4d2e-8803-0c07aebae06c','true','access.token.claim'),('d49e609e-6c41-4d2e-8803-0c07aebae06c','zoneinfo','claim.name'),('d49e609e-6c41-4d2e-8803-0c07aebae06c','true','id.token.claim'),('d49e609e-6c41-4d2e-8803-0c07aebae06c','String','jsonType.label'),('d49e609e-6c41-4d2e-8803-0c07aebae06c','zoneinfo','user.attribute'),('d49e609e-6c41-4d2e-8803-0c07aebae06c','true','userinfo.token.claim'),('dd43d95d-7a04-4278-a788-93655a2f814b','true','access.token.claim'),('dd43d95d-7a04-4278-a788-93655a2f814b','family_name','claim.name'),('dd43d95d-7a04-4278-a788-93655a2f814b','true','id.token.claim'),('dd43d95d-7a04-4278-a788-93655a2f814b','String','jsonType.label'),('dd43d95d-7a04-4278-a788-93655a2f814b','lastName','user.attribute'),('dd43d95d-7a04-4278-a788-93655a2f814b','true','userinfo.token.claim'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','true','access.token.claim'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','phone_number','claim.name'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','true','id.token.claim'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','String','jsonType.label'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','phoneNumber','user.attribute'),('e68f290c-3820-4af2-9a78-2bdf51bc8a3a','true','userinfo.token.claim'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','true','access.token.claim'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','locale','claim.name'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','true','id.token.claim'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','String','jsonType.label'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','locale','user.attribute'),('eb661420-9144-47c5-8bfb-d3bddc08f3c4','true','userinfo.token.claim'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','true','access.token.claim'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','email_verified','claim.name'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','true','id.token.claim'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','boolean','jsonType.label'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','emailVerified','user.attribute'),('ecb9f375-ba9c-4900-9b25-a92e42dd3ef0','true','userinfo.token.claim'),('ef6df666-77df-447e-a2e0-38a744105503','true','access.token.claim'),('ef6df666-77df-447e-a2e0-38a744105503','upn','claim.name'),('ef6df666-77df-447e-a2e0-38a744105503','true','id.token.claim'),('ef6df666-77df-447e-a2e0-38a744105503','String','jsonType.label'),('ef6df666-77df-447e-a2e0-38a744105503','username','user.attribute'),('ef6df666-77df-447e-a2e0-38a744105503','true','userinfo.token.claim');
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
INSERT INTO `REALM` VALUES ('651adee9-2b22-45bc-bb90-c8262b4a510a',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','NONE',1800,36000,'\0','\0','5bca1030-28bd-4bb7-aecd-17d61439cd30',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','6049cb38-b090-46af-b03b-76b5930d67e1','e06f50e1-bf68-46aa-80f1-228a01b4c447','4fbfcc1c-f701-48c4-8fd0-ebc37c9e8597','5e45cec9-35c4-4326-a345-c047c76b4d5f','c748b5fc-35e6-41fe-b39c-f1baf5ba8721',31536000,'\0',900,'','\0','319ded58-ecc5-45d5-8341-7984738a152b',0,'\0',0,0,'ad490435-6469-4592-952e-228b18a67f18');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('bruteForceProtected','651adee9-2b22-45bc-bb90-c8262b4a510a','false'),('cibaAuthRequestedUserHint','651adee9-2b22-45bc-bb90-c8262b4a510a','login_hint'),('cibaBackchannelTokenDeliveryMode','651adee9-2b22-45bc-bb90-c8262b4a510a','poll'),('cibaExpiresIn','651adee9-2b22-45bc-bb90-c8262b4a510a','120'),('cibaInterval','651adee9-2b22-45bc-bb90-c8262b4a510a','5'),('defaultSignatureAlgorithm','651adee9-2b22-45bc-bb90-c8262b4a510a','RS256'),('displayName','651adee9-2b22-45bc-bb90-c8262b4a510a','Keycloak'),('displayNameHtml','651adee9-2b22-45bc-bb90-c8262b4a510a','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','651adee9-2b22-45bc-bb90-c8262b4a510a','30'),('maxDeltaTimeSeconds','651adee9-2b22-45bc-bb90-c8262b4a510a','43200'),('maxFailureWaitSeconds','651adee9-2b22-45bc-bb90-c8262b4a510a','900'),('minimumQuickLoginWaitSeconds','651adee9-2b22-45bc-bb90-c8262b4a510a','60'),('oauth2DeviceCodeLifespan','651adee9-2b22-45bc-bb90-c8262b4a510a','600'),('oauth2DevicePollingInterval','651adee9-2b22-45bc-bb90-c8262b4a510a','5'),('offlineSessionMaxLifespan','651adee9-2b22-45bc-bb90-c8262b4a510a','31536000'),('offlineSessionMaxLifespanEnabled','651adee9-2b22-45bc-bb90-c8262b4a510a','true'),('parRequestUriLifespan','651adee9-2b22-45bc-bb90-c8262b4a510a','60'),('permanentLockout','651adee9-2b22-45bc-bb90-c8262b4a510a','false'),('quickLoginCheckMilliSeconds','651adee9-2b22-45bc-bb90-c8262b4a510a','1000'),('realmReusableOtpCode','651adee9-2b22-45bc-bb90-c8262b4a510a','false'),('waitIncrementSeconds','651adee9-2b22-45bc-bb90-c8262b4a510a','60'),('webAuthnPolicyAttestationConveyancePreference','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyAuthenticatorAttachment','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','651adee9-2b22-45bc-bb90-c8262b4a510a','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','false'),('webAuthnPolicyCreateTimeout','651adee9-2b22-45bc-bb90-c8262b4a510a','0'),('webAuthnPolicyCreateTimeoutPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','0'),('webAuthnPolicyRequireResidentKey','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyRpEntityName','651adee9-2b22-45bc-bb90-c8262b4a510a','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','keycloak'),('webAuthnPolicyRpId','651adee9-2b22-45bc-bb90-c8262b4a510a',''),('webAuthnPolicyRpIdPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a',''),('webAuthnPolicySignatureAlgorithms','651adee9-2b22-45bc-bb90-c8262b4a510a','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','ES256'),('webAuthnPolicyUserVerificationRequirement','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','651adee9-2b22-45bc-bb90-c8262b4a510a','not specified'),('_browser_header.contentSecurityPolicy','651adee9-2b22-45bc-bb90-c8262b4a510a','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','651adee9-2b22-45bc-bb90-c8262b4a510a',''),('_browser_header.strictTransportSecurity','651adee9-2b22-45bc-bb90-c8262b4a510a','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','651adee9-2b22-45bc-bb90-c8262b4a510a','nosniff'),('_browser_header.xFrameOptions','651adee9-2b22-45bc-bb90-c8262b4a510a','SAMEORIGIN'),('_browser_header.xRobotsTag','651adee9-2b22-45bc-bb90-c8262b4a510a','none'),('_browser_header.xXSSProtection','651adee9-2b22-45bc-bb90-c8262b4a510a','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('651adee9-2b22-45bc-bb90-c8262b4a510a','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','651adee9-2b22-45bc-bb90-c8262b4a510a');
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
INSERT INTO `REDIRECT_URIS` VALUES ('05aba222-b359-449c-971d-a519b3a6af29','/*'),('17bacd11-275b-4d74-8b6b-63dd1767ccfc','/admin/master/console/*'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','/realms/master/account/*'),('965dcd0a-3a5f-40ca-bac1-258a77bfa624','/realms/master/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('292fffe7-95a9-4c71-b4b8-cdc879fa4e1a','CONFIGURE_TOTP','Configure OTP','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','CONFIGURE_TOTP',10),('3166af95-01f0-482d-a762-0a37e94ca518','UPDATE_PASSWORD','Update Password','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','UPDATE_PASSWORD',30),('3703c65f-de0b-4730-a63c-830023eb61ff','update_user_locale','Update User Locale','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','update_user_locale',1000),('49ca3827-8f79-47db-8a9a-2f87c6d76d7b','UPDATE_PROFILE','Update Profile','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','UPDATE_PROFILE',40),('7d0432ae-c793-4e07-a5c8-866a14a9c6d6','VERIFY_EMAIL','Verify Email','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','VERIFY_EMAIL',50),('a86042ce-f4b9-4fd2-a6b1-e12f85e99c43','terms_and_conditions','Terms and Conditions','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','\0','terms_and_conditions',20),('b2b759cc-0ad7-4058-b4c1-4c519693127f','delete_account','Delete Account','651adee9-2b22-45bc-bb90-c8262b4a510a','\0','\0','delete_account',60),('d37a1e17-c2b9-413a-8ef5-54d17e649db9','webauthn-register-passwordless','Webauthn Register Passwordless','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','webauthn-register-passwordless',80),('dfdfd4b2-2a69-4dc0-bd68-16bedf101913','webauthn-register','Webauthn Register','651adee9-2b22-45bc-bb90-c8262b4a510a','','\0','webauthn-register',70);
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
INSERT INTO `SCOPE_MAPPING` VALUES ('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','5b49997a-66c9-471a-aff0-4c60b6e98b14'),('1f59795d-0ea3-45eb-bb05-702c67e0f1c4','74254577-e48b-4008-a50a-61c2294a5e08');
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
INSERT INTO `USER_ENTITY` VALUES ('722f28c8-2574-4444-ab83-af3b6b69803d',NULL,'6ec41fe4-5725-4f77-aea6-4545aec34b18','\0','',NULL,NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','service-account-_platform',1698207108406,'6215c576-f7db-4001-9ea3-852b9e3b9ca9',0),('dd81d845-6e62-46c5-ae54-d0f95614b8db',NULL,'a86938e5-e456-49d3-9f14-819397342944','\0','',NULL,NULL,NULL,'651adee9-2b22-45bc-bb90-c8262b4a510a','admin',1698207103309,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('0eeddb27-fd75-4913-aa0b-9cea97c98a00','722f28c8-2574-4444-ab83-af3b6b69803d'),('0eeddb27-fd75-4913-aa0b-9cea97c98a00','dd81d845-6e62-46c5-ae54-d0f95614b8db'),('ad490435-6469-4592-952e-228b18a67f18','722f28c8-2574-4444-ab83-af3b6b69803d'),('ad490435-6469-4592-952e-228b18a67f18','dd81d845-6e62-46c5-ae54-d0f95614b8db');
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
INSERT INTO `WEB_ORIGINS` VALUES ('17bacd11-275b-4d74-8b6b-63dd1767ccfc','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2023-10-25 13:11:52','dummy','2023-10-25 13:11:52','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2023-10-25 13:11:49.000000',NULL),('2','DATA_UPDATE_STOP','0','2023-10-25 13:11:49.000000',NULL);
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2023-10-25 13:11:47','system','2023-10-25 13:11:47','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2023-10-25 13:11:52','dummy','2023-10-25 13:11:52','dummy'),('platform.roles','{\"description\": \"default limit\", \"max\": 1000}','2023-10-25 13:11:47','system','2023-10-25 13:11:47','system'),('platform.users','{\"description\": \"default limit\", \"max\": 10000}','2023-10-25 13:11:47','system','2023-10-25 13:11:47','system'),('platform.workspaces','{\"description\": \"default limit\", \"max\": 1000}','2023-10-25 13:11:47','system','2023-10-25 13:11:47','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2023-10-25 13:11:52','dummy','2023-10-25 13:11:52','dummy'),('_default','platform.roles',1000,'2023-10-25 13:11:47','system','2023-10-25 13:11:47','system'),('_default','platform.users',10000,'2023-10-25 13:11:47','system','2023-10-25 13:11:47','system'),('_default','platform.workspaces',100,'2023-10-25 13:11:47','system','2023-10-25 13:11:47','system');
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
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2023-10-25 13:11:47','1.7.0','2023-10-25 13:11:47','1.7.0'),(2,'1.3.0','SUCCEED',NULL,'2023-10-25 13:11:48','1.7.0','2023-10-25 13:11:48','1.7.0'),(3,'1.5.0','START',NULL,'2023-10-25 13:11:48','1.7.0','2023-10-25 13:11:48','1.7.0'),(4,'1.5.0','SUCCEED',NULL,'2023-10-25 13:11:48','1.7.0','2023-10-25 13:11:48','1.7.0'),(5,'1.5.2','START',NULL,'2023-10-25 13:11:48','1.7.0','2023-10-25 13:11:48','1.7.0'),(6,'1.5.2','SUCCEED',NULL,'2023-10-25 13:11:49','1.7.0','2023-10-25 13:11:49','1.7.0'),(7,'1.6.0','START',NULL,'2023-10-25 13:11:49','1.7.0','2023-10-25 13:11:49','1.7.0'),(8,'1.6.0','SUCCEED',NULL,'2023-10-25 13:11:49','1.7.0','2023-10-25 13:11:49','1.7.0'),(9,'1.7.0','START',NULL,'2023-10-25 13:11:49','1.7.0','2023-10-25 13:11:49','1.7.0'),(10,'1.7.0','SUCCEED',NULL,'2023-10-25 13:11:49','1.7.0','2023-10-25 13:11:49','1.7.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"6215c576-f7db-4001-9ea3-852b9e3b9ca9\", \"TOKEN_CHECK_CLIENT_SECRET\": \"dummy\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"c2f49504-8ddb-4505-bc84-4357f6139c58\"}','2023-10-25 13:11:48','system','2023-10-25 13:34:56','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.7.0','2023-10-25 13:11:10','system','2023-10-25 13:11:49','1.7.0');
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

-- Dump completed on 2023-10-25 13:34:57
