-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: ita-mariadb    Database: keycloak
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.4-MariaDB-1:10.11.4+maria~ubu2204

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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `keycloak` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `keycloak`;

--
-- Table structure for table `admin_event_entity`
--

DROP TABLE IF EXISTS `admin_event_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_event_entity` (
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
  `DETAILS_JSON` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `associated_policy`
--

DROP TABLE IF EXISTS `associated_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `associated_policy` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `resource_server_policy` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `resource_server_policy` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auth_session`
--

DROP TABLE IF EXISTS `auth_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_session` (
  `ROOT_AUTH_SESSION_ID` varchar(36) NOT NULL,
  `TAB_ID` varchar(36) NOT NULL,
  `CLIENT_UUID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `TIMESTAMP` bigint(20) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  `REDIRECT_URI` text DEFAULT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `CLIENT_SCOPES` text DEFAULT NULL,
  `EXECUTION_STATUS` text DEFAULT NULL,
  `CLIENT_NOTES` text DEFAULT NULL,
  `AUTH_NOTES` text DEFAULT NULL,
  `REQUIRED_ACTIONS` text DEFAULT NULL,
  `USER_SESSION_NOTES` text DEFAULT NULL,
  PRIMARY KEY (`ROOT_AUTH_SESSION_ID`,`TAB_ID`),
  CONSTRAINT `FK_AUTH_SESSION_ROOT` FOREIGN KEY (`ROOT_AUTH_SESSION_ID`) REFERENCES `root_auth_session` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authentication_execution`
--

DROP TABLE IF EXISTS `authentication_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_execution` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` tinyint(1) NOT NULL DEFAULT 0,
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `authentication_flow` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authentication_flow`
--

DROP TABLE IF EXISTS `authentication_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_flow` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` tinyint(1) NOT NULL DEFAULT 0,
  `BUILT_IN` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authenticator_config`
--

DROP TABLE IF EXISTS `authenticator_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticator_config` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authenticator_config_entry`
--

DROP TABLE IF EXISTS `authenticator_config_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticator_config_entry` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `broker_link`
--

DROP TABLE IF EXISTS `broker_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broker_link` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_BROKER_LINK_USER_ID` (`USER_ID`),
  KEY `IDX_BROKER_LINK_IDENTITY_PROVIDER` (`REALM_ID`,`IDENTITY_PROVIDER`,`BROKER_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `FULL_SCOPE_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` tinyint(1) NOT NULL DEFAULT 0,
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` tinyint(1) NOT NULL DEFAULT 0,
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` tinyint(1) NOT NULL DEFAULT 0,
  `CONSENT_REQUIRED` tinyint(1) NOT NULL DEFAULT 0,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` tinyint(1) NOT NULL DEFAULT 1,
  `IMPLICIT_FLOW_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DIRECT_ACCESS_GRANTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `ALWAYS_DISPLAY_IN_CONSOLE` tinyint(1) NOT NULL DEFAULT 0,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `LAST_MODIFIED_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_attributes`
--

DROP TABLE IF EXISTS `client_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_attributes` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255)),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_auth_flow_bindings`
--

DROP TABLE IF EXISTS `client_auth_flow_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_auth_flow_bindings` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_initial_access`
--

DROP TABLE IF EXISTS `client_initial_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_initial_access` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_node_registrations`
--

DROP TABLE IF EXISTS `client_node_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_node_registrations` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_scope`
--

DROP TABLE IF EXISTS `client_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_scope` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_scope_attributes`
--

DROP TABLE IF EXISTS `client_scope_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_scope_attributes` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `client_scope` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_scope_client`
--

DROP TABLE IF EXISTS `client_scope_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_scope_client` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_scope_role_mapping`
--

DROP TABLE IF EXISTS `client_scope_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_scope_role_mapping` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `client_scope` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cluster_event`
--

DROP TABLE IF EXISTS `cluster_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cluster_event` (
  `ID` varchar(36) NOT NULL,
  `TARGET_CLUSTER` varchar(200) NOT NULL,
  `SENDER_CLUSTER` varchar(200) NOT NULL,
  `EVENT_DATA` blob NOT NULL,
  `CREATED_AT` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`,`TARGET_CLUSTER`),
  KEY `IDX_CLUSTER_EVENT_TARGET` (`TARGET_CLUSTER`,`CREATED_AT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
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
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `component_config`
--

DROP TABLE IF EXISTS `component_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_config` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `component` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `composite_role`
--

DROP TABLE IF EXISTS `composite_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composite_role` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `keycloak_role` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `keycloak_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `credential`
--

DROP TABLE IF EXISTS `credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credential` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangelog` (
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
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `default_client_scope`
--

DROP TABLE IF EXISTS `default_client_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_client_scope` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_entity`
--

DROP TABLE IF EXISTS `event_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_entity` (
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
  `DETAILS_JSON_LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`),
  KEY `IDX_EVENT_ENTITY_USER_ID_TYPE` (`USER_ID`,`TYPE`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_issued_ver_credential`
--

DROP TABLE IF EXISTS `fed_issued_ver_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_issued_ver_credential` (
  `ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) NOT NULL,
  `VER_CREDENTIAL_ID` varchar(36) NOT NULL,
  `ISSUED_AT` bigint(20) NOT NULL,
  `EXPIRES_AT` bigint(20) DEFAULT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REVISION` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FED_ISSUED_VC_USER` (`USER_ID`,`REALM_ID`,`ISSUED_AT`),
  KEY `IDX_FED_ISSUED_VC_EXPIRES` (`EXPIRES_AT`),
  KEY `IDX_FED_ISSUED_VC_CRED_ID` (`VER_CREDENTIAL_ID`),
  KEY `IDX_FED_ISSUED_VC_STORAGE` (`STORAGE_PROVIDER_ID`),
  CONSTRAINT `FK_FED_ISSUED_VC_VER_CRED` FOREIGN KEY (`VER_CREDENTIAL_ID`) REFERENCES `fed_user_ver_credential` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_attribute`
--

DROP TABLE IF EXISTS `fed_user_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_attribute` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text DEFAULT NULL,
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_consent`
--

DROP TABLE IF EXISTS `fed_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_consent` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_consent_cl_scope`
--

DROP TABLE IF EXISTS `fed_user_consent_cl_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_consent_cl_scope` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `PARAMETER` varchar(255) NOT NULL DEFAULT '#N A#',
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`,`PARAMETER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_credential`
--

DROP TABLE IF EXISTS `fed_user_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_credential` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_group_membership`
--

DROP TABLE IF EXISTS `fed_user_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_group_membership` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_required_action`
--

DROP TABLE IF EXISTS `fed_user_required_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_required_action` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_role_mapping`
--

DROP TABLE IF EXISTS `fed_user_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_role_mapping` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fed_user_ver_credential`
--

DROP TABLE IF EXISTS `fed_user_ver_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fed_user_ver_credential` (
  `ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) NOT NULL,
  `REVISION` varchar(36) NOT NULL,
  `USER_ATTRIBUTES` text DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `UPDATED_DATE` bigint(20) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FED_USER_VC` (`USER_ID`,`CLIENT_SCOPE_ID`),
  KEY `IDX_FED_USER_VC_REALM_USER` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `federated_identity`
--

DROP TABLE IF EXISTS `federated_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `federated_identity` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `federated_user`
--

DROP TABLE IF EXISTS `federated_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `federated_user` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_attribute`
--

DROP TABLE IF EXISTS `group_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_attribute` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  KEY `IDX_GROUP_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `keycloak_group` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_role_mapping`
--

DROP TABLE IF EXISTS `group_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_role_mapping` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `keycloak_group` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `identity_provider`
--

DROP TABLE IF EXISTS `identity_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identity_provider` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` tinyint(1),
  `AUTHENTICATE_BY_DEFAULT` tinyint(1) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` tinyint(1) DEFAULT NULL,
  `TRUST_EMAIL` tinyint(1) DEFAULT NULL,
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` tinyint(1) DEFAULT NULL,
  `ORGANIZATION_ID` varchar(255) DEFAULT NULL,
  `HIDE_ON_LOGIN` tinyint(1),
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  KEY `IDX_IDP_REALM_ORG` (`REALM_ID`,`ORGANIZATION_ID`),
  KEY `IDX_IDP_FOR_LOGIN` (`REALM_ID`,`ENABLED`,`LINK_ONLY`,`HIDE_ON_LOGIN`,`ORGANIZATION_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `identity_provider_config`
--

DROP TABLE IF EXISTS `identity_provider_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identity_provider_config` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `identity_provider` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `identity_provider_mapper`
--

DROP TABLE IF EXISTS `identity_provider_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identity_provider_mapper` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `idp_mapper_config`
--

DROP TABLE IF EXISTS `idp_mapper_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idp_mapper_config` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `identity_provider_mapper` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `issued_ver_credential`
--

DROP TABLE IF EXISTS `issued_ver_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issued_ver_credential` (
  `ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `VER_CREDENTIAL_ID` varchar(36) NOT NULL,
  `ISSUED_AT` bigint(20) NOT NULL,
  `EXPIRES_AT` bigint(20) DEFAULT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REVISION` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ISSUED_VER_CREDENTIAL_USER` (`USER_ID`,`ISSUED_AT`),
  KEY `IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT` (`EXPIRES_AT`),
  KEY `IDX_ISSUED_VER_CREDENTIAL_VC` (`VER_CREDENTIAL_ID`),
  CONSTRAINT `FK_ISSUED_VER_CREDENTIAL_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`),
  CONSTRAINT `FK_ISSUED_VER_CREDENTIAL_VC` FOREIGN KEY (`VER_CREDENTIAL_ID`) REFERENCES `user_ver_credential` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jgroups_ping`
--

DROP TABLE IF EXISTS `jgroups_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jgroups_ping` (
  `address` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cluster_name` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `coord` tinyint(1) DEFAULT NULL,
  `last_update` bigint(20) DEFAULT NULL,
  `coordinated_by` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keycloak_group`
--

DROP TABLE IF EXISTS `keycloak_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keycloak_group` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `TYPE` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ORG_ID` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `LAST_MODIFIED_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`),
  KEY `IDX_GROUP_ORG_ID` (`ORG_ID`),
  CONSTRAINT `FK_GROUP_ORGANIZATION` FOREIGN KEY (`ORG_ID`) REFERENCES `org` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `keycloak_role`
--

DROP TABLE IF EXISTS `keycloak_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keycloak_role` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` tinyint(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_failure`
--

DROP TABLE IF EXISTS `login_failure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_failure` (
  `REALM_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` bigint(20) DEFAULT 0,
  `NUM_FAILURES` int(11) DEFAULT 0,
  `NUM_TEMPORARY_LOCKOUTS` int(11) DEFAULT 0,
  `LAST_FAILURE` bigint(20) DEFAULT 0,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_SECONDARY_AUTH_FAILURES` int(11) DEFAULT 0,
  PRIMARY KEY (`REALM_ID`,`USER_ID`),
  KEY `IDX_LOGIN_FAILURE_EXPIRE` (`LAST_FAILURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migration_model`
--

DROP TABLE IF EXISTS `migration_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration_model` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_MIGRATION_UPDATE_TIME` (`UPDATE_TIME`),
  UNIQUE KEY `UK_MIGRATION_VERSION` (`VERSION`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offline_client_session`
--

DROP TABLE IF EXISTS `offline_client_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_client_session` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  `VERSION` int(11) DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_CSS_BY_CLIENT` (`CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE` (`OFFLINE_FLAG`,`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM` (`REALM_ID`,`OFFLINE_FLAG`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offline_user_session`
--

DROP TABLE IF EXISTS `offline_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_user_session` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT 0,
  `BROKER_SESSION_ID` text DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  `REMEMBER_ME` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_BROKER_SESSION_ID` (`BROKER_SESSION_ID`(255),`REALM_ID`),
  KEY `IDX_USER_SESSION_EXPIRATION_CREATED` (`REALM_ID`,`OFFLINE_FLAG`,`REMEMBER_ME`,`CREATED_ON`,`USER_SESSION_ID`,`USER_ID`),
  KEY `IDX_USER_SESSION_EXPIRATION_LAST_REFRESH` (`REALM_ID`,`OFFLINE_FLAG`,`REMEMBER_ME`,`LAST_SESSION_REFRESH`,`USER_SESSION_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `org`
--

DROP TABLE IF EXISTS `org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org` (
  `ID` varchar(255) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `REALM_ID` varchar(255) NOT NULL,
  `GROUP_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ALIAS` varchar(255) NOT NULL,
  `REDIRECT_URL` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORG_NAME` (`REALM_ID`,`NAME`),
  UNIQUE KEY `UK_ORG_GROUP` (`GROUP_ID`),
  UNIQUE KEY `UK_ORG_ALIAS` (`REALM_ID`,`ALIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `org_domain`
--

DROP TABLE IF EXISTS `org_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_domain` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VERIFIED` tinyint(1) NOT NULL,
  `ORG_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`,`NAME`),
  KEY `IDX_ORG_DOMAIN_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `org_invitation`
--

DROP TABLE IF EXISTS `org_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_invitation` (
  `ID` varchar(36) NOT NULL,
  `ORGANIZATION_ID` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `CREATED_AT` int(11) NOT NULL,
  `EXPIRES_AT` int(11) DEFAULT NULL,
  `INVITE_LINK` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORG_INVITATION_EMAIL` (`ORGANIZATION_ID`,`EMAIL`),
  KEY `IDX_ORG_INVITATION_ORG_ID` (`ORGANIZATION_ID`),
  KEY `IDX_ORG_INVITATION_EMAIL` (`EMAIL`),
  KEY `IDX_ORG_INVITATION_EXPIRES` (`EXPIRES_AT`),
  CONSTRAINT `FK_ORG_INVITATION_ORG` FOREIGN KEY (`ORGANIZATION_ID`) REFERENCES `org` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `outbox_entry`
--

DROP TABLE IF EXISTS `outbox_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbox_entry` (
  `ID` varchar(36) NOT NULL,
  `ENTRY_KIND` varchar(64) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `OWNER_ID` varchar(64) NOT NULL,
  `CONTAINER_ID` varchar(64) DEFAULT NULL,
  `CORRELATION_ID` varchar(255) NOT NULL,
  `ENTRY_TYPE` text NOT NULL,
  `PAYLOAD` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `METADATA` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `ATTEMPTS` int(11) NOT NULL DEFAULT 0,
  `NEXT_ATTEMPT_AT` timestamp NOT NULL,
  `LAST_ERROR` text DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL,
  `DELIVERED_AT` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UC_OUTBOX_KIND_OWNER_CORRELATION` (`ENTRY_KIND`,`OWNER_ID`,`CORRELATION_ID`),
  KEY `IDX_OUTBOX_DRAIN` (`ENTRY_KIND`,`STATUS`,`NEXT_ATTEMPT_AT`),
  KEY `IDX_OUTBOX_REALM` (`ENTRY_KIND`,`REALM_ID`,`STATUS`),
  KEY `IDX_OUTBOX_OWNER` (`ENTRY_KIND`,`OWNER_ID`,`STATUS`),
  KEY `IDX_OUTBOX_CONTAINER` (`ENTRY_KIND`,`OWNER_ID`,`CONTAINER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `policy_config`
--

DROP TABLE IF EXISTS `policy_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy_config` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `resource_server_policy` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `protocol_mapper`
--

DROP TABLE IF EXISTS `protocol_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocol_mapper` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `client_scope` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `protocol_mapper_config`
--

DROP TABLE IF EXISTS `protocol_mapper_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocol_mapper_config` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `protocol_mapper` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm`
--

DROP TABLE IF EXISTS `realm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EVENTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` text DEFAULT NULL,
  `REGISTRATION_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `REMEMBER_ME` tinyint(1) NOT NULL DEFAULT 0,
  `RESET_PASSWORD_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `SOCIAL` tinyint(1) NOT NULL DEFAULT 0,
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` tinyint(1) NOT NULL DEFAULT 0,
  `VERIFY_EMAIL` tinyint(1) NOT NULL DEFAULT 0,
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` tinyint(1) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_DETAILS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EDIT_USERNAME_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
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
  `REVOKE_REFRESH_TOKEN` tinyint(1) NOT NULL DEFAULT 0,
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` tinyint(1) NOT NULL DEFAULT 1,
  `DUPLICATE_EMAILS_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` tinyint(1) NOT NULL DEFAULT 0,
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_attribute`
--

DROP TABLE IF EXISTS `realm_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_attribute` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_default_groups`
--

DROP TABLE IF EXISTS `realm_default_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_default_groups` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_enabled_event_types`
--

DROP TABLE IF EXISTS `realm_enabled_event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_enabled_event_types` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_events_listeners`
--

DROP TABLE IF EXISTS `realm_events_listeners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_events_listeners` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_localizations`
--

DROP TABLE IF EXISTS `realm_localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_localizations` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_required_credential`
--

DROP TABLE IF EXISTS `realm_required_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_required_credential` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` tinyint(1) NOT NULL DEFAULT 0,
  `SECRET` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_smtp_config`
--

DROP TABLE IF EXISTS `realm_smtp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_smtp_config` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realm_supported_locales`
--

DROP TABLE IF EXISTS `realm_supported_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realm_supported_locales` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `redirect_uris`
--

DROP TABLE IF EXISTS `redirect_uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redirect_uris` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `required_action_config`
--

DROP TABLE IF EXISTS `required_action_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `required_action_config` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `required_action_provider`
--

DROP TABLE IF EXISTS `required_action_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `required_action_provider` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DEFAULT_ACTION` tinyint(1) NOT NULL DEFAULT 0,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_attribute`
--

DROP TABLE IF EXISTS `resource_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_attribute` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `resource_server_resource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_policy`
--

DROP TABLE IF EXISTS `resource_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_policy` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `resource_server_resource` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `resource_server_policy` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_scope`
--

DROP TABLE IF EXISTS `resource_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_scope` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `resource_server_resource` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `resource_server_scope` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_server`
--

DROP TABLE IF EXISTS `resource_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_server` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` tinyint(1) NOT NULL DEFAULT 0,
  `POLICY_ENFORCE_MODE` tinyint(4) DEFAULT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_server_perm_ticket`
--

DROP TABLE IF EXISTS `resource_server_perm_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_server_perm_ticket` (
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
  KEY `IDX_PERM_TICKET_REQUESTER` (`REQUESTER`),
  KEY `IDX_PERM_TICKET_OWNER` (`OWNER`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `resource_server` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `resource_server_resource` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `resource_server_scope` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `resource_server_policy` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_server_policy`
--

DROP TABLE IF EXISTS `resource_server_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_server_policy` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) DEFAULT NULL,
  `LOGIC` tinyint(4) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `resource_server` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_server_resource`
--

DROP TABLE IF EXISTS `resource_server_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_server_resource` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` tinyint(1) NOT NULL DEFAULT 0,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `resource_server` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_server_scope`
--

DROP TABLE IF EXISTS `resource_server_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_server_scope` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `resource_server` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resource_uris`
--

DROP TABLE IF EXISTS `resource_uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_uris` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `resource_server_resource` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revoked_token`
--

DROP TABLE IF EXISTS `revoked_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revoked_token` (
  `ID` varchar(255) NOT NULL,
  `EXPIRE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REV_TOKEN_ON_EXPIRE` (`EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_attribute`
--

DROP TABLE IF EXISTS `role_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_attribute` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `keycloak_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `root_auth_session`
--

DROP TABLE IF EXISTS `root_auth_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `root_auth_session` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` bigint(20) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROOT_AUTH_SESSION_REALM` (`REALM_ID`,`TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scope_mapping`
--

DROP TABLE IF EXISTS `scope_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scope_mapping` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scope_policy`
--

DROP TABLE IF EXISTS `scope_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scope_policy` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `resource_server_policy` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `resource_server_scope` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `server_config`
--

DROP TABLE IF EXISTS `server_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_config` (
  `SERVER_CONFIG_KEY` varchar(255) NOT NULL,
  `VALUE` longtext NOT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`SERVER_CONFIG_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `single_use_object`
--

DROP TABLE IF EXISTS `single_use_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `single_use_object` (
  `ID` varchar(255) NOT NULL,
  `NOTES` text DEFAULT NULL,
  `EXPIRE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_SINGLE_USE_OBJ_EXPIRE` (`EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_attribute`
--

DROP TABLE IF EXISTS `user_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_attribute` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  KEY `USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_consent`
--

DROP TABLE IF EXISTS `user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_consent` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_LOCAL_CONSENT` (`CLIENT_ID`,`USER_ID`),
  UNIQUE KEY `UK_EXTERNAL_CONSENT` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_consent_client_scope`
--

DROP TABLE IF EXISTS `user_consent_client_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_consent_client_scope` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `PARAMETER` varchar(255) NOT NULL DEFAULT '#N A#',
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`,`PARAMETER`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  KEY `IDX_USCONSENT_SCOPE_ID` (`SCOPE_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `user_consent` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_entity`
--

DROP TABLE IF EXISTS `user_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_entity` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` tinyint(1) NOT NULL DEFAULT 0,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT 0,
  `LAST_MODIFIED_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`),
  KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`),
  KEY `IDX_USER_CREATED_TIMESTAMP` (`REALM_ID`,`CREATED_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_federation_config`
--

DROP TABLE IF EXISTS `user_federation_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_federation_config` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `user_federation_provider` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_federation_mapper`
--

DROP TABLE IF EXISTS `user_federation_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_federation_mapper` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `user_federation_provider` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_federation_mapper_config`
--

DROP TABLE IF EXISTS `user_federation_mapper_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_federation_mapper_config` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `user_federation_mapper` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_federation_provider`
--

DROP TABLE IF EXISTS `user_federation_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_federation_provider` (
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
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `realm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_group_membership`
--

DROP TABLE IF EXISTS `user_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_group_membership` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `MEMBERSHIP_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_required_action`
--

DROP TABLE IF EXISTS `user_required_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_required_action` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_role_mapping`
--

DROP TABLE IF EXISTS `user_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role_mapping` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_ver_credential`
--

DROP TABLE IF EXISTS `user_ver_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_ver_credential` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_SCOPE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `REVISION` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `UPDATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ATTRIBUTES` text DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_KKUWUVD67ONTGSUGOGM8UEWRE` (`USER_ID`,`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_VCRED_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user_entity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_origins`
--

DROP TABLE IF EXISTS `web_origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_origins` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_state`
--

DROP TABLE IF EXISTS `workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflow_state` (
  `EXECUTION_ID` varchar(255) NOT NULL,
  `RESOURCE_ID` varchar(255) NOT NULL,
  `WORKFLOW_ID` varchar(255) NOT NULL,
  `RESOURCE_TYPE` varchar(255) DEFAULT NULL,
  `SCHEDULED_STEP_ID` varchar(255) DEFAULT NULL,
  `SCHEDULED_STEP_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`EXECUTION_ID`),
  UNIQUE KEY `UQ_WORKFLOW_RESOURCE` (`WORKFLOW_ID`,`RESOURCE_ID`),
  KEY `IDX_WORKFLOW_STATE_STEP` (`WORKFLOW_ID`,`SCHEDULED_STEP_ID`),
  KEY `IDX_WORKFLOW_STATE_PROVIDER` (`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `platform`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `platform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `platform`;

--
-- Table structure for table `m_system_config`
--

DROP TABLE IF EXISTS `m_system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_system_config` (
  `CONFIG_KEY` varchar(100) NOT NULL,
  `CONFIG_VALUE` varchar(4000) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CONFIG_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_maintenance_mode`
--

DROP TABLE IF EXISTS `t_maintenance_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_maintenance_mode` (
  `MAINTENANCE_ID` varchar(40) NOT NULL,
  `MODE_NAME` varchar(255) DEFAULT NULL,
  `SETTING_VALUE` varchar(255) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime(6) DEFAULT NULL,
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`MAINTENANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_organization`
--

DROP TABLE IF EXISTS `t_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_organization` (
  `ORGANIZATION_ID` varchar(36) NOT NULL,
  `ORGANIZATION_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_organization_db`
--

DROP TABLE IF EXISTS `t_organization_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_organization_db` (
  `ORGANIZATION_ID` varchar(36) NOT NULL,
  `DB_HOST` varchar(255) DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) DEFAULT NULL,
  `DB_USER` varchar(255) DEFAULT NULL,
  `DB_PASSWORD` varchar(255) DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_organization_plan`
--

DROP TABLE IF EXISTS `t_organization_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_organization_plan` (
  `ORGANIZATION_ID` varchar(36) NOT NULL,
  `START_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `PLAN_ID` varchar(36) NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`START_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_plan`
--

DROP TABLE IF EXISTS `t_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_plan` (
  `PLAN_ID` varchar(36) NOT NULL,
  `PLAN_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_plan_item`
--

DROP TABLE IF EXISTS `t_plan_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_plan_item` (
  `LIMIT_ID` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`LIMIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_plan_limit`
--

DROP TABLE IF EXISTS `t_plan_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_plan_limit` (
  `PLAN_ID` varchar(36) NOT NULL,
  `LIMIT_ID` varchar(255) NOT NULL,
  `LIMIT_VALUE` bigint(20) NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`,`LIMIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_platform_migration_history`
--

DROP TABLE IF EXISTS `t_platform_migration_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_platform_migration_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(16) NOT NULL,
  `RESULT` varchar(16) NOT NULL,
  `MESSAGE` varchar(4096) DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_platform_private`
--

DROP TABLE IF EXISTS `t_platform_private`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_platform_private` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_platform_version`
--

DROP TABLE IF EXISTS `t_platform_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_platform_version` (
  `ID` int(11) NOT NULL,
  `VERSION` varchar(16) NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_process_queue`
--

DROP TABLE IF EXISTS `t_process_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_process_queue` (
  `PROCESS_ID` varchar(26) NOT NULL,
  `PROCESS_KIND` varchar(36) DEFAULT NULL,
  `PROCESS_EXEC_ID` varchar(26) DEFAULT NULL,
  `ORGANIZATION_ID` varchar(36) DEFAULT NULL,
  `WORKSPACE_ID` varchar(36) DEFAULT NULL,
  `ENABLE_BATCH` tinyint(1) NOT NULL DEFAULT 0,
  `BATCH_PERIOD_SECONDS` int(11) DEFAULT NULL,
  `BATCH_COUNT_LIMIT` int(11) DEFAULT NULL,
  `BATCH_GROUP_KEY` varchar(512) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PROCESS_ID`),
  KEY `IND_PROCESS_EXEC_ID` (`PROCESS_EXEC_ID`),
  KEY `IDX_ORGANIZATION_ID` (`ORGANIZATION_ID`,`WORKSPACE_ID`,`PROCESS_KIND`,`BATCH_GROUP_KEY`,`LAST_UPDATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_process_queue_lock`
--

DROP TABLE IF EXISTS `t_process_queue_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_process_queue_lock` (
  `PROCESS_KIND` varchar(36) NOT NULL,
  `ORGANIZATION_ID` varchar(36) NOT NULL,
  `WORKSPACE_ID` varchar(36) NOT NULL,
  `GROUP_KEY` varchar(512) NOT NULL,
  `UNLOCK_AT` datetime NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`PROCESS_KIND`,`ORGANIZATION_ID`,`WORKSPACE_ID`,`GROUP_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_refresh_token`
--

DROP TABLE IF EXISTS `t_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_refresh_token` (
  `USER_ID` varchar(40) NOT NULL,
  `SESSION_ID` varchar(40) NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-27 10:45:32
