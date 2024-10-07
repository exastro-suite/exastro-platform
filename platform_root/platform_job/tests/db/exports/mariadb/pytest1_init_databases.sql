-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `keycloak` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `keycloak`;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('01b577fd-54ef-4a13-91df-f3d9bb6ff4b6',1728267915324,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-usage','{\"id\":\"fb00d0b6-8453-470b-b98e-68c8a38e1437\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('04180d26-843d-48f3-b1f2-6d0807e4e22b',1728267870400,'org2','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('0484375d-afad-4541-b69d-bc86ec7162ae',1728267851518,'org1','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/client-secret','{\"type\":\"secret\",\"value\":\"eXGoYR6E9mgt9IQOcWabcuytvcKmBMQ2\"}',NULL,'CLIENT'),('08b9f261-a196-4a09-89d7-a1af9ba542dd',1728267851342,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/e5f235ff-e092-4e03-96e5-6de451cab48d','{\"id\":\"e5f235ff-e092-4e03-96e5-6de451cab48d\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('0ba5d86c-b402-4646-ab0d-551ea2d394bd',1728267901402,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/32cd561f-d83a-47d0-84ba-06226a9369f9/role-mappings/clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54','[{\"id\":\"c80ecfde-385f-43e9-a42b-46321696fffc\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5fd03581-4e84-4f6b-9f89-0db2f49f2b54\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('0c6afd31-fb47-4c5c-864e-5b0421141895',1728267915231,'org5','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/157645fe-1439-4fdc-8456-5357b19420f9/client-secret','{\"type\":\"secret\",\"value\":\"83iM4CDshYQUlgN16KOj7XiVkBjAgJjY\"}',NULL,'CLIENT'),('0df858c5-6d3f-4ef2-9c4a-0d7dba1d809b',1728267915385,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-audit-log','{\"id\":\"74a3f09a-9820-4367-947f-2fb7d7cd4295\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0e43fb08-50bd-4501-b6bc-5dc31098c148',1728267852925,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/1012fedf-78c4-45b8-a167-29f735515410','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('0f6e6e2c-950c-4929-b880-45290a30d955',1728267852311,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_organization-user-manager/composites','[{\"id\":\"59088a00-1404-46d2-8962-f68d30902581\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"81d3f409-9049-4f41-808e-a172458c2f6b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('0fd51298-4efe-4cce-82cc-552684449920',1728267879446,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_ws3-admin','{\"id\":\"de3916db-066c-4525-816c-47ea54cc6f03\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('107155ef-d79e-41a2-b8e6-82c89ed14549',1728267884948,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-usage','{\"id\":\"24287595-b21f-492f-97ea-7a67804707b5\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('115d9e4c-d5a2-4648-8f73-53334ec35c00',1728267860754,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/ws2','{\"id\":\"3c31c5c2-b182-45c8-8cf3-12b769fcac9c\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('11c964e1-5574-4663-8cd4-a3598ee4a654',1728267921214,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_ws2-admin','{\"id\":\"06c6ad58-1e17-4695-aaac-452e8ae326c0\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('132470a3-11ef-4c69-a2a5-2f2edc4ea14f',1728267886771,'org3','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('13d8d353-2d1e-4ebc-8ca1-72bd3b631083',1728267915310,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-role-usr','{\"id\":\"74ae504b-2ef0-4027-9985-f4848422cc7b\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('164de256-952c-4786-a555-05050244f7a9',1728267884666,'org3','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/7340899d-2fad-497c-9a46-0c9113674b9f/client-secret','{\"type\":\"secret\",\"value\":\"5T3BP1d2hFynx6TivuR2xNjxHq8nHeoD\"}',NULL,'CLIENT'),('171e2569-35c9-47ed-b4c3-44562d49bea5',1728267869584,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','{\"id\":\"bdd6d1b9-ec83-4ce6-9934-42cb88dd134f\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('17e12c6d-7fb3-4472-93fa-f67d54830adc',1728267872005,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_ws1-admin','{\"id\":\"82a8764f-e088-4a02-b985-0b361d2e404b\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('18f8ed6b-17ee-47f0-b986-49e567ff11a0',1728267915607,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_organization-manager/composites','[{\"id\":\"740ac8e6-aeaa-491b-9c2f-b882e7cdd756\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"0daede2c-8902-4094-a769-ed33da091c13\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"74ae504b-2ef0-4027-9985-f4848422cc7b\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"fb00d0b6-8453-470b-b98e-68c8a38e1437\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"525c0f9e-849f-42df-8462-d00baf17f60e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"b7cd51c1-0c6e-431f-b189-b50a6872e2e8\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"d0e6705d-bc2c-4a32-bbed-438c24754061\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"2fe9ffe6-3d50-42c0-bff2-8bae7afb67de\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"74a3f09a-9820-4367-947f-2fb7d7cd4295\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"dc7eb68b-8ee0-4c9c-9db8-e8e32bd13712\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"14d8dd09-3c4e-47ba-85e2-187b92666d52\",\"attributes\":{}},{\"id\":\"e8056b8d-7c15-4e4b-82a5-f67b3b95b2f6\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"14d8dd09-3c4e-47ba-85e2-187b92666d52\",\"attributes\":{}},{\"id\":\"5b0a2614-e84e-4524-991c-fac749e1128a\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"14d8dd09-3c4e-47ba-85e2-187b92666d52\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('1d56d431-bb8a-4659-b754-1f41ae08ceaf',1728267915676,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_organization-user-manager','{\"id\":\"a22eca50-8126-4d7c-a121-5db421566333\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('1dda0d2f-5ec0-4f38-b6ee-024fd04a386d',1728267915786,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/9f01caa6-fb86-4469-89b3-dd34bca63984/role-mappings/clients/14d8dd09-3c4e-47ba-85e2-187b92666d52','[{\"id\":\"3c5e0dfa-bd0d-4f76-9260-a567d1876c9f\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"14d8dd09-3c4e-47ba-85e2-187b92666d52\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('1e001dff-b07e-4326-8cbe-38710bd4745d',1728267857007,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_ws1-admin/composites','[{\"id\":\"47f49633-fefe-4979-bc53-46fc95198379\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a6cb37b5-0248-481d-95f9-6a623b01e8d0\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('1e149494-7707-4deb-8c05-16781143bb92',1728267917441,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_ws1-admin','{\"id\":\"b801339b-2297-4fb3-888c-7244dbfe28f7\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1e1714ff-8545-4941-b514-5b0f32fc765c',1728267885427,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/4c5c4a50-2514-4ab0-baa9-813240bf6e38/role-mappings/clients/3188b743-30fd-4ea4-ace3-ed104e5eac5d','[{\"id\":\"a76e89dd-8012-49f5-9fc2-4a89656c48bd\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"3188b743-30fd-4ea4-ace3-ed104e5eac5d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('1e9dc3b8-9edb-40f6-bc70-e96f437efd86',1728267884962,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-usr-mt','{\"id\":\"f8b83f8a-a235-4007-95ec-2abf90dfa43e\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('20e6326c-0501-4e7b-bc81-c4b937d92c7b',1728267900250,'org4','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d082e155-8648-4877-a8ae-60716e0b632a/client-secret','{\"type\":\"secret\",\"value\":\"9xeirHT5SO2tIYALgehOV6vw9bKJAj8P\"}',NULL,'CLIENT'),('2113471f-19b2-48f0-a9e7-7b4679905cec',1728267915432,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_organization-manager','{\"id\":\"add1a704-9aa9-4b23-bfa4-24b30e330f48\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('2167fc1a-22b4-452f-ab6a-8c26212af1e7',1728267851746,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-role-usr','{\"id\":\"e131344c-bfa3-42b7-8c39-bb6c4f151b76\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('22196af3-e442-425c-805c-078be0148659',1728267869888,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-ws-mt','{\"id\":\"0941fd03-6406-44f6-880a-c70236923952\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2308471f-ed83-47a4-bbce-1495f7939530',1728267884812,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','{\"id\":\"cf7e8abe-cf28-4c54-8618-45cdecc8f2b2\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('24056c8f-9d2b-42fd-9d89-27627fa568e3',1728267879542,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','users/0caf326b-9de5-47f1-a66e-ec46fea0ad8e/role-mappings/clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','[{\"id\":\"2ef55f22-154c-4db9-bfd1-5e4b43c13616\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bdd6d1b9-ec83-4ce6-9934-42cb88dd134f\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('24f04917-91ae-402f-9f3e-c017d684fdd4',1728267851641,'org1','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/44f67ee9-b606-481b-b720-0d99b0607209/client-secret','{\"type\":\"secret\",\"value\":\"vbwD93CCSm66RTBnjNh4jMszyTbaFiTV\"}',NULL,'CLIENT'),('274fcf3a-466c-4d6c-b227-ca41ff3021fb',1728267870835,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/0caf326b-9de5-47f1-a66e-ec46fea0ad8e','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('28962982-e9f7-485d-82dd-13a3a39ccee1',1728267925043,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/ws3','{\"id\":\"75ce0a2b-aaa8-473b-9ecd-bd876c5d959a\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('29102b0c-12c4-4cbf-bd68-5bf7e40ff8b8',1728267864388,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/ws3','{\"id\":\"0df25890-45bf-4813-b44d-8d94f014baca\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('296fde71-5f0b-4ab5-a0ee-6cc74c133970',1728267872098,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','users/0caf326b-9de5-47f1-a66e-ec46fea0ad8e/role-mappings/clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','[{\"id\":\"f14651a0-a105-4d18-8d50-537d3bb0b153\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bdd6d1b9-ec83-4ce6-9934-42cb88dd134f\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('29c5b077-566d-4bc5-89ed-98f549202df6',1728267885967,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/34d25214-78e8-4cda-94d3-c841d12af193/role-mappings/clients/b35e0475-d55b-4021-8732-f8e52632be27','[{\"id\":\"3162e387-3ca4-441e-8b39-e15b79e58687\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"b35e0475-d55b-4021-8732-f8e52632be27\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('29dbfe7d-9d4d-49d3-a4dc-4eaffdc3ba3a',1728267894981,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_ws3-admin/composites','[{\"id\":\"6dde44a8-c70c-48ab-93d7-3894a1ebcbef\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a50bb24c-d80b-4bda-b37a-569474a9c9f9\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('29ee8f86-581e-4f0c-b08f-5d195477324f',1728267884932,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-role-usr','{\"id\":\"177eb5c3-bc45-4246-a9b9-e93512cdcafb\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2a99c6b8-f5d7-4e72-a7f5-b72f74f755de',1728267900871,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/ee067407-2269-4e8a-877e-4d002c54997d/role-mappings/clients/728b4ede-24f3-45dd-9c8f-81a7e030a0d5','[{\"id\":\"e890b526-d16a-4b1f-a205-4c0b545ab92c\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"728b4ede-24f3-45dd-9c8f-81a7e030a0d5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('2b84ad86-12c0-4361-8476-cd7276f3f9a6',1728267915037,'org5','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/8835fc68-43b9-4293-a20b-da53a4917267/client-secret','{\"type\":\"secret\",\"value\":\"6KO0Dc7NFmv5qdRFNoxOBfRAo217Ng7m\"}',NULL,'CLIENT'),('2c0db2f1-4cb2-4e83-bea7-1155ae832da5',1728267875749,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_ws2-admin/composites','[{\"id\":\"61cf9da3-2d00-49ad-96b3-f5eebaad7320\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"05a2017d-8bb6-4907-835e-744aef179bf8\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('2c7dc609-6647-4590-aff7-6740ad747c99',1728267900449,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_organization-manager','{\"id\":\"c80ecfde-385f-43e9-a42b-46321696fffc\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('2dcfdfe6-86ac-42ca-856f-535f42514b59',1728267885020,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-audit-log','{\"id\":\"72d1c654-5161-468f-862f-69aa607841ce\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('30792807-4af7-472c-84b9-851192fa05eb',1728267879514,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_ws3-admin/composites','[{\"id\":\"10f033b7-102b-4cdc-9252-37514be96c00\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"de3916db-066c-4525-816c-47ea54cc6f03\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('31430f36-9c08-448f-abe0-f0c5a1f58ffd',1728267895025,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','users/34d25214-78e8-4cda-94d3-c841d12af193/role-mappings/clients/b35e0475-d55b-4021-8732-f8e52632be27','[{\"id\":\"5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"b35e0475-d55b-4021-8732-f8e52632be27\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('32168db7-99b5-4528-807c-9059f72ac82e',1728267860793,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_ws2-admin','{\"id\":\"1b7f7f15-e2a3-42f5-9344-0d744418238a\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3240c0b1-66a3-4854-98c6-7e15293f9ab6',1728267884761,'org3','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/client-secret','{\"type\":\"secret\",\"value\":\"5KGfYsjjh3FlPDBd3ScEsoT1GHGqeP8D\"}',NULL,'CLIENT'),('32c593ed-0472-4dab-84c9-ce34b223cc73',1728267851924,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_organization-manager','{\"id\":\"081ff5e3-4014-4c53-bba7-e86dbfa71609\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('338ea7c4-5ae8-46e8-a26f-4c609125e3ed',1728267915083,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8','{\"id\":\"6e8de75b-80b5-4366-953a-f95a340a5ed8\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('34670c3d-211f-46ab-a528-390dc6f46647',1728267900922,'org4','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('35205039-d410-4ded-9585-eb7f6ae42cec',1728267900368,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-ws-role-mt','{\"id\":\"785f61a0-b645-498d-82ee-d32bdee5c667\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('355c488c-a41c-472c-a002-755ed0cb9b43',1728267887108,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_ws1-admin','{\"id\":\"3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3597cb23-93df-4664-8c32-d0117aac07b8',1728267869687,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/8a2d7c3c-79cc-4f48-a616-e9f3ea635236','{\"id\":\"8a2d7c3c-79cc-4f48-a616-e9f3ea635236\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('3618ceec-0043-4e91-8fd2-508dc758e1bc',1728267887092,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_ws1-admin','{\"id\":\"a4b76433-4732-46d3-844b-ae311102b77c\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('369715eb-33c7-479d-8bcb-74001fca5610',1728267921257,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_ws2-admin/composites','[{\"id\":\"4f5f06a0-078e-4a20-bdc3-c1ae77c72680\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"3f128d19-6147-4d18-a193-ee982f4d4ec2\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('395db05b-5df5-4db3-af91-d396fd4b3fb0',1728267902439,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/ws1','{\"id\":\"d84a2cbe-ac47-4b56-b2df-bfed41e56f14\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3c47ed08-7de5-4380-bfdc-3eb1a62d5ecb',1728267872069,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_ws1-admin/composites','[{\"id\":\"8b5fde0d-09e8-4549-b9b5-a4ae5c8ffd98\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"82a8764f-e088-4a02-b985-0b361d2e404b\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('3c648e36-3f26-4719-aacd-5ffecea48f5f',1728267900314,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-own-mt','{\"id\":\"b562ad49-247f-4307-a3aa-a61df05bacbc\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3cbdb90c-8a03-435c-8b65-a6be24f26e17',1728267909858,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_ws3-admin','{\"id\":\"7778b2cc-e1bb-4cc4-84b3-b6bce103eea1\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3d2e252a-021c-4c18-a601-9c9081b006df',1728267909830,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/ws3','{\"id\":\"0da2b5a0-a6d2-414f-9014-e09797b0f3fc\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3da05ce0-a68c-4822-ae04-5558b9912593',1728267884571,'org3','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/client-secret','{\"type\":\"secret\",\"value\":\"Iu6x1IrozukJJ9xqUBgH3CJuRV6CgGDs\"}',NULL,'CLIENT'),('3db647e4-83dc-4250-a0f2-7544eaea2870',1728267900392,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-ws-mt','{\"id\":\"09edad34-b9e7-4004-a8f5-2161191861ce\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3e00608d-ef9e-4397-af89-4cb6c712af3a',1728267851815,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-ws-role-usr','{\"id\":\"81d3f409-9049-4f41-808e-a172458c2f6b\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('402bd6cd-c05a-4d4a-9389-22d7127b43ae',1728267916302,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/27a9fadc-b281-4a11-b8e5-fcb5558a2fd3/role-mappings/clients/6e8de75b-80b5-4366-953a-f95a340a5ed8','[{\"id\":\"add1a704-9aa9-4b23-bfa4-24b30e330f48\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"6e8de75b-80b5-4366-953a-f95a340a5ed8\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('4167f386-a2ff-4e42-9de2-6132479ec09d',1728267917418,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_ws1-admin','{\"id\":\"5371d0bc-8fbb-44f9-953c-8b723c95c4f5\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('423fbcaa-0354-4315-887f-aeee42cfbd27',1728267869525,'org2','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/91e02879-b4bf-4cb2-9531-63e920e93386/client-secret','{\"type\":\"secret\",\"value\":\"0RYarbfhuGAcjBwHN3USAJm1Ia6lAR12\"}',NULL,'CLIENT'),('424e4e1f-9018-4e62-aec1-d4ff3acc9850',1728267853038,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/1012fedf-78c4-45b8-a167-29f735515410/role-mappings/clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','[{\"id\":\"081ff5e3-4014-4c53-bba7-e86dbfa71609\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"beab61ef-c70f-46ca-a8d1-3bf0973ffbf2\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('43cddd71-8b1f-49f8-988b-cf7bdbd23414',1728267906096,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_ws2-admin','{\"id\":\"1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('448e9901-71fa-46d4-a9ba-bb056d82f6eb',1728267851782,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-usr-mt','{\"id\":\"59088a00-1404-46d2-8962-f68d30902581\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('469328c4-10bc-4a07-9155-3e1d95954302',1728267902533,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_ws1-admin/composites','[{\"id\":\"d84a2cbe-ac47-4b56-b2df-bfed41e56f14\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"2acfb9cb-8742-4a6a-85e5-d46632822a14\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('47fb8ab4-38a9-4e20-908f-7a7d15e9274b',1728267870345,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/f895fcd5-fe67-44bc-93e7-c770696c2336/role-mappings/clients/92368d3d-3efb-4922-a8a0-f74c411a6744','[{\"id\":\"c7d679e9-1f33-4f3b-8690-7c29099801e3\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"92368d3d-3efb-4922-a8a0-f74c411a6744\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('4800fdef-5553-41a0-869b-c5cff37024c4',1728267852479,'org1','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('482a3f8e-1a1c-4e52-95d9-ac4107c5c2bf',1728267894930,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_ws3-admin','{\"id\":\"5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4e54dab1-91f6-40bd-92ba-006c5f7c539a',1728267851588,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/44f67ee9-b606-481b-b720-0d99b0607209','{\"id\":\"44f67ee9-b606-481b-b720-0d99b0607209\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('51ecc335-5a43-47d5-b51a-22cb43d587b2',1728267890999,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','users/34d25214-78e8-4cda-94d3-c841d12af193/role-mappings/clients/b35e0475-d55b-4021-8732-f8e52632be27','[{\"id\":\"0dec18f1-4b4c-40cb-a7da-e163998b6d53\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"b35e0475-d55b-4021-8732-f8e52632be27\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('5349ff5e-0c97-46c6-b5d5-ae20919ae06c',1728267852269,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_organization-user-manager','{\"id\":\"3d41da65-26f4-4039-b62d-550a72674bcd\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('5399085c-1c7f-4e9d-95bc-fdb66270549d',1728267906070,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/ws2','{\"id\":\"e6762070-8d0a-4519-bf1b-95bbed1be522\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('556f3c05-8e05-4041-b747-6b6b2eb95ba3',1728267921202,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_ws2-admin','{\"id\":\"3f128d19-6147-4d18-a193-ee982f4d4ec2\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('55854c49-08f0-41c8-b9cc-f24103fc827a',1728267852250,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_organization-user-role-manager/composites','[{\"id\":\"59088a00-1404-46d2-8962-f68d30902581\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"1ba8c00d-cd22-4309-accb-0a7f3f1ee4b1\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"81d3f409-9049-4f41-808e-a172458c2f6b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('55bf632a-54a7-4acb-a362-9cad3ffdc309',1728267899975,'org4','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/client-secret','{\"type\":\"secret\",\"value\":\"ZDhn1QDVdBMd5IZpLK6Lt2YQsY5NApp6\"}',NULL,'CLIENT'),('565d8be2-fa67-4b57-aaa2-4bb1bccce834',1728267915703,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_organization-user-manager/composites','[{\"id\":\"525c0f9e-849f-42df-8462-d00baf17f60e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"d0e6705d-bc2c-4a32-bbed-438c24754061\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('579cf60c-ee50-4ed9-b6ad-a255a582d7d9',1728267860876,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','users/1012fedf-78c4-45b8-a167-29f735515410/role-mappings/clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','[{\"id\":\"1b7f7f15-e2a3-42f5-9344-0d744418238a\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"beab61ef-c70f-46ca-a8d1-3bf0973ffbf2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('57ae8c02-7dce-40bc-942f-f3a0a65f619b',1728267875667,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/ws2','{\"id\":\"61cf9da3-2d00-49ad-96b3-f5eebaad7320\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('58184958-b3df-48c6-8419-3b5db17eb3e9',1728267917230,'org5','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('591964ed-95a5-429e-8cff-cac4ecb9fe35',1728267900709,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_organization-user-manager','{\"id\":\"972fc57b-c88e-4f11-b1b6-b4d8b4b21fe8\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('5ac8e1fd-83e5-400c-ae59-7207998213c6',1728267925056,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_ws3-admin','{\"id\":\"4b67beb7-4ae1-4d96-929a-ea6e40c396dd\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5c0b2546-dfa4-4deb-81dc-0c07d544359c',1728267915659,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_organization-user-role-manager/composites','[{\"id\":\"525c0f9e-849f-42df-8462-d00baf17f60e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"b7cd51c1-0c6e-431f-b189-b50a6872e2e8\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}},{\"id\":\"d0e6705d-bc2c-4a32-bbed-438c24754061\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('5c60046a-b7fc-4148-8463-3f3519226105',1728267925112,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_ws3-admin/composites','[{\"id\":\"75ce0a2b-aaa8-473b-9ecd-bd876c5d959a\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"4b67beb7-4ae1-4d96-929a-ea6e40c396dd\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('5c9a4eeb-813c-4a81-9373-c88776d0003e',1728267869728,'org2','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/8a2d7c3c-79cc-4f48-a616-e9f3ea635236/client-secret','{\"type\":\"secret\",\"value\":\"KEewcfUCeSDRckDIjhovINtm4q9JhZ8t\"}',NULL,'CLIENT'),('5ef409b2-f1d4-463c-8f31-af50294d3b3a',1728267900763,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_organization-user-manager/composites','[{\"id\":\"f98850c5-b6c1-445d-bb60-1d0b5ae7126f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"2c92488b-fa98-4e1f-a421-f6858d9f0979\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('60bb1a65-ba94-4e23-87f1-c1bde4e1e07c',1728267900057,'org4','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bb514192-449b-4128-a338-7f61600a2941/client-secret','{\"type\":\"secret\",\"value\":\"BN9vJLeBLeDiHfrOHTpXZUkn7pDcRgcR\"}',NULL,'CLIENT'),('617d89b8-1af5-4481-9e93-80801f617f7b',1728267869904,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-audit-log','{\"id\":\"241edcc5-ccfb-408e-8d17-172ddcf119f5\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('633dce02-f35d-4c50-9d03-db8d20eda63f',1728267914913,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794','{\"id\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('64535b36-fd84-459d-a92d-d69f6483ea76',1728267915349,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-ws-role-mt','{\"id\":\"b7cd51c1-0c6e-431f-b189-b50a6872e2e8\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6480c4cc-e53f-40ed-a3ed-7724d2c4f4e4',1728267869630,'org2','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/client-secret','{\"type\":\"secret\",\"value\":\"vG0s2bZTl1ozvjkuAtekEJP6lUxGXZ9V\"}',NULL,'CLIENT'),('649c7249-5b1d-4556-b1d3-1c38e9b3925f',1728267899934,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c','{\"id\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('65532f1a-5703-4346-b164-e4c3fb75a429',1728267851472,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','{\"id\":\"beab61ef-c70f-46ca-a8d1-3bf0973ffbf2\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('674c5a09-5dec-468a-8e3b-a9efd8905e72',1728267915187,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/157645fe-1439-4fdc-8456-5357b19420f9','{\"id\":\"157645fe-1439-4fdc-8456-5357b19420f9\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('67b6210d-da03-4baf-af1a-9a1e4ac1ce40',1728267884849,'org3','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/cf7e8abe-cf28-4c54-8618-45cdecc8f2b2/client-secret','{\"type\":\"secret\",\"value\":\"R9ZGhMoyo9po2qpxZKAbUF51cuVkyHXX\"}',NULL,'CLIENT'),('6bfb0b34-d5a9-4e18-b129-3a02ec04fec5',1728267884725,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27','{\"id\":\"b35e0475-d55b-4021-8732-f8e52632be27\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('6c0feb39-a906-405e-9961-47979cc57b42',1728267870193,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_organization-user-role-manager/composites','[{\"id\":\"ae8437a5-22e2-42e2-b9c9-4e4c71582977\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"34b9f4cf-3c26-4e25-b65b-219e5cbc0a10\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"7c631dec-c087-46ee-82b3-3acdef67a05c\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('6fd21251-c973-4590-89be-e1948d15f954',1728267869378,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db','{\"id\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('70466bca-0a39-4639-93a3-6f24c1e1d149',1728267856901,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/ws1','{\"id\":\"47f49633-fefe-4979-bc53-46fc95198379\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('70fe51e3-33a4-492e-bc35-da97db2c431a',1728267909919,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','users/32cd561f-d83a-47d0-84ba-06226a9369f9/role-mappings/clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54','[{\"id\":\"7778b2cc-e1bb-4cc4-84b3-b6bce103eea1\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5fd03581-4e84-4f6b-9f89-0db2f49f2b54\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('71d1be5f-89b1-42ba-b32a-727eed58af8f',1728267915296,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-own-mt','{\"id\":\"0daede2c-8902-4094-a769-ed33da091c13\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7206329f-97ba-4896-8a1d-f764dec34f36',1728267914961,'org5','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/client-secret','{\"type\":\"secret\",\"value\":\"su3WhandRwi4QzEsZvvStANx8SETfWnC\"}',NULL,'CLIENT'),('73e8cb68-95a5-43ef-b64a-edc64b6fc708',1728267906133,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_ws2-admin/composites','[{\"id\":\"e6762070-8d0a-4519-bf1b-95bbed1be522\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"b6e1d93a-d188-4632-be47-13533712312c\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7407ff64-e7b9-44f5-92a2-1356512b1e13',1728267885319,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_organization-user-manager','{\"id\":\"1d034a73-20f6-4eba-a34e-17c1a4dd35e6\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('7442ce43-a797-4b57-9a62-04f24688a1ce',1728267870247,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_organization-user-manager/composites','[{\"id\":\"ae8437a5-22e2-42e2-b9c9-4e4c71582977\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"7c631dec-c087-46ee-82b3-3acdef67a05c\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('74f510e1-13a9-458c-a372-b17e54b2d884',1728267902492,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_ws1-admin','{\"id\":\"df47e0db-7d53-44d7-a0a4-f4562e3b1cac\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('74fc133f-4f76-48f0-bed4-fb1c5a70a287',1728267915362,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-ws-role-usr','{\"id\":\"d0e6705d-bc2c-4a32-bbed-438c24754061\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('750da6b3-2481-48c3-8639-66fd70775097',1728267879423,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/ws3','{\"id\":\"10f033b7-102b-4cdc-9252-37514be96c00\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('75417bd7-c540-4e43-ba2e-fb7632b6ca19',1728267915622,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_organization-user-role-manager','{\"id\":\"b500b9f7-1da0-42d0-b1f5-8096a5949fd3\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('75a01891-1730-4f2e-b94d-501a4df5f0a8',1728267915007,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/8835fc68-43b9-4293-a20b-da53a4917267','{\"id\":\"8835fc68-43b9-4293-a20b-da53a4917267\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('769a67c2-430c-4ecc-a762-8c184c22fb73',1728267906161,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','users/32cd561f-d83a-47d0-84ba-06226a9369f9/role-mappings/clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54','[{\"id\":\"1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5fd03581-4e84-4f6b-9f89-0db2f49f2b54\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('77e8636c-ead9-49d0-86cf-60473ed9fdbc',1728267884626,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/7340899d-2fad-497c-9a46-0c9113674b9f','{\"id\":\"7340899d-2fad-497c-9a46-0c9113674b9f\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('789a8d8a-9d4e-412b-ba7f-ad91182d1e95',1728267915824,'org5','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('7b946ac9-a20b-4dbd-ad80-f296f3b47100',1728267856700,'org1','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('7ba6ea32-5fd0-46f7-8bc8-b93f2792b131',1728267870216,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_organization-user-manager','{\"id\":\"db8fe8f0-95b2-4994-b7c3-3a26d5cfd53b\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('7e1fdfed-76b6-4cf4-ae31-a843f6e68c40',1728267925069,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_ws3-admin','{\"id\":\"002cf824-7b87-4995-ae81-827b6d19107b\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8124ac22-e6f2-4ad9-bd4f-4bdab0d9fa5f',1728267885471,'org3','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('84c7e4ff-ebbc-4803-bc30-72fca606af9d',1728267851852,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-audit-log','{\"id\":\"05aa4900-181b-46ac-8646-c77ff9e9701e\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('85ae3c02-dda5-4b44-9f84-1bb13ce6ad77',1728267884519,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','{\"id\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('8ab96663-b97f-4408-b8ee-258fb8e2da47',1728267900022,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bb514192-449b-4128-a338-7f61600a2941','{\"id\":\"bb514192-449b-4128-a338-7f61600a2941\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('8c031b20-7c8d-40d8-8eb3-6a023fd291f0',1728267852170,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_organization-manager/composites','[{\"id\":\"08e87834-885d-471d-8ec8-fc3f4a15ee3d\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"013cf0a4-239d-4597-8cc5-6f5064b0831d\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"e131344c-bfa3-42b7-8c39-bb6c4f151b76\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"1b252917-6a73-4981-ae3c-edbfe8096bbc\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"59088a00-1404-46d2-8962-f68d30902581\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"1ba8c00d-cd22-4309-accb-0a7f3f1ee4b1\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"81d3f409-9049-4f41-808e-a172458c2f6b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"7ed73969-2c00-430e-886a-9141927c58fc\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"05aa4900-181b-46ac-8646-c77ff9e9701e\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{}},{\"id\":\"68c0ad45-0597-4117-a712-0fe6697b4005\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"50f136fa-4352-44bc-8a43-bd16889d14c2\",\"attributes\":{}},{\"id\":\"00c36616-93ab-44d3-ad36-eea3b6eacd4b\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"50f136fa-4352-44bc-8a43-bd16889d14c2\",\"attributes\":{}},{\"id\":\"e07b5d16-cdc1-4605-a57c-f8a6bb533a6e\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"50f136fa-4352-44bc-8a43-bd16889d14c2\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('8c5350ab-94c7-4821-b82c-4d8907caf208',1728267870150,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_organization-user-role-manager','{\"id\":\"7a08fd3c-abe9-49b9-95a2-81b04c85b560\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('8d0d27f2-9425-4ac2-933e-fb490d994c22',1728267857051,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','users/1012fedf-78c4-45b8-a167-29f735515410/role-mappings/clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','[{\"id\":\"b9162a04-3cfb-4f5f-b0cc-49ddae5e5930\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"beab61ef-c70f-46ca-a8d1-3bf0973ffbf2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('8d3ed3df-f921-4f54-9cc2-a768856321f8',1728267887157,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_ws1-admin/composites','[{\"id\":\"2d766ca8-5f42-4d87-a711-603d24e98821\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a4b76433-4732-46d3-844b-ae311102b77c\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('8dfed0f6-3928-4c1c-a779-47cb5d45a4d9',1728267915336,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-usr-mt','{\"id\":\"525c0f9e-849f-42df-8462-d00baf17f60e\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('901ed2f7-e026-40d2-a3b5-1108c42626f5',1728267885887,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/34d25214-78e8-4cda-94d3-c841d12af193','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('91034986-efff-4165-b371-c726fac9c4ba',1728267900404,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-audit-log','{\"id\":\"c8fec1f2-c33d-4e82-bdc2-91998339a9fa\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9135174d-c74f-4ce6-8cba-2bb698f97488',1728267856939,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_ws1-admin','{\"id\":\"b9162a04-3cfb-4f5f-b0cc-49ddae5e5930\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('91f4054e-10be-40d5-885b-6cf96b9cd84a',1728267902556,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','users/32cd561f-d83a-47d0-84ba-06226a9369f9/role-mappings/clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54','[{\"id\":\"df47e0db-7d53-44d7-a0a4-f4562e3b1cac\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5fd03581-4e84-4f6b-9f89-0db2f49f2b54\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('92ab8e10-9a66-49a9-af0a-f1290057c58a',1728267852408,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/192f71f6-1897-4c3a-9fbd-659ce298dd3a/role-mappings/clients/50f136fa-4352-44bc-8a43-bd16889d14c2','[{\"id\":\"9469f8c4-ef05-4ef9-af89-e4f8f4ee2355\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"50f136fa-4352-44bc-8a43-bd16889d14c2\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('94c0f781-992f-4e7b-bd1b-87508b1bb8a5',1728267885302,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_organization-user-role-manager/composites','[{\"id\":\"f8b83f8a-a235-4007-95ec-2abf90dfa43e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"b7021664-c3c1-404c-af76-df0ce27b1384\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"7a8c5a05-24dd-4919-823a-a2a00f954213\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('9578ca25-ff79-4daf-ac0c-ad223aff3176',1728267869862,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-ws-role-mt','{\"id\":\"34b9f4cf-3c26-4e25-b65b-219e5cbc0a10\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('959d4618-77b7-4944-85ff-ef9868dc99a4',1728267884919,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-own-mt','{\"id\":\"5fa0e5ca-e776-4ff0-b498-fcccfa951fff\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9741f959-b422-45d8-b41b-9d2d13d70f78',1728267851764,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-usage','{\"id\":\"1b252917-6a73-4981-ae3c-edbfe8096bbc\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('97492b60-9bea-4753-9b36-cce343026546',1728267900688,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_organization-user-role-manager/composites','[{\"id\":\"f98850c5-b6c1-445d-bb60-1d0b5ae7126f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"785f61a0-b645-498d-82ee-d32bdee5c667\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"2c92488b-fa98-4e1f-a421-f6858d9f0979\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('97c7902f-8037-4412-9f56-a36def055d9a',1728267869848,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-usr-mt','{\"id\":\"ae8437a5-22e2-42e2-b9c9-4e4c71582977\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9b991b54-43a7-4f68-94f4-1b237f7b5bc6',1728267885263,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_organization-user-role-manager','{\"id\":\"f2335e97-5b71-4b0e-ae26-501d8869b0f8\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('9e1f7e07-232a-4727-9b83-8a4ac6a37b36',1728267906083,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_ws2-admin','{\"id\":\"b6e1d93a-d188-4632-be47-13533712312c\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9e479fea-87be-45aa-bae6-37ca6546fa10',1728267900208,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d082e155-8648-4877-a8ae-60716e0b632a','{\"id\":\"d082e155-8648-4877-a8ae-60716e0b632a\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('9e98745c-4415-4b10-8c5d-98ff88588a06',1728267871820,'org2','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('a67e2055-1693-4b98-8dbc-9cc2d9db6d75',1728267851394,'org1','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/e5f235ff-e092-4e03-96e5-6de451cab48d/client-secret','{\"type\":\"secret\",\"value\":\"GjPAHDcKFDoqMqaMZ1VJA6wPssCPruUt\"}',NULL,'CLIENT'),('abe1e383-59a3-4c2a-94d0-18964f6473e9',1728267870922,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/0caf326b-9de5-47f1-a66e-ec46fea0ad8e/role-mappings/clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','[{\"id\":\"f341a69a-bbcf-42bf-895d-030b81e792a9\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bdd6d1b9-ec83-4ce6-9934-42cb88dd134f\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('ac33aea9-f6c8-4287-adf6-177ec7238172',1728267869479,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/91e02879-b4bf-4cb2-9531-63e920e93386','{\"id\":\"91e02879-b4bf-4cb2-9531-63e920e93386\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('ad50c1fd-b439-4ad2-b4e3-75816d641587',1728267887077,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/ws1','{\"id\":\"2d766ca8-5f42-4d87-a711-603d24e98821\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ae0c0244-1f26-4f32-9d39-13eabe246760',1728267885071,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_organization-manager','{\"id\":\"3162e387-3ca4-441e-8b39-e15b79e58687\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ae65aa27-331b-4fc1-8e81-4c295ff283b9',1728267894912,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_ws3-admin','{\"id\":\"a50bb24c-d80b-4bda-b37a-569474a9c9f9\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b0966f4a-606e-494e-aef2-e3bafcd380e5',1728267864409,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_ws3-admin','{\"id\":\"fec81e1b-ac40-4be7-b252-a182598f1a57\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b3043b4b-8ae6-4561-b949-698a0483fd66',1728267860772,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_ws2-admin','{\"id\":\"3b590d32-2e6d-473e-a7d6-c001ba92466f\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b5583e21-874d-4ceb-91da-10117d2b2490',1728267851202,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9','{\"id\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('b8925fc0-e428-46c4-975e-6048042b98a4',1728267879470,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_ws3-admin','{\"id\":\"2ef55f22-154c-4db9-bfd1-5e4b43c13616\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ba81c043-85f0-4ef7-ba7c-98535bf41c4e',1728267869780,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-upd','{\"id\":\"1dd54efe-e273-4776-920b-3e236bcef7b2\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bc498f3d-4f01-4af7-87e7-c7fe46b52a8b',1728267900110,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54','{\"id\":\"5fd03581-4e84-4f6b-9f89-0db2f49f2b54\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('be773e60-3d2c-44c2-b73c-93d93694dabf',1728267869422,'org2','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/client-secret','{\"type\":\"secret\",\"value\":\"pGeibYSfOvwZ2MKgpeapN1Hpuy6ZhHk2\"}',NULL,'CLIENT'),('bf45fc89-5f86-4b75-8217-e41a2d8a0f4e',1728267887195,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','users/34d25214-78e8-4cda-94d3-c841d12af193/role-mappings/clients/b35e0475-d55b-4021-8732-f8e52632be27','[{\"id\":\"3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"b35e0475-d55b-4021-8732-f8e52632be27\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('c32ee004-08e0-46a1-baa7-2f155b79d1f1',1728267851729,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-own-mt','{\"id\":\"013cf0a4-239d-4597-8cc5-6f5064b0831d\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c4204747-a896-4d7e-9640-61ffe557dd63',1728267851709,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-upd','{\"id\":\"08e87834-885d-471d-8ec8-fc3f4a15ee3d\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c49f8a91-3f0d-480b-8bc4-64a14436f1f1',1728267894889,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/ws3','{\"id\":\"6dde44a8-c70c-48ab-93d7-3894a1ebcbef\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c5261fa4-bb15-4597-90e1-3eed02602767',1728267856917,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_ws1-admin','{\"id\":\"a6cb37b5-0248-481d-95f9-6a623b01e8d0\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c5cee000-7ffc-4c88-bdb5-3df5f79d7304',1728267885246,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_organization-manager/composites','[{\"id\":\"d47fcc03-ea3e-445a-a865-1e8ea65e4798\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"5fa0e5ca-e776-4ff0-b498-fcccfa951fff\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"177eb5c3-bc45-4246-a9b9-e93512cdcafb\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"24287595-b21f-492f-97ea-7a67804707b5\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"f8b83f8a-a235-4007-95ec-2abf90dfa43e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"b7021664-c3c1-404c-af76-df0ce27b1384\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"7a8c5a05-24dd-4919-823a-a2a00f954213\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"a371ff59-c3fd-42d6-999e-51b584002c4d\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"72d1c654-5161-468f-862f-69aa607841ce\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"c091b0de-f830-43a0-92a6-f52e54c26bc3\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3188b743-30fd-4ea4-ace3-ed104e5eac5d\",\"attributes\":{}},{\"id\":\"5f7ae568-7e18-4295-bbe6-ae51e787fadc\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3188b743-30fd-4ea4-ace3-ed104e5eac5d\",\"attributes\":{}},{\"id\":\"44c41016-22ea-4f5e-ae98-5fb02646bc03\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3188b743-30fd-4ea4-ace3-ed104e5eac5d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('c6b4f2e1-fe63-40d8-be51-cdffd730d7b0',1728267884976,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-ws-role-mt','{\"id\":\"b7021664-c3c1-404c-af76-df0ce27b1384\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c7198e6f-fe27-44fb-b2de-1cfda32e8235',1728267875785,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','users/0caf326b-9de5-47f1-a66e-ec46fea0ad8e/role-mappings/clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','[{\"id\":\"c61afc87-d329-4880-a830-957443029a32\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bdd6d1b9-ec83-4ce6-9934-42cb88dd134f\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('c811f4c3-eea4-4850-9d7a-4329d454d8fe',1728267869830,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-usage','{\"id\":\"151b864e-732b-4771-b3ef-5494632f3dca\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c82f94f3-543d-48c5-9e1c-575dfb669d6e',1728267902472,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_ws1-admin','{\"id\":\"2acfb9cb-8742-4a6a-85e5-d46632822a14\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c83ddb57-30ac-49e4-82df-d374c353e655',1728267875700,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_ws2-admin','{\"id\":\"c61afc87-d329-4880-a830-957443029a32\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c9526edd-d588-464a-91f3-7ab764042fed',1728267900381,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-ws-role-usr','{\"id\":\"2c92488b-fa98-4e1f-a421-f6858d9f0979\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c9f4da02-4d48-449f-bdfd-9c0eba8b91c2',1728267925159,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','users/27a9fadc-b281-4a11-b8e5-fcb5558a2fd3/role-mappings/clients/6e8de75b-80b5-4366-953a-f95a340a5ed8','[{\"id\":\"002cf824-7b87-4995-ae81-827b6d19107b\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"6e8de75b-80b5-4366-953a-f95a340a5ed8\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('cc9da88a-55fc-4559-a374-ff59efe17a64',1728267870129,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_organization-manager/composites','[{\"id\":\"1dd54efe-e273-4776-920b-3e236bcef7b2\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"aeb97fe6-5139-40f6-9cac-f9786deb1999\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"e8479eae-b00a-4e37-b3db-9600179b72c2\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"151b864e-732b-4771-b3ef-5494632f3dca\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"ae8437a5-22e2-42e2-b9c9-4e4c71582977\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"34b9f4cf-3c26-4e25-b65b-219e5cbc0a10\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"7c631dec-c087-46ee-82b3-3acdef67a05c\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"0941fd03-6406-44f6-880a-c70236923952\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"241edcc5-ccfb-408e-8d17-172ddcf119f5\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\",\"attributes\":{}},{\"id\":\"8173fc0f-7768-4f72-bd43-cbd8330466d3\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"92368d3d-3efb-4922-a8a0-f74c411a6744\",\"attributes\":{}},{\"id\":\"4c33fd9f-11f6-4873-a29f-da616f389506\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"92368d3d-3efb-4922-a8a0-f74c411a6744\",\"attributes\":{}},{\"id\":\"fdc2dc46-93d5-40c9-a813-5fd549a9b4d1\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"92368d3d-3efb-4922-a8a0-f74c411a6744\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('ce92fe47-6afb-4f84-9810-6f00fe7656cf',1728267909892,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_ws3-admin/composites','[{\"id\":\"0da2b5a0-a6d2-414f-9014-e09797b0f3fc\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"83a47cd6-6d74-4630-ad53-dff3cdc61718\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('cfb3eba6-036c-4787-b20f-b1b5b17d9416',1728267875683,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_ws2-admin','{\"id\":\"05a2017d-8bb6-4907-835e-744aef179bf8\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d11d0914-2a6e-4db6-b0bf-8ffe9b195f5a',1728267851262,'org1','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/client-secret','{\"type\":\"secret\",\"value\":\"8s6sXBaMFizAJ5QfXG3b9YvUigN7nCIa\"}',NULL,'CLIENT'),('d22a7931-07dc-403f-a478-a47d1fb2d9ea',1728267885350,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_organization-user-manager/composites','[{\"id\":\"f8b83f8a-a235-4007-95ec-2abf90dfa43e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}},{\"id\":\"7a8c5a05-24dd-4919-823a-a2a00f954213\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('d2ae4372-b935-448c-b14f-b5b55a71a71e',1728267871991,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/ws1','{\"id\":\"8b5fde0d-09e8-4549-b9b5-a4ae5c8ffd98\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d2f395d9-4efd-4462-b301-e552228a0d77',1728267851798,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-ws-role-mt','{\"id\":\"1ba8c00d-cd22-4309-accb-0a7f3f1ee4b1\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d4cce188-66f9-4d4b-b825-cf2b2aa6e6d9',1728267900326,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-role-usr','{\"id\":\"ee7c9054-a90e-45e2-90c6-c831d17997fc\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d6860258-4dee-43ac-bea1-7a6ca6dcce4b',1728267864475,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_ws3-admin/composites','[{\"id\":\"0df25890-45bf-4813-b44d-8d94f014baca\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"fec81e1b-ac40-4be7-b252-a182598f1a57\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('d76dce15-2fcd-4b46-abab-39bb02c90270',1728267890931,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_ws2-admin','{\"id\":\"0dec18f1-4b4c-40cb-a7da-e163998b6d53\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d8b58ad4-08ee-4a8a-83d5-34f6e1c2f169',1728267909845,'org4','CREATE','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c','ee067407-2269-4e8a-877e-4d002c54997d','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_ws3-admin','{\"id\":\"83a47cd6-6d74-4630-ad53-dff3cdc61718\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d95ec554-17dd-4385-b911-b201075af04c',1728267884905,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-upd','{\"id\":\"d47fcc03-ea3e-445a-a865-1e8ea65e4798\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('da3ad6bb-11aa-4796-a199-087e4ef690e1',1728267900340,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-usage','{\"id\":\"150f6734-f1fa-402f-9fe3-cf606829355b\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('dbeaa399-e955-4528-93d3-e057a046f268',1728267852191,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_organization-user-role-manager','{\"id\":\"8c4b0f0d-ad06-41bc-8e63-cc9fba55ae8a\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('dca34cf3-c300-47ff-a177-fdef5da00b6b',1728267860845,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_ws2-admin/composites','[{\"id\":\"3c31c5c2-b182-45c8-8cf3-12b769fcac9c\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"3b590d32-2e6d-473e-a7d6-c001ba92466f\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('dd8fbafc-bf94-484c-9e19-7ae7ba4215da',1728267872023,'org2','CREATE','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db','f895fcd5-fe67-44bc-93e7-c770696c2336','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_ws1-admin','{\"id\":\"f14651a0-a105-4d18-8d50-537d3bb0b153\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('df33d7d2-8067-42e0-9b81-f18e2c33bf7d',1728267917498,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','users/27a9fadc-b281-4a11-b8e5-fcb5558a2fd3/role-mappings/clients/6e8de75b-80b5-4366-953a-f95a340a5ed8','[{\"id\":\"b801339b-2297-4fb3-888c-7244dbfe28f7\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"6e8de75b-80b5-4366-953a-f95a340a5ed8\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('dfdd4707-9080-42ef-8978-4191820fd8d2',1728267917406,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/ws1','{\"id\":\"2ee60687-caed-4815-9e58-7d13fb1d722a\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e1bc5cf2-94a0-4a61-944a-162ec0652f2b',1728267916232,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('e27ce6fe-60f8-43f3-b9f5-7cb4a3439451',1728267864510,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','users/1012fedf-78c4-45b8-a167-29f735515410/role-mappings/clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','[{\"id\":\"f427bb1c-fd3c-4cdc-9af8-4eee20c72f14\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"beab61ef-c70f-46ca-a8d1-3bf0973ffbf2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('e47db434-21cc-4618-a971-76bd4c26041f',1728267915375,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-ws-mt','{\"id\":\"2fe9ffe6-3d50-42c0-bff2-8bae7afb67de\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e4c0fc34-b681-4c20-91a4-82c351320fe6',1728267921291,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','users/27a9fadc-b281-4a11-b8e5-fcb5558a2fd3/role-mappings/clients/6e8de75b-80b5-4366-953a-f95a340a5ed8','[{\"id\":\"06c6ad58-1e17-4695-aaac-452e8ae326c0\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"6e8de75b-80b5-4366-953a-f95a340a5ed8\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('e54490ad-dfb6-4b44-a2d8-6748cff1ed13',1728267869797,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-own-mt','{\"id\":\"aeb97fe6-5139-40f6-9cac-f9786deb1999\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e7af5922-a717-4ea9-96c5-cd3c0ce03af5',1728267884990,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-ws-role-usr','{\"id\":\"7a8c5a05-24dd-4919-823a-a2a00f954213\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e99aadae-28a2-4aa1-a95d-fb269c8ff4fe',1728267901317,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','users/32cd561f-d83a-47d0-84ba-06226a9369f9','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('e9f831a4-16e6-4d37-8f42-d94af0a43b8b',1728267890970,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/b35e0475-d55b-4021-8732-f8e52632be27/roles/_ws2-admin/composites','[{\"id\":\"73a2a057-8d33-494e-b02f-56568d64a6ff\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"3b737083-a1a7-4f33-beb5-afaa82677044\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('ea2c80fa-b7f0-4dfd-87fc-7ffa61845ac1',1728267890914,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_ws2-admin','{\"id\":\"3b737083-a1a7-4f33-beb5-afaa82677044\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ea82fd90-86de-4534-b0f8-5dc4de17e9aa',1728267869875,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-ws-role-usr','{\"id\":\"7c631dec-c087-46ee-82b3-3acdef67a05c\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('eead9b97-62ae-42c7-a76a-e5ea0ae0209b',1728267885004,'org3','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/_og-ws-mt','{\"id\":\"a371ff59-c3fd-42d6-999e-51b584002c4d\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('efae73ab-6e3b-4fbd-b9f3-d4599dc20d4e',1728267900613,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_organization-manager/composites','[{\"id\":\"3958d706-05c3-408b-a249-cbc245f1dd47\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"b562ad49-247f-4307-a3aa-a61df05bacbc\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"ee7c9054-a90e-45e2-90c6-c831d17997fc\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"150f6734-f1fa-402f-9fe3-cf606829355b\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"f98850c5-b6c1-445d-bb60-1d0b5ae7126f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"785f61a0-b645-498d-82ee-d32bdee5c667\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"2c92488b-fa98-4e1f-a421-f6858d9f0979\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"09edad34-b9e7-4004-a8f5-2161191861ce\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"c8fec1f2-c33d-4e82-bdc2-91998339a9fa\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"db6ec1b2-3401-449a-a512-a67ed08e1f1c\",\"attributes\":{}},{\"id\":\"b08a9060-8cc8-41c9-a398-df2aaa3ca235\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"728b4ede-24f3-45dd-9c8f-81a7e030a0d5\",\"attributes\":{}},{\"id\":\"14e57850-1aee-4af0-a220-4eab87cebe53\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"728b4ede-24f3-45dd-9c8f-81a7e030a0d5\",\"attributes\":{}},{\"id\":\"54168baa-7eda-4d44-bd78-af7e1146e3aa\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"728b4ede-24f3-45dd-9c8f-81a7e030a0d5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('f167964c-35d6-479a-9725-a7cdf968702f',1728267869813,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/0cae83b0-c90e-4b6d-b05b-75ea4fd610db/roles/_og-role-usr','{\"id\":\"e8479eae-b00a-4e37-b3db-9600179b72c2\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f1f731aa-76f3-4a6c-b999-7bd458c0afcd',1728267900628,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/roles/_organization-user-role-manager','{\"id\":\"a68592f6-5444-49d2-b64c-3547761eaef8\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('f37f2be2-9330-4f2c-a1ca-e43d2b4444aa',1728267900355,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-usr-mt','{\"id\":\"f98850c5-b6c1-445d-bb60-1d0b5ae7126f\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f3bfb3e3-3d9d-42b6-8805-bdc8e97e125e',1728267900148,'org4','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/5fd03581-4e84-4f6b-9f89-0db2f49f2b54/client-secret','{\"type\":\"secret\",\"value\":\"IxwzGMh096BYiHYe3jCAonkmaDa7VKQy\"}',NULL,'CLIENT'),('f44a9d47-ff97-41c2-9a8e-2e7890d2a2dc',1728267890895,'org3','CREATE','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4c5c4a50-2514-4ab0-baa9-813240bf6e38','172.24.0.5','clients/4f1bcf72-3d74-4dcd-b8eb-ceec493a441b/roles/ws2','{\"id\":\"73a2a057-8d33-494e-b02f-56568d64a6ff\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f4a6d4f8-615b-4a44-b3f9-2506b5de0bbb',1728267864428,'org1','CREATE','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9','192f71f6-1897-4c3a-9fbd-659ce298dd3a','172.24.0.5','clients/beab61ef-c70f-46ca-a8d1-3bf0973ffbf2/roles/_ws3-admin','{\"id\":\"f427bb1c-fd3c-4cdc-9af8-4eee20c72f14\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f80d1fef-0c01-4bf9-bb2c-c82a3757f343',1728267915123,'org5','ACTION','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/client-secret','{\"type\":\"secret\",\"value\":\"i1BpD1n8WVMhMikWd9sEU44s1Nw31Dar\"}',NULL,'CLIENT'),('f8812eb9-256c-4e28-8378-2c4fe140b59e',1728267921189,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/ws2','{\"id\":\"4f5f06a0-078e-4a20-bdc3-c1ae77c72680\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f90026ab-c9b6-46e6-acd7-2029b28ef1ef',1728267869954,'org2','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/bdd6d1b9-ec83-4ce6-9934-42cb88dd134f/roles/_organization-manager','{\"id\":\"f341a69a-bbcf-42bf-895d-030b81e792a9\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('f99be136-a980-4601-b164-25fdf7abf085',1728267917473,'org5','CREATE','org5','b2243579-8514-4d2a-a723-7ea4e4070794','9f01caa6-fb86-4469-89b3-dd34bca63984','172.24.0.5','clients/6e8de75b-80b5-4366-953a-f95a340a5ed8/roles/_ws1-admin/composites','[{\"id\":\"2ee60687-caed-4815-9e58-7d13fb1d722a\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"5371d0bc-8fbb-44f9-953c-8b723c95c4f5\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b2243579-8514-4d2a-a723-7ea4e4070794\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('f9a96498-9158-42f4-b099-e1b5dc1431a7',1728267851833,'org1','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/d2931841-1d90-49f5-a55b-22f9a6eb1fa9/roles/_og-ws-mt','{\"id\":\"7ed73969-2c00-430e-886a-9141927c58fc\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fae48ede-40b5-448a-aef9-1931e3a23b3a',1728267915281,'org5','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/b2243579-8514-4d2a-a723-7ea4e4070794/roles/_og-upd','{\"id\":\"740ac8e6-aeaa-491b-9c2f-b882e7cdd756\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fb067f0a-a1af-49ba-b889-ab23aebc1e7e',1728267900298,'org4','CREATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5','clients/db6ec1b2-3401-449a-a512-a67ed08e1f1c/roles/_og-upd','{\"id\":\"3958d706-05c3-408b-a249-cbc245f1dd47\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fe6627fc-33ef-42c5-8b56-b5b2c6f2dc5d',1728267902200,'org4','UPDATE','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d9b7fb56-cf40-4830-bfb7-5a92cca769f4','ab7bb859-e075-4742-909a-b4a63d2e8672','172.24.0.5',NULL,'{\"enabled\":true}',NULL,'REALM');
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('003a7c87-7a6d-4029-9d10-0930a14adff4',NULL,'idp-review-profile','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','1498f023-8ffb-41a6-8a5b-9f767301d032',0,10,0,NULL,'2fbf96c3-2169-4f57-b7c4-91a4183971ed'),('005b4117-25d1-4f4b-ad3a-6514fd590f77',NULL,NULL,'org4','368e5c18-f04d-4f64-8b35-acaf708840fc',1,40,1,'6b99787f-642f-4e70-8b6c-9ace20c718a4',NULL),('01172867-eb98-472b-9217-04fc97059581',NULL,'conditional-user-configured','org2','51e0459f-9553-4687-8f4c-01ad3614a03c',0,10,0,NULL,NULL),('012b20a5-4c7d-4378-a506-42de3bcfeb4d',NULL,'registration-page-form','org2','bff743f3-9638-4816-8710-3bab1d5ede9a',0,10,1,'3197f3ab-0c32-418a-aaff-69769c6f9db4',NULL),('01ceb5e4-5b0d-49e1-9cc5-842d9f4b926d',NULL,NULL,'org5','f112974c-c0af-48d1-999a-90b7512edd95',0,20,1,'1e065add-1226-4a1a-bfc1-1e53a41f4483',NULL),('02cd328f-1e3f-44bb-b618-947042bc9517',NULL,NULL,'org2','b164e91e-36bc-4c16-9d6c-5b5625ea44fa',1,20,1,'51e0459f-9553-4687-8f4c-01ad3614a03c',NULL),('03ddb6d4-5e14-43de-8d28-f404f3fc02d9',NULL,'registration-password-action','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','09bc1152-dedf-4875-b93f-b6f68069679d',0,50,0,NULL,NULL),('042f0e1a-a884-4bc7-8723-a4a530057999',NULL,'idp-review-profile','org1','8335dad2-923a-4502-ac41-726e48b0b35f',0,10,0,NULL,'7388de24-9a1b-41f9-8342-d4746762efd0'),('045b741c-8106-4c7f-b339-68a35a17eeec',NULL,'reset-password','org1','58c15e28-87c4-4f9a-afcd-bb3d46e4df39',0,30,0,NULL,NULL),('04a290c9-8a8a-4a6f-8597-33f0ed9d637a',NULL,NULL,'org2','b882e40c-f801-4313-a6c6-e593f907cde7',2,30,1,'e3fce011-150b-4e50-a482-6e917a3a69f7',NULL),('055e9209-ea24-4863-8638-fa6258ffb43e',NULL,'reset-otp','org3','63e4278c-4482-43dc-826a-dbda93e95e58',0,20,0,NULL,NULL),('05add77d-3891-410a-af33-04d10c9ebe37',NULL,'reset-credential-email','org5','b80040c1-c597-4bb9-a406-906a219ce31c',0,20,0,NULL,NULL),('05c18f12-acf8-470a-93f3-f7a62bb8f1d2',NULL,'reset-otp','org5','e1fe3e18-4109-4705-aeb9-ac4d491ce174',0,20,0,NULL,NULL),('05e45653-a23a-40cc-94eb-24fc01785d46',NULL,'auth-otp-form','org5','e6bce1f5-76a1-4a1b-8f92-3a4cb360d4a6',0,20,0,NULL,NULL),('0697ebef-955c-4a3f-8944-0e58bba4164c',NULL,'conditional-user-configured','org5','e6bce1f5-76a1-4a1b-8f92-3a4cb360d4a6',0,10,0,NULL,NULL),('06a42494-6d60-4b25-b2e2-1367529148ef',NULL,'registration-user-creation','org4','86fbb088-7e32-44f6-be7a-2d630599d2f9',0,20,0,NULL,NULL),('0742d14c-1ec8-4015-91c6-7605a852b99c',NULL,'auth-spnego','org1','2b899840-f8e0-4fad-86e1-938ed69d92c8',3,20,0,NULL,NULL),('0afda444-1c41-491e-b652-38df691b1e7b',NULL,'idp-review-profile','org3','c703b3d3-4eaa-494a-b618-b9fbed2b96bc',0,10,0,NULL,'8a38524f-bc7a-4af5-9625-838e1bbc8c82'),('0b797716-29b6-4e1e-ad1b-17e11a754478',NULL,NULL,'org1','9d57c2cc-c136-4fd9-a6b8-78d750ba1f59',1,20,1,'a317db0c-a606-420c-afc8-dfd6c1dd30ed',NULL),('0e01202e-20bf-420d-9506-68bb4f488a6a',NULL,'reset-password','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','cfdd3076-ef06-41c6-b7ba-5379660f9783',0,30,0,NULL,NULL),('1027883e-06b2-4690-a61d-8af596f93624',NULL,'idp-username-password-form','org5','5b01700d-a010-4053-9460-33f60f399c63',0,10,0,NULL,NULL),('10c4b9e4-a911-4333-8f94-6e7aa31c107e',NULL,'auth-otp-form','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e9f4700a-a1aa-4b84-8d19-91c719026f13',0,20,0,NULL,NULL),('1389d1ce-1e9a-4234-9ae9-46d8d947b442',NULL,'idp-email-verification','org4','784290f3-beef-4be1-99b1-6bd9230b5185',2,10,0,NULL,NULL),('14269257-ac09-4f42-b32e-4debbec2b9df',NULL,'auth-cookie','org2','b882e40c-f801-4313-a6c6-e593f907cde7',2,10,0,NULL,NULL),('15615224-8668-4d23-b56c-eab5a38a474b',NULL,NULL,'org3','5c040b29-8270-4422-9203-92eb84232330',2,30,1,'0440186a-1c77-4e77-9c5e-e030808335fa',NULL),('1d20f9d0-7389-4584-b13f-4f4e182005a9',NULL,'registration-terms-and-conditions','org3','e8faf535-1e5b-4cb4-9f3f-93655f8fa8dd',3,70,0,NULL,NULL),('210dd9ec-37e6-4f47-b9a7-a271b30722c1',NULL,'docker-http-basic-authenticator','org1','d34e52e8-41a1-44a3-b3fb-6f8cebd2d7ff',0,10,0,NULL,NULL),('231d8543-e79d-48ac-a8e4-fa963cde8b5d',NULL,'direct-grant-validate-otp','org2','573f80fd-6826-45c8-8cbc-e9d16bb4ddfb',0,20,0,NULL,NULL),('23663edb-4231-44c2-b0e3-1b69b47f53cf',NULL,'http-basic-authenticator','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','ebd027ed-ff92-4b97-956b-ab56bb0d9446',0,10,0,NULL,NULL),('237d3352-2d69-4592-be27-c8ad2f484c1e',NULL,'idp-create-user-if-unique','org3','b607ec6d-3ab2-41c4-8fda-1d3a79692b38',2,10,0,NULL,'e71c5058-8ade-4636-986d-fab0069c06f3'),('241e4165-15fe-4835-a13a-e2b3da0608a6',NULL,'http-basic-authenticator','org5','b92bf02a-86a6-4f70-938d-b03d4456b8e2',0,10,0,NULL,NULL),('24caf8f1-86ae-49e9-ab0a-3f6556ee57dc',NULL,NULL,'org3','30f9f78c-cb4a-4f30-91d6-fab0b5818722',0,20,1,'707aa84b-fcd4-4304-8f5c-63ead5c5186e',NULL),('25da0aa4-7cd1-4ce2-b5c6-40c327888ace',NULL,'auth-username-password-form','org5','6b6f5ff2-d4db-4b09-9152-d7bc4a4af35b',0,10,0,NULL,NULL),('2626be9b-bd92-4412-a52a-19302ebc9201',NULL,'auth-spnego','org5','b0d3b643-fb19-4d65-a982-3f2f0044bf68',3,20,0,NULL,NULL),('26449333-3ccd-4856-ac58-bfa8c478105a',NULL,'reset-credentials-choose-user','org1','58c15e28-87c4-4f9a-afcd-bb3d46e4df39',0,10,0,NULL,NULL),('28cf3d86-ab5f-427c-9fd1-a8dba05c35b0',NULL,'reset-password','org4','368e5c18-f04d-4f64-8b35-acaf708840fc',0,30,0,NULL,NULL),('28fc97a4-0dce-4928-956b-9c6ff9d3a5b1',NULL,'client-secret-jwt','org3','241fac09-70f2-4856-a7ee-694dc66133f7',2,30,0,NULL,NULL),('2925b5b8-c5a5-4ddb-bbea-904c99278c2e',NULL,'auth-otp-form','org2','e4138cbe-c0e2-42f0-9380-7a41fdcbcfa1',0,20,0,NULL,NULL),('29e2a858-a4b1-4020-9862-e4047f51689a',NULL,'auth-otp-form','org5','67a15a63-2b13-4bad-b6c2-3c582e33f90d',0,20,0,NULL,NULL),('2a117e84-b9a3-4b74-bf35-a8af501fad06',NULL,'registration-recaptcha-action','org1','3b835828-852d-4301-b0db-43921e57fc91',3,60,0,NULL,NULL),('2ab01b6d-9525-4ed2-869e-aa1a86fd206b',NULL,'auth-otp-form','org4','ecdc6eda-70f5-42f5-b37d-fb57ca92ac70',0,20,0,NULL,NULL),('2c535943-73d8-465b-a699-6ea921630180',NULL,'client-secret-jwt','org4','c7dceac9-d2c9-4dcf-94d5-fa7fed1606b9',2,30,0,NULL,NULL),('2d592490-e1eb-4769-8912-3eb88cee3c8a',NULL,NULL,'org3','c8894b85-db50-488b-9cc8-06d9db39292a',1,20,1,'e643da04-b5cc-45d5-9fb2-5eee5dfd5e31',NULL),('2e105b14-a77e-4a67-860b-4ceea02604f5',NULL,'docker-http-basic-authenticator','org3','d3b7135c-547a-4637-b9e4-45c4e58f8119',0,10,0,NULL,NULL),('2f3503f3-cd15-482f-8131-3cade4442bc2',NULL,'direct-grant-validate-password','org2','5459d9c4-01fd-472c-abb5-9e7b500b6e66',0,20,0,NULL,NULL),('300b94be-7b0e-4d1f-a939-852d457dd953',NULL,NULL,'org1','2a7247bd-221c-40bf-8c0f-0732f89791fc',1,20,1,'c16e801e-0308-4559-a741-55458c83226f',NULL),('3105fdcf-abf0-441a-ba54-b98998d7b9c0',NULL,'conditional-user-configured','org4','7787327c-c060-43b1-889a-ad8414edd643',0,10,0,NULL,NULL),('313cda6a-9e80-4424-9f2a-73f93f3e73de',NULL,'auth-otp-form','org1','c16e801e-0308-4559-a741-55458c83226f',0,20,0,NULL,NULL),('3302de2b-2c6c-4531-93f7-66b25ecb5ac7',NULL,NULL,'org5','a9289cf8-74cc-4abe-ad46-ebefe5fe2573',0,20,1,'b3f697ee-316f-4879-8450-6ac07eac72c8',NULL),('33708291-b873-4d6d-b0d8-5d95a5269a70',NULL,'direct-grant-validate-otp','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','99fd1b34-124a-44a0-87d6-bf21670c490f',0,20,0,NULL,NULL),('344753ae-287b-4036-b51a-682f1c3195c8',NULL,'idp-username-password-form','org3','c8894b85-db50-488b-9cc8-06d9db39292a',0,10,0,NULL,NULL),('357f8c34-2643-4301-a4fa-b68e69d55427',NULL,'conditional-user-configured','org2','6ca0b764-8e36-4eab-8cf9-77e29f074e80',0,10,0,NULL,NULL),('3586a660-ad8d-45be-9f44-c4972b30da7a',NULL,'reset-password','org3','cd9f8ce5-cb05-4350-a795-32ec628507e9',0,30,0,NULL,NULL),('35ab871c-b891-4aed-a99e-b040bdaf64df',NULL,'idp-confirm-link','org5','a9289cf8-74cc-4abe-ad46-ebefe5fe2573',0,10,0,NULL,NULL),('35f934fd-ec77-4564-b304-67f9d6f9ceaa',NULL,NULL,'org4','784290f3-beef-4be1-99b1-6bd9230b5185',2,20,1,'7ea15b91-70fe-4b97-8f12-7aa693b7f720',NULL),('37260b66-c1a0-426c-b15e-5dfab2d25946',NULL,'auth-cookie','org5','b0d3b643-fb19-4d65-a982-3f2f0044bf68',2,10,0,NULL,NULL),('3829425c-ed6c-4729-9f76-ed3c45df11c0',NULL,NULL,'org1','ded24d13-341f-4641-af52-3372ff0ff507',2,20,1,'2a7247bd-221c-40bf-8c0f-0732f89791fc',NULL),('39480974-3e88-4260-83a8-752ea5f7e638',NULL,'registration-user-creation','org2','3197f3ab-0c32-418a-aaff-69769c6f9db4',0,20,0,NULL,NULL),('396fa08d-48eb-40fe-a1bf-5e15ad9c3515',NULL,'registration-page-form','org3','3dc96bf4-f9ff-4256-9458-adfb9ec363ef',0,10,1,'e8faf535-1e5b-4cb4-9f3f-93655f8fa8dd',NULL),('3bb279f7-40bf-41df-b9c1-6c507ee04e02',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','1498f023-8ffb-41a6-8a5b-9f767301d032',0,20,1,'eb6bb502-1785-4aa6-b933-6c6b29c6f16f',NULL),('3c3ed74a-bbf5-4ae6-8827-7fd997989512',NULL,NULL,'org3','c703b3d3-4eaa-494a-b618-b9fbed2b96bc',0,20,1,'b607ec6d-3ab2-41c4-8fda-1d3a79692b38',NULL),('3c5b411e-7931-473a-9df9-9c9d576d6c2d',NULL,'reset-password','org5','b80040c1-c597-4bb9-a406-906a219ce31c',0,30,0,NULL,NULL),('3cc4b49e-9c1e-4e42-81c0-0bc3f94d1282',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','eb6bb502-1785-4aa6-b933-6c6b29c6f16f',2,20,1,'fb586d59-0e80-45e9-a50a-44d03a4367da',NULL),('3ce982dc-f6dc-4893-8656-d3281968254d',NULL,NULL,'org3','0440186a-1c77-4e77-9c5e-e030808335fa',1,20,1,'9bc19559-0381-4110-aafa-4d2544e16049',NULL),('3dc0f187-2036-40d6-8f1b-e350a8c2dd82',NULL,'direct-grant-validate-otp','org3','8fb1b8b4-10f4-4d5b-a04f-5ad146ac0d17',0,20,0,NULL,NULL),('3e09d077-f169-414c-aa63-3b5633d2b751',NULL,'reset-credential-email','org2','fbf6400e-842f-4208-b904-8afb499aa854',0,20,0,NULL,NULL),('41820298-7e6c-4aee-88a4-f4d2e4186426',NULL,'idp-confirm-link','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','fb586d59-0e80-45e9-a50a-44d03a4367da',0,10,0,NULL,NULL),('438945a2-2072-40e0-9e78-510ccf27899e',NULL,'conditional-user-configured','org2','573f80fd-6826-45c8-8cbc-e9d16bb4ddfb',0,10,0,NULL,NULL),('45c5e2dd-5b75-46a0-bc8b-bc27895ac6ba',NULL,'reset-otp','org1','ff4590b4-b06b-4cf0-b604-ccf258539406',0,20,0,NULL,NULL),('461e9d50-6365-4dda-8fbb-4e33a7912595',NULL,NULL,'org3','cd9f8ce5-cb05-4350-a795-32ec628507e9',1,40,1,'63e4278c-4482-43dc-826a-dbda93e95e58',NULL),('46d32d4f-a4f5-419a-aa9f-d49046f71b5d',NULL,'identity-provider-redirector','org2','b882e40c-f801-4313-a6c6-e593f907cde7',2,25,0,NULL,NULL),('470125ef-40ab-4365-8d1f-fa1049453cc5',NULL,'idp-username-password-form','org2','b164e91e-36bc-4c16-9d6c-5b5625ea44fa',0,10,0,NULL,NULL),('47415528-a914-47a7-850b-f6a1fa9f5a93',NULL,'idp-confirm-link','org2','8bb1cb44-04c4-46de-9128-db9de867e685',0,10,0,NULL,NULL),('4782400c-2cad-4774-ba9a-1cf469ba05ac',NULL,'auth-cookie','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','290c0dcb-9cd6-4578-81d2-b7e2e7d86d06',2,10,0,NULL,NULL),('4873b7f7-fc6a-4d47-b9d8-e6a76127d695',NULL,'reset-otp','org4','6b99787f-642f-4e70-8b6c-9ace20c718a4',0,20,0,NULL,NULL),('49a7aa40-d71f-4ea7-b68e-19fb0aabcfe9',NULL,'idp-review-profile','org4','c19cb37d-e3d9-4f00-9c53-3ce84374a0ff',0,10,0,NULL,'433b1bd2-c1ff-43db-83c1-44a561324c5b'),('49f09a4b-ad9e-4d9f-95a6-2878c779bfe4',NULL,'client-x509','org1','afdf4ad5-5afc-4e6f-8cff-3eccf9f5ec95',2,40,0,NULL,NULL),('4a068db2-bb7a-40b9-9010-a3221849f304',NULL,'client-x509','org3','241fac09-70f2-4856-a7ee-694dc66133f7',2,40,0,NULL,NULL),('4b8cfdc5-6417-4f71-953f-234601c8f58c',NULL,'registration-password-action','org2','3197f3ab-0c32-418a-aaff-69769c6f9db4',0,50,0,NULL,NULL),('4bde9371-5ea0-4b6d-9727-5f0f16416e2b',NULL,'registration-page-form','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','7d3bec3e-bd75-48a2-b5f4-5cd9f01f57be',0,10,1,'09bc1152-dedf-4875-b93f-b6f68069679d',NULL),('4c533b5f-2774-4a80-8f19-974de7dc8d23',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','fb586d59-0e80-45e9-a50a-44d03a4367da',0,20,1,'e8537596-e30d-4233-8484-7b095f7f26b2',NULL),('4cdc1575-188e-4ebe-8114-21e72486e62f',NULL,'docker-http-basic-authenticator','org5','62f43509-df4a-4e3a-b57c-ac3ee28c591b',0,10,0,NULL,NULL),('4e5a8053-ce9b-41cf-9e30-e49c97f76f52',NULL,'auth-otp-form','org2','51e0459f-9553-4687-8f4c-01ad3614a03c',0,20,0,NULL,NULL),('4ec5784b-1979-422c-82b8-dba3cf98c3d0',NULL,'registration-page-form','org5','e2eb95db-0165-4be2-8b11-9516e4fc680d',0,10,1,'fb084e4b-c3fe-4e9f-add5-66b526453022',NULL),('4ef1e34c-cab8-43c3-8329-9545e7bb6172',NULL,'conditional-user-configured','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','43473912-4531-4b0a-ba41-f42f70160d7f',0,10,0,NULL,NULL),('500f59fd-7ec4-4f33-8495-167e57aa8a9d',NULL,'reset-credentials-choose-user','org5','b80040c1-c597-4bb9-a406-906a219ce31c',0,10,0,NULL,NULL),('50640298-79de-471f-805c-dd396dcceec6',NULL,'idp-email-verification','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e8537596-e30d-4233-8484-7b095f7f26b2',2,10,0,NULL,NULL),('50dd00b4-6f30-4807-bcae-8afefdcadf3e',NULL,'client-jwt','org2','c99cca6f-1738-453d-b4bd-afb0f3f2c9b1',2,20,0,NULL,NULL),('5284c6a5-0fb9-4702-bb66-78eeb63ee856',NULL,'reset-credentials-choose-user','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','cfdd3076-ef06-41c6-b7ba-5379660f9783',0,10,0,NULL,NULL),('533443ca-7600-429a-b49e-7541cf295e7b',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','cfdd3076-ef06-41c6-b7ba-5379660f9783',1,40,1,'b3557e5c-7169-45fe-8faf-49067e322347',NULL),('53c17763-7aaf-4354-adeb-f3b6ac86e68c',NULL,NULL,'org5','b80040c1-c597-4bb9-a406-906a219ce31c',1,40,1,'e1fe3e18-4109-4705-aeb9-ac4d491ce174',NULL),('53fe02db-fb25-4dd1-af07-a7362d8aeb5e',NULL,'docker-http-basic-authenticator','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','234eb752-0dab-4822-836d-dcf0e0dfd965',0,10,0,NULL,NULL),('56df8323-0217-48ca-97d9-8e1f1c24eef2',NULL,'registration-recaptcha-action','org5','fb084e4b-c3fe-4e9f-add5-66b526453022',3,60,0,NULL,NULL),('57627ec9-d6af-4ed1-8f77-2bd17ac86c76',NULL,'idp-review-profile','org2','4e6c039d-f0b6-4e3f-a0ff-def2767ada48',0,10,0,NULL,'0733b51b-2fac-4449-8b60-456e8552344b'),('58eb26a0-e52c-4231-a302-c3a9d94bada3',NULL,'client-secret','org5','753d53b7-b0d1-47ae-8d52-4ece908306d1',2,10,0,NULL,NULL),('5929e76b-0367-4a01-969d-07ffa2ae2e4a',NULL,NULL,'org1','5bcdddb6-18e0-4a48-8c9d-111fe3f33fdb',0,20,1,'ded24d13-341f-4641-af52-3372ff0ff507',NULL),('597f796f-5eea-472d-bfdf-c619eb814dd0',NULL,'direct-grant-validate-username','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d1846e70-bb4e-471b-a5c3-20be16b6f21a',0,10,0,NULL,NULL),('59e52d9f-a6b7-4769-b9e6-2aea4d07e14c',NULL,'auth-otp-form','org3','e643da04-b5cc-45d5-9fb2-5eee5dfd5e31',0,20,0,NULL,NULL),('5a59fbe4-9497-4343-8641-575c0cffd5fe',NULL,NULL,'org3','707aa84b-fcd4-4304-8f5c-63ead5c5186e',2,20,1,'c8894b85-db50-488b-9cc8-06d9db39292a',NULL),('5b207f03-d369-4838-b264-1d08e3454efd',NULL,'client-x509','org5','753d53b7-b0d1-47ae-8d52-4ece908306d1',2,40,0,NULL,NULL),('5c13ec41-7976-4972-80ce-00c0a5fd4d89',NULL,NULL,'org5','b0d3b643-fb19-4d65-a982-3f2f0044bf68',2,30,1,'6b6f5ff2-d4db-4b09-9152-d7bc4a4af35b',NULL),('5c8b7136-4c5b-4433-ba1a-e2e7404e71c5',NULL,'reset-credential-email','org4','368e5c18-f04d-4f64-8b35-acaf708840fc',0,20,0,NULL,NULL),('5cf47bed-ea98-4189-bb90-c3a7d3397954',NULL,NULL,'org2','fbf6400e-842f-4208-b904-8afb499aa854',1,40,1,'6ca0b764-8e36-4eab-8cf9-77e29f074e80',NULL),('5e267b7d-4631-4d9b-9063-3a664913d048',NULL,'reset-credential-email','org1','58c15e28-87c4-4f9a-afcd-bb3d46e4df39',0,20,0,NULL,NULL),('5e41315f-90ad-4a37-9f94-d2b98bd7ddf9',NULL,'auth-spnego','org3','5c040b29-8270-4422-9203-92eb84232330',3,20,0,NULL,NULL),('5f9aed41-09cc-4b79-81dd-3a7dc668e3a6',NULL,'auth-cookie','org4','b3024647-64ea-47a1-8637-e3045cea6d82',2,10,0,NULL,NULL),('60f5190d-9d83-45a7-ae4e-f192176178e8',NULL,'registration-user-creation','org3','e8faf535-1e5b-4cb4-9f3f-93655f8fa8dd',0,20,0,NULL,NULL),('62b7a421-fce1-472f-a85f-1000eb8814da',NULL,'idp-confirm-link','org3','30f9f78c-cb4a-4f30-91d6-fab0b5818722',0,10,0,NULL,NULL),('63f113c4-16aa-480b-9208-6fe895aa273e',NULL,NULL,'org1','8335dad2-923a-4502-ac41-726e48b0b35f',0,20,1,'35db4107-76d3-459f-b3a9-1bf9bbd54225',NULL),('650fb3c2-e58a-41e2-a575-8c4f03296dda',NULL,NULL,'org2','8bb1cb44-04c4-46de-9128-db9de867e685',0,20,1,'8f5501dc-8e8b-456e-9510-27bb7a519625',NULL),('6548718c-9b49-4ab3-858d-b1d5efaf78b6',NULL,'client-x509','org4','c7dceac9-d2c9-4dcf-94d5-fa7fed1606b9',2,40,0,NULL,NULL),('66749c2f-beb0-42d4-a711-6d54b2be17e1',NULL,'idp-create-user-if-unique','org4','3a80c3da-26f9-4933-9e04-865a9f539205',2,10,0,NULL,'dbbb3c01-0565-4afd-8c73-d2039f78172f'),('668e8f5c-8c71-4f5d-b275-01f12976cb35',NULL,'idp-username-password-form','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e4aaa1c1-5c80-4bd2-bb4c-888f2df92a83',0,10,0,NULL,NULL),('670b55f9-4afb-41ca-9d34-56f61058d731',NULL,'direct-grant-validate-password','org1','0f81a5bf-c78a-453d-92a2-359752bde9cb',0,20,0,NULL,NULL),('69896d8a-7f46-4d7d-8055-c0dade6590a0',NULL,NULL,'org3','14c4146d-b41e-4274-9c77-a288617b3476',1,30,1,'8fb1b8b4-10f4-4d5b-a04f-5ad146ac0d17',NULL),('6c8f4b55-c144-4232-beb2-e9b6f34343fd',NULL,'auth-username-password-form','org1','9d57c2cc-c136-4fd9-a6b8-78d750ba1f59',0,10,0,NULL,NULL),('6d8ca7c7-be19-49c5-a892-69f1ce5ac8ca',NULL,'registration-recaptcha-action','org4','86fbb088-7e32-44f6-be7a-2d630599d2f9',3,60,0,NULL,NULL),('6edacf0a-f5ae-4ffd-a4d3-0e4cac7a7756',NULL,'direct-grant-validate-username','org5','ad030701-fd41-4747-9ee8-9f4b69ea2e0d',0,10,0,NULL,NULL),('6ee135bc-34d4-4c9b-9278-7779ef29724d',NULL,'auth-username-password-form','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','637da008-ae2f-4680-b14e-9fd0bdc46f2a',0,10,0,NULL,NULL),('70251645-839d-4dde-89e5-b7c845bc5796',NULL,'registration-terms-and-conditions','org4','86fbb088-7e32-44f6-be7a-2d630599d2f9',3,70,0,NULL,NULL),('722b0b2f-a202-4d4e-ac5d-d71a95d0621e',NULL,'direct-grant-validate-otp','org1','e29aec29-1b38-4d23-8f76-6568a8674a3b',0,20,0,NULL,NULL),('74cd0d33-3e60-4ea9-969a-176871b161df',NULL,'registration-user-creation','org1','3b835828-852d-4301-b0db-43921e57fc91',0,20,0,NULL,NULL),('75055fa0-a72f-4a98-b8f7-4c7690b5adc5',NULL,'idp-username-password-form','org4','7ea15b91-70fe-4b97-8f12-7aa693b7f720',0,10,0,NULL,NULL),('7508374c-ca4c-4035-ad3c-8e0ecec76c65',NULL,'idp-email-verification','org3','707aa84b-fcd4-4304-8f5c-63ead5c5186e',2,10,0,NULL,NULL),('75d5adee-67e3-4c94-bf82-0a1c2c3f0119',NULL,'client-jwt','org5','753d53b7-b0d1-47ae-8d52-4ece908306d1',2,20,0,NULL,NULL),('76b176b9-b862-43a6-a9b1-90fbfb32e658',NULL,'registration-terms-and-conditions','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','09bc1152-dedf-4875-b93f-b6f68069679d',3,70,0,NULL,NULL),('76d59c18-f2a4-48c9-8351-b4be8e494562',NULL,'http-basic-authenticator','org4','55fabd44-68c6-4fd7-9d58-1edca1e2f78e',0,10,0,NULL,NULL),('770faab1-2e95-463c-b6cf-2173ac4f77f3',NULL,'client-x509','org2','c99cca6f-1738-453d-b4bd-afb0f3f2c9b1',2,40,0,NULL,NULL),('78f4ac83-b8cc-43bf-9cb1-c23ec0009045',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','290c0dcb-9cd6-4578-81d2-b7e2e7d86d06',2,30,1,'637da008-ae2f-4680-b14e-9fd0bdc46f2a',NULL),('7a193bfa-f66d-46c2-837c-5b61d0b75393',NULL,NULL,'org2','4e6c039d-f0b6-4e3f-a0ff-def2767ada48',0,20,1,'6a0c79d1-2405-4a42-bc5f-4474cc511440',NULL),('7a946fe9-59cc-44f5-9d8d-613f64d0bf05',NULL,'registration-terms-and-conditions','org1','3b835828-852d-4301-b0db-43921e57fc91',3,70,0,NULL,NULL),('7d0470e4-0797-42e1-8247-d216705e7a9e',NULL,'identity-provider-redirector','org5','b0d3b643-fb19-4d65-a982-3f2f0044bf68',2,25,0,NULL,NULL),('7e5efe94-d3dc-441d-bd27-be09a6d48fcd',NULL,'auth-spnego','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','290c0dcb-9cd6-4578-81d2-b7e2e7d86d06',3,20,0,NULL,NULL),('7eb4a0f8-f651-42ac-8a2f-71b3de0b38b7',NULL,'client-secret-jwt','org2','c99cca6f-1738-453d-b4bd-afb0f3f2c9b1',2,30,0,NULL,NULL),('824ac6da-f595-4d7b-a6ab-b27f4555b270',NULL,NULL,'org4','c19cb37d-e3d9-4f00-9c53-3ce84374a0ff',0,20,1,'3a80c3da-26f9-4933-9e04-865a9f539205',NULL),('827a9ce3-6b2d-4f33-97df-83e78390257d',NULL,'identity-provider-redirector','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','290c0dcb-9cd6-4578-81d2-b7e2e7d86d06',2,25,0,NULL,NULL),('839dfaeb-3f42-4f31-8441-b7424deb0f39',NULL,'identity-provider-redirector','org4','b3024647-64ea-47a1-8637-e3045cea6d82',2,25,0,NULL,NULL),('86a96ddb-44f5-4fec-ad78-886ea814b0fc',NULL,'direct-grant-validate-password','org3','14c4146d-b41e-4274-9c77-a288617b3476',0,20,0,NULL,NULL),('88973fbd-d6e8-40da-833a-e7caf1d6f99f',NULL,'auth-spnego','org2','b882e40c-f801-4313-a6c6-e593f907cde7',3,20,0,NULL,NULL),('88f4216d-02c5-4164-8331-bf6bc13c0b0a',NULL,'direct-grant-validate-password','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d1846e70-bb4e-471b-a5c3-20be16b6f21a',0,20,0,NULL,NULL),('89941764-3262-4c96-a43d-edb7854ff582',NULL,'client-jwt','org1','afdf4ad5-5afc-4e6f-8cff-3eccf9f5ec95',2,20,0,NULL,NULL),('8a34aa3f-3a51-4a90-9b8f-015fbd592358',NULL,'idp-email-verification','org2','8f5501dc-8e8b-456e-9510-27bb7a519625',2,10,0,NULL,NULL),('8aac12ff-2917-441c-b6db-55678d743ced',NULL,NULL,'org5','5b01700d-a010-4053-9460-33f60f399c63',1,20,1,'67a15a63-2b13-4bad-b6c2-3c582e33f90d',NULL),('8c4fb69f-292b-4a60-b2b6-8d6a70c84d73',NULL,'auth-otp-form','org3','9bc19559-0381-4110-aafa-4d2544e16049',0,20,0,NULL,NULL),('8e3a33e5-f84f-44d2-a5ce-ce4c373a47da',NULL,'registration-password-action','org5','fb084e4b-c3fe-4e9f-add5-66b526453022',0,50,0,NULL,NULL),('8fe70840-ed70-427e-921e-865d6d6b63ed',NULL,'auth-otp-form','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','43473912-4531-4b0a-ba41-f42f70160d7f',0,20,0,NULL,NULL),('91c6c5e7-11bc-4c93-9818-56ff1f3293da',NULL,'client-jwt','org3','241fac09-70f2-4856-a7ee-694dc66133f7',2,20,0,NULL,NULL),('92fa78c0-375f-48d7-9723-efb4182a2ea3',NULL,'direct-grant-validate-password','org5','ad030701-fd41-4747-9ee8-9f4b69ea2e0d',0,20,0,NULL,NULL),('94d4a813-5083-42ac-a2a8-2b7dbdd3960f',NULL,'registration-recaptcha-action','org2','3197f3ab-0c32-418a-aaff-69769c6f9db4',3,60,0,NULL,NULL),('955e9384-7938-45f7-8f45-f3922dc754e5',NULL,'conditional-user-configured','org5','4b96a929-c183-471b-a3e0-5862a7511d4a',0,10,0,NULL,NULL),('96211944-6955-4f07-879f-ae5dde050d0d',NULL,'client-secret-jwt','org5','753d53b7-b0d1-47ae-8d52-4ece908306d1',2,30,0,NULL,NULL),('9945e925-ac68-4a3c-94ac-59d909b5dc11',NULL,'client-secret','org1','afdf4ad5-5afc-4e6f-8cff-3eccf9f5ec95',2,10,0,NULL,NULL),('9b190c09-d43f-4131-a746-2acc8f31a17a',NULL,NULL,'org1','2b899840-f8e0-4fad-86e1-938ed69d92c8',2,30,1,'9d57c2cc-c136-4fd9-a6b8-78d750ba1f59',NULL),('9cb88e55-6ea6-4294-9930-509877f8705b',NULL,'client-jwt','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','f8265572-ed40-4401-9f6b-e589713578e2',2,20,0,NULL,NULL),('9d4832ea-bfff-4ecb-b9ba-e804f21d310c',NULL,'registration-user-creation','org5','fb084e4b-c3fe-4e9f-add5-66b526453022',0,20,0,NULL,NULL),('a03fb2fb-44f0-495f-8739-8243c79fd602',NULL,'client-secret-jwt','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','f8265572-ed40-4401-9f6b-e589713578e2',2,30,0,NULL,NULL),('a097d3c7-831c-437a-9746-cedec1616999',NULL,NULL,'org4','7ea15b91-70fe-4b97-8f12-7aa693b7f720',1,20,1,'efeb0290-60b8-4848-bfb3-dc21fc754116',NULL),('a18834b7-9b35-41da-9c1c-03c8c93d20a0',NULL,'conditional-user-configured','org1','c16e801e-0308-4559-a741-55458c83226f',0,10,0,NULL,NULL),('a1aee633-7774-47b5-9486-832033784422',NULL,'reset-otp','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','b3557e5c-7169-45fe-8faf-49067e322347',0,20,0,NULL,NULL),('a2d4a024-4e5e-496a-b766-2981c30e9baa',NULL,NULL,'org1','35db4107-76d3-459f-b3a9-1bf9bbd54225',2,20,1,'5bcdddb6-18e0-4a48-8c9d-111fe3f33fdb',NULL),('a3c97d35-c02e-435e-874c-0bd4b709c4f1',NULL,NULL,'org5','b3f697ee-316f-4879-8450-6ac07eac72c8',2,20,1,'5b01700d-a010-4053-9460-33f60f399c63',NULL),('a5ebcf4b-e2ad-49a9-becc-75016f867adf',NULL,'auth-username-password-form','org3','0440186a-1c77-4e77-9c5e-e030808335fa',0,10,0,NULL,NULL),('a67ff569-aeee-4ba6-a5a1-8dc01edbb466',NULL,'conditional-user-configured','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','b3557e5c-7169-45fe-8faf-49067e322347',0,10,0,NULL,NULL),('a79705f0-7236-4c1f-9bcb-430b6a4c8cfa',NULL,'client-secret','org4','c7dceac9-d2c9-4dcf-94d5-fa7fed1606b9',2,10,0,NULL,NULL),('a7aee4d7-a149-46f3-aec4-91538dbdae35',NULL,'direct-grant-validate-password','org4','aeda06f0-a2cf-467e-86c6-d7212a60ccde',0,20,0,NULL,NULL),('a7f2643b-18df-4583-b45b-bc4daa236e69',NULL,'conditional-user-configured','org4','6b99787f-642f-4e70-8b6c-9ace20c718a4',0,10,0,NULL,NULL),('a7f90d93-8df6-48bf-b446-e3e63c923e4d',NULL,'http-basic-authenticator','org3','79ca2130-a720-4706-8ec4-07705816a3e5',0,10,0,NULL,NULL),('a8d14029-1fac-4a02-bcea-4d242b92ebbb',NULL,'client-secret-jwt','org1','afdf4ad5-5afc-4e6f-8cff-3eccf9f5ec95',2,30,0,NULL,NULL),('a96cd692-7618-4226-8466-26883ca1e4e0',NULL,'registration-password-action','org4','86fbb088-7e32-44f6-be7a-2d630599d2f9',0,50,0,NULL,NULL),('a9754626-582b-4752-a1cf-dbcddc76daf5',NULL,'idp-email-verification','org1','ded24d13-341f-4641-af52-3372ff0ff507',2,10,0,NULL,NULL),('a9e4ea64-5c6e-4ea1-9f46-9c03c6998c0f',NULL,'idp-create-user-if-unique','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','eb6bb502-1785-4aa6-b933-6c6b29c6f16f',2,10,0,NULL,'b127275d-3db2-4051-a693-0266c1aadb92'),('abb3cdcf-beb2-488f-937c-a88b375d7c6f',NULL,NULL,'org5','1e065add-1226-4a1a-bfc1-1e53a41f4483',2,20,1,'a9289cf8-74cc-4abe-ad46-ebefe5fe2573',NULL),('acc32265-7e57-4c2d-bb02-3f32f45ef899',NULL,NULL,'org5','ad030701-fd41-4747-9ee8-9f4b69ea2e0d',1,30,1,'4b96a929-c183-471b-a3e0-5862a7511d4a',NULL),('aebfbc2c-eca8-4a79-adcc-582d227b5bb1',NULL,'identity-provider-redirector','org1','2b899840-f8e0-4fad-86e1-938ed69d92c8',2,25,0,NULL,NULL),('aed8b5a0-a195-4d87-8d12-fe3ddd75b24f',NULL,'conditional-user-configured','org1','ff4590b4-b06b-4cf0-b604-ccf258539406',0,10,0,NULL,NULL),('b01a5085-f5e0-4af1-b1c7-9313ef245f56',NULL,'conditional-user-configured','org3','e643da04-b5cc-45d5-9fb2-5eee5dfd5e31',0,10,0,NULL,NULL),('b03158c5-ed0d-49cb-9839-f19dac1a2e78',NULL,'idp-create-user-if-unique','org2','6a0c79d1-2405-4a42-bc5f-4474cc511440',2,10,0,NULL,'d0c8d548-346d-4abe-9ea7-9fbd8f2a6bb6'),('b119b389-f4cd-43e5-afe4-96ef163ada2b',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e4aaa1c1-5c80-4bd2-bb4c-888f2df92a83',1,20,1,'e9f4700a-a1aa-4b84-8d19-91c719026f13',NULL),('b121ad3f-2269-4115-91d9-21b92e8e1552',NULL,'direct-grant-validate-username','org1','0f81a5bf-c78a-453d-92a2-359752bde9cb',0,10,0,NULL,NULL),('b163aa85-7d8d-4bbb-9d31-06caddcf7f28',NULL,'conditional-user-configured','org3','8fb1b8b4-10f4-4d5b-a04f-5ad146ac0d17',0,10,0,NULL,NULL),('b3dbe1e9-efd7-486c-a3de-0cf7fe25705b',NULL,NULL,'org2','6a0c79d1-2405-4a42-bc5f-4474cc511440',2,20,1,'8bb1cb44-04c4-46de-9128-db9de867e685',NULL),('b3eeb360-145b-4d39-a980-8e1083b31182',NULL,'auth-otp-form','org4','efeb0290-60b8-4848-bfb3-dc21fc754116',0,20,0,NULL,NULL),('b4467e2b-3df6-4012-bc9c-cab08e90c997',NULL,'client-secret','org3','241fac09-70f2-4856-a7ee-694dc66133f7',2,10,0,NULL,NULL),('b538ddd4-b54a-4770-a103-d43e334b502d',NULL,'registration-page-form','org4','a6081319-d165-4159-a121-a081fb45cb11',0,10,1,'86fbb088-7e32-44f6-be7a-2d630599d2f9',NULL),('b5a4271d-66d1-4109-a932-e321525e9597',NULL,NULL,'org3','b607ec6d-3ab2-41c4-8fda-1d3a79692b38',2,20,1,'30f9f78c-cb4a-4f30-91d6-fab0b5818722',NULL),('b6b20589-ed8c-4037-bd46-f7f79d6597c5',NULL,NULL,'org4','aeda06f0-a2cf-467e-86c6-d7212a60ccde',1,30,1,'7787327c-c060-43b1-889a-ad8414edd643',NULL),('b79c08a3-5d7b-4efb-9d2b-bbd03dba4f31',NULL,'http-basic-authenticator','org1','6db2dd7f-bc45-4fa4-a5d0-186b03271641',0,10,0,NULL,NULL),('b7b68f01-a3fd-4c6c-8bbf-f8e0b8b994f1',NULL,'auth-otp-form','org1','a317db0c-a606-420c-afc8-dfd6c1dd30ed',0,20,0,NULL,NULL),('bb0fecb6-10b0-43fa-8a08-3b97ff31312b',NULL,'registration-terms-and-conditions','org5','fb084e4b-c3fe-4e9f-add5-66b526453022',3,70,0,NULL,NULL),('bb5ec4b1-eda2-4e9c-9c9f-fbc73d9330f3',NULL,'registration-recaptcha-action','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','09bc1152-dedf-4875-b93f-b6f68069679d',3,60,0,NULL,NULL),('bc6ab25f-fd10-4d61-a7ed-0fef879b507f',NULL,'conditional-user-configured','org5','e1fe3e18-4109-4705-aeb9-ac4d491ce174',0,10,0,NULL,NULL),('be252ef6-110f-459c-9173-dec1a1349604',NULL,'idp-confirm-link','org1','5bcdddb6-18e0-4a48-8c9d-111fe3f33fdb',0,10,0,NULL,NULL),('be2a0e5e-4e4c-4f43-be86-e6a4c4987b7d',NULL,'reset-otp','org2','6ca0b764-8e36-4eab-8cf9-77e29f074e80',0,20,0,NULL,NULL),('be880a1f-07b6-4672-b4a7-a4265887993b',NULL,'reset-credentials-choose-user','org2','fbf6400e-842f-4208-b904-8afb499aa854',0,10,0,NULL,NULL),('bf174f1e-73e7-4ade-8eee-de783c0d9f74',NULL,'reset-credentials-choose-user','org3','cd9f8ce5-cb05-4350-a795-32ec628507e9',0,10,0,NULL,NULL),('bf416909-9acb-4f93-b940-bb287ea0f342',NULL,'idp-email-verification','org5','b3f697ee-316f-4879-8450-6ac07eac72c8',2,10,0,NULL,NULL),('c1806ae5-307d-4d62-a206-65045218ec55',NULL,'conditional-user-configured','org1','e29aec29-1b38-4d23-8f76-6568a8674a3b',0,10,0,NULL,NULL),('c320b365-6a3d-4b45-8925-17ab63be5cfa',NULL,NULL,'org2','5459d9c4-01fd-472c-abb5-9e7b500b6e66',1,30,1,'573f80fd-6826-45c8-8cbc-e9d16bb4ddfb',NULL),('c4f3951c-f67b-4757-8744-7bb86617606d',NULL,'idp-username-password-form','org1','2a7247bd-221c-40bf-8c0f-0732f89791fc',0,10,0,NULL,NULL),('c738a6f5-7139-4143-a7b7-ca529a25144d',NULL,'reset-credentials-choose-user','org4','368e5c18-f04d-4f64-8b35-acaf708840fc',0,10,0,NULL,NULL),('c8663eb6-fd4a-45b2-8aed-f55cd2c3f285',NULL,NULL,'org4','b3024647-64ea-47a1-8637-e3045cea6d82',2,30,1,'3156b724-4b46-4c5f-b1c8-965e2baebc97',NULL),('ca488971-6373-4c6a-8025-ce3f9e11d935',NULL,'registration-recaptcha-action','org3','e8faf535-1e5b-4cb4-9f3f-93655f8fa8dd',3,60,0,NULL,NULL),('cb55a68c-7417-4d3f-b891-1547b773d046',NULL,'reset-password','org2','fbf6400e-842f-4208-b904-8afb499aa854',0,30,0,NULL,NULL),('cc2b0199-db45-43d9-8e83-006e2cbec866',NULL,'conditional-user-configured','org1','a317db0c-a606-420c-afc8-dfd6c1dd30ed',0,10,0,NULL,NULL),('cc521ace-66e3-4d42-b657-78d38d7f8820',NULL,'registration-terms-and-conditions','org2','3197f3ab-0c32-418a-aaff-69769c6f9db4',3,70,0,NULL,NULL),('ccbe4209-23b9-458b-bd17-7707fef488b5',NULL,'conditional-user-configured','org3','63e4278c-4482-43dc-826a-dbda93e95e58',0,10,0,NULL,NULL),('cd73767a-6a31-4f50-a5c3-78b2d23d6b71',NULL,'direct-grant-validate-username','org2','5459d9c4-01fd-472c-abb5-9e7b500b6e66',0,10,0,NULL,NULL),('cdc21e90-972a-4f2d-bde8-b6aa0214fab0',NULL,'docker-http-basic-authenticator','org2','aa216b23-5db4-4509-8aae-c42daba9a59c',0,10,0,NULL,NULL),('d1b704ff-e01d-49f2-9d00-9d42449dc193',NULL,'auth-cookie','org3','5c040b29-8270-4422-9203-92eb84232330',2,10,0,NULL,NULL),('d2217e5d-98cc-4f75-8e91-bfa03ff8a0c0',NULL,'direct-grant-validate-otp','org5','4b96a929-c183-471b-a3e0-5862a7511d4a',0,20,0,NULL,NULL),('d3aef7cd-e435-4524-acf4-ce03ddfc2959',NULL,'direct-grant-validate-username','org4','aeda06f0-a2cf-467e-86c6-d7212a60ccde',0,10,0,NULL,NULL),('d67ea750-3d8b-4e7f-b293-1d71190e87e0',NULL,'conditional-user-configured','org2','e4138cbe-c0e2-42f0-9380-7a41fdcbcfa1',0,10,0,NULL,NULL),('d6e51c67-28db-4fad-aaca-4b225face611',NULL,'direct-grant-validate-otp','org4','7787327c-c060-43b1-889a-ad8414edd643',0,20,0,NULL,NULL),('d848df90-cf55-4f27-a335-05866b50a80d',NULL,'auth-username-password-form','org2','e3fce011-150b-4e50-a482-6e917a3a69f7',0,10,0,NULL,NULL),('d8995213-022f-43dc-af7d-8a45144f515a',NULL,NULL,'org4','3a80c3da-26f9-4933-9e04-865a9f539205',2,20,1,'84996cdd-cd26-4403-a81d-f3367d746994',NULL),('d8cc8403-c5a0-4692-bd82-b68de344edc8',NULL,'registration-user-creation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','09bc1152-dedf-4875-b93f-b6f68069679d',0,20,0,NULL,NULL),('da56bed9-a0b1-46b2-bdc0-e8c93437cf2d',NULL,'client-jwt','org4','c7dceac9-d2c9-4dcf-94d5-fa7fed1606b9',2,20,0,NULL,NULL),('db9479e9-ab07-4544-aced-23fba13dcf36',NULL,'client-x509','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','f8265572-ed40-4401-9f6b-e589713578e2',2,40,0,NULL,NULL),('dc857824-63bd-4a8e-a93a-e86a74f2449e',NULL,'auth-spnego','org4','b3024647-64ea-47a1-8637-e3045cea6d82',3,20,0,NULL,NULL),('dc92f9a5-faa8-4984-9c4b-dd02fb032b80',NULL,'client-secret','org2','c99cca6f-1738-453d-b4bd-afb0f3f2c9b1',2,10,0,NULL,NULL),('dc9b87b4-3cbc-46d7-98c9-9a4ed5fcc5ca',NULL,'registration-password-action','org1','3b835828-852d-4301-b0db-43921e57fc91',0,50,0,NULL,NULL),('dd8609dd-5ad5-4210-a800-766324915e61',NULL,'identity-provider-redirector','org3','5c040b29-8270-4422-9203-92eb84232330',2,25,0,NULL,NULL),('def812c0-a752-4974-9797-159007ad63df',NULL,NULL,'org2','8f5501dc-8e8b-456e-9510-27bb7a519625',2,20,1,'b164e91e-36bc-4c16-9d6c-5b5625ea44fa',NULL),('df8c80f1-6e24-486d-a96e-a4857fc9d98d',NULL,NULL,'org1','58c15e28-87c4-4f9a-afcd-bb3d46e4df39',1,40,1,'ff4590b4-b06b-4cf0-b604-ccf258539406',NULL),('e10131f0-356d-4ccc-888d-20b79dae1f05',NULL,'http-basic-authenticator','org2','d73b0507-266d-4ef0-a0eb-57ba58ef7059',0,10,0,NULL,NULL),('e39afddc-641f-4599-8b8d-d107aad32246',NULL,'registration-page-form','org1','417a35e0-3704-47ad-9a3e-ffedea3fd993',0,10,1,'3b835828-852d-4301-b0db-43921e57fc91',NULL),('e4c3be82-37c2-4374-8c85-89840d996adf',NULL,'idp-review-profile','org5','f112974c-c0af-48d1-999a-90b7512edd95',0,10,0,NULL,'23c8239c-b110-4e3e-8fcb-efcbc0f82b37'),('e506962c-09b9-4617-b3d6-5da011fac967',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','637da008-ae2f-4680-b14e-9fd0bdc46f2a',1,20,1,'43473912-4531-4b0a-ba41-f42f70160d7f',NULL),('e515788d-fd88-4f62-a2f6-59cce06a8b5f',NULL,NULL,'org4','84996cdd-cd26-4403-a81d-f3367d746994',0,20,1,'784290f3-beef-4be1-99b1-6bd9230b5185',NULL),('e51df9f7-2d21-4293-b44c-c41cc1fdeaf5',NULL,'conditional-user-configured','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e9f4700a-a1aa-4b84-8d19-91c719026f13',0,10,0,NULL,NULL),('e5e5a249-9e2d-4343-82bb-6547ede55744',NULL,'conditional-user-configured','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','99fd1b34-124a-44a0-87d6-bf21670c490f',0,10,0,NULL,NULL),('e6af3242-612b-47b9-8c57-6b6b30f79fac',NULL,NULL,'org5','6b6f5ff2-d4db-4b09-9152-d7bc4a4af35b',1,20,1,'e6bce1f5-76a1-4a1b-8f92-3a4cb360d4a6',NULL),('e72db213-5667-4c44-a1cf-97b1602290e3',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e8537596-e30d-4233-8484-7b095f7f26b2',2,20,1,'e4aaa1c1-5c80-4bd2-bb4c-888f2df92a83',NULL),('e758246a-03ee-4474-bcb7-d5fc093b8a7f',NULL,'registration-password-action','org3','e8faf535-1e5b-4cb4-9f3f-93655f8fa8dd',0,50,0,NULL,NULL),('e9e17e77-28e4-4442-9cfa-88839ebca4f5',NULL,'conditional-user-configured','org4','efeb0290-60b8-4848-bfb3-dc21fc754116',0,10,0,NULL,NULL),('e9ead5c3-82d9-49b4-b52f-1edf7064763b',NULL,'direct-grant-validate-username','org3','14c4146d-b41e-4274-9c77-a288617b3476',0,10,0,NULL,NULL),('ea863647-102b-47fb-a34a-3ceb090def3d',NULL,NULL,'org4','3156b724-4b46-4c5f-b1c8-965e2baebc97',1,20,1,'ecdc6eda-70f5-42f5-b37d-fb57ca92ac70',NULL),('eacb7595-3493-4cab-87cf-4cc5e1bd0f24',NULL,'auth-cookie','org1','2b899840-f8e0-4fad-86e1-938ed69d92c8',2,10,0,NULL,NULL),('ead5b92c-8c89-497c-b4ee-591e186b6063',NULL,'client-secret','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','f8265572-ed40-4401-9f6b-e589713578e2',2,10,0,NULL,NULL),('edc40b73-9a1c-4d65-87d5-34e300f20cdd',NULL,'idp-create-user-if-unique','org5','1e065add-1226-4a1a-bfc1-1e53a41f4483',2,10,0,NULL,'18aff82d-872d-4e4c-8682-32bb09021d4c'),('edc44b6e-c302-4af9-ba73-9076162f9a0d',NULL,'idp-confirm-link','org4','84996cdd-cd26-4403-a81d-f3367d746994',0,10,0,NULL,NULL),('eeafb5c2-1a28-4ad8-bde6-b44cad8c89cc',NULL,'reset-credential-email','org3','cd9f8ce5-cb05-4350-a795-32ec628507e9',0,20,0,NULL,NULL),('ef619d5a-175a-4235-babb-106853882942',NULL,'reset-credential-email','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','cfdd3076-ef06-41c6-b7ba-5379660f9783',0,20,0,NULL,NULL),('f13b9c2d-c78b-4b28-b17f-520babb9fbb6',NULL,'conditional-user-configured','org4','ecdc6eda-70f5-42f5-b37d-fb57ca92ac70',0,10,0,NULL,NULL),('f1c767a5-5bac-4505-801f-8fc04fb4467b',NULL,'idp-create-user-if-unique','org1','35db4107-76d3-459f-b3a9-1bf9bbd54225',2,10,0,NULL,'304b2791-86fc-4a89-b945-0deae9483d43'),('f27e4760-e85f-43a5-bcde-e104481f26c7',NULL,'auth-username-password-form','org4','3156b724-4b46-4c5f-b1c8-965e2baebc97',0,10,0,NULL,NULL),('f4ceca28-e8b3-4950-83d5-a4a3fbda09e5',NULL,NULL,'org2','e3fce011-150b-4e50-a482-6e917a3a69f7',1,20,1,'e4138cbe-c0e2-42f0-9380-7a41fdcbcfa1',NULL),('f4fd3613-aa62-49e3-8ca2-e8f921ac7826',NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d1846e70-bb4e-471b-a5c3-20be16b6f21a',1,30,1,'99fd1b34-124a-44a0-87d6-bf21670c490f',NULL),('f88c9372-2d11-4f95-b66d-4a503b31a333',NULL,NULL,'org1','0f81a5bf-c78a-453d-92a2-359752bde9cb',1,30,1,'e29aec29-1b38-4d23-8f76-6568a8674a3b',NULL),('fd2f106f-cb5b-48bd-8ba6-f150173c0bb5',NULL,'conditional-user-configured','org5','67a15a63-2b13-4bad-b6c2-3c582e33f90d',0,10,0,NULL,NULL),('fdf0d535-1975-4488-ad35-eb5c8c22bf8e',NULL,'conditional-user-configured','org3','9bc19559-0381-4110-aafa-4d2544e16049',0,10,0,NULL,NULL),('ff0bc1ef-85ec-4251-bd54-acbeef711767',NULL,'docker-http-basic-authenticator','org4','77519c53-283e-4e66-9d27-22d529136fa5',0,10,0,NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` tinyint(4) NOT NULL DEFAULT 0,
  `BUILT_IN` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0440186a-1c77-4e77-9c5e-e030808335fa','forms','Username, password, otp and other auth forms.','org3','basic-flow',0,1),('09bc1152-dedf-4875-b93f-b6f68069679d','registration form','registration form','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','form-flow',0,1),('0f81a5bf-c78a-453d-92a2-359752bde9cb','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',1,1),('1498f023-8ffb-41a6-8a5b-9f767301d032','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('14c4146d-b41e-4274-9c77-a288617b3476','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',1,1),('1e065add-1226-4a1a-bfc1-1e53a41f4483','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',0,1),('234eb752-0dab-4822-836d-dcf0e0dfd965','docker auth','Used by Docker clients to authenticate against the IDP','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('241fac09-70f2-4856-a7ee-694dc66133f7','clients','Base authentication for clients','org3','client-flow',1,1),('290c0dcb-9cd6-4578-81d2-b7e2e7d86d06','browser','browser based authentication','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('2a7247bd-221c-40bf-8c0f-0732f89791fc','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',0,1),('2b899840-f8e0-4fad-86e1-938ed69d92c8','browser','browser based authentication','org1','basic-flow',1,1),('30f9f78c-cb4a-4f30-91d6-fab0b5818722','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',0,1),('3156b724-4b46-4c5f-b1c8-965e2baebc97','forms','Username, password, otp and other auth forms.','org4','basic-flow',0,1),('3197f3ab-0c32-418a-aaff-69769c6f9db4','registration form','registration form','org2','form-flow',0,1),('35db4107-76d3-459f-b3a9-1bf9bbd54225','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',0,1),('368e5c18-f04d-4f64-8b35-acaf708840fc','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',1,1),('3a80c3da-26f9-4933-9e04-865a9f539205','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',0,1),('3b835828-852d-4301-b0db-43921e57fc91','registration form','registration form','org1','form-flow',0,1),('3dc96bf4-f9ff-4256-9458-adfb9ec363ef','registration','registration flow','org3','basic-flow',1,1),('417a35e0-3704-47ad-9a3e-ffedea3fd993','registration','registration flow','org1','basic-flow',1,1),('43473912-4531-4b0a-ba41-f42f70160d7f','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('4b96a929-c183-471b-a3e0-5862a7511d4a','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('4e6c039d-f0b6-4e3f-a0ff-def2767ada48','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',1,1),('51e0459f-9553-4687-8f4c-01ad3614a03c','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('5459d9c4-01fd-472c-abb5-9e7b500b6e66','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',1,1),('55fabd44-68c6-4fd7-9d58-1edca1e2f78e','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',1,1),('573f80fd-6826-45c8-8cbc-e9d16bb4ddfb','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('58c15e28-87c4-4f9a-afcd-bb3d46e4df39','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',1,1),('5b01700d-a010-4053-9460-33f60f399c63','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',0,1),('5bcdddb6-18e0-4a48-8c9d-111fe3f33fdb','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',0,1),('5c040b29-8270-4422-9203-92eb84232330','browser','browser based authentication','org3','basic-flow',1,1),('62f43509-df4a-4e3a-b57c-ac3ee28c591b','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',1,1),('637da008-ae2f-4680-b14e-9fd0bdc46f2a','forms','Username, password, otp and other auth forms.','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('63e4278c-4482-43dc-826a-dbda93e95e58','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',0,1),('67a15a63-2b13-4bad-b6c2-3c582e33f90d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('6a0c79d1-2405-4a42-bc5f-4474cc511440','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',0,1),('6b6f5ff2-d4db-4b09-9152-d7bc4a4af35b','forms','Username, password, otp and other auth forms.','org5','basic-flow',0,1),('6b99787f-642f-4e70-8b6c-9ace20c718a4','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',0,1),('6ca0b764-8e36-4eab-8cf9-77e29f074e80','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',0,1),('6db2dd7f-bc45-4fa4-a5d0-186b03271641','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',1,1),('707aa84b-fcd4-4304-8f5c-63ead5c5186e','Account verification options','Method with which to verity the existing account','org3','basic-flow',0,1),('753d53b7-b0d1-47ae-8d52-4ece908306d1','clients','Base authentication for clients','org5','client-flow',1,1),('77519c53-283e-4e66-9d27-22d529136fa5','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',1,1),('7787327c-c060-43b1-889a-ad8414edd643','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('784290f3-beef-4be1-99b1-6bd9230b5185','Account verification options','Method with which to verity the existing account','org4','basic-flow',0,1),('79ca2130-a720-4706-8ec4-07705816a3e5','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',1,1),('7d3bec3e-bd75-48a2-b5f4-5cd9f01f57be','registration','registration flow','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('7ea15b91-70fe-4b97-8f12-7aa693b7f720','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',0,1),('8335dad2-923a-4502-ac41-726e48b0b35f','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',1,1),('84996cdd-cd26-4403-a81d-f3367d746994','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',0,1),('86fbb088-7e32-44f6-be7a-2d630599d2f9','registration form','registration form','org4','form-flow',0,1),('8bb1cb44-04c4-46de-9128-db9de867e685','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',0,1),('8f5501dc-8e8b-456e-9510-27bb7a519625','Account verification options','Method with which to verity the existing account','org2','basic-flow',0,1),('8fb1b8b4-10f4-4d5b-a04f-5ad146ac0d17','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('99fd1b34-124a-44a0-87d6-bf21670c490f','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('9bc19559-0381-4110-aafa-4d2544e16049','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('9d57c2cc-c136-4fd9-a6b8-78d750ba1f59','forms','Username, password, otp and other auth forms.','org1','basic-flow',0,1),('a317db0c-a606-420c-afc8-dfd6c1dd30ed','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('a6081319-d165-4159-a121-a081fb45cb11','registration','registration flow','org4','basic-flow',1,1),('a9289cf8-74cc-4abe-ad46-ebefe5fe2573','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',0,1),('aa216b23-5db4-4509-8aae-c42daba9a59c','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',1,1),('ad030701-fd41-4747-9ee8-9f4b69ea2e0d','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',1,1),('aeda06f0-a2cf-467e-86c6-d7212a60ccde','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',1,1),('afdf4ad5-5afc-4e6f-8cff-3eccf9f5ec95','clients','Base authentication for clients','org1','client-flow',1,1),('b0d3b643-fb19-4d65-a982-3f2f0044bf68','browser','browser based authentication','org5','basic-flow',1,1),('b164e91e-36bc-4c16-9d6c-5b5625ea44fa','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',0,1),('b3024647-64ea-47a1-8637-e3045cea6d82','browser','browser based authentication','org4','basic-flow',1,1),('b3557e5c-7169-45fe-8faf-49067e322347','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('b3f697ee-316f-4879-8450-6ac07eac72c8','Account verification options','Method with which to verity the existing account','org5','basic-flow',0,1),('b607ec6d-3ab2-41c4-8fda-1d3a79692b38','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',0,1),('b80040c1-c597-4bb9-a406-906a219ce31c','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',1,1),('b882e40c-f801-4313-a6c6-e593f907cde7','browser','browser based authentication','org2','basic-flow',1,1),('b92bf02a-86a6-4f70-938d-b03d4456b8e2','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',1,1),('bff743f3-9638-4816-8710-3bab1d5ede9a','registration','registration flow','org2','basic-flow',1,1),('c16e801e-0308-4559-a741-55458c83226f','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('c19cb37d-e3d9-4f00-9c53-3ce84374a0ff','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',1,1),('c703b3d3-4eaa-494a-b618-b9fbed2b96bc','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',1,1),('c7dceac9-d2c9-4dcf-94d5-fa7fed1606b9','clients','Base authentication for clients','org4','client-flow',1,1),('c8894b85-db50-488b-9cc8-06d9db39292a','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',0,1),('c99cca6f-1738-453d-b4bd-afb0f3f2c9b1','clients','Base authentication for clients','org2','client-flow',1,1),('cd9f8ce5-cb05-4350-a795-32ec628507e9','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',1,1),('cfdd3076-ef06-41c6-b7ba-5379660f9783','reset credentials','Reset credentials for a user if they forgot their password or something','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('d1846e70-bb4e-471b-a5c3-20be16b6f21a','direct grant','OpenID Connect Resource Owner Grant','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('d34e52e8-41a1-44a3-b3fb-6f8cebd2d7ff','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',1,1),('d3b7135c-547a-4637-b9e4-45c4e58f8119','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',1,1),('d73b0507-266d-4ef0-a0eb-57ba58ef7059','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',1,1),('ded24d13-341f-4641-af52-3372ff0ff507','Account verification options','Method with which to verity the existing account','org1','basic-flow',0,1),('e1fe3e18-4109-4705-aeb9-ac4d491ce174','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',0,1),('e29aec29-1b38-4d23-8f76-6568a8674a3b','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('e2eb95db-0165-4be2-8b11-9516e4fc680d','registration','registration flow','org5','basic-flow',1,1),('e3fce011-150b-4e50-a482-6e917a3a69f7','forms','Username, password, otp and other auth forms.','org2','basic-flow',0,1),('e4138cbe-c0e2-42f0-9380-7a41fdcbcfa1','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('e4aaa1c1-5c80-4bd2-bb4c-888f2df92a83','Verify Existing Account by Re-authentication','Reauthentication of existing account','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('e643da04-b5cc-45d5-9fb2-5eee5dfd5e31','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('e6bce1f5-76a1-4a1b-8f92-3a4cb360d4a6','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('e8537596-e30d-4233-8484-7b095f7f26b2','Account verification options','Method with which to verity the existing account','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('e8faf535-1e5b-4cb4-9f3f-93655f8fa8dd','registration form','registration form','org3','form-flow',0,1),('e9f4700a-a1aa-4b84-8d19-91c719026f13','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('eb6bb502-1785-4aa6-b933-6c6b29c6f16f','User creation or linking','Flow for the existing/non-existing user alternatives','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('ebd027ed-ff92-4b97-956b-ab56bb0d9446','saml ecp','SAML ECP Profile Authentication Flow','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',1,1),('ecdc6eda-70f5-42f5-b37d-fb57ca92ac70','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('efeb0290-60b8-4848-bfb3-dc21fc754116','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('f112974c-c0af-48d1-999a-90b7512edd95','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',1,1),('f8265572-ed40-4401-9f6b-e589713578e2','clients','Base authentication for clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','client-flow',1,1),('fb084e4b-c3fe-4e9f-add5-66b526453022','registration form','registration form','org5','form-flow',0,1),('fb586d59-0e80-45e9-a50a-44d03a4367da','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','basic-flow',0,1),('fbf6400e-842f-4208-b904-8afb499aa854','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',1,1),('ff4590b4-b06b-4cf0-b604-ccf258539406','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',0,1);
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('0733b51b-2fac-4449-8b60-456e8552344b','review profile config','org2'),('18aff82d-872d-4e4c-8682-32bb09021d4c','create unique user config','org5'),('23c8239c-b110-4e3e-8fcb-efcbc0f82b37','review profile config','org5'),('2fbf96c3-2169-4f57-b7c4-91a4183971ed','review profile config','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73'),('304b2791-86fc-4a89-b945-0deae9483d43','create unique user config','org1'),('433b1bd2-c1ff-43db-83c1-44a561324c5b','review profile config','org4'),('7388de24-9a1b-41f9-8342-d4746762efd0','review profile config','org1'),('8a38524f-bc7a-4af5-9625-838e1bbc8c82','review profile config','org3'),('b127275d-3db2-4051-a693-0266c1aadb92','create unique user config','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73'),('d0c8d548-346d-4abe-9ea7-9fbd8f2a6bb6','create unique user config','org2'),('dbbb3c01-0565-4afd-8c73-d2039f78172f','create unique user config','org4'),('e71c5058-8ade-4636-986d-fab0069c06f3','create unique user config','org3');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('0733b51b-2fac-4449-8b60-456e8552344b','missing','update.profile.on.first.login'),('18aff82d-872d-4e4c-8682-32bb09021d4c','false','require.password.update.after.registration'),('23c8239c-b110-4e3e-8fcb-efcbc0f82b37','missing','update.profile.on.first.login'),('2fbf96c3-2169-4f57-b7c4-91a4183971ed','missing','update.profile.on.first.login'),('304b2791-86fc-4a89-b945-0deae9483d43','false','require.password.update.after.registration'),('433b1bd2-c1ff-43db-83c1-44a561324c5b','missing','update.profile.on.first.login'),('7388de24-9a1b-41f9-8342-d4746762efd0','missing','update.profile.on.first.login'),('8a38524f-bc7a-4af5-9625-838e1bbc8c82','missing','update.profile.on.first.login'),('b127275d-3db2-4051-a693-0266c1aadb92','false','require.password.update.after.registration'),('d0c8d548-346d-4abe-9ea7-9fbd8f2a6bb6','false','require.password.update.after.registration'),('dbbb3c01-0565-4afd-8c73-d2039f78172f','false','require.password.update.after.registration'),('e71c5058-8ade-4636-986d-fab0069c06f3','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `FULL_SCOPE_ALLOWED` tinyint(4) NOT NULL DEFAULT 0,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` tinyint(4) NOT NULL DEFAULT 0,
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` tinyint(4) NOT NULL DEFAULT 0,
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` tinyint(4) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` tinyint(4) NOT NULL DEFAULT 0,
  `CONSENT_REQUIRED` tinyint(4) NOT NULL DEFAULT 0,
  `NAME` varchar(255) DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` tinyint(4) NOT NULL DEFAULT 1,
  `IMPLICIT_FLOW_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `DIRECT_ACCESS_GRANTS_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `ALWAYS_DISPLAY_IN_CONSOLE` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `CLIENT` VALUES ('0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,1,'org2-workspaces',0,0,'pGeibYSfOvwZ2MKgpeapN1Hpuy6ZhHk2',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('1274865a-8680-4bd9-8c7b-49f07762d02e',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('14d8dd09-3c4e-47ba-85e2-187b92666d52',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('157645fe-1439-4fdc-8456-5357b19420f9',1,1,'_org5-api',0,1,'83iM4CDshYQUlgN16KOj7XiVkBjAgJjY',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('247c130c-df04-4adc-9bbc-32eef08eca4f',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('2ab085fc-75a3-406b-a2c8-868bc13d7d57',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('2ffb1a38-5d01-4a63-9222-6daf65dff683',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('320bf213-0be2-406c-823b-fc4c520ad8ca',1,0,'account',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('350dd5db-6577-47bb-9694-1c2f002920f0',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('3629d25b-c624-44fa-bd37-4d002d7cadaf',1,0,'security-admin-console',0,1,NULL,'/admin/org4/console/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('3db8c0da-0d5e-4ebd-903f-5eecf232382f',1,0,'_platform-console',0,1,'pcBff3VKEfymSEJLvJ0gRNJTTKbUAmUm',NULL,0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,0,'account',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('44f67ee9-b606-481b-b720-0d99b0607209',1,1,'_org1-api',0,1,'vbwD93CCSm66RTBnjNh4jMszyTbaFiTV',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,0,'account',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('49d9b462-972b-441f-908b-c130c3841d6e',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2',1,0,'security-admin-console',0,1,NULL,'/admin/org5/console/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,1,'org3-workspaces',0,0,'Iu6x1IrozukJJ9xqUBgH3CJuRV6CgGDs',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('50f136fa-4352-44bc-8a43-bd16889d14c2',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('51eabf99-b8e2-41a9-bb92-892cceee46fd',1,0,'org5-realm',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,0,0,0,'org5 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,1,'org4',0,1,'IxwzGMh096BYiHYe3jCAonkmaDa7VKQy',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('67123980-9418-4ed6-9e01-c4184a256467',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('6de10bb1-8be4-4a41-b4f5-40c157eba726',1,0,'account-console',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('6e8de75b-80b5-4366-953a-f95a340a5ed8',1,1,'org5',0,1,'i1BpD1n8WVMhMikWd9sEU44s1Nw31Dar',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('71b02b27-7fda-459f-a370-e0f50244a32b',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('7340899d-2fad-497c-9a46-0c9113674b9f',1,1,'system-org3-auth',0,0,'5T3BP1d2hFynx6TivuR2xNjxHq8nHeoD',NULL,1,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('8400902e-2977-4c22-b4a0-e2d91d103ecb',1,0,'account-console',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('875b4390-17a7-4104-a76d-574bb0fd81c6',1,0,'account',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('8835fc68-43b9-4293-a20b-da53a4917267',1,1,'system-org5-auth',0,0,'6KO0Dc7NFmv5qdRFNoxOBfRAo217Ng7m',NULL,1,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c',1,0,'account-console',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236',1,1,'_org2-api',0,1,'KEewcfUCeSDRckDIjhovINtm4q9JhZ8t',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('8ed022bc-766b-46e0-9fd1-d2348c174120',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('91e02879-b4bf-4cb2-9531-63e920e93386',1,1,'system-org2-auth',0,0,'0RYarbfhuGAcjBwHN3USAJm1Ia6lAR12',NULL,1,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('92368d3d-3efb-4922-a8a0-f74c411a6744',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('96706ded-274b-485c-bb56-dca729fc2b63',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('a2217405-b748-40da-bb15-7b7956c7b232',1,0,'org2-realm',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,0,0,0,'org2 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('abd62508-13a4-4ee5-960a-10978cf868d4',1,0,'account',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5',1,0,'security-admin-console',0,1,NULL,'/admin/org2/console/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('b121d259-2e5d-4bd7-b7ef-552fec186314',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('b2243579-8514-4d2a-a723-7ea4e4070794',1,1,'org5-workspaces',0,0,'su3WhandRwi4QzEsZvvStANx8SETfWnC',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('b35e0475-d55b-4021-8732-f8e52632be27',1,1,'org3',0,1,'5KGfYsjjh3FlPDBd3ScEsoT1GHGqeP8D',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('bb514192-449b-4128-a338-7f61600a2941',1,1,'system-org4-auth',0,0,'BN9vJLeBLeDiHfrOHTpXZUkn7pDcRgcR',NULL,1,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,1,'org2',0,1,'vG0s2bZTl1ozvjkuAtekEJP6lUxGXZ9V',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,1,'org1',0,1,'eXGoYR6E9mgt9IQOcWabcuytvcKmBMQ2',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('c69d2ba3-054d-401f-843c-11c288b4bf11',1,0,'security-admin-console',0,1,NULL,'/admin/org1/console/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2',1,1,'_org3-api',0,1,'R9ZGhMoyo9po2qpxZKAbUF51cuVkyHXX',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('d082e155-8648-4877-a8ae-60716e0b632a',1,1,'_org4-api',0,1,'9xeirHT5SO2tIYALgehOV6vw9bKJAj8P',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,1,'org1-workspaces',0,0,'8s6sXBaMFizAJ5QfXG3b9YvUigN7nCIa',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('d4caa701-fcb9-4637-bb20-11c49e7cf798',1,0,'security-admin-console',0,1,NULL,'/admin/org3/console/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('d56965fb-1af1-4620-a800-374e6d540d7b',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,0,'org1-realm',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,0,0,0,'org1 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4',1,1,'_platform',0,0,'MqcjuxxGsOFl92dsWMXXp4rprgxonsp3',NULL,0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,1,'org4-workspaces',0,0,'ZDhn1QDVdBMd5IZpLK6Lt2YQsY5NApp6',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('dbf30291-d9b5-4201-84d3-e8a949e052f0',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org1','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,0,'org4-realm',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,0,0,0,'org4 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('e5f235ff-e092-4e03-96e5-6de451cab48d',1,1,'system-org1-auth',0,0,'GjPAHDcKFDoqMqaMZ1VJA6wPssCPruUt',NULL,1,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5',1,0,'account-console',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('edecac89-54e9-43a2-968e-9de464892d92',1,0,'org3-realm',0,0,NULL,NULL,1,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,0,0,0,'org3 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('f449b258-f07c-46fb-b48a-7c98cdb4cb02',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org3','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('fc85a78c-7daa-45d2-bb49-27d80cf3be05',1,0,'account-console',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0);
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255)),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','backchannel.logout.revoke.offline.tokens','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','backchannel.logout.session.required','true'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','client.secret.creation.time','1728267869'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','client_credentials.use_refresh_token','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','display.on.consent.screen','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','exclude.session.state.from.auth.response','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','id.token.as.detached.signature','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','oauth2.device.authorization.grant.enabled','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','oidc.ciba.grant.enabled','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','require.pushed.authorization.requests','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.artifact.binding','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.assertion.signature','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.authnstatement','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.client.signature','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.encrypt','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.force.post.binding','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.multivalued.roles','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.onetimeuse.condition','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.server.signature','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml.server.signature.keyinfo.ext','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','saml_force_name_id_format','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','tls.client.certificate.bound.access.tokens','false'),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','use.refresh.tokens','true'),('157645fe-1439-4fdc-8456-5357b19420f9','access.token.lifespan','86400'),('157645fe-1439-4fdc-8456-5357b19420f9','acr.loa.map','{}'),('157645fe-1439-4fdc-8456-5357b19420f9','backchannel.logout.revoke.offline.tokens','false'),('157645fe-1439-4fdc-8456-5357b19420f9','backchannel.logout.session.required','true'),('157645fe-1439-4fdc-8456-5357b19420f9','client.secret.creation.time','1728267915'),('157645fe-1439-4fdc-8456-5357b19420f9','client.session.idle.timeout','86400'),('157645fe-1439-4fdc-8456-5357b19420f9','client.session.max.lifespan','86400'),('157645fe-1439-4fdc-8456-5357b19420f9','client_credentials.use_refresh_token','false'),('157645fe-1439-4fdc-8456-5357b19420f9','display.on.consent.screen','false'),('157645fe-1439-4fdc-8456-5357b19420f9','exclude.session.state.from.auth.response','false'),('157645fe-1439-4fdc-8456-5357b19420f9','frontchannel.logout.session.required','false'),('157645fe-1439-4fdc-8456-5357b19420f9','id.token.as.detached.signature','false'),('157645fe-1439-4fdc-8456-5357b19420f9','oauth2.device.authorization.grant.enabled','false'),('157645fe-1439-4fdc-8456-5357b19420f9','oidc.ciba.grant.enabled','false'),('157645fe-1439-4fdc-8456-5357b19420f9','require.pushed.authorization.requests','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.allow.ecp.flow','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.artifact.binding','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.assertion.signature','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.authnstatement','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.client.signature','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.encrypt','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.force.post.binding','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.multivalued.roles','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.onetimeuse.condition','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.server.signature','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml.server.signature.keyinfo.ext','false'),('157645fe-1439-4fdc-8456-5357b19420f9','saml_force_name_id_format','false'),('157645fe-1439-4fdc-8456-5357b19420f9','tls.client.certificate.bound.access.tokens','false'),('157645fe-1439-4fdc-8456-5357b19420f9','token.response.type.bearer.lower-case','false'),('157645fe-1439-4fdc-8456-5357b19420f9','use.refresh.tokens','true'),('247c130c-df04-4adc-9bbc-32eef08eca4f','post.logout.redirect.uris','+'),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','pkce.code.challenge.method','S256'),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','post.logout.redirect.uris','+'),('320bf213-0be2-406c-823b-fc4c520ad8ca','post.logout.redirect.uris','+'),('3629d25b-c624-44fa-bd37-4d002d7cadaf','pkce.code.challenge.method','S256'),('3629d25b-c624-44fa-bd37-4d002d7cadaf','post.logout.redirect.uris','+'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','backchannel.logout.revoke.offline.tokens','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','backchannel.logout.session.required','true'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','client.secret.creation.time','1728267613'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','client_credentials.use_refresh_token','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','display.on.consent.screen','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','exclude.session.state.from.auth.response','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','id.token.as.detached.signature','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','oauth2.device.authorization.grant.enabled','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','oidc.ciba.grant.enabled','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','post.logout.redirect.uris','/*'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','require.pushed.authorization.requests','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.artifact.binding','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.assertion.signature','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.authnstatement','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.client.signature','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.encrypt','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.force.post.binding','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.multivalued.roles','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.onetimeuse.condition','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.server.signature','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml.server.signature.keyinfo.ext','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','saml_force_name_id_format','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','tls.client.certificate.bound.access.tokens','false'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','use.refresh.tokens','true'),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','post.logout.redirect.uris','+'),('44f67ee9-b606-481b-b720-0d99b0607209','access.token.lifespan','86400'),('44f67ee9-b606-481b-b720-0d99b0607209','acr.loa.map','{}'),('44f67ee9-b606-481b-b720-0d99b0607209','backchannel.logout.revoke.offline.tokens','false'),('44f67ee9-b606-481b-b720-0d99b0607209','backchannel.logout.session.required','true'),('44f67ee9-b606-481b-b720-0d99b0607209','client.secret.creation.time','1728267851'),('44f67ee9-b606-481b-b720-0d99b0607209','client.session.idle.timeout','86400'),('44f67ee9-b606-481b-b720-0d99b0607209','client.session.max.lifespan','86400'),('44f67ee9-b606-481b-b720-0d99b0607209','client_credentials.use_refresh_token','false'),('44f67ee9-b606-481b-b720-0d99b0607209','display.on.consent.screen','false'),('44f67ee9-b606-481b-b720-0d99b0607209','exclude.session.state.from.auth.response','false'),('44f67ee9-b606-481b-b720-0d99b0607209','frontchannel.logout.session.required','false'),('44f67ee9-b606-481b-b720-0d99b0607209','id.token.as.detached.signature','false'),('44f67ee9-b606-481b-b720-0d99b0607209','oauth2.device.authorization.grant.enabled','false'),('44f67ee9-b606-481b-b720-0d99b0607209','oidc.ciba.grant.enabled','false'),('44f67ee9-b606-481b-b720-0d99b0607209','require.pushed.authorization.requests','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.allow.ecp.flow','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.artifact.binding','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.assertion.signature','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.authnstatement','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.client.signature','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.encrypt','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.force.post.binding','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.multivalued.roles','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.onetimeuse.condition','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.server.signature','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml.server.signature.keyinfo.ext','false'),('44f67ee9-b606-481b-b720-0d99b0607209','saml_force_name_id_format','false'),('44f67ee9-b606-481b-b720-0d99b0607209','tls.client.certificate.bound.access.tokens','false'),('44f67ee9-b606-481b-b720-0d99b0607209','token.response.type.bearer.lower-case','false'),('44f67ee9-b606-481b-b720-0d99b0607209','use.refresh.tokens','true'),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','post.logout.redirect.uris','+'),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','pkce.code.challenge.method','S256'),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','post.logout.redirect.uris','+'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','backchannel.logout.revoke.offline.tokens','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','backchannel.logout.session.required','true'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','client.secret.creation.time','1728267884'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','client_credentials.use_refresh_token','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','display.on.consent.screen','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','exclude.session.state.from.auth.response','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','id.token.as.detached.signature','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','oauth2.device.authorization.grant.enabled','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','oidc.ciba.grant.enabled','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','require.pushed.authorization.requests','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.artifact.binding','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.assertion.signature','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.authnstatement','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.client.signature','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.encrypt','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.force.post.binding','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.multivalued.roles','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.onetimeuse.condition','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.server.signature','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml.server.signature.keyinfo.ext','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','saml_force_name_id_format','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','tls.client.certificate.bound.access.tokens','false'),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','use.refresh.tokens','true'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','backchannel.logout.revoke.offline.tokens','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','backchannel.logout.session.required','true'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','client.secret.creation.time','1728267900'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','client_credentials.use_refresh_token','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','display.on.consent.screen','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','exclude.session.state.from.auth.response','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','id.token.as.detached.signature','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','oauth2.device.authorization.grant.enabled','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','oidc.ciba.grant.enabled','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','post.logout.redirect.uris','/*'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','require.pushed.authorization.requests','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.artifact.binding','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.assertion.signature','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.authnstatement','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.client.signature','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.encrypt','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.force.post.binding','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.multivalued.roles','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.onetimeuse.condition','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.server.signature','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml.server.signature.keyinfo.ext','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','saml_force_name_id_format','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','tls.client.certificate.bound.access.tokens','false'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','use.refresh.tokens','true'),('6de10bb1-8be4-4a41-b4f5-40c157eba726','pkce.code.challenge.method','S256'),('6de10bb1-8be4-4a41-b4f5-40c157eba726','post.logout.redirect.uris','+'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','backchannel.logout.revoke.offline.tokens','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','backchannel.logout.session.required','true'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','client.secret.creation.time','1728267915'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','client_credentials.use_refresh_token','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','display.on.consent.screen','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','exclude.session.state.from.auth.response','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','id.token.as.detached.signature','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','oauth2.device.authorization.grant.enabled','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','oidc.ciba.grant.enabled','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','post.logout.redirect.uris','/*'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','require.pushed.authorization.requests','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.artifact.binding','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.assertion.signature','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.authnstatement','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.client.signature','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.encrypt','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.force.post.binding','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.multivalued.roles','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.onetimeuse.condition','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.server.signature','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml.server.signature.keyinfo.ext','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','saml_force_name_id_format','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','tls.client.certificate.bound.access.tokens','false'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','use.refresh.tokens','true'),('71b02b27-7fda-459f-a370-e0f50244a32b','access.token.lifespan','86400'),('71b02b27-7fda-459f-a370-e0f50244a32b','acr.loa.map','{}'),('71b02b27-7fda-459f-a370-e0f50244a32b','backchannel.logout.revoke.offline.tokens','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','backchannel.logout.session.required','true'),('71b02b27-7fda-459f-a370-e0f50244a32b','client.session.idle.timeout','86400'),('71b02b27-7fda-459f-a370-e0f50244a32b','client.session.max.lifespan','86400'),('71b02b27-7fda-459f-a370-e0f50244a32b','client_credentials.use_refresh_token','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','display.on.consent.screen','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','exclude.session.state.from.auth.response','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','frontchannel.logout.session.required','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','id.token.as.detached.signature','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','oauth2.device.authorization.grant.enabled','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','oidc.ciba.grant.enabled','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','require.pushed.authorization.requests','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.allow.ecp.flow','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.artifact.binding','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.assertion.signature','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.authnstatement','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.client.signature','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.encrypt','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.force.post.binding','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.multivalued.roles','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.onetimeuse.condition','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.server.signature','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml.server.signature.keyinfo.ext','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','saml_force_name_id_format','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','tls.client.certificate.bound.access.tokens','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','token.response.type.bearer.lower-case','false'),('71b02b27-7fda-459f-a370-e0f50244a32b','use.refresh.tokens','true'),('7340899d-2fad-497c-9a46-0c9113674b9f','backchannel.logout.revoke.offline.tokens','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','backchannel.logout.session.required','true'),('7340899d-2fad-497c-9a46-0c9113674b9f','client.secret.creation.time','1728267884'),('7340899d-2fad-497c-9a46-0c9113674b9f','client_credentials.use_refresh_token','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','display.on.consent.screen','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','exclude.session.state.from.auth.response','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','id.token.as.detached.signature','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','oauth2.device.authorization.grant.enabled','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','oidc.ciba.grant.enabled','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','require.pushed.authorization.requests','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.artifact.binding','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.assertion.signature','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.authnstatement','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.client.signature','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.encrypt','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.force.post.binding','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.multivalued.roles','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.onetimeuse.condition','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.server.signature','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml.server.signature.keyinfo.ext','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','saml_force_name_id_format','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','tls.client.certificate.bound.access.tokens','false'),('7340899d-2fad-497c-9a46-0c9113674b9f','use.refresh.tokens','true'),('8400902e-2977-4c22-b4a0-e2d91d103ecb','pkce.code.challenge.method','S256'),('8400902e-2977-4c22-b4a0-e2d91d103ecb','post.logout.redirect.uris','+'),('875b4390-17a7-4104-a76d-574bb0fd81c6','post.logout.redirect.uris','+'),('8835fc68-43b9-4293-a20b-da53a4917267','backchannel.logout.revoke.offline.tokens','false'),('8835fc68-43b9-4293-a20b-da53a4917267','backchannel.logout.session.required','true'),('8835fc68-43b9-4293-a20b-da53a4917267','client.secret.creation.time','1728267915'),('8835fc68-43b9-4293-a20b-da53a4917267','client_credentials.use_refresh_token','false'),('8835fc68-43b9-4293-a20b-da53a4917267','display.on.consent.screen','false'),('8835fc68-43b9-4293-a20b-da53a4917267','exclude.session.state.from.auth.response','false'),('8835fc68-43b9-4293-a20b-da53a4917267','id.token.as.detached.signature','false'),('8835fc68-43b9-4293-a20b-da53a4917267','oauth2.device.authorization.grant.enabled','false'),('8835fc68-43b9-4293-a20b-da53a4917267','oidc.ciba.grant.enabled','false'),('8835fc68-43b9-4293-a20b-da53a4917267','require.pushed.authorization.requests','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.artifact.binding','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.assertion.signature','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.authnstatement','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.client.signature','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.encrypt','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.force.post.binding','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.multivalued.roles','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.onetimeuse.condition','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.server.signature','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml.server.signature.keyinfo.ext','false'),('8835fc68-43b9-4293-a20b-da53a4917267','saml_force_name_id_format','false'),('8835fc68-43b9-4293-a20b-da53a4917267','tls.client.certificate.bound.access.tokens','false'),('8835fc68-43b9-4293-a20b-da53a4917267','use.refresh.tokens','true'),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','pkce.code.challenge.method','S256'),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','post.logout.redirect.uris','+'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','access.token.lifespan','86400'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','acr.loa.map','{}'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','backchannel.logout.revoke.offline.tokens','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','backchannel.logout.session.required','true'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','client.secret.creation.time','1728267869'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','client.session.idle.timeout','86400'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','client.session.max.lifespan','86400'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','client_credentials.use_refresh_token','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','display.on.consent.screen','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','exclude.session.state.from.auth.response','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','frontchannel.logout.session.required','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','id.token.as.detached.signature','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','oauth2.device.authorization.grant.enabled','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','oidc.ciba.grant.enabled','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','require.pushed.authorization.requests','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.allow.ecp.flow','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.artifact.binding','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.assertion.signature','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.authnstatement','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.client.signature','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.encrypt','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.force.post.binding','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.multivalued.roles','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.onetimeuse.condition','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.server.signature','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml.server.signature.keyinfo.ext','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','saml_force_name_id_format','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','tls.client.certificate.bound.access.tokens','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','token.response.type.bearer.lower-case','false'),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','use.refresh.tokens','true'),('91e02879-b4bf-4cb2-9531-63e920e93386','backchannel.logout.revoke.offline.tokens','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','backchannel.logout.session.required','true'),('91e02879-b4bf-4cb2-9531-63e920e93386','client.secret.creation.time','1728267869'),('91e02879-b4bf-4cb2-9531-63e920e93386','client_credentials.use_refresh_token','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','display.on.consent.screen','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','exclude.session.state.from.auth.response','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','id.token.as.detached.signature','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','oauth2.device.authorization.grant.enabled','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','oidc.ciba.grant.enabled','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','require.pushed.authorization.requests','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.artifact.binding','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.assertion.signature','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.authnstatement','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.client.signature','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.encrypt','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.force.post.binding','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.multivalued.roles','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.onetimeuse.condition','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.server.signature','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml.server.signature.keyinfo.ext','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','saml_force_name_id_format','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','tls.client.certificate.bound.access.tokens','false'),('91e02879-b4bf-4cb2-9531-63e920e93386','use.refresh.tokens','true'),('abd62508-13a4-4ee5-960a-10978cf868d4','post.logout.redirect.uris','+'),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','pkce.code.challenge.method','S256'),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','post.logout.redirect.uris','+'),('b2243579-8514-4d2a-a723-7ea4e4070794','backchannel.logout.revoke.offline.tokens','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','backchannel.logout.session.required','true'),('b2243579-8514-4d2a-a723-7ea4e4070794','client.secret.creation.time','1728267914'),('b2243579-8514-4d2a-a723-7ea4e4070794','client_credentials.use_refresh_token','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','display.on.consent.screen','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','exclude.session.state.from.auth.response','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','id.token.as.detached.signature','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','oauth2.device.authorization.grant.enabled','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','oidc.ciba.grant.enabled','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','require.pushed.authorization.requests','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.artifact.binding','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.assertion.signature','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.authnstatement','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.client.signature','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.encrypt','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.force.post.binding','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.multivalued.roles','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.onetimeuse.condition','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.server.signature','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml.server.signature.keyinfo.ext','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','saml_force_name_id_format','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','tls.client.certificate.bound.access.tokens','false'),('b2243579-8514-4d2a-a723-7ea4e4070794','use.refresh.tokens','true'),('b35e0475-d55b-4021-8732-f8e52632be27','backchannel.logout.revoke.offline.tokens','false'),('b35e0475-d55b-4021-8732-f8e52632be27','backchannel.logout.session.required','true'),('b35e0475-d55b-4021-8732-f8e52632be27','client.secret.creation.time','1728267884'),('b35e0475-d55b-4021-8732-f8e52632be27','client_credentials.use_refresh_token','false'),('b35e0475-d55b-4021-8732-f8e52632be27','display.on.consent.screen','false'),('b35e0475-d55b-4021-8732-f8e52632be27','exclude.session.state.from.auth.response','false'),('b35e0475-d55b-4021-8732-f8e52632be27','id.token.as.detached.signature','false'),('b35e0475-d55b-4021-8732-f8e52632be27','oauth2.device.authorization.grant.enabled','false'),('b35e0475-d55b-4021-8732-f8e52632be27','oidc.ciba.grant.enabled','false'),('b35e0475-d55b-4021-8732-f8e52632be27','post.logout.redirect.uris','/*'),('b35e0475-d55b-4021-8732-f8e52632be27','require.pushed.authorization.requests','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.artifact.binding','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.assertion.signature','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.authnstatement','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.client.signature','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.encrypt','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.force.post.binding','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.multivalued.roles','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.onetimeuse.condition','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.server.signature','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml.server.signature.keyinfo.ext','false'),('b35e0475-d55b-4021-8732-f8e52632be27','saml_force_name_id_format','false'),('b35e0475-d55b-4021-8732-f8e52632be27','tls.client.certificate.bound.access.tokens','false'),('b35e0475-d55b-4021-8732-f8e52632be27','use.refresh.tokens','true'),('bb514192-449b-4128-a338-7f61600a2941','backchannel.logout.revoke.offline.tokens','false'),('bb514192-449b-4128-a338-7f61600a2941','backchannel.logout.session.required','true'),('bb514192-449b-4128-a338-7f61600a2941','client.secret.creation.time','1728267900'),('bb514192-449b-4128-a338-7f61600a2941','client_credentials.use_refresh_token','false'),('bb514192-449b-4128-a338-7f61600a2941','display.on.consent.screen','false'),('bb514192-449b-4128-a338-7f61600a2941','exclude.session.state.from.auth.response','false'),('bb514192-449b-4128-a338-7f61600a2941','id.token.as.detached.signature','false'),('bb514192-449b-4128-a338-7f61600a2941','oauth2.device.authorization.grant.enabled','false'),('bb514192-449b-4128-a338-7f61600a2941','oidc.ciba.grant.enabled','false'),('bb514192-449b-4128-a338-7f61600a2941','require.pushed.authorization.requests','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.artifact.binding','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.assertion.signature','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.authnstatement','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.client.signature','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.encrypt','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.force.post.binding','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.multivalued.roles','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.onetimeuse.condition','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.server.signature','false'),('bb514192-449b-4128-a338-7f61600a2941','saml.server.signature.keyinfo.ext','false'),('bb514192-449b-4128-a338-7f61600a2941','saml_force_name_id_format','false'),('bb514192-449b-4128-a338-7f61600a2941','tls.client.certificate.bound.access.tokens','false'),('bb514192-449b-4128-a338-7f61600a2941','use.refresh.tokens','true'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','backchannel.logout.revoke.offline.tokens','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','backchannel.logout.session.required','true'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','client.secret.creation.time','1728267869'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','client_credentials.use_refresh_token','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','display.on.consent.screen','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','exclude.session.state.from.auth.response','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','id.token.as.detached.signature','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','oauth2.device.authorization.grant.enabled','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','oidc.ciba.grant.enabled','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','post.logout.redirect.uris','/*'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','require.pushed.authorization.requests','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.artifact.binding','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.assertion.signature','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.authnstatement','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.client.signature','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.encrypt','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.force.post.binding','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.multivalued.roles','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.onetimeuse.condition','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.server.signature','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml.server.signature.keyinfo.ext','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','saml_force_name_id_format','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','tls.client.certificate.bound.access.tokens','false'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','use.refresh.tokens','true'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','backchannel.logout.revoke.offline.tokens','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','backchannel.logout.session.required','true'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','client.secret.creation.time','1728267851'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','client_credentials.use_refresh_token','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','display.on.consent.screen','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','exclude.session.state.from.auth.response','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','id.token.as.detached.signature','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','oauth2.device.authorization.grant.enabled','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','oidc.ciba.grant.enabled','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','post.logout.redirect.uris','/*'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','require.pushed.authorization.requests','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.artifact.binding','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.assertion.signature','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.authnstatement','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.client.signature','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.encrypt','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.force.post.binding','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.multivalued.roles','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.onetimeuse.condition','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.server.signature','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml.server.signature.keyinfo.ext','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','saml_force_name_id_format','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','tls.client.certificate.bound.access.tokens','false'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','use.refresh.tokens','true'),('c69d2ba3-054d-401f-843c-11c288b4bf11','pkce.code.challenge.method','S256'),('c69d2ba3-054d-401f-843c-11c288b4bf11','post.logout.redirect.uris','+'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','access.token.lifespan','86400'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','acr.loa.map','{}'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','backchannel.logout.revoke.offline.tokens','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','backchannel.logout.session.required','true'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','client.secret.creation.time','1728267884'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','client.session.idle.timeout','86400'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','client.session.max.lifespan','86400'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','client_credentials.use_refresh_token','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','display.on.consent.screen','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','exclude.session.state.from.auth.response','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','frontchannel.logout.session.required','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','id.token.as.detached.signature','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','oauth2.device.authorization.grant.enabled','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','oidc.ciba.grant.enabled','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','require.pushed.authorization.requests','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.allow.ecp.flow','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.artifact.binding','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.assertion.signature','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.authnstatement','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.client.signature','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.encrypt','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.force.post.binding','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.multivalued.roles','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.onetimeuse.condition','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.server.signature','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml.server.signature.keyinfo.ext','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','saml_force_name_id_format','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','tls.client.certificate.bound.access.tokens','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','token.response.type.bearer.lower-case','false'),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','use.refresh.tokens','true'),('d082e155-8648-4877-a8ae-60716e0b632a','access.token.lifespan','86400'),('d082e155-8648-4877-a8ae-60716e0b632a','acr.loa.map','{}'),('d082e155-8648-4877-a8ae-60716e0b632a','backchannel.logout.revoke.offline.tokens','false'),('d082e155-8648-4877-a8ae-60716e0b632a','backchannel.logout.session.required','true'),('d082e155-8648-4877-a8ae-60716e0b632a','client.secret.creation.time','1728267900'),('d082e155-8648-4877-a8ae-60716e0b632a','client.session.idle.timeout','86400'),('d082e155-8648-4877-a8ae-60716e0b632a','client.session.max.lifespan','86400'),('d082e155-8648-4877-a8ae-60716e0b632a','client_credentials.use_refresh_token','false'),('d082e155-8648-4877-a8ae-60716e0b632a','display.on.consent.screen','false'),('d082e155-8648-4877-a8ae-60716e0b632a','exclude.session.state.from.auth.response','false'),('d082e155-8648-4877-a8ae-60716e0b632a','frontchannel.logout.session.required','false'),('d082e155-8648-4877-a8ae-60716e0b632a','id.token.as.detached.signature','false'),('d082e155-8648-4877-a8ae-60716e0b632a','oauth2.device.authorization.grant.enabled','false'),('d082e155-8648-4877-a8ae-60716e0b632a','oidc.ciba.grant.enabled','false'),('d082e155-8648-4877-a8ae-60716e0b632a','require.pushed.authorization.requests','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.allow.ecp.flow','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.artifact.binding','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.assertion.signature','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.authnstatement','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.client.signature','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.encrypt','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.force.post.binding','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.multivalued.roles','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.onetimeuse.condition','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.server.signature','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml.server.signature.keyinfo.ext','false'),('d082e155-8648-4877-a8ae-60716e0b632a','saml_force_name_id_format','false'),('d082e155-8648-4877-a8ae-60716e0b632a','tls.client.certificate.bound.access.tokens','false'),('d082e155-8648-4877-a8ae-60716e0b632a','token.response.type.bearer.lower-case','false'),('d082e155-8648-4877-a8ae-60716e0b632a','use.refresh.tokens','true'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','backchannel.logout.revoke.offline.tokens','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','backchannel.logout.session.required','true'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','client.secret.creation.time','1728267851'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','client_credentials.use_refresh_token','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','display.on.consent.screen','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','exclude.session.state.from.auth.response','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','id.token.as.detached.signature','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','oauth2.device.authorization.grant.enabled','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','oidc.ciba.grant.enabled','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','require.pushed.authorization.requests','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.artifact.binding','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.assertion.signature','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.authnstatement','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.client.signature','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.encrypt','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.force.post.binding','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.multivalued.roles','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.onetimeuse.condition','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.server.signature','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml.server.signature.keyinfo.ext','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','saml_force_name_id_format','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','tls.client.certificate.bound.access.tokens','false'),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','use.refresh.tokens','true'),('d4caa701-fcb9-4637-bb20-11c49e7cf798','pkce.code.challenge.method','S256'),('d4caa701-fcb9-4637-bb20-11c49e7cf798','post.logout.redirect.uris','+'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','backchannel.logout.revoke.offline.tokens','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','backchannel.logout.session.required','true'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','client.secret.creation.time','1728267612'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','client_credentials.use_refresh_token','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','display.on.consent.screen','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','exclude.session.state.from.auth.response','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','id.token.as.detached.signature','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','oauth2.device.authorization.grant.enabled','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','oidc.ciba.grant.enabled','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','require.pushed.authorization.requests','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.artifact.binding','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.assertion.signature','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.authnstatement','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.client.signature','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.encrypt','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.force.post.binding','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.multivalued.roles','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.onetimeuse.condition','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.server.signature','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml.server.signature.keyinfo.ext','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','saml_force_name_id_format','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','tls.client.certificate.bound.access.tokens','false'),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','use.refresh.tokens','true'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','backchannel.logout.revoke.offline.tokens','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','backchannel.logout.session.required','true'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','client.secret.creation.time','1728267899'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','client_credentials.use_refresh_token','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','display.on.consent.screen','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','exclude.session.state.from.auth.response','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','id.token.as.detached.signature','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','oauth2.device.authorization.grant.enabled','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','oidc.ciba.grant.enabled','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','require.pushed.authorization.requests','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.artifact.binding','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.assertion.signature','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.authnstatement','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.client.signature','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.encrypt','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.force.post.binding','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.multivalued.roles','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.onetimeuse.condition','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.server.signature','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml.server.signature.keyinfo.ext','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','saml_force_name_id_format','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','tls.client.certificate.bound.access.tokens','false'),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','use.refresh.tokens','true'),('e5f235ff-e092-4e03-96e5-6de451cab48d','backchannel.logout.revoke.offline.tokens','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','backchannel.logout.session.required','true'),('e5f235ff-e092-4e03-96e5-6de451cab48d','client.secret.creation.time','1728267851'),('e5f235ff-e092-4e03-96e5-6de451cab48d','client_credentials.use_refresh_token','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','display.on.consent.screen','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','exclude.session.state.from.auth.response','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','id.token.as.detached.signature','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','oauth2.device.authorization.grant.enabled','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','oidc.ciba.grant.enabled','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','require.pushed.authorization.requests','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.artifact.binding','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.assertion.signature','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.authnstatement','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.client.signature','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.encrypt','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.force.post.binding','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.multivalued.roles','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.onetimeuse.condition','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.server.signature','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml.server.signature.keyinfo.ext','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','saml_force_name_id_format','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','tls.client.certificate.bound.access.tokens','false'),('e5f235ff-e092-4e03-96e5-6de451cab48d','use.refresh.tokens','true'),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','pkce.code.challenge.method','S256'),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','post.logout.redirect.uris','+'),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','pkce.code.challenge.method','S256'),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','post.logout.redirect.uris','+'),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','pkce.code.challenge.method','S256'),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','post.logout.redirect.uris','+');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CLIENT_SCOPE` VALUES ('04a732fe-0057-431a-8e5e-cefe22b539da','email','org1','OpenID Connect built-in scope: email','openid-connect'),('10c1a49a-2c0f-4f6c-884f-67c34f5bb974','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('1bbb0978-0eb6-49b5-a7d9-3f57048ece41','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('1dbb45ff-1a05-489a-b0be-376b072d703e','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('21c35cb4-4988-4bb6-8915-5e3ad30651a3','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('26796e89-124e-43b2-b6d9-a80a07d36218','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('28462c7b-8784-4627-a1dc-74027eb3fa38','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('2a613d40-7a64-4a66-a284-bcf6f7163e12','role_list','org5','SAML role list','saml'),('2d12a112-b6ac-4f27-adf8-419313823f9b','profile','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect built-in scope: profile','openid-connect'),('2f22783a-0f6f-49d7-9216-e4922d96ef1b','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('303e364f-f8f7-4625-8fd0-e4c75bf1d7a2','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('313bc9f7-334f-4a13-944a-1dd01fddb753','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('3cf32623-68b2-4f2a-967b-a64cd478043b','role_list','org1','SAML role list','saml'),('3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('3fc97fa4-390d-4be2-9940-aeed63bcfe3f','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('4e253170-e539-49b9-bf7c-7fcd28e039ee','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('4e885f94-d948-4ff8-b1e7-498e2c50359f','address','org3','OpenID Connect built-in scope: address','openid-connect'),('539a072b-f3e9-4647-bf06-356b77776893','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('53cd52e6-fefb-4b31-8355-daab74b7194d','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae','acr','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('59d00f82-6136-4b81-8656-46e6c3415c32','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('63575043-c945-4444-ba92-400b911323e3','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('6eb00fc8-f174-47a0-8a34-b2cbc1f828a0','address','org1','OpenID Connect built-in scope: address','openid-connect'),('6ffd8b6f-8c35-453a-ad1e-0c694e7044b4','microprofile-jwt','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','Microprofile - JWT built-in scope','openid-connect'),('7073d37e-fe6a-47e3-b2a6-020173c158d0','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('73558497-d282-44af-af9c-2fc52486cb33','address','org4','OpenID Connect built-in scope: address','openid-connect'),('740466f9-f263-4178-9d03-beef10f9de6d','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('75e013f2-7709-4ede-aa5a-f4d34da912cf','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('83e171f5-1c91-44ef-a28e-a99f7abb67d2','email','org2','OpenID Connect built-in scope: email','openid-connect'),('89097ec5-371b-470d-87e7-0c507b091049','email','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect built-in scope: email','openid-connect'),('8c563a73-7bac-4bef-b2e8-743c562632ab','phone','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect built-in scope: phone','openid-connect'),('91f33f30-20ed-4d15-b1b4-9cfc207febbf','roles','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect scope for add user roles to the access token','openid-connect'),('92ce690b-387a-40bf-96b8-0e10538dc2a1','address','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect built-in scope: address','openid-connect'),('9461ec45-68b6-458a-bd3c-d8d1f62d1dc1','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('960782b3-b320-4a80-83da-aeeaeff5ded1','offline_access','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect built-in scope: offline_access','openid-connect'),('990d785e-6447-46ac-9679-56792d7d4ab9','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('9e50c447-3724-4d62-b2e8-34683bf5b769','role_list','org2','SAML role list','saml'),('a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('aa7f0938-587b-4f1c-9c68-a1735e40e0a4','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('b0a114e9-341f-4d96-9e84-b61d1b27924b','address','org5','OpenID Connect built-in scope: address','openid-connect'),('b1839dd1-6d4f-4404-a8bf-2b98f410d64a','web-origins','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('b3102d83-f5f8-4105-9599-352458c2840a','email','org5','OpenID Connect built-in scope: email','openid-connect'),('bf14e201-5031-4b45-a71a-9e14b503b59b','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('c616814a-8ea6-4403-b82a-0d3787af201f','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('c9ba77c3-a8af-4983-8be2-e1264401ebed','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('cc743f67-df57-4c93-8e53-a363f65baf99','email','org3','OpenID Connect built-in scope: email','openid-connect'),('cd373230-5b56-4ce4-a25d-34d45e59bd83','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('ce1a2e24-b68f-413f-9707-2616c282bb1c','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('d234a70d-dbc2-4fee-8196-5a0ea9b55db1','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('d28fe72f-ca19-4122-b6a7-ae84436dfe79','role_list','org4','SAML role list','saml'),('d51aee07-adb6-4d3c-8068-be4d79cc0222','email','org4','OpenID Connect built-in scope: email','openid-connect'),('da77b197-0569-4aa8-b1b0-59c7ca53509d','role_list','org3','SAML role list','saml'),('daf1ced3-0e56-47a7-a931-9d10f3abda93','address','org2','OpenID Connect built-in scope: address','openid-connect'),('db51ca57-132c-4e81-bc34-573e636875e4','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('f35aa46f-1efa-4916-9041-f0fa24c7163d','role_list','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','SAML role list','saml'),('f9e539d0-2e35-491b-9271-1070f835af65','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('04a732fe-0057-431a-8e5e-cefe22b539da','${emailScopeConsentText}','consent.screen.text'),('04a732fe-0057-431a-8e5e-cefe22b539da','true','display.on.consent.screen'),('04a732fe-0057-431a-8e5e-cefe22b539da','true','include.in.token.scope'),('10c1a49a-2c0f-4f6c-884f-67c34f5bb974','${profileScopeConsentText}','consent.screen.text'),('10c1a49a-2c0f-4f6c-884f-67c34f5bb974','true','display.on.consent.screen'),('10c1a49a-2c0f-4f6c-884f-67c34f5bb974','true','include.in.token.scope'),('1bbb0978-0eb6-49b5-a7d9-3f57048ece41','false','display.on.consent.screen'),('1bbb0978-0eb6-49b5-a7d9-3f57048ece41','true','include.in.token.scope'),('1dbb45ff-1a05-489a-b0be-376b072d703e','${offlineAccessScopeConsentText}','consent.screen.text'),('1dbb45ff-1a05-489a-b0be-376b072d703e','true','display.on.consent.screen'),('21c35cb4-4988-4bb6-8915-5e3ad30651a3','${phoneScopeConsentText}','consent.screen.text'),('21c35cb4-4988-4bb6-8915-5e3ad30651a3','true','display.on.consent.screen'),('21c35cb4-4988-4bb6-8915-5e3ad30651a3','true','include.in.token.scope'),('26796e89-124e-43b2-b6d9-a80a07d36218','','consent.screen.text'),('26796e89-124e-43b2-b6d9-a80a07d36218','false','display.on.consent.screen'),('26796e89-124e-43b2-b6d9-a80a07d36218','false','include.in.token.scope'),('28462c7b-8784-4627-a1dc-74027eb3fa38','${offlineAccessScopeConsentText}','consent.screen.text'),('28462c7b-8784-4627-a1dc-74027eb3fa38','true','display.on.consent.screen'),('29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4','${offlineAccessScopeConsentText}','consent.screen.text'),('29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4','true','display.on.consent.screen'),('2a613d40-7a64-4a66-a284-bcf6f7163e12','${samlRoleListScopeConsentText}','consent.screen.text'),('2a613d40-7a64-4a66-a284-bcf6f7163e12','true','display.on.consent.screen'),('2d12a112-b6ac-4f27-adf8-419313823f9b','${profileScopeConsentText}','consent.screen.text'),('2d12a112-b6ac-4f27-adf8-419313823f9b','true','display.on.consent.screen'),('2d12a112-b6ac-4f27-adf8-419313823f9b','true','include.in.token.scope'),('2f22783a-0f6f-49d7-9216-e4922d96ef1b','${rolesScopeConsentText}','consent.screen.text'),('2f22783a-0f6f-49d7-9216-e4922d96ef1b','true','display.on.consent.screen'),('2f22783a-0f6f-49d7-9216-e4922d96ef1b','false','include.in.token.scope'),('303e364f-f8f7-4625-8fd0-e4c75bf1d7a2','${profileScopeConsentText}','consent.screen.text'),('303e364f-f8f7-4625-8fd0-e4c75bf1d7a2','true','display.on.consent.screen'),('303e364f-f8f7-4625-8fd0-e4c75bf1d7a2','true','include.in.token.scope'),('313bc9f7-334f-4a13-944a-1dd01fddb753','${profileScopeConsentText}','consent.screen.text'),('313bc9f7-334f-4a13-944a-1dd01fddb753','true','display.on.consent.screen'),('313bc9f7-334f-4a13-944a-1dd01fddb753','true','include.in.token.scope'),('3cf32623-68b2-4f2a-967b-a64cd478043b','${samlRoleListScopeConsentText}','consent.screen.text'),('3cf32623-68b2-4f2a-967b-a64cd478043b','true','display.on.consent.screen'),('3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2','${profileScopeConsentText}','consent.screen.text'),('3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2','true','display.on.consent.screen'),('3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2','true','include.in.token.scope'),('3fc97fa4-390d-4be2-9940-aeed63bcfe3f','${rolesScopeConsentText}','consent.screen.text'),('3fc97fa4-390d-4be2-9940-aeed63bcfe3f','true','display.on.consent.screen'),('3fc97fa4-390d-4be2-9940-aeed63bcfe3f','false','include.in.token.scope'),('4e253170-e539-49b9-bf7c-7fcd28e039ee','','consent.screen.text'),('4e253170-e539-49b9-bf7c-7fcd28e039ee','false','display.on.consent.screen'),('4e253170-e539-49b9-bf7c-7fcd28e039ee','false','include.in.token.scope'),('4e885f94-d948-4ff8-b1e7-498e2c50359f','${addressScopeConsentText}','consent.screen.text'),('4e885f94-d948-4ff8-b1e7-498e2c50359f','true','display.on.consent.screen'),('4e885f94-d948-4ff8-b1e7-498e2c50359f','true','include.in.token.scope'),('539a072b-f3e9-4647-bf06-356b77776893','${phoneScopeConsentText}','consent.screen.text'),('539a072b-f3e9-4647-bf06-356b77776893','true','display.on.consent.screen'),('539a072b-f3e9-4647-bf06-356b77776893','true','include.in.token.scope'),('53cd52e6-fefb-4b31-8355-daab74b7194d','${rolesScopeConsentText}','consent.screen.text'),('53cd52e6-fefb-4b31-8355-daab74b7194d','true','display.on.consent.screen'),('53cd52e6-fefb-4b31-8355-daab74b7194d','false','include.in.token.scope'),('5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae','false','display.on.consent.screen'),('5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae','false','include.in.token.scope'),('59d00f82-6136-4b81-8656-46e6c3415c32','','consent.screen.text'),('59d00f82-6136-4b81-8656-46e6c3415c32','false','display.on.consent.screen'),('59d00f82-6136-4b81-8656-46e6c3415c32','false','include.in.token.scope'),('63575043-c945-4444-ba92-400b911323e3','','consent.screen.text'),('63575043-c945-4444-ba92-400b911323e3','false','display.on.consent.screen'),('63575043-c945-4444-ba92-400b911323e3','false','include.in.token.scope'),('6eb00fc8-f174-47a0-8a34-b2cbc1f828a0','${addressScopeConsentText}','consent.screen.text'),('6eb00fc8-f174-47a0-8a34-b2cbc1f828a0','true','display.on.consent.screen'),('6eb00fc8-f174-47a0-8a34-b2cbc1f828a0','true','include.in.token.scope'),('6ffd8b6f-8c35-453a-ad1e-0c694e7044b4','false','display.on.consent.screen'),('6ffd8b6f-8c35-453a-ad1e-0c694e7044b4','true','include.in.token.scope'),('7073d37e-fe6a-47e3-b2a6-020173c158d0','false','display.on.consent.screen'),('7073d37e-fe6a-47e3-b2a6-020173c158d0','true','include.in.token.scope'),('73558497-d282-44af-af9c-2fc52486cb33','${addressScopeConsentText}','consent.screen.text'),('73558497-d282-44af-af9c-2fc52486cb33','true','display.on.consent.screen'),('73558497-d282-44af-af9c-2fc52486cb33','true','include.in.token.scope'),('740466f9-f263-4178-9d03-beef10f9de6d','${phoneScopeConsentText}','consent.screen.text'),('740466f9-f263-4178-9d03-beef10f9de6d','true','display.on.consent.screen'),('740466f9-f263-4178-9d03-beef10f9de6d','true','include.in.token.scope'),('75e013f2-7709-4ede-aa5a-f4d34da912cf','false','display.on.consent.screen'),('75e013f2-7709-4ede-aa5a-f4d34da912cf','true','include.in.token.scope'),('83e171f5-1c91-44ef-a28e-a99f7abb67d2','${emailScopeConsentText}','consent.screen.text'),('83e171f5-1c91-44ef-a28e-a99f7abb67d2','true','display.on.consent.screen'),('83e171f5-1c91-44ef-a28e-a99f7abb67d2','true','include.in.token.scope'),('89097ec5-371b-470d-87e7-0c507b091049','${emailScopeConsentText}','consent.screen.text'),('89097ec5-371b-470d-87e7-0c507b091049','true','display.on.consent.screen'),('89097ec5-371b-470d-87e7-0c507b091049','true','include.in.token.scope'),('8c563a73-7bac-4bef-b2e8-743c562632ab','${phoneScopeConsentText}','consent.screen.text'),('8c563a73-7bac-4bef-b2e8-743c562632ab','true','display.on.consent.screen'),('8c563a73-7bac-4bef-b2e8-743c562632ab','true','include.in.token.scope'),('91f33f30-20ed-4d15-b1b4-9cfc207febbf','${rolesScopeConsentText}','consent.screen.text'),('91f33f30-20ed-4d15-b1b4-9cfc207febbf','true','display.on.consent.screen'),('91f33f30-20ed-4d15-b1b4-9cfc207febbf','false','include.in.token.scope'),('92ce690b-387a-40bf-96b8-0e10538dc2a1','${addressScopeConsentText}','consent.screen.text'),('92ce690b-387a-40bf-96b8-0e10538dc2a1','true','display.on.consent.screen'),('92ce690b-387a-40bf-96b8-0e10538dc2a1','true','include.in.token.scope'),('9461ec45-68b6-458a-bd3c-d8d1f62d1dc1','false','display.on.consent.screen'),('9461ec45-68b6-458a-bd3c-d8d1f62d1dc1','false','include.in.token.scope'),('960782b3-b320-4a80-83da-aeeaeff5ded1','${offlineAccessScopeConsentText}','consent.screen.text'),('960782b3-b320-4a80-83da-aeeaeff5ded1','true','display.on.consent.screen'),('990d785e-6447-46ac-9679-56792d7d4ab9','${rolesScopeConsentText}','consent.screen.text'),('990d785e-6447-46ac-9679-56792d7d4ab9','true','display.on.consent.screen'),('990d785e-6447-46ac-9679-56792d7d4ab9','false','include.in.token.scope'),('9e50c447-3724-4d62-b2e8-34683bf5b769','${samlRoleListScopeConsentText}','consent.screen.text'),('9e50c447-3724-4d62-b2e8-34683bf5b769','true','display.on.consent.screen'),('a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d','${phoneScopeConsentText}','consent.screen.text'),('a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d','true','display.on.consent.screen'),('a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d','true','include.in.token.scope'),('aa7f0938-587b-4f1c-9c68-a1735e40e0a4','false','display.on.consent.screen'),('aa7f0938-587b-4f1c-9c68-a1735e40e0a4','false','include.in.token.scope'),('b0a114e9-341f-4d96-9e84-b61d1b27924b','${addressScopeConsentText}','consent.screen.text'),('b0a114e9-341f-4d96-9e84-b61d1b27924b','true','display.on.consent.screen'),('b0a114e9-341f-4d96-9e84-b61d1b27924b','true','include.in.token.scope'),('b1839dd1-6d4f-4404-a8bf-2b98f410d64a','','consent.screen.text'),('b1839dd1-6d4f-4404-a8bf-2b98f410d64a','false','display.on.consent.screen'),('b1839dd1-6d4f-4404-a8bf-2b98f410d64a','false','include.in.token.scope'),('b3102d83-f5f8-4105-9599-352458c2840a','${emailScopeConsentText}','consent.screen.text'),('b3102d83-f5f8-4105-9599-352458c2840a','true','display.on.consent.screen'),('b3102d83-f5f8-4105-9599-352458c2840a','true','include.in.token.scope'),('bf14e201-5031-4b45-a71a-9e14b503b59b','false','display.on.consent.screen'),('bf14e201-5031-4b45-a71a-9e14b503b59b','true','include.in.token.scope'),('bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e','','consent.screen.text'),('bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e','false','display.on.consent.screen'),('bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e','false','include.in.token.scope'),('c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce','false','display.on.consent.screen'),('c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce','false','include.in.token.scope'),('c616814a-8ea6-4403-b82a-0d3787af201f','false','display.on.consent.screen'),('c616814a-8ea6-4403-b82a-0d3787af201f','false','include.in.token.scope'),('c9ba77c3-a8af-4983-8be2-e1264401ebed','${phoneScopeConsentText}','consent.screen.text'),('c9ba77c3-a8af-4983-8be2-e1264401ebed','true','display.on.consent.screen'),('c9ba77c3-a8af-4983-8be2-e1264401ebed','true','include.in.token.scope'),('cc743f67-df57-4c93-8e53-a363f65baf99','${emailScopeConsentText}','consent.screen.text'),('cc743f67-df57-4c93-8e53-a363f65baf99','true','display.on.consent.screen'),('cc743f67-df57-4c93-8e53-a363f65baf99','true','include.in.token.scope'),('cd373230-5b56-4ce4-a25d-34d45e59bd83','${rolesScopeConsentText}','consent.screen.text'),('cd373230-5b56-4ce4-a25d-34d45e59bd83','true','display.on.consent.screen'),('cd373230-5b56-4ce4-a25d-34d45e59bd83','false','include.in.token.scope'),('ce1a2e24-b68f-413f-9707-2616c282bb1c','false','display.on.consent.screen'),('ce1a2e24-b68f-413f-9707-2616c282bb1c','true','include.in.token.scope'),('d234a70d-dbc2-4fee-8196-5a0ea9b55db1','${profileScopeConsentText}','consent.screen.text'),('d234a70d-dbc2-4fee-8196-5a0ea9b55db1','true','display.on.consent.screen'),('d234a70d-dbc2-4fee-8196-5a0ea9b55db1','true','include.in.token.scope'),('d28fe72f-ca19-4122-b6a7-ae84436dfe79','${samlRoleListScopeConsentText}','consent.screen.text'),('d28fe72f-ca19-4122-b6a7-ae84436dfe79','true','display.on.consent.screen'),('d51aee07-adb6-4d3c-8068-be4d79cc0222','${emailScopeConsentText}','consent.screen.text'),('d51aee07-adb6-4d3c-8068-be4d79cc0222','true','display.on.consent.screen'),('d51aee07-adb6-4d3c-8068-be4d79cc0222','true','include.in.token.scope'),('da77b197-0569-4aa8-b1b0-59c7ca53509d','${samlRoleListScopeConsentText}','consent.screen.text'),('da77b197-0569-4aa8-b1b0-59c7ca53509d','true','display.on.consent.screen'),('daf1ced3-0e56-47a7-a931-9d10f3abda93','${addressScopeConsentText}','consent.screen.text'),('daf1ced3-0e56-47a7-a931-9d10f3abda93','true','display.on.consent.screen'),('daf1ced3-0e56-47a7-a931-9d10f3abda93','true','include.in.token.scope'),('db51ca57-132c-4e81-bc34-573e636875e4','${offlineAccessScopeConsentText}','consent.screen.text'),('db51ca57-132c-4e81-bc34-573e636875e4','true','display.on.consent.screen'),('dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0','false','display.on.consent.screen'),('dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0','false','include.in.token.scope'),('f35aa46f-1efa-4916-9041-f0fa24c7163d','${samlRoleListScopeConsentText}','consent.screen.text'),('f35aa46f-1efa-4916-9041-f0fa24c7163d','true','display.on.consent.screen'),('f9e539d0-2e35-491b-9271-1070f835af65','${offlineAccessScopeConsentText}','consent.screen.text'),('f9e539d0-2e35-491b-9271-1070f835af65','true','display.on.consent.screen');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','740466f9-f263-4178-9d03-beef10f9de6d',0),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('0cae83b0-c90e-4b6d-b05b-75ea4fd610db','db51ca57-132c-4e81-bc34-573e636875e4',0),('1274865a-8680-4bd9-8c7b-49f07762d02e','740466f9-f263-4178-9d03-beef10f9de6d',0),('1274865a-8680-4bd9-8c7b-49f07762d02e','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('1274865a-8680-4bd9-8c7b-49f07762d02e','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('1274865a-8680-4bd9-8c7b-49f07762d02e','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('1274865a-8680-4bd9-8c7b-49f07762d02e','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('1274865a-8680-4bd9-8c7b-49f07762d02e','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('1274865a-8680-4bd9-8c7b-49f07762d02e','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('1274865a-8680-4bd9-8c7b-49f07762d02e','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('1274865a-8680-4bd9-8c7b-49f07762d02e','db51ca57-132c-4e81-bc34-573e636875e4',0),('14d8dd09-3c4e-47ba-85e2-187b92666d52','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('14d8dd09-3c4e-47ba-85e2-187b92666d52','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('14d8dd09-3c4e-47ba-85e2-187b92666d52','63575043-c945-4444-ba92-400b911323e3',1),('14d8dd09-3c4e-47ba-85e2-187b92666d52','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('14d8dd09-3c4e-47ba-85e2-187b92666d52','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('14d8dd09-3c4e-47ba-85e2-187b92666d52','b3102d83-f5f8-4105-9599-352458c2840a',1),('14d8dd09-3c4e-47ba-85e2-187b92666d52','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('14d8dd09-3c4e-47ba-85e2-187b92666d52','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('14d8dd09-3c4e-47ba-85e2-187b92666d52','f9e539d0-2e35-491b-9271-1070f835af65',0),('157645fe-1439-4fdc-8456-5357b19420f9','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('157645fe-1439-4fdc-8456-5357b19420f9','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('157645fe-1439-4fdc-8456-5357b19420f9','63575043-c945-4444-ba92-400b911323e3',1),('157645fe-1439-4fdc-8456-5357b19420f9','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('157645fe-1439-4fdc-8456-5357b19420f9','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('157645fe-1439-4fdc-8456-5357b19420f9','b3102d83-f5f8-4105-9599-352458c2840a',1),('157645fe-1439-4fdc-8456-5357b19420f9','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('157645fe-1439-4fdc-8456-5357b19420f9','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('157645fe-1439-4fdc-8456-5357b19420f9','f9e539d0-2e35-491b-9271-1070f835af65',0),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','89097ec5-371b-470d-87e7-0c507b091049',1),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('231b1e7c-cde3-41a3-a8ef-63e8915e37f7','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('247c130c-df04-4adc-9bbc-32eef08eca4f','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('247c130c-df04-4adc-9bbc-32eef08eca4f','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('247c130c-df04-4adc-9bbc-32eef08eca4f','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('247c130c-df04-4adc-9bbc-32eef08eca4f','89097ec5-371b-470d-87e7-0c507b091049',1),('247c130c-df04-4adc-9bbc-32eef08eca4f','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('247c130c-df04-4adc-9bbc-32eef08eca4f','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('247c130c-df04-4adc-9bbc-32eef08eca4f','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('247c130c-df04-4adc-9bbc-32eef08eca4f','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('247c130c-df04-4adc-9bbc-32eef08eca4f','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','89097ec5-371b-470d-87e7-0c507b091049',1),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('2ffb1a38-5d01-4a63-9222-6daf65dff683','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('2ffb1a38-5d01-4a63-9222-6daf65dff683','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('2ffb1a38-5d01-4a63-9222-6daf65dff683','63575043-c945-4444-ba92-400b911323e3',1),('2ffb1a38-5d01-4a63-9222-6daf65dff683','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('2ffb1a38-5d01-4a63-9222-6daf65dff683','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('2ffb1a38-5d01-4a63-9222-6daf65dff683','b3102d83-f5f8-4105-9599-352458c2840a',1),('2ffb1a38-5d01-4a63-9222-6daf65dff683','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('2ffb1a38-5d01-4a63-9222-6daf65dff683','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('2ffb1a38-5d01-4a63-9222-6daf65dff683','f9e539d0-2e35-491b-9271-1070f835af65',0),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','539a072b-f3e9-4647-bf06-356b77776893',0),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('3188b743-30fd-4ea4-ace3-ed104e5eac5d','cc743f67-df57-4c93-8e53-a363f65baf99',1),('320bf213-0be2-406c-823b-fc4c520ad8ca','740466f9-f263-4178-9d03-beef10f9de6d',0),('320bf213-0be2-406c-823b-fc4c520ad8ca','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('320bf213-0be2-406c-823b-fc4c520ad8ca','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('320bf213-0be2-406c-823b-fc4c520ad8ca','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('320bf213-0be2-406c-823b-fc4c520ad8ca','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('320bf213-0be2-406c-823b-fc4c520ad8ca','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('320bf213-0be2-406c-823b-fc4c520ad8ca','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('320bf213-0be2-406c-823b-fc4c520ad8ca','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('320bf213-0be2-406c-823b-fc4c520ad8ca','db51ca57-132c-4e81-bc34-573e636875e4',0),('350dd5db-6577-47bb-9694-1c2f002920f0','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('350dd5db-6577-47bb-9694-1c2f002920f0','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('350dd5db-6577-47bb-9694-1c2f002920f0','63575043-c945-4444-ba92-400b911323e3',1),('350dd5db-6577-47bb-9694-1c2f002920f0','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('350dd5db-6577-47bb-9694-1c2f002920f0','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('350dd5db-6577-47bb-9694-1c2f002920f0','b3102d83-f5f8-4105-9599-352458c2840a',1),('350dd5db-6577-47bb-9694-1c2f002920f0','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('350dd5db-6577-47bb-9694-1c2f002920f0','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('350dd5db-6577-47bb-9694-1c2f002920f0','f9e539d0-2e35-491b-9271-1070f835af65',0),('3629d25b-c624-44fa-bd37-4d002d7cadaf','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('3629d25b-c624-44fa-bd37-4d002d7cadaf','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('3629d25b-c624-44fa-bd37-4d002d7cadaf','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('3629d25b-c624-44fa-bd37-4d002d7cadaf','26796e89-124e-43b2-b6d9-a80a07d36218',1),('3629d25b-c624-44fa-bd37-4d002d7cadaf','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('3629d25b-c624-44fa-bd37-4d002d7cadaf','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('3629d25b-c624-44fa-bd37-4d002d7cadaf','73558497-d282-44af-af9c-2fc52486cb33',0),('3629d25b-c624-44fa-bd37-4d002d7cadaf','c616814a-8ea6-4403-b82a-0d3787af201f',1),('3629d25b-c624-44fa-bd37-4d002d7cadaf','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','89097ec5-371b-470d-87e7-0c507b091049',1),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','26796e89-124e-43b2-b6d9-a80a07d36218',1),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','73558497-d282-44af-af9c-2fc52486cb33',0),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','c616814a-8ea6-4403-b82a-0d3787af201f',1),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('44f67ee9-b606-481b-b720-0d99b0607209','04a732fe-0057-431a-8e5e-cefe22b539da',1),('44f67ee9-b606-481b-b720-0d99b0607209','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('44f67ee9-b606-481b-b720-0d99b0607209','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('44f67ee9-b606-481b-b720-0d99b0607209','59d00f82-6136-4b81-8656-46e6c3415c32',1),('44f67ee9-b606-481b-b720-0d99b0607209','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('44f67ee9-b606-481b-b720-0d99b0607209','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('44f67ee9-b606-481b-b720-0d99b0607209','990d785e-6447-46ac-9679-56792d7d4ab9',1),('44f67ee9-b606-481b-b720-0d99b0607209','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('44f67ee9-b606-481b-b720-0d99b0607209','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','04a732fe-0057-431a-8e5e-cefe22b539da',1),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','59d00f82-6136-4b81-8656-46e6c3415c32',1),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','990d785e-6447-46ac-9679-56792d7d4ab9',1),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('49d9b462-972b-441f-908b-c130c3841d6e','740466f9-f263-4178-9d03-beef10f9de6d',0),('49d9b462-972b-441f-908b-c130c3841d6e','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('49d9b462-972b-441f-908b-c130c3841d6e','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('49d9b462-972b-441f-908b-c130c3841d6e','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('49d9b462-972b-441f-908b-c130c3841d6e','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('49d9b462-972b-441f-908b-c130c3841d6e','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('49d9b462-972b-441f-908b-c130c3841d6e','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('49d9b462-972b-441f-908b-c130c3841d6e','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('49d9b462-972b-441f-908b-c130c3841d6e','db51ca57-132c-4e81-bc34-573e636875e4',0),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','63575043-c945-4444-ba92-400b911323e3',1),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','b3102d83-f5f8-4105-9599-352458c2840a',1),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','f9e539d0-2e35-491b-9271-1070f835af65',0),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','539a072b-f3e9-4647-bf06-356b77776893',0),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('4f1bcf72-3d74-4dcd-b8eb-ceec493a441b','cc743f67-df57-4c93-8e53-a363f65baf99',1),('50f136fa-4352-44bc-8a43-bd16889d14c2','04a732fe-0057-431a-8e5e-cefe22b539da',1),('50f136fa-4352-44bc-8a43-bd16889d14c2','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('50f136fa-4352-44bc-8a43-bd16889d14c2','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('50f136fa-4352-44bc-8a43-bd16889d14c2','59d00f82-6136-4b81-8656-46e6c3415c32',1),('50f136fa-4352-44bc-8a43-bd16889d14c2','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('50f136fa-4352-44bc-8a43-bd16889d14c2','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('50f136fa-4352-44bc-8a43-bd16889d14c2','990d785e-6447-46ac-9679-56792d7d4ab9',1),('50f136fa-4352-44bc-8a43-bd16889d14c2','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('50f136fa-4352-44bc-8a43-bd16889d14c2','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','26796e89-124e-43b2-b6d9-a80a07d36218',1),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','73558497-d282-44af-af9c-2fc52486cb33',0),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','89097ec5-371b-470d-87e7-0c507b091049',1),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('62723fa8-4cfb-4d5f-910c-10d6f2aaa80f','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('67123980-9418-4ed6-9e01-c4184a256467','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('67123980-9418-4ed6-9e01-c4184a256467','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('67123980-9418-4ed6-9e01-c4184a256467','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('67123980-9418-4ed6-9e01-c4184a256467','26796e89-124e-43b2-b6d9-a80a07d36218',1),('67123980-9418-4ed6-9e01-c4184a256467','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('67123980-9418-4ed6-9e01-c4184a256467','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('67123980-9418-4ed6-9e01-c4184a256467','73558497-d282-44af-af9c-2fc52486cb33',0),('67123980-9418-4ed6-9e01-c4184a256467','c616814a-8ea6-4403-b82a-0d3787af201f',1),('67123980-9418-4ed6-9e01-c4184a256467','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('6de10bb1-8be4-4a41-b4f5-40c157eba726','04a732fe-0057-431a-8e5e-cefe22b539da',1),('6de10bb1-8be4-4a41-b4f5-40c157eba726','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('6de10bb1-8be4-4a41-b4f5-40c157eba726','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('6de10bb1-8be4-4a41-b4f5-40c157eba726','59d00f82-6136-4b81-8656-46e6c3415c32',1),('6de10bb1-8be4-4a41-b4f5-40c157eba726','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('6de10bb1-8be4-4a41-b4f5-40c157eba726','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('6de10bb1-8be4-4a41-b4f5-40c157eba726','990d785e-6447-46ac-9679-56792d7d4ab9',1),('6de10bb1-8be4-4a41-b4f5-40c157eba726','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('6de10bb1-8be4-4a41-b4f5-40c157eba726','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('6e8de75b-80b5-4366-953a-f95a340a5ed8','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('6e8de75b-80b5-4366-953a-f95a340a5ed8','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('6e8de75b-80b5-4366-953a-f95a340a5ed8','63575043-c945-4444-ba92-400b911323e3',1),('6e8de75b-80b5-4366-953a-f95a340a5ed8','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('6e8de75b-80b5-4366-953a-f95a340a5ed8','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('6e8de75b-80b5-4366-953a-f95a340a5ed8','b3102d83-f5f8-4105-9599-352458c2840a',1),('6e8de75b-80b5-4366-953a-f95a340a5ed8','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('6e8de75b-80b5-4366-953a-f95a340a5ed8','f9e539d0-2e35-491b-9271-1070f835af65',0),('71b02b27-7fda-459f-a370-e0f50244a32b','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('71b02b27-7fda-459f-a370-e0f50244a32b','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('71b02b27-7fda-459f-a370-e0f50244a32b','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('71b02b27-7fda-459f-a370-e0f50244a32b','89097ec5-371b-470d-87e7-0c507b091049',1),('71b02b27-7fda-459f-a370-e0f50244a32b','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('71b02b27-7fda-459f-a370-e0f50244a32b','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('71b02b27-7fda-459f-a370-e0f50244a32b','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('71b02b27-7fda-459f-a370-e0f50244a32b','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('71b02b27-7fda-459f-a370-e0f50244a32b','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','26796e89-124e-43b2-b6d9-a80a07d36218',1),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','73558497-d282-44af-af9c-2fc52486cb33',0),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','c616814a-8ea6-4403-b82a-0d3787af201f',1),('728b4ede-24f3-45dd-9c8f-81a7e030a0d5','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('7340899d-2fad-497c-9a46-0c9113674b9f','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('7340899d-2fad-497c-9a46-0c9113674b9f','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('7340899d-2fad-497c-9a46-0c9113674b9f','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('7340899d-2fad-497c-9a46-0c9113674b9f','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('7340899d-2fad-497c-9a46-0c9113674b9f','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('7340899d-2fad-497c-9a46-0c9113674b9f','539a072b-f3e9-4647-bf06-356b77776893',0),('7340899d-2fad-497c-9a46-0c9113674b9f','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('7340899d-2fad-497c-9a46-0c9113674b9f','cc743f67-df57-4c93-8e53-a363f65baf99',1),('8400902e-2977-4c22-b4a0-e2d91d103ecb','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('8400902e-2977-4c22-b4a0-e2d91d103ecb','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('8400902e-2977-4c22-b4a0-e2d91d103ecb','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('8400902e-2977-4c22-b4a0-e2d91d103ecb','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('8400902e-2977-4c22-b4a0-e2d91d103ecb','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('8400902e-2977-4c22-b4a0-e2d91d103ecb','539a072b-f3e9-4647-bf06-356b77776893',0),('8400902e-2977-4c22-b4a0-e2d91d103ecb','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('8400902e-2977-4c22-b4a0-e2d91d103ecb','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('8400902e-2977-4c22-b4a0-e2d91d103ecb','cc743f67-df57-4c93-8e53-a363f65baf99',1),('875b4390-17a7-4104-a76d-574bb0fd81c6','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('875b4390-17a7-4104-a76d-574bb0fd81c6','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('875b4390-17a7-4104-a76d-574bb0fd81c6','63575043-c945-4444-ba92-400b911323e3',1),('875b4390-17a7-4104-a76d-574bb0fd81c6','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('875b4390-17a7-4104-a76d-574bb0fd81c6','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('875b4390-17a7-4104-a76d-574bb0fd81c6','b3102d83-f5f8-4105-9599-352458c2840a',1),('875b4390-17a7-4104-a76d-574bb0fd81c6','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('875b4390-17a7-4104-a76d-574bb0fd81c6','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('875b4390-17a7-4104-a76d-574bb0fd81c6','f9e539d0-2e35-491b-9271-1070f835af65',0),('8835fc68-43b9-4293-a20b-da53a4917267','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('8835fc68-43b9-4293-a20b-da53a4917267','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('8835fc68-43b9-4293-a20b-da53a4917267','63575043-c945-4444-ba92-400b911323e3',1),('8835fc68-43b9-4293-a20b-da53a4917267','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('8835fc68-43b9-4293-a20b-da53a4917267','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('8835fc68-43b9-4293-a20b-da53a4917267','b3102d83-f5f8-4105-9599-352458c2840a',1),('8835fc68-43b9-4293-a20b-da53a4917267','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('8835fc68-43b9-4293-a20b-da53a4917267','f9e539d0-2e35-491b-9271-1070f835af65',0),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','740466f9-f263-4178-9d03-beef10f9de6d',0),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','db51ca57-132c-4e81-bc34-573e636875e4',0),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','740466f9-f263-4178-9d03-beef10f9de6d',0),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('8a2d7c3c-79cc-4f48-a616-e9f3ea635236','db51ca57-132c-4e81-bc34-573e636875e4',0),('8ed022bc-766b-46e0-9fd1-d2348c174120','04a732fe-0057-431a-8e5e-cefe22b539da',1),('8ed022bc-766b-46e0-9fd1-d2348c174120','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('8ed022bc-766b-46e0-9fd1-d2348c174120','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('8ed022bc-766b-46e0-9fd1-d2348c174120','59d00f82-6136-4b81-8656-46e6c3415c32',1),('8ed022bc-766b-46e0-9fd1-d2348c174120','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('8ed022bc-766b-46e0-9fd1-d2348c174120','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('8ed022bc-766b-46e0-9fd1-d2348c174120','990d785e-6447-46ac-9679-56792d7d4ab9',1),('8ed022bc-766b-46e0-9fd1-d2348c174120','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('8ed022bc-766b-46e0-9fd1-d2348c174120','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('91e02879-b4bf-4cb2-9531-63e920e93386','740466f9-f263-4178-9d03-beef10f9de6d',0),('91e02879-b4bf-4cb2-9531-63e920e93386','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('91e02879-b4bf-4cb2-9531-63e920e93386','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('91e02879-b4bf-4cb2-9531-63e920e93386','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('91e02879-b4bf-4cb2-9531-63e920e93386','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('91e02879-b4bf-4cb2-9531-63e920e93386','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('91e02879-b4bf-4cb2-9531-63e920e93386','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('91e02879-b4bf-4cb2-9531-63e920e93386','db51ca57-132c-4e81-bc34-573e636875e4',0),('92368d3d-3efb-4922-a8a0-f74c411a6744','740466f9-f263-4178-9d03-beef10f9de6d',0),('92368d3d-3efb-4922-a8a0-f74c411a6744','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('92368d3d-3efb-4922-a8a0-f74c411a6744','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('92368d3d-3efb-4922-a8a0-f74c411a6744','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('92368d3d-3efb-4922-a8a0-f74c411a6744','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('92368d3d-3efb-4922-a8a0-f74c411a6744','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('92368d3d-3efb-4922-a8a0-f74c411a6744','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('92368d3d-3efb-4922-a8a0-f74c411a6744','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('92368d3d-3efb-4922-a8a0-f74c411a6744','db51ca57-132c-4e81-bc34-573e636875e4',0),('96706ded-274b-485c-bb56-dca729fc2b63','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('96706ded-274b-485c-bb56-dca729fc2b63','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('96706ded-274b-485c-bb56-dca729fc2b63','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('96706ded-274b-485c-bb56-dca729fc2b63','89097ec5-371b-470d-87e7-0c507b091049',1),('96706ded-274b-485c-bb56-dca729fc2b63','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('96706ded-274b-485c-bb56-dca729fc2b63','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('96706ded-274b-485c-bb56-dca729fc2b63','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('96706ded-274b-485c-bb56-dca729fc2b63','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('96706ded-274b-485c-bb56-dca729fc2b63','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('abd62508-13a4-4ee5-960a-10978cf868d4','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('abd62508-13a4-4ee5-960a-10978cf868d4','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('abd62508-13a4-4ee5-960a-10978cf868d4','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('abd62508-13a4-4ee5-960a-10978cf868d4','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('abd62508-13a4-4ee5-960a-10978cf868d4','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('abd62508-13a4-4ee5-960a-10978cf868d4','539a072b-f3e9-4647-bf06-356b77776893',0),('abd62508-13a4-4ee5-960a-10978cf868d4','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('abd62508-13a4-4ee5-960a-10978cf868d4','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('abd62508-13a4-4ee5-960a-10978cf868d4','cc743f67-df57-4c93-8e53-a363f65baf99',1),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','740466f9-f263-4178-9d03-beef10f9de6d',0),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','db51ca57-132c-4e81-bc34-573e636875e4',0),('b121d259-2e5d-4bd7-b7ef-552fec186314','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('b121d259-2e5d-4bd7-b7ef-552fec186314','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('b121d259-2e5d-4bd7-b7ef-552fec186314','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('b121d259-2e5d-4bd7-b7ef-552fec186314','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('b121d259-2e5d-4bd7-b7ef-552fec186314','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('b121d259-2e5d-4bd7-b7ef-552fec186314','539a072b-f3e9-4647-bf06-356b77776893',0),('b121d259-2e5d-4bd7-b7ef-552fec186314','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('b121d259-2e5d-4bd7-b7ef-552fec186314','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('b121d259-2e5d-4bd7-b7ef-552fec186314','cc743f67-df57-4c93-8e53-a363f65baf99',1),('b2243579-8514-4d2a-a723-7ea4e4070794','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('b2243579-8514-4d2a-a723-7ea4e4070794','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('b2243579-8514-4d2a-a723-7ea4e4070794','63575043-c945-4444-ba92-400b911323e3',1),('b2243579-8514-4d2a-a723-7ea4e4070794','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('b2243579-8514-4d2a-a723-7ea4e4070794','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('b2243579-8514-4d2a-a723-7ea4e4070794','b3102d83-f5f8-4105-9599-352458c2840a',1),('b2243579-8514-4d2a-a723-7ea4e4070794','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('b2243579-8514-4d2a-a723-7ea4e4070794','f9e539d0-2e35-491b-9271-1070f835af65',0),('b35e0475-d55b-4021-8732-f8e52632be27','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('b35e0475-d55b-4021-8732-f8e52632be27','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('b35e0475-d55b-4021-8732-f8e52632be27','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('b35e0475-d55b-4021-8732-f8e52632be27','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('b35e0475-d55b-4021-8732-f8e52632be27','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('b35e0475-d55b-4021-8732-f8e52632be27','539a072b-f3e9-4647-bf06-356b77776893',0),('b35e0475-d55b-4021-8732-f8e52632be27','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('b35e0475-d55b-4021-8732-f8e52632be27','cc743f67-df57-4c93-8e53-a363f65baf99',1),('bb514192-449b-4128-a338-7f61600a2941','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('bb514192-449b-4128-a338-7f61600a2941','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('bb514192-449b-4128-a338-7f61600a2941','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('bb514192-449b-4128-a338-7f61600a2941','26796e89-124e-43b2-b6d9-a80a07d36218',1),('bb514192-449b-4128-a338-7f61600a2941','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('bb514192-449b-4128-a338-7f61600a2941','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('bb514192-449b-4128-a338-7f61600a2941','73558497-d282-44af-af9c-2fc52486cb33',0),('bb514192-449b-4128-a338-7f61600a2941','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','740466f9-f263-4178-9d03-beef10f9de6d',0),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','db51ca57-132c-4e81-bc34-573e636875e4',0),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','04a732fe-0057-431a-8e5e-cefe22b539da',1),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','59d00f82-6136-4b81-8656-46e6c3415c32',1),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','990d785e-6447-46ac-9679-56792d7d4ab9',1),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('c69d2ba3-054d-401f-843c-11c288b4bf11','04a732fe-0057-431a-8e5e-cefe22b539da',1),('c69d2ba3-054d-401f-843c-11c288b4bf11','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('c69d2ba3-054d-401f-843c-11c288b4bf11','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('c69d2ba3-054d-401f-843c-11c288b4bf11','59d00f82-6136-4b81-8656-46e6c3415c32',1),('c69d2ba3-054d-401f-843c-11c288b4bf11','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('c69d2ba3-054d-401f-843c-11c288b4bf11','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('c69d2ba3-054d-401f-843c-11c288b4bf11','990d785e-6447-46ac-9679-56792d7d4ab9',1),('c69d2ba3-054d-401f-843c-11c288b4bf11','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('c69d2ba3-054d-401f-843c-11c288b4bf11','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','539a072b-f3e9-4647-bf06-356b77776893',0),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('cf7e8abe-cf28-4c54-8618-45cdecc8f2b2','cc743f67-df57-4c93-8e53-a363f65baf99',1),('d082e155-8648-4877-a8ae-60716e0b632a','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('d082e155-8648-4877-a8ae-60716e0b632a','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('d082e155-8648-4877-a8ae-60716e0b632a','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('d082e155-8648-4877-a8ae-60716e0b632a','26796e89-124e-43b2-b6d9-a80a07d36218',1),('d082e155-8648-4877-a8ae-60716e0b632a','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('d082e155-8648-4877-a8ae-60716e0b632a','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('d082e155-8648-4877-a8ae-60716e0b632a','73558497-d282-44af-af9c-2fc52486cb33',0),('d082e155-8648-4877-a8ae-60716e0b632a','c616814a-8ea6-4403-b82a-0d3787af201f',1),('d082e155-8648-4877-a8ae-60716e0b632a','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','04a732fe-0057-431a-8e5e-cefe22b539da',1),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','59d00f82-6136-4b81-8656-46e6c3415c32',1),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','990d785e-6447-46ac-9679-56792d7d4ab9',1),('d2931841-1d90-49f5-a55b-22f9a6eb1fa9','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('d4caa701-fcb9-4637-bb20-11c49e7cf798','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('d4caa701-fcb9-4637-bb20-11c49e7cf798','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('d4caa701-fcb9-4637-bb20-11c49e7cf798','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('d4caa701-fcb9-4637-bb20-11c49e7cf798','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('d4caa701-fcb9-4637-bb20-11c49e7cf798','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('d4caa701-fcb9-4637-bb20-11c49e7cf798','539a072b-f3e9-4647-bf06-356b77776893',0),('d4caa701-fcb9-4637-bb20-11c49e7cf798','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('d4caa701-fcb9-4637-bb20-11c49e7cf798','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('d4caa701-fcb9-4637-bb20-11c49e7cf798','cc743f67-df57-4c93-8e53-a363f65baf99',1),('d56965fb-1af1-4620-a800-374e6d540d7b','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('d56965fb-1af1-4620-a800-374e6d540d7b','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('d56965fb-1af1-4620-a800-374e6d540d7b','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('d56965fb-1af1-4620-a800-374e6d540d7b','26796e89-124e-43b2-b6d9-a80a07d36218',1),('d56965fb-1af1-4620-a800-374e6d540d7b','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('d56965fb-1af1-4620-a800-374e6d540d7b','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('d56965fb-1af1-4620-a800-374e6d540d7b','73558497-d282-44af-af9c-2fc52486cb33',0),('d56965fb-1af1-4620-a800-374e6d540d7b','c616814a-8ea6-4403-b82a-0d3787af201f',1),('d56965fb-1af1-4620-a800-374e6d540d7b','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','89097ec5-371b-470d-87e7-0c507b091049',1),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('d9b7fb56-cf40-4830-bfb7-5a92cca769f4','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','26796e89-124e-43b2-b6d9-a80a07d36218',1),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','73558497-d282-44af-af9c-2fc52486cb33',0),('db6ec1b2-3401-449a-a512-a67ed08e1f1c','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('dbf30291-d9b5-4201-84d3-e8a949e052f0','04a732fe-0057-431a-8e5e-cefe22b539da',1),('dbf30291-d9b5-4201-84d3-e8a949e052f0','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('dbf30291-d9b5-4201-84d3-e8a949e052f0','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('dbf30291-d9b5-4201-84d3-e8a949e052f0','59d00f82-6136-4b81-8656-46e6c3415c32',1),('dbf30291-d9b5-4201-84d3-e8a949e052f0','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('dbf30291-d9b5-4201-84d3-e8a949e052f0','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('dbf30291-d9b5-4201-84d3-e8a949e052f0','990d785e-6447-46ac-9679-56792d7d4ab9',1),('dbf30291-d9b5-4201-84d3-e8a949e052f0','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('dbf30291-d9b5-4201-84d3-e8a949e052f0','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('e5f235ff-e092-4e03-96e5-6de451cab48d','04a732fe-0057-431a-8e5e-cefe22b539da',1),('e5f235ff-e092-4e03-96e5-6de451cab48d','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('e5f235ff-e092-4e03-96e5-6de451cab48d','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('e5f235ff-e092-4e03-96e5-6de451cab48d','59d00f82-6136-4b81-8656-46e6c3415c32',1),('e5f235ff-e092-4e03-96e5-6de451cab48d','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('e5f235ff-e092-4e03-96e5-6de451cab48d','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('e5f235ff-e092-4e03-96e5-6de451cab48d','990d785e-6447-46ac-9679-56792d7d4ab9',1),('e5f235ff-e092-4e03-96e5-6de451cab48d','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','26796e89-124e-43b2-b6d9-a80a07d36218',1),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','73558497-d282-44af-af9c-2fc52486cb33',0),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','c616814a-8ea6-4403-b82a-0d3787af201f',1),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','89097ec5-371b-470d-87e7-0c507b091049',1),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','539a072b-f3e9-4647-bf06-356b77776893',0),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('f9f0dc85-2837-49b0-a3ca-47ee50517bd9','cc743f67-df57-4c93-8e53-a363f65baf99',1),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','63575043-c945-4444-ba92-400b911323e3',1),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','b3102d83-f5f8-4105-9599-352458c2840a',1),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','f9e539d0-2e35-491b-9271-1070f835af65',0);
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('1dbb45ff-1a05-489a-b0be-376b072d703e','06d15ba0-f35c-4ed5-9ed1-05c99ea815f3'),('28462c7b-8784-4627-a1dc-74027eb3fa38','4c2f26ca-f705-4dbf-be07-7821817ec04e'),('29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4','16353c98-0b25-4a68-b7e6-169c7eaa05d6'),('960782b3-b320-4a80-83da-aeeaeff5ded1','1eb45331-d128-4b36-b06d-ec96988c1ae0'),('db51ca57-132c-4e81-bc34-573e636875e4','fad7e635-f9fb-41d2-b5d1-668b6f24740a'),('f9e539d0-2e35-491b-9271-1070f835af65','cb620534-d334-4b44-aad9-3f5e9736a709');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION`
--

DROP TABLE IF EXISTS `CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `COMPONENT` VALUES ('023389c0-d8a7-4cf1-a003-7c3f1b3a3ac8','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('063908fb-c467-4bbb-9aed-99ed352de2f1','hmac-generated-hs512','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('0c9909cb-3e2c-4e45-a062-5a74e70c890b','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('15ac69b7-f775-4509-b4ef-d55e48b62d02','hmac-generated-hs512','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('16d84f8d-1801-4e55-b59d-9bba6aa2ed51','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('1d888677-39b2-476b-87a7-0206043d210d','Trusted Hosts','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','anonymous'),('1e1150be-4394-45fc-a5bb-18fe30e3aada','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('1eb3f256-3077-4546-acd1-ed8ce3ca6a20','Max Clients Limit','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','anonymous'),('20e005bd-a168-404e-bf76-fdc0a1a25c40','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('2584aafb-4ef7-49d1-bf5d-ddf3ed831639','hmac-generated-hs512','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','hmac-generated','org.keycloak.keys.KeyProvider','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL),('298807d4-bad1-4320-99b4-379b54048c27','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('2c5a4801-54a5-4674-a089-bc4e0d981bc4','Allowed Protocol Mapper Types','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','authenticated'),('2d372678-ef6a-4386-8660-bac127f7e95c','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('2dddb1b2-b23d-4c1c-965e-0b350a3ca8ed','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('2fc9c3c0-d564-4ac8-8cd2-5694ed3f7b51','hmac-generated-hs512','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('31273c0c-b124-4014-951f-7a21036f29a7','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('356f428c-39a9-4d2f-a72f-26dcc0d93541','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('35d60d55-1a2c-4440-8b82-630ffb05add5','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('37af2788-3bef-4952-951d-de79e9505738','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('3a690546-2137-47a0-bf4b-8859eb9578aa','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('3e46788d-ce3c-47a5-af47-d6eb0be0556e','hmac-generated-hs512','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('41ea6fd1-1360-4424-b731-a34958c78165','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('44bba29b-c58c-46f2-a22e-429ce3e4beeb','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('4535baf2-405d-42ae-b6f9-a92ca44fb570','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('475c755c-1913-4039-8b34-f1650e372928','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('4a858b1f-3c8c-4816-b1cf-2a15975c8f7d','Full Scope Disabled','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','anonymous'),('51958a29-6204-407c-8192-47d65ba16e49','Allowed Client Scopes','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','authenticated'),('538ab92d-3d13-4b9c-b813-cd0a7cb6ffd7','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('5d7c2ff9-a08b-452a-82f6-f777c0f3ae3e','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('5e3ef522-246a-4125-9052-222a25aadf31','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('639b4271-40b0-4d0f-b0c7-14c049ebaad3',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('64be7755-f3b3-493c-bc81-1d69a7b5ddc3','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('6a9f0fbc-88ad-436f-817b-5ac5e8aff9a4','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('6e397140-d1c7-44b9-adc6-52b50948e81b','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('71bb2801-7ee6-4a04-a666-2ab5c72183b7','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('73b2640d-95e3-4297-9986-64abdcf865fd','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('74f5026c-a99a-40f9-a847-567f1c7a8158','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('76cb8947-a79b-4685-809e-edd31d669ef4','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('76df18da-5af9-4b9c-83a9-32b0eee603df',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('7a527db0-a102-4430-bafa-eadda1525460','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('7e201ac8-badb-4fb0-b562-8c594c00209e','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('84c5d115-af4a-4e33-ac2a-712899750b8c','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('8f2256b7-dd1c-4241-9f41-ec2069546e69',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('8f5001ad-74cd-4279-99a6-2444776e0aeb','Allowed Client Scopes','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','anonymous'),('921085c3-9b31-451f-be18-7af52c576588','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('a20ece23-caa9-4d06-a56d-1c7662675429','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('a4babc49-4496-45c4-84b3-b1e13f40feea','Consent Required','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','anonymous'),('acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('acd8711d-bd3d-455f-a5ee-236beaa7527f',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('b52b99d2-43e3-483d-bd47-21c22ff26587','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('b5d88f1d-2b7f-471e-8ff2-785bc44a1ae5','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('b6208802-bfbe-408f-9fb4-a96938308d1b','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('bb09c074-eb2a-4d80-a602-7f0e21cf65de','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('bc2286d5-f904-4c50-9775-c00770d4be92',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('bcd71e0a-bfd2-41b2-8f6a-18b084898255','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('bcea1b59-4463-4577-9813-8e9d0f12e47b','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('c3c75d24-2dc0-46eb-b367-c2e131816e14','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('c5e62d25-ff49-4d65-ada7-d0568f4c68ba','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('c5ef3273-ab26-49dc-8d17-5d88be900229','rsa-enc-generated','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','rsa-enc-generated','org.keycloak.keys.KeyProvider','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL),('cb7d345a-517c-41c9-ae99-502ed5dd90af','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('d7722a64-2ee1-4142-874d-482140f3ec05','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('d777d329-9083-4e7c-871e-b8313bf6ffa1','Allowed Protocol Mapper Types','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','anonymous'),('d81c69a3-4fb6-476d-93d0-d5bc04745079','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('d9350f53-57dd-4980-b06a-53945dc19373',NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL),('dc5fcb1d-5f80-40bd-941d-1d905418e3ce','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('dd8ca8c3-b8eb-4a2d-98fc-b7803032dbbe','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('e13902f6-0ffd-4ce8-a1ae-12043ea5b110','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('e619cffe-0404-4f0a-8475-7609b8d93f68','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('e97fa991-267a-4153-8191-e6f61a3eeea8','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('ebbcb555-5036-4434-9774-d4b0785a9912','hmac-generated-hs512','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('ec07d6ee-187d-49ef-842b-f3b7cd1dfb9a','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('ec4d4b3e-0046-4f37-a54a-4bc5b0362679','rsa-generated','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','rsa-generated','org.keycloak.keys.KeyProvider','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL),('f2a56517-fd5d-4d2e-99be-29ef93641650','aes-generated','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','aes-generated','org.keycloak.keys.KeyProvider','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL),('f381c723-6514-4d6b-8ab8-3d43fcdbc6c9','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('f96bb8a8-cffd-43d6-8e19-17fcf496d968','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('f983523c-8e48-4203-bca8-612d68e22549','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('fad1cee7-308d-4134-bae5-9d598a41ea36','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('001f89ce-6a29-46da-bf7a-4f7a2f570e07','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','oidc-address-mapper'),('00952b9c-17c0-4f16-a6e5-2a276d02ee85','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('016f6e44-4b1a-4d61-8c3f-787b0cd8710e','f381c723-6514-4d6b-8ab8-3d43fcdbc6c9','algorithm','RSA-OAEP'),('023e4222-40d0-4193-aad6-764545eae588','2dddb1b2-b23d-4c1c-965e-0b350a3ca8ed','max-clients','200'),('040bb72c-e3c9-4c61-a1f9-a179f9fe6f13','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','saml-user-property-mapper'),('04ab9bf6-91a5-46c7-89a3-4e3ee130d11c','74f5026c-a99a-40f9-a847-567f1c7a8158','algorithm','RSA-OAEP'),('04d8b13d-4ee4-4c30-8365-f55306bdda84','15ac69b7-f775-4509-b4ef-d55e48b62d02','kid','6a899204-e2aa-49a2-bb28-640aa4798095'),('05adfe2d-b6d1-49db-8ce8-8db3a55a80b3','3a690546-2137-47a0-bf4b-8859eb9578aa','kid','afa9dbaf-56cd-4c6d-aa22-2026abd3aab9'),('06b482b8-295a-406f-9231-65329a4833d0','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('0748f058-f159-4824-b646-a6e8ac0b0b80','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('07d1d0af-44aa-4600-944e-e70657369430','cb7d345a-517c-41c9-ae99-502ed5dd90af','privateKey','MIIEpAIBAAKCAQEAx08ZITdG6y1PbTh1Xmwbk5WNwsYmYPr2KaEZN0Q67/STiW9x3Qw2Rgmy2JuiC4SzagGLjMdxSSgxeIc/yh5lspX0VO+snmsENHZ3/aEN8dt9Vssfl4XscWreq7JcTk0JvEZTFBPNGVn2e4x7/x4blHOwPmpQ4Hw1yR5WZFGccK6C27tf6Hf6glYQ8pK+fkXftfU5TAkWszfzegchtOYuGf/1dBnc9AsM3SfLBAh6MBFb40HxVopxpsX6rzYXdh5L1yZgzqnS7QVxeC3qr5hya6mzNbSt+cVO2CBRh/XlFNyGQ8AaBTHWD5d+vkGGUAkjItg1Iif0NXl7O327yC6YjQIDAQABAoIBACEuoxFroYv/9CxL7QZ2WzT7/ikCUlttDNSrdIZF/sX6YyHLgxp5MQQCE1uKtbTTOAebED+06MB0R6A4bD9bRjUwUAhgCs4pJP8TBjEcwjSVBU4Q7UaNzmqnj0DopgOHQeqtjqFWFpx05Nt27SHxQkg55orNqn9lTpMYUOvMxo3fxK3F0SButoC6FRN4xSJchCNhs5qbDvZxy8UcKN6jkdtaWItPTW78+5Vfi/EiAJhNde58Fxrj5vmniCJ80aLyRHKofEN2Ih/ES9CvCv+mAIbr7Dw3s8r14sPLH4RM1X0Ca0om1pDVvynN6UdfRCKlRPgwXS/LSO9r19X5saliUcECgYEA7TQ2uLJDh99T4JqlYLtHrnDcuDi31cWJy+GZcEQXzI4RTNpAaOR9yJ/vPrAYAlokR/0f7uWM4SZFpktxRTLiZFruW/yCAEA2vsKvkm1ARUT+OSsZFE1NDllPr5JuFJvcQti3Xm2yVShubyx1q4fl/ytKDti/xrVHI8OdBTNkZV0CgYEA1xorB078L6QM9njHRbWgorC45QTNT3ChaNLUFY9kG4M/ETSEqmqrryBP3M/esJuezRcZRIMsfiQkCGrhCzw4kDTM4/9/1zqm9locNVSlLScg5zWdvDHurIZHWI7rpwqcomGTYTK+FAYVEZqnAalMR4aHPiT7Y2CxDpMI9cOZHPECgYEAwtQBIkDhMMehODktHr+Uh9YRpIqJjF8c6EYbZle3iH8j/JDDGKScH94lfsLaZYwugqaIxQrsZL2vtX//wEukIbOCVjGXgac8kACOfuGXSY36lXAtwDwhz2hSCC5olirShmFEc538PO/hjRTibYpIwgaHZJxpIEgi72ArJ2tnyc0CgYBAeKRq9V6a/OWxvjOkDjNOb/+LDSxoYg7O91n/+FF9+ZGem4oj9gLtY5bsTRWnA43OVN0K7vIYAMcYCsjW8D7X4iuDLuJnZToD3rBTv8IeTXsMMcLMVH8AEOMzhOrWz1RxSyO8X1Qfdk88Tok98ztcuNKyaq06dRG8l4948h5jUQKBgQCihatxsOhAbo1bsiFeK+m6qH9vTxCfcT+V4uxeEgh+TL+/pNGNwrqfylLHzqNrSz3q/shgQwxc9yPBnfT/7ap8n0uu9fRKW7kQEucMH1pE8I9YXPhNunGCruL0GDgOb+IbZCyZieu/EJwgtkkhx1z+880a3R2qHwsseOFwx+/Cog=='),('07d4bbc8-b36c-46a7-bd9c-f1669fafe450','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('07d8e806-d8f5-4f7e-908c-2d29e1f660cc','37af2788-3bef-4952-951d-de79e9505738','client-uris-must-match','true'),('08d93d53-5a51-4770-8633-9d9d2bd03c24','3e46788d-ce3c-47a5-af47-d6eb0be0556e','secret','CspY5nBztC-rbY0FdmJOSMxC9rTY7oWRIw-aEYEMZ5WEaRQoiMR_fOCTGibChtYYq9OCHP5eGiLBBRjg0Pog73AHjuyQjiBROnYEjEcL4w_Z9hZ8udvWVn-FpzgGsvOliFiE4kGTzggEZyXHn-E2CTOi0eQN9cg2JEi0amY4OGA'),('0a63f6b3-72a1-471e-b908-760e2ea01b2c','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','oidc-full-name-mapper'),('0b8bacaf-e68b-436a-9aa3-e97f83975c70','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','saml-user-property-mapper'),('0be8aa57-505c-4444-9699-b7e27fc1dc84','ec4d4b3e-0046-4f37-a54a-4bc5b0362679','certificate','MIICmzCCAYMCBgGSZMbhkjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQxMDA3MDIxODI4WhcNMzQxMDA3MDIyMDA4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDOqKmWvv5v+jrBgKqmWHZPUYUpmB3JBapVX87fuQbAVRlP+707pY8JUNlZdSgZI56KHis/VVv/PpB/utq8F7R2GfvZrJ7lz6CXishONbAtjREC5YiOmfo3KPtmMv3lQRnte+l8MB5iRvLHMz5Aobv1F7FSO7IZmNWrNVOg4W0/MSKzf19mudG2EdoxIDYhfeqYquINtqWGIFw+3u8pqHpXNREk/D0MWqWY7LeV8Bl9KAuH6AvyaL4j6hPtygwvC+h4BxHD1Y0LsQ6frvEQbgoUiKJdhxA0Wk/p7FPfkWBhDU6J6GnbGG7On4T323/2g3tUdmOvoyL4GsWlEyRQS0GdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAELj4cfX6a84OzqMxGaGntSnqH0BQdOSh/gmRDjlTPj98thpET1QPuhHVg0Q6Z0+mqeyvHdX9iItDwykd3GbQZKifAky3UxWDa8WouqP7vF9ZQo+SYsEPvTom3WwyvjI9k8iRmi2ztB8mawCc4NricgBUp+h3yhcCnnv54bNgLwmtgT7BPMkfrOGkIvCtBLUnQDmwSd2Js6oY1kr1d/y5gvViZBkAo/1pjyowvayw0h27ivTDfTZIdaWy8wnz1/4HsQtR3qtMsbqrDl6xj2/ScwSNSj44o5JZobMsjdTXvbLggNIBlqWGWgzHlbLxsie12ITjnMRAX4WqqPCFKJHfzo='),('0db4071c-f8a4-49d3-bfe6-fbf54a3aa510','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('1104d363-6f1e-405d-a63a-c58a7aeb37e9','dd8ca8c3-b8eb-4a2d-98fc-b7803032dbbe','privateKey','MIIEogIBAAKCAQEA0yQIq1WARSOQI4jvQwjlxPz3Ao7m1pAZPbnPIK4Xp+0He3ECSDrviyuqrUjG27DrodZ+oIn/n9mZDkoTHtX/rbnKklovV+uSa0g/vjex2TZllkmgaYcfIFNqX+0Bx77ndJsLAzJL9uRKPRfOpyKSlJR+mBi4FMjYWs1V1NkuXx/GNPjEWSP2JNuKw0NCgoSK9C+lFFQbcUDXyIgYFfAh/dv5ol8iAlq2chW0eNcJVeFcOAvlRoyBT9T/MzX0T/8DXOXAmC3rFxB93KR42NkTTdqtd32q3+9ehIdcffLwlq6sXrMg9NxjU00RKHU4QKg2Ap5LNwl5B/veCyfFxLK2QQIDAQABAoIBAATECf+CldKcmW55uMnsBSDF4JkVdQY8/VTdKehukS59hsxBCvCCEpeQI053dJzmq5l0SxML29H4lfGmzr7zb82dgoIfielNw5BOLNC0KGVXeVlbEv99VJIqlaku0ct3sL7YUoLy3jtbrrQ1OblDUuAKlxyPCY0F0tC54FSjaZiKkxzuylNnBcja17i/ADTrOfHDpir0yvSz50b2+yv8Kmnh4OxiHC8r+jWfli0K9dzQlNc8WYvahJlbvaiMJYtx1wkbwJ4Xzwmavy5Dgy+1T7BcP/WEBal22SyHgFZFb4KThr6vBQGnudC5M9IarrYjI4u8GXKbKCiZI+Bc4RAx5sECgYEA6eUiSAQVUL8zTNmRjCrIdwN/hIlXtxnFivgoceXIZ2nS2wfxvhZesMAztBH2F6XRgGQ3Xv+xTDoMTwNjHtM/y66USRGvfR7q5Ei0C2+KWvy1GBpZcm57SMK81uuO/8YebCIWepH/AplL6XBzKEf11f737JrMzz3nfO73JbOjSEcCgYEA5xhhsI/6bcm7xrs4mHb7tU9/7zH+Y7SQYphKIoc9Rr831OXsCJO6djBQOiAzQeZTSPrkf9Kc9Dm4n1WlmkccbasRGvNKEJaMSr2CrYvVPkH9wZzknVCUGbQU0Xk56OIpcjLN2h+3pf917B42yFdGeSEpoEge2/yz00HROl/W2TcCgYA2Or0fC2tRxHMFf3BimkzOY04+kYV3247UsMLX3ZoAeCW+SPJAy3j67CVQu9VeGEEhzpqT+R7HeLH/494oeHxTIlAZPPN+RBvcAAtWl27xt6PZScqxYHJPJW+ZORZ3sRy+n4yssIr6tEZIgp0AmuahzjL3ddDEwCqa6eD9qc/S4wKBgHNWeuNJaL7E0aBFLuEBeW0riXmTZRjUNL/QrCeBgfa+Vxo9yskZGhYE1PW9vndkgirJdaPKNSW7bUaw018loK2nlHjz9gJDcS+YWBFP2hUhkInCSWOupMwTUdSegWWXAwKJEq6L5/fEgVFgXw0safLot0LU2/oFrKaCke9lh/CPAoGAbcsxI44HtBn1775kRhF7UTKRRdVZpiOrPiXEeYSuHx3EAsY4yHJrfY56QPpMdR5LPOkXySvu4UYgwEuHa+4XCgEtRbi23HP/NCp61l9h1fjnismHtm8anT1eNR0NGLvygA/RT1lotgAWoqc/0m8WDaQpBvFStKKuubuWiRFtrjo='),('11fdd21c-2d8f-4d3c-82b5-d5101d912346','31273c0c-b124-4014-951f-7a21036f29a7','certificate','MIIClzCCAX8CBgGSZMqUUzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MTAwNzAyMjIzMFoXDTM0MTAwNzAyMjQxMFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMPH4inyWcQHCDjoMM/kfzAsAAu9GN/F/GtB9uPx6zlJxJwqiDt8R3k5GGeC7YdhSbV+q4SnwFYl4qg9j+QlgUj+N6qmyJir2PekT6E44giLhDjVAd7WyDd2S+wE4oM27vfV57S2V717bj9rLDLKnDYkSlD5r8kg/WP2A3wud9xdU/cV2n+SpwFWNXyEhQGB05poiDNjVOurUlJwWWe6Bo7oiCmeBvGfXBHB/xgY4Enml0O6j98/AxX2AbHK15uhfySID/sEQ6NR+634J3N2yeu20ao+RLDusmVhHZIygBMepQ+Sah8R+4kmbXYuXeR1JKx16EA2rk6b9xiMLuEO8/cCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAuM7zhQHc1DcwRcKQw0xsvTzDAZpE+XkIaJdNNi++iexHBoGOgxnbDAfSurqpVXKvX7KdM+AEZA0sBGfuDlLUbFyf8Te2IOEXcprdny3VAqSs88cL4+Mllfd9EqFmJ4kL6OApXtKXByAZZMAshqc6M1FfmHgFSgrw7rXivYVCc8+LOvCNTDIkqzjV+v0SbDB0vFmRNMDRgsEw7t6BG7lxl6eoJkYmzSqSCKVnVcdtwZs1c5a0k1PZolw63xlwPMairUCM/UKQrNqPAL2LviA339UCQsqXjjYxtq863NzjQV26yba/Xmh3VvnXupIrPw0RL9EW7brKgcokKJ1Jxw7usA=='),('12a298aa-e951-49bf-b660-b16f514394d3','44bba29b-c58c-46f2-a22e-429ce3e4beeb','certificate','MIIClzCCAX8CBgGSZMrbWzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MTAwNzAyMjI0OVoXDTM0MTAwNzAyMjQyOVowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOPYSAQJY3FC55jeo+yVkdjxbalA6kTtREY1poIwRZGT1EKqvOEIbIcDeFzamWVmNeU9STfSVVk8xuLn8OKJeiANkRyVtXHwtPYc3bySwiwgiyEETq1Ba2yfS3EloLPh1tNCwwYDceVay5Ws1f0VhpdLAvNP7hBvUQPt6WNZMIhA5Oe4STXESNSCdGA0ZQ4FcF7EhYJ8Q5jqJbsuwYXxVXeO9fs2iNXCAkaUl0NcZlNz0lSMDL1GUQZxCm6n3wuvm2N/RVtf2SlBZEzCWq7TC1MceejN3A5F28mbmz59TqkvyFo6vPFEbHznM4lYNQ6DrED28VuQKQeZ/F7Yt8+eU5UCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEArNRBnQlAItsrjhxCcl67gmQwT2iMaxC/VDtv8xlqtj01OixJM7uIzDlqV/DEIEv4eBDnf+KbTPjPmQQNv1gSND/94+k73C5M+4AB+Q19UaGzvbx3FwrZyvj5UgrPI93XnFYcOBTMgtgxFDSuYqvOAhecXegToNcw1S1qhxE8+/bziunXzkPeQmVFwUEwyAdR2j/YCbSPozqelmKgZplHdZ6v2SWssWwzSVuZbbWKcgFfHLcREgYIl4hRcmI91IXjmAKoMA466FXAdJXhf7nOcpJuc2W96X1kjAHC2q5S9Fv7XIFytOdrMCTlh3GqlGbNPXOutXIp73lQTwXh+vfHtg=='),('14090c79-c219-4edd-a6fb-042696d874cd','dc5fcb1d-5f80-40bd-941d-1d905418e3ce','keyUse','SIG'),('144a77a5-76a9-4720-9f85-6bbe13cd53ea','7a527db0-a102-4430-bafa-eadda1525460','host-sending-registration-request-must-match','true'),('14ff9046-6ea3-4ea5-947c-144a6d1d4b17','dc5fcb1d-5f80-40bd-941d-1d905418e3ce','privateKey','MIIEpAIBAAKCAQEAydGKF7ps9Xq5nbh+ieaeC9dXm/Kr5eXxul1U7urYt2DLhXzMxhCmOBcIj+ZjebQWDWk5izLZOtDFRZBS3u0AHtx/XNisMQSTNUkNFULIXpQVmuQ6loBbrRRqIGBPEP8P+sHGF7CbreILugIkffxVOv/5tSMTK2no6npQcOIuvGkPJlq5SXUT2fqnTalBtELMxaQYp1gHzfz694pkykzh6Z4u5xeHZtB+Ha9iteqRUHX2KPYm4Xtbfx/Mp7MOclRsHvU+ZPBtQIhcr6IEtG/14m4rjM14tzp6wyU2S+CyOn19zFxgl1Ohj+CX0CM6ykBFQmLDFX3wzshw15wh05XHWQIDAQABAoIBAAsSe2SE3lBzbLaJ9itDoz0cEdrk6+hffq0OTMgUy1H4NgI7UBK3vB7MqLQYXDHDnwgaU0VfQ0q2RHRmEB3Z281VpIkn+/5udVMRkG2vrcV+k1bdmZdDMIRk39Op5PyWOb60ndUT496cza7lSjI9Q0HK5Fy7MWSK2XPvxPUEe7LraafOGpojx6xPykR1UhgKb5FRRGjg8eOSqyqmClneVL2BlxdU2lMHp1xV7XOt148hNpGADnT+GRUwYZjYtrFSdv5OYLHGiDQ9SJUUhu3plkT9TLxHmxVfvhc8gpePXgNFjTDjamCdfMMGWkNS2sm+wXkOGnK+Ccg7S4gchN8N7BcCgYEA7yIegoGJgJw99OmJrIaII4jEMrNEDmgURKUUaYHkaLvFcaSx+XgLXszqMX5KabLMmCV/ODLeLomG7FYtfX6gw+lnX5Sf1GM25JRB0+K3DgSpmUVUqUM2c5umnZDk1NCYx0+CguKTDCPfUiET5jvEsCXjJrW/EfxZ7A7DKTPJ+ucCgYEA2A2ml/OlPiaHSocu4xTXs/iR4eJ3YtgcIyD/ZdcdomFD43a7lrLbTxdvBQev333+ZtPAafYqib+PENxW/6FGxQakefKnG1HEU+AzXpruwXLI5gpboMhvlAZzUteuLi4m5WCTtwrOp4qc5SjW3FP9HZRt/RMinrkB/bBi/mv6I78CgYBmSLHEIKQv3qShnULGCMUybc194i+5+cqxkeqpNmX8ZlSNx2RY0IAMjJmfkeVCULgyW9eOsjNWtHyBmlra0s7w/WS5/VhgAA/6tW9ysgaaeGQSqxULUTR5PpqFyvQWEyNGHTw1v7Ql/TIIbx2T3PzEW3BNnm+bwdS0o5vWg9BhAQKBgQCAVsuJI9AatSRUnyy4856WZ6ewuKgWbS15qJZN1pTh6kk7i0IvaJthxhfKsyBD8EH4rvxzdSkbnlDLwTdkrlatnx6A2iVt0wp+kIWzQvFktFymWazIO4gcNCC5KylqgTvVsaLNbnwHhg1hCvtm8fU/ZvZXCNDd3CRUoDyNyXJTXQKBgQDDKfku8BV6LI3zg/PF4LwE2hjfFTnc88ClbIauxtXs/mkfLcH3A+bTLxXcDeURINnMjkLGux0gk8d7RSCtdZ3VijiDQhGyENrstOGr3lFQZT6HK1Lsvba30gkNCeDDBxtNpj75Id75pe2tZJkEeeLoLDHiDDjomy4WDerOwwiZ9A=='),('15202064-d9c9-43cd-b170-d7db25b0acec','c5ef3273-ab26-49dc-8d17-5d88be900229','certificate','MIICmzCCAYMCBgGSZMbieTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQxMDA3MDIxODI4WhcNMzQxMDA3MDIyMDA4WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDF58n3VxGkBAmT/FNe9392OShCQ4vYDHSAgn40Usu102WpdrGJp9OAiRCvqrgw5rwpaw6Txclpoc4JItETym7VJ1a6GpuNquu7XLdwM2400xZLN05wLqIWja7LrpL5CqTXbXHebuUqZnBqAzF2Z/y9amzJOt8lE+LcHxj7RS0bxc/Eo8iM6cOUt+FEE11M7G/5To2AOgWizYgOIe8Y7AG9sn4o63LQ/G94VfDeEELVNB8M8b41LLT1yCUJJAjRlzSxE0BjmLRHT54kQpB4BdgJZXPT1wG4rCNFY25yHe3iOb4XgekR9Y9965IyP8aZl4SAVw6e50TRgzfSIEOtVurdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGaOyYmHSuWbFhyvhy2aManFfLcQx0Kpc4YVcU1Kn/kZ8lURtjR2lxXz1VIX4gW3hLPIwscX+Os7gt61d3Uhp/qhu+kcnYLKxSiUs7OypZEA32mXWAA4TAv5I9uqYNn6rdQjN9B35dMNM9EFi1Kv4X3moeDpbI37yVeTx44+rXoT6PfmvQYOdh4I3YPIvzOoSf9KaXXP7qVoPngcAHI6+b9vz2jiDAciOS0QC62teoArrK9mVnyO0r4xH25XqyuB+5wYbl/W62GfSvrLOnhIOwEBk3mpaRDUnOpQSwMZMKASqD4Cdym0btaWjIzxCM5/48DWittK4N8d3K/UFNWJuQY='),('1571eb07-ce6f-4bb8-819f-618104ba428f','f983523c-8e48-4203-bca8-612d68e22549','host-sending-registration-request-must-match','true'),('176220a5-c08d-480a-aece-9b0b52d81d04','1d888677-39b2-476b-87a7-0206043d210d','client-uris-must-match','true'),('178fbb4a-9410-44ad-a9f4-b6fc739937ed','ebbcb555-5036-4434-9774-d4b0785a9912','priority','100'),('1805b43d-2ccd-4118-9798-586ccf8871fc','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('1abd0aac-0677-42de-91f5-581c1e839914','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','saml-role-list-mapper'),('1ade044a-a867-40ba-8b5b-7750f684f75a','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','saml-role-list-mapper'),('1b2f09f4-d6ad-4053-85de-a565bbba2a66','f381c723-6514-4d6b-8ab8-3d43fcdbc6c9','privateKey','MIIEowIBAAKCAQEAkzCU+m+XLSOId/gutFtcieiwCInl7EnHxKBt29H0FO6v6gfZuCHGtTUqJ87xBd2jo/FPKQdCq/WvG8OEnPKpragOb/I1GvWWIYXkYS5qEMcVII1yuXQ+zOwtV66qI9kc58mYJOP+e5xfADWCARdZ30XmhmTOZH587/ZGMRgL7OqTRKFBqkMcJZvlkZlngVLi+OmHxLlY+qv3VmpfY8jf1BrNO2VihEMRmF85xIQ6d5meLCam9e16jKppczZXxz4T+nd9R/h8fRoGCwkwf8NHwzP8eC8zWznLOuvIaCsPMTKAEi8cQ1n33iu/nRhC3tp5FEz5es6CG9iaiNxItBd1JQIDAQABAoIBAA5J1wyArLJLEsJiq1YC0HbqybvqdxF7EBN8Z23BcepeSWF0paQEU1/f61m18xvYqjwN/ttCwywiS39seYEq5WHgQJaJcrJNSOe0MbllYhKC4QAp+wsZx8bo3nX2lLmqJ+4wWb6rC1dAlNBWYWpts+HCzWAahRaoWMSKqcG2TeIPtbi0aRIZcBaWAqQuy/6c5749f8O2Ut5DVh+D/z/Yhth1+ioiNbxpFlnf7NdYiw9/E223BPDJH4abWZOdJBTwsdqzvWjL3ZwSjKfqbBlAw19DDZpOcXSwCW9Cjd55yG/mzb1OR7qFG5d3RopJ5+BeKo1k14oZwcC19r2OhpW2BzkCgYEA0BYIR+jpqXoNHyPkKPs3AJfCSYqWe6QbSdnTa6Xy8lt9UUbFIhq8NNQTfK9ZNfTj+QlGXoCAoqJWTfiORMQtl3cD6l/LkXzajCcFoyxvW/Mfmw2iHSIW6e+cyoRT5sH7XrHgBoV8jrWWUElpBMdJA6dKMYTPMFKa7L54O3xnkc8CgYEAtRTreXP9X60pznfzhuWuLb27uXhsKBQVDFX0mPgHtzB5UxGAoQqHovHqaX7cNqWNDAka7M1ih5v9Bd9OMVlOLlA0EoXw8hXj3PCvnPOGRm4KXdILNISQfGc8HVC9sLI0Fi91RTD+uV8xeyy3H2tDcEr+PJ2pNs6k9Dpdcl5fSssCgYBhkuNBLQNceCHtBzx2xw3Mll0BdR4JTjOJlr3fzYo1gRcrZH8N9fFo6EVXAzZW6cV4wpOfvqwTFwJXP4Ue08r5KlLItTDUwPIOJEIteKmjOUcJwwPQm2qZOcWQ5Soem7mOduQwyqlUleutLC81kWk4cFqHC9rHswR4nPvuEPDT2wKBgQCUyNORv1P4QPeQxc46kI1E2BhelCuJ4rZIpHeNGH5+bj3BmyftKhG4OL06YRnfbLcvpGuTFk5WzjxfjtNYiOBL/WpLrfIDdyj6aGhitVUmmVO7MtIyHJn7HXevPqAdhs51TBk2+MLS3PxzEJKGJkQLCBNNCt32QmQWp74QMqppcQKBgDPhGPs+Jo+hb7M/qXkz2ij7RxZoTpGwFknG2bTLZghpEgJWKPUZphBQa66XhZlwbZGI9HQcVrlkQN24LZF64zm4bfjXyXtA7x41n/DYH4mVZp0dDC57oAPMjO1XQTb9mutHJXbJYAU1gBgHOyB1lMyEhu+q3KaDZa7pAfAF4C4I'),('1c8f1201-273a-4a0c-a6e7-0feefc9c06c5','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('1c9e21db-7fa4-4192-8ef6-6cdec24c432c','ec4d4b3e-0046-4f37-a54a-4bc5b0362679','privateKey','MIIEpQIBAAKCAQEAzqiplr7+b/o6wYCqplh2T1GFKZgdyQWqVV/O37kGwFUZT/u9O6WPCVDZWXUoGSOeih4rP1Vb/z6Qf7ravBe0dhn72aye5c+gl4rITjWwLY0RAuWIjpn6Nyj7ZjL95UEZ7XvpfDAeYkbyxzM+QKG79RexUjuyGZjVqzVToOFtPzEis39fZrnRthHaMSA2IX3qmKriDbalhiBcPt7vKah6VzURJPw9DFqlmOy3lfAZfSgLh+gL8mi+I+oT7coMLwvoeAcRw9WNC7EOn67xEG4KFIiiXYcQNFpP6exT35FgYQ1Oiehp2xhuzp+E99t/9oN7VHZjr6Mi+BrFpRMkUEtBnQIDAQABAoIBAAufuIRCY3DceAwUxuR64tK00OLlS72YHDvXmv0B/QN59eXGEN+HQSuiuMr7mEELvBnkNwYFsNpDRGDu22lLgwrGjOAyQbDG9C857ujZQ7rYLa4GR59PwV9zZmqZ8SaBOipdtyUVVswr1fGG7Bg6EKapSb/InEysyE3sPrM0os60RLDsTzwsUcfFU2VS1lsb3DLahQd6itlI5T7SaZbbp912uHKJddXLfRqgNdzkeZ0D3uDGoAiElm8UyAnzWZpQYvIfxqveshnltEwwdrT0KPXIzj4Vyt/9wuRBcrO3pHs+vox3n585zb/KfPmgGMcv/evKtD2pQibAdVBoP/L1pskCgYEA6WitDkuhZIwzcPM1h+l4MwZz20/FWQd+Mcp+bjeZLKLbUrHY6UoIcZgKpZY6ayQmS3m2OaUxhrScMxQpqzCCkie6MuOCmfkYyzes0WzmPxlM1sm9WV6/J/9A3Q3AaZN/q3a4Ir6VQ+0ZresJukOjXbrnf5xN7OKAH50HZt5hGmkCgYEA4qku2CWzH5ofeLxP2k3iGp9yZP/X0to3qpZKfr06Zb4IUryM2AViemo/Wyv56Z8h4IMKF/KCWC9Pmy2qV0KhWQ5crx8CaPhkVoL83sNu789FuWym6BH2shBAe8p7ptMprpaoXP9rS/dLn++PTPHlwCxuMkPgZYiVc+rN2ukqfxUCgYEA28sYe4e4uUhVAJ3l4NB3wgTngLQDsKyfpx96Iyvz79aEFcEn87clcGKuU/O9mzr1XMmGUY4/rwvQs0DfZDdQHXWPn3Aigf/R2zvYX3Xe87hNZU2gItJXy8BQQlk6wbCF3t7y0rUJNmfFcMMN6/rZkd/5M2/q6ZD4+cwTNklew1ECgYEAqej5XL6mEEKQ5QkFMzi/DgYI0v2W5FEA+bfAEFH5vNs/kgYV7rnaoLmU1NuadC7+TjbtEhaQ71pH6qPI1bD1ErVZdU1hmR7a2J9IwBTwzIQsWFvCoqUUsVbNf/7BwsT4sg/uFgjCfifbYQFMAvoyqGSmFrgbNwG0Rzj1J+0yFiECgYEAorashs++e543UtQbtjnyFEwnlgp4cHIb3q3e1MzosQwj2cLW2AG4CoRbub4MUGWZ+ao71vjB8Kl9LMvazy0a3wUDxdBOHAk3OF14rivyETE9NN6Q1Ktr5NL54MoVWAp7F8TsLtArJ++FYrWIRcn+2STSS49mUymb7hTUl+eMZkQ='),('1e660370-7b78-4a28-b4e4-c6ab1db8e60a','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','oidc-address-mapper'),('1eda8873-69a8-42d4-870a-a65948068808','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','oidc-full-name-mapper'),('1f009247-edff-4ef1-a441-cd843b4c6abb','84c5d115-af4a-4e33-ac2a-712899750b8c','client-uris-must-match','true'),('1f36da77-7194-4296-a3cd-4248908a1cf1','73b2640d-95e3-4297-9986-64abdcf865fd','certificate','MIIClzCCAX8CBgGSZMsWqDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MTAwNzAyMjMwNFoXDTM0MTAwNzAyMjQ0NFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKAr3kWWCLfeXxMatbfWtyVvjklDKR3Vb3MIwWB2/j8g9Q4xX3pWUBr9ANheT8QIsHZZNEGePJJ4MZouItU7bN2DKYBbhVdf6H5nrTqGc7oogMnfLAz/WIWWi/pEGChIISCnu8O7mO+XAVI2Ygn16dbVIt/8bPJyNPrmgZO0vhuLalsI54uMgcSfKG1D3h8SltKDywRE79QZ9t2nVHm6p9UBDz5b5U3Dlwmc7fX94HGy6Hx7vBanQ0pmONba8mSGONkf7D7OX81lD35O70xwEPqmmNVmvSK2GShP72rxOU2652voDHCKyOFNrthlk8kxsCP3kLfMHfFDZ8oj1ri/5sUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAazUL8L/i4/OQJ17mJOZuOBLbhdVNkIpYNPU44zH6tvMiRW1ytZNbbzu4H8OcquSHd/dnKZeW20KTMA0/okzVCJ3a+RHCR6S2SXGkrUw2f0TDpJRJ3hs/eLOWCykyf5jdCf62ZYQuJQgQanK1zV2TgaBGUkOSbA1zwP+4ATTEqc9CEwb1Kc/E7PyqNQZxvKp0eAW01JcABgbMl9kOs67ci4HMgCs1ktdqnn1sHk09Cv9jfV4WfElP2lM8Ku82RhqR9HBUmt5n0P9U0mkkRmSdeYZ6tXXeX5lpRM5LVUk0K1DbJl8A4MBgKNxVJrLmTIboXIro3sYekEeOr1B3vSE5dA=='),('1fa8b0d6-ea0d-4c6e-9abf-13138a78d06e','73b2640d-95e3-4297-9986-64abdcf865fd','keyUse','ENC'),('201d110a-5a70-4078-b20c-a9c379d089c2','3a690546-2137-47a0-bf4b-8859eb9578aa','secret','5ZAOBV0csqKW4hekgI4nzA'),('215a2bc0-c89d-4378-b9b3-b0fc69cdb97f','2fc9c3c0-d564-4ac8-8cd2-5694ed3f7b51','kid','38c2be4c-ee4b-40c6-9521-f15fe4b9c32b'),('2645a751-5010-426e-b1f8-edb0792008fa','dd8ca8c3-b8eb-4a2d-98fc-b7803032dbbe','keyUse','SIG'),('283e1c4a-22e1-4db8-bc9c-a39378071c3b','74f5026c-a99a-40f9-a847-567f1c7a8158','certificate','MIIClzCCAX8CBgGSZMtTCDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MTAwNzAyMjMxOVoXDTM0MTAwNzAyMjQ1OVowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALBMDwMrRREgZB/9ZRm+28xeEO41Rjx1je821vo57T8ZGosAnbsnm17Qd5gEFThV2swfw5Q48DOc0FkO9aRvd9F6f9MTSs0zBW2QIdv9h5tfY5B9gbe3XiHWGAhhiSGxWMqrK4IUdr0EWswnBFE66PuCeufP4GVkJpLvWIvS/7HMVPjjwFYqTnheJk9AdYR8FmWwwk/G7mO99YP9qFi0mUCnHnOcMiSlXXVzjs1vltPIs2OLOteDPar7n3e/aHG0pK6WWSQx2HUx7o3o1aBNr4mD8riyaRdTXKSFER4kSyR95PDltvVFvLcPOTbT86zg/M/KFfXEBjndvkuUR62xjP0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAFa1JNyo3pNBdBkeU27siPHpcBxbFevuUqUeQDvSgcWnsz3NuQBGAxNzUhpqhNOsah9mV8/qFwgzaEatO2ztOkkOUBbCV6NtQ5zNSn7JnabYBykNx0Elsw4Qln4qULFk/bOiRfXQn3DXwmiqSiF+I0oeXrJwXrT01BhLV+u9GQXO7mj8QsxdjtwqV4WdakD1Hs8pymnK3RqCHoDwfLzYwkd75WaMPdBZ2PYt6nNSoMNBU14ppDz04MQyS0ppLQtvNvG/d3WZjMGPzVYS5pSWbTKuEkJ4pJ60OgXVorCGhZclmo7uROHaUtcOI6Vq+F0MWjDUNfSDu0MZTl8D2x2lF7A=='),('2b73fa5b-fb79-4d1d-8ef9-b43a439936ac','298807d4-bad1-4320-99b4-379b54048c27','allow-default-scopes','true'),('2c7a5384-2b9f-44a8-8eb7-6a5bd1a7d595','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','oidc-address-mapper'),('2dccb6e5-0827-4953-ab6e-384c68d5d958','31273c0c-b124-4014-951f-7a21036f29a7','priority','100'),('2e603eed-3da4-4364-882a-a8f9788d8a13','2fc9c3c0-d564-4ac8-8cd2-5694ed3f7b51','secret','XCsx776UBN4F3qrjvOntifmde6PMpxgjSu12YvbciEatLrKloaRxSjDXHwCBTR6QEOQK4VwLj_v5Fpxyb7XeG6PFjWxZ9QYIHAXF6_3XaLxwtVmAV6hz6NCkHnbx-5_VZvMaxsYH4P6rOG2GeCKVEaEpuZM9Ng_UPC-l8g-gkL4'),('2f0e683d-7b5e-433f-a34c-f2cc3f5572ba','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','oidc-full-name-mapper'),('2f775966-02a0-48ac-b5b9-d490dacd56d7','2584aafb-4ef7-49d1-bf5d-ddf3ed831639','algorithm','HS512'),('307840cf-461d-4efb-95fa-c820037d5602','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('30a94b8b-6ea3-42de-b9a8-353817035bca','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','saml-user-property-mapper'),('30d6b7b2-5bd8-4da0-9b6c-8ccb1eb3d722','74f5026c-a99a-40f9-a847-567f1c7a8158','keyUse','ENC'),('31347858-bbaa-4222-a6b5-4c7cc2c441b2','ec4d4b3e-0046-4f37-a54a-4bc5b0362679','priority','100'),('335c0f3c-3903-480a-b861-3ad723cec7e0','73b2640d-95e3-4297-9986-64abdcf865fd','privateKey','MIIEogIBAAKCAQEAoCveRZYIt95fExq1t9a3JW+OSUMpHdVvcwjBYHb+PyD1DjFfelZQGv0A2F5PxAiwdlk0QZ48kngxmi4i1Tts3YMpgFuFV1/ofmetOoZzuiiAyd8sDP9YhZaL+kQYKEghIKe7w7uY75cBUjZiCfXp1tUi3/xs8nI0+uaBk7S+G4tqWwjni4yBxJ8obUPeHxKW0oPLBETv1Bn23adUebqn1QEPPlvlTcOXCZzt9f3gcbLofHu8FqdDSmY41tryZIY42R/sPs5fzWUPfk7vTHAQ+qaY1Wa9IrYZKE/vavE5Tbrna+gMcIrI4U2u2GWTyTGwI/eQt8wd8UNnyiPWuL/mxQIDAQABAoIBAAGQIi6vCr8Lq7Z1tLpqYiPEdYlOt9uJmJbTjuR1U5RLDUVz4Kjz4qyKmCBJU/AYt3ULRwlE5AmB32AykOfWjzu3EkLqP0K2P88HDYQDnWl+kibcUUhYaxjhZsDn2EjQCiZpbdmk0j4DEdgTsVImo7pOWdeyVYcRYaDRyS8nWmB/COTt1+t3AuOiDAVe/5e1Nwwk+XhQsZ4Y2MmigP8UwDtxfxS1+v2eyWNtU3PsJhhXuto/8+Dq6bu97onIvuOk2MB4KCIcNN9MtSNo+EZB8jT7pWG2Mv+vqzt46yOVxdO8vlKGTvjI/ZIGbsB/SckLJwvjhmQRkqSUedg/J6LRGNkCgYEA4M361A1OsTVBzxCM03db2Rr5meENZBsTz+Pvnkw9FLoFKG1rQKe14PtAJyxN47ieneJvGpxGj6FUqKA/BhiIXHWqya8ohYJ3ZW9LrB/2Qn+Rl6GYY1b+LmjNPV2iK6QTT4Mgd/s9Rf919nKLjer+XPZMFS+r9Ap484E1zOkzCJcCgYEAtmXW3bNC2I3hpPj5Sd1GiuvQnMLGMtmZqJlwdDQuWJXjjSFP2LkMcfupxbveGxJCfiedLQvEFRGV6nv94M9E1KgREWVT3LUUp9stonGbTnKUtGtWOeFQJtPFwskkHnx4hSxUb89KWfRBNWiLk4993aGGW/qvLqTRnNM24FC0OwMCgYBoXfinXg48ozcMROi8fFt97dIXqK4o3ZFTIMVsPoTVDI+8dyAmAjakXsEn7p+yq1GohymBty/jGslNCCh6UgVst4w02kb7xNhdlVASdzxDHyqetP0kkYysSyeN59yUWjZE4eG/EjseNj2zzvYPSxwQWKB17Y3tXLdOhZxOp61zvQKBgF6ndtvSXUw4RPLx6Zx1YlhRjA7t3SEiX2VpSzxin/KExnPE58TWMykrqqzck6SE01DYie6IfpdYau4mrldt+JBLL6BRbzXIGxII4iO8xRXuzFDcqwCadpfPqn8tFrtjaL/jg2YKstD/up9Ww6gt/Ol5G1q8OxD/o2+5BG9gMke1AoGADexz8aq4tP/0HWbhVLMzGBmj/bJu203KDVq9EUpGx+hL6SFHHBjp9+C6spLpvIFQo9fUyJXMXZgNs0ZeX9QitD0wVr+Y3eByWTEfbE9UPuC0YuVL24hPNH+iUnQysFIsWslQ0ngyi3fCRtDxL3rorpGCc9yLvoyT/+RrU8xI6KQ='),('3453ac1a-420e-478b-9515-3ff2153ee95a','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('361b1279-a1a6-4d60-a187-510d1b720464','c5e62d25-ff49-4d65-ada7-d0568f4c68ba','priority','100'),('3639c008-bf8d-4749-994e-0ee376216d7e','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('36897333-d76e-43f6-9c0f-8efa8bf7df95','76df18da-5af9-4b9c-83a9-32b0eee603df','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('37b3dd32-fb1e-4fcf-afeb-bc57516e97ab','ebbcb555-5036-4434-9774-d4b0785a9912','kid','5a05e657-6c17-44a1-8878-06e12346e2e5'),('390bb7e7-e17a-4234-8e7b-ea3bd2f6e630','6e397140-d1c7-44b9-adc6-52b50948e81b','priority','100'),('3a179306-6868-4071-b00e-87450cb7f581','475c755c-1913-4039-8b34-f1650e372928','secret','KC6ZO5-pKFLgnEscsc_Ghg'),('3c9dad46-11c4-4b4b-86d1-5d369920df3c','dd8ca8c3-b8eb-4a2d-98fc-b7803032dbbe','priority','100'),('3d85dbb0-c374-4e8d-bff5-254c5af60fe1','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('3e4ad285-ddae-4d3b-a019-d37085347b9e','84c5d115-af4a-4e33-ac2a-712899750b8c','host-sending-registration-request-must-match','true'),('3f604dc3-ae53-485d-9aac-0f9eb228ec8f','dc5fcb1d-5f80-40bd-941d-1d905418e3ce','certificate','MIIClzCCAX8CBgGSZMraCjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MTAwNzAyMjI0OFoXDTM0MTAwNzAyMjQyOFowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMnRihe6bPV6uZ24fonmngvXV5vyq+Xl8bpdVO7q2Ldgy4V8zMYQpjgXCI/mY3m0Fg1pOYsy2TrQxUWQUt7tAB7cf1zYrDEEkzVJDRVCyF6UFZrkOpaAW60UaiBgTxD/D/rBxhewm63iC7oCJH38VTr/+bUjEytp6Op6UHDiLrxpDyZauUl1E9n6p02pQbRCzMWkGKdYB838+veKZMpM4emeLucXh2bQfh2vYrXqkVB19ij2JuF7W38fzKezDnJUbB71PmTwbUCIXK+iBLRv9eJuK4zNeLc6esMlNkvgsjp9fcxcYJdToY/gl9AjOspARUJiwxV98M7IcNecIdOVx1kCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAqvX70McWw54ZwrHjKKJ6NfUwjdVO9lTtSM5VjPGguOB3aSu3W5lmSf0BzjmDAOLvt+JnYJtIiOqTukRejEkiCGbYW+DSndCEfpwQycDSSCrXaj4oG6PZGyZZ+325ojPdu/GwPR1uuKSv3gLqC65zlbzFxyoDvEJysMc0g5vilDKzqVV3JqVQnXjl79b71QheQprpWHiaYLAzczuEPFq9rmB76g9tvUHXL7KnjcJHCh/lO4hA/1YXk50zmcFRa3ginqF2zwNUkmcATgq9pY3tBka5zBRaIg2EyJ2xG59YcqgHBwsbT8XbkMA+5lssA+Cvgr9wvfLnq2S6Sg5reMusnQ=='),('3fce2e43-49ac-409e-aa99-ba16f299d020','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','oidc-full-name-mapper'),('45026c83-7291-4d1c-9606-2397429d1a87','ebbcb555-5036-4434-9774-d4b0785a9912','secret','8bOQOOCCvYQRB3anuYpCnw0yKUaehNXne3mvgAjctDbpbsxtpq9Pt1XrcPD--E6-lqlEGmSqcenT21-hz1g-Z8gkOQkvVmH5z3fXSIS3PvOI-5rPEAZ-RFR6v5Jtl5InlwFy7n2obyDG_IEnkq4Aiji_j6XRJp73Kum7JRnFy88'),('45eedf1f-325c-45d4-b569-d7cf84f8e41e','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('46dccc96-df6c-47c2-8172-ecb4496aa416','ebbcb555-5036-4434-9774-d4b0785a9912','algorithm','HS512'),('4a07a2b9-26ad-41d0-9ec3-8bd01d1d2258','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('4be79c01-36a9-496c-b8b1-498e43e82a2d','76cb8947-a79b-4685-809e-edd31d669ef4','allow-default-scopes','true'),('4c146387-10ea-41a9-bcc6-c2ff68651552','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','oidc-address-mapper'),('4d9d91f5-b140-4c6e-a120-ea6c5897e009','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('50bc742a-0673-4647-9386-582601d2de77','44bba29b-c58c-46f2-a22e-429ce3e4beeb','privateKey','MIIEpAIBAAKCAQEA49hIBAljcULnmN6j7JWR2PFtqUDqRO1ERjWmgjBFkZPUQqq84QhshwN4XNqZZWY15T1JN9JVWTzG4ufw4ol6IA2RHJW1cfC09hzdvJLCLCCLIQROrUFrbJ9LcSWgs+HW00LDBgNx5VrLlazV/RWGl0sC80/uEG9RA+3pY1kwiEDk57hJNcRI1IJ0YDRlDgVwXsSFgnxDmOoluy7BhfFVd471+zaI1cICRpSXQ1xmU3PSVIwMvUZRBnEKbqffC6+bY39FW1/ZKUFkTMJartMLUxx56M3cDkXbyZubPn1OqS/IWjq88URsfOcziVg1DoOsQPbxW5ApB5n8Xti3z55TlQIDAQABAoIBAA0gcA+5eb7z/5NVWmTePiOdTzfV21liwRD5dNEh1lQ7i9pWa2DcoyIJL2VMG9PVdmvxYrdCWTP1tjCq87wddwmDNpXKw0Qf/dEDGzxKyUCRFGrvzFebggSlTcukQxSyAXY07bb6OlTgLQP/y+lTlOhBBFe/xmOwgh6jlZNpd0wWMyy+RnqSOP0QkwPyouh99TCzc+CGAvD+5pWzLUJvvE+LeOUvWDisGUHUJxQnVfp5GUKiHavU67EN+B6fCaAcU7q1XApV++8aMzPjGjlUsughCYISysh2YqKRH8heczEzn80Uq10czSrqweZ+RQL0wANrk1Ei3vMth9jbWYq6c1ECgYEA/fzkKK1ELExBYyJGU4jilzg+xiv0Hg3MPi6Ieesf4k66bFN6w8wSFPGHlPZDQXgHXMNjudv9sLnONLXbesLLIdIcX6xZwWOWYWoAOx2CEQYsmghvngw5UzYLFozciTGalC3NV+dUfJmNENQ3WirTBlKbhT2wL60P8wK7RwTtx6UCgYEA5aZerjbJVSTEzKjb4/ugrLrg5pRbZnq8kg/2aAo3OC/7IzbLYyHE0InkFJHatQg8Ju+YjD5Im44R90tSp7PvyqOACOj5ohBGJ0Wozxv1NbS6M12x73ohV4I08joc4Isa4/NxR7IbT469zHKR7hQqwpDExOejY0540DpjNvxsGTECgYEAmU18VYUHgglg6jo04pTb19SOJ0U+aql/XwTtQVGHBCzq3xmgHvBc9aE3adUekTSmlPomhndfb70m1q/x0u4id75/e8vmvRCkIxY9H3FXIXltkGeJH4dXTn9vP+Qz9Oco20muCOHLIA36lG7THix9BPL1hf3PC2fVGaPLcDlsYDUCgYB8G+9rQ1yHUTmySUec7C4na0+EDYVf2tDyNwI5s9un1/ZnT4OXbXaKJRtIKpMB5xNrD21nzXk76Am5ldFzpIDhCH93UUEn3perPbA/TaK1hZhjji1NeLlwK4QlrFZS25qKutPrpUuxMTlNtlU7T1bUk5xjtbPNRWlxTzyzSLO64QKBgQCPcjLDJl6hrF/CYIfveQrdc73LkoP9/2XON6/C+LZI3c834nuMxHK5MJgIzX3n0Jc8ZC2PlrohG6XbNyPL5a53hu+PHfLn7tdDsY8ls4Q+iAkkbygiKI8DeUbTf0n+ct5wP3rZAjYEYcEFRkw+zCv+DAnEQh3X13B9NsmkA7M6+w=='),('51e56835-55ee-49bf-8cde-9674ddf90e63','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('55ab69af-c8f3-4608-918b-1ae38f615e76','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('56516fbb-ceb8-40da-a401-0b9f4d375bca','73b2640d-95e3-4297-9986-64abdcf865fd','algorithm','RSA-OAEP'),('57976ee2-b368-438e-8985-a6189c769a26','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','saml-role-list-mapper'),('58fcbc3c-5638-4b97-bb63-0551a8442f0c','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','saml-role-list-mapper'),('5951d7e4-ab1b-4e76-a49c-96af48cc8ff7','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('5b023f09-4338-4f9b-a2a7-802b61dc3a10','2fc9c3c0-d564-4ac8-8cd2-5694ed3f7b51','priority','100'),('5b1ff741-279b-449a-a950-ddeb084b343e','37af2788-3bef-4952-951d-de79e9505738','host-sending-registration-request-must-match','true'),('5b43a8bb-c281-4f30-9294-3aa542369e97','063908fb-c467-4bbb-9aed-99ed352de2f1','algorithm','HS512'),('5e92725e-2fb5-4dce-b917-2d90c7833e82','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','saml-role-list-mapper'),('5ee3d979-1028-4fde-ace6-f6a5dd57f2d8','8f5001ad-74cd-4279-99a6-2444776e0aeb','allow-default-scopes','true'),('5f2dd040-b581-4087-9bcf-2a591657f72e','31273c0c-b124-4014-951f-7a21036f29a7','privateKey','MIIEoQIBAAKCAQEAw8fiKfJZxAcIOOgwz+R/MCwAC70Y38X8a0H24/HrOUnEnCqIO3xHeTkYZ4Lth2FJtX6rhKfAViXiqD2P5CWBSP43qqbImKvY96RPoTjiCIuEONUB3tbIN3ZL7ATigzbu99XntLZXvXtuP2ssMsqcNiRKUPmvySD9Y/YDfC533F1T9xXaf5KnAVY1fISFAYHTmmiIM2NU66tSUnBZZ7oGjuiIKZ4G8Z9cEcH/GBjgSeaXQ7qP3z8DFfYBscrXm6F/JIgP+wRDo1H7rfgnc3bJ67bRqj5EsO6yZWEdkjKAEx6lD5JqHxH7iSZtdi5d5HUkrHXoQDauTpv3GIwu4Q7z9wIDAQABAoIBAClCcS/c4r0UrE9t44eUhJdu1m2i4uCZ9XnXM4RTYfq3SKeOsRo0NU3fUfzSk2NiBeopcVUqEzc0kcFaA/6VRttOtAWTU5gVM0rxRlTYS454dJuTjGrdgeFqXVK2rtPvWkpBuqyTdwc4QYI9AFoN6ADjAgRxsnGlMbGE0bQ0iM8YPwK4/Unide4oOYqDs7jX/CN3zPTWrXGYDaKgl8bixBxxLoVyU+05liWQs76KAyrPzu3i3pm76OG6NxARYGKp2rM83C8o+FKX4SJBIyHglB0iAybxwxTySDclnI5g5j1kJ1w9xA2NU4gd8h8ja1dpXHWrAq3UFXIw3y5VWpmQZtUCgYEA/JMoGqln+Fq1b/UMz9GsEQXhRONAMBQtgu2n6DcYdAagxlKlx8yIbBdJ9rIF9OAyyWHW5ORAqlvs1u3kdlVx8MM89ms60mD7g962tq4kAIncgE8wxdOzG90crxsjNm0ijo/USZqT6eY7T/Coy4D/L1EemcljVppNf+stuiymem0CgYEAxm+PQZ0Z66X3llC82WdowSKjtOwlb+LVyJjfRSaJsvJaLpMWSRHNq3p8Twg+WmooLGr/noz1a3Hd7ZpTkBpRTVtJbIG02/vtgf4D3lBjwYA2FKdH2BkyaPlRMtP399Zo/Lyls4rx6a9FyRUh4VVaBzSq8MV05Bg+Koew0/DEqXMCfw3P/mF24jiyvTliLVEwJjjIGYmq49e9Qr/mP0hzuuKdei1eV7KVfOBsZZ8YHTtHB3/72cSqtt6aKFmYqOXPxmtkQfE36/+VTivoAhX7b/yXjXd23TP0X9cmQGtTEJnpXfpt4y4jRfOEo7m7b3+xjkMILKQ8XzJdPd/A/L8xsekCgYEAg6pwNowkL8zO7CkkNWi9BDGUyC5MZOHxEgoFU1/PzDGsjuy/w7oRaq96HgKNRPbdMyPH+o7zJNjH9akJuzsLKTXiESI7PB/8Jt3B+VgD6NfGiou4SvXlEewj6YLmLMdSoCgYFnqiK3lF57ei5F36v3890UZjWhmP3i5ssSQ3iWsCgYB7A+RjylAVO854TmuEsKI9LqSOTCZWKXFIN/yyVzrEAhD5i8PLR5qkFOwCKCZg9nGjEqVjZtI7Wj9a05RridqRihVdx6X82Te7Vz1z6xmAV7UG/LRanKPWpzxHbk6RMv5JI+J9B9OCb5ovGjoZr0s7XTe0WW7nhpYJJkSrPrM80Q=='),('5f773597-a35d-4b43-8e69-b45d6ee77441','acd8711d-bd3d-455f-a5ee-236beaa7527f','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('61943249-d573-431c-86ae-ba1c3611b1c7','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','oidc-full-name-mapper'),('63d8abb8-2318-4833-b3b2-dd9773d1c047','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('64995ed1-1d41-428e-b6ea-29ad8f60d7d0','063908fb-c467-4bbb-9aed-99ed352de2f1','secret','tX7Uawj5xS9ttoTQhaHtELD0HEGkEsVjGxUNFWtcWCW8bbvdr__DUeYfqxDQ9X-Te20T0bhwnQDEpT1d_EoH-t2WowVN2lKa-0KAlCrm1McQS62wjZVBA_2LnyAI6H0ioBvvdveyhMv3q6_UIcfXrHUtEIqtDdQsBTvO-UkDxlk'),('66314e7b-abd3-4dc9-82c9-63aba465df0b','063908fb-c467-4bbb-9aed-99ed352de2f1','priority','100'),('6904d9e4-753c-406d-bda8-6541fbe3c226','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('69ea388e-4244-4f47-8e4d-6caf8d0ef829','3e46788d-ce3c-47a5-af47-d6eb0be0556e','priority','100'),('6cc4ad5a-cee0-4011-bbdc-d470339a43d9','c5e62d25-ff49-4d65-ada7-d0568f4c68ba','secret','MkPtpg0U6EGaX4CXdeqgQQ'),('6da0bb3c-90f2-43d4-89e5-b9e911053aa0','f983523c-8e48-4203-bca8-612d68e22549','client-uris-must-match','true'),('6e2ad533-6498-4b38-874f-3d586df0fe5d','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','oidc-address-mapper'),('71070e57-3c6e-4374-a3ab-2f578af4c4ef','15ac69b7-f775-4509-b4ef-d55e48b62d02','priority','100'),('71254c8d-54d6-4f65-b5c0-1ec0d5f4a073','cb7d345a-517c-41c9-ae99-502ed5dd90af','certificate','MIIClzCCAX8CBgGSZMtSVzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MTAwNzAyMjMxOVoXDTM0MTAwNzAyMjQ1OVowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMdPGSE3RustT204dV5sG5OVjcLGJmD69imhGTdEOu/0k4lvcd0MNkYJstiboguEs2oBi4zHcUkoMXiHP8oeZbKV9FTvrJ5rBDR2d/2hDfHbfVbLH5eF7HFq3quyXE5NCbxGUxQTzRlZ9nuMe/8eG5RzsD5qUOB8NckeVmRRnHCugtu7X+h3+oJWEPKSvn5F37X1OUwJFrM383oHIbTmLhn/9XQZ3PQLDN0nywQIejARW+NB8VaKcabF+q82F3YeS9cmYM6p0u0FcXgt6q+YcmupszW0rfnFTtggUYf15RTchkPAGgUx1g+Xfr5BhlAJIyLYNSIn9DV5ezt9u8gumI0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAnBy0Bnl23uARRkFVfiuEbJeCqNvnG0k0QXakqRkDWDMU43f/QIXEFfea43dE4ynR7krP8Yz0qmxxokaKtRJGcYnrKAgNiVucVwyw/UAB/QaK/GdVBZTasQyMkL/WDlEh5+4EpzJFngJmvZ7SNTisk5sDlHvHWGeQHQaqv08rqfber4AjBRVhy2IRKQUfdE5S0q99KGk2f9BoYUNomQBM61Ym0gSq3TWWsNMaI0ZcR+Lmy5GiKOIMDnMZqTBOiL9xADmir456Pu/MzGCb1Rt4ahRa2dojela4cD2OtN820T7Qf71FMoqVXU2XsWcctZbzsRh151SxKyITud4R4KC8fQ=='),('7172a2eb-32c3-4ed6-a4bd-d2af98614515','7e201ac8-badb-4fb0-b562-8c594c00209e','allow-default-scopes','true'),('7212c364-ef0e-4134-b1ae-785a6e5abfc7','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('73b1cb29-7d6a-497f-b969-1444da78db1d','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','oidc-address-mapper'),('74c553b4-9acd-490e-9c8a-b86587485455','a20ece23-caa9-4d06-a56d-1c7662675429','host-sending-registration-request-must-match','true'),('74f6117a-3182-493b-bf10-9f9cdc068d44','bc2286d5-f904-4c50-9775-c00770d4be92','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('7519d139-dfd6-4402-b552-af4562bf12e7','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('778fbe63-270d-4da3-a76f-385c8b924ece','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','saml-user-property-mapper'),('77dc5cad-0b6d-4b00-bf23-f2a591f40c9c','c5ef3273-ab26-49dc-8d17-5d88be900229','algorithm','RSA-OAEP'),('78a624e6-8243-43d1-9841-fe863fb3d3da','063908fb-c467-4bbb-9aed-99ed352de2f1','kid','dfef999e-93ad-46e4-aded-16ee5ba5afd6'),('7923e38c-5f8a-4635-8e67-17dc5b1e8e0d','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('79483b86-16e5-4ad3-ad82-f2d892132f63','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('7ad4c647-9321-451e-af09-21ded2e1c06e','41ea6fd1-1360-4424-b731-a34958c78165','allow-default-scopes','true'),('7bdbb67f-c86f-4c94-8a3b-03a5123f98d9','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('7be0e905-6c10-4140-9fd2-e45adc745637','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','saml-role-list-mapper'),('7d7273f9-d819-43e4-8bd4-eaec800d6995','f381c723-6514-4d6b-8ab8-3d43fcdbc6c9','keyUse','ENC'),('7e22e19f-c4a1-4f94-ac53-b5a46767a0eb','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('7eb7f7d3-df2c-4f23-b74e-f7dc97fcd76f','c5ef3273-ab26-49dc-8d17-5d88be900229','privateKey','MIIEpAIBAAKCAQEAxefJ91cRpAQJk/xTXvd/djkoQkOL2Ax0gIJ+NFLLtdNlqXaxiafTgIkQr6q4MOa8KWsOk8XJaaHOCSLRE8pu1SdWuhqbjarru1y3cDNuNNMWSzdOcC6iFo2uy66S+Qqk121x3m7lKmZwagMxdmf8vWpsyTrfJRPi3B8Y+0UtG8XPxKPIjOnDlLfhRBNdTOxv+U6NgDoFos2IDiHvGOwBvbJ+KOty0PxveFXw3hBC1TQfDPG+NSy09cglCSQI0Zc0sRNAY5i0R0+eJEKQeAXYCWVz09cBuKwjRWNuch3t4jm+F4HpEfWPfeuSMj/GmZeEgFcOnudE0YM30iBDrVbq3QIDAQABAoIBAEGTsKS4wSur+tCCh82sDRxLjD+IyknotqHum4sS9FVnmwQwRFvstHSe9lx/IVFy416GDuqAW2EZMIBufQElztvqkR5RusGSpVIMQux23km6uGRsCx25FhSLFiR/0Eudb0nDBjxCWsVV9GHsdPNbObA6F5oGW/KZSE7QLyLzpSLSL+TDguW4qnlWUIq/iQaXzIZxcjZ2fIoUTfxZnVyu9mlMaVSkEiOi4YGr9dAVCPwqn5bKiSvYn3F2TWTE6MUJuHNOxmp1CZ6+DogJHI0FH2YZZKZm1DnFXb/UrFP1BnCYwXlZ5cQx24HkFkdcwa2S55B5/1H0s2uY5/xs0KmMBDECgYEA6ZrhaUb5LPWdDRROQsjGX1Vg6hIx01SRabB8QddI3WDH0ItgJt0lp0bdkB9G8INKLdQCSEyoeo05I5yU9BeC2x3qGHh7uVUVgQdRRasT5nPrk4rhLqCcsekjnDPqM7SNCqRC+W9I1kpGpOaOnIVm29iKEa0cgJIT9SnD2q4VbGcCgYEA2ODFiRWcptGlEA9Ts1FamurHGw+fAd8hMVx5GI1c8K3MzHEbvopj5qX4jI0NZkyXDFHCtjLPcotijXufAD0vlmRAYfNfIvuRPVeDIhTV4cvh9corOCNn3M+DP/abJ77fLb5Gic4Pm/gX4wXGFqvIq6IrxTV1QoXtHqnQNT26JBsCgYEA3Q7cWeR4rUvrh1H80QPvfI1tvXLkRYhUZoBExYV1BVCtJTKPFZfWJtpPli+S0MxcqMtkMYihMf9r38Av0GBjSvie6vMwmWvjgosrJFNE7KIrfh5BAv+n6E+njAwwhydHBJf2bNYbRfVZrngi4gj3EflyhlGblCsnyarxFIIB8ecCgYEAgOo7AR1jnJWJdF5n9nMpVGSyLZe/gLFNXbYGFV4SHM5yqiOhxkUk1PlbINDHYkOslZoUD5FsVj4cOtV80fuMyeyViKPNrVG0J65ZOG0CJdG3Yw7lWd1R46NF9UN1Ps7qgppT+54NET0LldrcwKUkB0HCmtsH9J7/L/bo2Hz0pHkCgYA2edz9JoUWtv0ia907v40hIJzlFU5bOP6QKgYm8n6i+StFwFEMVfyJAC7mcD9h5cGkXywOeAy/8rTvSbBspN+xGDLhU9Q4OS1uqXZ+NQeP5Xs+rLK+wvnNggupiSXHa6+3UKrmq+hZgxl0zaQePNN95r4A18KOt6BZq9K39BcS0A=='),('7fe94046-16c2-4c67-bbbf-012dca911410','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('7ffba866-c69e-4afb-8014-b6415ca33ea2','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','saml-user-property-mapper'),('85955f84-fa68-4c48-8b7b-8aef24ec2762','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('89c14fb1-383f-4cfe-901e-0c2a5313639e','ec07d6ee-187d-49ef-842b-f3b7cd1dfb9a','secret','FLN2qeBicKICmw3TpqofeA'),('8a43d655-dac9-4e4d-aa68-5b08c0c531ea','15ac69b7-f775-4509-b4ef-d55e48b62d02','secret','KinR7sBqpFGVInren01GliYOeRqqqXS-8XQaj6yFUoWCA51ckgjPwPZBWMyHBDG5SMd-91YK009KWk23W97i-mQWhLw8m8pF5NuulYVS-POHgn0ct-tFW646QmFeGnpteKgAcy1B3Agf_OJSD3wjHEtXM1l0JkjB1DJF1H3iBfI'),('8b9d9cc7-8e94-405c-9be4-f51a0dabc4d8','f2a56517-fd5d-4d2e-99be-29ef93641650','priority','100'),('8ba6cae3-f456-43cd-8742-f37cef6dc711','f2a56517-fd5d-4d2e-99be-29ef93641650','secret','m5G_7k7NS6-vEptcwv0HUw'),('8e2cbc79-a715-4413-b4b4-02f1d90f3dbc','f381c723-6514-4d6b-8ab8-3d43fcdbc6c9','priority','100'),('8e7d8daf-eacc-4e0d-b1ee-302edfe53b75','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','oidc-full-name-mapper'),('8ec21396-67f9-4cd6-8a93-730e3bccff5b','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8f0d2e0a-de02-4098-95fa-d4457e2e6451','6e397140-d1c7-44b9-adc6-52b50948e81b','privateKey','MIIEpAIBAAKCAQEApUrDhy6QgpzHaooXtFDjqo48BvEiLfUbAmWRt6yt08gJIWSBr70NsdqKkYEk1MSsccVt+5bkg215RS9xuCXPeS4gfVJmDqyjFnaTGGVYjtoOFIZwfyxm4ZSHP2iUCNzb0bf7/7SOVNaoX8Cm9/j+rDHub9IGjnJeUsFg6MWa4PcUw6pd57hpMbou34rvz9mBeVjVtjaIP0ZGj5lu5TBshhs8ZwlAoFbxdpUihP/7klU3yA1QYcw1UapxdW8e7OEwGJM1xBVaSVY+LuPXTdbUU24wvbmRxvJDwIf/bBNE7Z6EhjqkJnLFlGSEXzLyb7Ezq0mquEn8HpWmXRZvbzsbXwIDAQABAoIBADC9bAynmWs6Sb9LuxOrqoZ3bJHrdtWwaed6Bc7wd010teSH24nzqF8ifyvKtg6bc/IUcor2gqmSlWjmRZU0aQplpKTvsDJxi6GrE1LlR4jQGcjJn9CQSkIIZx02fDhkz9j2dLOBDVtM9NdPWqzSWl5yVsnYV6CXbuLeLPJWmoXtO7OqUmPvuQUpDuHh/LC7gN2eUQ87LMSW9atbnUZB5z7Vtp9AGxSC4+iRoiKpWkrqoauaEkoLIfxb2gM00jWhzdo0d0v/WzKPWM4/qw+Sprmo3huzPc6vFHcCAeuovF4JWhYofBWuZ4qoVK8mdUxOPYnfs0e2b1gEIXcS6VCcomECgYEA5nfv2SS7L44/PRZi1nBvzo42vaF6l2IL/SEsELLc6JmYzaA8E1i8RR2JTOGU0asMvYMGf1JNFFJby1+uActNibN7zuCwNNmBdgM0aT6N7eRItBxsspvEhOYtt1Bbn6zg6tW2IoHfMFPWUvNF67qXGS1Zr37qg5ocQU8r6iK6uu8CgYEAt5pt4inZ73uhyMzQhzwKZDPiP1MqIVM8gkidw7KOQm8Imz9d6QJgE2dzrrAhHPG5CynH4ZQAa4ufXyH/MohOyQJo3WdhZQzr07bW9IO0OV69GlRDigEN7/ILoniY5g+ICm3CCTK5euBbVTw/asrVU6AIQt9FHx7BuxCj16LEZpECgYEAk9IrubgQg7EWKKVaIbaeT/rxa3HOQpi1ndcP/2npvRr/Yiw7PCF3KFGIhhJONKkkk80ddr6gB7/HdstYvXfbtM21RHzjKBK2Ma5eiH6B5Cq+4x80LN8yDhfhDKnzCpiE7rrChqGMOOAdILk+iLL2RUTMOH8MBfrr0ovoW9WItWsCgYEApMEuI4m8p/sAFYk9Am1tQbeRKZP+NUNVA/AXqfl7UMAEMBOvuJzKC/+EPliMjkWW8B6A37qImfkDfUGrl/PbBuNjqHHRYvUyVZw3zdi1i9moxYyhwp/pmsxPhm7DfYaoY/tT6B8dc9cJ/jV/DtyOi2kKoL9rbl6SJ8Pp0mGb7hECgYB9GsI9Ph469e/uGmOvNvTw5g0Y2w5A+g0qiEFQ9EcWMEajQBd6souv7OpLpZOw/kUGAISheKHtmOqRvd71VqEjjUNZVVkwt9kPUetUz0KdzHCNBRpFv/M7zvr90jKj6bqdG3AyaurcCQFB+W3fKWJmcQu0zArPnDEEYkwyYVL/IA=='),('8f16e3e3-9136-4f96-95d5-367990b4eebe','d9350f53-57dd-4980-b06a-53945dc19373','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('9161bfaa-e11a-452a-8508-75b264114b0c','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('92036bc8-e32e-4465-983a-a2aa4afcbada','44bba29b-c58c-46f2-a22e-429ce3e4beeb','keyUse','ENC'),('92c5ac45-4fef-47e0-a470-3821d848f5d7','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','saml-user-property-mapper'),('930f194b-5a3d-4e38-8ce2-ca16ce9f157c','7a527db0-a102-4430-bafa-eadda1525460','client-uris-must-match','true'),('9471e207-459c-4457-96c0-eca37d7a8dd1','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','saml-role-list-mapper'),('9475daa5-42e5-41ee-8c23-6c83ea678bcf','f96bb8a8-cffd-43d6-8e19-17fcf496d968','priority','100'),('95aa227e-c01e-480e-a641-04a571492fff','73b2640d-95e3-4297-9986-64abdcf865fd','priority','100'),('96217e74-1c0d-4f73-b546-8cc8907782cd','6e397140-d1c7-44b9-adc6-52b50948e81b','keyUse','SIG'),('9674aaed-ad12-4ee8-8cda-14ebf9b451a3','921085c3-9b31-451f-be18-7af52c576588','max-clients','200'),('96e48825-d629-4bc4-83b5-2bdd157dbd81','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','oidc-address-mapper'),('97f9e1d1-0d9b-4f35-9f5c-c181782b6d43','74f5026c-a99a-40f9-a847-567f1c7a8158','priority','100'),('98a60587-2bda-4a10-bea5-743c62c42aff','2584aafb-4ef7-49d1-bf5d-ddf3ed831639','priority','100'),('992adda1-7a55-44ce-9aa1-d7c0e1ffa48d','8f2256b7-dd1c-4241-9f41-ec2069546e69','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('9bf79733-6bf1-4f71-abea-67422c27f2b0','fad1cee7-308d-4134-bae5-9d598a41ea36','allow-default-scopes','true'),('9c618a76-8ada-422e-a4dd-566b8783f0a5','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9e262183-1dc5-4d0d-8099-c3339a0a4f69','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('9f32e97b-d2d0-4f75-84df-b376b0cb3f30','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('a0042324-f2e1-47a0-89df-fb736a55cad2','639b4271-40b0-4d0f-b0c7-14c049ebaad3','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('a3b13f36-65d5-4240-9945-38eddd2d0c2f','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('a5206bce-18e4-448d-b461-44e8e7ba7360','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','oidc-address-mapper'),('a63a0a6e-087d-4add-a415-8bcd64daaf54','f2a56517-fd5d-4d2e-99be-29ef93641650','kid','c2cb952b-bac0-446d-81ea-5c4f50cf4c37'),('a6878c72-3754-46c6-9b41-6df7582301f4','c5ef3273-ab26-49dc-8d17-5d88be900229','priority','100'),('a83aa20f-55fc-47e7-bb90-6cc4569f9de7','3e46788d-ce3c-47a5-af47-d6eb0be0556e','kid','7226540c-cb4e-4328-96ca-9cfac79e9703'),('a8583bef-7198-4a22-8b19-1ab2658172ed','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a8ca5ae9-7ef0-45ed-b51e-5c99032f849b','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('aa570274-d4b5-45e1-bf22-ab41af18294c','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('acf40f4b-a5a8-4023-aaf0-c106f4e4e6f6','ec4d4b3e-0046-4f37-a54a-4bc5b0362679','keyUse','SIG'),('ada83bc6-e167-4403-a6ef-3ea7a5a9dec0','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('aeca98e5-1f91-4893-8c05-18f6678eb0f4','b5d88f1d-2b7f-471e-8ff2-785bc44a1ae5','privateKey','MIIEowIBAAKCAQEApw5wKIN/jAy2DHu5iUC49lb4KT/n5vS6GbRn4RG+axOcomBlMlAZ0EfJUkCVFOpdcwDYIen48ckST5LSLGwu9SH9rC8VArfFVimQBJTspzib8wwOTjLO+1iQsmiCF7UAUoAeCiMSJ+0rUu1c9eJObG2dX3temj78sOwtU8kWENPXXJjAecOF4r06Pku+sqsJSvXrWKu7KKdbKx5n3wWevfcIWj+ET6It2LKMbaOkc2voHC3Q7broA+NbgMB+CSAt3ptTK63Fax8j63hk/iqRAFdG9tzrA2/yBCbN2KdCwLcUL4K+XLBkKwrUoUQBIpceLbD+M8ccMxcEk0YXKeMgRwIDAQABAoIBAAC1UugTVP7AeHqjcqyFmusBhWR62jl7WMqmivVN4lBUD3fcBiqST/TgSQrbFcWGHoV2qgmqn0rQWrxBoqwdNI5Kr7dHKEddceCd0JwSQBCn7lEwYNI+W+LeoNO2QU7zQQDGbnmR/+4tyLPdBn4fCWJs8oPP5ZYgXSWSqZI8JRqUSUyI46LXW8vJX03P242b2GXoYj7Z6Mo29vMKlB5O++Q9Lvv8bHR1lVBNYdAgvNORUtxlaLlyOQrd8BYBjxHYp3ug9QPw3Cj2KJsEkp8F+I2wGQcxPd8d4CC/e6/NqGB5eFDefC67H8yZLcGhVaWpbgZmy662dSBUrS91V1let/ECgYEA2/Zfgq5bJrLqKB8x9LkxH4Zr3u59tvlE7yBx2/hzg7zIkYvQa22goA7cr2mvT/xaihQX77brOWpzLcU+UjlwLvENNKvu0QMN2tfbykAMCs6GMYDMEvl8f6GbK7i+83DuWm19hychNrFdzxM4V0nbfrIQYC/xyJYFku07QdpviZkCgYEAwm0XIor9tqD42PzPxBG0xAxOY0UZH09ekXqwzBiOlWba8QJl/9rTk4am8dKMdMtgV+j/y+oG3/0hdaDSjMzmWEJp34KOGjSHXhG1jSf+ITNa2GfKBMhsiaSGVK4UMUGaAH1vueMW9G+347rK6rky4YmT0MHOI6hXF3IIqfZe5N8CgYAvDw2uAqljpSFthgcFCV3WFcccQb/JlpjF5BYX7pagF5J9eQEVCrYzqBpUuPKV1TJ1mgjo8yRt+zU7FJjZtIoosM+XdjU4qEOdj1LpeTxaT4bsLlb6tD+LesKc3wCTSpTj6crSUG/NqLKeK8mA+z8nYucX/QnoVRhKL9DerOHx+QKBgCKXXiJbMECp6xxP/ncX311yAxBOXuXfLSgc+A+X3uZd4l422wbmW/ZHYrRrjWnKNV3uqnQRMx/u3WEcN9mtKt5REp0dkULATcVCyVZP4zrs9CDEdoDbV9Q1XWD7h8Qrs8aaiqI78P2UUtdFiIyyXocZ/x6JHK/jZ3tYYoo6ty9pAoGBALwQVb8Q6pEbcJGepXhfrKLolfqph4KsvsGZYlKxC4gWCYZNLWf1Y0ZQK0GstT5kkOX39e+jgQ3VQT/BBIdpzceODCFnMo8v5T92up5j+64ose5SLADjtUOMzQaxm3lDNGbDyZjNOtcRUOYVGgy1EsAAzW+UZrCixjLe0CNK0Trr'),('af92d82f-0841-4ff4-b428-bdc16f7e3bc4','74f5026c-a99a-40f9-a847-567f1c7a8158','privateKey','MIIEpAIBAAKCAQEAsEwPAytFESBkH/1lGb7bzF4Q7jVGPHWN7zbW+jntPxkaiwCduyebXtB3mAQVOFXazB/DlDjwM5zQWQ71pG930Xp/0xNKzTMFbZAh2/2Hm19jkH2Bt7deIdYYCGGJIbFYyqsrghR2vQRazCcEUTro+4J658/gZWQmku9Yi9L/scxU+OPAVipOeF4mT0B1hHwWZbDCT8buY731g/2oWLSZQKcec5wyJKVddXOOzW+W08izY4s614M9qvufd79ocbSkrpZZJDHYdTHujejVoE2viYPyuLJpF1NcpIURHiRLJH3k8OW29UW8tw85NtPzrOD8z8oV9cQGOd2+S5RHrbGM/QIDAQABAoIBAEbvW40BYIlrGI5clUzeJC9fW/2U1v1lqWXqkWZeX2zni2wJo+2Vmqj0RWKXpfgkZ2SBlV6y6EdEHfrvj3wJ09KoMP17gjn9gP4cI9uR7/ne0D9nmIWU1N3VeJcKs7QoWRs280skM8CLG4OQYWbTxsHINu7GEDqLqQ+vGVgtXm+ppIUt16dXuKWSaua/7Je9ZHzlzEa6sSQ/wTaH6cb1tfxZSfhJwrI0x+fTC9jLES54CJeQdpZBnLWiZZnpzN06oWRwLtGhOtQ+aJN5bxYRXnZKLA4lXaApNSROfXTuw09lxvH4GTJFRLydgALkzJ3o0CuI7MevqAueO0jGHNc9dhsCgYEA9QQm1ijLhlQQQ6q8wZowccOpTMMujWa2RlIhQA7pXzkSKvHkBTy5lo9yohv3N5Do330XYo1678Rj2ofen5dA3p/aXMlIxqpduZHq3BqQ0yXjh4bffOqUSy1rL99cL554kX6VT1WChV/orZy9i7kN1sdiLQhl6ETNkhOAq0kMoA8CgYEAuDNGSYY9fNjdvJNBR+o3zB99dyBjWqAQwI4aIQgKWY5uRA4GVg8r4kUIXAEGVwr7cmodSQS9A0bBmX1o6Po46qbil7yH1mrTxZgAphIiEsNfT/INNnTrK2kEoYV+dDnEWv9DDyyPi1Y3Xk32bpr55eRvp2kTJywrQ63HlwBttjMCgYAENqEQV71APxvUfhAm6CbjHfFAX67iQZzq0qi9uEPtHkcgs+4u5N9wJmFbRk3XB8fpZ/ZJ/JLboq3w6Rs79VbpPSh9Jfz5ZZ6c/VRjmpVY/DLQdtJLDKGmNU69kQK90uTR47JfneHTt1WB/ssHpxQE2ILosVdHSj+avnkc+PGdowKBgQCBoFPOWhHbUiJ5GofOPB2YIHEC7F/+3rXrTBVHOYlPDNS8P8Jlvbd8PGhtlqsHhkr9cX+6awM40wpbIc46Zhy3xUmgzqQpWHQ/kYCjXg9sdOEWOZjiwdTdb8I6iN88m4p7Hzfp7cn2nG3Kh8Lsg1NpXSDWBzPbVVH9BsZ2lW6f0QKBgQDAfCPbscGeHcNSl8Q9NnpWfRjyR7qc9Q7o69wV6Zx/bM4gYyBFOSsWEHuvYLkGRXdElxAkpSBPX0YNB6VoeAACZU/dpaEhuR5yXVIOjy6iT2oCI4f0rIT95HFmD3FyBsMT/nekLqif3hQLMK0KgEcKPi+YqFJ97Kz7j/Kc5zdZHQ=='),('b09aabe2-e463-411b-8c58-af61031dc758','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','saml-role-list-mapper'),('b0e080c5-80d1-4ce6-87f4-c4b1afb29fc2','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','saml-user-property-mapper'),('b44a70f6-2386-4bbe-ab61-90d2dc18e28f','15ac69b7-f775-4509-b4ef-d55e48b62d02','algorithm','HS512'),('b629e0af-0770-4fca-8c88-ad0d896c9e06','31273c0c-b124-4014-951f-7a21036f29a7','algorithm','RSA-OAEP'),('b66c6661-7290-438e-83ac-e3111cca7a9a','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b6d3a61c-dd22-4e4b-80dc-5490ce77fb00','dd8ca8c3-b8eb-4a2d-98fc-b7803032dbbe','certificate','MIIClzCCAX8CBgGSZMqSZTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MTAwNzAyMjIzMFoXDTM0MTAwNzAyMjQxMFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANMkCKtVgEUjkCOI70MI5cT89wKO5taQGT25zyCuF6ftB3txAkg674srqq1Ixtuw66HWfqCJ/5/ZmQ5KEx7V/625ypJaL1frkmtIP743sdk2ZZZJoGmHHyBTal/tAce+53SbCwMyS/bkSj0XzqcikpSUfpgYuBTI2FrNVdTZLl8fxjT4xFkj9iTbisNDQoKEivQvpRRUG3FA18iIGBXwIf3b+aJfIgJatnIVtHjXCVXhXDgL5UaMgU/U/zM19E//A1zlwJgt6xcQfdykeNjZE03arXd9qt/vXoSHXH3y8JaurF6zIPTcY1NNESh1OECoNgKeSzcJeQf73gsnxcSytkECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAENJrNsNyxuQx/yfNR9SKeGLddcix0Qs7OJhxAo+cO6gG2XfL4rCyf/XJfUQPy2F/o9M9733vZevTQAnXQ29k44LqK5ifThSrVxhlxoEsKD+ZS0bAWED6h+yAS/0GDBPLAVAGQITKQFV21p1sM/b1YgA+wSxBdHjb6dc0eShbOsMcxNcn7gAhk71sbCR0GsgWYtMZ0srvUhteZpDIhnB65yXMkttblgCwlOJNoLMpRXhqBvmYBGPfBI/6f/i/avdi6Gl28lDBZ3aGnMWo2nDUGOx6zZ0X5Yws4//sP40Tjqc+3GLFL6/zy8cqgSyY68Puv3+1w3Miqdt9uKBQ2Wcqbg=='),('b77801b5-913b-4740-aa38-eb6587e7c9f6','2584aafb-4ef7-49d1-bf5d-ddf3ed831639','kid','fa7032b2-2578-484b-9bf5-fce78a8108fa'),('b8225daf-229b-44af-a0a8-47cd693167e9','44bba29b-c58c-46f2-a22e-429ce3e4beeb','priority','100'),('b8278e36-4e84-4625-87eb-632fa29bd3b3','f381c723-6514-4d6b-8ab8-3d43fcdbc6c9','certificate','MIIClzCCAX8CBgGSZMuNcDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MTAwNzAyMjMzNFoXDTM0MTAwNzAyMjUxNFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJMwlPpvly0jiHf4LrRbXInosAiJ5exJx8SgbdvR9BTur+oH2bghxrU1KifO8QXdo6PxTykHQqv1rxvDhJzyqa2oDm/yNRr1liGF5GEuahDHFSCNcrl0PszsLVeuqiPZHOfJmCTj/nucXwA1ggEXWd9F5oZkzmR+fO/2RjEYC+zqk0ShQapDHCWb5ZGZZ4FS4vjph8S5WPqr91ZqX2PI39QazTtlYoRDEZhfOcSEOneZniwmpvXteoyqaXM2V8c+E/p3fUf4fH0aBgsJMH/DR8Mz/HgvM1s5yzrryGgrDzEygBIvHENZ994rv50YQt7aeRRM+XrOghvYmojcSLQXdSUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAim9DGuYq22Ss4+SlQCujeOremxF4a//bey6fCvafpy2cY7datC13E/7PG0Rz6jS6jG/dH64L1T3OmRQJuLZ8e/lElqfJvyObF5BpecRNQxMNTR2+KbpgJJK8Cg0eWKA1K1dWOhn3aXhA0h2a5l6YguOlcoHhScCXRn+VxLCb3kNa10KN0UrUvXanlGjYyiGDWXHGdNdGzgDYJbkrRumAEzbhpmuJuC1Z2mbaWw1875xrKNCRbm4Xg+sDmK14fWFOcWhB4QzOP27uUlKQFADpzq2fBxIu1eNXLxZCXpLfeOO/t+UY9hQE0a+2PPmV23f+WNpYXzxPbDgVYoA7KMMDdQ=='),('b8bd4849-aa64-412a-bee5-80a118e40c9e','2fc9c3c0-d564-4ac8-8cd2-5694ed3f7b51','algorithm','HS512'),('b8c5acf4-2ddf-40d5-bbd9-aecad47ddcb8','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','saml-role-list-mapper'),('bb219b0a-4250-491d-b7bc-e13e27432858','acbd757a-2bcc-4dd5-8734-d1ec0e9e3988','allowed-protocol-mapper-types','saml-role-list-mapper'),('bb4a53dd-f112-4b3a-8bc9-1dc345e07439','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','oidc-address-mapper'),('be363f6c-93b7-4d51-877e-f8fabed616a8','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('bec10d13-1312-4461-8452-9d6db96c7899','cb7d345a-517c-41c9-ae99-502ed5dd90af','priority','100'),('bf92c75b-8576-4c8b-97ac-19a8ef264dc8','ec07d6ee-187d-49ef-842b-f3b7cd1dfb9a','priority','100'),('c1aa528e-e3e5-4d7d-b940-93a38342b808','475c755c-1913-4039-8b34-f1650e372928','priority','100'),('c26ff1c8-e720-4282-b34f-a28ba3b2f06e','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','saml-user-property-mapper'),('c27168ee-e4da-438a-9270-3c70fd928c8e','e97fa991-267a-4153-8191-e6f61a3eeea8','max-clients','200'),('c300681b-4fa1-4e15-ac5d-d7a555d95443','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','oidc-address-mapper'),('c4175b29-4c01-4c8a-a847-65078c1d9242','dc5fcb1d-5f80-40bd-941d-1d905418e3ce','priority','100'),('c45e4e27-3a40-41b6-a634-aaa23b4ce236','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','saml-role-list-mapper'),('c541fb7f-f8db-4b36-aaf1-3bbc118d7d01','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c54b223d-ea95-4426-88e8-debf823cc25e','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('c6645030-bf23-4799-b2d6-c5e5854853b7','44bba29b-c58c-46f2-a22e-429ce3e4beeb','algorithm','RSA-OAEP'),('c934fb9f-875b-4c1f-847d-af64c5f0e6e3','3e46788d-ce3c-47a5-af47-d6eb0be0556e','algorithm','HS512'),('c9454bbe-6fda-42e7-91ac-668baf1c4617','c5e62d25-ff49-4d65-ada7-d0568f4c68ba','kid','cc454057-e126-4fcd-9359-54c5f4d163b9'),('cb37dccf-92e6-4032-8934-3b2affdbc359','2584aafb-4ef7-49d1-bf5d-ddf3ed831639','secret','hDN17Dn3R-08oZr4-nVR69WHxXP58BdioZijGd_PtMlTPXlQlZ8Mx5IzWRFuEZajWG8qFHr2Eh7yeUrfkU9RrZggumXap7LwWG-ZfCmC9D4SYN8CSOgCU8D5fK6ZIvJa579T_8KOqVjvis359Sk_QUFPD7pUIlkFQ5Lap6f7fJg'),('cea12a22-4cd8-43e6-b46c-1f07b64c638f','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','saml-user-property-mapper'),('cf2f0ce3-c3dc-4492-a4a2-57ae44c36387','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d004cc76-566a-4d18-adf5-e0e358f7105b','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d0675ceb-abae-41b8-a8af-e6db7013a3f5','35d60d55-1a2c-4440-8b82-630ffb05add5','max-clients','200'),('d1573746-76e6-439b-8328-cdf71c291f79','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','oidc-address-mapper'),('d38b97de-1928-47a8-99c4-228b7aaba62d','6a9f0fbc-88ad-436f-817b-5ac5e8aff9a4','allow-default-scopes','true'),('d3c698e3-ab28-416f-90bb-013e02a23248','16d84f8d-1801-4e55-b59d-9bba6aa2ed51','allowed-protocol-mapper-types','oidc-full-name-mapper'),('d4a93fcd-ecec-43c9-99a2-ff57a0ae4c12','cb7d345a-517c-41c9-ae99-502ed5dd90af','keyUse','SIG'),('d54a3e90-dd58-416d-8ab6-4f36cb418b30','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','saml-user-property-mapper'),('d6ff4a84-379b-4cbc-b6eb-1df60d4e378e','5d7c2ff9-a08b-452a-82f6-f777c0f3ae3e','allow-default-scopes','true'),('d7e75635-d325-41b5-8f3f-4c9b4f3d4ce5','b5d88f1d-2b7f-471e-8ff2-785bc44a1ae5','priority','100'),('d7fc35c3-e2d0-4f1a-b745-e13f431cff93','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('d9dce9ea-e994-4056-bee2-4945d014c6f6','d81c69a3-4fb6-476d-93d0-d5bc04745079','allowed-protocol-mapper-types','saml-user-property-mapper'),('db4880f0-e41a-4020-904f-6792d5879a23','64be7755-f3b3-493c-bc81-1d69a7b5ddc3','allowed-protocol-mapper-types','oidc-address-mapper'),('dcf05720-24ec-4997-9911-a74abe082f18','ec07d6ee-187d-49ef-842b-f3b7cd1dfb9a','kid','3793dd0d-b72a-4c14-b7f0-5c5b08be887b'),('dd791e3f-8bf9-4558-bf34-3a97c5f27e25','b52b99d2-43e3-483d-bd47-21c22ff26587','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ddf2a544-d37f-4900-996d-d9eabfa96072','b5d88f1d-2b7f-471e-8ff2-785bc44a1ae5','certificate','MIIClzCCAX8CBgGSZMsV2DANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MTAwNzAyMjMwM1oXDTM0MTAwNzAyMjQ0M1owDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKcOcCiDf4wMtgx7uYlAuPZW+Ck/5+b0uhm0Z+ERvmsTnKJgZTJQGdBHyVJAlRTqXXMA2CHp+PHJEk+S0ixsLvUh/awvFQK3xVYpkASU7Kc4m/MMDk4yzvtYkLJoghe1AFKAHgojEiftK1LtXPXiTmxtnV97Xpo+/LDsLVPJFhDT11yYwHnDheK9Oj5LvrKrCUr161iruyinWyseZ98Fnr33CFo/hE+iLdiyjG2jpHNr6Bwt0O266APjW4DAfgkgLd6bUyutxWsfI+t4ZP4qkQBXRvbc6wNv8gQmzdinQsC3FC+CvlywZCsK1KFEASKXHi2w/jPHHDMXBJNGFynjIEcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEARuS7byiiorxknXdSNxkM0tgv5j8JSQoXxpkp+1xKVqYMMWrHGs0pP9q0OmS0ovX7c88nK/3K2ZQhYplW65BegTPg7tATkpRo6Tgzf+qrX96RXFfwrkYFMD8eU15d5gxQGv6IInYxADnp82dgZzoyFyp6Adx81lh3KbUbkKIzLBbVicpArPD26VG6XF6zFe4iDT01iPcJbdoerpfEfVSG+Lkye3+MUwNKfXlVRfndhutLAv8zMyBEOmYX3y1E/ciRB0krVA5TUuXB7lwxsVx8Vj7SwpTi79WCSclTN0KMlocnQbF/WhZSUVyINs53lUmTUc4KLXrwqcIUsamETvYxOg=='),('de36229d-6147-49b9-8785-017e2f06b844','1eb3f256-3077-4546-acd1-ed8ce3ca6a20','max-clients','200'),('dfba924d-d9b0-4d4f-805c-83e5039b5f5b','5e3ef522-246a-4125-9052-222a25aadf31','allow-default-scopes','true'),('e2715ffc-87d6-49b3-972a-cfc7e7745666','bb09c074-eb2a-4d80-a602-7f0e21cf65de','allow-default-scopes','true'),('e2eaafda-b1cc-41e0-a04a-03b1c80fb7f8','51958a29-6204-407c-8192-47d65ba16e49','allow-default-scopes','true'),('e3048504-3c6e-4d95-9d95-ea8722409c3f','1d888677-39b2-476b-87a7-0206043d210d','host-sending-registration-request-must-match','true'),('e6be9768-7c10-4f02-808d-cd531d3b7bb6','3a690546-2137-47a0-bf4b-8859eb9578aa','priority','100'),('e721647e-9b7f-40d9-85ab-731d1a6e22ec','b5d88f1d-2b7f-471e-8ff2-785bc44a1ae5','keyUse','SIG'),('ea234cd5-9233-4478-949a-0cf40ced41b4','475c755c-1913-4039-8b34-f1650e372928','kid','d94cb2de-a310-4266-a28c-b7b2ed9be772'),('ea44bde0-7d7b-44a2-920f-72997e7a7b4d','31273c0c-b124-4014-951f-7a21036f29a7','keyUse','ENC'),('eb1093b1-7986-4c10-ab0d-f166242ebdc4','f96bb8a8-cffd-43d6-8e19-17fcf496d968','kid','066b4210-dd98-4a7a-845e-28d31bf0d7f2'),('eb370c47-38e8-465d-93b1-3bc4826fe496','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ec0af3c6-df23-402c-80ea-2f37086181d9','20e005bd-a168-404e-bf76-fdc0a1a25c40','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ed2e2276-ba09-4931-bbd9-7632a8f43e41','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('efd996ce-426a-4d4c-9b5b-8576fcef3f6c','6e397140-d1c7-44b9-adc6-52b50948e81b','certificate','MIIClzCCAX8CBgGSZMuMVTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MTAwNzAyMjMzNFoXDTM0MTAwNzAyMjUxNFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKVKw4cukIKcx2qKF7RQ46qOPAbxIi31GwJlkbesrdPICSFkga+9DbHaipGBJNTErHHFbfuW5INteUUvcbglz3kuIH1SZg6soxZ2kxhlWI7aDhSGcH8sZuGUhz9olAjc29G3+/+0jlTWqF/Apvf4/qwx7m/SBo5yXlLBYOjFmuD3FMOqXee4aTG6Lt+K78/ZgXlY1bY2iD9GRo+ZbuUwbIYbPGcJQKBW8XaVIoT/+5JVN8gNUGHMNVGqcXVvHuzhMBiTNcQVWklWPi7j103W1FNuML25kcbyQ8CH/2wTRO2ehIY6pCZyxZRkhF8y8m+xM6tJqrhJ/B6Vpl0Wb287G18CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAQfH8Ub3P+SjYRANNxwTM5S3UI67CNI4eme3RVI6Ax+wjC86XDvQXiYDzyQva2/nrMhTy59Qg3Zlhwp5ULgUpNCPhA7tKtseyTOd9y6jcqIVWfjhrig1Lnquk7kMq0Nabmh8nPK6zz4xR1t9JXyf87+BRtyXLF6NfVrbsGPzlMN31BsoXZoNH4Ivfoz4S+y7kYmVWQHBGiZ3AlDof6XwwHuy+YtjI6VIu6qlGWk8r9caKanrXI32m0+pUISL6DP87+jbgOIE1NpEK528aGCP9hcwj+/auLnCiNmokB6jAleEgB3ay2Ej3zb/x/Wd271mm8DNCa5zJhv/Q01nHxsZ4FQ=='),('f15f10d8-2e27-4af9-9a32-35bedef96de7','0d9e136d-fb2e-49d4-acb3-24b3dda2ad7b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('f22a5bf4-f41d-4489-bf23-a8e065632b53','2c5a4801-54a5-4674-a089-bc4e0d981bc4','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f615552c-9c8b-4917-82f7-d60602badaef','bcd71e0a-bfd2-41b2-8f6a-18b084898255','allowed-protocol-mapper-types','saml-role-list-mapper'),('f7d2e94d-f4bf-4e92-9b2a-885f990ed7eb','bcea1b59-4463-4577-9813-8e9d0f12e47b','allow-default-scopes','true'),('f854f295-5164-4788-8b21-225b7857d3f2','a20ece23-caa9-4d06-a56d-1c7662675429','client-uris-must-match','true'),('fa1620fc-4c4d-4db4-aae5-b1ac3b18f859','c5ef3273-ab26-49dc-8d17-5d88be900229','keyUse','ENC'),('fa5eab41-e159-408c-a2a5-a72ee320f6ae','2d372678-ef6a-4386-8660-bac127f7e95c','max-clients','200'),('faa3e5ee-b691-4e9e-a134-7fa478e3ea66','d777d329-9083-4e7c-871e-b8313bf6ffa1','allowed-protocol-mapper-types','saml-user-property-mapper'),('fe3ccb67-13dd-4e67-a668-fe14b78b002c','f96bb8a8-cffd-43d6-8e19-17fcf496d968','secret','9WknFgvWSz16QZKgp8-jmg'),('fe96f601-d5ff-458d-85a5-f7fb79ec5a8d','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ff39d46f-7049-4ff4-96e4-a5df993b7f6d','356f428c-39a9-4d2f-a72f-26dcc0d93541','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ffff5a66-8274-48f9-b17e-f18b411249ab','c3c75d24-2dc0-46eb-b367-c2e131816e14','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('002cf824-7b87-4995-ae81-827b6d19107b','4b67beb7-4ae1-4d96-929a-ea6e40c396dd'),('002cf824-7b87-4995-ae81-827b6d19107b','75ce0a2b-aaa8-473b-9ecd-bd876c5d959a'),('03bf843e-3db6-49f5-9b04-326e70a1ea66','aee8d65b-dcf4-4932-b9df-a710988aa801'),('06c6ad58-1e17-4695-aaac-452e8ae326c0','3f128d19-6147-4d18-a193-ee982f4d4ec2'),('06c6ad58-1e17-4695-aaac-452e8ae326c0','4f5f06a0-078e-4a20-bdc3-c1ae77c72680'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','00c36616-93ab-44d3-ad36-eea3b6eacd4b'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','013cf0a4-239d-4597-8cc5-6f5064b0831d'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','05aa4900-181b-46ac-8646-c77ff9e9701e'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','08e87834-885d-471d-8ec8-fc3f4a15ee3d'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','1b252917-6a73-4981-ae3c-edbfe8096bbc'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','1ba8c00d-cd22-4309-accb-0a7f3f1ee4b1'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','59088a00-1404-46d2-8962-f68d30902581'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','68c0ad45-0597-4117-a712-0fe6697b4005'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','7ed73969-2c00-430e-886a-9141927c58fc'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','81d3f409-9049-4f41-808e-a172458c2f6b'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','e07b5d16-cdc1-4605-a57c-f8a6bb533a6e'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','e131344c-bfa3-42b7-8c39-bb6c4f151b76'),('0dec18f1-4b4c-40cb-a7da-e163998b6d53','3b737083-a1a7-4f33-beb5-afaa82677044'),('0dec18f1-4b4c-40cb-a7da-e163998b6d53','73a2a057-8d33-494e-b02f-56568d64a6ff'),('10681388-accd-4893-ad50-19364bdedb1b','016fa8c7-ce46-4d56-8b77-fe7ba8887879'),('10681388-accd-4893-ad50-19364bdedb1b','3c97bdcd-4112-484c-aba1-a804bdf24351'),('1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c','b6e1d93a-d188-4632-be47-13533712312c'),('1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c','e6762070-8d0a-4519-bf1b-95bbed1be522'),('1b7f7f15-e2a3-42f5-9344-0d744418238a','3b590d32-2e6d-473e-a7d6-c001ba92466f'),('1b7f7f15-e2a3-42f5-9344-0d744418238a','3c31c5c2-b182-45c8-8cf3-12b769fcac9c'),('1d034a73-20f6-4eba-a34e-17c1a4dd35e6','7a8c5a05-24dd-4919-823a-a2a00f954213'),('1d034a73-20f6-4eba-a34e-17c1a4dd35e6','f8b83f8a-a235-4007-95ec-2abf90dfa43e'),('2a17ef7c-bff2-4390-a257-19ffd4569565','a03a3bfc-6829-4da9-9e12-45a4fb9376fb'),('2a2378e6-2194-4be2-95c6-3956df738abf','2e19d880-8d7a-4dad-96c0-2665db6ba40c'),('2a2378e6-2194-4be2-95c6-3956df738abf','92ac752f-9bda-4356-a9a6-e9c45379df22'),('2b00af1b-6b12-49ba-a56b-a5771ce3b576','a8dd4f19-6da9-4585-aacf-53e97483d5b8'),('2ef55f22-154c-4db9-bfd1-5e4b43c13616','10f033b7-102b-4cdc-9252-37514be96c00'),('2ef55f22-154c-4db9-bfd1-5e4b43c13616','de3916db-066c-4525-816c-47ea54cc6f03'),('3162e387-3ca4-441e-8b39-e15b79e58687','177eb5c3-bc45-4246-a9b9-e93512cdcafb'),('3162e387-3ca4-441e-8b39-e15b79e58687','24287595-b21f-492f-97ea-7a67804707b5'),('3162e387-3ca4-441e-8b39-e15b79e58687','44c41016-22ea-4f5e-ae98-5fb02646bc03'),('3162e387-3ca4-441e-8b39-e15b79e58687','5f7ae568-7e18-4295-bbe6-ae51e787fadc'),('3162e387-3ca4-441e-8b39-e15b79e58687','5fa0e5ca-e776-4ff0-b498-fcccfa951fff'),('3162e387-3ca4-441e-8b39-e15b79e58687','72d1c654-5161-468f-862f-69aa607841ce'),('3162e387-3ca4-441e-8b39-e15b79e58687','7a8c5a05-24dd-4919-823a-a2a00f954213'),('3162e387-3ca4-441e-8b39-e15b79e58687','a371ff59-c3fd-42d6-999e-51b584002c4d'),('3162e387-3ca4-441e-8b39-e15b79e58687','b7021664-c3c1-404c-af76-df0ce27b1384'),('3162e387-3ca4-441e-8b39-e15b79e58687','c091b0de-f830-43a0-92a6-f52e54c26bc3'),('3162e387-3ca4-441e-8b39-e15b79e58687','d47fcc03-ea3e-445a-a865-1e8ea65e4798'),('3162e387-3ca4-441e-8b39-e15b79e58687','f8b83f8a-a235-4007-95ec-2abf90dfa43e'),('31e22061-2b1e-478b-a4f4-a8b0e8eccd64','bbf7feca-c9e0-47b0-989a-663bee8f6972'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','03bf843e-3db6-49f5-9b04-326e70a1ea66'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','139c8f12-9583-4a30-92e5-cd9d0cf46405'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','1cf9baf7-76bf-4cdb-afe8-1ffb27217f61'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','303c1c68-7563-4132-94a3-e43a0a0231cc'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','4fe92f99-fb56-482a-8d9e-f3b3f8f4e613'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','5b0a2614-e84e-4524-991c-fac749e1128a'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','5c4902f3-5f31-4540-827e-b7808b16032d'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','5fc94db8-1194-4a0d-a783-de5d2c1a5587'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','6d1df838-e6aa-4777-a9f5-86d25cf8a86a'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','a1189d6d-abef-46e8-80d6-d1579d6ce4d8'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','a25346b3-3eb1-4d4c-9014-670e5a64704d'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','aee8d65b-dcf4-4932-b9df-a710988aa801'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','ce5c81ad-c50a-439b-aae8-3e60cb42779a'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','d5b35ebc-3e20-4180-99c3-e2c7d9f2fa85'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','dc7eb68b-8ee0-4c9c-9db8-e8e32bd13712'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','e6e231ed-4ad5-4e24-895a-2967a5812197'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','e8056b8d-7c15-4e4b-82a5-f67b3b95b2f6'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','e9c1fda2-d543-461b-8cdb-33133a697685'),('3d41da65-26f4-4039-b62d-550a72674bcd','59088a00-1404-46d2-8962-f68d30902581'),('3d41da65-26f4-4039-b62d-550a72674bcd','81d3f409-9049-4f41-808e-a172458c2f6b'),('3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6','2d766ca8-5f42-4d87-a711-603d24e98821'),('3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6','a4b76433-4732-46d3-844b-ae311102b77c'),('45da3944-f27a-46e9-a36e-281d0b08f289','ccad2365-80e8-4b74-ada2-df0df1d24109'),('49ae4d33-eb2c-4e99-b4c0-da5d22e0306d','3ba3dded-d13c-4c7f-bdb1-9a2afae1e6c6'),('49ae4d33-eb2c-4e99-b4c0-da5d22e0306d','df8c9733-2660-468f-9ad0-330da93a1197'),('4b57cd90-cd4e-45de-a265-e5979cda214c','827c5637-5003-4035-ad3b-8d8355d5997a'),('4fe92f99-fb56-482a-8d9e-f3b3f8f4e613','1cf9baf7-76bf-4cdb-afe8-1ffb27217f61'),('4fe92f99-fb56-482a-8d9e-f3b3f8f4e613','303c1c68-7563-4132-94a3-e43a0a0231cc'),('503993a8-0df3-456d-8260-a53187baa396','44220363-9996-4e27-ac1c-5fd16b50e70d'),('503993a8-0df3-456d-8260-a53187baa396','8b7a3629-82b6-44af-8fdf-51c811dcf701'),('52ce8b97-5e48-413b-ab04-ca1fe5276baa','2c57028f-2cae-437e-82c1-d3578bb15b70'),('5576c344-c813-4caf-810c-2827eb046b80','557b677e-5fa4-4cfe-bca7-9da3080da718'),('56fbfa84-458f-4b8a-9992-49688c930b9b','27503be0-9099-47c7-afd7-7e653263fb06'),('5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3','6dde44a8-c70c-48ab-93d7-3894a1ebcbef'),('5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3','a50bb24c-d80b-4bda-b37a-569474a9c9f9'),('5e7f658d-51a5-47ee-8402-f9d21dfd4b8b','b2838795-5778-4986-b66e-ac2155775b39'),('5e7f658d-51a5-47ee-8402-f9d21dfd4b8b','b99d9764-a05e-4d4d-883d-c564c3df8ec2'),('6bd54de9-7b15-474b-bef7-f932997c5954','45bc7a26-ba57-44de-90ae-396ba5bbc142'),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','8f7457b9-bb81-4dfe-a428-09761274708d'),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','bd2c8ff6-d737-4a09-a537-68d583c1b65d'),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','cb620534-d334-4b44-aad9-3f5e9736a709'),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','f21fa4d9-b0d3-493d-8dfb-ee53cd2fc391'),('7778b2cc-e1bb-4cc4-84b3-b6bce103eea1','0da2b5a0-a6d2-414f-9014-e09797b0f3fc'),('7778b2cc-e1bb-4cc4-84b3-b6bce103eea1','83a47cd6-6d74-4630-ad53-dff3cdc61718'),('778b690e-9002-44d7-9b04-ee924a3d5f42','e2f02537-a1d8-4f2b-bded-941295aa985d'),('79e4fb5f-4998-4918-88c3-7530547d5cc3','4c2f26ca-f705-4dbf-be07-7821817ec04e'),('79e4fb5f-4998-4918-88c3-7530547d5cc3','755cdefd-26b5-40c4-ad2c-55b19ef37923'),('79e4fb5f-4998-4918-88c3-7530547d5cc3','a048a7fa-9328-4033-b7bd-1f76cef467b0'),('79e4fb5f-4998-4918-88c3-7530547d5cc3','cc64ea62-cb76-4a81-bd4f-4b0906074420'),('7a08fd3c-abe9-49b9-95a2-81b04c85b560','34b9f4cf-3c26-4e25-b65b-219e5cbc0a10'),('7a08fd3c-abe9-49b9-95a2-81b04c85b560','7c631dec-c087-46ee-82b3-3acdef67a05c'),('7a08fd3c-abe9-49b9-95a2-81b04c85b560','ae8437a5-22e2-42e2-b9c9-4e4c71582977'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','0163443a-06f1-4077-838a-7047bbaaa327'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','0316ac6a-b8a6-46cf-a976-02f9d46b7902'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','058f39ba-1634-449d-b7d6-b405c184cbbe'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','078058d8-5220-4622-918b-50dbe9e380de'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','09e464e3-8ead-4a91-bcac-f5b512eeffb5'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','09f58c14-9f7c-4fef-bebd-49571a6a7237'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','1435b5c8-8a0b-4c06-88aa-20ee64e85e45'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','1bdb4933-9716-47ef-9e48-20f6e6858ec5'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','255c58a4-34fd-4b36-bd44-a2a086f6ae2b'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','2c4dc25e-6e2d-4d25-9114-df9adefa12ff'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','2cbbfc6e-344c-45af-9f0a-984dc2a63371'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','2ed569eb-b0bd-448f-972c-7dcd19a2a283'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','30276a64-897f-4a99-adfa-b10f6b50614e'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','3068d511-db6a-4ec3-9ab7-4cf621dc30f4'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','317d6e77-9881-46d0-bc3e-eb165b73f5b1'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','31e22061-2b1e-478b-a4f4-a8b0e8eccd64'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','3aedda03-ef01-4a97-a453-e96d3f44b2df'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','3ba3dded-d13c-4c7f-bdb1-9a2afae1e6c6'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','3cf00b77-0cbf-4a06-9267-64baa77dba11'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','44220363-9996-4e27-ac1c-5fd16b50e70d'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','44de610c-e2de-4509-b6ad-be186afe165e'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','45bc7a26-ba57-44de-90ae-396ba5bbc142'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','45da3944-f27a-46e9-a36e-281d0b08f289'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','48a359f1-5152-4604-ad40-3551eb7a2c63'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','49ae4d33-eb2c-4e99-b4c0-da5d22e0306d'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','4d35b15b-1b5b-483b-994e-ec0a75e8797e'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','4f4df316-62aa-418b-834f-59e72a1480f9'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','503993a8-0df3-456d-8260-a53187baa396'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','50459e93-8ea3-472a-9caa-cadf41c53f8a'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','5239398e-67c2-4f72-95b5-90e2fa4e7e69'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','5576c344-c813-4caf-810c-2827eb046b80'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','557b677e-5fa4-4cfe-bca7-9da3080da718'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','55864105-c641-41ec-820b-ec0743fa721c'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','58dcdce9-3e71-478c-a9c3-b5ec6c6be609'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','58e748d2-2024-43f3-ae56-f3a7ce69f6c5'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','59622a17-b592-4dc1-b8de-9f699856a7d8'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','599d54b8-7a8c-4981-a899-7c78747d97ad'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','5e7f658d-51a5-47ee-8402-f9d21dfd4b8b'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','5f18b65a-78b9-461b-9adf-dcfabf40807b'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','678b8ef9-b93f-4d23-aab9-d1152eeba111'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','68e922b8-6050-4393-9321-c801e594b22d'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','6b3c5361-ccd3-448b-abe1-5eabc03851b8'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','6b9b926a-b97f-4b54-928a-ad2bdce59720'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','6bd54de9-7b15-474b-bef7-f932997c5954'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','6de2f198-101c-4132-995e-c586da647383'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','727de6b0-a823-4a73-a56c-e54f8bb113d3'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','746008dc-277c-430e-9650-8dc5de4f1d62'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','74b5e6cc-eb8a-4921-869e-b9460a585afe'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','79ad376e-29fc-4555-8e64-8f501e006e82'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','7b8d8e8f-2c35-484d-a290-0d2cffd1db21'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','7c916da9-8a03-42ca-ab6a-82e1e3db614f'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','7d5a7f85-c018-4c18-ad5e-0376b6b59a19'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','80434558-8146-4506-baa3-35f86e1d6929'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','81878de2-667a-4d9d-8ed7-a9762d0df7c9'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','85efdc67-7d87-4a6e-843c-91e72b71a7d2'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','893e38b2-9e25-4f55-a6a0-5d603cabc7cb'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','8a025905-59d0-4bd2-9a9d-f157061d0618'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','8b7a3629-82b6-44af-8fdf-51c811dcf701'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','8e1df29b-f17c-45ab-b699-0de780f07c40'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','940c6f14-4235-42b3-a85b-ccfb78a7c727'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','9891f693-4cf5-410c-aa2c-d2a83a191894'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','9b59384b-e9a3-42fc-88e4-ee5061306beb'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','a271282f-6b8a-477e-89be-330219d7bee6'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','a2db3ab6-f293-47fb-b85d-b359c3505554'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','a2fa7401-7f66-487e-a9e2-5256f767f940'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','a323b497-eb57-47f9-924b-a169b51fa506'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','a4fc934c-6f0c-4abe-b320-5ec33dfc282d'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','a55be423-431d-410e-a778-724241991e03'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','ae7ed1d6-7456-45d1-afe4-0d30eea1fe68'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','af806cd6-6c26-4bef-ae26-937ca5fde725'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','b2789abc-8fef-49d9-80a1-de0d00d9a596'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','b2838795-5778-4986-b66e-ac2155775b39'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','b7ad9a17-add3-4ffc-aa87-551449fa26fc'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','b99d9764-a05e-4d4d-883d-c564c3df8ec2'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','b9b630ff-f85f-4bf5-ac76-e63db4095b94'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','bbf7feca-c9e0-47b0-989a-663bee8f6972'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','bd2b8f85-c1fb-4752-b691-8261cbc4d899'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','bd85744d-a53b-4ffd-adf2-cef66c87d8e5'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','c18fec7b-4d3c-4371-a07c-acce064e651f'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','c5186a7f-0310-4080-a2fc-8d2df2e343c7'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','c6f47f70-18b9-44ef-8ab2-fb4ab7f3017e'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','c89820bb-931b-4247-a6b1-8fb5ad6534ff'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','c8ba0863-676d-4087-a1cf-758439bb1696'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','ca23afbd-f203-428b-87a5-5e9e8fbf675f'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','caba1668-5359-4e11-a95c-66321b8af152'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','cbd025da-d9eb-4972-978d-dcecc998e457'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','ccad2365-80e8-4b74-ada2-df0df1d24109'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','cdc0a284-7f68-41d0-ab6a-161ad6b677df'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','cecd23c6-3458-4dfd-90e6-052a39c0542a'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','d03e92a7-1000-4251-a9e6-8ce6070400df'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','d0bc8fa2-4d6a-4f6e-8fd4-6c86e2a4b360'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','d31a8b3c-c67f-4b20-b34c-839b4ad39ba1'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','d8881d85-e32d-401d-a461-b312997caacd'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','d8a6b524-3014-4efe-94a0-ed2b20ce1362'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','df8c9733-2660-468f-9ad0-330da93a1197'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','e16d0ac7-8d7a-4c4a-8bcc-9f78f2ce8c56'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','e69733cd-577c-4440-951b-4902babd464e'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','ea64159b-d0f6-4b50-9074-475be1b8c06d'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','ea815d98-e475-41b7-ab75-dac6d36c10be'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','efbc6ab8-8273-4cf4-963e-742caaafb6d1'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f023c401-c8cf-43bc-a664-7dc230e6c21d'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f23bf1c6-20aa-428e-a192-00e7210118b6'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f4911d14-b7c3-4d2b-86f5-aacaeab4bfda'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f60927ac-f938-4e1e-934e-c22a6d5b2f11'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f6734237-4d33-4c30-9ab0-6789b0e743c1'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f827f212-1d3b-46b8-a3ca-040a54d1d415'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','f9b43100-92d1-4f59-bb9b-66278e09f66c'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','fb0cd553-e4a9-4f34-a86c-eeee1d825aae'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','fd1aedae-795e-4f41-a48f-008f1c85fb86'),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','16353c98-0b25-4a68-b7e6-169c7eaa05d6'),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','48eb4fbf-fcbc-4509-9543-95859dee34de'),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','4c8d95cf-333e-4428-be72-96316d8d3ad1'),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','eb079743-59e2-4cd2-a04d-affac31967ee'),('8a025905-59d0-4bd2-9a9d-f157061d0618','5f18b65a-78b9-461b-9adf-dcfabf40807b'),('8a025905-59d0-4bd2-9a9d-f157061d0618','727de6b0-a823-4a73-a56c-e54f8bb113d3'),('8c4b0f0d-ad06-41bc-8e63-cc9fba55ae8a','1ba8c00d-cd22-4309-accb-0a7f3f1ee4b1'),('8c4b0f0d-ad06-41bc-8e63-cc9fba55ae8a','59088a00-1404-46d2-8962-f68d30902581'),('8c4b0f0d-ad06-41bc-8e63-cc9fba55ae8a','81d3f409-9049-4f41-808e-a172458c2f6b'),('8d3f4cfd-25e0-42f4-bd12-da9fab18fe43','6a09bc5a-b08f-4b47-b84e-40c58632ecb9'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','00c36616-93ab-44d3-ad36-eea3b6eacd4b'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','05db61e5-7776-4d24-9ce1-fa78285cb2d9'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','14663fc2-ebf1-49e4-8188-bd09cdb3e125'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','2a2378e6-2194-4be2-95c6-3956df738abf'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','2e19d880-8d7a-4dad-96c0-2665db6ba40c'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','441c4676-3610-4ce0-a784-d5f1a8f899e8'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','56315c27-9198-49d6-bf1f-3e8a8dbd5c51'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','589ffac2-2068-49e7-afff-3875e319b4f2'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','63b8ba27-d6bf-4e8b-9624-3718f9a40e24'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','666e465d-2b22-4bfd-b852-f4de2eb676fd'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','68c0ad45-0597-4117-a712-0fe6697b4005'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','7cd3af91-fea2-4ebc-ae1e-8ccdfd515a96'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','850cf812-d00e-45d5-b523-45fa1820d4b2'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','92ac752f-9bda-4356-a9a6-e9c45379df22'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','c3182b59-ae61-4bf0-bfd2-dc682ffa360b'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','c7c95d4c-8e99-4638-969b-de68562c12b2'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','cb9c34d5-5c8e-4191-8c0f-c475c1ee0e37'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','e07b5d16-cdc1-4605-a57c-f8a6bb533a6e'),('972fc57b-c88e-4f11-b1b6-b4d8b4b21fe8','2c92488b-fa98-4e1f-a421-f6858d9f0979'),('972fc57b-c88e-4f11-b1b6-b4d8b4b21fe8','f98850c5-b6c1-445d-bb60-1d0b5ae7126f'),('9e327118-de2e-4868-a5db-9cda687e1de9','3dfd7da2-d4af-4c4d-9b6e-811582e118b7'),('a048a7fa-9328-4033-b7bd-1f76cef467b0','b165b57e-a4cf-4fbc-a692-1cee2a5ef2e1'),('a22eca50-8126-4d7c-a121-5db421566333','525c0f9e-849f-42df-8462-d00baf17f60e'),('a22eca50-8126-4d7c-a121-5db421566333','d0e6705d-bc2c-4a32-bbed-438c24754061'),('a68592f6-5444-49d2-b64c-3547761eaef8','2c92488b-fa98-4e1f-a421-f6858d9f0979'),('a68592f6-5444-49d2-b64c-3547761eaef8','785f61a0-b645-498d-82ee-d32bdee5c667'),('a68592f6-5444-49d2-b64c-3547761eaef8','f98850c5-b6c1-445d-bb60-1d0b5ae7126f'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','016fa8c7-ce46-4d56-8b77-fe7ba8887879'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','0d43a54f-3aa0-4c02-8313-cb96fc5696f8'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','10681388-accd-4893-ad50-19364bdedb1b'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','30eed118-f50d-48ea-ae23-02f4596ae670'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','3c97bdcd-4112-484c-aba1-a804bdf24351'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','44c41016-22ea-4f5e-ae98-5fb02646bc03'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','4a5f6bfa-9379-4e6c-b525-4c843b39e655'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','5f7ae568-7e18-4295-bbe6-ae51e787fadc'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','6a09bc5a-b08f-4b47-b84e-40c58632ecb9'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','88ea6e0b-5330-4cab-ae02-762e67a7fece'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','8d3f4cfd-25e0-42f4-bd12-da9fab18fe43'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','99b6a011-4348-4445-86dc-ae1b1c85c48e'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','a2b424b8-1ec6-4b13-833a-74e67166d8f2'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','b14297d4-6be7-4eb5-b1e0-3fb0224b451d'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','b87dddcd-3719-4bc7-82ae-dbd4f7b66fda'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','c091b0de-f830-43a0-92a6-f52e54c26bc3'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','c11d0a4d-7f37-4e9e-a871-a9ed9ec1258b'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','c74dd274-172a-4da6-824f-e97986d2d282'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','0daede2c-8902-4094-a769-ed33da091c13'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','2fe9ffe6-3d50-42c0-bff2-8bae7afb67de'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','525c0f9e-849f-42df-8462-d00baf17f60e'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','5b0a2614-e84e-4524-991c-fac749e1128a'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','740ac8e6-aeaa-491b-9c2f-b882e7cdd756'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','74a3f09a-9820-4367-947f-2fb7d7cd4295'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','74ae504b-2ef0-4027-9985-f4848422cc7b'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','b7cd51c1-0c6e-431f-b189-b50a6872e2e8'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','d0e6705d-bc2c-4a32-bbed-438c24754061'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','dc7eb68b-8ee0-4c9c-9db8-e8e32bd13712'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','e8056b8d-7c15-4e4b-82a5-f67b3b95b2f6'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','fb00d0b6-8453-470b-b98e-68c8a38e1437'),('b500b9f7-1da0-42d0-b1f5-8096a5949fd3','525c0f9e-849f-42df-8462-d00baf17f60e'),('b500b9f7-1da0-42d0-b1f5-8096a5949fd3','b7cd51c1-0c6e-431f-b189-b50a6872e2e8'),('b500b9f7-1da0-42d0-b1f5-8096a5949fd3','d0e6705d-bc2c-4a32-bbed-438c24754061'),('b737d068-a13c-4972-a30e-8d6c185b5bde','e30e041d-a625-490e-a3e9-9183f574e26b'),('b801339b-2297-4fb3-888c-7244dbfe28f7','2ee60687-caed-4815-9e58-7d13fb1d722a'),('b801339b-2297-4fb3-888c-7244dbfe28f7','5371d0bc-8fbb-44f9-953c-8b723c95c4f5'),('b9162a04-3cfb-4f5f-b0cc-49ddae5e5930','47f49633-fefe-4979-bc53-46fc95198379'),('b9162a04-3cfb-4f5f-b0cc-49ddae5e5930','a6cb37b5-0248-481d-95f9-6a623b01e8d0'),('b9b630ff-f85f-4bf5-ac76-e63db4095b94','3cf00b77-0cbf-4a06-9267-64baa77dba11'),('b9fd42e2-66e5-47c1-bf51-2c6a5ffd0714','5c10b805-f82a-4699-8537-7f5b42505ee6'),('b9fd42e2-66e5-47c1-bf51-2c6a5ffd0714','89739e66-7e58-4f80-b6f8-6fdbaa9bf77e'),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','1eb45331-d128-4b36-b06d-ec96988c1ae0'),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','4b57cd90-cd4e-45de-a265-e5979cda214c'),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','6474e73f-8b57-42a2-941a-3cbf485053de'),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','dc6b6680-f899-4978-9bce-6e7094a2d18c'),('bd2c8ff6-d737-4a09-a537-68d583c1b65d','3a04772f-3981-4c3c-9872-005333ed8a8f'),('c3182b59-ae61-4bf0-bfd2-dc682ffa360b','589ffac2-2068-49e7-afff-3875e319b4f2'),('c5c2e8c9-20a3-4f94-ab3a-768c986c2188','6f301e05-9af1-438b-bf55-e6cefd119f92'),('c5c2e8c9-20a3-4f94-ab3a-768c986c2188','7c600137-e113-40fc-8bfc-5ad4ccaa49fb'),('c61afc87-d329-4880-a830-957443029a32','05a2017d-8bb6-4907-835e-744aef179bf8'),('c61afc87-d329-4880-a830-957443029a32','61cf9da3-2d00-49ad-96b3-f5eebaad7320'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','0f919495-dd16-4126-b360-fa8b0eca949f'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','35ecf5f9-6921-462d-bde3-a6f8c1b5b40c'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','3bf95ccc-0989-4a5b-a1ea-5d0d8feb3c20'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','42947e3e-3e0c-4de5-aaa5-a77f96b3a8a2'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','4a534302-4518-4c4b-aa01-0cdca5a9f5e8'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','4c33fd9f-11f6-4873-a29f-da616f389506'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','58b4c453-b973-470e-a082-c9f4b6f40f8f'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','5c10b805-f82a-4699-8537-7f5b42505ee6'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','8173fc0f-7768-4f72-bd43-cbd8330466d3'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','84c9c6d7-7959-40b0-a622-69ab16e89031'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','89739e66-7e58-4f80-b6f8-6fdbaa9bf77e'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','b053258c-4a81-4ce6-a685-79459a3861d8'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','b737d068-a13c-4972-a30e-8d6c185b5bde'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','b9fd42e2-66e5-47c1-bf51-2c6a5ffd0714'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','c3e1d228-05f6-4405-a558-fd85e1bac325'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','e30e041d-a625-490e-a3e9-9183f574e26b'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','e871806a-9b61-4672-9a9b-d78d684ae893'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','fdc2dc46-93d5-40c9-a813-5fd549a9b4d1'),('c80ecfde-385f-43e9-a42b-46321696fffc','09edad34-b9e7-4004-a8f5-2161191861ce'),('c80ecfde-385f-43e9-a42b-46321696fffc','14e57850-1aee-4af0-a220-4eab87cebe53'),('c80ecfde-385f-43e9-a42b-46321696fffc','150f6734-f1fa-402f-9fe3-cf606829355b'),('c80ecfde-385f-43e9-a42b-46321696fffc','2c92488b-fa98-4e1f-a421-f6858d9f0979'),('c80ecfde-385f-43e9-a42b-46321696fffc','3958d706-05c3-408b-a249-cbc245f1dd47'),('c80ecfde-385f-43e9-a42b-46321696fffc','54168baa-7eda-4d44-bd78-af7e1146e3aa'),('c80ecfde-385f-43e9-a42b-46321696fffc','785f61a0-b645-498d-82ee-d32bdee5c667'),('c80ecfde-385f-43e9-a42b-46321696fffc','b08a9060-8cc8-41c9-a398-df2aaa3ca235'),('c80ecfde-385f-43e9-a42b-46321696fffc','b562ad49-247f-4307-a3aa-a61df05bacbc'),('c80ecfde-385f-43e9-a42b-46321696fffc','c8fec1f2-c33d-4e82-bdc2-91998339a9fa'),('c80ecfde-385f-43e9-a42b-46321696fffc','ee7c9054-a90e-45e2-90c6-c831d17997fc'),('c80ecfde-385f-43e9-a42b-46321696fffc','f98850c5-b6c1-445d-bb60-1d0b5ae7126f'),('ca0a1b0b-4873-49e3-a68b-b9da9395baef','461f426f-28d6-4d04-8d1c-1231b033d154'),('db8fe8f0-95b2-4994-b7c3-3a26d5cfd53b','7c631dec-c087-46ee-82b3-3acdef67a05c'),('db8fe8f0-95b2-4994-b7c3-3a26d5cfd53b','ae8437a5-22e2-42e2-b9c9-4e4c71582977'),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','06d15ba0-f35c-4ed5-9ed1-05c99ea815f3'),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','0f1bdf51-b93a-4300-a849-fb8434cae6dd'),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','2b00af1b-6b12-49ba-a56b-a5771ce3b576'),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','8edea794-0828-4eb5-856d-cc4236759ee7'),('df47e0db-7d53-44d7-a0a4-f4562e3b1cac','2acfb9cb-8742-4a6a-85e5-d46632822a14'),('df47e0db-7d53-44d7-a0a4-f4562e3b1cac','d84a2cbe-ac47-4b56-b2df-bfed41e56f14'),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','03c95d51-acb2-4d59-8183-70ab5ad5f4dc'),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','7ead06b0-15ed-4068-8478-05547fe4dfa5'),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','f01bef4a-708f-4186-9032-ade7470eade6'),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','fad7e635-f9fb-41d2-b5d1-668b6f24740a'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','0e2fe593-3dad-4a6d-a5d3-ef1a8e7321f3'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','123fb14d-ad3f-4060-9e3a-d6cc9c80c1d8'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','14e57850-1aee-4af0-a220-4eab87cebe53'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','45981cf3-7322-4611-a34c-adb5ff0cea63'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','461f426f-28d6-4d04-8d1c-1231b033d154'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','4c1245fd-5ee7-4c84-b7e5-0cf74c35f383'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','54168baa-7eda-4d44-bd78-af7e1146e3aa'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','6e1ae163-48cc-41e9-97e5-de96741d83c0'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','6f301e05-9af1-438b-bf55-e6cefd119f92'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','7c600137-e113-40fc-8bfc-5ad4ccaa49fb'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','94f29d70-8274-4ce4-acfb-fd485499bc32'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','9b9a8cde-4b65-4dfa-a5ac-b96a109f1404'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','b08a9060-8cc8-41c9-a398-df2aaa3ca235'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','bcaf2c31-32f6-44d4-9a70-ff7275006a43'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','c5c2e8c9-20a3-4f94-ab3a-768c986c2188'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','ca0a1b0b-4873-49e3-a68b-b9da9395baef'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','cc480c49-d77f-4007-ab84-95e46123ea30'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','fd24536d-ce81-4a7b-92e3-3c31b2631f9a'),('ea815d98-e475-41b7-ab75-dac6d36c10be','0163443a-06f1-4077-838a-7047bbaaa327'),('ea815d98-e475-41b7-ab75-dac6d36c10be','f827f212-1d3b-46b8-a3ca-040a54d1d415'),('eb079743-59e2-4cd2-a04d-affac31967ee','ca993dce-f05e-478e-bf8e-e212e76746be'),('efbc6ab8-8273-4cf4-963e-742caaafb6d1','2ed569eb-b0bd-448f-972c-7dcd19a2a283'),('efbc6ab8-8273-4cf4-963e-742caaafb6d1','940c6f14-4235-42b3-a85b-ccfb78a7c727'),('f01bef4a-708f-4186-9032-ade7470eade6','9d772b90-303b-44d1-84ef-a43431343e35'),('f118b3ef-a536-4828-b98b-faf7de151593','34d85992-04f8-4be4-8226-13808316b277'),('f14651a0-a105-4d18-8d50-537d3bb0b153','82a8764f-e088-4a02-b985-0b361d2e404b'),('f14651a0-a105-4d18-8d50-537d3bb0b153','8b5fde0d-09e8-4549-b9b5-a4ae5c8ffd98'),('f2335e97-5b71-4b0e-ae26-501d8869b0f8','7a8c5a05-24dd-4919-823a-a2a00f954213'),('f2335e97-5b71-4b0e-ae26-501d8869b0f8','b7021664-c3c1-404c-af76-df0ce27b1384'),('f2335e97-5b71-4b0e-ae26-501d8869b0f8','f8b83f8a-a235-4007-95ec-2abf90dfa43e'),('f341a69a-bbcf-42bf-895d-030b81e792a9','0941fd03-6406-44f6-880a-c70236923952'),('f341a69a-bbcf-42bf-895d-030b81e792a9','151b864e-732b-4771-b3ef-5494632f3dca'),('f341a69a-bbcf-42bf-895d-030b81e792a9','1dd54efe-e273-4776-920b-3e236bcef7b2'),('f341a69a-bbcf-42bf-895d-030b81e792a9','241edcc5-ccfb-408e-8d17-172ddcf119f5'),('f341a69a-bbcf-42bf-895d-030b81e792a9','34b9f4cf-3c26-4e25-b65b-219e5cbc0a10'),('f341a69a-bbcf-42bf-895d-030b81e792a9','4c33fd9f-11f6-4873-a29f-da616f389506'),('f341a69a-bbcf-42bf-895d-030b81e792a9','7c631dec-c087-46ee-82b3-3acdef67a05c'),('f341a69a-bbcf-42bf-895d-030b81e792a9','8173fc0f-7768-4f72-bd43-cbd8330466d3'),('f341a69a-bbcf-42bf-895d-030b81e792a9','ae8437a5-22e2-42e2-b9c9-4e4c71582977'),('f341a69a-bbcf-42bf-895d-030b81e792a9','aeb97fe6-5139-40f6-9cac-f9786deb1999'),('f341a69a-bbcf-42bf-895d-030b81e792a9','e8479eae-b00a-4e37-b3db-9600179b72c2'),('f341a69a-bbcf-42bf-895d-030b81e792a9','fdc2dc46-93d5-40c9-a813-5fd549a9b4d1'),('f427bb1c-fd3c-4cdc-9af8-4eee20c72f14','0df25890-45bf-4813-b44d-8d94f014baca'),('f427bb1c-fd3c-4cdc-9af8-4eee20c72f14','fec81e1b-ac40-4be7-b252-a182598f1a57'),('f4911d14-b7c3-4d2b-86f5-aacaeab4bfda','a323b497-eb57-47f9-924b-a169b51fa506');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `CREDENTIAL` VALUES ('49184133-8e8b-4eac-9c69-b30d2ef693de',NULL,'password','1012fedf-78c4-45b8-a167-29f735515410',1728267852921,NULL,'{\"value\":\"3YGNMW/qITr4sFqJ6Ny85nVU5h71M+H3aKfnq9t3VrGPcjyww/BJ1EfjKPtHzehDkdnh3+VvMmbyKrZ9HcGCIg==\",\"salt\":\"JeAKDLBTtJiwOlVuZujZlg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('5b89ba5f-7501-4de9-b34a-f55e20632b6c',NULL,'password','0caf326b-9de5-47f1-a66e-ec46fea0ad8e',1728267870833,NULL,'{\"value\":\"Kyx4EybPqC5E+w6KdzA6ce+rpvBauXQO05Oo5pARnRppL732n/G+D5jtXPaJjG7nb6VviEN/TAeIGWnCgEaQBw==\",\"salt\":\"zWUCx/2WLI82mMgf8wYdZQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('7513350c-dbf6-4e16-b039-2078da49ca54',NULL,'password','63ab0b81-7dec-4a18-9b33-ec1662c0c418',1728267609775,NULL,'{\"value\":\"Wf8GAsf6OPhBTAvVU1VZH25du7yx8oJfp4djPzMwSf8MyoCOVTPrGyypU1TCMoFAMsRxYKtikZp9Vv3GlahZVA==\",\"salt\":\"cNtYGFl26NP7PZOnjCeF+w==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('ae20c34e-8e2d-495e-9804-dcc7d40d16f4',NULL,'password','32cd561f-d83a-47d0-84ba-06226a9369f9',1728267901315,NULL,'{\"value\":\"V4ohUjt/6KKLghQfFgm7+QgGfBl2vjyNFmn2pkI/IGF9er6yN5basLMyZZSmTPcFPzQkmCvxfxy8VMWEknn4xw==\",\"salt\":\"1mTElQJpbp3fNun3pYBlvQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('ba9b0a09-43cd-4d73-89a2-8efa1e36bb52',NULL,'password','34d25214-78e8-4cda-94d3-c841d12af193',1728267885884,NULL,'{\"value\":\"FObAkyYGorwoRAev1MUnyN7AK+Fp90qSltpbY/E5+uNdQVUzVwzYfi/h7hx8Ym8omvRJu/wjxm6EGdfQesphCw==\",\"salt\":\"welddiz6roN2woVGzIJjPw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('df87ed97-ed7f-4a0c-8c9a-1a90208ca1ed',NULL,'password','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3',1728267916229,NULL,'{\"value\":\"T64oQCBJt4mzt4JNn5/Iuig7OqLAA531OiEknLj0HpNwAaYJ52zucRowDVtmYa07tmIfeUoXEBLIodIA0ALTzQ==\",\"salt\":\"wqxjHu9XXpYOPBYRD6+0mQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-10-07 11:19:59',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-10-07 11:19:59',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-10-07 11:19:59',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-10-07 11:19:59',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-10-07 11:19:59',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-10-07 11:20:00',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-10-07 11:20:00',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-10-07 11:20:00',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-10-07 11:20:00',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-10-07 11:20:01',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-10-07 11:20:01',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-10-07 11:20:01',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-10-07 11:20:01',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:20:01',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:20:01',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:20:01',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-10-07 11:20:01',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-10-07 11:20:01',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-10-07 11:20:02',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-10-07 11:20:02',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-10-07 11:20:02',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-10-07 11:20:02',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-10-07 11:20:02',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-10-07 11:20:02',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-10-07 11:20:02',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-10-07 11:20:02',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-10-07 11:20:02',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-10-07 11:20:02',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-10-07 11:20:03',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-10-07 11:20:03',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-10-07 11:20:03',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-10-07 11:20:03',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:20:03',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:20:03',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:20:03',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:20:03',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-10-07 11:20:03',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8267597401'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-10-07 11:20:03',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-10-07 11:20:03',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:20:03',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:20:03',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:20:03',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-10-07 11:20:03',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-10-07 11:20:03',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:20:03',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:20:03',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:20:03',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:20:04',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-10-07 11:20:04',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-10-07 11:20:04',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-10-07 11:20:04',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-10-07 11:20:04',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-10-07 11:20:04',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-10-07 11:20:04',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:20:04',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:20:04',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:20:04',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-10-07 11:20:05',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-10-07 11:20:05',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-10-07 11:20:05',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-10-07 11:20:05',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-10-07 11:20:05',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-10-07 11:20:05',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-10-07 11:20:05',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-10-07 11:20:05',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-10-07 11:20:05',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-10-07 11:20:05',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-10-07 11:20:05',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-10-07 11:20:05',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-10-07 11:20:05',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8267597401'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-10-07 11:20:05',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8267597401'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:20:05',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8267597401'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:20:05',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8267597401'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:20:05',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8267597401'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:20:05',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-10-07 11:20:05',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:20:05',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:20:05',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:20:06',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-10-07 11:20:06',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:20:06',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:20:06',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:20:06',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:20:06',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8267597401'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-10-07 11:20:06',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-10-07 11:20:06',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'8267597401'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-10-07 11:20:06',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-10-07 11:20:06',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'8267597401'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8267597401'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8267597401'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-10-07 11:20:06',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8267597401'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-10-07 11:20:06',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-10-07 11:20:06',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-10-07 11:20:06',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-10-07 11:20:06',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-10-07 11:20:06',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-10-07 11:20:06',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-10-07 11:20:06',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8267597401'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-10-07 11:20:06',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-10-07 11:20:06',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-10-07 11:20:06',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8267597401'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-10-07 11:20:06',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-10-07 11:20:06',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-10-07 11:20:06',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-10-07 11:20:06',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'8267597401'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-10-07 11:20:06',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:20:06',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:20:06',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:20:06',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-10-07 11:20:06',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-10-07 11:20:06',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-10-07 11:20:06',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-10-07 11:20:06',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8267597401');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(4) NOT NULL,
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
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,0,NULL,NULL),(1000,0,NULL,NULL),(1001,0,NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','2d12a112-b6ac-4f27-adf8-419313823f9b',1),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae',1),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','6ffd8b6f-8c35-453a-ad1e-0c694e7044b4',0),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','89097ec5-371b-470d-87e7-0c507b091049',1),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','8c563a73-7bac-4bef-b2e8-743c562632ab',0),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','91f33f30-20ed-4d15-b1b4-9cfc207febbf',1),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','92ce690b-387a-40bf-96b8-0e10538dc2a1',0),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','960782b3-b320-4a80-83da-aeeaeff5ded1',0),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','b1839dd1-6d4f-4404-a8bf-2b98f410d64a',1),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','f35aa46f-1efa-4916-9041-f0fa24c7163d',1),('org1','04a732fe-0057-431a-8e5e-cefe22b539da',1),('org1','28462c7b-8784-4627-a1dc-74027eb3fa38',0),('org1','303e364f-f8f7-4625-8fd0-e4c75bf1d7a2',1),('org1','3cf32623-68b2-4f2a-967b-a64cd478043b',1),('org1','59d00f82-6136-4b81-8656-46e6c3415c32',1),('org1','6eb00fc8-f174-47a0-8a34-b2cbc1f828a0',0),('org1','7073d37e-fe6a-47e3-b2a6-020173c158d0',0),('org1','990d785e-6447-46ac-9679-56792d7d4ab9',1),('org1','aa7f0938-587b-4f1c-9c68-a1735e40e0a4',1),('org1','c9ba77c3-a8af-4983-8be2-e1264401ebed',0),('org2','740466f9-f263-4178-9d03-beef10f9de6d',0),('org2','83e171f5-1c91-44ef-a28e-a99f7abb67d2',1),('org2','9e50c447-3724-4d62-b2e8-34683bf5b769',1),('org2','bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e',1),('org2','c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce',1),('org2','cd373230-5b56-4ce4-a25d-34d45e59bd83',1),('org2','ce1a2e24-b68f-413f-9707-2616c282bb1c',0),('org2','d234a70d-dbc2-4fee-8196-5a0ea9b55db1',1),('org2','daf1ced3-0e56-47a7-a931-9d10f3abda93',0),('org2','db51ca57-132c-4e81-bc34-573e636875e4',0),('org3','10c1a49a-2c0f-4f6c-884f-67c34f5bb974',1),('org3','29ecb88b-39dc-4cd3-afa5-f70f01a8b7b4',0),('org3','2f22783a-0f6f-49d7-9216-e4922d96ef1b',1),('org3','4e253170-e539-49b9-bf7c-7fcd28e039ee',1),('org3','4e885f94-d948-4ff8-b1e7-498e2c50359f',0),('org3','539a072b-f3e9-4647-bf06-356b77776893',0),('org3','75e013f2-7709-4ede-aa5a-f4d34da912cf',0),('org3','9461ec45-68b6-458a-bd3c-d8d1f62d1dc1',1),('org3','cc743f67-df57-4c93-8e53-a363f65baf99',1),('org3','da77b197-0569-4aa8-b1b0-59c7ca53509d',1),('org4','1bbb0978-0eb6-49b5-a7d9-3f57048ece41',0),('org4','1dbb45ff-1a05-489a-b0be-376b072d703e',0),('org4','21c35cb4-4988-4bb6-8915-5e3ad30651a3',0),('org4','26796e89-124e-43b2-b6d9-a80a07d36218',1),('org4','3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2',1),('org4','3fc97fa4-390d-4be2-9940-aeed63bcfe3f',1),('org4','73558497-d282-44af-af9c-2fc52486cb33',0),('org4','c616814a-8ea6-4403-b82a-0d3787af201f',1),('org4','d28fe72f-ca19-4122-b6a7-ae84436dfe79',1),('org4','d51aee07-adb6-4d3c-8068-be4d79cc0222',1),('org5','2a613d40-7a64-4a66-a284-bcf6f7163e12',1),('org5','313bc9f7-334f-4a13-944a-1dd01fddb753',1),('org5','53cd52e6-fefb-4b31-8355-daab74b7194d',1),('org5','63575043-c945-4444-ba92-400b911323e3',1),('org5','a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d',0),('org5','b0a114e9-341f-4d96-9e84-b61d1b27924b',0),('org5','b3102d83-f5f8-4105-9599-352458c2840a',1),('org5','bf14e201-5031-4b45-a71a-9e14b503b59b',0),('org5','dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0',1),('org5','f9e539d0-2e35-491b-9271-1070f835af65',0);
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `DETAILS_JSON_LONG_VALUE` longtext DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text DEFAULT NULL,
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`)
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` tinyint(4) NOT NULL DEFAULT 0,
  `AUTHENTICATE_BY_DEFAULT` tinyint(4) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` tinyint(4) NOT NULL DEFAULT 1,
  `TRUST_EMAIL` tinyint(4) NOT NULL DEFAULT 0,
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` tinyint(4) NOT NULL DEFAULT 0,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` tinyint(4) DEFAULT NULL,
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('002cf824-7b87-4995-ae81-827b6d19107b','6e8de75b-80b5-4366-953a-f95a340a5ed8',1,NULL,'_ws3-admin','org5','6e8de75b-80b5-4366-953a-f95a340a5ed8',NULL),('00c36616-93ab-44d3-ad36-eea3b6eacd4b','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_view-identity-providers}','view-identity-providers','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('013cf0a4-239d-4597-8cc5-6f5064b0831d','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-own-mt','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('0163443a-06f1-4077-838a-7047bbaaa327','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_query-groups}','query-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('016fa8c7-ce46-4d56-8b77-fe7ba8887879','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_query-users}','query-users','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('0316ac6a-b8a6-46cf-a976-02f9d46b7902','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_manage-realm}','manage-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('03bf843e-3db6-49f5-9b04-326e70a1ea66','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_view-clients}','view-clients','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('03c95d51-acb2-4d59-8183-70ab5ad5f4dc','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_view-profile}','view-profile','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('058f39ba-1634-449d-b7d6-b405c184cbbe','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_view-realm}','view-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('05a2017d-8bb6-4907-835e-744aef179bf8','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_ws2-admin','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('05aa4900-181b-46ac-8646-c77ff9e9701e','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-audit-log','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('05db61e5-7776-4d24-9ce1-fa78285cb2d9','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_view-authorization}','view-authorization','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('06c6ad58-1e17-4695-aaac-452e8ae326c0','6e8de75b-80b5-4366-953a-f95a340a5ed8',1,NULL,'_ws2-admin','org5','6e8de75b-80b5-4366-953a-f95a340a5ed8',NULL),('06d15ba0-f35c-4ed5-9ed1-05c99ea815f3','org4',0,'${role_offline-access}','offline_access','org4',NULL,NULL),('075aef47-7959-4b3a-bd88-0bb05a3fe06a','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_delete-account}','delete-account','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('078058d8-5220-4622-918b-50dbe9e380de','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_manage-users}','manage-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('081ff5e3-4014-4c53-bba7-e86dbfa71609','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,NULL,'_organization-manager','org1','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',NULL),('08e87834-885d-471d-8ec8-fc3f4a15ee3d','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-upd','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('0941fd03-6406-44f6-880a-c70236923952','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-ws-mt','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('09e464e3-8ead-4a91-bcac-f5b512eeffb5','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_view-realm}','view-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('09edad34-b9e7-4004-a8f5-2161191861ce','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-ws-mt','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('09f58c14-9f7c-4fef-bebd-49571a6a7237','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_view-identity-providers}','view-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('0d43a54f-3aa0-4c02-8313-cb96fc5696f8','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_query-realms}','query-realms','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('0da2b5a0-a6d2-414f-9014-e09797b0f3fc','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'ws3','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('0daede2c-8902-4094-a769-ed33da091c13','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-own-mt','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('0dec18f1-4b4c-40cb-a7da-e163998b6d53','b35e0475-d55b-4021-8732-f8e52632be27',1,NULL,'_ws2-admin','org3','b35e0475-d55b-4021-8732-f8e52632be27',NULL),('0df25890-45bf-4813-b44d-8d94f014baca','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'ws3','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('0e2fe593-3dad-4a6d-a5d3-ef1a8e7321f3','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_manage-events}','manage-events','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('0f1bdf51-b93a-4300-a849-fb8434cae6dd','org4',0,'${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('0f919495-dd16-4126-b360-fa8b0eca949f','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_view-authorization}','view-authorization','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('0fbc0abc-735e-4aba-83e1-ecd66303feb7','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_delete-account}','delete-account','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('10681388-accd-4893-ad50-19364bdedb1b','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_view-users}','view-users','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('10f033b7-102b-4cdc-9252-37514be96c00','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'ws3','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('115617f8-22d9-4d8f-b695-f06cf6627046','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_view-groups}','view-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('123fb14d-ad3f-4060-9e3a-d6cc9c80c1d8','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_manage-authorization}','manage-authorization','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('139c8f12-9583-4a30-92e5-cd9d0cf46405','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_query-realms}','query-realms','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('1435b5c8-8a0b-4c06-88aa-20ee64e85e45','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_view-identity-providers}','view-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('14663fc2-ebf1-49e4-8188-bd09cdb3e125','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_impersonation}','impersonation','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('14e57850-1aee-4af0-a220-4eab87cebe53','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_view-identity-providers}','view-identity-providers','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('150f6734-f1fa-402f-9fe3-cf606829355b','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-usage','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('151b864e-732b-4771-b3ef-5494632f3dca','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-usage','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('16353c98-0b25-4a68-b7e6-169c7eaa05d6','org3',0,'${role_offline-access}','offline_access','org3',NULL,NULL),('177eb5c3-bc45-4246-a9b9-e93512cdcafb','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-role-usr','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,NULL,'_ws2-admin','org4','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',NULL),('1b252917-6a73-4981-ae3c-edbfe8096bbc','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-usage','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('1b7f7f15-e2a3-42f5-9344-0d744418238a','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,NULL,'_ws2-admin','org1','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',NULL),('1ba8c00d-cd22-4309-accb-0a7f3f1ee4b1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-ws-role-mt','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('1bdb4933-9716-47ef-9e48-20f6e6858ec5','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_query-realms}','query-realms','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('1c4f1b4e-7712-40cb-b557-be3fe555ac07','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_view-groups}','view-groups','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('1cf9baf7-76bf-4cdb-afe8-1ffb27217f61','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_query-users}','query-users','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('1d034a73-20f6-4eba-a34e-17c1a4dd35e6','b35e0475-d55b-4021-8732-f8e52632be27',1,NULL,'_organization-user-manager','org3','b35e0475-d55b-4021-8732-f8e52632be27',NULL),('1dd54efe-e273-4776-920b-3e236bcef7b2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-upd','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('1eb45331-d128-4b36-b06d-ec96988c1ae0','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,'${role_offline-access}','offline_access','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,NULL),('1f7a30cf-7b99-4891-add8-ed72a2d0e640','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_view-groups}','view-groups','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('20576cc7-092a-44a5-afed-da5a491c21e7','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_view-groups}','view-groups','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('241edcc5-ccfb-408e-8d17-172ddcf119f5','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-audit-log','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('24287595-b21f-492f-97ea-7a67804707b5','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-usage','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('255c58a4-34fd-4b36-bd44-a2a086f6ae2b','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_manage-realm}','manage-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('2563c632-d028-4937-ae85-bc56afed7899','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_delete-account}','delete-account','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('27503be0-9099-47c7-afd7-7e653263fb06','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_view-consent}','view-consent','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('2a17ef7c-bff2-4390-a257-19ffd4569565','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_manage-consent}','manage-consent','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('2a2378e6-2194-4be2-95c6-3956df738abf','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_view-users}','view-users','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('2acfb9cb-8742-4a6a-85e5-d46632822a14','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_ws1-admin','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('2b00af1b-6b12-49ba-a56b-a5771ce3b576','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_manage-account}','manage-account','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('2c4dc25e-6e2d-4d25-9114-df9adefa12ff','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_impersonation}','impersonation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('2c57028f-2cae-437e-82c1-d3578bb15b70','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_view-consent}','view-consent','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('2c92488b-fa98-4e1f-a421-f6858d9f0979','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-ws-role-usr','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('2cbbfc6e-344c-45af-9f0a-984dc2a63371','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_impersonation}','impersonation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('2d766ca8-5f42-4d87-a711-603d24e98821','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'ws1','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('2e19d880-8d7a-4dad-96c0-2665db6ba40c','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_query-groups}','query-groups','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('2ed569eb-b0bd-448f-972c-7dcd19a2a283','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_query-groups}','query-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('2ee60687-caed-4815-9e58-7d13fb1d722a','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'ws1','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('2ef55f22-154c-4db9-bfd1-5e4b43c13616','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,NULL,'_ws3-admin','org2','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',NULL),('2fe9ffe6-3d50-42c0-bff2-8bae7afb67de','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-ws-mt','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('30276a64-897f-4a99-adfa-b10f6b50614e','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_view-authorization}','view-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('303c1c68-7563-4132-94a3-e43a0a0231cc','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_query-groups}','query-groups','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('3068d511-db6a-4ec3-9ab7-4cf621dc30f4','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_manage-identity-providers}','manage-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('30eed118-f50d-48ea-ae23-02f4596ae670','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_manage-users}','manage-users','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('3162e387-3ca4-441e-8b39-e15b79e58687','b35e0475-d55b-4021-8732-f8e52632be27',1,NULL,'_organization-manager','org3','b35e0475-d55b-4021-8732-f8e52632be27',NULL),('317d6e77-9881-46d0-bc3e-eb165b73f5b1','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_impersonation}','impersonation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('31e22061-2b1e-478b-a4f4-a8b0e8eccd64','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_view-clients}','view-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('34b9f4cf-3c26-4e25-b65b-219e5cbc0a10','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-ws-role-mt','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('34d85992-04f8-4be4-8226-13808316b277','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_view-consent}','view-consent','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('35ecf5f9-6921-462d-bde3-a6f8c1b5b40c','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_create-client}','create-client','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('3958d706-05c3-408b-a249-cbc245f1dd47','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-upd','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('3a04772f-3981-4c3c-9872-005333ed8a8f','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_manage-account-links}','manage-account-links','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('3aedda03-ef01-4a97-a453-e96d3f44b2df','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_view-events}','view-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('3b590d32-2e6d-473e-a7d6-c001ba92466f','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_ws2-admin','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('3b737083-a1a7-4f33-beb5-afaa82677044','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_ws2-admin','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('3ba3dded-d13c-4c7f-bdb1-9a2afae1e6c6','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_query-users}','query-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('3bf95ccc-0989-4a5b-a1ea-5d0d8feb3c20','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_manage-realm}','manage-realm','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('3c31c5c2-b182-45c8-8cf3-12b769fcac9c','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'ws2','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_realm-admin}','realm-admin','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('3c97bdcd-4112-484c-aba1-a804bdf24351','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_query-groups}','query-groups','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('3cf00b77-0cbf-4a06-9267-64baa77dba11','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_query-clients}','query-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('3d41da65-26f4-4039-b62d-550a72674bcd','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,NULL,'_organization-user-manager','org1','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',NULL),('3dfd7da2-d4af-4c4d-9b6e-811582e118b7','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_view-consent}','view-consent','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6','b35e0475-d55b-4021-8732-f8e52632be27',1,NULL,'_ws1-admin','org3','b35e0475-d55b-4021-8732-f8e52632be27',NULL),('3f128d19-6147-4d18-a193-ee982f4d4ec2','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_ws2-admin','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('3f3d78c5-8d4d-4e77-97c7-bf457daa9654','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_delete-account}','delete-account','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('42947e3e-3e0c-4de5-aaa5-a77f96b3a8a2','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_manage-events}','manage-events','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('441c4676-3610-4ce0-a784-d5f1a8f899e8','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_manage-authorization}','manage-authorization','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('44220363-9996-4e27-ac1c-5fd16b50e70d','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_query-users}','query-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('44c41016-22ea-4f5e-ae98-5fb02646bc03','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_view-realm}','view-realm','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('44de610c-e2de-4509-b6ad-be186afe165e','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_create-client}','create-client','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('45981cf3-7322-4611-a34c-adb5ff0cea63','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_impersonation}','impersonation','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('45bc7a26-ba57-44de-90ae-396ba5bbc142','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_query-clients}','query-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('45da3944-f27a-46e9-a36e-281d0b08f289','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_view-clients}','view-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('461f426f-28d6-4d04-8d1c-1231b033d154','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_query-clients}','query-clients','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('471f9f2a-f424-40c8-bb80-7bd87a3ae13b','62723fa8-4cfb-4d5f-910c-10d6f2aaa80f',1,'${role_read-token}','read-token','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','62723fa8-4cfb-4d5f-910c-10d6f2aaa80f',NULL),('47f49633-fefe-4979-bc53-46fc95198379','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'ws1','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('48a359f1-5152-4604-ad40-3551eb7a2c63','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_manage-authorization}','manage-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('48eb4fbf-fcbc-4509-9543-95859dee34de','org3',0,'${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('49ae4d33-eb2c-4e99-b4c0-da5d22e0306d','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_view-users}','view-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('4a534302-4518-4c4b-aa01-0cdca5a9f5e8','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_query-realms}','query-realms','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('4a5f6bfa-9379-4e6c-b525-4c843b39e655','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_create-client}','create-client','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('4b57cd90-cd4e-45de-a265-e5979cda214c','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_manage-account}','manage-account','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('4b67beb7-4ae1-4d96-929a-ea6e40c396dd','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_ws3-admin','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('4c1245fd-5ee7-4c84-b7e5-0cf74c35f383','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_query-realms}','query-realms','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('4c2f26ca-f705-4dbf-be07-7821817ec04e','org1',0,'${role_offline-access}','offline_access','org1',NULL,NULL),('4c33fd9f-11f6-4873-a29f-da616f389506','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_view-identity-providers}','view-identity-providers','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('4c8d95cf-333e-4428-be72-96316d8d3ad1','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_view-profile}','view-profile','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('4cb64959-2bd8-43c0-ba4e-fb8fdb1d04c3','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_view-applications}','view-applications','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('4d35b15b-1b5b-483b-994e-ec0a75e8797e','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_manage-authorization}','manage-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('4f4df316-62aa-418b-834f-59e72a1480f9','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_query-realms}','query-realms','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('4f5f06a0-078e-4a20-bdc3-c1ae77c72680','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'ws2','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('4fe92f99-fb56-482a-8d9e-f3b3f8f4e613','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_view-users}','view-users','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('503993a8-0df3-456d-8260-a53187baa396','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_view-users}','view-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('50459e93-8ea3-472a-9caa-cadf41c53f8a','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_manage-events}','manage-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('5239398e-67c2-4f72-95b5-90e2fa4e7e69','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_query-realms}','query-realms','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('525c0f9e-849f-42df-8462-d00baf17f60e','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-usr-mt','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('52ce8b97-5e48-413b-ab04-ca1fe5276baa','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_manage-consent}','manage-consent','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('5371d0bc-8fbb-44f9-953c-8b723c95c4f5','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_ws1-admin','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('54168baa-7eda-4d44-bd78-af7e1146e3aa','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_view-realm}','view-realm','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('5576c344-c813-4caf-810c-2827eb046b80','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_view-clients}','view-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('557b677e-5fa4-4cfe-bca7-9da3080da718','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_query-clients}','query-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('55864105-c641-41ec-820b-ec0743fa721c','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_manage-identity-providers}','manage-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('56315c27-9198-49d6-bf1f-3e8a8dbd5c51','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_query-realms}','query-realms','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('56fbfa84-458f-4b8a-9992-49688c930b9b','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_manage-consent}','manage-consent','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('589ffac2-2068-49e7-afff-3875e319b4f2','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_query-clients}','query-clients','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('58b4c453-b973-470e-a082-c9f4b6f40f8f','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_impersonation}','impersonation','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('58dcdce9-3e71-478c-a9c3-b5ec6c6be609','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_create-client}','create-client','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('58e748d2-2024-43f3-ae56-f3a7ce69f6c5','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_manage-users}','manage-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('59088a00-1404-46d2-8962-f68d30902581','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-usr-mt','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('59622a17-b592-4dc1-b8de-9f699856a7d8','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_view-realm}','view-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('599d54b8-7a8c-4981-a899-7c78747d97ad','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_view-authorization}','view-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('5b0a2614-e84e-4524-991c-fac749e1128a','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_view-realm}','view-realm','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('5b6abf2f-aafb-408b-bd7a-4346cb26174f','8ed022bc-766b-46e0-9fd1-d2348c174120',1,'${role_read-token}','read-token','org1','8ed022bc-766b-46e0-9fd1-d2348c174120',NULL),('5c10b805-f82a-4699-8537-7f5b42505ee6','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_query-users}','query-users','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('5c4902f3-5f31-4540-827e-b7808b16032d','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_view-events}','view-events','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3','b35e0475-d55b-4021-8732-f8e52632be27',1,NULL,'_ws3-admin','org3','b35e0475-d55b-4021-8732-f8e52632be27',NULL),('5e7f658d-51a5-47ee-8402-f9d21dfd4b8b','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_view-users}','view-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('5f18b65a-78b9-461b-9adf-dcfabf40807b','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_query-users}','query-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('5f7ae568-7e18-4295-bbe6-ae51e787fadc','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_view-identity-providers}','view-identity-providers','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('5fa0e5ca-e776-4ff0-b498-fcccfa951fff','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-own-mt','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('5fc94db8-1194-4a0d-a783-de5d2c1a5587','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_manage-events}','manage-events','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('61cf9da3-2d00-49ad-96b3-f5eebaad7320','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'ws2','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('63b8ba27-d6bf-4e8b-9624-3718f9a40e24','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_create-client}','create-client','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('6474e73f-8b57-42a2-941a-3cbf485053de','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_view-profile}','view-profile','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('666e465d-2b22-4bfd-b852-f4de2eb676fd','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_view-events}','view-events','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('678b8ef9-b93f-4d23-aab9-d1152eeba111','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_manage-authorization}','manage-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('68c0ad45-0597-4117-a712-0fe6697b4005','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_manage-identity-providers}','manage-identity-providers','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('68e922b8-6050-4393-9321-c801e594b22d','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_manage-clients}','manage-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('6a09bc5a-b08f-4b47-b84e-40c58632ecb9','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_query-clients}','query-clients','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('6b3c5361-ccd3-448b-abe1-5eabc03851b8','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_view-identity-providers}','view-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('6b9b926a-b97f-4b54-928a-ad2bdce59720','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_query-realms}','query-realms','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('6bd54de9-7b15-474b-bef7-f932997c5954','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_view-clients}','view-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('6d1df838-e6aa-4777-a9f5-86d25cf8a86a','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_manage-clients}','manage-clients','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('6dde44a8-c70c-48ab-93d7-3894a1ebcbef','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'ws3','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('6de2f198-101c-4132-995e-c586da647383','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_manage-users}','manage-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('6e1ae163-48cc-41e9-97e5-de96741d83c0','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_create-client}','create-client','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('6f301e05-9af1-438b-bf55-e6cefd119f92','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_query-groups}','query-groups','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('727de6b0-a823-4a73-a56c-e54f8bb113d3','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_query-groups}','query-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('72d1c654-5161-468f-862f-69aa607841ce','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-audit-log','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('73a2a057-8d33-494e-b02f-56568d64a6ff','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'ws2','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('740ac8e6-aeaa-491b-9c2f-b882e7cdd756','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-upd','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('746008dc-277c-430e-9650-8dc5de4f1d62','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_manage-authorization}','manage-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('74a3f09a-9820-4367-947f-2fb7d7cd4295','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-audit-log','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('74ae504b-2ef0-4027-9985-f4848422cc7b','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-role-usr','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('74b5e6cc-eb8a-4921-869e-b9460a585afe','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_manage-clients}','manage-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','org5',0,'${role_default-roles}','default-roles-org5','org5',NULL,NULL),('755cdefd-26b5-40c4-ad2c-55b19ef37923','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_view-profile}','view-profile','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('75ce0a2b-aaa8-473b-9ecd-bd876c5d959a','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'ws3','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('7778b2cc-e1bb-4cc4-84b3-b6bce103eea1','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,NULL,'_ws3-admin','org4','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',NULL),('778b690e-9002-44d7-9b04-ee924a3d5f42','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_manage-consent}','manage-consent','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('785f61a0-b645-498d-82ee-d32bdee5c667','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-ws-role-mt','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('79ad376e-29fc-4555-8e64-8f501e006e82','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_impersonation}','impersonation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('79e4fb5f-4998-4918-88c3-7530547d5cc3','org1',0,'${role_default-roles}','default-roles-org1','org1',NULL,NULL),('7a08fd3c-abe9-49b9-95a2-81b04c85b560','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,NULL,'_organization-user-role-manager','org2','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',NULL),('7a8c5a05-24dd-4919-823a-a2a00f954213','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-ws-role-usr','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,'${role_admin}','admin','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,NULL),('7b8d8e8f-2c35-484d-a290-0d2cffd1db21','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_manage-authorization}','manage-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('7c600137-e113-40fc-8bfc-5ad4ccaa49fb','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_query-users}','query-users','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('7c631dec-c087-46ee-82b3-3acdef67a05c','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-ws-role-usr','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('7c7b5c66-5175-4686-98a1-740fd72df498','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_view-applications}','view-applications','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('7c916da9-8a03-42ca-ab6a-82e1e3db614f','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_view-authorization}','view-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('7cd3af91-fea2-4ebc-ae1e-8ccdfd515a96','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_manage-clients}','manage-clients','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('7d5a7f85-c018-4c18-ad5e-0376b6b59a19','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_create-client}','create-client','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('7ead06b0-15ed-4068-8478-05547fe4dfa5','org2',0,'${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('7ed73969-2c00-430e-886a-9141927c58fc','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-ws-mt','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('80434558-8146-4506-baa3-35f86e1d6929','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_view-events}','view-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('8115542d-345d-4b79-865b-4fdb2831bc99','49d9b462-972b-441f-908b-c130c3841d6e',1,'${role_read-token}','read-token','org2','49d9b462-972b-441f-908b-c130c3841d6e',NULL),('8173fc0f-7768-4f72-bd43-cbd8330466d3','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_manage-identity-providers}','manage-identity-providers','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('81878de2-667a-4d9d-8ed7-a9762d0df7c9','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_create-client}','create-client','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('81d3f409-9049-4f41-808e-a172458c2f6b','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-ws-role-usr','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('827c5637-5003-4035-ad3b-8d8355d5997a','247c130c-df04-4adc-9bbc-32eef08eca4f',1,'${role_manage-account-links}','manage-account-links','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','247c130c-df04-4adc-9bbc-32eef08eca4f',NULL),('82a8764f-e088-4a02-b985-0b361d2e404b','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_ws1-admin','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('83a47cd6-6d74-4630-ad53-dff3cdc61718','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_ws3-admin','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('84c9c6d7-7959-40b0-a622-69ab16e89031','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_view-events}','view-events','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('850cf812-d00e-45d5-b523-45fa1820d4b2','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_manage-events}','manage-events','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('85efdc67-7d87-4a6e-843c-91e72b71a7d2','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_view-realm}','view-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','org3',0,'${role_default-roles}','default-roles-org3','org3',NULL,NULL),('88ea6e0b-5330-4cab-ae02-762e67a7fece','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_view-events}','view-events','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('893e38b2-9e25-4f55-a6a0-5d603cabc7cb','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_view-authorization}','view-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('89739e66-7e58-4f80-b6f8-6fdbaa9bf77e','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_query-groups}','query-groups','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('8a025905-59d0-4bd2-9a9d-f157061d0618','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_view-users}','view-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('8b5fde0d-09e8-4549-b9b5-a4ae5c8ffd98','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'ws1','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('8b7a3629-82b6-44af-8fdf-51c811dcf701','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_query-groups}','query-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('8c4b0f0d-ad06-41bc-8e63-cc9fba55ae8a','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,NULL,'_organization-user-role-manager','org1','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',NULL),('8c5bfdbd-39b1-4666-a36e-ef0441f5231c','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_view-groups}','view-groups','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('8d3f4cfd-25e0-42f4-bd12-da9fab18fe43','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_view-clients}','view-clients','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('8e1df29b-f17c-45ab-b699-0de780f07c40','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_manage-realm}','manage-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('8edea794-0828-4eb5-856d-cc4236759ee7','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_view-profile}','view-profile','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('8f7457b9-bb81-4dfe-a428-09761274708d','org5',0,'${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('8fdcf03f-04b6-4dc3-9837-cd6fa0c3a774','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_view-applications}','view-applications','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('92ac752f-9bda-4356-a9a6-e9c45379df22','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_query-users}','query-users','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('940c6f14-4235-42b3-a85b-ccfb78a7c727','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_query-users}','query-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_realm-admin}','realm-admin','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('94f29d70-8274-4ce4-acfb-fd485499bc32','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_manage-users}','manage-users','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('972fc57b-c88e-4f11-b1b6-b4d8b4b21fe8','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,NULL,'_organization-user-manager','org4','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',NULL),('9760b2eb-c729-4111-8fcd-9a2d8715a224','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_view-applications}','view-applications','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('9891f693-4cf5-410c-aa2c-d2a83a191894','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_manage-identity-providers}','manage-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('99b6a011-4348-4445-86dc-ae1b1c85c48e','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_manage-clients}','manage-clients','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('9b59384b-e9a3-42fc-88e4-ee5061306beb','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_impersonation}','impersonation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('9b9a8cde-4b65-4dfa-a5ac-b96a109f1404','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_manage-realm}','manage-realm','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('9d772b90-303b-44d1-84ef-a43431343e35','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_manage-account-links}','manage-account-links','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('9e327118-de2e-4868-a5db-9cda687e1de9','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_manage-consent}','manage-consent','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('a03a3bfc-6829-4da9-9e12-45a4fb9376fb','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_view-consent}','view-consent','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('a048a7fa-9328-4033-b7bd-1f76cef467b0','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_manage-account}','manage-account','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('a1189d6d-abef-46e8-80d6-d1579d6ce4d8','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_manage-authorization}','manage-authorization','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('a22eca50-8126-4d7c-a121-5db421566333','6e8de75b-80b5-4366-953a-f95a340a5ed8',1,NULL,'_organization-user-manager','org5','6e8de75b-80b5-4366-953a-f95a340a5ed8',NULL),('a25346b3-3eb1-4d4c-9014-670e5a64704d','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_create-client}','create-client','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('a271282f-6b8a-477e-89be-330219d7bee6','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_view-identity-providers}','view-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('a2b424b8-1ec6-4b13-833a-74e67166d8f2','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_manage-realm}','manage-realm','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('a2db3ab6-f293-47fb-b85d-b359c3505554','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_view-realm}','view-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('a2fa7401-7f66-487e-a9e2-5256f767f940','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_manage-realm}','manage-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('a323b497-eb57-47f9-924b-a169b51fa506','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_query-clients}','query-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('a371ff59-c3fd-42d6-999e-51b584002c4d','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-ws-mt','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('a4b76433-4732-46d3-844b-ae311102b77c','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_ws1-admin','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('a4fc934c-6f0c-4abe-b320-5ec33dfc282d','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_manage-identity-providers}','manage-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('a50bb24c-d80b-4bda-b37a-569474a9c9f9','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_ws3-admin','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('a55be423-431d-410e-a778-724241991e03','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_manage-identity-providers}','manage-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('a68592f6-5444-49d2-b64c-3547761eaef8','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,NULL,'_organization-user-role-manager','org4','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',NULL),('a6cb37b5-0248-481d-95f9-6a623b01e8d0','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_ws1-admin','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('a714cde6-43c2-4f2f-9d45-05f5c48380af','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_view-groups}','view-groups','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_realm-admin}','realm-admin','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('a8dd4f19-6da9-4585-aacf-53e97483d5b8','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_manage-account-links}','manage-account-links','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('a9d201e4-deb2-4522-b767-ac07325dbff7','d56965fb-1af1-4620-a800-374e6d540d7b',1,'${role_read-token}','read-token','org4','d56965fb-1af1-4620-a800-374e6d540d7b',NULL),('add1a704-9aa9-4b23-bfa4-24b30e330f48','6e8de75b-80b5-4366-953a-f95a340a5ed8',1,NULL,'_organization-manager','org5','6e8de75b-80b5-4366-953a-f95a340a5ed8',NULL),('ae7ed1d6-7456-45d1-afe4-0d30eea1fe68','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_query-realms}','query-realms','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('ae8437a5-22e2-42e2-b9c9-4e4c71582977','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-usr-mt','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('aeb97fe6-5139-40f6-9cac-f9786deb1999','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-own-mt','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('aee8d65b-dcf4-4932-b9df-a710988aa801','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_query-clients}','query-clients','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('af806cd6-6c26-4bef-ae26-937ca5fde725','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_manage-events}','manage-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('b053258c-4a81-4ce6-a685-79459a3861d8','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_manage-authorization}','manage-authorization','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('b08a9060-8cc8-41c9-a398-df2aaa3ca235','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_manage-identity-providers}','manage-identity-providers','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('b14297d4-6be7-4eb5-b1e0-3fb0224b451d','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_manage-authorization}','manage-authorization','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('b165b57e-a4cf-4fbc-a692-1cee2a5ef2e1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',1,'${role_manage-account-links}','manage-account-links','org1','48cafaa3-a0ea-4487-b393-6c4acb1c406d',NULL),('b2789abc-8fef-49d9-80a1-de0d00d9a596','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_query-realms}','query-realms','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('b2838795-5778-4986-b66e-ac2155775b39','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_query-groups}','query-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('b500b9f7-1da0-42d0-b1f5-8096a5949fd3','6e8de75b-80b5-4366-953a-f95a340a5ed8',1,NULL,'_organization-user-role-manager','org5','6e8de75b-80b5-4366-953a-f95a340a5ed8',NULL),('b562ad49-247f-4307-a3aa-a61df05bacbc','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-own-mt','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('b5638b9e-8b1e-4642-9f25-c1682b9605d3','b121d259-2e5d-4bd7-b7ef-552fec186314',1,'${role_read-token}','read-token','org3','b121d259-2e5d-4bd7-b7ef-552fec186314',NULL),('b6e1d93a-d188-4632-be47-13533712312c','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_ws2-admin','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('b7021664-c3c1-404c-af76-df0ce27b1384','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-ws-role-mt','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('b737d068-a13c-4972-a30e-8d6c185b5bde','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_view-clients}','view-clients','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('b7ad9a17-add3-4ffc-aa87-551449fa26fc','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_manage-realm}','manage-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('b7cd51c1-0c6e-431f-b189-b50a6872e2e8','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-ws-role-mt','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('b801339b-2297-4fb3-888c-7244dbfe28f7','6e8de75b-80b5-4366-953a-f95a340a5ed8',1,NULL,'_ws1-admin','org5','6e8de75b-80b5-4366-953a-f95a340a5ed8',NULL),('b87dddcd-3719-4bc7-82ae-dbd4f7b66fda','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_impersonation}','impersonation','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('b9162a04-3cfb-4f5f-b0cc-49ddae5e5930','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,NULL,'_ws1-admin','org1','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',NULL),('b99d9764-a05e-4d4d-883d-c564c3df8ec2','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_query-users}','query-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('b9b630ff-f85f-4bf5-ac76-e63db4095b94','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_view-clients}','view-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('b9fd42e2-66e5-47c1-bf51-2c6a5ffd0714','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_view-users}','view-users','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('bbf7feca-c9e0-47b0-989a-663bee8f6972','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_query-clients}','query-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,'${role_default-roles}','default-roles-master','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,NULL),('bcaf2c31-32f6-44d4-9a70-ff7275006a43','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_manage-clients}','manage-clients','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('bd2b8f85-c1fb-4752-b691-8261cbc4d899','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_manage-events}','manage-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('bd2c8ff6-d737-4a09-a537-68d583c1b65d','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_manage-account}','manage-account','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('bd85744d-a53b-4ffd-adf2-cef66c87d8e5','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_view-realm}','view-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('c091b0de-f830-43a0-92a6-f52e54c26bc3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_manage-identity-providers}','manage-identity-providers','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('c11d0a4d-7f37-4e9e-a871-a9ed9ec1258b','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_view-authorization}','view-authorization','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('c18fec7b-4d3c-4371-a07c-acce064e651f','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_view-events}','view-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('c3182b59-ae61-4bf0-bfd2-dc682ffa360b','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_view-clients}','view-clients','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('c3e1d228-05f6-4405-a558-fd85e1bac325','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_manage-users}','manage-users','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('c5186a7f-0310-4080-a2fc-8d2df2e343c7','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_manage-clients}','manage-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('c5c2e8c9-20a3-4f94-ab3a-768c986c2188','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_view-users}','view-users','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('c61afc87-d329-4880-a830-957443029a32','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,NULL,'_ws2-admin','org2','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',NULL),('c6f47f70-18b9-44ef-8ab2-fb4ab7f3017e','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_create-client}','create-client','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('c74dd274-172a-4da6-824f-e97986d2d282','3188b743-30fd-4ea4-ace3-ed104e5eac5d',1,'${role_manage-events}','manage-events','org3','3188b743-30fd-4ea4-ace3-ed104e5eac5d',NULL),('c7c95d4c-8e99-4638-969b-de68562c12b2','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_manage-users}','manage-users','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('c7d679e9-1f33-4f3b-8690-7c29099801e3','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_realm-admin}','realm-admin','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('c80ecfde-385f-43e9-a42b-46321696fffc','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,NULL,'_organization-manager','org4','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',NULL),('c89820bb-931b-4247-a6b1-8fb5ad6534ff','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,'${role_create-realm}','create-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,NULL),('c8ba0863-676d-4087-a1cf-758439bb1696','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_manage-users}','manage-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('c8fec1f2-c33d-4e82-bdc2-91998339a9fa','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-audit-log','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('ca0a1b0b-4873-49e3-a68b-b9da9395baef','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_view-clients}','view-clients','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('ca23afbd-f203-428b-87a5-5e9e8fbf675f','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_impersonation}','impersonation','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('ca993dce-f05e-478e-bf8e-e212e76746be','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_manage-account-links}','manage-account-links','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('caba1668-5359-4e11-a95c-66321b8af152','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_view-events}','view-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('cb620534-d334-4b44-aad9-3f5e9736a709','org5',0,'${role_offline-access}','offline_access','org5',NULL,NULL),('cb9c34d5-5c8e-4191-8c0f-c475c1ee0e37','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_manage-realm}','manage-realm','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('cbd025da-d9eb-4972-978d-dcecc998e457','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_manage-events}','manage-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('cc480c49-d77f-4007-ab84-95e46123ea30','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_view-events}','view-events','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('cc64ea62-cb76-4a81-bd4f-4b0906074420','org1',0,'${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('ccad2365-80e8-4b74-ada2-df0df1d24109','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_query-clients}','query-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('cdc0a284-7f68-41d0-ab6a-161ad6b677df','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_manage-authorization}','manage-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('ce5c81ad-c50a-439b-aae8-3e60cb42779a','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_view-authorization}','view-authorization','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('cecd23c6-3458-4dfd-90e6-052a39c0542a','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_manage-realm}','manage-realm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('d03e92a7-1000-4251-a9e6-8ce6070400df','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_manage-users}','manage-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('d0bc8fa2-4d6a-4f6e-8fd4-6c86e2a4b360','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_manage-clients}','manage-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('d0e6705d-bc2c-4a32-bbed-438c24754061','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-ws-role-usr','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('d31a8b3c-c67f-4b20-b34c-839b4ad39ba1','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_create-client}','create-client','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('d3f64394-249b-4879-b8aa-5818878b827b','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_delete-account}','delete-account','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('d47fcc03-ea3e-445a-a865-1e8ea65e4798','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-upd','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('d5b35ebc-3e20-4180-99c3-e2c7d9f2fa85','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_manage-users}','manage-users','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('d84a2cbe-ac47-4b56-b2df-bfed41e56f14','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'ws1','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('d8881d85-e32d-401d-a461-b312997caacd','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_manage-identity-providers}','manage-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('d8a6b524-3014-4efe-94a0-ed2b20ce1362','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_manage-users}','manage-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('db8fe8f0-95b2-4994-b7c3-3a26d5cfd53b','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,NULL,'_organization-user-manager','org2','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',NULL),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','org4',0,'${role_default-roles}','default-roles-org4','org4',NULL,NULL),('dc6b6680-f899-4978-9bce-6e7094a2d18c','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,'${role_uma_authorization}','uma_authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',NULL,NULL),('dc7eb68b-8ee0-4c9c-9db8-e8e32bd13712','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_manage-identity-providers}','manage-identity-providers','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('dcda7f3f-0c92-452f-8d4e-0a2eb5441834','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',1,'${role_view-applications}','view-applications','org4','3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2',NULL),('de3916db-066c-4525-816c-47ea54cc6f03','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_ws3-admin','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('df47e0db-7d53-44d7-a0a4-f4562e3b1cac','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',1,NULL,'_ws1-admin','org4','5fd03581-4e84-4f6b-9f89-0db2f49f2b54',NULL),('df8c9733-2660-468f-9ad0-330da93a1197','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_query-groups}','query-groups','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('e07b5d16-cdc1-4605-a57c-f8a6bb533a6e','50f136fa-4352-44bc-8a43-bd16889d14c2',1,'${role_view-realm}','view-realm','org1','50f136fa-4352-44bc-8a43-bd16889d14c2',NULL),('e131344c-bfa3-42b7-8c39-bb6c4f151b76','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_og-role-usr','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('e16d0ac7-8d7a-4c4a-8bcc-9f78f2ce8c56','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_view-authorization}','view-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('e2f02537-a1d8-4f2b-bded-941295aa985d','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_view-consent}','view-consent','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('e30e041d-a625-490e-a3e9-9183f574e26b','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_query-clients}','query-clients','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','org2',0,'${role_default-roles}','default-roles-org2','org2',NULL,NULL),('e6762070-8d0a-4519-bf1b-95bbed1be522','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'ws2','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('e69733cd-577c-4440-951b-4902babd464e','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_view-authorization}','view-authorization','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('e6e231ed-4ad5-4e24-895a-2967a5812197','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_manage-realm}','manage-realm','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('e8056b8d-7c15-4e4b-82a5-f67b3b95b2f6','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_view-identity-providers}','view-identity-providers','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('e8479eae-b00a-4e37-b3db-9600179b72c2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',1,NULL,'_og-role-usr','org2','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('e871806a-9b61-4672-9a9b-d78d684ae893','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_manage-clients}','manage-clients','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('e890b526-d16a-4b1f-a205-4c0b545ab92c','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_realm-admin}','realm-admin','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('e9c1fda2-d543-461b-8cdb-33133a697685','14d8dd09-3c4e-47ba-85e2-187b92666d52',1,'${role_impersonation}','impersonation','org5','14d8dd09-3c4e-47ba-85e2-187b92666d52',NULL),('ea64159b-d0f6-4b50-9074-475be1b8c06d','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1,'${role_manage-events}','manage-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',NULL),('ea815d98-e475-41b7-ab75-dac6d36c10be','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_view-users}','view-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('eb079743-59e2-4cd2-a04d-affac31967ee','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_manage-account}','manage-account','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('ee7c9054-a90e-45e2-90c6-c831d17997fc','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-role-usr','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('ee92a85e-1c9a-408f-905a-b4bec3f10d90','2ffb1a38-5d01-4a63-9222-6daf65dff683',1,'${role_read-token}','read-token','org5','2ffb1a38-5d01-4a63-9222-6daf65dff683',NULL),('efbc6ab8-8273-4cf4-963e-742caaafb6d1','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_view-users}','view-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('f01bef4a-708f-4186-9032-ade7470eade6','320bf213-0be2-406c-823b-fc4c520ad8ca',1,'${role_manage-account}','manage-account','org2','320bf213-0be2-406c-823b-fc4c520ad8ca',NULL),('f023c401-c8cf-43bc-a664-7dc230e6c21d','edecac89-54e9-43a2-968e-9de464892d92',1,'${role_view-identity-providers}','view-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','edecac89-54e9-43a2-968e-9de464892d92',NULL),('f118b3ef-a536-4828-b98b-faf7de151593','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_manage-consent}','manage-consent','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('f14651a0-a105-4d18-8d50-537d3bb0b153','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,NULL,'_ws1-admin','org2','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',NULL),('f21fa4d9-b0d3-493d-8dfb-ee53cd2fc391','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_view-profile}','view-profile','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('f2335e97-5b71-4b0e-ae26-501d8869b0f8','b35e0475-d55b-4021-8732-f8e52632be27',1,NULL,'_organization-user-role-manager','org3','b35e0475-d55b-4021-8732-f8e52632be27',NULL),('f23bf1c6-20aa-428e-a192-00e7210118b6','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_manage-events}','manage-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('f341a69a-bbcf-42bf-895d-030b81e792a9','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',1,NULL,'_organization-manager','org2','bdd6d1b9-ec83-4ce6-9934-42cb88dd134f',NULL),('f427bb1c-fd3c-4cdc-9af8-4eee20c72f14','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',1,NULL,'_ws3-admin','org1','beab61ef-c70f-46ca-a8d1-3bf0973ffbf2',NULL),('f4911d14-b7c3-4d2b-86f5-aacaeab4bfda','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_view-clients}','view-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('f60927ac-f938-4e1e-934e-c22a6d5b2f11','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_view-events}','view-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('f6734237-4d33-4c30-9ab0-6789b0e743c1','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1,'${role_manage-clients}','manage-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','d6a650f1-fd7b-4c66-a0a2-933be4467fb2',NULL),('f827f212-1d3b-46b8-a3ca-040a54d1d415','a2217405-b748-40da-bb15-7b7956c7b232',1,'${role_query-users}','query-users','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','a2217405-b748-40da-bb15-7b7956c7b232',NULL),('f8b83f8a-a235-4007-95ec-2abf90dfa43e','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',1,NULL,'_og-usr-mt','org3','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('f9339250-28b2-4349-99a5-d274f69c97b4','875b4390-17a7-4104-a76d-574bb0fd81c6',1,'${role_view-applications}','view-applications','org5','875b4390-17a7-4104-a76d-574bb0fd81c6',NULL),('f98850c5-b6c1-445d-bb60-1d0b5ae7126f','db6ec1b2-3401-449a-a512-a67ed08e1f1c',1,NULL,'_og-usr-mt','org4','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('f9b43100-92d1-4f59-bb9b-66278e09f66c','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_manage-clients}','manage-clients','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('fad7e635-f9fb-41d2-b5d1-668b6f24740a','org2',0,'${role_offline-access}','offline_access','org2',NULL,NULL),('fb00d0b6-8453-470b-b98e-68c8a38e1437','b2243579-8514-4d2a-a723-7ea4e4070794',1,NULL,'_og-usage','org5','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('fb0cd553-e4a9-4f34-a86c-eeee1d825aae','51eabf99-b8e2-41a9-bb92-892cceee46fd',1,'${role_view-events}','view-events','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','51eabf99-b8e2-41a9-bb92-892cceee46fd',NULL),('fd1aedae-795e-4f41-a48f-008f1c85fb86','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1,'${role_view-identity-providers}','view-identity-providers','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','231b1e7c-cde3-41a3-a8ef-63e8915e37f7',NULL),('fd24536d-ce81-4a7b-92e3-3c31b2631f9a','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',1,'${role_view-authorization}','view-authorization','org4','728b4ede-24f3-45dd-9c8f-81a7e030a0d5',NULL),('fdb57c8c-3eee-48f5-b9bc-77e0277b5e5e','abd62508-13a4-4ee5-960a-10978cf868d4',1,'${role_delete-account}','delete-account','org3','abd62508-13a4-4ee5-960a-10978cf868d4',NULL),('fdc2dc46-93d5-40c9-a813-5fd549a9b4d1','92368d3d-3efb-4922-a8a0-f74c411a6744',1,'${role_view-realm}','view-realm','org2','92368d3d-3efb-4922-a8a0-f74c411a6744',NULL),('fec81e1b-ac40-4be7-b252-a182598f1a57','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',1,NULL,'_ws3-admin','org1','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `MIGRATION_MODEL` VALUES ('bqdlw','24.0.5',1728267607);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('02597440-9d9e-49fe-a0d8-f43c0770534c','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d51aee07-adb6-4d3c-8068-be4d79cc0222'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('0659a5d2-eb1b-45db-82ae-7669c005afec','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'91f33f30-20ed-4d15-b1b4-9cfc207febbf'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('07d06110-81a2-4d01-a959-072a96825073','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21c35cb4-4988-4bb6-8915-5e3ad30651a3'),('0a659998-7656-46a3-b886-b12b14b232d0','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'91f33f30-20ed-4d15-b1b4-9cfc207febbf'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('0bbf753b-054d-445a-8f56-06ea0d83a49d','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'6ffd8b6f-8c35-453a-ad1e-0c694e7044b4'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('11ad6f85-8f2a-4db1-86a2-de09921b2ca4','full name','openid-connect','oidc-full-name-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('14e7dba9-a67d-4c12-9e0e-6b84c9adbaf1','acr loa level','openid-connect','oidc-acr-mapper',NULL,'9461ec45-68b6-458a-bd3c-d8d1f62d1dc1'),('155c0ca9-2d71-4436-8b3f-7a6201630683','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('15a7274c-2333-4297-8be2-3dc781d192be','locale','openid-connect','oidc-usermodel-attribute-mapper','c69d2ba3-054d-401f-843c-11c288b4bf11',NULL),('16784d75-2e3f-400a-aa60-ac5c20457ecb','locale','openid-connect','oidc-usermodel-attribute-mapper','3629d25b-c624-44fa-bd37-4d002d7cadaf',NULL),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'2f22783a-0f6f-49d7-9216-e4922d96ef1b'),('1b4c3e9f-e917-444b-ac27-dcc9a8888a9b','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'63575043-c945-4444-ba92-400b911323e3'),('204ee718-4fb3-475d-a275-f2f2deb54a24','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('210e9590-8380-4730-abbd-aef4e15655a6','audience resolve','openid-connect','oidc-audience-resolve-mapper','88f9cb09-eff6-4136-a490-a8e71bc4bd9c',NULL),('21100036-22b5-4f89-9b26-b56db2ef22d2','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('23590207-325c-4a3f-96fb-945dad757654','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('237d409a-59f3-471c-b03c-b2c5365cdc47','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('2461538c-620a-4680-bcc6-532669568256','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('264c7c13-4784-44d4-8cae-9fca457335e3','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('2735a570-91af-4389-b4b6-afcb6e7f480f','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ce1a2e24-b68f-413f-9707-2616c282bb1c'),('2f056d09-0062-40b3-b1c1-2f1ebed5caa4','acr loa level','openid-connect','oidc-acr-mapper',NULL,'c616814a-8ea6-4403-b82a-0d3787af201f'),('31015608-ac51-478e-91d5-2603efc0c947','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('32aa91ea-2408-44f5-bb01-f149363aa068','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('32b3fe73-1c0a-4a1b-a60f-3f341bdaa4d0','acr loa level','openid-connect','oidc-acr-mapper',NULL,'aa7f0938-587b-4f1c-9c68-a1735e40e0a4'),('33d0d0a3-7085-4877-ad46-59a36c358be0','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'cc743f67-df57-4c93-8e53-a363f65baf99'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b3102d83-f5f8-4105-9599-352458c2840a'),('352c60fd-f5d9-4b14-a345-52ad071fd856','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'b3102d83-f5f8-4105-9599-352458c2840a'),('358a9dd8-db73-4dc1-8114-3382049bb169','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'539a072b-f3e9-4647-bf06-356b77776893'),('3d2fe62a-1dbb-4836-8c96-90c992a6963d','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'53cd52e6-fefb-4b31-8355-daab74b7194d'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('40c12ea9-3971-45c9-bec5-0c880300d02d','role list','saml','saml-role-list-mapper',NULL,'d28fe72f-ca19-4122-b6a7-ae84436dfe79'),('419beefd-7561-4075-a1a4-32c1304bd773','role list','saml','saml-role-list-mapper',NULL,'3cf32623-68b2-4f2a-967b-a64cd478043b'),('41b61419-a76d-4746-893e-460ad12a91c8','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c9ba77c3-a8af-4983-8be2-e1264401ebed'),('422adee7-136c-4c01-ae7d-097310fc07e2','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'cd373230-5b56-4ce4-a25d-34d45e59bd83'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'21c35cb4-4988-4bb6-8915-5e3ad30651a3'),('43c51deb-54e7-44da-8223-9602cbe8dcff','audience resolve','openid-connect','oidc-audience-resolve-mapper','f449b258-f07c-46fb-b48a-7c98cdb4cb02',NULL),('458279dd-c692-4eb4-b877-8c49e15bd706','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('472fadc8-cb69-4c4b-8e2f-e7506eae411d','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'59d00f82-6136-4b81-8656-46e6c3415c32'),('47a21f1a-6462-4216-87b6-525784603e8e','acr loa level','openid-connect','oidc-acr-mapper',NULL,'5701f2f8-a1a1-4490-bbfc-9fc8ec0da0ae'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('49e5214d-ff96-4ff2-bcf5-66b78985aa8f','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'26796e89-124e-43b2-b6d9-a80a07d36218'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'539a072b-f3e9-4647-bf06-356b77776893'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bf14e201-5031-4b45-a71a-9e14b503b59b'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('4c189386-0a4d-470c-acfa-70afb8f70193','address','openid-connect','oidc-address-mapper',NULL,'6eb00fc8-f174-47a0-8a34-b2cbc1f828a0'),('4ce019f4-52c2-44ef-8414-b74b2998edd7','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'2f22783a-0f6f-49d7-9216-e4922d96ef1b'),('4ce2231a-431c-4824-bc13-b4c239ed9767','address','openid-connect','oidc-address-mapper',NULL,'92ce690b-387a-40bf-96b8-0e10538dc2a1'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('5092decd-3b46-4942-bf66-79467fad91ef','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'cd373230-5b56-4ce4-a25d-34d45e59bd83'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','d9b7fb56-cf40-4830-bfb7-5a92cca769f4',NULL),('5198d55c-32a8-408a-b89e-aa89165aef86','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'04a732fe-0057-431a-8e5e-cefe22b539da'),('520d17d5-d075-4564-87ee-e426fb6c3008','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('5402624c-8382-4de6-af02-02bec590e281','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('54837258-4239-4736-8963-3b64de0cd258','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('548587a1-fd4f-4d09-8e85-08a8449fd762','role list','saml','saml-role-list-mapper',NULL,'da77b197-0569-4aa8-b1b0-59c7ca53509d'),('55b40d02-073a-4234-9d56-5efefe3aa89c','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('57c07200-e91a-488a-a469-cbd9137e6deb','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('598aec9c-3009-4452-9542-a6bce4fb34a3','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7073d37e-fe6a-47e3-b2a6-020173c158d0'),('5aad4835-bd83-41e1-bffe-b466934fb566','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','d9b7fb56-cf40-4830-bfb7-5a92cca769f4',NULL),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('5c934078-6663-4b87-b82f-0100223acb95','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'53cd52e6-fefb-4b31-8355-daab74b7194d'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'91f33f30-20ed-4d15-b1b4-9cfc207febbf'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('64d60b58-9dad-45da-914f-412d2d4b2e73','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','locale','openid-connect','oidc-usermodel-attribute-mapper','4b169bff-a3f6-45c3-90f2-20ef68a8a7d2',NULL),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('67cc80d5-d7b8-44ae-aec2-1aaa278d7a67','full name','openid-connect','oidc-full-name-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('692987fd-12d6-450c-963e-647e409eb830','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('69fd8804-921d-4f49-b1ca-ce862eae3796','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'53cd52e6-fefb-4b31-8355-daab74b7194d'),('6c215092-07c1-498d-b9c5-2216df605117','full name','openid-connect','oidc-full-name-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'2f22783a-0f6f-49d7-9216-e4922d96ef1b'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','address','openid-connect','oidc-address-mapper',NULL,'daf1ced3-0e56-47a7-a931-9d10f3abda93'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c9ba77c3-a8af-4983-8be2-e1264401ebed'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('774643a4-0563-41e4-b976-b5abc93851dc','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'3fc97fa4-390d-4be2-9940-aeed63bcfe3f'),('77a86289-a4f9-464b-be58-b67201aa659e','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'75e013f2-7709-4ede-aa5a-f4d34da912cf'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('7e97b992-6b91-4322-977b-111017cc297f','address','openid-connect','oidc-address-mapper',NULL,'4e885f94-d948-4ff8-b1e7-498e2c50359f'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('80106c43-db95-44a9-b421-c12b0a4c367f','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','locale','openid-connect','oidc-usermodel-attribute-mapper','afd6f62c-fceb-445c-8f6f-a8641a4c7cf5',NULL),('838b89f9-69a4-42e6-b5e6-189e2b51af93','acr loa level','openid-connect','oidc-acr-mapper',NULL,'dc4d3824-c0a1-4b66-9bc8-b1a0d152d3e0'),('846337ae-d592-4e66-bcc7-e6974bea843f','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('878c2f4a-5496-4804-91fe-aa3c397d769e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','d2931841-1d90-49f5-a55b-22f9a6eb1fa9',NULL),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('8a139c96-d34c-4cef-ba83-058a18d7206f','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'1bbb0978-0eb6-49b5-a7d9-3f57048ece41'),('8db045bb-2585-43e7-8ff0-6eca617f6494','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'bf3bbe7c-d139-45d7-9ae5-b21c3ae2436e'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'990d785e-6447-46ac-9679-56792d7d4ab9'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('8f359c5b-2789-42fd-815a-80285ae5faf8','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6ffd8b6f-8c35-453a-ad1e-0c694e7044b4'),('90b2e741-8907-4f86-8959-560540ae16b8','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('9755edf3-d6eb-4722-8e5f-1d0218603068','locale','openid-connect','oidc-usermodel-attribute-mapper','d4caa701-fcb9-4637-bb20-11c49e7cf798',NULL),('99fae03c-7173-404a-90da-d417bea7738f','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('9b552fef-119f-4d10-b042-90264a072200','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'b1839dd1-6d4f-4404-a8bf-2b98f410d64a'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8c563a73-7bac-4bef-b2e8-743c562632ab'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d'),('9ec2759e-0c9b-415a-a5b1-0c043edad1b5','full name','openid-connect','oidc-full-name-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('9f8e46cf-e424-4c4e-8ff2-ef55410369b1','audience resolve','openid-connect','oidc-audience-resolve-mapper','e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5',NULL),('a218a26a-b735-471a-ab62-fba1aec81ab0','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'cd373230-5b56-4ce4-a25d-34d45e59bd83'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('a932eb12-ae42-4762-ac08-819a06b75742','role list','saml','saml-role-list-mapper',NULL,'f35aa46f-1efa-4916-9041-f0fa24c7163d'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','0cae83b0-c90e-4b6d-b05b-75ea4fd610db',NULL),('b084531c-1f82-476e-8e27-37b39995825e','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'740466f9-f263-4178-9d03-beef10f9de6d'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',NULL),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','locale','openid-connect','oidc-usermodel-attribute-mapper','2ab085fc-75a3-406b-a2c8-868bc13d7d57',NULL),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('b25d2d61-258d-4173-83f7-b9486dd24974','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1bbb0978-0eb6-49b5-a7d9-3f57048ece41'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ce1a2e24-b68f-413f-9707-2616c282bb1c'),('b499ed7a-7234-46e4-904a-a7132749dfdb','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('b7014c75-6e30-4988-a32f-98899d537705','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cc743f67-df57-4c93-8e53-a363f65baf99'),('b8310580-6bc8-4181-a939-5404281ca57f','acr loa level','openid-connect','oidc-acr-mapper',NULL,'c4bd1bd6-f204-4ec0-83c6-a2f0d5f562ce'),('b923d008-0f09-4cda-a285-c625b71e9d86','address','openid-connect','oidc-address-mapper',NULL,'73558497-d282-44af-af9c-2fc52486cb33'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'83e171f5-1c91-44ef-a28e-a99f7abb67d2'),('bc7c48e0-70a0-42c6-aa3a-26f80c2fd32c','audience resolve','openid-connect','oidc-audience-resolve-mapper','fc85a78c-7daa-45d2-bb49-27d80cf3be05',NULL),('be5a1f80-c216-4f68-90a1-2b0b2175178b','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7073d37e-fe6a-47e3-b2a6-020173c158d0'),('c35df1c0-afbe-415b-9387-b710fc3d6dc8','full name','openid-connect','oidc-full-name-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'89097ec5-371b-470d-87e7-0c507b091049'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('c9df332e-52ed-428a-8f47-5f73ed533927','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'d51aee07-adb6-4d3c-8068-be4d79cc0222'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'740466f9-f263-4178-9d03-beef10f9de6d'),('cbeeb585-cb61-4b33-b501-33fac81f6e70','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'3fc97fa4-390d-4be2-9940-aeed63bcfe3f'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'313bc9f7-334f-4a13-944a-1dd01fddb753'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','address','openid-connect','oidc-address-mapper',NULL,'b0a114e9-341f-4d96-9e84-b61d1b27924b'),('d35eb0cc-10d4-4838-ba76-2c463308fce0','full name','openid-connect','oidc-full-name-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'bf14e201-5031-4b45-a71a-9e14b503b59b'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','d9b7fb56-cf40-4830-bfb7-5a92cca769f4',NULL),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d234a70d-dbc2-4fee-8196-5a0ea9b55db1'),('df2b262f-714d-4405-85e9-e67bf23d4669','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('e2c200c7-a3fa-43f7-8932-cc4c43636031','audience resolve','openid-connect','oidc-audience-resolve-mapper','8400902e-2977-4c22-b4a0-e2d91d103ecb',NULL),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'83e171f5-1c91-44ef-a28e-a99f7abb67d2'),('e72ee1d7-01b8-416a-991f-784991540ac2','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('e96270c5-83fd-44d3-bbff-34826a233a86','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'89097ec5-371b-470d-87e7-0c507b091049'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d903265-a0aa-4b49-ba2a-ba85e0e0d8b2'),('eb7e96fc-0851-42f7-9608-70344122862b','role list','saml','saml-role-list-mapper',NULL,'9e50c447-3724-4d62-b2e8-34683bf5b769'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'75e013f2-7709-4ede-aa5a-f4d34da912cf'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a45d13e5-7da2-4de9-ac8f-ed88c4fddf6d'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8c563a73-7bac-4bef-b2e8-743c562632ab'),('ef70a585-d660-4cfe-b332-a4f490341f27','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','b2243579-8514-4d2a-a723-7ea4e4070794',NULL),('efe08124-c423-4743-b40f-6a1e08787261','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'4e253170-e539-49b9-bf7c-7fcd28e039ee'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','db6ec1b2-3401-449a-a512-a67ed08e1f1c',NULL),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10c1a49a-2c0f-4f6c-884f-67c34f5bb974'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'04a732fe-0057-431a-8e5e-cefe22b539da'),('f53e7c34-9397-4bb9-a7a1-54df04e1877a','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'990d785e-6447-46ac-9679-56792d7d4ab9'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('f819a9c6-6144-4fbf-a733-bb72b17ede72','role list','saml','saml-role-list-mapper',NULL,'2a613d40-7a64-4a66-a284-bcf6f7163e12'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d12a112-b6ac-4f27-adf8-419313823f9b'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'3fc97fa4-390d-4be2-9940-aeed63bcfe3f'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'303e364f-f8f7-4625-8fd0-e4c75bf1d7a2'),('ffab45c4-3a82-4011-af23-074757fd8908','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'990d785e-6447-46ac-9679-56792d7d4ab9'),('ffca278d-c69c-47c5-b780-28d4ff6d4296','audience resolve','openid-connect','oidc-audience-resolve-mapper','6de10bb1-8be4-4a41-b4f5-40c157eba726',NULL);
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('02597440-9d9e-49fe-a0d8-f43c0770534c','true','access.token.claim'),('02597440-9d9e-49fe-a0d8-f43c0770534c','email','claim.name'),('02597440-9d9e-49fe-a0d8-f43c0770534c','true','id.token.claim'),('02597440-9d9e-49fe-a0d8-f43c0770534c','true','introspection.token.claim'),('02597440-9d9e-49fe-a0d8-f43c0770534c','String','jsonType.label'),('02597440-9d9e-49fe-a0d8-f43c0770534c','email','user.attribute'),('02597440-9d9e-49fe-a0d8-f43c0770534c','true','userinfo.token.claim'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','true','access.token.claim'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','website','claim.name'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','true','id.token.claim'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','true','introspection.token.claim'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','String','jsonType.label'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','website','user.attribute'),('0262ce02-aaf6-4dd9-9546-31bd35b9289b','true','userinfo.token.claim'),('0659a5d2-eb1b-45db-82ae-7669c005afec','true','access.token.claim'),('0659a5d2-eb1b-45db-82ae-7669c005afec','true','introspection.token.claim'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','true','access.token.claim'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','middle_name','claim.name'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','true','id.token.claim'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','true','introspection.token.claim'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','String','jsonType.label'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','middleName','user.attribute'),('06b0803b-3b3e-4bf2-ac0a-9396c8e2dbff','true','userinfo.token.claim'),('07d06110-81a2-4d01-a959-072a96825073','true','access.token.claim'),('07d06110-81a2-4d01-a959-072a96825073','gender','claim.name'),('07d06110-81a2-4d01-a959-072a96825073','true','id.token.claim'),('07d06110-81a2-4d01-a959-072a96825073','true','introspection.token.claim'),('07d06110-81a2-4d01-a959-072a96825073','String','jsonType.label'),('07d06110-81a2-4d01-a959-072a96825073','gender','user.attribute'),('07d06110-81a2-4d01-a959-072a96825073','true','userinfo.token.claim'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','true','access.token.claim'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','phone_number_verified','claim.name'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','true','id.token.claim'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','true','introspection.token.claim'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','boolean','jsonType.label'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','phoneNumberVerified','user.attribute'),('09519071-1afc-4ff7-98b0-a4d6fed05b70','true','userinfo.token.claim'),('0a659998-7656-46a3-b886-b12b14b232d0','true','access.token.claim'),('0a659998-7656-46a3-b886-b12b14b232d0','family_name','claim.name'),('0a659998-7656-46a3-b886-b12b14b232d0','true','id.token.claim'),('0a659998-7656-46a3-b886-b12b14b232d0','true','introspection.token.claim'),('0a659998-7656-46a3-b886-b12b14b232d0','String','jsonType.label'),('0a659998-7656-46a3-b886-b12b14b232d0','lastName','user.attribute'),('0a659998-7656-46a3-b886-b12b14b232d0','true','userinfo.token.claim'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','true','access.token.claim'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','realm_access.roles','claim.name'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','true','introspection.token.claim'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','String','jsonType.label'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','true','multivalued'),('0a799b86-8a48-4fc6-b342-0a091f56cb37','foo','user.attribute'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','true','access.token.claim'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','clientHost','claim.name'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','true','id.token.claim'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','String','jsonType.label'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','clientHost','user.session.note'),('0b0d8c5b-3e8f-4575-bfd9-eb9d961d6f0e','true','userinfo.token.claim'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','true','access.token.claim'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','groups','claim.name'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','true','id.token.claim'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','true','introspection.token.claim'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','String','jsonType.label'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','true','multivalued'),('0bbf753b-054d-445a-8f56-06ea0d83a49d','foo','user.attribute'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','true','access.token.claim'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','birthdate','claim.name'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','true','id.token.claim'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','true','introspection.token.claim'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','String','jsonType.label'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','birthdate','user.attribute'),('0cdf4ad9-b0af-41e7-a670-1ccac626a8f9','true','userinfo.token.claim'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','true','access.token.claim'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','picture','claim.name'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','true','id.token.claim'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','true','introspection.token.claim'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','String','jsonType.label'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','picture','user.attribute'),('114fd765-7dc3-40b2-a14a-09f794fcb03f','true','userinfo.token.claim'),('11ad6f85-8f2a-4db1-86a2-de09921b2ca4','true','access.token.claim'),('11ad6f85-8f2a-4db1-86a2-de09921b2ca4','true','id.token.claim'),('11ad6f85-8f2a-4db1-86a2-de09921b2ca4','true','introspection.token.claim'),('11ad6f85-8f2a-4db1-86a2-de09921b2ca4','true','userinfo.token.claim'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','true','access.token.claim'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','gender','claim.name'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','true','id.token.claim'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','true','introspection.token.claim'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','String','jsonType.label'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','gender','user.attribute'),('11c2d382-8c13-4b74-b38e-94bfa9f7e726','true','userinfo.token.claim'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','true','access.token.claim'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','profile','claim.name'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','true','id.token.claim'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','true','introspection.token.claim'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','String','jsonType.label'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','profile','user.attribute'),('11d949d4-00b2-4d48-a03a-389a5b51cf7d','true','userinfo.token.claim'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','true','access.token.claim'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','nickname','claim.name'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','true','id.token.claim'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','true','introspection.token.claim'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','String','jsonType.label'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','nickname','user.attribute'),('14ac1221-1d5e-475f-90cb-1baa825ba1ca','true','userinfo.token.claim'),('14e7dba9-a67d-4c12-9e0e-6b84c9adbaf1','true','access.token.claim'),('14e7dba9-a67d-4c12-9e0e-6b84c9adbaf1','true','id.token.claim'),('14e7dba9-a67d-4c12-9e0e-6b84c9adbaf1','true','introspection.token.claim'),('155c0ca9-2d71-4436-8b3f-7a6201630683','true','access.token.claim'),('155c0ca9-2d71-4436-8b3f-7a6201630683','gender','claim.name'),('155c0ca9-2d71-4436-8b3f-7a6201630683','true','id.token.claim'),('155c0ca9-2d71-4436-8b3f-7a6201630683','true','introspection.token.claim'),('155c0ca9-2d71-4436-8b3f-7a6201630683','String','jsonType.label'),('155c0ca9-2d71-4436-8b3f-7a6201630683','gender','user.attribute'),('155c0ca9-2d71-4436-8b3f-7a6201630683','true','userinfo.token.claim'),('15a7274c-2333-4297-8be2-3dc781d192be','true','access.token.claim'),('15a7274c-2333-4297-8be2-3dc781d192be','locale','claim.name'),('15a7274c-2333-4297-8be2-3dc781d192be','true','id.token.claim'),('15a7274c-2333-4297-8be2-3dc781d192be','true','introspection.token.claim'),('15a7274c-2333-4297-8be2-3dc781d192be','String','jsonType.label'),('15a7274c-2333-4297-8be2-3dc781d192be','locale','user.attribute'),('15a7274c-2333-4297-8be2-3dc781d192be','true','userinfo.token.claim'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','true','access.token.claim'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','locale','claim.name'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','true','id.token.claim'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','true','introspection.token.claim'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','String','jsonType.label'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','locale','user.attribute'),('16784d75-2e3f-400a-aa60-ac5c20457ecb','true','userinfo.token.claim'),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','true','access.token.claim'),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','resource_access.${client_id}.roles','claim.name'),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','true','introspection.token.claim'),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','String','jsonType.label'),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','true','multivalued'),('174a6526-e306-461c-9fc5-c47d4d8b9ddf','foo','user.attribute'),('1b4c3e9f-e917-444b-ac27-dcc9a8888a9b','true','access.token.claim'),('1b4c3e9f-e917-444b-ac27-dcc9a8888a9b','true','introspection.token.claim'),('204ee718-4fb3-475d-a275-f2f2deb54a24','true','access.token.claim'),('204ee718-4fb3-475d-a275-f2f2deb54a24','family_name','claim.name'),('204ee718-4fb3-475d-a275-f2f2deb54a24','true','id.token.claim'),('204ee718-4fb3-475d-a275-f2f2deb54a24','true','introspection.token.claim'),('204ee718-4fb3-475d-a275-f2f2deb54a24','String','jsonType.label'),('204ee718-4fb3-475d-a275-f2f2deb54a24','lastName','user.attribute'),('204ee718-4fb3-475d-a275-f2f2deb54a24','true','userinfo.token.claim'),('21100036-22b5-4f89-9b26-b56db2ef22d2','true','access.token.claim'),('21100036-22b5-4f89-9b26-b56db2ef22d2','zoneinfo','claim.name'),('21100036-22b5-4f89-9b26-b56db2ef22d2','true','id.token.claim'),('21100036-22b5-4f89-9b26-b56db2ef22d2','true','introspection.token.claim'),('21100036-22b5-4f89-9b26-b56db2ef22d2','String','jsonType.label'),('21100036-22b5-4f89-9b26-b56db2ef22d2','zoneinfo','user.attribute'),('21100036-22b5-4f89-9b26-b56db2ef22d2','true','userinfo.token.claim'),('23590207-325c-4a3f-96fb-945dad757654','true','access.token.claim'),('23590207-325c-4a3f-96fb-945dad757654','birthdate','claim.name'),('23590207-325c-4a3f-96fb-945dad757654','true','id.token.claim'),('23590207-325c-4a3f-96fb-945dad757654','true','introspection.token.claim'),('23590207-325c-4a3f-96fb-945dad757654','String','jsonType.label'),('23590207-325c-4a3f-96fb-945dad757654','birthdate','user.attribute'),('23590207-325c-4a3f-96fb-945dad757654','true','userinfo.token.claim'),('237d409a-59f3-471c-b03c-b2c5365cdc47','true','access.token.claim'),('237d409a-59f3-471c-b03c-b2c5365cdc47','clientAddress','claim.name'),('237d409a-59f3-471c-b03c-b2c5365cdc47','true','id.token.claim'),('237d409a-59f3-471c-b03c-b2c5365cdc47','String','jsonType.label'),('237d409a-59f3-471c-b03c-b2c5365cdc47','clientAddress','user.session.note'),('237d409a-59f3-471c-b03c-b2c5365cdc47','true','userinfo.token.claim'),('2461538c-620a-4680-bcc6-532669568256','true','access.token.claim'),('2461538c-620a-4680-bcc6-532669568256','zoneinfo','claim.name'),('2461538c-620a-4680-bcc6-532669568256','true','id.token.claim'),('2461538c-620a-4680-bcc6-532669568256','true','introspection.token.claim'),('2461538c-620a-4680-bcc6-532669568256','String','jsonType.label'),('2461538c-620a-4680-bcc6-532669568256','zoneinfo','user.attribute'),('2461538c-620a-4680-bcc6-532669568256','true','userinfo.token.claim'),('264c7c13-4784-44d4-8cae-9fca457335e3','true','access.token.claim'),('264c7c13-4784-44d4-8cae-9fca457335e3','nickname','claim.name'),('264c7c13-4784-44d4-8cae-9fca457335e3','true','id.token.claim'),('264c7c13-4784-44d4-8cae-9fca457335e3','true','introspection.token.claim'),('264c7c13-4784-44d4-8cae-9fca457335e3','String','jsonType.label'),('264c7c13-4784-44d4-8cae-9fca457335e3','nickname','user.attribute'),('264c7c13-4784-44d4-8cae-9fca457335e3','true','userinfo.token.claim'),('2735a570-91af-4389-b4b6-afcb6e7f480f','true','access.token.claim'),('2735a570-91af-4389-b4b6-afcb6e7f480f','locale','claim.name'),('2735a570-91af-4389-b4b6-afcb6e7f480f','true','id.token.claim'),('2735a570-91af-4389-b4b6-afcb6e7f480f','true','introspection.token.claim'),('2735a570-91af-4389-b4b6-afcb6e7f480f','String','jsonType.label'),('2735a570-91af-4389-b4b6-afcb6e7f480f','locale','user.attribute'),('2735a570-91af-4389-b4b6-afcb6e7f480f','true','userinfo.token.claim'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','true','access.token.claim'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','zoneinfo','claim.name'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','true','id.token.claim'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','true','introspection.token.claim'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','String','jsonType.label'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','zoneinfo','user.attribute'),('27eeaeb0-fa7f-42f3-a79c-eb440e4535a5','true','userinfo.token.claim'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','true','access.token.claim'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','upn','claim.name'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','true','id.token.claim'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','true','introspection.token.claim'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','String','jsonType.label'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','username','user.attribute'),('29bdb53a-c964-487a-8bb0-5ecdd2a05e3b','true','userinfo.token.claim'),('2f056d09-0062-40b3-b1c1-2f1ebed5caa4','true','access.token.claim'),('2f056d09-0062-40b3-b1c1-2f1ebed5caa4','true','id.token.claim'),('2f056d09-0062-40b3-b1c1-2f1ebed5caa4','true','introspection.token.claim'),('31015608-ac51-478e-91d5-2603efc0c947','true','access.token.claim'),('31015608-ac51-478e-91d5-2603efc0c947','nickname','claim.name'),('31015608-ac51-478e-91d5-2603efc0c947','true','id.token.claim'),('31015608-ac51-478e-91d5-2603efc0c947','true','introspection.token.claim'),('31015608-ac51-478e-91d5-2603efc0c947','String','jsonType.label'),('31015608-ac51-478e-91d5-2603efc0c947','nickname','user.attribute'),('31015608-ac51-478e-91d5-2603efc0c947','true','userinfo.token.claim'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','true','access.token.claim'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','clientHost','claim.name'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','true','id.token.claim'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','String','jsonType.label'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','clientHost','user.session.note'),('31a3df92-57a7-4a5f-adff-04d20e6c5c18','true','userinfo.token.claim'),('32aa91ea-2408-44f5-bb01-f149363aa068','true','access.token.claim'),('32aa91ea-2408-44f5-bb01-f149363aa068','preferred_username','claim.name'),('32aa91ea-2408-44f5-bb01-f149363aa068','true','id.token.claim'),('32aa91ea-2408-44f5-bb01-f149363aa068','true','introspection.token.claim'),('32aa91ea-2408-44f5-bb01-f149363aa068','String','jsonType.label'),('32aa91ea-2408-44f5-bb01-f149363aa068','username','user.attribute'),('32aa91ea-2408-44f5-bb01-f149363aa068','true','userinfo.token.claim'),('32b3fe73-1c0a-4a1b-a60f-3f341bdaa4d0','true','access.token.claim'),('32b3fe73-1c0a-4a1b-a60f-3f341bdaa4d0','true','id.token.claim'),('32b3fe73-1c0a-4a1b-a60f-3f341bdaa4d0','true','introspection.token.claim'),('33d0d0a3-7085-4877-ad46-59a36c358be0','true','access.token.claim'),('33d0d0a3-7085-4877-ad46-59a36c358be0','email_verified','claim.name'),('33d0d0a3-7085-4877-ad46-59a36c358be0','true','id.token.claim'),('33d0d0a3-7085-4877-ad46-59a36c358be0','true','introspection.token.claim'),('33d0d0a3-7085-4877-ad46-59a36c358be0','boolean','jsonType.label'),('33d0d0a3-7085-4877-ad46-59a36c358be0','emailVerified','user.attribute'),('33d0d0a3-7085-4877-ad46-59a36c358be0','true','userinfo.token.claim'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','true','access.token.claim'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','email','claim.name'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','true','id.token.claim'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','true','introspection.token.claim'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','String','jsonType.label'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','email','user.attribute'),('33d6239d-bcc8-4cb8-b3d7-598990b2495a','true','userinfo.token.claim'),('352c60fd-f5d9-4b14-a345-52ad071fd856','true','access.token.claim'),('352c60fd-f5d9-4b14-a345-52ad071fd856','email_verified','claim.name'),('352c60fd-f5d9-4b14-a345-52ad071fd856','true','id.token.claim'),('352c60fd-f5d9-4b14-a345-52ad071fd856','true','introspection.token.claim'),('352c60fd-f5d9-4b14-a345-52ad071fd856','boolean','jsonType.label'),('352c60fd-f5d9-4b14-a345-52ad071fd856','emailVerified','user.attribute'),('352c60fd-f5d9-4b14-a345-52ad071fd856','true','userinfo.token.claim'),('358a9dd8-db73-4dc1-8114-3382049bb169','true','access.token.claim'),('358a9dd8-db73-4dc1-8114-3382049bb169','preferred_username','claim.name'),('358a9dd8-db73-4dc1-8114-3382049bb169','true','id.token.claim'),('358a9dd8-db73-4dc1-8114-3382049bb169','true','introspection.token.claim'),('358a9dd8-db73-4dc1-8114-3382049bb169','String','jsonType.label'),('358a9dd8-db73-4dc1-8114-3382049bb169','username','user.attribute'),('358a9dd8-db73-4dc1-8114-3382049bb169','true','userinfo.token.claim'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','true','access.token.claim'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','phone_number_verified','claim.name'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','true','id.token.claim'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','true','introspection.token.claim'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','boolean','jsonType.label'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','phoneNumberVerified','user.attribute'),('3bf215ba-b78e-48a7-9d10-58d00a323ebe','true','userinfo.token.claim'),('3d2fe62a-1dbb-4836-8c96-90c992a6963d','true','access.token.claim'),('3d2fe62a-1dbb-4836-8c96-90c992a6963d','true','introspection.token.claim'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','true','access.token.claim'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','picture','claim.name'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','true','id.token.claim'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','true','introspection.token.claim'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','String','jsonType.label'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','picture','user.attribute'),('3eb48170-d04c-4e7d-b586-621f954a7cc4','true','userinfo.token.claim'),('40c12ea9-3971-45c9-bec5-0c880300d02d','Role','attribute.name'),('40c12ea9-3971-45c9-bec5-0c880300d02d','Basic','attribute.nameformat'),('40c12ea9-3971-45c9-bec5-0c880300d02d','false','single'),('419beefd-7561-4075-a1a4-32c1304bd773','Role','attribute.name'),('419beefd-7561-4075-a1a4-32c1304bd773','Basic','attribute.nameformat'),('419beefd-7561-4075-a1a4-32c1304bd773','false','single'),('41b61419-a76d-4746-893e-460ad12a91c8','true','access.token.claim'),('41b61419-a76d-4746-893e-460ad12a91c8','phone_number_verified','claim.name'),('41b61419-a76d-4746-893e-460ad12a91c8','true','id.token.claim'),('41b61419-a76d-4746-893e-460ad12a91c8','true','introspection.token.claim'),('41b61419-a76d-4746-893e-460ad12a91c8','boolean','jsonType.label'),('41b61419-a76d-4746-893e-460ad12a91c8','phoneNumberVerified','user.attribute'),('41b61419-a76d-4746-893e-460ad12a91c8','true','userinfo.token.claim'),('422adee7-136c-4c01-ae7d-097310fc07e2','true','access.token.claim'),('422adee7-136c-4c01-ae7d-097310fc07e2','true','introspection.token.claim'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','true','access.token.claim'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','phone_number','claim.name'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','true','id.token.claim'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','true','introspection.token.claim'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','String','jsonType.label'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','phoneNumber','user.attribute'),('42f7e76c-b7e4-4e17-b966-66e12316aa1d','true','userinfo.token.claim'),('458279dd-c692-4eb4-b877-8c49e15bd706','true','access.token.claim'),('458279dd-c692-4eb4-b877-8c49e15bd706','locale','claim.name'),('458279dd-c692-4eb4-b877-8c49e15bd706','true','id.token.claim'),('458279dd-c692-4eb4-b877-8c49e15bd706','true','introspection.token.claim'),('458279dd-c692-4eb4-b877-8c49e15bd706','String','jsonType.label'),('458279dd-c692-4eb4-b877-8c49e15bd706','locale','user.attribute'),('458279dd-c692-4eb4-b877-8c49e15bd706','true','userinfo.token.claim'),('472fadc8-cb69-4c4b-8e2f-e7506eae411d','true','access.token.claim'),('472fadc8-cb69-4c4b-8e2f-e7506eae411d','true','introspection.token.claim'),('47a21f1a-6462-4216-87b6-525784603e8e','true','access.token.claim'),('47a21f1a-6462-4216-87b6-525784603e8e','true','id.token.claim'),('47a21f1a-6462-4216-87b6-525784603e8e','true','introspection.token.claim'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','true','access.token.claim'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','clientId','claim.name'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','true','id.token.claim'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','String','jsonType.label'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','clientId','user.session.note'),('47f7226d-88b0-439b-a8c0-00fecbd7d5df','true','userinfo.token.claim'),('49e5214d-ff96-4ff2-bcf5-66b78985aa8f','true','access.token.claim'),('49e5214d-ff96-4ff2-bcf5-66b78985aa8f','true','introspection.token.claim'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','true','access.token.claim'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','phone_number','claim.name'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','true','id.token.claim'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','true','introspection.token.claim'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','String','jsonType.label'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','phoneNumber','user.attribute'),('4a7c8914-31ec-4f58-b33b-8765dd396f3e','true','userinfo.token.claim'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','true','access.token.claim'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','upn','claim.name'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','true','id.token.claim'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','true','introspection.token.claim'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','String','jsonType.label'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','username','user.attribute'),('4b0f566b-099d-4fb9-a52d-56fd13306f05','true','userinfo.token.claim'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','true','access.token.claim'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','preferred_username','claim.name'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','true','id.token.claim'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','true','introspection.token.claim'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','String','jsonType.label'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','username','user.attribute'),('4bf89b78-bbb7-4059-af1a-7e16dbc52387','true','userinfo.token.claim'),('4c189386-0a4d-470c-acfa-70afb8f70193','true','access.token.claim'),('4c189386-0a4d-470c-acfa-70afb8f70193','true','id.token.claim'),('4c189386-0a4d-470c-acfa-70afb8f70193','true','introspection.token.claim'),('4c189386-0a4d-470c-acfa-70afb8f70193','country','user.attribute.country'),('4c189386-0a4d-470c-acfa-70afb8f70193','formatted','user.attribute.formatted'),('4c189386-0a4d-470c-acfa-70afb8f70193','locality','user.attribute.locality'),('4c189386-0a4d-470c-acfa-70afb8f70193','postal_code','user.attribute.postal_code'),('4c189386-0a4d-470c-acfa-70afb8f70193','region','user.attribute.region'),('4c189386-0a4d-470c-acfa-70afb8f70193','street','user.attribute.street'),('4c189386-0a4d-470c-acfa-70afb8f70193','true','userinfo.token.claim'),('4ce019f4-52c2-44ef-8414-b74b2998edd7','true','access.token.claim'),('4ce019f4-52c2-44ef-8414-b74b2998edd7','true','introspection.token.claim'),('4ce2231a-431c-4824-bc13-b4c239ed9767','true','access.token.claim'),('4ce2231a-431c-4824-bc13-b4c239ed9767','true','id.token.claim'),('4ce2231a-431c-4824-bc13-b4c239ed9767','true','introspection.token.claim'),('4ce2231a-431c-4824-bc13-b4c239ed9767','country','user.attribute.country'),('4ce2231a-431c-4824-bc13-b4c239ed9767','formatted','user.attribute.formatted'),('4ce2231a-431c-4824-bc13-b4c239ed9767','locality','user.attribute.locality'),('4ce2231a-431c-4824-bc13-b4c239ed9767','postal_code','user.attribute.postal_code'),('4ce2231a-431c-4824-bc13-b4c239ed9767','region','user.attribute.region'),('4ce2231a-431c-4824-bc13-b4c239ed9767','street','user.attribute.street'),('4ce2231a-431c-4824-bc13-b4c239ed9767','true','userinfo.token.claim'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','true','access.token.claim'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','birthdate','claim.name'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','true','id.token.claim'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','true','introspection.token.claim'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','String','jsonType.label'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','birthdate','user.attribute'),('4dfe4426-14a8-4fcd-9436-11171bd055a6','true','userinfo.token.claim'),('5092decd-3b46-4942-bf66-79467fad91ef','true','access.token.claim'),('5092decd-3b46-4942-bf66-79467fad91ef','realm_access.roles','claim.name'),('5092decd-3b46-4942-bf66-79467fad91ef','true','introspection.token.claim'),('5092decd-3b46-4942-bf66-79467fad91ef','String','jsonType.label'),('5092decd-3b46-4942-bf66-79467fad91ef','true','multivalued'),('5092decd-3b46-4942-bf66-79467fad91ef','foo','user.attribute'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','true','access.token.claim'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','clientAddress','claim.name'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','true','id.token.claim'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','String','jsonType.label'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','clientAddress','user.session.note'),('5167081a-cc9b-486b-b90d-69bdd8085fe0','true','userinfo.token.claim'),('5198d55c-32a8-408a-b89e-aa89165aef86','true','access.token.claim'),('5198d55c-32a8-408a-b89e-aa89165aef86','email_verified','claim.name'),('5198d55c-32a8-408a-b89e-aa89165aef86','true','id.token.claim'),('5198d55c-32a8-408a-b89e-aa89165aef86','true','introspection.token.claim'),('5198d55c-32a8-408a-b89e-aa89165aef86','boolean','jsonType.label'),('5198d55c-32a8-408a-b89e-aa89165aef86','emailVerified','user.attribute'),('5198d55c-32a8-408a-b89e-aa89165aef86','true','userinfo.token.claim'),('520d17d5-d075-4564-87ee-e426fb6c3008','true','access.token.claim'),('520d17d5-d075-4564-87ee-e426fb6c3008','updated_at','claim.name'),('520d17d5-d075-4564-87ee-e426fb6c3008','true','id.token.claim'),('520d17d5-d075-4564-87ee-e426fb6c3008','true','introspection.token.claim'),('520d17d5-d075-4564-87ee-e426fb6c3008','long','jsonType.label'),('520d17d5-d075-4564-87ee-e426fb6c3008','updatedAt','user.attribute'),('520d17d5-d075-4564-87ee-e426fb6c3008','true','userinfo.token.claim'),('5402624c-8382-4de6-af02-02bec590e281','true','access.token.claim'),('5402624c-8382-4de6-af02-02bec590e281','locale','claim.name'),('5402624c-8382-4de6-af02-02bec590e281','true','id.token.claim'),('5402624c-8382-4de6-af02-02bec590e281','true','introspection.token.claim'),('5402624c-8382-4de6-af02-02bec590e281','String','jsonType.label'),('5402624c-8382-4de6-af02-02bec590e281','locale','user.attribute'),('5402624c-8382-4de6-af02-02bec590e281','true','userinfo.token.claim'),('54837258-4239-4736-8963-3b64de0cd258','true','access.token.claim'),('54837258-4239-4736-8963-3b64de0cd258','nickname','claim.name'),('54837258-4239-4736-8963-3b64de0cd258','true','id.token.claim'),('54837258-4239-4736-8963-3b64de0cd258','true','introspection.token.claim'),('54837258-4239-4736-8963-3b64de0cd258','String','jsonType.label'),('54837258-4239-4736-8963-3b64de0cd258','nickname','user.attribute'),('54837258-4239-4736-8963-3b64de0cd258','true','userinfo.token.claim'),('548587a1-fd4f-4d09-8e85-08a8449fd762','Role','attribute.name'),('548587a1-fd4f-4d09-8e85-08a8449fd762','Basic','attribute.nameformat'),('548587a1-fd4f-4d09-8e85-08a8449fd762','false','single'),('55b40d02-073a-4234-9d56-5efefe3aa89c','true','access.token.claim'),('55b40d02-073a-4234-9d56-5efefe3aa89c','gender','claim.name'),('55b40d02-073a-4234-9d56-5efefe3aa89c','true','id.token.claim'),('55b40d02-073a-4234-9d56-5efefe3aa89c','true','introspection.token.claim'),('55b40d02-073a-4234-9d56-5efefe3aa89c','String','jsonType.label'),('55b40d02-073a-4234-9d56-5efefe3aa89c','gender','user.attribute'),('55b40d02-073a-4234-9d56-5efefe3aa89c','true','userinfo.token.claim'),('57c07200-e91a-488a-a469-cbd9137e6deb','true','access.token.claim'),('57c07200-e91a-488a-a469-cbd9137e6deb','clientAddress','claim.name'),('57c07200-e91a-488a-a469-cbd9137e6deb','true','id.token.claim'),('57c07200-e91a-488a-a469-cbd9137e6deb','String','jsonType.label'),('57c07200-e91a-488a-a469-cbd9137e6deb','clientAddress','user.session.note'),('57c07200-e91a-488a-a469-cbd9137e6deb','true','userinfo.token.claim'),('598aec9c-3009-4452-9542-a6bce4fb34a3','true','access.token.claim'),('598aec9c-3009-4452-9542-a6bce4fb34a3','given_name','claim.name'),('598aec9c-3009-4452-9542-a6bce4fb34a3','true','id.token.claim'),('598aec9c-3009-4452-9542-a6bce4fb34a3','true','introspection.token.claim'),('598aec9c-3009-4452-9542-a6bce4fb34a3','String','jsonType.label'),('598aec9c-3009-4452-9542-a6bce4fb34a3','firstName','user.attribute'),('598aec9c-3009-4452-9542-a6bce4fb34a3','true','userinfo.token.claim'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','true','access.token.claim'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','upn','claim.name'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','true','id.token.claim'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','true','introspection.token.claim'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','String','jsonType.label'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','username','user.attribute'),('59dfdc7f-45e7-45ef-984c-25d2585032ce','true','userinfo.token.claim'),('5aad4835-bd83-41e1-bffe-b466934fb566','true','access.token.claim'),('5aad4835-bd83-41e1-bffe-b466934fb566','clientHost','claim.name'),('5aad4835-bd83-41e1-bffe-b466934fb566','true','id.token.claim'),('5aad4835-bd83-41e1-bffe-b466934fb566','String','jsonType.label'),('5aad4835-bd83-41e1-bffe-b466934fb566','clientHost','user.session.note'),('5aad4835-bd83-41e1-bffe-b466934fb566','true','userinfo.token.claim'),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','true','access.token.claim'),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','clientId','claim.name'),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','true','id.token.claim'),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','String','jsonType.label'),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','clientId','user.session.note'),('5c224f57-77b5-412b-bc3f-c0ca05e9f5d2','true','userinfo.token.claim'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','true','access.token.claim'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','preferred_username','claim.name'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','true','id.token.claim'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','true','introspection.token.claim'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','String','jsonType.label'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','username','user.attribute'),('5c590e65-c04e-4dcd-9ccd-e37b1641395c','true','userinfo.token.claim'),('5c934078-6663-4b87-b82f-0100223acb95','true','access.token.claim'),('5c934078-6663-4b87-b82f-0100223acb95','gender','claim.name'),('5c934078-6663-4b87-b82f-0100223acb95','true','id.token.claim'),('5c934078-6663-4b87-b82f-0100223acb95','true','introspection.token.claim'),('5c934078-6663-4b87-b82f-0100223acb95','String','jsonType.label'),('5c934078-6663-4b87-b82f-0100223acb95','gender','user.attribute'),('5c934078-6663-4b87-b82f-0100223acb95','true','userinfo.token.claim'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','true','access.token.claim'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','resource_access.${client_id}.roles','claim.name'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','true','introspection.token.claim'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','String','jsonType.label'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','true','multivalued'),('5dc6fea4-5b2c-4186-9b7a-06adfc740509','foo','user.attribute'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','true','access.token.claim'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','picture','claim.name'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','true','id.token.claim'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','true','introspection.token.claim'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','String','jsonType.label'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','picture','user.attribute'),('5e53e4de-ec5a-4ebf-8156-cb649614d622','true','userinfo.token.claim'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','true','access.token.claim'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','middle_name','claim.name'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','true','id.token.claim'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','true','introspection.token.claim'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','String','jsonType.label'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','middleName','user.attribute'),('60c3f7dd-487c-4c96-a3c4-4813354ee7bc','true','userinfo.token.claim'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','true','access.token.claim'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','resource_access.${client_id}.roles','claim.name'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','true','introspection.token.claim'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','String','jsonType.label'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','true','multivalued'),('61fe25ae-7fa1-43f0-9c89-02246ed7e4eb','foo','user.attribute'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','true','access.token.claim'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','preferred_username','claim.name'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','true','id.token.claim'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','true','introspection.token.claim'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','String','jsonType.label'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','username','user.attribute'),('6230b043-1596-42fe-8cf2-b56dcc8d49dd','true','userinfo.token.claim'),('64d60b58-9dad-45da-914f-412d2d4b2e73','true','access.token.claim'),('64d60b58-9dad-45da-914f-412d2d4b2e73','profile','claim.name'),('64d60b58-9dad-45da-914f-412d2d4b2e73','true','id.token.claim'),('64d60b58-9dad-45da-914f-412d2d4b2e73','true','introspection.token.claim'),('64d60b58-9dad-45da-914f-412d2d4b2e73','String','jsonType.label'),('64d60b58-9dad-45da-914f-412d2d4b2e73','profile','user.attribute'),('64d60b58-9dad-45da-914f-412d2d4b2e73','true','userinfo.token.claim'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','true','access.token.claim'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','zoneinfo','claim.name'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','true','id.token.claim'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','true','introspection.token.claim'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','String','jsonType.label'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','zoneinfo','user.attribute'),('6552341c-7b16-4ab6-b8e4-d943ea2ee02a','true','userinfo.token.claim'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','true','access.token.claim'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','clientId','claim.name'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','true','id.token.claim'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','String','jsonType.label'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','clientId','user.session.note'),('660033e1-cbac-49aa-b3ef-330cbf68fbb5','true','userinfo.token.claim'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','true','access.token.claim'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','locale','claim.name'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','true','id.token.claim'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','true','introspection.token.claim'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','String','jsonType.label'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','locale','user.attribute'),('676b73a0-c70a-437b-adf0-dbb6daf41fe6','true','userinfo.token.claim'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','true','access.token.claim'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','updated_at','claim.name'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','true','id.token.claim'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','true','introspection.token.claim'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','long','jsonType.label'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','updatedAt','user.attribute'),('67a96d67-df3f-4837-85a7-5cf9d4b7768d','true','userinfo.token.claim'),('67cc80d5-d7b8-44ae-aec2-1aaa278d7a67','true','access.token.claim'),('67cc80d5-d7b8-44ae-aec2-1aaa278d7a67','true','id.token.claim'),('67cc80d5-d7b8-44ae-aec2-1aaa278d7a67','true','introspection.token.claim'),('67cc80d5-d7b8-44ae-aec2-1aaa278d7a67','true','userinfo.token.claim'),('692987fd-12d6-450c-963e-647e409eb830','true','access.token.claim'),('692987fd-12d6-450c-963e-647e409eb830','given_name','claim.name'),('692987fd-12d6-450c-963e-647e409eb830','true','id.token.claim'),('692987fd-12d6-450c-963e-647e409eb830','true','introspection.token.claim'),('692987fd-12d6-450c-963e-647e409eb830','String','jsonType.label'),('692987fd-12d6-450c-963e-647e409eb830','firstName','user.attribute'),('692987fd-12d6-450c-963e-647e409eb830','true','userinfo.token.claim'),('69fd8804-921d-4f49-b1ca-ce862eae3796','true','access.token.claim'),('69fd8804-921d-4f49-b1ca-ce862eae3796','realm_access.roles','claim.name'),('69fd8804-921d-4f49-b1ca-ce862eae3796','true','introspection.token.claim'),('69fd8804-921d-4f49-b1ca-ce862eae3796','String','jsonType.label'),('69fd8804-921d-4f49-b1ca-ce862eae3796','true','multivalued'),('69fd8804-921d-4f49-b1ca-ce862eae3796','foo','user.attribute'),('6c215092-07c1-498d-b9c5-2216df605117','true','access.token.claim'),('6c215092-07c1-498d-b9c5-2216df605117','true','id.token.claim'),('6c215092-07c1-498d-b9c5-2216df605117','true','introspection.token.claim'),('6c215092-07c1-498d-b9c5-2216df605117','true','userinfo.token.claim'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','true','access.token.claim'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','realm_access.roles','claim.name'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','true','introspection.token.claim'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','String','jsonType.label'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','true','multivalued'),('6d709506-4758-4d13-9fbe-e33bf425d8d6','foo','user.attribute'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','true','access.token.claim'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','zoneinfo','claim.name'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','true','id.token.claim'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','true','introspection.token.claim'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','String','jsonType.label'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','zoneinfo','user.attribute'),('71904bd5-5ed4-4dfe-b01c-5a51fbf1358b','true','userinfo.token.claim'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','true','access.token.claim'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','true','id.token.claim'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','true','introspection.token.claim'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','country','user.attribute.country'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','formatted','user.attribute.formatted'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','locality','user.attribute.locality'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','postal_code','user.attribute.postal_code'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','region','user.attribute.region'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','street','user.attribute.street'),('7261a7ac-5d5b-4ec2-91df-49523c5f5778','true','userinfo.token.claim'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','true','access.token.claim'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','phone_number','claim.name'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','true','id.token.claim'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','true','introspection.token.claim'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','String','jsonType.label'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','phoneNumber','user.attribute'),('731a5b0f-e2f5-4e99-8530-10a6132936bf','true','userinfo.token.claim'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','true','access.token.claim'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','picture','claim.name'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','true','id.token.claim'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','true','introspection.token.claim'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','String','jsonType.label'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','picture','user.attribute'),('74e1d284-be1b-4dbf-b8e7-a2ac68673675','true','userinfo.token.claim'),('774643a4-0563-41e4-b976-b5abc93851dc','true','access.token.claim'),('774643a4-0563-41e4-b976-b5abc93851dc','realm_access.roles','claim.name'),('774643a4-0563-41e4-b976-b5abc93851dc','true','introspection.token.claim'),('774643a4-0563-41e4-b976-b5abc93851dc','String','jsonType.label'),('774643a4-0563-41e4-b976-b5abc93851dc','true','multivalued'),('774643a4-0563-41e4-b976-b5abc93851dc','foo','user.attribute'),('77a86289-a4f9-464b-be58-b67201aa659e','true','access.token.claim'),('77a86289-a4f9-464b-be58-b67201aa659e','groups','claim.name'),('77a86289-a4f9-464b-be58-b67201aa659e','true','id.token.claim'),('77a86289-a4f9-464b-be58-b67201aa659e','true','introspection.token.claim'),('77a86289-a4f9-464b-be58-b67201aa659e','String','jsonType.label'),('77a86289-a4f9-464b-be58-b67201aa659e','true','multivalued'),('77a86289-a4f9-464b-be58-b67201aa659e','foo','user.attribute'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','true','access.token.claim'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','clientAddress','claim.name'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','true','id.token.claim'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','String','jsonType.label'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','clientAddress','user.session.note'),('78226e33-31b1-4fa0-b9c3-df0293b6397e','true','userinfo.token.claim'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','true','access.token.claim'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','updated_at','claim.name'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','true','id.token.claim'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','true','introspection.token.claim'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','long','jsonType.label'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','updatedAt','user.attribute'),('7befe2e0-cc2c-40c2-a6a5-f1b0a68ce6ad','true','userinfo.token.claim'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','true','access.token.claim'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','family_name','claim.name'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','true','id.token.claim'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','true','introspection.token.claim'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','String','jsonType.label'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','lastName','user.attribute'),('7d7b9ac5-6724-4cbc-9023-25166ff063ef','true','userinfo.token.claim'),('7e97b992-6b91-4322-977b-111017cc297f','true','access.token.claim'),('7e97b992-6b91-4322-977b-111017cc297f','true','id.token.claim'),('7e97b992-6b91-4322-977b-111017cc297f','true','introspection.token.claim'),('7e97b992-6b91-4322-977b-111017cc297f','country','user.attribute.country'),('7e97b992-6b91-4322-977b-111017cc297f','formatted','user.attribute.formatted'),('7e97b992-6b91-4322-977b-111017cc297f','locality','user.attribute.locality'),('7e97b992-6b91-4322-977b-111017cc297f','postal_code','user.attribute.postal_code'),('7e97b992-6b91-4322-977b-111017cc297f','region','user.attribute.region'),('7e97b992-6b91-4322-977b-111017cc297f','street','user.attribute.street'),('7e97b992-6b91-4322-977b-111017cc297f','true','userinfo.token.claim'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','true','access.token.claim'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','website','claim.name'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','true','id.token.claim'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','true','introspection.token.claim'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','String','jsonType.label'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','website','user.attribute'),('7f814b9c-6186-48cd-a205-41fd0e984bcb','true','userinfo.token.claim'),('80106c43-db95-44a9-b421-c12b0a4c367f','true','access.token.claim'),('80106c43-db95-44a9-b421-c12b0a4c367f','picture','claim.name'),('80106c43-db95-44a9-b421-c12b0a4c367f','true','id.token.claim'),('80106c43-db95-44a9-b421-c12b0a4c367f','true','introspection.token.claim'),('80106c43-db95-44a9-b421-c12b0a4c367f','String','jsonType.label'),('80106c43-db95-44a9-b421-c12b0a4c367f','picture','user.attribute'),('80106c43-db95-44a9-b421-c12b0a4c367f','true','userinfo.token.claim'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','true','access.token.claim'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','locale','claim.name'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','true','id.token.claim'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','true','introspection.token.claim'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','String','jsonType.label'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','locale','user.attribute'),('803c35fb-2ba8-49d6-b2a8-605d62cf7c6b','true','userinfo.token.claim'),('838b89f9-69a4-42e6-b5e6-189e2b51af93','true','access.token.claim'),('838b89f9-69a4-42e6-b5e6-189e2b51af93','true','id.token.claim'),('838b89f9-69a4-42e6-b5e6-189e2b51af93','true','introspection.token.claim'),('846337ae-d592-4e66-bcc7-e6974bea843f','true','access.token.claim'),('846337ae-d592-4e66-bcc7-e6974bea843f','family_name','claim.name'),('846337ae-d592-4e66-bcc7-e6974bea843f','true','id.token.claim'),('846337ae-d592-4e66-bcc7-e6974bea843f','true','introspection.token.claim'),('846337ae-d592-4e66-bcc7-e6974bea843f','String','jsonType.label'),('846337ae-d592-4e66-bcc7-e6974bea843f','lastName','user.attribute'),('846337ae-d592-4e66-bcc7-e6974bea843f','true','userinfo.token.claim'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','true','access.token.claim'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','updated_at','claim.name'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','true','id.token.claim'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','true','introspection.token.claim'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','long','jsonType.label'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','updatedAt','user.attribute'),('84d2ae66-f920-497b-b3ac-e25a44fd44f5','true','userinfo.token.claim'),('878c2f4a-5496-4804-91fe-aa3c397d769e','true','access.token.claim'),('878c2f4a-5496-4804-91fe-aa3c397d769e','clientId','claim.name'),('878c2f4a-5496-4804-91fe-aa3c397d769e','true','id.token.claim'),('878c2f4a-5496-4804-91fe-aa3c397d769e','String','jsonType.label'),('878c2f4a-5496-4804-91fe-aa3c397d769e','clientId','user.session.note'),('878c2f4a-5496-4804-91fe-aa3c397d769e','true','userinfo.token.claim'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','true','access.token.claim'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','birthdate','claim.name'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','true','id.token.claim'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','true','introspection.token.claim'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','String','jsonType.label'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','birthdate','user.attribute'),('87d841e5-ca7d-4631-ae5a-c670cef26cd8','true','userinfo.token.claim'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','true','access.token.claim'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','family_name','claim.name'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','true','id.token.claim'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','true','introspection.token.claim'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','String','jsonType.label'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','lastName','user.attribute'),('88e1060f-ee4e-4cfc-b03a-415d2c2cfd74','true','userinfo.token.claim'),('8a139c96-d34c-4cef-ba83-058a18d7206f','true','access.token.claim'),('8a139c96-d34c-4cef-ba83-058a18d7206f','middle_name','claim.name'),('8a139c96-d34c-4cef-ba83-058a18d7206f','true','id.token.claim'),('8a139c96-d34c-4cef-ba83-058a18d7206f','true','introspection.token.claim'),('8a139c96-d34c-4cef-ba83-058a18d7206f','String','jsonType.label'),('8a139c96-d34c-4cef-ba83-058a18d7206f','middleName','user.attribute'),('8a139c96-d34c-4cef-ba83-058a18d7206f','true','userinfo.token.claim'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','true','access.token.claim'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','groups','claim.name'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','true','id.token.claim'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','true','introspection.token.claim'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','String','jsonType.label'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','true','multivalued'),('8bd84bb1-9642-4cb8-83ec-160187077cb5','foo','user.attribute'),('8db045bb-2585-43e7-8ff0-6eca617f6494','true','access.token.claim'),('8db045bb-2585-43e7-8ff0-6eca617f6494','true','introspection.token.claim'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','true','access.token.claim'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','given_name','claim.name'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','true','id.token.claim'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','true','introspection.token.claim'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','String','jsonType.label'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','firstName','user.attribute'),('8db840dd-c1fb-4e28-a1f3-74854a98a6b9','true','userinfo.token.claim'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','true','access.token.claim'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','realm_access.roles','claim.name'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','true','introspection.token.claim'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','String','jsonType.label'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','true','multivalued'),('8dc2c61d-f549-49ea-85c4-a2fd4c64a879','foo','user.attribute'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','true','access.token.claim'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','nickname','claim.name'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','true','id.token.claim'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','true','introspection.token.claim'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','String','jsonType.label'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','nickname','user.attribute'),('8ddc0daa-f1fb-4cb8-acab-d4cfe7b9a087','true','userinfo.token.claim'),('8f359c5b-2789-42fd-815a-80285ae5faf8','true','access.token.claim'),('8f359c5b-2789-42fd-815a-80285ae5faf8','clientAddress','claim.name'),('8f359c5b-2789-42fd-815a-80285ae5faf8','true','id.token.claim'),('8f359c5b-2789-42fd-815a-80285ae5faf8','String','jsonType.label'),('8f359c5b-2789-42fd-815a-80285ae5faf8','clientAddress','user.session.note'),('8f359c5b-2789-42fd-815a-80285ae5faf8','true','userinfo.token.claim'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','true','access.token.claim'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','upn','claim.name'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','true','id.token.claim'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','true','introspection.token.claim'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','String','jsonType.label'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','username','user.attribute'),('8f4717c2-f471-4ab0-8e04-42ce2690bee5','true','userinfo.token.claim'),('90b2e741-8907-4f86-8959-560540ae16b8','true','access.token.claim'),('90b2e741-8907-4f86-8959-560540ae16b8','given_name','claim.name'),('90b2e741-8907-4f86-8959-560540ae16b8','true','id.token.claim'),('90b2e741-8907-4f86-8959-560540ae16b8','true','introspection.token.claim'),('90b2e741-8907-4f86-8959-560540ae16b8','String','jsonType.label'),('90b2e741-8907-4f86-8959-560540ae16b8','firstName','user.attribute'),('90b2e741-8907-4f86-8959-560540ae16b8','true','userinfo.token.claim'),('9755edf3-d6eb-4722-8e5f-1d0218603068','true','access.token.claim'),('9755edf3-d6eb-4722-8e5f-1d0218603068','locale','claim.name'),('9755edf3-d6eb-4722-8e5f-1d0218603068','true','id.token.claim'),('9755edf3-d6eb-4722-8e5f-1d0218603068','true','introspection.token.claim'),('9755edf3-d6eb-4722-8e5f-1d0218603068','String','jsonType.label'),('9755edf3-d6eb-4722-8e5f-1d0218603068','locale','user.attribute'),('9755edf3-d6eb-4722-8e5f-1d0218603068','true','userinfo.token.claim'),('99fae03c-7173-404a-90da-d417bea7738f','true','access.token.claim'),('99fae03c-7173-404a-90da-d417bea7738f','middle_name','claim.name'),('99fae03c-7173-404a-90da-d417bea7738f','true','id.token.claim'),('99fae03c-7173-404a-90da-d417bea7738f','true','introspection.token.claim'),('99fae03c-7173-404a-90da-d417bea7738f','String','jsonType.label'),('99fae03c-7173-404a-90da-d417bea7738f','middleName','user.attribute'),('99fae03c-7173-404a-90da-d417bea7738f','true','userinfo.token.claim'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','true','access.token.claim'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','website','claim.name'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','true','id.token.claim'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','true','introspection.token.claim'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','String','jsonType.label'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','website','user.attribute'),('9b3bdc6b-60e4-4a6e-8a2d-9f81153a9b78','true','userinfo.token.claim'),('9b552fef-119f-4d10-b042-90264a072200','true','access.token.claim'),('9b552fef-119f-4d10-b042-90264a072200','true','introspection.token.claim'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','true','access.token.claim'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','phone_number','claim.name'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','true','id.token.claim'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','true','introspection.token.claim'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','String','jsonType.label'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','phoneNumber','user.attribute'),('9b781adb-03c9-4f30-b730-bf317b7a2e04','true','userinfo.token.claim'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','true','access.token.claim'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','phone_number','claim.name'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','true','id.token.claim'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','true','introspection.token.claim'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','String','jsonType.label'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','phoneNumber','user.attribute'),('9d168f6a-4cf8-48f9-a1d6-1b86aa7684d3','true','userinfo.token.claim'),('9ec2759e-0c9b-415a-a5b1-0c043edad1b5','true','access.token.claim'),('9ec2759e-0c9b-415a-a5b1-0c043edad1b5','true','id.token.claim'),('9ec2759e-0c9b-415a-a5b1-0c043edad1b5','true','introspection.token.claim'),('9ec2759e-0c9b-415a-a5b1-0c043edad1b5','true','userinfo.token.claim'),('a218a26a-b735-471a-ab62-fba1aec81ab0','true','access.token.claim'),('a218a26a-b735-471a-ab62-fba1aec81ab0','profile','claim.name'),('a218a26a-b735-471a-ab62-fba1aec81ab0','true','id.token.claim'),('a218a26a-b735-471a-ab62-fba1aec81ab0','true','introspection.token.claim'),('a218a26a-b735-471a-ab62-fba1aec81ab0','String','jsonType.label'),('a218a26a-b735-471a-ab62-fba1aec81ab0','profile','user.attribute'),('a218a26a-b735-471a-ab62-fba1aec81ab0','true','userinfo.token.claim'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','true','access.token.claim'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','resource_access.${client_id}.roles','claim.name'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','true','introspection.token.claim'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','String','jsonType.label'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','true','multivalued'),('a5c3281d-7304-4422-b587-c75c4fa0cafe','foo','user.attribute'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','true','access.token.claim'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','family_name','claim.name'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','true','id.token.claim'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','true','introspection.token.claim'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','String','jsonType.label'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','lastName','user.attribute'),('a6ae5e99-f40e-4b32-8a71-06040162e0e8','true','userinfo.token.claim'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','true','access.token.claim'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','birthdate','claim.name'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','true','id.token.claim'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','true','introspection.token.claim'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','String','jsonType.label'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','birthdate','user.attribute'),('a8ca55a2-0f3c-4acb-b867-fc8c1adcdb1c','true','userinfo.token.claim'),('a932eb12-ae42-4762-ac08-819a06b75742','Role','attribute.name'),('a932eb12-ae42-4762-ac08-819a06b75742','Basic','attribute.nameformat'),('a932eb12-ae42-4762-ac08-819a06b75742','false','single'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','true','access.token.claim'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','locale','claim.name'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','true','id.token.claim'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','true','introspection.token.claim'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','String','jsonType.label'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','locale','user.attribute'),('a9d0e772-1238-4a02-87bd-4296a9f19fb8','true','userinfo.token.claim'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','true','access.token.claim'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','picture','claim.name'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','true','id.token.claim'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','true','introspection.token.claim'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','String','jsonType.label'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','picture','user.attribute'),('ab6eebe3-7590-4045-bc68-98fbc1c4b27f','true','userinfo.token.claim'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','true','access.token.claim'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','given_name','claim.name'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','true','id.token.claim'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','true','introspection.token.claim'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','String','jsonType.label'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','firstName','user.attribute'),('affe69a0-8b50-4f90-9e66-094cd7ea28bd','true','userinfo.token.claim'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','true','access.token.claim'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','clientHost','claim.name'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','true','id.token.claim'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','String','jsonType.label'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','clientHost','user.session.note'),('b067ed20-8cb4-4cf4-8473-05f11e0135c8','true','userinfo.token.claim'),('b084531c-1f82-476e-8e27-37b39995825e','true','access.token.claim'),('b084531c-1f82-476e-8e27-37b39995825e','phone_number_verified','claim.name'),('b084531c-1f82-476e-8e27-37b39995825e','true','id.token.claim'),('b084531c-1f82-476e-8e27-37b39995825e','true','introspection.token.claim'),('b084531c-1f82-476e-8e27-37b39995825e','boolean','jsonType.label'),('b084531c-1f82-476e-8e27-37b39995825e','phoneNumberVerified','user.attribute'),('b084531c-1f82-476e-8e27-37b39995825e','true','userinfo.token.claim'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','true','access.token.claim'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','clientHost','claim.name'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','true','id.token.claim'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','String','jsonType.label'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','clientHost','user.session.note'),('b0e5b686-ec03-4c24-a494-30a6ecb0779a','true','userinfo.token.claim'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','true','access.token.claim'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','locale','claim.name'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','true','id.token.claim'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','true','introspection.token.claim'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','String','jsonType.label'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','locale','user.attribute'),('b1dec9a9-6f87-4ee5-aa78-8f977fed115c','true','userinfo.token.claim'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','true','access.token.claim'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','given_name','claim.name'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','true','id.token.claim'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','true','introspection.token.claim'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','String','jsonType.label'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','firstName','user.attribute'),('b2453e9f-03ab-4dce-ba84-bd78a5537adb','true','userinfo.token.claim'),('b25d2d61-258d-4173-83f7-b9486dd24974','true','access.token.claim'),('b25d2d61-258d-4173-83f7-b9486dd24974','upn','claim.name'),('b25d2d61-258d-4173-83f7-b9486dd24974','true','id.token.claim'),('b25d2d61-258d-4173-83f7-b9486dd24974','true','introspection.token.claim'),('b25d2d61-258d-4173-83f7-b9486dd24974','String','jsonType.label'),('b25d2d61-258d-4173-83f7-b9486dd24974','username','user.attribute'),('b25d2d61-258d-4173-83f7-b9486dd24974','true','userinfo.token.claim'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','true','access.token.claim'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','groups','claim.name'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','true','id.token.claim'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','true','introspection.token.claim'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','String','jsonType.label'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','true','multivalued'),('b434d421-1a4d-4903-8189-f72b5f2e6a81','foo','user.attribute'),('b499ed7a-7234-46e4-904a-a7132749dfdb','true','access.token.claim'),('b499ed7a-7234-46e4-904a-a7132749dfdb','profile','claim.name'),('b499ed7a-7234-46e4-904a-a7132749dfdb','true','id.token.claim'),('b499ed7a-7234-46e4-904a-a7132749dfdb','true','introspection.token.claim'),('b499ed7a-7234-46e4-904a-a7132749dfdb','String','jsonType.label'),('b499ed7a-7234-46e4-904a-a7132749dfdb','profile','user.attribute'),('b499ed7a-7234-46e4-904a-a7132749dfdb','true','userinfo.token.claim'),('b7014c75-6e30-4988-a32f-98899d537705','true','access.token.claim'),('b7014c75-6e30-4988-a32f-98899d537705','email','claim.name'),('b7014c75-6e30-4988-a32f-98899d537705','true','id.token.claim'),('b7014c75-6e30-4988-a32f-98899d537705','true','introspection.token.claim'),('b7014c75-6e30-4988-a32f-98899d537705','String','jsonType.label'),('b7014c75-6e30-4988-a32f-98899d537705','email','user.attribute'),('b7014c75-6e30-4988-a32f-98899d537705','true','userinfo.token.claim'),('b8310580-6bc8-4181-a939-5404281ca57f','true','access.token.claim'),('b8310580-6bc8-4181-a939-5404281ca57f','true','id.token.claim'),('b8310580-6bc8-4181-a939-5404281ca57f','true','introspection.token.claim'),('b923d008-0f09-4cda-a285-c625b71e9d86','true','access.token.claim'),('b923d008-0f09-4cda-a285-c625b71e9d86','true','id.token.claim'),('b923d008-0f09-4cda-a285-c625b71e9d86','true','introspection.token.claim'),('b923d008-0f09-4cda-a285-c625b71e9d86','country','user.attribute.country'),('b923d008-0f09-4cda-a285-c625b71e9d86','formatted','user.attribute.formatted'),('b923d008-0f09-4cda-a285-c625b71e9d86','locality','user.attribute.locality'),('b923d008-0f09-4cda-a285-c625b71e9d86','postal_code','user.attribute.postal_code'),('b923d008-0f09-4cda-a285-c625b71e9d86','region','user.attribute.region'),('b923d008-0f09-4cda-a285-c625b71e9d86','street','user.attribute.street'),('b923d008-0f09-4cda-a285-c625b71e9d86','true','userinfo.token.claim'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','true','access.token.claim'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','email','claim.name'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','true','id.token.claim'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','true','introspection.token.claim'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','String','jsonType.label'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','email','user.attribute'),('b9bb95e6-e0bd-4135-86af-0b7425e6f2ad','true','userinfo.token.claim'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','true','access.token.claim'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','preferred_username','claim.name'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','true','id.token.claim'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','true','introspection.token.claim'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','String','jsonType.label'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','username','user.attribute'),('be5a1f80-c216-4f68-90a1-2b0b2175178b','true','userinfo.token.claim'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','true','access.token.claim'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','middle_name','claim.name'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','true','id.token.claim'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','true','introspection.token.claim'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','String','jsonType.label'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','middleName','user.attribute'),('be893d8a-4a2c-4ef0-9d6f-3d606b9fb837','true','userinfo.token.claim'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','true','access.token.claim'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','updated_at','claim.name'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','true','id.token.claim'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','true','introspection.token.claim'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','long','jsonType.label'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','updatedAt','user.attribute'),('c0962002-14c8-4fea-82a3-ea3e71ebafd0','true','userinfo.token.claim'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','true','access.token.claim'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','clientAddress','claim.name'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','true','id.token.claim'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','String','jsonType.label'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','clientAddress','user.session.note'),('c1064d26-2a0f-4ff8-9752-3f043987afc2','true','userinfo.token.claim'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','true','access.token.claim'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','groups','claim.name'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','true','id.token.claim'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','true','introspection.token.claim'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','String','jsonType.label'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','true','multivalued'),('c298fffd-8d48-47ba-9f4b-840fb3d8288f','foo','user.attribute'),('c35df1c0-afbe-415b-9387-b710fc3d6dc8','true','access.token.claim'),('c35df1c0-afbe-415b-9387-b710fc3d6dc8','true','id.token.claim'),('c35df1c0-afbe-415b-9387-b710fc3d6dc8','true','introspection.token.claim'),('c35df1c0-afbe-415b-9387-b710fc3d6dc8','true','userinfo.token.claim'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','true','access.token.claim'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','email_verified','claim.name'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','true','id.token.claim'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','true','introspection.token.claim'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','boolean','jsonType.label'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','emailVerified','user.attribute'),('c4733fd1-6b69-4ff2-8a8f-261d3244d52a','true','userinfo.token.claim'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','true','access.token.claim'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','birthdate','claim.name'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','true','id.token.claim'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','true','introspection.token.claim'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','String','jsonType.label'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','birthdate','user.attribute'),('c6c74d27-297e-448a-8798-ee5b4c704c9b','true','userinfo.token.claim'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','true','access.token.claim'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','website','claim.name'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','true','id.token.claim'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','true','introspection.token.claim'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','String','jsonType.label'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','website','user.attribute'),('c95d01f1-e3c7-4779-a5af-c505532fc5a3','true','userinfo.token.claim'),('c9df332e-52ed-428a-8f47-5f73ed533927','true','access.token.claim'),('c9df332e-52ed-428a-8f47-5f73ed533927','email_verified','claim.name'),('c9df332e-52ed-428a-8f47-5f73ed533927','true','id.token.claim'),('c9df332e-52ed-428a-8f47-5f73ed533927','true','introspection.token.claim'),('c9df332e-52ed-428a-8f47-5f73ed533927','boolean','jsonType.label'),('c9df332e-52ed-428a-8f47-5f73ed533927','emailVerified','user.attribute'),('c9df332e-52ed-428a-8f47-5f73ed533927','true','userinfo.token.claim'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','true','access.token.claim'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','profile','claim.name'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','true','id.token.claim'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','true','introspection.token.claim'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','String','jsonType.label'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','profile','user.attribute'),('ca66dfe5-7d76-4539-a16c-2452d60edcf9','true','userinfo.token.claim'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','true','access.token.claim'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','phone_number','claim.name'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','true','id.token.claim'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','true','introspection.token.claim'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','String','jsonType.label'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','phoneNumber','user.attribute'),('cb248cc2-e6eb-4d18-a2ec-78688d460fe2','true','userinfo.token.claim'),('cbeeb585-cb61-4b33-b501-33fac81f6e70','true','access.token.claim'),('cbeeb585-cb61-4b33-b501-33fac81f6e70','true','introspection.token.claim'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','true','access.token.claim'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','website','claim.name'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','true','id.token.claim'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','true','introspection.token.claim'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','String','jsonType.label'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','website','user.attribute'),('ce997d27-1277-4711-8c17-61fdabb3ef7f','true','userinfo.token.claim'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','true','access.token.claim'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','middle_name','claim.name'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','true','id.token.claim'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','true','introspection.token.claim'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','String','jsonType.label'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','middleName','user.attribute'),('d16f265f-5ba8-46d3-97ba-04b53ad6d5a6','true','userinfo.token.claim'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','true','access.token.claim'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','true','id.token.claim'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','true','introspection.token.claim'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','country','user.attribute.country'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','formatted','user.attribute.formatted'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','locality','user.attribute.locality'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','postal_code','user.attribute.postal_code'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','region','user.attribute.region'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','street','user.attribute.street'),('d1f243b3-1a13-4f94-95ea-67b35b74168e','true','userinfo.token.claim'),('d35eb0cc-10d4-4838-ba76-2c463308fce0','true','access.token.claim'),('d35eb0cc-10d4-4838-ba76-2c463308fce0','true','id.token.claim'),('d35eb0cc-10d4-4838-ba76-2c463308fce0','true','introspection.token.claim'),('d35eb0cc-10d4-4838-ba76-2c463308fce0','true','userinfo.token.claim'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','true','access.token.claim'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','groups','claim.name'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','true','id.token.claim'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','true','introspection.token.claim'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','String','jsonType.label'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','true','multivalued'),('d94ec36b-bc28-46ba-9294-931ed1bb6d70','foo','user.attribute'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','true','access.token.claim'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','clientHost','claim.name'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','true','id.token.claim'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','String','jsonType.label'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','clientHost','user.session.note'),('dac5c9ab-e72a-4541-859c-9028b0b5eabb','true','userinfo.token.claim'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','true','access.token.claim'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','zoneinfo','claim.name'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','true','id.token.claim'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','true','introspection.token.claim'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','String','jsonType.label'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','zoneinfo','user.attribute'),('db87009d-1c28-47cd-bb6f-8d297d1b09a2','true','userinfo.token.claim'),('df2b262f-714d-4405-85e9-e67bf23d4669','true','access.token.claim'),('df2b262f-714d-4405-85e9-e67bf23d4669','locale','claim.name'),('df2b262f-714d-4405-85e9-e67bf23d4669','true','id.token.claim'),('df2b262f-714d-4405-85e9-e67bf23d4669','true','introspection.token.claim'),('df2b262f-714d-4405-85e9-e67bf23d4669','String','jsonType.label'),('df2b262f-714d-4405-85e9-e67bf23d4669','locale','user.attribute'),('df2b262f-714d-4405-85e9-e67bf23d4669','true','userinfo.token.claim'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','true','access.token.claim'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','email_verified','claim.name'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','true','id.token.claim'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','true','introspection.token.claim'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','boolean','jsonType.label'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','emailVerified','user.attribute'),('e718a23d-99fd-402b-8bd3-3ccbf1b3d748','true','userinfo.token.claim'),('e72ee1d7-01b8-416a-991f-784991540ac2','true','access.token.claim'),('e72ee1d7-01b8-416a-991f-784991540ac2','nickname','claim.name'),('e72ee1d7-01b8-416a-991f-784991540ac2','true','id.token.claim'),('e72ee1d7-01b8-416a-991f-784991540ac2','true','introspection.token.claim'),('e72ee1d7-01b8-416a-991f-784991540ac2','String','jsonType.label'),('e72ee1d7-01b8-416a-991f-784991540ac2','nickname','user.attribute'),('e72ee1d7-01b8-416a-991f-784991540ac2','true','userinfo.token.claim'),('e96270c5-83fd-44d3-bbff-34826a233a86','true','access.token.claim'),('e96270c5-83fd-44d3-bbff-34826a233a86','email','claim.name'),('e96270c5-83fd-44d3-bbff-34826a233a86','true','id.token.claim'),('e96270c5-83fd-44d3-bbff-34826a233a86','true','introspection.token.claim'),('e96270c5-83fd-44d3-bbff-34826a233a86','String','jsonType.label'),('e96270c5-83fd-44d3-bbff-34826a233a86','email','user.attribute'),('e96270c5-83fd-44d3-bbff-34826a233a86','true','userinfo.token.claim'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','true','access.token.claim'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','profile','claim.name'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','true','id.token.claim'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','true','introspection.token.claim'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','String','jsonType.label'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','profile','user.attribute'),('eaef9075-2a29-4f99-8b06-898f315ba7f9','true','userinfo.token.claim'),('eb7e96fc-0851-42f7-9608-70344122862b','Role','attribute.name'),('eb7e96fc-0851-42f7-9608-70344122862b','Basic','attribute.nameformat'),('eb7e96fc-0851-42f7-9608-70344122862b','false','single'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','true','access.token.claim'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','upn','claim.name'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','true','id.token.claim'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','true','introspection.token.claim'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','String','jsonType.label'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','username','user.attribute'),('ed9fa933-f14e-4b00-a78d-b01ec5e52567','true','userinfo.token.claim'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','true','access.token.claim'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','phone_number_verified','claim.name'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','true','id.token.claim'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','true','introspection.token.claim'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','boolean','jsonType.label'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','phoneNumberVerified','user.attribute'),('eec2b301-ed44-457e-9d14-cb2e553a6f00','true','userinfo.token.claim'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','true','access.token.claim'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','phone_number_verified','claim.name'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','true','id.token.claim'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','true','introspection.token.claim'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','boolean','jsonType.label'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','phoneNumberVerified','user.attribute'),('eed1e625-2cac-49ab-b65c-2163e0fe0c81','true','userinfo.token.claim'),('ef70a585-d660-4cfe-b332-a4f490341f27','true','access.token.claim'),('ef70a585-d660-4cfe-b332-a4f490341f27','clientId','claim.name'),('ef70a585-d660-4cfe-b332-a4f490341f27','true','id.token.claim'),('ef70a585-d660-4cfe-b332-a4f490341f27','String','jsonType.label'),('ef70a585-d660-4cfe-b332-a4f490341f27','clientId','user.session.note'),('ef70a585-d660-4cfe-b332-a4f490341f27','true','userinfo.token.claim'),('efe08124-c423-4743-b40f-6a1e08787261','true','access.token.claim'),('efe08124-c423-4743-b40f-6a1e08787261','true','introspection.token.claim'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','true','access.token.claim'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','clientId','claim.name'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','true','id.token.claim'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','String','jsonType.label'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','clientId','user.session.note'),('f15078b4-5c9c-485f-8c5d-88875b6f7f72','true','userinfo.token.claim'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','true','access.token.claim'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','updated_at','claim.name'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','true','id.token.claim'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','true','introspection.token.claim'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','long','jsonType.label'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','updatedAt','user.attribute'),('f1ce3e84-1dda-4074-9ad0-492dedc4a419','true','userinfo.token.claim'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','true','access.token.claim'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','email','claim.name'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','true','id.token.claim'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','true','introspection.token.claim'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','String','jsonType.label'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','email','user.attribute'),('f3fd321d-fd3b-4e17-ad16-10a3aa176c9d','true','userinfo.token.claim'),('f53e7c34-9397-4bb9-a7a1-54df04e1877a','true','access.token.claim'),('f53e7c34-9397-4bb9-a7a1-54df04e1877a','true','introspection.token.claim'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','true','access.token.claim'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','gender','claim.name'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','true','id.token.claim'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','true','introspection.token.claim'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','String','jsonType.label'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','gender','user.attribute'),('f6e2e2d7-e9f0-4fc3-93b9-882ef04f9919','true','userinfo.token.claim'),('f819a9c6-6144-4fbf-a733-bb72b17ede72','Role','attribute.name'),('f819a9c6-6144-4fbf-a733-bb72b17ede72','Basic','attribute.nameformat'),('f819a9c6-6144-4fbf-a733-bb72b17ede72','false','single'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','true','access.token.claim'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','website','claim.name'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','true','id.token.claim'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','true','introspection.token.claim'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','String','jsonType.label'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','website','user.attribute'),('fe0b42fd-6bf6-4e97-a1d7-0901c8fc623b','true','userinfo.token.claim'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','true','access.token.claim'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','resource_access.${client_id}.roles','claim.name'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','true','introspection.token.claim'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','String','jsonType.label'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','true','multivalued'),('fea0a15b-c364-4504-bb72-edf5b3d6c79b','foo','user.attribute'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','true','access.token.claim'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','locale','claim.name'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','true','id.token.claim'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','true','introspection.token.claim'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','String','jsonType.label'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','locale','user.attribute'),('ff86b9f8-691d-4d78-9ebc-c1059947940c','true','userinfo.token.claim'),('ffab45c4-3a82-4011-af23-074757fd8908','true','access.token.claim'),('ffab45c4-3a82-4011-af23-074757fd8908','resource_access.${client_id}.roles','claim.name'),('ffab45c4-3a82-4011-af23-074757fd8908','true','introspection.token.claim'),('ffab45c4-3a82-4011-af23-074757fd8908','String','jsonType.label'),('ffab45c4-3a82-4011-af23-074757fd8908','true','multivalued'),('ffab45c4-3a82-4011-af23-074757fd8908','foo','user.attribute');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `EVENTS_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` text DEFAULT NULL,
  `REGISTRATION_ALLOWED` tinyint(4) NOT NULL DEFAULT 0,
  `REMEMBER_ME` tinyint(4) NOT NULL DEFAULT 0,
  `RESET_PASSWORD_ALLOWED` tinyint(4) NOT NULL DEFAULT 0,
  `SOCIAL` tinyint(4) NOT NULL DEFAULT 0,
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` tinyint(4) NOT NULL DEFAULT 0,
  `VERIFY_EMAIL` tinyint(4) NOT NULL DEFAULT 0,
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` tinyint(4) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_DETAILS_ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `EDIT_USERNAME_ALLOWED` tinyint(4) NOT NULL DEFAULT 0,
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
  `REVOKE_REFRESH_TOKEN` tinyint(4) NOT NULL DEFAULT 0,
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` tinyint(4) NOT NULL DEFAULT 1,
  `DUPLICATE_EMAILS_ALLOWED` tinyint(4) NOT NULL DEFAULT 0,
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `REALM` VALUES ('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'231b1e7c-cde3-41a3-a8ef-63e8915e37f7',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','290c0dcb-9cd6-4578-81d2-b7e2e7d86d06','7d3bec3e-bd75-48a2-b5f4-5cd9f01f57be','d1846e70-bb4e-471b-a5c3-20be16b6f21a','cfdd3076-ef06-41c6-b7ba-5379660f9783','f8265572-ed40-4401-9f6b-e589713578e2',31536000,0,900,1,0,'234eb752-0dab-4822-836d-dcf0e0dfd965',0,0,0,0,'bc5af003-ae5b-4a3e-9c3f-59f82a1f502d'),('org1',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org1',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'d6a650f1-fd7b-4c66-a0a2-933be4467fb2',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','2b899840-f8e0-4fad-86e1-938ed69d92c8','417a35e0-3704-47ad-9a3e-ffedea3fd993','0f81a5bf-c78a-453d-92a2-359752bde9cb','58c15e28-87c4-4f9a-afcd-bb3d46e4df39','afdf4ad5-5afc-4e6f-8cff-3eccf9f5ec95',31536000,0,900,1,0,'d34e52e8-41a1-44a3-b3fb-6f8cebd2d7ff',0,0,0,0,'79e4fb5f-4998-4918-88c3-7530547d5cc3'),('org2',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org2',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'a2217405-b748-40da-bb15-7b7956c7b232',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','b882e40c-f801-4313-a6c6-e593f907cde7','bff743f3-9638-4816-8710-3bab1d5ede9a','5459d9c4-01fd-472c-abb5-9e7b500b6e66','fbf6400e-842f-4208-b904-8afb499aa854','c99cca6f-1738-453d-b4bd-afb0f3f2c9b1',31536000,0,900,1,0,'aa216b23-5db4-4509-8aae-c42daba9a59c',0,0,0,0,'e42a0b3e-18ba-4314-89fd-24518f2e30a1'),('org3',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org3',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'edecac89-54e9-43a2-968e-9de464892d92',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','5c040b29-8270-4422-9203-92eb84232330','3dc96bf4-f9ff-4256-9458-adfb9ec363ef','14c4146d-b41e-4274-9c77-a288617b3476','cd9f8ce5-cb05-4350-a795-32ec628507e9','241fac09-70f2-4856-a7ee-694dc66133f7',31536000,0,900,1,0,'d3b7135c-547a-4637-b9e4-45c4e58f8119',0,0,0,0,'85f590a3-9534-4d3d-8a5b-ddce0b662bfa'),('org4',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org4',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'e3294e08-7f43-43b8-b7fa-d0d7cbfa9c4c',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','b3024647-64ea-47a1-8637-e3045cea6d82','a6081319-d165-4159-a121-a081fb45cb11','aeda06f0-a2cf-467e-86c6-d7212a60ccde','368e5c18-f04d-4f64-8b35-acaf708840fc','c7dceac9-d2c9-4dcf-94d5-fa7fed1606b9',31536000,0,900,1,0,'77519c53-283e-4e66-9d27-22d529136fa5',0,0,0,0,'dc2a87dd-691c-4daa-b65c-a209d5d4715c'),('org5',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org5',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'51eabf99-b8e2-41a9-bb92-892cceee46fd',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','b0d3b643-fb19-4d65-a982-3f2f0044bf68','e2eb95db-0165-4be2-8b11-9516e4fc680d','ad030701-fd41-4747-9ee8-9f4b69ea2e0d','b80040c1-c597-4bb9-a406-906a219ce31c','753d53b7-b0d1-47ae-8d52-4ece908306d1',31536000,0,900,1,0,'62f43509-df4a-4e3a-b57c-ac3ee28c591b',0,0,0,0,'74d83d63-91f9-4e0d-8cfa-60873ef6826d');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('firstBrokerLoginFlowId','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','1498f023-8ffb-41a6-8a5b-9f767301d032'),('firstBrokerLoginFlowId','org1','8335dad2-923a-4502-ac41-726e48b0b35f'),('firstBrokerLoginFlowId','org2','4e6c039d-f0b6-4e3f-a0ff-def2767ada48'),('firstBrokerLoginFlowId','org3','c703b3d3-4eaa-494a-b618-b9fbed2b96bc'),('firstBrokerLoginFlowId','org4','c19cb37d-e3d9-4f00-9c53-3ce84374a0ff'),('firstBrokerLoginFlowId','org5','f112974c-c0af-48d1-999a-90b7512edd95'),('maxDeltaTimeSeconds','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('maxTemporaryLockouts','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','0'),('maxTemporaryLockouts','org1','0'),('maxTemporaryLockouts','org2','0'),('maxTemporaryLockouts','org3','0'),('maxTemporaryLockouts','org4','0'),('maxTemporaryLockouts','org5','0'),('minimumQuickLoginWaitSeconds','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.referrerPolicy','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','no-referrer'),('_browser_header.referrerPolicy','org1','no-referrer'),('_browser_header.referrerPolicy','org2','no-referrer'),('_browser_header.referrerPolicy','org3','no-referrer'),('_browser_header.referrerPolicy','org4','no-referrer'),('_browser_header.referrerPolicy','org5','no-referrer'),('_browser_header.strictTransportSecurity','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_ENABLED_EVENT_TYPES` VALUES ('org1','AUTHREQID_TO_TOKEN'),('org1','AUTHREQID_TO_TOKEN_ERROR'),('org1','CLIENT_DELETE'),('org1','CLIENT_DELETE_ERROR'),('org1','CLIENT_INITIATED_ACCOUNT_LINKING'),('org1','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),('org1','CLIENT_LOGIN'),('org1','CLIENT_LOGIN_ERROR'),('org1','CLIENT_REGISTER'),('org1','CLIENT_REGISTER_ERROR'),('org1','CLIENT_UPDATE'),('org1','CLIENT_UPDATE_ERROR'),('org1','CODE_TO_TOKEN'),('org1','CODE_TO_TOKEN_ERROR'),('org1','CUSTOM_REQUIRED_ACTION'),('org1','CUSTOM_REQUIRED_ACTION_ERROR'),('org1','DELETE_ACCOUNT'),('org1','DELETE_ACCOUNT_ERROR'),('org1','EXECUTE_ACTIONS'),('org1','EXECUTE_ACTIONS_ERROR'),('org1','EXECUTE_ACTION_TOKEN'),('org1','EXECUTE_ACTION_TOKEN_ERROR'),('org1','FEDERATED_IDENTITY_LINK'),('org1','FEDERATED_IDENTITY_LINK_ERROR'),('org1','GRANT_CONSENT'),('org1','GRANT_CONSENT_ERROR'),('org1','IDENTITY_PROVIDER_FIRST_LOGIN'),('org1','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),('org1','IDENTITY_PROVIDER_LINK_ACCOUNT'),('org1','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),('org1','IDENTITY_PROVIDER_POST_LOGIN'),('org1','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),('org1','IMPERSONATE'),('org1','IMPERSONATE_ERROR'),('org1','LOGIN'),('org1','LOGIN_ERROR'),('org1','LOGOUT'),('org1','LOGOUT_ERROR'),('org1','OAUTH2_DEVICE_AUTH'),('org1','OAUTH2_DEVICE_AUTH_ERROR'),('org1','OAUTH2_DEVICE_CODE_TO_TOKEN'),('org1','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),('org1','OAUTH2_DEVICE_VERIFY_USER_CODE'),('org1','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),('org1','PERMISSION_TOKEN'),('org1','REGISTER'),('org1','REGISTER_ERROR'),('org1','REMOVE_FEDERATED_IDENTITY'),('org1','REMOVE_FEDERATED_IDENTITY_ERROR'),('org1','REMOVE_TOTP'),('org1','REMOVE_TOTP_ERROR'),('org1','RESET_PASSWORD'),('org1','RESET_PASSWORD_ERROR'),('org1','RESTART_AUTHENTICATION'),('org1','RESTART_AUTHENTICATION_ERROR'),('org1','REVOKE_GRANT'),('org1','REVOKE_GRANT_ERROR'),('org1','SEND_IDENTITY_PROVIDER_LINK'),('org1','SEND_IDENTITY_PROVIDER_LINK_ERROR'),('org1','SEND_RESET_PASSWORD'),('org1','SEND_RESET_PASSWORD_ERROR'),('org1','SEND_VERIFY_EMAIL'),('org1','SEND_VERIFY_EMAIL_ERROR'),('org1','TOKEN_EXCHANGE'),('org1','TOKEN_EXCHANGE_ERROR'),('org1','UPDATE_CONSENT'),('org1','UPDATE_CONSENT_ERROR'),('org1','UPDATE_EMAIL'),('org1','UPDATE_EMAIL_ERROR'),('org1','UPDATE_PASSWORD'),('org1','UPDATE_PASSWORD_ERROR'),('org1','UPDATE_PROFILE'),('org1','UPDATE_PROFILE_ERROR'),('org1','UPDATE_TOTP'),('org1','UPDATE_TOTP_ERROR'),('org1','VERIFY_EMAIL'),('org1','VERIFY_EMAIL_ERROR'),('org1','VERIFY_PROFILE'),('org1','VERIFY_PROFILE_ERROR'),('org2','AUTHREQID_TO_TOKEN'),('org2','AUTHREQID_TO_TOKEN_ERROR'),('org2','CLIENT_DELETE'),('org2','CLIENT_DELETE_ERROR'),('org2','CLIENT_INITIATED_ACCOUNT_LINKING'),('org2','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),('org2','CLIENT_LOGIN'),('org2','CLIENT_LOGIN_ERROR'),('org2','CLIENT_REGISTER'),('org2','CLIENT_REGISTER_ERROR'),('org2','CLIENT_UPDATE'),('org2','CLIENT_UPDATE_ERROR'),('org2','CODE_TO_TOKEN'),('org2','CODE_TO_TOKEN_ERROR'),('org2','CUSTOM_REQUIRED_ACTION'),('org2','CUSTOM_REQUIRED_ACTION_ERROR'),('org2','DELETE_ACCOUNT'),('org2','DELETE_ACCOUNT_ERROR'),('org2','EXECUTE_ACTIONS'),('org2','EXECUTE_ACTIONS_ERROR'),('org2','EXECUTE_ACTION_TOKEN'),('org2','EXECUTE_ACTION_TOKEN_ERROR'),('org2','FEDERATED_IDENTITY_LINK'),('org2','FEDERATED_IDENTITY_LINK_ERROR'),('org2','GRANT_CONSENT'),('org2','GRANT_CONSENT_ERROR'),('org2','IDENTITY_PROVIDER_FIRST_LOGIN'),('org2','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),('org2','IDENTITY_PROVIDER_LINK_ACCOUNT'),('org2','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),('org2','IDENTITY_PROVIDER_POST_LOGIN'),('org2','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),('org2','IMPERSONATE'),('org2','IMPERSONATE_ERROR'),('org2','LOGIN'),('org2','LOGIN_ERROR'),('org2','LOGOUT'),('org2','LOGOUT_ERROR'),('org2','OAUTH2_DEVICE_AUTH'),('org2','OAUTH2_DEVICE_AUTH_ERROR'),('org2','OAUTH2_DEVICE_CODE_TO_TOKEN'),('org2','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),('org2','OAUTH2_DEVICE_VERIFY_USER_CODE'),('org2','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),('org2','PERMISSION_TOKEN'),('org2','REGISTER'),('org2','REGISTER_ERROR'),('org2','REMOVE_FEDERATED_IDENTITY'),('org2','REMOVE_FEDERATED_IDENTITY_ERROR'),('org2','REMOVE_TOTP'),('org2','REMOVE_TOTP_ERROR'),('org2','RESET_PASSWORD'),('org2','RESET_PASSWORD_ERROR'),('org2','RESTART_AUTHENTICATION'),('org2','RESTART_AUTHENTICATION_ERROR'),('org2','REVOKE_GRANT'),('org2','REVOKE_GRANT_ERROR'),('org2','SEND_IDENTITY_PROVIDER_LINK'),('org2','SEND_IDENTITY_PROVIDER_LINK_ERROR'),('org2','SEND_RESET_PASSWORD'),('org2','SEND_RESET_PASSWORD_ERROR'),('org2','SEND_VERIFY_EMAIL'),('org2','SEND_VERIFY_EMAIL_ERROR'),('org2','TOKEN_EXCHANGE'),('org2','TOKEN_EXCHANGE_ERROR'),('org2','UPDATE_CONSENT'),('org2','UPDATE_CONSENT_ERROR'),('org2','UPDATE_EMAIL'),('org2','UPDATE_EMAIL_ERROR'),('org2','UPDATE_PASSWORD'),('org2','UPDATE_PASSWORD_ERROR'),('org2','UPDATE_PROFILE'),('org2','UPDATE_PROFILE_ERROR'),('org2','UPDATE_TOTP'),('org2','UPDATE_TOTP_ERROR'),('org2','VERIFY_EMAIL'),('org2','VERIFY_EMAIL_ERROR'),('org2','VERIFY_PROFILE'),('org2','VERIFY_PROFILE_ERROR'),('org3','AUTHREQID_TO_TOKEN'),('org3','AUTHREQID_TO_TOKEN_ERROR'),('org3','CLIENT_DELETE'),('org3','CLIENT_DELETE_ERROR'),('org3','CLIENT_INITIATED_ACCOUNT_LINKING'),('org3','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),('org3','CLIENT_LOGIN'),('org3','CLIENT_LOGIN_ERROR'),('org3','CLIENT_REGISTER'),('org3','CLIENT_REGISTER_ERROR'),('org3','CLIENT_UPDATE'),('org3','CLIENT_UPDATE_ERROR'),('org3','CODE_TO_TOKEN'),('org3','CODE_TO_TOKEN_ERROR'),('org3','CUSTOM_REQUIRED_ACTION'),('org3','CUSTOM_REQUIRED_ACTION_ERROR'),('org3','DELETE_ACCOUNT'),('org3','DELETE_ACCOUNT_ERROR'),('org3','EXECUTE_ACTIONS'),('org3','EXECUTE_ACTIONS_ERROR'),('org3','EXECUTE_ACTION_TOKEN'),('org3','EXECUTE_ACTION_TOKEN_ERROR'),('org3','FEDERATED_IDENTITY_LINK'),('org3','FEDERATED_IDENTITY_LINK_ERROR'),('org3','GRANT_CONSENT'),('org3','GRANT_CONSENT_ERROR'),('org3','IDENTITY_PROVIDER_FIRST_LOGIN'),('org3','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),('org3','IDENTITY_PROVIDER_LINK_ACCOUNT'),('org3','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),('org3','IDENTITY_PROVIDER_POST_LOGIN'),('org3','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),('org3','IMPERSONATE'),('org3','IMPERSONATE_ERROR'),('org3','LOGIN'),('org3','LOGIN_ERROR'),('org3','LOGOUT'),('org3','LOGOUT_ERROR'),('org3','OAUTH2_DEVICE_AUTH'),('org3','OAUTH2_DEVICE_AUTH_ERROR'),('org3','OAUTH2_DEVICE_CODE_TO_TOKEN'),('org3','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),('org3','OAUTH2_DEVICE_VERIFY_USER_CODE'),('org3','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),('org3','PERMISSION_TOKEN'),('org3','REGISTER'),('org3','REGISTER_ERROR'),('org3','REMOVE_FEDERATED_IDENTITY'),('org3','REMOVE_FEDERATED_IDENTITY_ERROR'),('org3','REMOVE_TOTP'),('org3','REMOVE_TOTP_ERROR'),('org3','RESET_PASSWORD'),('org3','RESET_PASSWORD_ERROR'),('org3','RESTART_AUTHENTICATION'),('org3','RESTART_AUTHENTICATION_ERROR'),('org3','REVOKE_GRANT'),('org3','REVOKE_GRANT_ERROR'),('org3','SEND_IDENTITY_PROVIDER_LINK'),('org3','SEND_IDENTITY_PROVIDER_LINK_ERROR'),('org3','SEND_RESET_PASSWORD'),('org3','SEND_RESET_PASSWORD_ERROR'),('org3','SEND_VERIFY_EMAIL'),('org3','SEND_VERIFY_EMAIL_ERROR'),('org3','TOKEN_EXCHANGE'),('org3','TOKEN_EXCHANGE_ERROR'),('org3','UPDATE_CONSENT'),('org3','UPDATE_CONSENT_ERROR'),('org3','UPDATE_EMAIL'),('org3','UPDATE_EMAIL_ERROR'),('org3','UPDATE_PASSWORD'),('org3','UPDATE_PASSWORD_ERROR'),('org3','UPDATE_PROFILE'),('org3','UPDATE_PROFILE_ERROR'),('org3','UPDATE_TOTP'),('org3','UPDATE_TOTP_ERROR'),('org3','VERIFY_EMAIL'),('org3','VERIFY_EMAIL_ERROR'),('org3','VERIFY_PROFILE'),('org3','VERIFY_PROFILE_ERROR'),('org4','AUTHREQID_TO_TOKEN'),('org4','AUTHREQID_TO_TOKEN_ERROR'),('org4','CLIENT_DELETE'),('org4','CLIENT_DELETE_ERROR'),('org4','CLIENT_INITIATED_ACCOUNT_LINKING'),('org4','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),('org4','CLIENT_LOGIN'),('org4','CLIENT_LOGIN_ERROR'),('org4','CLIENT_REGISTER'),('org4','CLIENT_REGISTER_ERROR'),('org4','CLIENT_UPDATE'),('org4','CLIENT_UPDATE_ERROR'),('org4','CODE_TO_TOKEN'),('org4','CODE_TO_TOKEN_ERROR'),('org4','CUSTOM_REQUIRED_ACTION'),('org4','CUSTOM_REQUIRED_ACTION_ERROR'),('org4','DELETE_ACCOUNT'),('org4','DELETE_ACCOUNT_ERROR'),('org4','EXECUTE_ACTIONS'),('org4','EXECUTE_ACTIONS_ERROR'),('org4','EXECUTE_ACTION_TOKEN'),('org4','EXECUTE_ACTION_TOKEN_ERROR'),('org4','FEDERATED_IDENTITY_LINK'),('org4','FEDERATED_IDENTITY_LINK_ERROR'),('org4','GRANT_CONSENT'),('org4','GRANT_CONSENT_ERROR'),('org4','IDENTITY_PROVIDER_FIRST_LOGIN'),('org4','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),('org4','IDENTITY_PROVIDER_LINK_ACCOUNT'),('org4','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),('org4','IDENTITY_PROVIDER_POST_LOGIN'),('org4','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),('org4','IMPERSONATE'),('org4','IMPERSONATE_ERROR'),('org4','LOGIN'),('org4','LOGIN_ERROR'),('org4','LOGOUT'),('org4','LOGOUT_ERROR'),('org4','OAUTH2_DEVICE_AUTH'),('org4','OAUTH2_DEVICE_AUTH_ERROR'),('org4','OAUTH2_DEVICE_CODE_TO_TOKEN'),('org4','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),('org4','OAUTH2_DEVICE_VERIFY_USER_CODE'),('org4','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),('org4','PERMISSION_TOKEN'),('org4','REGISTER'),('org4','REGISTER_ERROR'),('org4','REMOVE_FEDERATED_IDENTITY'),('org4','REMOVE_FEDERATED_IDENTITY_ERROR'),('org4','REMOVE_TOTP'),('org4','REMOVE_TOTP_ERROR'),('org4','RESET_PASSWORD'),('org4','RESET_PASSWORD_ERROR'),('org4','RESTART_AUTHENTICATION'),('org4','RESTART_AUTHENTICATION_ERROR'),('org4','REVOKE_GRANT'),('org4','REVOKE_GRANT_ERROR'),('org4','SEND_IDENTITY_PROVIDER_LINK'),('org4','SEND_IDENTITY_PROVIDER_LINK_ERROR'),('org4','SEND_RESET_PASSWORD'),('org4','SEND_RESET_PASSWORD_ERROR'),('org4','SEND_VERIFY_EMAIL'),('org4','SEND_VERIFY_EMAIL_ERROR'),('org4','TOKEN_EXCHANGE'),('org4','TOKEN_EXCHANGE_ERROR'),('org4','UPDATE_CONSENT'),('org4','UPDATE_CONSENT_ERROR'),('org4','UPDATE_EMAIL'),('org4','UPDATE_EMAIL_ERROR'),('org4','UPDATE_PASSWORD'),('org4','UPDATE_PASSWORD_ERROR'),('org4','UPDATE_PROFILE'),('org4','UPDATE_PROFILE_ERROR'),('org4','UPDATE_TOTP'),('org4','UPDATE_TOTP_ERROR'),('org4','VERIFY_EMAIL'),('org4','VERIFY_EMAIL_ERROR'),('org4','VERIFY_PROFILE'),('org4','VERIFY_PROFILE_ERROR'),('org5','AUTHREQID_TO_TOKEN'),('org5','AUTHREQID_TO_TOKEN_ERROR'),('org5','CLIENT_DELETE'),('org5','CLIENT_DELETE_ERROR'),('org5','CLIENT_INITIATED_ACCOUNT_LINKING'),('org5','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),('org5','CLIENT_LOGIN'),('org5','CLIENT_LOGIN_ERROR'),('org5','CLIENT_REGISTER'),('org5','CLIENT_REGISTER_ERROR'),('org5','CLIENT_UPDATE'),('org5','CLIENT_UPDATE_ERROR'),('org5','CODE_TO_TOKEN'),('org5','CODE_TO_TOKEN_ERROR'),('org5','CUSTOM_REQUIRED_ACTION'),('org5','CUSTOM_REQUIRED_ACTION_ERROR'),('org5','DELETE_ACCOUNT'),('org5','DELETE_ACCOUNT_ERROR'),('org5','EXECUTE_ACTIONS'),('org5','EXECUTE_ACTIONS_ERROR'),('org5','EXECUTE_ACTION_TOKEN'),('org5','EXECUTE_ACTION_TOKEN_ERROR'),('org5','FEDERATED_IDENTITY_LINK'),('org5','FEDERATED_IDENTITY_LINK_ERROR'),('org5','GRANT_CONSENT'),('org5','GRANT_CONSENT_ERROR'),('org5','IDENTITY_PROVIDER_FIRST_LOGIN'),('org5','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),('org5','IDENTITY_PROVIDER_LINK_ACCOUNT'),('org5','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),('org5','IDENTITY_PROVIDER_POST_LOGIN'),('org5','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),('org5','IMPERSONATE'),('org5','IMPERSONATE_ERROR'),('org5','LOGIN'),('org5','LOGIN_ERROR'),('org5','LOGOUT'),('org5','LOGOUT_ERROR'),('org5','OAUTH2_DEVICE_AUTH'),('org5','OAUTH2_DEVICE_AUTH_ERROR'),('org5','OAUTH2_DEVICE_CODE_TO_TOKEN'),('org5','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),('org5','OAUTH2_DEVICE_VERIFY_USER_CODE'),('org5','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),('org5','PERMISSION_TOKEN'),('org5','REGISTER'),('org5','REGISTER_ERROR'),('org5','REMOVE_FEDERATED_IDENTITY'),('org5','REMOVE_FEDERATED_IDENTITY_ERROR'),('org5','REMOVE_TOTP'),('org5','REMOVE_TOTP_ERROR'),('org5','RESET_PASSWORD'),('org5','RESET_PASSWORD_ERROR'),('org5','RESTART_AUTHENTICATION'),('org5','RESTART_AUTHENTICATION_ERROR'),('org5','REVOKE_GRANT'),('org5','REVOKE_GRANT_ERROR'),('org5','SEND_IDENTITY_PROVIDER_LINK'),('org5','SEND_IDENTITY_PROVIDER_LINK_ERROR'),('org5','SEND_RESET_PASSWORD'),('org5','SEND_RESET_PASSWORD_ERROR'),('org5','SEND_VERIFY_EMAIL'),('org5','SEND_VERIFY_EMAIL_ERROR'),('org5','TOKEN_EXCHANGE'),('org5','TOKEN_EXCHANGE_ERROR'),('org5','UPDATE_CONSENT'),('org5','UPDATE_CONSENT_ERROR'),('org5','UPDATE_EMAIL'),('org5','UPDATE_EMAIL_ERROR'),('org5','UPDATE_PASSWORD'),('org5','UPDATE_PASSWORD_ERROR'),('org5','UPDATE_PROFILE'),('org5','UPDATE_PROFILE_ERROR'),('org5','UPDATE_TOTP'),('org5','UPDATE_TOTP_ERROR'),('org5','VERIFY_EMAIL'),('org5','VERIFY_EMAIL_ERROR'),('org5','VERIFY_PROFILE'),('org5','VERIFY_PROFILE_ERROR');
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` tinyint(4) NOT NULL DEFAULT 0,
  `SECRET` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73'),('password','password',1,1,'org1'),('password','password',1,1,'org2'),('password','password',1,1,'org3'),('password','password',1,1,'org4'),('password','password',1,1,'org5');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','en'),('219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','ja'),('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `REDIRECT_URIS` VALUES ('247c130c-df04-4adc-9bbc-32eef08eca4f','/realms/master/account/*'),('2ab085fc-75a3-406b-a2c8-868bc13d7d57','/admin/master/console/*'),('320bf213-0be2-406c-823b-fc4c520ad8ca','/realms/org2/account/*'),('3629d25b-c624-44fa-bd37-4d002d7cadaf','/admin/org4/console/*'),('3db8c0da-0d5e-4ebd-903f-5eecf232382f','/*'),('3f40d3a3-d61a-4ff3-8b2e-e1f8edf581f2','/realms/org4/account/*'),('48cafaa3-a0ea-4487-b393-6c4acb1c406d','/realms/org1/account/*'),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','/admin/org5/console/*'),('5fd03581-4e84-4f6b-9f89-0db2f49f2b54','/*'),('6de10bb1-8be4-4a41-b4f5-40c157eba726','/realms/org1/account/*'),('6e8de75b-80b5-4366-953a-f95a340a5ed8','/*'),('8400902e-2977-4c22-b4a0-e2d91d103ecb','/realms/org3/account/*'),('875b4390-17a7-4104-a76d-574bb0fd81c6','/realms/org5/account/*'),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','/realms/org2/account/*'),('abd62508-13a4-4ee5-960a-10978cf868d4','/realms/org3/account/*'),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','/admin/org2/console/*'),('b35e0475-d55b-4021-8732-f8e52632be27','/*'),('bdd6d1b9-ec83-4ce6-9934-42cb88dd134f','/*'),('beab61ef-c70f-46ca-a8d1-3bf0973ffbf2','/*'),('c69d2ba3-054d-401f-843c-11c288b4bf11','/admin/org1/console/*'),('d4caa701-fcb9-4637-bb20-11c49e7cf798','/admin/org3/console/*'),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','/realms/org4/account/*'),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','/realms/master/account/*'),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','/realms/org5/account/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` tinyint(4) NOT NULL DEFAULT 0,
  `DEFAULT_ACTION` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0135a6ca-92b8-47bf-9dab-32d4a9c6f18a','VERIFY_EMAIL','Verify Email','org2',1,0,'VERIFY_EMAIL',50),('099ee845-bd3d-44d2-83f2-debe85ebfa4e','UPDATE_PASSWORD','Update Password','org2',1,0,'UPDATE_PASSWORD',30),('1b7b3c57-5ff6-41ff-ba40-16fde8b02026','UPDATE_PASSWORD','Update Password','org1',1,0,'UPDATE_PASSWORD',30),('1d92eb41-12cd-4987-9ea0-2e556d041dc8','delete_credential','Delete Credential','org5',1,0,'delete_credential',100),('20909d28-2aad-460a-86c5-e5e4be219001','VERIFY_PROFILE','Verify Profile','org3',1,0,'VERIFY_PROFILE',90),('277da4f9-39fd-406f-9249-a9c9ba9784d4','delete_credential','Delete Credential','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'delete_credential',100),('2ac247f7-b4d3-4af1-b029-11dab57cbeea','delete_account','Delete Account','org5',0,0,'delete_account',60),('2b30302e-6adb-4c08-9e2d-49dc8694aeb3','delete_account','Delete Account','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,0,'delete_account',60),('3d282431-cedf-43b4-86c5-e8f743ad0df4','delete_account','Delete Account','org2',0,0,'delete_account',60),('405bee94-dee5-41d8-9d61-60b59307337d','CONFIGURE_TOTP','Configure OTP','org2',1,0,'CONFIGURE_TOTP',10),('4457421a-33e2-40c3-8c25-fcc901ead20f','CONFIGURE_TOTP','Configure OTP','org5',1,0,'CONFIGURE_TOTP',10),('458c8fcf-fd3d-4cdc-b37c-344de5f7af16','TERMS_AND_CONDITIONS','Terms and Conditions','org3',0,0,'TERMS_AND_CONDITIONS',20),('47631a9a-243d-41aa-8cee-4e8891c8603b','VERIFY_EMAIL','Verify Email','org1',1,0,'VERIFY_EMAIL',50),('4f95f469-a7f5-4fec-bbf3-0283d912a3be','TERMS_AND_CONDITIONS','Terms and Conditions','org1',0,0,'TERMS_AND_CONDITIONS',20),('50d5cbe5-5679-4f77-9fcf-a125defd7158','VERIFY_PROFILE','Verify Profile','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'VERIFY_PROFILE',90),('51af6659-2fdf-4730-b056-c1c937e1746b','VERIFY_EMAIL','Verify Email','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'VERIFY_EMAIL',50),('542811ee-e268-41cd-a843-31b9ec6331fe','webauthn-register-passwordless','Webauthn Register Passwordless','org3',1,0,'webauthn-register-passwordless',80),('55bd1e4e-1d97-4f89-804e-890f8138870b','VERIFY_PROFILE','Verify Profile','org5',1,0,'VERIFY_PROFILE',90),('613fea15-42cc-4a13-9ddc-ccbffd46b0e7','webauthn-register-passwordless','Webauthn Register Passwordless','org2',1,0,'webauthn-register-passwordless',80),('61f31686-8155-4e92-927b-d4eb314cb781','delete_credential','Delete Credential','org1',1,0,'delete_credential',100),('6f34e960-2ad7-4965-b3f5-e034a5b4282e','CONFIGURE_TOTP','Configure OTP','org1',1,0,'CONFIGURE_TOTP',10),('71630256-5b25-4043-ba1f-b5b876f17310','delete_account','Delete Account','org4',0,0,'delete_account',60),('71c708ab-2fb6-4fdd-a4a8-b0945325a05c','webauthn-register-passwordless','Webauthn Register Passwordless','org4',1,0,'webauthn-register-passwordless',80),('758de894-95fa-43f4-9617-1b6044309af8','update_user_locale','Update User Locale','org2',1,0,'update_user_locale',1000),('75ac46fb-542f-42d8-bf4a-f8dd62ff6ad8','TERMS_AND_CONDITIONS','Terms and Conditions','org5',0,0,'TERMS_AND_CONDITIONS',20),('7b303035-9cdc-4858-bf17-db6d008dd0cd','UPDATE_PASSWORD','Update Password','org4',1,0,'UPDATE_PASSWORD',30),('7ece393c-236d-4602-8b37-9dec1e004839','update_user_locale','Update User Locale','org4',1,0,'update_user_locale',1000),('805aa0cb-d962-4cb8-8ef5-3ca1af2bed69','webauthn-register','Webauthn Register','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'webauthn-register',70),('81265e7e-7d04-4623-b630-532f19635d46','UPDATE_PASSWORD','Update Password','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'UPDATE_PASSWORD',30),('885fad20-b800-45b5-a2fe-b5f9ccc66ab6','update_user_locale','Update User Locale','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'update_user_locale',1000),('89e83bc4-6acb-43ec-a8e4-e9263c07b67e','delete_account','Delete Account','org1',0,0,'delete_account',60),('8ac1352b-be0c-4d22-921b-2ab56ac8ed89','VERIFY_PROFILE','Verify Profile','org4',1,0,'VERIFY_PROFILE',90),('8b7564c7-273b-4fae-b8ca-ddf2d32f2e6d','UPDATE_PASSWORD','Update Password','org5',1,0,'UPDATE_PASSWORD',30),('9171921d-09e1-4a74-a385-26d7390c1481','CONFIGURE_TOTP','Configure OTP','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'CONFIGURE_TOTP',10),('92bf5413-e398-48e9-b9b3-d53949ed2a4f','update_user_locale','Update User Locale','org5',1,0,'update_user_locale',1000),('99393424-6fec-4209-9b0f-08b38f1dcfaf','UPDATE_PASSWORD','Update Password','org3',1,0,'UPDATE_PASSWORD',30),('9b5a0da1-9b8e-4bfa-926d-80080fd73cc1','VERIFY_EMAIL','Verify Email','org4',1,0,'VERIFY_EMAIL',50),('9c8b6f6d-dc5c-4044-a96b-dbaed9737d53','TERMS_AND_CONDITIONS','Terms and Conditions','org2',0,0,'TERMS_AND_CONDITIONS',20),('a0d8fbfd-03b4-426f-9b83-3f63ccdca77d','UPDATE_PROFILE','Update Profile','org1',1,0,'UPDATE_PROFILE',40),('aa338c90-6abe-4279-a26b-2df5bf99d910','webauthn-register','Webauthn Register','org1',1,0,'webauthn-register',70),('aafdbb9e-ba21-4d55-a201-61da08ca55c9','webauthn-register','Webauthn Register','org2',1,0,'webauthn-register',70),('acb62383-b90d-40f5-872a-79c943d74bea','UPDATE_PROFILE','Update Profile','org4',1,0,'UPDATE_PROFILE',40),('b53175f4-3932-4ec8-a76d-a1d225deb909','UPDATE_PROFILE','Update Profile','org3',1,0,'UPDATE_PROFILE',40),('b78b6666-9867-407f-9d62-e65251d5a642','TERMS_AND_CONDITIONS','Terms and Conditions','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',0,0,'TERMS_AND_CONDITIONS',20),('b893fa90-a488-45ff-af27-e972ca2eb779','UPDATE_PROFILE','Update Profile','org2',1,0,'UPDATE_PROFILE',40),('bca7811a-773a-4dcf-9d2b-71bdefd05cf8','UPDATE_PROFILE','Update Profile','org5',1,0,'UPDATE_PROFILE',40),('bd894fc7-f929-4cc7-8eb7-8c4a919de160','VERIFY_EMAIL','Verify Email','org5',1,0,'VERIFY_EMAIL',50),('bee1ac2f-0036-43fa-86df-398a1cc1ce1c','delete_credential','Delete Credential','org4',1,0,'delete_credential',100),('c229725c-31be-427a-a467-8e5af245a115','webauthn-register','Webauthn Register','org5',1,0,'webauthn-register',70),('c8177d90-8290-49ad-9949-c555c656c040','TERMS_AND_CONDITIONS','Terms and Conditions','org4',0,0,'TERMS_AND_CONDITIONS',20),('c8c6b86a-115d-4ada-8dce-0693caa8659f','VERIFY_PROFILE','Verify Profile','org2',1,0,'VERIFY_PROFILE',90),('cb844f27-fa03-485c-9f04-77eec590f070','CONFIGURE_TOTP','Configure OTP','org3',1,0,'CONFIGURE_TOTP',10),('d5057e06-cdf3-404e-abec-140a3cbf7bde','webauthn-register','Webauthn Register','org3',1,0,'webauthn-register',70),('d73ce131-f499-4ccc-8558-6df307ae91d9','webauthn-register','Webauthn Register','org4',1,0,'webauthn-register',70),('dc61a57e-442e-4e93-96e4-1e142cb2a536','webauthn-register-passwordless','Webauthn Register Passwordless','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'webauthn-register-passwordless',80),('e6f50285-07d7-4a7e-a924-fd85ff3abfcd','UPDATE_PROFILE','Update Profile','219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73',1,0,'UPDATE_PROFILE',40),('e94df88c-8a00-4726-86bb-a69a37ac4110','delete_account','Delete Account','org3',0,0,'delete_account',60),('ec7ce836-1dc3-4dac-b3a3-33ad8b84cfa8','delete_credential','Delete Credential','org2',1,0,'delete_credential',100),('ef4c525d-b1b0-419f-857e-2f1b6b0a3534','webauthn-register-passwordless','Webauthn Register Passwordless','org1',1,0,'webauthn-register-passwordless',80),('f22fdea9-41bd-46d5-b038-008a59a5001b','VERIFY_EMAIL','Verify Email','org3',1,0,'VERIFY_EMAIL',50),('f317cbd9-cab9-4e8a-bec2-920b405d86ac','webauthn-register-passwordless','Webauthn Register Passwordless','org5',1,0,'webauthn-register-passwordless',80),('f7f16192-6e52-401e-9534-4862e6e5a7ba','delete_credential','Delete Credential','org3',1,0,'delete_credential',100),('f8beacc5-8508-4fff-ae75-2e6e9cc4aab8','VERIFY_PROFILE','Verify Profile','org1',1,0,'VERIFY_PROFILE',90),('fbd41afe-57a4-4887-b5b7-b1eb21560c21','update_user_locale','Update User Locale','org1',1,0,'update_user_locale',1000),('fcf6f6a6-dd30-45e8-887f-c5f3f973bbcf','update_user_locale','Update User Locale','org3',1,0,'update_user_locale',1000),('fec11e70-e05b-49d5-b5f8-2adc56b55635','CONFIGURE_TOTP','Configure OTP','org4',1,0,'CONFIGURE_TOTP',10);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` tinyint(4) NOT NULL DEFAULT 0,
  `POLICY_ENFORCE_MODE` tinyint(4) DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) DEFAULT NULL,
  `LOGIC` tinyint(4) DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` tinyint(4) NOT NULL DEFAULT 0,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('01f7420b-23cf-4d51-b3ab-a1e06f7a867f','3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6','kind','workspace'),('0867a9a3-9e43-48cf-acb3-87019635e273','c80ecfde-385f-43e9-a42b-46321696fffc','kind','organization'),('0fd4822b-6892-4322-b112-66078c135f81','7778b2cc-e1bb-4cc4-84b3-b6bce103eea1','kind','workspace'),('18474a4e-4856-4a0a-b3b9-2cdf3d49b1c7','fec81e1b-ac40-4be7-b252-a182598f1a57','kind','workspace'),('1b784fc0-1305-4efd-bb50-edb4d08fa678','df47e0db-7d53-44d7-a0a4-f4562e3b1cac','kind','workspace'),('1c9b760b-1531-4382-9aa4-a64ffa928f0d','5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3','kind','workspace'),('263ca8a5-ec6c-4564-b90f-afb97065a7c4','081ff5e3-4014-4c53-bba7-e86dbfa71609','kind','organization'),('33b2593d-4e0d-437c-a805-06fa1e2b990a','a50bb24c-d80b-4bda-b37a-569474a9c9f9','kind','workspace'),('365e39a1-5f6a-4947-bcb9-956f4634bae3','f427bb1c-fd3c-4cdc-9af8-4eee20c72f14','kind','workspace'),('37aa6c2b-284a-4d21-9733-a7e664e5dcfa','0da2b5a0-a6d2-414f-9014-e09797b0f3fc','kind','workspace'),('3dcff1e5-8b8b-4cda-83c5-997c074c34ea','4f5f06a0-078e-4a20-bdc3-c1ae77c72680','kind','workspace'),('45d10784-0273-4ca4-ba1b-0ff2bc5d4bcb','3d41da65-26f4-4039-b62d-550a72674bcd','kind','organization'),('45ec9e40-24e1-404a-a0ea-0cf1e8ac00a3','b9162a04-3cfb-4f5f-b0cc-49ddae5e5930','kind','workspace'),('49e2330d-453c-45d6-b4cf-d128410ee569','972fc57b-c88e-4f11-b1b6-b4d8b4b21fe8','kind','organization'),('56e014d7-24c6-4797-a397-a6f1eafce0d1','1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c','kind','workspace'),('5b39eaa5-fe55-4826-b5b7-f725d5c27d02','de3916db-066c-4525-816c-47ea54cc6f03','kind','workspace'),('5f5ee90a-4ad2-481d-8322-bfbda12624e1','82a8764f-e088-4a02-b985-0b361d2e404b','kind','workspace'),('60030e0d-80a3-4eab-b5de-3091caf319aa','7a08fd3c-abe9-49b9-95a2-81b04c85b560','kind','organization'),('6125609e-2e8d-4584-949a-0f7b900a13f1','1d034a73-20f6-4eba-a34e-17c1a4dd35e6','kind','organization'),('64452a88-94c1-4ebd-ae49-38e7bb69aa2c','10f033b7-102b-4cdc-9252-37514be96c00','kind','workspace'),('6eb10d50-38a4-47b4-9d34-fa460669ea61','6dde44a8-c70c-48ab-93d7-3894a1ebcbef','kind','workspace'),('757496e3-d1e5-479e-b5a7-1491f92dd5f3','3162e387-3ca4-441e-8b39-e15b79e58687','kind','organization'),('770bba8b-879d-47ab-b22d-4d99315ed808','3b590d32-2e6d-473e-a7d6-c001ba92466f','kind','workspace'),('7e6c062f-fc47-4808-aa65-286dfc1b968e','d84a2cbe-ac47-4b56-b2df-bfed41e56f14','kind','workspace'),('80d67ba4-687f-4ff8-a19b-af073c4cb5ab','db8fe8f0-95b2-4994-b7c3-3a26d5cfd53b','kind','organization'),('80e31753-1218-4f81-aba1-a4240f9af38a','4b67beb7-4ae1-4d96-929a-ea6e40c396dd','kind','workspace'),('847442f1-b055-436a-ade6-ffa371dd4fdb','5371d0bc-8fbb-44f9-953c-8b723c95c4f5','kind','workspace'),('91890303-8665-46e2-814d-32a3be180846','a6cb37b5-0248-481d-95f9-6a623b01e8d0','kind','workspace'),('951a0336-299b-4ecc-b65c-b0d3bd76971a','f341a69a-bbcf-42bf-895d-030b81e792a9','kind','organization'),('96626b53-97bf-400c-b555-2421f8d2d090','c61afc87-d329-4880-a830-957443029a32','kind','workspace'),('97ae6123-c2c0-4b41-80c8-708465bfe8d7','add1a704-9aa9-4b23-bfa4-24b30e330f48','kind','organization'),('9802fd47-15be-44e2-8528-dfb1836aeffd','8c4b0f0d-ad06-41bc-8e63-cc9fba55ae8a','kind','organization'),('987ff125-bf43-40fe-825c-080cc0ee611b','f14651a0-a105-4d18-8d50-537d3bb0b153','kind','workspace'),('9b58352e-9b99-444e-b39a-30770d47a7c5','2ee60687-caed-4815-9e58-7d13fb1d722a','kind','workspace'),('9da45756-99bf-4925-a5bc-e1e59493453c','1b7f7f15-e2a3-42f5-9344-0d744418238a','kind','workspace'),('a0f013b9-9d9d-4506-8151-f8f3ee9c4727','b500b9f7-1da0-42d0-b1f5-8096a5949fd3','kind','organization'),('a80b65f9-1fb3-4b21-8112-52de501af98f','002cf824-7b87-4995-ae81-827b6d19107b','kind','workspace'),('ab5e0b4a-482f-4c62-a2ee-88e4cad0af12','a4b76433-4732-46d3-844b-ae311102b77c','kind','workspace'),('ac3001c5-a9bd-4755-8c67-4755f4a1d879','b6e1d93a-d188-4632-be47-13533712312c','kind','workspace'),('adb393a6-5703-4204-b65a-ffcf92070f8c','05a2017d-8bb6-4907-835e-744aef179bf8','kind','workspace'),('b0354946-0896-4fdf-a59e-6c2e051a4ca5','83a47cd6-6d74-4630-ad53-dff3cdc61718','kind','workspace'),('b082d234-2050-4d7f-90df-7214905342a1','a68592f6-5444-49d2-b64c-3547761eaef8','kind','organization'),('b427e9e9-384e-4888-9263-539ef7749d09','f2335e97-5b71-4b0e-ae26-501d8869b0f8','kind','organization'),('b4bed603-8486-43a7-ae19-b9cd5181b63d','06c6ad58-1e17-4695-aaac-452e8ae326c0','kind','workspace'),('c3428d2f-758a-4062-b67d-eeb07ca09acf','3f128d19-6147-4d18-a193-ee982f4d4ec2','kind','workspace'),('c3bad14a-167b-4ea3-9c09-980f0d61e7ff','3b737083-a1a7-4f33-beb5-afaa82677044','kind','workspace'),('c84d6ef9-8742-4db0-b25f-475865ef981a','e6762070-8d0a-4519-bf1b-95bbed1be522','kind','workspace'),('cc6c28b8-a4cb-445c-ac17-2fee1ad0e445','0df25890-45bf-4813-b44d-8d94f014baca','kind','workspace'),('d0dc5ec0-2d57-40d1-907e-dc0996815e6e','75ce0a2b-aaa8-473b-9ecd-bd876c5d959a','kind','workspace'),('d6074ea6-9b98-485e-865f-3cc3b7b630e0','3c31c5c2-b182-45c8-8cf3-12b769fcac9c','kind','workspace'),('d8b750ea-0cf4-4e8f-a9ee-dd1bc44e5f29','2acfb9cb-8742-4a6a-85e5-d46632822a14','kind','workspace'),('e0359ace-95c3-4c4f-a39b-b52ef603c8d9','2d766ca8-5f42-4d87-a711-603d24e98821','kind','workspace'),('e1981eb3-d8c2-4e6a-bb2a-dc221deba452','a22eca50-8126-4d7c-a121-5db421566333','kind','organization'),('e73501a3-db75-49f2-8b23-ab133a7fe7b5','47f49633-fefe-4979-bc53-46fc95198379','kind','workspace'),('eb4686a5-6b6a-4193-8fa9-178dbf5cdc86','73a2a057-8d33-494e-b02f-56568d64a6ff','kind','workspace'),('f5fd3f7d-74a6-4021-9320-1593fe8f6075','0dec18f1-4b4c-40cb-a7da-e163998b6d53','kind','workspace'),('f8494ff0-c7ac-404d-a0e4-1385a3a4c1f3','2ef55f22-154c-4db9-bfd1-5e4b43c13616','kind','workspace'),('fc737618-5deb-4d44-8d6f-752bdf4e0f44','b801339b-2297-4fb3-888c-7244dbfe28f7','kind','workspace'),('fce0abce-f9e6-4f6e-aa19-2aaa803ef1dd','61cf9da3-2d00-49ad-96b3-f5eebaad7320','kind','workspace'),('fd48e995-c6aa-4be7-aa6a-1e812ae271b4','8b5fde0d-09e8-4549-b9b5-a4ae5c8ffd98','kind','workspace');
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `SCOPE_MAPPING` VALUES ('6de10bb1-8be4-4a41-b4f5-40c157eba726','20576cc7-092a-44a5-afed-da5a491c21e7'),('6de10bb1-8be4-4a41-b4f5-40c157eba726','a048a7fa-9328-4033-b7bd-1f76cef467b0'),('8400902e-2977-4c22-b4a0-e2d91d103ecb','8c5bfdbd-39b1-4666-a36e-ef0441f5231c'),('8400902e-2977-4c22-b4a0-e2d91d103ecb','eb079743-59e2-4cd2-a04d-affac31967ee'),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','1c4f1b4e-7712-40cb-b557-be3fe555ac07'),('88f9cb09-eff6-4136-a490-a8e71bc4bd9c','f01bef4a-708f-4186-9032-ade7470eade6'),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','2b00af1b-6b12-49ba-a56b-a5771ce3b576'),('e7ff98a8-98fc-4c47-ab0b-424cf3b3e3a5','a714cde6-43c2-4f2f-9d45-05f5c48380af'),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','115617f8-22d9-4d8f-b695-f06cf6627046'),('f449b258-f07c-46fb-b48a-7c98cdb4cb02','4b57cd90-cd4e-45de-a265-e5979cda214c'),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','1f7a30cf-7b99-4891-add8-ed72a2d0e640'),('fc85a78c-7daa-45d2-bb49-27d80cf3be05','bd2c8ff6-d737-4a09-a537-68d583c1b65d');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  KEY `USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`),
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` tinyint(4) NOT NULL DEFAULT 0,
  `ENABLED` tinyint(4) NOT NULL DEFAULT 0,
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
INSERT INTO `USER_ENTITY` VALUES ('0caf326b-9de5-47f1-a66e-ec46fea0ad8e','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org2','admin',1728267870460,NULL,0),('1012fedf-78c4-45b8-a167-29f735515410','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org1','admin',1728267852564,NULL,0),('192f71f6-1897-4c3a-9fbd-659ce298dd3a',NULL,'dbd787ef-db56-45fe-bc94-81f9d9dd1f98',0,1,NULL,NULL,NULL,'org1','service-account-org1-workspaces',1728267851196,'d2931841-1d90-49f5-a55b-22f9a6eb1fa9',0),('27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org5','admin',1728267915861,NULL,0),('32cd561f-d83a-47d0-84ba-06226a9369f9','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org4','admin',1728267900959,NULL,0),('34d25214-78e8-4cda-94d3-c841d12af193','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org3','admin',1728267885510,NULL,0),('4c5c4a50-2514-4ab0-baa9-813240bf6e38',NULL,'89a47f9c-05e4-4f91-bcba-4fabe971bdd4',0,1,NULL,NULL,NULL,'org3','service-account-org3-workspaces',1728267884510,'4f1bcf72-3d74-4dcd-b8eb-ceec493a441b',0),('63ab0b81-7dec-4a18-9b33-ec1662c0c418',NULL,'fc433b3f-e14b-4759-b5a4-3c2f3d096c21',0,1,NULL,NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','admin',1728267609225,NULL,0),('9f01caa6-fb86-4469-89b3-dd34bca63984',NULL,'10d67c5f-61bf-4461-91d5-40ef64f33f49',0,1,NULL,NULL,NULL,'org5','service-account-org5-workspaces',1728267914902,'b2243579-8514-4d2a-a723-7ea4e4070794',0),('ab7bb859-e075-4742-909a-b4a63d2e8672',NULL,'9084103b-e0bb-43f6-83e4-8719f9507d24',0,1,NULL,NULL,NULL,'219ff6e2-5d01-48ec-9bb9-12ddfa7a0a73','service-account-_platform',1728267612849,'d9b7fb56-cf40-4830-bfb7-5a92cca769f4',0),('ee067407-2269-4e8a-877e-4d002c54997d',NULL,'8c4baf36-892d-466d-acce-9297019e727d',0,1,NULL,NULL,NULL,'org4','service-account-org4-workspaces',1728267899929,'db6ec1b2-3401-449a-a512-a67ed08e1f1c',0),('f895fcd5-fe67-44bc-93e7-c770696c2336',NULL,'f130fa79-089a-45f7-af93-a822bd8e87f3',0,1,NULL,NULL,NULL,'org2','service-account-org2-workspaces',1728267869374,'0cae83b0-c90e-4b6d-b05b-75ea4fd610db',0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('002cf824-7b87-4995-ae81-827b6d19107b','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('06c6ad58-1e17-4695-aaac-452e8ae326c0','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('081ff5e3-4014-4c53-bba7-e86dbfa71609','1012fedf-78c4-45b8-a167-29f735515410'),('0dec18f1-4b4c-40cb-a7da-e163998b6d53','34d25214-78e8-4cda-94d3-c841d12af193'),('1a2b3b27-d0a2-426d-ac7d-d0e5852bb42c','32cd561f-d83a-47d0-84ba-06226a9369f9'),('1b7f7f15-e2a3-42f5-9344-0d744418238a','1012fedf-78c4-45b8-a167-29f735515410'),('2ef55f22-154c-4db9-bfd1-5e4b43c13616','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('3162e387-3ca4-441e-8b39-e15b79e58687','34d25214-78e8-4cda-94d3-c841d12af193'),('3c5e0dfa-bd0d-4f76-9260-a567d1876c9f','9f01caa6-fb86-4469-89b3-dd34bca63984'),('3e3f85ed-d099-480d-adcc-bf0f7dcd4aa6','34d25214-78e8-4cda-94d3-c841d12af193'),('5dc5a6a2-035a-4c5c-a6ee-f2faaee999a3','34d25214-78e8-4cda-94d3-c841d12af193'),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('74d83d63-91f9-4e0d-8cfa-60873ef6826d','9f01caa6-fb86-4469-89b3-dd34bca63984'),('7778b2cc-e1bb-4cc4-84b3-b6bce103eea1','32cd561f-d83a-47d0-84ba-06226a9369f9'),('79e4fb5f-4998-4918-88c3-7530547d5cc3','1012fedf-78c4-45b8-a167-29f735515410'),('79e4fb5f-4998-4918-88c3-7530547d5cc3','192f71f6-1897-4c3a-9fbd-659ce298dd3a'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','63ab0b81-7dec-4a18-9b33-ec1662c0c418'),('7adfd9a4-54c4-4569-a86e-ccbdbadf2d86','ab7bb859-e075-4742-909a-b4a63d2e8672'),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','34d25214-78e8-4cda-94d3-c841d12af193'),('85f590a3-9534-4d3d-8a5b-ddce0b662bfa','4c5c4a50-2514-4ab0-baa9-813240bf6e38'),('9469f8c4-ef05-4ef9-af89-e4f8f4ee2355','192f71f6-1897-4c3a-9fbd-659ce298dd3a'),('a76e89dd-8012-49f5-9fc2-4a89656c48bd','4c5c4a50-2514-4ab0-baa9-813240bf6e38'),('add1a704-9aa9-4b23-bfa4-24b30e330f48','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('b801339b-2297-4fb3-888c-7244dbfe28f7','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('b9162a04-3cfb-4f5f-b0cc-49ddae5e5930','1012fedf-78c4-45b8-a167-29f735515410'),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','63ab0b81-7dec-4a18-9b33-ec1662c0c418'),('bc5af003-ae5b-4a3e-9c3f-59f82a1f502d','ab7bb859-e075-4742-909a-b4a63d2e8672'),('c61afc87-d329-4880-a830-957443029a32','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('c7d679e9-1f33-4f3b-8690-7c29099801e3','f895fcd5-fe67-44bc-93e7-c770696c2336'),('c80ecfde-385f-43e9-a42b-46321696fffc','32cd561f-d83a-47d0-84ba-06226a9369f9'),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','32cd561f-d83a-47d0-84ba-06226a9369f9'),('dc2a87dd-691c-4daa-b65c-a209d5d4715c','ee067407-2269-4e8a-877e-4d002c54997d'),('df47e0db-7d53-44d7-a0a4-f4562e3b1cac','32cd561f-d83a-47d0-84ba-06226a9369f9'),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('e42a0b3e-18ba-4314-89fd-24518f2e30a1','f895fcd5-fe67-44bc-93e7-c770696c2336'),('e890b526-d16a-4b1f-a205-4c0b545ab92c','ee067407-2269-4e8a-877e-4d002c54997d'),('f14651a0-a105-4d18-8d50-537d3bb0b153','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('f341a69a-bbcf-42bf-895d-030b81e792a9','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('f427bb1c-fd3c-4cdc-9af8-4eee20c72f14','1012fedf-78c4-45b8-a167-29f735515410');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION`
--

DROP TABLE IF EXISTS `USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` tinyint(4) NOT NULL DEFAULT 0,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `WEB_ORIGINS` VALUES ('2ab085fc-75a3-406b-a2c8-868bc13d7d57','+'),('3629d25b-c624-44fa-bd37-4d002d7cadaf','+'),('4b169bff-a3f6-45c3-90f2-20ef68a8a7d2','+'),('afd6f62c-fceb-445c-8f6f-a8641a4c7cf5','+'),('c69d2ba3-054d-401f-843c-11c288b4bf11','+'),('d4caa701-fcb9-4637-bb20-11c49e7cf798','+');
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-10-07 11:20:18','dummy','2024-10-07 11:20:18','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2024-10-07 11:20:13','dummy','2024-10-07 11:20:13','dummy');
/*!40000 ALTER TABLE `M_SYSTEM_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_MAINTENANCE_MODE`
--

DROP TABLE IF EXISTS `T_MAINTENANCE_MODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-10-07 11:20:13.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-10-07 11:20:13.000000',NULL);
/*!40000 ALTER TABLE `T_MAINTENANCE_MODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION`
--

DROP TABLE IF EXISTS `T_ORGANIZATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-10-07 11:24:09','unittest-user01','2024-10-07 11:24:16','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-10-07 11:24:27','unittest-user01','2024-10-07 11:24:31','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-10-07 11:24:43','unittest-user01','2024-10-07 11:24:46','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-10-07 11:24:58','unittest-user01','2024-10-07 11:25:02','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-10-07 11:25:13','unittest-user01','2024-10-07 11:25:17','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_DB`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_GNX4SA68KQ8B2H6IEN00','PF_ORG_GNX4SA68KQ8B2H6IEN00','beeAYFng0z4FOtLVdP2DtaSMxOjzEYV9m7IT8fe7xbz4J0be1VPSWYPiY8rK9MlR','2024-10-07 11:24:13','unittest-user01','2024-10-07 11:25:28','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_YS9ASPUTAZG02T8L5D3E','PF_ORG_YS9ASPUTAZG02T8L5D3E','iHT5yiW+lZ2dbz92kdEXc/mL+u5omvNEoquZvK+5dkXRiOR5B7G/NY726yfqCxF6','2024-10-07 11:24:31','unittest-user01','2024-10-07 11:25:28','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_VOD7SX6Z0RBBH4BGN851','PF_ORG_VOD7SX6Z0RBBH4BGN851','WZBuOruTdnYB5WyBzphnhD/s5bxB9Z/ntQgFG+SAImtNViqowYHF1XyR4j5EJDmK','2024-10-07 11:24:46','unittest-user01','2024-10-07 11:25:28','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_D2129BGM7JFP9VYFCI0A','PF_ORG_D2129BGM7JFP9VYFCI0A','Hbq+CxVuoar8IV/w+Yx/FLTFkM3k5HveVXPDYggbvEJMayrleAySEFJmcrMXGKRS','2024-10-07 11:25:01','unittest-user01','2024-10-07 11:25:28','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_9IZF0GV8DOWT304WLIQZ','PF_ORG_9IZF0GV8DOWT304WLIQZ','ojCojPrIKtaa0IAT2vYPeU5MdLmDMFy1a0EocCG2JsrV5Hu/UnlZNNCixYFkxYR2','2024-10-07 11:25:16','unittest-user01','2024-10-07 11:25:28','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PLAN`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-10-07 11:20:12','system','2024-10-07 11:20:12','system');
/*!40000 ALTER TABLE `T_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLAN_ITEM`
--

DROP TABLE IF EXISTS `T_PLAN_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-10-07 11:20:18','dummy','2024-10-07 11:20:18','dummy'),('ita.organization.common.upload_file_size_limit','{\"description\": \"Maximum byte size of upload file for organization default\", \"max\": 107374182400}','2024-10-07 11:20:18','dummy','2024-10-07 11:20:18','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-10-07 11:20:12','system','2024-10-07 11:20:13','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-10-07 11:20:12','system','2024-10-07 11:20:13','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-10-07 11:20:12','system','2024-10-07 11:20:13','system');
/*!40000 ALTER TABLE `T_PLAN_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLAN_LIMIT`
--

DROP TABLE IF EXISTS `T_PLAN_LIMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_PLAN_LIMIT` (
  `PLAN_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LIMIT_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LIMIT_VALUE` bigint(20) NOT NULL,
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-10-07 11:20:18','dummy','2024-10-07 11:20:18','dummy'),('_default','ita.organization.common.upload_file_size_limit',104857600,'2024-10-07 11:20:18','dummy','2024-10-07 11:20:18','dummy'),('_default','platform.roles',1000,'2024-10-07 11:20:12','system','2024-10-07 11:20:12','system'),('_default','platform.users',10000,'2024-10-07 11:20:12','system','2024-10-07 11:20:12','system'),('_default','platform.workspaces',100,'2024-10-07 11:20:12','system','2024-10-07 11:20:12','system');
/*!40000 ALTER TABLE `T_PLAN_LIMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLATFORM_MIGRATION_HISTORY`
--

DROP TABLE IF EXISTS `T_PLATFORM_MIGRATION_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-10-07 11:20:11','1.9.0','2024-10-07 11:20:11','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(3,'1.5.0','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(5,'1.5.2','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(7,'1.6.0','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(9,'1.7.0','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(11,'1.8.0','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(13,'1.8.1','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(15,'1.8.100','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(16,'1.8.100','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(17,'1.9.0','START',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-10-07 11:20:13','1.9.0','2024-10-07 11:20:13','1.9.0');
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLATFORM_PRIVATE`
--

DROP TABLE IF EXISTS `T_PLATFORM_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"d9b7fb56-cf40-4830-bfb7-5a92cca769f4\", \"TOKEN_CHECK_CLIENT_SECRET\": \"MqcjuxxGsOFl92dsWMXXp4rprgxonsp3\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"71b02b27-7fda-459f-a370-e0f50244a32b\"}','2024-10-07 11:20:13','system','2024-10-07 11:20:13','system');
/*!40000 ALTER TABLE `T_PLATFORM_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PLATFORM_VERSION`
--

DROP TABLE IF EXISTS `T_PLATFORM_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-10-07 11:19:38','system','2024-10-07 11:20:13','1.9.0');
/*!40000 ALTER TABLE `T_PLATFORM_VERSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PROCESS_QUEUE`
--

DROP TABLE IF EXISTS `T_PROCESS_QUEUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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

--
-- Current Database: `PF_ORG_GNX4SA68KQ8B2H6IEN00`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_GNX4SA68KQ8B2H6IEN00` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_GNX4SA68KQ8B2H6IEN00`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `SMTP_HOST` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SMTP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_SMTP_SERVER`
--

LOCK TABLES `M_SMTP_SERVER` WRITE;
/*!40000 ALTER TABLE `M_SMTP_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_SMTP_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_AUDIT_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USER_ID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORG_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `WS_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEVEL` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `FULL_PATH` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ACCESS_ROUTE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_USER_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_BODY` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FORM` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FILES` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_CODE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_ID` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_TEXT` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STACK_INFO` text COLLATE utf8mb4_bin DEFAULT NULL,
  `PROCESS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOG_TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USERID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `METHOD` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_AUDIT_LOG`
--

LOCK TABLES `T_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG`
--

LOCK TABLES `T_JOBS_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG_FILE`
--

LOCK TABLES `T_JOBS_AUDIT_LOG_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER`
--

DROP TABLE IF EXISTS `T_JOBS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_REGISTER` int(11) DEFAULT NULL,
  `COUNT_UPDATE` int(11) DEFAULT NULL,
  `COUNT_DELETE` int(11) DEFAULT NULL,
  `SUCCESS_REGISTER` int(11) DEFAULT NULL,
  `SUCCESS_UPDATE` int(11) DEFAULT NULL,
  `SUCCESS_DELETE` int(11) DEFAULT NULL,
  `FAILED_REGISTER` int(11) DEFAULT NULL,
  `FAILED_UPDATE` int(11) DEFAULT NULL,
  `FAILED_DELETE` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER`
--

LOCK TABLES `T_JOBS_USER` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_EXPORT` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `QUERY_STRINGS` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_EXPORT`
--

LOCK TABLES `T_JOBS_USER_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE`
--

LOCK TABLES `T_JOBS_USER_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE_EXPORT` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE_EXPORT`
--

LOCK TABLES `T_JOBS_USER_FILE_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_RESULT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_RESULT` (
  `RESULT_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`RESULT_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_RESULT`
--

LOCK TABLES `T_JOBS_USER_RESULT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PRIVATE`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ORGANIZATION_PRIVATE` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_PRIVATE`
--

LOCK TABLES `T_ORGANIZATION_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"beab61ef-c70f-46ca-a8d1-3bf0973ffbf2\", \"USER_TOKEN_CLIENT_SECRET\": \"eXGoYR6E9mgt9IQOcWabcuytvcKmBMQ2\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"d2931841-1d90-49f5-a55b-22f9a6eb1fa9\", \"INTERNAL_API_CLIENT_SECRET\": \"8s6sXBaMFizAJ5QfXG3b9YvUigN7nCIa\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"e5f235ff-e092-4e03-96e5-6de451cab48d\", \"TOKEN_CHECK_CLIENT_SECRET\": \"GjPAHDcKFDoqMqaMZ1VJA6wPssCPruUt\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"44f67ee9-b606-481b-b720-0d99b0607209\"}','2024-10-07 11:24:13','unittest-user01','2024-10-07 11:24:13','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `T_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_REFRESH_TOKEN` (
  `USER_ID` varchar(40) NOT NULL,
  `SESSION_ID` varchar(40) NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE`
--

DROP TABLE IF EXISTS `T_WORKSPACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE` (
  `WORKSPACE_ID` varchar(36) NOT NULL,
  `WORKSPACE_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE`
--

LOCK TABLES `T_WORKSPACE` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:16','1012fedf-78c4-45b8-a167-29f735515410','2024-10-07 11:24:16','1012fedf-78c4-45b8-a167-29f735515410'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:20','1012fedf-78c4-45b8-a167-29f735515410','2024-10-07 11:24:20','1012fedf-78c4-45b8-a167-29f735515410'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:24','1012fedf-78c4-45b8-a167-29f735515410','2024-10-07 11:24:24','1012fedf-78c4-45b8-a167-29f735515410');
/*!40000 ALTER TABLE `T_WORKSPACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE_DB`
--

DROP TABLE IF EXISTS `T_WORKSPACE_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `WORKSPACE_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE_DB`
--

LOCK TABLES `T_WORKSPACE_DB` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE_DB` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_U4KOH47S19BZ6698QXNA','PF_WS_U4KOH47S19BZ6698QXNA','Bq6LdcyX+CMxuVFKCY0YSXEXpCkfx7HTopKJ1dmYnb+GJJBFB8qHCVA7PUKI9vzf','2024-10-07 11:24:17','1012fedf-78c4-45b8-a167-29f735515410','2024-10-07 11:25:28','1012fedf-78c4-45b8-a167-29f735515410'),('org1','ws2','unittest-platform-db',3306,'PF_WS_8UCNROJAJYPWR3XZW30Q','PF_WS_8UCNROJAJYPWR3XZW30Q','C4BM8arbwMLJ62+FRF2nOyM1IcsPHzIOFlzDJXJouJP81tIx1xAZgXVS8dYs2+BR','2024-10-07 11:24:20','1012fedf-78c4-45b8-a167-29f735515410','2024-10-07 11:25:28','1012fedf-78c4-45b8-a167-29f735515410'),('org1','ws3','unittest-platform-db',3306,'PF_WS_MZI0TFXAYHX3RH59WMLT','PF_WS_MZI0TFXAYHX3RH59WMLT','1L3VgiYOzzf3oPgSMuyRoldeVtcynK3N6N7ITMj6DkN6xd987YIWPJPmgEuwTZKd','2024-10-07 11:24:24','1012fedf-78c4-45b8-a167-29f735515410','2024-10-07 11:25:28','1012fedf-78c4-45b8-a167-29f735515410');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_U4KOH47S19BZ6698QXNA`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_U4KOH47S19BZ6698QXNA` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_U4KOH47S19BZ6698QXNA`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_8UCNROJAJYPWR3XZW30Q`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_8UCNROJAJYPWR3XZW30Q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_8UCNROJAJYPWR3XZW30Q`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_MZI0TFXAYHX3RH59WMLT`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_MZI0TFXAYHX3RH59WMLT` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_MZI0TFXAYHX3RH59WMLT`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_ORG_YS9ASPUTAZG02T8L5D3E`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_YS9ASPUTAZG02T8L5D3E` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_YS9ASPUTAZG02T8L5D3E`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `SMTP_HOST` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SMTP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_SMTP_SERVER`
--

LOCK TABLES `M_SMTP_SERVER` WRITE;
/*!40000 ALTER TABLE `M_SMTP_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_SMTP_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_AUDIT_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USER_ID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORG_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `WS_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEVEL` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `FULL_PATH` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ACCESS_ROUTE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_USER_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_BODY` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FORM` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FILES` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_CODE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_ID` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_TEXT` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STACK_INFO` text COLLATE utf8mb4_bin DEFAULT NULL,
  `PROCESS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOG_TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USERID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `METHOD` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_AUDIT_LOG`
--

LOCK TABLES `T_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG`
--

LOCK TABLES `T_JOBS_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG_FILE`
--

LOCK TABLES `T_JOBS_AUDIT_LOG_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER`
--

DROP TABLE IF EXISTS `T_JOBS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_REGISTER` int(11) DEFAULT NULL,
  `COUNT_UPDATE` int(11) DEFAULT NULL,
  `COUNT_DELETE` int(11) DEFAULT NULL,
  `SUCCESS_REGISTER` int(11) DEFAULT NULL,
  `SUCCESS_UPDATE` int(11) DEFAULT NULL,
  `SUCCESS_DELETE` int(11) DEFAULT NULL,
  `FAILED_REGISTER` int(11) DEFAULT NULL,
  `FAILED_UPDATE` int(11) DEFAULT NULL,
  `FAILED_DELETE` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER`
--

LOCK TABLES `T_JOBS_USER` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_EXPORT` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `QUERY_STRINGS` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_EXPORT`
--

LOCK TABLES `T_JOBS_USER_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE`
--

LOCK TABLES `T_JOBS_USER_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE_EXPORT` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE_EXPORT`
--

LOCK TABLES `T_JOBS_USER_FILE_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_RESULT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_RESULT` (
  `RESULT_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`RESULT_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_RESULT`
--

LOCK TABLES `T_JOBS_USER_RESULT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PRIVATE`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ORGANIZATION_PRIVATE` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_PRIVATE`
--

LOCK TABLES `T_ORGANIZATION_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"bdd6d1b9-ec83-4ce6-9934-42cb88dd134f\", \"USER_TOKEN_CLIENT_SECRET\": \"vG0s2bZTl1ozvjkuAtekEJP6lUxGXZ9V\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"0cae83b0-c90e-4b6d-b05b-75ea4fd610db\", \"INTERNAL_API_CLIENT_SECRET\": \"pGeibYSfOvwZ2MKgpeapN1Hpuy6ZhHk2\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"91e02879-b4bf-4cb2-9531-63e920e93386\", \"TOKEN_CHECK_CLIENT_SECRET\": \"0RYarbfhuGAcjBwHN3USAJm1Ia6lAR12\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"8a2d7c3c-79cc-4f48-a616-e9f3ea635236\"}','2024-10-07 11:24:31','unittest-user01','2024-10-07 11:24:31','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `T_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_REFRESH_TOKEN` (
  `USER_ID` varchar(40) NOT NULL,
  `SESSION_ID` varchar(40) NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE`
--

DROP TABLE IF EXISTS `T_WORKSPACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE` (
  `WORKSPACE_ID` varchar(36) NOT NULL,
  `WORKSPACE_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE`
--

LOCK TABLES `T_WORKSPACE` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:31','0caf326b-9de5-47f1-a66e-ec46fea0ad8e','2024-10-07 11:24:31','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:35','0caf326b-9de5-47f1-a66e-ec46fea0ad8e','2024-10-07 11:24:35','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:39','0caf326b-9de5-47f1-a66e-ec46fea0ad8e','2024-10-07 11:24:39','0caf326b-9de5-47f1-a66e-ec46fea0ad8e');
/*!40000 ALTER TABLE `T_WORKSPACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE_DB`
--

DROP TABLE IF EXISTS `T_WORKSPACE_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `WORKSPACE_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE_DB`
--

LOCK TABLES `T_WORKSPACE_DB` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE_DB` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_GD5B6JN9YPU9VQBKZTO7','PF_WS_GD5B6JN9YPU9VQBKZTO7','0Y5CZH+G49LA1N7EJmJd7DFwgc21dHQydglSGfdb1jIC09gYht3P19jI+meBAd1h','2024-10-07 11:24:32','0caf326b-9de5-47f1-a66e-ec46fea0ad8e','2024-10-07 11:25:28','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('org2','ws2','unittest-platform-db',3306,'PF_WS_WGMU9OZ89E96N3DIXBET','PF_WS_WGMU9OZ89E96N3DIXBET','q471Bg2s6vL3r1Q+b70phSUg9cdBbUS86/ZtsXpmo/6Sfs+zZsPndbnLG7+Y9Cd6','2024-10-07 11:24:35','0caf326b-9de5-47f1-a66e-ec46fea0ad8e','2024-10-07 11:25:28','0caf326b-9de5-47f1-a66e-ec46fea0ad8e'),('org2','ws3','unittest-platform-db',3306,'PF_WS_I7VRBHHURHYST6LQB123','PF_WS_I7VRBHHURHYST6LQB123','EPUmqQOgrXnJ+gZGzBUkoZjPxx2C3HC3xFCKPbgUzezYLs+pz6ADeP1O0D5pooAo','2024-10-07 11:24:39','0caf326b-9de5-47f1-a66e-ec46fea0ad8e','2024-10-07 11:25:28','0caf326b-9de5-47f1-a66e-ec46fea0ad8e');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_GD5B6JN9YPU9VQBKZTO7`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_GD5B6JN9YPU9VQBKZTO7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_GD5B6JN9YPU9VQBKZTO7`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_WGMU9OZ89E96N3DIXBET`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_WGMU9OZ89E96N3DIXBET` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_WGMU9OZ89E96N3DIXBET`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_I7VRBHHURHYST6LQB123`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_I7VRBHHURHYST6LQB123` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_I7VRBHHURHYST6LQB123`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_ORG_VOD7SX6Z0RBBH4BGN851`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_VOD7SX6Z0RBBH4BGN851` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_VOD7SX6Z0RBBH4BGN851`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `SMTP_HOST` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SMTP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_SMTP_SERVER`
--

LOCK TABLES `M_SMTP_SERVER` WRITE;
/*!40000 ALTER TABLE `M_SMTP_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_SMTP_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_AUDIT_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USER_ID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORG_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `WS_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEVEL` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `FULL_PATH` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ACCESS_ROUTE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_USER_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_BODY` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FORM` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FILES` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_CODE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_ID` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_TEXT` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STACK_INFO` text COLLATE utf8mb4_bin DEFAULT NULL,
  `PROCESS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOG_TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USERID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `METHOD` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_AUDIT_LOG`
--

LOCK TABLES `T_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG`
--

LOCK TABLES `T_JOBS_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG_FILE`
--

LOCK TABLES `T_JOBS_AUDIT_LOG_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER`
--

DROP TABLE IF EXISTS `T_JOBS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_REGISTER` int(11) DEFAULT NULL,
  `COUNT_UPDATE` int(11) DEFAULT NULL,
  `COUNT_DELETE` int(11) DEFAULT NULL,
  `SUCCESS_REGISTER` int(11) DEFAULT NULL,
  `SUCCESS_UPDATE` int(11) DEFAULT NULL,
  `SUCCESS_DELETE` int(11) DEFAULT NULL,
  `FAILED_REGISTER` int(11) DEFAULT NULL,
  `FAILED_UPDATE` int(11) DEFAULT NULL,
  `FAILED_DELETE` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER`
--

LOCK TABLES `T_JOBS_USER` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_EXPORT` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `QUERY_STRINGS` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_EXPORT`
--

LOCK TABLES `T_JOBS_USER_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE`
--

LOCK TABLES `T_JOBS_USER_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE_EXPORT` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE_EXPORT`
--

LOCK TABLES `T_JOBS_USER_FILE_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_RESULT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_RESULT` (
  `RESULT_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`RESULT_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_RESULT`
--

LOCK TABLES `T_JOBS_USER_RESULT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PRIVATE`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ORGANIZATION_PRIVATE` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_PRIVATE`
--

LOCK TABLES `T_ORGANIZATION_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"b35e0475-d55b-4021-8732-f8e52632be27\", \"USER_TOKEN_CLIENT_SECRET\": \"5KGfYsjjh3FlPDBd3ScEsoT1GHGqeP8D\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"4f1bcf72-3d74-4dcd-b8eb-ceec493a441b\", \"INTERNAL_API_CLIENT_SECRET\": \"Iu6x1IrozukJJ9xqUBgH3CJuRV6CgGDs\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"7340899d-2fad-497c-9a46-0c9113674b9f\", \"TOKEN_CHECK_CLIENT_SECRET\": \"5T3BP1d2hFynx6TivuR2xNjxHq8nHeoD\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"cf7e8abe-cf28-4c54-8618-45cdecc8f2b2\"}','2024-10-07 11:24:46','unittest-user01','2024-10-07 11:24:46','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `T_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_REFRESH_TOKEN` (
  `USER_ID` varchar(40) NOT NULL,
  `SESSION_ID` varchar(40) NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE`
--

DROP TABLE IF EXISTS `T_WORKSPACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE` (
  `WORKSPACE_ID` varchar(36) NOT NULL,
  `WORKSPACE_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE`
--

LOCK TABLES `T_WORKSPACE` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:47','34d25214-78e8-4cda-94d3-c841d12af193','2024-10-07 11:24:47','34d25214-78e8-4cda-94d3-c841d12af193'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:50','34d25214-78e8-4cda-94d3-c841d12af193','2024-10-07 11:24:50','34d25214-78e8-4cda-94d3-c841d12af193'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:24:54','34d25214-78e8-4cda-94d3-c841d12af193','2024-10-07 11:24:54','34d25214-78e8-4cda-94d3-c841d12af193');
/*!40000 ALTER TABLE `T_WORKSPACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE_DB`
--

DROP TABLE IF EXISTS `T_WORKSPACE_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `WORKSPACE_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE_DB`
--

LOCK TABLES `T_WORKSPACE_DB` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE_DB` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_753ECJ3FTCUFRIPNZZPF','PF_WS_753ECJ3FTCUFRIPNZZPF','fXbJ9SJKdiBFDdZYeUTJDISc2oe9ZzV042AjSEddr+SzalnqT3HS90UoTntWqrlY','2024-10-07 11:24:47','34d25214-78e8-4cda-94d3-c841d12af193','2024-10-07 11:25:28','34d25214-78e8-4cda-94d3-c841d12af193'),('org3','ws2','unittest-platform-db',3306,'PF_WS_K0MOVQFEZXVH4K53X9C9','PF_WS_K0MOVQFEZXVH4K53X9C9','RWB3rcn512eQqWpOMRiuTpHYH9SY+IfaeVKBrla7BGMghaGbdgLTwOLSCvVazC8v','2024-10-07 11:24:51','34d25214-78e8-4cda-94d3-c841d12af193','2024-10-07 11:25:28','34d25214-78e8-4cda-94d3-c841d12af193'),('org3','ws3','unittest-platform-db',3306,'PF_WS_GM0QJ7G7C7RAL0M20JU0','PF_WS_GM0QJ7G7C7RAL0M20JU0','us1/BcYhJhiPf59IoSJIS5Uw8Tfqw2oTBD3c1lf/EioMec3ZION951KAT5PFG+tc','2024-10-07 11:24:55','34d25214-78e8-4cda-94d3-c841d12af193','2024-10-07 11:25:28','34d25214-78e8-4cda-94d3-c841d12af193');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_753ECJ3FTCUFRIPNZZPF`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_753ECJ3FTCUFRIPNZZPF` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_753ECJ3FTCUFRIPNZZPF`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_K0MOVQFEZXVH4K53X9C9`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_K0MOVQFEZXVH4K53X9C9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_K0MOVQFEZXVH4K53X9C9`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_GM0QJ7G7C7RAL0M20JU0`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_GM0QJ7G7C7RAL0M20JU0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_GM0QJ7G7C7RAL0M20JU0`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_ORG_D2129BGM7JFP9VYFCI0A`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_D2129BGM7JFP9VYFCI0A` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_D2129BGM7JFP9VYFCI0A`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `SMTP_HOST` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SMTP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_SMTP_SERVER`
--

LOCK TABLES `M_SMTP_SERVER` WRITE;
/*!40000 ALTER TABLE `M_SMTP_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_SMTP_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_AUDIT_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USER_ID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORG_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `WS_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEVEL` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `FULL_PATH` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ACCESS_ROUTE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_USER_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_BODY` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FORM` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FILES` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_CODE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_ID` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_TEXT` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STACK_INFO` text COLLATE utf8mb4_bin DEFAULT NULL,
  `PROCESS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOG_TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USERID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `METHOD` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_AUDIT_LOG`
--

LOCK TABLES `T_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG`
--

LOCK TABLES `T_JOBS_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG_FILE`
--

LOCK TABLES `T_JOBS_AUDIT_LOG_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER`
--

DROP TABLE IF EXISTS `T_JOBS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_REGISTER` int(11) DEFAULT NULL,
  `COUNT_UPDATE` int(11) DEFAULT NULL,
  `COUNT_DELETE` int(11) DEFAULT NULL,
  `SUCCESS_REGISTER` int(11) DEFAULT NULL,
  `SUCCESS_UPDATE` int(11) DEFAULT NULL,
  `SUCCESS_DELETE` int(11) DEFAULT NULL,
  `FAILED_REGISTER` int(11) DEFAULT NULL,
  `FAILED_UPDATE` int(11) DEFAULT NULL,
  `FAILED_DELETE` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER`
--

LOCK TABLES `T_JOBS_USER` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_EXPORT` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `QUERY_STRINGS` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_EXPORT`
--

LOCK TABLES `T_JOBS_USER_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE`
--

LOCK TABLES `T_JOBS_USER_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE_EXPORT` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE_EXPORT`
--

LOCK TABLES `T_JOBS_USER_FILE_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_RESULT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_RESULT` (
  `RESULT_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`RESULT_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_RESULT`
--

LOCK TABLES `T_JOBS_USER_RESULT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PRIVATE`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ORGANIZATION_PRIVATE` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_PRIVATE`
--

LOCK TABLES `T_ORGANIZATION_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"5fd03581-4e84-4f6b-9f89-0db2f49f2b54\", \"USER_TOKEN_CLIENT_SECRET\": \"IxwzGMh096BYiHYe3jCAonkmaDa7VKQy\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"db6ec1b2-3401-449a-a512-a67ed08e1f1c\", \"INTERNAL_API_CLIENT_SECRET\": \"ZDhn1QDVdBMd5IZpLK6Lt2YQsY5NApp6\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"bb514192-449b-4128-a338-7f61600a2941\", \"TOKEN_CHECK_CLIENT_SECRET\": \"BN9vJLeBLeDiHfrOHTpXZUkn7pDcRgcR\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"d082e155-8648-4877-a8ae-60716e0b632a\"}','2024-10-07 11:25:01','unittest-user01','2024-10-07 11:25:01','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `T_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_REFRESH_TOKEN` (
  `USER_ID` varchar(40) NOT NULL,
  `SESSION_ID` varchar(40) NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE`
--

DROP TABLE IF EXISTS `T_WORKSPACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE` (
  `WORKSPACE_ID` varchar(36) NOT NULL,
  `WORKSPACE_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE`
--

LOCK TABLES `T_WORKSPACE` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:25:02','32cd561f-d83a-47d0-84ba-06226a9369f9','2024-10-07 11:25:02','32cd561f-d83a-47d0-84ba-06226a9369f9'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:25:06','32cd561f-d83a-47d0-84ba-06226a9369f9','2024-10-07 11:25:06','32cd561f-d83a-47d0-84ba-06226a9369f9'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:25:09','32cd561f-d83a-47d0-84ba-06226a9369f9','2024-10-07 11:25:09','32cd561f-d83a-47d0-84ba-06226a9369f9');
/*!40000 ALTER TABLE `T_WORKSPACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE_DB`
--

DROP TABLE IF EXISTS `T_WORKSPACE_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `WORKSPACE_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE_DB`
--

LOCK TABLES `T_WORKSPACE_DB` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE_DB` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_BT8S3JICXHG3NEC1AV7L','PF_WS_BT8S3JICXHG3NEC1AV7L','4pPBB5gCFO9HKSLMseiJT97QE7aEACnUE9vMsjQCxgbzaA+urAhn+OxIQedT2DSa','2024-10-07 11:25:02','32cd561f-d83a-47d0-84ba-06226a9369f9','2024-10-07 11:25:28','32cd561f-d83a-47d0-84ba-06226a9369f9'),('org4','ws2','unittest-platform-db',3306,'PF_WS_WCIU0JWMTPPELHJC74ZB','PF_WS_WCIU0JWMTPPELHJC74ZB','lgZbvrc/Spxzku0owpZNYQD36UxWjAPYo19794Vqbz6nU4LDs7fIN6iBYBA0JLjt','2024-10-07 11:25:06','32cd561f-d83a-47d0-84ba-06226a9369f9','2024-10-07 11:25:28','32cd561f-d83a-47d0-84ba-06226a9369f9'),('org4','ws3','unittest-platform-db',3306,'PF_WS_DTXY6AZL3YPQTMGE95RV','PF_WS_DTXY6AZL3YPQTMGE95RV','JcvPOG+OeUBk4QGFcgnW44XDwUPVmoN4VnbDYTe7LQxLhFUGomKy9D6KooFaOFxI','2024-10-07 11:25:09','32cd561f-d83a-47d0-84ba-06226a9369f9','2024-10-07 11:25:28','32cd561f-d83a-47d0-84ba-06226a9369f9');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_BT8S3JICXHG3NEC1AV7L`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_BT8S3JICXHG3NEC1AV7L` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_BT8S3JICXHG3NEC1AV7L`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_WCIU0JWMTPPELHJC74ZB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_WCIU0JWMTPPELHJC74ZB` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_WCIU0JWMTPPELHJC74ZB`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_DTXY6AZL3YPQTMGE95RV`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_DTXY6AZL3YPQTMGE95RV` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_DTXY6AZL3YPQTMGE95RV`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_ORG_9IZF0GV8DOWT304WLIQZ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_9IZF0GV8DOWT304WLIQZ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_9IZF0GV8DOWT304WLIQZ`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `SMTP_HOST` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SMTP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_SMTP_SERVER`
--

LOCK TABLES `M_SMTP_SERVER` WRITE;
/*!40000 ALTER TABLE `M_SMTP_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_SMTP_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_AUDIT_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USER_ID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ORG_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `WS_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `LEVEL` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `FULL_PATH` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ACCESS_ROUTE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_USER_HEADERS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_BODY` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FORM` text COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUEST_FILES` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STATUS_CODE` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `NAME` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_ID` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_TEXT` text COLLATE utf8mb4_bin DEFAULT NULL,
  `STACK_INFO` text COLLATE utf8mb4_bin DEFAULT NULL,
  `PROCESS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LOG_TS` datetime NOT NULL DEFAULT current_timestamp(),
  `USERID` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `METHOD` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_TS` (`TS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_AUDIT_LOG`
--

LOCK TABLES `T_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` text COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG`
--

LOCK TABLES `T_JOBS_AUDIT_LOG` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_AUDIT_LOG_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_AUDIT_LOG_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_AUDIT_LOG_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_AUDIT_LOG_FILE`
--

LOCK TABLES `T_JOBS_AUDIT_LOG_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_AUDIT_LOG_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER`
--

DROP TABLE IF EXISTS `T_JOBS_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_REGISTER` int(11) DEFAULT NULL,
  `COUNT_UPDATE` int(11) DEFAULT NULL,
  `COUNT_DELETE` int(11) DEFAULT NULL,
  `SUCCESS_REGISTER` int(11) DEFAULT NULL,
  `SUCCESS_UPDATE` int(11) DEFAULT NULL,
  `SUCCESS_DELETE` int(11) DEFAULT NULL,
  `FAILED_REGISTER` int(11) DEFAULT NULL,
  `FAILED_UPDATE` int(11) DEFAULT NULL,
  `FAILED_DELETE` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER`
--

LOCK TABLES `T_JOBS_USER` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_EXPORT` (
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_TYPE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_STATUS` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `QUERY_STRINGS` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `COUNT_EXPORT` int(11) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8mb4_bin DEFAULT NULL,
  `LANGUAGE` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_EXPORT`
--

LOCK TABLES `T_JOBS_USER_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE`
--

LOCK TABLES `T_JOBS_USER_FILE` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_FILE_EXPORT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_FILE_EXPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_FILE_EXPORT` (
  `FILE_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_FILE_EXPORT`
--

LOCK TABLES `T_JOBS_USER_FILE_EXPORT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_FILE_EXPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_JOBS_USER_RESULT`
--

DROP TABLE IF EXISTS `T_JOBS_USER_RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_JOBS_USER_RESULT` (
  `RESULT_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `JOB_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `FILE_DATA` longblob DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`RESULT_ID`),
  KEY `IDX_FUNC_ID` (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_JOBS_USER_RESULT`
--

LOCK TABLES `T_JOBS_USER_RESULT` WRITE;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_JOBS_USER_RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ORGANIZATION_PRIVATE`
--

DROP TABLE IF EXISTS `T_ORGANIZATION_PRIVATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ORGANIZATION_PRIVATE` (
  `ID` int(11) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ORGANIZATION_PRIVATE`
--

LOCK TABLES `T_ORGANIZATION_PRIVATE` WRITE;
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` DISABLE KEYS */;
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"6e8de75b-80b5-4366-953a-f95a340a5ed8\", \"USER_TOKEN_CLIENT_SECRET\": \"i1BpD1n8WVMhMikWd9sEU44s1Nw31Dar\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"b2243579-8514-4d2a-a723-7ea4e4070794\", \"INTERNAL_API_CLIENT_SECRET\": \"su3WhandRwi4QzEsZvvStANx8SETfWnC\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"8835fc68-43b9-4293-a20b-da53a4917267\", \"TOKEN_CHECK_CLIENT_SECRET\": \"6KO0Dc7NFmv5qdRFNoxOBfRAo217Ng7m\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"157645fe-1439-4fdc-8456-5357b19420f9\"}','2024-10-07 11:25:16','unittest-user01','2024-10-07 11:25:16','unittest-user01');
/*!40000 ALTER TABLE `T_ORGANIZATION_PRIVATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_REFRESH_TOKEN`
--

DROP TABLE IF EXISTS `T_REFRESH_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_REFRESH_TOKEN` (
  `USER_ID` varchar(40) NOT NULL,
  `SESSION_ID` varchar(40) NOT NULL,
  `EXPIRE_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_REFRESH_TOKEN`
--

LOCK TABLES `T_REFRESH_TOKEN` WRITE;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_REFRESH_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE`
--

DROP TABLE IF EXISTS `T_WORKSPACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE` (
  `WORKSPACE_ID` varchar(36) NOT NULL,
  `WORKSPACE_NAME` varchar(255) NOT NULL,
  `INFORMATIONS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`INFORMATIONS`)),
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE`
--

LOCK TABLES `T_WORKSPACE` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:25:17','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','2024-10-07 11:25:17','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:25:21','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','2024-10-07 11:25:21','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-10-07 11:25:25','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','2024-10-07 11:25:25','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3');
/*!40000 ALTER TABLE `T_WORKSPACE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_WORKSPACE_DB`
--

DROP TABLE IF EXISTS `T_WORKSPACE_DB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_WORKSPACE_DB` (
  `ORGANIZATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `WORKSPACE_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DB_HOST` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PORT` int(11) DEFAULT NULL,
  `DB_DATABASE` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DB_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ORGANIZATION_ID`,`WORKSPACE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_WORKSPACE_DB`
--

LOCK TABLES `T_WORKSPACE_DB` WRITE;
/*!40000 ALTER TABLE `T_WORKSPACE_DB` DISABLE KEYS */;
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_YWK3RCJEACKQR86EV9WF','PF_WS_YWK3RCJEACKQR86EV9WF','9kp/nf85pjmbECDloWMRmucNV1A+QlOylK72DlQGwjqMknskyuo5rj962oHS16eT','2024-10-07 11:25:17','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','2024-10-07 11:25:28','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('org5','ws2','unittest-platform-db',3306,'PF_WS_KQMBR7979M7MJDCUVXWL','PF_WS_KQMBR7979M7MJDCUVXWL','4i6Pa3atVK1bvqe3gy6BjSu4zh+JU6V9hM5LRL0dpTn6MJA0HLOHF8HIx7989q+W','2024-10-07 11:25:21','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','2024-10-07 11:25:28','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3'),('org5','ws3','unittest-platform-db',3306,'PF_WS_DL7M8EGVAZL45R3S27M0','PF_WS_DL7M8EGVAZL45R3S27M0','ctWB/oWZtqGCt4s0f4sEhVH8EYFfOGmJgVpg3UAR6c6+azzWMdvHeMMwXdwAdzy9','2024-10-07 11:25:25','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3','2024-10-07 11:25:28','27a9fadc-b281-4a11-b8e5-fcb5558a2fd3');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_YWK3RCJEACKQR86EV9WF`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_YWK3RCJEACKQR86EV9WF` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_YWK3RCJEACKQR86EV9WF`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_KQMBR7979M7MJDCUVXWL`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_KQMBR7979M7MJDCUVXWL` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_KQMBR7979M7MJDCUVXWL`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_DL7M8EGVAZL45R3S27M0`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_DL7M8EGVAZL45R3S27M0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_DL7M8EGVAZL45R3S27M0`;

--
-- Table structure for table `M_NOTIFICATION_DESTINATION`
--

DROP TABLE IF EXISTS `M_NOTIFICATION_DESTINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_NOTIFICATION_DESTINATION` (
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`DESTINATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `M_NOTIFICATION_DESTINATION`
--

LOCK TABLES `M_NOTIFICATION_DESTINATION` WRITE;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `M_NOTIFICATION_DESTINATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_NOTIFICATION_MESSAGE`
--

DROP TABLE IF EXISTS `T_NOTIFICATION_MESSAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_NOTIFICATION_MESSAGE` (
  `NOTIFICATION_ID` varchar(26) COLLATE utf8mb4_bin NOT NULL,
  `DESTINATION_ID` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_NAME` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_KIND` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESTINATION_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `CONDITIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FUNC_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `MESSAGE_INFORMATIONS` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_STATUS` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `NOTIFICATION_TIMESTAMP` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`),
  KEY `IDX_FUNC_ID` (`FUNC_ID`,`CREATE_TIMESTAMP`),
  KEY `IDX_CREATE_TIMESTAMP` (`CREATE_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_NOTIFICATION_MESSAGE`
--

LOCK TABLES `T_NOTIFICATION_MESSAGE` WRITE;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_NOTIFICATION_MESSAGE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 11:25:29
