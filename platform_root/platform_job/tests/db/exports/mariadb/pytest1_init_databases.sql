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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('00f752bb-4672-4c13-9daf-555a1c1caebe',1713510125029,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/ws3','{\"id\":\"0217db78-b8ad-41d6-bf04-cb03353892b1\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('047c4355-07ea-4a7a-9e4f-aaa4bd252b3d',1713510125052,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_ws3-admin','{\"id\":\"6cf94e77-9a10-4537-8e5b-e5edbda2c9f3\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('056ade5e-ea97-4e8b-8676-448873ed6c4d',1713510111622,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_ws1-admin/composites','[{\"id\":\"6d6ddcb6-ef5b-40e2-941b-07c613415001\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ffa00323-300c-4610-bda9-8897890ebb15\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('081d4732-e75f-4ae7-aadb-b8bb7ce29f64',1713510035357,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_organization-manager/composites','[{\"id\":\"71286dae-c075-486f-9c41-3ecba3f2d0e9\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"3e0c4d6c-5aad-47da-99ca-43242c661f2d\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"d7a31ab5-a650-4aab-b6f9-69d84d5eee85\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"c077cb3e-69a6-4db6-ba6b-71568168ebb8\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"60be9f7d-c9b7-4890-81e3-9187e44ac115\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"71642db3-4ca6-4f0c-81a0-b6cfca1760ac\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"58e35d46-b0ec-4058-9ffb-e3fbebbfe735\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"6b115eac-4d65-4c93-b7d2-fa5e3624f5f0\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('09c88f96-47b6-482c-bce6-6fbf4e2cc007',1713510109805,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_organization-user-role-manager/composites','[{\"id\":\"6ffdf6c3-c595-4615-8942-3f8f4202d815\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"0df2caa5-2a65-4390-bca9-5516df66e0da\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"b8419bb4-3256-46e4-9ac1-04cbb7826936\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('0a18c459-70bb-45aa-9ac0-262cb2ae621a',1713510109932,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/86260c5c-8b76-4350-b357-10bd73410ef1/role-mappings/clients/ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','[{\"id\":\"2440749c-4373-4be9-88d2-386ccafcfb5f\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('0c74eeda-b050-4641-bb7d-95baef780b68',1713510109984,'org5','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('0d374a58-0d06-4b7d-8c57-2ac9dd9a7bd1',1713510034813,'org2','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/client-secret','{\"type\":\"secret\",\"value\":\"KS84Okl9Hn0P2NYn8BLyeoFnVGskWejv\"}',NULL,'CLIENT'),('0d4525c0-d4c9-4b48-905b-e658bbae8a3d',1713510035075,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-usage','{\"id\":\"c077cb3e-69a6-4db6-ba6b-71568168ebb8\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0dd20008-f594-44a0-8f29-be12537b3b50',1713510035057,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-role-usr','{\"id\":\"d7a31ab5-a650-4aab-b6f9-69d84d5eee85\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0ef3e43c-6cb3-43ab-8d56-1d5086879b1e',1713510051361,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/ws3','{\"id\":\"d9058ed3-3794-450e-a7c2-f1ea8303640b\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0ef5d182-cb58-4276-b85d-602e2b078994',1713510037720,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_ws1-admin','{\"id\":\"daf0efcf-3231-4401-96a5-058e925c5188\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0f786569-c61c-4a6d-a0f3-791002c83f76',1713510086009,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_organization-user-role-manager','{\"id\":\"cc1496d3-bc37-4ec1-8349-0f3e84483114\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('11233251-65ed-4f05-925e-3d3a2b08598f',1713510070238,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_ws2-admin','{\"id\":\"b7450f1f-6c7a-49e2-a716-dabd6bd647ca\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('11f3ea1a-ee53-47f1-9d15-393796c73d91',1713510005623,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-role-usr','{\"id\":\"26bf4f92-94d5-4449-9bae-44f8a7b83538\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('15a45ea7-3da6-4f3d-9319-f396b96d9a79',1713510025628,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/ws3','{\"id\":\"67f7a024-17ec-4ff8-b559-7e3ed82912b7\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('174523f0-9eca-4b97-8417-b1679e6b8557',1713510094677,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_ws2-admin/composites','[{\"id\":\"513732b9-c4a8-46f7-a12c-3aba016b4439\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"597e6ba3-3a83-4ca9-9683-837d4caf13eb\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('177d2e92-c6e0-4298-9058-f91cbd1c4df7',1713510111573,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_ws1-admin','{\"id\":\"b76e5168-ef37-43ea-800e-8e5d85434b3b\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1808830d-f80d-4240-b097-0fb56963532b',1713510060865,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_organization-user-role-manager','{\"id\":\"5a7e9b58-99e8-49bf-a2e5-35fc705edb55\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('18d4d425-e2ad-417f-937f-7229c3d80840',1713510085778,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-ws-role-mt','{\"id\":\"29ee7d36-d5ec-4114-90e2-36188a52f093\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('19a58477-3f28-4876-8b6e-d6d014b30e92',1713510109552,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-usr-mt','{\"id\":\"6ffdf6c3-c595-4615-8942-3f8f4202d815\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('19d4b0f6-6df4-4c3c-b67b-0b25b6edac47',1713510109569,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-ws-role-mt','{\"id\":\"0df2caa5-2a65-4390-bca9-5516df66e0da\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1b3697da-2669-43b1-9037-8cc19b3026b2',1713510063103,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','users/e99923b9-19e7-417e-bd97-a0bd3f8aaede/role-mappings/clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','[{\"id\":\"80dbe13f-3fe7-4000-9c24-268214bde071\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('1d4d0551-7290-47e5-a879-0d9de56faf1c',1713510109372,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/24f98cd6-b2a8-4f39-af89-313b02d589f7','{\"id\":\"24f98cd6-b2a8-4f39-af89-313b02d589f7\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('1f8e721f-faa2-4b03-8925-cdbaf35d2377',1713510005190,'org1','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/355fa74c-6a60-4119-a038-c1100c2a2c91/client-secret','{\"type\":\"secret\",\"value\":\"lqZqzBlpziCswbmlluyfINICOTY5OV0M\"}',NULL,'CLIENT'),('1fb388f5-eeca-49b8-b96d-080922726664',1713510025727,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_ws3-admin/composites','[{\"id\":\"67f7a024-17ec-4ff8-b559-7e3ed82912b7\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"be2639b2-6414-4af4-98cd-ac5f3fba840b\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('213819be-778e-46f3-ba19-6d26d01ccdbb',1713510060294,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','{\"id\":\"589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2235a88d-7118-4a89-beb5-ab0260699983',1713510109023,'org5','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/client-secret','{\"type\":\"secret\",\"value\":\"GUTlwCPxvPR1vyvmlrfqQxdCxJ8TWrPz\"}',NULL,'CLIENT'),('233930e1-11d4-4633-a6f9-7eab478b4e2a',1713510060977,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_organization-user-manager/composites','[{\"id\":\"a7c7237b-655f-41d6-a280-4270e94fa312\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"18815926-a4cd-4a2c-922b-62b53c95ae53\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('236034c9-c794-487e-9cbc-8613b170d277',1713510044721,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','users/69d2a0c0-ffa2-4511-8b31-4a6353e27d93/role-mappings/clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc','[{\"id\":\"f7ebbe97-bbc7-44b2-af49-e81b01883987\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5045af65-31c3-4ec4-a36f-fc3e75e160cc\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('241af93b-9586-4aee-b2aa-42c79adf3c9e',1713510088126,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','users/ae654cb4-02e0-41b2-8684-8e25c6f90d8f/role-mappings/clients/606eedf0-fb2b-41a7-b156-8a346cc31c87','[{\"id\":\"ea67d011-9d76-4985-889d-2fa712eb8608\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"606eedf0-fb2b-41a7-b156-8a346cc31c87\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('251d5b40-2f20-4414-8fa2-9d1091889df3',1713510025653,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_ws3-admin','{\"id\":\"be2639b2-6414-4af4-98cd-ac5f3fba840b\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('284d7387-6abf-4c56-937d-bbd467678ac7',1713510085124,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e','{\"id\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('291f33db-e41d-4987-8980-9d3daebe323b',1713510085626,'org4','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/758a5b70-29fb-4db8-8b3a-56a7fa79c816/client-secret','{\"type\":\"secret\",\"value\":\"52xhGiUkiH7GPDPOpyJvx8VIabZiRwW8\"}',NULL,'CLIENT'),('29f95dc5-ea9a-4b1c-a64f-4ea7634df397',1713510011987,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_ws1-admin/composites','[{\"id\":\"16227d16-7798-4a53-bd21-63fb81018517\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"738b5641-ae45-4f5b-a375-16e1754bebbb\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('2a119923-356c-4a93-8983-7c7a526dd554',1713510012038,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','users/bdd29563-df03-42ff-bd2f-a6d81b11252d/role-mappings/clients/8df8c152-6526-4e1f-8a17-cd30bf941934','[{\"id\":\"ec4a5352-5308-40e4-a295-10557f49759f\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8df8c152-6526-4e1f-8a17-cd30bf941934\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('2ab7677d-2364-4e45-9dc3-329be3def913',1713510005822,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_organization-manager','{\"id\":\"f3808813-cd3c-4db9-b31a-e0ec787d3357\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('3026da79-5fe7-4697-a695-2bbe503acb02',1713510062990,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_ws1-admin','{\"id\":\"5e1a9a4b-7214-45fe-a543-fcd12d32cb14\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('30929978-ebe9-45ec-a2e2-3e575c3d2443',1713510109488,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-upd','{\"id\":\"55a1505c-9a9a-4096-86a9-2d0b1de7011a\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('31cdfcd4-1784-46a3-8694-f57a8a3a74a6',1713510060492,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-upd','{\"id\":\"2bb32680-c630-4dfc-a4f8-b5f4ce6bff30\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('33d2783b-b158-4e29-b5c8-c5d1dad5724b',1713510088004,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/ws1','{\"id\":\"079f4a28-7f14-4979-a11d-d32caed1939c\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('344cd0b7-fdf0-4843-84c9-24771769c678',1713510070216,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_ws2-admin','{\"id\":\"ab7858a9-e834-48eb-ae63-a5ec518c359a\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('35beb266-d5bf-4416-9b80-7fd0a362da76',1713510085794,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-ws-role-usr','{\"id\":\"e9bfd615-a87e-448d-b0ad-c7b22471535f\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('36dd0049-008b-45e5-83ca-cabf9db6c1e4',1713510005289,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934','{\"id\":\"8df8c152-6526-4e1f-8a17-cd30bf941934\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('37e1e2a6-dc33-4f1d-b892-222b4fcc1a55',1713510118372,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','users/20ffde0d-3644-4204-acb3-03236a2dcc85/role-mappings/clients/f24468e1-6d34-4675-9efc-3dff1ea030a0','[{\"id\":\"646bca56-a533-4fb8-8ced-5a9814058dfd\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f24468e1-6d34-4675-9efc-3dff1ea030a0\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('3976896f-b4dd-4014-9db9-4e4df6c9d6a4',1713510060923,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_organization-user-role-manager/composites','[{\"id\":\"a7c7237b-655f-41d6-a280-4270e94fa312\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"64c14a54-859e-4f02-994f-7c76dd4c484e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"18815926-a4cd-4a2c-922b-62b53c95ae53\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('3a233f22-9fee-4ef3-a309-658561fa56be',1713510125168,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','users/20ffde0d-3644-4204-acb3-03236a2dcc85/role-mappings/clients/f24468e1-6d34-4675-9efc-3dff1ea030a0','[{\"id\":\"5ba073b2-af55-4d66-895b-b5b12a74fbbc\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f24468e1-6d34-4675-9efc-3dff1ea030a0\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('3a8064f7-188a-406c-921b-3f49f2e8078d',1713510109519,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-role-usr','{\"id\":\"d23cdc90-6468-4e1c-8424-5b54da6f0836\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3ae1b9e3-d30f-4961-9cb2-d2e95d8f93df',1713510034768,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc','{\"id\":\"5045af65-31c3-4ec4-a36f-fc3e75e160cc\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('3c98bca4-cb91-4ff2-ada0-fb4121165ae4',1713510109504,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-own-mt','{\"id\":\"8adebc20-a873-4ba4-b578-8342f424876a\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3db266dd-8fb5-4dd8-bfcf-7d5e8fb19e73',1713510118269,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_ws2-admin','{\"id\":\"c5b5b957-ef31-4927-ab43-8ca263399fb9\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3e4fb875-33a4-4f7f-a5d9-dc29b35bd635',1713510034660,'org2','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8425a10b-0c18-454f-8e31-52f401cc4fa3/client-secret','{\"type\":\"secret\",\"value\":\"uIZBrWScSEG2WOFTQ5hwUnfvHAWthhdm\"}',NULL,'CLIENT'),('406a9219-6a05-4432-a2db-333736c3a87a',1713510060341,'org3','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/client-secret','{\"type\":\"secret\",\"value\":\"OhJccgRDkP8WS6DOLwkkVTsLcOAD8Tkb\"}',NULL,'CLIENT'),('42eb99de-3e8d-41c1-a58f-10878fce8890',1713510063059,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_ws1-admin/composites','[{\"id\":\"dc81b4b0-7763-4765-ad12-e769ff5d87bc\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"5e1a9a4b-7214-45fe-a543-fcd12d32cb14\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('4376aeec-8dbc-4a7e-9c71-f0f06dd08698',1713510109637,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_organization-manager','{\"id\":\"7efa9027-46e0-4a69-b539-a68b02ae96ad\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('4439ecf6-8101-4ea6-ad3b-b4693883c421',1713510025777,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','users/bdd29563-df03-42ff-bd2f-a6d81b11252d/role-mappings/clients/8df8c152-6526-4e1f-8a17-cd30bf941934','[{\"id\":\"960e73d8-2037-4d66-a618-8a8e1587dc38\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8df8c152-6526-4e1f-8a17-cd30bf941934\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('45c171b8-f171-4636-a85b-19caf4ce6785',1713510076585,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','users/e99923b9-19e7-417e-bd97-a0bd3f8aaede/role-mappings/clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','[{\"id\":\"87e6384c-1244-49f3-9274-213bd5268419\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('45de9ca1-dd6c-41e0-b23c-29fd42eb063f',1713510060132,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3984d86b-527c-4ea9-8a14-2503b2dec747','{\"id\":\"3984d86b-527c-4ea9-8a14-2503b2dec747\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('47752ad5-2cfd-404e-8559-c03a1467b430',1713510085987,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_organization-manager/composites','[{\"id\":\"ca2ea5b6-4de9-490f-836a-72c002dda4f6\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"32013570-978f-4b6e-96a0-63715bf993c0\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"063f6269-51d8-48bd-9a78-039206aa076a\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"f1f37072-5aee-45c1-a98d-84f67e1e7392\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"f66386d6-c42d-4971-8c85-55e02fabc9c5\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"29ee7d36-d5ec-4114-90e2-36188a52f093\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"e9bfd615-a87e-448d-b0ad-c7b22471535f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"0679c690-8816-432a-835f-b25a0fe90361\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('485cbe39-757c-4a7c-ab94-cbdc0c5a13a0',1713510085742,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-usage','{\"id\":\"f1f37072-5aee-45c1-a98d-84f67e1e7392\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('48b8879f-0007-4e97-aca0-b3d2545f33d3',1713510051386,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_ws3-admin','{\"id\":\"4f8b2567-fea0-4b4c-8253-fc86ff353cc6\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('490f05f7-d98b-4d48-ae31-ab2c3f175b1f',1713510006331,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_organization-user-manager/composites','[{\"id\":\"249304a0-8b14-4b34-8663-aba25292b27b\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"60be5ff6-e936-4035-a768-fc4e7dbc6145\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('49ce08d6-57d3-47a8-993d-eb78ebb8351d',1713510037701,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/ws1','{\"id\":\"b39a7048-e601-4843-9fd5-bc4e47e73cca\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('49dbb9af-08fd-4b77-85b0-8f3984d1d360',1713510037842,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','users/69d2a0c0-ffa2-4511-8b31-4a6353e27d93/role-mappings/clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc','[{\"id\":\"ac9c07d2-a8f7-4958-83e9-a60dabe11753\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5045af65-31c3-4ec4-a36f-fc3e75e160cc\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('4a740fa5-7e8e-4858-ade7-0e0f0283ee4e',1713510004872,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb','{\"id\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('4af5821f-34b7-4d12-a5e9-bd2be6751370',1713510109289,'org5','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/client-secret','{\"type\":\"secret\",\"value\":\"PWc0iGP3MxCWLnC1bN1Uk2mWaqiNhIAb\"}',NULL,'CLIENT'),('4eb33d8d-7a67-415b-a21a-82c1c1057576',1713510018811,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/ws2','{\"id\":\"20adb9f5-99a0-4207-b6fd-5fce229e29d2\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4ffad7c3-b7ad-4377-81b4-87e302d0e684',1713510005099,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/355fa74c-6a60-4119-a038-c1100c2a2c91','{\"id\":\"355fa74c-6a60-4119-a038-c1100c2a2c91\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('5081a172-bc98-42ff-b65c-7f6dc9065cd5',1713510085705,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-own-mt','{\"id\":\"32013570-978f-4b6e-96a0-63715bf993c0\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('537f4e69-caf8-47ab-bf8b-cac1639c33c8',1713510109140,'org5','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/37c31529-1e2b-4155-889c-7e141dfda92b/client-secret','{\"type\":\"secret\",\"value\":\"kX8qC4cmSrth6dOSABtgKuNXgOTYhJeS\"}',NULL,'CLIENT'),('546d8610-77c1-4e13-8050-03f9b030d2f1',1713510087771,'org4','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('5585fed5-bb64-4751-8d49-36a43bef07c7',1713510094630,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_ws2-admin','{\"id\":\"6dcc777d-6fec-4d76-a10b-86ad7c3cf935\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('577a8b3d-3948-4934-b014-d17f7e711b54',1713510086058,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_organization-user-role-manager/composites','[{\"id\":\"f66386d6-c42d-4971-8c85-55e02fabc9c5\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"29ee7d36-d5ec-4114-90e2-36188a52f093\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"e9bfd615-a87e-448d-b0ad-c7b22471535f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('57d1c581-9d49-46ab-aa9a-b83efd320163',1713510070192,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/ws2','{\"id\":\"e890e389-b5e9-4eb4-96a4-948c5e24611e\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5804a957-3486-41eb-a9fc-d9e2521f44d8',1713510060601,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-usr-mt','{\"id\":\"a7c7237b-655f-41d6-a280-4270e94fa312\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5906be0e-4d20-4983-98f2-2620e7b27fbd',1713510111669,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','users/20ffde0d-3644-4204-acb3-03236a2dcc85/role-mappings/clients/f24468e1-6d34-4675-9efc-3dff1ea030a0','[{\"id\":\"b76e5168-ef37-43ea-800e-8e5d85434b3b\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f24468e1-6d34-4675-9efc-3dff1ea030a0\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('5955fdc5-221f-4334-a4f5-0d9650fa3a7e',1713510109750,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_organization-manager/composites','[{\"id\":\"55a1505c-9a9a-4096-86a9-2d0b1de7011a\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"8adebc20-a873-4ba4-b578-8342f424876a\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"d23cdc90-6468-4e1c-8424-5b54da6f0836\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"e91afcfd-9056-42fc-8cc7-7dd1fc33075f\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"6ffdf6c3-c595-4615-8942-3f8f4202d815\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"0df2caa5-2a65-4390-bca9-5516df66e0da\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"b8419bb4-3256-46e4-9ac1-04cbb7826936\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"86e70d0a-edd3-495b-974f-9e73f5db5df3\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('59626f6d-3ee9-4a57-bf8a-9a21dbf786fb',1713510086080,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_organization-user-manager','{\"id\":\"f347c681-014e-4b80-8bb0-50d33c5ea7d1\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('597814c0-90c0-4da2-b330-8fba567fcf75',1713510011879,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_ws1-admin','{\"id\":\"738b5641-ae45-4f5b-a375-16e1754bebbb\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5a896abb-fb44-488a-8417-475e9b34e4fc',1713510086907,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/ae654cb4-02e0-41b2-8684-8e25c6f90d8f/role-mappings/clients/606eedf0-fb2b-41a7-b156-8a346cc31c87','[{\"id\":\"9f40c77b-2392-4d76-a1f9-71b5f65528da\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"606eedf0-fb2b-41a7-b156-8a346cc31c87\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('5b0e84c0-ff08-4c30-b4ec-ea4dd6300459',1713510035467,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_organization-user-manager','{\"id\":\"92363e91-b01b-447f-a279-44212ac41217\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('5ee015e8-a037-40e6-894e-b9510854702b',1713510006741,'org1','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('5ee83de8-c664-4eee-97ce-9e91e586d479',1713510060211,'org3','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3984d86b-527c-4ea9-8a14-2503b2dec747/client-secret','{\"type\":\"secret\",\"value\":\"oHVkrGEzALXyQZZmCww0aOlvCQ1heSRa\"}',NULL,'CLIENT'),('5f757104-99f0-49de-9111-4a7c3124f5ae',1713510035038,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-own-mt','{\"id\":\"3e0c4d6c-5aad-47da-99ca-43242c661f2d\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('62d99962-38b3-419e-a222-ba46a27faeda',1713510109093,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/37c31529-1e2b-4155-889c-7e141dfda92b','{\"id\":\"37c31529-1e2b-4155-889c-7e141dfda92b\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('659c355f-c96a-4343-a39b-229a6d4ca0ab',1713510060938,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_organization-user-manager','{\"id\":\"9f3cbe3d-9556-43eb-b92c-661fd2e3720b\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('6627cd2e-5cfb-4912-8cbe-a5f0eb5b2806',1713510085440,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87','{\"id\":\"606eedf0-fb2b-41a7-b156-8a346cc31c87\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('664bfdf6-76fc-4eec-b83c-13eaf1dc6486',1713510034948,'org2','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/eb10fd90-d139-4b9c-8747-dc7f538f9570/client-secret','{\"type\":\"secret\",\"value\":\"1JZNr2FquE4qEL0oOSJ47rgDgSSudn1a\"}',NULL,'CLIENT'),('6654ee26-3d93-4424-9208-14d9ac848800',1713510125075,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_ws3-admin','{\"id\":\"5ba073b2-af55-4d66-895b-b5b12a74fbbc\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('68bd95b8-b73e-40b7-ab22-5e8d3c83e7b8',1713510085504,'org4','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/client-secret','{\"type\":\"secret\",\"value\":\"yKoCGVNhpl8d55FnxBRYtoC2t8tHGfdP\"}',NULL,'CLIENT'),('69963880-1aff-4528-870a-41a1e7e79e74',1713510076487,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_ws3-admin','{\"id\":\"f99b5024-20cb-4566-ba80-6824c4e488f3\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6bf6fc28-b99d-4c58-81b4-de9f9776bcfd',1713510006583,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/463af8ca-4548-4a89-a961-106e86a25c48/role-mappings/clients/1992bf26-2d15-41a1-8f1b-2557fcf8374b','[{\"id\":\"da0db051-d097-402d-8d57-f02d6b84dc51\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"1992bf26-2d15-41a1-8f1b-2557fcf8374b\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('6cee715e-fcfe-485e-8674-7f9083e7d2d1',1713510035111,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-ws-role-mt','{\"id\":\"71642db3-4ca6-4f0c-81a0-b6cfca1760ac\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6ec7fb53-191a-4d47-a088-dec79b9fff09',1713510005571,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-upd','{\"id\":\"cf94c7bd-9f67-4f82-95e0-3bd573575b85\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6f24f828-8a25-4359-b482-2aee67582a6a',1713510034896,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/eb10fd90-d139-4b9c-8747-dc7f538f9570','{\"id\":\"eb10fd90-d139-4b9c-8747-dc7f538f9570\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('711499f4-fdae-48d2-8f00-5062ac5f1715',1713510070335,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','users/e99923b9-19e7-417e-bd97-a0bd3f8aaede/role-mappings/clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','[{\"id\":\"b7450f1f-6c7a-49e2-a716-dabd6bd647ca\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('726f64b7-6cf3-4996-aa35-1a815699f569',1713510035515,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_organization-user-manager/composites','[{\"id\":\"60be9f7d-c9b7-4890-81e3-9187e44ac115\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"58e35d46-b0ec-4058-9ffb-e3fbebbfe735\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('7299f0b9-8bc5-422b-aedc-4dbf3e71aea9',1713510101088,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/ws3','{\"id\":\"e8f32d23-a4b1-41b7-b7ce-5f63fcb74551\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('781be386-707a-4b59-804d-ac4bb17d4c69',1713510085725,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-role-usr','{\"id\":\"063f6269-51d8-48bd-9a78-039206aa076a\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('79af9e92-e556-473f-8a33-5a940d3247c0',1713510019030,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','users/bdd29563-df03-42ff-bd2f-a6d81b11252d/role-mappings/clients/8df8c152-6526-4e1f-8a17-cd30bf941934','[{\"id\":\"cb68ec1f-61bf-422d-a212-1ea06be6266c\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8df8c152-6526-4e1f-8a17-cd30bf941934\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('7b1ffa12-dce5-4413-bd39-fa4a47296528',1713510044615,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_ws2-admin','{\"id\":\"f7ebbe97-bbc7-44b2-af49-e81b01883987\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7b61eeef-f67f-4df0-9ebe-cd01b92cedff',1713510060638,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-ws-role-usr','{\"id\":\"18815926-a4cd-4a2c-922b-62b53c95ae53\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7c874abf-90c2-454a-bc09-aebbf5aea581',1713510035166,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-ws-mt','{\"id\":\"6b115eac-4d65-4c93-b7d2-fa5e3624f5f0\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7eed5978-aae7-4d8f-86cb-200675d44e6e',1713510125135,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_ws3-admin/composites','[{\"id\":\"0217db78-b8ad-41d6-bf04-cb03353892b1\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"6cf94e77-9a10-4537-8e5b-e5edbda2c9f3\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('826d5a1c-d7eb-4ca6-b434-6aa39eb6b736',1713510094713,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','users/ae654cb4-02e0-41b2-8684-8e25c6f90d8f/role-mappings/clients/606eedf0-fb2b-41a7-b156-8a346cc31c87','[{\"id\":\"6dcc777d-6fec-4d76-a10b-86ad7c3cf935\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"606eedf0-fb2b-41a7-b156-8a346cc31c87\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('83f9585e-a361-42c0-b59b-0a92b06700ec',1713510110484,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/20ffde0d-3644-4204-acb3-03236a2dcc85/role-mappings/clients/f24468e1-6d34-4675-9efc-3dff1ea030a0','[{\"id\":\"7efa9027-46e0-4a69-b539-a68b02ae96ad\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f24468e1-6d34-4675-9efc-3dff1ea030a0\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('85758a94-d0a7-4f4f-814d-2c6195776f24',1713510035094,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-usr-mt','{\"id\":\"60be9f7d-c9b7-4890-81e3-9187e44ac115\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('86b138d3-dfa0-4a94-a511-82a39590bbce',1713510076505,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_ws3-admin','{\"id\":\"87e6384c-1244-49f3-9274-213bd5268419\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('877e8cce-919f-4712-8bd3-4c5ec525d997',1713510006221,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_organization-user-manager','{\"id\":\"588f4bc1-eac7-4c9a-aa08-32de039b8ad1\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('89736030-1df4-4789-acb9-a730b76590d1',1713510034318,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320','{\"id\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('89a95f3a-00bc-45fe-83c7-4b76d51e49d5',1713510086122,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_organization-user-manager/composites','[{\"id\":\"f66386d6-c42d-4971-8c85-55e02fabc9c5\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}},{\"id\":\"e9bfd615-a87e-448d-b0ad-c7b22471535f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('89d855fb-2836-405e-b467-37dc8b6a6667',1713510007325,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/bdd29563-df03-42ff-bd2f-a6d81b11252d','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('8bde3ef9-04b2-4502-9cf9-f9fb554b895b',1713510006172,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_organization-user-role-manager/composites','[{\"id\":\"249304a0-8b14-4b34-8663-aba25292b27b\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"79e4d880-058a-48aa-8623-f24208dc693e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"60be5ff6-e936-4035-a768-fc4e7dbc6145\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('8ca8c4ea-4610-4793-bf09-cb5f5152fc4d',1713510060525,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-role-usr','{\"id\":\"5b2ff679-1153-402f-b431-068340354a5d\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8e8c3002-573a-4e3e-9805-50e25f21ee1e',1713510036251,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/69d2a0c0-ffa2-4511-8b31-4a6353e27d93','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('91062375-47c8-4112-b71f-33f019b392db',1713510088020,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_ws1-admin','{\"id\":\"7025d5e8-e1c5-4742-ad11-109143e671dc\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('933391f3-6e7e-401e-82b8-fe9aecc407df',1713510085177,'org4','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/client-secret','{\"type\":\"secret\",\"value\":\"fXzxbYF4OxTIUvFQRqcBLvrRrbBg0k2L\"}',NULL,'CLIENT'),('949bd95f-79c4-4013-ad88-62cfd00da33b',1713510059918,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267','{\"id\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('96935261-0ae3-496e-ac57-316b695a6b3c',1713510034579,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8425a10b-0c18-454f-8e31-52f401cc4fa3','{\"id\":\"8425a10b-0c18-454f-8e31-52f401cc4fa3\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('997db55b-63cb-4248-b17b-0c88c30428f0',1713510109226,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0','{\"id\":\"f24468e1-6d34-4675-9efc-3dff1ea030a0\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('998ea77e-3a99-4dde-b6d7-270bda6592c0',1713510061103,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/e284f343-b718-4969-a25e-4ab595d3654c/role-mappings/clients/df3e6358-9c76-4839-9284-5cbcfa574ffa','[{\"id\":\"b85f2a9c-c106-42c2-832c-4397cae37c4b\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"df3e6358-9c76-4839-9284-5cbcfa574ffa\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('9b65e565-d342-4687-8d11-55f356ab9bc3',1713510076551,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_ws3-admin/composites','[{\"id\":\"4f4a8e36-50b3-488e-bc4e-3953eaeacf11\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"f99b5024-20cb-4566-ba80-6824c4e488f3\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('9ca4ae0a-3352-4809-bb76-ba3d67a97f97',1713510061732,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/e99923b9-19e7-417e-bd97-a0bd3f8aaede','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('9cac8f30-4326-48c3-92df-cf4267d83f7d',1713510086816,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/ae654cb4-02e0-41b2-8684-8e25c6f90d8f','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('a0ea9974-a82a-467d-a30d-730420b3872f',1713510061829,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/e99923b9-19e7-417e-bd97-a0bd3f8aaede/role-mappings/clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','[{\"id\":\"b91323b9-87c4-4e27-a06f-9341efbe94f6\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('a1da0daf-5b84-4196-8ab1-21cde91bf689',1713510051412,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_ws3-admin','{\"id\":\"c60adee9-f703-47ef-a276-ca632a8706c7\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a2e5cdfa-5df8-4959-a3f7-e0093befb59a',1713510005652,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-usage','{\"id\":\"6fa98382-5578-4e74-81f3-f01153892bb9\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a31af71c-e39d-4f6c-b051-2e1de173a885',1713510062955,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/ws1','{\"id\":\"dc81b4b0-7763-4765-ad12-e769ff5d87bc\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a35f9e34-2bf4-4846-a251-1c87331922b8',1713510101109,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_ws3-admin','{\"id\":\"9b1ff150-c639-431b-9d86-52331ef5bac1\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a3b3f265-7869-43a1-9f23-366f3ab3225f',1713510062732,'org3','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('a51b4aec-aab4-4bd7-8a59-a1ed9333a445',1713510035385,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_organization-user-role-manager','{\"id\":\"ca2346e1-4d22-4df7-8689-15b535c9b94d\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('a5f03a7b-33c5-4d63-9092-45e9f9984e8b',1713510005429,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/304c3eb1-05ff-4f53-82ce-85ea09021445','{\"id\":\"304c3eb1-05ff-4f53-82ce-85ea09021445\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('a677df8c-b4cd-4abf-98a4-cf7516e15a17',1713510109535,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-usage','{\"id\":\"e91afcfd-9056-42fc-8cc7-7dd1fc33075f\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a6890c37-b42b-4245-90d9-183401794500',1713510111554,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_ws1-admin','{\"id\":\"ffa00323-300c-4610-bda9-8897890ebb15\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a68ac37a-06f6-4973-837f-ada61a4822a7',1713510025673,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_ws3-admin','{\"id\":\"960e73d8-2037-4d66-a618-8a8e1587dc38\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a73868a4-3cc4-49cb-9d7c-9c8d40a88546',1713510101132,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_ws3-admin','{\"id\":\"76c81524-4e6a-4cf7-a291-71dbbbac7a5f\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a81c8fca-1618-4e7c-ade2-e33eb0a987e5',1713510006096,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_organization-user-role-manager','{\"id\":\"345559e8-e19a-4256-b1cf-9d3409247e8b\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('a9144d7e-7930-48a1-80c2-7933c9d2af2f',1713510060436,'org3','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/24ed2917-fc28-4497-a58d-ff301d928753/client-secret','{\"type\":\"secret\",\"value\":\"pBf7OqhrS66FG6wMUdyxfcYcboCVteYY\"}',NULL,'CLIENT'),('a94a2e43-72ca-430f-bea9-b8d8d0a54ba1',1713510094611,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_ws2-admin','{\"id\":\"597e6ba3-3a83-4ca9-9683-837d4caf13eb\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ab075937-e1af-48f9-afda-43db2334624a',1713510109602,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-ws-mt','{\"id\":\"86e70d0a-edd3-495b-974f-9e73f5db5df3\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ab256253-ba2d-4ac8-89eb-01141b8de650',1713510060400,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/24ed2917-fc28-4497-a58d-ff301d928753','{\"id\":\"24ed2917-fc28-4497-a58d-ff301d928753\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('b3ec078d-946b-43dc-a39c-975bc259aec2',1713510085685,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-upd','{\"id\":\"ca2ea5b6-4de9-490f-836a-72c002dda4f6\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b462572e-781e-4f22-955c-dec5817ec8d9',1713510018877,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_ws2-admin','{\"id\":\"cb68ec1f-61bf-422d-a212-1ea06be6266c\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b71d04c8-e762-49e8-9f61-d6aa594801f6',1713510044679,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_ws2-admin/composites','[{\"id\":\"cffdce9d-afaa-4386-9722-fc82ce7437bd\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"dc0b98c3-93cd-4f6b-b886-bdb21c62cdd1\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b731de22-173a-464b-8600-c7803f72b21e',1713510037375,'org2','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('b7670008-4f53-4762-89e3-99723c753cfe',1713510076462,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/ws3','{\"id\":\"4f4a8e36-50b3-488e-bc4e-3953eaeacf11\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b7b8f0e7-bc43-420f-98cc-9286c3ed3ab8',1713510101206,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','users/ae654cb4-02e0-41b2-8684-8e25c6f90d8f/role-mappings/clients/606eedf0-fb2b-41a7-b156-8a346cc31c87','[{\"id\":\"76c81524-4e6a-4cf7-a291-71dbbbac7a5f\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"606eedf0-fb2b-41a7-b156-8a346cc31c87\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b812f82a-359c-4eaa-95a6-edbf7b5febcc',1713510035738,'org2','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('b8253009-bc50-4271-a3b0-a625ce470e91',1713510051470,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_ws3-admin/composites','[{\"id\":\"d9058ed3-3794-450e-a7c2-f1ea8303640b\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"4f8b2567-fea0-4b4c-8253-fc86ff353cc6\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b84a8810-9904-4a92-a544-444e736b3999',1713510085759,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-usr-mt','{\"id\":\"f66386d6-c42d-4971-8c85-55e02fabc9c5\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b9482c55-b023-41e9-a831-0c9eaa90c0fe',1713510060620,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-ws-role-mt','{\"id\":\"64c14a54-859e-4f02-994f-7c76dd4c484e\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bc947a6e-5379-44f3-869c-906ce5ca8833',1713510085339,'org4','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f23775bb-1054-41c4-9926-0433968d09f5/client-secret','{\"type\":\"secret\",\"value\":\"mekVRCjwIpmN5rog9mSnBZtSDTNPuMZ3\"}',NULL,'CLIENT'),('bd8cc380-7a9f-4511-8317-47f31cc066f5',1713510035660,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/44ab40a5-737c-439c-9671-a2d86765204e/role-mappings/clients/1575d963-79a7-4bda-b45e-59a9e311f4f7','[{\"id\":\"72014a1c-e652-462e-8189-563b85521ad2\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"1575d963-79a7-4bda-b45e-59a9e311f4f7\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('bf939401-1f2c-4714-840a-c2c568f69b3f',1713510109850,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_organization-user-manager/composites','[{\"id\":\"6ffdf6c3-c595-4615-8942-3f8f4202d815\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}},{\"id\":\"b8419bb4-3256-46e4-9ac1-04cbb7826936\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('c2bc43c4-d547-4b48-bf8a-4ec813dfafe5',1713510118290,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_ws2-admin','{\"id\":\"646bca56-a533-4fb8-8ced-5a9814058dfd\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c361cfaf-5013-4358-a4c4-7038f8750810',1713510005485,'org1','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/304c3eb1-05ff-4f53-82ce-85ea09021445/client-secret','{\"type\":\"secret\",\"value\":\"jfg1WIt4LT9x7SxbauZA8zzfJ2rU2rnD\"}',NULL,'CLIENT'),('c6d48aa1-bbf6-4944-bca2-080a5bbee52b',1713510044590,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_ws2-admin','{\"id\":\"dc0b98c3-93cd-4f6b-b886-bdb21c62cdd1\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c7786d2c-fe65-4159-b744-615df3b84696',1713510061179,'org3','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('c87ecfe1-cfce-435d-8fee-86c8f5a2a37e',1713510051507,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','users/69d2a0c0-ffa2-4511-8b31-4a6353e27d93/role-mappings/clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc','[{\"id\":\"c60adee9-f703-47ef-a276-ca632a8706c7\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5045af65-31c3-4ec4-a36f-fc3e75e160cc\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('c894a3e0-2fd4-4365-8687-78bc0a7645f6',1713510034420,'org2','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/client-secret','{\"type\":\"secret\",\"value\":\"WooBjjKuuScmqLmoYeVCuCxGgdabyMX6\"}',NULL,'CLIENT'),('cb636ca0-0b29-4436-b96d-4bd7876cf4a9',1713510063013,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_ws1-admin','{\"id\":\"80dbe13f-3fe7-4000-9c24-268214bde071\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cba28d41-c684-495c-92d4-0d038ce5c46a',1713510111286,'org5','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('cc65611c-af51-4daa-b376-ddaf705bcd7c',1713510035443,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_organization-user-role-manager/composites','[{\"id\":\"60be9f7d-c9b7-4890-81e3-9187e44ac115\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"71642db3-4ca6-4f0c-81a0-b6cfca1760ac\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}},{\"id\":\"58e35d46-b0ec-4058-9ffb-e3fbebbfe735\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('cc70e03d-9f26-4692-a221-6bdeff92e2d6',1713510085845,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_organization-manager','{\"id\":\"9f40c77b-2392-4d76-a1f9-71b5f65528da\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ccdb7de9-1de8-4eb0-9cb9-d96f80943b1e',1713510070290,'org3','CREATE','org3','1c184606-8ae2-4680-a1a1-7c84b476e267','e284f343-b718-4969-a25e-4ab595d3654c','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_ws2-admin/composites','[{\"id\":\"e890e389-b5e9-4eb4-96a4-948c5e24611e\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ab7858a9-e834-48eb-ae63-a5ec518c359a\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('ce1654da-4893-4a5b-ad2d-ac80b65b5a54',1713510005352,'org1','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/client-secret','{\"type\":\"secret\",\"value\":\"PDZQQ9fWZzVzXQr9ThKyUAjSqh5gizJ0\"}',NULL,'CLIENT'),('ce7420d8-7011-4bba-8713-d445aa25b0eb',1713510018849,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_ws2-admin','{\"id\":\"ee50e4c1-2eed-47a2-b055-e44ff7ffe383\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cfa9d3a1-67a6-4681-89bb-630857e73ec2',1713510018961,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_ws2-admin/composites','[{\"id\":\"20adb9f5-99a0-4207-b6fd-5fce229e29d2\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ee50e4c1-2eed-47a2-b055-e44ff7ffe383\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('cfe90a76-b16d-4dff-945e-91f493983679',1713510005720,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-ws-role-mt','{\"id\":\"79e4d880-058a-48aa-8623-f24208dc693e\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d04de9cd-61b6-457a-9aec-dfe80a14cf29',1713510036355,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/69d2a0c0-ffa2-4511-8b31-4a6353e27d93/role-mappings/clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc','[{\"id\":\"cabefbfb-5c53-4697-a0aa-b5f0c6161a75\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5045af65-31c3-4ec4-a36f-fc3e75e160cc\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('d1761ea7-d310-4ac3-a23a-4c464c278cd2',1713510085289,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f23775bb-1054-41c4-9926-0433968d09f5','{\"id\":\"f23775bb-1054-41c4-9926-0433968d09f5\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('d28b11d4-5741-4afb-902a-a871554eb45d',1713510088092,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_ws1-admin/composites','[{\"id\":\"079f4a28-7f14-4979-a11d-d32caed1939c\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"7025d5e8-e1c5-4742-ad11-109143e671dc\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('d4b9b578-31e1-4ce7-a3f3-bb4ed00d311e',1713510005678,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-usr-mt','{\"id\":\"249304a0-8b14-4b34-8663-aba25292b27b\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d5b5f0a2-c1f0-484a-9a47-afb03f9943a2',1713510109423,'org5','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/24f98cd6-b2a8-4f39-af89-313b02d589f7/client-secret','{\"type\":\"secret\",\"value\":\"F25RLPZgOk7orxS9gwtw5hFkkLd3TWW2\"}',NULL,'CLIENT'),('d9372ebc-6e68-4b6a-9489-cbf0c7cc536c',1713510118340,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_ws2-admin/composites','[{\"id\":\"42d7a016-4447-416c-b3ea-5cd862bbb9cb\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"c5b5b957-ef31-4927-ab43-8ca263399fb9\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('daecf2c6-2749-4362-a236-51cf238b85c5',1713510060508,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-own-mt','{\"id\":\"8427bbdd-801a-423a-9764-fd22486c0be6\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('dc3bc1d5-e3ea-49cb-a2e4-4af5b9bcc7ec',1713510060849,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_organization-manager/composites','[{\"id\":\"2bb32680-c630-4dfc-a4f8-b5f4ce6bff30\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"8427bbdd-801a-423a-9764-fd22486c0be6\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"5b2ff679-1153-402f-b431-068340354a5d\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"31324297-323a-4f94-b85d-70989702f178\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"a7c7237b-655f-41d6-a280-4270e94fa312\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"64c14a54-859e-4f02-994f-7c76dd4c484e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"18815926-a4cd-4a2c-922b-62b53c95ae53\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}},{\"id\":\"eedbb161-ce90-448b-8060-36e2af0e0276\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1c184606-8ae2-4680-a1a1-7c84b476e267\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('ddfc4c66-8ac3-4ede-bba9-f480232ec9fc',1713510094588,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/ws2','{\"id\":\"513732b9-c4a8-46f7-a12c-3aba016b4439\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ddff83b6-1e4f-4b08-9afe-32a4b2c5da90',1713510118238,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/ws2','{\"id\":\"42d7a016-4447-416c-b3ea-5cd862bbb9cb\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('de9e4792-34ca-467e-b866-67969f2d7548',1713510005598,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-own-mt','{\"id\":\"015e0962-da78-426c-8548-6774ea4095f5\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('dec3b913-b6f2-473b-9bf2-f9838902c3d2',1713510111534,'org5','CREATE','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','86260c5c-8b76-4350-b357-10bd73410ef1','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/ws1','{\"id\":\"6d6ddcb6-ef5b-40e2-941b-07c613415001\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e0003be8-eda2-464e-8541-0dd9f512e4fb',1713510005742,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-ws-role-usr','{\"id\":\"60be5ff6-e936-4035-a768-fc4e7dbc6145\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e093ed67-13c0-4160-b601-12f5ea693493',1713510109766,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_organization-user-role-manager','{\"id\":\"2c48f16d-3cc0-44a3-8006-f719771d6790\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e0a11f7f-8cc6-4311-9dbd-12d4203be505',1713510108974,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','{\"id\":\"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('e0c53dcd-2af4-480b-afa3-2e5dd84e3953',1713510037806,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_ws1-admin/composites','[{\"id\":\"b39a7048-e601-4843-9fd5-bc4e47e73cca\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"daf0efcf-3231-4401-96a5-058e925c5188\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"81ee8f29-012c-49e5-a7f9-bf6080d53320\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('e11ac752-4c32-4ee6-bd23-ca9fef5885ce',1713510035139,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-ws-role-usr','{\"id\":\"58e35d46-b0ec-4058-9ffb-e3fbebbfe735\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e2b2178c-bd69-4563-988c-7eed07453a8e',1713510086345,'org4','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('e4885dc6-bcd7-4034-ae97-0f83b18f46ee',1713510035206,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_organization-manager','{\"id\":\"cabefbfb-5c53-4697-a0aa-b5f0c6161a75\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e607a735-d748-4dbe-94fb-488344f0ef63',1713510006047,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_organization-manager/composites','[{\"id\":\"cf94c7bd-9f67-4f82-95e0-3bd573575b85\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"015e0962-da78-426c-8548-6774ea4095f5\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"26bf4f92-94d5-4449-9bae-44f8a7b83538\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"6fa98382-5578-4e74-81f3-f01153892bb9\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"249304a0-8b14-4b34-8663-aba25292b27b\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"79e4d880-058a-48aa-8623-f24208dc693e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"60be5ff6-e936-4035-a768-fc4e7dbc6145\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}},{\"id\":\"494bbc47-753c-422d-b0db-389082387806\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"34098bc0-970f-4e77-a7a7-cb7b504847bb\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('e609b800-b1d6-4711-b8d4-55ed3386bc75',1713510035018,'org2','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/_og-upd','{\"id\":\"71286dae-c075-486f-9c41-3ecba3f2d0e9\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e6753c6c-775e-4870-a2ec-830aa90acc02',1713510060010,'org3','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/client-secret','{\"type\":\"secret\",\"value\":\"cH4EB3mSYxIlkzwxGXPgqrFZH40HUaN6\"}',NULL,'CLIENT'),('e6923ecb-d89c-47e2-9199-90c120e8e016',1713510011433,'org1','UPDATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('e6fd02b8-a846-48da-bc55-7b4412dedebe',1713510109820,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/f24468e1-6d34-4675-9efc-3dff1ea030a0/roles/_organization-user-manager','{\"id\":\"bf9ddb09-3405-4d1a-bc92-8d430c46fc9e\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e731e1f8-f8bc-42a2-b3df-e2aa6d4a0b13',1713510005765,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/_og-ws-mt','{\"id\":\"494bbc47-753c-422d-b0db-389082387806\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e82b4c9d-3694-44c4-b385-ccb04c7b26bc',1713510109584,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5/roles/_og-ws-role-usr','{\"id\":\"b8419bb4-3256-46e4-9ac1-04cbb7826936\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ebf27b7c-ae24-4d70-a594-bb6f4c88d7a3',1713510101175,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_ws3-admin/composites','[{\"id\":\"e8f32d23-a4b1-41b7-b7ce-5f63fcb74551\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"9b1ff150-c639-431b-9d86-52331ef5bac1\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3214c83b-b319-46db-83e0-a3afa51f5a5e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('ebf83854-f71b-4e65-a40c-6e553bb3a488',1713510088045,'org4','CREATE','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13','172.20.0.5','clients/606eedf0-fb2b-41a7-b156-8a346cc31c87/roles/_ws1-admin','{\"id\":\"ea67d011-9d76-4985-889d-2fa712eb8608\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ed0a097c-1b5c-4e8d-95f1-2a06ddc92c20',1713510085579,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/758a5b70-29fb-4db8-8b3a-56a7fa79c816','{\"id\":\"758a5b70-29fb-4db8-8b3a-56a7fa79c816\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('ef7cbbd5-12db-436a-9eed-ec951e017d27',1713510011846,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/roles/ws1','{\"id\":\"16227d16-7798-4a53-bd21-63fb81018517\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f27c6838-bc88-4462-a451-945f18d566e0',1713510011909,'org1','CREATE','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb','463af8ca-4548-4a89-a961-106e86a25c48','172.20.0.5','clients/8df8c152-6526-4e1f-8a17-cd30bf941934/roles/_ws1-admin','{\"id\":\"ec4a5352-5308-40e4-a295-10557f49759f\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f534903a-2cd1-46e2-9486-f7b5d5a83636',1713510060558,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-usage','{\"id\":\"31324297-323a-4f94-b85d-70989702f178\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f583e6e2-94ab-413b-a1e2-a5cfe22730b6',1713510060708,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0/roles/_organization-manager','{\"id\":\"b91323b9-87c4-4e27-a06f-9341efbe94f6\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('f6d26a20-40ef-4168-a729-9b318d7e75d4',1713510060658,'org3','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/1c184606-8ae2-4680-a1a1-7c84b476e267/roles/_og-ws-mt','{\"id\":\"eedbb161-ce90-448b-8060-36e2af0e0276\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f86b5941-78b3-45d6-b40a-97a66f4c8af1',1713510044566,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/81ee8f29-012c-49e5-a7f9-bf6080d53320/roles/ws2','{\"id\":\"cffdce9d-afaa-4386-9722-fc82ce7437bd\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f9f6321b-d367-4fea-9258-aebf3bfca605',1713510085811,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/3214c83b-b319-46db-83e0-a3afa51f5a5e/roles/_og-ws-mt','{\"id\":\"0679c690-8816-432a-835f-b25a0fe90361\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fba42156-5d19-4d90-a0f1-15c54c8f128b',1713510007479,'org1','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/bdd29563-df03-42ff-bd2f-a6d81b11252d/role-mappings/clients/8df8c152-6526-4e1f-8a17-cd30bf941934','[{\"id\":\"f3808813-cd3c-4db9-b31a-e0ec787d3357\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8df8c152-6526-4e1f-8a17-cd30bf941934\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fc405c6d-c677-47d6-bb6e-0f28076d433d',1713510086279,'org4','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13/role-mappings/clients/bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','[{\"id\":\"373b711f-2169-4c5f-9491-cde0d816297e\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('fdc4e2af-cf7b-48f0-9fa5-99dff09e7129',1713510110395,'org5','CREATE','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','users/20ffde0d-3644-4204-acb3-03236a2dcc85','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('fe51d706-8ca5-4ddd-a2cb-7e0cdcf61597',1713510037741,'org2','CREATE','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320','44ab40a5-737c-439c-9671-a2d86765204e','172.20.0.5','clients/5045af65-31c3-4ec4-a36f-fc3e75e160cc/roles/_ws1-admin','{\"id\":\"ac9c07d2-a8f7-4958-83e9-a60dabe11753\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('fee0f132-0dce-465a-af0b-a2e42eaf5f1a',1713510004972,'org1','ACTION','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5201f3dc-03da-4378-bbca-43dbcb169951','6b690765-50eb-49a2-84cd-415784e75d4d','172.20.0.5','clients/34098bc0-970f-4e77-a7a7-cb7b504847bb/client-secret','{\"type\":\"secret\",\"value\":\"6yeDnRG3J8F6o83mqbtBOvxYGomZEE35\"}',NULL,'CLIENT');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('00379f94-d699-4ee8-81dc-3d093aafdf5a',NULL,'auth-username-password-form','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9a536aee-fcfd-4127-add3-911370786fea',0,10,0,NULL,NULL),('028604d4-2337-4dd4-8291-ef4dca76b24e',NULL,'direct-grant-validate-username','org4','c39ba465-29f5-4672-9091-c779bf0dc6b0',0,10,0,NULL,NULL),('02daf364-03f2-400d-84f3-c611edde9301',NULL,'idp-review-profile','org4','34560b9a-6c52-49c8-bbb4-72ffa7efb3e0',0,10,0,NULL,'5394db7e-751a-4b94-a28c-8183bce5948c'),('04e97e79-7d8a-4b12-b213-0b6109892b97',NULL,'reset-credential-email','org2','c5285a80-6c39-4f3a-a65e-0f93bbbe1221',0,20,0,NULL,NULL),('053f1522-262e-44ac-be66-ceb9a4c3a48b',NULL,'idp-create-user-if-unique','org4','18bad01b-dac9-44cd-855d-5b929752d18d',2,10,0,NULL,'1f381e4e-752f-4b91-a790-c22865b74496'),('05b0c094-0f20-4e56-8db6-0e75b13f1abb',NULL,'registration-password-action','org2','77dd6f20-17ac-4475-bd02-102366d8044a',0,50,0,NULL,NULL),('05c46c56-cfea-44c9-93b8-25ee75d0ad8f',NULL,'direct-grant-validate-password','org3','696d5711-7e80-444a-a4aa-b261f4b131f0',0,20,0,NULL,NULL),('06686b88-5b7d-4b2a-a64a-f6a4554c6976',NULL,'http-basic-authenticator','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','427e39e0-1b2c-4ea9-97cb-dd8a9327ee0e',0,10,0,NULL,NULL),('0b9e8f4b-1845-441c-af40-89aab9572da0',NULL,'conditional-user-configured','org4','1453de98-70f4-4c75-a65e-c9a5c96579dc',0,10,0,NULL,NULL),('0bf89027-b283-459f-abae-6542a1d3e480',NULL,'idp-username-password-form','org4','995fcc94-f04c-451f-8378-f4199fddbd99',0,10,0,NULL,NULL),('0c7dacb8-80c1-4831-9901-6d32f2cb32b8',NULL,'auth-otp-form','org3','424585c7-bdb5-4a39-bbde-95b613518ceb',0,20,0,NULL,NULL),('0c8292cc-ca71-429a-8103-c016e8f4121a',NULL,NULL,'org4','d075e412-1b94-4c3a-99ff-d62dec56319b',0,20,1,'9b286486-0ab8-4246-ba8d-fb20e689fe59',NULL),('0e062ccc-0313-472a-8b82-74d4e4178427',NULL,'reset-credentials-choose-user','org2','c5285a80-6c39-4f3a-a65e-0f93bbbe1221',0,10,0,NULL,NULL),('0edcd573-9b3f-42c0-86cb-518528f84fb5',NULL,'conditional-user-configured','org2','5e2bfad3-6dc9-4e22-a50e-d2d5d0cc5787',0,10,0,NULL,NULL),('0f1a0d07-6275-4965-bc23-3eac9444ea96',NULL,NULL,'org4','96fb3380-69fb-48ba-be70-b4d757bf4aef',2,30,1,'d20e8fb8-038d-4cb3-826b-c20bc801cf58',NULL),('10dd1443-c3e3-4d8a-8b1d-2750978cdb0c',NULL,'conditional-user-configured','org2','55764136-32ef-4106-954f-ce4f40545702',0,10,0,NULL,NULL),('1129b2a8-40f1-45cc-84ec-eb5996015422',NULL,'registration-user-creation','org5','15f47e51-f01f-4236-86cf-065a34d11ee4',0,20,0,NULL,NULL),('12592a96-0a14-4f93-b782-905b3b32cd0c',NULL,'client-jwt','org1','363a15a0-ae62-40d8-a7fb-281f1ff539b4',2,20,0,NULL,NULL),('13eb3ef2-0205-460b-bdb7-66688f1f0d17',NULL,NULL,'org5','c0a07f98-2994-4f05-bfc9-ea880b7c13f4',0,20,1,'619b3e2a-ca77-43ff-a1ca-68678129d81e',NULL),('13f0269b-162c-4555-9f39-43b41dd0f80c',NULL,'idp-username-password-form','org1','aacec1cd-a1de-4578-b0c0-a28a1c45e840',0,10,0,NULL,NULL),('15a1eeed-d59f-449d-b699-1f70b4fd8855',NULL,'conditional-user-configured','org5','3969ca88-4370-4415-b77e-e6c8299c3fc9',0,10,0,NULL,NULL),('16194431-0ed6-4d0a-b108-a0854a188287',NULL,NULL,'org2','664e7f9b-94b5-476f-a3a7-d4d557ac2fc6',2,20,1,'060ac2dc-94a7-446e-8360-01a62ffde035',NULL),('167d1b42-f204-47d8-b03d-ab5a10280f35',NULL,NULL,'org5','8a89dbec-3239-4c6a-9641-2b3e5a921f05',0,20,1,'d00cb6e3-2b2b-47c5-8976-2cb7788a6d9d',NULL),('17e9beb3-7ef6-4d6e-a74e-e647fb1d00e0',NULL,NULL,'org1','aacec1cd-a1de-4578-b0c0-a28a1c45e840',1,20,1,'5a5ef44e-5a49-434b-907c-77501f4a24d0',NULL),('18b710e9-f281-4dbb-8ce3-adc4e5758b6e',NULL,'conditional-user-configured','org1','f8b5ff86-d5b8-4b86-8691-5f229af4e19d',0,10,0,NULL,NULL),('19e0332a-e410-4cff-85a9-82f7b2159ac2',NULL,'direct-grant-validate-password','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','dd700a04-17f8-4306-af86-b85a87c51bbd',0,20,0,NULL,NULL),('1a0db78e-39db-436c-b0d4-a49d44acc998',NULL,'registration-password-action','org4','ec4e28fb-dfe3-40e3-a042-d243a06e2758',0,50,0,NULL,NULL),('1aa3e8dd-aa41-412c-a3cb-83afecd3ccdf',NULL,'registration-terms-and-conditions','org2','77dd6f20-17ac-4475-bd02-102366d8044a',3,70,0,NULL,NULL),('1ad31b34-5011-468d-8666-f62d89296442',NULL,NULL,'org1','31466e69-5902-40df-b7e4-721d6b060082',1,40,1,'aeae2679-3acb-46e1-a6e8-ca5eda010c30',NULL),('1c2349c5-8e4f-4582-966e-fb5cabfbd939',NULL,NULL,'org2','060ac2dc-94a7-446e-8360-01a62ffde035',1,20,1,'55764136-32ef-4106-954f-ce4f40545702',NULL),('1d47f26f-767b-4cae-ac39-15b129af3722',NULL,'direct-grant-validate-password','org4','c39ba465-29f5-4672-9091-c779bf0dc6b0',0,20,0,NULL,NULL),('1d4dba0c-e275-42d8-8dad-3d92d35dd688',NULL,'auth-otp-form','org4','d055ca42-b9b0-4de7-b3b5-c174c186ff7d',0,20,0,NULL,NULL),('1dc76cd1-7748-4a1b-86eb-181e54e73e6c',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','8e455877-21b2-4730-b560-172b9baba4ba',1,40,1,'40a53d46-4788-4505-9774-9fdf1eef92fb',NULL),('1dfd85af-c2c4-4051-8f0b-fafbc861e827',NULL,'client-x509','org3','15042d28-5e90-4fbb-9439-d4e667582b41',2,40,0,NULL,NULL),('1e147d75-0c6e-4643-8400-988ff63ce9a4',NULL,NULL,'org3','ef854909-3050-4048-b816-a850dcc9f513',0,20,1,'a60c27cd-287e-48ba-a954-b9a89d4d7f03',NULL),('1fe9f872-c49d-4bd8-8cbe-8ff9de4f89d6',NULL,NULL,'org5','94093a30-5091-48ae-b151-c024197ba27c',1,40,1,'0a45de4f-22b3-4d0d-b6a7-5ba32c3d6b5d',NULL),('216e1259-1797-4753-a025-7bf0f3f86fc7',NULL,'registration-user-creation','org2','77dd6f20-17ac-4475-bd02-102366d8044a',0,20,0,NULL,NULL),('219137e4-dd23-4832-b794-116cc8c81897',NULL,NULL,'org2','3c910c54-3d76-49c7-9623-bf610b3d9c1e',0,20,1,'664e7f9b-94b5-476f-a3a7-d4d557ac2fc6',NULL),('226f4956-ec84-476a-b512-dc5ab78e61d8',NULL,'registration-terms-and-conditions','org3','1a714c1f-ad36-40c5-9226-e2d9a1cffc8c',3,70,0,NULL,NULL),('2392d5ae-ff14-4c14-9ec1-24751f76226f',NULL,'client-secret','org4','f132fbe3-1acd-4cd1-a4f9-996a542ef752',2,10,0,NULL,NULL),('250c66f3-48c8-49cb-80b6-15645b4a74f7',NULL,'registration-recaptcha-action','org1','9f1170e1-63d1-47e2-83f5-0d8e700d7c41',3,60,0,NULL,NULL),('255ca8a3-531b-4b4e-ada1-1e35de258768',NULL,'conditional-user-configured','org3','424585c7-bdb5-4a39-bbde-95b613518ceb',0,10,0,NULL,NULL),('25b91266-ddfa-45cb-ac39-ebbb65281f36',NULL,'reset-otp','org4','1453de98-70f4-4c75-a65e-c9a5c96579dc',0,20,0,NULL,NULL),('26dd0853-17ed-4d0a-a1a8-4a3f397abd4f',NULL,'auth-username-password-form','org2','96b386e3-9048-4195-8859-4ce878faf1f0',0,10,0,NULL,NULL),('289177a3-659e-47dd-b938-188d02fc6223',NULL,'conditional-user-configured','org3','b69ae88f-e28a-49ec-8f9d-2a1fd4bbb041',0,10,0,NULL,NULL),('29501f12-3e3f-47f5-aa44-c85d640c71f4',NULL,'docker-http-basic-authenticator','org5','0179b927-6278-4a37-a2e8-08755f3a01d8',0,10,0,NULL,NULL),('297d48ba-4009-4f6b-95b7-bca422b8b0c3',NULL,'client-secret','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','cee66aea-66be-499c-8876-9464be74698a',2,10,0,NULL,NULL),('297e7247-43ab-4026-b7ff-a4d720873c33',NULL,'registration-password-action','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','0c00f444-4cba-44f4-8d73-a81663781af5',0,50,0,NULL,NULL),('29b3009a-08ee-492e-82c8-b1d1eb2ba9f9',NULL,'auth-otp-form','org5','02df47d0-7309-44d6-915e-8ff11d092d25',0,20,0,NULL,NULL),('2b609a11-f30d-4b61-9411-06d5df70cb55',NULL,NULL,'org2','f6fa39ba-f137-48ee-9832-fd22a168a949',2,30,1,'96b386e3-9048-4195-8859-4ce878faf1f0',NULL),('2c23160d-b135-46ab-9eb5-81cdc1b90de9',NULL,'reset-credential-email','org1','31466e69-5902-40df-b7e4-721d6b060082',0,20,0,NULL,NULL),('2d3cf9b4-e01a-4f0c-9fe9-13d8045c9cb3',NULL,'reset-credential-email','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','8e455877-21b2-4730-b560-172b9baba4ba',0,20,0,NULL,NULL),('2df4524f-8ed5-4b68-a79b-16970b38ead1',NULL,'registration-page-form','org5','2112da85-8282-4c2a-9785-1209c29a4e31',0,10,1,'15f47e51-f01f-4236-86cf-065a34d11ee4',NULL),('2e646d30-50fb-42ea-bb5e-97b8b7d5c615',NULL,'docker-http-basic-authenticator','org2','2af8bb95-73fc-4058-b9a9-09e2960b8023',0,10,0,NULL,NULL),('3115211e-2997-4837-a0d4-d0d8f9f13f5d',NULL,'auth-cookie','org2','f6fa39ba-f137-48ee-9832-fd22a168a949',2,10,0,NULL,NULL),('31bc4929-2578-415f-bda8-6da104a7303b',NULL,'http-basic-authenticator','org4','bcccd9f0-8872-41fa-a0f5-93da723ec44a',0,10,0,NULL,NULL),('31d4cc34-02c1-4c67-8abc-e683a0bd3270',NULL,'direct-grant-validate-username','org1','999f6ed1-a50b-4780-b9a4-55fd6fedd6b4',0,10,0,NULL,NULL),('32c42850-014e-4785-b175-24f0e7fade73',NULL,'client-jwt','org4','f132fbe3-1acd-4cd1-a4f9-996a542ef752',2,20,0,NULL,NULL),('333dec5f-85e9-4f3f-b446-785be14acdf9',NULL,'reset-password','org1','31466e69-5902-40df-b7e4-721d6b060082',0,30,0,NULL,NULL),('33a1cd08-6336-40ab-bd90-4891d799ee93',NULL,'client-jwt','org3','15042d28-5e90-4fbb-9439-d4e667582b41',2,20,0,NULL,NULL),('3429360e-6816-4eb0-a1c6-f14342a2babd',NULL,'registration-password-action','org5','15f47e51-f01f-4236-86cf-065a34d11ee4',0,50,0,NULL,NULL),('3476bae4-6371-4dbc-a13c-33278e958c88',NULL,'direct-grant-validate-otp','org2','67dbfbbf-9bd3-4caa-a848-b1afe1daa41d',0,20,0,NULL,NULL),('34ffc8a4-5e74-42d5-9ba4-3604344ede0b',NULL,'auth-otp-form','org1','5a5ef44e-5a49-434b-907c-77501f4a24d0',0,20,0,NULL,NULL),('366109f6-37f1-4044-b2e5-140785dd62d1',NULL,NULL,'org5','992bcdf2-3664-4eec-abee-f76230267647',1,30,1,'3969ca88-4370-4415-b77e-e6c8299c3fc9',NULL),('3690dce8-8684-4d66-a222-f30297eacf68',NULL,'idp-confirm-link','org3','ef854909-3050-4048-b816-a850dcc9f513',0,10,0,NULL,NULL),('376e95aa-e933-4e4d-81b3-06e8c751966d',NULL,'auth-username-password-form','org1','24430ed7-7a1a-494b-8a75-2b5ca41cf651',0,10,0,NULL,NULL),('3906271e-d520-44d5-b2a8-b8926794bb33',NULL,'direct-grant-validate-otp','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5fe26dc2-2a6a-4023-9645-371a623e0a08',0,20,0,NULL,NULL),('39a77701-f0cb-4f3a-a933-75c204e28680',NULL,'direct-grant-validate-otp','org4','e7522cda-e11c-4f18-b76b-3d0a49fc2f9c',0,20,0,NULL,NULL),('3a7c1119-8421-42d9-b60a-190eff2ac6af',NULL,'reset-credentials-choose-user','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','8e455877-21b2-4730-b560-172b9baba4ba',0,10,0,NULL,NULL),('3b8f80dc-6714-43a3-847e-d06e33ac0e8b',NULL,'direct-grant-validate-password','org1','999f6ed1-a50b-4780-b9a4-55fd6fedd6b4',0,20,0,NULL,NULL),('3bb72e95-f696-450a-9f37-27d3173eb064',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','2401d530-376d-424b-9cdd-c77622c61a1d',2,20,1,'dc019ce4-71df-4fd1-ae38-b746cc347dd2',NULL),('3d6530f4-2984-4622-92bd-8b090df939ad',NULL,'registration-page-form','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','f76e2502-dff1-48e4-8d81-a43f64210581',0,10,1,'0c00f444-4cba-44f4-8d73-a81663781af5',NULL),('3d87a09e-5739-49fb-b059-bd4159c743e3',NULL,'client-x509','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','cee66aea-66be-499c-8876-9464be74698a',2,40,0,NULL,NULL),('3d968dc0-e1da-4e38-9a7b-5795f2fa2049',NULL,NULL,'org2','96b386e3-9048-4195-8859-4ce878faf1f0',1,20,1,'5e2bfad3-6dc9-4e22-a50e-d2d5d0cc5787',NULL),('3febdea5-a482-4795-bb1d-39d968ff125d',NULL,'auth-otp-form','org1','56fc0fa2-0950-4c36-bf49-01ad20ac378c',0,20,0,NULL,NULL),('41064d89-b553-4ff4-be32-9eebc520b8d3',NULL,'direct-grant-validate-password','org2','dee3fe25-e0e9-40f8-b8ee-7148622b6a0e',0,20,0,NULL,NULL),('412e30d0-1bd4-4022-948d-5039b2787005',NULL,'direct-grant-validate-username','org2','dee3fe25-e0e9-40f8-b8ee-7148622b6a0e',0,10,0,NULL,NULL),('4342470a-c7c4-44c9-9bf1-5aef34fd2c5e',NULL,'client-secret-jwt','org5','519c0f2a-8a38-4cf4-bb52-fb9f46af60a3',2,30,0,NULL,NULL),('43758581-7f56-4163-8949-a2c05bcbc7a3',NULL,NULL,'org1','e4376720-f024-4f1a-a18d-37ba51f3d4f5',2,20,1,'aacec1cd-a1de-4578-b0c0-a28a1c45e840',NULL),('447e3e99-5779-4743-8367-f5e7fcf0f80d',NULL,'client-secret-jwt','org3','15042d28-5e90-4fbb-9439-d4e667582b41',2,30,0,NULL,NULL),('45f71f8c-6c74-482a-ba79-2e6292f204fa',NULL,'docker-http-basic-authenticator','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5380cb07-799b-43fa-b21d-ba81ff5c2563',0,10,0,NULL,NULL),('4740e6c7-bbb0-46a5-bb8e-b83d3c11c658',NULL,'conditional-user-configured','org4','b74ac9ac-d8e4-48d4-8693-be992767d03e',0,10,0,NULL,NULL),('486d7603-1fce-4118-a156-2905f86543d2',NULL,'auth-cookie','org5','7b80ebe6-063f-4170-a4c3-25bcf8fbeec6',2,10,0,NULL,NULL),('49e2826e-e3bd-4ea9-a35d-7663aabeed73',NULL,NULL,'org2','057ce26b-eabe-49ce-905d-5407a7889c1b',0,20,1,'613769ae-baa1-4138-b335-37931e5692d0',NULL),('4a1c8919-cf7d-4ae7-b56e-c49cda014389',NULL,'conditional-user-configured','org3','5b074bd6-6eb4-44c5-aea1-93e860b12a9c',0,10,0,NULL,NULL),('4a501faf-2a80-4e59-a3c0-b1cbe63831a9',NULL,'auth-username-password-form','org4','d20e8fb8-038d-4cb3-826b-c20bc801cf58',0,10,0,NULL,NULL),('4a8ab571-e29f-44b1-a8ad-fd371d6df3ac',NULL,'auth-username-password-form','org3','8c2316fd-fab0-4b71-bdc6-de32e89165aa',0,10,0,NULL,NULL),('4aaede56-f1e3-45d6-aafb-5a5ef15b3579',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','128601cf-373c-414b-be8e-cbf93d16b8b7',1,20,1,'6b5ad9f4-9b50-4992-aa96-93350f2cdfff',NULL),('4e291892-c0ec-4456-83a8-56ab53623043',NULL,NULL,'org2','613769ae-baa1-4138-b335-37931e5692d0',2,20,1,'3c910c54-3d76-49c7-9623-bf610b3d9c1e',NULL),('4f090c1b-368c-45cd-aaf1-f956a5b5c527',NULL,NULL,'org1','24430ed7-7a1a-494b-8a75-2b5ca41cf651',1,20,1,'56fc0fa2-0950-4c36-bf49-01ad20ac378c',NULL),('519fe763-1d55-419f-a52a-32ca8a0922f1',NULL,'client-secret-jwt','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','cee66aea-66be-499c-8876-9464be74698a',2,30,0,NULL,NULL),('52417e65-f555-4ae5-bf0b-341705ae0fa9',NULL,'auth-otp-form','org3','c1730293-41ec-4290-88b3-2d30842c829d',0,20,0,NULL,NULL),('528261ee-635c-4ee1-9a10-72a6bd9f8747',NULL,'conditional-user-configured','org4','e7522cda-e11c-4f18-b76b-3d0a49fc2f9c',0,10,0,NULL,NULL),('54a9959a-a601-4101-aa6b-9c819b205184',NULL,'http-basic-authenticator','org1','2e5ddbb9-7e0f-4e70-b896-0d00815d28c1',0,10,0,NULL,NULL),('557bc238-626d-4669-8c54-6b0acc1812a9',NULL,'registration-terms-and-conditions','org5','15f47e51-f01f-4236-86cf-065a34d11ee4',3,70,0,NULL,NULL),('5657ab0f-135c-4870-95c2-9f248282013c',NULL,'auth-otp-form','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','250cc895-898c-4edb-bb13-de5d297b0902',0,20,0,NULL,NULL),('5738fbe5-f16c-4961-b3f2-d7181a1beaf3',NULL,'conditional-user-configured','org1','5a5ef44e-5a49-434b-907c-77501f4a24d0',0,10,0,NULL,NULL),('5a79d87c-8389-4b5d-a2de-48e4efe7d0c7',NULL,'registration-page-form','org3','4a4a423f-86ae-4520-9555-78737544fc65',0,10,1,'1a714c1f-ad36-40c5-9226-e2d9a1cffc8c',NULL),('5b38edc3-6867-4e00-8f99-d2f2cc753778',NULL,NULL,'org2','dee3fe25-e0e9-40f8-b8ee-7148622b6a0e',1,30,1,'67dbfbbf-9bd3-4caa-a848-b1afe1daa41d',NULL),('5b5826db-b1fa-4ec2-9974-90869aa99bfd',NULL,'identity-provider-redirector','org5','7b80ebe6-063f-4170-a4c3-25bcf8fbeec6',2,25,0,NULL,NULL),('5ba2b22e-dc50-4480-87e6-968fc2d8b8ca',NULL,NULL,'org1','a637ea8a-a5da-4699-81d6-dd89276ccfa5',0,20,1,'9eadad11-b43d-470d-8d05-8a609346a12f',NULL),('5cf588f5-d013-49f9-aa74-e9f1d9008682',NULL,'idp-confirm-link','org2','3c910c54-3d76-49c7-9623-bf610b3d9c1e',0,10,0,NULL,NULL),('5dd0467c-5feb-4edf-9575-32c93aba6427',NULL,'registration-recaptcha-action','org3','1a714c1f-ad36-40c5-9226-e2d9a1cffc8c',3,60,0,NULL,NULL),('5f3c8a9e-6765-4ed1-aa38-009d765e36b5',NULL,'conditional-user-configured','org5','0a45de4f-22b3-4d0d-b6a7-5ba32c3d6b5d',0,10,0,NULL,NULL),('61ac7989-d066-4670-ace7-6bc3c83f6f74',NULL,'idp-review-profile','org2','057ce26b-eabe-49ce-905d-5407a7889c1b',0,10,0,NULL,'45ca6c51-3036-4edf-bac9-d73910938c1d'),('63ced644-dfe6-484f-b326-d8b0a20f0460',NULL,'identity-provider-redirector','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','e9d4364b-738b-4080-8a60-2c03d0504c3f',2,25,0,NULL,NULL),('641590f5-2f44-45a4-8121-6f46bbd3640e',NULL,'auth-spnego','org5','7b80ebe6-063f-4170-a4c3-25bcf8fbeec6',3,20,0,NULL,NULL),('6444a28b-cddb-4e9c-93bb-a66e618e7d04',NULL,'client-x509','org2','7f843b49-634b-4d4e-9e4b-fb9880180800',2,40,0,NULL,NULL),('67617cc6-6998-41ab-a4c2-fbd26a44a102',NULL,NULL,'org3','696d5711-7e80-444a-a4aa-b261f4b131f0',1,30,1,'5b074bd6-6eb4-44c5-aea1-93e860b12a9c',NULL),('6a6c9a47-c791-4b41-8b4b-e599a22c0edb',NULL,'conditional-user-configured','org4','d055ca42-b9b0-4de7-b3b5-c174c186ff7d',0,10,0,NULL,NULL),('6ba086c6-0941-4559-a7c7-ac612e6d1c4b',NULL,'client-x509','org5','519c0f2a-8a38-4cf4-bb52-fb9f46af60a3',2,40,0,NULL,NULL),('6d80f4c0-95e3-4783-882c-51660a30c72c',NULL,'client-secret','org3','15042d28-5e90-4fbb-9439-d4e667582b41',2,10,0,NULL,NULL),('6e1b060c-b4b9-472b-8548-677e36358470',NULL,'conditional-user-configured','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5fe26dc2-2a6a-4023-9645-371a623e0a08',0,10,0,NULL,NULL),('6edfebfd-bb05-4dab-9481-a5a05838150e',NULL,'idp-review-profile','org5','8a89dbec-3239-4c6a-9641-2b3e5a921f05',0,10,0,NULL,'69e9fc66-ffd1-4885-b756-a62e2d98dff3'),('6ee6aa84-e3a4-4090-a55a-6d5540d80f8c',NULL,'conditional-user-configured','org5','02df47d0-7309-44d6-915e-8ff11d092d25',0,10,0,NULL,NULL),('6ffcbc7d-94dd-42ee-8eff-e07ba6cb1a04',NULL,'registration-page-form','org1','3490e37c-9d60-4784-bcea-1c6c8d18a885',0,10,1,'9f1170e1-63d1-47e2-83f5-0d8e700d7c41',NULL),('70c12649-712c-454a-9f2f-0145617cf37b',NULL,'auth-username-password-form','org5','9ea671b2-7a0e-4010-a67f-982ea4ed5bf8',0,10,0,NULL,NULL),('71c53537-0124-4a42-97a1-eb0977556eec',NULL,'auth-otp-form','org2','55764136-32ef-4106-954f-ce4f40545702',0,20,0,NULL,NULL),('73c7e899-b22c-4f53-927c-74bd07cfe289',NULL,'auth-spnego','org3','12cfb25e-08dc-4b99-9016-3b3f2c1eaedc',3,20,0,NULL,NULL),('7532f429-0364-46ad-966a-9e63126df652',NULL,'idp-review-profile','org1','a637ea8a-a5da-4699-81d6-dd89276ccfa5',0,10,0,NULL,'37f32592-c7d4-4cec-a2ea-0bb162bf564b'),('75f51006-7f1f-4746-837f-1532b283983e',NULL,'reset-password','org2','c5285a80-6c39-4f3a-a65e-0f93bbbe1221',0,30,0,NULL,NULL),('76a5c205-7d29-4242-81f2-96b74bdaf53d',NULL,'client-secret','org1','363a15a0-ae62-40d8-a7fb-281f1ff539b4',2,10,0,NULL,NULL),('78565089-5036-4340-97ca-6a0c5777e787',NULL,NULL,'org4','9b286486-0ab8-4246-ba8d-fb20e689fe59',2,20,1,'995fcc94-f04c-451f-8378-f4199fddbd99',NULL),('7a56a8d6-a786-4746-b2a5-edc96e15e7d6',NULL,'direct-grant-validate-otp','org3','5b074bd6-6eb4-44c5-aea1-93e860b12a9c',0,20,0,NULL,NULL),('7a5fabc7-1f92-4791-a521-f19f0fb7499e',NULL,'idp-confirm-link','org5','c0a07f98-2994-4f05-bfc9-ea880b7c13f4',0,10,0,NULL,NULL),('7afaf697-e91e-42f7-8bfe-25e8c1d6a267',NULL,'idp-username-password-form','org5','8aef3d20-1e81-402f-9c6a-e41d41ab3029',0,10,0,NULL,NULL),('7afd3167-eca5-438e-a217-0ff85c48d2db',NULL,'registration-page-form','org2','b6f2c527-379c-47a8-a7da-021e196a9e33',0,10,1,'77dd6f20-17ac-4475-bd02-102366d8044a',NULL),('7e10b0cd-8c44-47bd-b341-219474fa873e',NULL,'idp-email-verification','org3','a60c27cd-287e-48ba-a954-b9a89d4d7f03',2,10,0,NULL,NULL),('7e28c534-fbcd-4e19-b200-9ada705f3a9e',NULL,NULL,'org3','4b312405-6c0c-4061-a255-3c38701cd84d',1,40,1,'b69ae88f-e28a-49ec-8f9d-2a1fd4bbb041',NULL),('7fa05068-8e23-4f2c-b068-7438e64ca494',NULL,'docker-http-basic-authenticator','org3','0ffe13b7-c460-4c98-97e7-382f40530a3f',0,10,0,NULL,NULL),('7ffac89b-162a-4855-87b3-4aaf7a6c52b9',NULL,'direct-grant-validate-password','org5','992bcdf2-3664-4eec-abee-f76230267647',0,20,0,NULL,NULL),('81a2c82f-fd59-4e5e-8f43-3555597a20a4',NULL,'registration-recaptcha-action','org4','ec4e28fb-dfe3-40e3-a042-d243a06e2758',3,60,0,NULL,NULL),('81ab432c-8382-4516-ba3b-d72d6e227b2b',NULL,'conditional-user-configured','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','40a53d46-4788-4505-9774-9fdf1eef92fb',0,10,0,NULL,NULL),('81f55165-cb94-4058-ab36-f7339294d789',NULL,'client-secret-jwt','org4','f132fbe3-1acd-4cd1-a4f9-996a542ef752',2,30,0,NULL,NULL),('832f262e-b54e-42d1-8f4e-5c433a23ea7b',NULL,'registration-user-creation','org4','ec4e28fb-dfe3-40e3-a042-d243a06e2758',0,20,0,NULL,NULL),('8905021e-d2c7-4e0d-bce2-7fb58532f605',NULL,'idp-review-profile','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','78af40d7-63d3-4d6e-b6ae-be85885a3368',0,10,0,NULL,'fa2892b6-06b6-48ed-af95-54b82eaf7001'),('8a0af0b5-1027-4916-a22e-0d058d7ef59e',NULL,NULL,'org5','d00cb6e3-2b2b-47c5-8976-2cb7788a6d9d',2,20,1,'c0a07f98-2994-4f05-bfc9-ea880b7c13f4',NULL),('8c2a5240-c95e-45ac-b559-8eedbbe5cc2b',NULL,'registration-user-creation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','0c00f444-4cba-44f4-8d73-a81663781af5',0,20,0,NULL,NULL),('8c77fa56-5d07-4020-a313-cae9a565e46d',NULL,'reset-otp','org1','aeae2679-3acb-46e1-a6e8-ca5eda010c30',0,20,0,NULL,NULL),('8f10fec3-6d97-4007-923b-778549a49da5',NULL,'idp-username-password-form','org3','fc4c5de8-4b61-421c-a96c-829eba94e19a',0,10,0,NULL,NULL),('8f95c8a5-bc23-4150-a3e0-508c0078c003',NULL,'docker-http-basic-authenticator','org1','b6f0d16f-7e33-4b1a-9626-6ffcca3e9b1d',0,10,0,NULL,NULL),('8fac3a91-21cd-4bb8-9cf9-2acb4f08a4b8',NULL,'auth-otp-form','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6b5ad9f4-9b50-4992-aa96-93350f2cdfff',0,20,0,NULL,NULL),('91796c0a-fce4-4595-a2cf-e8f4923b262d',NULL,NULL,'org4','34560b9a-6c52-49c8-bbb4-72ffa7efb3e0',0,20,1,'18bad01b-dac9-44cd-855d-5b929752d18d',NULL),('92340e19-7e17-416d-9e5a-e7159c198493',NULL,NULL,'org3','12cfb25e-08dc-4b99-9016-3b3f2c1eaedc',2,30,1,'8c2316fd-fab0-4b71-bdc6-de32e89165aa',NULL),('93006f54-8fdb-4a97-8188-b6362d04b4fa',NULL,'reset-credential-email','org4','bd1b3743-9b84-457d-9c22-5c1925b0af70',0,20,0,NULL,NULL),('93748792-c855-49a2-87c5-18ee817085c1',NULL,'reset-credentials-choose-user','org4','bd1b3743-9b84-457d-9c22-5c1925b0af70',0,10,0,NULL,NULL),('9434011e-171c-483a-99fb-971e792576b7',NULL,NULL,'org4','18bad01b-dac9-44cd-855d-5b929752d18d',2,20,1,'d075e412-1b94-4c3a-99ff-d62dec56319b',NULL),('94bf0ec5-2e31-4f2b-8315-08d14c54a5a2',NULL,'reset-credentials-choose-user','org5','94093a30-5091-48ae-b151-c024197ba27c',0,10,0,NULL,NULL),('95074ab1-8d53-4946-8fc8-11c8d25e3f43',NULL,'idp-username-password-form','org2','060ac2dc-94a7-446e-8360-01a62ffde035',0,10,0,NULL,NULL),('96aadb05-f4b2-481a-8a70-423c17ce9284',NULL,'identity-provider-redirector','org2','f6fa39ba-f137-48ee-9832-fd22a168a949',2,25,0,NULL,NULL),('986efa8c-9695-4a4f-9f49-7ea195794390',NULL,'auth-spnego','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','e9d4364b-738b-4080-8a60-2c03d0504c3f',3,20,0,NULL,NULL),('9ac5c866-51e4-41b9-9bcc-a2a86207177e',NULL,'http-basic-authenticator','org2','e03b2c84-582a-41cf-9355-93ac61fca701',0,10,0,NULL,NULL),('9b4dad03-9bcf-4a79-84a9-a79b204131ff',NULL,'http-basic-authenticator','org3','1ec7da60-883a-4e1d-ac20-cccb3e45b01f',0,10,0,NULL,NULL),('9cd49d6b-2ecb-4ad3-800e-26db0b6502bf',NULL,'registration-page-form','org4','e381b1bf-2fd9-4035-b228-a7b739a66860',0,10,1,'ec4e28fb-dfe3-40e3-a042-d243a06e2758',NULL),('9d8adae1-ee41-415f-8cb7-8ce10dc32df5',NULL,'reset-otp','org2','40e671ff-1cf0-4104-b0b3-191db58b3c3b',0,20,0,NULL,NULL),('9d8b4437-0024-499a-8eb3-8c073eb71b1d',NULL,'conditional-user-configured','org3','c1730293-41ec-4290-88b3-2d30842c829d',0,10,0,NULL,NULL),('a044fb47-fa89-4235-9879-79ffde8831c8',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9a536aee-fcfd-4127-add3-911370786fea',1,20,1,'250cc895-898c-4edb-bb13-de5d297b0902',NULL),('a0b30746-94bd-44a0-9c3a-137897a6c2a2',NULL,NULL,'org3','c03bf219-d802-4b4f-8503-4d6a019acbe5',2,20,1,'ef854909-3050-4048-b816-a850dcc9f513',NULL),('a0d5069f-1184-4ed8-a897-6bf1b40e719f',NULL,'auth-cookie','org4','96fb3380-69fb-48ba-be70-b4d757bf4aef',2,10,0,NULL,NULL),('a151ec1d-a077-4a52-b534-95eabdd8a3e5',NULL,'idp-create-user-if-unique','org3','c03bf219-d802-4b4f-8503-4d6a019acbe5',2,10,0,NULL,'56369af5-6069-44c7-af4b-511a45b209f5'),('a1ee7151-3fd8-4e9d-a7d0-36f86c6594f8',NULL,NULL,'org5','619b3e2a-ca77-43ff-a1ca-68678129d81e',2,20,1,'8aef3d20-1e81-402f-9c6a-e41d41ab3029',NULL),('a40d1e81-3853-41ed-9860-d0611a4d20b3',NULL,'client-secret','org5','519c0f2a-8a38-4cf4-bb52-fb9f46af60a3',2,10,0,NULL,NULL),('a43c2b14-4f94-4170-8416-863d1a31ec3d',NULL,'auth-spnego','org2','f6fa39ba-f137-48ee-9832-fd22a168a949',3,20,0,NULL,NULL),('a799f09f-925a-4fbd-851b-58f275be55a5',NULL,'conditional-user-configured','org1','aeae2679-3acb-46e1-a6e8-ca5eda010c30',0,10,0,NULL,NULL),('a804ddb9-0d1b-42a3-8183-b9901c20415d',NULL,'idp-create-user-if-unique','org2','613769ae-baa1-4138-b335-37931e5692d0',2,10,0,NULL,'5f567255-4173-437b-b5d7-4ff95f90e945'),('a9a96e63-cac8-46db-990e-315fe361915a',NULL,'identity-provider-redirector','org4','96fb3380-69fb-48ba-be70-b4d757bf4aef',2,25,0,NULL,NULL),('abe2ba39-c516-4b3b-a595-180ff3ac0f23',NULL,'auth-otp-form','org5','dba849d2-dd56-4213-8b00-026d521ae0e1',0,20,0,NULL,NULL),('ac3b92cf-3a15-444b-8543-435f93092b23',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','e9d4364b-738b-4080-8a60-2c03d0504c3f',2,30,1,'9a536aee-fcfd-4127-add3-911370786fea',NULL),('acb8f0d9-44a4-45e7-b5f5-3e77daeb343e',NULL,'reset-otp','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','40a53d46-4788-4505-9774-9fdf1eef92fb',0,20,0,NULL,NULL),('ad05c8d5-9974-4ffa-a28b-94416ac5e491',NULL,NULL,'org1','999f6ed1-a50b-4780-b9a4-55fd6fedd6b4',1,30,1,'f8b5ff86-d5b8-4b86-8691-5f229af4e19d',NULL),('aecf4c89-7ea7-4c7f-8a37-5be4e310614f',NULL,'auth-cookie','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','e9d4364b-738b-4080-8a60-2c03d0504c3f',2,10,0,NULL,NULL),('b00512f1-f892-4e93-a318-3def0870a9af',NULL,NULL,'org3','8c2316fd-fab0-4b71-bdc6-de32e89165aa',1,20,1,'424585c7-bdb5-4a39-bbde-95b613518ceb',NULL),('b069512a-e6d6-454e-8e15-36ce0f0abe17',NULL,NULL,'org1','84605e95-12b2-41f7-89cb-6c598c52bdcc',0,20,1,'e4376720-f024-4f1a-a18d-37ba51f3d4f5',NULL),('b1132b36-2b0b-4e58-a495-e16645943b02',NULL,'registration-recaptcha-action','org5','15f47e51-f01f-4236-86cf-065a34d11ee4',3,60,0,NULL,NULL),('b133f343-d5b5-45b2-93c7-8438d3f5fa53',NULL,NULL,'org5','7b80ebe6-063f-4170-a4c3-25bcf8fbeec6',2,30,1,'9ea671b2-7a0e-4010-a67f-982ea4ed5bf8',NULL),('b1526629-d856-448a-92dc-345ad0804e4d',NULL,'direct-grant-validate-otp','org1','f8b5ff86-d5b8-4b86-8691-5f229af4e19d',0,20,0,NULL,NULL),('b1b3929e-dbec-4dae-a750-1fed1faab964',NULL,'idp-username-password-form','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','128601cf-373c-414b-be8e-cbf93d16b8b7',0,10,0,NULL,NULL),('b1c10042-42c4-4abe-b8de-125a853c49e0',NULL,'direct-grant-validate-username','org5','992bcdf2-3664-4eec-abee-f76230267647',0,10,0,NULL,NULL),('b3636ef7-1bf8-4ea9-b15a-f9b41b1970ad',NULL,'idp-email-verification','org2','664e7f9b-94b5-476f-a3a7-d4d557ac2fc6',2,10,0,NULL,NULL),('b3cfb39b-178b-4988-a74c-1ff98be2734e',NULL,NULL,'org2','c5285a80-6c39-4f3a-a65e-0f93bbbe1221',1,40,1,'40e671ff-1cf0-4104-b0b3-191db58b3c3b',NULL),('b3fa7162-507a-4c55-a34f-2abe50df8750',NULL,'auth-otp-form','org2','5e2bfad3-6dc9-4e22-a50e-d2d5d0cc5787',0,20,0,NULL,NULL),('b6bc72e9-2372-418a-a54f-ee60aaabd81d',NULL,'conditional-user-configured','org1','56fc0fa2-0950-4c36-bf49-01ad20ac378c',0,10,0,NULL,NULL),('b6e7bdc6-b4e2-436a-b532-40cc613f4e77',NULL,'conditional-user-configured','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','250cc895-898c-4edb-bb13-de5d297b0902',0,10,0,NULL,NULL),('b74381e8-5ea5-4f9e-ad5c-01cdf4f5e7d8',NULL,'auth-otp-form','org4','b74ac9ac-d8e4-48d4-8693-be992767d03e',0,20,0,NULL,NULL),('b8239770-5b91-44f1-8f1b-40fa3e12277f',NULL,NULL,'org1','9eadad11-b43d-470d-8d05-8a609346a12f',2,20,1,'84605e95-12b2-41f7-89cb-6c598c52bdcc',NULL),('b9f428f9-09b2-4bbb-8dab-2a94dcecffaf',NULL,'reset-credentials-choose-user','org3','4b312405-6c0c-4061-a255-3c38701cd84d',0,10,0,NULL,NULL),('ba6104ef-c4dd-4239-b666-f73c7964018c',NULL,'client-jwt','org5','519c0f2a-8a38-4cf4-bb52-fb9f46af60a3',2,20,0,NULL,NULL),('bae6a2aa-0c3a-4049-8d7b-e29181a3b669',NULL,'reset-password','org3','4b312405-6c0c-4061-a255-3c38701cd84d',0,30,0,NULL,NULL),('bb88cb40-43f8-487d-8879-3e0839b63512',NULL,'registration-recaptcha-action','org2','77dd6f20-17ac-4475-bd02-102366d8044a',3,60,0,NULL,NULL),('bc3f30c4-a57c-4661-8cb9-65e31e84a6d1',NULL,'registration-recaptcha-action','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','0c00f444-4cba-44f4-8d73-a81663781af5',3,60,0,NULL,NULL),('bc92b7c7-06f9-43cb-88a0-c83a2d808720',NULL,'registration-user-creation','org1','9f1170e1-63d1-47e2-83f5-0d8e700d7c41',0,20,0,NULL,NULL),('bcbe322e-b46b-42ca-a3f7-1037aa36f445',NULL,'client-x509','org1','363a15a0-ae62-40d8-a7fb-281f1ff539b4',2,40,0,NULL,NULL),('bce27d9c-1e14-45ac-9ba4-c57db2df88c1',NULL,NULL,'org4','d20e8fb8-038d-4cb3-826b-c20bc801cf58',1,20,1,'d055ca42-b9b0-4de7-b3b5-c174c186ff7d',NULL),('bcf63d67-d110-4de7-b965-6276fe663c0b',NULL,'auth-spnego','org1','16fd18ec-9712-4f0f-997d-808514f50b73',3,20,0,NULL,NULL),('c1672200-8f99-4be7-a28c-6aa797c4ca6a',NULL,'client-x509','org4','f132fbe3-1acd-4cd1-a4f9-996a542ef752',2,40,0,NULL,NULL),('c41d625f-69e2-4fa4-92a0-8d0f5fbe72e7',NULL,'client-secret-jwt','org2','7f843b49-634b-4d4e-9e4b-fb9880180800',2,30,0,NULL,NULL),('c42fa067-48c5-439c-9d1b-b6044a742b5c',NULL,NULL,'org1','16fd18ec-9712-4f0f-997d-808514f50b73',2,30,1,'24430ed7-7a1a-494b-8a75-2b5ca41cf651',NULL),('c4b9b053-256d-4da0-8dbe-401d9b261701',NULL,'direct-grant-validate-username','org3','696d5711-7e80-444a-a4aa-b261f4b131f0',0,10,0,NULL,NULL),('c514e27c-4ad6-4679-8f0f-d3ca370df329',NULL,'http-basic-authenticator','org5','bfcd695d-e451-4eab-8a3f-48150be31889',0,10,0,NULL,NULL),('c7b71d31-bebf-4edf-8d4a-3fc559521f66',NULL,'idp-email-verification','org1','e4376720-f024-4f1a-a18d-37ba51f3d4f5',2,10,0,NULL,NULL),('c7e4841c-3688-4e93-bc5c-8a0d3785999f',NULL,'registration-terms-and-conditions','org4','ec4e28fb-dfe3-40e3-a042-d243a06e2758',3,70,0,NULL,NULL),('cc5d3d51-63c6-4764-8ea0-7471e0db0d37',NULL,'direct-grant-validate-otp','org5','3969ca88-4370-4415-b77e-e6c8299c3fc9',0,20,0,NULL,NULL),('cd276cbb-5960-4748-9e42-a1a620eacefb',NULL,'idp-review-profile','org3','40ea4388-ce2a-4090-898a-377492d7d20b',0,10,0,NULL,'e756eec6-df6f-42d9-a1e6-9be68a5ede48'),('cd64a1f2-b5ff-4f20-a6b7-9cb39794628a',NULL,'reset-otp','org3','b69ae88f-e28a-49ec-8f9d-2a1fd4bbb041',0,20,0,NULL,NULL),('cf567590-7736-4885-8307-6e052500e883',NULL,'reset-password','org4','bd1b3743-9b84-457d-9c22-5c1925b0af70',0,30,0,NULL,NULL),('cfa78acc-c5b0-4660-b26c-eb519c4c5f51',NULL,'auth-cookie','org1','16fd18ec-9712-4f0f-997d-808514f50b73',2,10,0,NULL,NULL),('d26ba187-969a-45ef-a52c-0be772d19d5c',NULL,'idp-email-verification','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5ed96fff-98c1-4b84-81c9-570190d03ef9',2,10,0,NULL,NULL),('d3c80108-0aa6-4673-91ed-0ca5e34a77c2',NULL,NULL,'org3','fc4c5de8-4b61-421c-a96c-829eba94e19a',1,20,1,'c1730293-41ec-4290-88b3-2d30842c829d',NULL),('d5e47f9f-344b-4740-bd49-35470cafc2ee',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','dc019ce4-71df-4fd1-ae38-b746cc347dd2',0,20,1,'5ed96fff-98c1-4b84-81c9-570190d03ef9',NULL),('d786c7a1-739c-44a7-8922-5632e99b2b9c',NULL,'reset-credential-email','org3','4b312405-6c0c-4061-a255-3c38701cd84d',0,20,0,NULL,NULL),('d7ca358c-0a33-4477-9ddb-af94b65bc846',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5ed96fff-98c1-4b84-81c9-570190d03ef9',2,20,1,'128601cf-373c-414b-be8e-cbf93d16b8b7',NULL),('d8235a73-351f-437b-9648-7932bbf98abd',NULL,'auth-spnego','org4','96fb3380-69fb-48ba-be70-b4d757bf4aef',3,20,0,NULL,NULL),('db6c6260-b3f5-47e7-8482-d351bad7267e',NULL,NULL,'org5','8aef3d20-1e81-402f-9c6a-e41d41ab3029',1,20,1,'02df47d0-7309-44d6-915e-8ff11d092d25',NULL),('db9395b0-b384-4cfa-9422-db1c3717853c',NULL,'client-secret-jwt','org1','363a15a0-ae62-40d8-a7fb-281f1ff539b4',2,30,0,NULL,NULL),('dbafcc9d-ee00-46cb-9f6d-812ac0d70549',NULL,'idp-create-user-if-unique','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','2401d530-376d-424b-9cdd-c77622c61a1d',2,10,0,NULL,'857a886d-c2d4-4ed8-a750-00172f6996f5'),('dc789b95-a6c1-460b-81b8-efd40da648c7',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','dd700a04-17f8-4306-af86-b85a87c51bbd',1,30,1,'5fe26dc2-2a6a-4023-9645-371a623e0a08',NULL),('dd0f04e8-03b2-46ce-9b93-ec670ff9ba9d',NULL,NULL,'org3','a60c27cd-287e-48ba-a954-b9a89d4d7f03',2,20,1,'fc4c5de8-4b61-421c-a96c-829eba94e19a',NULL),('dd761f44-8218-42a0-b875-3806855deced',NULL,'direct-grant-validate-username','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','dd700a04-17f8-4306-af86-b85a87c51bbd',0,10,0,NULL,NULL),('de70e9b9-a3fd-4a7e-a3c9-88a35d46299e',NULL,'conditional-user-configured','org2','40e671ff-1cf0-4104-b0b3-191db58b3c3b',0,10,0,NULL,NULL),('df2e92b3-629a-401f-9068-2a55ae0ef871',NULL,'conditional-user-configured','org5','dba849d2-dd56-4213-8b00-026d521ae0e1',0,10,0,NULL,NULL),('df581a17-f66c-4e4a-8e4b-3c1783e5aee7',NULL,'identity-provider-redirector','org1','16fd18ec-9712-4f0f-997d-808514f50b73',2,25,0,NULL,NULL),('df5d704b-764a-49bd-a48f-bf48d2334f14',NULL,'client-jwt','org2','7f843b49-634b-4d4e-9e4b-fb9880180800',2,20,0,NULL,NULL),('df610124-b1d4-4764-b239-7b49e0db31b8',NULL,NULL,'org3','40ea4388-ce2a-4090-898a-377492d7d20b',0,20,1,'c03bf219-d802-4b4f-8503-4d6a019acbe5',NULL),('df888740-5c12-41ca-b5a3-4cf5c3febb78',NULL,'reset-otp','org5','0a45de4f-22b3-4d0d-b6a7-5ba32c3d6b5d',0,20,0,NULL,NULL),('dfe5b6aa-7564-491e-a478-3843d21b9467',NULL,'registration-user-creation','org3','1a714c1f-ad36-40c5-9226-e2d9a1cffc8c',0,20,0,NULL,NULL),('e06bf9af-0cd6-4d81-91a1-84bd3a593f99',NULL,'idp-confirm-link','org4','d075e412-1b94-4c3a-99ff-d62dec56319b',0,10,0,NULL,NULL),('e21818d3-e7fc-4fb6-bbd7-97b00fbcc066',NULL,'idp-create-user-if-unique','org5','d00cb6e3-2b2b-47c5-8976-2cb7788a6d9d',2,10,0,NULL,'340c2e86-e677-475b-bd37-4b1a37b5470e'),('e27fd193-4f6f-4443-a2cd-55fc51edc57d',NULL,NULL,'org4','995fcc94-f04c-451f-8378-f4199fddbd99',1,20,1,'b74ac9ac-d8e4-48d4-8693-be992767d03e',NULL),('e29a2ba2-697b-433e-9531-88cde6b33011',NULL,'reset-credential-email','org5','94093a30-5091-48ae-b151-c024197ba27c',0,20,0,NULL,NULL),('e2e3667c-5f2f-46a2-9906-404a18e1cdf0',NULL,NULL,'org4','c39ba465-29f5-4672-9091-c779bf0dc6b0',1,30,1,'e7522cda-e11c-4f18-b76b-3d0a49fc2f9c',NULL),('e2fd8e95-e108-4c60-b6c7-fe84e336197d',NULL,'client-secret','org2','7f843b49-634b-4d4e-9e4b-fb9880180800',2,10,0,NULL,NULL),('e7f6ed3e-6592-4045-bf03-7a5db769be3a',NULL,'reset-credentials-choose-user','org1','31466e69-5902-40df-b7e4-721d6b060082',0,10,0,NULL,NULL),('e7fe35c5-0705-4ef8-a7ea-9f489010c271',NULL,'reset-password','org5','94093a30-5091-48ae-b151-c024197ba27c',0,30,0,NULL,NULL),('e937e5bc-7142-4240-adae-ab0b4ccd2a88',NULL,'conditional-user-configured','org2','67dbfbbf-9bd3-4caa-a848-b1afe1daa41d',0,10,0,NULL,NULL),('eb4f13a4-0125-4dfb-84ad-3395fa59d690',NULL,'reset-password','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','8e455877-21b2-4730-b560-172b9baba4ba',0,30,0,NULL,NULL),('eb56e10e-8fc1-41d8-9dbb-1e52697bf01a',NULL,'conditional-user-configured','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6b5ad9f4-9b50-4992-aa96-93350f2cdfff',0,10,0,NULL,NULL),('ec18651a-3b52-435d-a913-a4f3410c639b',NULL,'registration-password-action','org3','1a714c1f-ad36-40c5-9226-e2d9a1cffc8c',0,50,0,NULL,NULL),('ec1e411f-1375-4c1f-b5c7-270eed464f7b',NULL,NULL,'org4','bd1b3743-9b84-457d-9c22-5c1925b0af70',1,40,1,'1453de98-70f4-4c75-a65e-c9a5c96579dc',NULL),('ecfce3b3-5c36-49d8-8202-57cfddbbc6e1',NULL,'client-jwt','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','cee66aea-66be-499c-8876-9464be74698a',2,20,0,NULL,NULL),('ed4932ff-07b6-4306-adfa-830d6ebc4d41',NULL,'idp-create-user-if-unique','org1','9eadad11-b43d-470d-8d05-8a609346a12f',2,10,0,NULL,'2a6c976d-3f7d-4280-a2a2-5248a2f55a18'),('ef4aa7a3-b416-40c7-b19f-93164a5fe28f',NULL,'registration-terms-and-conditions','org1','9f1170e1-63d1-47e2-83f5-0d8e700d7c41',3,70,0,NULL,NULL),('eff07188-ea45-4f16-8be6-e44b64e30066',NULL,'docker-http-basic-authenticator','org4','794be6b6-30d4-4129-94ff-15a2b9969de7',0,10,0,NULL,NULL),('f15c3118-f3a8-4ba9-8885-33ab416f7857',NULL,'registration-terms-and-conditions','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','0c00f444-4cba-44f4-8d73-a81663781af5',3,70,0,NULL,NULL),('f266af7d-7957-4516-9fb2-b73b7e6a7d76',NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','78af40d7-63d3-4d6e-b6ae-be85885a3368',0,20,1,'2401d530-376d-424b-9cdd-c77622c61a1d',NULL),('f5ef3cd8-5324-4748-bf0b-a195f5017476',NULL,'auth-cookie','org3','12cfb25e-08dc-4b99-9016-3b3f2c1eaedc',2,10,0,NULL,NULL),('f6bbfa8e-4059-4898-9f03-24fe05cb63bc',NULL,'idp-confirm-link','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','dc019ce4-71df-4fd1-ae38-b746cc347dd2',0,10,0,NULL,NULL),('f7086328-7b02-4301-a8b7-7d538c7634af',NULL,'idp-email-verification','org4','9b286486-0ab8-4246-ba8d-fb20e689fe59',2,10,0,NULL,NULL),('f711e9d2-0aaa-4db8-8184-c994962e54d6',NULL,'registration-password-action','org1','9f1170e1-63d1-47e2-83f5-0d8e700d7c41',0,50,0,NULL,NULL),('fc0894f2-4344-4390-a974-3d558b833b82',NULL,'idp-confirm-link','org1','84605e95-12b2-41f7-89cb-6c598c52bdcc',0,10,0,NULL,NULL),('fd96e15e-4b31-4842-8a97-6dd628aa9268',NULL,NULL,'org5','9ea671b2-7a0e-4010-a67f-982ea4ed5bf8',1,20,1,'dba849d2-dd56-4213-8b00-026d521ae0e1',NULL),('fdbd0084-f1f7-4305-854a-b7e5f12839b8',NULL,'identity-provider-redirector','org3','12cfb25e-08dc-4b99-9016-3b3f2c1eaedc',2,25,0,NULL,NULL),('ffbb2b6a-2b4d-4dd5-81dc-24ddeafe9da0',NULL,'idp-email-verification','org5','619b3e2a-ca77-43ff-a1ca-68678129d81e',2,10,0,NULL,NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0179b927-6278-4a37-a2e8-08755f3a01d8','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',1,1),('02df47d0-7309-44d6-915e-8ff11d092d25','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('057ce26b-eabe-49ce-905d-5407a7889c1b','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',1,1),('060ac2dc-94a7-446e-8360-01a62ffde035','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',0,1),('0a45de4f-22b3-4d0d-b6a7-5ba32c3d6b5d','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',0,1),('0c00f444-4cba-44f4-8d73-a81663781af5','registration form','registration form','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','form-flow',0,1),('0ffe13b7-c460-4c98-97e7-382f40530a3f','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',1,1),('128601cf-373c-414b-be8e-cbf93d16b8b7','Verify Existing Account by Re-authentication','Reauthentication of existing account','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('12cfb25e-08dc-4b99-9016-3b3f2c1eaedc','browser','browser based authentication','org3','basic-flow',1,1),('1453de98-70f4-4c75-a65e-c9a5c96579dc','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',0,1),('15042d28-5e90-4fbb-9439-d4e667582b41','clients','Base authentication for clients','org3','client-flow',1,1),('15f47e51-f01f-4236-86cf-065a34d11ee4','registration form','registration form','org5','form-flow',0,1),('16fd18ec-9712-4f0f-997d-808514f50b73','browser','browser based authentication','org1','basic-flow',1,1),('18bad01b-dac9-44cd-855d-5b929752d18d','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',0,1),('1a714c1f-ad36-40c5-9226-e2d9a1cffc8c','registration form','registration form','org3','form-flow',0,1),('1ec7da60-883a-4e1d-ac20-cccb3e45b01f','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',1,1),('2112da85-8282-4c2a-9785-1209c29a4e31','registration','registration flow','org5','basic-flow',1,1),('2401d530-376d-424b-9cdd-c77622c61a1d','User creation or linking','Flow for the existing/non-existing user alternatives','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('24430ed7-7a1a-494b-8a75-2b5ca41cf651','forms','Username, password, otp and other auth forms.','org1','basic-flow',0,1),('250cc895-898c-4edb-bb13-de5d297b0902','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('2af8bb95-73fc-4058-b9a9-09e2960b8023','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',1,1),('2e5ddbb9-7e0f-4e70-b896-0d00815d28c1','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',1,1),('31466e69-5902-40df-b7e4-721d6b060082','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',1,1),('34560b9a-6c52-49c8-bbb4-72ffa7efb3e0','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',1,1),('3490e37c-9d60-4784-bcea-1c6c8d18a885','registration','registration flow','org1','basic-flow',1,1),('363a15a0-ae62-40d8-a7fb-281f1ff539b4','clients','Base authentication for clients','org1','client-flow',1,1),('3969ca88-4370-4415-b77e-e6c8299c3fc9','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('3c910c54-3d76-49c7-9623-bf610b3d9c1e','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',0,1),('40a53d46-4788-4505-9774-9fdf1eef92fb','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('40e671ff-1cf0-4104-b0b3-191db58b3c3b','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',0,1),('40ea4388-ce2a-4090-898a-377492d7d20b','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',1,1),('424585c7-bdb5-4a39-bbde-95b613518ceb','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('427e39e0-1b2c-4ea9-97cb-dd8a9327ee0e','saml ecp','SAML ECP Profile Authentication Flow','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('4a4a423f-86ae-4520-9555-78737544fc65','registration','registration flow','org3','basic-flow',1,1),('4b312405-6c0c-4061-a255-3c38701cd84d','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',1,1),('519c0f2a-8a38-4cf4-bb52-fb9f46af60a3','clients','Base authentication for clients','org5','client-flow',1,1),('5380cb07-799b-43fa-b21d-ba81ff5c2563','docker auth','Used by Docker clients to authenticate against the IDP','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('55764136-32ef-4106-954f-ce4f40545702','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('56fc0fa2-0950-4c36-bf49-01ad20ac378c','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('5a5ef44e-5a49-434b-907c-77501f4a24d0','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('5b074bd6-6eb4-44c5-aea1-93e860b12a9c','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('5e2bfad3-6dc9-4e22-a50e-d2d5d0cc5787','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('5ed96fff-98c1-4b84-81c9-570190d03ef9','Account verification options','Method with which to verity the existing account','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('5fe26dc2-2a6a-4023-9645-371a623e0a08','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('613769ae-baa1-4138-b335-37931e5692d0','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',0,1),('619b3e2a-ca77-43ff-a1ca-68678129d81e','Account verification options','Method with which to verity the existing account','org5','basic-flow',0,1),('664e7f9b-94b5-476f-a3a7-d4d557ac2fc6','Account verification options','Method with which to verity the existing account','org2','basic-flow',0,1),('67dbfbbf-9bd3-4caa-a848-b1afe1daa41d','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('696d5711-7e80-444a-a4aa-b261f4b131f0','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',1,1),('6b5ad9f4-9b50-4992-aa96-93350f2cdfff','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('77dd6f20-17ac-4475-bd02-102366d8044a','registration form','registration form','org2','form-flow',0,1),('78af40d7-63d3-4d6e-b6ae-be85885a3368','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('794be6b6-30d4-4129-94ff-15a2b9969de7','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',1,1),('7b80ebe6-063f-4170-a4c3-25bcf8fbeec6','browser','browser based authentication','org5','basic-flow',1,1),('7f843b49-634b-4d4e-9e4b-fb9880180800','clients','Base authentication for clients','org2','client-flow',1,1),('84605e95-12b2-41f7-89cb-6c598c52bdcc','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',0,1),('8a89dbec-3239-4c6a-9641-2b3e5a921f05','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',1,1),('8aef3d20-1e81-402f-9c6a-e41d41ab3029','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',0,1),('8c2316fd-fab0-4b71-bdc6-de32e89165aa','forms','Username, password, otp and other auth forms.','org3','basic-flow',0,1),('8e455877-21b2-4730-b560-172b9baba4ba','reset credentials','Reset credentials for a user if they forgot their password or something','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('94093a30-5091-48ae-b151-c024197ba27c','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',1,1),('96b386e3-9048-4195-8859-4ce878faf1f0','forms','Username, password, otp and other auth forms.','org2','basic-flow',0,1),('96fb3380-69fb-48ba-be70-b4d757bf4aef','browser','browser based authentication','org4','basic-flow',1,1),('992bcdf2-3664-4eec-abee-f76230267647','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',1,1),('995fcc94-f04c-451f-8378-f4199fddbd99','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',0,1),('999f6ed1-a50b-4780-b9a4-55fd6fedd6b4','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',1,1),('9a536aee-fcfd-4127-add3-911370786fea','forms','Username, password, otp and other auth forms.','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('9b286486-0ab8-4246-ba8d-fb20e689fe59','Account verification options','Method with which to verity the existing account','org4','basic-flow',0,1),('9ea671b2-7a0e-4010-a67f-982ea4ed5bf8','forms','Username, password, otp and other auth forms.','org5','basic-flow',0,1),('9eadad11-b43d-470d-8d05-8a609346a12f','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',0,1),('9f1170e1-63d1-47e2-83f5-0d8e700d7c41','registration form','registration form','org1','form-flow',0,1),('a60c27cd-287e-48ba-a954-b9a89d4d7f03','Account verification options','Method with which to verity the existing account','org3','basic-flow',0,1),('a637ea8a-a5da-4699-81d6-dd89276ccfa5','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',1,1),('aacec1cd-a1de-4578-b0c0-a28a1c45e840','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',0,1),('aeae2679-3acb-46e1-a6e8-ca5eda010c30','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',0,1),('b69ae88f-e28a-49ec-8f9d-2a1fd4bbb041','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',0,1),('b6f0d16f-7e33-4b1a-9626-6ffcca3e9b1d','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',1,1),('b6f2c527-379c-47a8-a7da-021e196a9e33','registration','registration flow','org2','basic-flow',1,1),('b74ac9ac-d8e4-48d4-8693-be992767d03e','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('bcccd9f0-8872-41fa-a0f5-93da723ec44a','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',1,1),('bd1b3743-9b84-457d-9c22-5c1925b0af70','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',1,1),('bfcd695d-e451-4eab-8a3f-48150be31889','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',1,1),('c03bf219-d802-4b4f-8503-4d6a019acbe5','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',0,1),('c0a07f98-2994-4f05-bfc9-ea880b7c13f4','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',0,1),('c1730293-41ec-4290-88b3-2d30842c829d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('c39ba465-29f5-4672-9091-c779bf0dc6b0','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',1,1),('c5285a80-6c39-4f3a-a65e-0f93bbbe1221','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',1,1),('cee66aea-66be-499c-8876-9464be74698a','clients','Base authentication for clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','client-flow',1,1),('d00cb6e3-2b2b-47c5-8976-2cb7788a6d9d','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',0,1),('d055ca42-b9b0-4de7-b3b5-c174c186ff7d','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('d075e412-1b94-4c3a-99ff-d62dec56319b','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',0,1),('d20e8fb8-038d-4cb3-826b-c20bc801cf58','forms','Username, password, otp and other auth forms.','org4','basic-flow',0,1),('dba849d2-dd56-4213-8b00-026d521ae0e1','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('dc019ce4-71df-4fd1-ae38-b746cc347dd2','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',0,1),('dd700a04-17f8-4306-af86-b85a87c51bbd','direct grant','OpenID Connect Resource Owner Grant','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('dee3fe25-e0e9-40f8-b8ee-7148622b6a0e','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',1,1),('e03b2c84-582a-41cf-9355-93ac61fca701','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',1,1),('e381b1bf-2fd9-4035-b228-a7b739a66860','registration','registration flow','org4','basic-flow',1,1),('e4376720-f024-4f1a-a18d-37ba51f3d4f5','Account verification options','Method with which to verity the existing account','org1','basic-flow',0,1),('e7522cda-e11c-4f18-b76b-3d0a49fc2f9c','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('e9d4364b-738b-4080-8a60-2c03d0504c3f','browser','browser based authentication','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('ec4e28fb-dfe3-40e3-a042-d243a06e2758','registration form','registration form','org4','form-flow',0,1),('ef854909-3050-4048-b816-a850dcc9f513','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',0,1),('f132fbe3-1acd-4cd1-a4f9-996a542ef752','clients','Base authentication for clients','org4','client-flow',1,1),('f6fa39ba-f137-48ee-9832-fd22a168a949','browser','browser based authentication','org2','basic-flow',1,1),('f76e2502-dff1-48e4-8d81-a43f64210581','registration','registration flow','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','basic-flow',1,1),('f8b5ff86-d5b8-4b86-8691-5f229af4e19d','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('fc4c5de8-4b61-421c-a96c-829eba94e19a','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',0,1);
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('1f381e4e-752f-4b91-a790-c22865b74496','create unique user config','org4'),('2a6c976d-3f7d-4280-a2a2-5248a2f55a18','create unique user config','org1'),('340c2e86-e677-475b-bd37-4b1a37b5470e','create unique user config','org5'),('37f32592-c7d4-4cec-a2ea-0bb162bf564b','review profile config','org1'),('45ca6c51-3036-4edf-bac9-d73910938c1d','review profile config','org2'),('5394db7e-751a-4b94-a28c-8183bce5948c','review profile config','org4'),('56369af5-6069-44c7-af4b-511a45b209f5','create unique user config','org3'),('5f567255-4173-437b-b5d7-4ff95f90e945','create unique user config','org2'),('69e9fc66-ffd1-4885-b756-a62e2d98dff3','review profile config','org5'),('857a886d-c2d4-4ed8-a750-00172f6996f5','create unique user config','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4'),('e756eec6-df6f-42d9-a1e6-9be68a5ede48','review profile config','org3'),('fa2892b6-06b6-48ed-af95-54b82eaf7001','review profile config','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('1f381e4e-752f-4b91-a790-c22865b74496','false','require.password.update.after.registration'),('2a6c976d-3f7d-4280-a2a2-5248a2f55a18','false','require.password.update.after.registration'),('340c2e86-e677-475b-bd37-4b1a37b5470e','false','require.password.update.after.registration'),('37f32592-c7d4-4cec-a2ea-0bb162bf564b','missing','update.profile.on.first.login'),('45ca6c51-3036-4edf-bac9-d73910938c1d','missing','update.profile.on.first.login'),('5394db7e-751a-4b94-a28c-8183bce5948c','missing','update.profile.on.first.login'),('56369af5-6069-44c7-af4b-511a45b209f5','false','require.password.update.after.registration'),('5f567255-4173-437b-b5d7-4ff95f90e945','false','require.password.update.after.registration'),('69e9fc66-ffd1-4885-b756-a62e2d98dff3','missing','update.profile.on.first.login'),('857a886d-c2d4-4ed8-a750-00172f6996f5','false','require.password.update.after.registration'),('e756eec6-df6f-42d9-a1e6-9be68a5ede48','missing','update.profile.on.first.login'),('fa2892b6-06b6-48ed-af95-54b82eaf7001','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('02df28b1-a10c-4922-a647-d0556610a0b4',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org1','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('03391363-23ec-4e81-8f2b-a37e8f923e77',1,0,'security-admin-console',0,1,NULL,'/admin/org3/console/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('0d673718-5842-4ef7-a3e3-5e5c56facd92',1,0,'security-admin-console',0,1,NULL,'/admin/org2/console/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('1575d963-79a7-4bda-b45e-59a9e311f4f7',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('1c184606-8ae2-4680-a1a1-7c84b476e267',1,1,'org3-workspaces',0,0,'cH4EB3mSYxIlkzwxGXPgqrFZH40HUaN6',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('1c3002be-ee90-4dc8-8e8e-68b5944c7165',1,0,'security-admin-console',0,1,NULL,'/admin/org1/console/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95',1,0,'account-console',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('1fedc4a8-7335-4d5f-96a5-c268f20047b7',1,0,'security-admin-console',0,1,NULL,'/admin/org4/console/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('24ed2917-fc28-4497-a58d-ff301d928753',1,1,'_org3-api',0,1,'pBf7OqhrS66FG6wMUdyxfcYcboCVteYY',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('24f98cd6-b2a8-4f39-af89-313b02d589f7',1,1,'_org5-api',0,1,'F25RLPZgOk7orxS9gwtw5hFkkLd3TWW2',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('2b2ecc28-48e5-4d13-944e-b967140b61ab',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,0,'account',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('304c3eb1-05ff-4f53-82ce-85ea09021445',1,1,'_org1-api',0,1,'jfg1WIt4LT9x7SxbauZA8zzfJ2rU2rnD',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('3214c83b-b319-46db-83e0-a3afa51f5a5e',1,1,'org4-workspaces',0,0,'fXzxbYF4OxTIUvFQRqcBLvrRrbBg0k2L',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('34098bc0-970f-4e77-a7a7-cb7b504847bb',1,1,'org1-workspaces',0,0,'6yeDnRG3J8F6o83mqbtBOvxYGomZEE35',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('355fa74c-6a60-4119-a038-c1100c2a2c91',1,1,'system-org1-auth',0,0,'lqZqzBlpziCswbmlluyfINICOTY5OV0M',NULL,1,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('363fac61-632a-41c3-83f7-e08604b3640f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('37c31529-1e2b-4155-889c-7e141dfda92b',1,1,'system-org5-auth',0,0,'kX8qC4cmSrth6dOSABtgKuNXgOTYhJeS',NULL,1,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('3984d86b-527c-4ea9-8a14-2503b2dec747',1,1,'system-org3-auth',0,0,'oHVkrGEzALXyQZZmCww0aOlvCQ1heSRa',NULL,1,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,1,'org2',0,1,'KS84Okl9Hn0P2NYn8BLyeoFnVGskWejv',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('5201f3dc-03da-4378-bbca-43dbcb169951',1,1,'_platform',0,0,'ueOj2yaOc3vtZZoIUKJWpkOuexhSjdND',NULL,0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('5330b543-f669-4159-976e-c9fbbe5170c4',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,1,'org3',0,1,'OhJccgRDkP8WS6DOLwkkVTsLcOAD8Tkb',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('606eedf0-fb2b-41a7-b156-8a346cc31c87',1,1,'org4',0,1,'yKoCGVNhpl8d55FnxBRYtoC2t8tHGfdP',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('626b586e-9d30-41b5-be22-20c228e0a428',1,0,'account-console',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('6336ceed-4c7e-4514-889a-3bc726cdc69f',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('698b4d26-9739-4058-9f6f-dbb48760e84d',1,0,'org1-realm',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,0,0,0,'org1 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,1,'org5-workspaces',0,0,'GUTlwCPxvPR1vyvmlrfqQxdCxJ8TWrPz',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('74d5f744-c8a2-432f-9e41-ddfc08dc8805',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org3','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('758a5b70-29fb-4db8-8b3a-56a7fa79c816',1,1,'_org4-api',0,1,'52xhGiUkiH7GPDPOpyJvx8VIabZiRwW8',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('785e2512-8d84-40ce-b101-d49a905d15a9',1,0,'_platform-console',0,1,'xIHoRDpUyGbj080so1guj49iyXFPzJCH',NULL,0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,0,'org5-realm',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,0,0,0,'org5 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('81ee8f29-012c-49e5-a7f9-bf6080d53320',1,1,'org2-workspaces',0,0,'WooBjjKuuScmqLmoYeVCuCxGgdabyMX6',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('82b39286-2ebc-4984-b743-1818079cfcfb',1,0,'org3-realm',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,0,0,0,'org3 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('8425a10b-0c18-454f-8e31-52f401cc4fa3',1,1,'system-org2-auth',0,0,'uIZBrWScSEG2WOFTQ5hwUnfvHAWthhdm',NULL,1,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('8acf8481-f3d4-49c8-918b-36ea33bb68bb',1,0,'account-console',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('8df8c152-6526-4e1f-8a17-cd30bf941934',1,1,'org1',0,1,'PDZQQ9fWZzVzXQr9ThKyUAjSqh5gizJ0',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('9100b580-7cc5-4819-b5db-68478d32b02b',1,0,'org2-realm',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,0,0,0,'org2 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('952801c4-e7b0-49ca-b4a9-efd20be3e568',1,0,'security-admin-console',0,1,NULL,'/admin/org5/console/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('96e95eed-a817-401e-9354-4921aaacbf75',1,0,'account',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('a100e84c-49c0-4899-9320-8c4bb0904012',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6',1,0,'account-console',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('aee12f00-5b28-4961-9ea7-eecee0afee52',1,0,'account-console',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('bf295504-f074-4199-aecf-916a0036bb14',1,0,'org4-realm',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,0,0,0,'org4 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('c21fffec-d02f-4fa9-82f0-74cff821210f',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,0,'account',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('d938f59f-6ba5-47bf-859f-d83db98169c5',1,0,'account',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('df3e6358-9c76-4839-9284-5cbcfa574ffa',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('eb10fd90-d139-4b9c-8747-dc7f538f9570',1,1,'_org2-api',0,1,'1JZNr2FquE4qEL0oOSJ47rgDgSSudn1a',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('f23775bb-1054-41c4-9926-0433968d09f5',1,1,'system-org4-auth',0,0,'mekVRCjwIpmN5rog9mSnBZtSDTNPuMZ3',NULL,1,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('f24468e1-6d34-4675-9efc-3dff1ea030a0',1,1,'org5',0,1,'PWc0iGP3MxCWLnC1bN1Uk2mWaqiNhIAb',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('f5ca6b8a-1544-4e07-9f51-7c28700ac148',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('fe98a408-4976-49d0-95e9-ed004e9878f8',1,0,'account',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0);
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('03391363-23ec-4e81-8f2b-a37e8f923e77','pkce.code.challenge.method','S256'),('03391363-23ec-4e81-8f2b-a37e8f923e77','post.logout.redirect.uris','+'),('0d673718-5842-4ef7-a3e3-5e5c56facd92','pkce.code.challenge.method','S256'),('0d673718-5842-4ef7-a3e3-5e5c56facd92','post.logout.redirect.uris','+'),('1c184606-8ae2-4680-a1a1-7c84b476e267','backchannel.logout.revoke.offline.tokens','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','backchannel.logout.session.required','true'),('1c184606-8ae2-4680-a1a1-7c84b476e267','client.secret.creation.time','1713510060'),('1c184606-8ae2-4680-a1a1-7c84b476e267','client_credentials.use_refresh_token','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','display.on.consent.screen','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','exclude.session.state.from.auth.response','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','id.token.as.detached.signature','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','oauth2.device.authorization.grant.enabled','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','oidc.ciba.grant.enabled','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','require.pushed.authorization.requests','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.artifact.binding','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.assertion.signature','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.authnstatement','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.client.signature','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.encrypt','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.force.post.binding','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.multivalued.roles','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.onetimeuse.condition','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.server.signature','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml.server.signature.keyinfo.ext','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','saml_force_name_id_format','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','tls.client.certificate.bound.access.tokens','false'),('1c184606-8ae2-4680-a1a1-7c84b476e267','use.refresh.tokens','true'),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','pkce.code.challenge.method','S256'),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','post.logout.redirect.uris','+'),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','pkce.code.challenge.method','S256'),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','post.logout.redirect.uris','+'),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','pkce.code.challenge.method','S256'),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','post.logout.redirect.uris','+'),('24ed2917-fc28-4497-a58d-ff301d928753','access.token.lifespan','86400'),('24ed2917-fc28-4497-a58d-ff301d928753','acr.loa.map','{}'),('24ed2917-fc28-4497-a58d-ff301d928753','backchannel.logout.revoke.offline.tokens','false'),('24ed2917-fc28-4497-a58d-ff301d928753','backchannel.logout.session.required','true'),('24ed2917-fc28-4497-a58d-ff301d928753','client.secret.creation.time','1713510060'),('24ed2917-fc28-4497-a58d-ff301d928753','client.session.idle.timeout','86400'),('24ed2917-fc28-4497-a58d-ff301d928753','client.session.max.lifespan','86400'),('24ed2917-fc28-4497-a58d-ff301d928753','client_credentials.use_refresh_token','false'),('24ed2917-fc28-4497-a58d-ff301d928753','display.on.consent.screen','false'),('24ed2917-fc28-4497-a58d-ff301d928753','exclude.session.state.from.auth.response','false'),('24ed2917-fc28-4497-a58d-ff301d928753','frontchannel.logout.session.required','false'),('24ed2917-fc28-4497-a58d-ff301d928753','id.token.as.detached.signature','false'),('24ed2917-fc28-4497-a58d-ff301d928753','oauth2.device.authorization.grant.enabled','false'),('24ed2917-fc28-4497-a58d-ff301d928753','oidc.ciba.grant.enabled','false'),('24ed2917-fc28-4497-a58d-ff301d928753','require.pushed.authorization.requests','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.allow.ecp.flow','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.artifact.binding','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.assertion.signature','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.authnstatement','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.client.signature','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.encrypt','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.force.post.binding','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.multivalued.roles','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.onetimeuse.condition','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.server.signature','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml.server.signature.keyinfo.ext','false'),('24ed2917-fc28-4497-a58d-ff301d928753','saml_force_name_id_format','false'),('24ed2917-fc28-4497-a58d-ff301d928753','tls.client.certificate.bound.access.tokens','false'),('24ed2917-fc28-4497-a58d-ff301d928753','token.response.type.bearer.lower-case','false'),('24ed2917-fc28-4497-a58d-ff301d928753','use.refresh.tokens','true'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','access.token.lifespan','86400'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','acr.loa.map','{}'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','backchannel.logout.revoke.offline.tokens','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','backchannel.logout.session.required','true'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','client.secret.creation.time','1713510109'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','client.session.idle.timeout','86400'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','client.session.max.lifespan','86400'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','client_credentials.use_refresh_token','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','display.on.consent.screen','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','exclude.session.state.from.auth.response','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','frontchannel.logout.session.required','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','id.token.as.detached.signature','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','oauth2.device.authorization.grant.enabled','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','oidc.ciba.grant.enabled','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','require.pushed.authorization.requests','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.allow.ecp.flow','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.artifact.binding','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.assertion.signature','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.authnstatement','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.client.signature','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.encrypt','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.force.post.binding','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.multivalued.roles','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.onetimeuse.condition','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.server.signature','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml.server.signature.keyinfo.ext','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','saml_force_name_id_format','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','tls.client.certificate.bound.access.tokens','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','token.response.type.bearer.lower-case','false'),('24f98cd6-b2a8-4f39-af89-313b02d589f7','use.refresh.tokens','true'),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','post.logout.redirect.uris','+'),('304c3eb1-05ff-4f53-82ce-85ea09021445','access.token.lifespan','86400'),('304c3eb1-05ff-4f53-82ce-85ea09021445','acr.loa.map','{}'),('304c3eb1-05ff-4f53-82ce-85ea09021445','backchannel.logout.revoke.offline.tokens','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','backchannel.logout.session.required','true'),('304c3eb1-05ff-4f53-82ce-85ea09021445','client.secret.creation.time','1713510005'),('304c3eb1-05ff-4f53-82ce-85ea09021445','client.session.idle.timeout','86400'),('304c3eb1-05ff-4f53-82ce-85ea09021445','client.session.max.lifespan','86400'),('304c3eb1-05ff-4f53-82ce-85ea09021445','client_credentials.use_refresh_token','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','display.on.consent.screen','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','exclude.session.state.from.auth.response','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','frontchannel.logout.session.required','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','id.token.as.detached.signature','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','oauth2.device.authorization.grant.enabled','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','oidc.ciba.grant.enabled','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','require.pushed.authorization.requests','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.allow.ecp.flow','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.artifact.binding','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.assertion.signature','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.authnstatement','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.client.signature','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.encrypt','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.force.post.binding','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.multivalued.roles','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.onetimeuse.condition','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.server.signature','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml.server.signature.keyinfo.ext','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','saml_force_name_id_format','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','tls.client.certificate.bound.access.tokens','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','token.response.type.bearer.lower-case','false'),('304c3eb1-05ff-4f53-82ce-85ea09021445','use.refresh.tokens','true'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','backchannel.logout.revoke.offline.tokens','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','backchannel.logout.session.required','true'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','client.secret.creation.time','1713510085'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','client_credentials.use_refresh_token','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','display.on.consent.screen','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','exclude.session.state.from.auth.response','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','id.token.as.detached.signature','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','oauth2.device.authorization.grant.enabled','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','oidc.ciba.grant.enabled','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','require.pushed.authorization.requests','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.artifact.binding','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.assertion.signature','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.authnstatement','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.client.signature','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.encrypt','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.force.post.binding','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.multivalued.roles','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.onetimeuse.condition','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.server.signature','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml.server.signature.keyinfo.ext','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','saml_force_name_id_format','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','tls.client.certificate.bound.access.tokens','false'),('3214c83b-b319-46db-83e0-a3afa51f5a5e','use.refresh.tokens','true'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','backchannel.logout.revoke.offline.tokens','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','backchannel.logout.session.required','true'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','client.secret.creation.time','1713510004'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','client_credentials.use_refresh_token','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','display.on.consent.screen','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','exclude.session.state.from.auth.response','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','id.token.as.detached.signature','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','oauth2.device.authorization.grant.enabled','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','oidc.ciba.grant.enabled','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','require.pushed.authorization.requests','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.artifact.binding','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.assertion.signature','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.authnstatement','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.client.signature','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.encrypt','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.force.post.binding','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.multivalued.roles','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.onetimeuse.condition','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.server.signature','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml.server.signature.keyinfo.ext','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','saml_force_name_id_format','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','tls.client.certificate.bound.access.tokens','false'),('34098bc0-970f-4e77-a7a7-cb7b504847bb','use.refresh.tokens','true'),('355fa74c-6a60-4119-a038-c1100c2a2c91','backchannel.logout.revoke.offline.tokens','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','backchannel.logout.session.required','true'),('355fa74c-6a60-4119-a038-c1100c2a2c91','client.secret.creation.time','1713510005'),('355fa74c-6a60-4119-a038-c1100c2a2c91','client_credentials.use_refresh_token','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','display.on.consent.screen','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','exclude.session.state.from.auth.response','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','id.token.as.detached.signature','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','oauth2.device.authorization.grant.enabled','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','oidc.ciba.grant.enabled','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','require.pushed.authorization.requests','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.artifact.binding','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.assertion.signature','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.authnstatement','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.client.signature','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.encrypt','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.force.post.binding','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.multivalued.roles','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.onetimeuse.condition','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.server.signature','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml.server.signature.keyinfo.ext','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','saml_force_name_id_format','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','tls.client.certificate.bound.access.tokens','false'),('355fa74c-6a60-4119-a038-c1100c2a2c91','use.refresh.tokens','true'),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','pkce.code.challenge.method','S256'),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','post.logout.redirect.uris','+'),('37c31529-1e2b-4155-889c-7e141dfda92b','backchannel.logout.revoke.offline.tokens','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','backchannel.logout.session.required','true'),('37c31529-1e2b-4155-889c-7e141dfda92b','client.secret.creation.time','1713510109'),('37c31529-1e2b-4155-889c-7e141dfda92b','client_credentials.use_refresh_token','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','display.on.consent.screen','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','exclude.session.state.from.auth.response','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','id.token.as.detached.signature','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','oauth2.device.authorization.grant.enabled','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','oidc.ciba.grant.enabled','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','require.pushed.authorization.requests','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.artifact.binding','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.assertion.signature','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.authnstatement','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.client.signature','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.encrypt','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.force.post.binding','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.multivalued.roles','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.onetimeuse.condition','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.server.signature','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml.server.signature.keyinfo.ext','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','saml_force_name_id_format','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','tls.client.certificate.bound.access.tokens','false'),('37c31529-1e2b-4155-889c-7e141dfda92b','use.refresh.tokens','true'),('3984d86b-527c-4ea9-8a14-2503b2dec747','backchannel.logout.revoke.offline.tokens','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','backchannel.logout.session.required','true'),('3984d86b-527c-4ea9-8a14-2503b2dec747','client.secret.creation.time','1713510060'),('3984d86b-527c-4ea9-8a14-2503b2dec747','client_credentials.use_refresh_token','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','display.on.consent.screen','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','exclude.session.state.from.auth.response','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','id.token.as.detached.signature','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','oauth2.device.authorization.grant.enabled','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','oidc.ciba.grant.enabled','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','require.pushed.authorization.requests','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.artifact.binding','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.assertion.signature','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.authnstatement','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.client.signature','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.encrypt','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.force.post.binding','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.multivalued.roles','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.onetimeuse.condition','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.server.signature','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml.server.signature.keyinfo.ext','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','saml_force_name_id_format','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','tls.client.certificate.bound.access.tokens','false'),('3984d86b-527c-4ea9-8a14-2503b2dec747','use.refresh.tokens','true'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','access.token.lifespan','86400'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','acr.loa.map','{}'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','backchannel.logout.revoke.offline.tokens','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','backchannel.logout.session.required','true'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','client.session.idle.timeout','86400'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','client.session.max.lifespan','86400'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','client_credentials.use_refresh_token','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','display.on.consent.screen','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','exclude.session.state.from.auth.response','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','frontchannel.logout.session.required','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','id.token.as.detached.signature','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','oauth2.device.authorization.grant.enabled','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','oidc.ciba.grant.enabled','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','require.pushed.authorization.requests','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.allow.ecp.flow','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.artifact.binding','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.assertion.signature','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.authnstatement','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.client.signature','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.encrypt','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.force.post.binding','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.multivalued.roles','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.onetimeuse.condition','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.server.signature','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml.server.signature.keyinfo.ext','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','saml_force_name_id_format','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','tls.client.certificate.bound.access.tokens','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','token.response.type.bearer.lower-case','false'),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','use.refresh.tokens','true'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','backchannel.logout.revoke.offline.tokens','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','backchannel.logout.session.required','true'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','client.secret.creation.time','1713510034'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','client_credentials.use_refresh_token','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','display.on.consent.screen','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','exclude.session.state.from.auth.response','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','id.token.as.detached.signature','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','oauth2.device.authorization.grant.enabled','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','oidc.ciba.grant.enabled','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','post.logout.redirect.uris','/*'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','require.pushed.authorization.requests','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.artifact.binding','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.assertion.signature','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.authnstatement','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.client.signature','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.encrypt','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.force.post.binding','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.multivalued.roles','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.onetimeuse.condition','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.server.signature','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml.server.signature.keyinfo.ext','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','saml_force_name_id_format','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','tls.client.certificate.bound.access.tokens','false'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','use.refresh.tokens','true'),('5201f3dc-03da-4378-bbca-43dbcb169951','backchannel.logout.revoke.offline.tokens','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','backchannel.logout.session.required','true'),('5201f3dc-03da-4378-bbca-43dbcb169951','client.secret.creation.time','1713509703'),('5201f3dc-03da-4378-bbca-43dbcb169951','client_credentials.use_refresh_token','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','display.on.consent.screen','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','exclude.session.state.from.auth.response','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','id.token.as.detached.signature','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','oauth2.device.authorization.grant.enabled','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','oidc.ciba.grant.enabled','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','require.pushed.authorization.requests','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.artifact.binding','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.assertion.signature','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.authnstatement','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.client.signature','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.encrypt','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.force.post.binding','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.multivalued.roles','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.onetimeuse.condition','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.server.signature','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml.server.signature.keyinfo.ext','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','saml_force_name_id_format','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','tls.client.certificate.bound.access.tokens','false'),('5201f3dc-03da-4378-bbca-43dbcb169951','use.refresh.tokens','true'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','backchannel.logout.revoke.offline.tokens','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','backchannel.logout.session.required','true'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','client.secret.creation.time','1713510060'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','client_credentials.use_refresh_token','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','display.on.consent.screen','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','exclude.session.state.from.auth.response','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','id.token.as.detached.signature','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','oauth2.device.authorization.grant.enabled','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','oidc.ciba.grant.enabled','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','post.logout.redirect.uris','/*'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','require.pushed.authorization.requests','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.artifact.binding','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.assertion.signature','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.authnstatement','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.client.signature','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.encrypt','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.force.post.binding','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.multivalued.roles','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.onetimeuse.condition','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.server.signature','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml.server.signature.keyinfo.ext','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','saml_force_name_id_format','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','tls.client.certificate.bound.access.tokens','false'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','use.refresh.tokens','true'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','backchannel.logout.revoke.offline.tokens','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','backchannel.logout.session.required','true'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','client.secret.creation.time','1713510085'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','client_credentials.use_refresh_token','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','display.on.consent.screen','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','exclude.session.state.from.auth.response','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','id.token.as.detached.signature','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','oauth2.device.authorization.grant.enabled','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','oidc.ciba.grant.enabled','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','post.logout.redirect.uris','/*'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','require.pushed.authorization.requests','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.artifact.binding','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.assertion.signature','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.authnstatement','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.client.signature','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.encrypt','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.force.post.binding','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.multivalued.roles','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.onetimeuse.condition','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.server.signature','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml.server.signature.keyinfo.ext','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','saml_force_name_id_format','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','tls.client.certificate.bound.access.tokens','false'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','use.refresh.tokens','true'),('626b586e-9d30-41b5-be22-20c228e0a428','pkce.code.challenge.method','S256'),('626b586e-9d30-41b5-be22-20c228e0a428','post.logout.redirect.uris','+'),('6336ceed-4c7e-4514-889a-3bc726cdc69f','post.logout.redirect.uris','+'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','backchannel.logout.revoke.offline.tokens','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','backchannel.logout.session.required','true'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','client.secret.creation.time','1713510109'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','client_credentials.use_refresh_token','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','display.on.consent.screen','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','exclude.session.state.from.auth.response','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','id.token.as.detached.signature','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','oauth2.device.authorization.grant.enabled','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','oidc.ciba.grant.enabled','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','require.pushed.authorization.requests','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.artifact.binding','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.assertion.signature','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.authnstatement','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.client.signature','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.encrypt','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.force.post.binding','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.multivalued.roles','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.onetimeuse.condition','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.server.signature','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml.server.signature.keyinfo.ext','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','saml_force_name_id_format','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','tls.client.certificate.bound.access.tokens','false'),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','use.refresh.tokens','true'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','access.token.lifespan','86400'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','acr.loa.map','{}'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','backchannel.logout.revoke.offline.tokens','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','backchannel.logout.session.required','true'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','client.secret.creation.time','1713510085'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','client.session.idle.timeout','86400'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','client.session.max.lifespan','86400'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','client_credentials.use_refresh_token','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','display.on.consent.screen','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','exclude.session.state.from.auth.response','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','frontchannel.logout.session.required','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','id.token.as.detached.signature','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','oauth2.device.authorization.grant.enabled','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','oidc.ciba.grant.enabled','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','require.pushed.authorization.requests','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.allow.ecp.flow','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.artifact.binding','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.assertion.signature','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.authnstatement','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.client.signature','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.encrypt','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.force.post.binding','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.multivalued.roles','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.onetimeuse.condition','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.server.signature','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml.server.signature.keyinfo.ext','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','saml_force_name_id_format','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','tls.client.certificate.bound.access.tokens','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','token.response.type.bearer.lower-case','false'),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','use.refresh.tokens','true'),('785e2512-8d84-40ce-b101-d49a905d15a9','backchannel.logout.revoke.offline.tokens','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','backchannel.logout.session.required','true'),('785e2512-8d84-40ce-b101-d49a905d15a9','client.secret.creation.time','1713509705'),('785e2512-8d84-40ce-b101-d49a905d15a9','client_credentials.use_refresh_token','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','display.on.consent.screen','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','exclude.session.state.from.auth.response','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','id.token.as.detached.signature','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','oauth2.device.authorization.grant.enabled','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','oidc.ciba.grant.enabled','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','post.logout.redirect.uris','/*'),('785e2512-8d84-40ce-b101-d49a905d15a9','require.pushed.authorization.requests','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.artifact.binding','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.assertion.signature','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.authnstatement','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.client.signature','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.encrypt','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.force.post.binding','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.multivalued.roles','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.onetimeuse.condition','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.server.signature','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml.server.signature.keyinfo.ext','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','saml_force_name_id_format','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','tls.client.certificate.bound.access.tokens','false'),('785e2512-8d84-40ce-b101-d49a905d15a9','use.refresh.tokens','true'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','backchannel.logout.revoke.offline.tokens','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','backchannel.logout.session.required','true'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','client.secret.creation.time','1713510034'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','client_credentials.use_refresh_token','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','display.on.consent.screen','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','exclude.session.state.from.auth.response','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','id.token.as.detached.signature','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','oauth2.device.authorization.grant.enabled','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','oidc.ciba.grant.enabled','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','require.pushed.authorization.requests','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.artifact.binding','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.assertion.signature','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.authnstatement','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.client.signature','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.encrypt','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.force.post.binding','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.multivalued.roles','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.onetimeuse.condition','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.server.signature','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml.server.signature.keyinfo.ext','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','saml_force_name_id_format','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','tls.client.certificate.bound.access.tokens','false'),('81ee8f29-012c-49e5-a7f9-bf6080d53320','use.refresh.tokens','true'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','backchannel.logout.revoke.offline.tokens','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','backchannel.logout.session.required','true'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','client.secret.creation.time','1713510034'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','client_credentials.use_refresh_token','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','display.on.consent.screen','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','exclude.session.state.from.auth.response','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','id.token.as.detached.signature','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','oauth2.device.authorization.grant.enabled','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','oidc.ciba.grant.enabled','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','require.pushed.authorization.requests','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.artifact.binding','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.assertion.signature','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.authnstatement','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.client.signature','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.encrypt','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.force.post.binding','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.multivalued.roles','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.onetimeuse.condition','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.server.signature','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml.server.signature.keyinfo.ext','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','saml_force_name_id_format','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','tls.client.certificate.bound.access.tokens','false'),('8425a10b-0c18-454f-8e31-52f401cc4fa3','use.refresh.tokens','true'),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','pkce.code.challenge.method','S256'),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','post.logout.redirect.uris','+'),('8df8c152-6526-4e1f-8a17-cd30bf941934','backchannel.logout.revoke.offline.tokens','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','backchannel.logout.session.required','true'),('8df8c152-6526-4e1f-8a17-cd30bf941934','client.secret.creation.time','1713510005'),('8df8c152-6526-4e1f-8a17-cd30bf941934','client_credentials.use_refresh_token','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','display.on.consent.screen','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','exclude.session.state.from.auth.response','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','id.token.as.detached.signature','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','oauth2.device.authorization.grant.enabled','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','oidc.ciba.grant.enabled','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','post.logout.redirect.uris','/*'),('8df8c152-6526-4e1f-8a17-cd30bf941934','require.pushed.authorization.requests','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.artifact.binding','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.assertion.signature','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.authnstatement','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.client.signature','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.encrypt','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.force.post.binding','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.multivalued.roles','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.onetimeuse.condition','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.server.signature','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml.server.signature.keyinfo.ext','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','saml_force_name_id_format','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','tls.client.certificate.bound.access.tokens','false'),('8df8c152-6526-4e1f-8a17-cd30bf941934','use.refresh.tokens','true'),('952801c4-e7b0-49ca-b4a9-efd20be3e568','pkce.code.challenge.method','S256'),('952801c4-e7b0-49ca-b4a9-efd20be3e568','post.logout.redirect.uris','+'),('96e95eed-a817-401e-9354-4921aaacbf75','post.logout.redirect.uris','+'),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','pkce.code.challenge.method','S256'),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','post.logout.redirect.uris','+'),('aee12f00-5b28-4961-9ea7-eecee0afee52','pkce.code.challenge.method','S256'),('aee12f00-5b28-4961-9ea7-eecee0afee52','post.logout.redirect.uris','+'),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','pkce.code.challenge.method','S256'),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','post.logout.redirect.uris','+'),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','post.logout.redirect.uris','+'),('d938f59f-6ba5-47bf-859f-d83db98169c5','post.logout.redirect.uris','+'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','access.token.lifespan','86400'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','acr.loa.map','{}'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','backchannel.logout.revoke.offline.tokens','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','backchannel.logout.session.required','true'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','client.secret.creation.time','1713510034'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','client.session.idle.timeout','86400'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','client.session.max.lifespan','86400'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','client_credentials.use_refresh_token','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','display.on.consent.screen','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','exclude.session.state.from.auth.response','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','frontchannel.logout.session.required','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','id.token.as.detached.signature','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','oauth2.device.authorization.grant.enabled','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','oidc.ciba.grant.enabled','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','require.pushed.authorization.requests','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.allow.ecp.flow','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.artifact.binding','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.assertion.signature','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.authnstatement','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.client.signature','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.encrypt','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.force.post.binding','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.multivalued.roles','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.onetimeuse.condition','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.server.signature','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml.server.signature.keyinfo.ext','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','saml_force_name_id_format','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','tls.client.certificate.bound.access.tokens','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','token.response.type.bearer.lower-case','false'),('eb10fd90-d139-4b9c-8747-dc7f538f9570','use.refresh.tokens','true'),('f23775bb-1054-41c4-9926-0433968d09f5','backchannel.logout.revoke.offline.tokens','false'),('f23775bb-1054-41c4-9926-0433968d09f5','backchannel.logout.session.required','true'),('f23775bb-1054-41c4-9926-0433968d09f5','client.secret.creation.time','1713510085'),('f23775bb-1054-41c4-9926-0433968d09f5','client_credentials.use_refresh_token','false'),('f23775bb-1054-41c4-9926-0433968d09f5','display.on.consent.screen','false'),('f23775bb-1054-41c4-9926-0433968d09f5','exclude.session.state.from.auth.response','false'),('f23775bb-1054-41c4-9926-0433968d09f5','id.token.as.detached.signature','false'),('f23775bb-1054-41c4-9926-0433968d09f5','oauth2.device.authorization.grant.enabled','false'),('f23775bb-1054-41c4-9926-0433968d09f5','oidc.ciba.grant.enabled','false'),('f23775bb-1054-41c4-9926-0433968d09f5','require.pushed.authorization.requests','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.artifact.binding','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.assertion.signature','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.authnstatement','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.client.signature','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.encrypt','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.force.post.binding','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.multivalued.roles','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.onetimeuse.condition','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.server.signature','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml.server.signature.keyinfo.ext','false'),('f23775bb-1054-41c4-9926-0433968d09f5','saml_force_name_id_format','false'),('f23775bb-1054-41c4-9926-0433968d09f5','tls.client.certificate.bound.access.tokens','false'),('f23775bb-1054-41c4-9926-0433968d09f5','use.refresh.tokens','true'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','backchannel.logout.revoke.offline.tokens','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','backchannel.logout.session.required','true'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','client.secret.creation.time','1713510109'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','client_credentials.use_refresh_token','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','display.on.consent.screen','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','exclude.session.state.from.auth.response','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','id.token.as.detached.signature','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','oauth2.device.authorization.grant.enabled','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','oidc.ciba.grant.enabled','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','post.logout.redirect.uris','/*'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','require.pushed.authorization.requests','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.artifact.binding','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.assertion.signature','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.authnstatement','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.client.signature','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.encrypt','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.force.post.binding','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.multivalued.roles','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.onetimeuse.condition','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.server.signature','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml.server.signature.keyinfo.ext','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','saml_force_name_id_format','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','tls.client.certificate.bound.access.tokens','false'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','use.refresh.tokens','true'),('fe98a408-4976-49d0-95e9-ed004e9878f8','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('045a382d-04fc-4b54-b859-71bd9e1f4e18','email','org2','OpenID Connect built-in scope: email','openid-connect'),('0518f266-f842-46e3-af3c-291b83e24544','roles','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect scope for add user roles to the access token','openid-connect'),('05b4d8b0-39db-4eae-8931-5139cb0d40cd','profile','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect built-in scope: profile','openid-connect'),('05cf1903-0abf-476c-90ac-f53ae455b471','role_list','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','SAML role list','saml'),('09e530ef-f724-48d3-9338-e579c2066064','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('2014246f-62e8-486e-a631-d207331979da','address','org2','OpenID Connect built-in scope: address','openid-connect'),('21113211-1f93-44a8-99fc-7609847fab0d','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('2a5f84bc-f5b4-4245-a200-d132a0e373aa','address','org1','OpenID Connect built-in scope: address','openid-connect'),('2fa9c5c6-ac49-42ad-ae24-9e851c4a4918','role_list','org5','SAML role list','saml'),('2fe9f7d5-9046-472f-8c15-c2a154bca362','microprofile-jwt','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','Microprofile - JWT built-in scope','openid-connect'),('4caa395e-bb55-439a-960b-3a1ade04170f','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('4cd0d155-40fc-4cdf-b821-baa793f41a11','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('4d81e9eb-961a-4a87-a581-ac0d423941b4','role_list','org3','SAML role list','saml'),('5248cfba-bf96-4788-a01b-34041b6bedb1','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('52b1d6ce-14ea-4340-80e7-8aca1ec269a3','email','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect built-in scope: email','openid-connect'),('54af3721-396d-4ad4-b274-e63e661f1b45','email','org4','OpenID Connect built-in scope: email','openid-connect'),('55092872-2542-49b0-aaf1-fb36f3787be8','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('55ca1eb3-d106-443f-80b1-d29e2d124118','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('5a70973c-926a-4e85-8f02-25d01990dd32','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('6cb31347-7b56-4fe1-b780-4c76d7ae0dfd','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('6d933b8a-7ec9-4819-b0bc-db4c18ed8b71','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('7204b9cf-fe56-4ae9-9263-91f9dad5ef1c','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('7261501b-b8c3-4597-ad3b-15bf0caa1bb7','web-origins','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('72ef8407-341a-43d0-9993-74df6fe62b9c','role_list','org2','SAML role list','saml'),('76b8a060-922d-47fd-abde-24292e50888f','address','org5','OpenID Connect built-in scope: address','openid-connect'),('772c2bbb-5c2b-4176-8123-23a784cd52cf','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('77c6ac10-816e-4932-82ae-70886ca392bb','address','org3','OpenID Connect built-in scope: address','openid-connect'),('7d401eb4-a7ea-4f47-ad0b-a24665acc17e','address','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect built-in scope: address','openid-connect'),('7dbabfc9-e153-4ed0-9586-091d88a612d6','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('7debac39-3dff-4265-a3db-56974b5217e0','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('80827442-99cd-4753-97a3-18087fbefe82','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('84a6524a-4f1a-45e6-a5a1-d608e7a20824','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('88c52129-16a5-4098-a30e-df32ab344c08','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('8c1a4740-fc6c-4050-ada8-9a06a998145d','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('94145db8-218f-4264-a6d7-e4f40a881945','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('976a76ca-aec1-4dd1-8485-8acfe806fa64','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('9e65ef82-445e-462d-9d04-919d9caedaae','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('a0e54315-a18b-444d-bd2c-26bcb293a034','email','org3','OpenID Connect built-in scope: email','openid-connect'),('a112c758-8533-4a6f-b47c-c10fa073b983','role_list','org1','SAML role list','saml'),('a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('b6818f56-46df-47b5-ab75-1616b47b1a1a','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('b97ab33d-3d62-493d-a1b0-8ae699d81cb0','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('b9f49760-c688-45ee-8d8a-32176fe12388','email','org5','OpenID Connect built-in scope: email','openid-connect'),('bd95f62b-006e-4c4d-a2f9-69a8305d04a5','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('c02c17db-690a-4cac-aed8-b1c88f1e9ff0','offline_access','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect built-in scope: offline_access','openid-connect'),('c3ccce01-8c61-4706-a954-fa6beca0a099','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('cb7494bb-6def-44fa-aaef-88aee8d7c693','acr','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('cf5a29e6-f9e2-443f-bc95-5d58caa1c199','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21','address','org4','OpenID Connect built-in scope: address','openid-connect'),('df15e5f5-3512-4f00-b78c-33fa683dea5c','email','org1','OpenID Connect built-in scope: email','openid-connect'),('df38df1a-e43f-42c5-bf05-2c76434bf672','phone','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','OpenID Connect built-in scope: phone','openid-connect'),('e10e4205-32e7-4b59-9ae9-7447de6b0198','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('ec2927e0-d23b-463c-9a68-6e4a71f7f7e4','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('eced6acd-69fe-43af-bb91-1e89c9d755b3','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('f8ed6e6e-41c9-497c-9faa-1e656e326494','role_list','org4','SAML role list','saml');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('045a382d-04fc-4b54-b859-71bd9e1f4e18','${emailScopeConsentText}','consent.screen.text'),('045a382d-04fc-4b54-b859-71bd9e1f4e18','true','display.on.consent.screen'),('045a382d-04fc-4b54-b859-71bd9e1f4e18','true','include.in.token.scope'),('0518f266-f842-46e3-af3c-291b83e24544','${rolesScopeConsentText}','consent.screen.text'),('0518f266-f842-46e3-af3c-291b83e24544','true','display.on.consent.screen'),('0518f266-f842-46e3-af3c-291b83e24544','false','include.in.token.scope'),('05b4d8b0-39db-4eae-8931-5139cb0d40cd','${profileScopeConsentText}','consent.screen.text'),('05b4d8b0-39db-4eae-8931-5139cb0d40cd','true','display.on.consent.screen'),('05b4d8b0-39db-4eae-8931-5139cb0d40cd','true','include.in.token.scope'),('05cf1903-0abf-476c-90ac-f53ae455b471','${samlRoleListScopeConsentText}','consent.screen.text'),('05cf1903-0abf-476c-90ac-f53ae455b471','true','display.on.consent.screen'),('09e530ef-f724-48d3-9338-e579c2066064','','consent.screen.text'),('09e530ef-f724-48d3-9338-e579c2066064','false','display.on.consent.screen'),('09e530ef-f724-48d3-9338-e579c2066064','false','include.in.token.scope'),('0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e','false','display.on.consent.screen'),('0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e','false','include.in.token.scope'),('2014246f-62e8-486e-a631-d207331979da','${addressScopeConsentText}','consent.screen.text'),('2014246f-62e8-486e-a631-d207331979da','true','display.on.consent.screen'),('2014246f-62e8-486e-a631-d207331979da','true','include.in.token.scope'),('21113211-1f93-44a8-99fc-7609847fab0d','${offlineAccessScopeConsentText}','consent.screen.text'),('21113211-1f93-44a8-99fc-7609847fab0d','true','display.on.consent.screen'),('2a5f84bc-f5b4-4245-a200-d132a0e373aa','${addressScopeConsentText}','consent.screen.text'),('2a5f84bc-f5b4-4245-a200-d132a0e373aa','true','display.on.consent.screen'),('2a5f84bc-f5b4-4245-a200-d132a0e373aa','true','include.in.token.scope'),('2fa9c5c6-ac49-42ad-ae24-9e851c4a4918','${samlRoleListScopeConsentText}','consent.screen.text'),('2fa9c5c6-ac49-42ad-ae24-9e851c4a4918','true','display.on.consent.screen'),('2fe9f7d5-9046-472f-8c15-c2a154bca362','false','display.on.consent.screen'),('2fe9f7d5-9046-472f-8c15-c2a154bca362','true','include.in.token.scope'),('4caa395e-bb55-439a-960b-3a1ade04170f','false','display.on.consent.screen'),('4caa395e-bb55-439a-960b-3a1ade04170f','true','include.in.token.scope'),('4cd0d155-40fc-4cdf-b821-baa793f41a11','${rolesScopeConsentText}','consent.screen.text'),('4cd0d155-40fc-4cdf-b821-baa793f41a11','true','display.on.consent.screen'),('4cd0d155-40fc-4cdf-b821-baa793f41a11','false','include.in.token.scope'),('4d81e9eb-961a-4a87-a581-ac0d423941b4','${samlRoleListScopeConsentText}','consent.screen.text'),('4d81e9eb-961a-4a87-a581-ac0d423941b4','true','display.on.consent.screen'),('5248cfba-bf96-4788-a01b-34041b6bedb1','false','display.on.consent.screen'),('5248cfba-bf96-4788-a01b-34041b6bedb1','true','include.in.token.scope'),('52b1d6ce-14ea-4340-80e7-8aca1ec269a3','${emailScopeConsentText}','consent.screen.text'),('52b1d6ce-14ea-4340-80e7-8aca1ec269a3','true','display.on.consent.screen'),('52b1d6ce-14ea-4340-80e7-8aca1ec269a3','true','include.in.token.scope'),('54af3721-396d-4ad4-b274-e63e661f1b45','${emailScopeConsentText}','consent.screen.text'),('54af3721-396d-4ad4-b274-e63e661f1b45','true','display.on.consent.screen'),('54af3721-396d-4ad4-b274-e63e661f1b45','true','include.in.token.scope'),('55092872-2542-49b0-aaf1-fb36f3787be8','${offlineAccessScopeConsentText}','consent.screen.text'),('55092872-2542-49b0-aaf1-fb36f3787be8','true','display.on.consent.screen'),('55ca1eb3-d106-443f-80b1-d29e2d124118','false','display.on.consent.screen'),('55ca1eb3-d106-443f-80b1-d29e2d124118','false','include.in.token.scope'),('5a70973c-926a-4e85-8f02-25d01990dd32','${rolesScopeConsentText}','consent.screen.text'),('5a70973c-926a-4e85-8f02-25d01990dd32','true','display.on.consent.screen'),('5a70973c-926a-4e85-8f02-25d01990dd32','false','include.in.token.scope'),('5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c','${profileScopeConsentText}','consent.screen.text'),('5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c','true','display.on.consent.screen'),('5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c','true','include.in.token.scope'),('6cb31347-7b56-4fe1-b780-4c76d7ae0dfd','${phoneScopeConsentText}','consent.screen.text'),('6cb31347-7b56-4fe1-b780-4c76d7ae0dfd','true','display.on.consent.screen'),('6cb31347-7b56-4fe1-b780-4c76d7ae0dfd','true','include.in.token.scope'),('6d933b8a-7ec9-4819-b0bc-db4c18ed8b71','','consent.screen.text'),('6d933b8a-7ec9-4819-b0bc-db4c18ed8b71','false','display.on.consent.screen'),('6d933b8a-7ec9-4819-b0bc-db4c18ed8b71','false','include.in.token.scope'),('7204b9cf-fe56-4ae9-9263-91f9dad5ef1c','${phoneScopeConsentText}','consent.screen.text'),('7204b9cf-fe56-4ae9-9263-91f9dad5ef1c','true','display.on.consent.screen'),('7204b9cf-fe56-4ae9-9263-91f9dad5ef1c','true','include.in.token.scope'),('7261501b-b8c3-4597-ad3b-15bf0caa1bb7','','consent.screen.text'),('7261501b-b8c3-4597-ad3b-15bf0caa1bb7','false','display.on.consent.screen'),('7261501b-b8c3-4597-ad3b-15bf0caa1bb7','false','include.in.token.scope'),('72ef8407-341a-43d0-9993-74df6fe62b9c','${samlRoleListScopeConsentText}','consent.screen.text'),('72ef8407-341a-43d0-9993-74df6fe62b9c','true','display.on.consent.screen'),('76b8a060-922d-47fd-abde-24292e50888f','${addressScopeConsentText}','consent.screen.text'),('76b8a060-922d-47fd-abde-24292e50888f','true','display.on.consent.screen'),('76b8a060-922d-47fd-abde-24292e50888f','true','include.in.token.scope'),('772c2bbb-5c2b-4176-8123-23a784cd52cf','${profileScopeConsentText}','consent.screen.text'),('772c2bbb-5c2b-4176-8123-23a784cd52cf','true','display.on.consent.screen'),('772c2bbb-5c2b-4176-8123-23a784cd52cf','true','include.in.token.scope'),('77c6ac10-816e-4932-82ae-70886ca392bb','${addressScopeConsentText}','consent.screen.text'),('77c6ac10-816e-4932-82ae-70886ca392bb','true','display.on.consent.screen'),('77c6ac10-816e-4932-82ae-70886ca392bb','true','include.in.token.scope'),('7d401eb4-a7ea-4f47-ad0b-a24665acc17e','${addressScopeConsentText}','consent.screen.text'),('7d401eb4-a7ea-4f47-ad0b-a24665acc17e','true','display.on.consent.screen'),('7d401eb4-a7ea-4f47-ad0b-a24665acc17e','true','include.in.token.scope'),('7dbabfc9-e153-4ed0-9586-091d88a612d6','${offlineAccessScopeConsentText}','consent.screen.text'),('7dbabfc9-e153-4ed0-9586-091d88a612d6','true','display.on.consent.screen'),('7debac39-3dff-4265-a3db-56974b5217e0','${profileScopeConsentText}','consent.screen.text'),('7debac39-3dff-4265-a3db-56974b5217e0','true','display.on.consent.screen'),('7debac39-3dff-4265-a3db-56974b5217e0','true','include.in.token.scope'),('80827442-99cd-4753-97a3-18087fbefe82','false','display.on.consent.screen'),('80827442-99cd-4753-97a3-18087fbefe82','false','include.in.token.scope'),('84a6524a-4f1a-45e6-a5a1-d608e7a20824','${profileScopeConsentText}','consent.screen.text'),('84a6524a-4f1a-45e6-a5a1-d608e7a20824','true','display.on.consent.screen'),('84a6524a-4f1a-45e6-a5a1-d608e7a20824','true','include.in.token.scope'),('88c52129-16a5-4098-a30e-df32ab344c08','${phoneScopeConsentText}','consent.screen.text'),('88c52129-16a5-4098-a30e-df32ab344c08','true','display.on.consent.screen'),('88c52129-16a5-4098-a30e-df32ab344c08','true','include.in.token.scope'),('8c1a4740-fc6c-4050-ada8-9a06a998145d','false','display.on.consent.screen'),('8c1a4740-fc6c-4050-ada8-9a06a998145d','false','include.in.token.scope'),('94145db8-218f-4264-a6d7-e4f40a881945','false','display.on.consent.screen'),('94145db8-218f-4264-a6d7-e4f40a881945','true','include.in.token.scope'),('976a76ca-aec1-4dd1-8485-8acfe806fa64','${offlineAccessScopeConsentText}','consent.screen.text'),('976a76ca-aec1-4dd1-8485-8acfe806fa64','true','display.on.consent.screen'),('9e65ef82-445e-462d-9d04-919d9caedaae','${phoneScopeConsentText}','consent.screen.text'),('9e65ef82-445e-462d-9d04-919d9caedaae','true','display.on.consent.screen'),('9e65ef82-445e-462d-9d04-919d9caedaae','true','include.in.token.scope'),('a0e54315-a18b-444d-bd2c-26bcb293a034','${emailScopeConsentText}','consent.screen.text'),('a0e54315-a18b-444d-bd2c-26bcb293a034','true','display.on.consent.screen'),('a0e54315-a18b-444d-bd2c-26bcb293a034','true','include.in.token.scope'),('a112c758-8533-4a6f-b47c-c10fa073b983','${samlRoleListScopeConsentText}','consent.screen.text'),('a112c758-8533-4a6f-b47c-c10fa073b983','true','display.on.consent.screen'),('a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c','','consent.screen.text'),('a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c','false','display.on.consent.screen'),('a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c','false','include.in.token.scope'),('a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd','${offlineAccessScopeConsentText}','consent.screen.text'),('a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd','true','display.on.consent.screen'),('b6818f56-46df-47b5-ab75-1616b47b1a1a','','consent.screen.text'),('b6818f56-46df-47b5-ab75-1616b47b1a1a','false','display.on.consent.screen'),('b6818f56-46df-47b5-ab75-1616b47b1a1a','false','include.in.token.scope'),('b97ab33d-3d62-493d-a1b0-8ae699d81cb0','${profileScopeConsentText}','consent.screen.text'),('b97ab33d-3d62-493d-a1b0-8ae699d81cb0','true','display.on.consent.screen'),('b97ab33d-3d62-493d-a1b0-8ae699d81cb0','true','include.in.token.scope'),('b9f49760-c688-45ee-8d8a-32176fe12388','${emailScopeConsentText}','consent.screen.text'),('b9f49760-c688-45ee-8d8a-32176fe12388','true','display.on.consent.screen'),('b9f49760-c688-45ee-8d8a-32176fe12388','true','include.in.token.scope'),('bd95f62b-006e-4c4d-a2f9-69a8305d04a5','${phoneScopeConsentText}','consent.screen.text'),('bd95f62b-006e-4c4d-a2f9-69a8305d04a5','true','display.on.consent.screen'),('bd95f62b-006e-4c4d-a2f9-69a8305d04a5','true','include.in.token.scope'),('c02c17db-690a-4cac-aed8-b1c88f1e9ff0','${offlineAccessScopeConsentText}','consent.screen.text'),('c02c17db-690a-4cac-aed8-b1c88f1e9ff0','true','display.on.consent.screen'),('c3ccce01-8c61-4706-a954-fa6beca0a099','false','display.on.consent.screen'),('c3ccce01-8c61-4706-a954-fa6beca0a099','true','include.in.token.scope'),('cb7494bb-6def-44fa-aaef-88aee8d7c693','false','display.on.consent.screen'),('cb7494bb-6def-44fa-aaef-88aee8d7c693','false','include.in.token.scope'),('cf5a29e6-f9e2-443f-bc95-5d58caa1c199','','consent.screen.text'),('cf5a29e6-f9e2-443f-bc95-5d58caa1c199','false','display.on.consent.screen'),('cf5a29e6-f9e2-443f-bc95-5d58caa1c199','false','include.in.token.scope'),('d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21','${addressScopeConsentText}','consent.screen.text'),('d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21','true','display.on.consent.screen'),('d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21','true','include.in.token.scope'),('df15e5f5-3512-4f00-b78c-33fa683dea5c','${emailScopeConsentText}','consent.screen.text'),('df15e5f5-3512-4f00-b78c-33fa683dea5c','true','display.on.consent.screen'),('df15e5f5-3512-4f00-b78c-33fa683dea5c','true','include.in.token.scope'),('df38df1a-e43f-42c5-bf05-2c76434bf672','${phoneScopeConsentText}','consent.screen.text'),('df38df1a-e43f-42c5-bf05-2c76434bf672','true','display.on.consent.screen'),('df38df1a-e43f-42c5-bf05-2c76434bf672','true','include.in.token.scope'),('e10e4205-32e7-4b59-9ae9-7447de6b0198','${rolesScopeConsentText}','consent.screen.text'),('e10e4205-32e7-4b59-9ae9-7447de6b0198','true','display.on.consent.screen'),('e10e4205-32e7-4b59-9ae9-7447de6b0198','false','include.in.token.scope'),('ec2927e0-d23b-463c-9a68-6e4a71f7f7e4','${rolesScopeConsentText}','consent.screen.text'),('ec2927e0-d23b-463c-9a68-6e4a71f7f7e4','true','display.on.consent.screen'),('ec2927e0-d23b-463c-9a68-6e4a71f7f7e4','false','include.in.token.scope'),('eced6acd-69fe-43af-bb91-1e89c9d755b3','false','display.on.consent.screen'),('eced6acd-69fe-43af-bb91-1e89c9d755b3','true','include.in.token.scope'),('f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81','${rolesScopeConsentText}','consent.screen.text'),('f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81','true','display.on.consent.screen'),('f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81','false','include.in.token.scope'),('f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5','false','display.on.consent.screen'),('f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5','false','include.in.token.scope'),('f8ed6e6e-41c9-497c-9faa-1e656e326494','${samlRoleListScopeConsentText}','consent.screen.text'),('f8ed6e6e-41c9-497c-9faa-1e656e326494','true','display.on.consent.screen');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('02df28b1-a10c-4922-a647-d0556610a0b4','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('02df28b1-a10c-4922-a647-d0556610a0b4','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('02df28b1-a10c-4922-a647-d0556610a0b4','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('02df28b1-a10c-4922-a647-d0556610a0b4','94145db8-218f-4264-a6d7-e4f40a881945',0),('02df28b1-a10c-4922-a647-d0556610a0b4','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('02df28b1-a10c-4922-a647-d0556610a0b4','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('02df28b1-a10c-4922-a647-d0556610a0b4','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('02df28b1-a10c-4922-a647-d0556610a0b4','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('02df28b1-a10c-4922-a647-d0556610a0b4','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('03391363-23ec-4e81-8f2b-a37e8f923e77','55092872-2542-49b0-aaf1-fb36f3787be8',0),('03391363-23ec-4e81-8f2b-a37e8f923e77','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('03391363-23ec-4e81-8f2b-a37e8f923e77','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('03391363-23ec-4e81-8f2b-a37e8f923e77','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('03391363-23ec-4e81-8f2b-a37e8f923e77','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('03391363-23ec-4e81-8f2b-a37e8f923e77','77c6ac10-816e-4932-82ae-70886ca392bb',0),('03391363-23ec-4e81-8f2b-a37e8f923e77','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('03391363-23ec-4e81-8f2b-a37e8f923e77','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('03391363-23ec-4e81-8f2b-a37e8f923e77','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','21113211-1f93-44a8-99fc-7609847fab0d',0),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','54af3721-396d-4ad4-b274-e63e661f1b45',1),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','5a70973c-926a-4e85-8f02-25d01990dd32',1),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','88c52129-16a5-4098-a30e-df32ab344c08',0),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('0d673718-5842-4ef7-a3e3-5e5c56facd92','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('0d673718-5842-4ef7-a3e3-5e5c56facd92','2014246f-62e8-486e-a631-d207331979da',0),('0d673718-5842-4ef7-a3e3-5e5c56facd92','4caa395e-bb55-439a-960b-3a1ade04170f',0),('0d673718-5842-4ef7-a3e3-5e5c56facd92','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('0d673718-5842-4ef7-a3e3-5e5c56facd92','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('0d673718-5842-4ef7-a3e3-5e5c56facd92','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('0d673718-5842-4ef7-a3e3-5e5c56facd92','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('0d673718-5842-4ef7-a3e3-5e5c56facd92','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('0d673718-5842-4ef7-a3e3-5e5c56facd92','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('1575d963-79a7-4bda-b45e-59a9e311f4f7','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('1575d963-79a7-4bda-b45e-59a9e311f4f7','2014246f-62e8-486e-a631-d207331979da',0),('1575d963-79a7-4bda-b45e-59a9e311f4f7','4caa395e-bb55-439a-960b-3a1ade04170f',0),('1575d963-79a7-4bda-b45e-59a9e311f4f7','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('1575d963-79a7-4bda-b45e-59a9e311f4f7','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('1575d963-79a7-4bda-b45e-59a9e311f4f7','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('1575d963-79a7-4bda-b45e-59a9e311f4f7','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('1575d963-79a7-4bda-b45e-59a9e311f4f7','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('1575d963-79a7-4bda-b45e-59a9e311f4f7','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','94145db8-218f-4264-a6d7-e4f40a881945',0),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('1992bf26-2d15-41a1-8f1b-2557fcf8374b','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('1c184606-8ae2-4680-a1a1-7c84b476e267','55092872-2542-49b0-aaf1-fb36f3787be8',0),('1c184606-8ae2-4680-a1a1-7c84b476e267','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('1c184606-8ae2-4680-a1a1-7c84b476e267','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('1c184606-8ae2-4680-a1a1-7c84b476e267','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('1c184606-8ae2-4680-a1a1-7c84b476e267','77c6ac10-816e-4932-82ae-70886ca392bb',0),('1c184606-8ae2-4680-a1a1-7c84b476e267','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('1c184606-8ae2-4680-a1a1-7c84b476e267','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('1c184606-8ae2-4680-a1a1-7c84b476e267','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','94145db8-218f-4264-a6d7-e4f40a881945',0),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','94145db8-218f-4264-a6d7-e4f40a881945',0),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','21113211-1f93-44a8-99fc-7609847fab0d',0),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','54af3721-396d-4ad4-b274-e63e661f1b45',1),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','5a70973c-926a-4e85-8f02-25d01990dd32',1),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','88c52129-16a5-4098-a30e-df32ab344c08',0),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('24ed2917-fc28-4497-a58d-ff301d928753','55092872-2542-49b0-aaf1-fb36f3787be8',0),('24ed2917-fc28-4497-a58d-ff301d928753','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('24ed2917-fc28-4497-a58d-ff301d928753','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('24ed2917-fc28-4497-a58d-ff301d928753','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('24ed2917-fc28-4497-a58d-ff301d928753','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('24ed2917-fc28-4497-a58d-ff301d928753','77c6ac10-816e-4932-82ae-70886ca392bb',0),('24ed2917-fc28-4497-a58d-ff301d928753','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('24ed2917-fc28-4497-a58d-ff301d928753','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('24ed2917-fc28-4497-a58d-ff301d928753','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('24f98cd6-b2a8-4f39-af89-313b02d589f7','09e530ef-f724-48d3-9338-e579c2066064',1),('24f98cd6-b2a8-4f39-af89-313b02d589f7','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('24f98cd6-b2a8-4f39-af89-313b02d589f7','76b8a060-922d-47fd-abde-24292e50888f',0),('24f98cd6-b2a8-4f39-af89-313b02d589f7','7debac39-3dff-4265-a3db-56974b5217e0',1),('24f98cd6-b2a8-4f39-af89-313b02d589f7','80827442-99cd-4753-97a3-18087fbefe82',1),('24f98cd6-b2a8-4f39-af89-313b02d589f7','9e65ef82-445e-462d-9d04-919d9caedaae',0),('24f98cd6-b2a8-4f39-af89-313b02d589f7','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('24f98cd6-b2a8-4f39-af89-313b02d589f7','b9f49760-c688-45ee-8d8a-32176fe12388',1),('24f98cd6-b2a8-4f39-af89-313b02d589f7','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('2b2ecc28-48e5-4d13-944e-b967140b61ab','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('2b2ecc28-48e5-4d13-944e-b967140b61ab','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('2b2ecc28-48e5-4d13-944e-b967140b61ab','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('2b2ecc28-48e5-4d13-944e-b967140b61ab','94145db8-218f-4264-a6d7-e4f40a881945',0),('2b2ecc28-48e5-4d13-944e-b967140b61ab','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('2b2ecc28-48e5-4d13-944e-b967140b61ab','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('2b2ecc28-48e5-4d13-944e-b967140b61ab','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('2b2ecc28-48e5-4d13-944e-b967140b61ab','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('2b2ecc28-48e5-4d13-944e-b967140b61ab','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','2014246f-62e8-486e-a631-d207331979da',0),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','4caa395e-bb55-439a-960b-3a1ade04170f',0),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('304c3eb1-05ff-4f53-82ce-85ea09021445','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('304c3eb1-05ff-4f53-82ce-85ea09021445','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('304c3eb1-05ff-4f53-82ce-85ea09021445','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('304c3eb1-05ff-4f53-82ce-85ea09021445','94145db8-218f-4264-a6d7-e4f40a881945',0),('304c3eb1-05ff-4f53-82ce-85ea09021445','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('304c3eb1-05ff-4f53-82ce-85ea09021445','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('304c3eb1-05ff-4f53-82ce-85ea09021445','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('304c3eb1-05ff-4f53-82ce-85ea09021445','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('304c3eb1-05ff-4f53-82ce-85ea09021445','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('3214c83b-b319-46db-83e0-a3afa51f5a5e','21113211-1f93-44a8-99fc-7609847fab0d',0),('3214c83b-b319-46db-83e0-a3afa51f5a5e','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('3214c83b-b319-46db-83e0-a3afa51f5a5e','54af3721-396d-4ad4-b274-e63e661f1b45',1),('3214c83b-b319-46db-83e0-a3afa51f5a5e','5a70973c-926a-4e85-8f02-25d01990dd32',1),('3214c83b-b319-46db-83e0-a3afa51f5a5e','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('3214c83b-b319-46db-83e0-a3afa51f5a5e','88c52129-16a5-4098-a30e-df32ab344c08',0),('3214c83b-b319-46db-83e0-a3afa51f5a5e','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('3214c83b-b319-46db-83e0-a3afa51f5a5e','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('34098bc0-970f-4e77-a7a7-cb7b504847bb','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('34098bc0-970f-4e77-a7a7-cb7b504847bb','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('34098bc0-970f-4e77-a7a7-cb7b504847bb','94145db8-218f-4264-a6d7-e4f40a881945',0),('34098bc0-970f-4e77-a7a7-cb7b504847bb','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('34098bc0-970f-4e77-a7a7-cb7b504847bb','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('34098bc0-970f-4e77-a7a7-cb7b504847bb','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('34098bc0-970f-4e77-a7a7-cb7b504847bb','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('34098bc0-970f-4e77-a7a7-cb7b504847bb','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('355fa74c-6a60-4119-a038-c1100c2a2c91','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('355fa74c-6a60-4119-a038-c1100c2a2c91','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('355fa74c-6a60-4119-a038-c1100c2a2c91','94145db8-218f-4264-a6d7-e4f40a881945',0),('355fa74c-6a60-4119-a038-c1100c2a2c91','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('355fa74c-6a60-4119-a038-c1100c2a2c91','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('355fa74c-6a60-4119-a038-c1100c2a2c91','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('355fa74c-6a60-4119-a038-c1100c2a2c91','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('355fa74c-6a60-4119-a038-c1100c2a2c91','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','0518f266-f842-46e3-af3c-291b83e24544',1),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('363fac61-632a-41c3-83f7-e08604b3640f','0518f266-f842-46e3-af3c-291b83e24544',1),('363fac61-632a-41c3-83f7-e08604b3640f','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('363fac61-632a-41c3-83f7-e08604b3640f','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('363fac61-632a-41c3-83f7-e08604b3640f','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('363fac61-632a-41c3-83f7-e08604b3640f','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('363fac61-632a-41c3-83f7-e08604b3640f','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('363fac61-632a-41c3-83f7-e08604b3640f','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('363fac61-632a-41c3-83f7-e08604b3640f','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('363fac61-632a-41c3-83f7-e08604b3640f','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('37c31529-1e2b-4155-889c-7e141dfda92b','09e530ef-f724-48d3-9338-e579c2066064',1),('37c31529-1e2b-4155-889c-7e141dfda92b','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('37c31529-1e2b-4155-889c-7e141dfda92b','76b8a060-922d-47fd-abde-24292e50888f',0),('37c31529-1e2b-4155-889c-7e141dfda92b','7debac39-3dff-4265-a3db-56974b5217e0',1),('37c31529-1e2b-4155-889c-7e141dfda92b','9e65ef82-445e-462d-9d04-919d9caedaae',0),('37c31529-1e2b-4155-889c-7e141dfda92b','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('37c31529-1e2b-4155-889c-7e141dfda92b','b9f49760-c688-45ee-8d8a-32176fe12388',1),('37c31529-1e2b-4155-889c-7e141dfda92b','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('3984d86b-527c-4ea9-8a14-2503b2dec747','55092872-2542-49b0-aaf1-fb36f3787be8',0),('3984d86b-527c-4ea9-8a14-2503b2dec747','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('3984d86b-527c-4ea9-8a14-2503b2dec747','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('3984d86b-527c-4ea9-8a14-2503b2dec747','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('3984d86b-527c-4ea9-8a14-2503b2dec747','77c6ac10-816e-4932-82ae-70886ca392bb',0),('3984d86b-527c-4ea9-8a14-2503b2dec747','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('3984d86b-527c-4ea9-8a14-2503b2dec747','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('3984d86b-527c-4ea9-8a14-2503b2dec747','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','0518f266-f842-46e3-af3c-291b83e24544',1),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('4eb2732c-de36-4cf3-b53e-be0cc476fbb9','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','2014246f-62e8-486e-a631-d207331979da',0),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','4caa395e-bb55-439a-960b-3a1ade04170f',0),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('5201f3dc-03da-4378-bbca-43dbcb169951','0518f266-f842-46e3-af3c-291b83e24544',1),('5201f3dc-03da-4378-bbca-43dbcb169951','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('5201f3dc-03da-4378-bbca-43dbcb169951','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('5201f3dc-03da-4378-bbca-43dbcb169951','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('5201f3dc-03da-4378-bbca-43dbcb169951','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('5201f3dc-03da-4378-bbca-43dbcb169951','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('5201f3dc-03da-4378-bbca-43dbcb169951','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('5201f3dc-03da-4378-bbca-43dbcb169951','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('5330b543-f669-4159-976e-c9fbbe5170c4','55092872-2542-49b0-aaf1-fb36f3787be8',0),('5330b543-f669-4159-976e-c9fbbe5170c4','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('5330b543-f669-4159-976e-c9fbbe5170c4','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('5330b543-f669-4159-976e-c9fbbe5170c4','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('5330b543-f669-4159-976e-c9fbbe5170c4','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('5330b543-f669-4159-976e-c9fbbe5170c4','77c6ac10-816e-4932-82ae-70886ca392bb',0),('5330b543-f669-4159-976e-c9fbbe5170c4','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('5330b543-f669-4159-976e-c9fbbe5170c4','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('5330b543-f669-4159-976e-c9fbbe5170c4','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','55092872-2542-49b0-aaf1-fb36f3787be8',0),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','77c6ac10-816e-4932-82ae-70886ca392bb',0),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('606eedf0-fb2b-41a7-b156-8a346cc31c87','21113211-1f93-44a8-99fc-7609847fab0d',0),('606eedf0-fb2b-41a7-b156-8a346cc31c87','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('606eedf0-fb2b-41a7-b156-8a346cc31c87','54af3721-396d-4ad4-b274-e63e661f1b45',1),('606eedf0-fb2b-41a7-b156-8a346cc31c87','5a70973c-926a-4e85-8f02-25d01990dd32',1),('606eedf0-fb2b-41a7-b156-8a346cc31c87','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('606eedf0-fb2b-41a7-b156-8a346cc31c87','88c52129-16a5-4098-a30e-df32ab344c08',0),('606eedf0-fb2b-41a7-b156-8a346cc31c87','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('606eedf0-fb2b-41a7-b156-8a346cc31c87','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('626b586e-9d30-41b5-be22-20c228e0a428','09e530ef-f724-48d3-9338-e579c2066064',1),('626b586e-9d30-41b5-be22-20c228e0a428','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('626b586e-9d30-41b5-be22-20c228e0a428','76b8a060-922d-47fd-abde-24292e50888f',0),('626b586e-9d30-41b5-be22-20c228e0a428','7debac39-3dff-4265-a3db-56974b5217e0',1),('626b586e-9d30-41b5-be22-20c228e0a428','80827442-99cd-4753-97a3-18087fbefe82',1),('626b586e-9d30-41b5-be22-20c228e0a428','9e65ef82-445e-462d-9d04-919d9caedaae',0),('626b586e-9d30-41b5-be22-20c228e0a428','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('626b586e-9d30-41b5-be22-20c228e0a428','b9f49760-c688-45ee-8d8a-32176fe12388',1),('626b586e-9d30-41b5-be22-20c228e0a428','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('6336ceed-4c7e-4514-889a-3bc726cdc69f','0518f266-f842-46e3-af3c-291b83e24544',1),('6336ceed-4c7e-4514-889a-3bc726cdc69f','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('6336ceed-4c7e-4514-889a-3bc726cdc69f','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('6336ceed-4c7e-4514-889a-3bc726cdc69f','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('6336ceed-4c7e-4514-889a-3bc726cdc69f','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('6336ceed-4c7e-4514-889a-3bc726cdc69f','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('6336ceed-4c7e-4514-889a-3bc726cdc69f','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('6336ceed-4c7e-4514-889a-3bc726cdc69f','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('6336ceed-4c7e-4514-889a-3bc726cdc69f','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','09e530ef-f724-48d3-9338-e579c2066064',1),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','76b8a060-922d-47fd-abde-24292e50888f',0),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','7debac39-3dff-4265-a3db-56974b5217e0',1),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','9e65ef82-445e-462d-9d04-919d9caedaae',0),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','b9f49760-c688-45ee-8d8a-32176fe12388',1),('6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','09e530ef-f724-48d3-9338-e579c2066064',1),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','76b8a060-922d-47fd-abde-24292e50888f',0),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','7debac39-3dff-4265-a3db-56974b5217e0',1),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','80827442-99cd-4753-97a3-18087fbefe82',1),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','9e65ef82-445e-462d-9d04-919d9caedaae',0),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','b9f49760-c688-45ee-8d8a-32176fe12388',1),('719d0df3-cac2-4cc5-bdd6-9bc68d5528c0','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','55092872-2542-49b0-aaf1-fb36f3787be8',0),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','77c6ac10-816e-4932-82ae-70886ca392bb',0),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('74d5f744-c8a2-432f-9e41-ddfc08dc8805','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','21113211-1f93-44a8-99fc-7609847fab0d',0),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','54af3721-396d-4ad4-b274-e63e661f1b45',1),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','5a70973c-926a-4e85-8f02-25d01990dd32',1),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','88c52129-16a5-4098-a30e-df32ab344c08',0),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('758a5b70-29fb-4db8-8b3a-56a7fa79c816','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('785e2512-8d84-40ce-b101-d49a905d15a9','0518f266-f842-46e3-af3c-291b83e24544',1),('785e2512-8d84-40ce-b101-d49a905d15a9','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('785e2512-8d84-40ce-b101-d49a905d15a9','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('785e2512-8d84-40ce-b101-d49a905d15a9','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('785e2512-8d84-40ce-b101-d49a905d15a9','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('785e2512-8d84-40ce-b101-d49a905d15a9','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('785e2512-8d84-40ce-b101-d49a905d15a9','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('785e2512-8d84-40ce-b101-d49a905d15a9','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','0518f266-f842-46e3-af3c-291b83e24544',1),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('7ef2d2f9-fb89-4015-b8a9-8a702eaae99f','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('81ee8f29-012c-49e5-a7f9-bf6080d53320','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('81ee8f29-012c-49e5-a7f9-bf6080d53320','2014246f-62e8-486e-a631-d207331979da',0),('81ee8f29-012c-49e5-a7f9-bf6080d53320','4caa395e-bb55-439a-960b-3a1ade04170f',0),('81ee8f29-012c-49e5-a7f9-bf6080d53320','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('81ee8f29-012c-49e5-a7f9-bf6080d53320','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('81ee8f29-012c-49e5-a7f9-bf6080d53320','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('81ee8f29-012c-49e5-a7f9-bf6080d53320','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('81ee8f29-012c-49e5-a7f9-bf6080d53320','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('8425a10b-0c18-454f-8e31-52f401cc4fa3','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('8425a10b-0c18-454f-8e31-52f401cc4fa3','2014246f-62e8-486e-a631-d207331979da',0),('8425a10b-0c18-454f-8e31-52f401cc4fa3','4caa395e-bb55-439a-960b-3a1ade04170f',0),('8425a10b-0c18-454f-8e31-52f401cc4fa3','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('8425a10b-0c18-454f-8e31-52f401cc4fa3','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('8425a10b-0c18-454f-8e31-52f401cc4fa3','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('8425a10b-0c18-454f-8e31-52f401cc4fa3','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('8425a10b-0c18-454f-8e31-52f401cc4fa3','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','55092872-2542-49b0-aaf1-fb36f3787be8',0),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','77c6ac10-816e-4932-82ae-70886ca392bb',0),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('8df8c152-6526-4e1f-8a17-cd30bf941934','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('8df8c152-6526-4e1f-8a17-cd30bf941934','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('8df8c152-6526-4e1f-8a17-cd30bf941934','94145db8-218f-4264-a6d7-e4f40a881945',0),('8df8c152-6526-4e1f-8a17-cd30bf941934','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('8df8c152-6526-4e1f-8a17-cd30bf941934','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('8df8c152-6526-4e1f-8a17-cd30bf941934','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('8df8c152-6526-4e1f-8a17-cd30bf941934','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('8df8c152-6526-4e1f-8a17-cd30bf941934','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('952801c4-e7b0-49ca-b4a9-efd20be3e568','09e530ef-f724-48d3-9338-e579c2066064',1),('952801c4-e7b0-49ca-b4a9-efd20be3e568','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('952801c4-e7b0-49ca-b4a9-efd20be3e568','76b8a060-922d-47fd-abde-24292e50888f',0),('952801c4-e7b0-49ca-b4a9-efd20be3e568','7debac39-3dff-4265-a3db-56974b5217e0',1),('952801c4-e7b0-49ca-b4a9-efd20be3e568','80827442-99cd-4753-97a3-18087fbefe82',1),('952801c4-e7b0-49ca-b4a9-efd20be3e568','9e65ef82-445e-462d-9d04-919d9caedaae',0),('952801c4-e7b0-49ca-b4a9-efd20be3e568','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('952801c4-e7b0-49ca-b4a9-efd20be3e568','b9f49760-c688-45ee-8d8a-32176fe12388',1),('952801c4-e7b0-49ca-b4a9-efd20be3e568','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('96e95eed-a817-401e-9354-4921aaacbf75','21113211-1f93-44a8-99fc-7609847fab0d',0),('96e95eed-a817-401e-9354-4921aaacbf75','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('96e95eed-a817-401e-9354-4921aaacbf75','54af3721-396d-4ad4-b274-e63e661f1b45',1),('96e95eed-a817-401e-9354-4921aaacbf75','5a70973c-926a-4e85-8f02-25d01990dd32',1),('96e95eed-a817-401e-9354-4921aaacbf75','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('96e95eed-a817-401e-9354-4921aaacbf75','88c52129-16a5-4098-a30e-df32ab344c08',0),('96e95eed-a817-401e-9354-4921aaacbf75','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('96e95eed-a817-401e-9354-4921aaacbf75','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('96e95eed-a817-401e-9354-4921aaacbf75','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('a100e84c-49c0-4899-9320-8c4bb0904012','09e530ef-f724-48d3-9338-e579c2066064',1),('a100e84c-49c0-4899-9320-8c4bb0904012','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('a100e84c-49c0-4899-9320-8c4bb0904012','76b8a060-922d-47fd-abde-24292e50888f',0),('a100e84c-49c0-4899-9320-8c4bb0904012','7debac39-3dff-4265-a3db-56974b5217e0',1),('a100e84c-49c0-4899-9320-8c4bb0904012','80827442-99cd-4753-97a3-18087fbefe82',1),('a100e84c-49c0-4899-9320-8c4bb0904012','9e65ef82-445e-462d-9d04-919d9caedaae',0),('a100e84c-49c0-4899-9320-8c4bb0904012','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('a100e84c-49c0-4899-9320-8c4bb0904012','b9f49760-c688-45ee-8d8a-32176fe12388',1),('a100e84c-49c0-4899-9320-8c4bb0904012','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','21113211-1f93-44a8-99fc-7609847fab0d',0),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','54af3721-396d-4ad4-b274-e63e661f1b45',1),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','5a70973c-926a-4e85-8f02-25d01990dd32',1),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','88c52129-16a5-4098-a30e-df32ab344c08',0),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('a8f62e83-6fcd-4d72-8807-19c2929ebdf8','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','21113211-1f93-44a8-99fc-7609847fab0d',0),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','54af3721-396d-4ad4-b274-e63e661f1b45',1),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','5a70973c-926a-4e85-8f02-25d01990dd32',1),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','88c52129-16a5-4098-a30e-df32ab344c08',0),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','09e530ef-f724-48d3-9338-e579c2066064',1),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','76b8a060-922d-47fd-abde-24292e50888f',0),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','7debac39-3dff-4265-a3db-56974b5217e0',1),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','80827442-99cd-4753-97a3-18087fbefe82',1),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','9e65ef82-445e-462d-9d04-919d9caedaae',0),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','b9f49760-c688-45ee-8d8a-32176fe12388',1),('ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('aee12f00-5b28-4961-9ea7-eecee0afee52','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('aee12f00-5b28-4961-9ea7-eecee0afee52','2014246f-62e8-486e-a631-d207331979da',0),('aee12f00-5b28-4961-9ea7-eecee0afee52','4caa395e-bb55-439a-960b-3a1ade04170f',0),('aee12f00-5b28-4961-9ea7-eecee0afee52','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('aee12f00-5b28-4961-9ea7-eecee0afee52','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('aee12f00-5b28-4961-9ea7-eecee0afee52','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('aee12f00-5b28-4961-9ea7-eecee0afee52','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('aee12f00-5b28-4961-9ea7-eecee0afee52','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('aee12f00-5b28-4961-9ea7-eecee0afee52','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','0518f266-f842-46e3-af3c-291b83e24544',1),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','21113211-1f93-44a8-99fc-7609847fab0d',0),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','54af3721-396d-4ad4-b274-e63e661f1b45',1),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','5a70973c-926a-4e85-8f02-25d01990dd32',1),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','88c52129-16a5-4098-a30e-df32ab344c08',0),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('c21fffec-d02f-4fa9-82f0-74cff821210f','0518f266-f842-46e3-af3c-291b83e24544',1),('c21fffec-d02f-4fa9-82f0-74cff821210f','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('c21fffec-d02f-4fa9-82f0-74cff821210f','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('c21fffec-d02f-4fa9-82f0-74cff821210f','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('c21fffec-d02f-4fa9-82f0-74cff821210f','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('c21fffec-d02f-4fa9-82f0-74cff821210f','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('c21fffec-d02f-4fa9-82f0-74cff821210f','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('c21fffec-d02f-4fa9-82f0-74cff821210f','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('c21fffec-d02f-4fa9-82f0-74cff821210f','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','2014246f-62e8-486e-a631-d207331979da',0),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','4caa395e-bb55-439a-960b-3a1ade04170f',0),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('c90bd68b-0d21-4c38-8cad-5b1ff209b5b1','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','94145db8-218f-4264-a6d7-e4f40a881945',0),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('d938f59f-6ba5-47bf-859f-d83db98169c5','09e530ef-f724-48d3-9338-e579c2066064',1),('d938f59f-6ba5-47bf-859f-d83db98169c5','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('d938f59f-6ba5-47bf-859f-d83db98169c5','76b8a060-922d-47fd-abde-24292e50888f',0),('d938f59f-6ba5-47bf-859f-d83db98169c5','7debac39-3dff-4265-a3db-56974b5217e0',1),('d938f59f-6ba5-47bf-859f-d83db98169c5','80827442-99cd-4753-97a3-18087fbefe82',1),('d938f59f-6ba5-47bf-859f-d83db98169c5','9e65ef82-445e-462d-9d04-919d9caedaae',0),('d938f59f-6ba5-47bf-859f-d83db98169c5','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('d938f59f-6ba5-47bf-859f-d83db98169c5','b9f49760-c688-45ee-8d8a-32176fe12388',1),('d938f59f-6ba5-47bf-859f-d83db98169c5','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('df3e6358-9c76-4839-9284-5cbcfa574ffa','55092872-2542-49b0-aaf1-fb36f3787be8',0),('df3e6358-9c76-4839-9284-5cbcfa574ffa','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('df3e6358-9c76-4839-9284-5cbcfa574ffa','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('df3e6358-9c76-4839-9284-5cbcfa574ffa','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('df3e6358-9c76-4839-9284-5cbcfa574ffa','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('df3e6358-9c76-4839-9284-5cbcfa574ffa','77c6ac10-816e-4932-82ae-70886ca392bb',0),('df3e6358-9c76-4839-9284-5cbcfa574ffa','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('df3e6358-9c76-4839-9284-5cbcfa574ffa','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('df3e6358-9c76-4839-9284-5cbcfa574ffa','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('eb10fd90-d139-4b9c-8747-dc7f538f9570','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('eb10fd90-d139-4b9c-8747-dc7f538f9570','2014246f-62e8-486e-a631-d207331979da',0),('eb10fd90-d139-4b9c-8747-dc7f538f9570','4caa395e-bb55-439a-960b-3a1ade04170f',0),('eb10fd90-d139-4b9c-8747-dc7f538f9570','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('eb10fd90-d139-4b9c-8747-dc7f538f9570','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('eb10fd90-d139-4b9c-8747-dc7f538f9570','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('eb10fd90-d139-4b9c-8747-dc7f538f9570','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('eb10fd90-d139-4b9c-8747-dc7f538f9570','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('eb10fd90-d139-4b9c-8747-dc7f538f9570','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('f23775bb-1054-41c4-9926-0433968d09f5','21113211-1f93-44a8-99fc-7609847fab0d',0),('f23775bb-1054-41c4-9926-0433968d09f5','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('f23775bb-1054-41c4-9926-0433968d09f5','54af3721-396d-4ad4-b274-e63e661f1b45',1),('f23775bb-1054-41c4-9926-0433968d09f5','5a70973c-926a-4e85-8f02-25d01990dd32',1),('f23775bb-1054-41c4-9926-0433968d09f5','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('f23775bb-1054-41c4-9926-0433968d09f5','88c52129-16a5-4098-a30e-df32ab344c08',0),('f23775bb-1054-41c4-9926-0433968d09f5','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('f23775bb-1054-41c4-9926-0433968d09f5','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('f24468e1-6d34-4675-9efc-3dff1ea030a0','09e530ef-f724-48d3-9338-e579c2066064',1),('f24468e1-6d34-4675-9efc-3dff1ea030a0','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('f24468e1-6d34-4675-9efc-3dff1ea030a0','76b8a060-922d-47fd-abde-24292e50888f',0),('f24468e1-6d34-4675-9efc-3dff1ea030a0','7debac39-3dff-4265-a3db-56974b5217e0',1),('f24468e1-6d34-4675-9efc-3dff1ea030a0','9e65ef82-445e-462d-9d04-919d9caedaae',0),('f24468e1-6d34-4675-9efc-3dff1ea030a0','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('f24468e1-6d34-4675-9efc-3dff1ea030a0','b9f49760-c688-45ee-8d8a-32176fe12388',1),('f24468e1-6d34-4675-9efc-3dff1ea030a0','eced6acd-69fe-43af-bb91-1e89c9d755b3',0),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','2014246f-62e8-486e-a631-d207331979da',0),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','4caa395e-bb55-439a-960b-3a1ade04170f',0),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('f5ca6b8a-1544-4e07-9f51-7c28700ac148','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('fe98a408-4976-49d0-95e9-ed004e9878f8','55092872-2542-49b0-aaf1-fb36f3787be8',0),('fe98a408-4976-49d0-95e9-ed004e9878f8','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('fe98a408-4976-49d0-95e9-ed004e9878f8','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('fe98a408-4976-49d0-95e9-ed004e9878f8','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('fe98a408-4976-49d0-95e9-ed004e9878f8','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('fe98a408-4976-49d0-95e9-ed004e9878f8','77c6ac10-816e-4932-82ae-70886ca392bb',0),('fe98a408-4976-49d0-95e9-ed004e9878f8','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('fe98a408-4976-49d0-95e9-ed004e9878f8','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('fe98a408-4976-49d0-95e9-ed004e9878f8','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1);
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('21113211-1f93-44a8-99fc-7609847fab0d','d5cc2636-d311-4707-8e6f-78606f3efa53'),('55092872-2542-49b0-aaf1-fb36f3787be8','87a1b1a0-04b9-4ed7-984e-9dfd23a3e4bf'),('7dbabfc9-e153-4ed0-9586-091d88a612d6','ab9fb393-4d2f-4f12-888f-ba294d50f974'),('976a76ca-aec1-4dd1-8485-8acfe806fa64','7968f80d-2690-404e-b010-6df02b813f4e'),('a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd','cac3d91d-0b0c-46d7-9155-9832fe9d84b9'),('c02c17db-690a-4cac-aed8-b1c88f1e9ff0','317a29b9-6c0b-412d-8aa8-00196e8fafe2');
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
INSERT INTO `COMPONENT` VALUES ('02a00557-5b16-4e09-a18f-69ab5ca8d5fa','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('1062521b-10d7-4503-b695-3a5ea8200cc4','hmac-generated-hs512','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('107460c4-3f19-4ef4-ae91-d9220ae32244','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('190ffc3a-35b5-4cad-9888-b90603cec537','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('1bfd2067-550c-4175-8796-a5158f654f0e','Full Scope Disabled','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','anonymous'),('29e89270-be77-472c-8688-58b66c34e9f9','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('2bc95b96-23e4-48a5-8aef-4fc2de176a78','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('2dda16f8-e2f2-4d6a-8b47-71d0e5fd3bdd','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('2de8ab24-90ae-428f-a26f-445bb61a8b53','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('2e838387-ee6b-48d0-903d-099dfe836452','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('3907ac40-366b-4aac-81e4-e9529b9491db','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('43831e64-99b1-4533-a1ee-8dc2d5a26278','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('4c56d54c-71bf-4fd4-95c5-a6a11d2cd2d6','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('4e7f70f6-34a5-4754-bcea-44a6517dcd6f','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('4f2222c3-3320-4ad7-9ea1-47dc4ec1137f','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('5166d88c-9f9a-47e7-930d-4fa0d127e423','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('53643771-4ce4-44f4-a739-f0aaf62ce352','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('54bf832d-4472-4142-b89f-95f7b8cc9667','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('59cea87a-5574-4a18-aa7d-0322d8703936','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('60c66dc6-cd76-4295-85e7-2184987286dc',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('631d0c4d-9650-48dd-b137-17a5af583a9c','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('6824e828-2b79-4466-bf3f-b937f24f79bf','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('689132e2-7066-4364-a8f1-21561835a52d','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('68937554-88a7-4ab0-aedb-be9d1a8973a6','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('7461954c-0e38-4a79-ba5f-31421b821451','hmac-generated-hs512','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('7580a614-a8f7-40ff-a5af-7b8aa837df31','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('774d6397-5566-4a1a-947d-7fc4d01c9568','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('79fa19e5-824f-445c-9d10-dd47a4851be1','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('7af27123-8bbb-48e8-b80b-8e8d54526e81','rsa-generated','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','rsa-generated','org.keycloak.keys.KeyProvider','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL),('7eb34c05-2589-4034-8ec9-825a4d4003e0','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('7fbb0b4e-cd3f-4816-b314-cbe785c32e4a','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('80a72c52-aba1-4c1c-aaed-2f2d19816266','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('87d917a3-814c-45e4-a66a-61e06df807a5','Consent Required','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','anonymous'),('88cd6c8f-6ac8-461f-bd90-efa404af185b','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('8ac75bd3-dcb6-4c4d-9491-e97b4636b1b3','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('8ce6963f-310b-4fc8-bd30-1f12314efb61','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('8e9698d5-ab47-42e3-9334-e6276586ed62','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('92f57ae5-e369-4e56-a839-27195364ca31',NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL),('933969be-49d3-4019-bffb-c51304a7a3ec','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('9366c18c-4fcf-4b2f-aac1-3bf110f45884','Allowed Protocol Mapper Types','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','anonymous'),('988a8773-b9cf-4180-b59c-4186c135d2fb','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('9c1d8ef2-f8c2-4399-92e5-fea725ed5e90','hmac-generated-hs512','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','hmac-generated','org.keycloak.keys.KeyProvider','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL),('a1f8e706-cc40-41e2-b4f6-becebce80aab','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('a28070a8-a567-4a53-bdce-5616a51c0886','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('a67764c4-d0a4-417a-87a8-69461bf00494','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('a7158a52-db21-4603-8f90-1a899be486ed','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('ad636da5-cf07-490d-a4e6-2155d47db28a','hmac-generated-hs512','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('ae55a60f-e283-4138-b0bd-90b3c941ca72','aes-generated','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','aes-generated','org.keycloak.keys.KeyProvider','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL),('b01ff454-5026-4cf5-826f-2d44d042ef84','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('b4346dd5-f5c1-45a4-a1ab-e477774050eb','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('b8cb0d68-fb60-414e-817c-caa88e5db8c2','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('bad17a6c-d4f4-4415-8ce3-06a139fa68dd','Allowed Client Scopes','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','anonymous'),('bb805587-d0c8-4ccf-8fef-7c7c12749f44','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('bc7ef21f-ca13-4788-80fb-53958cc62450','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('bd9d9f32-1ced-4f85-ba92-cd289e08cb99',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('be2ebd82-225f-426f-9bc6-0b357b71d0a7','rsa-enc-generated','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','rsa-enc-generated','org.keycloak.keys.KeyProvider','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL),('be9be5a9-43b2-4e6a-81ef-e9c205522b85','Max Clients Limit','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','anonymous'),('bf09facf-5d54-4b67-aca2-e3458f11acaf','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('c0affa4f-a15c-4e5d-882b-2f8475b43dfe','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('c1030d52-4ba7-4200-ad62-f223e8324fcd',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('c339bd62-8219-42b1-a113-ae6f037005a2','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('c89b8787-bd3c-4475-99c0-e44411e47b1a','Allowed Client Scopes','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','authenticated'),('c9adca99-7ace-430b-b74d-197583bbced3','Allowed Protocol Mapper Types','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','authenticated'),('cb01c815-d99a-42e7-92a9-a91f9b0aafe9',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('d204765a-bfda-4a39-8f1a-655886ddc434','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('daeec439-ff12-491c-9771-f1ba3ef0b5de','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('e2f49de2-a9ae-4830-9713-52437847a0ce','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('e52469cd-5270-417d-a4e6-c49db8cc3470','hmac-generated-hs512','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('e645e068-ca61-4bb4-a9f3-bffac01e0334',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('e7d36933-abdb-482e-8927-2f76059a93a6','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('e86366e7-3ac1-4c86-862f-957b9f1f403d','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('ea2e3ed6-db4f-4c5a-b0af-826b60914f9d','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('ecf7b923-da3e-43ac-9af8-d6b334d5afdc','Trusted Hosts','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','anonymous'),('f1d2bfbb-3593-4b4c-88c4-fcb8350dca3c','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('f43c0ab5-1c4f-4ec0-beae-11dd783ede5f','hmac-generated-hs512','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('f76f8914-02fe-4dd5-9cd1-e1a23abddd5b','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('fa4e8f45-a19c-469a-b879-d494a951bf7b','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('013bba56-b644-4fd1-9162-56810901cb86','f43c0ab5-1c4f-4ec0-beae-11dd783ede5f','secret','T1QvYQ0COeLPwW9kJX6pjzGcL8LcoOGtYD2qy1M0gSZEZerBJJWr87aLFiWFHaAktiincGLNF2HvtkGxyj2HvvxuxWf11Xd3_5paVOKybxMN_FUxhwUWiT5VuEeOm4KRkqV5hrGlKKte0voggJzZbRW-l1Kljt3KT1plIM7OwUQ'),('01405fa3-2498-482f-aabd-69e60e79406d','daeec439-ff12-491c-9771-f1ba3ef0b5de','priority','100'),('02f237b9-a734-4a3b-8ded-ca3fbb96de04','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','saml-role-list-mapper'),('03b62e95-5f80-4308-8092-6cac6abde867','60c66dc6-cd76-4295-85e7-2184987286dc','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('0547b270-2542-4d41-be9c-228873e13fc7','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','saml-role-list-mapper'),('05b601ca-33e3-4508-8849-1b38fc0109fa','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','saml-user-property-mapper'),('080b14a8-2250-46ba-a7e3-aa2d8d4fdd8c','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('09c21aa9-daff-4c52-906d-3bb4816ba228','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('0bd3a18d-e0c8-4153-bc34-f2c6362650c6','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('0d3af0a0-2292-49e9-b43c-fff3b4a29e9e','a7158a52-db21-4603-8f90-1a899be486ed','privateKey','MIIEowIBAAKCAQEAyl+SWHN5CFwATpf/44ToluViSHft3fs5Bzt7LVCa/rs/FMx2dZR90h6ivQcxwHY6lL/SZZygJz+Kee+/K6/MyuwXVwjW6LDJtX/GHV5uh7K8LOUgsJtHBr0K7P31Gf6gNZPuB11dFWpPAzRy1D+7v8NmZuABqvxoC/b/lUprHjJyYJbTQKypNXbiJo00mI1eTxCTs0i9m328CKuJmGRJ7kWXVfrmip616RxDsK4baKCD01xIeYBVZJFSg48aqXcg/jTBfftzk6zOroS2uX46LrcMT+WgUqumreuig9UIBiXUQ9hqPsao4GpLIdnRihUH6ScPn2CUvOLKmKJtVBkBUQIDAQABAoIBAAMPS5xGf6yYjoEhs3LeUDFy3afsl0Y5TYkOVUwPuU4zaM5g0oQv1vCpuaprvMz1BKj51v2mDvZU87wo+64Wif1B8U7lsXEidiRGPqm0Qy3OTiHMI5DEAkCH9G21n8JxOv0gY9OM7fK8UR5CaV+L6KPrOYXB6oiKKS0QIphgYAr8b6DQPiir0XvmPFXjWxAk47OiW+ztGWTg/f/ICD8Lqg2V1EhXn4vZalNxcGaVqVnuANsZEC/PA7GRv6ZNkQcalUsYr07FxZtPnOoHTIHktfz/rxJKWQSDQjZbXd7t7qP4JNrRRPjDtWs2rMDa9CYo1CFyxOtYSzGqkDGbelRcptkCgYEA8ca23E0yY8cvUUxVm8B9Kkw3iKdpOJ2CLkM1NRqSuJCXJ4DTYr97/HQKpMKqE3w6Qhyps70IezQgdwmAXHKGOXg4oAllUZ8RpRipS6/tlWdalBxslvr5toPF6GxQZ8W5FF61osRJglN7kfna8LxF6hE3M0mjmLGfJj1+1+dBDPkCgYEA1kdtdHAsXl7iAMD6WL001ThYLAKZIZhAX3ypcgVh7pGLdqrGmE7HWYvdcM6LbUXcae07X1JUAS34FU2g/Byf3wxN3GueyVmI7B/UXlxHp+v4oOYl3Ngfz6V12xXK8hyiJVe3tlI8QWhRhXHVFnLO8dnmh4go50GtzGwEXvxE5RkCgYAU+vBtR4mi3Or/PAeFv3tdC0YaZqSb1Bcy2oQoeojW2T00oVo2jHU+3/b4eyf1DuejSwdy4Gl2/3v9uGZaH1oEbKlFQet33LzUPcKbHcYZG+HhTmIh6991dhPbamLDzoWT/e/3Et9qHsJvVWYpU70hZaMLoU0/99HeqKF0LM4ZSQKBgHhD6LP0jYJ+AJzpstkBgNi3Yg15e9b2LBMr1bKwQLH0sHDvEr3DYXHp5WR+GJVBI5+0TaGHhKyQz2+tfVBjBHvc3Qp8wMdD4GyexMQdSP5/m7E62z9jch9KP6aySZCv73XEENFcwIL5eN/L7wxFbc8iPJgPHN4G5/QXIDDrqANpAoGBAM1I9jjCngdmMugfmJSqvp8c2TsBhlM2uDHF/2o0sDbw+gIm64mmMTSBfJqpYSCWXjm9cmNKmUjHeRU6yArVksR+vZSNDE3dKF1Dv7lRSmZPPob+Lf317QBzkiKjbCLXGG7Yc+/0rpu5TBaO7noN/jrMhNmuTK6k5ZFO4y5uiu9o'),('0d89d757-a412-4be9-851a-5cc3765f3b22','7461954c-0e38-4a79-ba5f-31421b821451','secret','hClBwfIKJBq5vVDSLK1hwK2uES19w_p4HQHkd3GCG-Ig-MIu0lv0oFF-1Y2_88sezr28swCNzWKP1dinGlp9NKujbb9DXhoTzzZngxEuI5gTlo-fjEKNG-ala6xQR9uHO93TwKz0GY_c4i1bBfm6JHcw2e944Q9xgfDtlNMLebA'),('0e0c3892-146c-43e7-bc35-8d0e8f63617a','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('0ee753d4-80b8-476d-8c35-e8049f1a45c3','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('0f4671f2-151c-47df-a529-108a3461d352','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('0f555b3c-29cf-4414-a6bc-23ade9eafe9f','3907ac40-366b-4aac-81e4-e9529b9491db','client-uris-must-match','true'),('10ee3729-5792-454d-927e-74fd6aa35dc5','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','oidc-address-mapper'),('12449358-3484-4a35-84c6-3e01d490bcb7','be2ebd82-225f-426f-9bc6-0b357b71d0a7','certificate','MIICmzCCAYMCBgGO9SMCejANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNDE5MDY1MzE2WhcNMzQwNDE5MDY1NDU2WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDpoB6Dc07pwBhi39M+TdppL0NynvaPeHKiActLJLV4vPJrtT1yCsY7sFl7WzSQeAuItdHgBIegq/oPrfHONHgEZ3yAao4wWJuIbfR+fzuzQzm2UnZpfLFtCD51A9CjMdc4kbxShlAXBaw/DMfNGIaMOntwzMtNiWv6xFfub0ocxzm5oz/ECFkEmJMgrqxeSNpmKKBMJR18JQ6T5gxidjHdK40/WQRYfExtwAJxo34Jp/QVrwLzmmYA8ItcVhaAMePncOTLlNW5lj73I49AkU486HW3pVwlojLVI833XRYPwvfVvDLGS0WKWsxSxVynlF4b8mPjBsBLq/3yeFCftGk7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAOhQLadWEsh+XMImglOsO20MM9kdgj6DXAX+z0lSRhwGxWcJ3eRndUFTFSWEPRt55EKnweVsgWvVw/Ac3TbMonj/pWO0HqkCq+sTcJw8BPqYIkbe1h93EoFoj0o50iRF35xy/xBym9j7QQn/Qo3nfSVDpUX/bh3uhDzZZpe5Yn0WgtUadb3KByS4dNYU9/uNEqwkwPPgLn3rVD2xX0MIhsskmx7WEmGzmQpLrFz9ED+b+3s03Qe1vn8C6aZvteRsxSGPUhrgiODHY47JktVl1HnIWn1/dRDQ/3gKZmGT8AqG9/v21uqnRxQ+F+OhNiyueajoyA/TodE0IAaUVGmGbY4='),('125cb75e-1601-4eb5-a10e-1084a8015b8c','988a8773-b9cf-4180-b59c-4186c135d2fb','allow-default-scopes','true'),('132a196f-5e07-4fa9-9a35-2c28b9c7676a','5166d88c-9f9a-47e7-930d-4fa0d127e423','kid','69262b3a-adfe-42f4-8e48-76609a113651'),('13878c6d-3929-4240-9181-c6f71038286c','2de8ab24-90ae-428f-a26f-445bb61a8b53','keyUse','SIG'),('157e3480-a9db-4a51-8f92-e8f2bfc48bc0','ea2e3ed6-db4f-4c5a-b0af-826b60914f9d','secret','W9gg5XavOBaHq3SCuySRXw'),('168cc812-7dc9-4333-99bb-df0952b0066c','9c1d8ef2-f8c2-4399-92e5-fea725ed5e90','kid','faf4be46-af9c-4187-a791-7ed917bd7acb'),('182fe192-ecd0-4972-84f6-bf4380104766','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','oidc-full-name-mapper'),('18fa0521-b1d0-44e9-adcf-18077b1e6368','b4346dd5-f5c1-45a4-a1ab-e477774050eb','priority','100'),('1a2f6616-ba7b-4270-8228-54c652856532','1062521b-10d7-4503-b695-3a5ea8200cc4','priority','100'),('1a6cac7e-7dbc-40ab-9bd5-aa31dbf10c1b','2dda16f8-e2f2-4d6a-8b47-71d0e5fd3bdd','secret','TO502JnzgCa1plzdqjfiwQ'),('1c0484fa-c9eb-4d44-b768-0a84f3ee3c7b','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('1ca465ca-1dcf-410f-bb7c-de5e5ea9945d','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('1d4af2c7-f61f-454c-84b6-eb14b3ebda17','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('1f44576b-b31a-4acd-841c-ad01a8bc31a6','ad636da5-cf07-490d-a4e6-2155d47db28a','priority','100'),('1f4c9ccc-318e-48de-a39c-2f74c6e3807b','a7158a52-db21-4603-8f90-1a899be486ed','certificate','MIIClzCCAX8CBgGO9SjvVzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDQxOTA2NTk0NFoXDTM0MDQxOTA3MDEyNFowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMpfklhzeQhcAE6X/+OE6JblYkh37d37OQc7ey1Qmv67PxTMdnWUfdIeor0HMcB2OpS/0mWcoCc/innvvyuvzMrsF1cI1uiwybV/xh1eboeyvCzlILCbRwa9Cuz99Rn+oDWT7gddXRVqTwM0ctQ/u7/DZmbgAar8aAv2/5VKax4ycmCW00CsqTV24iaNNJiNXk8Qk7NIvZt9vAiriZhkSe5Fl1X65oqetekcQ7CuG2igg9NcSHmAVWSRUoOPGql3IP40wX37c5Oszq6Etrl+Oi63DE/loFKrpq3rooPVCAYl1EPYaj7GqOBqSyHZ0YoVB+knD59glLziypiibVQZAVECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAb6DwNp6q0ftxMIx7YKkLpVRJhKs83RJMqtCpdHinmWXyzIPUDmhIdlbg5ygyp1Jag9BYqLkAbnQRzCC+arPVOCoN2ktcV8TOv65GWNRVmyxhmGzD+iMHm2avBAnbAkSvb4+tIEw9E7b8mHuPEd2EY7HZfyJWtdO5/Zon4lZNON/vLDD1sC6v6CuE+H/jhnVqhpMXxkWJ+QkYztn4wMX8YBjVYeeeYVbzfQ3iSpJ1ij2GlSXbsDq5fYKqKqRk4eroMaH/jF39LMa0o6BcljvdvCs1KXu3SD40O3izaL23BtQCL3vcsKbdS7iY/7ZNpNX199dth2rUDrAk8P0zN+QlRg=='),('20317cd2-532e-4cec-b02e-dd0c6d8482b0','daeec439-ff12-491c-9771-f1ba3ef0b5de','privateKey','MIIEpQIBAAKCAQEA4+oRb3ix4eRWm9w+agSmnp+UphVJI64AxHKPFil+oq53G7tJSQlQyiJ31QTuKNJc6nJ71Ukb0i6LF1NIjWqExloF8JXTt/ZXdYiFSjkiBXJVmHRC5M/3iD2ZCTxCS3MljlCUoy5J1GHH5rqz1WS17AJapzRe7RKrrvK7rDFI+nY4Ks5O5oJmJYIdwCBBzsb8msik5ybGYeNF/XL8FB3i/+hNIW6xpvx/gb94VeDEzyEb7qOqnzLycSiVTGFkHdsMFsO+qq0NjkBq37OEDNp/UcsESxtytA4TO25pwA9y3HbPj61xAAiol+v2esUaMkPDJY5hW2hCbTDpINMmr8hZ+QIDAQABAoIBAAlMJ6jt+ge2imfyTKODjA6FgQljbefkNcjNyZOEXtOhHV/GvJ8bn62XSV8pw9NrfXnc8LtLL7TbzDXH4npOYZs72ekuG4RyKrAzQQi9musw9lfxSjdOWpE2vhL339Z3HI2ZMO8VONLOqFp7vFFUue0mTW9rvgGa1OEeqtRD8G+zJjFgffFlbtRC11yk+f5ZLSxexCer3dUp0cEMtT7/ndbeq0MvgpSGnpeikzvs1hKfPXsLfzsIpTTrcVDM6L42hiJ05WDAfLYNpyzon5EVttzx1R0IBhRIjy/4YMg5O4SNJ4SGIqifNTY9tfqjNLyPgH5qMEnttPfwTghxe/JJgoECgYEA+Dn+wRXhktI5YqSpReUqPUtfnuRrtB6bASfbNO5jVfy6vW5oRLnSzdOjOYNDz8bXUdbLAmRGUoZJ1MlII6LRB0wkCpMieaoli4dKV5NYC8DooozGii9By8+AGeA4lD61mG4R75EOWf1k1n2HZyxlcg2XICGR/ei2ilSl44WDklkCgYEA6w07cFVO4sVoRS/T/xbXD08Ic9jiSFA+FDQbOIBHIlfTAz2/WaDgDCTUfWX5BoL3xAiHGH/hKLJcT8kfIvn79Rbv9jJFEDl7tNMLPaSGPR096uzOspRYRmnRavaUZIy957vOPPG+VSru5uLXx9LztnU2n/bC4x7/82KOzIwJ0KECgYEAwD4KMvgDT3ZIw0DLaDpnUDlDwQce8syRN3/qoT/O5xVoerU7Q562yHmT/ELRDeXtdJBpgVyvqdIe9BE/MXozcPdjIl15YciIc1tAFDslAVVR1jI4wWSADJyTlXa12voGIht9AJDTEJbStdtaNmmH16D23gehzYehd9i+8UrB72ECgYEA6CZxhkk7WI5QpcTPRSpxzhTo7EJRe8qFBb9RA0Tu/ORw7MqXqxZRMq1NkWydv+iqfVtO0su6vk8rDUI/FnSAfVjiN+7+dz/PBpFKkN9mFgZDmTu6CnapmSH6TAKuHYFELxQ2Zcr9iXCV9EQnipy3SIYMJYG6ikeb0+6Ly0qkhwECgYEAkaQ49pPmN934fKOVJVJt7qVT04wt1UXahV3uVLbqNUSGJ0RCa93EGf0qCI3CqcJrel86Ol9xBccv6irNJpCeKyK8z5UokkLREciMSy5WY6ivXhYu39U3rIKmgeSjPCQF03PjGcUYnXZDqjna7vS18osdrAN81vSrdSRm1aTbTdw='),('20376b17-bb14-4cdb-9101-eabef0208506','b4346dd5-f5c1-45a4-a1ab-e477774050eb','privateKey','MIIEpAIBAAKCAQEA2i7SMf86yUlTWI0tGw15BC8V36EFXXd31v5QyGO4VQoqs3vHn5k90h8IZNrDAsaz259u5jY0gyNcZLQ7yNTdpUAaoLpcxhS+D5XnerZX1zqfGxiJI8DqzFWr8YLMpdJpzCl7wn1ekirGkrCwXwqx3aRlhyATQjKCRCyZAr0n0mXtuUle1B7Kx84LFAahW4Mfozu4VbeUA3FTx8eFFT9bxkViAIYgn6HIr6AQAnq7/Ep6EFF0gOe7JLXzwAas4BbqT4qW69mVB+3qRL9zWGG9Syk5p3m7vRSR/rRj+en1fPxUtnxGdCsTS9fEteNxHQy9jyDqCuvxyy7te39cfKBy+QIDAQABAoIBABrp/FXcino6swRRDfJbXBqZsFS7aTeuvWK7pmgXHQL907ymP+lpHt4k+S/FE0SWvFMS52bl4t5ru0GqQKxfzc5NCmaEoV3HQJbC7XYOuOaSPamQV5fIfBj5VyeIn16z27HVSttNWcrQFK9oX6lUXr0yQq/uKKdZfFuVNh7HX0/YYVr3tcwQBGvZp7ToaNIpfpX8SkTVrUEXTDy7kYzi0pIc9uQpjM5REnxmscpB4ywNeY/MYbY18KMd4is1Rvj6/8JAnwDvfk0vGVcOFpcbFd5rCQCNeJUuviQGkmpWng+pFaAHXQzdhnRHTJlX06mUSx7wFyclsm9MGwy2+e/5fA0CgYEA76Q1fLQzP034rcpC06t0h/pLlCFWW69RMgo6W3iDR3Jxe+wH2TEAlzTpzrxCYqCzhB3aOjNvUxexSGNfC6QYxK5GQEFSvALVIV5EPj7GaCeslwHD+YIRl2f0r9RW40JesopfYuVuAsmOiJF+AOGNpduoR2RG+qi4/k3ExhaoTB8CgYEA6ROec5BqMbpC2+dEzz4MepCJtC0ej1VintImsT7HpOrTqpis0ZtDANCFhnS0qt5RonH/cIR5l+2m+HzADJ3lG3e64Ml1nSOJVLZTFkhd7A3kwEH3txA1sqaPMsBDRTPl3ZXF0J/fcZ/xqSNREPpsgOOIp9N9DCv0N/a5T41T3ecCgYEAgq6+yFmQlNYVZdil5r5aVwjkjEw9xtPtaGdxeY5XsO+0+Uo24Xc6hjrBwg6h+Rz/qG2LIzAHZn3GHN6r5zI+m4saHlJBJuw4g/DfMD6VfhkcomDBGWCX7UQwiG44T8hS0fRpngnVm0mFI+6LkzltQGRv+TazCmBWOb/5LbkPYCsCgYAeIiw1MrGYFkW4mpDZ3mLMoc073y15SIfEktTvy3cSSk3tW2nUe6dQ/qSUupf1E2MohmaJDIeP7ejNbYuC1hMd1v/xOfqbw1FpA12AnwCNmUo+1QiKwWy/2SrgW90WoFwSpt95VoIT9aLPxEIh2M6YZ1JuqDgdj702Uw6oS1RRdwKBgQCbmBvqeJsigoGqy2sheOmoT9o4d2E3EOBwjYnWeKevxMq3O+HV+f7Kvxv78SNdC4+zRmhhX3D6OJTFpBR1U213VK7jfhiMAVggdav0KoIQ4Japaf5fqJX6KCOpUWPqikdrDxtPxIIZI3+tHYf4T4mIx4IyfiotlJvXu19MgP9VVg=='),('20b4a6d7-a757-4791-9556-3f943b60d12d','be2ebd82-225f-426f-9bc6-0b357b71d0a7','priority','100'),('22f7777d-9934-409f-980b-fdace124338f','a7158a52-db21-4603-8f90-1a899be486ed','priority','100'),('25fbc039-d5d5-4abc-aecb-17d7b7892ee4','daeec439-ff12-491c-9771-f1ba3ef0b5de','keyUse','ENC'),('269a0abe-01c9-4c32-90e1-c903c3d9d165','7fbb0b4e-cd3f-4816-b314-cbe785c32e4a','allow-default-scopes','true'),('26aa33c3-2436-4c87-add8-4b0c5b489fa9','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('26c12e98-6a22-4e99-8967-06377297744c','be2ebd82-225f-426f-9bc6-0b357b71d0a7','privateKey','MIIEogIBAAKCAQEA6aAeg3NO6cAYYt/TPk3aaS9Dcp72j3hyogHLSyS1eLzya7U9cgrGO7BZe1s0kHgLiLXR4ASHoKv6D63xzjR4BGd8gGqOMFibiG30fn87s0M5tlJ2aXyxbQg+dQPQozHXOJG8UoZQFwWsPwzHzRiGjDp7cMzLTYlr+sRX7m9KHMc5uaM/xAhZBJiTIK6sXkjaZiigTCUdfCUOk+YMYnYx3SuNP1kEWHxMbcACcaN+Caf0Fa8C85pmAPCLXFYWgDHj53Dky5TVuZY+9yOPQJFOPOh1t6VcJaIy1SPN910WD8L31bwyxktFilrMUsVcp5ReG/Jj4wbAS6v98nhQn7RpOwIDAQABAoIBAF1xmuLO6yBZoidiCRchgpuRuPOOm2XVMlyURSDgJOmPAZONIW+M2a8kIRZS65phOZPLzY9BoJHmV5WP6Gim2d5BGi4u8IJr3oHaIPG7qEBSQjInl48nvbuzkW+yP/AWTlQlDmMfr8cVkMiDLyNcjOxns9nxP9vafGMHx3fp8YXCcjPFoP25Ob49lXDF/ovqBCkiZNwmYmKjEcn6/lF/zec42mpPO+anwRY6WIzoWHWkDlYP6++fS35pZmGYR4WjvjVlStB1QFbMz2zmotQn6vjsAXipdtNS4p48/xCNfLDqyw53K09N7VsUMOeM4Ec4LRcXxvYAIvBfMi40FpYZ7cECgYEA9gxbOjQddis+qAUamucp7hVJXbTcC803qVMgV1YwcimxBhaAFdR4+ShAkiTvingBbkwwVYYiJkJmHj7KSTT2jouvVYLOwDGJkOTh2k9XDMiCoILEf8dhF7w/sF4vXdWCBJvVYvVwAoF//biaq21KjuBX6nB0AM4/UnkKyWoL0uECgYEA8xMiViOjXTRb2G5uHSWCZn0qeqIxG4SCLbjjZLTxP4opEnPYVXsykQ/jH7d3q9O0IwfZYqwWhx5AAB2RppTnrZgdogSnfR7WXkPjO1OVu+J45Hvq/km/jHih42+CxUfr7SEr6NKDsS/YeRylBlQ2hzHyLIMTuueXSK0UEAMOG5sCgYBV/UuEs+H4AnULU31Q1akZw+a4ERU2KqphSuPqofycaWWsswBgoLkGmsK2UKJGyln1qjraKN6WcG4v89HOc+wXNUo5oFWRZb6mHNex7DiIBytf3VO/NHcCTJAVm1UCfjPKWIvi4dQbjBanHXUwpCmCdXVEQbjI70vCDvtuGNm5AQKBgFH6tw7kMBmkKgHBpMORvfwA5M29W+CS/TCcdZymZeLvHtEJXwHdbf18pTYyM1sxKETURd3AekyRyDYBwviyqbxjXEMjXLWXK+dY8A83Ln3ScMFmhafDiaW/naHOHwWYLxqnoF6CeUXOBC08mu+agVVxY+LdRk84Ak7RiL2puh1XAoGAW52x+LElCjG7P0yFUkLTfwZjEa6jcBYqkfFd3Wh4iSLLLclNBu7MdNUd/pZdImv59hTX0LM6365e7IvvXUckuXeZ1iDQA971V0WmjKaH2/1v41rNqyzccRf3m3pzFKCs2Q7kEUBs9mKsym8EriqbbQ4JWqgNkWcMztvgNS+oIUc='),('26e9b8ef-2bcd-492d-bb44-21d5eb2323d9','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('271110ee-b2cc-4394-bbda-b5e35c663676','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('275bddd5-7e80-4739-904f-68420d7b4781','daeec439-ff12-491c-9771-f1ba3ef0b5de','certificate','MIIClzCCAX8CBgGO9SjwxzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDQxOTA2NTk0NFoXDTM0MDQxOTA3MDEyNFowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOPqEW94seHkVpvcPmoEpp6flKYVSSOuAMRyjxYpfqKudxu7SUkJUMoid9UE7ijSXOpye9VJG9IuixdTSI1qhMZaBfCV07f2V3WIhUo5IgVyVZh0QuTP94g9mQk8QktzJY5QlKMuSdRhx+a6s9VktewCWqc0Xu0Sq67yu6wxSPp2OCrOTuaCZiWCHcAgQc7G/JrIpOcmxmHjRf1y/BQd4v/oTSFusab8f4G/eFXgxM8hG+6jqp8y8nEolUxhZB3bDBbDvqqtDY5Aat+zhAzaf1HLBEsbcrQOEztuacAPctx2z4+tcQAIqJfr9nrFGjJDwyWOYVtoQm0w6SDTJq/IWfkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAJ7fKZc4U2miz1fgpR1UOVjOalGhCyrCrTKRQkhtBIYgx1xPPoMvJIXJeNWAvIWxfnUdG1njsAd1or7tzDdFpOypIBMPNCjJow9dz0X6MdRjPyRqhtg3DgN3KBPhYhC2+EIjBb/Uz5gViwetzT7D9U4Nd724/AC28Ye9JD1CkzACWDQXBRNPUNOsE3aj/Wrmr8jU/dVB/1Dlnk0LSuoEvHd/awKrUzJx+iQTYD4zx2IoByfNBK2eDKD5WHdNLjYHcNWVlBi/8B2BwEvoCRdjNjTUrLur6fFdVAjIoDqgbuO3XsKTUpGLWiXkMtzIsiuExQrHBOona8gKUhnVytrNiTA=='),('27a904bd-4693-4714-bd9c-34275b34d0db','8ce6963f-310b-4fc8-bd30-1f12314efb61','privateKey','MIIEowIBAAKCAQEA6HUeH3FXUy8ISDv820brziQ5wUi0NIXOYf2TNozWPf9CFNVR2NW751xOvYRLjWmIJnw8h9tk3VsVq5nlJVnwWyNoNz37ZjlY+x6XebgGHNnPrEDe5qlsHuBXByewFInFYUXgIxmbzotqyNHF2Aurilj8z2Z62Y4redUYw7a+rW2izbHOYjNXMIb28sCJgvC+zNs2uhM918hExR7I4sa5ERh1vzaR3z4CcQuWCfDP0pg2tLFqm6fC9n1u+oS6TLVV/SfkqE8K7ViJQ737muDkfd+0+Z4yYZBrolKegNG/CQdKoKnAfUHPswkn4mfN3BOrcWm4T4a0nrAuX3/9Dd6s4QIDAQABAoIBAA7rmYPeJANAVRFB3HB8pF0GYTihQIPQhNcwTfcl4gh3rlek+4xl55opiBpM+AZ7HBSQS9hSgi5dDs6FYbpcg/ttkd5d2ZmNm8L+iy1yXN4UMuq0/Tmj7T8sGhno97nRv/wG3qSSG7iNpUx/fmnoEdoe7Rco1kDJicvXnC/PtnxuGjghe2dypeqYOc/In7ykiZI32vkKbtOm6JjUQQBzEDio98Q6g6LYh25Mvulbv300qc9KXM+cjnim4CCjhNLrEttG084XZuGILnwiq6puhHk2RcsP1NUpUKPKGbhUjd1wMH4nwSoN3/BXr/JN9UW3rrzbYLPBi3VjhPSar8MXIxsCgYEA/3wsmyGBMEoSfJjYLYlqxENZ+uRd9EhcFOTsRcxz9CqTloYgOugTVp5P2Piu7frWIxm4an7qE1CFZwxVIxSk0KwXnxPfAMWgkCD+rKyyUHWoaxxVpr5qyt5e+mEE8XEyromWhiUB4ErIzN9G7A6pBa4xmjJPShJrg0TXnvFwlz8CgYEA6O0Pxa6KsZTOGOqprJCtrPUyp3gFz5CYUxFZcPBnmkk//CYseEs7c4JjyRxqRVlJFuzJOHfx7YdGdc8b3/qS1PVuK8fpPY3N8STeLO9TvOoyqbnjAo39YeR/CUZWRRavpH9+IuVBfMxLagOmy7sKSAIUJZdvZIbp/8fhw9le098CgYBGoEggdmmlNMTZhtMz+2n1aX0FW34RmrNB32rlfLiNRfvYv6lHP4KhDlCadVy+UvpBZ8nQPtdskXTfYMxkTz+ko/4/rpmWOAvD7CsbBv6gOXZebc3Ls5YIEOMGqi1YpWdSUpy25qIXI/VQlWSguwjEljwGGWRL4L2x4yUMPkhWtwKBgGFh+54ig0oLdL9mHNpRAsu1GCB8RbGqOoVAU6ysViRjS6UYMK96hLieYynJ/4RO+Aflp5s8SqGMVSEcHgNet9ThZ9ZWFmXty5RuXZVb2h65q8TaOtbulmk/Jv2xso/gFD8qLopYXzDWGRGRxUKYSIwiklnFHoVhAqQ15WYEk2jxAoGBAL6tFRLA/1rDDURqmAk0kkPpqRrvf9PwcOYIbAuIeYO1QGU5tGzMQLbnvH2JD+utRtM1iul1OIHwch5syso0dSnU93ZYM86SgXW6DYKY880FVJYH/2B54xYTj040kfMZmsoc1AQzTRGrHsFtvcGfDvUhosGtgjYXZRsNZHjAXE91'),('27c0927c-6f8f-43b0-b170-9e4792d4c53d','1062521b-10d7-4503-b695-3a5ea8200cc4','secret','GGyqQj5Ycf1bnRuK65hxFzBd1okrxYaUUB-Q79OXkAeKv-T7jHsuJl0-IoLiFYrfbTds0uraSJppr2FxPdeYQXO6IC6IROO742VM2jdCb31ZOU7_ybpdh0PCnS_bZDAwDFYbdo6a6WIKb2sRfhBX017S4w14tOUtWhfB0pAY5ek'),('28a12455-f01a-4fe2-8329-116f64f01e76','4f2222c3-3320-4ad7-9ea1-47dc4ec1137f','certificate','MIIClzCCAX8CBgGO9Sgo6TANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDQxOTA2NTg1M1oXDTM0MDQxOTA3MDAzM1owDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJEOPh+yJ/YwF5Hw+3imRHJPZYpo6DatDhIxSXRisE2mQg8PcteN3KWmjrIrffGDYJfs6j8krNRyabemd9uOU789Q2g2UhJvuK8ykmH5MmWXJcl7iF17gQBNX8a0czK2sbO6psbOcYvuM5j9aV5k+/+InI2fgbjaOy3RBjheVwqKVGPNrSO2xH1w4RAG3dlT+0Dk+qRuMK9ln9rRAbHUkYdK7m3upNyD3D2wMo+/1QTL1RKKBoja6xuVJrussadnuy6JspvdMSQ3aSAj+FOAohuxwPAS9euus1JTbNBrhe9QvQgfrhb28U2KvlnWMlWBerNnSlLYq5eo1SclVFwgymMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEActQhPrx5WjlzaEyn/SPOgrteQSyMcaV+QVVJ6NGkDRYpjiDkJjUmXdsQhW2MmQF5sFvv4D2iUdahOWQAx5EKH0efJMVYislsTr4kXLPJNPCFWZRZTJF9tE4QXjBHGAxIENffbEb4NzFr0mjhvFo/BaHZnv3XNvej8qwfcPnlnL3ZmNF9X9KF6qyWR7uA7OT63oPo6uCI2t7eC7OVrGKyvas/45Vhr3mDje/QaJeNzqJDg0Wia36RZCTmv1ri+kVUuUoVS7hHYSLNfb7HbP2irOKhlAZpuraK0l8qoIBGrkIpkqHgg79T9Wf3+PpKIs6ryQPoMnUy2WIdaxHf3vwGsA=='),('29c84257-4b1d-4f17-aebc-3a9d89ad8699','2e838387-ee6b-48d0-903d-099dfe836452','host-sending-registration-request-must-match','true'),('2a45654b-289f-4e57-a777-28b720f57d75','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','saml-user-property-mapper'),('2b436ca6-ed2a-4251-bafd-b0f8ddcc2b3d','2de8ab24-90ae-428f-a26f-445bb61a8b53','priority','100'),('2b5124a0-7794-4f2c-9ade-ad3572acc7f0','5166d88c-9f9a-47e7-930d-4fa0d127e423','secret','R3y_0w7mj8xza8ATniqLnQ'),('2ff2e99e-817d-4d6a-ba5b-27081878422d','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('32e76e63-4dc1-4a51-8fb0-4206fec85f0c','79fa19e5-824f-445c-9d10-dd47a4851be1','host-sending-registration-request-must-match','true'),('333658af-23f2-43d9-9c3a-187cc6e0c267','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('36b5557a-1691-42cc-9dcf-b2be250dbad2','a7158a52-db21-4603-8f90-1a899be486ed','keyUse','SIG'),('3789087b-e050-402f-a48d-ee464fe8e969','9c1d8ef2-f8c2-4399-92e5-fea725ed5e90','secret','qvlRx1MEynYHvqvO9DfBoMq1bmta26EvqtaavFWt8BzPBjh2o5wS8yO-fAoOF3hTkXQ3RS2CxoX_Cvb80GxMuUS5KUKR3svIZYEI4h_CwePzDpq8i0JPycGeUmFetoUlkXvZhmcE_U7aYak5dKES6ZfLPuU6y9-1MVVQFiWWzP0'),('381b766a-cc83-4687-a9a0-cf52d21d8edc','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','oidc-address-mapper'),('39f2e45f-43f8-4251-a599-fb7d929440b8','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','oidc-address-mapper'),('3a312131-1107-45fd-9568-b6ae0658e989','8ce6963f-310b-4fc8-bd30-1f12314efb61','priority','100'),('3abd5e5b-83fc-452c-8e14-f4eec4d883ab','8ce6963f-310b-4fc8-bd30-1f12314efb61','keyUse','SIG'),('3d1e7a2c-255a-4fe5-a4e8-93a00747d429','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('3e26e019-24f6-4793-a034-6f7ccf7a997b','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','saml-role-list-mapper'),('3ee10695-4cdb-44e8-bacd-d56f16f14e91','190ffc3a-35b5-4cad-9888-b90603cec537','client-uris-must-match','true'),('3f7ec498-982d-4c2e-864e-d8113616913e','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','saml-role-list-mapper'),('420d182d-b967-4607-bc91-c2f070fa64b3','2de8ab24-90ae-428f-a26f-445bb61a8b53','certificate','MIIClzCCAX8CBgGO9SlNhDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDQxOTA3MDAwOFoXDTM0MDQxOTA3MDE0OFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJCW0xs5VuBxmavuMe/V7VpVNud6oIwHHr7VZBDyL4PIIGhopNGUk+u9vHX99ZV3CwzG1vBYIOde1sWcL0a80bhwyErMdOWrck7nA41TNV2LJXL/KkUVT+zaa8kTnBfIC4eJdL/QPjnv0Y058pemyW88CDOVXFxtrYnXDz2z3+oVwELePIQyAEeKEUy/T7FgvSrNf0UkKvnzFjUomC8bXj2dO7rT1QhxgExnvjN4ahm9DYB8QuAOBk08tlBTthJ+ogLunGyv8wil3Jae7ALN1i8v3H24sk+XcPNXxgEBHss8aTKmAd32SueTrIp6jyICflV3+A5T6qHCFi6pIqaGjasCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAMl6IHTAqEYob44pexqY0ARUhVs8ejDmc2qx0d4Lxo7wbcU2+g8hoRv0To5CZdNZTDV6UJGBKKWmtfWfJsk6YnXfDeeBopZMzrqYKmzNGMUoow7SzaRceO0U+r9Dh/0k/EqyxeE6eX5Ns3558hcsRpzs1IWvsYK3v3/s7lHmNZETtbU6zDwZmSSNwt3AE3W25o7Wy87OXwVvCn/kLcR4k0Qq6ni6vGm9m8vgvQBvrUv/1vQi2zSd+WvI4HBe1fZvXiYnX/ukqZjqqJHtNYJVe9VrxpPozQyV4JWPVAy0ReapqpaUD6zxgBOBUQHuVilG3opnRxdtamaGq4pZLazxFbw=='),('4676a493-accc-4293-b59b-6cb738753012','c0affa4f-a15c-4e5d-882b-2f8475b43dfe','algorithm','RSA-OAEP'),('47577ead-2ce1-40dc-837c-00e536f8947e','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('47fdc525-f7d5-4a5a-b4e9-deb8d592dcba','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','oidc-full-name-mapper'),('48161b7f-41e0-4d32-8c39-06b6309a4098','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('48536654-761d-473a-8de5-1e8cf8cf317c','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','oidc-address-mapper'),('492b40c1-feb7-4a97-9da5-d948e9cb9a2f','e52469cd-5270-417d-a4e6-c49db8cc3470','priority','100'),('4d3956fc-2dcb-4f42-8636-04fb4cd6ff1f','7580a614-a8f7-40ff-a5af-7b8aa837df31','algorithm','RSA-OAEP'),('4eb668c7-16a9-45d0-ac1b-b7a58d5c66b6','c0affa4f-a15c-4e5d-882b-2f8475b43dfe','priority','100'),('4f216334-3a83-4ee2-b2aa-322df5983b65','02a00557-5b16-4e09-a18f-69ab5ca8d5fa','priority','100'),('4f550a43-7924-4322-b763-6747ce788ee8','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4fac7ae3-2088-469b-bb25-fb8a5233b21e','ad636da5-cf07-490d-a4e6-2155d47db28a','secret','r3mjYFmmi8-ZHRgCb74dL_dY8QAGeZnpM7nnGw81oUICOTwBfXoYSe2vPPk8mQLJfnETeVIGlSAinbDa-za5kKWz9SpVMzewPh41gJzFOxqMmUsnD-6AgWGJ1L8uXDIShbRN6XVNAV6x3yctV2GCWi-Tnv-XuB6eusI5fENCzyk'),('50054463-e5d5-4dd5-8697-f44df8aea615','7580a614-a8f7-40ff-a5af-7b8aa837df31','certificate','MIIClzCCAX8CBgGO9SgpvzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDQxOTA2NTg1M1oXDTM0MDQxOTA3MDAzM1owDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALR7YnqJWXBelfm7VpR7bJwFECBhAIzUDsmE2y5IrsKZm0OzbwzZlq/x2ynagjNoeJZeYe/0hNPS+sa6BuXZep72QKC22W1r6+/+wuAC735+SleBf7sBlFapIPMIvnep/edixlc3CDGQRlGlnK02Zw/CFT+nCzuivWX9pr/+sNlUwCg06UufnWC3/U2h723XxKIQsLV7tAsN2WC5etRVL+hUfTMe2NXoV1RD1X7pLKn2JGNdgQaV6BmkoV3Al5FHbjkfGm22oQTCzoteEPVAbEtGZzcs/zJc6fbJUpZraTEEpNfIb6L1eBcD2OeYQRj3dHVJb5vXKwHJZiv8TeFAnpECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAJufV06XHTbHRKNqZ8jgOOrRf0wVI7OZXBr09sZnP1J4aIkbm6e+fj5OdZ5sgvNM0wV34Kyf5oKYif89sj6tbvNz7cbXNgspvgPlF9Az/afXOGBbCWmhahjoEXYUO3ZTYxwXJZZsWSqMuv/x2UvyU2i1jhqxUbR/9m6e3S77z5FMQx6n6Gv4HlKCbh2LvXbTf38oppk290rRjdgC06dyplBBybHW9UrCyXl17CmEs4Ln6jofjjHS5w0uU5yb84fCYpKpjU7LBise6hmJzpHblUaQLw7mhHjMgAtg5zk8JHHOQehqSGJdTSFJwIJrUwLE9vVArVwokznpZHyxaJx+Mog=='),('500ca5fe-4fa4-4643-81d8-a3fe94186a5f','a28070a8-a567-4a53-bdce-5616a51c0886','allow-default-scopes','true'),('504ec4d6-3c88-4e9e-b092-d73aa2e51cec','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','saml-user-property-mapper'),('5175f7be-f9b7-4312-ad25-4f918053637b','bb805587-d0c8-4ccf-8fef-7c7c12749f44','keyUse','SIG'),('5242abfe-2876-467c-b3f7-15499b3519f4','7461954c-0e38-4a79-ba5f-31421b821451','kid','e485be13-1e0f-46b1-b15f-ae8284b1daa8'),('55269beb-c652-4783-9971-4c4a6c44015b','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','oidc-address-mapper'),('56e7a7d1-e9fd-4b46-a937-5a387fabd178','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','saml-user-property-mapper'),('57a934b3-be71-4f4f-989d-93161c30c8ca','b01ff454-5026-4cf5-826f-2d44d042ef84','max-clients','200'),('580c46bb-4081-4c29-8139-9c6ea82f5fe3','92f57ae5-e369-4e56-a839-27195364ca31','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('581bb435-2e78-4621-b350-53b0c1aacf29','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('58a4529a-ef4b-40b6-a63d-ebe81ad25f9c','bad17a6c-d4f4-4415-8ce3-06a139fa68dd','allow-default-scopes','true'),('5b5af465-9263-486f-beaf-9b9c2f2520b2','a67764c4-d0a4-417a-87a8-69461bf00494','allow-default-scopes','true'),('5b759f89-1130-45cc-b4af-a3cdc239dd2d','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','saml-role-list-mapper'),('6048a56f-e45e-4b35-9f61-c0905e14e1ef','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('60a445bf-2614-4787-abc5-f1bea0d39d6f','f43c0ab5-1c4f-4ec0-beae-11dd783ede5f','kid','680e91a0-912b-4d59-a628-b0913d33ee2d'),('630f8d9d-7d7e-493d-b496-70a20d451f04','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','saml-user-property-mapper'),('6331d143-8cee-4ee3-b303-38f3a88c80da','be2ebd82-225f-426f-9bc6-0b357b71d0a7','keyUse','ENC'),('63bfc9ff-839b-4d4d-b59c-1f097d669b66','fa4e8f45-a19c-469a-b879-d494a951bf7b','allow-default-scopes','true'),('646f9891-c335-4974-baf3-cab18f29740a','d204765a-bfda-4a39-8f1a-655886ddc434','certificate','MIIClzCCAX8CBgGO9Se2TjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDQxOTA2NTgyNFoXDTM0MDQxOTA3MDAwNFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOGtHkDTNNZA7QErjiCEZhcj04BFmQQxAAagpxNfmfnfY43RkSKfqWxsMtZQaK+Aoz3P1coon2riArfhQtfgQB9wQJXR5GmmsttBfodokV0JHQ0V96y+BxgrNVkeAulpx0WiX+rIPWo7auSDGDNMCVBOnssVBbY8JrPQEmBoxq6sNdwRXMouphzh1BMkQgSJkkLgSOyBmas3xVO5oSMVJXpLHtomxV6MJucTP33E4Pe5FIWyWsLNTpTProJB7GX3TnkgdaCzvAoWCF/WR/WLRkMVeyexdKP9D8P3Ci8w59zf020p6xiTxFv/50GCmAlPSDtWlKikfVyBdEap7AX9ZlsCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEABvDgmyI2jynbvl8PVrKF7VtfAPBshLxfZ7/+mOLZmoN8GYusZ31+CA3OabXlBQcKCahfPTTVDP+WVrql5dakQxP6dNRmgKH64G189+LtzvrH+1sn8Hykwl6xrCu7kTjF55cMjVb5tNz84KLSq+jWIz5sqyhSedod/5Ljfhv/JWA06Ry9ffS6XPNeqV4pt/PtpIwUNnkhKx0Sv0z47D+QrrRhb2LqH01A7p3menRJl+0LhNGUj8spo2Aj8E0IRdp7zLr0LDBXRDDdDbphZ5zfYfRfiOq6e06vw9a7cnhxRnPGqzX6P+BYAfcpY4q6+a/f4/PXe2H2DUedLFibhGCfcA=='),('64d1f2af-bdfc-43af-aa15-5b6c9d3b0146','2bc95b96-23e4-48a5-8aef-4fc2de176a78','allow-default-scopes','true'),('69047693-9df3-42b2-9a3e-cd8b604ffa6f','5166d88c-9f9a-47e7-930d-4fa0d127e423','priority','100'),('6935c32e-14fb-4fcd-9676-ad7dc7afbbe3','53643771-4ce4-44f4-a739-f0aaf62ce352','kid','aefb449d-e34c-4b87-ad46-35b0e81cbb6b'),('698a5593-1108-47a0-bfff-8ce71262d2f6','4f2222c3-3320-4ad7-9ea1-47dc4ec1137f','keyUse','SIG'),('69e92eff-a019-43ad-8b34-85985967b7da','53643771-4ce4-44f4-a739-f0aaf62ce352','priority','100'),('6c131df1-fb5d-46ff-9efb-c61ff9bd2f62','7580a614-a8f7-40ff-a5af-7b8aa837df31','priority','100'),('709c2652-f677-4752-84d0-97cb688c66a3','d204765a-bfda-4a39-8f1a-655886ddc434','keyUse','ENC'),('718e2c58-7ef8-46f3-a13d-865d7f3e83b2','d204765a-bfda-4a39-8f1a-655886ddc434','algorithm','RSA-OAEP'),('748ba9f1-c2c0-4ef8-add2-bc7ce81e8097','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('7672f286-7b0d-48d7-9184-a1dfd04ee24d','7461954c-0e38-4a79-ba5f-31421b821451','algorithm','HS512'),('76e1b317-a3bd-45d8-8d22-143de56cf90f','ae55a60f-e283-4138-b0bd-90b3c941ca72','secret','b1BQJBB5UeLT2qkZod1E9w'),('7809729f-2bb6-4472-be5d-2b3bac76aada','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('79798533-a75e-4814-b92f-d19c2ba4056a','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7aeec1d2-37aa-4522-bd01-6e33293d3623','c1030d52-4ba7-4200-ad62-f223e8324fcd','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('7bddb634-34d6-47a6-9a4d-705403cae6f9','6824e828-2b79-4466-bf3f-b937f24f79bf','client-uris-must-match','true'),('7d9d8bce-c3ee-4b05-9c0e-cefb9d10771c','9c1d8ef2-f8c2-4399-92e5-fea725ed5e90','algorithm','HS512'),('7e432a23-ebb9-4ace-8491-788a243ad2a9','cb01c815-d99a-42e7-92a9-a91f9b0aafe9','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('7e61c9d1-51a2-4b68-a0ce-95e2e906e60d','ae55a60f-e283-4138-b0bd-90b3c941ca72','kid','12df4096-9b40-4aae-ae25-405df5aa894a'),('7eb8e13e-3401-4ce7-b5cb-59e35d26faac','2de8ab24-90ae-428f-a26f-445bb61a8b53','privateKey','MIIEowIBAAKCAQEAkJbTGzlW4HGZq+4x79XtWlU253qgjAcevtVkEPIvg8ggaGik0ZST6728df31lXcLDMbW8Fgg517WxZwvRrzRuHDISsx05atyTucDjVM1XYslcv8qRRVP7NpryROcF8gLh4l0v9A+Oe/RjTnyl6bJbzwIM5VcXG2tidcPPbPf6hXAQt48hDIAR4oRTL9PsWC9Ks1/RSQq+fMWNSiYLxtePZ07utPVCHGATGe+M3hqGb0NgHxC4A4GTTy2UFO2En6iAu6cbK/zCKXclp7sAs3WLy/cfbiyT5dw81fGAQEeyzxpMqYB3fZK55OsinqPIgJ+VXf4DlPqocIWLqkipoaNqwIDAQABAoIBABhFkVulFP3pZAQWIMDjlwwOeQCDt9a5zUH4vWsQ1MQZAMO2KVDbUbeFqtDd2G+GQ88Zw/QlvyRH6eLTVKZZxRTireTMjKUPUkmHgzOir7cryBYVWomtSbT3d5eSGKZvWOwgOX6HnSKJrRI5k408nNz05WWPYalMahDVDsRrYR/A1VfA4gerDgod95AVOnC0U6qYn8vm+1rVaA1PMH7EOB9dpJ6wuUeL029N+BQjahbf1oJUH0YKU9Jqs84Uq8EgO/guQdXTwi9HN5N4Mr4bdv3wvEd/CHzNLZPNMddGin+w4dpwEd+qZyAreBMjRph5cf88rj86fRVcQ2zeTM1QLwUCgYEAyEMF78VGJD+jihNvRqQXtsyunLUq/BzbqPU9gK9pkhiWScujMftYKHZ8Gf1FndpTwLMipq5JXz4B6iDzLg/oZ0q5T2UECoumEcm/9ANTwQrHnmeJWR9G5q8qoDI3TE9g/uDCoKmNDGSN8rC4BULO3kGmcd+OgKSfZqyofEua/pUCgYEAuNUJCvweR6ASVDdCFbBXJwo3K1ZZ+nn99fz6U4YNwuScXu7MTJ8r0c/ElhKteDnr4TwZMpfoU/hJC4ejmRVCy06SH25qgkCs1vFQ/BAiEC0muNQCvbSWJ18F6XJ+D9EkjO0HMijr0IPSrbORAP6aXG23W5/y4xlFnkAZETfLiz8CgYBExMdAHAVHI1dcbeoTXvwJuOXpSEk3hA1mSrjQ/OuK0MijFLu4yS/vzSg2oIOMflGuZZVrmYP2oct0g9YeJjZPahiSjATEPkpL53T0LURQkQwVeEZxBU2Kn/JKSpQ0rzmGrNYI59BYxhr8kPTQUa3KIs8uYW+E+4MFdhrxe+EAtQKBgQCrkBL0v1Db6xkYUrJkr2o2MqVC9MRQWywASPGS1buwS8NZ2w6HkLd76P7wziV2k0z/pGk/LQHZ73zd1ulkDvgQ/r1jr3ntrVrBqP0i+1ai7UYkCacBr74wjWNPbZbV16u1o84qIRHCWpoT4bmW0r01TiIESlOJuMuGOLkL4l5swQKBgH+XE0EAf9OMNVcpPH4lfNZtDo9pf3+cxuWs7bt0lgDXqANxLOEw9C6DfYHtzwAgaDosnfNY39oZkCTtKsvgn4iRbWUiEX+J69uJeyMX1XePqnB5lhx8JNdbFIp2cospD0utMypd97TQNUI4uW0zkHbJYMUjh+/sHEUCGCpHBYQ1'),('81d7d98e-2e94-4d4b-913c-f0d961377f0b','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','oidc-full-name-mapper'),('822e7bf1-01cb-4d15-a01b-a1735eddaf2c','ad636da5-cf07-490d-a4e6-2155d47db28a','algorithm','HS512'),('837da2e9-2686-49a1-a7cb-21c30d378f2d','e52469cd-5270-417d-a4e6-c49db8cc3470','algorithm','HS512'),('83ec0f6e-451b-4090-a7f1-5bde7b79ad20','ecf7b923-da3e-43ac-9af8-d6b334d5afdc','client-uris-must-match','true'),('84634069-2bc6-4508-af48-9128d7041d7c','6824e828-2b79-4466-bf3f-b937f24f79bf','host-sending-registration-request-must-match','true'),('8484a22a-a78b-4c42-91d4-95967c12cb6b','f1d2bfbb-3593-4b4c-88c4-fcb8350dca3c','max-clients','200'),('8504fbea-1b82-486c-8be7-4ed8f8e0024c','2e838387-ee6b-48d0-903d-099dfe836452','client-uris-must-match','true'),('873162fe-2663-439b-8d63-c81e41429ffb','4f2222c3-3320-4ad7-9ea1-47dc4ec1137f','priority','100'),('88d20503-a313-4796-9a0b-af8ca379d532','daeec439-ff12-491c-9771-f1ba3ef0b5de','algorithm','RSA-OAEP'),('8aa4aa21-12f3-4fa6-a5a3-59dc0618c339','4f2222c3-3320-4ad7-9ea1-47dc4ec1137f','privateKey','MIIEowIBAAKCAQEAkQ4+H7In9jAXkfD7eKZEck9limjoNq0OEjFJdGKwTaZCDw9y143cpaaOsit98YNgl+zqPySs1HJpt6Z3245Tvz1DaDZSEm+4rzKSYfkyZZclyXuIXXuBAE1fxrRzMraxs7qmxs5xi+4zmP1pXmT7/4icjZ+BuNo7LdEGOF5XCopUY82tI7bEfXDhEAbd2VP7QOT6pG4wr2Wf2tEBsdSRh0rube6k3IPcPbAyj7/VBMvVEooGiNrrG5Umu6yxp2e7Lomym90xJDdpICP4U4CiG7HA8BL1666zUlNs0GuF71C9CB+uFvbxTYq+WdYyVYF6s2dKUtirl6jVJyVUXCDKYwIDAQABAoIBABYf+i7NzEBF8UUT4NoetjWfUZ7CcJpCXBvp7kkfx8IYQrQsXY5uTMJBfOYahyZq17Vkmrgl3my1xNU7wXAOLfeZ9Gmf+3W6GmKH+qw8nR4XZ1lA4TmtCFik9J+zehdj/AfXckUZoQJrGJipx8Qbmr+iX9/5fTOrqbd2eJXpdypGrfZGYpdaehCrtOPlIVDFbeQDz2633M+rpmp3wxODhn1eGkyCTzh0MqqnqEeAME7n3Jx1K6DzGWducG/f5mpXcDoUZ/KQpp8FTchKUqF1s7dUoHGhhrUi2yFLq9mnpAjP1+JqBt+Jv43JrWiqHU9RqrW6TBPnKr6Q+Y6nkQ9GQqUCgYEAypVMYQF0lJZEl7eMx9TXy3eqlszgL0laOk+X5yU1dO1b+IiinaHgZUmO0OVD1NK7gKkvabfn45EKBZBVqiB+/IfP2RtIOsgoEb6ih31DWjGnKgrMOg3H9FVyC3BTiFNDRzx/wuQUIFjgXckyQHRUZ1Qqu3hfg29KT5eK0TSctgUCgYEAt029EeMAJDieORf06wiyJ7uyWh0jN05yMTc34thcJochEx4uoX3YVUJX0AXs0AisiVAwelnRxkuNNit7EEMlIpw1sZgpZ6YWRzFsvdRvFDc4d3c8Z4imHxOEGfZrV2ym5XXeQ0PXQnQHsKjUCm2lgmXFac/ttj9vDLjT8xybQ0cCgYBY9zoEu+vjuR5EdqJHu+xM+a+b7Dtj6NXMF9pA83FHeVnTisXHbiiqsqQajyS72RPpC+O7jL00jiSVju5f+UdrRYV89eNBlVcre8nKsLMccAPWjclkkVrHraKY7WpxywcXyLTe9OT107Is3cfI0I2klyzxCYsAoKZEz+txtqY/tQKBgQCnQIFhjrSUWCzWf2t0AS09X9/upWN6lVNQYMfXbf83EFk3bnSx2XfI443oO1/GugNkDw0MtmPYARvJ74aMYhfCKrI7Z1FwR3VQZGKKGwl3cqNNLjipZ1/cPxxr7BIpZPQrro6s5XvGIMTbhlBja4R3JJEqaRTHE74p54NM8i8hBQKBgB0RQzUCBxl+YnfaTMOXsH5n79rmDkPByqOzD2fCBSHPhA8DItxhQJCYL3DD0V1KeENp4kYysMAAk9vSZab9cRzVnA+tKg9iNJQXSKVQFqOol8sgbXZl9D3wpakevBbXtgm0jbNlP9KHIahI7OUrcvb7aJIeiDd2KVVJAv4SOEMQ'),('8abd7281-c07c-4fa8-a641-75591e82e5ac','7af27123-8bbb-48e8-b80b-8e8d54526e81','certificate','MIICmzCCAYMCBgGO9SMBbzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNDE5MDY1MzE1WhcNMzQwNDE5MDY1NDU1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCskYfl7l+pmbqqr2tT1SgamhtVlXLp3HwMM7+1G0j87ymGk8AG2mWaKKbgpap1UmhU8w8HoA4hvUIhe84kWbGpSHXUujiJLhkWcXP76WOYbryINbWuiJpISCQR3KostdVGNWmxdK6vqn7RZb5IIJQcZhHaEiJa9yz3JtrcQ2qEO4S6y1+c+HP7+4AsGy+Un37SCtIsAJMeO4LskaiN0o1YrdWNPE/alEOwvBHIlZHFV74T9NMsiFYDHE/tv1CwF97sy2Chwr9GT+e1luraJ5nYJ/lz2t5UQ1xO5Aj/qjWFHBRav1ZeCBrNRsrBXthyY2JxsM1SNrO6e9DWWg1FIFE9AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAD8AhV/j3olIXSIO+5FSliDkYh+NZ2iVhjt4v6cESc+NfYvx2fwr64SsEtAX9O9A4HSLsuNzJmv6QeZvhQaoi+0Q6LKnmIWtfPohGckzFo8wurxwxWYZmlHDXQFnrWAdS4AdkK+Diy8h9cYJjuMrnfifuwZtqrGG4Wl8pukk9dZzR6FTQbrsrwBI7wVAU8VfRzNlAfQGZ1hJHgD6IKQojgJuYDzkM4iy+2XjOegEeyh1zQ5MNMGj5Mo4s/2nOAvdLBj5JFU8vRN6JdEaJ4EjHTfLVbu9yG5/ineDrP0ppH0tC5wajipLv3yRfoo+3TQkVQ1eORdowD4xjTWBepOSYcQ='),('8b6562c2-e90d-499a-ae3e-7133ec4c29dc','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8b95c30c-529f-4ad0-9bf9-97413cefad62','7580a614-a8f7-40ff-a5af-7b8aa837df31','keyUse','ENC'),('8c0f5fb9-de3c-4f5b-8dea-0c7a0b08e0c3','7580a614-a8f7-40ff-a5af-7b8aa837df31','privateKey','MIIEogIBAAKCAQEAtHtieolZcF6V+btWlHtsnAUQIGEAjNQOyYTbLkiuwpmbQ7NvDNmWr/HbKdqCM2h4ll5h7/SE09L6xroG5dl6nvZAoLbZbWvr7/7C4ALvfn5KV4F/uwGUVqkg8wi+d6n952LGVzcIMZBGUaWcrTZnD8IVP6cLO6K9Zf2mv/6w2VTAKDTpS5+dYLf9TaHvbdfEohCwtXu0Cw3ZYLl61FUv6FR9Mx7Y1ehXVEPVfuksqfYkY12BBpXoGaShXcCXkUduOR8abbahBMLOi14Q9UBsS0ZnNyz/Mlzp9slSlmtpMQSk18hvovV4FwPY55hBGPd0dUlvm9crAclmK/xN4UCekQIDAQABAoIBAAawUfCCTvHBV6PnOP4MwEmHTdcysR9cVpCftLMiQh531zoVmCaCQ+Q7vZMaBDGdNrw1PZeeg3O0QdNZSUXTHwkYIuyx33H/ihbIECHW31hb8YENDWuj/dg5Br3AaQqsnqUo0yVKpqpA6Lzq5dkXhznyx/B8I4hExOnW54tTCEEto84SoQ3qgKRLv5ei/56B7PKaHocEgK7N6AG7wScv/aFT9dz4p0PkQuWugNoQnwe+6q4pTjM5pgXVE0ZOsNBMUnNq2Z6iTP4v9tji4L4VpNr9dEhRh+1AJCKsFMRhSFf4uUuZCzuv3SFdNQgZL9t8e/im1JbSzZOgL9M/rF7c1scCgYEA12VmSkDjcIH1bwSYQhE0C2AIYPlY98R1iqpf8RVtx8UoaKDY/qpHJLNnrpA3UXEiR6SdLtrmcugHlIhMRrr+rtzHC65cC4lCkfE2H9dTgnDUAiN49WEzXHO98ZhCdL8v9xBv47GpoKVd7BB6uE32lDXlqWxbBvncoidkib0SBzsCgYEA1oEYz0sBeE4uBfZFdwb/O8aefk61lvv/STd9i1U1EirW3I7qdnT3znOH3QWfRzx8r7aejgRsEC/mL83RBS2llDoKIK9OZZRGR8pV3YQxgBZjFUKXSnfUDMj0bPE5wp29kWjfEqwyMiJwdogBxBj7NNWtLX8t0jrtrzDKeADZzKMCgYA8LaJEgJiKqGRv3fLEEpZdzzjIDyIiJwtH8I3Zh0kilRzTDo1RqTUzNcRz6urpoBgZuA4KNzJHTDhB8UqOQFRDen9J7i7dMj4dFC0w/DHisa8p4cs7kyqMW/Hne8ilYXz/I+J+1PY1Yb454+jFcVLA2cYOba2I52oTC7p1GRPeXQKBgHpmvlaDcXpJ+l8ykZ8DIh/lDcn7dgmLELih7oTUgW01ftfqwYYI5uMq78tCiwomTOwjpERb56IxAwQiSPTQgFyd5euSvYSfYJ9UqTy3U1vI6o9WKWi4CgulnDySRih0xJi2JBzOn/IVzuEEaSWSL76Nc72zhd0h/UFr8Q0bRy1LAoGACADkvsSZmhW9P+/dIM2wvIch289WhhY6iHhwzhsiEGWEQyTksi4nrU0u3Qgq/vrRiUkUQBBIehphGjR3NHow7N9YjYhw7VKsiGlPu+YhIlFCJYQq8gIWZ09/vWdrJr0yN38msAiFOzm8/tD/GBrfFuqehrUNSk29ho1JJJKSr7Y='),('8d0c7042-2697-402e-8310-8215c6c60af8','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','oidc-address-mapper'),('8d2bc194-3896-4f7f-a5d1-f8d13c87b4af','7461954c-0e38-4a79-ba5f-31421b821451','priority','100'),('8e42193b-6a2d-4e2b-bddd-48aa293ed9b8','79fa19e5-824f-445c-9d10-dd47a4851be1','client-uris-must-match','true'),('90199c6a-ba48-4491-b846-1b9d541cb8f0','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','saml-user-property-mapper'),('914662a1-5460-432e-b005-26c92966e3a8','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','oidc-full-name-mapper'),('915e1683-6dd4-46b9-b429-86226396f528','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('95dabbed-fe60-40d8-bb40-6bf9f11df0b9','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('961b521b-e5fd-4464-a3fa-d96e84277064','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('969dc503-d395-446b-8b93-adf214de05cf','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('97270e36-9542-42fd-926f-626a22e80f74','9c1d8ef2-f8c2-4399-92e5-fea725ed5e90','priority','100'),('97a5d2e9-af5f-4bbf-b3cb-43228dbe2179','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('97d2a75a-377b-4a3f-9f1b-84d1e0c7366c','d204765a-bfda-4a39-8f1a-655886ddc434','priority','100'),('980199e5-a285-47a3-b4b8-c7529c46f8a8','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','oidc-address-mapper'),('98710bce-e5ea-43b9-96d1-5ed9155b0661','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('98f9118b-9d26-4b70-8b1c-aa07d7f4c4b6','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','saml-role-list-mapper'),('9a2caab4-4a10-4935-ba60-3d9b10d3534f','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('9b1b77d1-c093-4b99-a8b2-130c66d5b76e','ea2e3ed6-db4f-4c5a-b0af-826b60914f9d','kid','c76fad27-8832-4736-945f-302d3cb83dce'),('9dc242df-d573-4ef6-b492-f45057d1cb16','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','saml-user-property-mapper'),('9f6f6161-9177-47d5-af51-bf60b2fe851f','190ffc3a-35b5-4cad-9888-b90603cec537','host-sending-registration-request-must-match','true'),('a1429319-6c0b-4750-8974-ebcd14312419','d204765a-bfda-4a39-8f1a-655886ddc434','privateKey','MIIEpAIBAAKCAQEA4a0eQNM01kDtASuOIIRmFyPTgEWZBDEABqCnE1+Z+d9jjdGRIp+pbGwy1lBor4CjPc/VyiifauICt+FC1+BAH3BAldHkaaay20F+h2iRXQkdDRX3rL4HGCs1WR4C6WnHRaJf6sg9ajtq5IMYM0wJUE6eyxUFtjwms9ASYGjGrqw13BFcyi6mHOHUEyRCBImSQuBI7IGZqzfFU7mhIxUlekse2ibFXowm5xM/fcTg97kUhbJaws1OlM+ugkHsZfdOeSB1oLO8ChYIX9ZH9YtGQxV7J7F0o/0Pw/cKLzDn3N/TbSnrGJPEW//nQYKYCU9IO1aUqKR9XIF0RqnsBf1mWwIDAQABAoIBAGM3NYhBcsbJN4leqTcRjkKZHRiVQI8Prde8FIgXbT3mIMIOQvUKZbWFohoHsuaJsvrvXynoDyIx6AkIb1cyP26y7qoPY5CxWYu8cRC9/757zbpdkIxw5PSStnsODzCoMRQjrXCuhRWptrZtDhwrTyLv1a8p+F9kdY1zKkkZd1P+DV3jFwSUWvM5/JjP5sGi8fIOgxVhd0JZ5VP2PGilCfK/MeagOn34X+V6+VoKoywT6uJKtUGYuTJKY551EnRHulj2zPMeat6BGNDrHMXaaQYEezfL7z3cYcRafY6JWmBcRbWEGYKsGoHqmZmN4od1VtYBnhQ8E5wpDxCxHMqzFV0CgYEA/w8vogthYNAQgD2g6ZImLeIhA7a+mhk3cpEFVRzcAxoI615HQjnwEi6TnxoDhj0rXLbV12aVHpcqJt4sgPeLguNC19ohogCgWLzcLS9SBPIi78QBNgFqQAuya46H+kE0v3mg8q7GMbbZs03sNFlHZrPEJ8RSN/2kWBJNNDV9DN8CgYEA4oIwq10jgQ49r7vUtaaGGcrhFeXt47sOwECIlpRlwi8hyYXHXJkUkCuuSarLsLPsr55e2OTLwsRYpN6gHaTpTvwFIPoq0ntm09RlapNWYsTcjUwWpPKxc0cfrlBZT2Y4EusHgZ40t7Mw6egfGAGdRFCS9AjXh7MdUf8qeSrymgUCgYBT8mmZCenY9WIY8y+88G9EdsKq+ECvc1E+keCRbNg05SK+ZN9LOsp7EX1gxi0Wx5c4Aq1LIeY+lT44YLOBFviB8c6UQKUFLvOXgUFuVb7HBfLdu0MyxTB1N+RXZif3A/Maeiuw9DkjL61jSGhPqnrHoK8U75an+wFWQ1/JqTkpPQKBgQCHzP5Y/1JWAa/COJ7i+Z/UvuoMMvpZWsERSp+ZiAcqUQ+0vtw0DCNj/IxV5myQ2I7DC/RZnXL8prNuxXrByymGDVsV1mbuIsYXonPbXdKhDN4eaMv6wPba4n2ACPRCwkpELV0mvS9mI6zj0CM0RWOAnb49ST/PP/gIPS+9zZ398QKBgQCys90+jwDRFArLUxYo2pX/Bu1z6DmQjTwjdeLz03HYmAa/JLaOhfQLHM3rArjogHlekYOCPlTciooEiKf1IQ23uomkC1qUXKFd2VV3UDbS+2VENskYjEaQZ5f8GoOM2pzQyIA4nsdHiYG1rLNyoutnd0kRHw47AAOgGbTYcH25BA=='),('a1566320-cafc-47de-b7fd-f892da1c5076','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a2a291aa-4834-4367-bc60-73004754552a','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('a463ef25-5757-423f-abda-f2fad71df31f','2dda16f8-e2f2-4d6a-8b47-71d0e5fd3bdd','kid','438a8b9f-b3b0-43bf-a90f-15e271035c86'),('a50d5753-2856-4aa8-992d-e02998bec34e','bb805587-d0c8-4ccf-8fef-7c7c12749f44','privateKey','MIIEpQIBAAKCAQEAuds+Xyy7TsBjQJ/g4K5bXL1RvTVR6U+Biqdgn0pfMVdkMBpu1+ff0QT7YofOA58VOl0H9DdaPLBDV4ddZV9/xhFRHE1UXHh6gmmMntTYeP2wIMMmZOiXLZ34fNJldtalTJbT1+jigpeC2hN5493LuPo1rsY0Why5BZiKldh3GxsDulL3pzXqauecsl5a0QcWQy0p2tg1b1GFIsMeucPgzU6Wfhb2B5BSN2VcjGEay7G20BtTr5sVxvGw7nJu3+vA8aDARGScxpn3lnfiNoK2Y3R1+gnFKZE+z3EYxO1Ev4Wfwvn/9wr44e1RTlOEGrhUNmTnMrPyTis0bdbidGd1VwIDAQABAoIBACEWIcVpvjKn10OC8tKs14DsBygq3NkvGT2ozG+vGsE68JALtJ3lHpgkTehditRkNrA8LZVRYVQagPKNG5hXZvTI0mq6bYFExXJ//dOsypjHeNpsQ2KFcZxiWgFGp19/mM/Irg/q2qAq/tV50CI7su/MQ1BI4rsEEAAqBsnkTlfZqmQMHkwPagLBFFvp0v0iaIFmbR6ZQ0MF+J1xs/ZkS2Am19fXX4nPLNKhF51gdSVZeFuK/+xKto7t1W5/3q+B7v62MOX3V6UymMjiW8Gc0o0AUeDO4AUdngP8f1UVF6XSTDm/3NyFCPUkOiM4Reo1atm0ocydeoBxqWgqsqtAh3kCgYEA7NLyKecEtlDkvcOqnCJhx4zSyU8lrbDWtjgXrTpDPLW3xRvMSi3j1jSiDb/1FkFQKe9n+CsjRkZVzCutTTslR9oLgY+RRmozDF4HC5ve2TMT5/35l09L47BpqkDli1HBhG7OG51Q9JhwSEGFt+4yccJW89Oab1jFw3L9Fb/eXoUCgYEAyOfOSbLQU7d3eCe52ND6AytfWLvUizRkZCibCyhMZtHUecaKfi87mYcCtyrcFlFnz22gskVISXcT0mjo9YJxrV3FqHbmN1g/5+soN6e6FoGFujekSv36mIvUTJ/MukO0ODQn4pYzoc50S9UVZGBouNkhu0KAuamJ0yc3NhhH0SsCgYEAi+3cHjwdAahsb1+keBqskZ64kS/NwIIDa6la/AS347AvRCy3mYDh5Rg2RE+OfbbbqduGIBFFB2nZmgiYnlB7J6hDMitlGCj5vq30FbzkgIt4kJP1HJ1C5ua+mFU+DAKjiB98cr6SLePAPEFSxCne7m54uBroXjAisehId8hlmI0CgYEAixIbdFy5ZRodMymctn+CcWs2pz/uUyZDUCnjmYedy5b4lAthlxOvGAmjUZPzoedcCvSCRqU68s/hAsfoavqPIklFJ+aWWj1Wj33y6wPKBwZFwa/+pILHU42HujrsBwwS1s0Txv/eYeV+D3hDRKaQF1UGyo+wd9TqOSZuS53nKN0CgYEA51kXs4Qm9e/Z8Yi8riDMkdl4SvsoBx7fHbJe1UQYT2If5R1TTeytA3uSTOJwlKIHQmjjjYN/9gH4KDTc59TX5dNdfIJwM+2rlXesAIYRfo+K1xL04Yas9sw9KLxYN02jtTOE9Lau46prIJqUJSBnIG/EdP5N1xIva+mWRuFQDLo='),('a57c4bc7-18f3-47cd-b077-c436a41a2ed6','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('a5bf8bb6-8f21-45b2-aa1c-b42a9e460049','ea2e3ed6-db4f-4c5a-b0af-826b60914f9d','priority','100'),('a64a7ba5-eaae-4378-a377-05868aca92e7','ae55a60f-e283-4138-b0bd-90b3c941ca72','priority','100'),('a69c2548-4e3c-4e7e-a65a-b92f0053c17e','7af27123-8bbb-48e8-b80b-8e8d54526e81','keyUse','SIG'),('a76f2fb2-418e-47ab-9865-adcf3b3cf9ee','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','oidc-full-name-mapper'),('a864624a-838d-4422-a632-cf3e9a873318','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a8b54d6a-e20c-465d-a42e-56999953dc23','b4346dd5-f5c1-45a4-a1ab-e477774050eb','certificate','MIIClzCCAX8CBgGO9SiOYjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDQxOTA2NTkxOVoXDTM0MDQxOTA3MDA1OVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANou0jH/OslJU1iNLRsNeQQvFd+hBV13d9b+UMhjuFUKKrN7x5+ZPdIfCGTawwLGs9ufbuY2NIMjXGS0O8jU3aVAGqC6XMYUvg+V53q2V9c6nxsYiSPA6sxVq/GCzKXSacwpe8J9XpIqxpKwsF8Ksd2kZYcgE0IygkQsmQK9J9Jl7blJXtQeysfOCxQGoVuDH6M7uFW3lANxU8fHhRU/W8ZFYgCGIJ+hyK+gEAJ6u/xKehBRdIDnuyS188AGrOAW6k+KluvZlQft6kS/c1hhvUspOad5u70Ukf60Y/np9Xz8VLZ8RnQrE0vXxLXjcR0MvY8g6grr8csu7Xt/XHygcvkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAEWRWmdB+YRrwC3GyBNvuIJYMU0l66T4n9mJgDJIYcDVsDbdGpJRGBGONp8U3cxbDd8USfTAmVPNLUf5bDhsLlNug6TX9VcOCYAU5dyEYaIrs9Qw1z5lvaeDf5jbVAemVIeoRPpmpRC/t3l20QpImFTMuHMElNXwc5O7XxHkrjhBADwJ3lDPjJWsWGSsu9UVgb3mEqgCYc6y6JI9621K+Zl0Ju5VfA4cfCuwShumzKF6mdRDVUbyO0b3kEMqDIFcUTc25VCI+PP3lMoeXN5Ov8AEeX4eTEE2lPMEN/95CVg1hsJuIo8XHbF6f2hM8Uq7B2Hy3+IfGaEKI5iL7vC/E/Q=='),('a9dc1414-6c88-4735-93a8-f0c4879a5d7a','b4346dd5-f5c1-45a4-a1ab-e477774050eb','algorithm','RSA-OAEP'),('aa6e1249-483b-4519-b424-edd3d7735bf4','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('aaaa636d-6b3e-488a-ad5c-daeb3c58a5c3','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','saml-role-list-mapper'),('acb652e6-c90e-42a6-a970-93de1a7b4f9c','bb805587-d0c8-4ccf-8fef-7c7c12749f44','priority','100'),('af594403-766b-4230-a4fa-c53ddfbf6270','3907ac40-366b-4aac-81e4-e9529b9491db','host-sending-registration-request-must-match','true'),('afb7392e-66de-4b7a-b9b6-272cb2b54b81','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','saml-user-property-mapper'),('b0962f1a-68d7-4d5a-85f7-8b1c61e22815','f43c0ab5-1c4f-4ec0-beae-11dd783ede5f','priority','100'),('b0d7472e-fbf3-4249-a509-6aeaeda6b90f','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b1cb3f98-21fb-495e-8e09-d202b1dd64f7','43831e64-99b1-4533-a1ee-8dc2d5a26278','allow-default-scopes','true'),('b27c5fce-c3b3-482c-a0a6-52b264991bcf','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b284473f-ec86-40d9-a633-371b737e562d','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b3952e7d-4b1b-462f-bb8d-ee7c048d6850','c89b8787-bd3c-4475-99c0-e44411e47b1a','allow-default-scopes','true'),('b45919bd-2820-438f-aeda-136229f9461d','02a00557-5b16-4e09-a18f-69ab5ca8d5fa','kid','a3831aa2-6c52-4fd4-9795-6da59aca709c'),('b67ec691-5945-4c81-83e3-d2a3529acf66','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b69694ea-b861-46d5-b15e-e7062cfdd013','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','oidc-address-mapper'),('b6b47a7e-9671-4f4b-9871-be28b8044d08','e52469cd-5270-417d-a4e6-c49db8cc3470','kid','f3a42341-d002-4f96-b733-50b83e519674'),('b82ea237-1be3-451d-a227-001ac8389f23','e52469cd-5270-417d-a4e6-c49db8cc3470','secret','WASBODHDygHsI_c-c34wcJ6RYRUe3NbLp8a9HDbjlye9nMBSmhf9A4obrQQXXwLLp7v0a9IJ7BfCK39AWp1All32Q65nw13sfGjoqtQJiSAfOUTWEMQa89vj-oToT1bG3zjmXVO584GukzK2v_iTm9WQkAYbRrFNRvii1677aKQ'),('bd5c277c-9743-49cf-a25b-7185a6344089','1062521b-10d7-4503-b695-3a5ea8200cc4','algorithm','HS512'),('bd763f3d-0eeb-4a90-ac9e-7fa860dbbc30','53643771-4ce4-44f4-a739-f0aaf62ce352','secret','9HhokL5xGAMUbsa5Wl5ZQg'),('bedb8288-cf4f-4556-8f24-7303c1c61fdd','bd9d9f32-1ced-4f85-ba92-cd289e08cb99','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('c117736a-bfe0-459c-b37c-012d4cf3a7a1','80a72c52-aba1-4c1c-aaed-2f2d19816266','allow-default-scopes','true'),('c192d015-12ca-477e-adcc-69e503a29553','bb805587-d0c8-4ccf-8fef-7c7c12749f44','certificate','MIIClzCCAX8CBgGO9Se0UzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDQxOTA2NTgyM1oXDTM0MDQxOTA3MDAwM1owDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALnbPl8su07AY0Cf4OCuW1y9Ub01UelPgYqnYJ9KXzFXZDAabtfn39EE+2KHzgOfFTpdB/Q3WjywQ1eHXWVff8YRURxNVFx4eoJpjJ7U2Hj9sCDDJmToly2d+HzSZXbWpUyW09fo4oKXgtoTeePdy7j6Na7GNFocuQWYipXYdxsbA7pS96c16mrnnLJeWtEHFkMtKdrYNW9RhSLDHrnD4M1Oln4W9geQUjdlXIxhGsuxttAbU6+bFcbxsO5ybt/rwPGgwERknMaZ95Z34jaCtmN0dfoJxSmRPs9xGMTtRL+Fn8L5//cK+OHtUU5ThBq4VDZk5zKz8k4rNG3W4nRndVcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEApP7Zb4xOSt9bpb39nYrXtE6xrg+EN8KqEu6n8g2YiRQOW5YNTRhKmlryGpRm3IDQIiy0ezbruISM4vwnR4BtzHUkDf66tGvCXVNdXeX/6L3D1QuRNr8jJbk7y/YjALpum821K7Ox4A3lSaYmsj2mdM+4O9i5YcoqepIEKYpX/s7sJbLJGUVLWm89lv3W9xPvNVNGaUphuUoZB26s0/oh1W+1T5+cSRF01+zCL9aO9dcu6qV3nFgtHRYdUGCe2VVScw4H0GA/yNHcK1wxkanl3aboSAP1Oz7Tdpsm19BUaDnBr/N3ecqXETABPJVDGo+5C+SvecYfOLNQGwVqnzg4aQ=='),('c30d9a6e-2306-4afb-9df6-f9d59ffa0df3','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c37471b6-82db-40f9-8c02-eaa4e547c2f3','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('c55c9b6d-9965-407a-9577-cea1cb413b5b','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','saml-role-list-mapper'),('c5d20da2-8305-4d27-b372-f5c1615ee2df','4e7f70f6-34a5-4754-bcea-44a6517dcd6f','max-clients','200'),('c9a27f34-274c-4a01-bbda-880649313e2b','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ca1e8019-bf19-4ef8-8fce-a65daac13c7c','1062521b-10d7-4503-b695-3a5ea8200cc4','kid','f48a3a8a-631c-4709-bbe6-bee2d4151e52'),('ccb9a658-a47d-4797-9981-ec4615dd1fdb','02a00557-5b16-4e09-a18f-69ab5ca8d5fa','secret','lv98hjALTW4kCNe4IuikmQ'),('cd3814f4-d8d4-40d3-ac2b-f19ecb502236','b4346dd5-f5c1-45a4-a1ab-e477774050eb','keyUse','ENC'),('cd77a514-b91e-4862-b685-f483592d3663','e7d36933-abdb-482e-8927-2f76059a93a6','allow-default-scopes','true'),('cd871e00-e46f-4ffd-af63-37aa6a1247a8','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','saml-user-property-mapper'),('ce7f26c2-2167-49f7-8c4f-b793ce34e3fe','2dda16f8-e2f2-4d6a-8b47-71d0e5fd3bdd','priority','100'),('ced94986-848e-46ec-990a-6539cc4f0f48','ad636da5-cf07-490d-a4e6-2155d47db28a','kid','7fe71ba8-4979-470d-ac47-ea42e5ea0b36'),('d15f3ec0-068c-46dc-a401-e02fcfc59558','c0affa4f-a15c-4e5d-882b-2f8475b43dfe','privateKey','MIIEpAIBAAKCAQEAnm+2hDpMoqYcITQBSr82CAqfkvEQA8HtnHMr3Hd0ZBhTt7hjqx2dqLFhIrdHlma/OTZTU6xEg0Emn5F49nyiwMH1RNQCdhvari/jwpq2RWMLkrTDXb8CGOJd2gqpYb2zAiime1DuQUcqAaptB9GhCuXBK4SsfkM4FqE+IdorieICJaLbBXpL9a5Vfiq5BRwUV451L+rbZKkfoctDusu83suCIKGx53IDCp/JY8Ck7ymwy8XFtXNS55qHIufcb/ZAmxguXuWsiRHO0Be4U5LQW1xTXR+jE7jEuevVWG478rnKN+Vv336Ny5iDOQvpTRL+wiREDoDjbU2duysLFqnOeQIDAQABAoIBABH1reXdSfSiCcxFvePAOxq8QYyBoQQcBphWgeFS9TGnhE3uK/YovEd0HAO4bPgCm6ibnOR+QaHzT7KE5gZi6HwbQHdV5RWIYMigCxxzNzg0Wwp9TSwiS9WQS308+ihnPZSAEScnbGqf64YW0JczTyMSGkyZlIgXjJMcIhPqTEcr1sqfOpnMCXqebkilPLvbCD4/LN8T0aQdqEH9Imh2jazgu08DERQLMADFbpZSIIb2FYY372yfeotCUSqpRSPFgvhyMUUXOvO2mQTEv4pfdU6+IfCLdYJpIJvPyIs7MnjhC34pmO8we7WYwhJpQkIrKCaFxUk0Xka70d0RcHQvIQECgYEA0YAIif5trdKZVLV8eRSIjJWanHhHxg9i5lJCWvRriefv8QQkmJE+C5ZwwA1hC3nGai6XO0HWUGNZBkmIDbZrtbtzYfzpTSbybL0bQ6AZy1TOnBw6ZO4gWOeNGcO7LuEsMEnBk2kvccvJJpxAsgbVGj3YJ3NBDYNPkEZTCzSV6+ECgYEAwZoyLA0yENSNRS75HgdCPKBOOtlz2VddtmBoDj8N8HoZnz+f3ZR/J971egdVRE5S9bFKU9k0EyKaMAH8rJu+5TpewHwFH7Q4g2sbdXR7EFJHzvA2QVsodiCUaJE6WXZ3o0L59HzgXCAvlZF6zHgxnTJSHUMUS+86GFCmmdyCdZkCgYALPU83+ApyVOYdAU+YP13EDRKqalmPaqvnp2of7xUF5QeeapZ8CO7HOF78LruSHgpjD/TVHQcecPYJvFAsTCkjKtdZ3nO1y+0doFeiHSjFG9upzGnlmFDr9CBBzZpxPWtde9eCzRXaiRBVnfRqmKs+KSs7kpde3jiaiOtTopKYgQKBgQCjefvBnMbY1VIQyDBM/d4daVOFd9bOAGq+NDvJQ88Wb1OxV707Ekgot6jaiNSkH+sHUdQsZy0Et2QxA4yDh+Oylg4qRM7izYAm4EtIa7n6ty+xer6lgz7wOGR4w6DcqB8vub9shgHBaOAlULm7bAag8TvLP7gkwnVw0LFNHJkAiQKBgQC9KgmMvli0YlP8XsryanUfNuSyrV6hsOd67E0RR/6nKm2EfB/stiPOX3PDyblboBbyicECtezUz+j4OIo+sC4hHUp/LBSm+OIZ8VLev1vwWE+Lyv5yum03KeoNKFe25bxWxdPOr0XxrQBmhR49W1njgpPA5Yy1iV00BfMQ5KtukA=='),('d24ef350-5846-4126-8687-0a36e0d9a975','b8cb0d68-fb60-414e-817c-caa88e5db8c2','allowed-protocol-mapper-types','saml-role-list-mapper'),('d485e78c-9309-4430-b401-ae36ab684e12','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d4c61866-a197-432b-969c-d1b0d7b2707e','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d554ac46-63ac-4e85-9550-de7e1e69fc2a','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','saml-role-list-mapper'),('d662ca0a-22f9-461b-98bc-703219930d8b','4c56d54c-71bf-4fd4-95c5-a6a11d2cd2d6','max-clients','200'),('d7f17587-63bd-4eae-b994-9a24374b1026','e645e068-ca61-4bb4-a9f3-bffac01e0334','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('d814cd24-b786-4f05-8130-d46b61536b36','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('dbc9c58f-9b79-48a1-b572-de43193c2ba0','9366c18c-4fcf-4b2f-aac1-3bf110f45884','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dcb605cb-d3fc-43af-844d-2fcb5faa10a6','f43c0ab5-1c4f-4ec0-beae-11dd783ede5f','algorithm','HS512'),('dcee0935-3c32-4e66-9c85-5aa955147853','be9be5a9-43b2-4e6a-81ef-e9c205522b85','max-clients','200'),('ddba6cf7-1f01-44a6-8745-ada986b94e9f','107460c4-3f19-4ef4-ae91-d9220ae32244','max-clients','200'),('deb92276-c156-4c77-b23e-8a3b917ce7c2','689132e2-7066-4364-a8f1-21561835a52d','allowed-protocol-mapper-types','saml-role-list-mapper'),('df7f1735-184f-4ba4-a065-b806b3980f9e','cdd01159-3a0c-4a85-a0d3-fe649a6b8fe3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('dfd270ec-2b12-421b-afe5-5b3154ae37eb','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e111d3b6-a371-4a2b-951b-f26f9d7aa6d5','7af27123-8bbb-48e8-b80b-8e8d54526e81','priority','100'),('e1ee819d-b7a6-4777-a5c3-523bcee81ac6','59cea87a-5574-4a18-aa7d-0322d8703936','allow-default-scopes','true'),('e296a0e3-45b5-45bf-8802-e45a14d12e4f','7af27123-8bbb-48e8-b80b-8e8d54526e81','privateKey','MIIEowIBAAKCAQEArJGH5e5fqZm6qq9rU9UoGpobVZVy6dx8DDO/tRtI/O8phpPABtplmiim4KWqdVJoVPMPB6AOIb1CIXvOJFmxqUh11Lo4iS4ZFnFz++ljmG68iDW1roiaSEgkEdyqLLXVRjVpsXSur6p+0WW+SCCUHGYR2hIiWvcs9yba3ENqhDuEustfnPhz+/uALBsvlJ9+0grSLACTHjuC7JGojdKNWK3VjTxP2pRDsLwRyJWRxVe+E/TTLIhWAxxP7b9QsBfe7MtgocK/Rk/ntZbq2ieZ2Cf5c9reVENcTuQI/6o1hRwUWr9WXggazUbKwV7YcmNicbDNUjazunvQ1loNRSBRPQIDAQABAoIBAA+8VYAJ9H8qnXLi/A5w6W9DjiqHrirVCBq0vU5uZoFp7YdwAZqeX5VnD5B8isaX9RuJ7lzro15AO7+B4pI9+41MJjJ3qKAZq//36HOYHJTRxC9HdoGrwyXELkXSsVHSYtg8Fp8v3J34FghSFr/M+LR+OjKAZNGWqGsBCAP9wcC85gHMnPR8bYi9cl+gru8Hyotdm0nWBHtX1bYffJd+Pw1Nf8BuHgIpWupar54ljvzTaNrRWQTRKiOd7noQkSvLPE2dW2OoBQKo4PWwwFJ7tnhbLTQEgtUK/ko8fTGgabc78xEhGx+40n9gCwsLcWg/fHs+1nX57isL5b4Y/iP2GAECgYEA7owR/vvkCoPMX78kKkYHCIzsOZMwgXEG8oz8daALoxqX6InBblDGdH0yLTE+7TdBIcsEsyfbpz3KpoOBEnsjJXh9qENFEAMjRCHonGcQRkgmsjcJ93vbnCl5CVh2rNZjMny9VfIiR+GPBPoSCkNZKWR57EZQ+DTZelNSWDzpyn0CgYEAuTGyO+msfHCEU50nvxCe5+mcbRjtnRlQntq7zuck4NZk37yhrGg/Buc35vRVDVIDLPtkeunZnyTuMBkQLpkt8612zTsL4Nb4ZJSivVjfbL+SAQSKAuFoosrTNIKibUgCzs0JW+NVG5DK3EPEN+vU5q+DklxqhjCOFafA7bVwncECgYAoeqpfG31h72WR5cyMQ9/Tqp43UuvLO1PTeusoRqVS4yNd+WpSfvB+OfR2yMGF3Xd29Y1xnVTft1OZF/2iFjUrmZuxHuEsS2wDlsFzMOYJFxtB6KcPUPw+Lqd0V4ej4qlomtRCLll02yi6znibNzx9EqjB2FjLFaTF5je183g0vQKBgCx2B+pmYWjGwp4oXsB6Rww6g7mVgIZ062wX63ry92GbV0B30wDHTkpj/IHQKxM1m1mTST5RIlQY065sdfwZ/nRAMwN2p5VlRuEu5hs7WPiMzYq9Aj1KzIo405gJvOErprDrfNG4tFgX3PwgsN0UG1r+zEG5OkHZKmN8kM8A/naBAoGBAJHc/ITtDRhRX55qEOouTZhwj+aIsCxdyAgSDlm3M5Awp45UCqy58cbCpuJxM7uTg7i2KpreKtJ2gohuZLU40ZKHRUUYNopTM8ei0S/A78kc/sdG8XcfRlHA/ZLL+VHs5Q1BXo9b6aR2vQbzG52uZg9nOklX0un+o8MPfXVohhH+'),('e45be58d-0c6f-406b-8818-5597fc1791a5','a1f8e706-cc40-41e2-b4f6-becebce80aab','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e4fcb5ff-cfbe-4f19-a822-661c00d84908','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','oidc-address-mapper'),('e71101f9-9f15-4916-9eb1-38f7d1278ff3','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','oidc-address-mapper'),('e8ce887f-692f-4f9c-b0d6-24baded4524f','54bf832d-4472-4142-b89f-95f7b8cc9667','allowed-protocol-mapper-types','oidc-address-mapper'),('e9c95986-f022-4478-9552-19b9b66ed8de','c0affa4f-a15c-4e5d-882b-2f8475b43dfe','keyUse','ENC'),('ea420737-f59d-4318-bc8d-cfdb208fee44','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','oidc-address-mapper'),('eba91b16-00bb-4e30-948c-4275cf76e3a5','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ec31eb6f-7ef8-49a5-8c1d-571d5a7b6771','8ce6963f-310b-4fc8-bd30-1f12314efb61','certificate','MIIClzCCAX8CBgGO9SiMwjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDQxOTA2NTkxOVoXDTM0MDQxOTA3MDA1OVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOh1Hh9xV1MvCEg7/NtG684kOcFItDSFzmH9kzaM1j3/QhTVUdjVu+dcTr2ES41piCZ8PIfbZN1bFauZ5SVZ8FsjaDc9+2Y5WPsel3m4BhzZz6xA3uapbB7gVwcnsBSJxWFF4CMZm86LasjRxdgLq4pY/M9metmOK3nVGMO2vq1tos2xzmIzVzCG9vLAiYLwvszbNroTPdfIRMUeyOLGuREYdb82kd8+AnELlgnwz9KYNrSxapunwvZ9bvqEuky1Vf0n5KhPCu1YiUO9+5rg5H3ftPmeMmGQa6JSnoDRvwkHSqCpwH1Bz7MJJ+JnzdwTq3FpuE+GtJ6wLl9//Q3erOECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAnlLlVfhZQT3XLZo97k/HPxI7IVlKD8Rn7URoqSo5/G34MB2t6eUrtBre1ceoPBdhqgzlNMg2XqyhqFjTR2syKadsbbgjnGH+eePA/wHdUwog7Y03Xo0DrbQDLhhpxXNibpp1mCVEGyY5C49CHcKMkuacKk+2QJc9w5nkWCu+kwtswZx0Blv+B8lDTtUvpYzmuVXAgO6oagdwj71MLlngRiKN5AkYtXHNjuiY4aHmd3m8r1TW+XBOJt5MLIW0gKYtm/u89rqz3rtK6U5F6nz0hFmKR/HMhfa6bNtpDAFSEMg1SN/dx2IE98yL6KXYSy93Z8DJDaa/bl9PJV8E9DLplw=='),('ecc2126c-4027-42c4-877e-8aa8c2f14619','631d0c4d-9650-48dd-b137-17a5af583a9c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('efe86f15-e1a5-4248-897b-aff72f6405c2','bc7ef21f-ca13-4788-80fb-53958cc62450','allowed-protocol-mapper-types','saml-user-property-mapper'),('f0ec6d88-a908-4ebd-8f45-3f5216a98243','ecf7b923-da3e-43ac-9af8-d6b334d5afdc','host-sending-registration-request-must-match','true'),('f2712b4c-3e98-45f6-9405-65ada42c723d','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f280d24d-d0a1-4258-b9da-dbaf13e1085b','e2f49de2-a9ae-4830-9713-52437847a0ce','allowed-protocol-mapper-types','saml-user-property-mapper'),('f5cd526f-9b31-40e9-a3ea-ce54489c3d20','c0affa4f-a15c-4e5d-882b-2f8475b43dfe','certificate','MIIClzCCAX8CBgGO9SlN5TANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDQxOTA3MDAwOFoXDTM0MDQxOTA3MDE0OFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ5vtoQ6TKKmHCE0AUq/NggKn5LxEAPB7ZxzK9x3dGQYU7e4Y6sdnaixYSK3R5Zmvzk2U1OsRINBJp+RePZ8osDB9UTUAnYb2q4v48KatkVjC5K0w12/AhjiXdoKqWG9swIopntQ7kFHKgGqbQfRoQrlwSuErH5DOBahPiHaK4niAiWi2wV6S/WuVX4quQUcFFeOdS/q22SpH6HLQ7rLvN7LgiChsedyAwqfyWPApO8psMvFxbVzUueahyLn3G/2QJsYLl7lrIkRztAXuFOS0FtcU10foxO4xLnr1VhuO/K5yjflb99+jcuYgzkL6U0S/sIkRA6A421NnbsrCxapznkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAa9wgdlSQaK3Bjqw/i8YuTR+IC2yMXG2lkJHyAbrgPNbd6RC3JXR4M2WsnoMcY4SPN3Wtv6jII9/AoynxNKxsW/wPTqWxffGyIMNjvRn6i0GWBhkGAiBeaTYAXH4hAraxpfT0jvpIncD6VKoIWRHwc+FwppYcZI44tli8VCxj7uUv8A3/u/R0PhIhtTaXl1FoCKyQpmmOteVgEMys+3IAtetXBHYB5KLOI+xqYAUd+/12a5I9ujqW78NrsdBHftq1iH7rAurnpoHVhaT7oGnoydPSpuZ5+VsRfvFvTviE73cWDQ8a4h3xxaXWoY45LIRWyFojG5MqAk9x8I8Wvzb/kw=='),('fa2154d0-8c56-45a7-bed6-a5a3711d8d11','88cd6c8f-6ac8-461f-bd90-efa404af185b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('fc3ba847-82ee-40d9-b194-570618b43306','c9adca99-7ace-430b-b74d-197583bbced3','allowed-protocol-mapper-types','saml-user-property-mapper'),('fcc9648b-cfc3-4bef-8a88-76275c8a5e13','be2ebd82-225f-426f-9bc6-0b357b71d0a7','algorithm','RSA-OAEP'),('ff4f0535-4962-4554-8d19-6f727938da7e','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ffabc078-76c8-4dc1-903c-293aebd609cf','8e9698d5-ab47-42e3-9334-e6276586ed62','allowed-protocol-mapper-types','saml-role-list-mapper');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('0ef6ef8a-0a7d-459f-bfc6-8ca1493c92c7','9e6352a1-8948-459e-b05a-d27632c75275'),('0f51bbfa-415a-4863-87a1-b06be1a690bd','2b63c4b7-1282-4fb8-9b30-39b860162c02'),('0f51bbfa-415a-4863-87a1-b06be1a690bd','317a29b9-6c0b-412d-8aa8-00196e8fafe2'),('0f51bbfa-415a-4863-87a1-b06be1a690bd','6e976487-0bac-4d7a-ad6a-e3153b003bcb'),('0f51bbfa-415a-4863-87a1-b06be1a690bd','8a7a604f-8420-48dc-b15c-a60b76b7f96e'),('12364c46-9e4f-427d-9060-094304e21e77','6de84188-8d2f-45ab-9abb-9b10f477b57b'),('1bc17a45-02a3-4ede-a656-7b4ee3a8edca','a92d11f9-e3c2-4fbb-a873-f45e421fb996'),('1dc5376b-822f-4891-b9ed-4941281cace0','d72deb25-3539-4177-bba8-dce0fd5f5978'),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','7968f80d-2690-404e-b010-6df02b813f4e'),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','89cc6a72-8274-45f7-a15c-b3c5e7d4ce00'),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','b0ac12d5-a71b-4efb-b37d-ad295ccd4ecd'),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','ef20bc62-5dfe-4e48-9a65-aaa656435329'),('2440749c-4373-4be9-88d2-386ccafcfb5f','28a13d59-f625-4ec8-836d-6814a633eb10'),('2440749c-4373-4be9-88d2-386ccafcfb5f','2a07fc05-6b0b-4f35-9c77-fa96e6e38d38'),('2440749c-4373-4be9-88d2-386ccafcfb5f','39d6e2aa-d0da-4b60-a677-9400d27bc2cc'),('2440749c-4373-4be9-88d2-386ccafcfb5f','41c999d4-aadd-44b2-936d-76370bf6165b'),('2440749c-4373-4be9-88d2-386ccafcfb5f','479ce249-cec6-4f1d-834d-c5124f179fc0'),('2440749c-4373-4be9-88d2-386ccafcfb5f','585460f6-d086-4403-9208-f55ed734faa6'),('2440749c-4373-4be9-88d2-386ccafcfb5f','58a1f662-4bb0-428a-80a4-3203e6ae1295'),('2440749c-4373-4be9-88d2-386ccafcfb5f','5be23bfc-f3d2-4571-b804-72fef37a5c18'),('2440749c-4373-4be9-88d2-386ccafcfb5f','65223440-9bd2-40a9-9f7d-0792c1f80972'),('2440749c-4373-4be9-88d2-386ccafcfb5f','672941aa-cc0f-4e10-8dff-4c1579b4ef9e'),('2440749c-4373-4be9-88d2-386ccafcfb5f','7dff6f31-f310-4087-ad25-cd70bb88a54b'),('2440749c-4373-4be9-88d2-386ccafcfb5f','8a5ec7de-fe3b-47ae-b816-b2f3c7fa1177'),('2440749c-4373-4be9-88d2-386ccafcfb5f','8be3428d-83fe-445e-abbf-1b3f56c5c2f1'),('2440749c-4373-4be9-88d2-386ccafcfb5f','bc641ca5-163e-48e0-b499-44746995b522'),('2440749c-4373-4be9-88d2-386ccafcfb5f','ceef114a-8b34-4279-b064-481f93c5132c'),('2440749c-4373-4be9-88d2-386ccafcfb5f','db599c9c-4752-45cd-90fe-bc9e7d048c52'),('2440749c-4373-4be9-88d2-386ccafcfb5f','e358fcd6-ee7a-4175-94d4-5b07681872e3'),('2440749c-4373-4be9-88d2-386ccafcfb5f','f80344bd-fa53-4eb6-8223-dcca8f50c11b'),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','ab9fb393-4d2f-4f12-888f-ba294d50f974'),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','cd140297-5aee-46ad-b3cb-7ff79f00ba5a'),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','dc104bca-aadf-4df6-819f-515c4be379a5'),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','fed4cf1d-9bf1-43de-ae4b-49b07a882f73'),('2912200a-4030-4e2d-8d9f-e3b200a805f1','d665f57f-dfc1-489f-9f0a-92732af652fc'),('298c906e-42c4-42ac-976f-e45adb07a293','b53cb929-bb9b-4376-8485-c323d365f307'),('298c906e-42c4-42ac-976f-e45adb07a293','b9d2317c-95de-4bbf-835a-1dd17f514f9d'),('2a07fc05-6b0b-4f35-9c77-fa96e6e38d38','479ce249-cec6-4f1d-834d-c5124f179fc0'),('2a07fc05-6b0b-4f35-9c77-fa96e6e38d38','ceef114a-8b34-4279-b064-481f93c5132c'),('2c48f16d-3cc0-44a3-8006-f719771d6790','0df2caa5-2a65-4390-bca9-5516df66e0da'),('2c48f16d-3cc0-44a3-8006-f719771d6790','6ffdf6c3-c595-4615-8942-3f8f4202d815'),('2c48f16d-3cc0-44a3-8006-f719771d6790','b8419bb4-3256-46e4-9ac1-04cbb7826936'),('2fd29deb-393c-4d6e-8199-3e61c01d5203','d8d721b2-e1c3-45e5-b0f7-732a54b0da60'),('345559e8-e19a-4256-b1cf-9d3409247e8b','249304a0-8b14-4b34-8663-aba25292b27b'),('345559e8-e19a-4256-b1cf-9d3409247e8b','60be5ff6-e936-4035-a768-fc4e7dbc6145'),('345559e8-e19a-4256-b1cf-9d3409247e8b','79e4d880-058a-48aa-8623-f24208dc693e'),('373b711f-2169-4c5f-9491-cde0d816297e','0239b41e-e50f-4ba4-b3a2-d8bcb722ca2a'),('373b711f-2169-4c5f-9491-cde0d816297e','0a22cb27-5807-40e2-b7e0-01ee3062555d'),('373b711f-2169-4c5f-9491-cde0d816297e','1bc17a45-02a3-4ede-a656-7b4ee3a8edca'),('373b711f-2169-4c5f-9491-cde0d816297e','235f6009-94d5-4f30-b727-cc2655697524'),('373b711f-2169-4c5f-9491-cde0d816297e','34be1870-a86d-40ce-acf8-9a13aba6a2f1'),('373b711f-2169-4c5f-9491-cde0d816297e','4994c03d-35b6-4324-9ec8-c9a206658e8f'),('373b711f-2169-4c5f-9491-cde0d816297e','4c91c913-69e1-45fb-8780-acafd821d453'),('373b711f-2169-4c5f-9491-cde0d816297e','5b9e1fb9-05b6-4831-b079-5979c6cd01ea'),('373b711f-2169-4c5f-9491-cde0d816297e','603f8f88-148b-4a11-9c7a-a13f3094acaa'),('373b711f-2169-4c5f-9491-cde0d816297e','71589b4b-703d-416b-bad0-1283bd72039f'),('373b711f-2169-4c5f-9491-cde0d816297e','767cd72d-495d-4be8-b7ad-869cfe6d96c6'),('373b711f-2169-4c5f-9491-cde0d816297e','7e1be1c3-3899-4543-aac6-9e7efab5f37c'),('373b711f-2169-4c5f-9491-cde0d816297e','9c96da7a-8034-4279-a6da-bf1092e6a753'),('373b711f-2169-4c5f-9491-cde0d816297e','9e525ddf-2703-4823-8e30-39f7e59e7696'),('373b711f-2169-4c5f-9491-cde0d816297e','a92d11f9-e3c2-4fbb-a873-f45e421fb996'),('373b711f-2169-4c5f-9491-cde0d816297e','b0a9b0ee-d897-4f95-8fa5-32f022167d1a'),('373b711f-2169-4c5f-9491-cde0d816297e','cb3ff24d-ac32-4417-a4bd-682d50b9d68c'),('373b711f-2169-4c5f-9491-cde0d816297e','fddae07e-3aef-4f61-93a6-c43f664f9763'),('39bbfe5a-8528-40e4-bf1b-da4596cd57bc','141c6d67-74fe-4eeb-9094-15331b808f92'),('39d6e2aa-d0da-4b60-a677-9400d27bc2cc','585460f6-d086-4403-9208-f55ed734faa6'),('4729e09f-9eb6-4853-a540-1f35cd368ed1','f462e81f-606a-459d-83e3-27b850502810'),('588f4bc1-eac7-4c9a-aa08-32de039b8ad1','249304a0-8b14-4b34-8663-aba25292b27b'),('588f4bc1-eac7-4c9a-aa08-32de039b8ad1','60be5ff6-e936-4035-a768-fc4e7dbc6145'),('5a7e9b58-99e8-49bf-a2e5-35fc705edb55','18815926-a4cd-4a2c-922b-62b53c95ae53'),('5a7e9b58-99e8-49bf-a2e5-35fc705edb55','64c14a54-859e-4f02-994f-7c76dd4c484e'),('5a7e9b58-99e8-49bf-a2e5-35fc705edb55','a7c7237b-655f-41d6-a280-4270e94fa312'),('5ba073b2-af55-4d66-895b-b5b12a74fbbc','0217db78-b8ad-41d6-bf04-cb03353892b1'),('5ba073b2-af55-4d66-895b-b5b12a74fbbc','6cf94e77-9a10-4537-8e5b-e5edbda2c9f3'),('62b5853b-adbc-4b59-ba52-187d0ee30804','ad21279e-97e1-44c5-a6e0-5cb25d477921'),('646bca56-a533-4fb8-8ced-5a9814058dfd','42d7a016-4447-416c-b3ea-5cd862bbb9cb'),('646bca56-a533-4fb8-8ced-5a9814058dfd','c5b5b957-ef31-4927-ab43-8ca263399fb9'),('6627dfc3-6910-44b6-877b-dcc330459fca','df7120bd-0026-4a26-8d46-3dbac8c135c9'),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','2912200a-4030-4e2d-8d9f-e3b200a805f1'),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','677dfe4c-745c-4c4b-8732-e2345d7abb9d'),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','87a1b1a0-04b9-4ed7-984e-9dfd23a3e4bf'),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','dac3142d-0d77-4ce2-9a8a-db6110ac04c9'),('6dcc777d-6fec-4d76-a10b-86ad7c3cf935','513732b9-c4a8-46f7-a12c-3aba016b4439'),('6dcc777d-6fec-4d76-a10b-86ad7c3cf935','597e6ba3-3a83-4ca9-9683-837d4caf13eb'),('6e976487-0bac-4d7a-ad6a-e3153b003bcb','e3a4fd7a-27d8-4dbd-a6be-b761150676bd'),('6f4b3ba2-0d48-4ba3-863d-7a8c7f5bd527','003206aa-822d-439a-9013-727853562589'),('6f4b3ba2-0d48-4ba3-863d-7a8c7f5bd527','a0f907ff-19ca-4541-b017-5f749444ae2f'),('72014a1c-e652-462e-8189-563b85521ad2','097d8bd6-2bb7-4598-b928-c5bd6ed02baf'),('72014a1c-e652-462e-8189-563b85521ad2','1a74d2ba-b6bb-4adb-ad58-cfb13bac5224'),('72014a1c-e652-462e-8189-563b85521ad2','20718f80-0f7a-43c0-8861-8cbcae51cf64'),('72014a1c-e652-462e-8189-563b85521ad2','4ff795e9-0c1b-4dc1-b1d4-78be5429588e'),('72014a1c-e652-462e-8189-563b85521ad2','544b4be0-a5fc-44da-90ed-7c22b3928af4'),('72014a1c-e652-462e-8189-563b85521ad2','5c9135ae-9397-4aea-ab22-2a75123bbb10'),('72014a1c-e652-462e-8189-563b85521ad2','68b03571-bf72-43aa-b05e-1252543977ed'),('72014a1c-e652-462e-8189-563b85521ad2','6a0daf90-fd33-4d63-8e67-264aadff67da'),('72014a1c-e652-462e-8189-563b85521ad2','77299ff2-13d1-4717-9a21-e6e5a440fd78'),('72014a1c-e652-462e-8189-563b85521ad2','a6773ed6-5b79-46c7-be66-1705b255df46'),('72014a1c-e652-462e-8189-563b85521ad2','b15817f4-c6b2-4c93-b29d-8d12115ec57d'),('72014a1c-e652-462e-8189-563b85521ad2','b6eb58fe-2244-4b2e-9e24-6e4c1b219c30'),('72014a1c-e652-462e-8189-563b85521ad2','be83369b-45df-4e63-a698-ad20e1113eb1'),('72014a1c-e652-462e-8189-563b85521ad2','c40c0c5c-2035-4bef-b482-644c05ece333'),('72014a1c-e652-462e-8189-563b85521ad2','c9c29bfd-9a47-46ed-97bc-bd7e0af45645'),('72014a1c-e652-462e-8189-563b85521ad2','e9bcda19-1542-4f4b-83b0-2a502f6a7328'),('72014a1c-e652-462e-8189-563b85521ad2','ecc74d37-275d-407b-bc0f-e117b7b551ab'),('72014a1c-e652-462e-8189-563b85521ad2','eed72e87-ba70-44f3-a53c-5313b76f859d'),('7468af7e-c9ec-40f2-9202-d1209c540868','073e2162-a1da-45ec-863b-e7d8ac1e16d4'),('76c81524-4e6a-4cf7-a291-71dbbbac7a5f','9b1ff150-c639-431b-9d86-52331ef5bac1'),('76c81524-4e6a-4cf7-a291-71dbbbac7a5f','e8f32d23-a4b1-41b7-b7ce-5f63fcb74551'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','0df2caa5-2a65-4390-bca9-5516df66e0da'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','55a1505c-9a9a-4096-86a9-2d0b1de7011a'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','6ffdf6c3-c595-4615-8942-3f8f4202d815'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','86e70d0a-edd3-495b-974f-9e73f5db5df3'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','8adebc20-a873-4ba4-b578-8342f424876a'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','b8419bb4-3256-46e4-9ac1-04cbb7826936'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','d23cdc90-6468-4e1c-8424-5b54da6f0836'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','e91afcfd-9056-42fc-8cc7-7dd1fc33075f'),('80dbe13f-3fe7-4000-9c24-268214bde071','5e1a9a4b-7214-45fe-a543-fcd12d32cb14'),('80dbe13f-3fe7-4000-9c24-268214bde071','dc81b4b0-7763-4765-ad12-e769ff5d87bc'),('87e6384c-1244-49f3-9274-213bd5268419','4f4a8e36-50b3-488e-bc4e-3953eaeacf11'),('87e6384c-1244-49f3-9274-213bd5268419','f99b5024-20cb-4566-ba80-6824c4e488f3'),('9117b2f6-9e03-48fb-9d29-d7409521e8fc','09fae36f-0899-402c-aa16-25b0f25fdd29'),('92363e91-b01b-447f-a279-44212ac41217','58e35d46-b0ec-4058-9ffb-e3fbebbfe735'),('92363e91-b01b-447f-a279-44212ac41217','60be9f7d-c9b7-4890-81e3-9187e44ac115'),('92b2bc0d-c805-47f2-9cb2-34ceebae681b','8253cd42-f312-41f6-a654-3875f07fc4f5'),('92b2bc0d-c805-47f2-9cb2-34ceebae681b','bed74650-0707-48d8-9daf-30294ecae3dd'),('960e73d8-2037-4d66-a618-8a8e1587dc38','67f7a024-17ec-4ff8-b559-7e3ed82912b7'),('960e73d8-2037-4d66-a618-8a8e1587dc38','be2639b2-6414-4af4-98cd-ac5f3fba840b'),('9ea25ec5-5e88-4036-9688-e378e45babd7','3e884961-0472-4d11-900f-a7f6c4bb9137'),('9ea25ec5-5e88-4036-9688-e378e45babd7','f8f1dee3-fded-4c66-b35c-e94fcfdb782c'),('9f3cbe3d-9556-43eb-b92c-661fd2e3720b','18815926-a4cd-4a2c-922b-62b53c95ae53'),('9f3cbe3d-9556-43eb-b92c-661fd2e3720b','a7c7237b-655f-41d6-a280-4270e94fa312'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','063f6269-51d8-48bd-9a78-039206aa076a'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','0679c690-8816-432a-835f-b25a0fe90361'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','29ee7d36-d5ec-4114-90e2-36188a52f093'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','32013570-978f-4b6e-96a0-63715bf993c0'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','ca2ea5b6-4de9-490f-836a-72c002dda4f6'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','e9bfd615-a87e-448d-b0ad-c7b22471535f'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','f1f37072-5aee-45c1-a98d-84f67e1e7392'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','f66386d6-c42d-4971-8c85-55e02fabc9c5'),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','080b5301-c245-4048-a3e0-3153147e86d5'),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','7468af7e-c9ec-40f2-9202-d1209c540868'),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','78aba0bb-a2b2-4da7-95bc-5c8ee99987a6'),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','cac3d91d-0b0c-46d7-9155-9832fe9d84b9'),('aa0af22f-3c91-4277-b87a-cd12c0eb72aa','f1ff8daf-f9ae-41a5-b863-c94974a98c47'),('ac9c07d2-a8f7-4958-83e9-a60dabe11753','b39a7048-e601-4843-9fd5-bc4e47e73cca'),('ac9c07d2-a8f7-4958-83e9-a60dabe11753','daf0efcf-3231-4401-96a5-058e925c5188'),('b0ac12d5-a71b-4efb-b37d-ad295ccd4ecd','4add6e37-efc3-483e-b124-f7bf98fe3c7f'),('b15817f4-c6b2-4c93-b29d-8d12115ec57d','c40c0c5c-2035-4bef-b482-644c05ece333'),('b15817f4-c6b2-4c93-b29d-8d12115ec57d','e9bcda19-1542-4f4b-83b0-2a502f6a7328'),('b2d702fe-2d42-4f8a-be1e-38077069180d','563f6bb4-40e2-4c96-ba4f-11127684ae33'),('b485f593-b5b3-4ea1-b508-ad6c74a069e5','35251814-6376-4645-bd52-a6049ce42b82'),('b485f593-b5b3-4ea1-b508-ad6c74a069e5','89243115-9c1d-4da6-aca0-8bc3e33b3712'),('b64dc13c-ebab-4ee9-8716-2587f6b66140','014e4b7f-b979-4536-bedf-c33f82707816'),('b64dc13c-ebab-4ee9-8716-2587f6b66140','61e6bc00-02b3-4f84-ab8b-56443e97756e'),('b68e4bdf-aac9-4b49-acb1-1839b06d3796','0db10c61-da25-40b7-a45d-73d894acdf7f'),('b6eb58fe-2244-4b2e-9e24-6e4c1b219c30','be83369b-45df-4e63-a698-ad20e1113eb1'),('b7450f1f-6c7a-49e2-a716-dabd6bd647ca','ab7858a9-e834-48eb-ae63-a5ec518c359a'),('b7450f1f-6c7a-49e2-a716-dabd6bd647ca','e890e389-b5e9-4eb4-96a4-948c5e24611e'),('b76e5168-ef37-43ea-800e-8e5d85434b3b','6d6ddcb6-ef5b-40e2-941b-07c613415001'),('b76e5168-ef37-43ea-800e-8e5d85434b3b','ffa00323-300c-4610-bda9-8897890ebb15'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','0d313783-1c3c-4a31-b9ef-03597a25cfc6'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','1fcfcf2f-ff0a-4935-9758-7eaf793e2ac8'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','27549808-1178-45a3-b02b-deb313b75951'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','298c906e-42c4-42ac-976f-e45adb07a293'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','563f6bb4-40e2-4c96-ba4f-11127684ae33'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','5aa10dd5-01fd-4c1d-ac3c-8459d7721a55'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','68a3c1ec-c91b-4153-b1a8-2909d34bb80a'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','9b7ea2b7-e8b3-4cfd-93f2-c503064f16a4'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','9e565ff8-cdf6-47e6-acb1-806a91e55143'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','b2d702fe-2d42-4f8a-be1e-38077069180d'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','b2e7bced-c27c-4696-b591-b21604ef1a46'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','b53cb929-bb9b-4376-8485-c323d365f307'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','b9d2317c-95de-4bbf-835a-1dd17f514f9d'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','d3c828c9-2842-4614-b967-da3afcf05ede'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','dfc9cdbb-e92e-4be6-8190-16ce7092e9b0'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','f1a9dfb1-bd03-4d52-a567-8c8d7f5037ac'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','f73673a4-1596-4e1a-96a6-2f7d6c446275'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','fc40535a-ad48-4b1a-9578-ab1cf2efac27'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','18815926-a4cd-4a2c-922b-62b53c95ae53'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','2bb32680-c630-4dfc-a4f8-b5f4ce6bff30'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','31324297-323a-4f94-b85d-70989702f178'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','5b2ff679-1153-402f-b431-068340354a5d'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','64c14a54-859e-4f02-994f-7c76dd4c484e'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','8427bbdd-801a-423a-9764-fd22486c0be6'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','a7c7237b-655f-41d6-a280-4270e94fa312'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','eedbb161-ce90-448b-8060-36e2af0e0276'),('bd162901-bde6-4a17-80ef-a86027df3f71','3bef4b61-f03f-46fd-b015-8cfb7a76794c'),('bd162901-bde6-4a17-80ef-a86027df3f71','62b5853b-adbc-4b59-ba52-187d0ee30804'),('bd162901-bde6-4a17-80ef-a86027df3f71','c89c5e93-3c9c-4634-9544-9157946a441a'),('bd162901-bde6-4a17-80ef-a86027df3f71','d5cc2636-d311-4707-8e6f-78606f3efa53'),('bf9ddb09-3405-4d1a-bc92-8d430c46fc9e','6ffdf6c3-c595-4615-8942-3f8f4202d815'),('bf9ddb09-3405-4d1a-bc92-8d430c46fc9e','b8419bb4-3256-46e4-9ac1-04cbb7826936'),('c60adee9-f703-47ef-a276-ca632a8706c7','4f8b2567-fea0-4b4c-8253-fc86ff353cc6'),('c60adee9-f703-47ef-a276-ca632a8706c7','d9058ed3-3794-450e-a7c2-f1ea8303640b'),('c9ac4c5a-ee88-4bdf-b435-c8c081e7a9e1','c56826d6-1294-4747-b598-3b60db0a7104'),('c9ac4c5a-ee88-4bdf-b435-c8c081e7a9e1','e1f10bbf-69b5-4842-a5bd-8a4458785f12'),('ca2346e1-4d22-4df7-8689-15b535c9b94d','58e35d46-b0ec-4058-9ffb-e3fbebbfe735'),('ca2346e1-4d22-4df7-8689-15b535c9b94d','60be9f7d-c9b7-4890-81e3-9187e44ac115'),('ca2346e1-4d22-4df7-8689-15b535c9b94d','71642db3-4ca6-4f0c-81a0-b6cfca1760ac'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','3e0c4d6c-5aad-47da-99ca-43242c661f2d'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','58e35d46-b0ec-4058-9ffb-e3fbebbfe735'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','60be9f7d-c9b7-4890-81e3-9187e44ac115'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','6b115eac-4d65-4c93-b7d2-fa5e3624f5f0'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','71286dae-c075-486f-9c41-3ecba3f2d0e9'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','71642db3-4ca6-4f0c-81a0-b6cfca1760ac'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','c077cb3e-69a6-4db6-ba6b-71568168ebb8'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','d7a31ab5-a650-4aab-b6f9-69d84d5eee85'),('cb68ec1f-61bf-422d-a212-1ea06be6266c','20adb9f5-99a0-4207-b6fd-5fce229e29d2'),('cb68ec1f-61bf-422d-a212-1ea06be6266c','ee50e4c1-2eed-47a2-b055-e44ff7ffe383'),('cc1496d3-bc37-4ec1-8349-0f3e84483114','29ee7d36-d5ec-4114-90e2-36188a52f093'),('cc1496d3-bc37-4ec1-8349-0f3e84483114','e9bfd615-a87e-448d-b0ad-c7b22471535f'),('cc1496d3-bc37-4ec1-8349-0f3e84483114','f66386d6-c42d-4971-8c85-55e02fabc9c5'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','014e4b7f-b979-4536-bedf-c33f82707816'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','01558b29-1d2d-43b9-bf02-6fc25a13d9b0'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','01a57781-bc4d-4eae-8edc-ee5f8a99327c'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','04f0cb73-1348-468b-8f5b-1c4fbc5f9abe'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','09fae36f-0899-402c-aa16-25b0f25fdd29'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','0b2c6208-7c8b-4df5-b7e0-3ebf809caa6f'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','0c39773b-fbb5-490b-a5d5-d4120544a570'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','0d7a0fab-acc2-4ac1-8d10-8114f41f78d5'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','0e5d5559-4894-4e6c-96d9-6caf2dea2a5d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','102e475f-5399-41de-b974-6b21765cc1e6'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','12364c46-9e4f-427d-9060-094304e21e77'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','1427fcba-e1d8-497c-b174-611d1099c720'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','14a19158-d25d-45f1-834a-6d2263be1d52'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','17fd1678-142d-4907-af45-dd486d931c22'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','181ea69e-e6d6-42ef-93b0-26573f704f46'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','18401560-f68f-4fa2-83d6-81c56398d80c'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','20a9178b-ad6b-4a61-95ea-8ed29922ed78'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','2a08aa33-0272-40a8-b824-cd27e5a9e541'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','2a6c0e1c-6e82-45eb-8554-cc3e663ad252'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','2fd29deb-393c-4d6e-8199-3e61c01d5203'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','30a25756-47ac-49f9-99bb-3dcae478d486'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','31165c88-1d1d-4875-b0b3-a75a9c03b632'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','31f3606a-7acd-4bff-a96a-29de65ee31a4'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','32751b7d-d903-4ed5-884b-3b70b2cd7a8f'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','35251814-6376-4645-bd52-a6049ce42b82'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','35e31248-4610-4eb1-afa3-bd5bdc499287'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','3775f066-9d33-4f59-a369-1659120700f7'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','37b27d74-70cd-4998-b0f2-3308ecbca4d2'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','383698da-2427-4639-897a-9ba32d143d5d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','3c32c424-06d3-4a52-973b-d26b9f7ea9d3'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','3db286a6-d072-4f79-879c-bde2103a95c7'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','3e884961-0472-4d11-900f-a7f6c4bb9137'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','40ce2027-b0f0-4ed2-aead-5755f1b5645b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','4152b560-0872-4da9-80df-4b5753623153'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','42ce09e8-79ec-4d1f-bddc-06d7d4154b2d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','46c92955-7d55-483c-b10c-498106597d0e'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','4729e09f-9eb6-4853-a540-1f35cd368ed1'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','4a92d0f0-da50-45a5-b7ee-e855137900e8'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','4e00f9b4-e608-4971-85a2-7a15dee5223a'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','55569bc0-a9a6-4c4b-a112-fa7be9653c20'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','61e6bc00-02b3-4f84-ab8b-56443e97756e'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6575e9dd-78a9-4884-9f7c-26556cf73cdd'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6627dfc3-6910-44b6-877b-dcc330459fca'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','69b94a97-4542-4601-a9a0-54edefab258c'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6acc75cc-1ce6-488b-a0c2-34e27d23c2b5'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6b8ecaa3-cbcf-4a0a-b5e6-1e4f52b182d8'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6c468327-9fca-4f41-a976-50e9b3e7ff4f'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6de84188-8d2f-45ab-9abb-9b10f477b57b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','7171f0cf-2d63-48ea-8e3d-a3549980635f'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','73182acf-9b8e-4560-991b-12b415d72fcd'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','7916021e-a3bd-4661-a9ec-366eb9be9543'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','7de7a48c-b404-405a-b1f1-64097207825b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','8253cd42-f312-41f6-a654-3875f07fc4f5'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','88579bcb-274e-45d6-9919-ffff90fc2684'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','89243115-9c1d-4da6-aca0-8bc3e33b3712'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','8c158770-4852-4ca6-ae4a-c672791fec65'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','8c3601e8-8e70-4f9b-b86d-ecbcd320b343'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','8f0cc1d6-8567-4fef-96db-189ca979a45c'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','9117b2f6-9e03-48fb-9d29-d7409521e8fc'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','92b2bc0d-c805-47f2-9cb2-34ceebae681b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','9742d4ef-a085-43d5-af0f-7fdec0b0616b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','98b84c2c-1d4e-4cea-9dd9-460c36e4f3fd'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','9ea25ec5-5e88-4036-9688-e378e45babd7'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a02a0a5c-e775-4a89-bb4e-26a9861fdc25'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a0b14ce0-f149-49e7-b5c5-9d5e752f84e4'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a15b09ca-7199-49c1-9e9c-b8eed0bdb166'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a196048c-2474-48ab-a33e-6566dcb74164'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a1c81ca1-1d02-413d-aa43-1f8019019d02'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a5545e14-428e-48ab-b37b-47f413f5928a'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a82281e9-7661-4ca8-8e1a-3fef80045be1'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','a8ea7755-56f9-4164-a817-6eb5cdba0852'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','ada8bbbb-5cdb-4878-9a7e-56dd36dbfaba'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','b485f593-b5b3-4ea1-b508-ad6c74a069e5'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','b59cc46f-8063-4000-88ed-5aba997a09f7'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','b64dc13c-ebab-4ee9-8716-2587f6b66140'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','b8ba46bb-be6d-4a60-a33b-1d7dd532f565'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','be7ec4ca-0fbb-4bfc-8a63-6681dab81041'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','bed74650-0707-48d8-9daf-30294ecae3dd'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c1773684-cbc2-48c5-984f-0654e6779f9d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c56826d6-1294-4747-b598-3b60db0a7104'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c6716f52-e114-433b-b6a9-11f6979ed5bf'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c7f9e3cd-e35e-499c-81de-fc77301005f1'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c80c8a45-d384-4f6f-99bc-4c3663f34eae'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c8dbeffd-a093-49d7-b3ef-f030a07028c8'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','c9ac4c5a-ee88-4bdf-b435-c8c081e7a9e1'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','ceb9371f-f2d5-4b82-9be3-1ffc489ec26e'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','cf49b397-ebab-4c32-a5f6-2c9e844cde22'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','d1fdee47-bc67-4e10-ae87-5cd13346fafc'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','d44189dc-b49d-4c4f-9d07-e410aa892a94'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','d8d721b2-e1c3-45e5-b0f7-732a54b0da60'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','db2617c5-eaa2-4f43-8cb0-324e0806db4b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','df7120bd-0026-4a26-8d46-3dbac8c135c9'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','e1f10bbf-69b5-4842-a5bd-8a4458785f12'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','e1ffe8d1-6a58-4c8c-8303-e96126c7f478'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','e73b4d93-6a6a-4dad-b187-2746a8bcd532'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','e9257c15-1c33-4512-8130-0512a727c19d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','ec7fdc82-dfcd-4ab3-b5bb-803fb8c6523b'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','edcbf744-f139-4e89-a2bc-2916f63dee15'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','f3b13ab5-080e-4632-a3de-446154868612'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','f462e81f-606a-459d-83e3-27b850502810'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','f7fb6f02-f961-488e-8e75-b99819700504'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','f8f1dee3-fded-4c66-b35c-e94fcfdb782c'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','f9aa215b-544a-496f-9f56-3ce24d08b681'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','fa2e80db-611a-46a6-b55b-b93d9bc313bd'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','fbb496e5-6083-45be-b44f-1121fc42a5dd'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','fdf05643-7aeb-485d-8fa6-e657d8bfb201'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','fe82297c-4677-408a-99fe-e4066e03afc4'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','feca1e44-e880-421f-8a05-4242a0623b4c'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','ff57190d-079e-4e0e-b8b3-82657ea129ce'),('d44189dc-b49d-4c4f-9d07-e410aa892a94','4152b560-0872-4da9-80df-4b5753623153'),('da0db051-d097-402d-8d57-f02d6b84dc51','003206aa-822d-439a-9013-727853562589'),('da0db051-d097-402d-8d57-f02d6b84dc51','0275773a-fa27-4934-a579-14afdf10749a'),('da0db051-d097-402d-8d57-f02d6b84dc51','0fea2895-19bd-43f0-bb49-a31957b84524'),('da0db051-d097-402d-8d57-f02d6b84dc51','1b6e90a4-ff65-448d-9d08-3d487bd93687'),('da0db051-d097-402d-8d57-f02d6b84dc51','376c03e0-c8bd-4846-9cef-505ef80f821e'),('da0db051-d097-402d-8d57-f02d6b84dc51','47499093-5546-4452-99c4-4acd6a1e22a2'),('da0db051-d097-402d-8d57-f02d6b84dc51','5ce54f46-ed9a-4fa8-bf28-d0caf8232d1d'),('da0db051-d097-402d-8d57-f02d6b84dc51','6f4b3ba2-0d48-4ba3-863d-7a8c7f5bd527'),('da0db051-d097-402d-8d57-f02d6b84dc51','7835d179-f2f6-4d2b-a293-12a06ea38aa9'),('da0db051-d097-402d-8d57-f02d6b84dc51','7a4b7b81-d70f-4d92-8168-8432f04e0674'),('da0db051-d097-402d-8d57-f02d6b84dc51','a0f907ff-19ca-4541-b017-5f749444ae2f'),('da0db051-d097-402d-8d57-f02d6b84dc51','c6f6db4b-ca1e-439a-b720-312441c2b16a'),('da0db051-d097-402d-8d57-f02d6b84dc51','c8d2e1ef-afeb-4fe9-8043-8ccde1583c95'),('da0db051-d097-402d-8d57-f02d6b84dc51','d61ea7a4-3cab-4e95-9c32-0a19bdcc4fe0'),('da0db051-d097-402d-8d57-f02d6b84dc51','db620478-aab1-4931-9c33-588d23352703'),('da0db051-d097-402d-8d57-f02d6b84dc51','e83312bd-8243-4b91-9b0f-218ac2f7e2ed'),('da0db051-d097-402d-8d57-f02d6b84dc51','ed960420-028d-41dc-9758-5f2674e3cad0'),('da0db051-d097-402d-8d57-f02d6b84dc51','f0f6c93e-d4e4-41a8-9e35-7b41a25d4c47'),('db620478-aab1-4931-9c33-588d23352703','7a4b7b81-d70f-4d92-8168-8432f04e0674'),('dc104bca-aadf-4df6-819f-515c4be379a5','a369a070-2c4c-44f7-bd82-7c33efeecbba'),('ea67d011-9d76-4985-889d-2fa712eb8608','079f4a28-7f14-4979-a11d-d32caed1939c'),('ea67d011-9d76-4985-889d-2fa712eb8608','7025d5e8-e1c5-4742-ad11-109143e671dc'),('ec4a5352-5308-40e4-a295-10557f49759f','16227d16-7798-4a53-bd21-63fb81018517'),('ec4a5352-5308-40e4-a295-10557f49759f','738b5641-ae45-4f5b-a375-16e1754bebbb'),('ed5484a1-a3f1-4943-8027-15d8f914d198','2e2d3013-75bb-450a-9800-3abad15cb2ba'),('f347c681-014e-4b80-8bb0-50d33c5ea7d1','e9bfd615-a87e-448d-b0ad-c7b22471535f'),('f347c681-014e-4b80-8bb0-50d33c5ea7d1','f66386d6-c42d-4971-8c85-55e02fabc9c5'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','015e0962-da78-426c-8548-6774ea4095f5'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','249304a0-8b14-4b34-8663-aba25292b27b'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','26bf4f92-94d5-4449-9bae-44f8a7b83538'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','494bbc47-753c-422d-b0db-389082387806'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','60be5ff6-e936-4035-a768-fc4e7dbc6145'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','6fa98382-5578-4e74-81f3-f01153892bb9'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','79e4d880-058a-48aa-8623-f24208dc693e'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','cf94c7bd-9f67-4f82-95e0-3bd573575b85'),('f7ebbe97-bbc7-44b2-af49-e81b01883987','cffdce9d-afaa-4386-9722-fc82ce7437bd'),('f7ebbe97-bbc7-44b2-af49-e81b01883987','dc0b98c3-93cd-4f6b-b886-bdb21c62cdd1'),('fddae07e-3aef-4f61-93a6-c43f664f9763','4c91c913-69e1-45fb-8780-acafd821d453'),('fddae07e-3aef-4f61-93a6-c43f664f9763','9e525ddf-2703-4823-8e30-39f7e59e7696'),('ff57190d-079e-4e0e-b8b3-82657ea129ce','383698da-2427-4639-897a-9ba32d143d5d'),('ff57190d-079e-4e0e-b8b3-82657ea129ce','ec7fdc82-dfcd-4ab3-b5bb-803fb8c6523b');
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
INSERT INTO `CREDENTIAL` VALUES ('394773b4-071d-43b3-80d3-4db0da43fc22',NULL,'password','20ffde0d-3644-4204-acb3-03236a2dcc85',1713510110392,NULL,'{\"value\":\"cSJff7uIzcm9HchXrnOnNsxeJKLvCuOzkXaOIdkEOtJOcAPRButI7nULdlUYavDv+ZE+/99GX64eSAOsxlG1BA==\",\"salt\":\"UMB/sbwD/akM221g+jIbyQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('75d775ff-e0c3-4a6f-a9e2-efeb289dcb14',NULL,'password','cc82d117-102d-44f2-95fb-8a081e6876de',1713509697791,NULL,'{\"value\":\"Jf1zbZs4xNkGfWvy6tc3sDoeF2adsvtdsGPvAglix0eidA0lJVEBZZO71pirCjPSfEuwOmcgNUW2sNLbZzyndw==\",\"salt\":\"1TzYLiTl+SqmiHjz+UvSPw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('84849707-7b75-45ec-bec5-41e63b116697',NULL,'password','ae654cb4-02e0-41b2-8684-8e25c6f90d8f',1713510086813,NULL,'{\"value\":\"oY7sURDjyt9Z4QHk9IdKYZ+YeGv6UH6bwxEaojNa9STLBzFZo8BfuT0KLgDwbrJrekt4Pbl+TZUFvT2AyChBEw==\",\"salt\":\"xXroXf9SYiqwMPIib1mXLQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('8c390d6b-38e2-4b6c-9e2a-1f6915605f39',NULL,'password','69d2a0c0-ffa2-4511-8b31-4a6353e27d93',1713510036249,NULL,'{\"value\":\"NI05YoHopmyoRmydBiQgjvXU5G9BbqX0KXamGnXz1P6+Y9qrOWwuWHGNyxHHf0aGyWqRrgC2lRTNJkMuJwRuyw==\",\"salt\":\"xRBF3IER3G4RhK+SFcgZgw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('d302671d-2d86-4a5e-848f-e8e2e280501d',NULL,'password','e99923b9-19e7-417e-bd97-a0bd3f8aaede',1713510061730,NULL,'{\"value\":\"Zu49F4b6h3dUkG3upX82Gi83XKSIm/ZRORK+p04bV4RV4kmUddgz8v8Mcn83ecGX9+VVYwd9x9PvzZaWptz/EQ==\",\"salt\":\"AW5CWjrnTwi59vOLLt4JGw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('e238f5c4-4e0f-4029-9e8f-94c273dfa2fd',NULL,'password','bdd29563-df03-42ff-bd2f-a6d81b11252d',1713510007320,NULL,'{\"value\":\"jpGQIPRaxWDZWUzFysyAXeFEcy4out7g4Ck/zdEE4ITrFpIS41340o/R+qPl9KMVvtf/yKHhwmyzDDd3ahodLQ==\",\"salt\":\"sgEwErWhsMjqesSTij66tA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-04-19 15:54:34',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-04-19 15:54:34',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-04-19 15:54:34',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-04-19 15:54:34',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-04-19 15:54:35',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-04-19 15:54:35',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-04-19 15:54:37',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-04-19 15:54:37',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-04-19 15:54:37',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-04-19 15:54:38',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-04-19 15:54:39',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-04-19 15:54:39',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-04-19 15:54:39',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 15:54:39',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 15:54:39',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 15:54:39',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-04-19 15:54:39',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-04-19 15:54:40',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-04-19 15:54:41',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-04-19 15:54:41',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-04-19 15:54:41',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-04-19 15:54:41',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-04-19 15:54:41',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-04-19 15:54:41',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-04-19 15:54:41',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-04-19 15:54:41',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-04-19 15:54:42',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-04-19 15:54:42',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-04-19 15:54:43',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-04-19 15:54:43',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-04-19 15:54:43',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-04-19 15:54:43',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 15:54:43',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 15:54:43',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 15:54:44',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 15:54:44',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-04-19 15:54:44',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3509670277'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-04-19 15:54:44',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-04-19 15:54:44',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 15:54:44',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 15:54:44',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 15:54:44',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-04-19 15:54:45',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-04-19 15:54:45',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 15:54:45',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 15:54:45',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 15:54:45',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 15:54:46',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-04-19 15:54:46',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-04-19 15:54:47',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-04-19 15:54:47',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-04-19 15:54:47',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-04-19 15:54:47',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-04-19 15:54:47',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 15:54:47',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 15:54:47',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 15:54:47',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-04-19 15:54:50',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-04-19 15:54:50',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-04-19 15:54:50',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-04-19 15:54:50',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-04-19 15:54:50',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-04-19 15:54:50',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-04-19 15:54:50',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 15:54:50',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 15:54:51',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-04-19 15:54:51',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-04-19 15:54:51',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-04-19 15:54:51',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-04-19 15:54:51',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'3509670277'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-04-19 15:54:51',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'3509670277'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 15:54:51',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3509670277'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 15:54:51',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3509670277'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 15:54:51',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'3509670277'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 15:54:51',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-04-19 15:54:51',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 15:54:51',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 15:54:51',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 15:54:51',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-04-19 15:54:51',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 15:54:51',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 15:54:51',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 15:54:51',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 15:54:51',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'3509670277'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-04-19 15:54:51',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-04-19 15:54:51',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'3509670277'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-04-19 15:54:51',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-04-19 15:54:52',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'3509670277'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3509670277'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'3509670277'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-04-19 15:54:52',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'3509670277'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-04-19 15:54:52',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-04-19 15:54:52',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-04-19 15:54:52',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-04-19 15:54:52',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-04-19 15:54:52',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 15:54:52',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 15:54:52',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'3509670277'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-04-19 15:54:52',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-04-19 15:54:52',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-04-19 15:54:52',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'3509670277'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-04-19 15:54:52',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-04-19 15:54:52',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-04-19 15:54:52',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-04-19 15:54:52',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'3509670277'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-04-19 15:54:52',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 15:54:52',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 15:54:52',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 15:54:52',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-04-19 15:54:53',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 15:54:53',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 15:54:53',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-04-19 15:54:53',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'3509670277');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','0518f266-f842-46e3-af3c-291b83e24544',1),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','05b4d8b0-39db-4eae-8931-5139cb0d40cd',1),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','05cf1903-0abf-476c-90ac-f53ae455b471',1),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','2fe9f7d5-9046-472f-8c15-c2a154bca362',0),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','52b1d6ce-14ea-4340-80e7-8aca1ec269a3',1),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7261501b-b8c3-4597-ad3b-15bf0caa1bb7',1),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7d401eb4-a7ea-4f47-ad0b-a24665acc17e',0),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c02c17db-690a-4cac-aed8-b1c88f1e9ff0',0),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','cb7494bb-6def-44fa-aaef-88aee8d7c693',1),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','df38df1a-e43f-42c5-bf05-2c76434bf672',0),('org1','0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e',1),('org1','2a5f84bc-f5b4-4245-a200-d132a0e373aa',0),('org1','7204b9cf-fe56-4ae9-9263-91f9dad5ef1c',0),('org1','94145db8-218f-4264-a6d7-e4f40a881945',0),('org1','976a76ca-aec1-4dd1-8485-8acfe806fa64',0),('org1','a112c758-8533-4a6f-b47c-c10fa073b983',1),('org1','b6818f56-46df-47b5-ab75-1616b47b1a1a',1),('org1','b97ab33d-3d62-493d-a1b0-8ae699d81cb0',1),('org1','df15e5f5-3512-4f00-b78c-33fa683dea5c',1),('org1','e10e4205-32e7-4b59-9ae9-7447de6b0198',1),('org2','045a382d-04fc-4b54-b859-71bd9e1f4e18',1),('org2','2014246f-62e8-486e-a631-d207331979da',0),('org2','4caa395e-bb55-439a-960b-3a1ade04170f',0),('org2','72ef8407-341a-43d0-9993-74df6fe62b9c',1),('org2','7dbabfc9-e153-4ed0-9586-091d88a612d6',0),('org2','84a6524a-4f1a-45e6-a5a1-d608e7a20824',1),('org2','bd95f62b-006e-4c4d-a2f9-69a8305d04a5',0),('org2','cf5a29e6-f9e2-443f-bc95-5d58caa1c199',1),('org2','ec2927e0-d23b-463c-9a68-6e4a71f7f7e4',1),('org2','f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5',1),('org3','4d81e9eb-961a-4a87-a581-ac0d423941b4',1),('org3','55092872-2542-49b0-aaf1-fb36f3787be8',0),('org3','55ca1eb3-d106-443f-80b1-d29e2d124118',1),('org3','5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c',1),('org3','6cb31347-7b56-4fe1-b780-4c76d7ae0dfd',0),('org3','6d933b8a-7ec9-4819-b0bc-db4c18ed8b71',1),('org3','77c6ac10-816e-4932-82ae-70886ca392bb',0),('org3','a0e54315-a18b-444d-bd2c-26bcb293a034',1),('org3','c3ccce01-8c61-4706-a954-fa6beca0a099',0),('org3','f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81',1),('org4','21113211-1f93-44a8-99fc-7609847fab0d',0),('org4','5248cfba-bf96-4788-a01b-34041b6bedb1',0),('org4','54af3721-396d-4ad4-b274-e63e661f1b45',1),('org4','5a70973c-926a-4e85-8f02-25d01990dd32',1),('org4','772c2bbb-5c2b-4176-8123-23a784cd52cf',1),('org4','88c52129-16a5-4098-a30e-df32ab344c08',0),('org4','8c1a4740-fc6c-4050-ada8-9a06a998145d',1),('org4','a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c',1),('org4','d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21',0),('org4','f8ed6e6e-41c9-497c-9faa-1e656e326494',1),('org5','09e530ef-f724-48d3-9338-e579c2066064',1),('org5','2fa9c5c6-ac49-42ad-ae24-9e851c4a4918',1),('org5','4cd0d155-40fc-4cdf-b821-baa793f41a11',1),('org5','76b8a060-922d-47fd-abde-24292e50888f',0),('org5','7debac39-3dff-4265-a3db-56974b5217e0',1),('org5','80827442-99cd-4753-97a3-18087fbefe82',1),('org5','9e65ef82-445e-462d-9d04-919d9caedaae',0),('org5','a8885b36-6b55-4ed8-bfdc-ecfcbfc560cd',0),('org5','b9f49760-c688-45ee-8d8a-32176fe12388',1),('org5','eced6acd-69fe-43af-bb91-1e89c9d755b3',0);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('000f4759-15bc-4398-894b-b9492c7d88d0','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_view-groups}','view-groups','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('003206aa-822d-439a-9013-727853562589','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_query-users}','query-users','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('014e4b7f-b979-4536-bedf-c33f82707816','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_query-groups}','query-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('01558b29-1d2d-43b9-bf02-6fc25a13d9b0','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_create-client}','create-client','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('015e0962-da78-426c-8548-6774ea4095f5','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-own-mt','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('01a57781-bc4d-4eae-8edc-ee5f8a99327c','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_manage-identity-providers}','manage-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('0217db78-b8ad-41d6-bf04-cb03353892b1','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'ws3','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('0239b41e-e50f-4ba4-b3a2-d8bcb722ca2a','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_impersonation}','impersonation','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('0275773a-fa27-4934-a579-14afdf10749a','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_create-client}','create-client','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('04f0cb73-1348-468b-8f5b-1c4fbc5f9abe','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_manage-authorization}','manage-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('063f6269-51d8-48bd-9a78-039206aa076a','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-role-usr','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('0679c690-8816-432a-835f-b25a0fe90361','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-ws-mt','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('073e2162-a1da-45ec-863b-e7d8ac1e16d4','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_manage-account-links}','manage-account-links','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('079f4a28-7f14-4979-a11d-d32caed1939c','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'ws1','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('080b5301-c245-4048-a3e0-3153147e86d5','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_view-profile}','view-profile','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('097d8bd6-2bb7-4598-b928-c5bd6ed02baf','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_view-realm}','view-realm','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('09fae36f-0899-402c-aa16-25b0f25fdd29','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_query-clients}','query-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('0a22cb27-5807-40e2-b7e0-01ee3062555d','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_manage-identity-providers}','manage-identity-providers','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('0b2c6208-7c8b-4df5-b7e0-3ebf809caa6f','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_manage-identity-providers}','manage-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('0c39773b-fbb5-490b-a5d5-d4120544a570','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_impersonation}','impersonation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('0d313783-1c3c-4a31-b9ef-03597a25cfc6','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_view-events}','view-events','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('0d51f47b-2951-4b14-8056-809844c902e1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_view-groups}','view-groups','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('0d7a0fab-acc2-4ac1-8d10-8114f41f78d5','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_manage-authorization}','manage-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('0db10c61-da25-40b7-a45d-73d894acdf7f','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_view-consent}','view-consent','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('0df2caa5-2a65-4390-bca9-5516df66e0da','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-ws-role-mt','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('0e5d5559-4894-4e6c-96d9-6caf2dea2a5d','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_create-client}','create-client','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('0ef6ef8a-0a7d-459f-bfc6-8ca1493c92c7','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_manage-consent}','manage-consent','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('0f51bbfa-415a-4863-87a1-b06be1a690bd','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,'${role_default-roles}','default-roles-master','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,NULL),('0fea2895-19bd-43f0-bb49-a31957b84524','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_manage-events}','manage-events','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('102e475f-5399-41de-b974-6b21765cc1e6','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_manage-users}','manage-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('12364c46-9e4f-427d-9060-094304e21e77','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_view-clients}','view-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('13ac9a28-9040-4cf2-90cd-5a109fc19f2f','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_view-applications}','view-applications','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('141c6d67-74fe-4eeb-9094-15331b808f92','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_view-consent}','view-consent','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('1427fcba-e1d8-497c-b174-611d1099c720','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_manage-realm}','manage-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('14a19158-d25d-45f1-834a-6d2263be1d52','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_manage-realm}','manage-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('16227d16-7798-4a53-bd21-63fb81018517','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'ws1','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('17fd1678-142d-4907-af45-dd486d931c22','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_view-authorization}','view-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('181ea69e-e6d6-42ef-93b0-26573f704f46','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_manage-realm}','manage-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('18401560-f68f-4fa2-83d6-81c56398d80c','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_view-identity-providers}','view-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('18815926-a4cd-4a2c-922b-62b53c95ae53','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-ws-role-usr','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('1a74d2ba-b6bb-4adb-ad58-cfb13bac5224','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_manage-events}','manage-events','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('1b6e90a4-ff65-448d-9d08-3d487bd93687','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_view-identity-providers}','view-identity-providers','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('1bc17a45-02a3-4ede-a656-7b4ee3a8edca','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_view-clients}','view-clients','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('1dc5376b-822f-4891-b9ed-4941281cace0','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_manage-consent}','manage-consent','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('1fcfcf2f-ff0a-4935-9758-7eaf793e2ac8','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_impersonation}','impersonation','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('2048f6b2-d561-4fc6-a61c-d5f5341d8a5d','5330b543-f669-4159-976e-c9fbbe5170c4',1,'${role_read-token}','read-token','org3','5330b543-f669-4159-976e-c9fbbe5170c4',NULL),('20718f80-0f7a-43c0-8861-8cbcae51cf64','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_manage-identity-providers}','manage-identity-providers','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('20a9178b-ad6b-4a61-95ea-8ed29922ed78','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_view-authorization}','view-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('20adb9f5-99a0-4207-b6fd-5fce229e29d2','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'ws2','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('235f6009-94d5-4f30-b727-cc2655697524','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_manage-users}','manage-users','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','org1',0,'${role_default-roles}','default-roles-org1','org1',NULL,NULL),('2440749c-4373-4be9-88d2-386ccafcfb5f','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_realm-admin}','realm-admin','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('249304a0-8b14-4b34-8663-aba25292b27b','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-usr-mt','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('26bf4f92-94d5-4449-9bae-44f8a7b83538','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-role-usr','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('27549808-1178-45a3-b02b-deb313b75951','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_query-realms}','query-realms','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','org2',0,'${role_default-roles}','default-roles-org2','org2',NULL,NULL),('28a13d59-f625-4ec8-836d-6814a633eb10','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_view-identity-providers}','view-identity-providers','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('2912200a-4030-4e2d-8d9f-e3b200a805f1','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_manage-account}','manage-account','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('298c906e-42c4-42ac-976f-e45adb07a293','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_view-users}','view-users','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('2997eaad-9252-460b-9a73-e2ebbaa16ff8','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_view-groups}','view-groups','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('29ee7d36-d5ec-4114-90e2-36188a52f093','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-ws-role-mt','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('2a07fc05-6b0b-4f35-9c77-fa96e6e38d38','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_view-users}','view-users','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('2a08aa33-0272-40a8-b824-cd27e5a9e541','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_view-events}','view-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('2a6c0e1c-6e82-45eb-8554-cc3e663ad252','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_manage-events}','manage-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('2b63c4b7-1282-4fb8-9b30-39b860162c02','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_view-profile}','view-profile','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('2bb32680-c630-4dfc-a4f8-b5f4ce6bff30','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-upd','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('2c48f16d-3cc0-44a3-8006-f719771d6790','f24468e1-6d34-4675-9efc-3dff1ea030a0',1,NULL,'_organization-user-role-manager','org5','f24468e1-6d34-4675-9efc-3dff1ea030a0',NULL),('2e2d3013-75bb-450a-9800-3abad15cb2ba','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_view-consent}','view-consent','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('2ea64929-4810-4601-b4d4-9f374721ffdb','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_view-applications}','view-applications','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('2fd29deb-393c-4d6e-8199-3e61c01d5203','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_view-clients}','view-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('30a25756-47ac-49f9-99bb-3dcae478d486','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_create-client}','create-client','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('31165c88-1d1d-4875-b0b3-a75a9c03b632','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,'${role_create-realm}','create-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,NULL),('31324297-323a-4f94-b85d-70989702f178','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-usage','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('317a29b9-6c0b-412d-8aa8-00196e8fafe2','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,'${role_offline-access}','offline_access','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,NULL),('31f3606a-7acd-4bff-a96a-29de65ee31a4','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_view-authorization}','view-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('31ff04a8-05a2-41d6-ab85-c21745d064d8','a100e84c-49c0-4899-9320-8c4bb0904012',1,'${role_read-token}','read-token','org5','a100e84c-49c0-4899-9320-8c4bb0904012',NULL),('32013570-978f-4b6e-96a0-63715bf993c0','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-own-mt','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('32751b7d-d903-4ed5-884b-3b70b2cd7a8f','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_view-authorization}','view-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('339d07dd-8bc0-4a7f-8674-b1a9603ae824','363fac61-632a-41c3-83f7-e08604b3640f',1,'${role_read-token}','read-token','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','363fac61-632a-41c3-83f7-e08604b3640f',NULL),('345559e8-e19a-4256-b1cf-9d3409247e8b','8df8c152-6526-4e1f-8a17-cd30bf941934',1,NULL,'_organization-user-role-manager','org1','8df8c152-6526-4e1f-8a17-cd30bf941934',NULL),('34be1870-a86d-40ce-acf8-9a13aba6a2f1','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_query-realms}','query-realms','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('35251814-6376-4645-bd52-a6049ce42b82','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_query-users}','query-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('35e31248-4610-4eb1-afa3-bd5bdc499287','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_manage-clients}','manage-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('373b711f-2169-4c5f-9491-cde0d816297e','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_realm-admin}','realm-admin','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('376c03e0-c8bd-4846-9cef-505ef80f821e','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_view-realm}','view-realm','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('3775f066-9d33-4f59-a369-1659120700f7','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_manage-users}','manage-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('37b27d74-70cd-4998-b0f2-3308ecbca4d2','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_view-identity-providers}','view-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('383698da-2427-4639-897a-9ba32d143d5d','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_query-users}','query-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('39bbfe5a-8528-40e4-bf1b-da4596cd57bc','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_manage-consent}','manage-consent','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('39d6e2aa-d0da-4b60-a677-9400d27bc2cc','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_view-clients}','view-clients','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('3bef4b61-f03f-46fd-b015-8cfb7a76794c','org4',0,'${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('3c32c424-06d3-4a52-973b-d26b9f7ea9d3','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_view-identity-providers}','view-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('3cb69a83-28c3-4bdd-a581-c042f5cb14d8','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_view-groups}','view-groups','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('3db286a6-d072-4f79-879c-bde2103a95c7','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_manage-users}','manage-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('3e0c4d6c-5aad-47da-99ca-43242c661f2d','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-own-mt','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('3e884961-0472-4d11-900f-a7f6c4bb9137','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_query-groups}','query-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('40caed49-ef37-4418-9b46-ce77703b59f7','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_delete-account}','delete-account','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('40ce2027-b0f0-4ed2-aead-5755f1b5645b','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_view-authorization}','view-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('4152b560-0872-4da9-80df-4b5753623153','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_query-clients}','query-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('41c999d4-aadd-44b2-936d-76370bf6165b','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_create-client}','create-client','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('42ce09e8-79ec-4d1f-bddc-06d7d4154b2d','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_manage-clients}','manage-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('42d7a016-4447-416c-b3ea-5cd862bbb9cb','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'ws2','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('46c92955-7d55-483c-b10c-498106597d0e','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_query-realms}','query-realms','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('4729e09f-9eb6-4853-a540-1f35cd368ed1','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_view-clients}','view-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('47499093-5546-4452-99c4-4acd6a1e22a2','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_impersonation}','impersonation','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('479ce249-cec6-4f1d-834d-c5124f179fc0','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_query-users}','query-users','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('494bbc47-753c-422d-b0db-389082387806','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-ws-mt','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('4994c03d-35b6-4324-9ec8-c9a206658e8f','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_manage-realm}','manage-realm','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('4a92d0f0-da50-45a5-b7ee-e855137900e8','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_view-realm}','view-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('4add6e37-efc3-483e-b124-f7bf98fe3c7f','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_manage-account-links}','manage-account-links','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('4c91c913-69e1-45fb-8780-acafd821d453','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_query-groups}','query-groups','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('4e00f9b4-e608-4971-85a2-7a15dee5223a','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_manage-realm}','manage-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('4e7d2ae7-d4d5-48f2-a582-b99e7b4dd330','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_delete-account}','delete-account','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('4f4a8e36-50b3-488e-bc4e-3953eaeacf11','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'ws3','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('4f8b2567-fea0-4b4c-8253-fc86ff353cc6','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_ws3-admin','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('4ff795e9-0c1b-4dc1-b1d4-78be5429588e','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_manage-authorization}','manage-authorization','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('513732b9-c4a8-46f7-a12c-3aba016b4439','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'ws2','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('544b4be0-a5fc-44da-90ed-7c22b3928af4','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_manage-clients}','manage-clients','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('55569bc0-a9a6-4c4b-a112-fa7be9653c20','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_manage-realm}','manage-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('55a1505c-9a9a-4096-86a9-2d0b1de7011a','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-upd','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('563f6bb4-40e2-4c96-ba4f-11127684ae33','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_query-clients}','query-clients','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('585460f6-d086-4403-9208-f55ed734faa6','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_query-clients}','query-clients','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('588f4bc1-eac7-4c9a-aa08-32de039b8ad1','8df8c152-6526-4e1f-8a17-cd30bf941934',1,NULL,'_organization-user-manager','org1','8df8c152-6526-4e1f-8a17-cd30bf941934',NULL),('58a1f662-4bb0-428a-80a4-3203e6ae1295','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_manage-authorization}','manage-authorization','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('58e35d46-b0ec-4058-9ffb-e3fbebbfe735','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-ws-role-usr','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('597e6ba3-3a83-4ca9-9683-837d4caf13eb','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_ws2-admin','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('5a7e9b58-99e8-49bf-a2e5-35fc705edb55','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,NULL,'_organization-user-role-manager','org3','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',NULL),('5aa10dd5-01fd-4c1d-ac3c-8459d7721a55','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_manage-authorization}','manage-authorization','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('5b2ff679-1153-402f-b431-068340354a5d','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-role-usr','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('5b9e1fb9-05b6-4831-b079-5979c6cd01ea','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_manage-clients}','manage-clients','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('5ba073b2-af55-4d66-895b-b5b12a74fbbc','f24468e1-6d34-4675-9efc-3dff1ea030a0',1,NULL,'_ws3-admin','org5','f24468e1-6d34-4675-9efc-3dff1ea030a0',NULL),('5bcba2c9-f648-4d4e-bc5b-ed6cb78f5c0b','0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a',1,'${role_read-token}','read-token','org4','0d03dc15-dc0e-4e01-9b65-7cf1652a1b1a',NULL),('5be23bfc-f3d2-4571-b804-72fef37a5c18','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_manage-clients}','manage-clients','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('5c9135ae-9397-4aea-ab22-2a75123bbb10','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_view-events}','view-events','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('5ce54f46-ed9a-4fa8-bf28-d0caf8232d1d','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_manage-clients}','manage-clients','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('5e1a9a4b-7214-45fe-a543-fcd12d32cb14','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_ws1-admin','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('60336b78-c191-4cae-833d-839a4f619ee0','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_view-applications}','view-applications','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('603f8f88-148b-4a11-9c7a-a13f3094acaa','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_view-events}','view-events','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('60be5ff6-e936-4035-a768-fc4e7dbc6145','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-ws-role-usr','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('60be9f7d-c9b7-4890-81e3-9187e44ac115','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-usr-mt','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('60ffa83a-5c5a-4844-965e-8dc6e289e522','2b2ecc28-48e5-4d13-944e-b967140b61ab',1,'${role_read-token}','read-token','org1','2b2ecc28-48e5-4d13-944e-b967140b61ab',NULL),('61e6bc00-02b3-4f84-ab8b-56443e97756e','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_query-users}','query-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('62b5853b-adbc-4b59-ba52-187d0ee30804','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_manage-account}','manage-account','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('646bca56-a533-4fb8-8ced-5a9814058dfd','f24468e1-6d34-4675-9efc-3dff1ea030a0',1,NULL,'_ws2-admin','org5','f24468e1-6d34-4675-9efc-3dff1ea030a0',NULL),('64c14a54-859e-4f02-994f-7c76dd4c484e','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-ws-role-mt','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('65223440-9bd2-40a9-9f7d-0792c1f80972','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_impersonation}','impersonation','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('6575e9dd-78a9-4884-9f7c-26556cf73cdd','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_manage-events}','manage-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('6627dfc3-6910-44b6-877b-dcc330459fca','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_view-clients}','view-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('672941aa-cc0f-4e10-8dff-4c1579b4ef9e','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_manage-events}','manage-events','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('677dfe4c-745c-4c4b-8732-e2345d7abb9d','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_view-profile}','view-profile','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('67f7a024-17ec-4ff8-b559-7e3ed82912b7','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'ws3','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('68a3c1ec-c91b-4153-b1a8-2909d34bb80a','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_manage-clients}','manage-clients','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('68b03571-bf72-43aa-b05e-1252543977ed','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_view-identity-providers}','view-identity-providers','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('69b94a97-4542-4601-a9a0-54edefab258c','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_manage-realm}','manage-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('6a0daf90-fd33-4d63-8e67-264aadff67da','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_query-realms}','query-realms','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('6acc75cc-1ce6-488b-a0c2-34e27d23c2b5','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_view-events}','view-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('6b115eac-4d65-4c93-b7d2-fa5e3624f5f0','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-ws-mt','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','org3',0,'${role_default-roles}','default-roles-org3','org3',NULL,NULL),('6b8ecaa3-cbcf-4a0a-b5e6-1e4f52b182d8','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_manage-authorization}','manage-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('6c468327-9fca-4f41-a976-50e9b3e7ff4f','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_view-realm}','view-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('6cf94e77-9a10-4537-8e5b-e5edbda2c9f3','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_ws3-admin','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('6d6ddcb6-ef5b-40e2-941b-07c613415001','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'ws1','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('6dcc777d-6fec-4d76-a10b-86ad7c3cf935','606eedf0-fb2b-41a7-b156-8a346cc31c87',1,NULL,'_ws2-admin','org4','606eedf0-fb2b-41a7-b156-8a346cc31c87',NULL),('6de84188-8d2f-45ab-9abb-9b10f477b57b','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_query-clients}','query-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('6e976487-0bac-4d7a-ad6a-e3153b003bcb','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_manage-account}','manage-account','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('6f4b3ba2-0d48-4ba3-863d-7a8c7f5bd527','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_view-users}','view-users','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('6fa98382-5578-4e74-81f3-f01153892bb9','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-usage','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('6ffdf6c3-c595-4615-8942-3f8f4202d815','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-usr-mt','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('7025d5e8-e1c5-4742-ad11-109143e671dc','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_ws1-admin','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('71286dae-c075-486f-9c41-3ecba3f2d0e9','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-upd','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('71589b4b-703d-416b-bad0-1283bd72039f','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_view-realm}','view-realm','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('71642db3-4ca6-4f0c-81a0-b6cfca1760ac','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-ws-role-mt','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('7171f0cf-2d63-48ea-8e3d-a3549980635f','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_manage-events}','manage-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('72014a1c-e652-462e-8189-563b85521ad2','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_realm-admin}','realm-admin','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('73182acf-9b8e-4560-991b-12b415d72fcd','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_query-realms}','query-realms','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('738b5641-ae45-4f5b-a375-16e1754bebbb','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_ws1-admin','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('7468af7e-c9ec-40f2-9202-d1209c540868','d938f59f-6ba5-47bf-859f-d83db98169c5',1,'${role_manage-account}','manage-account','org5','d938f59f-6ba5-47bf-859f-d83db98169c5',NULL),('767cd72d-495d-4be8-b7ad-869cfe6d96c6','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_create-client}','create-client','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('76c81524-4e6a-4cf7-a291-71dbbbac7a5f','606eedf0-fb2b-41a7-b156-8a346cc31c87',1,NULL,'_ws3-admin','org4','606eedf0-fb2b-41a7-b156-8a346cc31c87',NULL),('77299ff2-13d1-4717-9a21-e6e5a440fd78','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_manage-users}','manage-users','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('7835d179-f2f6-4d2b-a293-12a06ea38aa9','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_query-realms}','query-realms','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('78aba0bb-a2b2-4da7-95bc-5c8ee99987a6','org5',0,'${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('7916021e-a3bd-4661-a9ec-366eb9be9543','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_view-realm}','view-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('7968f80d-2690-404e-b010-6df02b813f4e','org1',0,'${role_offline-access}','offline_access','org1',NULL,NULL),('79e4d880-058a-48aa-8623-f24208dc693e','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-ws-role-mt','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('7a4b7b81-d70f-4d92-8168-8432f04e0674','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_query-clients}','query-clients','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('7de7a48c-b404-405a-b1f1-64097207825b','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_view-authorization}','view-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('7dff6f31-f310-4087-ad25-cd70bb88a54b','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_view-realm}','view-realm','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('7e1be1c3-3899-4543-aac6-9e7efab5f37c','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_manage-events}','manage-events','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('7efa9027-46e0-4a69-b539-a68b02ae96ad','f24468e1-6d34-4675-9efc-3dff1ea030a0',1,NULL,'_organization-manager','org5','f24468e1-6d34-4675-9efc-3dff1ea030a0',NULL),('80dbe13f-3fe7-4000-9c24-268214bde071','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,NULL,'_ws1-admin','org3','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',NULL),('8253cd42-f312-41f6-a654-3875f07fc4f5','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_query-groups}','query-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('82ad704d-7f13-47fb-9f2d-c3ded568bb66','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_view-groups}','view-groups','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('8427bbdd-801a-423a-9764-fd22486c0be6','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-own-mt','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('86e70d0a-edd3-495b-974f-9e73f5db5df3','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-ws-mt','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('87a1b1a0-04b9-4ed7-984e-9dfd23a3e4bf','org3',0,'${role_offline-access}','offline_access','org3',NULL,NULL),('87e6384c-1244-49f3-9274-213bd5268419','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,NULL,'_ws3-admin','org3','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',NULL),('88579bcb-274e-45d6-9919-ffff90fc2684','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_manage-users}','manage-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('89243115-9c1d-4da6-aca0-8bc3e33b3712','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_query-groups}','query-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('89cc6a72-8274-45f7-a15c-b3c5e7d4ce00','org1',0,'${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('8a5ec7de-fe3b-47ae-b816-b2f3c7fa1177','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_view-events}','view-events','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('8a7a604f-8420-48dc-b15c-a60b76b7f96e','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,'${role_uma_authorization}','uma_authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,NULL),('8adebc20-a873-4ba4-b578-8342f424876a','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-own-mt','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('8b0280de-3a13-45b8-aa90-a27cc0efdf26','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_view-applications}','view-applications','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('8be3428d-83fe-445e-abbf-1b3f56c5c2f1','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_manage-users}','manage-users','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('8c158770-4852-4ca6-ae4a-c672791fec65','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_impersonation}','impersonation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('8c3601e8-8e70-4f9b-b86d-ecbcd320b343','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_query-realms}','query-realms','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('8f0cc1d6-8567-4fef-96db-189ca979a45c','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_manage-events}','manage-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('9117b2f6-9e03-48fb-9d29-d7409521e8fc','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_view-clients}','view-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('92363e91-b01b-447f-a279-44212ac41217','5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,NULL,'_organization-user-manager','org2','5045af65-31c3-4ec4-a36f-fc3e75e160cc',NULL),('92b2bc0d-c805-47f2-9cb2-34ceebae681b','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_view-users}','view-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('93293e2f-4fbc-4e26-8832-1e2ed29c1edb','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_view-applications}','view-applications','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('960e73d8-2037-4d66-a618-8a8e1587dc38','8df8c152-6526-4e1f-8a17-cd30bf941934',1,NULL,'_ws3-admin','org1','8df8c152-6526-4e1f-8a17-cd30bf941934',NULL),('9742d4ef-a085-43d5-af0f-7fdec0b0616b','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_query-realms}','query-realms','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('98b84c2c-1d4e-4cea-9dd9-460c36e4f3fd','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_manage-users}','manage-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('9b1ff150-c639-431b-9d86-52331ef5bac1','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_ws3-admin','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('9b7ea2b7-e8b3-4cfd-93f2-c503064f16a4','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_manage-identity-providers}','manage-identity-providers','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('9c96da7a-8034-4279-a6da-bf1092e6a753','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_manage-authorization}','manage-authorization','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('9e525ddf-2703-4823-8e30-39f7e59e7696','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_query-users}','query-users','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('9e565ff8-cdf6-47e6-acb1-806a91e55143','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_view-authorization}','view-authorization','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('9e6352a1-8948-459e-b05a-d27632c75275','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_view-consent}','view-consent','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('9ea25ec5-5e88-4036-9688-e378e45babd7','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_view-users}','view-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('9f3cbe3d-9556-43eb-b92c-661fd2e3720b','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,NULL,'_organization-user-manager','org3','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',NULL),('9f40c77b-2392-4d76-a1f9-71b5f65528da','606eedf0-fb2b-41a7-b156-8a346cc31c87',1,NULL,'_organization-manager','org4','606eedf0-fb2b-41a7-b156-8a346cc31c87',NULL),('a02a0a5c-e775-4a89-bb4e-26a9861fdc25','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_manage-identity-providers}','manage-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('a0b14ce0-f149-49e7-b5c5-9d5e752f84e4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_create-client}','create-client','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('a0f907ff-19ca-4541-b017-5f749444ae2f','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_query-groups}','query-groups','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('a15b09ca-7199-49c1-9e9c-b8eed0bdb166','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_manage-authorization}','manage-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('a196048c-2474-48ab-a33e-6566dcb74164','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_impersonation}','impersonation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('a1c81ca1-1d02-413d-aa43-1f8019019d02','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_view-realm}','view-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('a369a070-2c4c-44f7-bd82-7c33efeecbba','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_manage-account-links}','manage-account-links','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('a5545e14-428e-48ab-b37b-47f413f5928a','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_manage-clients}','manage-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('a6773ed6-5b79-46c7-be66-1705b255df46','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_impersonation}','impersonation','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('a7c7237b-655f-41d6-a280-4270e94fa312','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-usr-mt','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('a82281e9-7661-4ca8-8e1a-3fef80045be1','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_manage-identity-providers}','manage-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('a8ea7755-56f9-4164-a817-6eb5cdba0852','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_view-realm}','view-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('a92d11f9-e3c2-4fbb-a873-f45e421fb996','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_query-clients}','query-clients','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','org5',0,'${role_default-roles}','default-roles-org5','org5',NULL,NULL),('aa0af22f-3c91-4277-b87a-cd12c0eb72aa','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_manage-consent}','manage-consent','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('ab7858a9-e834-48eb-ae63-a5ec518c359a','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_ws2-admin','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('ab9fb393-4d2f-4f12-888f-ba294d50f974','org2',0,'${role_offline-access}','offline_access','org2',NULL,NULL),('ac9c07d2-a8f7-4958-83e9-a60dabe11753','5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,NULL,'_ws1-admin','org2','5045af65-31c3-4ec4-a36f-fc3e75e160cc',NULL),('ad21279e-97e1-44c5-a6e0-5cb25d477921','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_manage-account-links}','manage-account-links','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('ada8bbbb-5cdb-4878-9a7e-56dd36dbfaba','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_manage-clients}','manage-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('b0a9b0ee-d897-4f95-8fa5-32f022167d1a','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_view-identity-providers}','view-identity-providers','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('b0ac12d5-a71b-4efb-b37d-ad295ccd4ecd','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_manage-account}','manage-account','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('b15817f4-c6b2-4c93-b29d-8d12115ec57d','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_view-users}','view-users','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('b2291b66-d742-4631-8e7c-ae7dbdce9841','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_delete-account}','delete-account','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('b2d702fe-2d42-4f8a-be1e-38077069180d','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_view-clients}','view-clients','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('b2e7bced-c27c-4696-b591-b21604ef1a46','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_manage-events}','manage-events','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('b39a7048-e601-4843-9fd5-bc4e47e73cca','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'ws1','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('b485f593-b5b3-4ea1-b508-ad6c74a069e5','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_view-users}','view-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('b53cb929-bb9b-4376-8485-c323d365f307','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_query-users}','query-users','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('b59cc46f-8063-4000-88ed-5aba997a09f7','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_manage-identity-providers}','manage-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('b64dc13c-ebab-4ee9-8716-2587f6b66140','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_view-users}','view-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('b68e4bdf-aac9-4b49-acb1-1839b06d3796','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_manage-consent}','manage-consent','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('b6eb58fe-2244-4b2e-9e24-6e4c1b219c30','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_view-clients}','view-clients','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('b7450f1f-6c7a-49e2-a716-dabd6bd647ca','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,NULL,'_ws2-admin','org3','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',NULL),('b76e5168-ef37-43ea-800e-8e5d85434b3b','f24468e1-6d34-4675-9efc-3dff1ea030a0',1,NULL,'_ws1-admin','org5','f24468e1-6d34-4675-9efc-3dff1ea030a0',NULL),('b8419bb4-3256-46e4-9ac1-04cbb7826936','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-ws-role-usr','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('b85f2a9c-c106-42c2-832c-4397cae37c4b','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_realm-admin}','realm-admin','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('b8b426a2-e26e-4216-8ec5-e2940a41674a','f5ca6b8a-1544-4e07-9f51-7c28700ac148',1,'${role_read-token}','read-token','org2','f5ca6b8a-1544-4e07-9f51-7c28700ac148',NULL),('b8ba46bb-be6d-4a60-a33b-1d7dd532f565','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_view-events}','view-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('b91323b9-87c4-4e27-a06f-9341efbe94f6','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',1,NULL,'_organization-manager','org3','589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0',NULL),('b9d2317c-95de-4bbf-835a-1dd17f514f9d','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_query-groups}','query-groups','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('bc641ca5-163e-48e0-b499-44746995b522','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_view-authorization}','view-authorization','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('bd162901-bde6-4a17-80ef-a86027df3f71','org4',0,'${role_default-roles}','default-roles-org4','org4',NULL,NULL),('be2639b2-6414-4af4-98cd-ac5f3fba840b','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_ws3-admin','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('be7ec4ca-0fbb-4bfc-8a63-6681dab81041','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_manage-authorization}','manage-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('be83369b-45df-4e63-a698-ad20e1113eb1','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_query-clients}','query-clients','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('bed74650-0707-48d8-9daf-30294ecae3dd','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_query-users}','query-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('bf9ddb09-3405-4d1a-bc92-8d430c46fc9e','f24468e1-6d34-4675-9efc-3dff1ea030a0',1,NULL,'_organization-user-manager','org5','f24468e1-6d34-4675-9efc-3dff1ea030a0',NULL),('c077cb3e-69a6-4db6-ba6b-71568168ebb8','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-usage','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('c1773684-cbc2-48c5-984f-0654e6779f9d','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_view-events}','view-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('c40c0c5c-2035-4bef-b482-644c05ece333','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_query-groups}','query-groups','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('c56826d6-1294-4747-b598-3b60db0a7104','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_query-groups}','query-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('c5b5b957-ef31-4927-ab43-8ca263399fb9','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_ws2-admin','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('c60adee9-f703-47ef-a276-ca632a8706c7','5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,NULL,'_ws3-admin','org2','5045af65-31c3-4ec4-a36f-fc3e75e160cc',NULL),('c6716f52-e114-433b-b6a9-11f6979ed5bf','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_impersonation}','impersonation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('c6f6db4b-ca1e-439a-b720-312441c2b16a','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_manage-authorization}','manage-authorization','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('c7f9e3cd-e35e-499c-81de-fc77301005f1','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_view-events}','view-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('c80c8a45-d384-4f6f-99bc-4c3663f34eae','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_manage-clients}','manage-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('c89c5e93-3c9c-4634-9544-9157946a441a','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_view-profile}','view-profile','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('c8d2e1ef-afeb-4fe9-8043-8ccde1583c95','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_view-events}','view-events','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('c8dbeffd-a093-49d7-b3ef-f030a07028c8','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_query-realms}','query-realms','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('c9ac4c5a-ee88-4bdf-b435-c8c081e7a9e1','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_view-users}','view-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('c9c29bfd-9a47-46ed-97bc-bd7e0af45645','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_view-authorization}','view-authorization','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('ca2346e1-4d22-4df7-8689-15b535c9b94d','5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,NULL,'_organization-user-role-manager','org2','5045af65-31c3-4ec4-a36f-fc3e75e160cc',NULL),('ca2ea5b6-4de9-490f-836a-72c002dda4f6','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-upd','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,NULL,'_organization-manager','org2','5045af65-31c3-4ec4-a36f-fc3e75e160cc',NULL),('cac3d91d-0b0c-46d7-9155-9832fe9d84b9','org5',0,'${role_offline-access}','offline_access','org5',NULL,NULL),('cb3ff24d-ac32-4417-a4bd-682d50b9d68c','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_view-authorization}','view-authorization','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('cb68ec1f-61bf-422d-a212-1ea06be6266c','8df8c152-6526-4e1f-8a17-cd30bf941934',1,NULL,'_ws2-admin','org1','8df8c152-6526-4e1f-8a17-cd30bf941934',NULL),('cc1496d3-bc37-4ec1-8349-0f3e84483114','606eedf0-fb2b-41a7-b156-8a346cc31c87',1,NULL,'_organization-user-role-manager','org4','606eedf0-fb2b-41a7-b156-8a346cc31c87',NULL),('cd140297-5aee-46ad-b3cb-7ff79f00ba5a','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_view-profile}','view-profile','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('ceb9371f-f2d5-4b82-9be3-1ffc489ec26e','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_view-identity-providers}','view-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('ceef114a-8b34-4279-b064-481f93c5132c','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_query-groups}','query-groups','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('cf49b397-ebab-4c32-a5f6-2c9e844cde22','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_create-client}','create-client','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('cf94c7bd-9f67-4f82-95e0-3bd573575b85','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_og-upd','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('cffdce9d-afaa-4386-9722-fc82ce7437bd','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'ws2','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('d1fdee47-bc67-4e10-ae87-5cd13346fafc','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_create-client}','create-client','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('d23cdc90-6468-4e1c-8424-5b54da6f0836','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-role-usr','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('d3c828c9-2842-4614-b967-da3afcf05ede','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_view-identity-providers}','view-identity-providers','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('d40bbeaa-e92e-48e6-8d82-1814027f4012','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,'${role_admin}','admin','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',NULL,NULL),('d44189dc-b49d-4c4f-9d07-e410aa892a94','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_view-clients}','view-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('d5cc2636-d311-4707-8e6f-78606f3efa53','org4',0,'${role_offline-access}','offline_access','org4',NULL,NULL),('d61ea7a4-3cab-4e95-9c32-0a19bdcc4fe0','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_manage-realm}','manage-realm','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('d665f57f-dfc1-489f-9f0a-92732af652fc','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_manage-account-links}','manage-account-links','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('d6dea89d-c86e-4dd3-ad08-55e19ab12b9d','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_view-applications}','view-applications','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('d72deb25-3539-4177-bba8-dce0fd5f5978','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_view-consent}','view-consent','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('d7a31ab5-a650-4aab-b6f9-69d84d5eee85','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_og-role-usr','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('d8d721b2-e1c3-45e5-b0f7-732a54b0da60','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1,'${role_query-clients}','query-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',NULL),('d9058ed3-3794-450e-a7c2-f1ea8303640b','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'ws3','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('da0db051-d097-402d-8d57-f02d6b84dc51','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_realm-admin}','realm-admin','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('dac3142d-0d77-4ce2-9a8a-db6110ac04c9','org3',0,'${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('daf0efcf-3231-4401-96a5-058e925c5188','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_ws1-admin','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('db2617c5-eaa2-4f43-8cb0-324e0806db4b','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_impersonation}','impersonation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('db599c9c-4752-45cd-90fe-bc9e7d048c52','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_manage-identity-providers}','manage-identity-providers','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('db620478-aab1-4931-9c33-588d23352703','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_view-clients}','view-clients','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('dc0b98c3-93cd-4f6b-b886-bdb21c62cdd1','81ee8f29-012c-49e5-a7f9-bf6080d53320',1,NULL,'_ws2-admin','org2','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('dc104bca-aadf-4df6-819f-515c4be379a5','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_manage-account}','manage-account','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('dc81b4b0-7763-4765-ad12-e769ff5d87bc','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'ws1','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('df7120bd-0026-4a26-8d46-3dbac8c135c9','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_query-clients}','query-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('dfc9cdbb-e92e-4be6-8190-16ce7092e9b0','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_manage-realm}','manage-realm','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('e1f10bbf-69b5-4842-a5bd-8a4458785f12','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_query-users}','query-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('e1ffe8d1-6a58-4c8c-8303-e96126c7f478','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_query-realms}','query-realms','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('e204ab5c-b4cf-41ee-a3bd-538aeb85bfb2','fe98a408-4976-49d0-95e9-ed004e9878f8',1,'${role_delete-account}','delete-account','org3','fe98a408-4976-49d0-95e9-ed004e9878f8',NULL),('e358fcd6-ee7a-4175-94d4-5b07681872e3','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_query-realms}','query-realms','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('e3a4fd7a-27d8-4dbd-a6be-b761150676bd','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_manage-account-links}','manage-account-links','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('e73b4d93-6a6a-4dad-b187-2746a8bcd532','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_manage-events}','manage-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('e83312bd-8243-4b91-9b0f-218ac2f7e2ed','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_manage-identity-providers}','manage-identity-providers','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('e890e389-b5e9-4eb4-96a4-948c5e24611e','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'ws2','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('e8f32d23-a4b1-41b7-b7ce-5f63fcb74551','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'ws3','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('e91afcfd-9056-42fc-8cc7-7dd1fc33075f','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_og-usage','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('e9257c15-1c33-4512-8130-0512a727c19d','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_view-events}','view-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('e9bcda19-1542-4f4b-83b0-2a502f6a7328','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_query-users}','query-users','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('e9bfd615-a87e-448d-b0ad-c7b22471535f','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-ws-role-usr','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('ea67d011-9d76-4985-889d-2fa712eb8608','606eedf0-fb2b-41a7-b156-8a346cc31c87',1,NULL,'_ws1-admin','org4','606eedf0-fb2b-41a7-b156-8a346cc31c87',NULL),('ec4a5352-5308-40e4-a295-10557f49759f','8df8c152-6526-4e1f-8a17-cd30bf941934',1,NULL,'_ws1-admin','org1','8df8c152-6526-4e1f-8a17-cd30bf941934',NULL),('ec7fdc82-dfcd-4ab3-b5bb-803fb8c6523b','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_query-groups}','query-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('ecc74d37-275d-407b-bc0f-e117b7b551ab','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_create-client}','create-client','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('ed5484a1-a3f1-4943-8027-15d8f914d198','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_manage-consent}','manage-consent','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('ed960420-028d-41dc-9758-5f2674e3cad0','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_view-authorization}','view-authorization','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('edcbf744-f139-4e89-a2bc-2916f63dee15','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_manage-authorization}','manage-authorization','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('ee50e4c1-2eed-47a2-b055-e44ff7ffe383','34098bc0-970f-4e77-a7a7-cb7b504847bb',1,NULL,'_ws2-admin','org1','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('eed72e87-ba70-44f3-a53c-5313b76f859d','1575d963-79a7-4bda-b45e-59a9e311f4f7',1,'${role_manage-realm}','manage-realm','org2','1575d963-79a7-4bda-b45e-59a9e311f4f7',NULL),('eedbb161-ce90-448b-8060-36e2af0e0276','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_og-ws-mt','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('ef20bc62-5dfe-4e48-9a65-aaa656435329','ca40a363-4b6a-4c76-b703-8aebd6ca066f',1,'${role_view-profile}','view-profile','org1','ca40a363-4b6a-4c76-b703-8aebd6ca066f',NULL),('eff76215-f56c-4867-ae8b-835f8a5b59f3','2ef37c94-ce4f-406d-8142-c727f4ef54bb',1,'${role_delete-account}','delete-account','org2','2ef37c94-ce4f-406d-8142-c727f4ef54bb',NULL),('f0f6c93e-d4e4-41a8-9e35-7b41a25d4c47','1992bf26-2d15-41a1-8f1b-2557fcf8374b',1,'${role_manage-users}','manage-users','org1','1992bf26-2d15-41a1-8f1b-2557fcf8374b',NULL),('f1a9dfb1-bd03-4d52-a567-8c8d7f5037ac','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_create-client}','create-client','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('f1f37072-5aee-45c1-a98d-84f67e1e7392','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-usage','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('f1ff8daf-f9ae-41a5-b863-c94974a98c47','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_view-consent}','view-consent','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('f347c681-014e-4b80-8bb0-50d33c5ea7d1','606eedf0-fb2b-41a7-b156-8a346cc31c87',1,NULL,'_organization-user-manager','org4','606eedf0-fb2b-41a7-b156-8a346cc31c87',NULL),('f3808813-cd3c-4db9-b31a-e0ec787d3357','8df8c152-6526-4e1f-8a17-cd30bf941934',1,NULL,'_organization-manager','org1','8df8c152-6526-4e1f-8a17-cd30bf941934',NULL),('f3b13ab5-080e-4632-a3de-446154868612','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_impersonation}','impersonation','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('f462e81f-606a-459d-83e3-27b850502810','9100b580-7cc5-4819-b5db-68478d32b02b',1,'${role_query-clients}','query-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','9100b580-7cc5-4819-b5db-68478d32b02b',NULL),('f66386d6-c42d-4971-8c85-55e02fabc9c5','3214c83b-b319-46db-83e0-a3afa51f5a5e',1,NULL,'_og-usr-mt','org4','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('f73673a4-1596-4e1a-96a6-2f7d6c446275','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_view-realm}','view-realm','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('f7ebbe97-bbc7-44b2-af49-e81b01883987','5045af65-31c3-4ec4-a36f-fc3e75e160cc',1,NULL,'_ws2-admin','org2','5045af65-31c3-4ec4-a36f-fc3e75e160cc',NULL),('f7fb6f02-f961-488e-8e75-b99819700504','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_view-identity-providers}','view-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('f80344bd-fa53-4eb6-8223-dcca8f50c11b','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',1,'${role_manage-realm}','manage-realm','org5','ab9f2f88-dde0-4b48-9bf6-b53cdebb24e1',NULL),('f8f1dee3-fded-4c66-b35c-e94fcfdb782c','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_query-users}','query-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('f99b5024-20cb-4566-ba80-6824c4e488f3','1c184606-8ae2-4680-a1a1-7c84b476e267',1,NULL,'_ws3-admin','org3','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('f9aa215b-544a-496f-9f56-3ce24d08b681','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_view-realm}','view-realm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('fa2e80db-611a-46a6-b55b-b93d9bc313bd','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_view-identity-providers}','view-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('fbb496e5-6083-45be-b44f-1121fc42a5dd','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_manage-users}','manage-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('fc40535a-ad48-4b1a-9578-ab1cf2efac27','df3e6358-9c76-4839-9284-5cbcfa574ffa',1,'${role_manage-users}','manage-users','org3','df3e6358-9c76-4839-9284-5cbcfa574ffa',NULL),('fdc04aa4-67c8-4961-a88f-1f78ac184f95','6336ceed-4c7e-4514-889a-3bc726cdc69f',1,'${role_view-groups}','view-groups','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','6336ceed-4c7e-4514-889a-3bc726cdc69f',NULL),('fddae07e-3aef-4f61-93a6-c43f664f9763','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',1,'${role_view-users}','view-users','org4','bf0acdb4-f8c0-4b17-8328-a39f23ed7ea9',NULL),('fdf05643-7aeb-485d-8fa6-e657d8bfb201','bf295504-f074-4199-aecf-916a0036bb14',1,'${role_manage-events}','manage-events','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','bf295504-f074-4199-aecf-916a0036bb14',NULL),('fe82297c-4677-408a-99fe-e4066e03afc4','82b39286-2ebc-4984-b743-1818079cfcfb',1,'${role_manage-identity-providers}','manage-identity-providers','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','82b39286-2ebc-4984-b743-1818079cfcfb',NULL),('feca1e44-e880-421f-8a05-4242a0623b4c','c21fffec-d02f-4fa9-82f0-74cff821210f',1,'${role_manage-clients}','manage-clients','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','c21fffec-d02f-4fa9-82f0-74cff821210f',NULL),('fed4cf1d-9bf1-43de-ae4b-49b07a882f73','org2',0,'${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('ff214c22-2dd4-4648-a18e-4f3990596d7a','96e95eed-a817-401e-9354-4921aaacbf75',1,'${role_delete-account}','delete-account','org4','96e95eed-a817-401e-9354-4921aaacbf75',NULL),('ff57190d-079e-4e0e-b8b3-82657ea129ce','698b4d26-9739-4058-9f6f-dbb48760e84d',1,'${role_view-users}','view-users','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','698b4d26-9739-4058-9f6f-dbb48760e84d',NULL),('ffa00323-300c-4610-bda9-8897890ebb15','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',1,NULL,'_ws1-admin','org5','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('5cikt','24.0.3',1713509693);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('00c7c13e-8076-419a-942e-c19bcaf39601','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('04a20ef9-6d3d-43a9-86f6-b1bfd4a5d7f8','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'cf5a29e6-f9e2-443f-bc95-5d58caa1c199'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','5201f3dc-03da-4378-bbca-43dbcb169951',NULL),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4caa395e-bb55-439a-960b-3a1ade04170f'),('09f3bb72-df41-4e13-be70-82e12a58f09d','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'5a70973c-926a-4e85-8f02-25d01990dd32'),('0c59e02b-816a-4f13-9093-989ae337639f','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('1198074d-f03d-4587-98af-16c9ac558080','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('144e742d-9dc4-42a2-a509-a8598575df97','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('14cc7baf-0da2-4cfd-9448-d257a800715e','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('15ca3ace-c522-40a4-83b0-56664e542839','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('16ad9970-b81e-4783-8d61-054687f40bc1','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('18dea589-68e7-4ed2-a6dd-38d68432a174','acr loa level','openid-connect','oidc-acr-mapper',NULL,'8c1a4740-fc6c-4050-ada8-9a06a998145d'),('1bc80119-fc95-4df0-81c1-30350023fae8','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'4cd0d155-40fc-4cdf-b821-baa793f41a11'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'94145db8-218f-4264-a6d7-e4f40a881945'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('2441ea38-f954-4c7d-954b-572f9936dccd','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('27e3c12e-2630-46df-9a6b-c47743b072d2','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('2b630ae5-a826-482d-bcbf-2e47b24573da','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6cb31347-7b56-4fe1-b780-4c76d7ae0dfd'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'df15e5f5-3512-4f00-b78c-33fa683dea5c'),('2dbd7d62-842e-4d32-8be6-44852509d059','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'eced6acd-69fe-43af-bb91-1e89c9d755b3'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','address','openid-connect','oidc-address-mapper',NULL,'2a5f84bc-f5b4-4245-a200-d132a0e373aa'),('2f68a71a-a8d3-45b3-a631-50dcc2b1b035','role list','saml','saml-role-list-mapper',NULL,'2fa9c5c6-ac49-42ad-ae24-9e851c4a4918'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('2fa521ee-5ba8-4955-840e-2e52cfcc6a3e','audience resolve','openid-connect','oidc-audience-resolve-mapper','8acf8481-f3d4-49c8-918b-36ea33bb68bb',NULL),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('3086701d-5136-46d9-b8e6-7c646d8d9d6a','role list','saml','saml-role-list-mapper',NULL,'a112c758-8533-4a6f-b47c-c10fa073b983'),('311d554c-9a16-469c-9346-6a5f600a72ad','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c3ccce01-8c61-4706-a954-fa6beca0a099'),('327bca67-764f-4377-be78-4d7c1252a1a2','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'5a70973c-926a-4e85-8f02-25d01990dd32'),('32a274a9-f71b-41d7-ab26-371eb3352069','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('32b17ac2-4372-48cc-abc8-8fcce0984636','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'e10e4205-32e7-4b59-9ae9-7447de6b0198'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('34474b98-4232-48ac-a70b-d1ab7b3e3512','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'6d933b8a-7ec9-4819-b0bc-db4c18ed8b71'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','locale','openid-connect','oidc-usermodel-attribute-mapper','952801c4-e7b0-49ca-b4a9-efd20be3e568',NULL),('35297938-feef-47b5-a03b-c2fe417da5e2','audience resolve','openid-connect','oidc-audience-resolve-mapper','ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6',NULL),('3a5322e9-aaf3-49fc-bfcf-8fb1b75d0472','acr loa level','openid-connect','oidc-acr-mapper',NULL,'0aa3274b-c7bc-4f6c-bcf1-00b3792aec3e'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('3e5dc5d9-cb18-4e4d-aad7-f61dec67c7ea','full name','openid-connect','oidc-full-name-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('401844a1-f31f-4fde-b245-0b3ae9d69810','role list','saml','saml-role-list-mapper',NULL,'72ef8407-341a-43d0-9993-74df6fe62b9c'),('413a684f-e47d-4660-ad5d-2c756f016176','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('421620b5-5b21-4a68-a276-f833028be4ce','locale','openid-connect','oidc-usermodel-attribute-mapper','bc4e7f41-cede-4705-89f1-fcbeeb609eb7',NULL),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('48071edf-54d5-454a-8c38-dabc9f0d1c57','audience resolve','openid-connect','oidc-audience-resolve-mapper','1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95',NULL),('481de456-0b27-4cd8-b54f-9f369a015872','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'b9f49760-c688-45ee-8d8a-32176fe12388'),('4a173b5f-1162-47bc-b152-9932eee8b9cd','acr loa level','openid-connect','oidc-acr-mapper',NULL,'55ca1eb3-d106-443f-80b1-d29e2d124118'),('4a381a22-3e5a-46f6-b7de-935b014d8960','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','5201f3dc-03da-4378-bbca-43dbcb169951',NULL),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'5248cfba-bf96-4788-a01b-34041b6bedb1'),('4de946b4-8df1-4d29-9665-7d10a0017fa8','full name','openid-connect','oidc-full-name-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('50734dce-af28-4208-8239-f010433bfe85','acr loa level','openid-connect','oidc-acr-mapper',NULL,'f7c8c6f0-7cf4-4fd4-b75c-9b0b7592fac5'),('50917d66-5129-41d7-b294-e34ad0187172','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('5119b946-1718-41a0-88ba-9d1d12abffa2','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'52b1d6ce-14ea-4340-80e7-8aca1ec269a3'),('53af598b-1a48-4e33-b725-a143e262a840','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('54eb5334-8172-45fe-a6d2-7d57654ac699','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('58d391cf-fe0e-414a-9101-02f820f6aedd','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('58e715f3-16f8-4477-b711-edb396d7dfda','audience resolve','openid-connect','oidc-audience-resolve-mapper','aee12f00-5b28-4961-9ea7-eecee0afee52',NULL),('59de4da3-65af-4a0a-aa6b-58fccde22b05','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7204b9cf-fe56-4ae9-9263-91f9dad5ef1c'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('60ae1197-c243-4ba9-817a-403da3522c04','full name','openid-connect','oidc-full-name-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('60b64c04-1070-4a06-885a-36d4eb4b6834','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('611d5b05-b249-4627-9e7c-fa1157530157','acr loa level','openid-connect','oidc-acr-mapper',NULL,'80827442-99cd-4753-97a3-18087fbefe82'),('64529dcd-b2a8-432f-b5df-503b33e51a77','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'54af3721-396d-4ad4-b274-e63e661f1b45'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'52b1d6ce-14ea-4340-80e7-8aca1ec269a3'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('688569df-dbe5-4016-9977-a9409e037666','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'045a382d-04fc-4b54-b859-71bd9e1f4e18'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','locale','openid-connect','oidc-usermodel-attribute-mapper','1fedc4a8-7335-4d5f-96a5-c268f20047b7',NULL),('6b69304f-04ca-477f-8f75-b91aff12e9cb','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('6c314559-66a7-4ec4-9eb4-c9fb38b3c7de','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'7261501b-b8c3-4597-ad3b-15bf0caa1bb7'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('6de1a7a5-31c4-4ca0-8455-d9879ac9bcc0','role list','saml','saml-role-list-mapper',NULL,'f8ed6e6e-41c9-497c-9faa-1e656e326494'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bd95f62b-006e-4c4d-a2f9-69a8305d04a5'),('719645d0-c92a-45ab-a779-966929098f23','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('733cff47-f845-431d-b1ec-b221102ad22d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('768164f2-3cd8-40e2-83cf-2798d7838801','full name','openid-connect','oidc-full-name-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('768ccef4-87bd-4118-8e7e-7ef6fe79ca1a','full name','openid-connect','oidc-full-name-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('779b9256-175e-4b64-beb5-d7466e90bc71','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'df15e5f5-3512-4f00-b78c-33fa683dea5c'),('7806848c-845c-44aa-80e6-49a512406fba','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'09e530ef-f724-48d3-9338-e579c2066064'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'88c52129-16a5-4098-a30e-df32ab344c08'),('7b6969d2-fcec-4eb7-822e-047868dea36c','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'88c52129-16a5-4098-a30e-df32ab344c08'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a0e54315-a18b-444d-bd2c-26bcb293a034'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e65ef82-445e-462d-9d04-919d9caedaae'),('81060135-e371-4674-84a9-d3a34a16e199','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'df38df1a-e43f-42c5-bf05-2c76434bf672'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b9f49760-c688-45ee-8d8a-32176fe12388'),('830993ca-4249-40f7-a86b-220993b343ea','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('85758fa8-8366-4399-9bbe-15e616b237c1','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('88fac89b-88da-4a33-aba9-b9e8ae8425c2','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'a17f3f0f-b3ae-4f67-a5e8-b3a2ed29bb1c'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'0518f266-f842-46e3-af3c-291b83e24544'),('8a9701cf-3cdc-44e9-bf83-cb4fbd580e76','role list','saml','saml-role-list-mapper',NULL,'05cf1903-0abf-476c-90ac-f53ae455b471'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('8e6497e9-7c34-4dbe-83db-65411e23c082','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'e10e4205-32e7-4b59-9ae9-7447de6b0198'),('91976331-06d9-4a2c-8800-24ea45b50bd4','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','81ee8f29-012c-49e5-a7f9-bf6080d53320',NULL),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','locale','openid-connect','oidc-usermodel-attribute-mapper','03391363-23ec-4e81-8f2b-a37e8f923e77',NULL),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','address','openid-connect','oidc-address-mapper',NULL,'76b8a060-922d-47fd-abde-24292e50888f'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('9c94e823-265b-4e9a-88db-be1362792a09','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'ec2927e0-d23b-463c-9a68-6e4a71f7f7e4'),('9d7bff00-c268-4198-9195-ef8ab4dd8b97','role list','saml','saml-role-list-mapper',NULL,'4d81e9eb-961a-4a87-a581-ac0d423941b4'),('9dfba2ff-b188-44b3-bbdf-f066755626a7','audience resolve','openid-connect','oidc-audience-resolve-mapper','358ff890-a29c-4e79-8ab0-1cc3fded1ce6',NULL),('9e13c4ee-3130-4b06-8945-30f51e8a154b','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'4cd0d155-40fc-4cdf-b821-baa793f41a11'),('9e609579-9c61-45a5-993a-2833c824c0cd','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bd95f62b-006e-4c4d-a2f9-69a8305d04a5'),('a232ac51-ae67-4046-9889-e9f458922cf7','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6cb31347-7b56-4fe1-b780-4c76d7ae0dfd'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('a47bc3d2-8ef7-49c1-8ad4-e844ebe82fb1','acr loa level','openid-connect','oidc-acr-mapper',NULL,'cb7494bb-6def-44fa-aaef-88aee8d7c693'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('a700eb43-da0a-4eb9-91be-f9e303a69f9e','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81'),('a8f4a63b-61e0-4356-b450-f6739fd910df','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('a976cd81-9f05-4e16-a441-b3b45ac1223d','full name','openid-connect','oidc-full-name-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('b1117036-62af-4e55-a0de-833196b4aa2a','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','address','openid-connect','oidc-address-mapper',NULL,'77c6ac10-816e-4932-82ae-70886ca392bb'),('b438c233-be1e-4464-9302-a8ff5bef802d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e65ef82-445e-462d-9d04-919d9caedaae'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'54af3721-396d-4ad4-b274-e63e661f1b45'),('bb2719dd-6193-4895-b372-2a903b9f9936','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'94145db8-218f-4264-a6d7-e4f40a881945'),('bb79cb0d-510f-46cf-899f-c20326952e07','locale','openid-connect','oidc-usermodel-attribute-mapper','1c3002be-ee90-4dc8-8e8e-68b5944c7165',NULL),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'4caa395e-bb55-439a-960b-3a1ade04170f'),('be21d760-5160-4955-83ad-422c45e2bdb9','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','34098bc0-970f-4e77-a7a7-cb7b504847bb',NULL),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','address','openid-connect','oidc-address-mapper',NULL,'2014246f-62e8-486e-a631-d207331979da'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'045a382d-04fc-4b54-b859-71bd9e1f4e18'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5248cfba-bf96-4788-a01b-34041b6bedb1'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','5201f3dc-03da-4378-bbca-43dbcb169951',NULL),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','3214c83b-b319-46db-83e0-a3afa51f5a5e',NULL),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ec2927e0-d23b-463c-9a68-6e4a71f7f7e4'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'ec2927e0-d23b-463c-9a68-6e4a71f7f7e4'),('d2acd512-a5da-4572-b3e5-608a71b15942','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c9fc0c8-d3e2-4a87-94ce-e80dfa5a747c'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','1c184606-8ae2-4680-a1a1-7c84b476e267',NULL),('d3e8e107-fb8e-4122-b7b6-9b358894f469','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'5a70973c-926a-4e85-8f02-25d01990dd32'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2fe9f7d5-9046-472f-8c15-c2a154bca362'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e10e4205-32e7-4b59-9ae9-7447de6b0198'),('dc452077-e56b-4617-bf0b-c7c040c92015','locale','openid-connect','oidc-usermodel-attribute-mapper','0d673718-5842-4ef7-a3e3-5e5c56facd92',NULL),('dc9e1334-dbec-44d0-968a-5907650c8c04','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('df84b791-9e6f-40c0-b9d1-91944852cf73','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'df38df1a-e43f-42c5-bf05-2c76434bf672'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('e60718a8-201a-4c0f-966a-459a4bf780a0','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'05b4d8b0-39db-4eae-8931-5139cb0d40cd'),('e627377c-744f-4267-9fa6-4abe46180281','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','address','openid-connect','oidc-address-mapper',NULL,'7d401eb4-a7ea-4f47-ad0b-a24665acc17e'),('e973bf94-2924-4411-bff1-bd1c540c05c3','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97ab33d-3d62-493d-a1b0-8ae699d81cb0'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'eced6acd-69fe-43af-bb91-1e89c9d755b3'),('ece3e1ae-aa70-4190-a51c-56622924da76','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('ee26768f-a80c-4094-9d0f-420502e43771','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'4cd0d155-40fc-4cdf-b821-baa793f41a11'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84a6524a-4f1a-45e6-a5a1-d608e7a20824'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'772c2bbb-5c2b-4176-8123-23a784cd52cf'),('efe7246c-7505-460b-860e-9ddf1f330915','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'0518f266-f842-46e3-af3c-291b83e24544'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'a0e54315-a18b-444d-bd2c-26bcb293a034'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7204b9cf-fe56-4ae9-9263-91f9dad5ef1c'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','address','openid-connect','oidc-address-mapper',NULL,'d8e5ba69-8d7f-441b-aa14-c91ed0b4fe21'),('f756d74c-e634-435d-bec5-d939a75a3b48','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'2fe9f7d5-9046-472f-8c15-c2a154bca362'),('f90b5691-9e20-4b19-80a0-b5dfb54fc3db','audience resolve','openid-connect','oidc-audience-resolve-mapper','626b586e-9d30-41b5-be22-20c228e0a428',NULL),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c3ccce01-8c61-4706-a954-fa6beca0a099'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0518f266-f842-46e3-af3c-291b83e24544'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',NULL),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f4d9e5d5-59d9-47dc-8a71-d2ed2167ea81'),('fd574581-4b34-4d94-9d0b-09fb32302f52','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7debac39-3dff-4265-a3db-56974b5217e0'),('fe4beae1-a9cb-4119-92ac-4f0a68c1b86d','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'b6818f56-46df-47b5-ab75-1616b47b1a1a');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('00c7c13e-8076-419a-942e-c19bcaf39601','true','access.token.claim'),('00c7c13e-8076-419a-942e-c19bcaf39601','family_name','claim.name'),('00c7c13e-8076-419a-942e-c19bcaf39601','true','id.token.claim'),('00c7c13e-8076-419a-942e-c19bcaf39601','true','introspection.token.claim'),('00c7c13e-8076-419a-942e-c19bcaf39601','String','jsonType.label'),('00c7c13e-8076-419a-942e-c19bcaf39601','lastName','user.attribute'),('00c7c13e-8076-419a-942e-c19bcaf39601','true','userinfo.token.claim'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','true','access.token.claim'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','zoneinfo','claim.name'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','true','id.token.claim'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','true','introspection.token.claim'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','String','jsonType.label'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','zoneinfo','user.attribute'),('03046ea7-c42a-46bc-8637-f82bc2f82b0f','true','userinfo.token.claim'),('04a20ef9-6d3d-43a9-86f6-b1bfd4a5d7f8','true','access.token.claim'),('04a20ef9-6d3d-43a9-86f6-b1bfd4a5d7f8','true','introspection.token.claim'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','true','access.token.claim'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','clientId','claim.name'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','true','id.token.claim'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','String','jsonType.label'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','clientId','user.session.note'),('058ea353-5175-4f7c-9d4a-e4264fc182f4','true','userinfo.token.claim'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','true','access.token.claim'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','upn','claim.name'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','true','id.token.claim'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','true','introspection.token.claim'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','String','jsonType.label'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','username','user.attribute'),('081c7a90-f6b0-4b73-82f9-fa1a8a8716f1','true','userinfo.token.claim'),('09f3bb72-df41-4e13-be70-82e12a58f09d','true','access.token.claim'),('09f3bb72-df41-4e13-be70-82e12a58f09d','clientId','claim.name'),('09f3bb72-df41-4e13-be70-82e12a58f09d','true','id.token.claim'),('09f3bb72-df41-4e13-be70-82e12a58f09d','String','jsonType.label'),('09f3bb72-df41-4e13-be70-82e12a58f09d','clientId','user.session.note'),('09f3bb72-df41-4e13-be70-82e12a58f09d','true','userinfo.token.claim'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','true','access.token.claim'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','picture','claim.name'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','true','id.token.claim'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','true','introspection.token.claim'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','String','jsonType.label'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','picture','user.attribute'),('0a23485c-ac95-430e-8cc0-bec00a7a6ad1','true','userinfo.token.claim'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','true','access.token.claim'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','resource_access.${client_id}.roles','claim.name'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','true','introspection.token.claim'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','String','jsonType.label'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','true','multivalued'),('0c080c16-52a2-441e-aaa3-4bd18e202b4f','foo','user.attribute'),('0c59e02b-816a-4f13-9093-989ae337639f','true','access.token.claim'),('0c59e02b-816a-4f13-9093-989ae337639f','middle_name','claim.name'),('0c59e02b-816a-4f13-9093-989ae337639f','true','id.token.claim'),('0c59e02b-816a-4f13-9093-989ae337639f','true','introspection.token.claim'),('0c59e02b-816a-4f13-9093-989ae337639f','String','jsonType.label'),('0c59e02b-816a-4f13-9093-989ae337639f','middleName','user.attribute'),('0c59e02b-816a-4f13-9093-989ae337639f','true','userinfo.token.claim'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','true','access.token.claim'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','middle_name','claim.name'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','true','id.token.claim'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','true','introspection.token.claim'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','String','jsonType.label'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','middleName','user.attribute'),('0d12131f-1576-42bc-8b6b-69daf0b9b796','true','userinfo.token.claim'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','true','access.token.claim'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','clientAddress','claim.name'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','true','id.token.claim'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','String','jsonType.label'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','clientAddress','user.session.note'),('0f66f46d-15a6-4b25-a719-ee66694fdb64','true','userinfo.token.claim'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','true','access.token.claim'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','birthdate','claim.name'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','true','id.token.claim'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','true','introspection.token.claim'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','String','jsonType.label'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','birthdate','user.attribute'),('108fbbc7-5562-4745-8c3d-0f62dba75ea4','true','userinfo.token.claim'),('1198074d-f03d-4587-98af-16c9ac558080','true','access.token.claim'),('1198074d-f03d-4587-98af-16c9ac558080','website','claim.name'),('1198074d-f03d-4587-98af-16c9ac558080','true','id.token.claim'),('1198074d-f03d-4587-98af-16c9ac558080','true','introspection.token.claim'),('1198074d-f03d-4587-98af-16c9ac558080','String','jsonType.label'),('1198074d-f03d-4587-98af-16c9ac558080','website','user.attribute'),('1198074d-f03d-4587-98af-16c9ac558080','true','userinfo.token.claim'),('144e742d-9dc4-42a2-a509-a8598575df97','true','access.token.claim'),('144e742d-9dc4-42a2-a509-a8598575df97','family_name','claim.name'),('144e742d-9dc4-42a2-a509-a8598575df97','true','id.token.claim'),('144e742d-9dc4-42a2-a509-a8598575df97','true','introspection.token.claim'),('144e742d-9dc4-42a2-a509-a8598575df97','String','jsonType.label'),('144e742d-9dc4-42a2-a509-a8598575df97','lastName','user.attribute'),('144e742d-9dc4-42a2-a509-a8598575df97','true','userinfo.token.claim'),('14cc7baf-0da2-4cfd-9448-d257a800715e','true','access.token.claim'),('14cc7baf-0da2-4cfd-9448-d257a800715e','picture','claim.name'),('14cc7baf-0da2-4cfd-9448-d257a800715e','true','id.token.claim'),('14cc7baf-0da2-4cfd-9448-d257a800715e','true','introspection.token.claim'),('14cc7baf-0da2-4cfd-9448-d257a800715e','String','jsonType.label'),('14cc7baf-0da2-4cfd-9448-d257a800715e','picture','user.attribute'),('14cc7baf-0da2-4cfd-9448-d257a800715e','true','userinfo.token.claim'),('15ca3ace-c522-40a4-83b0-56664e542839','true','access.token.claim'),('15ca3ace-c522-40a4-83b0-56664e542839','nickname','claim.name'),('15ca3ace-c522-40a4-83b0-56664e542839','true','id.token.claim'),('15ca3ace-c522-40a4-83b0-56664e542839','true','introspection.token.claim'),('15ca3ace-c522-40a4-83b0-56664e542839','String','jsonType.label'),('15ca3ace-c522-40a4-83b0-56664e542839','nickname','user.attribute'),('15ca3ace-c522-40a4-83b0-56664e542839','true','userinfo.token.claim'),('16ad9970-b81e-4783-8d61-054687f40bc1','true','access.token.claim'),('16ad9970-b81e-4783-8d61-054687f40bc1','updated_at','claim.name'),('16ad9970-b81e-4783-8d61-054687f40bc1','true','id.token.claim'),('16ad9970-b81e-4783-8d61-054687f40bc1','true','introspection.token.claim'),('16ad9970-b81e-4783-8d61-054687f40bc1','long','jsonType.label'),('16ad9970-b81e-4783-8d61-054687f40bc1','updatedAt','user.attribute'),('16ad9970-b81e-4783-8d61-054687f40bc1','true','userinfo.token.claim'),('18dea589-68e7-4ed2-a6dd-38d68432a174','true','access.token.claim'),('18dea589-68e7-4ed2-a6dd-38d68432a174','true','id.token.claim'),('18dea589-68e7-4ed2-a6dd-38d68432a174','true','introspection.token.claim'),('1bc80119-fc95-4df0-81c1-30350023fae8','true','access.token.claim'),('1bc80119-fc95-4df0-81c1-30350023fae8','true','introspection.token.claim'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','true','access.token.claim'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','zoneinfo','claim.name'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','true','id.token.claim'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','true','introspection.token.claim'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','String','jsonType.label'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','zoneinfo','user.attribute'),('1dcfc532-9d19-4cbe-80ce-5eddf85bda03','true','userinfo.token.claim'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','true','access.token.claim'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','groups','claim.name'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','true','id.token.claim'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','true','introspection.token.claim'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','String','jsonType.label'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','true','multivalued'),('21bc9861-7ff1-477c-bba8-0c1c7ebaf971','foo','user.attribute'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','true','access.token.claim'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','given_name','claim.name'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','true','id.token.claim'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','true','introspection.token.claim'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','String','jsonType.label'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','firstName','user.attribute'),('222fd13b-2a2e-4d2e-9e51-0e0c197a9f8f','true','userinfo.token.claim'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','true','access.token.claim'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','gender','claim.name'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','true','id.token.claim'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','true','introspection.token.claim'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','String','jsonType.label'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','gender','user.attribute'),('229e5d4d-58da-4f15-94a0-3639bc9d3f32','true','userinfo.token.claim'),('2441ea38-f954-4c7d-954b-572f9936dccd','true','access.token.claim'),('2441ea38-f954-4c7d-954b-572f9936dccd','zoneinfo','claim.name'),('2441ea38-f954-4c7d-954b-572f9936dccd','true','id.token.claim'),('2441ea38-f954-4c7d-954b-572f9936dccd','true','introspection.token.claim'),('2441ea38-f954-4c7d-954b-572f9936dccd','String','jsonType.label'),('2441ea38-f954-4c7d-954b-572f9936dccd','zoneinfo','user.attribute'),('2441ea38-f954-4c7d-954b-572f9936dccd','true','userinfo.token.claim'),('27e3c12e-2630-46df-9a6b-c47743b072d2','true','access.token.claim'),('27e3c12e-2630-46df-9a6b-c47743b072d2','nickname','claim.name'),('27e3c12e-2630-46df-9a6b-c47743b072d2','true','id.token.claim'),('27e3c12e-2630-46df-9a6b-c47743b072d2','true','introspection.token.claim'),('27e3c12e-2630-46df-9a6b-c47743b072d2','String','jsonType.label'),('27e3c12e-2630-46df-9a6b-c47743b072d2','nickname','user.attribute'),('27e3c12e-2630-46df-9a6b-c47743b072d2','true','userinfo.token.claim'),('2b630ae5-a826-482d-bcbf-2e47b24573da','true','access.token.claim'),('2b630ae5-a826-482d-bcbf-2e47b24573da','phone_number','claim.name'),('2b630ae5-a826-482d-bcbf-2e47b24573da','true','id.token.claim'),('2b630ae5-a826-482d-bcbf-2e47b24573da','true','introspection.token.claim'),('2b630ae5-a826-482d-bcbf-2e47b24573da','String','jsonType.label'),('2b630ae5-a826-482d-bcbf-2e47b24573da','phoneNumber','user.attribute'),('2b630ae5-a826-482d-bcbf-2e47b24573da','true','userinfo.token.claim'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','true','access.token.claim'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','email_verified','claim.name'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','true','id.token.claim'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','true','introspection.token.claim'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','boolean','jsonType.label'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','emailVerified','user.attribute'),('2bd68117-fa1b-40bb-8b2b-fd3065014663','true','userinfo.token.claim'),('2dbd7d62-842e-4d32-8be6-44852509d059','true','access.token.claim'),('2dbd7d62-842e-4d32-8be6-44852509d059','groups','claim.name'),('2dbd7d62-842e-4d32-8be6-44852509d059','true','id.token.claim'),('2dbd7d62-842e-4d32-8be6-44852509d059','true','introspection.token.claim'),('2dbd7d62-842e-4d32-8be6-44852509d059','String','jsonType.label'),('2dbd7d62-842e-4d32-8be6-44852509d059','true','multivalued'),('2dbd7d62-842e-4d32-8be6-44852509d059','foo','user.attribute'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','true','access.token.claim'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','true','id.token.claim'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','true','introspection.token.claim'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','country','user.attribute.country'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','formatted','user.attribute.formatted'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','locality','user.attribute.locality'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','postal_code','user.attribute.postal_code'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','region','user.attribute.region'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','street','user.attribute.street'),('2e6b2f50-3a44-417f-89ae-dbae6020f95b','true','userinfo.token.claim'),('2f68a71a-a8d3-45b3-a631-50dcc2b1b035','Role','attribute.name'),('2f68a71a-a8d3-45b3-a631-50dcc2b1b035','Basic','attribute.nameformat'),('2f68a71a-a8d3-45b3-a631-50dcc2b1b035','false','single'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','true','access.token.claim'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','profile','claim.name'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','true','id.token.claim'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','true','introspection.token.claim'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','String','jsonType.label'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','profile','user.attribute'),('2f7bc8bb-2d90-4b18-aa1a-dae3b7a011e4','true','userinfo.token.claim'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','true','access.token.claim'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','birthdate','claim.name'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','true','id.token.claim'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','true','introspection.token.claim'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','String','jsonType.label'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','birthdate','user.attribute'),('2fe24dc6-d68d-4cb2-9b4b-de6cb159391a','true','userinfo.token.claim'),('3086701d-5136-46d9-b8e6-7c646d8d9d6a','Role','attribute.name'),('3086701d-5136-46d9-b8e6-7c646d8d9d6a','Basic','attribute.nameformat'),('3086701d-5136-46d9-b8e6-7c646d8d9d6a','false','single'),('311d554c-9a16-469c-9346-6a5f600a72ad','true','access.token.claim'),('311d554c-9a16-469c-9346-6a5f600a72ad','groups','claim.name'),('311d554c-9a16-469c-9346-6a5f600a72ad','true','id.token.claim'),('311d554c-9a16-469c-9346-6a5f600a72ad','true','introspection.token.claim'),('311d554c-9a16-469c-9346-6a5f600a72ad','String','jsonType.label'),('311d554c-9a16-469c-9346-6a5f600a72ad','true','multivalued'),('311d554c-9a16-469c-9346-6a5f600a72ad','foo','user.attribute'),('327bca67-764f-4377-be78-4d7c1252a1a2','true','access.token.claim'),('327bca67-764f-4377-be78-4d7c1252a1a2','realm_access.roles','claim.name'),('327bca67-764f-4377-be78-4d7c1252a1a2','true','introspection.token.claim'),('327bca67-764f-4377-be78-4d7c1252a1a2','String','jsonType.label'),('327bca67-764f-4377-be78-4d7c1252a1a2','true','multivalued'),('327bca67-764f-4377-be78-4d7c1252a1a2','foo','user.attribute'),('32a274a9-f71b-41d7-ab26-371eb3352069','true','access.token.claim'),('32a274a9-f71b-41d7-ab26-371eb3352069','profile','claim.name'),('32a274a9-f71b-41d7-ab26-371eb3352069','true','id.token.claim'),('32a274a9-f71b-41d7-ab26-371eb3352069','true','introspection.token.claim'),('32a274a9-f71b-41d7-ab26-371eb3352069','String','jsonType.label'),('32a274a9-f71b-41d7-ab26-371eb3352069','profile','user.attribute'),('32a274a9-f71b-41d7-ab26-371eb3352069','true','userinfo.token.claim'),('32b17ac2-4372-48cc-abc8-8fcce0984636','true','access.token.claim'),('32b17ac2-4372-48cc-abc8-8fcce0984636','resource_access.${client_id}.roles','claim.name'),('32b17ac2-4372-48cc-abc8-8fcce0984636','true','introspection.token.claim'),('32b17ac2-4372-48cc-abc8-8fcce0984636','String','jsonType.label'),('32b17ac2-4372-48cc-abc8-8fcce0984636','true','multivalued'),('32b17ac2-4372-48cc-abc8-8fcce0984636','foo','user.attribute'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','true','access.token.claim'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','family_name','claim.name'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','true','id.token.claim'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','true','introspection.token.claim'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','String','jsonType.label'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','lastName','user.attribute'),('341e0f9b-0063-4b34-8da9-b93d0f54825c','true','userinfo.token.claim'),('34474b98-4232-48ac-a70b-d1ab7b3e3512','true','access.token.claim'),('34474b98-4232-48ac-a70b-d1ab7b3e3512','true','introspection.token.claim'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','true','access.token.claim'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','locale','claim.name'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','true','id.token.claim'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','true','introspection.token.claim'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','String','jsonType.label'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','locale','user.attribute'),('3527cbbf-0efa-462b-91a3-9d3e4041fdeb','true','userinfo.token.claim'),('3a5322e9-aaf3-49fc-bfcf-8fb1b75d0472','true','access.token.claim'),('3a5322e9-aaf3-49fc-bfcf-8fb1b75d0472','true','id.token.claim'),('3a5322e9-aaf3-49fc-bfcf-8fb1b75d0472','true','introspection.token.claim'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','true','access.token.claim'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','middle_name','claim.name'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','true','id.token.claim'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','true','introspection.token.claim'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','String','jsonType.label'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','middleName','user.attribute'),('3e560c9f-6344-401a-9832-eb1a0afd7cc0','true','userinfo.token.claim'),('3e5dc5d9-cb18-4e4d-aad7-f61dec67c7ea','true','access.token.claim'),('3e5dc5d9-cb18-4e4d-aad7-f61dec67c7ea','true','id.token.claim'),('3e5dc5d9-cb18-4e4d-aad7-f61dec67c7ea','true','introspection.token.claim'),('3e5dc5d9-cb18-4e4d-aad7-f61dec67c7ea','true','userinfo.token.claim'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','true','access.token.claim'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','profile','claim.name'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','true','id.token.claim'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','true','introspection.token.claim'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','String','jsonType.label'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','profile','user.attribute'),('3eb56f5f-caa4-4ea3-a926-7ecb61d5c557','true','userinfo.token.claim'),('401844a1-f31f-4fde-b245-0b3ae9d69810','Role','attribute.name'),('401844a1-f31f-4fde-b245-0b3ae9d69810','Basic','attribute.nameformat'),('401844a1-f31f-4fde-b245-0b3ae9d69810','false','single'),('413a684f-e47d-4660-ad5d-2c756f016176','true','access.token.claim'),('413a684f-e47d-4660-ad5d-2c756f016176','given_name','claim.name'),('413a684f-e47d-4660-ad5d-2c756f016176','true','id.token.claim'),('413a684f-e47d-4660-ad5d-2c756f016176','true','introspection.token.claim'),('413a684f-e47d-4660-ad5d-2c756f016176','String','jsonType.label'),('413a684f-e47d-4660-ad5d-2c756f016176','firstName','user.attribute'),('413a684f-e47d-4660-ad5d-2c756f016176','true','userinfo.token.claim'),('421620b5-5b21-4a68-a276-f833028be4ce','true','access.token.claim'),('421620b5-5b21-4a68-a276-f833028be4ce','locale','claim.name'),('421620b5-5b21-4a68-a276-f833028be4ce','true','id.token.claim'),('421620b5-5b21-4a68-a276-f833028be4ce','true','introspection.token.claim'),('421620b5-5b21-4a68-a276-f833028be4ce','String','jsonType.label'),('421620b5-5b21-4a68-a276-f833028be4ce','locale','user.attribute'),('421620b5-5b21-4a68-a276-f833028be4ce','true','userinfo.token.claim'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','true','access.token.claim'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','preferred_username','claim.name'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','true','id.token.claim'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','true','introspection.token.claim'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','String','jsonType.label'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','username','user.attribute'),('428f1373-52d3-4ad0-9bac-4eb7fae1aa2b','true','userinfo.token.claim'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','true','access.token.claim'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','nickname','claim.name'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','true','id.token.claim'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','true','introspection.token.claim'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','String','jsonType.label'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','nickname','user.attribute'),('42b3f50c-a542-44f4-8ec1-978ed9bb550c','true','userinfo.token.claim'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','true','access.token.claim'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','preferred_username','claim.name'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','true','id.token.claim'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','true','introspection.token.claim'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','String','jsonType.label'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','username','user.attribute'),('46e17949-6775-4c57-9bd9-54fc88a71f9d','true','userinfo.token.claim'),('481de456-0b27-4cd8-b54f-9f369a015872','true','access.token.claim'),('481de456-0b27-4cd8-b54f-9f369a015872','email_verified','claim.name'),('481de456-0b27-4cd8-b54f-9f369a015872','true','id.token.claim'),('481de456-0b27-4cd8-b54f-9f369a015872','true','introspection.token.claim'),('481de456-0b27-4cd8-b54f-9f369a015872','boolean','jsonType.label'),('481de456-0b27-4cd8-b54f-9f369a015872','emailVerified','user.attribute'),('481de456-0b27-4cd8-b54f-9f369a015872','true','userinfo.token.claim'),('4a173b5f-1162-47bc-b152-9932eee8b9cd','true','access.token.claim'),('4a173b5f-1162-47bc-b152-9932eee8b9cd','true','id.token.claim'),('4a173b5f-1162-47bc-b152-9932eee8b9cd','true','introspection.token.claim'),('4a381a22-3e5a-46f6-b7de-935b014d8960','true','access.token.claim'),('4a381a22-3e5a-46f6-b7de-935b014d8960','middle_name','claim.name'),('4a381a22-3e5a-46f6-b7de-935b014d8960','true','id.token.claim'),('4a381a22-3e5a-46f6-b7de-935b014d8960','true','introspection.token.claim'),('4a381a22-3e5a-46f6-b7de-935b014d8960','String','jsonType.label'),('4a381a22-3e5a-46f6-b7de-935b014d8960','middleName','user.attribute'),('4a381a22-3e5a-46f6-b7de-935b014d8960','true','userinfo.token.claim'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','true','access.token.claim'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','nickname','claim.name'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','true','id.token.claim'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','true','introspection.token.claim'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','String','jsonType.label'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','nickname','user.attribute'),('4b80c379-49fe-4128-b7e1-b3aef0c74e95','true','userinfo.token.claim'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','true','access.token.claim'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','given_name','claim.name'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','true','id.token.claim'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','true','introspection.token.claim'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','String','jsonType.label'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','firstName','user.attribute'),('4c508cff-c03f-4df9-9e17-6d98fefe55d1','true','userinfo.token.claim'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','true','access.token.claim'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','clientHost','claim.name'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','true','id.token.claim'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','String','jsonType.label'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','clientHost','user.session.note'),('4c8dff46-184d-4b46-b8b4-5b0f580585f8','true','userinfo.token.claim'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','true','access.token.claim'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','groups','claim.name'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','true','id.token.claim'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','true','introspection.token.claim'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','String','jsonType.label'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','true','multivalued'),('4d10ab09-f252-4ee7-a538-f65d8f3b25d8','foo','user.attribute'),('4de946b4-8df1-4d29-9665-7d10a0017fa8','true','access.token.claim'),('4de946b4-8df1-4d29-9665-7d10a0017fa8','true','id.token.claim'),('4de946b4-8df1-4d29-9665-7d10a0017fa8','true','introspection.token.claim'),('4de946b4-8df1-4d29-9665-7d10a0017fa8','true','userinfo.token.claim'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','true','access.token.claim'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','gender','claim.name'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','true','id.token.claim'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','true','introspection.token.claim'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','String','jsonType.label'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','gender','user.attribute'),('4f17e8e8-64a0-4196-b63b-fbee9dd229b5','true','userinfo.token.claim'),('50734dce-af28-4208-8239-f010433bfe85','true','access.token.claim'),('50734dce-af28-4208-8239-f010433bfe85','true','id.token.claim'),('50734dce-af28-4208-8239-f010433bfe85','true','introspection.token.claim'),('50917d66-5129-41d7-b294-e34ad0187172','true','access.token.claim'),('50917d66-5129-41d7-b294-e34ad0187172','nickname','claim.name'),('50917d66-5129-41d7-b294-e34ad0187172','true','id.token.claim'),('50917d66-5129-41d7-b294-e34ad0187172','true','introspection.token.claim'),('50917d66-5129-41d7-b294-e34ad0187172','String','jsonType.label'),('50917d66-5129-41d7-b294-e34ad0187172','nickname','user.attribute'),('50917d66-5129-41d7-b294-e34ad0187172','true','userinfo.token.claim'),('5119b946-1718-41a0-88ba-9d1d12abffa2','true','access.token.claim'),('5119b946-1718-41a0-88ba-9d1d12abffa2','clientId','claim.name'),('5119b946-1718-41a0-88ba-9d1d12abffa2','true','id.token.claim'),('5119b946-1718-41a0-88ba-9d1d12abffa2','String','jsonType.label'),('5119b946-1718-41a0-88ba-9d1d12abffa2','clientId','user.session.note'),('5119b946-1718-41a0-88ba-9d1d12abffa2','true','userinfo.token.claim'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','true','access.token.claim'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','birthdate','claim.name'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','true','id.token.claim'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','true','introspection.token.claim'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','String','jsonType.label'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','birthdate','user.attribute'),('5207bbf2-8ec0-4e65-a9a5-1aebf66fe61c','true','userinfo.token.claim'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','true','access.token.claim'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','email','claim.name'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','true','id.token.claim'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','true','introspection.token.claim'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','String','jsonType.label'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','email','user.attribute'),('528ece6f-3cb7-4bee-8123-f3322a0e29f8','true','userinfo.token.claim'),('53af598b-1a48-4e33-b725-a143e262a840','true','access.token.claim'),('53af598b-1a48-4e33-b725-a143e262a840','locale','claim.name'),('53af598b-1a48-4e33-b725-a143e262a840','true','id.token.claim'),('53af598b-1a48-4e33-b725-a143e262a840','true','introspection.token.claim'),('53af598b-1a48-4e33-b725-a143e262a840','String','jsonType.label'),('53af598b-1a48-4e33-b725-a143e262a840','locale','user.attribute'),('53af598b-1a48-4e33-b725-a143e262a840','true','userinfo.token.claim'),('54eb5334-8172-45fe-a6d2-7d57654ac699','true','access.token.claim'),('54eb5334-8172-45fe-a6d2-7d57654ac699','preferred_username','claim.name'),('54eb5334-8172-45fe-a6d2-7d57654ac699','true','id.token.claim'),('54eb5334-8172-45fe-a6d2-7d57654ac699','true','introspection.token.claim'),('54eb5334-8172-45fe-a6d2-7d57654ac699','String','jsonType.label'),('54eb5334-8172-45fe-a6d2-7d57654ac699','username','user.attribute'),('54eb5334-8172-45fe-a6d2-7d57654ac699','true','userinfo.token.claim'),('58d391cf-fe0e-414a-9101-02f820f6aedd','true','access.token.claim'),('58d391cf-fe0e-414a-9101-02f820f6aedd','locale','claim.name'),('58d391cf-fe0e-414a-9101-02f820f6aedd','true','id.token.claim'),('58d391cf-fe0e-414a-9101-02f820f6aedd','true','introspection.token.claim'),('58d391cf-fe0e-414a-9101-02f820f6aedd','String','jsonType.label'),('58d391cf-fe0e-414a-9101-02f820f6aedd','locale','user.attribute'),('58d391cf-fe0e-414a-9101-02f820f6aedd','true','userinfo.token.claim'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','true','access.token.claim'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','phone_number_verified','claim.name'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','true','id.token.claim'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','true','introspection.token.claim'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','boolean','jsonType.label'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','phoneNumberVerified','user.attribute'),('59de4da3-65af-4a0a-aa6b-58fccde22b05','true','userinfo.token.claim'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','true','access.token.claim'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','picture','claim.name'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','true','id.token.claim'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','true','introspection.token.claim'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','String','jsonType.label'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','picture','user.attribute'),('5ca39436-6ed2-43a2-9b20-b5ccc29cf715','true','userinfo.token.claim'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','true','access.token.claim'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','clientId','claim.name'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','true','id.token.claim'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','String','jsonType.label'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','clientId','user.session.note'),('5cdb1739-9f5c-4f68-8099-ee44f27372ee','true','userinfo.token.claim'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','true','access.token.claim'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','website','claim.name'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','true','id.token.claim'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','true','introspection.token.claim'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','String','jsonType.label'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','website','user.attribute'),('5f9c905f-544d-4076-b1d9-6c3d71f32f24','true','userinfo.token.claim'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','true','access.token.claim'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','clientHost','claim.name'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','true','id.token.claim'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','String','jsonType.label'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','clientHost','user.session.note'),('605fb1d8-cd50-4c31-ab3b-9b4b6998a032','true','userinfo.token.claim'),('60ae1197-c243-4ba9-817a-403da3522c04','true','access.token.claim'),('60ae1197-c243-4ba9-817a-403da3522c04','true','id.token.claim'),('60ae1197-c243-4ba9-817a-403da3522c04','true','introspection.token.claim'),('60ae1197-c243-4ba9-817a-403da3522c04','true','userinfo.token.claim'),('60b64c04-1070-4a06-885a-36d4eb4b6834','true','access.token.claim'),('60b64c04-1070-4a06-885a-36d4eb4b6834','gender','claim.name'),('60b64c04-1070-4a06-885a-36d4eb4b6834','true','id.token.claim'),('60b64c04-1070-4a06-885a-36d4eb4b6834','true','introspection.token.claim'),('60b64c04-1070-4a06-885a-36d4eb4b6834','String','jsonType.label'),('60b64c04-1070-4a06-885a-36d4eb4b6834','gender','user.attribute'),('60b64c04-1070-4a06-885a-36d4eb4b6834','true','userinfo.token.claim'),('611d5b05-b249-4627-9e7c-fa1157530157','true','access.token.claim'),('611d5b05-b249-4627-9e7c-fa1157530157','true','id.token.claim'),('611d5b05-b249-4627-9e7c-fa1157530157','true','introspection.token.claim'),('64529dcd-b2a8-432f-b5df-503b33e51a77','true','access.token.claim'),('64529dcd-b2a8-432f-b5df-503b33e51a77','website','claim.name'),('64529dcd-b2a8-432f-b5df-503b33e51a77','true','id.token.claim'),('64529dcd-b2a8-432f-b5df-503b33e51a77','true','introspection.token.claim'),('64529dcd-b2a8-432f-b5df-503b33e51a77','String','jsonType.label'),('64529dcd-b2a8-432f-b5df-503b33e51a77','website','user.attribute'),('64529dcd-b2a8-432f-b5df-503b33e51a77','true','userinfo.token.claim'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','true','access.token.claim'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','email','claim.name'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','true','id.token.claim'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','true','introspection.token.claim'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','String','jsonType.label'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','email','user.attribute'),('64a8c6b7-9d88-4978-8e4c-add7c9a26674','true','userinfo.token.claim'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','true','access.token.claim'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','email_verified','claim.name'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','true','id.token.claim'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','true','introspection.token.claim'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','boolean','jsonType.label'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','emailVerified','user.attribute'),('64b5924b-7ce5-4851-a2e7-e6d0225a9631','true','userinfo.token.claim'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','true','access.token.claim'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','clientHost','claim.name'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','true','id.token.claim'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','String','jsonType.label'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','clientHost','user.session.note'),('66f1dfe5-d8d7-4626-a6ac-438cb748b9ad','true','userinfo.token.claim'),('688569df-dbe5-4016-9977-a9409e037666','true','access.token.claim'),('688569df-dbe5-4016-9977-a9409e037666','email','claim.name'),('688569df-dbe5-4016-9977-a9409e037666','true','id.token.claim'),('688569df-dbe5-4016-9977-a9409e037666','true','introspection.token.claim'),('688569df-dbe5-4016-9977-a9409e037666','String','jsonType.label'),('688569df-dbe5-4016-9977-a9409e037666','email','user.attribute'),('688569df-dbe5-4016-9977-a9409e037666','true','userinfo.token.claim'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','true','access.token.claim'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','zoneinfo','claim.name'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','true','id.token.claim'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','true','introspection.token.claim'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','String','jsonType.label'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','zoneinfo','user.attribute'),('69402202-26cf-495c-a1a5-d6ba5ebd7df4','true','userinfo.token.claim'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','true','access.token.claim'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','locale','claim.name'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','true','id.token.claim'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','true','introspection.token.claim'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','String','jsonType.label'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','locale','user.attribute'),('69ab1524-9328-495c-99cd-cd818b9c0d9d','true','userinfo.token.claim'),('6b69304f-04ca-477f-8f75-b91aff12e9cb','true','access.token.claim'),('6b69304f-04ca-477f-8f75-b91aff12e9cb','clientHost','claim.name'),('6b69304f-04ca-477f-8f75-b91aff12e9cb','true','id.token.claim'),('6b69304f-04ca-477f-8f75-b91aff12e9cb','String','jsonType.label'),('6b69304f-04ca-477f-8f75-b91aff12e9cb','clientHost','user.session.note'),('6b69304f-04ca-477f-8f75-b91aff12e9cb','true','userinfo.token.claim'),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','true','access.token.claim'),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','clientAddress','claim.name'),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','true','id.token.claim'),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','String','jsonType.label'),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','clientAddress','user.session.note'),('6b6c5fed-7617-4fef-a97a-57e50f7ea1cb','true','userinfo.token.claim'),('6c314559-66a7-4ec4-9eb4-c9fb38b3c7de','true','access.token.claim'),('6c314559-66a7-4ec4-9eb4-c9fb38b3c7de','true','introspection.token.claim'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','true','access.token.claim'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','picture','claim.name'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','true','id.token.claim'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','true','introspection.token.claim'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','String','jsonType.label'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','picture','user.attribute'),('6c495f9b-7db8-47d4-914c-9d2d2b366512','true','userinfo.token.claim'),('6de1a7a5-31c4-4ca0-8455-d9879ac9bcc0','Role','attribute.name'),('6de1a7a5-31c4-4ca0-8455-d9879ac9bcc0','Basic','attribute.nameformat'),('6de1a7a5-31c4-4ca0-8455-d9879ac9bcc0','false','single'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','true','access.token.claim'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','phone_number_verified','claim.name'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','true','id.token.claim'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','true','introspection.token.claim'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','boolean','jsonType.label'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','phoneNumberVerified','user.attribute'),('6de29cb5-8f32-402e-ba19-7c5bf1ed0194','true','userinfo.token.claim'),('719645d0-c92a-45ab-a779-966929098f23','true','access.token.claim'),('719645d0-c92a-45ab-a779-966929098f23','middle_name','claim.name'),('719645d0-c92a-45ab-a779-966929098f23','true','id.token.claim'),('719645d0-c92a-45ab-a779-966929098f23','true','introspection.token.claim'),('719645d0-c92a-45ab-a779-966929098f23','String','jsonType.label'),('719645d0-c92a-45ab-a779-966929098f23','middleName','user.attribute'),('719645d0-c92a-45ab-a779-966929098f23','true','userinfo.token.claim'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','true','access.token.claim'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','birthdate','claim.name'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','true','id.token.claim'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','true','introspection.token.claim'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','String','jsonType.label'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','birthdate','user.attribute'),('72a5ceec-bb1d-4e2d-8f1c-51f2d669c132','true','userinfo.token.claim'),('733cff47-f845-431d-b1ec-b221102ad22d','true','access.token.claim'),('733cff47-f845-431d-b1ec-b221102ad22d','updated_at','claim.name'),('733cff47-f845-431d-b1ec-b221102ad22d','true','id.token.claim'),('733cff47-f845-431d-b1ec-b221102ad22d','true','introspection.token.claim'),('733cff47-f845-431d-b1ec-b221102ad22d','long','jsonType.label'),('733cff47-f845-431d-b1ec-b221102ad22d','updatedAt','user.attribute'),('733cff47-f845-431d-b1ec-b221102ad22d','true','userinfo.token.claim'),('768164f2-3cd8-40e2-83cf-2798d7838801','true','access.token.claim'),('768164f2-3cd8-40e2-83cf-2798d7838801','true','id.token.claim'),('768164f2-3cd8-40e2-83cf-2798d7838801','true','introspection.token.claim'),('768164f2-3cd8-40e2-83cf-2798d7838801','true','userinfo.token.claim'),('768ccef4-87bd-4118-8e7e-7ef6fe79ca1a','true','access.token.claim'),('768ccef4-87bd-4118-8e7e-7ef6fe79ca1a','true','id.token.claim'),('768ccef4-87bd-4118-8e7e-7ef6fe79ca1a','true','introspection.token.claim'),('768ccef4-87bd-4118-8e7e-7ef6fe79ca1a','true','userinfo.token.claim'),('779b9256-175e-4b64-beb5-d7466e90bc71','true','access.token.claim'),('779b9256-175e-4b64-beb5-d7466e90bc71','email','claim.name'),('779b9256-175e-4b64-beb5-d7466e90bc71','true','id.token.claim'),('779b9256-175e-4b64-beb5-d7466e90bc71','true','introspection.token.claim'),('779b9256-175e-4b64-beb5-d7466e90bc71','String','jsonType.label'),('779b9256-175e-4b64-beb5-d7466e90bc71','email','user.attribute'),('779b9256-175e-4b64-beb5-d7466e90bc71','true','userinfo.token.claim'),('7806848c-845c-44aa-80e6-49a512406fba','true','access.token.claim'),('7806848c-845c-44aa-80e6-49a512406fba','true','introspection.token.claim'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','true','access.token.claim'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','phone_number','claim.name'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','true','id.token.claim'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','true','introspection.token.claim'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','String','jsonType.label'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','phoneNumber','user.attribute'),('787a310a-9d1a-40fc-8f9f-b08278b3ab58','true','userinfo.token.claim'),('7b6969d2-fcec-4eb7-822e-047868dea36c','true','access.token.claim'),('7b6969d2-fcec-4eb7-822e-047868dea36c','phone_number_verified','claim.name'),('7b6969d2-fcec-4eb7-822e-047868dea36c','true','id.token.claim'),('7b6969d2-fcec-4eb7-822e-047868dea36c','true','introspection.token.claim'),('7b6969d2-fcec-4eb7-822e-047868dea36c','boolean','jsonType.label'),('7b6969d2-fcec-4eb7-822e-047868dea36c','phoneNumberVerified','user.attribute'),('7b6969d2-fcec-4eb7-822e-047868dea36c','true','userinfo.token.claim'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','true','access.token.claim'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','email','claim.name'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','true','id.token.claim'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','true','introspection.token.claim'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','String','jsonType.label'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','email','user.attribute'),('7bc6e518-9f88-4a0a-8803-27a6fefdace1','true','userinfo.token.claim'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','true','access.token.claim'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','phone_number_verified','claim.name'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','true','id.token.claim'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','true','introspection.token.claim'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','boolean','jsonType.label'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','phoneNumberVerified','user.attribute'),('803c71a4-f40c-4a6d-b6d7-3bad6093fd09','true','userinfo.token.claim'),('81060135-e371-4674-84a9-d3a34a16e199','true','access.token.claim'),('81060135-e371-4674-84a9-d3a34a16e199','phone_number','claim.name'),('81060135-e371-4674-84a9-d3a34a16e199','true','id.token.claim'),('81060135-e371-4674-84a9-d3a34a16e199','true','introspection.token.claim'),('81060135-e371-4674-84a9-d3a34a16e199','String','jsonType.label'),('81060135-e371-4674-84a9-d3a34a16e199','phoneNumber','user.attribute'),('81060135-e371-4674-84a9-d3a34a16e199','true','userinfo.token.claim'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','true','access.token.claim'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','email','claim.name'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','true','id.token.claim'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','true','introspection.token.claim'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','String','jsonType.label'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','email','user.attribute'),('813ea4b5-8f7a-4aae-8b39-bc405b19a567','true','userinfo.token.claim'),('830993ca-4249-40f7-a86b-220993b343ea','true','access.token.claim'),('830993ca-4249-40f7-a86b-220993b343ea','profile','claim.name'),('830993ca-4249-40f7-a86b-220993b343ea','true','id.token.claim'),('830993ca-4249-40f7-a86b-220993b343ea','true','introspection.token.claim'),('830993ca-4249-40f7-a86b-220993b343ea','String','jsonType.label'),('830993ca-4249-40f7-a86b-220993b343ea','profile','user.attribute'),('830993ca-4249-40f7-a86b-220993b343ea','true','userinfo.token.claim'),('85758fa8-8366-4399-9bbe-15e616b237c1','true','access.token.claim'),('85758fa8-8366-4399-9bbe-15e616b237c1','locale','claim.name'),('85758fa8-8366-4399-9bbe-15e616b237c1','true','id.token.claim'),('85758fa8-8366-4399-9bbe-15e616b237c1','true','introspection.token.claim'),('85758fa8-8366-4399-9bbe-15e616b237c1','String','jsonType.label'),('85758fa8-8366-4399-9bbe-15e616b237c1','locale','user.attribute'),('85758fa8-8366-4399-9bbe-15e616b237c1','true','userinfo.token.claim'),('88fac89b-88da-4a33-aba9-b9e8ae8425c2','true','access.token.claim'),('88fac89b-88da-4a33-aba9-b9e8ae8425c2','true','introspection.token.claim'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','true','access.token.claim'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','resource_access.${client_id}.roles','claim.name'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','true','introspection.token.claim'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','String','jsonType.label'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','true','multivalued'),('89b9c21f-d0ec-43fb-95e0-23b371e8b0b1','foo','user.attribute'),('8a9701cf-3cdc-44e9-bf83-cb4fbd580e76','Role','attribute.name'),('8a9701cf-3cdc-44e9-bf83-cb4fbd580e76','Basic','attribute.nameformat'),('8a9701cf-3cdc-44e9-bf83-cb4fbd580e76','false','single'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','true','access.token.claim'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','locale','claim.name'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','true','id.token.claim'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','true','introspection.token.claim'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','String','jsonType.label'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','locale','user.attribute'),('8dfbce43-ef3e-4304-af91-6723d122bfa1','true','userinfo.token.claim'),('8e6497e9-7c34-4dbe-83db-65411e23c082','true','access.token.claim'),('8e6497e9-7c34-4dbe-83db-65411e23c082','true','introspection.token.claim'),('91976331-06d9-4a2c-8800-24ea45b50bd4','true','access.token.claim'),('91976331-06d9-4a2c-8800-24ea45b50bd4','preferred_username','claim.name'),('91976331-06d9-4a2c-8800-24ea45b50bd4','true','id.token.claim'),('91976331-06d9-4a2c-8800-24ea45b50bd4','true','introspection.token.claim'),('91976331-06d9-4a2c-8800-24ea45b50bd4','String','jsonType.label'),('91976331-06d9-4a2c-8800-24ea45b50bd4','username','user.attribute'),('91976331-06d9-4a2c-8800-24ea45b50bd4','true','userinfo.token.claim'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','true','access.token.claim'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','clientId','claim.name'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','true','id.token.claim'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','String','jsonType.label'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','clientId','user.session.note'),('92f1bce8-f60e-4836-9b70-55c7148f2f63','true','userinfo.token.claim'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','true','access.token.claim'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','locale','claim.name'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','true','id.token.claim'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','true','introspection.token.claim'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','String','jsonType.label'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','locale','user.attribute'),('95404b24-2e61-4f1c-a4df-f4b9ba7af502','true','userinfo.token.claim'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','true','access.token.claim'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','true','id.token.claim'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','true','introspection.token.claim'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','country','user.attribute.country'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','formatted','user.attribute.formatted'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','locality','user.attribute.locality'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','postal_code','user.attribute.postal_code'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','region','user.attribute.region'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','street','user.attribute.street'),('9560cd88-3abb-454c-be8d-a0aa3b427ff3','true','userinfo.token.claim'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','true','access.token.claim'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','updated_at','claim.name'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','true','id.token.claim'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','true','introspection.token.claim'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','long','jsonType.label'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','updatedAt','user.attribute'),('9b7b4cc3-27a1-4e3f-9cba-978d7d096103','true','userinfo.token.claim'),('9c94e823-265b-4e9a-88db-be1362792a09','true','access.token.claim'),('9c94e823-265b-4e9a-88db-be1362792a09','true','introspection.token.claim'),('9d7bff00-c268-4198-9195-ef8ab4dd8b97','Role','attribute.name'),('9d7bff00-c268-4198-9195-ef8ab4dd8b97','Basic','attribute.nameformat'),('9d7bff00-c268-4198-9195-ef8ab4dd8b97','false','single'),('9e13c4ee-3130-4b06-8945-30f51e8a154b','true','access.token.claim'),('9e13c4ee-3130-4b06-8945-30f51e8a154b','realm_access.roles','claim.name'),('9e13c4ee-3130-4b06-8945-30f51e8a154b','true','introspection.token.claim'),('9e13c4ee-3130-4b06-8945-30f51e8a154b','String','jsonType.label'),('9e13c4ee-3130-4b06-8945-30f51e8a154b','true','multivalued'),('9e13c4ee-3130-4b06-8945-30f51e8a154b','foo','user.attribute'),('9e609579-9c61-45a5-993a-2833c824c0cd','true','access.token.claim'),('9e609579-9c61-45a5-993a-2833c824c0cd','phone_number','claim.name'),('9e609579-9c61-45a5-993a-2833c824c0cd','true','id.token.claim'),('9e609579-9c61-45a5-993a-2833c824c0cd','true','introspection.token.claim'),('9e609579-9c61-45a5-993a-2833c824c0cd','String','jsonType.label'),('9e609579-9c61-45a5-993a-2833c824c0cd','phoneNumber','user.attribute'),('9e609579-9c61-45a5-993a-2833c824c0cd','true','userinfo.token.claim'),('a232ac51-ae67-4046-9889-e9f458922cf7','true','access.token.claim'),('a232ac51-ae67-4046-9889-e9f458922cf7','phone_number_verified','claim.name'),('a232ac51-ae67-4046-9889-e9f458922cf7','true','id.token.claim'),('a232ac51-ae67-4046-9889-e9f458922cf7','true','introspection.token.claim'),('a232ac51-ae67-4046-9889-e9f458922cf7','boolean','jsonType.label'),('a232ac51-ae67-4046-9889-e9f458922cf7','phoneNumberVerified','user.attribute'),('a232ac51-ae67-4046-9889-e9f458922cf7','true','userinfo.token.claim'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','true','access.token.claim'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','birthdate','claim.name'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','true','id.token.claim'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','true','introspection.token.claim'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','String','jsonType.label'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','birthdate','user.attribute'),('a25f8174-c89e-4bde-9f2d-68686bed54d2','true','userinfo.token.claim'),('a47bc3d2-8ef7-49c1-8ad4-e844ebe82fb1','true','access.token.claim'),('a47bc3d2-8ef7-49c1-8ad4-e844ebe82fb1','true','id.token.claim'),('a47bc3d2-8ef7-49c1-8ad4-e844ebe82fb1','true','introspection.token.claim'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','true','access.token.claim'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','middle_name','claim.name'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','true','id.token.claim'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','true','introspection.token.claim'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','String','jsonType.label'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','middleName','user.attribute'),('a4bcca78-0d83-43c7-986e-8d9d26f17ef1','true','userinfo.token.claim'),('a700eb43-da0a-4eb9-91be-f9e303a69f9e','true','access.token.claim'),('a700eb43-da0a-4eb9-91be-f9e303a69f9e','true','introspection.token.claim'),('a8f4a63b-61e0-4356-b450-f6739fd910df','true','access.token.claim'),('a8f4a63b-61e0-4356-b450-f6739fd910df','clientId','claim.name'),('a8f4a63b-61e0-4356-b450-f6739fd910df','true','id.token.claim'),('a8f4a63b-61e0-4356-b450-f6739fd910df','String','jsonType.label'),('a8f4a63b-61e0-4356-b450-f6739fd910df','clientId','user.session.note'),('a8f4a63b-61e0-4356-b450-f6739fd910df','true','userinfo.token.claim'),('a976cd81-9f05-4e16-a441-b3b45ac1223d','true','access.token.claim'),('a976cd81-9f05-4e16-a441-b3b45ac1223d','true','id.token.claim'),('a976cd81-9f05-4e16-a441-b3b45ac1223d','true','introspection.token.claim'),('a976cd81-9f05-4e16-a441-b3b45ac1223d','true','userinfo.token.claim'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','true','access.token.claim'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','locale','claim.name'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','true','id.token.claim'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','true','introspection.token.claim'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','String','jsonType.label'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','locale','user.attribute'),('a999fdd2-3605-4557-82b8-e3a6a5aa2d74','true','userinfo.token.claim'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','true','access.token.claim'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','picture','claim.name'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','true','id.token.claim'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','true','introspection.token.claim'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','String','jsonType.label'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','picture','user.attribute'),('aa692dc3-2915-455a-8fc4-c952a116ca2f','true','userinfo.token.claim'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','true','access.token.claim'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','zoneinfo','claim.name'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','true','id.token.claim'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','true','introspection.token.claim'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','String','jsonType.label'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','zoneinfo','user.attribute'),('b09baa86-f8cf-4379-9ed2-a0c95690a305','true','userinfo.token.claim'),('b1117036-62af-4e55-a0de-833196b4aa2a','true','access.token.claim'),('b1117036-62af-4e55-a0de-833196b4aa2a','locale','claim.name'),('b1117036-62af-4e55-a0de-833196b4aa2a','true','id.token.claim'),('b1117036-62af-4e55-a0de-833196b4aa2a','true','introspection.token.claim'),('b1117036-62af-4e55-a0de-833196b4aa2a','String','jsonType.label'),('b1117036-62af-4e55-a0de-833196b4aa2a','locale','user.attribute'),('b1117036-62af-4e55-a0de-833196b4aa2a','true','userinfo.token.claim'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','true','access.token.claim'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','true','id.token.claim'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','true','introspection.token.claim'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','country','user.attribute.country'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','formatted','user.attribute.formatted'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','locality','user.attribute.locality'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','postal_code','user.attribute.postal_code'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','region','user.attribute.region'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','street','user.attribute.street'),('b42d4959-fa80-4676-ad44-ad94bf8d86f9','true','userinfo.token.claim'),('b438c233-be1e-4464-9302-a8ff5bef802d','true','access.token.claim'),('b438c233-be1e-4464-9302-a8ff5bef802d','updated_at','claim.name'),('b438c233-be1e-4464-9302-a8ff5bef802d','true','id.token.claim'),('b438c233-be1e-4464-9302-a8ff5bef802d','true','introspection.token.claim'),('b438c233-be1e-4464-9302-a8ff5bef802d','long','jsonType.label'),('b438c233-be1e-4464-9302-a8ff5bef802d','updatedAt','user.attribute'),('b438c233-be1e-4464-9302-a8ff5bef802d','true','userinfo.token.claim'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','true','access.token.claim'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','website','claim.name'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','true','id.token.claim'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','true','introspection.token.claim'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','String','jsonType.label'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','website','user.attribute'),('b5bba6a0-c87e-4b4f-ae19-6db272cd3828','true','userinfo.token.claim'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','true','access.token.claim'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','phone_number','claim.name'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','true','id.token.claim'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','true','introspection.token.claim'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','String','jsonType.label'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','phoneNumber','user.attribute'),('b828b434-d565-4810-9ea4-ffa0a1dd8d91','true','userinfo.token.claim'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','true','access.token.claim'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','email_verified','claim.name'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','true','id.token.claim'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','true','introspection.token.claim'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','boolean','jsonType.label'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','emailVerified','user.attribute'),('bafaafa5-3ac0-4709-8226-be3cbd9a4eff','true','userinfo.token.claim'),('bb2719dd-6193-4895-b372-2a903b9f9936','true','access.token.claim'),('bb2719dd-6193-4895-b372-2a903b9f9936','upn','claim.name'),('bb2719dd-6193-4895-b372-2a903b9f9936','true','id.token.claim'),('bb2719dd-6193-4895-b372-2a903b9f9936','true','introspection.token.claim'),('bb2719dd-6193-4895-b372-2a903b9f9936','String','jsonType.label'),('bb2719dd-6193-4895-b372-2a903b9f9936','username','user.attribute'),('bb2719dd-6193-4895-b372-2a903b9f9936','true','userinfo.token.claim'),('bb79cb0d-510f-46cf-899f-c20326952e07','true','access.token.claim'),('bb79cb0d-510f-46cf-899f-c20326952e07','locale','claim.name'),('bb79cb0d-510f-46cf-899f-c20326952e07','true','id.token.claim'),('bb79cb0d-510f-46cf-899f-c20326952e07','true','introspection.token.claim'),('bb79cb0d-510f-46cf-899f-c20326952e07','String','jsonType.label'),('bb79cb0d-510f-46cf-899f-c20326952e07','locale','user.attribute'),('bb79cb0d-510f-46cf-899f-c20326952e07','true','userinfo.token.claim'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','true','access.token.claim'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','family_name','claim.name'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','true','id.token.claim'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','true','introspection.token.claim'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','String','jsonType.label'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','lastName','user.attribute'),('bbd4051f-8ce1-4e99-bed1-dc030c3cad43','true','userinfo.token.claim'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','true','access.token.claim'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','groups','claim.name'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','true','id.token.claim'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','true','introspection.token.claim'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','String','jsonType.label'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','true','multivalued'),('bd441d74-727c-4f94-9431-f0ecdfdf7c71','foo','user.attribute'),('be21d760-5160-4955-83ad-422c45e2bdb9','true','access.token.claim'),('be21d760-5160-4955-83ad-422c45e2bdb9','clientAddress','claim.name'),('be21d760-5160-4955-83ad-422c45e2bdb9','true','id.token.claim'),('be21d760-5160-4955-83ad-422c45e2bdb9','String','jsonType.label'),('be21d760-5160-4955-83ad-422c45e2bdb9','clientAddress','user.session.note'),('be21d760-5160-4955-83ad-422c45e2bdb9','true','userinfo.token.claim'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','true','access.token.claim'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','family_name','claim.name'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','true','id.token.claim'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','true','introspection.token.claim'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','String','jsonType.label'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','lastName','user.attribute'),('c010c7b8-6838-44e5-9b7d-b20a176ae2ea','true','userinfo.token.claim'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','true','access.token.claim'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','true','id.token.claim'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','true','introspection.token.claim'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','country','user.attribute.country'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','formatted','user.attribute.formatted'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','locality','user.attribute.locality'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','postal_code','user.attribute.postal_code'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','region','user.attribute.region'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','street','user.attribute.street'),('c06b29e5-40fe-463b-89cf-fd3910bbd3f2','true','userinfo.token.claim'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','true','access.token.claim'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','updated_at','claim.name'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','true','id.token.claim'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','true','introspection.token.claim'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','long','jsonType.label'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','updatedAt','user.attribute'),('c352154f-d339-40b4-9a88-0755b7e9ee0b','true','userinfo.token.claim'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','true','access.token.claim'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','profile','claim.name'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','true','id.token.claim'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','true','introspection.token.claim'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','String','jsonType.label'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','profile','user.attribute'),('c3bd5c4f-7075-46a1-8c44-95aa487c1d8e','true','userinfo.token.claim'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','true','access.token.claim'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','email_verified','claim.name'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','true','id.token.claim'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','true','introspection.token.claim'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','boolean','jsonType.label'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','emailVerified','user.attribute'),('c52a752b-2a96-4a19-827e-65d96c2d43f5','true','userinfo.token.claim'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','true','access.token.claim'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','upn','claim.name'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','true','id.token.claim'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','true','introspection.token.claim'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','String','jsonType.label'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','username','user.attribute'),('c676c282-c7f1-4b82-8e45-24c39e3430b6','true','userinfo.token.claim'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','true','access.token.claim'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','clientAddress','claim.name'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','true','id.token.claim'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','String','jsonType.label'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','clientAddress','user.session.note'),('c9c519ba-f7be-4ef8-97d8-57318825a6d4','true','userinfo.token.claim'),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','true','access.token.claim'),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','resource_access.${client_id}.roles','claim.name'),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','true','introspection.token.claim'),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','String','jsonType.label'),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','true','multivalued'),('cb38f8e3-00ae-4cdd-b20a-8ba5735485c2','foo','user.attribute'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','true','access.token.claim'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','website','claim.name'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','true','id.token.claim'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','true','introspection.token.claim'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','String','jsonType.label'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','website','user.attribute'),('cc1c5254-e6f0-41a0-bf04-e3bf35775944','true','userinfo.token.claim'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','true','access.token.claim'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','clientAddress','claim.name'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','true','id.token.claim'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','String','jsonType.label'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','clientAddress','user.session.note'),('cc8ccec5-0d2d-43f5-965f-020a79e36a66','true','userinfo.token.claim'),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','true','access.token.claim'),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','realm_access.roles','claim.name'),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','true','introspection.token.claim'),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','String','jsonType.label'),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','true','multivalued'),('cd294c27-7869-4f1e-97c6-47de37f4a8dd','foo','user.attribute'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','true','access.token.claim'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','resource_access.${client_id}.roles','claim.name'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','true','introspection.token.claim'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','String','jsonType.label'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','true','multivalued'),('d2422d39-b734-4fe8-8ed8-3aa4bba26aa9','foo','user.attribute'),('d2acd512-a5da-4572-b3e5-608a71b15942','true','access.token.claim'),('d2acd512-a5da-4572-b3e5-608a71b15942','given_name','claim.name'),('d2acd512-a5da-4572-b3e5-608a71b15942','true','id.token.claim'),('d2acd512-a5da-4572-b3e5-608a71b15942','true','introspection.token.claim'),('d2acd512-a5da-4572-b3e5-608a71b15942','String','jsonType.label'),('d2acd512-a5da-4572-b3e5-608a71b15942','firstName','user.attribute'),('d2acd512-a5da-4572-b3e5-608a71b15942','true','userinfo.token.claim'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','true','access.token.claim'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','clientHost','claim.name'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','true','id.token.claim'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','String','jsonType.label'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','clientHost','user.session.note'),('d3c2a81f-d09d-423c-bfad-e2e8524de87a','true','userinfo.token.claim'),('d3e8e107-fb8e-4122-b7b6-9b358894f469','true','access.token.claim'),('d3e8e107-fb8e-4122-b7b6-9b358894f469','true','introspection.token.claim'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','true','access.token.claim'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','zoneinfo','claim.name'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','true','id.token.claim'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','true','introspection.token.claim'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','String','jsonType.label'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','zoneinfo','user.attribute'),('d57c3370-1e62-48ab-b509-2cb88b35af5f','true','userinfo.token.claim'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','true','access.token.claim'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','clientAddress','claim.name'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','true','id.token.claim'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','String','jsonType.label'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','clientAddress','user.session.note'),('d7d5b155-c841-4d83-bfcf-1595ea5dbb8e','true','userinfo.token.claim'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','true','access.token.claim'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','upn','claim.name'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','true','id.token.claim'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','true','introspection.token.claim'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','String','jsonType.label'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','username','user.attribute'),('dbcd7bac-4f1f-47f6-8308-d7a756e9e444','true','userinfo.token.claim'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','true','access.token.claim'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','realm_access.roles','claim.name'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','true','introspection.token.claim'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','String','jsonType.label'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','true','multivalued'),('dc228cc9-3065-4cf0-9437-61cdf1f6ea91','foo','user.attribute'),('dc452077-e56b-4617-bf0b-c7c040c92015','true','access.token.claim'),('dc452077-e56b-4617-bf0b-c7c040c92015','locale','claim.name'),('dc452077-e56b-4617-bf0b-c7c040c92015','true','id.token.claim'),('dc452077-e56b-4617-bf0b-c7c040c92015','true','introspection.token.claim'),('dc452077-e56b-4617-bf0b-c7c040c92015','String','jsonType.label'),('dc452077-e56b-4617-bf0b-c7c040c92015','locale','user.attribute'),('dc452077-e56b-4617-bf0b-c7c040c92015','true','userinfo.token.claim'),('dc9e1334-dbec-44d0-968a-5907650c8c04','true','access.token.claim'),('dc9e1334-dbec-44d0-968a-5907650c8c04','website','claim.name'),('dc9e1334-dbec-44d0-968a-5907650c8c04','true','id.token.claim'),('dc9e1334-dbec-44d0-968a-5907650c8c04','true','introspection.token.claim'),('dc9e1334-dbec-44d0-968a-5907650c8c04','String','jsonType.label'),('dc9e1334-dbec-44d0-968a-5907650c8c04','website','user.attribute'),('dc9e1334-dbec-44d0-968a-5907650c8c04','true','userinfo.token.claim'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','true','access.token.claim'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','given_name','claim.name'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','true','id.token.claim'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','true','introspection.token.claim'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','String','jsonType.label'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','firstName','user.attribute'),('dcc39901-347c-41fa-8a9e-8c1f8dba3594','true','userinfo.token.claim'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','true','access.token.claim'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','preferred_username','claim.name'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','true','id.token.claim'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','true','introspection.token.claim'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','String','jsonType.label'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','username','user.attribute'),('dd84e5e0-fe7c-4340-b235-5224c8927cb1','true','userinfo.token.claim'),('df84b791-9e6f-40c0-b9d1-91944852cf73','true','access.token.claim'),('df84b791-9e6f-40c0-b9d1-91944852cf73','phone_number_verified','claim.name'),('df84b791-9e6f-40c0-b9d1-91944852cf73','true','id.token.claim'),('df84b791-9e6f-40c0-b9d1-91944852cf73','true','introspection.token.claim'),('df84b791-9e6f-40c0-b9d1-91944852cf73','boolean','jsonType.label'),('df84b791-9e6f-40c0-b9d1-91944852cf73','phoneNumberVerified','user.attribute'),('df84b791-9e6f-40c0-b9d1-91944852cf73','true','userinfo.token.claim'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','true','access.token.claim'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','updated_at','claim.name'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','true','id.token.claim'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','true','introspection.token.claim'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','long','jsonType.label'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','updatedAt','user.attribute'),('e1100f5b-4950-423c-b1bf-002c9d3e4a52','true','userinfo.token.claim'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','true','access.token.claim'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','family_name','claim.name'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','true','id.token.claim'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','true','introspection.token.claim'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','String','jsonType.label'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','lastName','user.attribute'),('e5c61f9e-10cd-4684-8d38-11c5ff18877c','true','userinfo.token.claim'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','true','access.token.claim'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','profile','claim.name'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','true','id.token.claim'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','true','introspection.token.claim'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','String','jsonType.label'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','profile','user.attribute'),('e5f48e8a-fec4-4a87-9dc9-dafe0af7f583','true','userinfo.token.claim'),('e60718a8-201a-4c0f-966a-459a4bf780a0','true','access.token.claim'),('e60718a8-201a-4c0f-966a-459a4bf780a0','birthdate','claim.name'),('e60718a8-201a-4c0f-966a-459a4bf780a0','true','id.token.claim'),('e60718a8-201a-4c0f-966a-459a4bf780a0','true','introspection.token.claim'),('e60718a8-201a-4c0f-966a-459a4bf780a0','String','jsonType.label'),('e60718a8-201a-4c0f-966a-459a4bf780a0','birthdate','user.attribute'),('e60718a8-201a-4c0f-966a-459a4bf780a0','true','userinfo.token.claim'),('e627377c-744f-4267-9fa6-4abe46180281','true','access.token.claim'),('e627377c-744f-4267-9fa6-4abe46180281','picture','claim.name'),('e627377c-744f-4267-9fa6-4abe46180281','true','id.token.claim'),('e627377c-744f-4267-9fa6-4abe46180281','true','introspection.token.claim'),('e627377c-744f-4267-9fa6-4abe46180281','String','jsonType.label'),('e627377c-744f-4267-9fa6-4abe46180281','picture','user.attribute'),('e627377c-744f-4267-9fa6-4abe46180281','true','userinfo.token.claim'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','true','access.token.claim'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','true','id.token.claim'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','true','introspection.token.claim'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','country','user.attribute.country'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','formatted','user.attribute.formatted'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','locality','user.attribute.locality'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','postal_code','user.attribute.postal_code'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','region','user.attribute.region'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','street','user.attribute.street'),('e75f593e-47d3-4fcf-b11b-50373b18ac5c','true','userinfo.token.claim'),('e973bf94-2924-4411-bff1-bd1c540c05c3','true','access.token.claim'),('e973bf94-2924-4411-bff1-bd1c540c05c3','gender','claim.name'),('e973bf94-2924-4411-bff1-bd1c540c05c3','true','id.token.claim'),('e973bf94-2924-4411-bff1-bd1c540c05c3','true','introspection.token.claim'),('e973bf94-2924-4411-bff1-bd1c540c05c3','String','jsonType.label'),('e973bf94-2924-4411-bff1-bd1c540c05c3','gender','user.attribute'),('e973bf94-2924-4411-bff1-bd1c540c05c3','true','userinfo.token.claim'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','true','access.token.claim'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','upn','claim.name'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','true','id.token.claim'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','true','introspection.token.claim'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','String','jsonType.label'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','username','user.attribute'),('e9ce96c4-4411-4f1e-b84c-941998bd9113','true','userinfo.token.claim'),('ece3e1ae-aa70-4190-a51c-56622924da76','true','access.token.claim'),('ece3e1ae-aa70-4190-a51c-56622924da76','gender','claim.name'),('ece3e1ae-aa70-4190-a51c-56622924da76','true','id.token.claim'),('ece3e1ae-aa70-4190-a51c-56622924da76','true','introspection.token.claim'),('ece3e1ae-aa70-4190-a51c-56622924da76','String','jsonType.label'),('ece3e1ae-aa70-4190-a51c-56622924da76','gender','user.attribute'),('ece3e1ae-aa70-4190-a51c-56622924da76','true','userinfo.token.claim'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','true','access.token.claim'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','nickname','claim.name'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','true','id.token.claim'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','true','introspection.token.claim'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','String','jsonType.label'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','nickname','user.attribute'),('edcdf946-bb95-49ea-9cdb-9eb392fff799','true','userinfo.token.claim'),('ee26768f-a80c-4094-9d0f-420502e43771','true','access.token.claim'),('ee26768f-a80c-4094-9d0f-420502e43771','resource_access.${client_id}.roles','claim.name'),('ee26768f-a80c-4094-9d0f-420502e43771','true','introspection.token.claim'),('ee26768f-a80c-4094-9d0f-420502e43771','String','jsonType.label'),('ee26768f-a80c-4094-9d0f-420502e43771','true','multivalued'),('ee26768f-a80c-4094-9d0f-420502e43771','foo','user.attribute'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','true','access.token.claim'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','given_name','claim.name'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','true','id.token.claim'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','true','introspection.token.claim'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','String','jsonType.label'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','firstName','user.attribute'),('ee8c9ba6-bba7-4937-975c-46a7b7cda385','true','userinfo.token.claim'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','true','access.token.claim'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','preferred_username','claim.name'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','true','id.token.claim'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','true','introspection.token.claim'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','String','jsonType.label'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','username','user.attribute'),('ef5aa454-4cf5-443d-8cc5-374bd9be5b37','true','userinfo.token.claim'),('efe7246c-7505-460b-860e-9ddf1f330915','true','access.token.claim'),('efe7246c-7505-460b-860e-9ddf1f330915','true','introspection.token.claim'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','true','access.token.claim'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','email_verified','claim.name'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','true','id.token.claim'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','true','introspection.token.claim'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','boolean','jsonType.label'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','emailVerified','user.attribute'),('f12e9c7e-8b4e-4c60-a7e5-36ed64ea6137','true','userinfo.token.claim'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','true','access.token.claim'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','phone_number','claim.name'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','true','id.token.claim'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','true','introspection.token.claim'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','String','jsonType.label'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','phoneNumber','user.attribute'),('f61fb0d0-fe9a-4dc3-a9fa-061166d5a8a9','true','userinfo.token.claim'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','true','access.token.claim'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','true','id.token.claim'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','true','introspection.token.claim'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','country','user.attribute.country'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','formatted','user.attribute.formatted'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','locality','user.attribute.locality'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','postal_code','user.attribute.postal_code'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','region','user.attribute.region'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','street','user.attribute.street'),('f6441ff4-3f77-410b-ae2c-18f9cad18e0e','true','userinfo.token.claim'),('f756d74c-e634-435d-bec5-d939a75a3b48','true','access.token.claim'),('f756d74c-e634-435d-bec5-d939a75a3b48','groups','claim.name'),('f756d74c-e634-435d-bec5-d939a75a3b48','true','id.token.claim'),('f756d74c-e634-435d-bec5-d939a75a3b48','true','introspection.token.claim'),('f756d74c-e634-435d-bec5-d939a75a3b48','String','jsonType.label'),('f756d74c-e634-435d-bec5-d939a75a3b48','true','multivalued'),('f756d74c-e634-435d-bec5-d939a75a3b48','foo','user.attribute'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','true','access.token.claim'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','upn','claim.name'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','true','id.token.claim'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','true','introspection.token.claim'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','String','jsonType.label'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','username','user.attribute'),('f999b218-82d0-4f5a-b055-bdfc7ce7fa43','true','userinfo.token.claim'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','true','access.token.claim'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','realm_access.roles','claim.name'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','true','introspection.token.claim'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','String','jsonType.label'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','true','multivalued'),('f9b917a3-1709-4cff-a5fa-d576d0d1d086','foo','user.attribute'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','true','access.token.claim'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','clientHost','claim.name'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','true','id.token.claim'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','String','jsonType.label'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','clientHost','user.session.note'),('fb2911a3-fbd5-4382-99dc-d8be4c7d7da5','true','userinfo.token.claim'),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','true','access.token.claim'),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','realm_access.roles','claim.name'),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','true','introspection.token.claim'),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','String','jsonType.label'),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','true','multivalued'),('fd2f1914-fb42-4e9d-a310-981d96faf6d1','foo','user.attribute'),('fd574581-4b34-4d94-9d0b-09fb32302f52','true','access.token.claim'),('fd574581-4b34-4d94-9d0b-09fb32302f52','gender','claim.name'),('fd574581-4b34-4d94-9d0b-09fb32302f52','true','id.token.claim'),('fd574581-4b34-4d94-9d0b-09fb32302f52','true','introspection.token.claim'),('fd574581-4b34-4d94-9d0b-09fb32302f52','String','jsonType.label'),('fd574581-4b34-4d94-9d0b-09fb32302f52','gender','user.attribute'),('fd574581-4b34-4d94-9d0b-09fb32302f52','true','userinfo.token.claim'),('fe4beae1-a9cb-4119-92ac-4f0a68c1b86d','true','access.token.claim'),('fe4beae1-a9cb-4119-92ac-4f0a68c1b86d','true','introspection.token.claim');
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
INSERT INTO `REALM` VALUES ('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'c21fffec-d02f-4fa9-82f0-74cff821210f',1800,0,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','e9d4364b-738b-4080-8a60-2c03d0504c3f','f76e2502-dff1-48e4-8d81-a43f64210581','dd700a04-17f8-4306-af86-b85a87c51bbd','8e455877-21b2-4730-b560-172b9baba4ba','cee66aea-66be-499c-8876-9464be74698a',31536000,0,900,1,0,'5380cb07-799b-43fa-b21d-ba81ff5c2563',0,0,0,0,'0f51bbfa-415a-4863-87a1-b06be1a690bd'),('org1',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org1',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'698b4d26-9739-4058-9f6f-dbb48760e84d',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','16fd18ec-9712-4f0f-997d-808514f50b73','3490e37c-9d60-4784-bcea-1c6c8d18a885','999f6ed1-a50b-4780-b9a4-55fd6fedd6b4','31466e69-5902-40df-b7e4-721d6b060082','363a15a0-ae62-40d8-a7fb-281f1ff539b4',31536000,0,900,1,0,'b6f0d16f-7e33-4b1a-9626-6ffcca3e9b1d',0,0,0,0,'2407e63f-ddcf-4b18-8a00-0c0d708f7946'),('org2',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org2',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'9100b580-7cc5-4819-b5db-68478d32b02b',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','f6fa39ba-f137-48ee-9832-fd22a168a949','b6f2c527-379c-47a8-a7da-021e196a9e33','dee3fe25-e0e9-40f8-b8ee-7148622b6a0e','c5285a80-6c39-4f3a-a65e-0f93bbbe1221','7f843b49-634b-4d4e-9e4b-fb9880180800',31536000,0,900,1,0,'2af8bb95-73fc-4058-b9a9-09e2960b8023',0,0,0,0,'275e9b4b-8d65-4352-bee5-3d356b0ebfd0'),('org3',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org3',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'82b39286-2ebc-4984-b743-1818079cfcfb',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','12cfb25e-08dc-4b99-9016-3b3f2c1eaedc','4a4a423f-86ae-4520-9555-78737544fc65','696d5711-7e80-444a-a4aa-b261f4b131f0','4b312405-6c0c-4061-a255-3c38701cd84d','15042d28-5e90-4fbb-9439-d4e667582b41',31536000,0,900,1,0,'0ffe13b7-c460-4c98-97e7-382f40530a3f',0,0,0,0,'6b5ab0c1-cce3-4e82-87bb-61e433da1510'),('org4',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org4',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'bf295504-f074-4199-aecf-916a0036bb14',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','96fb3380-69fb-48ba-be70-b4d757bf4aef','e381b1bf-2fd9-4035-b228-a7b739a66860','c39ba465-29f5-4672-9091-c779bf0dc6b0','bd1b3743-9b84-457d-9c22-5c1925b0af70','f132fbe3-1acd-4cd1-a4f9-996a542ef752',31536000,0,900,1,0,'794be6b6-30d4-4129-94ff-15a2b9969de7',0,0,0,0,'bd162901-bde6-4a17-80ef-a86027df3f71'),('org5',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org5',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'7bf0aaf4-3032-4719-97d9-d1dda3a9e6e3',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','7b80ebe6-063f-4170-a4c3-25bcf8fbeec6','2112da85-8282-4c2a-9785-1209c29a4e31','992bcdf2-3664-4eec-abee-f76230267647','94093a30-5091-48ae-b151-c024197ba27c','519c0f2a-8a38-4cf4-bb52-fb9f46af60a3',31536000,0,900,1,0,'0179b927-6278-4a37-a2e8-08755f3a01d8',0,0,0,0,'a9aa4f47-7622-4c93-9a57-308099f9c9c9');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('firstBrokerLoginFlowId','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','78af40d7-63d3-4d6e-b6ae-be85885a3368'),('firstBrokerLoginFlowId','org1','a637ea8a-a5da-4699-81d6-dd89276ccfa5'),('firstBrokerLoginFlowId','org2','057ce26b-eabe-49ce-905d-5407a7889c1b'),('firstBrokerLoginFlowId','org3','40ea4388-ce2a-4090-898a-377492d7d20b'),('firstBrokerLoginFlowId','org4','34560b9a-6c52-49c8-bbb4-72ffa7efb3e0'),('firstBrokerLoginFlowId','org5','8a89dbec-3239-4c6a-9641-2b3e5a921f05'),('maxDeltaTimeSeconds','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('maxTemporaryLockouts','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','0'),('maxTemporaryLockouts','org1','0'),('maxTemporaryLockouts','org2','0'),('maxTemporaryLockouts','org3','0'),('maxTemporaryLockouts','org4','0'),('maxTemporaryLockouts','org5','0'),('minimumQuickLoginWaitSeconds','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.referrerPolicy','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','no-referrer'),('_browser_header.referrerPolicy','org1','no-referrer'),('_browser_header.referrerPolicy','org2','no-referrer'),('_browser_header.referrerPolicy','org3','no-referrer'),('_browser_header.referrerPolicy','org4','no-referrer'),('_browser_header.referrerPolicy','org5','no-referrer'),('_browser_header.strictTransportSecurity','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4'),('password','password',1,1,'org1'),('password','password',1,1,'org2'),('password','password',1,1,'org3'),('password','password',1,1,'org4'),('password','password',1,1,'org5');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','en'),('fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','ja'),('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
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
INSERT INTO `REDIRECT_URIS` VALUES ('03391363-23ec-4e81-8f2b-a37e8f923e77','/admin/org3/console/*'),('0d673718-5842-4ef7-a3e3-5e5c56facd92','/admin/org2/console/*'),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','/admin/org1/console/*'),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','/realms/org1/account/*'),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','/admin/org4/console/*'),('2ef37c94-ce4f-406d-8142-c727f4ef54bb','/realms/org2/account/*'),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','/realms/master/account/*'),('5045af65-31c3-4ec4-a36f-fc3e75e160cc','/*'),('589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0','/*'),('606eedf0-fb2b-41a7-b156-8a346cc31c87','/*'),('626b586e-9d30-41b5-be22-20c228e0a428','/realms/org5/account/*'),('6336ceed-4c7e-4514-889a-3bc726cdc69f','/realms/master/account/*'),('785e2512-8d84-40ce-b101-d49a905d15a9','/*'),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','/realms/org3/account/*'),('8df8c152-6526-4e1f-8a17-cd30bf941934','/*'),('952801c4-e7b0-49ca-b4a9-efd20be3e568','/admin/org5/console/*'),('96e95eed-a817-401e-9354-4921aaacbf75','/realms/org4/account/*'),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','/realms/org4/account/*'),('aee12f00-5b28-4961-9ea7-eecee0afee52','/realms/org2/account/*'),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','/admin/master/console/*'),('ca40a363-4b6a-4c76-b703-8aebd6ca066f','/realms/org1/account/*'),('d938f59f-6ba5-47bf-859f-d83db98169c5','/realms/org5/account/*'),('f24468e1-6d34-4675-9efc-3dff1ea030a0','/*'),('fe98a408-4976-49d0-95e9-ed004e9878f8','/realms/org3/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('01dcf0aa-12a0-43ac-9801-6d10617aa904','delete_account','Delete Account','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,0,'delete_account',60),('0447286b-ad27-4ad1-8a85-7caf6a23f473','VERIFY_PROFILE','Verify Profile','org2',1,0,'VERIFY_PROFILE',90),('0b7ee908-b63e-4423-a7b0-e1a668fea4b7','update_user_locale','Update User Locale','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'update_user_locale',1000),('0e3fc977-a699-40f5-b645-e15cd7641e2a','webauthn-register-passwordless','Webauthn Register Passwordless','org5',1,0,'webauthn-register-passwordless',80),('0ef1ace8-f51c-43f8-8b2f-c09c5a5b9831','UPDATE_PASSWORD','Update Password','org4',1,0,'UPDATE_PASSWORD',30),('10442787-4341-4e72-a6f9-5a2a3e5efe6e','delete_credential','Delete Credential','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'delete_credential',100),('1487efb5-f61b-4b10-987f-c64bf99fc397','CONFIGURE_TOTP','Configure OTP','org2',1,0,'CONFIGURE_TOTP',10),('15cac96a-b103-45b1-9463-ca6e497cf16b','VERIFY_PROFILE','Verify Profile','org1',1,0,'VERIFY_PROFILE',90),('170e1669-45a0-4374-b0ab-05a9d7630b62','delete_account','Delete Account','org3',0,0,'delete_account',60),('1756513e-bc9e-42bf-949a-fcb89a91c9c3','webauthn-register','Webauthn Register','org2',1,0,'webauthn-register',70),('2757a391-57aa-409f-ab39-0ebfd90bc614','TERMS_AND_CONDITIONS','Terms and Conditions','org1',0,0,'TERMS_AND_CONDITIONS',20),('282358b1-e026-4ef0-9e90-dac3c0a57caf','webauthn-register','Webauthn Register','org5',1,0,'webauthn-register',70),('2cae0970-dc70-4090-8292-1798a02e4c11','VERIFY_EMAIL','Verify Email','org4',1,0,'VERIFY_EMAIL',50),('30e2fa11-1721-4d80-b0f2-99fef9e2bf70','update_user_locale','Update User Locale','org3',1,0,'update_user_locale',1000),('31c5645b-b9eb-405c-88af-24a813d6dd97','VERIFY_EMAIL','Verify Email','org3',1,0,'VERIFY_EMAIL',50),('32189db7-b514-4c0e-8af1-4c2d27a2afa0','update_user_locale','Update User Locale','org2',1,0,'update_user_locale',1000),('425c2564-6ea9-4e90-9765-ae481ff7ebcb','webauthn-register-passwordless','Webauthn Register Passwordless','org1',1,0,'webauthn-register-passwordless',80),('43a06dd7-cd3d-4b9e-87eb-41147a22e270','delete_credential','Delete Credential','org1',1,0,'delete_credential',100),('490e19a9-9695-4b97-855d-9ec5e8495913','delete_credential','Delete Credential','org2',1,0,'delete_credential',100),('4e0569d5-a024-46b2-86ab-254791c66150','delete_account','Delete Account','org2',0,0,'delete_account',60),('5b9339ed-edd6-4d27-9b8b-ac2b1ae939a8','CONFIGURE_TOTP','Configure OTP','org4',1,0,'CONFIGURE_TOTP',10),('5df9c57f-6025-4a1c-9b2a-f83339a3bdf2','webauthn-register-passwordless','Webauthn Register Passwordless','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'webauthn-register-passwordless',80),('5eb03865-d6ee-48e0-a1be-5010235bd9bc','VERIFY_EMAIL','Verify Email','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'VERIFY_EMAIL',50),('5f162ad2-b02a-42b2-968d-44b8625fe0ef','update_user_locale','Update User Locale','org5',1,0,'update_user_locale',1000),('64530745-aafb-4327-b47c-b92071b1c826','webauthn-register','Webauthn Register','org4',1,0,'webauthn-register',70),('67b9623a-2dd3-4909-8125-c17803338087','webauthn-register','Webauthn Register','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'webauthn-register',70),('68d67f97-9c2c-401c-a80f-a69099fed115','TERMS_AND_CONDITIONS','Terms and Conditions','org2',0,0,'TERMS_AND_CONDITIONS',20),('6b13376d-64b7-450c-98c5-3b75e432b8a4','VERIFY_PROFILE','Verify Profile','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'VERIFY_PROFILE',90),('6e379f16-d22f-4b03-a846-9db572defc83','VERIFY_EMAIL','Verify Email','org1',1,0,'VERIFY_EMAIL',50),('70bd7b5f-97bd-4661-8847-c56fc69305d1','UPDATE_PROFILE','Update Profile','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'UPDATE_PROFILE',40),('720f1e1d-ecf7-431b-aa7c-167d13b7510f','CONFIGURE_TOTP','Configure OTP','org5',1,0,'CONFIGURE_TOTP',10),('757a3dd2-9169-4aae-8411-675b69193349','update_user_locale','Update User Locale','org4',1,0,'update_user_locale',1000),('7887a80d-7a9c-4455-8228-06fe95d83bfb','webauthn-register-passwordless','Webauthn Register Passwordless','org3',1,0,'webauthn-register-passwordless',80),('78c0bc30-ce08-4297-9e0f-1aacabbb313c','UPDATE_PROFILE','Update Profile','org3',1,0,'UPDATE_PROFILE',40),('78fe6855-42f8-4978-8e85-a4dc5f6cd4a7','delete_account','Delete Account','org4',0,0,'delete_account',60),('7ae68d69-4c2c-492a-b41e-5d3f106d35d3','UPDATE_PASSWORD','Update Password','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'UPDATE_PASSWORD',30),('7c8f508d-54f2-4177-a1a2-8df0c85bfe36','delete_credential','Delete Credential','org3',1,0,'delete_credential',100),('7cab08f8-cf8e-4682-a23f-b0e91305ab1b','UPDATE_PASSWORD','Update Password','org1',1,0,'UPDATE_PASSWORD',30),('8731dff1-4762-4cd9-b797-1d3a1f12b9eb','webauthn-register-passwordless','Webauthn Register Passwordless','org4',1,0,'webauthn-register-passwordless',80),('87efe13b-d028-424d-9138-d583e4ffe59b','delete_credential','Delete Credential','org4',1,0,'delete_credential',100),('891747a9-d2d5-4f65-bd74-60dbc228673f','CONFIGURE_TOTP','Configure OTP','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',1,0,'CONFIGURE_TOTP',10),('8e2c934f-6bad-4ed4-b75c-bdfe80c8c7ef','UPDATE_PROFILE','Update Profile','org4',1,0,'UPDATE_PROFILE',40),('90728ad7-9e08-4eb4-a8a9-1053819504f0','UPDATE_PROFILE','Update Profile','org5',1,0,'UPDATE_PROFILE',40),('950abb9a-e5f3-490c-84eb-c87373c26f1d','VERIFY_PROFILE','Verify Profile','org4',1,0,'VERIFY_PROFILE',90),('95142567-0ce2-4bd2-87ce-da0959eb90fb','TERMS_AND_CONDITIONS','Terms and Conditions','org5',0,0,'TERMS_AND_CONDITIONS',20),('95bed5c3-2f58-4476-92c6-95d66660ba32','webauthn-register','Webauthn Register','org3',1,0,'webauthn-register',70),('a72dcdc4-9426-4463-a401-95f244be6656','delete_credential','Delete Credential','org5',1,0,'delete_credential',100),('ae1759f0-c137-4e56-b35f-ff355eeb929a','update_user_locale','Update User Locale','org1',1,0,'update_user_locale',1000),('b3874941-c3a6-48db-9969-829dbf8ee071','UPDATE_PASSWORD','Update Password','org2',1,0,'UPDATE_PASSWORD',30),('b90823aa-ba55-4939-bdf3-f8374e4c6cc4','CONFIGURE_TOTP','Configure OTP','org3',1,0,'CONFIGURE_TOTP',10),('bac55902-054b-4112-9c1b-952dabf9cd6b','VERIFY_EMAIL','Verify Email','org2',1,0,'VERIFY_EMAIL',50),('bdeace06-b6a1-46f4-b22a-1514772306e0','delete_account','Delete Account','org1',0,0,'delete_account',60),('bfa83d4f-622e-4b04-aa6a-cbc81e7d0b6f','CONFIGURE_TOTP','Configure OTP','org1',1,0,'CONFIGURE_TOTP',10),('c1cc1197-787a-46b8-85da-34b8dca3a0ba','TERMS_AND_CONDITIONS','Terms and Conditions','org3',0,0,'TERMS_AND_CONDITIONS',20),('c330be97-dbfa-4d98-9ef8-65c5a906b79f','VERIFY_EMAIL','Verify Email','org5',1,0,'VERIFY_EMAIL',50),('c604b3e2-5120-4464-beb8-24036a096cfc','VERIFY_PROFILE','Verify Profile','org3',1,0,'VERIFY_PROFILE',90),('c6b23c9d-9abf-469b-96f9-e06d51931213','webauthn-register','Webauthn Register','org1',1,0,'webauthn-register',70),('cac2ab4c-cfce-4093-83e8-e68a8bdcd371','UPDATE_PASSWORD','Update Password','org3',1,0,'UPDATE_PASSWORD',30),('cc994ba2-8c6a-4aff-aec2-3cb11f701dcc','webauthn-register-passwordless','Webauthn Register Passwordless','org2',1,0,'webauthn-register-passwordless',80),('d59c6cad-587c-4ed8-90a8-17a66537bec6','VERIFY_PROFILE','Verify Profile','org5',1,0,'VERIFY_PROFILE',90),('e0901fa1-f17a-415e-9edd-7e5df30176bf','UPDATE_PASSWORD','Update Password','org5',1,0,'UPDATE_PASSWORD',30),('ec851ea9-7b90-48c5-b8cd-378b21717e81','TERMS_AND_CONDITIONS','Terms and Conditions','fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4',0,0,'TERMS_AND_CONDITIONS',20),('ecdff222-afbb-4a16-8d75-ebb3610995ef','UPDATE_PROFILE','Update Profile','org2',1,0,'UPDATE_PROFILE',40),('ef2040af-a5a0-4758-b2e1-31381efd8d1e','delete_account','Delete Account','org5',0,0,'delete_account',60),('f333f26f-ad31-4b34-8437-c429351b401f','UPDATE_PROFILE','Update Profile','org1',1,0,'UPDATE_PROFILE',40),('f826977f-2e42-41bd-af8c-c77f5b783b57','TERMS_AND_CONDITIONS','Terms and Conditions','org4',0,0,'TERMS_AND_CONDITIONS',20);
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('068fe816-2149-4938-b151-0cd287a3f070','ee50e4c1-2eed-47a2-b055-e44ff7ffe383','kind','workspace'),('073f2196-24aa-4efe-9356-d2c4d266fd91','d9058ed3-3794-450e-a7c2-f1ea8303640b','kind','workspace'),('13b82665-ad39-4797-8410-e20f5386532b','dc0b98c3-93cd-4f6b-b886-bdb21c62cdd1','kind','workspace'),('15990173-2a61-4c6f-ae92-99cac3a0b7d6','5ba073b2-af55-4d66-895b-b5b12a74fbbc','kind','workspace'),('169a8346-5b9a-4470-8aee-71da8e2f1764','588f4bc1-eac7-4c9a-aa08-32de039b8ad1','kind','organization'),('18f172a8-53b5-49ed-8210-1b30a51a000c','ffa00323-300c-4610-bda9-8897890ebb15','kind','workspace'),('1933c6ea-b517-4ba8-8718-afd0ab5acc8f','80dbe13f-3fe7-4000-9c24-268214bde071','kind','workspace'),('1fa170a2-9b1f-4387-bb8d-afe2d8f49bb6','16227d16-7798-4a53-bd21-63fb81018517','kind','workspace'),('28716367-01c8-454f-910a-379445a3892a','b76e5168-ef37-43ea-800e-8e5d85434b3b','kind','workspace'),('2ae17a5f-2c25-4b0f-bf66-06525eb754d5','e8f32d23-a4b1-41b7-b7ce-5f63fcb74551','kind','workspace'),('2e7d01fe-8e50-4f21-b83d-2a0ac70f6307','cffdce9d-afaa-4386-9722-fc82ce7437bd','kind','workspace'),('30d9dfa3-ecb8-4d66-a87a-8d273bdf6061','87e6384c-1244-49f3-9274-213bd5268419','kind','workspace'),('319a09a6-406e-4dd3-bfd9-81d8c2871ef5','ab7858a9-e834-48eb-ae63-a5ec518c359a','kind','workspace'),('32a31f00-d18e-4b07-9130-61d2073893c6','b91323b9-87c4-4e27-a06f-9341efbe94f6','kind','organization'),('357adc3f-4149-4431-8e90-e764c346fc17','ec4a5352-5308-40e4-a295-10557f49759f','kind','workspace'),('3e7d595b-6d64-43f8-a39f-643ef6aaffca','42d7a016-4447-416c-b3ea-5cd862bbb9cb','kind','workspace'),('44090c92-c451-47b6-9f7d-fa24e37d5b42','960e73d8-2037-4d66-a618-8a8e1587dc38','kind','workspace'),('48874265-b519-482a-b14c-16142fdc00b8','0217db78-b8ad-41d6-bf04-cb03353892b1','kind','workspace'),('49d1726d-f86a-4b2a-999c-6780c3d4dbd9','76c81524-4e6a-4cf7-a291-71dbbbac7a5f','kind','workspace'),('49d4a9fe-e258-4389-9584-e0d1f0596541','dc81b4b0-7763-4765-ad12-e769ff5d87bc','kind','workspace'),('4db9b488-6cd1-448f-8397-2c5f38c42c2c','c60adee9-f703-47ef-a276-ca632a8706c7','kind','workspace'),('50572f2d-5546-442a-9206-2902db5eaa6b','079f4a28-7f14-4979-a11d-d32caed1939c','kind','workspace'),('53e32625-b9a6-4b86-9743-5cc4486ba673','7efa9027-46e0-4a69-b539-a68b02ae96ad','kind','organization'),('558b7d08-2710-4deb-9c48-c9c7279686b4','f7ebbe97-bbc7-44b2-af49-e81b01883987','kind','workspace'),('599c4367-ce23-40e7-aef0-031e648bdebf','cb68ec1f-61bf-422d-a212-1ea06be6266c','kind','workspace'),('5fd8b2e8-1bca-48d4-96ab-0e9c6328a18e','5e1a9a4b-7214-45fe-a543-fcd12d32cb14','kind','workspace'),('68f43e2d-74e3-4c87-9337-a6ed4571cdcd','9f40c77b-2392-4d76-a1f9-71b5f65528da','kind','organization'),('7aa32836-e265-4c73-8e22-5ea8ecefb799','92363e91-b01b-447f-a279-44212ac41217','kind','organization'),('7c74910d-18c2-4639-87f2-c92b8f5accae','b39a7048-e601-4843-9fd5-bc4e47e73cca','kind','workspace'),('8461be2c-3e84-4d19-9e9d-f902b2726a17','ea67d011-9d76-4985-889d-2fa712eb8608','kind','workspace'),('8de7b6e6-3567-42ee-b9f2-b1f85ec0ad0c','513732b9-c4a8-46f7-a12c-3aba016b4439','kind','workspace'),('9b90d339-a8ed-44c7-b535-8e099741f656','cc1496d3-bc37-4ec1-8349-0f3e84483114','kind','organization'),('9d9aad2b-9812-426e-ad4d-161cb3088d4f','9f3cbe3d-9556-43eb-b92c-661fd2e3720b','kind','organization'),('a10bda9a-82a1-4864-8074-e5c9506c895d','6d6ddcb6-ef5b-40e2-941b-07c613415001','kind','workspace'),('a1d42fa7-4b91-447d-8dfe-50fd1883a602','f99b5024-20cb-4566-ba80-6824c4e488f3','kind','workspace'),('a262949b-ae0f-4471-b4c2-f3743bad25b6','bf9ddb09-3405-4d1a-bc92-8d430c46fc9e','kind','organization'),('a48e40d0-c4f8-4ed3-828c-437dd6d86c04','c5b5b957-ef31-4927-ab43-8ca263399fb9','kind','workspace'),('a834ab29-4906-4e87-9e39-555dfb7aa86c','67f7a024-17ec-4ff8-b559-7e3ed82912b7','kind','workspace'),('a8801f4f-11bf-4b67-af22-228c3990a9bc','4f4a8e36-50b3-488e-bc4e-3953eaeacf11','kind','workspace'),('afff13f5-cdc1-4209-9706-d4af5acb8a40','ca2346e1-4d22-4df7-8689-15b535c9b94d','kind','organization'),('b3d21db3-3d29-456b-a6e6-8c7f977058f0','f347c681-014e-4b80-8bb0-50d33c5ea7d1','kind','organization'),('b56fd0a6-5a7b-41c6-8327-7a76e6d6de25','597e6ba3-3a83-4ca9-9683-837d4caf13eb','kind','workspace'),('b7b42510-c0b6-4e11-83d9-a96f84b92ccf','2c48f16d-3cc0-44a3-8006-f719771d6790','kind','organization'),('ba520848-ff3d-496e-a4df-abca6b2026e4','cabefbfb-5c53-4697-a0aa-b5f0c6161a75','kind','organization'),('bab5c9e7-3cf8-438b-84f8-24d270ab3590','20adb9f5-99a0-4207-b6fd-5fce229e29d2','kind','workspace'),('c1626e0c-dfa3-4e6a-b4cc-8c6a06552bb0','7025d5e8-e1c5-4742-ad11-109143e671dc','kind','workspace'),('c61091bc-b973-4f28-b553-8f2c27afb5a4','5a7e9b58-99e8-49bf-a2e5-35fc705edb55','kind','organization'),('c6bb892d-5b25-4a5e-8156-60091c331a2f','6cf94e77-9a10-4537-8e5b-e5edbda2c9f3','kind','workspace'),('cc31a212-4026-47f2-a6a5-75ed389def05','4f8b2567-fea0-4b4c-8253-fc86ff353cc6','kind','workspace'),('ce943145-a01a-4e3c-9a26-d09a8e32a4f4','ac9c07d2-a8f7-4958-83e9-a60dabe11753','kind','workspace'),('d3bce4d5-4dc6-403b-b547-2e83bdb89119','9b1ff150-c639-431b-9d86-52331ef5bac1','kind','workspace'),('da8ba72c-f95a-4f58-8ed0-961aa87ccc8a','738b5641-ae45-4f5b-a375-16e1754bebbb','kind','workspace'),('dc8a77e0-0e53-4c8e-a4b7-46c46925d3c3','f3808813-cd3c-4db9-b31a-e0ec787d3357','kind','organization'),('e392f0e1-3a8d-47d7-b402-936e0267f77d','daf0efcf-3231-4401-96a5-058e925c5188','kind','workspace'),('ebb8e3bc-f30c-4149-838e-4f80b7939c39','b7450f1f-6c7a-49e2-a716-dabd6bd647ca','kind','workspace'),('f062efad-304c-4a44-b5eb-e04905521605','be2639b2-6414-4af4-98cd-ac5f3fba840b','kind','workspace'),('f60ed02c-0cbe-4df5-b47f-6e91b1fe7572','646bca56-a533-4fb8-8ced-5a9814058dfd','kind','workspace'),('f9e93c08-8b75-4979-9c5d-7b60458f899f','345559e8-e19a-4256-b1cf-9d3409247e8b','kind','organization'),('fa4adc66-697c-4f34-bb8b-c62704017412','6dcc777d-6fec-4d76-a10b-86ad7c3cf935','kind','workspace'),('feefdb6a-a71d-4329-8732-696e33fd31d8','e890e389-b5e9-4eb4-96a4-948c5e24611e','kind','workspace');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','0d51f47b-2951-4b14-8056-809844c902e1'),('1dc1c4ca-9037-4c70-9d63-d3ee73d8ea95','b0ac12d5-a71b-4efb-b37d-ad295ccd4ecd'),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','6e976487-0bac-4d7a-ad6a-e3153b003bcb'),('358ff890-a29c-4e79-8ab0-1cc3fded1ce6','fdc04aa4-67c8-4961-a88f-1f78ac184f95'),('626b586e-9d30-41b5-be22-20c228e0a428','2997eaad-9252-460b-9a73-e2ebbaa16ff8'),('626b586e-9d30-41b5-be22-20c228e0a428','7468af7e-c9ec-40f2-9202-d1209c540868'),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','000f4759-15bc-4398-894b-b9492c7d88d0'),('8acf8481-f3d4-49c8-918b-36ea33bb68bb','2912200a-4030-4e2d-8d9f-e3b200a805f1'),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','3cb69a83-28c3-4bdd-a581-c042f5cb14d8'),('ab8b13f5-6a60-4e6d-89dc-5d942ee5b3a6','62b5853b-adbc-4b59-ba52-187d0ee30804'),('aee12f00-5b28-4961-9ea7-eecee0afee52','82ad704d-7f13-47fb-9f2d-c3ded568bb66'),('aee12f00-5b28-4961-9ea7-eecee0afee52','dc104bca-aadf-4df6-819f-515c4be379a5');
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
INSERT INTO `USER_ENTITY` VALUES ('20ffde0d-3644-4204-acb3-03236a2dcc85','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org5','admin',1713510110020,NULL,0),('44ab40a5-737c-439c-9671-a2d86765204e',NULL,'2c5fe79e-a46f-42c8-a47d-572208c95bc7',0,1,NULL,NULL,NULL,'org2','service-account-org2-workspaces',1713510034308,'81ee8f29-012c-49e5-a7f9-bf6080d53320',0),('463af8ca-4548-4a89-a961-106e86a25c48',NULL,'890dc1d9-47b7-4fc6-8f15-44ddb0b92d8f',0,1,NULL,NULL,NULL,'org1','service-account-org1-workspaces',1713510004861,'34098bc0-970f-4e77-a7a7-cb7b504847bb',0),('69d2a0c0-ffa2-4511-8b31-4a6353e27d93','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org2','admin',1713510035802,NULL,0),('6b690765-50eb-49a2-84cd-415784e75d4d',NULL,'1bf141ea-597e-46dd-8588-f2026518bb3e',0,1,NULL,NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','service-account-_platform',1713509703907,'5201f3dc-03da-4378-bbca-43dbcb169951',0),('86260c5c-8b76-4350-b357-10bd73410ef1',NULL,'d1c23ddb-d992-4b79-adfa-22856396b6da',0,1,NULL,NULL,NULL,'org5','service-account-org5-workspaces',1713510108969,'6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5',0),('ae654cb4-02e0-41b2-8684-8e25c6f90d8f','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org4','admin',1713510086406,NULL,0),('bdd29563-df03-42ff-bd2f-a6d81b11252d','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org1','admin',1713510006835,NULL,0),('cc82d117-102d-44f2-95fb-8a081e6876de',NULL,'f5fbe0c0-a20f-4434-8ede-ac7da672bf4a',0,1,NULL,NULL,NULL,'fb32fd8d-a6bb-4a3f-a291-8e261fdf1dd4','admin',1713509696977,NULL,0),('ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13',NULL,'f63a6fc4-d9fa-4310-9565-58085f486c32',0,1,NULL,NULL,NULL,'org4','service-account-org4-workspaces',1713510085119,'3214c83b-b319-46db-83e0-a3afa51f5a5e',0),('e284f343-b718-4969-a25e-4ab595d3654c',NULL,'08a6cb61-7031-4be7-bfed-dd4ed0fcccc1',0,1,NULL,NULL,NULL,'org3','service-account-org3-workspaces',1713510059908,'1c184606-8ae2-4680-a1a1-7c84b476e267',0),('e99923b9-19e7-417e-bd97-a0bd3f8aaede','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org3','admin',1713510061229,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('0f51bbfa-415a-4863-87a1-b06be1a690bd','6b690765-50eb-49a2-84cd-415784e75d4d'),('0f51bbfa-415a-4863-87a1-b06be1a690bd','cc82d117-102d-44f2-95fb-8a081e6876de'),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','463af8ca-4548-4a89-a961-106e86a25c48'),('2407e63f-ddcf-4b18-8a00-0c0d708f7946','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('2440749c-4373-4be9-88d2-386ccafcfb5f','86260c5c-8b76-4350-b357-10bd73410ef1'),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','44ab40a5-737c-439c-9671-a2d86765204e'),('275e9b4b-8d65-4352-bee5-3d356b0ebfd0','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('373b711f-2169-4c5f-9491-cde0d816297e','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13'),('5ba073b2-af55-4d66-895b-b5b12a74fbbc','20ffde0d-3644-4204-acb3-03236a2dcc85'),('646bca56-a533-4fb8-8ced-5a9814058dfd','20ffde0d-3644-4204-acb3-03236a2dcc85'),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','e284f343-b718-4969-a25e-4ab595d3654c'),('6b5ab0c1-cce3-4e82-87bb-61e433da1510','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('6dcc777d-6fec-4d76-a10b-86ad7c3cf935','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('72014a1c-e652-462e-8189-563b85521ad2','44ab40a5-737c-439c-9671-a2d86765204e'),('76c81524-4e6a-4cf7-a291-71dbbbac7a5f','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('7efa9027-46e0-4a69-b539-a68b02ae96ad','20ffde0d-3644-4204-acb3-03236a2dcc85'),('80dbe13f-3fe7-4000-9c24-268214bde071','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('87e6384c-1244-49f3-9274-213bd5268419','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('960e73d8-2037-4d66-a618-8a8e1587dc38','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('9f40c77b-2392-4d76-a1f9-71b5f65528da','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','20ffde0d-3644-4204-acb3-03236a2dcc85'),('a9aa4f47-7622-4c93-9a57-308099f9c9c9','86260c5c-8b76-4350-b357-10bd73410ef1'),('ac9c07d2-a8f7-4958-83e9-a60dabe11753','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('b7450f1f-6c7a-49e2-a716-dabd6bd647ca','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('b76e5168-ef37-43ea-800e-8e5d85434b3b','20ffde0d-3644-4204-acb3-03236a2dcc85'),('b85f2a9c-c106-42c2-832c-4397cae37c4b','e284f343-b718-4969-a25e-4ab595d3654c'),('b91323b9-87c4-4e27-a06f-9341efbe94f6','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('bd162901-bde6-4a17-80ef-a86027df3f71','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('bd162901-bde6-4a17-80ef-a86027df3f71','ccbec9b6-efa8-47c7-8dd0-f6a2f2160f13'),('c60adee9-f703-47ef-a276-ca632a8706c7','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('cabefbfb-5c53-4697-a0aa-b5f0c6161a75','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('cb68ec1f-61bf-422d-a212-1ea06be6266c','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','6b690765-50eb-49a2-84cd-415784e75d4d'),('d40bbeaa-e92e-48e6-8d82-1814027f4012','cc82d117-102d-44f2-95fb-8a081e6876de'),('da0db051-d097-402d-8d57-f02d6b84dc51','463af8ca-4548-4a89-a961-106e86a25c48'),('ea67d011-9d76-4985-889d-2fa712eb8608','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('ec4a5352-5308-40e4-a295-10557f49759f','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('f3808813-cd3c-4db9-b31a-e0ec787d3357','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('f7ebbe97-bbc7-44b2-af49-e81b01883987','69d2a0c0-ffa2-4511-8b31-4a6353e27d93');
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
INSERT INTO `WEB_ORIGINS` VALUES ('03391363-23ec-4e81-8f2b-a37e8f923e77','+'),('0d673718-5842-4ef7-a3e3-5e5c56facd92','+'),('1c3002be-ee90-4dc8-8e8e-68b5944c7165','+'),('1fedc4a8-7335-4d5f-96a5-c268f20047b7','+'),('952801c4-e7b0-49ca-b4a9-efd20be3e568','+'),('bc4e7f41-cede-4705-89f1-fcbeeb609eb7','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-04-19 15:55:11','dummy','2024-04-19 15:55:11','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-04-19 15:55:04.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-04-19 15:55:04.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-04-19 16:00:01','unittest-user01','2024-04-19 16:00:11','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-04-19 16:00:32','unittest-user01','2024-04-19 16:00:37','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-04-19 16:00:58','unittest-user01','2024-04-19 16:01:02','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-04-19 16:01:23','unittest-user01','2024-04-19 16:01:27','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-04-19 16:01:47','unittest-user01','2024-04-19 16:01:51','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_YNES2VQR2I2YUGJF1D4F','PF_ORG_YNES2VQR2I2YUGJF1D4F','wJ7+iiS0TAnEKpqKlMG8/xbc0iTWULL8y09m96Teh/I5+95qJt6Aa8bdncUsyEiu','2024-04-19 16:00:07','unittest-user01','2024-04-19 16:02:11','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_800ARPU336CKKPU7M7YN','PF_ORG_800ARPU336CKKPU7M7YN','G02JqS4dwHsL6rh26t5zMyV/vl3+lo+azBkna2sFTK3vekx3UyrQAunAa0tdgMCL','2024-04-19 16:00:36','unittest-user01','2024-04-19 16:02:11','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_YAR5QY25XD6BXMJ5SFDG','PF_ORG_YAR5QY25XD6BXMJ5SFDG','97UTqdYaqZsLc1ioj6nMPuOGibGkufPBph6bmNMbd7hNWdt8Mxr97CI8HyF7QkRG','2024-04-19 16:01:02','unittest-user01','2024-04-19 16:02:11','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_2GAO78AP3Q1YABEMAVJZ','PF_ORG_2GAO78AP3Q1YABEMAVJZ','rznTqMvMLnlqj6ZT06zFdeT2hckMQAMG7yn7Ea/cu6huqRWDqNjj88QvLJPs5Tu9','2024-04-19 16:01:27','unittest-user01','2024-04-19 16:02:11','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_IK3PUTG4FDW5XX5UPSAQ','PF_ORG_IK3PUTG4FDW5XX5UPSAQ','EdWjuFFq31D3kc4OXeORNXb/vxtZB8rUg4AHq4mCaR3HZJIC7SvB1YdAPkIcT/g5','2024-04-19 16:01:50','unittest-user01','2024-04-19 16:02:11','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-04-19 15:55:02','system','2024-04-19 15:55:02','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-04-19 15:55:11','dummy','2024-04-19 15:55:11','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-04-19 15:55:02','system','2024-04-19 15:55:05','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-04-19 15:55:02','system','2024-04-19 15:55:05','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-04-19 15:55:02','system','2024-04-19 15:55:05','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-04-19 15:55:11','dummy','2024-04-19 15:55:11','dummy'),('_default','platform.roles',1000,'2024-04-19 15:55:02','system','2024-04-19 15:55:02','system'),('_default','platform.users',10000,'2024-04-19 15:55:02','system','2024-04-19 15:55:02','system'),('_default','platform.workspaces',100,'2024-04-19 15:55:02','system','2024-04-19 15:55:02','system');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-04-19 15:55:02','1.8.1','2024-04-19 15:55:02','1.8.1'),(2,'1.3.0','SUCCEED',NULL,'2024-04-19 15:55:04','1.8.1','2024-04-19 15:55:04','1.8.1'),(3,'1.5.0','START',NULL,'2024-04-19 15:55:04','1.8.1','2024-04-19 15:55:04','1.8.1'),(4,'1.5.0','SUCCEED',NULL,'2024-04-19 15:55:04','1.8.1','2024-04-19 15:55:04','1.8.1'),(5,'1.5.2','START',NULL,'2024-04-19 15:55:04','1.8.1','2024-04-19 15:55:04','1.8.1'),(6,'1.5.2','SUCCEED',NULL,'2024-04-19 15:55:04','1.8.1','2024-04-19 15:55:04','1.8.1'),(7,'1.6.0','START',NULL,'2024-04-19 15:55:04','1.8.1','2024-04-19 15:55:04','1.8.1'),(8,'1.6.0','SUCCEED',NULL,'2024-04-19 15:55:05','1.8.1','2024-04-19 15:55:05','1.8.1'),(9,'1.7.0','START',NULL,'2024-04-19 15:55:05','1.8.1','2024-04-19 15:55:05','1.8.1'),(10,'1.7.0','SUCCEED',NULL,'2024-04-19 15:55:05','1.8.1','2024-04-19 15:55:05','1.8.1'),(11,'1.8.0','START',NULL,'2024-04-19 15:55:05','1.8.1','2024-04-19 15:55:05','1.8.1'),(12,'1.8.0','SUCCEED',NULL,'2024-04-19 15:55:05','1.8.1','2024-04-19 15:55:05','1.8.1'),(13,'1.8.1','START',NULL,'2024-04-19 15:55:05','1.8.1','2024-04-19 15:55:05','1.8.1'),(14,'1.8.1','SUCCEED',NULL,'2024-04-19 15:55:06','1.8.1','2024-04-19 15:55:06','1.8.1');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"5201f3dc-03da-4378-bbca-43dbcb169951\", \"TOKEN_CHECK_CLIENT_SECRET\": \"ueOj2yaOc3vtZZoIUKJWpkOuexhSjdND\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"4eb2732c-de36-4cf3-b53e-be0cc476fbb9\"}','2024-04-19 15:55:04','system','2024-04-19 15:55:04','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.8.2','2024-04-19 15:54:03','system','2024-04-19 15:55:06','1.8.2');
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
-- Current Database: `PF_ORG_YNES2VQR2I2YUGJF1D4F`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_YNES2VQR2I2YUGJF1D4F` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_YNES2VQR2I2YUGJF1D4F`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"8df8c152-6526-4e1f-8a17-cd30bf941934\", \"USER_TOKEN_CLIENT_SECRET\": \"PDZQQ9fWZzVzXQr9ThKyUAjSqh5gizJ0\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"34098bc0-970f-4e77-a7a7-cb7b504847bb\", \"INTERNAL_API_CLIENT_SECRET\": \"6yeDnRG3J8F6o83mqbtBOvxYGomZEE35\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"355fa74c-6a60-4119-a038-c1100c2a2c91\", \"TOKEN_CHECK_CLIENT_SECRET\": \"lqZqzBlpziCswbmlluyfINICOTY5OV0M\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"304c3eb1-05ff-4f53-82ce-85ea09021445\"}','2024-04-19 16:00:07','unittest-user01','2024-04-19 16:00:07','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:00:11','bdd29563-df03-42ff-bd2f-a6d81b11252d','2024-04-19 16:00:11','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:00:18','bdd29563-df03-42ff-bd2f-a6d81b11252d','2024-04-19 16:00:18','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:00:25','bdd29563-df03-42ff-bd2f-a6d81b11252d','2024-04-19 16:00:25','bdd29563-df03-42ff-bd2f-a6d81b11252d');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_R2919E58AIKEN3FFZIYJ','PF_WS_R2919E58AIKEN3FFZIYJ','aYykKvF+QMW0vEAmOseQ0R0xovJWOhdefmtiB/EXSmYEEXx3x25e0OF52h0/sUke','2024-04-19 16:00:12','bdd29563-df03-42ff-bd2f-a6d81b11252d','2024-04-19 16:02:11','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('org1','ws2','unittest-platform-db',3306,'PF_WS_HN1RWU9EBUDBWEHLL8XS','PF_WS_HN1RWU9EBUDBWEHLL8XS','eret6GPvFd9tm59dNZicDj0AWDBovv1jj8FHJWoOJQdNsj6adFinjh4zNVTstBpp','2024-04-19 16:00:19','bdd29563-df03-42ff-bd2f-a6d81b11252d','2024-04-19 16:02:11','bdd29563-df03-42ff-bd2f-a6d81b11252d'),('org1','ws3','unittest-platform-db',3306,'PF_WS_4ZEWFJHAMR5DZBKLACUS','PF_WS_4ZEWFJHAMR5DZBKLACUS','NdZPaR+a6c/8q3SfTedk/HYaEuXY0mKZCQ7OEeqmPXS0qn/nvB164MkKjQYsqFUu','2024-04-19 16:00:25','bdd29563-df03-42ff-bd2f-a6d81b11252d','2024-04-19 16:02:11','bdd29563-df03-42ff-bd2f-a6d81b11252d');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_R2919E58AIKEN3FFZIYJ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_R2919E58AIKEN3FFZIYJ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_R2919E58AIKEN3FFZIYJ`;

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
-- Current Database: `PF_WS_HN1RWU9EBUDBWEHLL8XS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_HN1RWU9EBUDBWEHLL8XS` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_HN1RWU9EBUDBWEHLL8XS`;

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
-- Current Database: `PF_WS_4ZEWFJHAMR5DZBKLACUS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_4ZEWFJHAMR5DZBKLACUS` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_4ZEWFJHAMR5DZBKLACUS`;

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
-- Current Database: `PF_ORG_800ARPU336CKKPU7M7YN`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_800ARPU336CKKPU7M7YN` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_800ARPU336CKKPU7M7YN`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"5045af65-31c3-4ec4-a36f-fc3e75e160cc\", \"USER_TOKEN_CLIENT_SECRET\": \"KS84Okl9Hn0P2NYn8BLyeoFnVGskWejv\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"81ee8f29-012c-49e5-a7f9-bf6080d53320\", \"INTERNAL_API_CLIENT_SECRET\": \"WooBjjKuuScmqLmoYeVCuCxGgdabyMX6\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"8425a10b-0c18-454f-8e31-52f401cc4fa3\", \"TOKEN_CHECK_CLIENT_SECRET\": \"uIZBrWScSEG2WOFTQ5hwUnfvHAWthhdm\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"eb10fd90-d139-4b9c-8747-dc7f538f9570\"}','2024-04-19 16:00:36','unittest-user01','2024-04-19 16:00:36','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:00:37','69d2a0c0-ffa2-4511-8b31-4a6353e27d93','2024-04-19 16:00:37','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:00:44','69d2a0c0-ffa2-4511-8b31-4a6353e27d93','2024-04-19 16:00:44','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:00:51','69d2a0c0-ffa2-4511-8b31-4a6353e27d93','2024-04-19 16:00:51','69d2a0c0-ffa2-4511-8b31-4a6353e27d93');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_8SNMXVR0LXTZ97LOLWDH','PF_WS_8SNMXVR0LXTZ97LOLWDH','/kdOLwD1Uh+TwHWGjSa2irqZvuEup0xuEkQ1JnVsnslKdfGWKyXut/1r50lsN8Co','2024-04-19 16:00:37','69d2a0c0-ffa2-4511-8b31-4a6353e27d93','2024-04-19 16:02:11','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('org2','ws2','unittest-platform-db',3306,'PF_WS_F0E15CBGWVEPGK2J1PF8','PF_WS_F0E15CBGWVEPGK2J1PF8','4qBZNGNNnnYFtfbyusu1rWA1t/+018AP98aIm7IzY0Cs1rmOqqFTtQkPm2h71TsS','2024-04-19 16:00:44','69d2a0c0-ffa2-4511-8b31-4a6353e27d93','2024-04-19 16:02:11','69d2a0c0-ffa2-4511-8b31-4a6353e27d93'),('org2','ws3','unittest-platform-db',3306,'PF_WS_QKSA2VKP8RUBCN715K2W','PF_WS_QKSA2VKP8RUBCN715K2W','rVXcVw563BarkABIzRnXtXRe3/YLbpTU43fALBlsY4M20q3i0qdacVEiwEYjehK9','2024-04-19 16:00:51','69d2a0c0-ffa2-4511-8b31-4a6353e27d93','2024-04-19 16:02:11','69d2a0c0-ffa2-4511-8b31-4a6353e27d93');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_8SNMXVR0LXTZ97LOLWDH`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_8SNMXVR0LXTZ97LOLWDH` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_8SNMXVR0LXTZ97LOLWDH`;

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
-- Current Database: `PF_WS_F0E15CBGWVEPGK2J1PF8`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_F0E15CBGWVEPGK2J1PF8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_F0E15CBGWVEPGK2J1PF8`;

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
-- Current Database: `PF_WS_QKSA2VKP8RUBCN715K2W`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_QKSA2VKP8RUBCN715K2W` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_QKSA2VKP8RUBCN715K2W`;

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
-- Current Database: `PF_ORG_YAR5QY25XD6BXMJ5SFDG`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_YAR5QY25XD6BXMJ5SFDG` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_YAR5QY25XD6BXMJ5SFDG`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"589b3ed9-5494-43ce-9dbf-6aa3ac0b4bb0\", \"USER_TOKEN_CLIENT_SECRET\": \"OhJccgRDkP8WS6DOLwkkVTsLcOAD8Tkb\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"1c184606-8ae2-4680-a1a1-7c84b476e267\", \"INTERNAL_API_CLIENT_SECRET\": \"cH4EB3mSYxIlkzwxGXPgqrFZH40HUaN6\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"3984d86b-527c-4ea9-8a14-2503b2dec747\", \"TOKEN_CHECK_CLIENT_SECRET\": \"oHVkrGEzALXyQZZmCww0aOlvCQ1heSRa\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"24ed2917-fc28-4497-a58d-ff301d928753\"}','2024-04-19 16:01:02','unittest-user01','2024-04-19 16:01:02','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:02','e99923b9-19e7-417e-bd97-a0bd3f8aaede','2024-04-19 16:01:02','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:10','e99923b9-19e7-417e-bd97-a0bd3f8aaede','2024-04-19 16:01:10','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:16','e99923b9-19e7-417e-bd97-a0bd3f8aaede','2024-04-19 16:01:16','e99923b9-19e7-417e-bd97-a0bd3f8aaede');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_U8LUQV7XKY1A2TJOQ3SP','PF_WS_U8LUQV7XKY1A2TJOQ3SP','Rag/7HdjKYyNeGRg//0D30dEafW0SCmwzctx1y0KnMu1qh10ywj7bbancoderUnf','2024-04-19 16:01:03','e99923b9-19e7-417e-bd97-a0bd3f8aaede','2024-04-19 16:02:11','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('org3','ws2','unittest-platform-db',3306,'PF_WS_IGSPRCJOWJF2UJAKW6G3','PF_WS_IGSPRCJOWJF2UJAKW6G3','dalKCrdVV6AD2fftYvYpRsyPJnOFYOAUeN6CZytdV4soaERS1SVfG9IiX5bk3Fw4','2024-04-19 16:01:10','e99923b9-19e7-417e-bd97-a0bd3f8aaede','2024-04-19 16:02:11','e99923b9-19e7-417e-bd97-a0bd3f8aaede'),('org3','ws3','unittest-platform-db',3306,'PF_WS_7YJY2CCFW629AUJ4WTCZ','PF_WS_7YJY2CCFW629AUJ4WTCZ','m9TkMaIer4Lm3ZbAf0nbkeUlygGyR4ku5SBgV7FK5gM57nqaPp09yL8LwqQQY7h6','2024-04-19 16:01:16','e99923b9-19e7-417e-bd97-a0bd3f8aaede','2024-04-19 16:02:11','e99923b9-19e7-417e-bd97-a0bd3f8aaede');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_U8LUQV7XKY1A2TJOQ3SP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_U8LUQV7XKY1A2TJOQ3SP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_U8LUQV7XKY1A2TJOQ3SP`;

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
-- Current Database: `PF_WS_IGSPRCJOWJF2UJAKW6G3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_IGSPRCJOWJF2UJAKW6G3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_IGSPRCJOWJF2UJAKW6G3`;

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
-- Current Database: `PF_WS_7YJY2CCFW629AUJ4WTCZ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_7YJY2CCFW629AUJ4WTCZ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_7YJY2CCFW629AUJ4WTCZ`;

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
-- Current Database: `PF_ORG_2GAO78AP3Q1YABEMAVJZ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_2GAO78AP3Q1YABEMAVJZ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_2GAO78AP3Q1YABEMAVJZ`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"606eedf0-fb2b-41a7-b156-8a346cc31c87\", \"USER_TOKEN_CLIENT_SECRET\": \"yKoCGVNhpl8d55FnxBRYtoC2t8tHGfdP\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"3214c83b-b319-46db-83e0-a3afa51f5a5e\", \"INTERNAL_API_CLIENT_SECRET\": \"fXzxbYF4OxTIUvFQRqcBLvrRrbBg0k2L\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"f23775bb-1054-41c4-9926-0433968d09f5\", \"TOKEN_CHECK_CLIENT_SECRET\": \"mekVRCjwIpmN5rog9mSnBZtSDTNPuMZ3\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"758a5b70-29fb-4db8-8b3a-56a7fa79c816\"}','2024-04-19 16:01:27','unittest-user01','2024-04-19 16:01:27','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:27','ae654cb4-02e0-41b2-8684-8e25c6f90d8f','2024-04-19 16:01:27','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:34','ae654cb4-02e0-41b2-8684-8e25c6f90d8f','2024-04-19 16:01:34','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:41','ae654cb4-02e0-41b2-8684-8e25c6f90d8f','2024-04-19 16:01:41','ae654cb4-02e0-41b2-8684-8e25c6f90d8f');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_K4FJN1J126HHD2OMFTCH','PF_WS_K4FJN1J126HHD2OMFTCH','wdZVCbiRANQt9Q08hA5PYPUV9+H7RFbfh+U09By4u28Sw8+2DkqBTdcExlQylhyO','2024-04-19 16:01:28','ae654cb4-02e0-41b2-8684-8e25c6f90d8f','2024-04-19 16:02:11','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('org4','ws2','unittest-platform-db',3306,'PF_WS_AHU78SD8FMRXBZREAIAD','PF_WS_AHU78SD8FMRXBZREAIAD','3BC+p9A9tVpFgMRTDZn6aNF7qk9BnF4PfziQ/F6RJV35086bnRRv/OpoblL4E68B','2024-04-19 16:01:34','ae654cb4-02e0-41b2-8684-8e25c6f90d8f','2024-04-19 16:02:11','ae654cb4-02e0-41b2-8684-8e25c6f90d8f'),('org4','ws3','unittest-platform-db',3306,'PF_WS_QG2K7UAQ4K8RX6P3K48Q','PF_WS_QG2K7UAQ4K8RX6P3K48Q','+eyG3ueamlp3gFfNmQYFYsPpv55xpyhetN1HaMew0+FZiuyuuytiHybzNRyuI9K3','2024-04-19 16:01:41','ae654cb4-02e0-41b2-8684-8e25c6f90d8f','2024-04-19 16:02:11','ae654cb4-02e0-41b2-8684-8e25c6f90d8f');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_K4FJN1J126HHD2OMFTCH`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_K4FJN1J126HHD2OMFTCH` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_K4FJN1J126HHD2OMFTCH`;

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
-- Current Database: `PF_WS_AHU78SD8FMRXBZREAIAD`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_AHU78SD8FMRXBZREAIAD` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_AHU78SD8FMRXBZREAIAD`;

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
-- Current Database: `PF_WS_QG2K7UAQ4K8RX6P3K48Q`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_QG2K7UAQ4K8RX6P3K48Q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_QG2K7UAQ4K8RX6P3K48Q`;

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
-- Current Database: `PF_ORG_IK3PUTG4FDW5XX5UPSAQ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_IK3PUTG4FDW5XX5UPSAQ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_IK3PUTG4FDW5XX5UPSAQ`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"f24468e1-6d34-4675-9efc-3dff1ea030a0\", \"USER_TOKEN_CLIENT_SECRET\": \"PWc0iGP3MxCWLnC1bN1Uk2mWaqiNhIAb\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"6f823ce3-aece-4d4c-bfcf-5a1598d6a0c5\", \"INTERNAL_API_CLIENT_SECRET\": \"GUTlwCPxvPR1vyvmlrfqQxdCxJ8TWrPz\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"37c31529-1e2b-4155-889c-7e141dfda92b\", \"TOKEN_CHECK_CLIENT_SECRET\": \"kX8qC4cmSrth6dOSABtgKuNXgOTYhJeS\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"24f98cd6-b2a8-4f39-af89-313b02d589f7\"}','2024-04-19 16:01:50','unittest-user01','2024-04-19 16:01:50','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:51','20ffde0d-3644-4204-acb3-03236a2dcc85','2024-04-19 16:01:51','20ffde0d-3644-4204-acb3-03236a2dcc85'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:01:58','20ffde0d-3644-4204-acb3-03236a2dcc85','2024-04-19 16:01:58','20ffde0d-3644-4204-acb3-03236a2dcc85'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-04-19 16:02:04','20ffde0d-3644-4204-acb3-03236a2dcc85','2024-04-19 16:02:04','20ffde0d-3644-4204-acb3-03236a2dcc85');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_QT48GKQ1L6K4K6CTJHHW','PF_WS_QT48GKQ1L6K4K6CTJHHW','3iIy/efXHllHYacWfTZUtfGVuI4uYoCPQEUWMjr7i+L6c2ryKVJYRaYIHavpFrlT','2024-04-19 16:01:51','20ffde0d-3644-4204-acb3-03236a2dcc85','2024-04-19 16:02:11','20ffde0d-3644-4204-acb3-03236a2dcc85'),('org5','ws2','unittest-platform-db',3306,'PF_WS_I4B7P2QJ308NA64Z3KWC','PF_WS_I4B7P2QJ308NA64Z3KWC','aOnoGBeJLixfUpPNgglNmNK4nkroauRYJcH4mSCofJ3DjswVC6S9SlTxSSKQNVVX','2024-04-19 16:01:58','20ffde0d-3644-4204-acb3-03236a2dcc85','2024-04-19 16:02:11','20ffde0d-3644-4204-acb3-03236a2dcc85'),('org5','ws3','unittest-platform-db',3306,'PF_WS_27NSYWDS4LDPHVL0QFTA','PF_WS_27NSYWDS4LDPHVL0QFTA','V/42Oi7d61QJ6aY1J6BxZAEzYPX5W8P+2gASqTu85jIaBdhkdgF2V7fkyhMKvpCj','2024-04-19 16:02:05','20ffde0d-3644-4204-acb3-03236a2dcc85','2024-04-19 16:02:11','20ffde0d-3644-4204-acb3-03236a2dcc85');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_QT48GKQ1L6K4K6CTJHHW`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_QT48GKQ1L6K4K6CTJHHW` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_QT48GKQ1L6K4K6CTJHHW`;

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
-- Current Database: `PF_WS_I4B7P2QJ308NA64Z3KWC`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_I4B7P2QJ308NA64Z3KWC` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_I4B7P2QJ308NA64Z3KWC`;

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
-- Current Database: `PF_WS_27NSYWDS4LDPHVL0QFTA`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_27NSYWDS4LDPHVL0QFTA` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_27NSYWDS4LDPHVL0QFTA`;

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

-- Dump completed on 2024-04-19 16:02:12
