-- MySQL dump 10.13  Distrib 8.0.38, for Linux (x86_64)
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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('01e8125d-e7fd-458f-bd0a-376b3c89c7fd',1720055348099,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d3be74ca-18ef-4b23-8eac-a11225a59d54','{\"id\":\"d3be74ca-18ef-4b23-8eac-a11225a59d54\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('04ed4794-fd42-4ebc-be57-a8f815e2500f',1720055293990,'org3','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('0623b30e-d951-4c57-93b1-58a202bffa48',1720055229911,'org1','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('06a22372-0c81-47ea-85c5-3079c36d8a5e',1720055290923,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','{\"id\":\"8dfc9620-ac5b-49ba-b8be-d792a7ce1e80\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('07e168bc-4536-42ca-914e-6c9ec9bb9c0c',1720055319600,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_organization-user-manager/composites','[{\"id\":\"a62b794d-1d46-4f7b-89b9-a8db7cad25d8\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"22cdf5ce-93a6-442f-9dad-d17b74fa90da\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('08d144ea-2e8a-487f-8e1a-69fbac00dd53',1720055229806,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/3e11349f-e4f6-47f3-80ad-d2a14e410dcc/role-mappings/clients/d288df77-676b-418a-815d-15169d1631bf','[{\"id\":\"8850600c-0101-4e10-95eb-1b691988da5c\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d288df77-676b-418a-815d-15169d1631bf\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('090e43ba-e28a-4768-a673-90af594ce742',1720055290974,'org3','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/8dfc9620-ac5b-49ba-b8be-d792a7ce1e80/client-secret','{\"type\":\"secret\",\"value\":\"dmiwpQlumvtora7noYykc7sJfZHvJd8l\"}',NULL,'CLIENT'),('0a0247f4-e5a0-458a-bb75-4f8cae1cb215',1720055290435,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf','{\"id\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('0a1de3a6-e6d6-4956-b998-bb0e767fbac4',1720055336637,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_ws3-admin','{\"id\":\"2bfa1a84-f1f1-4d12-a0e0-222e73a0009a\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0bacb433-13ea-4cab-ad77-2ea663604813',1720055251214,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_ws3-admin','{\"id\":\"02eed8a5-b622-488e-8fb5-0c35e48fc191\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0f8730ef-7c34-4115-ba49-41b2921a8e81',1720055228214,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-ws-mt','{\"id\":\"33e128e3-abb2-4f48-9cd6-e9f7c31b95f2\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('107a4761-f5c5-4b4f-9ad7-0fbd6ac35d8b',1720055336614,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_ws3-admin','{\"id\":\"a203d91d-8bc9-4359-b6a1-bb90cae1c078\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1086ea12-90ee-42cc-bbd6-71642a30cd76',1720055251405,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_ws3-admin/composites','[{\"id\":\"1881f2ef-cef6-458e-9940-b08341f1abad\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"02eed8a5-b622-488e-8fb5-0c35e48fc191\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('115ac0b1-2e79-4b7c-a369-3c9b9d944de0',1720055244511,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_ws2-admin/composites','[{\"id\":\"defc61c8-8f6e-4d9c-bb7a-eb0b92139c2d\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"80c7fbdb-44c7-43f7-965d-ca83acaf5376\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('12415ef7-62ed-4a35-a462-b09338cb9614',1720055322186,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_ws1-admin','{\"id\":\"7dfcfa49-c812-4c03-b45a-8defe69cd28b\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('13f094c8-b31d-4e60-86e5-da0cd81cfc1f',1720055236825,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_ws1-admin','{\"id\":\"8522d94a-9180-4492-90e6-3f7af91c9fa5\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('142dbc0a-ffec-45c4-bc66-d34c113103d1',1720055291923,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_organization-user-manager/composites','[{\"id\":\"610e9685-6260-4abf-a77c-cb755394f778\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"856e6390-b8ad-4c9f-91c9-8f7c443ec661\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('15a371d4-1f59-4ad4-918f-b42e4de90ef4',1720055262404,'org2','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/1df42dc9-8ec2-416c-96f2-2b8b5005eb36/client-secret','{\"type\":\"secret\",\"value\":\"0dLCbNayNy4QIQLiWxd815yjgcNx0HlI\"}',NULL,'CLIENT'),('18a5da83-955e-440c-9dde-8055e9581724',1720055229472,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_organization-user-manager/composites','[{\"id\":\"a549da24-e8ac-4124-ae9a-69daf2dbd8f9\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"3592c44a-3e55-40e6-8153-7f0394c0cab6\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('1a407d20-8621-4847-8fcc-75b5cb004b11',1720055318732,'org4','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/03e239c6-adea-41ff-9114-3f2f8c8bfa36/client-secret','{\"type\":\"secret\",\"value\":\"KheFAQdaLmH4t7yAGDw4yPxg9nVf7BkQ\"}',NULL,'CLIENT'),('1a90f4a9-1122-464f-870c-938ebcdf15c4',1720055262262,'org2','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/client-secret','{\"type\":\"secret\",\"value\":\"UipPZKESy0uLbRtAhEun3zgbohtvRQVV\"}',NULL,'CLIENT'),('1b9c9804-12ca-47c3-8b79-478dfe15b8f7',1720055348370,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-role-usr','{\"id\":\"789d6bc9-c2cb-464c-8d3f-f8044c15becc\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1c454a94-3bde-4959-a276-410d26ec2ccf',1720055291866,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_organization-user-manager','{\"id\":\"f0741211-ebf5-4c93-9864-ec3eed18a810\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('1d1a7210-19ce-48a7-9a80-6493c71bf675',1720055263528,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/cb005670-e056-42e4-ab27-64d7d439de6a/role-mappings/clients/68409b6b-a222-4c2a-93aa-7d9e21b6f79a','[{\"id\":\"9513f688-13f9-4816-8790-4bc580754c47\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"68409b6b-a222-4c2a-93aa-7d9e21b6f79a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('1f7abe31-33d1-4f98-b745-772e33dbc5bc',1720055228015,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-role-usr','{\"id\":\"62c63408-c790-4025-95f2-bfacb3d470b8\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2189c64b-18d1-4603-a228-13bc8ea39b35',1720055244335,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/ws2','{\"id\":\"defc61c8-8f6e-4d9c-bb7a-eb0b92139c2d\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('218d28cf-5040-48a9-b7fb-4adbd1a3ca99',1720055351289,'org5','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('219a49cc-bcc2-4b1d-954e-c10daaf7273c',1720055261716,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30','{\"id\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2259d1ee-aff4-4722-ab77-f82b862b9290',1720055329479,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/ws2','{\"id\":\"25f1a938-d0b2-49b2-ba87-3217c2a3a140\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2442aa5e-34e9-41ff-9bed-6a2011d46981',1720055228242,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-audit-log','{\"id\":\"850e5c77-b505-479e-905b-1a01b4ee5b86\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('248bf863-dec4-4164-9502-037fffa8d598',1720055348509,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-audit-log','{\"id\":\"cab739bd-37da-4ebb-98b7-6ad36963910a\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('24cb312e-f4ab-4306-b9f4-568564a99ce0',1720055266255,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/ws1','{\"id\":\"fce977e5-f65f-4bf3-93cf-8ad51dfe670a\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('26089980-2bdc-47b6-b177-0aa5b3d46c2e',1720055264383,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/e18d56f4-d90e-4c00-a402-98bb4ce3a55b/role-mappings/clients/7b641f77-acc3-4adc-9f14-f2da533bbee2','[{\"id\":\"a9bbd368-f4e3-491c-a5c7-c6eda8b73439\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"7b641f77-acc3-4adc-9f14-f2da533bbee2\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('2635a8b3-cd92-486a-9583-e7098d1c1d92',1720055366596,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/ws3','{\"id\":\"698d6d13-4e5c-48ef-8ad5-dffc50d30d00\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('26821d59-6b16-458b-ba49-a28ded691166',1720055292830,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('26e6fe64-d4f1-4fde-bfeb-581c04ff5fb6',1720055237002,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','users/79261952-4862-4a4d-8da1-1ce8ca3b1481/role-mappings/clients/04458ae7-60f6-44cd-a035-5a396eb993d5','[{\"id\":\"8522d94a-9180-4492-90e6-3f7af91c9fa5\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"04458ae7-60f6-44cd-a035-5a396eb993d5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('27274575-15e1-4fd2-8e94-d9c0b9c158cf',1720055318849,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-upd','{\"id\":\"f67c67c4-e200-4af1-9cc1-f2768d42bde4\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('278f74bb-4870-4a56-9e9f-19eab0815ba9',1720055294518,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','users/3f31b23a-8996-4cba-8ab9-6c78d25b9fa5/role-mappings/clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34','[{\"id\":\"bda514bc-59a2-411e-9633-2e4051b9bb47\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6ca71d5-4ebb-461d-b35c-d83a90681c34\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('291f2e8c-d5d2-4a89-810b-600c9d6ddc55',1720055290613,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/77e7fcf2-c508-4740-8fec-308f4472cfd7','{\"id\":\"77e7fcf2-c508-4740-8fec-308f4472cfd7\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2ca807a7-d8a0-48a1-92d4-9799aa5b4c92',1720055336709,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_ws3-admin/composites','[{\"id\":\"63f8b2d9-1f98-468d-a19b-3642b8d7fafd\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a203d91d-8bc9-4359-b6a1-bb90cae1c078\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('2d399fcf-b506-4db3-8da1-d2a709e455ba',1720055319765,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/94673dfb-c3f4-4ff6-a269-79fb12871f00/role-mappings/clients/7785feb2-4924-4cfa-84bf-bdf8633a3193','[{\"id\":\"6e17c6d1-8d27-4198-b0ca-bf1060f8d185\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"7785feb2-4924-4cfa-84bf-bdf8633a3193\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('2e10a410-75d3-493d-9f01-5048f485fb1a',1720055262494,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-upd','{\"id\":\"5f9ed256-f2d0-43ff-9721-df4119d7db2c\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('319db353-f45c-464d-9953-603b61937e8c',1720055291262,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-audit-log','{\"id\":\"4236c6c5-29fe-4ab5-9c37-20bd7c27b310\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('34fdacec-9fc9-49ee-90c7-72ccbb0721be',1720055262565,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-usage','{\"id\":\"13e3533e-37ce-4d46-9339-0910be1b276f\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('386c8e7c-fed8-46c2-933e-97c4ca2baf4d',1720055359207,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_ws2-admin','{\"id\":\"e3456ec2-ab20-4c44-81a5-464adb083a29\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3bd136da-da37-4607-b621-d8f572116c7f',1720055351793,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_ws1-admin/composites','[{\"id\":\"09cdac04-e897-44ba-a7c6-fbf0dfb9365b\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"8978f64e-0efa-4651-8e3e-2c4412c45253\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('3c4edc40-732e-4b22-b214-4c76d1d853bd',1720055318196,'org4','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/client-secret','{\"type\":\"secret\",\"value\":\"ki3U4sTeIV7CcIDigj8rDydsq0IfZPaG\"}',NULL,'CLIENT'),('3d3d595c-98d8-44d1-845b-80fee8fbbf8a',1720055366768,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_ws3-admin/composites','[{\"id\":\"698d6d13-4e5c-48ef-8ad5-dffc50d30d00\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"7a0d541d-53bc-4eaf-901e-3c442c5f25c7\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('3f1ecd41-726d-4b11-8a46-a165d1db4740',1720055261976,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/57d37b71-d396-4739-a413-609a9a6401f7','{\"id\":\"57d37b71-d396-4739-a413-609a9a6401f7\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('3f2bd65e-fe5d-48dd-9cfe-3da890908999',1720055347705,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/5a70c154-dc6c-438c-85ba-0df54eb491c6','{\"id\":\"5a70c154-dc6c-438c-85ba-0df54eb491c6\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('406aeb0b-8936-4626-951d-0c3f8e0ca300',1720055244409,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_ws2-admin','{\"id\":\"8d951762-e1f6-4359-a571-3691f305ec9b\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('407a96bf-ef47-4cac-8db3-696417810485',1720055329622,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_ws2-admin/composites','[{\"id\":\"25f1a938-d0b2-49b2-ba87-3217c2a3a140\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"e57dc26e-bb81-4b1d-9410-e7b05b8f3d02\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('40bdcdbb-574d-4003-bfa1-ce88a7ff17de',1720055227174,'org1','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/client-secret','{\"type\":\"secret\",\"value\":\"1G9iXtOCrEWgmpvkptfSdlZuCwf4qLkb\"}',NULL,'CLIENT'),('40e92d7b-77a1-4406-960b-ddd05ce1af42',1720055273573,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_ws2-admin','{\"id\":\"8047ef8b-5105-4b3a-8884-fc10607283f6\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4257903f-1553-46aa-a46b-1ca3e0f7cd65',1720055227357,'org1','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/1d5b7a91-fec4-49bf-9946-4bfa01cd24d5/client-secret','{\"type\":\"secret\",\"value\":\"gCRadqSu4aPNdcUOk8VsNezohN2kHYwV\"}',NULL,'CLIENT'),('426626cb-8449-46bd-9058-15120687d1ca',1720055262786,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_organization-manager','{\"id\":\"a9bbd368-f4e3-491c-a5c7-c6eda8b73439\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('42cd73ec-1b48-497e-b455-d1a2c76ccdd8',1720055291127,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-usage','{\"id\":\"25274b22-3fb5-49f2-86a4-556e7d718909\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('441ead92-a7a6-4d19-a759-8b03c784855f',1720055359386,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','users/e4b2c29c-756d-4125-bf6f-3843746d3d08/role-mappings/clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','[{\"id\":\"c3e9db12-e003-43da-84a5-1335e75399a1\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('444885de-364e-4cc1-b8d5-c257e158b86c',1720055291754,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_organization-user-role-manager','{\"id\":\"cf353d7c-ead2-4897-97a6-bd13321406b9\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('447ef040-e7a0-4384-971e-041e2703f995',1720055262593,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-usr-mt','{\"id\":\"7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('45e76a83-393c-4cea-9f77-8af195607ab8',1720055318953,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-usr-mt','{\"id\":\"a62b794d-1d46-4f7b-89b9-a8db7cad25d8\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('474379f5-ad49-4530-ab0a-a8a3bec919f1',1720055318879,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-own-mt','{\"id\":\"ac5ae6d3-738d-4207-9c25-faf9033916d1\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('47e1b67e-74f9-4db5-abb0-c5a5126206cd',1720055319405,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_organization-manager/composites','[{\"id\":\"f67c67c4-e200-4af1-9cc1-f2768d42bde4\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"ac5ae6d3-738d-4207-9c25-faf9033916d1\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"aeec29db-c753-436f-a41c-bb57e96d3a44\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"d71e1f86-0cbe-4d80-99fb-66850f3b89ab\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"a62b794d-1d46-4f7b-89b9-a8db7cad25d8\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"cc9dc9b5-3045-4619-b164-63b0161e86cc\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"22cdf5ce-93a6-442f-9dad-d17b74fa90da\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"4bd8b58a-9aa3-47e0-afb1-080d8e80f54c\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"0f9644f2-6737-4106-b7a5-0c1e9bb5de64\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"73527fbd-3a8b-4c98-9721-c593cc4f3f64\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7785feb2-4924-4cfa-84bf-bdf8633a3193\",\"attributes\":{}},{\"id\":\"cf2ab662-9123-49bb-9876-567455c2fd8b\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7785feb2-4924-4cfa-84bf-bdf8633a3193\",\"attributes\":{}},{\"id\":\"6e26790b-b0a2-4606-81e0-6d426023627c\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7785feb2-4924-4cfa-84bf-bdf8633a3193\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('487eae5d-092f-4760-aec8-7dfb04b130ec',1720055262345,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/1df42dc9-8ec2-416c-96f2-2b8b5005eb36','{\"id\":\"1df42dc9-8ec2-416c-96f2-2b8b5005eb36\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('48fd96dc-e2a7-4c80-a84c-fbbe8a449f2f',1720055336560,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/ws3','{\"id\":\"63f8b2d9-1f98-468d-a19b-3642b8d7fafd\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4a6053e7-3a19-468e-bfe8-4447e1071cd1',1720055263196,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_organization-manager/composites','[{\"id\":\"5f9ed256-f2d0-43ff-9721-df4119d7db2c\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"e751f5ca-78f3-42bd-85a8-14fa8000493e\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"c4703494-50c6-49d3-94ae-5a2077bb9d92\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"13e3533e-37ce-4d46-9339-0910be1b276f\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"183a8d28-12e2-4943-bbfa-cd841664c774\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"916bd9f8-0514-47d8-ba7d-b683d68307f4\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"895d7f0d-2777-453a-96d4-8906d486e346\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"dba9977a-cbbc-41fe-a361-aa3dbe8a3555\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"8f6bb82b-258c-4d96-b31f-aa12e12174f8\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"68409b6b-a222-4c2a-93aa-7d9e21b6f79a\",\"attributes\":{}},{\"id\":\"49991293-f564-4f1f-96d5-0daf1a38544e\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"68409b6b-a222-4c2a-93aa-7d9e21b6f79a\",\"attributes\":{}},{\"id\":\"29373f22-9462-49c9-9465-5c0b02406552\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"68409b6b-a222-4c2a-93aa-7d9e21b6f79a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('4b9fbd87-e339-4a04-a405-4ae02f3bf97c',1720055329551,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_ws2-admin','{\"id\":\"83f846cc-ee9e-4bdb-b039-2f21a0349181\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4f20a088-fb7c-4f30-b69c-72fd9801f089',1720055336770,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','users/883922dc-0db0-4924-b24e-288971d44e3e/role-mappings/clients/fe590829-5a72-46df-b480-593cccd24fca','[{\"id\":\"2bfa1a84-f1f1-4d12-a0e0-222e73a0009a\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"fe590829-5a72-46df-b480-593cccd24fca\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('59c1edd6-2b68-4f65-9ba0-b490a5debc0f',1720055320430,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/883922dc-0db0-4924-b24e-288971d44e3e','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('5bae16a2-ab19-4385-a445-9d1c61b14592',1720055251489,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','users/79261952-4862-4a4d-8da1-1ce8ca3b1481/role-mappings/clients/04458ae7-60f6-44cd-a035-5a396eb993d5','[{\"id\":\"4d8d3678-b288-4dee-8423-eb57bd465b03\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"04458ae7-60f6-44cd-a035-5a396eb993d5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('5c99fa55-4bab-4055-9cb7-48848311904a',1720055291217,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-ws-mt','{\"id\":\"dfee9baf-1e1f-4ef0-b990-7fb7f4ae6933\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('60e9ff18-dac1-4a57-9df7-9ad1e40160a6',1720055348451,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-ws-role-usr','{\"id\":\"57fbaac8-86cd-436b-8590-01c7b1ddcb01\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('618addd9-7604-42ca-82ed-3fa47835f997',1720055262069,'org2','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/57d37b71-d396-4739-a413-609a9a6401f7/client-secret','{\"type\":\"secret\",\"value\":\"bMxlmMqz7mXbpv26Eioo1OmHUPcMumYu\"}',NULL,'CLIENT'),('62f0623a-0417-43ce-b2ec-1e43cd10aa10',1720055291829,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_organization-user-role-manager/composites','[{\"id\":\"610e9685-6260-4abf-a77c-cb755394f778\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"bf99d789-2432-4a2c-a052-12fe3893d9a7\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"856e6390-b8ad-4c9f-91c9-8f7c443ec661\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('6550b7f4-7402-490f-86a9-7ac79948670b',1720055318988,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-ws-role-usr','{\"id\":\"22cdf5ce-93a6-442f-9dad-d17b74fa90da\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('65b02990-ec85-476b-ab8d-f91db126d9e3',1720055228435,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_organization-manager','{\"id\":\"22879c93-561f-4935-8778-e581ec286621\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('67205c4b-e9e3-45b0-9b03-5a13be661aa6',1720055227926,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-own-mt','{\"id\":\"dc62d418-cd95-4922-a880-bcf4f3731446\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('67bcc3d1-4569-4d7f-b3e1-6b5324825b82',1720055350260,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/e4b2c29c-756d-4125-bf6f-3843746d3d08/role-mappings/clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','[{\"id\":\"da407b7c-69bc-4c80-beb9-153c3df75535\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('67f39dcd-3369-4d53-8f76-00558e7e6b9d',1720055351676,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_ws1-admin','{\"id\":\"8978f64e-0efa-4651-8e3e-2c4412c45253\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('693cfc57-175b-4f8f-b582-d53ae7e58bf3',1720055228167,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-ws-role-usr','{\"id\":\"3592c44a-3e55-40e6-8153-7f0394c0cab6\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6b3ac883-c12c-4b40-8d14-55d968ecbbdc',1720055273531,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/ws2','{\"id\":\"2203c784-b0de-4cf8-bb6a-3363af8d0893\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6e32f5e3-0a4c-4d6b-ab1e-e6a31f64bdba',1720055292957,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/3f31b23a-8996-4cba-8ab9-6c78d25b9fa5/role-mappings/clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34','[{\"id\":\"c1993e55-7bca-4846-9edc-ed6baaa96c68\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6ca71d5-4ebb-461d-b35c-d83a90681c34\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('6fd2a051-9fb9-43d3-aa4e-076bfca6fa1d',1720055300834,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_ws2-admin','{\"id\":\"fcff19d5-1b73-43f4-af56-6a60c16edd6f\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('70570cb6-74f6-48b1-890c-d7ea5b26bb1b',1720055273789,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','users/e18d56f4-d90e-4c00-a402-98bb4ce3a55b/role-mappings/clients/7b641f77-acc3-4adc-9f14-f2da533bbee2','[{\"id\":\"ee97e63b-3349-4a6b-ac77-80581c71f31b\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"7b641f77-acc3-4adc-9f14-f2da533bbee2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('714e6b26-d1b6-418d-8a00-ca136a13d98a',1720055263389,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_organization-user-manager/composites','[{\"id\":\"7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"916bd9f8-0514-47d8-ba7d-b683d68307f4\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('7453fbb0-19b8-4ca5-880c-598ded573d22',1720055307639,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_ws3-admin','{\"id\":\"67baa771-e452-4b95-9802-2de4ed5d4f92\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('793fa61c-9661-4008-9bc1-04eb743b9227',1720055262612,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-ws-role-mt','{\"id\":\"183a8d28-12e2-4943-bbfa-cd841664c774\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7962d7a0-0972-4f00-8afe-40e67908f961',1720055294370,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_ws1-admin','{\"id\":\"bda514bc-59a2-411e-9633-2e4051b9bb47\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7b8c4d16-3898-409d-a220-787368f84ed7',1720055266278,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_ws1-admin','{\"id\":\"280cf8d4-9945-4435-a04b-35baa75ab475\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7bf1a779-a062-4ec9-9620-6f876e0a35dd',1720055319549,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_organization-user-manager','{\"id\":\"af8a468b-d3dc-4958-b931-9da5c6c66f5c\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('7d342d17-5a16-4139-9f90-f42eee032004',1720055261800,'org2','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/client-secret','{\"type\":\"secret\",\"value\":\"lSylHBbsFDIrD5v6dFyUoAhgbH5uT6wh\"}',NULL,'CLIENT'),('7f13a4fa-4001-4ef6-8491-111bfddb5c1b',1720055281352,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','users/e18d56f4-d90e-4c00-a402-98bb4ce3a55b/role-mappings/clients/7b641f77-acc3-4adc-9f14-f2da533bbee2','[{\"id\":\"85cd7787-57e2-4db6-82fd-8d30777e84ce\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"7b641f77-acc3-4adc-9f14-f2da533bbee2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('80630bda-19ea-4b78-8fd8-612633e31ca3',1720055359182,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/ws2','{\"id\":\"0f547ced-b71b-4e80-b973-4cf278ee68af\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8090fedd-fec5-4138-8ee7-cea7afa60eff',1720055318445,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca','{\"id\":\"fe590829-5a72-46df-b480-593cccd24fca\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('80b0bd7d-d61e-4b3b-a241-b1fb48bc060e',1720055227622,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/ca49d0bf-2577-4388-b782-1547474163f8','{\"id\":\"ca49d0bf-2577-4388-b782-1547474163f8\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('812e342c-379f-42d0-851b-87c80940299c',1720055228852,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_organization-manager/composites','[{\"id\":\"906f8856-be8f-48d6-8ca9-d00a7fe0ce25\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"dc62d418-cd95-4922-a880-bcf4f3731446\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"62c63408-c790-4025-95f2-bfacb3d470b8\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"aa98c083-3233-449a-beb7-d9ef4fbda497\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"a549da24-e8ac-4124-ae9a-69daf2dbd8f9\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"5a05883a-93c3-453e-81d2-8a9a17c90948\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"3592c44a-3e55-40e6-8153-7f0394c0cab6\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"33e128e3-abb2-4f48-9cd6-e9f7c31b95f2\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"850e5c77-b505-479e-905b-1a01b4ee5b86\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"9ee094af-b461-4ff2-8ccf-8a8a09de7284\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d288df77-676b-418a-815d-15169d1631bf\",\"attributes\":{}},{\"id\":\"8a7844d9-a624-4325-8a39-7453f443e2aa\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d288df77-676b-418a-815d-15169d1631bf\",\"attributes\":{}},{\"id\":\"b1315c2f-09ad-420a-8643-180d39b9fa2f\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d288df77-676b-418a-815d-15169d1631bf\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('828a458d-3ab3-4494-80a9-7e25c2e64eea',1720055318290,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c8081e92-8564-41bd-a38a-e381df72e417','{\"id\":\"c8081e92-8564-41bd-a38a-e381df72e417\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('841fa318-cc63-4cbf-91cb-b71304734ea6',1720055266301,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_ws1-admin','{\"id\":\"e4ed37ec-1e1a-43f5-937c-eddd7d9628b7\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('85cc0893-6f0c-4614-90a4-8ef0d561ee12',1720055229134,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_organization-user-role-manager/composites','[{\"id\":\"a549da24-e8ac-4124-ae9a-69daf2dbd8f9\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"5a05883a-93c3-453e-81d2-8a9a17c90948\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}},{\"id\":\"3592c44a-3e55-40e6-8153-7f0394c0cab6\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('86a7a2fb-0a15-4b5b-9476-dd235498ca15',1720055348158,'org5','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d3be74ca-18ef-4b23-8eac-a11225a59d54/client-secret','{\"type\":\"secret\",\"value\":\"NJF8JzhkfjV0Pxlf1Iv27sviZhtMTkTm\"}',NULL,'CLIENT'),('8874839e-1aa0-442a-8021-705a3164e6b9',1720055349573,'org5','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('899ea5ed-3351-4fa7-9934-e54390db85f0',1720055244560,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','users/79261952-4862-4a4d-8da1-1ce8ca3b1481/role-mappings/clients/04458ae7-60f6-44cd-a035-5a396eb993d5','[{\"id\":\"8d951762-e1f6-4359-a571-3691f305ec9b\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"04458ae7-60f6-44cd-a035-5a396eb993d5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('8a051d49-001c-4a99-927b-07907fe97883',1720055318897,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-role-usr','{\"id\":\"aeec29db-c753-436f-a41c-bb57e96d3a44\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8cc2954f-501c-4fbb-bb12-61359e7a3644',1720055320607,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/883922dc-0db0-4924-b24e-288971d44e3e/role-mappings/clients/fe590829-5a72-46df-b480-593cccd24fca','[{\"id\":\"a2d45372-98b7-4526-a9f6-404bf3421783\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"fe590829-5a72-46df-b480-593cccd24fca\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('913886dc-ebcf-40bc-a4c0-889f19391e3d',1720055291104,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-role-usr','{\"id\":\"9ed0f305-5bb8-4a8c-b154-8948cc7cbc4f\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('91b9c2ee-6b5e-4b74-b267-add861d9ab10',1720055359331,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_ws2-admin/composites','[{\"id\":\"0f547ced-b71b-4e80-b973-4cf278ee68af\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"e3456ec2-ab20-4c44-81a5-464adb083a29\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('94d620af-0004-425a-ba23-3c2de2d5fc36',1720055228094,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-usr-mt','{\"id\":\"a549da24-e8ac-4124-ae9a-69daf2dbd8f9\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('95b91ee6-2aee-426d-bda9-24bb03a59339',1720055236758,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_ws1-admin','{\"id\":\"5c427599-92a1-4eef-84cb-7903dde1962e\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9688f7ce-5365-4aae-9a88-2471278762f1',1720055290811,'org3','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/client-secret','{\"type\":\"secret\",\"value\":\"0soBIWonK36Cl9wGWhQwlZc9elGMDHEw\"}',NULL,'CLIENT'),('969b6cce-e7bc-4046-8347-de17a8832654',1720055359235,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_ws2-admin','{\"id\":\"c3e9db12-e003-43da-84a5-1335e75399a1\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('97a1d223-8e90-433a-b3fc-66166d97249c',1720055318918,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-usage','{\"id\":\"d71e1f86-0cbe-4d80-99fb-66850f3b89ab\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('97af7774-ffe0-4f5a-828d-698937db9066',1720055294347,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_ws1-admin','{\"id\":\"df067833-d5e4-45a5-88f3-33febd0e2c0e\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9842f504-154e-4c65-aa4c-540da195ce0b',1720055347484,'org5','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/client-secret','{\"type\":\"secret\",\"value\":\"KYU6OZqO0EHduo5YkQekD8iAIbLlbVEM\"}',NULL,'CLIENT'),('99107691-ab0b-4c74-bb69-468ee4dd5fb6',1720055349190,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_organization-user-manager','{\"id\":\"90768c1e-d12e-41aa-b6bb-ffeb4d8fcc99\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('99c623aa-4e60-47cd-9326-2ccb1113e97d',1720055262674,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-audit-log','{\"id\":\"dba9977a-cbbc-41fe-a361-aa3dbe8a3555\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9b3a1250-8f46-4337-bf22-bbb4f262e475',1720055291714,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_organization-manager/composites','[{\"id\":\"f0b660af-f948-4318-8713-0f7487844204\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"8c5d984b-ac7d-4a39-8905-91cc1c90a4f1\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"9ed0f305-5bb8-4a8c-b154-8948cc7cbc4f\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"25274b22-3fb5-49f2-86a4-556e7d718909\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"610e9685-6260-4abf-a77c-cb755394f778\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"bf99d789-2432-4a2c-a052-12fe3893d9a7\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"856e6390-b8ad-4c9f-91c9-8f7c443ec661\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"dfee9baf-1e1f-4ef0-b990-7fb7f4ae6933\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"4236c6c5-29fe-4ab5-9c37-20bd7c27b310\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{}},{\"id\":\"a2030383-ea62-4a6e-bf5b-be44ce73b92f\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"673fe574-2aad-4c41-8fdc-9c3e7ac04048\",\"attributes\":{}},{\"id\":\"aa84fd95-5548-4953-bf24-82dd5735d53d\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"673fe574-2aad-4c41-8fdc-9c3e7ac04048\",\"attributes\":{}},{\"id\":\"044fd49d-e163-433b-b81d-f759b31001f8\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"673fe574-2aad-4c41-8fdc-9c3e7ac04048\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('9c64d2c1-c39d-46d7-aa3f-aab80c5db354',1720055348999,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_organization-user-role-manager','{\"id\":\"b15deda8-eed7-4036-958f-d35d996d7546\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('9cbeaed5-c793-4fe6-80c4-78c4984c5632',1720055291147,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-usr-mt','{\"id\":\"610e9685-6260-4abf-a77c-cb755394f778\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9e4217c5-68b9-496e-8330-70df717e76b8',1720055319138,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_organization-manager','{\"id\":\"a2d45372-98b7-4526-a9f6-404bf3421783\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('a2c0c824-9e4f-4ba9-8f58-f60627684cd2',1720055348392,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-usage','{\"id\":\"e6654ab6-c8ec-4b40-9bf6-8c5f8a9d4caf\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a2e45308-1df5-4795-a271-15c0fa1b5600',1720055262172,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2','{\"id\":\"7b641f77-acc3-4adc-9f14-f2da533bbee2\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('a2f33356-8b7e-4d21-bf49-8c6594eceba2',1720055292243,'org3','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('a4e154e4-1ed2-4438-b7e6-5bf0bb3213d9',1720055348410,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-usr-mt','{\"id\":\"1cc839b9-3de0-403b-a2a3-37aa4f395166\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a4eec1f7-287b-4b99-bb89-b4b2485947dd',1720055329523,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_ws2-admin','{\"id\":\"e57dc26e-bb81-4b1d-9410-e7b05b8f3d02\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a6f07655-af62-489b-894d-a48c88916772',1720055291061,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-upd','{\"id\":\"f0b660af-f948-4318-8713-0f7487844204\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a72d1346-e178-4688-a687-4f463215622a',1720055347330,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403','{\"id\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('a92c4540-3eef-4d46-8220-70c9213ac765',1720055262649,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-ws-mt','{\"id\":\"895d7f0d-2777-453a-96d4-8906d486e346\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ab6f12f8-8337-4332-ac57-43bb0f5996d8',1720055348484,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-ws-mt','{\"id\":\"5f16cb19-4607-4e35-878c-9ad96b2e819c\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ac4e2e03-c5c9-4983-999d-b1399cefb1f1',1720055236933,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_ws1-admin/composites','[{\"id\":\"c3fd568d-8abd-4c67-97ff-9fe18f6d9bab\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"5c427599-92a1-4eef-84cb-7903dde1962e\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('ad5a02ad-2f1d-4e71-91f1-8bfd7f93493f',1720055351650,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/ws1','{\"id\":\"09cdac04-e897-44ba-a7c6-fbf0dfb9365b\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b02a06c4-0851-4afb-92ac-c3fb58ad0f4d',1720055307710,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_ws3-admin/composites','[{\"id\":\"f07c8381-0990-461c-88e6-d17a424f9c98\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"cb2356ac-a111-4d44-84a3-7372e51273b4\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b19a338b-357e-46d1-a20b-eaa4c1c7da54',1720055281302,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_ws3-admin/composites','[{\"id\":\"bd88ceb7-348e-4b34-acf7-cd1bf3257a4b\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"4018e577-0f65-44bd-8d6c-e65a2f4fda91\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b2b303f0-f65a-4129-a230-ef4cf09d6d14',1720055262630,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-ws-role-usr','{\"id\":\"916bd9f8-0514-47d8-ba7d-b683d68307f4\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b3183efb-87dd-4c0a-9b49-6dc81bc5a4b2',1720055366837,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','users/e4b2c29c-756d-4125-bf6f-3843746d3d08/role-mappings/clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','[{\"id\":\"fda30a7a-71d8-468b-8abf-e73c5e5e5458\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b31b50aa-b44d-4693-b0ad-1fae89f0eb9f',1720055307570,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/ws3','{\"id\":\"f07c8381-0990-461c-88e6-d17a424f9c98\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b430c706-37cc-472f-b9a2-be970eb34845',1720055348636,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_organization-manager','{\"id\":\"da407b7c-69bc-4c80-beb9-153c3df75535\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b4e78889-d942-46d9-9654-047cd36dad61',1720055319037,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-audit-log','{\"id\":\"0f9644f2-6737-4106-b7a5-0c1e9bb5de64\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b715ffb1-5026-4eaa-8751-c77ffaea111d',1720055244368,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_ws2-admin','{\"id\":\"80c7fbdb-44c7-43f7-965d-ca83acaf5376\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b95152b0-747d-4ae7-ab8d-7fcb63afb074',1720055227885,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-upd','{\"id\":\"906f8856-be8f-48d6-8ca9-d00a7fe0ce25\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b9ccd3ee-8f13-4827-8cee-0b36b608a2b6',1720055273737,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_ws2-admin/composites','[{\"id\":\"2203c784-b0de-4cf8-bb6a-3363af8d0893\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"8047ef8b-5105-4b3a-8884-fc10607283f6\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('bb4267d3-4578-4bf6-99f0-69b49d15df40',1720055228066,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-usage','{\"id\":\"aa98c083-3233-449a-beb7-d9ef4fbda497\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bc551cdc-4832-4161-a143-c5f2b0a9d181',1720055318636,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/03e239c6-adea-41ff-9114-3f2f8c8bfa36','{\"id\":\"03e239c6-adea-41ff-9114-3f2f8c8bfa36\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('bcd68347-acab-45ff-8a0d-db32a8e43cfa',1720055236078,'org1','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('c02f90e5-6b73-4490-9907-94c595d98348',1720055300927,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_ws2-admin/composites','[{\"id\":\"33a807ce-b0e2-42fd-b231-ed33e30ffc3d\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"5694d100-804e-4fdf-85d2-04d3efa04d7e\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('c0365ec4-6991-4e33-8748-92c99d6d254b',1720055300976,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','users/3f31b23a-8996-4cba-8ab9-6c78d25b9fa5/role-mappings/clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34','[{\"id\":\"fcff19d5-1b73-43f4-af56-6a60c16edd6f\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6ca71d5-4ebb-461d-b35c-d83a90681c34\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('c1a85acc-f5a8-4793-a534-67526a209b9a',1720055262519,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-own-mt','{\"id\":\"e751f5ca-78f3-42bd-85a8-14fa8000493e\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c2a31b27-ab5e-4d61-b7ad-aeaf94f3163c',1720055291356,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_organization-manager','{\"id\":\"c1993e55-7bca-4846-9edc-ed6baaa96c68\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('c2e35a6b-95de-4786-93ee-05f90193fd83',1720055227287,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','{\"id\":\"1d5b7a91-fec4-49bf-9946-4bfa01cd24d5\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('c41896dc-2e1b-473e-9f07-edfa7b85da1e',1720055300765,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/ws2','{\"id\":\"33a807ce-b0e2-42fd-b231-ed33e30ffc3d\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c58b278e-6a1d-4278-8f50-e378bc8b2d94',1720055351716,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_ws1-admin','{\"id\":\"7e671689-c837-446c-866b-3bbfe10af02a\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c7718c9d-2c26-4826-98b3-1b5519d20e4b',1720055263233,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_organization-user-role-manager','{\"id\":\"5639a881-4b10-4906-8881-ed8484667b88\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('c7e934f9-5c73-43dc-8223-1bfccb11ac39',1720055348310,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-upd','{\"id\":\"69ca3868-e401-4cf4-bc2a-822500f61fa0\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c9700c1d-d65c-4909-bbde-411d1268d31f',1720055322160,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/ws1','{\"id\":\"b744684e-5231-49d3-855a-8bd52a1c4cce\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c9b61856-fc71-4121-8b40-e29034a8fe13',1720055227706,'org1','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/ca49d0bf-2577-4388-b782-1547474163f8/client-secret','{\"type\":\"secret\",\"value\":\"beZPCC4ww1kAnqLcfxcj1vmZ1mLVUKnE\"}',NULL,'CLIENT'),('c9f9d318-4fb7-439e-90ef-0f3650dd9289',1720055294458,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34/roles/_ws1-admin/composites','[{\"id\":\"d3c83741-4d7c-4f8d-a967-e145f43a1f37\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"df067833-d5e4-45a5-88f3-33febd0e2c0e\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"19f88bac-766a-42e7-8df2-e247cd3f10bf\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('cb822b8c-48b5-4cbe-956c-66d08e8505ba',1720055263332,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_organization-user-manager','{\"id\":\"ad0cd736-3afd-4525-b701-a211b055de52\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('cd30c792-7500-4fa3-9c87-aa84b47b3999',1720055266437,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','users/e18d56f4-d90e-4c00-a402-98bb4ce3a55b/role-mappings/clients/7b641f77-acc3-4adc-9f14-f2da533bbee2','[{\"id\":\"e4ed37ec-1e1a-43f5-937c-eddd7d9628b7\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"7b641f77-acc3-4adc-9f14-f2da533bbee2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('cdc894dd-a4de-4a27-af40-39ba17157484',1720055291167,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-ws-role-mt','{\"id\":\"bf99d789-2432-4a2c-a052-12fe3893d9a7\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('cf5b96f7-e188-4398-9d3e-a9583870d2b6',1720055294315,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/ws1','{\"id\":\"d3c83741-4d7c-4f8d-a967-e145f43a1f37\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cfd11fe9-050b-47dd-a021-22bcdd8915b7',1720055347906,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','{\"id\":\"d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('d06c8c15-594a-4747-8b74-9f89c228b98d',1720055351857,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','users/e4b2c29c-756d-4125-bf6f-3843746d3d08/role-mappings/clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','[{\"id\":\"7e671689-c837-446c-866b-3bbfe10af02a\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('d07c6788-719c-4102-99d0-ae676d16c557',1720055318970,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-ws-role-mt','{\"id\":\"cc9dc9b5-3045-4619-b164-63b0161e86cc\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d13cf5e7-dfdf-4058-aa35-7daf6172f1a8',1720055366693,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_ws3-admin','{\"id\":\"fda30a7a-71d8-468b-8abf-e73c5e5e5458\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d24555ca-5a35-4a27-9fa8-696b2f5d34f6',1720055349099,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_organization-user-role-manager/composites','[{\"id\":\"1cc839b9-3de0-403b-a2a3-37aa4f395166\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"77af2acf-b3b8-4bd7-8dc9-9acacfd8460f\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"57fbaac8-86cd-436b-8590-01c7b1ddcb01\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('d4141100-694a-4a9c-863f-6acc67fe7235',1720055227524,'org1','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/client-secret','{\"type\":\"secret\",\"value\":\"KlOqv2Ii93rmOltdMmCDEKny0ujdDK3Q\"}',NULL,'CLIENT'),('d42d76f1-095a-4ec4-a5eb-49b5d5bec4f7',1720055262540,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_og-role-usr','{\"id\":\"c4703494-50c6-49d3-94ae-5a2077bb9d92\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d4aa4257-ed71-484f-bbc4-3d83c2df61a4',1720055318497,'org4','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/client-secret','{\"type\":\"secret\",\"value\":\"DLhMXGhO8ntyOkYMKgB04EcQULdhdggD\"}',NULL,'CLIENT'),('d6ded9e1-43a5-478c-8591-67ac2f21114d',1720055348337,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-own-mt','{\"id\":\"372d9b70-6912-4347-8761-ed4ec9dc5ec6\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d72f2923-d6f1-49c3-93a3-b125c8c3cb6e',1720055318106,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10','{\"id\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('d733deef-91f4-42cf-ae57-ff17ac3425e0',1720055318342,'org4','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c8081e92-8564-41bd-a38a-e381df72e417/client-secret','{\"type\":\"secret\",\"value\":\"eP3GNA3u6fzRHOREWZeMvin3vKGZoP5d\"}',NULL,'CLIENT'),('d7a5ea21-bd68-4c08-a78a-2f2c818606d2',1720055251165,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/ws3','{\"id\":\"1881f2ef-cef6-458e-9940-b08341f1abad\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d7d4639d-e63d-4c44-a9d5-53e30e984d83',1720055366654,'org5','CREATE','org5','c4dc76fb-a8ec-4565-b899-384117fcb403','fe7017be-5aed-40e6-a190-326b86670c59','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_ws3-admin','{\"id\":\"7a0d541d-53bc-4eaf-901e-3c442c5f25c7\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d98704b7-2ae5-4468-b8ba-ae2506c3c13f',1720055300797,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_ws2-admin','{\"id\":\"5694d100-804e-4fdf-85d2-04d3efa04d7e\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d9d612ee-1b8b-4794-9f48-6a4fc3f5f9ef',1720055322302,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','users/883922dc-0db0-4924-b24e-288971d44e3e/role-mappings/clients/fe590829-5a72-46df-b480-593cccd24fca','[{\"id\":\"55e03eed-689a-419b-8069-2ccf47c1185c\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"fe590829-5a72-46df-b480-593cccd24fca\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('dac170b1-cae3-4fd3-817f-c38ccb06c6e6',1720055347990,'org5','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/client-secret','{\"type\":\"secret\",\"value\":\"TE9w9EZ7SUddPXfc3US2EH038UH7Mrpa\"}',NULL,'CLIENT'),('db2f0978-ffb0-48e6-a016-39deb5e3ac25',1720055266384,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_ws1-admin/composites','[{\"id\":\"fce977e5-f65f-4bf3-93cf-8ad51dfe670a\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"280cf8d4-9945-4435-a04b-35baa75ab475\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('dbd9e089-3fd4-4be6-bdba-4ecaff9baf40',1720055228898,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_organization-user-role-manager','{\"id\":\"f341d9f0-53cf-4cdd-a571-560193e475ab\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('dc92cbd6-19df-4f31-878b-6ca5cce1c644',1720055281153,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/_ws3-admin','{\"id\":\"4018e577-0f65-44bd-8d6c-e65a2f4fda91\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('dda6440c-2a03-45fb-a61d-71f2a2539b1b',1720055292149,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/65594d4f-8662-4ac4-9a06-a075380e61f0/role-mappings/clients/673fe574-2aad-4c41-8fdc-9c3e7ac04048','[{\"id\":\"21af0f32-3f5e-4956-b7b6-82d41c598ab5\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"673fe574-2aad-4c41-8fdc-9c3e7ac04048\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('de4a98cf-84f9-4bc7-8a3e-5e6db40205aa',1720055307609,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_ws3-admin','{\"id\":\"cb2356ac-a111-4d44-84a3-7372e51273b4\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('df6a6f26-a22b-47b2-8ea1-f512e4221566',1720055319435,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_organization-user-role-manager','{\"id\":\"6b218d00-24f1-40b7-9b49-ed040de6885a\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e01b74b2-269f-4034-bf86-dff1b227e062',1720055263302,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_organization-user-role-manager/composites','[{\"id\":\"7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"183a8d28-12e2-4943-bbfa-cd841664c774\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}},{\"id\":\"916bd9f8-0514-47d8-ba7d-b683d68307f4\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a38acb55-dd09-4a1d-a9e3-9d2811351c30\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('e02c3b18-89ea-427f-890e-cc0936d13f69',1720055281209,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_ws3-admin','{\"id\":\"85cd7787-57e2-4db6-82fd-8d30777e84ce\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e046e1e6-7fc3-45d8-9098-bd8c41b2ff65',1720055350153,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/e4b2c29c-756d-4125-bf6f-3843746d3d08','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('e0d5faf1-eb4c-4e9f-86b2-0c850411e6f3',1720055321827,'org4','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('e142ec4b-553c-4b84-86c4-8d05eb1eb643',1720055229227,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_organization-user-manager','{\"id\":\"759d6dbb-128a-4323-8546-e129d85e0952\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e177897a-e16b-4a46-a09d-0edba0ae7690',1720055228133,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/_og-ws-role-mt','{\"id\":\"5a05883a-93c3-453e-81d2-8a9a17c90948\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e2576714-5140-4a3c-8a18-7db6808b7c6c',1720055273623,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/7b641f77-acc3-4adc-9f14-f2da533bbee2/roles/_ws2-admin','{\"id\":\"ee97e63b-3349-4a6b-ac77-80581c71f31b\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e3c748ae-5441-4b0e-b013-d5dc7ec4766c',1720055290516,'org3','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/client-secret','{\"type\":\"secret\",\"value\":\"gQ01DrZTMEBbfrkX1mTy4AT9DOs4nC4U\"}',NULL,'CLIENT'),('e45e6c61-8a63-4c8e-a2d2-e97d76222d28',1720055319839,'org4','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('e4d2c4ec-f00d-4320-a40c-9feb3834cde5',1720055263623,'org2','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('e69ba3ae-f9bc-4354-a205-faad7bfcdbee',1720055291081,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-own-mt','{\"id\":\"8c5d984b-ac7d-4a39-8905-91cc1c90a4f1\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e89742f8-224a-463b-b492-a16ceed7b220',1720055347777,'org5','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/5a70c154-dc6c-438c-85ba-0df54eb491c6/client-secret','{\"type\":\"secret\",\"value\":\"wRjyexG0cA9mupeeN6QGziKqFCugZX0J\"}',NULL,'CLIENT'),('e8dbba3c-756b-4e7b-bbe6-822b2955f53e',1720055230573,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/79261952-4862-4a4d-8da1-1ce8ca3b1481','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('ece707ae-94f3-48bf-8f07-bc3cf4398941',1720055227072,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415','{\"id\":\"064213d5-bf33-4ac5-b7be-eea67610f415\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('ede9f4cf-4b63-48d2-a07a-38ec28d7cd4a',1720055236667,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/064213d5-bf33-4ac5-b7be-eea67610f415/roles/ws1','{\"id\":\"c3fd568d-8abd-4c67-97ff-9fe18f6d9bab\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f16414a2-7218-41db-80d1-8781a32df88b',1720055319508,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_organization-user-role-manager/composites','[{\"id\":\"a62b794d-1d46-4f7b-89b9-a8db7cad25d8\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"cc9dc9b5-3045-4619-b164-63b0161e86cc\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}},{\"id\":\"22cdf5ce-93a6-442f-9dad-d17b74fa90da\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('f1cd909d-996b-437f-acb5-000aa33e3f27',1720055281094,'org2','CREATE','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30','cb005670-e056-42e4-ab27-64d7d439de6a','172.22.0.5','clients/a38acb55-dd09-4a1d-a9e3-9d2811351c30/roles/ws3','{\"id\":\"bd88ceb7-348e-4b34-acf7-cd1bf3257a4b\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f1fff609-7f17-4428-9b30-0c0b539168bd',1720055319010,'org4','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/323db795-227a-46f6-bdde-d509c310ef10/roles/_og-ws-mt','{\"id\":\"4bd8b58a-9aa3-47e0-afb1-080d8e80f54c\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f34f977c-d1dc-4106-9ecc-d3f79eb04036',1720055348427,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/c4dc76fb-a8ec-4565-b899-384117fcb403/roles/_og-ws-role-mt','{\"id\":\"77af2acf-b3b8-4bd7-8dc9-9acacfd8460f\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f39021a6-f258-4661-a7fb-88084811d601',1720055290673,'org3','ACTION','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/77e7fcf2-c508-4740-8fec-308f4472cfd7/client-secret','{\"type\":\"secret\",\"value\":\"Zw9houGsulvNnVtAqMhSzBZpRQsIBEBU\"}',NULL,'CLIENT'),('f427ce06-dcc2-4cfe-bb0a-f2eeb0cb2986',1720055265937,'org2','UPDATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5',NULL,'{\"enabled\":true}',NULL,'REALM'),('f4ba64f6-bfe5-4454-b5f4-8c8dffaca35f',1720055307774,'org3','CREATE','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf','65594d4f-8662-4ac4-9a06-a075380e61f0','172.22.0.5','users/3f31b23a-8996-4cba-8ab9-6c78d25b9fa5/role-mappings/clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34','[{\"id\":\"67baa771-e452-4b95-9802-2de4ed5d4f92\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6ca71d5-4ebb-461d-b35c-d83a90681c34\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f630d86c-f505-4793-bde4-05044fd4c839',1720055322266,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_ws1-admin/composites','[{\"id\":\"b744684e-5231-49d3-855a-8bd52a1c4cce\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"7dfcfa49-c812-4c03-b45a-8defe69cd28b\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"323db795-227a-46f6-bdde-d509c310ef10\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('f82cfe40-ee43-4cb0-89a3-36237929eecb',1720055348958,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_organization-manager/composites','[{\"id\":\"69ca3868-e401-4cf4-bc2a-822500f61fa0\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"372d9b70-6912-4347-8761-ed4ec9dc5ec6\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"789d6bc9-c2cb-464c-8d3f-f8044c15becc\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"e6654ab6-c8ec-4b40-9bf6-8c5f8a9d4caf\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"1cc839b9-3de0-403b-a2a3-37aa4f395166\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"77af2acf-b3b8-4bd7-8dc9-9acacfd8460f\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"57fbaac8-86cd-436b-8590-01c7b1ddcb01\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"5f16cb19-4607-4e35-878c-9ad96b2e819c\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"cab739bd-37da-4ebb-98b7-6ad36963910a\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"765fb986-1acf-473f-b70d-18aa5857ed5e\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d9558b6d-e578-4475-a8f6-a330bc096e1a\",\"attributes\":{}},{\"id\":\"8a103ba5-0f32-412e-9df7-935be76c269a\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d9558b6d-e578-4475-a8f6-a330bc096e1a\",\"attributes\":{}},{\"id\":\"dcaa786e-65bb-493b-82b7-ca9a8a98c06e\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d9558b6d-e578-4475-a8f6-a330bc096e1a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('f8427bff-1b4c-4c9c-9db0-8a906f78ea0e',1720055227454,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5','{\"id\":\"04458ae7-60f6-44cd-a035-5a396eb993d5\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('f9a8bf24-ff61-41c7-9448-29847947c368',1720055349286,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd/roles/_organization-user-manager/composites','[{\"id\":\"1cc839b9-3de0-403b-a2a3-37aa4f395166\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}},{\"id\":\"57fbaac8-86cd-436b-8590-01c7b1ddcb01\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c4dc76fb-a8ec-4565-b899-384117fcb403\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('fc19ea2d-004b-4035-9369-bb39a7ff5d82',1720055329689,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','users/883922dc-0db0-4924-b24e-288971d44e3e/role-mappings/clients/fe590829-5a72-46df-b480-593cccd24fca','[{\"id\":\"83f846cc-ee9e-4bdb-b039-2f21a0349181\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"fe590829-5a72-46df-b480-593cccd24fca\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fc20c0f3-3033-4220-99cd-3d22a72f5346',1720055349483,'org5','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/fe7017be-5aed-40e6-a190-326b86670c59/role-mappings/clients/d9558b6d-e578-4475-a8f6-a330bc096e1a','[{\"id\":\"72192981-125e-46dd-aca7-35af9c38c70d\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d9558b6d-e578-4475-a8f6-a330bc096e1a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('fc8bac6f-8baa-4621-bcf6-bedb84eba490',1720055230724,'org1','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/79261952-4862-4a4d-8da1-1ce8ca3b1481/role-mappings/clients/04458ae7-60f6-44cd-a035-5a396eb993d5','[{\"id\":\"22879c93-561f-4935-8778-e581ec286621\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"04458ae7-60f6-44cd-a035-5a396eb993d5\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fc9f8beb-edaf-4d4e-a544-e0f5237714f5',1720055290756,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/f6ca71d5-4ebb-461d-b35c-d83a90681c34','{\"id\":\"f6ca71d5-4ebb-461d-b35c-d83a90681c34\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('fe55efb3-b812-4e2c-b69f-dc39cdd6ff50',1720055264241,'org2','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','users/e18d56f4-d90e-4c00-a402-98bb4ce3a55b','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('feb5e083-506e-443e-8980-56cf51c51010',1720055322205,'org4','CREATE','org4','323db795-227a-46f6-bdde-d509c310ef10','94673dfb-c3f4-4ff6-a269-79fb12871f00','172.22.0.5','clients/fe590829-5a72-46df-b480-593cccd24fca/roles/_ws1-admin','{\"id\":\"55e03eed-689a-419b-8069-2ccf47c1185c\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('fec0ef15-8e59-4fc7-9993-577427b8e9e4',1720055251269,'org1','CREATE','org1','064213d5-bf33-4ac5-b7be-eea67610f415','3e11349f-e4f6-47f3-80ad-d2a14e410dcc','172.22.0.5','clients/04458ae7-60f6-44cd-a035-5a396eb993d5/roles/_ws3-admin','{\"id\":\"4d8d3678-b288-4dee-8423-eb57bd465b03\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('fff32f3e-d441-4234-95c4-1490ac269632',1720055291194,'org3','CREATE','34551b50-154e-45d3-a330-d06cf0168fb9','1e661719-8161-4c86-b686-a215cbcff768','3ac94582-416f-4654-8f64-70599142462d','172.22.0.5','clients/19f88bac-766a-42e7-8df2-e247cd3f10bf/roles/_og-ws-role-usr','{\"id\":\"856e6390-b8ad-4c9f-91c9-8f7c443ec661\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('04ac20c5-196e-4556-b822-a420289ad2fc',NULL,'reset-credential-email','org3','6a31cd4f-644d-4809-b227-05b9937aa086',0,20,0,NULL,NULL),('04bc55d0-52a3-4165-830f-6b422f9668ad',NULL,'auth-cookie','org3','4f6c0fb4-47b2-4e55-8a71-9aac266c032c',2,10,0,NULL,NULL),('06668c92-4c8a-476d-968c-69c40b577e2c',NULL,'registration-page-form','org4','ba04b73a-1b83-4d3d-b56b-e64326d73009',0,10,1,'5d9110ad-372f-4671-be77-e6fa30f9b056',NULL),('0941849c-fae7-4ae6-bfb1-1e48214647a0',NULL,'idp-review-profile','org2','54c6989a-6789-4fa9-9970-ff44d1aa62ec',0,10,0,NULL,'c625ec7d-c28d-49c7-bf06-8599a52b4899'),('09e95882-73e5-41d6-b304-430742a3fd3c',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','57f45352-8042-4c30-80f9-172ca2ddab0e',1,20,1,'85ac3c48-2753-4284-8b12-73c6cdea6882',NULL),('0c32fba5-b355-4197-87ae-d847a179a76f',NULL,NULL,'org2','3d251077-5c59-4e90-9e6d-445eb0f4f241',2,30,1,'acab5d82-ff67-4903-8154-d69dcab76cd5',NULL),('0cb91ef1-49e7-4247-a819-de70886d348c',NULL,'auth-cookie','org2','3d251077-5c59-4e90-9e6d-445eb0f4f241',2,10,0,NULL,NULL),('0ce2e514-99a8-42ca-96c0-95ba28bbe7a4',NULL,'idp-confirm-link','org3','ef273dfe-e4f8-49ec-bad8-7cc8d401feb6',0,10,0,NULL,NULL),('0e70b107-2c53-4c24-b80c-eeca5c5b5533',NULL,'idp-email-verification','org1','f44c431f-b268-41e9-9c08-28ccc47b3ecc',2,10,0,NULL,NULL),('1052b2a6-0454-444f-8115-33929afb594e',NULL,'direct-grant-validate-username','org2','978c975e-af8c-4d0a-93be-25856d3c6aae',0,10,0,NULL,NULL),('10bbf267-1118-4b06-bf76-e711987d3645',NULL,'client-jwt','org3','12ca82d8-ae85-4b77-8dd6-0da1839a6998',2,20,0,NULL,NULL),('110ff2c8-4c92-4f86-9eb0-60c38117310f',NULL,'idp-create-user-if-unique','org1','e4f71f49-0794-443f-95b6-8ad11d3ada9e',2,10,0,NULL,'4805b8ba-e7fb-455a-a850-e8ecde385d4a'),('112732d0-8057-4044-9b9f-421dd816a90e',NULL,NULL,'org4','01bd8a31-5618-4463-a05f-a4a39578f665',1,30,1,'fda2f6a6-44a3-4a1d-88c7-6e4d9f99c9ea',NULL),('11ec3f1d-2e8c-42c4-9935-0015b5d88006',NULL,'direct-grant-validate-otp','org3','90dfd3da-418f-433f-98c8-175457215ae0',0,20,0,NULL,NULL),('12c954ec-ae3e-4a32-a6dd-8d26c073fd33',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','fc82326e-2132-4638-b73c-36d51dcb559a',0,20,1,'b5c49abf-2bbd-4602-b7a4-1199e32e18aa',NULL),('13f8ce01-4d58-4a2a-b466-2c6f12ce7145',NULL,'idp-create-user-if-unique','org5','79d5e9c9-796a-4230-b8ea-cd8f0b1da02c',2,10,0,NULL,'188e1cf1-8e4f-4802-971a-b8018ed40c4d'),('14007d2c-b341-4b3a-a5fb-d211cb693b20',NULL,'reset-credential-email','org4','ac329bdf-93e4-4a5a-91cc-43258d706cfe',0,20,0,NULL,NULL),('144261d2-90f6-46f8-bf08-de8a559ccf85',NULL,'idp-review-profile','34551b50-154e-45d3-a330-d06cf0168fb9','b081e944-71ff-482f-acb2-381718d5fbe4',0,10,0,NULL,'54531c43-d47c-49d5-9fdd-c1aad3f5b6dd'),('14b3ace5-fb95-4525-9950-19d1c9a0cb5c',NULL,'idp-create-user-if-unique','org4','b5170e76-cc80-4219-a1ef-6d4f5ff59fb2',2,10,0,NULL,'b7bd47a1-84e8-4c38-8af0-2e703bdcf8af'),('14bbd1b1-5c46-4809-9a4a-2b15af2a5ff5',NULL,'auth-spnego','34551b50-154e-45d3-a330-d06cf0168fb9','0a03ef74-3b18-429f-a37a-2b46053155ec',3,20,0,NULL,NULL),('1501938b-3a73-401e-93b1-4634492033f8',NULL,'http-basic-authenticator','org3','853f9f11-d7a1-44cd-a311-f7f53cbaae1b',0,10,0,NULL,NULL),('16f0f598-af87-472c-829b-9eb7c4034b6c',NULL,'auth-otp-form','org1','50536499-25e6-4fbd-bf84-462959c691d1',0,20,0,NULL,NULL),('18500e28-a81b-4131-92a2-47666e543e01',NULL,'client-secret-jwt','org5','72ff433c-a793-4a0b-913d-551a075ab010',2,30,0,NULL,NULL),('1a662b05-e03a-4ac2-b381-3aca6502c307',NULL,'client-jwt','org4','a8a07762-580c-4806-a360-7a7e39693575',2,20,0,NULL,NULL),('1ba397f5-5a3d-46f8-961a-ecc5d10d8cad',NULL,'registration-page-form','org2','2976de61-b959-4758-a91d-8a50db9608e6',0,10,1,'396d8da6-fe25-4302-8898-dfca959389f3',NULL),('1c6b5a89-b04c-41bf-9a89-412425a59ee9',NULL,'auth-username-password-form','34551b50-154e-45d3-a330-d06cf0168fb9','57f45352-8042-4c30-80f9-172ca2ddab0e',0,10,0,NULL,NULL),('1c754366-984c-4f0e-8313-cbac1d88c27b',NULL,NULL,'org3','fefe068b-f553-4d9f-b578-052b75e4c330',1,30,1,'90dfd3da-418f-433f-98c8-175457215ae0',NULL),('1d85b39e-d8fd-4690-855d-510b22339a5c',NULL,'conditional-user-configured','org2','13f5fde8-d8c4-42a1-ab23-77eb3c1dfb1e',0,10,0,NULL,NULL),('1d91f610-ef6c-49c8-9e02-3f6ffa72e3e1',NULL,'docker-http-basic-authenticator','org3','94eb4254-5f47-42e7-abfe-025a9b55f99d',0,10,0,NULL,NULL),('20bf2407-8219-47e2-8ede-8cf0049217df',NULL,'auth-spnego','org2','3d251077-5c59-4e90-9e6d-445eb0f4f241',3,20,0,NULL,NULL),('22c4c5bc-617e-4f86-b212-f8b4c99a15f2',NULL,NULL,'org2','8b2a7420-9eaf-48d8-a28a-368db5354bb7',2,20,1,'8a3dee6e-4f1f-4f90-bf1e-ca9c9a67ffde',NULL),('22fa9c7d-5953-4634-82ec-b5d5f556d6f3',NULL,'conditional-user-configured','org5','79203b04-57e8-4cfb-b420-6173e774f3e2',0,10,0,NULL,NULL),('2399d2f4-933c-46c2-927a-59b516f26731',NULL,NULL,'org2','da5f021d-cd53-4fde-9f7b-ddcecb3aec40',2,20,1,'2d8d1abe-06bc-4df1-96a7-b2da57852894',NULL),('23a4b7dc-3bfe-4ffd-a273-5b415f799012',NULL,'registration-user-creation','org5','a742be73-fef7-4160-9744-fd5f5be9aba8',0,20,0,NULL,NULL),('2579161e-85e6-408e-a158-c58549dfb825',NULL,'auth-otp-form','org5','a06936b4-d7a6-4d53-b59c-f1d4c4afe8fb',0,20,0,NULL,NULL),('26d7d88c-ce48-421e-8d00-1ccf37e62ac3',NULL,'conditional-user-configured','org5','b152534f-d3ba-433c-b4b5-a1cbf41e0df2',0,10,0,NULL,NULL),('278ce7f9-5463-4805-954a-78b84a627d39',NULL,'reset-credentials-choose-user','org4','ac329bdf-93e4-4a5a-91cc-43258d706cfe',0,10,0,NULL,NULL),('27fa7258-caae-466a-acc8-03cf15c08edd',NULL,'registration-recaptcha-action','org5','a742be73-fef7-4160-9744-fd5f5be9aba8',3,60,0,NULL,NULL),('28e22261-6866-49a2-a5a9-6ea0f7e1e6b7',NULL,'client-x509','org1','afd5195d-bbee-4cb0-a7a3-77671a18bdaa',2,40,0,NULL,NULL),('28e73374-4b45-4c55-bb8b-667951d3af6b',NULL,'client-secret-jwt','org1','afd5195d-bbee-4cb0-a7a3-77671a18bdaa',2,30,0,NULL,NULL),('29785c60-aa28-4a7b-87ba-1d1e74117f8a',NULL,NULL,'org1','aecf17b9-3325-454a-8e07-129396c45676',1,20,1,'ffe393f6-4817-4120-9fbe-1a680e88d5c9',NULL),('2aa42931-620e-4970-8498-24fdcad8424b',NULL,'client-secret','org1','afd5195d-bbee-4cb0-a7a3-77671a18bdaa',2,10,0,NULL,NULL),('2aba5d78-1388-4a9b-b2b2-e6a77fb74241',NULL,'docker-http-basic-authenticator','org4','db7b0f5c-6ff8-4a43-ba78-76e195fdafe1',0,10,0,NULL,NULL),('2b938074-b8a2-49d3-af42-c10fa30c09cf',NULL,'direct-grant-validate-username','34551b50-154e-45d3-a330-d06cf0168fb9','1d7125e1-202e-4723-955a-6ae98e10ff22',0,10,0,NULL,NULL),('2bb7a794-2947-437d-bc43-364b788c32f0',NULL,'direct-grant-validate-password','org1','b9c5267e-a331-464f-8e37-de7c6f4c5fe6',0,20,0,NULL,NULL),('2c6196f1-5cbf-4553-b5ac-7ba1a3d1ab01',NULL,'auth-otp-form','34551b50-154e-45d3-a330-d06cf0168fb9','85ac3c48-2753-4284-8b12-73c6cdea6882',0,20,0,NULL,NULL),('2e9339ca-76ad-4b40-9ef1-513c5be1bad1',NULL,'client-secret','org2','b18fe658-476f-45b4-968d-f147030d9a84',2,10,0,NULL,NULL),('2ed49ced-4cd4-4d0a-8466-0b0bdffa899f',NULL,'auth-otp-form','org2','13f5fde8-d8c4-42a1-ab23-77eb3c1dfb1e',0,20,0,NULL,NULL),('30b422bd-0de8-40d6-bcc7-65d51dc1b71e',NULL,NULL,'org2','54c6989a-6789-4fa9-9970-ff44d1aa62ec',0,20,1,'8b2a7420-9eaf-48d8-a28a-368db5354bb7',NULL),('316af109-304a-4d29-ba51-8a0b7dde73a7',NULL,'idp-create-user-if-unique','org2','8b2a7420-9eaf-48d8-a28a-368db5354bb7',2,10,0,NULL,'3e65fee4-ba5b-4266-a984-2bd5d5d09663'),('31713b75-0952-4941-99d9-b3001ce85008',NULL,'auth-spnego','org4','9eb9a5cc-fec6-4663-8026-47ec7c2a25d4',3,20,0,NULL,NULL),('31875330-b221-42db-b0de-b20da8354788',NULL,NULL,'org4','fda3e1b3-94be-4a9b-b3d6-0eda2bd0e638',1,20,1,'9958171c-6c77-4bc2-b6ca-fb3f916eb36e',NULL),('31cf92f2-caf7-4746-aabc-a27168623786',NULL,'registration-page-form','org1','0bc55eb7-5b0d-412a-ac08-c7c4ba936a89',0,10,1,'643a0ef8-c8de-4f7d-b3f7-b76399c6b55f',NULL),('34c221c0-edc1-439e-88c0-81140c513710',NULL,'conditional-user-configured','org4','ae12d31c-5147-424c-b843-e72b49b23761',0,10,0,NULL,NULL),('3502fbac-b17f-4eb7-b75c-3ea503b951b0',NULL,'docker-http-basic-authenticator','org1','c77284e6-2d84-4706-a1ff-ed33342883b6',0,10,0,NULL,NULL),('367d621d-b7ba-4f8e-8e41-888d80ef97e7',NULL,'reset-credential-email','org1','fc57b4cf-7234-4c40-a191-d299412f0065',0,20,0,NULL,NULL),('36a07840-ce46-453a-a59e-e00418ef8aef',NULL,NULL,'org3','4f6c0fb4-47b2-4e55-8a71-9aac266c032c',2,30,1,'e43d3cb0-ddbc-46b5-b9d9-b82909f57df9',NULL),('375b9038-bf49-4aab-9dcb-607b750bce16',NULL,'direct-grant-validate-password','org5','a915d0dd-c883-4ad3-b744-3d94cb585515',0,20,0,NULL,NULL),('38249d13-ec5c-444f-b994-67c3eb3340b9',NULL,'client-secret','org3','12ca82d8-ae85-4b77-8dd6-0da1839a6998',2,10,0,NULL,NULL),('386ef0b9-a796-4a8a-beb8-454f568b175b',NULL,NULL,'org5','94fe3f30-7827-454e-959a-487cfb5fc3c1',2,30,1,'9d67c1af-4cee-4c92-964d-f91d2458ee7e',NULL),('389544cb-7b4d-444d-ab2a-5ada8f90b1a9',NULL,'identity-provider-redirector','org3','4f6c0fb4-47b2-4e55-8a71-9aac266c032c',2,25,0,NULL,NULL),('38bb69e4-2885-465c-94f3-b0166ed9a584',NULL,'client-x509','org4','a8a07762-580c-4806-a360-7a7e39693575',2,40,0,NULL,NULL),('38d75b20-6b47-4e6b-a08f-95f5b209c9b9',NULL,'conditional-user-configured','34551b50-154e-45d3-a330-d06cf0168fb9','cc67a7bf-9d5a-4192-8462-711edd2807bf',0,10,0,NULL,NULL),('390b2361-9a3c-4835-b3fa-ec847c82fa25',NULL,'registration-user-creation','34551b50-154e-45d3-a330-d06cf0168fb9','10f18513-1977-4ef2-976c-2ef6ca8dacc7',0,20,0,NULL,NULL),('39d94b08-af52-4a1f-81d3-e99e21c8ae98',NULL,'idp-username-password-form','org3','78e1126e-c069-435a-8ab5-2e227adbe659',0,10,0,NULL,NULL),('3b945c77-b7d4-4859-98ce-b2280a1a8943',NULL,'client-secret-jwt','org3','12ca82d8-ae85-4b77-8dd6-0da1839a6998',2,30,0,NULL,NULL),('3c1e5311-3bd1-47aa-9370-70da786b2068',NULL,'idp-email-verification','org5','255beb8f-ec17-4de1-bdae-c75d94959d01',2,10,0,NULL,NULL),('3f3af777-2802-41f8-8a89-e98521ee05bd',NULL,'registration-user-creation','org1','643a0ef8-c8de-4f7d-b3f7-b76399c6b55f',0,20,0,NULL,NULL),('3ff3f46e-da24-4619-a94e-82898056dc99',NULL,'direct-grant-validate-password','34551b50-154e-45d3-a330-d06cf0168fb9','1d7125e1-202e-4723-955a-6ae98e10ff22',0,20,0,NULL,NULL),('408b9b8f-e589-4527-a841-d5de51f59819',NULL,NULL,'org3','b17ddebd-5e92-455b-a7bd-6adda7416671',0,20,1,'eafcea37-cc4b-492a-88ab-5b1698144640',NULL),('44b786a6-61c4-479e-9c0e-78e6b2827608',NULL,NULL,'org1','8d533e8c-b2a7-4c31-90f8-959a82534f27',2,30,1,'54edbbac-72ac-4300-bfd1-82193c1360d1',NULL),('456269aa-7c63-4a0f-a95e-e19d6450b749',NULL,NULL,'org1','e4f71f49-0794-443f-95b6-8ad11d3ada9e',2,20,1,'eb50f767-705d-4541-9f4c-5705de2e3760',NULL),('45a20060-edad-46dd-995e-814e48e8253c',NULL,'registration-recaptcha-action','org3','59891fea-7c07-4157-b7dc-898417ac6097',3,60,0,NULL,NULL),('45b190f7-1ca5-41e5-b701-3280c8822129',NULL,'direct-grant-validate-password','org3','fefe068b-f553-4d9f-b578-052b75e4c330',0,20,0,NULL,NULL),('4657285a-0f69-44a7-8006-b08f74ebe2f3',NULL,'idp-email-verification','org2','da5f021d-cd53-4fde-9f7b-ddcecb3aec40',2,10,0,NULL,NULL),('483ca0d0-d525-4b49-8bed-fb44f753d95b',NULL,'client-jwt','org5','72ff433c-a793-4a0b-913d-551a075ab010',2,20,0,NULL,NULL),('49a19b8c-f61a-42be-aa34-7e2572bcf339',NULL,'reset-credentials-choose-user','34551b50-154e-45d3-a330-d06cf0168fb9','9841af39-2abe-45e1-b40b-9055708ff252',0,10,0,NULL,NULL),('49cc62e2-5fa0-4ede-85ab-815b1aef5749',NULL,'registration-terms-and-conditions','org3','59891fea-7c07-4157-b7dc-898417ac6097',3,70,0,NULL,NULL),('4a5d8e4c-b19e-4c4c-8d22-477db521f746',NULL,'conditional-user-configured','org2','02cf5cd2-4a75-4901-bf60-c49cac458176',0,10,0,NULL,NULL),('4c8a1797-c77b-4662-8a87-9e6670951bb1',NULL,'registration-password-action','org2','396d8da6-fe25-4302-8898-dfca959389f3',0,50,0,NULL,NULL),('4c9c8a92-9dfa-4b87-aefa-69c65d3a71cd',NULL,'http-basic-authenticator','34551b50-154e-45d3-a330-d06cf0168fb9','5dab4f22-3a5c-4275-a279-6526b32268c8',0,10,0,NULL,NULL),('4d7800f8-d7fd-4f8e-a397-522fe3917797',NULL,'idp-create-user-if-unique','org3','eafcea37-cc4b-492a-88ab-5b1698144640',2,10,0,NULL,'1d3f7d73-5c67-4284-a316-b41151e33c21'),('4fcc045d-6d14-49c3-9dd0-9cec775563ff',NULL,'client-x509','org3','12ca82d8-ae85-4b77-8dd6-0da1839a6998',2,40,0,NULL,NULL),('52ec33c3-7a84-444d-8e7a-16dd5001f0d7',NULL,NULL,'org4','b5170e76-cc80-4219-a1ef-6d4f5ff59fb2',2,20,1,'6d2e62bb-8195-4427-be82-69014acd221b',NULL),('565a134c-10c1-4f3c-aaaf-e5844c5b2308',NULL,'reset-otp','org4','9ac4c6f2-c6b1-466a-b09b-75da54f7a0a8',0,20,0,NULL,NULL),('56dd6c95-4a69-4b48-b719-fcae68804deb',NULL,NULL,'org3','27aba9b0-0313-497c-961d-ce4b310a8357',2,20,1,'78e1126e-c069-435a-8ab5-2e227adbe659',NULL),('588afcdd-fc49-4191-af3e-2225f3f298c0',NULL,'auth-username-password-form','org1','54edbbac-72ac-4300-bfd1-82193c1360d1',0,10,0,NULL,NULL),('58a01e62-eab0-4709-9762-68057f85eb5c',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','1d7125e1-202e-4723-955a-6ae98e10ff22',1,30,1,'72013fff-d764-4980-9c6f-7c2c9c4b185f',NULL),('58b1100a-672d-482c-b0af-abdcf35df21b',NULL,'docker-http-basic-authenticator','34551b50-154e-45d3-a330-d06cf0168fb9','d181fc35-da3d-4ce6-81fc-0ef1d6bfb116',0,10,0,NULL,NULL),('5a2b4201-1668-43f8-b6dd-b383e090480b',NULL,'idp-email-verification','34551b50-154e-45d3-a330-d06cf0168fb9','b5c49abf-2bbd-4602-b7a4-1199e32e18aa',2,10,0,NULL,NULL),('5a568f2a-3b1e-41e4-8fc9-50046c7e6900',NULL,'reset-password','34551b50-154e-45d3-a330-d06cf0168fb9','9841af39-2abe-45e1-b40b-9055708ff252',0,30,0,NULL,NULL),('5b716457-a81d-4e20-a18d-2130570bfe1d',NULL,'idp-username-password-form','org4','53de4a68-cca9-4f0e-9c64-128b23c5ccfd',0,10,0,NULL,NULL),('5ba1b258-ea7e-41f7-96ee-fc123b6ee040',NULL,'direct-grant-validate-otp','org2','02cf5cd2-4a75-4901-bf60-c49cac458176',0,20,0,NULL,NULL),('5e99dfcd-7399-4b02-ad5b-b6bc5f6bb9bf',NULL,'conditional-user-configured','org4','fda2f6a6-44a3-4a1d-88c7-6e4d9f99c9ea',0,10,0,NULL,NULL),('5f251e9a-48f3-4248-99a9-16b6dfe6818f',NULL,NULL,'org4','d7b703bc-77ab-499e-9f0e-3a4efdd7cfd6',2,20,1,'53de4a68-cca9-4f0e-9c64-128b23c5ccfd',NULL),('5f54a26e-78d8-4548-bb7d-3a09b24d4454',NULL,'client-secret-jwt','org4','a8a07762-580c-4806-a360-7a7e39693575',2,30,0,NULL,NULL),('5fed651f-efc4-4be5-9e34-187e2276e810',NULL,'idp-email-verification','org3','27aba9b0-0313-497c-961d-ce4b310a8357',2,10,0,NULL,NULL),('603e0b88-f267-4406-8220-12ad6ad288bb',NULL,'client-jwt','org1','afd5195d-bbee-4cb0-a7a3-77671a18bdaa',2,20,0,NULL,NULL),('60a7f423-2576-49e5-abcf-c565388c405d',NULL,'conditional-user-configured','34551b50-154e-45d3-a330-d06cf0168fb9','85ac3c48-2753-4284-8b12-73c6cdea6882',0,10,0,NULL,NULL),('610a8b3f-73f5-4267-a8c2-ab8be36ddd48',NULL,NULL,'org1','fc57b4cf-7234-4c40-a191-d299412f0065',1,40,1,'9f5ff2f9-e0a8-42eb-90e8-7158ffc00748',NULL),('614a578c-a9fb-49c0-84f4-67f29703308d',NULL,'idp-confirm-link','org4','6d2e62bb-8195-4427-be82-69014acd221b',0,10,0,NULL,NULL),('634bcda6-420a-480c-9a48-7c9b1e2ed01e',NULL,'client-secret','org4','a8a07762-580c-4806-a360-7a7e39693575',2,10,0,NULL,NULL),('635c49d4-3941-4e48-981e-8d0691cbbcba',NULL,'auth-otp-form','org1','ffe393f6-4817-4120-9fbe-1a680e88d5c9',0,20,0,NULL,NULL),('63d1abd4-c87e-4221-9b25-08f79f2d46cc',NULL,'reset-password','org2','67f43f71-1f00-4348-a93b-187b32eafb27',0,30,0,NULL,NULL),('6507e1ef-4df4-408a-9245-3ae042a938d0',NULL,'registration-recaptcha-action','org4','5d9110ad-372f-4671-be77-e6fa30f9b056',3,60,0,NULL,NULL),('6665f0ed-1dd6-4c4c-b836-116f7b4f5137',NULL,'idp-username-password-form','org5','71639094-cd96-4647-822f-b231c8d5e793',0,10,0,NULL,NULL),('67a77881-3cd1-4e80-8fa7-fc075cdc4c3b',NULL,'direct-grant-validate-otp','org5','8bc5fcea-b147-4a73-92b3-cc24f9a5407a',0,20,0,NULL,NULL),('68479268-7841-4915-bde8-3c7770d185d3',NULL,NULL,'org4','ac329bdf-93e4-4a5a-91cc-43258d706cfe',1,40,1,'9ac4c6f2-c6b1-466a-b09b-75da54f7a0a8',NULL),('68ad1d2f-e2da-4ecd-9e51-eb93069c8f33',NULL,'conditional-user-configured','org3','496e15c7-52c1-4592-a625-3b05d67fab00',0,10,0,NULL,NULL),('6bb74846-77c5-4aa3-99bd-1bad8cfee5a9',NULL,'client-x509','org2','b18fe658-476f-45b4-968d-f147030d9a84',2,40,0,NULL,NULL),('6c62b1ca-bf8c-47af-9f89-b16bb46d790c',NULL,'client-jwt','org2','b18fe658-476f-45b4-968d-f147030d9a84',2,20,0,NULL,NULL),('6d356867-0340-4753-bc4c-d5744b91428c',NULL,'idp-review-profile','org1','8cf015c4-0f7a-436e-8231-3067315d867b',0,10,0,NULL,'a5aaf25c-b90c-4f76-bfe8-36d49db5ab9a'),('6f22ef4e-5fca-4088-9cd6-7ebf27cbdfd6',NULL,'reset-password','org3','6a31cd4f-644d-4809-b227-05b9937aa086',0,30,0,NULL,NULL),('71923451-a5cf-48f9-8baa-feabd204ae69',NULL,NULL,'org5','79d5e9c9-796a-4230-b8ea-cd8f0b1da02c',2,20,1,'4b258578-5c06-4519-b30d-1949cd894467',NULL),('72455e40-e1c6-4817-96d2-df74de756478',NULL,'registration-password-action','org3','59891fea-7c07-4157-b7dc-898417ac6097',0,50,0,NULL,NULL),('735e8b04-be0a-47aa-aa5c-909c9badcfc8',NULL,'direct-grant-validate-username','org4','01bd8a31-5618-4463-a05f-a4a39578f665',0,10,0,NULL,NULL),('742cd817-16f0-4f57-a6be-3d5b4a4862bc',NULL,'auth-otp-form','org4','ae12d31c-5147-424c-b843-e72b49b23761',0,20,0,NULL,NULL),('7588e6e1-d49d-4c2e-b65f-4daa6c659097',NULL,'direct-grant-validate-username','org5','a915d0dd-c883-4ad3-b744-3d94cb585515',0,10,0,NULL,NULL),('764859d9-678c-4b73-baa6-25fe03bd458a',NULL,'registration-recaptcha-action','org2','396d8da6-fe25-4302-8898-dfca959389f3',3,60,0,NULL,NULL),('76d65bf7-097d-44a3-adb7-4b12f72d6a50',NULL,'idp-confirm-link','34551b50-154e-45d3-a330-d06cf0168fb9','fc82326e-2132-4638-b73c-36d51dcb559a',0,10,0,NULL,NULL),('7728ae79-8630-411d-a084-92b64fff6275',NULL,'conditional-user-configured','org4','9ac4c6f2-c6b1-466a-b09b-75da54f7a0a8',0,10,0,NULL,NULL),('773ccb85-43c4-48f4-b45b-b05b7bdf8590',NULL,'reset-credential-email','34551b50-154e-45d3-a330-d06cf0168fb9','9841af39-2abe-45e1-b40b-9055708ff252',0,20,0,NULL,NULL),('7838b6d8-8f93-4056-b961-d6a1cdf1ea6b',NULL,NULL,'org3','78e1126e-c069-435a-8ab5-2e227adbe659',1,20,1,'6b2c6565-5500-4206-a152-f616773c8c06',NULL),('78eb8ea8-40af-46d8-a497-73d91bbc79c8',NULL,'registration-terms-and-conditions','org2','396d8da6-fe25-4302-8898-dfca959389f3',3,70,0,NULL,NULL),('79d807b5-42d8-4046-bef9-7f4f41c1c9af',NULL,'registration-terms-and-conditions','34551b50-154e-45d3-a330-d06cf0168fb9','10f18513-1977-4ef2-976c-2ef6ca8dacc7',3,70,0,NULL,NULL),('7b492b74-61c8-4f2d-8a3f-a292c9f7da29',NULL,'http-basic-authenticator','org1','5dab00f0-494c-4507-aec7-908b9a126990',0,10,0,NULL,NULL),('7b6636f0-2581-4f9f-803e-fe353c4c8c04',NULL,'reset-otp','34551b50-154e-45d3-a330-d06cf0168fb9','cc67a7bf-9d5a-4192-8462-711edd2807bf',0,20,0,NULL,NULL),('7f9e33a5-9252-43c9-bc5a-7e5390cd3d17',NULL,'http-basic-authenticator','org5','8406bbce-4996-459a-9d97-6f25d5f0bd2d',0,10,0,NULL,NULL),('804d35cb-eab5-4db7-8ae8-53b52e1d41b2',NULL,'auth-otp-form','org4','9958171c-6c77-4bc2-b6ca-fb3f916eb36e',0,20,0,NULL,NULL),('80993844-16a5-41d6-94d5-21a6a3b42611',NULL,'idp-review-profile','org5','a712225e-0969-4f4e-a9ac-740a15ac75e0',0,10,0,NULL,'bec39bbc-6868-4fe9-a128-53bfbb9bde72'),('814e2628-16f9-4522-988b-88ebd39e70a0',NULL,'client-secret-jwt','34551b50-154e-45d3-a330-d06cf0168fb9','fa872651-1e01-49ed-a1e7-3f7515a3ffcf',2,30,0,NULL,NULL),('845708ee-38a9-408c-8ee4-be1ebea4b6f8',NULL,'client-x509','34551b50-154e-45d3-a330-d06cf0168fb9','fa872651-1e01-49ed-a1e7-3f7515a3ffcf',2,40,0,NULL,NULL),('84c995f2-5419-4be7-b5f0-53b62c31474a',NULL,'registration-terms-and-conditions','org1','643a0ef8-c8de-4f7d-b3f7-b76399c6b55f',3,70,0,NULL,NULL),('85dc1ba1-082b-4eda-9752-f998363f3ca5',NULL,NULL,'org3','e43d3cb0-ddbc-46b5-b9d9-b82909f57df9',1,20,1,'496e15c7-52c1-4592-a625-3b05d67fab00',NULL),('86412f82-9c91-4b9d-8603-6960a272ec39',NULL,NULL,'org1','b9c5267e-a331-464f-8e37-de7c6f4c5fe6',1,30,1,'b95dd6d4-c58a-469b-b7b0-bdf2c3277153',NULL),('870909fa-cead-4cb0-ae6a-f6777dd38c57',NULL,'registration-user-creation','org3','59891fea-7c07-4157-b7dc-898417ac6097',0,20,0,NULL,NULL),('881a4a3b-7289-445c-8c1c-80e8eca1bb65',NULL,'conditional-user-configured','org5','a06936b4-d7a6-4d53-b59c-f1d4c4afe8fb',0,10,0,NULL,NULL),('89173a34-231a-49f5-83c6-e89ca052a37b',NULL,'registration-page-form','org5','309abcb7-aaa0-45d8-b511-4212ac4cca8e',0,10,1,'a742be73-fef7-4160-9744-fd5f5be9aba8',NULL),('8a300cfe-3c9d-4647-afb0-c275febcfb2f',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','2f5eccfd-1387-4d05-ba89-eb3c7995b407',1,20,1,'405631b2-a35c-43f2-bf27-73534eeea921',NULL),('8b1544a3-56fa-4d34-b178-e2af5a8893de',NULL,'client-secret','org5','72ff433c-a793-4a0b-913d-551a075ab010',2,10,0,NULL,NULL),('8d1baca6-3f49-45cd-be61-f706a448dcf5',NULL,'docker-http-basic-authenticator','org2','bde5fa7a-9272-4e3b-9bbd-f08f499298f3',0,10,0,NULL,NULL),('8d75eda2-3e35-4bf3-af42-a1baec8bfdeb',NULL,NULL,'org5','a915d0dd-c883-4ad3-b744-3d94cb585515',1,30,1,'8bc5fcea-b147-4a73-92b3-cc24f9a5407a',NULL),('8dda96ae-3bed-4fa8-bead-0ae9fa1ca147',NULL,'conditional-user-configured','org3','33940b73-b9ab-481e-88fb-b711a238de4f',0,10,0,NULL,NULL),('8e19cb9a-9768-4bf9-8a55-fa3bea15b4e1',NULL,'reset-otp','org1','9f5ff2f9-e0a8-42eb-90e8-7158ffc00748',0,20,0,NULL,NULL),('8e38a172-cba3-4bb2-9439-2a439b8f36ae',NULL,'client-x509','org5','72ff433c-a793-4a0b-913d-551a075ab010',2,40,0,NULL,NULL),('8f16b32f-8f91-4325-8032-0c33b13b764f',NULL,NULL,'org4','4049a487-b566-4ea2-95c8-a73dff1eae15',0,20,1,'b5170e76-cc80-4219-a1ef-6d4f5ff59fb2',NULL),('8fa59e9c-caab-4746-92dc-da745e74913e',NULL,'reset-credentials-choose-user','org2','67f43f71-1f00-4348-a93b-187b32eafb27',0,10,0,NULL,NULL),('901d64a2-7309-4aff-a5c0-5aa479039c8f',NULL,'auth-spnego','org1','8d533e8c-b2a7-4c31-90f8-959a82534f27',3,20,0,NULL,NULL),('93d17248-8ec3-40c5-8bcc-3013a77fb5a4',NULL,'registration-user-creation','org4','5d9110ad-372f-4671-be77-e6fa30f9b056',0,20,0,NULL,NULL),('9445ee91-c91f-44b7-be66-c49e04b6b3f3',NULL,NULL,'org5','71639094-cd96-4647-822f-b231c8d5e793',1,20,1,'b152534f-d3ba-433c-b4b5-a1cbf41e0df2',NULL),('9697dc33-3a6b-42ba-abf5-a2882f96ca4a',NULL,'conditional-user-configured','org1','b95dd6d4-c58a-469b-b7b0-bdf2c3277153',0,10,0,NULL,NULL),('97d4bd64-37b4-4f5a-a9c4-307dee57b157',NULL,'http-basic-authenticator','org2','4a1026f7-48fd-479e-b346-7cd9d30d4b76',0,10,0,NULL,NULL),('98f37c6f-de22-4517-b322-ce796f5e7fff',NULL,'idp-username-password-form','org2','2d8d1abe-06bc-4df1-96a7-b2da57852894',0,10,0,NULL,NULL),('9a0f34c4-8a15-4a3f-adca-f4a1258f623c',NULL,NULL,'org4','9eb9a5cc-fec6-4663-8026-47ec7c2a25d4',2,30,1,'fda3e1b3-94be-4a9b-b3d6-0eda2bd0e638',NULL),('9a18bd28-80d3-49d0-b119-dba3b7911127',NULL,'direct-grant-validate-username','org3','fefe068b-f553-4d9f-b578-052b75e4c330',0,10,0,NULL,NULL),('9a58cc90-3312-49bd-b0c2-fcd8e8aab199',NULL,'conditional-user-configured','org2','74c6b36c-68b3-42bf-8354-7e953870ede0',0,10,0,NULL,NULL),('9b0abfee-3562-47ed-a090-26d7cd34942e',NULL,'identity-provider-redirector','org2','3d251077-5c59-4e90-9e6d-445eb0f4f241',2,25,0,NULL,NULL),('9b23e3b7-1854-4e24-aa2a-f73c401b9f0f',NULL,'reset-password','org1','fc57b4cf-7234-4c40-a191-d299412f0065',0,30,0,NULL,NULL),('9b5a25d1-c15e-4159-9511-e9747663689e',NULL,'auth-cookie','org5','94fe3f30-7827-454e-959a-487cfb5fc3c1',2,10,0,NULL,NULL),('9b9d69da-6e12-45f5-b3a7-c3aa33f76b8e',NULL,'conditional-user-configured','org1','9f5ff2f9-e0a8-42eb-90e8-7158ffc00748',0,10,0,NULL,NULL),('9c6b5377-ab19-43f8-9a55-aec4d8e81983',NULL,'auth-cookie','org4','9eb9a5cc-fec6-4663-8026-47ec7c2a25d4',2,10,0,NULL,NULL),('9cadfd81-0d87-41e2-9070-0f3a59a031a8',NULL,'auth-otp-form','org3','496e15c7-52c1-4592-a625-3b05d67fab00',0,20,0,NULL,NULL),('9d622833-0a8f-415a-9529-556fe1bcdfeb',NULL,NULL,'org2','acab5d82-ff67-4903-8154-d69dcab76cd5',1,20,1,'13f5fde8-d8c4-42a1-ab23-77eb3c1dfb1e',NULL),('9ec090e8-ce00-41cf-87fb-a52cce1f05f2',NULL,'registration-password-action','org1','643a0ef8-c8de-4f7d-b3f7-b76399c6b55f',0,50,0,NULL,NULL),('9f584ccd-695a-4762-8620-7099d6a6426e',NULL,'idp-confirm-link','org2','8a3dee6e-4f1f-4f90-bf1e-ca9c9a67ffde',0,10,0,NULL,NULL),('a00cd86d-0c02-4c66-9fa8-f72f6ee2f251',NULL,'direct-grant-validate-otp','34551b50-154e-45d3-a330-d06cf0168fb9','72013fff-d764-4980-9c6f-7c2c9c4b185f',0,20,0,NULL,NULL),('a0e6a044-8b96-4fb6-ac51-c75775e6b232',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','9841af39-2abe-45e1-b40b-9055708ff252',1,40,1,'cc67a7bf-9d5a-4192-8462-711edd2807bf',NULL),('a137e623-52ee-45b8-a5c8-a0738caf1a3b',NULL,'auth-username-password-form','org2','acab5d82-ff67-4903-8154-d69dcab76cd5',0,10,0,NULL,NULL),('a297690d-7e1e-4996-b5b7-c9d9c5d99f2c',NULL,'docker-http-basic-authenticator','org5','9c5a0039-6d6a-4e23-98af-a954afefe4b2',0,10,0,NULL,NULL),('a2c2e9d1-fa72-462e-97bc-182eef4fd235',NULL,'direct-grant-validate-otp','org1','b95dd6d4-c58a-469b-b7b0-bdf2c3277153',0,20,0,NULL,NULL),('a35f91eb-d811-4066-b28a-031525b11212',NULL,'conditional-user-configured','34551b50-154e-45d3-a330-d06cf0168fb9','72013fff-d764-4980-9c6f-7c2c9c4b185f',0,10,0,NULL,NULL),('a4647775-e79c-474f-b94d-aefb82cf0047',NULL,'auth-otp-form','org2','4d7d6bbe-3d84-4b8b-a077-9a5757f4f6a9',0,20,0,NULL,NULL),('a6146b57-c94e-4abc-b9fe-f578d93931a6',NULL,'idp-create-user-if-unique','34551b50-154e-45d3-a330-d06cf0168fb9','e5adc9d9-8a66-4b5d-a660-8a314e48a8cf',2,10,0,NULL,'b853e028-afca-4a4d-aad1-19d33db0c741'),('a6a1beb2-5fcb-43fa-bfe3-6387b7ff41ea',NULL,'registration-password-action','org5','a742be73-fef7-4160-9744-fd5f5be9aba8',0,50,0,NULL,NULL),('a6b95db9-0e15-44f0-b76d-887a4487647d',NULL,'registration-password-action','34551b50-154e-45d3-a330-d06cf0168fb9','10f18513-1977-4ef2-976c-2ef6ca8dacc7',0,50,0,NULL,NULL),('a6ecb00d-96d3-4888-b7dd-2f14cd9dc6f6',NULL,'auth-spnego','org5','94fe3f30-7827-454e-959a-487cfb5fc3c1',3,20,0,NULL,NULL),('a7dbd172-a7bb-4e32-b065-c8a6b40cadf6',NULL,'idp-email-verification','org4','d7b703bc-77ab-499e-9f0e-3a4efdd7cfd6',2,10,0,NULL,NULL),('aaba60f5-034d-4a7d-8b00-969bf74e137e',NULL,NULL,'org2','2d8d1abe-06bc-4df1-96a7-b2da57852894',1,20,1,'4d7d6bbe-3d84-4b8b-a077-9a5757f4f6a9',NULL),('ab701ef3-dcda-466c-81bb-565feffaf737',NULL,'http-basic-authenticator','org4','96da23f7-80c2-40d1-9352-b9e3db3e3916',0,10,0,NULL,NULL),('aca44e5c-b534-4a15-9a4a-2b5f59ef56c5',NULL,NULL,'org5','9d67c1af-4cee-4c92-964d-f91d2458ee7e',1,20,1,'a06936b4-d7a6-4d53-b59c-f1d4c4afe8fb',NULL),('ad571679-2266-4e9e-8590-a0442a94f7de',NULL,'reset-credential-email','org2','67f43f71-1f00-4348-a93b-187b32eafb27',0,20,0,NULL,NULL),('ada533bf-d21d-43db-b5b1-1b4ccf85ecef',NULL,'auth-username-password-form','org5','9d67c1af-4cee-4c92-964d-f91d2458ee7e',0,10,0,NULL,NULL),('af667003-35ff-4956-95f8-6dd149ef314a',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','b081e944-71ff-482f-acb2-381718d5fbe4',0,20,1,'e5adc9d9-8a66-4b5d-a660-8a314e48a8cf',NULL),('b0a7b468-8a03-4447-8ed4-46a297f601ad',NULL,'idp-username-password-form','org1','aecf17b9-3325-454a-8e07-129396c45676',0,10,0,NULL,NULL),('b34eae4a-e8d3-4246-8cc0-6c0e82a20b1b',NULL,'reset-credentials-choose-user','org5','afa2b5bc-4beb-4719-9296-86ae19ad108f',0,10,0,NULL,NULL),('b3e9d145-0f83-472e-9c49-6514bc0134f7',NULL,NULL,'org3','ef273dfe-e4f8-49ec-bad8-7cc8d401feb6',0,20,1,'27aba9b0-0313-497c-961d-ce4b310a8357',NULL),('b4723c26-7914-418f-adaf-58872b7aad57',NULL,'auth-otp-form','org5','b152534f-d3ba-433c-b4b5-a1cbf41e0df2',0,20,0,NULL,NULL),('b47266c3-b951-424e-b026-6eb5a6ad73f5',NULL,NULL,'org2','67f43f71-1f00-4348-a93b-187b32eafb27',1,40,1,'74c6b36c-68b3-42bf-8354-7e953870ede0',NULL),('b61702d1-18ee-410f-b495-7908fbc96b41',NULL,'idp-confirm-link','org1','eb50f767-705d-4541-9f4c-5705de2e3760',0,10,0,NULL,NULL),('b642ce18-6f1e-4d61-9dfa-d99c9b16a14d',NULL,'reset-otp','org2','74c6b36c-68b3-42bf-8354-7e953870ede0',0,20,0,NULL,NULL),('b7e4deff-412e-4aac-b872-1b492527c2b7',NULL,NULL,'org5','afa2b5bc-4beb-4719-9296-86ae19ad108f',1,40,1,'79203b04-57e8-4cfb-b420-6173e774f3e2',NULL),('b85c118b-35f1-42f5-a795-ce606d6d31ec',NULL,NULL,'org1','8cf015c4-0f7a-436e-8231-3067315d867b',0,20,1,'e4f71f49-0794-443f-95b6-8ad11d3ada9e',NULL),('b8ef0b75-746e-4d9b-a771-ef8721585adb',NULL,'registration-password-action','org4','5d9110ad-372f-4671-be77-e6fa30f9b056',0,50,0,NULL,NULL),('b98ae7c8-e09d-422c-b4b6-291b44598dcb',NULL,NULL,'org1','f44c431f-b268-41e9-9c08-28ccc47b3ecc',2,20,1,'aecf17b9-3325-454a-8e07-129396c45676',NULL),('b996313c-1261-469a-a728-5b40d584decc',NULL,'idp-confirm-link','org5','4b258578-5c06-4519-b30d-1949cd894467',0,10,0,NULL,NULL),('baf7634f-9691-4c6d-a7c7-f3c6af21aa73',NULL,'idp-review-profile','org3','b17ddebd-5e92-455b-a7bd-6adda7416671',0,10,0,NULL,'d61c864a-1b77-42b0-97c0-f0d36f5d535c'),('bc35ce55-5c54-4b58-b291-783d14fd3557',NULL,'registration-recaptcha-action','34551b50-154e-45d3-a330-d06cf0168fb9','10f18513-1977-4ef2-976c-2ef6ca8dacc7',3,60,0,NULL,NULL),('bc47fd13-a52e-4bdc-be06-cefd6cf67dec',NULL,'reset-credential-email','org5','afa2b5bc-4beb-4719-9296-86ae19ad108f',0,20,0,NULL,NULL),('be35f5c9-6d5a-43c8-8eb4-35fe18e1ce82',NULL,'registration-terms-and-conditions','org4','5d9110ad-372f-4671-be77-e6fa30f9b056',3,70,0,NULL,NULL),('bfb48912-ca68-4a1a-829d-c600599ee5e3',NULL,'registration-user-creation','org2','396d8da6-fe25-4302-8898-dfca959389f3',0,20,0,NULL,NULL),('c037091a-70f0-4f85-b9da-5ca2354326b1',NULL,'idp-username-password-form','34551b50-154e-45d3-a330-d06cf0168fb9','2f5eccfd-1387-4d05-ba89-eb3c7995b407',0,10,0,NULL,NULL),('c06d939a-0e8f-44ff-b2be-af57641f4734',NULL,NULL,'org2','978c975e-af8c-4d0a-93be-25856d3c6aae',1,30,1,'02cf5cd2-4a75-4901-bf60-c49cac458176',NULL),('c0f5f0e7-0444-4685-bd91-e53b0726bfda',NULL,'direct-grant-validate-otp','org4','fda2f6a6-44a3-4a1d-88c7-6e4d9f99c9ea',0,20,0,NULL,NULL),('c4b804b8-dd90-419c-9b14-d25b36923145',NULL,'reset-otp','org3','33940b73-b9ab-481e-88fb-b711a238de4f',0,20,0,NULL,NULL),('c5b78855-0280-462d-a4af-9930c7d0261b',NULL,'registration-page-form','org3','1e2772e3-b3d7-4dd9-b6a6-eb7bff97b0f5',0,10,1,'59891fea-7c07-4157-b7dc-898417ac6097',NULL),('c5d0fe39-6301-4c2c-9f25-2440ff4dcdd6',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','e5adc9d9-8a66-4b5d-a660-8a314e48a8cf',2,20,1,'fc82326e-2132-4638-b73c-36d51dcb559a',NULL),('c6199e3e-7e2f-40a9-853c-f046eebcfd2e',NULL,NULL,'org4','53de4a68-cca9-4f0e-9c64-128b23c5ccfd',1,20,1,'ae12d31c-5147-424c-b843-e72b49b23761',NULL),('ca23b7d5-1e53-4f26-92cb-3a0b0be0cc1f',NULL,NULL,'org2','8a3dee6e-4f1f-4f90-bf1e-ca9c9a67ffde',0,20,1,'da5f021d-cd53-4fde-9f7b-ddcecb3aec40',NULL),('cb2a862b-9af7-4a40-a912-b2fdb2165b28',NULL,'auth-username-password-form','org4','fda3e1b3-94be-4a9b-b3d6-0eda2bd0e638',0,10,0,NULL,NULL),('cc2230d3-4673-4132-ae26-195b8e1c0d1c',NULL,'identity-provider-redirector','34551b50-154e-45d3-a330-d06cf0168fb9','0a03ef74-3b18-429f-a37a-2b46053155ec',2,25,0,NULL,NULL),('cd00e650-6682-4bf9-8280-ddbf71870587',NULL,'conditional-user-configured','34551b50-154e-45d3-a330-d06cf0168fb9','405631b2-a35c-43f2-bf27-73534eeea921',0,10,0,NULL,NULL),('d0c9c02d-5702-4af7-aea7-c69f3ac87eda',NULL,NULL,'org5','a712225e-0969-4f4e-a9ac-740a15ac75e0',0,20,1,'79d5e9c9-796a-4230-b8ea-cd8f0b1da02c',NULL),('d293f2f1-fd45-4ea3-9230-dab730707c67',NULL,'client-secret','34551b50-154e-45d3-a330-d06cf0168fb9','fa872651-1e01-49ed-a1e7-3f7515a3ffcf',2,10,0,NULL,NULL),('d2ce4c5a-721b-441d-bfe8-dff47617d7bf',NULL,NULL,'org3','6a31cd4f-644d-4809-b227-05b9937aa086',1,40,1,'33940b73-b9ab-481e-88fb-b711a238de4f',NULL),('d350e965-2a2f-45df-9c0a-b68638f6b772',NULL,'reset-otp','org5','79203b04-57e8-4cfb-b420-6173e774f3e2',0,20,0,NULL,NULL),('d38a9a7b-34b2-4548-a96b-ec339485b974',NULL,'conditional-user-configured','org4','9958171c-6c77-4bc2-b6ca-fb3f916eb36e',0,10,0,NULL,NULL),('d53b4bf2-632a-4114-857f-2302f253c673',NULL,NULL,'org5','255beb8f-ec17-4de1-bdae-c75d94959d01',2,20,1,'71639094-cd96-4647-822f-b231c8d5e793',NULL),('d62a8e73-207f-4ca1-a792-58a4b3011663',NULL,'client-secret-jwt','org2','b18fe658-476f-45b4-968d-f147030d9a84',2,30,0,NULL,NULL),('d62ab072-f39f-4aa9-b894-16d31b6d3643',NULL,'auth-spnego','org3','4f6c0fb4-47b2-4e55-8a71-9aac266c032c',3,20,0,NULL,NULL),('d6a1de3d-7cb2-4b76-8130-7b5aa6ef9fe9',NULL,'conditional-user-configured','org3','6b2c6565-5500-4206-a152-f616773c8c06',0,10,0,NULL,NULL),('d6d5a141-b90d-4106-9eff-520c0b0aeb75',NULL,'conditional-user-configured','org1','ffe393f6-4817-4120-9fbe-1a680e88d5c9',0,10,0,NULL,NULL),('d848c440-af19-4deb-a41e-0b1212df143f',NULL,'registration-page-form','34551b50-154e-45d3-a330-d06cf0168fb9','57595fd6-4b62-461c-b3cf-c3b85697499a',0,10,1,'10f18513-1977-4ef2-976c-2ef6ca8dacc7',NULL),('d86d9fb6-4f65-4411-ad28-e623efd9b77f',NULL,'identity-provider-redirector','org4','9eb9a5cc-fec6-4663-8026-47ec7c2a25d4',2,25,0,NULL,NULL),('d9a045d5-eacf-48d4-b97f-d20fd286a920',NULL,NULL,'org1','54edbbac-72ac-4300-bfd1-82193c1360d1',1,20,1,'50536499-25e6-4fbd-bf84-462959c691d1',NULL),('da444add-aa16-400f-b290-095244d0cb59',NULL,'direct-grant-validate-username','org1','b9c5267e-a331-464f-8e37-de7c6f4c5fe6',0,10,0,NULL,NULL),('daaf3c1f-3a79-4003-b447-ff79e4e7d177',NULL,'auth-username-password-form','org3','e43d3cb0-ddbc-46b5-b9d9-b82909f57df9',0,10,0,NULL,NULL),('dc0e9ff1-fade-44c6-8a1f-ead4dbbbc027',NULL,'registration-terms-and-conditions','org5','a742be73-fef7-4160-9744-fd5f5be9aba8',3,70,0,NULL,NULL),('df1c0530-6a6c-4bfd-9fd6-19669ff6b22f',NULL,'idp-review-profile','org4','4049a487-b566-4ea2-95c8-a73dff1eae15',0,10,0,NULL,'c3a888c8-4344-46ea-9a44-d36a89ff380c'),('df3d1828-cbd7-4975-a4b2-53d2a4355f77',NULL,'registration-recaptcha-action','org1','643a0ef8-c8de-4f7d-b3f7-b76399c6b55f',3,60,0,NULL,NULL),('df6bf889-3150-4899-9fee-e2bbe8969433',NULL,'auth-cookie','org1','8d533e8c-b2a7-4c31-90f8-959a82534f27',2,10,0,NULL,NULL),('e3fe3b65-2b1a-499d-a3e8-688100a7eb7a',NULL,'conditional-user-configured','org2','4d7d6bbe-3d84-4b8b-a077-9a5757f4f6a9',0,10,0,NULL,NULL),('e61aff84-1127-47dc-9699-ed762f897a7c',NULL,NULL,'org1','eb50f767-705d-4541-9f4c-5705de2e3760',0,20,1,'f44c431f-b268-41e9-9c08-28ccc47b3ecc',NULL),('e84c4af4-811f-46fb-9ce7-b20abb269ab3',NULL,'auth-cookie','34551b50-154e-45d3-a330-d06cf0168fb9','0a03ef74-3b18-429f-a37a-2b46053155ec',2,10,0,NULL,NULL),('e8c34ddf-4ba1-4abf-bcdc-05ad7033b7a7',NULL,'conditional-user-configured','org3','90dfd3da-418f-433f-98c8-175457215ae0',0,10,0,NULL,NULL),('ea0ca4e7-bb50-4429-bae9-a89d4de875dc',NULL,'reset-password','org4','ac329bdf-93e4-4a5a-91cc-43258d706cfe',0,30,0,NULL,NULL),('ea0f91f5-5475-45e8-9d85-59050376face',NULL,NULL,'org3','eafcea37-cc4b-492a-88ab-5b1698144640',2,20,1,'ef273dfe-e4f8-49ec-bad8-7cc8d401feb6',NULL),('eae49dac-a943-4ac6-a735-0feae589713d',NULL,'client-jwt','34551b50-154e-45d3-a330-d06cf0168fb9','fa872651-1e01-49ed-a1e7-3f7515a3ffcf',2,20,0,NULL,NULL),('ec17bced-4440-4c33-a102-3cf6b81ab7d6',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','b5c49abf-2bbd-4602-b7a4-1199e32e18aa',2,20,1,'2f5eccfd-1387-4d05-ba89-eb3c7995b407',NULL),('f37b86cf-52b4-4b59-9503-4df3c6c0ffdd',NULL,'conditional-user-configured','org1','50536499-25e6-4fbd-bf84-462959c691d1',0,10,0,NULL,NULL),('f3b12c23-2781-46d5-a88b-78e4f5bc3ac7',NULL,'auth-otp-form','org3','6b2c6565-5500-4206-a152-f616773c8c06',0,20,0,NULL,NULL),('f46704e2-cd4a-4df1-a026-747a512288c5',NULL,'reset-password','org5','afa2b5bc-4beb-4719-9296-86ae19ad108f',0,30,0,NULL,NULL),('f4b66cb2-ce1b-4f2b-b4d4-4d4183043cc6',NULL,'auth-otp-form','34551b50-154e-45d3-a330-d06cf0168fb9','405631b2-a35c-43f2-bf27-73534eeea921',0,20,0,NULL,NULL),('f5e0bf13-0a49-4d40-b303-8258ca779459',NULL,'identity-provider-redirector','org1','8d533e8c-b2a7-4c31-90f8-959a82534f27',2,25,0,NULL,NULL),('f76cb2ac-8b70-4cd5-854c-1c54e2705395',NULL,'reset-credentials-choose-user','org1','fc57b4cf-7234-4c40-a191-d299412f0065',0,10,0,NULL,NULL),('fa022f85-55e5-404a-ac5c-4d44ade2de20',NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','0a03ef74-3b18-429f-a37a-2b46053155ec',2,30,1,'57f45352-8042-4c30-80f9-172ca2ddab0e',NULL),('fc018102-828a-4f8a-9983-fee32c81634b',NULL,'direct-grant-validate-password','org4','01bd8a31-5618-4463-a05f-a4a39578f665',0,20,0,NULL,NULL),('fd00a56e-09fb-4288-a70d-bb837f23ab70',NULL,NULL,'org5','4b258578-5c06-4519-b30d-1949cd894467',0,20,1,'255beb8f-ec17-4de1-bdae-c75d94959d01',NULL),('fd4eba61-9a4d-442b-b0e0-6ed726764300',NULL,'conditional-user-configured','org5','8bc5fcea-b147-4a73-92b3-cc24f9a5407a',0,10,0,NULL,NULL),('fdf81fa7-bde9-4cc3-a9ae-159df0fe9590',NULL,'reset-credentials-choose-user','org3','6a31cd4f-644d-4809-b227-05b9937aa086',0,10,0,NULL,NULL),('fe2cb05b-445b-4ee8-b0f5-dcec05d90e44',NULL,'identity-provider-redirector','org5','94fe3f30-7827-454e-959a-487cfb5fc3c1',2,25,0,NULL,NULL),('fe36deb6-b6c9-4634-99f5-f007246c005d',NULL,'direct-grant-validate-password','org2','978c975e-af8c-4d0a-93be-25856d3c6aae',0,20,0,NULL,NULL),('ffbf2b8b-a801-45ea-9b27-6f03abc312b2',NULL,NULL,'org4','6d2e62bb-8195-4427-be82-69014acd221b',0,20,1,'d7b703bc-77ab-499e-9f0e-3a4efdd7cfd6',NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('01bd8a31-5618-4463-a05f-a4a39578f665','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',1,1),('02cf5cd2-4a75-4901-bf60-c49cac458176','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('0a03ef74-3b18-429f-a37a-2b46053155ec','browser','browser based authentication','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('0bc55eb7-5b0d-412a-ac08-c7c4ba936a89','registration','registration flow','org1','basic-flow',1,1),('10f18513-1977-4ef2-976c-2ef6ca8dacc7','registration form','registration form','34551b50-154e-45d3-a330-d06cf0168fb9','form-flow',0,1),('12ca82d8-ae85-4b77-8dd6-0da1839a6998','clients','Base authentication for clients','org3','client-flow',1,1),('13f5fde8-d8c4-42a1-ab23-77eb3c1dfb1e','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('1d7125e1-202e-4723-955a-6ae98e10ff22','direct grant','OpenID Connect Resource Owner Grant','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('1e2772e3-b3d7-4dd9-b6a6-eb7bff97b0f5','registration','registration flow','org3','basic-flow',1,1),('255beb8f-ec17-4de1-bdae-c75d94959d01','Account verification options','Method with which to verity the existing account','org5','basic-flow',0,1),('27aba9b0-0313-497c-961d-ce4b310a8357','Account verification options','Method with which to verity the existing account','org3','basic-flow',0,1),('2976de61-b959-4758-a91d-8a50db9608e6','registration','registration flow','org2','basic-flow',1,1),('2d8d1abe-06bc-4df1-96a7-b2da57852894','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',0,1),('2f5eccfd-1387-4d05-ba89-eb3c7995b407','Verify Existing Account by Re-authentication','Reauthentication of existing account','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('309abcb7-aaa0-45d8-b511-4212ac4cca8e','registration','registration flow','org5','basic-flow',1,1),('33940b73-b9ab-481e-88fb-b711a238de4f','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',0,1),('396d8da6-fe25-4302-8898-dfca959389f3','registration form','registration form','org2','form-flow',0,1),('3d251077-5c59-4e90-9e6d-445eb0f4f241','browser','browser based authentication','org2','basic-flow',1,1),('4049a487-b566-4ea2-95c8-a73dff1eae15','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',1,1),('405631b2-a35c-43f2-bf27-73534eeea921','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('496e15c7-52c1-4592-a625-3b05d67fab00','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('4a1026f7-48fd-479e-b346-7cd9d30d4b76','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',1,1),('4b258578-5c06-4519-b30d-1949cd894467','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',0,1),('4d7d6bbe-3d84-4b8b-a077-9a5757f4f6a9','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('4f6c0fb4-47b2-4e55-8a71-9aac266c032c','browser','browser based authentication','org3','basic-flow',1,1),('50536499-25e6-4fbd-bf84-462959c691d1','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('53de4a68-cca9-4f0e-9c64-128b23c5ccfd','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',0,1),('54c6989a-6789-4fa9-9970-ff44d1aa62ec','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',1,1),('54edbbac-72ac-4300-bfd1-82193c1360d1','forms','Username, password, otp and other auth forms.','org1','basic-flow',0,1),('57595fd6-4b62-461c-b3cf-c3b85697499a','registration','registration flow','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('57f45352-8042-4c30-80f9-172ca2ddab0e','forms','Username, password, otp and other auth forms.','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('59891fea-7c07-4157-b7dc-898417ac6097','registration form','registration form','org3','form-flow',0,1),('5d9110ad-372f-4671-be77-e6fa30f9b056','registration form','registration form','org4','form-flow',0,1),('5dab00f0-494c-4507-aec7-908b9a126990','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',1,1),('5dab4f22-3a5c-4275-a279-6526b32268c8','saml ecp','SAML ECP Profile Authentication Flow','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('643a0ef8-c8de-4f7d-b3f7-b76399c6b55f','registration form','registration form','org1','form-flow',0,1),('67f43f71-1f00-4348-a93b-187b32eafb27','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',1,1),('6a31cd4f-644d-4809-b227-05b9937aa086','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',1,1),('6b2c6565-5500-4206-a152-f616773c8c06','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('6d2e62bb-8195-4427-be82-69014acd221b','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',0,1),('71639094-cd96-4647-822f-b231c8d5e793','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',0,1),('72013fff-d764-4980-9c6f-7c2c9c4b185f','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('72ff433c-a793-4a0b-913d-551a075ab010','clients','Base authentication for clients','org5','client-flow',1,1),('74c6b36c-68b3-42bf-8354-7e953870ede0','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',0,1),('78e1126e-c069-435a-8ab5-2e227adbe659','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',0,1),('79203b04-57e8-4cfb-b420-6173e774f3e2','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',0,1),('79d5e9c9-796a-4230-b8ea-cd8f0b1da02c','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',0,1),('8406bbce-4996-459a-9d97-6f25d5f0bd2d','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',1,1),('853f9f11-d7a1-44cd-a311-f7f53cbaae1b','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',1,1),('85ac3c48-2753-4284-8b12-73c6cdea6882','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('8a3dee6e-4f1f-4f90-bf1e-ca9c9a67ffde','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',0,1),('8b2a7420-9eaf-48d8-a28a-368db5354bb7','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',0,1),('8bc5fcea-b147-4a73-92b3-cc24f9a5407a','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('8cf015c4-0f7a-436e-8231-3067315d867b','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',1,1),('8d533e8c-b2a7-4c31-90f8-959a82534f27','browser','browser based authentication','org1','basic-flow',1,1),('90dfd3da-418f-433f-98c8-175457215ae0','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('94eb4254-5f47-42e7-abfe-025a9b55f99d','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',1,1),('94fe3f30-7827-454e-959a-487cfb5fc3c1','browser','browser based authentication','org5','basic-flow',1,1),('96da23f7-80c2-40d1-9352-b9e3db3e3916','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',1,1),('978c975e-af8c-4d0a-93be-25856d3c6aae','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',1,1),('9841af39-2abe-45e1-b40b-9055708ff252','reset credentials','Reset credentials for a user if they forgot their password or something','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('9958171c-6c77-4bc2-b6ca-fb3f916eb36e','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('9ac4c6f2-c6b1-466a-b09b-75da54f7a0a8','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',0,1),('9c5a0039-6d6a-4e23-98af-a954afefe4b2','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',1,1),('9d67c1af-4cee-4c92-964d-f91d2458ee7e','forms','Username, password, otp and other auth forms.','org5','basic-flow',0,1),('9eb9a5cc-fec6-4663-8026-47ec7c2a25d4','browser','browser based authentication','org4','basic-flow',1,1),('9f5ff2f9-e0a8-42eb-90e8-7158ffc00748','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',0,1),('a06936b4-d7a6-4d53-b59c-f1d4c4afe8fb','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('a712225e-0969-4f4e-a9ac-740a15ac75e0','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',1,1),('a742be73-fef7-4160-9744-fd5f5be9aba8','registration form','registration form','org5','form-flow',0,1),('a8a07762-580c-4806-a360-7a7e39693575','clients','Base authentication for clients','org4','client-flow',1,1),('a915d0dd-c883-4ad3-b744-3d94cb585515','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',1,1),('ac329bdf-93e4-4a5a-91cc-43258d706cfe','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',1,1),('acab5d82-ff67-4903-8154-d69dcab76cd5','forms','Username, password, otp and other auth forms.','org2','basic-flow',0,1),('ae12d31c-5147-424c-b843-e72b49b23761','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('aecf17b9-3325-454a-8e07-129396c45676','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',0,1),('afa2b5bc-4beb-4719-9296-86ae19ad108f','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',1,1),('afd5195d-bbee-4cb0-a7a3-77671a18bdaa','clients','Base authentication for clients','org1','client-flow',1,1),('b081e944-71ff-482f-acb2-381718d5fbe4','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('b152534f-d3ba-433c-b4b5-a1cbf41e0df2','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('b17ddebd-5e92-455b-a7bd-6adda7416671','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',1,1),('b18fe658-476f-45b4-968d-f147030d9a84','clients','Base authentication for clients','org2','client-flow',1,1),('b5170e76-cc80-4219-a1ef-6d4f5ff59fb2','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',0,1),('b5c49abf-2bbd-4602-b7a4-1199e32e18aa','Account verification options','Method with which to verity the existing account','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('b95dd6d4-c58a-469b-b7b0-bdf2c3277153','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('b9c5267e-a331-464f-8e37-de7c6f4c5fe6','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',1,1),('ba04b73a-1b83-4d3d-b56b-e64326d73009','registration','registration flow','org4','basic-flow',1,1),('bde5fa7a-9272-4e3b-9bbd-f08f499298f3','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',1,1),('c77284e6-2d84-4706-a1ff-ed33342883b6','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',1,1),('cc67a7bf-9d5a-4192-8462-711edd2807bf','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('d181fc35-da3d-4ce6-81fc-0ef1d6bfb116','docker auth','Used by Docker clients to authenticate against the IDP','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',1,1),('d7b703bc-77ab-499e-9f0e-3a4efdd7cfd6','Account verification options','Method with which to verity the existing account','org4','basic-flow',0,1),('da5f021d-cd53-4fde-9f7b-ddcecb3aec40','Account verification options','Method with which to verity the existing account','org2','basic-flow',0,1),('db7b0f5c-6ff8-4a43-ba78-76e195fdafe1','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',1,1),('e43d3cb0-ddbc-46b5-b9d9-b82909f57df9','forms','Username, password, otp and other auth forms.','org3','basic-flow',0,1),('e4f71f49-0794-443f-95b6-8ad11d3ada9e','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',0,1),('e5adc9d9-8a66-4b5d-a660-8a314e48a8cf','User creation or linking','Flow for the existing/non-existing user alternatives','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('eafcea37-cc4b-492a-88ab-5b1698144640','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',0,1),('eb50f767-705d-4541-9f4c-5705de2e3760','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',0,1),('ef273dfe-e4f8-49ec-bad8-7cc8d401feb6','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',0,1),('f44c431f-b268-41e9-9c08-28ccc47b3ecc','Account verification options','Method with which to verity the existing account','org1','basic-flow',0,1),('fa872651-1e01-49ed-a1e7-3f7515a3ffcf','clients','Base authentication for clients','34551b50-154e-45d3-a330-d06cf0168fb9','client-flow',1,1),('fc57b4cf-7234-4c40-a191-d299412f0065','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',1,1),('fc82326e-2132-4638-b73c-36d51dcb559a','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','34551b50-154e-45d3-a330-d06cf0168fb9','basic-flow',0,1),('fda2f6a6-44a3-4a1d-88c7-6e4d9f99c9ea','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('fda3e1b3-94be-4a9b-b3d6-0eda2bd0e638','forms','Username, password, otp and other auth forms.','org4','basic-flow',0,1),('fefe068b-f553-4d9f-b578-052b75e4c330','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',1,1),('ffe393f6-4817-4120-9fbe-1a680e88d5c9','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1);
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('188e1cf1-8e4f-4802-971a-b8018ed40c4d','create unique user config','org5'),('1d3f7d73-5c67-4284-a316-b41151e33c21','create unique user config','org3'),('3e65fee4-ba5b-4266-a984-2bd5d5d09663','create unique user config','org2'),('4805b8ba-e7fb-455a-a850-e8ecde385d4a','create unique user config','org1'),('54531c43-d47c-49d5-9fdd-c1aad3f5b6dd','review profile config','34551b50-154e-45d3-a330-d06cf0168fb9'),('a5aaf25c-b90c-4f76-bfe8-36d49db5ab9a','review profile config','org1'),('b7bd47a1-84e8-4c38-8af0-2e703bdcf8af','create unique user config','org4'),('b853e028-afca-4a4d-aad1-19d33db0c741','create unique user config','34551b50-154e-45d3-a330-d06cf0168fb9'),('bec39bbc-6868-4fe9-a128-53bfbb9bde72','review profile config','org5'),('c3a888c8-4344-46ea-9a44-d36a89ff380c','review profile config','org4'),('c625ec7d-c28d-49c7-bf06-8599a52b4899','review profile config','org2'),('d61c864a-1b77-42b0-97c0-f0d36f5d535c','review profile config','org3');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('188e1cf1-8e4f-4802-971a-b8018ed40c4d','false','require.password.update.after.registration'),('1d3f7d73-5c67-4284-a316-b41151e33c21','false','require.password.update.after.registration'),('3e65fee4-ba5b-4266-a984-2bd5d5d09663','false','require.password.update.after.registration'),('4805b8ba-e7fb-455a-a850-e8ecde385d4a','false','require.password.update.after.registration'),('54531c43-d47c-49d5-9fdd-c1aad3f5b6dd','missing','update.profile.on.first.login'),('a5aaf25c-b90c-4f76-bfe8-36d49db5ab9a','missing','update.profile.on.first.login'),('b7bd47a1-84e8-4c38-8af0-2e703bdcf8af','false','require.password.update.after.registration'),('b853e028-afca-4a4d-aad1-19d33db0c741','false','require.password.update.after.registration'),('bec39bbc-6868-4fe9-a128-53bfbb9bde72','missing','update.profile.on.first.login'),('c3a888c8-4344-46ea-9a44-d36a89ff380c','missing','update.profile.on.first.login'),('c625ec7d-c28d-49c7-bf06-8599a52b4899','missing','update.profile.on.first.login'),('d61c864a-1b77-42b0-97c0-f0d36f5d535c','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('03e239c6-adea-41ff-9114-3f2f8c8bfa36',1,1,'_org4-api',0,1,'KheFAQdaLmH4t7yAGDw4yPxg9nVf7BkQ',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('03f0f2ad-f94e-4e04-9227-a246a29c1a88',1,0,'account-console',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('04458ae7-60f6-44cd-a035-5a396eb993d5',1,1,'org1',0,1,'KlOqv2Ii93rmOltdMmCDEKny0ujdDK3Q',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('064213d5-bf33-4ac5-b7be-eea67610f415',1,1,'org1-workspaces',0,0,'1G9iXtOCrEWgmpvkptfSdlZuCwf4qLkb',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('089f9a37-5c83-45f3-b460-1bc4e026824e',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('09071635-43d3-4f1c-a363-e8bbfb639174',1,0,'account',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('106e5dc7-a64d-49a6-8274-0385214babea',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('132a9080-6a05-43c8-bb6d-8f9ad0444045',1,0,'org3-realm',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9',NULL,0,0,0,'org3 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96',1,0,'account-console',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('19f88bac-766a-42e7-8df2-e247cd3f10bf',1,1,'org3-workspaces',0,0,'gQ01DrZTMEBbfrkX1mTy4AT9DOs4nC4U',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5',1,1,'system-org1-auth',0,0,'gCRadqSu4aPNdcUOk8VsNezohN2kHYwV',NULL,1,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36',1,1,'_org2-api',0,1,'0dLCbNayNy4QIQLiWxd815yjgcNx0HlI',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('1e661719-8161-4c86-b686-a215cbcff768',1,1,'_platform',0,0,'6cHCIDGBnQ6DWHrn4VNjVi7A0ruWTG2n',NULL,0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,0,'account',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('2b14a607-36f6-4465-aa57-9d7cf52372d6',1,0,'security-admin-console',0,1,NULL,'/admin/org5/console/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('30bd9611-6954-42fa-8383-0951f5ee6e5a',1,0,'account',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('323db795-227a-46f6-bdde-d509c310ef10',1,1,'org4-workspaces',0,0,'ki3U4sTeIV7CcIDigj8rDydsq0IfZPaG',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('36992eed-8166-4670-abd5-3d16881a2b78',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org3','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('42caf3ad-d189-4018-b393-b4b58db92dc7',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('4902cb80-2936-4df4-a38e-b2200ea3269d',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('4d9fbca2-b670-49f6-97fa-0403247f12f7',1,0,'security-admin-console',0,1,NULL,'/admin/org1/console/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('555ccbc1-82f7-47c5-a834-ca9224d51de1',1,0,'org5-realm',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9',NULL,0,0,0,'org5 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('57d37b71-d396-4739-a413-609a9a6401f7',1,1,'system-org2-auth',0,0,'bMxlmMqz7mXbpv26Eioo1OmHUPcMumYu',NULL,1,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('5a70c154-dc6c-438c-85ba-0df54eb491c6',1,1,'system-org5-auth',0,0,'wRjyexG0cA9mupeeN6QGziKqFCugZX0J',NULL,1,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('607de3b9-158a-4754-8db6-e7f58142e546',1,0,'account-console',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('6247b8b2-2f1e-48c5-83c6-2107984fc182',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org1','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('6323d17f-f227-430a-97da-ec6103441167',1,0,'security-admin-console',0,1,NULL,'/admin/org4/console/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,0,'org1-realm',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9',NULL,0,0,0,'org1 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('6f99307f-1aad-4431-8856-afe93d965996',1,0,'security-admin-console',0,1,NULL,'/admin/org2/console/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('7785feb2-4924-4cfa-84bf-bdf8633a3193',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('77e7fcf2-c508-4740-8fec-308f4472cfd7',1,1,'system-org3-auth',0,0,'Zw9houGsulvNnVtAqMhSzBZpRQsIBEBU',NULL,1,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,0,'account',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('7b641f77-acc3-4adc-9f14-f2da533bbee2',1,1,'org2',0,1,'UipPZKESy0uLbRtAhEun3zgbohtvRQVV',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80',1,1,'_org3-api',0,1,'dmiwpQlumvtora7noYykc7sJfZHvJd8l',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('90c703cb-e94f-4cc5-847c-95cfc1e84846',1,0,'security-admin-console',0,1,NULL,'/admin/org3/console/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('933bd7be-382d-4836-9959-e1d62aa45403',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('a2a40da7-56ca-4059-8a70-291064b5d6b0',1,0,'account-console',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,1,'org2-workspaces',0,0,'lSylHBbsFDIrD5v6dFyUoAhgbH5uT6wh',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('a4005476-cc19-4fe9-a6ed-e1ec00babf59',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('af9f4fad-edcc-40d4-9a71-58252b58156c',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('b70f7166-5c1f-4d65-a11a-12984cf2033d',1,0,'org2-realm',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9',NULL,0,0,0,'org2 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('bd270c1d-636d-4691-8268-c3975fa8e1c6',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('c4dc76fb-a8ec-4565-b899-384117fcb403',1,1,'org5-workspaces',0,0,'KYU6OZqO0EHduo5YkQekD8iAIbLlbVEM',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('c8081e92-8564-41bd-a38a-e381df72e417',1,1,'system-org4-auth',0,0,'eP3GNA3u6fzRHOREWZeMvin3vKGZoP5d',NULL,1,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('ca49d0bf-2577-4388-b782-1547474163f8',1,1,'_org1-api',0,1,'beZPCC4ww1kAnqLcfxcj1vmZ1mLVUKnE',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('cb793279-2d62-4d18-9bca-b8ee563a6e35',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d288df77-676b-418a-815d-15169d1631bf',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d3be74ca-18ef-4b23-8eac-a11225a59d54',1,1,'_org5-api',0,1,'NJF8JzhkfjV0Pxlf1Iv27sviZhtMTkTm',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('d6a71c1a-016b-4c87-a19a-d6c83aa89934',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,1,'org5',0,1,'TE9w9EZ7SUddPXfc3US2EH038UH7Mrpa',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06',1,0,'_platform-console',0,1,'TiWvZAWpYVoE2oB6OHrs9fmz8RUXagFh',NULL,0,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('d9558b6d-e578-4475-a8f6-a330bc096e1a',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6',1,0,'account-console',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,0,'org4-realm',0,0,NULL,NULL,1,NULL,0,'34551b50-154e-45d3-a330-d06cf0168fb9',NULL,0,0,0,'org4 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,1,'org3',0,1,'0soBIWonK36Cl9wGWhQwlZc9elGMDHEw',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('f6f43786-38d9-49a9-918c-c4268bfaa15a',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('fa920e55-8c91-4e0f-8808-159a7c61871d',1,0,'account',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('fe590829-5a72-46df-b480-593cccd24fca',1,1,'org4',0,1,'DLhMXGhO8ntyOkYMKgB04EcQULdhdggD',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0);
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('03e239c6-adea-41ff-9114-3f2f8c8bfa36','access.token.lifespan','86400'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','acr.loa.map','{}'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','backchannel.logout.revoke.offline.tokens','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','backchannel.logout.session.required','true'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','client.secret.creation.time','1720055318'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','client.session.idle.timeout','86400'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','client.session.max.lifespan','86400'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','client_credentials.use_refresh_token','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','display.on.consent.screen','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','exclude.session.state.from.auth.response','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','frontchannel.logout.session.required','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','id.token.as.detached.signature','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','oauth2.device.authorization.grant.enabled','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','oidc.ciba.grant.enabled','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','require.pushed.authorization.requests','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.allow.ecp.flow','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.artifact.binding','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.assertion.signature','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.authnstatement','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.client.signature','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.encrypt','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.force.post.binding','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.multivalued.roles','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.onetimeuse.condition','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.server.signature','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml.server.signature.keyinfo.ext','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','saml_force_name_id_format','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','tls.client.certificate.bound.access.tokens','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','token.response.type.bearer.lower-case','false'),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','use.refresh.tokens','true'),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','pkce.code.challenge.method','S256'),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','post.logout.redirect.uris','+'),('04458ae7-60f6-44cd-a035-5a396eb993d5','backchannel.logout.revoke.offline.tokens','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','backchannel.logout.session.required','true'),('04458ae7-60f6-44cd-a035-5a396eb993d5','client.secret.creation.time','1720055227'),('04458ae7-60f6-44cd-a035-5a396eb993d5','client_credentials.use_refresh_token','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','display.on.consent.screen','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','exclude.session.state.from.auth.response','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','id.token.as.detached.signature','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','oauth2.device.authorization.grant.enabled','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','oidc.ciba.grant.enabled','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','post.logout.redirect.uris','/*'),('04458ae7-60f6-44cd-a035-5a396eb993d5','require.pushed.authorization.requests','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.artifact.binding','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.assertion.signature','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.authnstatement','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.client.signature','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.encrypt','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.force.post.binding','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.multivalued.roles','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.onetimeuse.condition','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.server.signature','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml.server.signature.keyinfo.ext','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','saml_force_name_id_format','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','tls.client.certificate.bound.access.tokens','false'),('04458ae7-60f6-44cd-a035-5a396eb993d5','use.refresh.tokens','true'),('064213d5-bf33-4ac5-b7be-eea67610f415','backchannel.logout.revoke.offline.tokens','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','backchannel.logout.session.required','true'),('064213d5-bf33-4ac5-b7be-eea67610f415','client.secret.creation.time','1720055227'),('064213d5-bf33-4ac5-b7be-eea67610f415','client_credentials.use_refresh_token','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','display.on.consent.screen','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','exclude.session.state.from.auth.response','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','id.token.as.detached.signature','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','oauth2.device.authorization.grant.enabled','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','oidc.ciba.grant.enabled','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','require.pushed.authorization.requests','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.artifact.binding','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.assertion.signature','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.authnstatement','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.client.signature','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.encrypt','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.force.post.binding','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.multivalued.roles','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.onetimeuse.condition','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.server.signature','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml.server.signature.keyinfo.ext','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','saml_force_name_id_format','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','tls.client.certificate.bound.access.tokens','false'),('064213d5-bf33-4ac5-b7be-eea67610f415','use.refresh.tokens','true'),('09071635-43d3-4f1c-a363-e8bbfb639174','post.logout.redirect.uris','+'),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','pkce.code.challenge.method','S256'),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','post.logout.redirect.uris','+'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','backchannel.logout.revoke.offline.tokens','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','backchannel.logout.session.required','true'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','client.secret.creation.time','1720055290'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','client_credentials.use_refresh_token','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','display.on.consent.screen','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','exclude.session.state.from.auth.response','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','id.token.as.detached.signature','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','oauth2.device.authorization.grant.enabled','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','oidc.ciba.grant.enabled','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','require.pushed.authorization.requests','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.artifact.binding','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.assertion.signature','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.authnstatement','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.client.signature','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.encrypt','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.force.post.binding','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.multivalued.roles','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.onetimeuse.condition','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.server.signature','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml.server.signature.keyinfo.ext','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','saml_force_name_id_format','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','tls.client.certificate.bound.access.tokens','false'),('19f88bac-766a-42e7-8df2-e247cd3f10bf','use.refresh.tokens','true'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','backchannel.logout.revoke.offline.tokens','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','backchannel.logout.session.required','true'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','client.secret.creation.time','1720055227'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','client_credentials.use_refresh_token','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','display.on.consent.screen','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','exclude.session.state.from.auth.response','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','id.token.as.detached.signature','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','oauth2.device.authorization.grant.enabled','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','oidc.ciba.grant.enabled','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','require.pushed.authorization.requests','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.artifact.binding','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.assertion.signature','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.authnstatement','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.client.signature','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.encrypt','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.force.post.binding','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.multivalued.roles','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.onetimeuse.condition','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.server.signature','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml.server.signature.keyinfo.ext','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','saml_force_name_id_format','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','tls.client.certificate.bound.access.tokens','false'),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','use.refresh.tokens','true'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','access.token.lifespan','86400'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','acr.loa.map','{}'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','backchannel.logout.revoke.offline.tokens','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','backchannel.logout.session.required','true'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','client.secret.creation.time','1720055262'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','client.session.idle.timeout','86400'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','client.session.max.lifespan','86400'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','client_credentials.use_refresh_token','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','display.on.consent.screen','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','exclude.session.state.from.auth.response','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','frontchannel.logout.session.required','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','id.token.as.detached.signature','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','oauth2.device.authorization.grant.enabled','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','oidc.ciba.grant.enabled','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','require.pushed.authorization.requests','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.allow.ecp.flow','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.artifact.binding','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.assertion.signature','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.authnstatement','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.client.signature','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.encrypt','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.force.post.binding','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.multivalued.roles','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.onetimeuse.condition','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.server.signature','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml.server.signature.keyinfo.ext','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','saml_force_name_id_format','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','tls.client.certificate.bound.access.tokens','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','token.response.type.bearer.lower-case','false'),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','use.refresh.tokens','true'),('1e661719-8161-4c86-b686-a215cbcff768','backchannel.logout.revoke.offline.tokens','false'),('1e661719-8161-4c86-b686-a215cbcff768','backchannel.logout.session.required','true'),('1e661719-8161-4c86-b686-a215cbcff768','client.secret.creation.time','1720055131'),('1e661719-8161-4c86-b686-a215cbcff768','client_credentials.use_refresh_token','false'),('1e661719-8161-4c86-b686-a215cbcff768','display.on.consent.screen','false'),('1e661719-8161-4c86-b686-a215cbcff768','exclude.session.state.from.auth.response','false'),('1e661719-8161-4c86-b686-a215cbcff768','id.token.as.detached.signature','false'),('1e661719-8161-4c86-b686-a215cbcff768','oauth2.device.authorization.grant.enabled','false'),('1e661719-8161-4c86-b686-a215cbcff768','oidc.ciba.grant.enabled','false'),('1e661719-8161-4c86-b686-a215cbcff768','require.pushed.authorization.requests','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.artifact.binding','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.assertion.signature','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.authnstatement','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.client.signature','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.encrypt','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.force.post.binding','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.multivalued.roles','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.onetimeuse.condition','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.server.signature','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml.server.signature.keyinfo.ext','false'),('1e661719-8161-4c86-b686-a215cbcff768','saml_force_name_id_format','false'),('1e661719-8161-4c86-b686-a215cbcff768','tls.client.certificate.bound.access.tokens','false'),('1e661719-8161-4c86-b686-a215cbcff768','use.refresh.tokens','true'),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','post.logout.redirect.uris','+'),('2b14a607-36f6-4465-aa57-9d7cf52372d6','pkce.code.challenge.method','S256'),('2b14a607-36f6-4465-aa57-9d7cf52372d6','post.logout.redirect.uris','+'),('30bd9611-6954-42fa-8383-0951f5ee6e5a','post.logout.redirect.uris','+'),('323db795-227a-46f6-bdde-d509c310ef10','backchannel.logout.revoke.offline.tokens','false'),('323db795-227a-46f6-bdde-d509c310ef10','backchannel.logout.session.required','true'),('323db795-227a-46f6-bdde-d509c310ef10','client.secret.creation.time','1720055318'),('323db795-227a-46f6-bdde-d509c310ef10','client_credentials.use_refresh_token','false'),('323db795-227a-46f6-bdde-d509c310ef10','display.on.consent.screen','false'),('323db795-227a-46f6-bdde-d509c310ef10','exclude.session.state.from.auth.response','false'),('323db795-227a-46f6-bdde-d509c310ef10','id.token.as.detached.signature','false'),('323db795-227a-46f6-bdde-d509c310ef10','oauth2.device.authorization.grant.enabled','false'),('323db795-227a-46f6-bdde-d509c310ef10','oidc.ciba.grant.enabled','false'),('323db795-227a-46f6-bdde-d509c310ef10','require.pushed.authorization.requests','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.artifact.binding','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.assertion.signature','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.authnstatement','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.client.signature','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.encrypt','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.force.post.binding','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.multivalued.roles','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.onetimeuse.condition','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.server.signature','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml.server.signature.keyinfo.ext','false'),('323db795-227a-46f6-bdde-d509c310ef10','saml_force_name_id_format','false'),('323db795-227a-46f6-bdde-d509c310ef10','tls.client.certificate.bound.access.tokens','false'),('323db795-227a-46f6-bdde-d509c310ef10','use.refresh.tokens','true'),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','pkce.code.challenge.method','S256'),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','post.logout.redirect.uris','+'),('4902cb80-2936-4df4-a38e-b2200ea3269d','access.token.lifespan','86400'),('4902cb80-2936-4df4-a38e-b2200ea3269d','acr.loa.map','{}'),('4902cb80-2936-4df4-a38e-b2200ea3269d','backchannel.logout.revoke.offline.tokens','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','backchannel.logout.session.required','true'),('4902cb80-2936-4df4-a38e-b2200ea3269d','client.session.idle.timeout','86400'),('4902cb80-2936-4df4-a38e-b2200ea3269d','client.session.max.lifespan','86400'),('4902cb80-2936-4df4-a38e-b2200ea3269d','client_credentials.use_refresh_token','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','display.on.consent.screen','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','exclude.session.state.from.auth.response','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','frontchannel.logout.session.required','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','id.token.as.detached.signature','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','oauth2.device.authorization.grant.enabled','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','oidc.ciba.grant.enabled','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','require.pushed.authorization.requests','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.allow.ecp.flow','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.artifact.binding','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.assertion.signature','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.authnstatement','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.client.signature','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.encrypt','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.force.post.binding','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.multivalued.roles','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.onetimeuse.condition','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.server.signature','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml.server.signature.keyinfo.ext','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','saml_force_name_id_format','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','tls.client.certificate.bound.access.tokens','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','token.response.type.bearer.lower-case','false'),('4902cb80-2936-4df4-a38e-b2200ea3269d','use.refresh.tokens','true'),('4d9fbca2-b670-49f6-97fa-0403247f12f7','pkce.code.challenge.method','S256'),('4d9fbca2-b670-49f6-97fa-0403247f12f7','post.logout.redirect.uris','+'),('57d37b71-d396-4739-a413-609a9a6401f7','backchannel.logout.revoke.offline.tokens','false'),('57d37b71-d396-4739-a413-609a9a6401f7','backchannel.logout.session.required','true'),('57d37b71-d396-4739-a413-609a9a6401f7','client.secret.creation.time','1720055262'),('57d37b71-d396-4739-a413-609a9a6401f7','client_credentials.use_refresh_token','false'),('57d37b71-d396-4739-a413-609a9a6401f7','display.on.consent.screen','false'),('57d37b71-d396-4739-a413-609a9a6401f7','exclude.session.state.from.auth.response','false'),('57d37b71-d396-4739-a413-609a9a6401f7','id.token.as.detached.signature','false'),('57d37b71-d396-4739-a413-609a9a6401f7','oauth2.device.authorization.grant.enabled','false'),('57d37b71-d396-4739-a413-609a9a6401f7','oidc.ciba.grant.enabled','false'),('57d37b71-d396-4739-a413-609a9a6401f7','require.pushed.authorization.requests','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.artifact.binding','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.assertion.signature','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.authnstatement','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.client.signature','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.encrypt','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.force.post.binding','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.multivalued.roles','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.onetimeuse.condition','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.server.signature','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml.server.signature.keyinfo.ext','false'),('57d37b71-d396-4739-a413-609a9a6401f7','saml_force_name_id_format','false'),('57d37b71-d396-4739-a413-609a9a6401f7','tls.client.certificate.bound.access.tokens','false'),('57d37b71-d396-4739-a413-609a9a6401f7','use.refresh.tokens','true'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','backchannel.logout.revoke.offline.tokens','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','backchannel.logout.session.required','true'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','client.secret.creation.time','1720055347'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','client_credentials.use_refresh_token','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','display.on.consent.screen','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','exclude.session.state.from.auth.response','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','id.token.as.detached.signature','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','oauth2.device.authorization.grant.enabled','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','oidc.ciba.grant.enabled','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','require.pushed.authorization.requests','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.artifact.binding','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.assertion.signature','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.authnstatement','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.client.signature','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.encrypt','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.force.post.binding','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.multivalued.roles','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.onetimeuse.condition','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.server.signature','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml.server.signature.keyinfo.ext','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','saml_force_name_id_format','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','tls.client.certificate.bound.access.tokens','false'),('5a70c154-dc6c-438c-85ba-0df54eb491c6','use.refresh.tokens','true'),('607de3b9-158a-4754-8db6-e7f58142e546','pkce.code.challenge.method','S256'),('607de3b9-158a-4754-8db6-e7f58142e546','post.logout.redirect.uris','+'),('6323d17f-f227-430a-97da-ec6103441167','pkce.code.challenge.method','S256'),('6323d17f-f227-430a-97da-ec6103441167','post.logout.redirect.uris','+'),('6f99307f-1aad-4431-8856-afe93d965996','pkce.code.challenge.method','S256'),('6f99307f-1aad-4431-8856-afe93d965996','post.logout.redirect.uris','+'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','backchannel.logout.revoke.offline.tokens','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','backchannel.logout.session.required','true'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','client.secret.creation.time','1720055290'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','client_credentials.use_refresh_token','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','display.on.consent.screen','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','exclude.session.state.from.auth.response','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','id.token.as.detached.signature','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','oauth2.device.authorization.grant.enabled','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','oidc.ciba.grant.enabled','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','require.pushed.authorization.requests','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.artifact.binding','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.assertion.signature','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.authnstatement','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.client.signature','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.encrypt','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.force.post.binding','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.multivalued.roles','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.onetimeuse.condition','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.server.signature','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml.server.signature.keyinfo.ext','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','saml_force_name_id_format','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','tls.client.certificate.bound.access.tokens','false'),('77e7fcf2-c508-4740-8fec-308f4472cfd7','use.refresh.tokens','true'),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','post.logout.redirect.uris','+'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','backchannel.logout.revoke.offline.tokens','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','backchannel.logout.session.required','true'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','client.secret.creation.time','1720055262'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','client_credentials.use_refresh_token','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','display.on.consent.screen','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','exclude.session.state.from.auth.response','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','id.token.as.detached.signature','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','oauth2.device.authorization.grant.enabled','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','oidc.ciba.grant.enabled','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','post.logout.redirect.uris','/*'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','require.pushed.authorization.requests','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.artifact.binding','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.assertion.signature','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.authnstatement','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.client.signature','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.encrypt','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.force.post.binding','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.multivalued.roles','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.onetimeuse.condition','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.server.signature','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml.server.signature.keyinfo.ext','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','saml_force_name_id_format','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','tls.client.certificate.bound.access.tokens','false'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','use.refresh.tokens','true'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','access.token.lifespan','86400'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','acr.loa.map','{}'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','backchannel.logout.revoke.offline.tokens','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','backchannel.logout.session.required','true'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','client.secret.creation.time','1720055290'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','client.session.idle.timeout','86400'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','client.session.max.lifespan','86400'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','client_credentials.use_refresh_token','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','display.on.consent.screen','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','exclude.session.state.from.auth.response','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','frontchannel.logout.session.required','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','id.token.as.detached.signature','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','oauth2.device.authorization.grant.enabled','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','oidc.ciba.grant.enabled','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','require.pushed.authorization.requests','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.allow.ecp.flow','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.artifact.binding','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.assertion.signature','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.authnstatement','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.client.signature','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.encrypt','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.force.post.binding','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.multivalued.roles','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.onetimeuse.condition','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.server.signature','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml.server.signature.keyinfo.ext','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','saml_force_name_id_format','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','tls.client.certificate.bound.access.tokens','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','token.response.type.bearer.lower-case','false'),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','use.refresh.tokens','true'),('90c703cb-e94f-4cc5-847c-95cfc1e84846','pkce.code.challenge.method','S256'),('90c703cb-e94f-4cc5-847c-95cfc1e84846','post.logout.redirect.uris','+'),('a2a40da7-56ca-4059-8a70-291064b5d6b0','pkce.code.challenge.method','S256'),('a2a40da7-56ca-4059-8a70-291064b5d6b0','post.logout.redirect.uris','+'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','backchannel.logout.revoke.offline.tokens','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','backchannel.logout.session.required','true'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','client.secret.creation.time','1720055261'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','client_credentials.use_refresh_token','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','display.on.consent.screen','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','exclude.session.state.from.auth.response','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','id.token.as.detached.signature','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','oauth2.device.authorization.grant.enabled','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','oidc.ciba.grant.enabled','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','require.pushed.authorization.requests','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.artifact.binding','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.assertion.signature','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.authnstatement','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.client.signature','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.encrypt','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.force.post.binding','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.multivalued.roles','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.onetimeuse.condition','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.server.signature','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml.server.signature.keyinfo.ext','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','saml_force_name_id_format','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','tls.client.certificate.bound.access.tokens','false'),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','use.refresh.tokens','true'),('af9f4fad-edcc-40d4-9a71-58252b58156c','pkce.code.challenge.method','S256'),('af9f4fad-edcc-40d4-9a71-58252b58156c','post.logout.redirect.uris','+'),('bd270c1d-636d-4691-8268-c3975fa8e1c6','post.logout.redirect.uris','+'),('c4dc76fb-a8ec-4565-b899-384117fcb403','backchannel.logout.revoke.offline.tokens','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','backchannel.logout.session.required','true'),('c4dc76fb-a8ec-4565-b899-384117fcb403','client.secret.creation.time','1720055347'),('c4dc76fb-a8ec-4565-b899-384117fcb403','client_credentials.use_refresh_token','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','display.on.consent.screen','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','exclude.session.state.from.auth.response','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','id.token.as.detached.signature','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','oauth2.device.authorization.grant.enabled','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','oidc.ciba.grant.enabled','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','require.pushed.authorization.requests','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.artifact.binding','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.assertion.signature','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.authnstatement','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.client.signature','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.encrypt','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.force.post.binding','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.multivalued.roles','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.onetimeuse.condition','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.server.signature','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml.server.signature.keyinfo.ext','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','saml_force_name_id_format','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','tls.client.certificate.bound.access.tokens','false'),('c4dc76fb-a8ec-4565-b899-384117fcb403','use.refresh.tokens','true'),('c8081e92-8564-41bd-a38a-e381df72e417','backchannel.logout.revoke.offline.tokens','false'),('c8081e92-8564-41bd-a38a-e381df72e417','backchannel.logout.session.required','true'),('c8081e92-8564-41bd-a38a-e381df72e417','client.secret.creation.time','1720055318'),('c8081e92-8564-41bd-a38a-e381df72e417','client_credentials.use_refresh_token','false'),('c8081e92-8564-41bd-a38a-e381df72e417','display.on.consent.screen','false'),('c8081e92-8564-41bd-a38a-e381df72e417','exclude.session.state.from.auth.response','false'),('c8081e92-8564-41bd-a38a-e381df72e417','id.token.as.detached.signature','false'),('c8081e92-8564-41bd-a38a-e381df72e417','oauth2.device.authorization.grant.enabled','false'),('c8081e92-8564-41bd-a38a-e381df72e417','oidc.ciba.grant.enabled','false'),('c8081e92-8564-41bd-a38a-e381df72e417','require.pushed.authorization.requests','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.artifact.binding','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.assertion.signature','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.authnstatement','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.client.signature','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.encrypt','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.force.post.binding','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.multivalued.roles','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.onetimeuse.condition','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.server.signature','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml.server.signature.keyinfo.ext','false'),('c8081e92-8564-41bd-a38a-e381df72e417','saml_force_name_id_format','false'),('c8081e92-8564-41bd-a38a-e381df72e417','tls.client.certificate.bound.access.tokens','false'),('c8081e92-8564-41bd-a38a-e381df72e417','use.refresh.tokens','true'),('ca49d0bf-2577-4388-b782-1547474163f8','access.token.lifespan','86400'),('ca49d0bf-2577-4388-b782-1547474163f8','acr.loa.map','{}'),('ca49d0bf-2577-4388-b782-1547474163f8','backchannel.logout.revoke.offline.tokens','false'),('ca49d0bf-2577-4388-b782-1547474163f8','backchannel.logout.session.required','true'),('ca49d0bf-2577-4388-b782-1547474163f8','client.secret.creation.time','1720055227'),('ca49d0bf-2577-4388-b782-1547474163f8','client.session.idle.timeout','86400'),('ca49d0bf-2577-4388-b782-1547474163f8','client.session.max.lifespan','86400'),('ca49d0bf-2577-4388-b782-1547474163f8','client_credentials.use_refresh_token','false'),('ca49d0bf-2577-4388-b782-1547474163f8','display.on.consent.screen','false'),('ca49d0bf-2577-4388-b782-1547474163f8','exclude.session.state.from.auth.response','false'),('ca49d0bf-2577-4388-b782-1547474163f8','frontchannel.logout.session.required','false'),('ca49d0bf-2577-4388-b782-1547474163f8','id.token.as.detached.signature','false'),('ca49d0bf-2577-4388-b782-1547474163f8','oauth2.device.authorization.grant.enabled','false'),('ca49d0bf-2577-4388-b782-1547474163f8','oidc.ciba.grant.enabled','false'),('ca49d0bf-2577-4388-b782-1547474163f8','require.pushed.authorization.requests','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.allow.ecp.flow','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.artifact.binding','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.assertion.signature','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.authnstatement','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.client.signature','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.encrypt','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.force.post.binding','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.multivalued.roles','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.onetimeuse.condition','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.server.signature','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml.server.signature.keyinfo.ext','false'),('ca49d0bf-2577-4388-b782-1547474163f8','saml_force_name_id_format','false'),('ca49d0bf-2577-4388-b782-1547474163f8','tls.client.certificate.bound.access.tokens','false'),('ca49d0bf-2577-4388-b782-1547474163f8','token.response.type.bearer.lower-case','false'),('ca49d0bf-2577-4388-b782-1547474163f8','use.refresh.tokens','true'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','access.token.lifespan','86400'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','acr.loa.map','{}'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','backchannel.logout.revoke.offline.tokens','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','backchannel.logout.session.required','true'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','client.secret.creation.time','1720055348'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','client.session.idle.timeout','86400'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','client.session.max.lifespan','86400'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','client_credentials.use_refresh_token','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','display.on.consent.screen','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','exclude.session.state.from.auth.response','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','frontchannel.logout.session.required','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','id.token.as.detached.signature','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','oauth2.device.authorization.grant.enabled','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','oidc.ciba.grant.enabled','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','require.pushed.authorization.requests','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.allow.ecp.flow','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.artifact.binding','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.assertion.signature','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.authnstatement','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.client.signature','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.encrypt','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.force.post.binding','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.multivalued.roles','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.onetimeuse.condition','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.server.signature','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml.server.signature.keyinfo.ext','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','saml_force_name_id_format','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','tls.client.certificate.bound.access.tokens','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','token.response.type.bearer.lower-case','false'),('d3be74ca-18ef-4b23-8eac-a11225a59d54','use.refresh.tokens','true'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','backchannel.logout.revoke.offline.tokens','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','backchannel.logout.session.required','true'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','client.secret.creation.time','1720055347'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','client_credentials.use_refresh_token','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','display.on.consent.screen','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','exclude.session.state.from.auth.response','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','id.token.as.detached.signature','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','oauth2.device.authorization.grant.enabled','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','oidc.ciba.grant.enabled','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','post.logout.redirect.uris','/*'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','require.pushed.authorization.requests','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.artifact.binding','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.assertion.signature','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.authnstatement','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.client.signature','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.encrypt','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.force.post.binding','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.multivalued.roles','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.onetimeuse.condition','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.server.signature','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml.server.signature.keyinfo.ext','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','saml_force_name_id_format','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','tls.client.certificate.bound.access.tokens','false'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','use.refresh.tokens','true'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','backchannel.logout.revoke.offline.tokens','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','backchannel.logout.session.required','true'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','client.secret.creation.time','1720055133'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','client_credentials.use_refresh_token','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','display.on.consent.screen','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','exclude.session.state.from.auth.response','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','id.token.as.detached.signature','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','oauth2.device.authorization.grant.enabled','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','oidc.ciba.grant.enabled','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','post.logout.redirect.uris','/*'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','require.pushed.authorization.requests','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.artifact.binding','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.assertion.signature','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.authnstatement','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.client.signature','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.encrypt','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.force.post.binding','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.multivalued.roles','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.onetimeuse.condition','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.server.signature','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml.server.signature.keyinfo.ext','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','saml_force_name_id_format','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','tls.client.certificate.bound.access.tokens','false'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','use.refresh.tokens','true'),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','pkce.code.challenge.method','S256'),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','post.logout.redirect.uris','+'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','backchannel.logout.revoke.offline.tokens','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','backchannel.logout.session.required','true'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','client.secret.creation.time','1720055290'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','client_credentials.use_refresh_token','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','display.on.consent.screen','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','exclude.session.state.from.auth.response','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','id.token.as.detached.signature','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','oauth2.device.authorization.grant.enabled','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','oidc.ciba.grant.enabled','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','post.logout.redirect.uris','/*'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','require.pushed.authorization.requests','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.artifact.binding','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.assertion.signature','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.authnstatement','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.client.signature','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.encrypt','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.force.post.binding','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.multivalued.roles','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.onetimeuse.condition','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.server.signature','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml.server.signature.keyinfo.ext','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','saml_force_name_id_format','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','tls.client.certificate.bound.access.tokens','false'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','use.refresh.tokens','true'),('fa920e55-8c91-4e0f-8808-159a7c61871d','post.logout.redirect.uris','+'),('fe590829-5a72-46df-b480-593cccd24fca','backchannel.logout.revoke.offline.tokens','false'),('fe590829-5a72-46df-b480-593cccd24fca','backchannel.logout.session.required','true'),('fe590829-5a72-46df-b480-593cccd24fca','client.secret.creation.time','1720055318'),('fe590829-5a72-46df-b480-593cccd24fca','client_credentials.use_refresh_token','false'),('fe590829-5a72-46df-b480-593cccd24fca','display.on.consent.screen','false'),('fe590829-5a72-46df-b480-593cccd24fca','exclude.session.state.from.auth.response','false'),('fe590829-5a72-46df-b480-593cccd24fca','id.token.as.detached.signature','false'),('fe590829-5a72-46df-b480-593cccd24fca','oauth2.device.authorization.grant.enabled','false'),('fe590829-5a72-46df-b480-593cccd24fca','oidc.ciba.grant.enabled','false'),('fe590829-5a72-46df-b480-593cccd24fca','post.logout.redirect.uris','/*'),('fe590829-5a72-46df-b480-593cccd24fca','require.pushed.authorization.requests','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.artifact.binding','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.assertion.signature','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.authnstatement','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.client.signature','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.encrypt','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.force.post.binding','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.multivalued.roles','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.onetimeuse.condition','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.server.signature','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml.server.signature.keyinfo.ext','false'),('fe590829-5a72-46df-b480-593cccd24fca','saml_force_name_id_format','false'),('fe590829-5a72-46df-b480-593cccd24fca','tls.client.certificate.bound.access.tokens','false'),('fe590829-5a72-46df-b480-593cccd24fca','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('0229bb30-5047-453a-8c72-5f80de7cda5b','address','org2','OpenID Connect built-in scope: address','openid-connect'),('080b090a-e83e-495b-8f4c-623af9e790cf','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('084eb5c9-9b38-475e-b44d-2f9e9d19baca','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('14e91b1b-afd0-4fec-95da-ec5ca67e2c2e','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('16284508-1841-419d-8345-9793b63afbdc','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('18893819-c9ba-4768-86ab-d39bb2b68faa','address','org5','OpenID Connect built-in scope: address','openid-connect'),('191319ef-7076-4f6e-83aa-4ae7666b0c60','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('1fab0c38-384d-4153-8ced-0d3bfe6203c1','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('213ccfbd-170f-484c-a811-40f853c0c93f','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('2907c890-1744-4034-a206-a63f8c066f4b','address','org3','OpenID Connect built-in scope: address','openid-connect'),('2eaf68d2-51f3-40f5-9016-89751c8461b7','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('38e80701-348c-4a01-bc78-ec8b2ca23457','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('3a703d8c-b695-4ffa-80b6-59c25b2e42b2','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('3b300991-fd10-40c1-9d96-33402715e467','role_list','org2','SAML role list','saml'),('3d225d1b-48f1-4d0e-b047-3743b2bcc1cf','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('47ced235-4c6a-4545-a6af-f89788835c16','role_list','org3','SAML role list','saml'),('48a9167c-c90e-41a0-8777-4eeb10ae2a2c','roles','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect scope for add user roles to the access token','openid-connect'),('4955e71e-fcbd-44c2-97e3-4666ec30d512','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('49dc8e9b-3200-4a70-8d83-048d768c0fb4','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('4a2d48bb-6f3c-4d80-b611-ead5caa4811b','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('4b35a5ec-f1a9-40a8-8349-76af269b4059','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('503018eb-526e-46f9-9c03-44a40f5e3c35','email','org1','OpenID Connect built-in scope: email','openid-connect'),('52656537-4b7e-4b5a-a422-bbb7ff4a1ca8','role_list','org1','SAML role list','saml'),('5c2d3658-3271-4e11-83df-475b4ae7dd02','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('5d39b903-a532-4087-ae4d-b98d5c4ea300','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('5f2402bf-e69d-4cda-a30b-526260371ffc','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5','profile','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect built-in scope: profile','openid-connect'),('6a8a2408-0eba-4034-b1ff-3e506471432e','email','org2','OpenID Connect built-in scope: email','openid-connect'),('6fafe85a-264e-459c-bd2c-06c40c125269','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('702b9481-ba44-4b3e-b501-49ca2a6ba554','role_list','org4','SAML role list','saml'),('77134219-b889-4735-ae4c-c74ad6d0a659','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('83394525-a8bf-4b2f-8ffc-a35a2f6eeee6','phone','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect built-in scope: phone','openid-connect'),('860c535a-7def-4498-a63a-e0b88eacc48b','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('868c4866-f7ca-421b-9b53-db0309911ebd','email','org5','OpenID Connect built-in scope: email','openid-connect'),('8daf557e-1806-4c96-b455-68b064dfc501','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('8e7d3ae1-1b68-4a70-950e-0927c04db50c','address','org1','OpenID Connect built-in scope: address','openid-connect'),('904274c0-627c-4374-92a4-d166a00cfc31','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('948c3767-493f-447e-9e2e-04c6c43c898e','acr','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('a4f06c97-77c2-4a8f-bf56-13d7edc56931','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('a6561aba-bdf2-4519-a506-e5847c1fb68c','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('a99b0263-e5dd-4556-bf8b-b3113a8d516b','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('aebfcd6c-bdf1-4478-8746-34ebee0fe7be','address','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect built-in scope: address','openid-connect'),('bfe04e22-8610-4423-89e2-7404bd411b89','role_list','org5','SAML role list','saml'),('c30b0ca8-0f83-456a-a4da-3a28517a96ac','web-origins','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c641b253-e4c8-4b3e-a8a2-c3b398643520','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('cf50e063-61d5-4c05-9172-20acd423ff7e','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('d3544999-50a3-46b2-8dee-9a04b2045e79','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('da261f6e-d8b2-4771-827c-e61680bf5ea5','email','org3','OpenID Connect built-in scope: email','openid-connect'),('dfb4aff2-3857-4efb-b44e-07dfd2bd2604','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('e5a517b6-e988-4cc4-ac64-2011b13f6a79','email','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect built-in scope: email','openid-connect'),('e63a6b11-fabc-4926-b428-3274b077c6fd','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('e9ae4da4-d4c1-49c1-a22f-4f44602a4d06','email','org4','OpenID Connect built-in scope: email','openid-connect'),('ee9e9b60-1ab1-4c23-98a0-60930144fb23','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('eee8daea-921a-4e3f-b6bb-d88e582a7db4','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('ef27cdf0-b272-4a95-875d-57feaaac0cba','microprofile-jwt','34551b50-154e-45d3-a330-d06cf0168fb9','Microprofile - JWT built-in scope','openid-connect'),('efade8d7-f56b-40d7-87a6-5a9cca3baed0','role_list','34551b50-154e-45d3-a330-d06cf0168fb9','SAML role list','saml'),('f1e33a9b-110a-4e09-981d-c7c647d4bc10','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('f8548ba1-567c-44be-88a3-5d7c5e0a0dfb','address','org4','OpenID Connect built-in scope: address','openid-connect'),('fe405ddb-dde6-49ba-94e9-ddb09f5e612d','offline_access','34551b50-154e-45d3-a330-d06cf0168fb9','OpenID Connect built-in scope: offline_access','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('0229bb30-5047-453a-8c72-5f80de7cda5b','${addressScopeConsentText}','consent.screen.text'),('0229bb30-5047-453a-8c72-5f80de7cda5b','true','display.on.consent.screen'),('0229bb30-5047-453a-8c72-5f80de7cda5b','true','include.in.token.scope'),('080b090a-e83e-495b-8f4c-623af9e790cf','${profileScopeConsentText}','consent.screen.text'),('080b090a-e83e-495b-8f4c-623af9e790cf','true','display.on.consent.screen'),('080b090a-e83e-495b-8f4c-623af9e790cf','true','include.in.token.scope'),('084eb5c9-9b38-475e-b44d-2f9e9d19baca','false','display.on.consent.screen'),('084eb5c9-9b38-475e-b44d-2f9e9d19baca','false','include.in.token.scope'),('14e91b1b-afd0-4fec-95da-ec5ca67e2c2e','','consent.screen.text'),('14e91b1b-afd0-4fec-95da-ec5ca67e2c2e','false','display.on.consent.screen'),('14e91b1b-afd0-4fec-95da-ec5ca67e2c2e','false','include.in.token.scope'),('16284508-1841-419d-8345-9793b63afbdc','${phoneScopeConsentText}','consent.screen.text'),('16284508-1841-419d-8345-9793b63afbdc','true','display.on.consent.screen'),('16284508-1841-419d-8345-9793b63afbdc','true','include.in.token.scope'),('18893819-c9ba-4768-86ab-d39bb2b68faa','${addressScopeConsentText}','consent.screen.text'),('18893819-c9ba-4768-86ab-d39bb2b68faa','true','display.on.consent.screen'),('18893819-c9ba-4768-86ab-d39bb2b68faa','true','include.in.token.scope'),('191319ef-7076-4f6e-83aa-4ae7666b0c60','${profileScopeConsentText}','consent.screen.text'),('191319ef-7076-4f6e-83aa-4ae7666b0c60','true','display.on.consent.screen'),('191319ef-7076-4f6e-83aa-4ae7666b0c60','true','include.in.token.scope'),('1fab0c38-384d-4153-8ced-0d3bfe6203c1','false','display.on.consent.screen'),('1fab0c38-384d-4153-8ced-0d3bfe6203c1','false','include.in.token.scope'),('213ccfbd-170f-484c-a811-40f853c0c93f','${offlineAccessScopeConsentText}','consent.screen.text'),('213ccfbd-170f-484c-a811-40f853c0c93f','true','display.on.consent.screen'),('2907c890-1744-4034-a206-a63f8c066f4b','${addressScopeConsentText}','consent.screen.text'),('2907c890-1744-4034-a206-a63f8c066f4b','true','display.on.consent.screen'),('2907c890-1744-4034-a206-a63f8c066f4b','true','include.in.token.scope'),('2eaf68d2-51f3-40f5-9016-89751c8461b7','${phoneScopeConsentText}','consent.screen.text'),('2eaf68d2-51f3-40f5-9016-89751c8461b7','true','display.on.consent.screen'),('2eaf68d2-51f3-40f5-9016-89751c8461b7','true','include.in.token.scope'),('38e80701-348c-4a01-bc78-ec8b2ca23457','false','display.on.consent.screen'),('38e80701-348c-4a01-bc78-ec8b2ca23457','true','include.in.token.scope'),('3a703d8c-b695-4ffa-80b6-59c25b2e42b2','','consent.screen.text'),('3a703d8c-b695-4ffa-80b6-59c25b2e42b2','false','display.on.consent.screen'),('3a703d8c-b695-4ffa-80b6-59c25b2e42b2','false','include.in.token.scope'),('3b300991-fd10-40c1-9d96-33402715e467','${samlRoleListScopeConsentText}','consent.screen.text'),('3b300991-fd10-40c1-9d96-33402715e467','true','display.on.consent.screen'),('3d225d1b-48f1-4d0e-b047-3743b2bcc1cf','${profileScopeConsentText}','consent.screen.text'),('3d225d1b-48f1-4d0e-b047-3743b2bcc1cf','true','display.on.consent.screen'),('3d225d1b-48f1-4d0e-b047-3743b2bcc1cf','true','include.in.token.scope'),('47ced235-4c6a-4545-a6af-f89788835c16','${samlRoleListScopeConsentText}','consent.screen.text'),('47ced235-4c6a-4545-a6af-f89788835c16','true','display.on.consent.screen'),('48a9167c-c90e-41a0-8777-4eeb10ae2a2c','${rolesScopeConsentText}','consent.screen.text'),('48a9167c-c90e-41a0-8777-4eeb10ae2a2c','true','display.on.consent.screen'),('48a9167c-c90e-41a0-8777-4eeb10ae2a2c','false','include.in.token.scope'),('4955e71e-fcbd-44c2-97e3-4666ec30d512','','consent.screen.text'),('4955e71e-fcbd-44c2-97e3-4666ec30d512','false','display.on.consent.screen'),('4955e71e-fcbd-44c2-97e3-4666ec30d512','false','include.in.token.scope'),('49dc8e9b-3200-4a70-8d83-048d768c0fb4','${offlineAccessScopeConsentText}','consent.screen.text'),('49dc8e9b-3200-4a70-8d83-048d768c0fb4','true','display.on.consent.screen'),('4a2d48bb-6f3c-4d80-b611-ead5caa4811b','${rolesScopeConsentText}','consent.screen.text'),('4a2d48bb-6f3c-4d80-b611-ead5caa4811b','true','display.on.consent.screen'),('4a2d48bb-6f3c-4d80-b611-ead5caa4811b','false','include.in.token.scope'),('4b35a5ec-f1a9-40a8-8349-76af269b4059','${profileScopeConsentText}','consent.screen.text'),('4b35a5ec-f1a9-40a8-8349-76af269b4059','true','display.on.consent.screen'),('4b35a5ec-f1a9-40a8-8349-76af269b4059','true','include.in.token.scope'),('503018eb-526e-46f9-9c03-44a40f5e3c35','${emailScopeConsentText}','consent.screen.text'),('503018eb-526e-46f9-9c03-44a40f5e3c35','true','display.on.consent.screen'),('503018eb-526e-46f9-9c03-44a40f5e3c35','true','include.in.token.scope'),('52656537-4b7e-4b5a-a422-bbb7ff4a1ca8','${samlRoleListScopeConsentText}','consent.screen.text'),('52656537-4b7e-4b5a-a422-bbb7ff4a1ca8','true','display.on.consent.screen'),('5c2d3658-3271-4e11-83df-475b4ae7dd02','${phoneScopeConsentText}','consent.screen.text'),('5c2d3658-3271-4e11-83df-475b4ae7dd02','true','display.on.consent.screen'),('5c2d3658-3271-4e11-83df-475b4ae7dd02','true','include.in.token.scope'),('5d39b903-a532-4087-ae4d-b98d5c4ea300','false','display.on.consent.screen'),('5d39b903-a532-4087-ae4d-b98d5c4ea300','true','include.in.token.scope'),('5f2402bf-e69d-4cda-a30b-526260371ffc','false','display.on.consent.screen'),('5f2402bf-e69d-4cda-a30b-526260371ffc','true','include.in.token.scope'),('62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5','${profileScopeConsentText}','consent.screen.text'),('62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5','true','display.on.consent.screen'),('62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5','true','include.in.token.scope'),('6a8a2408-0eba-4034-b1ff-3e506471432e','${emailScopeConsentText}','consent.screen.text'),('6a8a2408-0eba-4034-b1ff-3e506471432e','true','display.on.consent.screen'),('6a8a2408-0eba-4034-b1ff-3e506471432e','true','include.in.token.scope'),('6fafe85a-264e-459c-bd2c-06c40c125269','${phoneScopeConsentText}','consent.screen.text'),('6fafe85a-264e-459c-bd2c-06c40c125269','true','display.on.consent.screen'),('6fafe85a-264e-459c-bd2c-06c40c125269','true','include.in.token.scope'),('702b9481-ba44-4b3e-b501-49ca2a6ba554','${samlRoleListScopeConsentText}','consent.screen.text'),('702b9481-ba44-4b3e-b501-49ca2a6ba554','true','display.on.consent.screen'),('77134219-b889-4735-ae4c-c74ad6d0a659','','consent.screen.text'),('77134219-b889-4735-ae4c-c74ad6d0a659','false','display.on.consent.screen'),('77134219-b889-4735-ae4c-c74ad6d0a659','false','include.in.token.scope'),('83394525-a8bf-4b2f-8ffc-a35a2f6eeee6','${phoneScopeConsentText}','consent.screen.text'),('83394525-a8bf-4b2f-8ffc-a35a2f6eeee6','true','display.on.consent.screen'),('83394525-a8bf-4b2f-8ffc-a35a2f6eeee6','true','include.in.token.scope'),('860c535a-7def-4498-a63a-e0b88eacc48b','false','display.on.consent.screen'),('860c535a-7def-4498-a63a-e0b88eacc48b','false','include.in.token.scope'),('868c4866-f7ca-421b-9b53-db0309911ebd','${emailScopeConsentText}','consent.screen.text'),('868c4866-f7ca-421b-9b53-db0309911ebd','true','display.on.consent.screen'),('868c4866-f7ca-421b-9b53-db0309911ebd','true','include.in.token.scope'),('8daf557e-1806-4c96-b455-68b064dfc501','false','display.on.consent.screen'),('8daf557e-1806-4c96-b455-68b064dfc501','false','include.in.token.scope'),('8e7d3ae1-1b68-4a70-950e-0927c04db50c','${addressScopeConsentText}','consent.screen.text'),('8e7d3ae1-1b68-4a70-950e-0927c04db50c','true','display.on.consent.screen'),('8e7d3ae1-1b68-4a70-950e-0927c04db50c','true','include.in.token.scope'),('904274c0-627c-4374-92a4-d166a00cfc31','false','display.on.consent.screen'),('904274c0-627c-4374-92a4-d166a00cfc31','true','include.in.token.scope'),('948c3767-493f-447e-9e2e-04c6c43c898e','false','display.on.consent.screen'),('948c3767-493f-447e-9e2e-04c6c43c898e','false','include.in.token.scope'),('a4f06c97-77c2-4a8f-bf56-13d7edc56931','${offlineAccessScopeConsentText}','consent.screen.text'),('a4f06c97-77c2-4a8f-bf56-13d7edc56931','true','display.on.consent.screen'),('a6561aba-bdf2-4519-a506-e5847c1fb68c','false','display.on.consent.screen'),('a6561aba-bdf2-4519-a506-e5847c1fb68c','false','include.in.token.scope'),('a99b0263-e5dd-4556-bf8b-b3113a8d516b','${phoneScopeConsentText}','consent.screen.text'),('a99b0263-e5dd-4556-bf8b-b3113a8d516b','true','display.on.consent.screen'),('a99b0263-e5dd-4556-bf8b-b3113a8d516b','true','include.in.token.scope'),('aebfcd6c-bdf1-4478-8746-34ebee0fe7be','${addressScopeConsentText}','consent.screen.text'),('aebfcd6c-bdf1-4478-8746-34ebee0fe7be','true','display.on.consent.screen'),('aebfcd6c-bdf1-4478-8746-34ebee0fe7be','true','include.in.token.scope'),('bfe04e22-8610-4423-89e2-7404bd411b89','${samlRoleListScopeConsentText}','consent.screen.text'),('bfe04e22-8610-4423-89e2-7404bd411b89','true','display.on.consent.screen'),('c30b0ca8-0f83-456a-a4da-3a28517a96ac','','consent.screen.text'),('c30b0ca8-0f83-456a-a4da-3a28517a96ac','false','display.on.consent.screen'),('c30b0ca8-0f83-456a-a4da-3a28517a96ac','false','include.in.token.scope'),('c641b253-e4c8-4b3e-a8a2-c3b398643520','','consent.screen.text'),('c641b253-e4c8-4b3e-a8a2-c3b398643520','false','display.on.consent.screen'),('c641b253-e4c8-4b3e-a8a2-c3b398643520','false','include.in.token.scope'),('cf50e063-61d5-4c05-9172-20acd423ff7e','${profileScopeConsentText}','consent.screen.text'),('cf50e063-61d5-4c05-9172-20acd423ff7e','true','display.on.consent.screen'),('cf50e063-61d5-4c05-9172-20acd423ff7e','true','include.in.token.scope'),('d3544999-50a3-46b2-8dee-9a04b2045e79','${offlineAccessScopeConsentText}','consent.screen.text'),('d3544999-50a3-46b2-8dee-9a04b2045e79','true','display.on.consent.screen'),('da261f6e-d8b2-4771-827c-e61680bf5ea5','${emailScopeConsentText}','consent.screen.text'),('da261f6e-d8b2-4771-827c-e61680bf5ea5','true','display.on.consent.screen'),('da261f6e-d8b2-4771-827c-e61680bf5ea5','true','include.in.token.scope'),('dfb4aff2-3857-4efb-b44e-07dfd2bd2604','false','display.on.consent.screen'),('dfb4aff2-3857-4efb-b44e-07dfd2bd2604','true','include.in.token.scope'),('e5a517b6-e988-4cc4-ac64-2011b13f6a79','${emailScopeConsentText}','consent.screen.text'),('e5a517b6-e988-4cc4-ac64-2011b13f6a79','true','display.on.consent.screen'),('e5a517b6-e988-4cc4-ac64-2011b13f6a79','true','include.in.token.scope'),('e63a6b11-fabc-4926-b428-3274b077c6fd','${rolesScopeConsentText}','consent.screen.text'),('e63a6b11-fabc-4926-b428-3274b077c6fd','true','display.on.consent.screen'),('e63a6b11-fabc-4926-b428-3274b077c6fd','false','include.in.token.scope'),('e9ae4da4-d4c1-49c1-a22f-4f44602a4d06','${emailScopeConsentText}','consent.screen.text'),('e9ae4da4-d4c1-49c1-a22f-4f44602a4d06','true','display.on.consent.screen'),('e9ae4da4-d4c1-49c1-a22f-4f44602a4d06','true','include.in.token.scope'),('ee9e9b60-1ab1-4c23-98a0-60930144fb23','${rolesScopeConsentText}','consent.screen.text'),('ee9e9b60-1ab1-4c23-98a0-60930144fb23','true','display.on.consent.screen'),('ee9e9b60-1ab1-4c23-98a0-60930144fb23','false','include.in.token.scope'),('eee8daea-921a-4e3f-b6bb-d88e582a7db4','${rolesScopeConsentText}','consent.screen.text'),('eee8daea-921a-4e3f-b6bb-d88e582a7db4','true','display.on.consent.screen'),('eee8daea-921a-4e3f-b6bb-d88e582a7db4','false','include.in.token.scope'),('ef27cdf0-b272-4a95-875d-57feaaac0cba','false','display.on.consent.screen'),('ef27cdf0-b272-4a95-875d-57feaaac0cba','true','include.in.token.scope'),('efade8d7-f56b-40d7-87a6-5a9cca3baed0','${samlRoleListScopeConsentText}','consent.screen.text'),('efade8d7-f56b-40d7-87a6-5a9cca3baed0','true','display.on.consent.screen'),('f1e33a9b-110a-4e09-981d-c7c647d4bc10','${rolesScopeConsentText}','consent.screen.text'),('f1e33a9b-110a-4e09-981d-c7c647d4bc10','true','display.on.consent.screen'),('f1e33a9b-110a-4e09-981d-c7c647d4bc10','false','include.in.token.scope'),('f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0','${offlineAccessScopeConsentText}','consent.screen.text'),('f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0','true','display.on.consent.screen'),('f8548ba1-567c-44be-88a3-5d7c5e0a0dfb','${addressScopeConsentText}','consent.screen.text'),('f8548ba1-567c-44be-88a3-5d7c5e0a0dfb','true','display.on.consent.screen'),('f8548ba1-567c-44be-88a3-5d7c5e0a0dfb','true','include.in.token.scope'),('fe405ddb-dde6-49ba-94e9-ddb09f5e612d','${offlineAccessScopeConsentText}','consent.screen.text'),('fe405ddb-dde6-49ba-94e9-ddb09f5e612d','true','display.on.consent.screen');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('03e239c6-adea-41ff-9114-3f2f8c8bfa36','080b090a-e83e-495b-8f4c-623af9e790cf',1),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','6fafe85a-264e-459c-bd2c-06c40c125269',0),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','8daf557e-1806-4c96-b455-68b064dfc501',1),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('03e239c6-adea-41ff-9114-3f2f8c8bfa36','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','213ccfbd-170f-484c-a811-40f853c0c93f',0),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','2907c890-1744-4034-a206-a63f8c066f4b',0),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('04458ae7-60f6-44cd-a035-5a396eb993d5','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('04458ae7-60f6-44cd-a035-5a396eb993d5','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('04458ae7-60f6-44cd-a035-5a396eb993d5','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('04458ae7-60f6-44cd-a035-5a396eb993d5','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('04458ae7-60f6-44cd-a035-5a396eb993d5','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('04458ae7-60f6-44cd-a035-5a396eb993d5','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('04458ae7-60f6-44cd-a035-5a396eb993d5','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('04458ae7-60f6-44cd-a035-5a396eb993d5','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('064213d5-bf33-4ac5-b7be-eea67610f415','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('064213d5-bf33-4ac5-b7be-eea67610f415','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('064213d5-bf33-4ac5-b7be-eea67610f415','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('064213d5-bf33-4ac5-b7be-eea67610f415','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('064213d5-bf33-4ac5-b7be-eea67610f415','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('064213d5-bf33-4ac5-b7be-eea67610f415','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('064213d5-bf33-4ac5-b7be-eea67610f415','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('064213d5-bf33-4ac5-b7be-eea67610f415','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('089f9a37-5c83-45f3-b460-1bc4e026824e','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('089f9a37-5c83-45f3-b460-1bc4e026824e','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('089f9a37-5c83-45f3-b460-1bc4e026824e','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('089f9a37-5c83-45f3-b460-1bc4e026824e','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('089f9a37-5c83-45f3-b460-1bc4e026824e','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('089f9a37-5c83-45f3-b460-1bc4e026824e','868c4866-f7ca-421b-9b53-db0309911ebd',1),('089f9a37-5c83-45f3-b460-1bc4e026824e','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('089f9a37-5c83-45f3-b460-1bc4e026824e','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('089f9a37-5c83-45f3-b460-1bc4e026824e','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('09071635-43d3-4f1c-a363-e8bbfb639174','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('09071635-43d3-4f1c-a363-e8bbfb639174','16284508-1841-419d-8345-9793b63afbdc',0),('09071635-43d3-4f1c-a363-e8bbfb639174','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('09071635-43d3-4f1c-a363-e8bbfb639174','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('09071635-43d3-4f1c-a363-e8bbfb639174','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('09071635-43d3-4f1c-a363-e8bbfb639174','77134219-b889-4735-ae4c-c74ad6d0a659',1),('09071635-43d3-4f1c-a363-e8bbfb639174','860c535a-7def-4498-a63a-e0b88eacc48b',1),('09071635-43d3-4f1c-a363-e8bbfb639174','904274c0-627c-4374-92a4-d166a00cfc31',0),('09071635-43d3-4f1c-a363-e8bbfb639174','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('106e5dc7-a64d-49a6-8274-0385214babea','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('106e5dc7-a64d-49a6-8274-0385214babea','16284508-1841-419d-8345-9793b63afbdc',0),('106e5dc7-a64d-49a6-8274-0385214babea','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('106e5dc7-a64d-49a6-8274-0385214babea','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('106e5dc7-a64d-49a6-8274-0385214babea','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('106e5dc7-a64d-49a6-8274-0385214babea','77134219-b889-4735-ae4c-c74ad6d0a659',1),('106e5dc7-a64d-49a6-8274-0385214babea','860c535a-7def-4498-a63a-e0b88eacc48b',1),('106e5dc7-a64d-49a6-8274-0385214babea','904274c0-627c-4374-92a4-d166a00cfc31',0),('106e5dc7-a64d-49a6-8274-0385214babea','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','080b090a-e83e-495b-8f4c-623af9e790cf',1),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','6fafe85a-264e-459c-bd2c-06c40c125269',0),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','8daf557e-1806-4c96-b455-68b064dfc501',1),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('19f88bac-766a-42e7-8df2-e247cd3f10bf','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('19f88bac-766a-42e7-8df2-e247cd3f10bf','213ccfbd-170f-484c-a811-40f853c0c93f',0),('19f88bac-766a-42e7-8df2-e247cd3f10bf','2907c890-1744-4034-a206-a63f8c066f4b',0),('19f88bac-766a-42e7-8df2-e247cd3f10bf','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('19f88bac-766a-42e7-8df2-e247cd3f10bf','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('19f88bac-766a-42e7-8df2-e247cd3f10bf','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('19f88bac-766a-42e7-8df2-e247cd3f10bf','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('19f88bac-766a-42e7-8df2-e247cd3f10bf','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('1d5b7a91-fec4-49bf-9946-4bfa01cd24d5','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','16284508-1841-419d-8345-9793b63afbdc',0),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','77134219-b889-4735-ae4c-c74ad6d0a659',1),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','860c535a-7def-4498-a63a-e0b88eacc48b',1),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','904274c0-627c-4374-92a4-d166a00cfc31',0),('1df42dc9-8ec2-416c-96f2-2b8b5005eb36','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('1e661719-8161-4c86-b686-a215cbcff768','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('1e661719-8161-4c86-b686-a215cbcff768','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('1e661719-8161-4c86-b686-a215cbcff768','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('1e661719-8161-4c86-b686-a215cbcff768','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('1e661719-8161-4c86-b686-a215cbcff768','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('1e661719-8161-4c86-b686-a215cbcff768','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('1e661719-8161-4c86-b686-a215cbcff768','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('1e661719-8161-4c86-b686-a215cbcff768','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','868c4866-f7ca-421b-9b53-db0309911ebd',1),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('2b14a607-36f6-4465-aa57-9d7cf52372d6','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('2b14a607-36f6-4465-aa57-9d7cf52372d6','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('2b14a607-36f6-4465-aa57-9d7cf52372d6','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('2b14a607-36f6-4465-aa57-9d7cf52372d6','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('2b14a607-36f6-4465-aa57-9d7cf52372d6','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('2b14a607-36f6-4465-aa57-9d7cf52372d6','868c4866-f7ca-421b-9b53-db0309911ebd',1),('2b14a607-36f6-4465-aa57-9d7cf52372d6','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('2b14a607-36f6-4465-aa57-9d7cf52372d6','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('2b14a607-36f6-4465-aa57-9d7cf52372d6','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','948c3767-493f-447e-9e2e-04c6c43c898e',1),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('2f0b7166-66ae-45dd-9ac4-7386f171b4e9','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('30bd9611-6954-42fa-8383-0951f5ee6e5a','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('30bd9611-6954-42fa-8383-0951f5ee6e5a','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('30bd9611-6954-42fa-8383-0951f5ee6e5a','213ccfbd-170f-484c-a811-40f853c0c93f',0),('30bd9611-6954-42fa-8383-0951f5ee6e5a','2907c890-1744-4034-a206-a63f8c066f4b',0),('30bd9611-6954-42fa-8383-0951f5ee6e5a','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('30bd9611-6954-42fa-8383-0951f5ee6e5a','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('30bd9611-6954-42fa-8383-0951f5ee6e5a','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('30bd9611-6954-42fa-8383-0951f5ee6e5a','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('30bd9611-6954-42fa-8383-0951f5ee6e5a','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('323db795-227a-46f6-bdde-d509c310ef10','080b090a-e83e-495b-8f4c-623af9e790cf',1),('323db795-227a-46f6-bdde-d509c310ef10','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('323db795-227a-46f6-bdde-d509c310ef10','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('323db795-227a-46f6-bdde-d509c310ef10','6fafe85a-264e-459c-bd2c-06c40c125269',0),('323db795-227a-46f6-bdde-d509c310ef10','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('323db795-227a-46f6-bdde-d509c310ef10','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('323db795-227a-46f6-bdde-d509c310ef10','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('323db795-227a-46f6-bdde-d509c310ef10','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('36992eed-8166-4670-abd5-3d16881a2b78','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('36992eed-8166-4670-abd5-3d16881a2b78','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('36992eed-8166-4670-abd5-3d16881a2b78','213ccfbd-170f-484c-a811-40f853c0c93f',0),('36992eed-8166-4670-abd5-3d16881a2b78','2907c890-1744-4034-a206-a63f8c066f4b',0),('36992eed-8166-4670-abd5-3d16881a2b78','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('36992eed-8166-4670-abd5-3d16881a2b78','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('36992eed-8166-4670-abd5-3d16881a2b78','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('36992eed-8166-4670-abd5-3d16881a2b78','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('36992eed-8166-4670-abd5-3d16881a2b78','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','948c3767-493f-447e-9e2e-04c6c43c898e',1),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('42caf3ad-d189-4018-b393-b4b58db92dc7','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('42caf3ad-d189-4018-b393-b4b58db92dc7','16284508-1841-419d-8345-9793b63afbdc',0),('42caf3ad-d189-4018-b393-b4b58db92dc7','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('42caf3ad-d189-4018-b393-b4b58db92dc7','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('42caf3ad-d189-4018-b393-b4b58db92dc7','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('42caf3ad-d189-4018-b393-b4b58db92dc7','77134219-b889-4735-ae4c-c74ad6d0a659',1),('42caf3ad-d189-4018-b393-b4b58db92dc7','860c535a-7def-4498-a63a-e0b88eacc48b',1),('42caf3ad-d189-4018-b393-b4b58db92dc7','904274c0-627c-4374-92a4-d166a00cfc31',0),('42caf3ad-d189-4018-b393-b4b58db92dc7','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('4902cb80-2936-4df4-a38e-b2200ea3269d','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('4902cb80-2936-4df4-a38e-b2200ea3269d','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('4902cb80-2936-4df4-a38e-b2200ea3269d','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('4902cb80-2936-4df4-a38e-b2200ea3269d','948c3767-493f-447e-9e2e-04c6c43c898e',1),('4902cb80-2936-4df4-a38e-b2200ea3269d','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('4902cb80-2936-4df4-a38e-b2200ea3269d','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('4902cb80-2936-4df4-a38e-b2200ea3269d','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('4902cb80-2936-4df4-a38e-b2200ea3269d','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('4902cb80-2936-4df4-a38e-b2200ea3269d','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('4d9fbca2-b670-49f6-97fa-0403247f12f7','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('4d9fbca2-b670-49f6-97fa-0403247f12f7','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('4d9fbca2-b670-49f6-97fa-0403247f12f7','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('4d9fbca2-b670-49f6-97fa-0403247f12f7','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('4d9fbca2-b670-49f6-97fa-0403247f12f7','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('4d9fbca2-b670-49f6-97fa-0403247f12f7','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('4d9fbca2-b670-49f6-97fa-0403247f12f7','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('4d9fbca2-b670-49f6-97fa-0403247f12f7','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('4d9fbca2-b670-49f6-97fa-0403247f12f7','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('57d37b71-d396-4739-a413-609a9a6401f7','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('57d37b71-d396-4739-a413-609a9a6401f7','16284508-1841-419d-8345-9793b63afbdc',0),('57d37b71-d396-4739-a413-609a9a6401f7','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('57d37b71-d396-4739-a413-609a9a6401f7','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('57d37b71-d396-4739-a413-609a9a6401f7','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('57d37b71-d396-4739-a413-609a9a6401f7','77134219-b889-4735-ae4c-c74ad6d0a659',1),('57d37b71-d396-4739-a413-609a9a6401f7','904274c0-627c-4374-92a4-d166a00cfc31',0),('57d37b71-d396-4739-a413-609a9a6401f7','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('5a70c154-dc6c-438c-85ba-0df54eb491c6','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('5a70c154-dc6c-438c-85ba-0df54eb491c6','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('5a70c154-dc6c-438c-85ba-0df54eb491c6','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('5a70c154-dc6c-438c-85ba-0df54eb491c6','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('5a70c154-dc6c-438c-85ba-0df54eb491c6','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('5a70c154-dc6c-438c-85ba-0df54eb491c6','868c4866-f7ca-421b-9b53-db0309911ebd',1),('5a70c154-dc6c-438c-85ba-0df54eb491c6','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('5a70c154-dc6c-438c-85ba-0df54eb491c6','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('607de3b9-158a-4754-8db6-e7f58142e546','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('607de3b9-158a-4754-8db6-e7f58142e546','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('607de3b9-158a-4754-8db6-e7f58142e546','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('607de3b9-158a-4754-8db6-e7f58142e546','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('607de3b9-158a-4754-8db6-e7f58142e546','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('607de3b9-158a-4754-8db6-e7f58142e546','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('607de3b9-158a-4754-8db6-e7f58142e546','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('607de3b9-158a-4754-8db6-e7f58142e546','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('607de3b9-158a-4754-8db6-e7f58142e546','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('6247b8b2-2f1e-48c5-83c6-2107984fc182','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('6247b8b2-2f1e-48c5-83c6-2107984fc182','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('6247b8b2-2f1e-48c5-83c6-2107984fc182','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('6247b8b2-2f1e-48c5-83c6-2107984fc182','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('6247b8b2-2f1e-48c5-83c6-2107984fc182','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('6247b8b2-2f1e-48c5-83c6-2107984fc182','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('6247b8b2-2f1e-48c5-83c6-2107984fc182','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('6247b8b2-2f1e-48c5-83c6-2107984fc182','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('6247b8b2-2f1e-48c5-83c6-2107984fc182','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('6323d17f-f227-430a-97da-ec6103441167','080b090a-e83e-495b-8f4c-623af9e790cf',1),('6323d17f-f227-430a-97da-ec6103441167','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('6323d17f-f227-430a-97da-ec6103441167','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('6323d17f-f227-430a-97da-ec6103441167','6fafe85a-264e-459c-bd2c-06c40c125269',0),('6323d17f-f227-430a-97da-ec6103441167','8daf557e-1806-4c96-b455-68b064dfc501',1),('6323d17f-f227-430a-97da-ec6103441167','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('6323d17f-f227-430a-97da-ec6103441167','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('6323d17f-f227-430a-97da-ec6103441167','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('6323d17f-f227-430a-97da-ec6103441167','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','213ccfbd-170f-484c-a811-40f853c0c93f',0),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','2907c890-1744-4034-a206-a63f8c066f4b',0),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('673fe574-2aad-4c41-8fdc-9c3e7ac04048','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','16284508-1841-419d-8345-9793b63afbdc',0),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','77134219-b889-4735-ae4c-c74ad6d0a659',1),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','860c535a-7def-4498-a63a-e0b88eacc48b',1),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','904274c0-627c-4374-92a4-d166a00cfc31',0),('68409b6b-a222-4c2a-93aa-7d9e21b6f79a','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('6f99307f-1aad-4431-8856-afe93d965996','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('6f99307f-1aad-4431-8856-afe93d965996','16284508-1841-419d-8345-9793b63afbdc',0),('6f99307f-1aad-4431-8856-afe93d965996','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('6f99307f-1aad-4431-8856-afe93d965996','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('6f99307f-1aad-4431-8856-afe93d965996','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('6f99307f-1aad-4431-8856-afe93d965996','77134219-b889-4735-ae4c-c74ad6d0a659',1),('6f99307f-1aad-4431-8856-afe93d965996','860c535a-7def-4498-a63a-e0b88eacc48b',1),('6f99307f-1aad-4431-8856-afe93d965996','904274c0-627c-4374-92a4-d166a00cfc31',0),('6f99307f-1aad-4431-8856-afe93d965996','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('7785feb2-4924-4cfa-84bf-bdf8633a3193','080b090a-e83e-495b-8f4c-623af9e790cf',1),('7785feb2-4924-4cfa-84bf-bdf8633a3193','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('7785feb2-4924-4cfa-84bf-bdf8633a3193','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('7785feb2-4924-4cfa-84bf-bdf8633a3193','6fafe85a-264e-459c-bd2c-06c40c125269',0),('7785feb2-4924-4cfa-84bf-bdf8633a3193','8daf557e-1806-4c96-b455-68b064dfc501',1),('7785feb2-4924-4cfa-84bf-bdf8633a3193','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('7785feb2-4924-4cfa-84bf-bdf8633a3193','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('7785feb2-4924-4cfa-84bf-bdf8633a3193','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('7785feb2-4924-4cfa-84bf-bdf8633a3193','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('77e7fcf2-c508-4740-8fec-308f4472cfd7','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('77e7fcf2-c508-4740-8fec-308f4472cfd7','213ccfbd-170f-484c-a811-40f853c0c93f',0),('77e7fcf2-c508-4740-8fec-308f4472cfd7','2907c890-1744-4034-a206-a63f8c066f4b',0),('77e7fcf2-c508-4740-8fec-308f4472cfd7','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('77e7fcf2-c508-4740-8fec-308f4472cfd7','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('77e7fcf2-c508-4740-8fec-308f4472cfd7','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('77e7fcf2-c508-4740-8fec-308f4472cfd7','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('77e7fcf2-c508-4740-8fec-308f4472cfd7','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('7b641f77-acc3-4adc-9f14-f2da533bbee2','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('7b641f77-acc3-4adc-9f14-f2da533bbee2','16284508-1841-419d-8345-9793b63afbdc',0),('7b641f77-acc3-4adc-9f14-f2da533bbee2','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('7b641f77-acc3-4adc-9f14-f2da533bbee2','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('7b641f77-acc3-4adc-9f14-f2da533bbee2','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('7b641f77-acc3-4adc-9f14-f2da533bbee2','77134219-b889-4735-ae4c-c74ad6d0a659',1),('7b641f77-acc3-4adc-9f14-f2da533bbee2','904274c0-627c-4374-92a4-d166a00cfc31',0),('7b641f77-acc3-4adc-9f14-f2da533bbee2','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','213ccfbd-170f-484c-a811-40f853c0c93f',0),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','2907c890-1744-4034-a206-a63f8c066f4b',0),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('8dfc9620-ac5b-49ba-b8be-d792a7ce1e80','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('90c703cb-e94f-4cc5-847c-95cfc1e84846','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('90c703cb-e94f-4cc5-847c-95cfc1e84846','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('90c703cb-e94f-4cc5-847c-95cfc1e84846','213ccfbd-170f-484c-a811-40f853c0c93f',0),('90c703cb-e94f-4cc5-847c-95cfc1e84846','2907c890-1744-4034-a206-a63f8c066f4b',0),('90c703cb-e94f-4cc5-847c-95cfc1e84846','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('90c703cb-e94f-4cc5-847c-95cfc1e84846','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('90c703cb-e94f-4cc5-847c-95cfc1e84846','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('90c703cb-e94f-4cc5-847c-95cfc1e84846','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('90c703cb-e94f-4cc5-847c-95cfc1e84846','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('933bd7be-382d-4836-9959-e1d62aa45403','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('933bd7be-382d-4836-9959-e1d62aa45403','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('933bd7be-382d-4836-9959-e1d62aa45403','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('933bd7be-382d-4836-9959-e1d62aa45403','948c3767-493f-447e-9e2e-04c6c43c898e',1),('933bd7be-382d-4836-9959-e1d62aa45403','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('933bd7be-382d-4836-9959-e1d62aa45403','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('933bd7be-382d-4836-9959-e1d62aa45403','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('933bd7be-382d-4836-9959-e1d62aa45403','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('933bd7be-382d-4836-9959-e1d62aa45403','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('a2a40da7-56ca-4059-8a70-291064b5d6b0','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('a2a40da7-56ca-4059-8a70-291064b5d6b0','16284508-1841-419d-8345-9793b63afbdc',0),('a2a40da7-56ca-4059-8a70-291064b5d6b0','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('a2a40da7-56ca-4059-8a70-291064b5d6b0','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('a2a40da7-56ca-4059-8a70-291064b5d6b0','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('a2a40da7-56ca-4059-8a70-291064b5d6b0','77134219-b889-4735-ae4c-c74ad6d0a659',1),('a2a40da7-56ca-4059-8a70-291064b5d6b0','860c535a-7def-4498-a63a-e0b88eacc48b',1),('a2a40da7-56ca-4059-8a70-291064b5d6b0','904274c0-627c-4374-92a4-d166a00cfc31',0),('a2a40da7-56ca-4059-8a70-291064b5d6b0','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','16284508-1841-419d-8345-9793b63afbdc',0),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','77134219-b889-4735-ae4c-c74ad6d0a659',1),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','904274c0-627c-4374-92a4-d166a00cfc31',0),('a38acb55-dd09-4a1d-a9e3-9d2811351c30','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('a4005476-cc19-4fe9-a6ed-e1ec00babf59','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('af9f4fad-edcc-40d4-9a71-58252b58156c','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('af9f4fad-edcc-40d4-9a71-58252b58156c','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('af9f4fad-edcc-40d4-9a71-58252b58156c','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('af9f4fad-edcc-40d4-9a71-58252b58156c','948c3767-493f-447e-9e2e-04c6c43c898e',1),('af9f4fad-edcc-40d4-9a71-58252b58156c','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('af9f4fad-edcc-40d4-9a71-58252b58156c','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('af9f4fad-edcc-40d4-9a71-58252b58156c','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('af9f4fad-edcc-40d4-9a71-58252b58156c','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('af9f4fad-edcc-40d4-9a71-58252b58156c','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','868c4866-f7ca-421b-9b53-db0309911ebd',1),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('b38e44fa-ba8b-4da2-87fd-36b67698d9c8','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','080b090a-e83e-495b-8f4c-623af9e790cf',1),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','6fafe85a-264e-459c-bd2c-06c40c125269',0),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','8daf557e-1806-4c96-b455-68b064dfc501',1),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('b5ffaf42-e1cb-4e49-bc4e-737378bf4e50','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('bd270c1d-636d-4691-8268-c3975fa8e1c6','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('bd270c1d-636d-4691-8268-c3975fa8e1c6','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('bd270c1d-636d-4691-8268-c3975fa8e1c6','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('bd270c1d-636d-4691-8268-c3975fa8e1c6','948c3767-493f-447e-9e2e-04c6c43c898e',1),('bd270c1d-636d-4691-8268-c3975fa8e1c6','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('bd270c1d-636d-4691-8268-c3975fa8e1c6','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('bd270c1d-636d-4691-8268-c3975fa8e1c6','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('bd270c1d-636d-4691-8268-c3975fa8e1c6','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('bd270c1d-636d-4691-8268-c3975fa8e1c6','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('c4dc76fb-a8ec-4565-b899-384117fcb403','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('c4dc76fb-a8ec-4565-b899-384117fcb403','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('c4dc76fb-a8ec-4565-b899-384117fcb403','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('c4dc76fb-a8ec-4565-b899-384117fcb403','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('c4dc76fb-a8ec-4565-b899-384117fcb403','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('c4dc76fb-a8ec-4565-b899-384117fcb403','868c4866-f7ca-421b-9b53-db0309911ebd',1),('c4dc76fb-a8ec-4565-b899-384117fcb403','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('c4dc76fb-a8ec-4565-b899-384117fcb403','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('c8081e92-8564-41bd-a38a-e381df72e417','080b090a-e83e-495b-8f4c-623af9e790cf',1),('c8081e92-8564-41bd-a38a-e381df72e417','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('c8081e92-8564-41bd-a38a-e381df72e417','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('c8081e92-8564-41bd-a38a-e381df72e417','6fafe85a-264e-459c-bd2c-06c40c125269',0),('c8081e92-8564-41bd-a38a-e381df72e417','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('c8081e92-8564-41bd-a38a-e381df72e417','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('c8081e92-8564-41bd-a38a-e381df72e417','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('c8081e92-8564-41bd-a38a-e381df72e417','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('ca49d0bf-2577-4388-b782-1547474163f8','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('ca49d0bf-2577-4388-b782-1547474163f8','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('ca49d0bf-2577-4388-b782-1547474163f8','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('ca49d0bf-2577-4388-b782-1547474163f8','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('ca49d0bf-2577-4388-b782-1547474163f8','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('ca49d0bf-2577-4388-b782-1547474163f8','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('ca49d0bf-2577-4388-b782-1547474163f8','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('ca49d0bf-2577-4388-b782-1547474163f8','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('ca49d0bf-2577-4388-b782-1547474163f8','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('cb793279-2d62-4d18-9bca-b8ee563a6e35','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('cb793279-2d62-4d18-9bca-b8ee563a6e35','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('cb793279-2d62-4d18-9bca-b8ee563a6e35','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('cb793279-2d62-4d18-9bca-b8ee563a6e35','948c3767-493f-447e-9e2e-04c6c43c898e',1),('cb793279-2d62-4d18-9bca-b8ee563a6e35','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('cb793279-2d62-4d18-9bca-b8ee563a6e35','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('cb793279-2d62-4d18-9bca-b8ee563a6e35','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('cb793279-2d62-4d18-9bca-b8ee563a6e35','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('cb793279-2d62-4d18-9bca-b8ee563a6e35','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('d288df77-676b-418a-815d-15169d1631bf','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('d288df77-676b-418a-815d-15169d1631bf','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('d288df77-676b-418a-815d-15169d1631bf','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('d288df77-676b-418a-815d-15169d1631bf','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('d288df77-676b-418a-815d-15169d1631bf','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('d288df77-676b-418a-815d-15169d1631bf','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('d288df77-676b-418a-815d-15169d1631bf','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('d288df77-676b-418a-815d-15169d1631bf','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('d288df77-676b-418a-815d-15169d1631bf','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('d3be74ca-18ef-4b23-8eac-a11225a59d54','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('d3be74ca-18ef-4b23-8eac-a11225a59d54','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('d3be74ca-18ef-4b23-8eac-a11225a59d54','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('d3be74ca-18ef-4b23-8eac-a11225a59d54','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('d3be74ca-18ef-4b23-8eac-a11225a59d54','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('d3be74ca-18ef-4b23-8eac-a11225a59d54','868c4866-f7ca-421b-9b53-db0309911ebd',1),('d3be74ca-18ef-4b23-8eac-a11225a59d54','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('d3be74ca-18ef-4b23-8eac-a11225a59d54','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('d3be74ca-18ef-4b23-8eac-a11225a59d54','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','080b090a-e83e-495b-8f4c-623af9e790cf',1),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','6fafe85a-264e-459c-bd2c-06c40c125269',0),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','8daf557e-1806-4c96-b455-68b064dfc501',1),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('d6a71c1a-016b-4c87-a19a-d6c83aa89934','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','868c4866-f7ca-421b-9b53-db0309911ebd',1),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('d9558b6d-e578-4475-a8f6-a330bc096e1a','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('d9558b6d-e578-4475-a8f6-a330bc096e1a','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('d9558b6d-e578-4475-a8f6-a330bc096e1a','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('d9558b6d-e578-4475-a8f6-a330bc096e1a','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('d9558b6d-e578-4475-a8f6-a330bc096e1a','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('d9558b6d-e578-4475-a8f6-a330bc096e1a','868c4866-f7ca-421b-9b53-db0309911ebd',1),('d9558b6d-e578-4475-a8f6-a330bc096e1a','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('d9558b6d-e578-4475-a8f6-a330bc096e1a','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('d9558b6d-e578-4475-a8f6-a330bc096e1a','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','868c4866-f7ca-421b-9b53-db0309911ebd',1),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','213ccfbd-170f-484c-a811-40f853c0c93f',0),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','2907c890-1744-4034-a206-a63f8c066f4b',0),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('f6f43786-38d9-49a9-918c-c4268bfaa15a','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('f6f43786-38d9-49a9-918c-c4268bfaa15a','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('f6f43786-38d9-49a9-918c-c4268bfaa15a','213ccfbd-170f-484c-a811-40f853c0c93f',0),('f6f43786-38d9-49a9-918c-c4268bfaa15a','2907c890-1744-4034-a206-a63f8c066f4b',0),('f6f43786-38d9-49a9-918c-c4268bfaa15a','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('f6f43786-38d9-49a9-918c-c4268bfaa15a','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('f6f43786-38d9-49a9-918c-c4268bfaa15a','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('f6f43786-38d9-49a9-918c-c4268bfaa15a','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('f6f43786-38d9-49a9-918c-c4268bfaa15a','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('fa920e55-8c91-4e0f-8808-159a7c61871d','080b090a-e83e-495b-8f4c-623af9e790cf',1),('fa920e55-8c91-4e0f-8808-159a7c61871d','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('fa920e55-8c91-4e0f-8808-159a7c61871d','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('fa920e55-8c91-4e0f-8808-159a7c61871d','6fafe85a-264e-459c-bd2c-06c40c125269',0),('fa920e55-8c91-4e0f-8808-159a7c61871d','8daf557e-1806-4c96-b455-68b064dfc501',1),('fa920e55-8c91-4e0f-8808-159a7c61871d','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('fa920e55-8c91-4e0f-8808-159a7c61871d','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('fa920e55-8c91-4e0f-8808-159a7c61871d','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('fa920e55-8c91-4e0f-8808-159a7c61871d','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('fe590829-5a72-46df-b480-593cccd24fca','080b090a-e83e-495b-8f4c-623af9e790cf',1),('fe590829-5a72-46df-b480-593cccd24fca','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('fe590829-5a72-46df-b480-593cccd24fca','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('fe590829-5a72-46df-b480-593cccd24fca','6fafe85a-264e-459c-bd2c-06c40c125269',0),('fe590829-5a72-46df-b480-593cccd24fca','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('fe590829-5a72-46df-b480-593cccd24fca','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('fe590829-5a72-46df-b480-593cccd24fca','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('fe590829-5a72-46df-b480-593cccd24fca','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0);
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('213ccfbd-170f-484c-a811-40f853c0c93f','e571c924-ced4-44cd-8da7-9b9ccab965d9'),('49dc8e9b-3200-4a70-8d83-048d768c0fb4','d86078fb-dd0b-4e66-bbb7-adc41283b74b'),('a4f06c97-77c2-4a8f-bf56-13d7edc56931','33298592-c483-4023-89d9-ee858de3062d'),('d3544999-50a3-46b2-8dee-9a04b2045e79','fe939665-3c16-4d1d-9b14-6904b79be530'),('f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0','7a323dc0-efee-41d0-90b0-0716cb5997ce'),('fe405ddb-dde6-49ba-94e9-ddb09f5e612d','ab519ed2-9b0f-48a3-8278-e7f816750c20');
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
INSERT INTO `COMPONENT` VALUES ('0181fe2f-9333-48f4-946a-1c7a4be643ba','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('04f74fe4-b652-4b77-9eec-2cf810aabad6','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('0552298c-6098-4587-a006-af741e7af06c','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('06172940-3ab0-49c6-850e-197373abc4ef','Full Scope Disabled','34551b50-154e-45d3-a330-d06cf0168fb9','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','anonymous'),('0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('0dd871f1-f8b1-4aa9-8fb1-34b4a361ee9a','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('0fbdbb7a-f1bb-4e31-8fec-6799e6dbb3f0',NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','34551b50-154e-45d3-a330-d06cf0168fb9',NULL),('13020d24-559b-4c48-85ef-11fd955256ad',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('14d001c7-89e5-476a-a2f5-3ef50f8f6a67','hmac-generated-hs512','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('189bbb35-70c5-4c2b-90ac-a71e04204f6c','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('1b22f244-dc2c-445c-bb79-8b7aa9345d19','rsa-enc-generated','34551b50-154e-45d3-a330-d06cf0168fb9','rsa-enc-generated','org.keycloak.keys.KeyProvider','34551b50-154e-45d3-a330-d06cf0168fb9',NULL),('1db9fac6-bec3-43c2-ac71-b507cfba6e4a','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('211dfb9c-b9cf-4355-8419-1a779816e818','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('23ad7c15-63da-4f88-bda9-41e82d4ef044','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('25ccb98d-c415-4520-9d0b-6f0132b31260','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('264e437e-4573-4812-a6b2-5afc4ebedfe3','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('2ac07c1a-4f96-4212-a5ed-e85d05862b72','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('34fa4535-1e3c-4158-a4f9-480d171e9de6','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('355eedbd-0477-4f47-b990-74a2939aa103','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('3b6ec4c0-404a-4561-9343-4ed0b6b746e4','rsa-generated','34551b50-154e-45d3-a330-d06cf0168fb9','rsa-generated','org.keycloak.keys.KeyProvider','34551b50-154e-45d3-a330-d06cf0168fb9',NULL),('3ce4dc39-96d8-4317-bcc9-d0419154e130','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('42906ce0-73ae-486e-9a75-e24c2e9e5711','hmac-generated-hs512','34551b50-154e-45d3-a330-d06cf0168fb9','hmac-generated','org.keycloak.keys.KeyProvider','34551b50-154e-45d3-a330-d06cf0168fb9',NULL),('485671d4-b4ac-4a2c-aa7f-e5c0df1f782d','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('497b0f9a-4b84-4feb-a7fc-3877b883e130','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','Allowed Protocol Mapper Types','34551b50-154e-45d3-a330-d06cf0168fb9','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','anonymous'),('4fa14bc4-d613-42e3-b24a-9b1b72a07491','Consent Required','34551b50-154e-45d3-a330-d06cf0168fb9','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','anonymous'),('57997e03-8b48-44e8-b4da-6b03e00e817a','hmac-generated-hs512','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('57bdc980-81cd-4ada-a584-cec2421764f3','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('57be7dbf-fd39-4562-a197-4388d2e3502f','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('58bbfd47-af16-4e99-abef-a7559bcb906d','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('5b9ed8ba-52d5-4222-9f9e-b2b989627c24',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('5e140cd8-4dbe-4ebc-8178-393fc137ca39','hmac-generated-hs512','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('636eb402-3d16-4999-a43e-bcc5fa5864ef','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('677fe24f-a031-4d92-a4a8-aaa4ea9e6f2e',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('691ac417-825a-43a9-a99e-d7d14b1afdea','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('6a1a628b-c4bc-4bb6-a80d-b55681f70827','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('6a7da88f-fa11-4d0b-a323-76814f3a4832','Max Clients Limit','34551b50-154e-45d3-a330-d06cf0168fb9','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','anonymous'),('6a9952cd-db05-42c7-a27e-11071f6c063b','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('6d39217c-b5fc-47b9-a2af-6cac0497e37b','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('6dae44bc-d224-4bd6-a480-ea8838b4c02a','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('6e3dd92c-d4c4-48d3-95e2-00dbc0db4129','Allowed Client Scopes','34551b50-154e-45d3-a330-d06cf0168fb9','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','authenticated'),('74ccdf01-e294-4c26-ae81-475d7e8f4700','hmac-generated-hs512','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('81882264-359d-42c7-8b79-b9e7115e1a99','hmac-generated-hs512','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('88ee5c4d-565a-4d01-92c0-2d276d6fbc66','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('8a64b437-edf9-4806-a137-2a3919c4615e','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('8a673777-47f8-45e5-b7d3-21bb61feaab2','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('8d046660-22e2-40d3-b632-51ad3c0b6418','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('8e2f99b4-ac4b-4e9a-b5d5-71cc3203f19d','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('8f237391-d886-4f18-ba41-5977d5a3f8c7','Trusted Hosts','34551b50-154e-45d3-a330-d06cf0168fb9','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','anonymous'),('8f6e3c71-8ad6-4f21-906f-da0b5ecbaae5','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('9176ed59-ae32-4080-b376-ca315bf2b0c6','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('9331128c-8eb0-4ce2-a5f5-43e6e200deec','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('97e8add5-de31-475c-8f15-797e4da1b647','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('9bf3d73b-de6e-4d03-b706-336c07092d0a','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('9e4553d6-7236-4751-88a9-dff9c4264626','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('afa78694-a4a3-453d-8fb2-c64412e9d427','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('afb6537e-30e9-4680-bba7-a1b1a5e31e07','Allowed Protocol Mapper Types','34551b50-154e-45d3-a330-d06cf0168fb9','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','authenticated'),('afea7a07-4dfe-481d-a214-918ad036138d',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('b15edf1e-180b-47bb-b97e-df749e6dc886','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('b316df5f-ebe4-45a0-825c-be55eb70b12b','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('b3c284d1-c542-41d2-8fb9-378ceb757b38','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('cb93e354-4356-414c-b59f-46e0070dc54f',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('cee54327-513e-4593-97c9-22c5879a81e6','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('d0c78106-7240-4c08-b790-c769df5bf63c','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('d629a485-f8c0-4e72-b4a0-a517f89be6b6','Allowed Client Scopes','34551b50-154e-45d3-a330-d06cf0168fb9','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','anonymous'),('d99528b0-7516-477d-904c-0ce895eba7df','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('d99633ca-7e2b-4493-ab37-0a3e62c07ab9','aes-generated','34551b50-154e-45d3-a330-d06cf0168fb9','aes-generated','org.keycloak.keys.KeyProvider','34551b50-154e-45d3-a330-d06cf0168fb9',NULL),('dcc134fb-fe78-4ee1-846a-7cdf92d933f1','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('e0c61a62-738d-4219-8490-2bbf077957cd','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('e0e97548-c83e-48da-9346-aaa611d54d9d','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('e1284e00-bf62-4477-bc9e-c128c88ab53b','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('e1d19b46-2d54-44e6-930d-53b1a23f80bb','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('e78145c9-906b-4622-9019-7fe628ce7aa2','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('ee01ee45-44b9-498d-8655-253e7c4e7809','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('f0b367ed-fc7f-413e-b3c1-813217203c9b','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('f19ab814-850c-4be7-b19f-6ff50010029d','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('f98b8f05-5cb5-4568-9a32-318f75f013c6','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('fcb1f08a-3a57-4016-9d59-e5b4727e5bd3','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('008e193e-44b3-4a3b-905d-5ed6cfbd5282','57be7dbf-fd39-4562-a197-4388d2e3502f','algorithm','RSA-OAEP'),('00e79868-57d5-4b04-9545-968b8db6e865','2ac07c1a-4f96-4212-a5ed-e85d05862b72','algorithm','RSA-OAEP'),('01bb0028-7380-48d7-8fb2-999fe9c80571','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','oidc-address-mapper'),('02d2fa04-e2ba-4141-8806-281306500c3f','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','oidc-address-mapper'),('039153e7-bde7-4ad4-a81f-24ccd47bed5e','8e2f99b4-ac4b-4e9a-b5d5-71cc3203f19d','kid','b08a6902-73b5-4fb1-9423-a461c861646e'),('03f6cd66-5121-422a-888c-ab1948b96513','0181fe2f-9333-48f4-946a-1c7a4be643ba','priority','100'),('041a9e43-16c7-490a-bfd7-35406e407f15','5e140cd8-4dbe-4ebc-8178-393fc137ca39','secret','lmGRUkSTFC3qE1fUNiPosCyy2gzfEiktE0p0a3DKTFIAgQ4BHdngaYayX-joqVP5M1w80P83KEp-2D9yZxlD7NI1HzmaD-eK6G4F2RliB1HCvJHO14azTuRLr4seuzp_I0_A77oxwOhauwFHR30YFaWAsRZpoJB_XwdvSygZ4YI'),('0536ecc9-d2b7-490c-8ebe-f4d979240cc6','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','oidc-address-mapper'),('07b0fd85-e118-4789-baab-aac6921346c0','e78145c9-906b-4622-9019-7fe628ce7aa2','keyUse','SIG'),('0934884c-a429-4341-9ba6-c4c42c1281d8','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','oidc-address-mapper'),('09abd04a-077b-4e1b-80a0-8a8e561775d9','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('0a000188-dc9d-4c5d-ac34-4e50e4116930','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','saml-user-property-mapper'),('0a30306e-d187-4366-8d93-2fc101b929c4','6a7da88f-fa11-4d0b-a323-76814f3a4832','max-clients','200'),('0d1ed366-c86a-4917-9487-acadcfddfe8c','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('0dea7d16-a4d7-489a-a970-7693cb5f1b53','58bbfd47-af16-4e99-abef-a7559bcb906d','algorithm','RSA-OAEP'),('0e4d5950-92b5-49b0-82a7-a9bfa406773f','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','saml-role-list-mapper'),('0e74c6d8-2c97-421f-b065-2a373d489552','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','saml-role-list-mapper'),('0f33a795-a588-4e19-b079-0cb4a4265435','81882264-359d-42c7-8b79-b9e7115e1a99','secret','oiWTlR9Wx4BE_2I674DUsfyI6_J4Lmwnc_QPsLLb1vpan52SfxqlFGu1uOfegMN33OEe80ObEPJywYopfSwmtVKXtqw_z42X_e7-lcgkJnkvSRkD0UItgA2YMHgPCTUVf2z8kaimw2bHzx3E7JGjNMnuiTaai4dXpgxD87-CfgI'),('0f36b169-10c2-4855-a48a-59d25cb653f5','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('0f5dabdc-388f-4959-b178-121f27454b73','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','saml-user-property-mapper'),('12d8264d-d1ab-4629-a958-e6e08d646dbb','afea7a07-4dfe-481d-a214-918ad036138d','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('131287bb-88f5-426e-b077-461ae4cf3733','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','saml-role-list-mapper'),('13505bc9-db19-470c-90e4-4c1d6d129913','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('13d3c087-d2cb-499f-8a64-6d8f5153c99a','42906ce0-73ae-486e-9a75-e24c2e9e5711','secret','lvAO45AwENYobmtHv2gYYGalbH4xYenCkimX85ebeYBKt8BKeQ6OS2rXg4Htz_tU2uY4d_xMA0vAIebYDxGYfiK03ibXYHY75S2YnRF4t1_v0Fvi_V-CE4GGl6ovDahNNOnBRSjCzUUMf7_Fv_jKYYYV449icYMUorBnvAmOrps'),('141c4cfd-c5e2-462c-9648-1c48cd0a6034','57997e03-8b48-44e8-b4da-6b03e00e817a','secret','R6Wc6K-hikaeXGIhp_07YCOI5PFBjnCsmx-ITPjTyzJELtolOOl4gnXhwBFFmCbKqRyYUbAtKu4ubLZMZ_MT6icN7GnEmIx6DQI5GGLu9a65p1AKO-vjJKACXOEDt8lJiAn3jOYEhV_cR4SqfWAFE1L7oTHT161kgxVrP93VKWY'),('144c1193-854b-4af0-804f-7c047cd333a5','264e437e-4573-4812-a6b2-5afc4ebedfe3','secret','QJi6BhbgqMSVEenchA7QPA'),('1771cdbb-6bff-48e9-84b1-84c0d10e63f6','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('17a54778-1cef-4924-aded-0b2ef19d0321','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('17ca94e8-9761-463b-8ff5-cbaac7337f81','0181fe2f-9333-48f4-946a-1c7a4be643ba','certificate','MIIClzCCAX8CBgGQe0jWeDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDcwNDAxMDYyOVoXDTM0MDcwNDAxMDgwOVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMn+90q1TlgSP9dXD29MZmUP/mArhhqjA3f/LZ7ECeRPpMFgzXHSlqO5yI9o+/YWtipBXBO1F2BfJK571dm6WDDrWuwh+8AUVPd07tK3vzwxmwfg2kKeSwH2MOrn/rznKD7vVk6/QBef96UG+wU/r5ZHTYw7CF4YezZIgaZK1JKSFA85n088YtZycY7MrB8A5KqL+IY+094/SJiAPudIzgtTjODa0mw8yKfeBnhHlrv+mNjZ4KPFdNK2kufDfTDhnZPKCTrq6mhgiQapc5DMDDnaevy62WzE66CYTPeVb/k59DIfGdEv/o3Gzx4Up9aVyjS7WosixDwakguTTe2yF18CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAOz/OyLwpVUaw44JT6vefnze1a5uteVPZJ0cK+GsDZv+ECCaEblCqwSJ3LYYYEv+naJ+yvFo6tap6iYVPsmKYoEJT0wKtM1xFbP5Hj/oEk3k0xyjwB7vEhgH5dR6AORCZ6AJ+KK4lWe4R0wg2T/ujQaTpYwlwMCQOYckvyogRigeFnSzNNTkKZowhiDYDswyXbzxSDkSRr6YeLW+36yHcFCd+eUDgysNTpJ+xGGc0z8S0iTj+aXXaxpMeraj/k4JP/yrSeh4xTFcsvWNmZjFVfEsBp1H90kzc7ah/9ddpY+eGhjEx1DfX8WRh4tvlrQs1StyNqWtqzbpyNoUx5mrR3w=='),('17f2f745-efd5-4a46-a8ef-954930bd84a5','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','saml-user-property-mapper'),('18cee0e7-a68b-4034-b843-9198f3d507c3','f98b8f05-5cb5-4568-9a32-318f75f013c6','allow-default-scopes','true'),('1a2cf3b9-d5cc-4f1a-abd7-71914f961af8','5e140cd8-4dbe-4ebc-8178-393fc137ca39','algorithm','HS512'),('1a604a03-97d6-4014-aed3-e859aef450b3','0181fe2f-9333-48f4-946a-1c7a4be643ba','keyUse','SIG'),('1b389882-59f4-49fe-8c54-8676dab3fcd0','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('1f2aa200-da81-4928-a258-6655e37cea24','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','saml-role-list-mapper'),('21b767df-0366-477c-bb8f-f23b08046839','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','oidc-full-name-mapper'),('2259097c-937d-4fb2-987f-5448c95c9014','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('227b91ca-7c48-4c4a-bf01-748d39131cbb','9176ed59-ae32-4080-b376-ca315bf2b0c6','keyUse','SIG'),('22ee2cde-1e8f-404e-8c9e-f3274b70abb4','42906ce0-73ae-486e-9a75-e24c2e9e5711','algorithm','HS512'),('232ad022-6207-4c35-be94-9cf3120fbce8','ee01ee45-44b9-498d-8655-253e7c4e7809','privateKey','MIIEowIBAAKCAQEAsXX2heI0i96YfZcLyDQ5H9gqi8nNhMVivt3r38vob3OcVp/qyhoghU1VCVM7fx3/DHZUkKK7KQnGYJ7QrBjARWUxa7NtU8nkK6AqtFaW2a7/staZRVw7y+jAgpGYn2p75NyZB8bjjHLmRd62qhqxQ2TD0UgmmZrp3DdxlvxzLPGG1sgSB/yMvgnYkXidLk5D8gQYBm8go5NZRNIUvG8ULOpgxNyHXH7pHEabOcdWF1O+q9V7Df+5rVKf3roP9W2q/OhPf6LhBXbtUDn1Ggx1qqZHyxO6Qb2PZ+tD1efcOUmaWBn8kiLlRmJf3BOCoKn1UjXzvTUPAsmP+neinw8ngwIDAQABAoIBAEDtyrGIprYoTv3ghoCNTvtOQZ7cyrPR7oOsOdGrzxL8J07wetzQO2baeQsM539mj7tVDjLPP5BP0cPnR6037x1U3YSs5Qrbmv61Pvq1lcL2yvp5lyGwEfbU5Z7AO6nUMZl2dw1H4Vixb3xP9OB/HK1uUFEhx3G7IuaeaJKYMmHWLs9iaHk3YqkEMvjDw4jKJbyuKIaVJFByh3b+n55S82iuCM4qmb0zFohCS0ElevUBo/T+nVVcnuFO6PzDQfR+orEjrGjZx7UjtybN189wa+H2AoAvCK8dhhl0X1t3ce4dOHAClY6ZFEFVmeU+RfzXWJcqifXc7bV6jvmtWyGGCDECgYEA4PhvmInKlrfdnDaRYA+BbhoK0Y1meM4E+iKMevvt0BuD6DW4h8faN0V24dW3hHG3ibwbnBq/FySTdRk7rZBNyrKGX3VpXIkaNL3b057havipxAY/rjSlTJhHAMfnS+PeFvuoitbogvlOny1AMmzsbyjD02+6D7SunWuz5bWOa7MCgYEAye/9t6uEa5NnohLBkd9891Y6A4UCwLQalV/MTSfqB31ZJwnkPwrTYnv8OPpRCfbUHP5YrSP39uzZbW05r5IftWrOxqXfFXmmuF0ExP7JniP+YM1Y+m2uL1v3CWj8tfYfUPo+MTqdioI5l5TB84afJqLdfYdPN/hd750ltIAjLPECgYB/vRDAcBzUD3qJpIJPJP684ZSa/8rbdT9mOA/EFSAnNjhjtX0du+Cv2YVzHcKiNV+dmW2j6ZvvLBl+N+Gm33UMTun1cdltbXuvzs3vDxu3fZIHd/TYmZPyNdS7IMa4VJ5aNnKwwu4q0BxQTYVSHH7zbxYiDCJ9oH41bF4tZDWF+QKBgBpXgQxFhneV+e3Nboy9z4pgKB8vaaWDmPglT/w8ma2ybz/FbY2/tsVhEQzJsmqPVSoXD7A+QelnChHZLq41bId40FJfbtNZVCM2lxmvdtN3NIaiItpAFnm9EGOc22JNIdapXhWD5Osdg6+/SvGefQJIOoZWcUIG1xIbuMBr+qqxAoGBAJlZONTVuhMMs3quEHDOqqsUIMoNom2o0dXbs4lUBgRYefls25fPfXfW+Y3xHd9Vsz1vYseWcVC4BbjgnmbdPglZrek11lhhgASsoaF4ml09Hd2VoahVdAa9WwVpGqMS2Cbls8BzR91zWNLQkTNCBxAzJ1W5yuLNE+2IiCQvBMti'),('25b785fa-bffa-49dd-86d8-ec6839428b39','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('2659c041-fc30-42df-ad93-5e16685aa61a','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('26945681-0fc2-41c6-a799-3e9f9bf80248','ee01ee45-44b9-498d-8655-253e7c4e7809','algorithm','RSA-OAEP'),('26ad2b0c-348b-4cb5-a862-e804766a0feb','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('26c4aa10-67b1-4e9a-b02a-cb5f101361ed','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','saml-user-property-mapper'),('26fa985b-cac5-4ca7-a76b-d336fa9e11eb','ee01ee45-44b9-498d-8655-253e7c4e7809','certificate','MIIClzCCAX8CBgGQe0lEPDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDcwNDAxMDY1N1oXDTM0MDcwNDAxMDgzN1owDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALF19oXiNIvemH2XC8g0OR/YKovJzYTFYr7d69/L6G9znFaf6soaIIVNVQlTO38d/wx2VJCiuykJxmCe0KwYwEVlMWuzbVPJ5CugKrRWltmu/7LWmUVcO8vowIKRmJ9qe+TcmQfG44xy5kXetqoasUNkw9FIJpma6dw3cZb8cyzxhtbIEgf8jL4J2JF4nS5OQ/IEGAZvIKOTWUTSFLxvFCzqYMTch1x+6RxGmznHVhdTvqvVew3/ua1Sn966D/VtqvzoT3+i4QV27VA59RoMdaqmR8sTukG9j2frQ9Xn3DlJmlgZ/JIi5UZiX9wTgqCp9VI18701DwLJj/p3op8PJ4MCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAXwiink2EmIRYlmIcaqJegPQpHAHqWQf85YblDl+ABNWweIq9GoyY+igY3pgABLj0JPRIS5003CPYbeu0RLA+KtO7CIRNDquURyo2k+CamL079NeTnl9hYiyBvNP9fy/cp6g0QE6EaSkvqS/iiSqnLRrcJ3QmvwFbiNR617gcjmLqfqsVie5YmLuxrzFkiFl0MgGRwSOY5OLUxKfT7ffx+jwH6g4VUXz2XnZjFUoLM34N3ocyRbkyDNZ7Xg9uCkZmZDia2+M6oBC2mbVEJcNe/DZ9d1GAkqmDNqq4k8jGJq3FgWd3ghweUW2+5JBm+ZyWUikrl5KRC/8j82/7L2cdLg=='),('2e1ea622-d5ee-4237-be60-5109717350dd','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','saml-role-list-mapper'),('2e93b8e2-623f-4ef9-8f19-c715df869468','e78145c9-906b-4622-9019-7fe628ce7aa2','priority','100'),('2e9ad4c4-af15-4425-9114-f64d92085847','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('2ea0b45d-a496-46ad-ab2e-c2857377ba94','5e140cd8-4dbe-4ebc-8178-393fc137ca39','kid','28f008da-d70e-47f1-be31-59b23d1f9512'),('316648d1-be61-426e-8d35-ddf90e60dca9','13020d24-559b-4c48-85ef-11fd955256ad','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('31cf4b65-ea4a-4988-96f9-8f91737a4552','2ac07c1a-4f96-4212-a5ed-e85d05862b72','keyUse','ENC'),('36744d1a-052a-4a97-b311-1a867f075f14','57bdc980-81cd-4ada-a584-cec2421764f3','priority','100'),('376fcb60-af08-49fc-a0b1-d3450e356e57','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','saml-user-property-mapper'),('385c1e4d-7167-45af-b77d-95d6c1b12701','d99633ca-7e2b-4493-ab37-0a3e62c07ab9','priority','100'),('39981de0-e062-4b5d-8772-ac9125b4956d','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','oidc-address-mapper'),('3ad2193c-6de0-4468-807b-f12fc6165327','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('3beb118c-9140-4d7e-8750-8ba6be26bc1d','8f237391-d886-4f18-ba41-5977d5a3f8c7','client-uris-must-match','true'),('3d7bef1e-ca1b-4f67-92a2-1f72a09335de','14d001c7-89e5-476a-a2f5-3ef50f8f6a67','priority','100'),('3e53c75a-738b-4cbf-8941-f7fbc148f8f5','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','oidc-address-mapper'),('3edb1cb8-c53a-4c1f-9cce-c80aa7ac37d6','355eedbd-0477-4f47-b990-74a2939aa103','host-sending-registration-request-must-match','true'),('3f664aa7-fd22-4066-9df2-341194661f0a','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','saml-user-property-mapper'),('4083a10d-3df6-44f5-96d3-39e00abfa2dd','23ad7c15-63da-4f88-bda9-41e82d4ef044','client-uris-must-match','true'),('42a6c46a-2951-410f-b318-4ea62fefbc13','34fa4535-1e3c-4158-a4f9-480d171e9de6','kid','cb765033-1ff7-4626-b21f-861c8f9219ee'),('42d22368-bf3d-4c20-8630-df8299bdd83f','9176ed59-ae32-4080-b376-ca315bf2b0c6','certificate','MIIClzCCAX8CBgGQe0hnKjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDcwNDAxMDYwMFoXDTM0MDcwNDAxMDc0MFowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJasc5YvtnYNOQmow3mCSoGOPPEt+bkccTZeLOtQ/GotZJ2z4xeTPKDvzoF8wHC31jSuziFxwy+XDJnyoPafp6XCx98d/qNeSFKZEsf4xGrvygrtmTpNcWcGB744ALg3BJ6ldqlY0Nhv/6lTYc+cUBEoCLuGLIkOMGlnEXXATDxJyDJtdKM4BhWTtzM6nx0K6rKDa3RmJYF1I7YMfoNriVBLOM8XLYECnurKXyTfzFOIfxUQxOfKDNKabNj9IpcXMRPZ1FB22c+qv/zrzL7NGLuspEkLJUMSb1tcOG7kz00yn7LIfWm0CGqLwYRVo7WhVhX9kcJs5oSit9UMlSLvAl0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAIoJNZTP9Vf4KBSZdkStZu7W6DRZ+RjDvQE/7tgATA7HLb/ujixd7HtO3quUGCDiQARV4l9RxhhJGaVdb7LQphdY+tfqb5Ofv/LDmwew0NTVx60ZgXsnU6/Jt9H7626hy26H6YBcoSBWlX9ywMNkjGlCos6lSmVAeG1GTmSFxss2dRCnAMsahFGxS3nAmDfZuEotttDP4JQU+4qQFAyG2+UFQYSOGkWRPggroIo6cO4r4UdKdCwY4YEmfiXmMfbTEqzIKD0/crEBoDMPL/VA/Ee9hPR1KdGd5Qo6AeYNKU6v5v7C+CC+ENh82f/cmjIFEkU/39xBC13O++7nsHgX/oA=='),('43c13a72-e4fa-4dd7-ac2b-9453a5a60828','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('4541cbd0-ea8c-4517-a6a2-a44cf1c63ea9','e1d19b46-2d54-44e6-930d-53b1a23f80bb','allow-default-scopes','true'),('45d1e75f-83e1-4e57-8f2a-6116f85e47db','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('4654b11d-af74-43f8-8d1b-7774debfa2ed','88ee5c4d-565a-4d01-92c0-2d276d6fbc66','keyUse','SIG'),('46ff0bd4-a552-4834-b5d0-24052a8fc68c','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','saml-role-list-mapper'),('475a6252-4f31-4ac8-9f4c-01a6fd78509e','58bbfd47-af16-4e99-abef-a7559bcb906d','priority','100'),('47c9cc25-2c7f-47fd-bb34-b09b9b3ad9aa','14d001c7-89e5-476a-a2f5-3ef50f8f6a67','kid','00929aa6-006f-4daf-a702-532dcfe146b6'),('49d72b27-1fc1-4b41-8501-b58db8fb432c','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('4ae8e265-a09d-465f-9f74-b13246f9daa2','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','oidc-address-mapper'),('4b3d38f5-da4b-4e3f-9b96-1ba5efe40520','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','oidc-address-mapper'),('4b50c523-c7be-4d63-82b1-247c25411f6c','1b22f244-dc2c-445c-bb79-8b7aa9345d19','algorithm','RSA-OAEP'),('4d623221-c697-4be4-a477-035be1a2c3a5','3ce4dc39-96d8-4317-bcc9-d0419154e130','host-sending-registration-request-must-match','true'),('4d89542e-48b5-486f-9e93-8b6fc5e6763d','d0c78106-7240-4c08-b790-c769df5bf63c','client-uris-must-match','true'),('4d98f6ce-bfc1-4622-b621-eadb4d0feaac','57997e03-8b48-44e8-b4da-6b03e00e817a','kid','ce5fdd30-d076-4048-870f-50b8323e52f7'),('5121dcba-ebff-4992-8885-6de9e32f34e7','74ccdf01-e294-4c26-ae81-475d7e8f4700','kid','7865d072-452b-4149-b9f0-2170d929a8af'),('51822dbc-12c4-45da-afb5-c8d94c3fda0b','ee01ee45-44b9-498d-8655-253e7c4e7809','keyUse','ENC'),('54073c6b-1efd-424f-9092-1ad6cd12803f','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('569c6906-69e5-4d0e-af70-1a271a93668f','8e2f99b4-ac4b-4e9a-b5d5-71cc3203f19d','priority','100'),('5745cbb4-8122-408e-93b8-bab43172556c','88ee5c4d-565a-4d01-92c0-2d276d6fbc66','certificate','MIIClzCCAX8CBgGQe0mwFjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDcwNDAxMDcyNVoXDTM0MDcwNDAxMDkwNVowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAPLQMqV9epTBKsP184ozn5NNkVBfYsoZ7byC29n1iOR/obgjkc1TebX5O5qt85EKJybaQF4eem0AML7nuJQxsWK5Sqxk6PCgV6Z6nqnbqHM+p53F9W1yxY0gkzBvbnbgTIvOk/eAGuW+yrk6b/trZ5BuTgpnIHXAA5uNP8k08Bm4saNmr8mtH2tAxeWTNZ6smEg2YwGDQi0tkwmIxMYYgySYli0Q53NEmTEYwl6Clx1TbxReMidwf1WH4dt1lCkGzPpHMoN3akbCL7ndFDCnNKXQ//meKF2mMwrUudqK0iRd8j/r4JsWBG4owEbp0mOpC83PsbtPMQRCBqAwmZqKvpkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAq06wWFFZLJptQ8FOn/n+wLHT2ile7bRu1w1BULDUmmSG89Mxnpe4ufQP/wr/k7GdfTZ5Q7Iu9d3dg/4LYosxJGOfzG3OKWe13NLexlo5BUfKlq5E/xV+UypEe4bGWMwjxH7bZs9wJONqYhiC0BF9+5VwQtDKw1sfswO553ggK9c2lRnVlbC6ouJMn6YVeqVxebZu7EwJx51TbOrSJ4q2Hy4r4tuCmdontExP/LELM2zSdPYm7LUyiW82OxBRP2Ipp7gWkij3UgSeayAWH63F0iB1Hp7ITqAab8GQasXIBUVjZmc8aRG8BYQdhWpEQ793V8FDYhcJxTs0o5eMdHPj0g=='),('596eb155-adda-40cf-a7cf-835dfcd1cfb9','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5afad568-f570-495c-923c-666a776db32e','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('5be908e9-1437-4620-bbf3-1c9228611e30','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('5c522037-8ef5-4148-9c76-d8001bcc2d91','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('5ca7f0c2-2e55-485b-8126-4275488ebc56','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('5d262dce-23b7-4eed-91ce-90fa21fc29a2','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('5ffe35cd-260b-4af8-a594-837d6e318fab','81882264-359d-42c7-8b79-b9e7115e1a99','priority','100'),('63b3441b-c858-4c19-926e-1fec4ab5701f','d0c78106-7240-4c08-b790-c769df5bf63c','host-sending-registration-request-must-match','true'),('64e76ce9-e31b-4363-9919-0af8c50158a9','3b6ec4c0-404a-4561-9343-4ed0b6b746e4','priority','100'),('6708397a-6644-46c1-ada4-cb8d4ad9b1f0','e0c61a62-738d-4219-8490-2bbf077957cd','allow-default-scopes','true'),('67cb5b49-d5ba-47bb-87b7-dec816d7fa23','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','oidc-full-name-mapper'),('6b71edfe-6d51-459a-9bf0-5d2c480a1183','34fa4535-1e3c-4158-a4f9-480d171e9de6','priority','100'),('6cda8626-8d33-4eda-90fd-0298f842e6c2','9331128c-8eb0-4ce2-a5f5-43e6e200deec','priority','100'),('6d9d5e65-3374-4dfd-ba99-3f205e55086d','1db9fac6-bec3-43c2-ac71-b507cfba6e4a','allow-default-scopes','true'),('6facf1d7-04ca-41b0-b04c-44113e064709','8f6e3c71-8ad6-4f21-906f-da0b5ecbaae5','allow-default-scopes','true'),('704e0679-8cec-4c58-a38a-8faf13186859','2ac07c1a-4f96-4212-a5ed-e85d05862b72','certificate','MIIClzCCAX8CBgGQe0hnoDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDcwNDAxMDYwMVoXDTM0MDcwNDAxMDc0MVowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMKFu1lNh++loxDXT1FhG6gFVrGalQ0o15zjQyFdkRQ2DJC2wkgPz7gc4f6KNFP3hqI+8Ldyih3DXLHoctx5ZqVIGrfP06ACpCjGhMfgJCNWDdQ0hYLroWbMrEFoDvR7e53etTdot8ZkY/kC2ln0m9E+2bOSN0SE7Rygzod5ZrpApyRxh2uDQA/2a0bnMISPsOFO/lPxAOxzHm2kLJW7e/nrN3tTDInWiStxAxXpgfZ40s22twXgz7Gju04eFZOTLNz6EU8A5b2qpbO95KHSJYOWE4RKH/aV+QFhF51AKRMhOXx9aI+BYpG0/m7xBJ7fTe9IjLSysxdLJXncPEc0VIMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAfaTn+8RMp/zZmLBaNPBxJirO8KSuEenVMMLJ4wzN547w6vTDurCIO/mvPLqNG3fxOEDB3d5y/0xrP7FGWIxthQh/OUwr4WNVc3rYxHI8z8NhKgdPocxMFssOVDYA8FgXM0ZgL/Yw1GFPunTFJP7s2XFsO1IcIZHX2Uv6LQoQtifNKvAWLWy1XsFJ193YF9Gcazxwkd3jQjkc3uEKn3vvkPe+0ZcLLcf+vgmrctfvkkxQidzI52WwzxQTYPym5oMvB6Y+Y6d1QEvEn33RbGz8BDWes2+JC007sLhTfqNgjlPVa8eIJU1U1vfPYYiyIdFWB8OdJyerdX1p4iy69D89tQ=='),('711e56f8-547e-412c-aa76-998edf6078aa','264e437e-4573-4812-a6b2-5afc4ebedfe3','priority','100'),('71a362aa-cd08-4093-aac9-c8f6db4be823','74ccdf01-e294-4c26-ae81-475d7e8f4700','priority','100'),('720a89c3-dad2-4c2e-a6ff-312d3da8f40c','58bbfd47-af16-4e99-abef-a7559bcb906d','certificate','MIIClzCCAX8CBgGQe0jYHTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDcwNDAxMDYyOVoXDTM0MDcwNDAxMDgwOVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAIzeH6gcRCYDm41pXuVqZtLSFxHd7gogd7FjxZgVTEAuZtqmdXoCVhO9kM6FpUp7+JPNWnhV+xSyp1rQ9Fq/aDAoDkdFL2/Qkm1bpSxeK3oYJ5ARjB6Tqoxp6J90YOm1vdCUwEMN+eGBeDTwImPkou1H+bNPO/tbOX4qsZz9EeffvDFOChEcn6GSq6sawWmdcAXpoE23Cj7C2nH8KLz3j/7TbNvo+Q/AajOetuRqpxIYC9QFJxMVazTgtluEGcqe5WHGBSaMBAPz8V5UoSWHxb+S2gCgvjGDEReffNNqBDR8H25/33uX2lFT5NUsAk6hUBLeH4ZCv/rfwLjUHknM3tUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAM/WRNDsk0PYy3e0SQEfmvhs2JbZKDMcbIF4WgiustyPAC2zyHLJVnaROI5te/aV637g4qnY8ETY5VpNIdKwYj13E/mDmTyBeo1ETxNQ7b/HUiK8G7RGPISeX03T2V8gnk9L8Tfbgay5WWV42QIfzuy1pG7EZqHuDorf2cd7hGLJvfZ1ccRBtMHjgVdhaxY9N7yd3ffxeToP8nP3iJ8ML4G8EQToqiVHsgWclDp3Gkw+9EEcLfq57lqS7HH3rC4IwocBWmitZE4BTk4FdSKMPlT2uXvhjSXg+V6xySk4QQNjRhfHQnQcxrk8IACPl0OoSyGtEqEi0dtloqHgSfpgG1w=='),('72239d6c-2c54-4dbe-82ba-eda90416fec9','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7247dc39-6e4d-4f46-92b6-4f289773b34c','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('74f6987a-c666-41b4-92d9-916e0432abc0','81882264-359d-42c7-8b79-b9e7115e1a99','kid','75fe9303-5287-4821-8816-4f5aec1f2943'),('75d871e3-b79e-4a9e-af51-efb47f4c75df','57997e03-8b48-44e8-b4da-6b03e00e817a','algorithm','HS512'),('76ad2933-c751-4a54-924d-c3ba2cf378fa','fcb1f08a-3a57-4016-9d59-e5b4727e5bd3','max-clients','200'),('7735b3a4-e383-4787-ad4e-8a5f90194816','0181fe2f-9333-48f4-946a-1c7a4be643ba','privateKey','MIIEpAIBAAKCAQEAyf73SrVOWBI/11cPb0xmZQ/+YCuGGqMDd/8tnsQJ5E+kwWDNcdKWo7nIj2j79ha2KkFcE7UXYF8krnvV2bpYMOta7CH7wBRU93Tu0re/PDGbB+DaQp5LAfYw6uf+vOcoPu9WTr9AF5/3pQb7BT+vlkdNjDsIXhh7NkiBpkrUkpIUDzmfTzxi1nJxjsysHwDkqov4hj7T3j9ImIA+50jOC1OM4NrSbDzIp94GeEeWu/6Y2Nngo8V00raS58N9MOGdk8oJOurqaGCJBqlzkMwMOdp6/LrZbMTroJhM95Vv+Tn0Mh8Z0S/+jcbPHhSn1pXKNLtaiyLEPBqSC5NN7bIXXwIDAQABAoIBAF+TLS0DJmOTlvNr9RijXJua+rBER7qYwQ5pBgvmFAwcBwecpvihPLeRMy1v7i/dRSovLMMCX2IxAmkwnNndStcytR2fYr/anu1LPakkWe7ARetvX7Y/sZvnAfRT+vskoK1Oj1bJNSk4fnNuHx23qXwAltewIuBq0vm3SukE5RnH/r8FQDQSTnfNjvXzz2YdFMSPsdPWfwUCDEcvRacSfnhm1M/SvQGfPeb15OoU5L4hSZPEmJO4lehXxolbwZMtnQ+rlNIY9aWv3Ai7Qpam92JAaUvAtM+lkAnWQtAR6S+yBPHsXBT8cYPEwfeeAFQf5bhF3xTnHkzMgda4fEHjOsECgYEA9OLLdrKyyRUNB8ZeHnQIEx56Tu0VIm6QoqyegtOmtTMTl41jYsK2o6AfoYp1frTJXAsQlCF+NRL4ZI3Ng47bXJ/ZX7jY3keYytwVb/Xl5wRXDsBxg7b9L7b8HbQwgnvGvxNxO3nD6GZiCoSn99vwst2r0LeWtTDB0+WpUSGqpf8CgYEA0ynaxLLfhWmfJaUKrGVlwMhn5eKR0JSqw/6xIGvmzfM+Ti9E55bdOJpO60PyBR09+XQi+BV1gjMPiI0+HRupcQgUH9sRg0sT/pazQlcyrNK2EzaZKZbAmHFhXapnCf3qLtI8yEeM7Gc5ZRYeURqZyD26OKzNNfhxWP9ugfU0TqECgYEAq4hZYNGXbkayk+mdb9Ny/IFyxupGzZGI+onTlmxO78nRRW0iWsFtUXwN7AeieZiFG1YczMYRM3gQSc8ST763ZVAK4YQHVNvt6Nr0oTIrUgC2Qn0Ghm6dNtkEDIJ1IFE3TAyAWlrWoWll71wwk+uZ1JB1k4Olq1F108mhKlVcxV0CgYAjQ+0uRnU/8ajLf6mtqu14ab+4S8NwYzO1sdZhBMQyBvqT0h8e0jo11sdxURKdOgn8nCGu7t6GFQL2GiiScek1YFUEEPD2zVYUgZSEcs2awUH5KXgg0vVtQBozq16z83zlvuS5ygFGBeM295+uidO+9lggWPOYnNpJM7d/6rSGoQKBgQCjQS31LbPi3NdbalWNpzzvCT0XE/dLg1GtpNoQbpYJOhIIQ0JFrJvaxHgp0YE5IfmXa6i9uSPaNn2OzSlAsiVywGYp45TOCpbUKr0ncmesf90ml4MDColVhH9nfjs/Ie350epgArAl4ECi5AD067HFPner1+dTpURtjEFUEFQlfA=='),('7846645a-aca1-404e-99c2-6674cd84f7df','9331128c-8eb0-4ce2-a5f5-43e6e200deec','certificate','MIIClzCCAX8CBgGQe0fgDTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDcwNDAxMDUyNloXDTM0MDcwNDAxMDcwNlowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAPYnaq8sDiJaQQtrg3xZSoObbb/jrbqcywRm06Kt+R2jBq/4imtGT7d4IKe6yJcc/I5LeO5sjCfXiQUivTnJFJHEDlmECdLEizkiHkooxhRZgL83t1IPahjio9V8yfD078cf+bkxq8h1oESEfly02ZP5knYYacXPO3wFJ/05xgBeyDym/mMw34AMugc/Q2FImdRJgvDsKOij2aaImxRIOqV6eLdijHvF7NXTqLXWhgxbwaLVD86luWCEecaC7gTMYIkggf+vOMz60HW5QTAzlQwywFDnHGgOUlzmm3OhCXdi4y59GDSB9LASucj8khhMyqk7Dsb31iWH7zB2y8ewTV8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEA6AccQ6I9L6r5JPWJQ0gJ/L3mba0KBuWv5Oey3HS6fJcevcYgvqTQgPS67GA0ia/k2SwrrhYeGxygGwefAmE0Ub236oOdsIXj/Ymj1+Pw5IKSLPk8ooy2hRN3UUbc5CqKLjYIGgKZmA8Yarf5599gvSjtJDEUbnOuWt1F74uQvUtvzSR7EphE0XswPZq7BOI0VBTNcTeXR6yMiATE5r1QygkvnkMVQ467gEsC/sa5Ny5w4UrnjRAR049XoWiP2raXZFRTzKDGNvu90nAElwllbnRBfMcUl+yqkri+YuroCMUwTPe+o4q4P6KiQOKlJblEDmYd1lWUF+aTytoShiqGyQ=='),('78dcba95-ee79-4702-8e96-fcf3454cb0fe','1b22f244-dc2c-445c-bb79-8b7aa9345d19','keyUse','ENC'),('799a91e8-e71a-4fc8-8fc1-06d84388d195','8a673777-47f8-45e5-b7d3-21bb61feaab2','allow-default-scopes','true'),('7abf6c3b-1132-433c-925c-64f83bfda5a2','3b6ec4c0-404a-4561-9343-4ed0b6b746e4','certificate','MIICmzCCAYMCBgGQe0ZK9jANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNzA0MDEwMzQyWhcNMzQwNzA0MDEwNTIyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+41F5nmZHPn6uFvodf+QI1IdVmFHCmjEjup6S3Py02mWn4LmiplcHfECzerfjiLUeBI6OVfT8v6vrvTOlO53KL8LyXtpERTfQrYIJVaFIKJucF2ghWwxPQGX+bdZ38qwKpvYnrn10zyM6AzoAPWJrzTtmpzoD5GxzNv+2i5htuWoWypWPcVoNy/Os3unUToq9H3sx+gQfuhS0sCI5zTsqHgaDh4G0OKkAyS2p1UmxhBgxi0zyaJAIntDkrXGOtfXX+r3vZ5Grtgf2Z09DDfbk9u6CPi4ygZJTnvm1EnFXFwXGzCuYpKb3yoQ5HDy0rVihX7gNAS4bk7djzbDd4EudAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAKSbtna13DiyFAiyRfgKT1mCv1eq97KN8BI33/Q4NKBE08YR3eW3U52i4D9fS/XLEIQ8Am0FDSQo7jqYDrZ+e3j6TRADUWpqr1bza8S01QPKYDsZrYGHPf1gw85cyncQ8svq/ig+ZPa+oc3d6AwZQBOrHK6pNszHuC2rQKMOBQODzfJbH6tRaMNDC47SBnDqoRixs40oTqixUGKtRc8uHQt1rcr/DNIrvlB4cQBGntdkLa82KYyEyUKmKs73DRaA9FvsQGqRQEJcKNWGfNTJOYy4lWLN6nu4s17wOMGIL2bN/y1micsS9yi4XTVokfP/D1FGxBVwV0ZSTcET0dNKFg4='),('7b8e9613-9992-44e0-bdbf-39f24dede4a3','8e2f99b4-ac4b-4e9a-b5d5-71cc3203f19d','secret','LnswnKw8UnDgGoYIPzYsSw'),('7bb3a97c-d793-4cbb-9445-fbc4e376d1b1','f19ab814-850c-4be7-b19f-6ff50010029d','allow-default-scopes','true'),('7d8d8cb5-4f60-4bdf-96a9-b23f1f74bd88','677fe24f-a031-4d92-a4a8-aaa4ea9e6f2e','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('7e61484f-8702-45c8-87ce-a33050b62249','1b22f244-dc2c-445c-bb79-8b7aa9345d19','priority','100'),('7f4cec13-c521-4ade-8708-220722947874','6e3dd92c-d4c4-48d3-95e2-00dbc0db4129','allow-default-scopes','true'),('7f5b564c-42e3-4a42-94d9-68d5495a8eeb','0552298c-6098-4587-a006-af741e7af06c','max-clients','200'),('7ff053e8-0318-434b-9e26-35bc54f1e5e9','d99633ca-7e2b-4493-ab37-0a3e62c07ab9','secret','yx7hc-Q3YaXo6mvv9cQBMA'),('803d4cf9-eee3-42b2-918c-7212aea70f1f','d629a485-f8c0-4e72-b4a0-a517f89be6b6','allow-default-scopes','true'),('80b382c6-c83a-4662-a19b-065f5be85aa7','355eedbd-0477-4f47-b990-74a2939aa103','client-uris-must-match','true'),('8372cfea-343e-4f15-8445-ce5608108ecf','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','oidc-address-mapper'),('84e9739a-ac2f-4c6f-898e-0c4fa27c5778','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('85acefac-137f-4574-bacf-1db38a2b409a','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('85e019a0-bb50-4f42-b4d8-d745ce52f7cd','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('8887b3bb-505d-41de-be2d-e80e903c75e6','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('8beccf74-080e-46fe-8e09-be42a64443c3','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','oidc-address-mapper'),('8c7fefa2-5ea8-4afd-8a2b-6523d1e3ef6e','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('8e2c6e58-7c34-4a86-a5e2-c40487aaf015','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','oidc-full-name-mapper'),('8ee30ae7-6cc9-42e8-a058-46348b28c5f4','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('90455f29-a603-49b2-963d-09cbcdf6c163','5e140cd8-4dbe-4ebc-8178-393fc137ca39','priority','100'),('91887f11-23a6-4ecb-8445-b08fe3950e02','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('93173d3f-04b0-4b97-a43d-2062602c7072','e78145c9-906b-4622-9019-7fe628ce7aa2','certificate','MIIClzCCAX8CBgGQe0k/qTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDcwNDAxMDY1NloXDTM0MDcwNDAxMDgzNlowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKWJKRyRcggdruV/lltwYRecHADzJfoT4vtzNltB6919+3RYLPAefc6kR9LWsCytUmxE2UxD0B73j4hB6FNop6qvAN/bZq3IPj/+ro65oyRNQ0blIxGINLJEq3FsNQQb3cihNo7CEmAtkNQ6St3NMEV2eeCzX0OnNR2u+vRjjdkZOyT3qEzI3KxH3b1icmpMOxThnfq3MXMj0Hj/aGJ47EkmPI83hNxwd0Lh54CZy0XiJbfE27univmbmy/m+7HJDLQ6uTti/Ql+7DYIFJSexiprAgv9u3fcg1GeuRMfZTC0zapmLR54sl8W6B8IPAYolfeuDsgmcCNeg3SYcCqUn9UCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAOr6oMlziRaSAFwgy5oRI6mTz3J8WeYZaX+e7MA9+RtUVusFjV3nuJn1s3RGCnFXb2pFl/hrgTtzHd1YJixaYQ0BUMQOesdfmbxinzXiGYFLS+0GCk22LZ41Rtqa2wOMp5ei53KMno0jjmpjhg7WxL2WRbHlQ4pwUAV7o/wST05ZlIhQRy1MRpR0o8cvTTUrr4CPJ5jG8vNy6ruhWPEXf92eMHl0NRRNV47cAWqqlQejBYiDv1G3twTMISQHT5vB3aMu8+2rSp5Im2Jgj58Y91AGq4uAUUtHsEB7kisAqJs5gsp5DXx/qVwRpDYr9xEs3iBMLEW6L61tUhqvk+FfeUw=='),('9350b384-d9fd-42c5-850b-8fe0644108f1','f0b367ed-fc7f-413e-b3c1-813217203c9b','allow-default-scopes','true'),('95a813b2-2d27-45a0-8607-a960c3c025d6','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('96bcfa0b-5a43-42db-970f-41a71c271ee2','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','oidc-full-name-mapper'),('973d3a49-f7bc-4655-99e7-8e611b5b8325','636eb402-3d16-4999-a43e-bcc5fa5864ef','allow-default-scopes','true'),('98d148d4-ab70-414c-b59e-837f9ab50596','0dd871f1-f8b1-4aa9-8fb1-34b4a361ee9a','allow-default-scopes','true'),('98edd41d-9acd-404a-a56d-cf8cbe320411','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','saml-role-list-mapper'),('9928984a-0f22-45b8-84d9-5d8604a98428','04f74fe4-b652-4b77-9eec-2cf810aabad6','secret','xBAVAkLI_jlPTUPFAP7IlA'),('9c36d517-7f66-47ce-a0af-e444443d967e','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','oidc-full-name-mapper'),('9c65d4ee-a735-400d-aa21-9ac0ad4011e4','34fa4535-1e3c-4158-a4f9-480d171e9de6','secret','73sY-mAHVF4oYf_aQd5Flw'),('9dda1038-413c-426e-bd1e-c6afcafb5a23','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','saml-user-property-mapper'),('9f1114cd-a281-4a7b-be4c-9bf8cf62a7be','88ee5c4d-565a-4d01-92c0-2d276d6fbc66','priority','100'),('9fe3cd80-8d1f-475a-bfea-8ee745f34546','23ad7c15-63da-4f88-bda9-41e82d4ef044','host-sending-registration-request-must-match','true'),('9ffaa219-b723-4029-a2ff-2e125c55296c','d99528b0-7516-477d-904c-0ce895eba7df','certificate','MIIClzCCAX8CBgGQe0fdYjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDcwNDAxMDUyNVoXDTM0MDcwNDAxMDcwNVowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAP1ujNKRikHE3jDYWcPcHD2geuog9h3Soy92IpuVpfprkiEL/khCxwKGNYxhMiaUiz2pSW9Cme8m4KMKzDPH5HLx+j0oYAm1BPkIMOn8pNrTF1qhm1Ia5TDIkesQulvmQba6nSjbGnF8UEt/wMYjCy+7ss8GCUGlx+KAyvPQbmcIvhr5fZ8ZzqRaIM64mOpWq/t1PU46inIwsC/SFiXnJl8CWAinxeS7vm2TCgZ5TuPBw0GsacuK2FY5SSwBMgt4CXt043hHCKBR9b2TDml5/sqk+QSOIgkYJIuVC+FkcGeFv42an3039bgzS4UTTmQcPQsYxsq/qqemZxDu83BUtAcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAqSn9MXbGrdJ5S1GHLeuFZEjDLHpzBTriMQJWtDMJFX1Ld+4LOHKq79KODNRBUd/+G/GOk1jaOpQ3XrBpW8dL+W7qU/v8hcjy5uLTfwTIJFeoNyOKbvw0pNQO5bJMW5GKaeZ0JXTiutrDi0gd97kmDZ+hrQln0Eoa2f5xpoFM6JH6eBBjK8TXkVLfNZ2yNHLyXwdvAGuw4Ld+tvja+dhgGS4GIeRrMhb9yiZInxZPYod8ljPPlbEUfl7sgtwNPVDHPShMo/4FeMxUVF+bVAmV+pTi5QLXUifgyHcEzMkVgRlS8UK9QsqjTO2fOsEphzoI3m3k1R2lW0noLeZV7iy4dg=='),('a0675a4c-7fcd-4d44-bb05-66189fa66d9e','57be7dbf-fd39-4562-a197-4388d2e3502f','priority','100'),('a15a971f-a3c0-4285-8062-2e35378fd9bf','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','saml-user-property-mapper'),('a31196ed-ec9f-43cd-a4b6-47c02cc2331a','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('a320717b-4e46-430f-8c2c-0c3516fe05fb','04f74fe4-b652-4b77-9eec-2cf810aabad6','kid','97ee4246-ca47-4afd-8eb4-f0463722d2d0'),('a4025c1b-62a1-44d6-9b17-1f1a88bfd22c','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','saml-user-property-mapper'),('a48e3dd4-0f7e-449d-ac44-6742fa9e5b97','3b6ec4c0-404a-4561-9343-4ed0b6b746e4','keyUse','SIG'),('a62e6701-6b1b-4bd0-9248-1a55656058fd','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a6911ed8-dc34-414d-a830-2046b3b97cab','57997e03-8b48-44e8-b4da-6b03e00e817a','priority','100'),('a6aa8c90-40f2-4ed0-96a7-ef570fdfb00c','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','oidc-address-mapper'),('a791ed4b-11b4-47f3-b809-0966d2ec8e23','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ab8493d2-2746-4bd3-b3a0-060bc5a3599b','9331128c-8eb0-4ce2-a5f5-43e6e200deec','algorithm','RSA-OAEP'),('abe6abe6-3897-4658-a60e-90a869e063ff','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('abff54b1-2531-4108-88e9-e54d1f5f1741','14d001c7-89e5-476a-a2f5-3ef50f8f6a67','algorithm','HS512'),('ac4c745e-1815-496d-a884-d10e29006a2d','04f74fe4-b652-4b77-9eec-2cf810aabad6','priority','100'),('ac6d2876-072b-4dfc-967a-4558231868a2','9331128c-8eb0-4ce2-a5f5-43e6e200deec','keyUse','ENC'),('ac9038c0-8464-40f1-beed-1fc19e8c7999','cee54327-513e-4593-97c9-22c5879a81e6','max-clients','200'),('aec807b0-4cdd-4557-bb2f-a825a4447a96','2ac07c1a-4f96-4212-a5ed-e85d05862b72','privateKey','MIIEowIBAAKCAQEAwoW7WU2H76WjENdPUWEbqAVWsZqVDSjXnONDIV2RFDYMkLbCSA/PuBzh/oo0U/eGoj7wt3KKHcNcsehy3HlmpUgat8/ToAKkKMaEx+AkI1YN1DSFguuhZsysQWgO9Ht7nd61N2i3xmRj+QLaWfSb0T7Zs5I3RITtHKDOh3lmukCnJHGHa4NAD/ZrRucwhI+w4U7+U/EA7HMebaQslbt7+es3e1MMidaJK3EDFemB9njSzba3BeDPsaO7Th4Vk5Ms3PoRTwDlvaqls73kodIlg5YThEof9pX5AWEXnUApEyE5fH1oj4FikbT+bvEEnt9N70iMtLKzF0sledw8RzRUgwIDAQABAoIBABBF9SZuFgaLv4M+f/mO5iwS8O3AFjgY8pttZ8WizkBNRT/WCkAnvSOUnFNvEcb0g47kiml5Fj+R2G9fGDzZldITS34/z18o2Wg6iLaFSdYAR6fjvPJMRB8VgFOjIPJ9t28S8pYawe/BoPDJYaWk5mQwSIYn9U0GJyVTTp6GyXv18fB/HdchFvhlujEApPiAmbcTyCICGF2obkJAoH35XILz8rlKooSm3l5nF53tEMfFauWWHGWfCiDa9O94e5FfkNbu+NYaa4/aBVdHvinKlyxkRbhiOyzJqJw4/LAW5cxMQHxxMvNS64oW8UXf44rb0JBEAOIVuEc0I1GAYrDA4gECgYEA7hmDy/thmtIdXbxjJI4RfIWbous71TedWv1TLQbxFHHaJ4ZCIMLxLaWtSWl8IcEuqx49eOl+jcD8IY5P3XNyNjXxX3gocrId1KDvi4x1CsMG330XbnqdH8+PzeLqGe04oD2cgRXkPJGg3LT5u22ikpnMSsdSmMbWMqz8ALkv64UCgYEA0SWGdqn0qQg2UTYWceLPCOsCFih6qbnHQvCeEY2VXr0Whl/F6RIpcy7ZHA3TyVIi7uQ4ZyaO2Ft/vCBMtSzOrmFQrJ8pDnTgfxUu9yTkh7/Go0AaXxogsJPcFAMiPFJjhOrgrvvUfE2oxL0mKVAliXZki9pj2jV67o1zNkWh6mcCgYACVRmna+T+4UQMYQYPm5ysPZrSs784TX0rIQQpksHV02+xp20KaR53tgHGkFP4+K1+W6N6hb8JoHRX188Mek8KHOkqaEDtLrWAGbt/AHc9DcAJfG44VNcpMp1UBP8KFfrSBwh7cz1zInIS92ri3SYUjZEkwmMawAflIzCsySOhCQKBgB26CrGlGHxKCYZjfK81QJ4Q4RwLJtwm5raSArWV/SwZDjGNPVESXsfbWcqOAJM11HdGAupOZbFE2BQCN0TtGHdap5/Rg4FlhV8qwKEqIj1VOcOMYfMwgIL4kShbBauzPifvRn44lwwP8bP8+oaWuK8gH8xs/xJN1apAeqa1IP1zAoGBAOdoswhemE+VDs0nbAgy91+//F4WcgI57z2+8xLLoGuAvRK21TKnm08FQgEQCK20uB3GqdRpUDfaBgAZ/qrKaCfMI5EZMB8sZfc/ElGnreim5hdaBybpBFKrfur2ouw0R7pBiXyZ2lGic5dPRW9uJOqz8Ar4Ow5exbGjvzrydsat'),('aee783da-0dc4-4d06-a1e4-3691b0e19b3f','57be7dbf-fd39-4562-a197-4388d2e3502f','keyUse','ENC'),('afbe9392-cf52-4fba-8133-7d4ba93bc98e','afb6537e-30e9-4680-bba7-a1b1a5e31e07','allowed-protocol-mapper-types','saml-role-list-mapper'),('b1e2cbff-c7d8-4285-97ca-69dd9ca7ea79','58bbfd47-af16-4e99-abef-a7559bcb906d','keyUse','ENC'),('b7cd1f6e-502d-409f-8e4a-310c35df11b2','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','saml-role-list-mapper'),('b8c6936b-874a-4c50-85a2-c4e09d5f4a37','211dfb9c-b9cf-4355-8419-1a779816e818','max-clients','200'),('be0e7d57-0244-4a30-9ee8-846a1ce741f8','81882264-359d-42c7-8b79-b9e7115e1a99','algorithm','HS512'),('bf165dca-8384-4ec7-990c-6ea851260fad','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('c0b3b802-516b-4a65-aac5-8ac9a438eeb0','9176ed59-ae32-4080-b376-ca315bf2b0c6','privateKey','MIIEogIBAAKCAQEAlqxzli+2dg05CajDeYJKgY488S35uRxxNl4s61D8ai1knbPjF5M8oO/OgXzAcLfWNK7OIXHDL5cMmfKg9p+npcLH3x3+o15IUpkSx/jEau/KCu2ZOk1xZwYHvjgAuDcEnqV2qVjQ2G//qVNhz5xQESgIu4YsiQ4waWcRdcBMPEnIMm10ozgGFZO3MzqfHQrqsoNrdGYlgXUjtgx+g2uJUEs4zxctgQKe6spfJN/MU4h/FRDE58oM0pps2P0ilxcxE9nUUHbZz6q//OvMvs0Yu6ykSQslQxJvW1w4buTPTTKfssh9abQIaovBhFWjtaFWFf2RwmzmhKK31QyVIu8CXQIDAQABAoIBABD7sS+dgyh9Rw+SqS3aBMHjoXTh5ML7tLsXFGMVxs3E/hFUhGVU4EGXpiQsRpit8AQSLAPTCdgkY3Q6x+/kgQYLFXJNtDT/3JEK1fYaUTFog9KFg37x2bVuFZNYRqR89xVWuzBNZYTv4tZYIq8/BDta0tkoP37XTZej2XD3UuB8mD6XucRP5Z1mdX4/vwXFMbrYpaR2Prv0nI0MUWsD7X4Bch3Mg7QuQj68CvyFhq8mSeWfG8gfvJta7oQ/ReweQ53Pa741NO1FqOGXSpNlIPWM3Y5G42qhWeACv9H+UKBUIloeGWXPq026Xb30a4i+zWlra/TqOskYPqfkhw2cm0ECgYEAyFbzNCVVUwG/HcwOnSh5gD57QMrSdnKQ23Sgmp20VnoyvVEgSYP/EdrmfCuOCVr7H94ML62siuNo8rP1TT88HqEZ0paT9Y058eNYLlk9hQZrQtWtsUxjHEueGeCXCxY33i16xAeEUvAnj1AhvMfX8d1s+35fwJkHe+F/xMiwi80CgYEAwIkIgAxvZz2xFMCBY6p3lIYKKOQmBvAAcIl5h0Bugio9xHfO/BWe3LNZnvXWCNAcOF6GY2tF/pY/p9lZrwkK8MKy7CYMOx/Mq+LiYoXet8LG8G8oBl1yR1XdG3IfyrUrHIRr7QX3QEtOWMyK569/xx63szEE4DeJFVckvs/gYNECgYBVAlhGm0TeaRJQsYLN+xu7aEfikW3G5wxCovV3Rk38l/Op05/Qshrs16cPr2eg3qNKvW0MWjSp5p9kxSnksl1vXcrYSh7Uhi29T0vetu1c4gFnpcYDQreXjRq0PlG5WZ8xPrkmL05d5xvSOx1lvqMKNXwGJ3S4A/diAKi3trT7TQKBgGePjc3qYmXCziQeY7prL8To0EAsb7Pdli7yEzdH1ekXtX+e/euj6X5GzhbtnoHBBtzfIyQIyG5m/LhY9Z9rmsHjx/+ze3K16Q4vjJt37FMlZoJfF8VMsDJkofioSydqiVTeeXrVcafYmbyz0KdMQ8uj3yV4YWoFFSwwYmhsQgFxAoGAfiMz4mEAHV6IUSGwSVlRcV0gj/vN62ZADrjSUTi1O4fVy04juZqd3dAb6CBFuf2BPNbzK0FKkkBxpdE3vHAd9C7XwRnq+XcMwy+ybbzWeitKiNeTcUx2hFx7JAo6xzLiMosHtpQomgZG20KRmtg69iIjzT6jdsznjTft56oplFo='),('c11eedc7-f01b-49b6-a7f1-970ff04faca9','d99633ca-7e2b-4493-ab37-0a3e62c07ab9','kid','7dac06a9-934a-4aaa-8e82-9e849e8ceb2d'),('c13031ae-cd0d-4227-a747-47c244d31d61','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('c20b843d-0836-4ba5-94dd-4efa3481a06b','9331128c-8eb0-4ce2-a5f5-43e6e200deec','privateKey','MIIEowIBAAKCAQEA9idqrywOIlpBC2uDfFlKg5ttv+OtupzLBGbToq35HaMGr/iKa0ZPt3ggp7rIlxz8jkt47myMJ9eJBSK9OckUkcQOWYQJ0sSLOSIeSijGFFmAvze3Ug9qGOKj1XzJ8PTvxx/5uTGryHWgRIR+XLTZk/mSdhhpxc87fAUn/TnGAF7IPKb+YzDfgAy6Bz9DYUiZ1EmC8Owo6KPZpoibFEg6pXp4t2KMe8Xs1dOotdaGDFvBotUPzqW5YIR5xoLuBMxgiSCB/684zPrQdblBMDOVDDLAUOccaA5SXOabc6EJd2LjLn0YNIH0sBK5yPySGEzKqTsOxvfWJYfvMHbLx7BNXwIDAQABAoIBAAoLHa08DO+V4yWGI31FX2bzRo0XyxTcJORvFZ+DnbB54GH5sBwkaEhCHIL7egfAZQWhSrPftfBCORL+kd3zuGUiLLu2SXhSEKQqIjZAZ6SY6knjChXNDzUouiqRxuOP+uCTC2tk/W9WbU2eYlGCB4akHje3U0mA5RpwU2tfmhaVsvUnyLPVyO6j5vUY0xdN0LcdbKkANywBZBnJgrl07s0v0Z1rmqahgF37Om6OSZNvie1ZsGZ8OiDp5mCcbvhyPyVXBPi4l/+FiK+E2m/J/OLbmrI/YgVHVXWa74jjRhAti1L04tTbZiz3i1gIY3MALc39pLdQoLS8tjF+ANJNOUECgYEA/qS8jEBJ9H7IGunzOLzSunbRcXP6KRdRbgu+BYhG/uuSMycOQBhWqvJ/VBJr4vWWsp3ZXsHx+JDT5wNKEM5OXXNdS16KX2U2AUM3KdfiI5S9R7x6C353AsU0z0HApMI8jpCnvRme2pf+ehidMcNlaLmzawXDm3qHG8Ko19A8bw8CgYEA93caU+uFAGjGeqOKcaSQrU0uLlwemJeicjGEpbrB1LO4hKGi/LaE/WPYympJ4esy1X4H+ELUPrENH3JXuzzixCE8Md4S+S3MEMWamqJgskuQgu78QzTm5KkUriaAkMyMDPUgDQIqOy8VLSgRsAsH2x9CczhdAtGLjhiUex4gPLECgYEAgRhxQkVBeQNhXUun8+a+iqu8KOFcPMLGlJy9XD6nh4tUFjzBm7r7DTVdWfjw2yIYoTsnPUPj8VkzJJXlUbnVvsjCzngCfLRp+Z/i8oKw8crxXtHtqbAWk7/4su4pxR135+rsLxEzGK0f5TRfVSAzZDFpBWPptAQdRPSd9rNqP/8CgYAaRPVxhSXoRjcTm7q9l5eYHgJR/4tr7WTcNG99XFbpKm7i/Xmc1A9ICspfqmrPZbVOvoNAEnAPe6IF/ZBcmvkDkved35IqC3eHLELeOXCEXMspaw8yXzJHgb9lQUcSl/QiB/9wAhPTlorr8T33byRVWXsnWgtdmjrzSZ6xdyA68QKBgHNiL2NDZ9QhnteL0ba1iiBxxOr+/Q3vVfKipHaN7QuvqAMlgnsK5GBBs33xILZt71CByWBNPqTfsiHXb8LnLWPKRb6nQku5Nv/w2BaBAg7ZJWJDLgXDjbvdZS/s0SHT1PiSKc9mLxJcTC5bvEoCRK86TEMfQ/HOtCOCwDH2+Keb'),('c34c615b-2061-4d59-9d4f-6603eaad4fad','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','saml-user-property-mapper'),('c3fc66e1-30a0-4008-be71-f66a4f5e6181','3ce4dc39-96d8-4317-bcc9-d0419154e130','client-uris-must-match','true'),('c91c3e04-a9b2-4430-9f34-57a5a41565b1','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c955e676-5806-424d-ba25-a421e3b0571d','d99528b0-7516-477d-904c-0ce895eba7df','keyUse','SIG'),('cc4dc790-84c5-4b92-9b53-f7c67a7780af','1b22f244-dc2c-445c-bb79-8b7aa9345d19','certificate','MIICmzCCAYMCBgGQe0ZOzDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNzA0MDEwMzQzWhcNMzQwNzA0MDEwNTIzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDoVHA2LRx+Risxg9eOr+WPbz4cZ7t0aKP1Aejt53O6M+zLvAF3O8QIwHY1dKMG7ENxv7yam7LwLtHdm325hGy21yz1Fn1qnse3xowBd/Z2ukhJ+OWVN/Um+orN1lnKaRRG0Ga9QabRqrbAHJeXiJEuUPCsCqi+CXfcDDr6PeO/OqcDwKrt1AughJQCpDzucZZeR8FHHGlNzPUjviq8AST5hnnYefXldy9NeDSuvoV/frXJsnLRUFeK7LrfCaHpCBqAXPfRT2aySWWPzYxFZl5gJl6NvsVhJZkzmS1JOilpK8oySxUjmyFPEj/NdW656AKb02P2GurpeW7GEeYZ0tiXAgMBAAEwDQYJKoZIhvcNAQELBQADggEBANYCM+xeFuCQF0M5/aaq1vicFXiY11WO7J4bJOD1d1Ouq1UHDWOWmOpHtC/VSO8xT9GopmtbzvyAQbfTTownQ1vlb91Auk64uAwI0cPIoROBl3Del9mwQhxgPuLSy4XY9daa7yh7gixQmmbI/wWiQHVMGCGen939LsQphzYLK/BPVeAGP1W7dhCB0KP7qMKTTJ/GKPU4fOsPyphLJ18eNbN2RYqCpEIoV6MrbPgkMJcbS9lvstZrNqAmDVrwhTnQWrKYZBesHa7yQ6QBfXwi0peUK+a5kibNBsPYs0jCb7mAdPNa5Cuuu4MJZtA/bGBaYO/v2LIByFPKXxMRoMqXA1c='),('ce624597-a151-44d7-bb4e-040f1a893ebb','74ccdf01-e294-4c26-ae81-475d7e8f4700','algorithm','HS512'),('cf4f3d39-98ad-4548-94c1-31c0b6c00440','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('cfb1bc83-d8d6-4d62-80c5-f67e034e6ecd','8f237391-d886-4f18-ba41-5977d5a3f8c7','host-sending-registration-request-must-match','true'),('d0762c7b-87c3-4db8-8edf-e3de56816653','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','saml-user-property-mapper'),('d09bc733-cafc-4172-a7ff-986994ac065e','691ac417-825a-43a9-a99e-d7d14b1afdea','client-uris-must-match','true'),('d18adce0-2eed-4240-889f-250b295d8e6a','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','saml-role-list-mapper'),('d46ece52-3bb0-4f3d-801f-b092b764b22d','691ac417-825a-43a9-a99e-d7d14b1afdea','host-sending-registration-request-must-match','true'),('d65fbca6-fc45-426b-b2cb-d2e14e6d43b5','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('d727f2c6-c2d7-45a2-9aa5-0a823228b8d7','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','saml-user-property-mapper'),('d7f171e7-dcec-482c-af1d-12ffdb0c4693','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('da9e5e3b-bf27-4106-9a1a-991aaee6c506','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('dae5e559-7144-4dc5-8b14-2c190679a807','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('de8fa54e-6cd7-4f64-a231-bc4f9db1a511','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dee5f0e6-aae3-49b1-b258-1892ad26ca14','57be7dbf-fd39-4562-a197-4388d2e3502f','certificate','MIIClzCCAX8CBgGQe0m1JzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDcwNDAxMDcyNloXDTM0MDcwNDAxMDkwNlowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALpita18xn8UkVz4uGSo2YziqaAdATkUgeTgmyWg65fM6wD6q2PpVRBady+sN8S67N77zec9oL6sUS0UeZZ7/KbBJbvqpHy++3siDnWt7sAe504Gnt45vaayw3njOrlYOd69iE2UQz0xojUccKvH7ybJQvbZpLsaZoUGqgzqj0vA0EUBV9pHd+RhUeopl85urTe0g5wN59au2deJ7f0l/emkqxihDnATGH+ekujPltu1z8IqdFJQiXuCyQY0KrDcsxadqCTmsf4j74zlsufLJVRKIB6V72e5y5ZL2+vp9OoZkz1KffHhU313cNoz832eyQ3HW1wGHrhG052pvC6HJnMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAlmwOCbA+rUcTxMJSLNwV2dYCm9AduC7hNtvnjsD9W9AzPRFCaeIupI/0p8+tz2nzmrmZ6f2jy8PYybovlDTg+StmWcAjNwhMgYHNCJd/PB85eqoxW9JO27vGzyreZPV8M0lXyDYsdt1znQ/xmQHLYTBZvbeaBZHjdrDvBRmnVXIyPHLOI6iHVSQSvRJyIgT/R1+UdALZQGAv6NKyvbsK5G6QIkcbGRdJjTrOO1XfasTcCr6jWGMx9kujqhTrN6xhL8n36YnXCVQ8+F824h83+QOolBu2N8ZLWtV5uWpwNAThcEJeY1rSQzppUoT6QqU7E4NmRu+ZTAG8EaEqf2kkNw=='),('e00c7857-ed34-43b5-aded-aa5ec7fbd116','4f36aa4f-9e42-402f-b5c2-c3c34fd8253a','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e24c24ce-0a81-499c-a69f-684f2d4d1d52','9e4553d6-7236-4751-88a9-dff9c4264626','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('e2e2dcdf-a8cd-4bf6-b41e-9ba075f08676','b316df5f-ebe4-45a0-825c-be55eb70b12b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('e43dc3d6-52b0-476e-898a-7f4372f9df7f','2ac07c1a-4f96-4212-a5ed-e85d05862b72','priority','100'),('e46449dc-c0f9-4e40-aad1-12f7e7290da0','42906ce0-73ae-486e-9a75-e24c2e9e5711','kid','4e1d68e7-ac35-4ba0-a1f9-c512ce768e44'),('e46bfaa3-6527-4c14-ae72-d40ac0157caa','97e8add5-de31-475c-8f15-797e4da1b647','allowed-protocol-mapper-types','oidc-full-name-mapper'),('e5d7aba1-2f52-4f62-b081-922fcd0f355d','25ccb98d-c415-4520-9d0b-6f0132b31260','allowed-protocol-mapper-types','saml-role-list-mapper'),('e61d35f5-8960-4665-86eb-cfcc6f8cfec2','9bf3d73b-de6e-4d03-b706-336c07092d0a','max-clients','200'),('e6a24727-5680-41e4-a79e-02d636bf8940','d99528b0-7516-477d-904c-0ce895eba7df','privateKey','MIIEpAIBAAKCAQEA/W6M0pGKQcTeMNhZw9wcPaB66iD2HdKjL3Yim5Wl+muSIQv+SELHAoY1jGEyJpSLPalJb0KZ7ybgowrMM8fkcvH6PShgCbUE+Qgw6fyk2tMXWqGbUhrlMMiR6xC6W+ZBtrqdKNsacXxQS3/AxiMLL7uyzwYJQaXH4oDK89BuZwi+Gvl9nxnOpFogzriY6lar+3U9TjqKcjCwL9IWJecmXwJYCKfF5Lu+bZMKBnlO48HDQaxpy4rYVjlJLAEyC3gJe3TjeEcIoFH1vZMOaXn+yqT5BI4iCRgki5UL4WRwZ4W/jZqffTf1uDNLhRNOZBw9CxjGyr+qp6ZnEO7zcFS0BwIDAQABAoIBABK9aUgrmLbq5ehkIlfs/3rNHzNCrOa6pY3dmFe7fDj+wFQvDPM7jaseaniooHehQoSUoohjVK4OLv+cM+P2Ux27mx68ZngBSZtY/QKOx7ZVdD1W6uNqd4OHQuCVBy32SLcVQiH8LA6zokP0iYT9OjDVTWncKLR3TxPTWAgpMI8jI2Qb+zSxnGbzKU+69Ayz5ISozxDgG14ZZjiK0lS4jGSudprDWmCqeh+l5UjfMrtPU22LZZEWpsLhdH/MkR2SrggJaqHk/5Jaq9wJXGJ+I1IK+NGwXQn5VaeCj97i16P+SK7klhHKCPeU1aZ2oI/ZMFM4Frj5BPEBC8VJ3VkksMkCgYEA/rt757pHFcoW91LShTIehnYg0bkOBWXopgLAIv7xRQS2890zfnose+Lk0DL2CV5kHeVXgqnJO4B7NhlwTQ7mfDq/gVz3drfKoFw2NCVJXoLgSoFHN5ZVXcOL1nR+Lol3/jCvzRS3jxQ7H72AMtHmBaadEIgGt49vTMYU4ZCUtnkCgYEA/rFoxs0sC7ZTpq09dSIPKb6AfIDyweyf4g1yPLXK3l3Qo+nYubWkwWAmO/ZMsmUXZALemo+2bpmVWMNS0rutaBwlJ3FeNbawuiwAib8FDJs3x+yWJz+/iWk9J0wT9f8wr2MzLKLjz6m42iR1srkx1qg7WhN3p+qstIrdT7eMHn8CgYAYtmug4Yt/66kquVg/H8uiU9d/QSrBD0/wuxeUzZLulTSCmBUk0gl6w1pbcHY6FnQ0CknhHUOuiBpr9y/T6fwmVTS7Ah/n3pDD2e5QRMXHa38C+2PDWsxRWmU4mvia3y9K88I6bSYZtWa+/41uYLqmFbHrJqcwK7QqiJUCBRrIUQKBgQC92NokDf2+ATtba5j6/ddVo3W82JWbbdlDtAgqLsw4cq+57u6ohzh3GEeHvLEw7N/Boc3yYht3V64WSwoqoNDCYPBk9UFnQnV7YJ9KDgQigHTU5oqKWR9ZuwNljnT2kjDlG0mjBQxQ1889c530Cc2XlzEelJJFrUztCvGqoUOl2wKBgQDd1Q5HFc4BjM5Jk6E8eQisMHZq2TnK+fpv5pOOvu6uDuqePyi8e4RlwIujEnrAcw6fa8c2v3THWOz1I1PdzKiIXJ5g/cOkO8CCfZGQLQ+KSGRBPzVyWvjVoEe3v0Mgwl17OamzXzOXjVb93ovRZjFwDAZtNJ3io8C8Xa6qMfm9Zg=='),('e726975c-46a0-49ed-b6ed-dfd7f59e6faa','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e78e14b9-a106-45c6-8fb3-4d798d746821','3b6ec4c0-404a-4561-9343-4ed0b6b746e4','privateKey','MIIEogIBAAKCAQEAvuNReZ5mRz5+rhb6HX/kCNSHVZhRwpoxI7qektz8tNplp+C5oqZXB3xAs3q344i1HgSOjlX0/L+r670zpTudyi/C8l7aREU30K2CCVWhSCibnBdoIVsMT0Bl/m3Wd/KsCqb2J659dM8jOgM6AD1ia807Zqc6A+Rsczb/touYbblqFsqVj3FaDcvzrN7p1E6KvR97MfoEH7oUtLAiOc07Kh4Gg4eBtDipAMktqdVJsYQYMYtM8miQCJ7Q5K1xjrX11/q972eRq7YH9mdPQw325Pbugj4uMoGSU575tRJxVxcFxswrmKSm98qEORw8tK1YoV+4DQEuG5O3Y82w3eBLnQIDAQABAoIBAAaCw7aoO8jWTYUr7MqwyrBaahCgqg6Uf8no2vEbbysj/9pNWfI9m4j6fffL3xXNsI/I4VaNgVZVm0w7ydUq8WOCDt4sH2RmD/9NdmVRxwx/sL8O3/2zQ0+OB2yO29p/gSAOjdAmAsrHKJEZUb3MWjJfGlWSrUc7X/pAt/wb9XkDOOXtJ0iWt57xt94rTNbSh3H6PJLVEh6cVfzteghpXyq3h4LMB9ATb54HT6S/+jod3VDdhe7aK7HHuXC6kFNzcnsKSq5/bNyBBnPgyHWgy5w1G1T0uvU4dJDbOk3LriGYiKh9LeTyYFDFxPCd6reUSsnzwDgaEeCc8M97UPeHQUECgYEA4w0n2fmgGRua46CMSvDFpoajOfTAz7xt6QfGVdPtjRcHulcWJVKp8F/RK4Hj8kbEamWjBw6C8NiDYt9Al73a5CMQoMytyQ8YUXLwMk9XEuzb6fBxV9+d7VGKcnHpxeTr4O8VNiHBIqPXq2UF4dxbtJB1WNuv9oaBoOMotXMrWDkCgYEA1znOazf71S3ldcI0ziKYb6U6h/gXbOxK9PDZbQzXjxEFtB/SQUPKdjCNYrswJECEWAx6skN5hk24ke4P0AqaGoHmojLmSt9IPp4fWUwi3BEQ6obzjmh8rGqgWB0jfH9gjzuswq1ymqSj7zsjLnefBGQmqxnYSCX2+TZXgyVbJoUCgYAiwXDIPR30ufULwxe2oQSgaRuzU3PwWLe6ZCZIHRjP8CaOr6YEMJMy6HfsYQWzoIGQh95cxivlEj+KcwJAOB+5rGRvOOWhUV43mZCLIvoBO6CuPtAa03ApU8INosJWOKSi2fY1QxV9Z/crlVtBJ6oiCbrszzQwWIafSiaBIBASgQKBgCfVAffj746fpOTrYVx5GJ8pBDEf4C3/eUvlu0esZcSLkPOqI/6CLlk7WR9Zp2o+KoAlJxwQ0s/hWHRhi7mkDKs1OVrxcp+OvU8hconTRmxWGDxfZ3oGqnQ6c5x7IBMte9Bmae3Jrfki2VgwKK2z49ErO+DUsqt/ozqyLPYPltQFAoGAMbPGD8+q57AcV6DXg5H8tDP7E3c0SZTW3IbNVluGbHX4I06Qqj3nupyhDncH3VgEqUAOyF1+U8JJoTi19QKjUi5ynqSiudAsKx1j9Nyj5fUD5eU0yK36cajxBTYpPtGk1Yk0oRKaaznZFyhGXI/HUoSsRoHA3jHlYFhfv0ZxbZ8='),('e8f6ebfa-c7b1-4397-81f7-4c2135fd0992','b15edf1e-180b-47bb-b97e-df749e6dc886','allowed-protocol-mapper-types','saml-role-list-mapper'),('e91de816-d176-43ce-bd39-eaa46573f215','57bdc980-81cd-4ada-a584-cec2421764f3','kid','380dbc6c-f67e-47dd-bb45-003b27c4a937'),('eb58857e-6c5b-421b-870c-c859fe215aab','9176ed59-ae32-4080-b376-ca315bf2b0c6','priority','100'),('ebaf74d2-0e00-4f8c-9f26-39c6993160a2','ee01ee45-44b9-498d-8655-253e7c4e7809','priority','100'),('ebf3ebb2-9751-4743-9c1a-dab1a519820e','cb93e354-4356-414c-b59f-46e0070dc54f','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('ec2437c5-7979-4765-afc7-0a637ad8441d','74ccdf01-e294-4c26-ae81-475d7e8f4700','secret','Fuc03XE1dMC6Xc71gi8PvaeQkqeqMWWB8cL8sL-p3BReBE1uHJ-EBpI2wDhhjGMMhKaeapEmkD9vSzS4T3efp4yzgl4tF3ql4qhwEnG6i9JmH7_dd217Ns1MmYIZbQC8OdLkQAR9LZofjkqkC0upwgwh9g8_6ponPBMC063u6Jo'),('efb91d4f-bf4b-4318-8a28-8aa716e184df','42906ce0-73ae-486e-9a75-e24c2e9e5711','priority','100'),('f10a5ac7-9ce0-4a52-970c-f5d7fccd4eb5','88ee5c4d-565a-4d01-92c0-2d276d6fbc66','privateKey','MIIEowIBAAKCAQEA8tAypX16lMEqw/XzijOfk02RUF9iyhntvILb2fWI5H+huCORzVN5tfk7mq3zkQonJtpAXh56bQAwvue4lDGxYrlKrGTo8KBXpnqeqduocz6nncX1bXLFjSCTMG9uduBMi86T94Aa5b7KuTpv+2tnkG5OCmcgdcADm40/yTTwGbixo2avya0fa0DF5ZM1nqyYSDZjAYNCLS2TCYjExhiDJJiWLRDnc0SZMRjCXoKXHVNvFF4yJ3B/VYfh23WUKQbM+kcyg3dqRsIvud0UMKc0pdD/+Z4oXaYzCtS52orSJF3yP+vgmxYEbijARunSY6kLzc+xu08xBEIGoDCZmoq+mQIDAQABAoIBAA6iUVMbshNyEETu4gaJIEvNR9NGFHBQH2hro0V1IL1+GxM72DyS6d8iTh8p7xKQP+t9tEBtP31UnsYlYBX/vWGmVOOj/KK3/zWyO+Af3tH8oOHc6EhNkQN1nE611edbPbHKuayX2hx7oxXbzvD3uFkCP44tSKMKzLeHdqSGnhaRUYV9019sCcP7CS/jkirn6yRc1lnWZgfVAp/Lcu8ADeTzs3NWB03b0neohqgnsPbD2l5MKtEobYo+8pcQ3J8EaFXbobMmX7LWfGcrw7gFk+3i9hn7JMkVuB0wk1MQlpBcjqZFJgkPj32i9+FMUQ2fgQ0F8r7/sxbQw4JvZ0ePQpMCgYEA/sKMwMKzNeDeNHgQsDcSNCLWCnqPw60ZWtupJIGjPcqHDrN2KBWHK9fq2GRJfeSjrBiShBrxSR85cRJLwaltN5e5JyHt4/bKeCBJ/6hSENu7CKysEMlwb7qrxXQRSlWcSUG3P5GjMPrHQdNny+LU4O7+jHQyz40aFnj3nnSQVJMCgYEA8/7C9J4VFs+mg3RlTDKzDKQm0kRL6xGJul5TxEY1dWvEWq0Wvz5tWfAsEWeB4u7EwJuvyASH2fjgG3g3GMYzbSmFjNvd4KtdCVchZ9S3h2X0/6eEPRc9XZWdxKVOP69bi/fQILGhtvlqnuT1/Dk3uDQvtjPofglA9NbZdyNDp6MCgYBkLMf//A9P/k4hv5yATgdgbNpRYIQrY2N28Kz/5+HyqDKXO0YY2O4/9TUpRbYIROF/CGKEg7uhDyAdMB6N1jtWAtkRZCwQ2bgfqEKwvtUWP/C5pnw6VZtas8JbcBpkaml7/NU7r97Foba8UY6dA2LF1/RL8l0Qc+FwOLzVl+ww9QKBgC9yMubudptg9bhKQgh3M2oZ4ZKxxTGIz4d2IEPigzK6KgyX6/x0Xz9F/MvFnPRMCeaKX7w9ZU11n963mb8vi4CGunmRp6uwpv7R+qT+MFIb+XBdWtGmW0B/f5Zlrrmjl+G35rj00cWK6rjLPSo21ibzvvNnVKZtljwGK3OHX/iRAoGBAMKznMQVuQPIeCs5AnnHEFRBlrOiSLD+DDw8UQW9A4T4hVdimK+6/mwrMCgWobrrJbItmewcZXtJA7mKz5icEwk4piSgHAZ+Ie5AU5F6AYg8YXdfpNp1tdmIt6FU1tWFrJMhzEvOCOB6UnkeGwYQDDz6be6HX/QDQOU8JNMJ0f6j'),('f1514499-01b8-4115-83b5-6bb8636398f8','e1284e00-bf62-4477-bc9e-c128c88ab53b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('f19bfab6-7ded-4727-a536-2adc030cdc1f','14d001c7-89e5-476a-a2f5-3ef50f8f6a67','secret','AdWJcj-e268PH9naquCPtFGnVSZIekLyVCCVWo88al03SUfzNsnXaLUd6XYEGuX_vts3kBIPZSgTjjLNmWa0yonta_t2Sd99Nz1YLfSPncKlPyEgCdQnsKQjr8ZokdpIrMdgxFnynz1f86zKN5XtT6VbfbCL9Oi_p8TW3qpqkXA'),('f239d429-f988-4d7c-bb01-927dc44aed2f','57be7dbf-fd39-4562-a197-4388d2e3502f','privateKey','MIIEowIBAAKCAQEAumK1rXzGfxSRXPi4ZKjZjOKpoB0BORSB5OCbJaDrl8zrAPqrY+lVEFp3L6w3xLrs3vvN5z2gvqxRLRR5lnv8psElu+qkfL77eyIOda3uwB7nTgae3jm9prLDeeM6uVg53r2ITZRDPTGiNRxwq8fvJslC9tmkuxpmhQaqDOqPS8DQRQFX2kd35GFR6imXzm6tN7SDnA3n1q7Z14nt/SX96aSrGKEOcBMYf56S6M+W27XPwip0UlCJe4LJBjQqsNyzFp2oJOax/iPvjOWy58slVEogHpXvZ7nLlkvb6+n06hmTPUp98eFTfXdw2jPzfZ7JDcdbXAYeuEbTnam8LocmcwIDAQABAoIBACCueUPL2rRiw2BlflOsJcVl4y9flpzPIz2iQqIU9up9tIFN8uqIefFto3N5A6hbzHgG+CJBdKOqbGt2qSFBaVpGCNtL9/6lsEv1e0qYLoKCiLVuRMIbps0JkGwZc20XcsJDQpiz1BxxTQt6CqmcW6tV5AeLvy5NoUdXFU9Be9Hg1mSxP3AN8smPPIM7OhbKiJ6y1ovD1CuPRW0jjPgdRm2WUqgF2+5wiBjQ+1sfp74WMNVxzUS5zTzM+C+lwzvPUT/amLjf9Xco2J3FFOa6PKHc20y/FDoWAxmy9LCT9fB2HQGI/BdgbAgTiruTEYIhMb615xX4cjb7L/xJihbz3I0CgYEA+6VUfu1AIGnIHEQHQezSeLzld1s1IbRyXRMxoN+qcZD52eRwV33CC8QIjoQGmQ1Buiiq0tKRnitU+n3HT2VBMGWgGppkohABeh63phluEE94NUCmJDNtAtZUNbGK5gdRAdHuZ8rF3uRBQ0C6TfBL8wXc2kBj1Lnxe+hlsBy7V58CgYEAvZxO48peIGi+HxriYZlIuQCeWBr3ilgGtc9iRJclE+sLyPb179jr184hUEG+HKe5zZXJTvMhMkwypCin9gbKqL+V5Q7l8jtc+aH1ii0Slv5kqnBHelsuAP7VMFMP+SUaF7njNPck0zuOWydxIojdFLL91Z6t/dzAoYklHiitEK0CgYARhk4AGN2iZDt/XG109d0ic2U3jq6AjmR4fuGx5mGkTwhXWEVKkoN09k3yPteGyRmOsU5UKD3j2fitCR1cNhz4Fdu0fpQLhTnVG1aGxraXhDFG5B2t37bzv6FVq+uUYWYOzmPf7oshHpw85sEStG1Vm07qFBnfsqNSkbijLx0M2QKBgBDsF1pbIEVyM62g/51ISeZA+ODSH0+YhZjKVnHar3N0ocugxthOGtZazjxUcbwq9/kyKhJCvq63gDmIa10YxBOFbcJQrxMMW0LoQnq/hQ42zBMuDCMOai+qjqpOb3mD5y1A6Nc8S2wSv6TBA2baoiiLxP3AuLSUdBi2nbpwVOnNAoGBANRcdhbppbkLfOeMY+zif6uNr244va4/rfdy2nHjT7+Zj90m49Kwetb2zsYNicqAudfGy/fXVYayTYGe9gnKv7aBBmrb1wP2jOZSPKcEySZYd5Zkz8+jwhpFbJNheGqJjLjhAZUnuHgeNEc71xUJMKIGTuz9JXVWlxwAzkqQKdcn'),('f25c7123-2ce9-403d-a5fd-b9cc3e226394','57bdc980-81cd-4ada-a584-cec2421764f3','secret','F0t4LixWPwNP-REX7O2p4Q'),('f3dfc34c-e762-497e-b999-56c37e310c93','e78145c9-906b-4622-9019-7fe628ce7aa2','privateKey','MIIEpAIBAAKCAQEApYkpHJFyCB2u5X+WW3BhF5wcAPMl+hPi+3M2W0Hr3X37dFgs8B59zqRH0tawLK1SbETZTEPQHvePiEHoU2inqq8A39tmrcg+P/6ujrmjJE1DRuUjEYg0skSrcWw1BBvdyKE2jsISYC2Q1DpK3c0wRXZ54LNfQ6c1Ha769GON2Rk7JPeoTMjcrEfdvWJyakw7FOGd+rcxcyPQeP9oYnjsSSY8jzeE3HB3QuHngJnLReIlt8Tbu6eK+ZubL+b7sckMtDq5O2L9CX7sNggUlJ7GKmsCC/27d9yDUZ65Ex9lMLTNqmYtHniyXxboHwg8BiiV964OyCZwI16DdJhwKpSf1QIDAQABAoIBAACe8BMiwVCIel4MyXQt8R9IJZuKgR6PMbwk5XpLWAAfqqORq35HDv+8aMyNcGG3ULM5QUgvWCBIzpzOanmnNdT52drJ4hIayY9h4o1RSVLBVQd211fUfYyBndPLrRmgpSDm6EmtLqmpSH0s4f6ZxQMtrsbwXuLl3wwg2nrm+K9swdruZRX4nopVkb39JNlS+HZ+VcHu4rQRbAsaZ0EW9O+qI4FjLUarzGtjghujeiJiqJ714Hrb9j6/3gA5En72JWaTuBeQy+YSqJBRVsdiw28vnitSOOg9UanURyqm/6rNya0RyC3X0YQOhH22LIyKvBdycNE151EzCh7tx3W/zKECgYEA1zLlO0UX0tB8CARpk1aMEqbRKKc3R/i8NlcgoMb/fDaMgYtWfPjNVc8neR1op0gNw8UZoTIWwXjALwmABpgdLJM28yiN9vg2JLmGk2F09Nk1fPrnPs6EkhT3dK0FXtmzXvOx87PTA2WwnyztDRhnkjrRwX+wrHJSu/Rje00balkCgYEAxOvFVlxcJPxikGcFVHy2lvhgmbUlrik+3h2n1UIaN8895tXCWD4rePN9tyOtG2LctT9t8lLylEVf894LzoecFYifgn8OPTHS1/eA/My9eyJJkCuM+tOZ3bXx1700+qwkjUYpckGdZPMdpJEt3fzfZDMJb5lc1/9pY4zPHBmcOd0CgYBuOlqihlySlknBzYjKeH1dHGdsXGJ7khPN/cjvsZ6x4DsOK/IMJ2D+ABLm/cJaVRT/3ximscJoLVK7hTE3r3jaGTn/SRmWlEMfgoxFN5kxxYSZVOdYC25qaSTrdaiXkglHrKnM+6ItTkwu7FMr7wE2LLy+UYqMei6YqbC/Opq9WQKBgQDCEQVCzfT1clGEtDK5h8q+T/uLn82JrRZK+fjsH6AM/k2oD2PfaS2YnoZ3lU5FXhHbAa7OENcGLrSYdm02VckKI8HnbmXPAyoiMsZI3VGjZzAOSA1BKIZLzMKRdeMfY8UGAW5ZLrb5xOqiw3zreAmECxQyinbIW+s185AsxkSDdQKBgQDEuotQzXsiS76Esd8tjJ1I/B9uxg8/0NU7BRzSoI+CMcrT0lzob4M/cqhPzwWLNGpBJOaOfs26bdEF3vmyHNn+7saYKV8DXcYb0fwnAgv01vOmS7ZE7kH5CodGmkpdnH1Os0uQP6972oZ9jSNWxo68aCQo1wwvaQAsXuTrLSdQxw=='),('f6520cb1-2efc-4582-9308-8943b62a82d3','58bbfd47-af16-4e99-abef-a7559bcb906d','privateKey','MIIEpAIBAAKCAQEAjN4fqBxEJgObjWle5Wpm0tIXEd3uCiB3sWPFmBVMQC5m2qZ1egJWE72QzoWlSnv4k81aeFX7FLKnWtD0Wr9oMCgOR0Uvb9CSbVulLF4rehgnkBGMHpOqjGnon3Rg6bW90JTAQw354YF4NPAiY+Si7Uf5s087+1s5fiqxnP0R59+8MU4KERyfoZKrqxrBaZ1wBemgTbcKPsLacfwovPeP/tNs2+j5D8BqM5625GqnEhgL1AUnExVrNOC2W4QZyp7lYcYFJowEA/PxXlShJYfFv5LaAKC+MYMRF59802oENHwfbn/fe5faUVPk1SwCTqFQEt4fhkK/+t/AuNQeScze1QIDAQABAoIBAAlyyZ1JPhHtqoSO5YBORXTNBiKa5+Eygcy6ZDG59foVEq2GPjlviC39SEXt5WMMUyU4wCFzpOpjvEFlZAplLbwTJ7gEjjS6AORIYhkKfPCMx7SMVMFlRqpx3Ro64Fg0qjVgENA+kvza5gDo/WmFV59CNV+fSCbpHL9XZj/hIo8Sk2jJw46ZNTH5TjyRV1bGpdifiXkGvV0bsf5r2YsuoYkhfvKoAdcx5mbmfQ8dtALlXI3xVQCyhisTMtLKi8w+OGsrDXBxuVzffj5Mec1HZMKW5spyDATfoBDQBfFTzSbK+AiF2jYVtbNvTY5Wme6ZUmKdwBLXLzQVNM0KlK3fKikCgYEAxsaOL5iRdMXx4xXdE9QaR7Y85lzNpyVwwESkYvkd+p4M4ik6ssRWDio/cMGNaU4tEk2wwhd7zmhwDD7xeklgiOcMfjLO/BrqrUTTz2BaBW8Trufe38GNjf4LTYP4e6NhqhTOqXGPlKv2zSQCb6hA3oCmvyM/dLHgEnxNsL5oke0CgYEAtWvYinH59noM1P68Ex2DeH1At96zLIJzmQcESlAioWdL3455TqeQLfPq9dlSyZMXuA/dkBeCUzk8j9jKjjhuLgqAayEJwZjDbonGABks/eqv66t37FTtnB3l2U0ocid7ShC9u7MAB39c8o6afssrHPC22T1y55/Oz6LXe4KFA4kCgYB2Qf6plm1DOdi0r3c9qryP2X3V13SKcp3n5W6fa3JIfetQShMf8+r2tm/T13MYKWhrMUltz6baoAu5XWEwzaLfEAbAtd2q4yCnQQF6qOolvXXKYyyXloFu7qsuzMryU7txArwI1wUDAGPum/PPFhyxw3xwzrmb5Y9XsBhQhJeV6QKBgQCDrdNuKWwUymGl937rIPDb842V576E/+qHl+A1UBTSsfcQPIkv3c94iyJvb133kRwWLO3UODwPy+t5PRFISQ0vvc+X8lLygb7X7IgaaiuN4Vnu5HYWw03zkn/SSX6h3KZQC/aq1jGfP4JnS7o3bZ/NUapl44QTOpsRelCNBR8mgQKBgQC3b67M5XR7Dix4c8xR4l0SW6yWfDPMKAyUzQCaNf4rF7NY4hfVFEElmLdbyuLy9Xun1DOssMpaitZfxMU/88B9k85fFyqvJ6CSnmG75x+DjSHxjXpzf2TDlijOsmkGOgwsadHgp1RVBXj/zXNWOSWD6WT0SjsAnT0bB9EO10LQlg=='),('f75d1dc6-ea5b-4ec6-b723-b1f7ba47104b','264e437e-4573-4812-a6b2-5afc4ebedfe3','kid','69039998-5726-4ce5-804a-04c9dc951577'),('f9865a75-9254-4957-84c9-b3c579cef6b2','0fbdbb7a-f1bb-4e31-8fec-6799e6dbb3f0','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('fad766fb-978c-4c5e-91e5-5b362dc3fb97','afa78694-a4a3-453d-8fb2-c64412e9d427','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('fb268f99-61b2-45aa-b3f5-94a75a3914c2','1b22f244-dc2c-445c-bb79-8b7aa9345d19','privateKey','MIIEpQIBAAKCAQEA6FRwNi0cfkYrMYPXjq/lj28+HGe7dGij9QHo7edzujPsy7wBdzvECMB2NXSjBuxDcb+8mpuy8C7R3Zt9uYRsttcs9RZ9ap7Ht8aMAXf2drpISfjllTf1JvqKzdZZymkURtBmvUGm0aq2wByXl4iRLlDwrAqovgl33Aw6+j3jvzqnA8Cq7dQLoISUAqQ87nGWXkfBRxxpTcz1I74qvAEk+YZ52Hn15XcvTXg0rr6Ff361ybJy0VBXiuy63wmh6QgagFz30U9mskllj82MRWZeYCZejb7FYSWZM5ktSTopaSvKMksVI5shTxI/zXVuuegCm9Nj9hrq6XluxhHmGdLYlwIDAQABAoIBAAKpjQuh4rSzuyT7HMo+y8OkA7MxoR1JYa+aEQBA6buVgr4m7mFeZvWutuwP5RpcNL2l89RVumw0LSV79andkZ1aw+IfGtrQ7Pr3JH2T0Vg09EUcvAzEsmN69YI8VZUTNS9GjhbXHMFEUonLChWrc/Zy6P8ftCVRWHVGEprxgJ2dWduotCMqmZhA6jcWUkziNosX3IO9WvfcBRYedUufZe8U5RUoiHRvDpSTHgnAuDdGzFhsIbM16XIo83KKDW19CCKyo9wJvMkVDKWLJJuIfu+LaRcT9zray1GFjgAEUEXzf6FgjRJahZr76UrjDglZU1eoF1veQd6BTVb2UNaEirkCgYEA9jnYdgyL2jbWEz4So9XQ98r0nXo7lCOG+PSbcscRFagE4SgSAf+8v/8X0eqUjYqpX9AyyiIShiE5p+86VxxdOBSTwhHi6LabxyFdwEgThGCMwXdVEI9UgF/2GtPZ8KJHJC91ps6gQIRA5w65tGtLv+ALCYzsJEqN1CJx9O99EnUCgYEA8Y1hSbfIySdgn3I758Tv5g4+etxDGvjZmqU8JKtpkFkQXmF0A+4TZjpeIbPiZQn2h6rvFaYrhxOpqcdqZz+6WilkHq1+nm2WiBJ4m7H0RK4DEdesEp9bxpE1eN5Cd2iMKaH2V93PmbeNauFicY/vilL8KVaQspcFkFKc8TjdBVsCgYEA2U3d8vlJqBFDR4I90ygOH9KXpi/NSwU7xpWiZ162fkVl4QyLMAZyn4PTkuiTqINazfuiB3Cgpo3GI6bm9yBKSQcoDFvaxYT74HdbFSrHRsorD0dw5IeKjS2jtrOHoW6mmJHmJIwxNB9EZGdDj64uES36r7gWZEUD/NdVeVSvLk0CgYEAk0KP9zM2E3wQKeSopMmpP2WbracuufjQILlviyN9PeUuV3uuEN9JsF8RGBbkhJioVVleXKJrkvPn0XujYMK3R1RIl3NJ6CgDR32LTdAVjPFRKcWEP+4rM0k/gipt9wIjwRXeav7tG1eNvYUeUQFhFcE1vbXqjRYI7E2RJHZ4OFUCgYEAhoyxTh49suSaV+0qGk9bBTov1/TzPnpGFUYWX1sX55wUDKLLigPUBjMtFh3z7q9HDx0sNX/c2oV6cu3I3m/ZUf8QBq6fNmdRKhLkItkj3xeIOsYIjHYQGc+xnIFDYKqpOla8RX/s71/Dnzwx/wNmHU96NukMoZ1swEfjyBzPLyI='),('fb400e0c-f1f7-4f3b-b724-1cb5e47baca1','5b9ed8ba-52d5-4222-9f9e-b2b989627c24','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('fdd28205-fade-4fc4-b4a8-d48f34200003','6a1a628b-c4bc-4bb6-a80d-b55681f70827','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('fe6ae360-113f-44c3-a5a4-12b0fe7de18b','8a64b437-edf9-4806-a137-2a3919c4615e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('fe92f17a-dd64-45f0-8ffc-1bc50d553ad7','0c1d7ba0-c7d1-4a18-8fcd-3fbb81db82b8','allowed-protocol-mapper-types','oidc-address-mapper'),('ff4d6077-fa9a-400f-aa94-1bd7130ede9b','d99528b0-7516-477d-904c-0ce895eba7df','priority','100');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('0376b098-e57e-4d78-a9dc-9bfd676db9ec','4f75482a-931b-42f8-abc3-60641423bbc0'),('0e2bdfb7-179d-42c3-b9fb-2c9d0e103547','2968fa3c-0486-4d23-a17f-68c548d9e6dc'),('10c862d6-8f0e-4582-92f5-f153cdb93720','b69b7ef6-94f2-4334-883b-01e9588389b0'),('1cabf564-bec4-4728-910a-18c3fef062e3','6f4a7c9c-01d3-4062-a226-cf2c8976f514'),('21863812-0fb7-4563-8826-b7f1afbdc4d6','10c862d6-8f0e-4582-92f5-f153cdb93720'),('21863812-0fb7-4563-8826-b7f1afbdc4d6','113b972f-1dca-4fff-a12c-59fbbbb72a9d'),('21863812-0fb7-4563-8826-b7f1afbdc4d6','9d859782-2491-4a35-baf8-65a7027cb16c'),('21863812-0fb7-4563-8826-b7f1afbdc4d6','fe939665-3c16-4d1d-9b14-6904b79be530'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','044fd49d-e163-433b-b81d-f759b31001f8'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','0d43b199-3fdf-4911-8be3-34ddaaf1f202'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','12555238-1395-469c-8b7a-4d5a71bba4f8'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','29488cd1-1092-4b39-a2dc-8d568a3552af'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','30440535-206c-4b10-890d-11b5e21fd6b8'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','407b6bbc-7c8f-4615-84d6-0a62cdacc6a7'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','4d50abe0-0997-4d89-840f-1576112d0670'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','5faae616-28f4-4ec9-b5c8-c2617e9649d5'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','67440856-906c-4ccb-9817-b1c442d32f1e'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','697b6201-417d-42b4-b22a-e35426c61ed6'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','94160c1d-72e9-45ae-be13-3198a4347577'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','97ee6e0f-67cd-4133-b762-0540fdd9dcd1'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','9944e80d-119b-4ae1-89e3-c0c1fdacfc31'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','9b86d928-c562-4980-914c-0e6d730aa448'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','a2030383-ea62-4a6e-bf5b-be44ce73b92f'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','a49b2c0a-c03c-459c-8e00-c1cfef593824'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','aa84fd95-5548-4953-bf24-82dd5735d53d'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','ea868994-21da-4a82-9c92-1a0eb50f39cc'),('226542c4-548f-4976-b8dd-d9170b78e74d','0574889e-b70b-4af4-a716-881bb8ac4de6'),('226542c4-548f-4976-b8dd-d9170b78e74d','dbba1a3a-858e-440d-88b1-8c0253ee0022'),('22879c93-561f-4935-8778-e581ec286621','33e128e3-abb2-4f48-9cd6-e9f7c31b95f2'),('22879c93-561f-4935-8778-e581ec286621','3592c44a-3e55-40e6-8153-7f0394c0cab6'),('22879c93-561f-4935-8778-e581ec286621','5a05883a-93c3-453e-81d2-8a9a17c90948'),('22879c93-561f-4935-8778-e581ec286621','62c63408-c790-4025-95f2-bfacb3d470b8'),('22879c93-561f-4935-8778-e581ec286621','850e5c77-b505-479e-905b-1a01b4ee5b86'),('22879c93-561f-4935-8778-e581ec286621','8a7844d9-a624-4325-8a39-7453f443e2aa'),('22879c93-561f-4935-8778-e581ec286621','906f8856-be8f-48d6-8ca9-d00a7fe0ce25'),('22879c93-561f-4935-8778-e581ec286621','9ee094af-b461-4ff2-8ccf-8a8a09de7284'),('22879c93-561f-4935-8778-e581ec286621','a549da24-e8ac-4124-ae9a-69daf2dbd8f9'),('22879c93-561f-4935-8778-e581ec286621','aa98c083-3233-449a-beb7-d9ef4fbda497'),('22879c93-561f-4935-8778-e581ec286621','b1315c2f-09ad-420a-8643-180d39b9fa2f'),('22879c93-561f-4935-8778-e581ec286621','dc62d418-cd95-4922-a880-bcf4f3731446'),('23c6c917-9eef-41d5-b841-eb20ef94b5df','aeab7992-cd87-438f-9b47-acffc45c603b'),('2bfa1a84-f1f1-4d12-a0e0-222e73a0009a','63f8b2d9-1f98-468d-a19b-3642b8d7fafd'),('2bfa1a84-f1f1-4d12-a0e0-222e73a0009a','a203d91d-8bc9-4359-b6a1-bb90cae1c078'),('31775010-4e18-4e31-b952-fc986390f81b','04c8e811-3382-4789-8ce5-3d76023a5180'),('31775010-4e18-4e31-b952-fc986390f81b','0df33e55-5f8a-4d14-a46b-3480469a0ea8'),('31775010-4e18-4e31-b952-fc986390f81b','7a323dc0-efee-41d0-90b0-0716cb5997ce'),('31775010-4e18-4e31-b952-fc986390f81b','e29bd2f2-a9d2-4be7-88a0-33f727d73467'),('3614dc77-690e-499f-89c8-dafb1484c433','cb09bcdc-2c9a-40bb-bd5d-ee6e7508422e'),('36b98423-8209-4138-8adc-cf98c89bd76d','4710ec9b-bee2-4182-ab44-a9ce80b20a87'),('36b98423-8209-4138-8adc-cf98c89bd76d','78713f84-7fb1-4a55-92ad-3b65d446e8c8'),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','33298592-c483-4023-89d9-ee858de3062d'),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','872da000-5eaa-4e16-862a-144a21879433'),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','d8fed178-71ad-44b0-98b3-0f8fdd736765'),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','f889f43c-e80a-4ed5-990b-293722852011'),('443f67a5-76c3-456c-bddc-2b48127f28d9','b9fa5c60-ac99-47ba-85f3-80983e045398'),('49f73f7c-26d1-42ef-9693-c804fcdf106e','1d64dbd2-e330-4d8f-bd84-97c2f1b0ee3e'),('49f73f7c-26d1-42ef-9693-c804fcdf106e','1df83284-5e28-4f74-9196-9c4515c9472f'),('4d8d3678-b288-4dee-8423-eb57bd465b03','02eed8a5-b622-488e-8fb5-0c35e48fc191'),('4d8d3678-b288-4dee-8423-eb57bd465b03','1881f2ef-cef6-458e-9940-b08341f1abad'),('55e03eed-689a-419b-8069-2ccf47c1185c','7dfcfa49-c812-4c03-b45a-8defe69cd28b'),('55e03eed-689a-419b-8069-2ccf47c1185c','b744684e-5231-49d3-855a-8bd52a1c4cce'),('5639a881-4b10-4906-8881-ed8484667b88','183a8d28-12e2-4943-bbfa-cd841664c774'),('5639a881-4b10-4906-8881-ed8484667b88','7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a'),('5639a881-4b10-4906-8881-ed8484667b88','916bd9f8-0514-47d8-ba7d-b683d68307f4'),('5734af6e-223f-4182-9e09-ddea53d29307','46c25ea4-2e3c-4f87-acf2-a26b8aba721f'),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','46d8a8d9-0994-418d-8ef6-564481d27961'),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','8b0b41e5-6805-4ff4-8cda-c480e156a930'),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','c1867c6f-41ed-4ece-a3c6-cdbffa0c632f'),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','e571c924-ced4-44cd-8da7-9b9ccab965d9'),('67440856-906c-4ccb-9817-b1c442d32f1e','697b6201-417d-42b4-b22a-e35426c61ed6'),('67baa771-e452-4b95-9802-2de4ed5d4f92','cb2356ac-a111-4d44-84a3-7372e51273b4'),('67baa771-e452-4b95-9802-2de4ed5d4f92','f07c8381-0990-461c-88e6-d17a424f9c98'),('67d3d298-cb9c-4852-a216-d79bce4cc90a','8c89e414-2013-4e2d-ae8b-7e26ec1a16f2'),('6b218d00-24f1-40b7-9b49-ed040de6885a','22cdf5ce-93a6-442f-9dad-d17b74fa90da'),('6b218d00-24f1-40b7-9b49-ed040de6885a','a62b794d-1d46-4f7b-89b9-a8db7cad25d8'),('6b218d00-24f1-40b7-9b49-ed040de6885a','cc9dc9b5-3045-4619-b164-63b0161e86cc'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','4bbecc6c-826b-4f05-b462-30b65ba9a61f'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','561cfc09-97a0-4ec0-bc97-9c7dfcfdd6cf'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','5f2a6b88-b648-4467-afc3-b20eaede0b42'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','6e26790b-b0a2-4606-81e0-6d426023627c'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','73527fbd-3a8b-4c98-9721-c593cc4f3f64'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','827ace37-9868-4299-bce1-8844f860477e'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','85fd2275-6ab9-43a8-9ddd-0a36476c835d'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','89122b0c-338d-4de5-88b4-ae0bec963bf5'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','8bd655f5-519a-4770-bede-f492ae105c94'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','8c4a0da8-dfa9-41ee-9727-e5fcf75689f3'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','9d60187d-de9f-40c4-88d4-77f7e77ac24a'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','9d61f3d3-bf95-4f46-9116-1fe1efd3bef0'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','a0c51bfb-c76a-4a10-87fd-a35f72a3985d'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','ad41c8ce-1c7f-4192-bf2f-85688a6651c9'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','c36b2385-bda0-49ee-afba-324e936529f7'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','cf2ab662-9123-49bb-9876-567455c2fd8b'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','eafe25e1-6768-4c0c-964b-68d1907a4d27'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','f765e171-a57a-4131-8caa-a4d82e82fd2e'),('72192981-125e-46dd-aca7-35af9c38c70d','2bdad267-0c78-4631-9bd2-6a9a2ff951fb'),('72192981-125e-46dd-aca7-35af9c38c70d','3a81a2bc-aa4b-49f1-a246-67a0bbc21369'),('72192981-125e-46dd-aca7-35af9c38c70d','50eb7655-dae8-4928-af18-422b96bf240d'),('72192981-125e-46dd-aca7-35af9c38c70d','6facf501-888b-4986-98a1-179afdcc05d1'),('72192981-125e-46dd-aca7-35af9c38c70d','765fb986-1acf-473f-b70d-18aa5857ed5e'),('72192981-125e-46dd-aca7-35af9c38c70d','7b44358c-501e-4db6-bf9e-6838cc4033fb'),('72192981-125e-46dd-aca7-35af9c38c70d','8a103ba5-0f32-412e-9df7-935be76c269a'),('72192981-125e-46dd-aca7-35af9c38c70d','8e14ad73-adea-428c-a49c-ad2e9166f342'),('72192981-125e-46dd-aca7-35af9c38c70d','941d48fe-ab5b-47be-9e9e-e1e75fc4af31'),('72192981-125e-46dd-aca7-35af9c38c70d','990c547c-4f7d-4083-828f-90a8a8821ce2'),('72192981-125e-46dd-aca7-35af9c38c70d','9d523f05-86fc-4ec5-a74f-7d525bd77c0c'),('72192981-125e-46dd-aca7-35af9c38c70d','a888b2a4-7bd5-42dd-9b43-6179e22bc2e9'),('72192981-125e-46dd-aca7-35af9c38c70d','b8721b64-9a5d-4d91-9bcd-2b7b82961bdd'),('72192981-125e-46dd-aca7-35af9c38c70d','ca5bc656-66cb-4b71-89ec-6be847f10c3c'),('72192981-125e-46dd-aca7-35af9c38c70d','d938b822-e9fb-4152-88e8-5c096bfdf2bc'),('72192981-125e-46dd-aca7-35af9c38c70d','dcaa786e-65bb-493b-82b7-ca9a8a98c06e'),('72192981-125e-46dd-aca7-35af9c38c70d','e86fe932-77d9-4411-9404-85ce9750cc0c'),('72192981-125e-46dd-aca7-35af9c38c70d','ef5eb597-cfe3-4c22-b912-7d92dc94f2b1'),('759d6dbb-128a-4323-8546-e129d85e0952','3592c44a-3e55-40e6-8153-7f0394c0cab6'),('759d6dbb-128a-4323-8546-e129d85e0952','a549da24-e8ac-4124-ae9a-69daf2dbd8f9'),('77305773-f1b2-472d-8f17-af9ddd98347e','2eeaf535-504f-42d0-92dd-71790ae4d6d1'),('7e671689-c837-446c-866b-3bbfe10af02a','09cdac04-e897-44ba-a7c6-fbf0dfb9365b'),('7e671689-c837-446c-866b-3bbfe10af02a','8978f64e-0efa-4651-8e3e-2c4412c45253'),('83f846cc-ee9e-4bdb-b039-2f21a0349181','25f1a938-d0b2-49b2-ba87-3217c2a3a140'),('83f846cc-ee9e-4bdb-b039-2f21a0349181','e57dc26e-bb81-4b1d-9410-e7b05b8f3d02'),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','1516da8d-2682-4281-8c1a-5ce6e9ccddb0'),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','77305773-f1b2-472d-8f17-af9ddd98347e'),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','aea3e898-56c5-47a8-aa43-be731259f796'),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','d86078fb-dd0b-4e66-bbb7-adc41283b74b'),('8522d94a-9180-4492-90e6-3f7af91c9fa5','5c427599-92a1-4eef-84cb-7903dde1962e'),('8522d94a-9180-4492-90e6-3f7af91c9fa5','c3fd568d-8abd-4c67-97ff-9fe18f6d9bab'),('85cd7787-57e2-4db6-82fd-8d30777e84ce','4018e577-0f65-44bd-8d6c-e65a2f4fda91'),('85cd7787-57e2-4db6-82fd-8d30777e84ce','bd88ceb7-348e-4b34-acf7-cd1bf3257a4b'),('85f05404-9f2f-45bc-883b-8a85f5777741','0152690c-3b86-40d6-a04b-152d42a5f1ec'),('85f05404-9f2f-45bc-883b-8a85f5777741','028fde76-30c3-42eb-920a-86a2b15aff48'),('85f05404-9f2f-45bc-883b-8a85f5777741','0376b098-e57e-4d78-a9dc-9bfd676db9ec'),('85f05404-9f2f-45bc-883b-8a85f5777741','05e7ca87-7ddf-4263-9661-ee32aded10b5'),('85f05404-9f2f-45bc-883b-8a85f5777741','060c8ca3-56a0-4a69-b5be-ef95fd1e74e7'),('85f05404-9f2f-45bc-883b-8a85f5777741','09403682-de6c-476a-ace8-a1eb93db1ee2'),('85f05404-9f2f-45bc-883b-8a85f5777741','0c172b52-255b-428f-8207-6a53caaf07ff'),('85f05404-9f2f-45bc-883b-8a85f5777741','0c601d28-5c0c-428c-ab7d-147bc4723403'),('85f05404-9f2f-45bc-883b-8a85f5777741','0d34ca7b-a29d-4329-b15d-95eed2a61915'),('85f05404-9f2f-45bc-883b-8a85f5777741','0d51e5d3-cbfb-4419-9e50-3b25bff26385'),('85f05404-9f2f-45bc-883b-8a85f5777741','103ecdf9-489c-4395-9ff7-ed21e85c90d1'),('85f05404-9f2f-45bc-883b-8a85f5777741','15f99b78-cbe1-4954-9b45-6dfe0fae541f'),('85f05404-9f2f-45bc-883b-8a85f5777741','1a2ab47b-b4ec-446f-8b0e-27a18c73d9c8'),('85f05404-9f2f-45bc-883b-8a85f5777741','1d64dbd2-e330-4d8f-bd84-97c2f1b0ee3e'),('85f05404-9f2f-45bc-883b-8a85f5777741','1dc3eda1-bb9e-46d5-9ec8-b7643d35e6df'),('85f05404-9f2f-45bc-883b-8a85f5777741','1df83284-5e28-4f74-9196-9c4515c9472f'),('85f05404-9f2f-45bc-883b-8a85f5777741','1fcc653d-bef1-4ffc-8cb0-11140f62e8f2'),('85f05404-9f2f-45bc-883b-8a85f5777741','25a5a657-670a-4eed-b113-5b292cff7dc9'),('85f05404-9f2f-45bc-883b-8a85f5777741','266aba44-736b-4595-82c8-c6f5f7406086'),('85f05404-9f2f-45bc-883b-8a85f5777741','29b5a832-3605-4d86-80bb-e76d0d27d957'),('85f05404-9f2f-45bc-883b-8a85f5777741','2d1c0d16-f234-4c7d-91bf-9cd737313dfa'),('85f05404-9f2f-45bc-883b-8a85f5777741','311eba68-975c-43f0-9894-102021cfb68e'),('85f05404-9f2f-45bc-883b-8a85f5777741','320972a4-4a6e-4064-a45d-c4a6e0e95d54'),('85f05404-9f2f-45bc-883b-8a85f5777741','36b98423-8209-4138-8adc-cf98c89bd76d'),('85f05404-9f2f-45bc-883b-8a85f5777741','4140bddb-0b43-4cfc-b60f-21dd706ece4c'),('85f05404-9f2f-45bc-883b-8a85f5777741','439eaa8a-e602-4051-9b8c-aa0bfd9444ec'),('85f05404-9f2f-45bc-883b-8a85f5777741','443f67a5-76c3-456c-bddc-2b48127f28d9'),('85f05404-9f2f-45bc-883b-8a85f5777741','452564ee-ffc1-4f07-b054-bf5c06746497'),('85f05404-9f2f-45bc-883b-8a85f5777741','4710ec9b-bee2-4182-ab44-a9ce80b20a87'),('85f05404-9f2f-45bc-883b-8a85f5777741','48458e23-ae79-4038-9386-6e57062f1bba'),('85f05404-9f2f-45bc-883b-8a85f5777741','49f73f7c-26d1-42ef-9693-c804fcdf106e'),('85f05404-9f2f-45bc-883b-8a85f5777741','49fdb689-9a0f-4767-88d3-6505619cbfd4'),('85f05404-9f2f-45bc-883b-8a85f5777741','4a091c15-c235-4191-87bb-4b9efa16dcf7'),('85f05404-9f2f-45bc-883b-8a85f5777741','4f75482a-931b-42f8-abc3-60641423bbc0'),('85f05404-9f2f-45bc-883b-8a85f5777741','521e3d3a-5035-4001-9f36-c283ebc53ca4'),('85f05404-9f2f-45bc-883b-8a85f5777741','52d1ae6d-5137-48db-a721-312b741fa458'),('85f05404-9f2f-45bc-883b-8a85f5777741','5895218e-16c2-491c-ae4f-3165d2b06979'),('85f05404-9f2f-45bc-883b-8a85f5777741','5a7699e7-fb4d-4b74-baa9-08e7f1cdbdfa'),('85f05404-9f2f-45bc-883b-8a85f5777741','5ac16ddb-94f6-490c-9f64-bacd98cfdb81'),('85f05404-9f2f-45bc-883b-8a85f5777741','5b95c1b9-34dc-472d-a1ff-a06e2a82c1e7'),('85f05404-9f2f-45bc-883b-8a85f5777741','5ed67079-1281-4820-97f8-9e900ac23f5c'),('85f05404-9f2f-45bc-883b-8a85f5777741','652fa641-1825-40af-9b6c-0ce59179af99'),('85f05404-9f2f-45bc-883b-8a85f5777741','66021760-9c4b-45bd-8d42-cd074b84a897'),('85f05404-9f2f-45bc-883b-8a85f5777741','660ef19b-3430-4b99-ae03-e4729bd17baa'),('85f05404-9f2f-45bc-883b-8a85f5777741','6632624e-6d1a-4684-922b-75bb69a868ac'),('85f05404-9f2f-45bc-883b-8a85f5777741','67d3d298-cb9c-4852-a216-d79bce4cc90a'),('85f05404-9f2f-45bc-883b-8a85f5777741','6b6c3f79-f052-433e-a42e-5c201a30577b'),('85f05404-9f2f-45bc-883b-8a85f5777741','6d57a8e5-2d34-42c5-ac29-48e96818c4a9'),('85f05404-9f2f-45bc-883b-8a85f5777741','6d8fc332-aebc-4628-abaa-3ca1f8850b53'),('85f05404-9f2f-45bc-883b-8a85f5777741','71875ea0-f2a4-4aaa-8de1-009cfbac4130'),('85f05404-9f2f-45bc-883b-8a85f5777741','78713f84-7fb1-4a55-92ad-3b65d446e8c8'),('85f05404-9f2f-45bc-883b-8a85f5777741','80922d77-981c-4f90-9cae-ab90e5d3ac3b'),('85f05404-9f2f-45bc-883b-8a85f5777741','819a34ee-bfb5-4d97-be0f-6655825cedce'),('85f05404-9f2f-45bc-883b-8a85f5777741','8211e03c-7154-4d4f-ae3f-7d24e49b5542'),('85f05404-9f2f-45bc-883b-8a85f5777741','889196f7-2019-4cb0-b52b-b42357491963'),('85f05404-9f2f-45bc-883b-8a85f5777741','8af5ef33-694e-472a-80c6-15d5619b29b2'),('85f05404-9f2f-45bc-883b-8a85f5777741','8c89e414-2013-4e2d-ae8b-7e26ec1a16f2'),('85f05404-9f2f-45bc-883b-8a85f5777741','8cb65309-7730-4398-a80c-dbcbc2180988'),('85f05404-9f2f-45bc-883b-8a85f5777741','8e0e08a4-82d4-459f-879e-94a38bdc888d'),('85f05404-9f2f-45bc-883b-8a85f5777741','8e65821c-751f-4815-aafd-5daa53e1ce77'),('85f05404-9f2f-45bc-883b-8a85f5777741','94b6ac16-077e-4328-a21c-578d504efc9c'),('85f05404-9f2f-45bc-883b-8a85f5777741','94c1d70e-f325-48bc-b8a7-bb54a969eca0'),('85f05404-9f2f-45bc-883b-8a85f5777741','9af90cc7-656d-4ffd-92e7-b9aca1cad38d'),('85f05404-9f2f-45bc-883b-8a85f5777741','9c6ef27e-4702-4772-bfb3-cbea76a65deb'),('85f05404-9f2f-45bc-883b-8a85f5777741','9d24068a-ce39-4fe0-b4ca-ed17d88dc61d'),('85f05404-9f2f-45bc-883b-8a85f5777741','9e2d8ee2-fe34-491d-9cd8-20fb9483f0d5'),('85f05404-9f2f-45bc-883b-8a85f5777741','a5d83681-c74b-4e3e-a466-563a830e11d8'),('85f05404-9f2f-45bc-883b-8a85f5777741','ab7b81e0-db30-40ca-a85b-33ef91f9d11b'),('85f05404-9f2f-45bc-883b-8a85f5777741','adabcac7-c8da-4237-bd53-1d3b159063a3'),('85f05404-9f2f-45bc-883b-8a85f5777741','b183214f-86e1-40ff-90ce-923cfaf63e75'),('85f05404-9f2f-45bc-883b-8a85f5777741','b7005dd5-bc94-4c1e-8b4a-6fff6aa24a5d'),('85f05404-9f2f-45bc-883b-8a85f5777741','b9fa5c60-ac99-47ba-85f3-80983e045398'),('85f05404-9f2f-45bc-883b-8a85f5777741','bf7998b6-8f67-46c0-913d-06ea3d5f6b74'),('85f05404-9f2f-45bc-883b-8a85f5777741','c09544b3-6e38-4e64-add0-8704ce8d288b'),('85f05404-9f2f-45bc-883b-8a85f5777741','c229cab6-c34c-41f5-a48d-5113ad162695'),('85f05404-9f2f-45bc-883b-8a85f5777741','c32d4ad3-21d1-4a01-9bb8-6d9e7b57f614'),('85f05404-9f2f-45bc-883b-8a85f5777741','c338fdbf-d563-434a-8d90-8ae00110ceea'),('85f05404-9f2f-45bc-883b-8a85f5777741','c688975d-eb9f-4d86-a8d8-5f723e9a0ab4'),('85f05404-9f2f-45bc-883b-8a85f5777741','c9decfc8-3e3a-450f-a743-bd857c60da35'),('85f05404-9f2f-45bc-883b-8a85f5777741','ca0c7057-e3d9-4ada-ab8e-87a5519a737c'),('85f05404-9f2f-45bc-883b-8a85f5777741','d02b89f8-bd8c-4129-b4f1-6d0ee9ffd099'),('85f05404-9f2f-45bc-883b-8a85f5777741','d11d00c4-609d-434a-8639-e02ba06a9394'),('85f05404-9f2f-45bc-883b-8a85f5777741','d40d95ba-0d1a-4c3d-87c2-e505b18f2a39'),('85f05404-9f2f-45bc-883b-8a85f5777741','d6f4ddf4-2560-4ba5-b71f-791ea6946e2a'),('85f05404-9f2f-45bc-883b-8a85f5777741','da108c6b-554c-4175-a9c1-8f44a3a57626'),('85f05404-9f2f-45bc-883b-8a85f5777741','dada9074-8e75-431d-ac4c-c774001be79c'),('85f05404-9f2f-45bc-883b-8a85f5777741','db26c5cf-e87b-4026-a518-65f96fbab5e0'),('85f05404-9f2f-45bc-883b-8a85f5777741','dd5f7e7b-9d99-480a-942f-65f08f432e88'),('85f05404-9f2f-45bc-883b-8a85f5777741','de3cbde9-68a1-40e0-9b72-9bb95bb75b3f'),('85f05404-9f2f-45bc-883b-8a85f5777741','df2776bc-22eb-429a-917f-2a012423eaec'),('85f05404-9f2f-45bc-883b-8a85f5777741','dfcc188e-1e64-4a06-b93d-67189816454e'),('85f05404-9f2f-45bc-883b-8a85f5777741','e209894e-b8ca-4cc6-a7b7-409371adcd2d'),('85f05404-9f2f-45bc-883b-8a85f5777741','e26e7d3f-cec0-46b1-bc47-46c5ab631d52'),('85f05404-9f2f-45bc-883b-8a85f5777741','e37c74e0-ea59-42ca-bd33-91e05f51e512'),('85f05404-9f2f-45bc-883b-8a85f5777741','e68525d4-3182-44b3-b3a6-db5b10fdb84e'),('85f05404-9f2f-45bc-883b-8a85f5777741','e7b6d3e2-a324-4732-9f75-5192ad84950b'),('85f05404-9f2f-45bc-883b-8a85f5777741','e87de7fe-bd38-4894-99a5-5361e7afda41'),('85f05404-9f2f-45bc-883b-8a85f5777741','e91415ad-8b04-4cab-acc7-9b16e0456bb8'),('85f05404-9f2f-45bc-883b-8a85f5777741','eb8b3d78-947a-4eba-8c16-e85d8db6ba9f'),('85f05404-9f2f-45bc-883b-8a85f5777741','eba82f0e-20a7-4ba6-9925-d87a1fc9f8c0'),('85f05404-9f2f-45bc-883b-8a85f5777741','f01748f5-a37e-460d-8fd8-8dedaacf22c2'),('85f05404-9f2f-45bc-883b-8a85f5777741','f0ec38c0-0d65-400a-bd0c-9c7fb0cc41c7'),('85f05404-9f2f-45bc-883b-8a85f5777741','f2510213-e08f-4692-8c91-5cee504272e1'),('85f05404-9f2f-45bc-883b-8a85f5777741','f354e42e-ec14-4cf5-b83c-9053aeff387d'),('85f05404-9f2f-45bc-883b-8a85f5777741','f44af8ee-2622-4c17-8257-fdf60901254e'),('85f05404-9f2f-45bc-883b-8a85f5777741','f807874b-9a70-44ac-aecc-f84512b5515d'),('85f05404-9f2f-45bc-883b-8a85f5777741','fd041e9e-8323-45d0-b9a8-5fc51434840f'),('85f05404-9f2f-45bc-883b-8a85f5777741','fd19f8b8-91ab-42df-ac5a-609d34572a74'),('85f05404-9f2f-45bc-883b-8a85f5777741','fe79fa6c-d981-4fe7-89a5-63c9a251a004'),('85fd2275-6ab9-43a8-9ddd-0a36476c835d','c36b2385-bda0-49ee-afba-324e936529f7'),('880764e4-5d3d-439f-8c2c-de5909c1db98','76c9fd69-3aee-4d16-a8e5-56019777424c'),('880764e4-5d3d-439f-8c2c-de5909c1db98','86e0959b-cf29-454c-a59e-811f2f251240'),('8850600c-0101-4e10-95eb-1b691988da5c','0574889e-b70b-4af4-a716-881bb8ac4de6'),('8850600c-0101-4e10-95eb-1b691988da5c','0ee003f5-5a31-4974-81be-0e0a902c601f'),('8850600c-0101-4e10-95eb-1b691988da5c','125176f6-1de1-4751-8de6-d5d65aee985a'),('8850600c-0101-4e10-95eb-1b691988da5c','13d3e00b-f015-4422-b8b1-ba8c77463d9d'),('8850600c-0101-4e10-95eb-1b691988da5c','1757b6ea-a506-4f4e-9bc8-f067cce0017b'),('8850600c-0101-4e10-95eb-1b691988da5c','1ceb6637-bda4-4adb-a560-1135b589bf67'),('8850600c-0101-4e10-95eb-1b691988da5c','226542c4-548f-4976-b8dd-d9170b78e74d'),('8850600c-0101-4e10-95eb-1b691988da5c','295b93f9-3e35-4f05-91c3-60866c0056d1'),('8850600c-0101-4e10-95eb-1b691988da5c','3912ee3e-de9b-4b8c-b53f-13c9020e8199'),('8850600c-0101-4e10-95eb-1b691988da5c','3f2beaab-1604-464e-aa5e-6317dbe58616'),('8850600c-0101-4e10-95eb-1b691988da5c','6a8d4712-2afe-4bb3-9180-ee0290f16d8f'),('8850600c-0101-4e10-95eb-1b691988da5c','8a7844d9-a624-4325-8a39-7453f443e2aa'),('8850600c-0101-4e10-95eb-1b691988da5c','9ee094af-b461-4ff2-8ccf-8a8a09de7284'),('8850600c-0101-4e10-95eb-1b691988da5c','b1315c2f-09ad-420a-8643-180d39b9fa2f'),('8850600c-0101-4e10-95eb-1b691988da5c','b6572eb0-a96a-4f03-af0d-651cacb2fef7'),('8850600c-0101-4e10-95eb-1b691988da5c','d69d76ca-7ff7-4723-9446-1c4fa9a3f598'),('8850600c-0101-4e10-95eb-1b691988da5c','dbba1a3a-858e-440d-88b1-8c0253ee0022'),('8850600c-0101-4e10-95eb-1b691988da5c','efdbf526-78fe-463b-b771-29fec5f605c6'),('8c4a0da8-dfa9-41ee-9727-e5fcf75689f3','827ace37-9868-4299-bce1-8844f860477e'),('8c4a0da8-dfa9-41ee-9727-e5fcf75689f3','8bd655f5-519a-4770-bede-f492ae105c94'),('8d951762-e1f6-4359-a571-3691f305ec9b','80c7fbdb-44c7-43f7-965d-ca83acaf5376'),('8d951762-e1f6-4359-a571-3691f305ec9b','defc61c8-8f6e-4d9c-bb7a-eb0b92139c2d'),('8e65821c-751f-4815-aafd-5daa53e1ce77','80922d77-981c-4f90-9cae-ab90e5d3ac3b'),('8e65821c-751f-4815-aafd-5daa53e1ce77','94c1d70e-f325-48bc-b8a7-bb54a969eca0'),('90768c1e-d12e-41aa-b6bb-ffeb4d8fcc99','1cc839b9-3de0-403b-a2a3-37aa4f395166'),('90768c1e-d12e-41aa-b6bb-ffeb4d8fcc99','57fbaac8-86cd-436b-8590-01c7b1ddcb01'),('94b6ac16-077e-4328-a21c-578d504efc9c','5b95c1b9-34dc-472d-a1ff-a06e2a82c1e7'),('94b6ac16-077e-4328-a21c-578d504efc9c','6632624e-6d1a-4684-922b-75bb69a868ac'),('9513f688-13f9-4816-8790-4bc580754c47','093967f6-777e-4222-acf4-957aafa1f72c'),('9513f688-13f9-4816-8790-4bc580754c47','26282ce8-b3aa-4a20-b8ac-5378dc7a5ca9'),('9513f688-13f9-4816-8790-4bc580754c47','29373f22-9462-49c9-9465-5c0b02406552'),('9513f688-13f9-4816-8790-4bc580754c47','376b154b-8efc-49a5-b003-4bb83f58c3e9'),('9513f688-13f9-4816-8790-4bc580754c47','3aa55d4d-a356-4b5b-ba3c-d92428e6d806'),('9513f688-13f9-4816-8790-4bc580754c47','46c25ea4-2e3c-4f87-acf2-a26b8aba721f'),('9513f688-13f9-4816-8790-4bc580754c47','49991293-f564-4f1f-96d5-0daf1a38544e'),('9513f688-13f9-4816-8790-4bc580754c47','4d8d82db-c4cf-45a5-9682-15b828e637d0'),('9513f688-13f9-4816-8790-4bc580754c47','5734af6e-223f-4182-9e09-ddea53d29307'),('9513f688-13f9-4816-8790-4bc580754c47','6eb51911-6c8d-442e-ab83-fb00bbdfa4f9'),('9513f688-13f9-4816-8790-4bc580754c47','7466830d-1f6f-47e9-8456-4c34568a1d2d'),('9513f688-13f9-4816-8790-4bc580754c47','76c9fd69-3aee-4d16-a8e5-56019777424c'),('9513f688-13f9-4816-8790-4bc580754c47','816fc2a4-3885-4cef-8db2-9e26735ef032'),('9513f688-13f9-4816-8790-4bc580754c47','86e0959b-cf29-454c-a59e-811f2f251240'),('9513f688-13f9-4816-8790-4bc580754c47','880764e4-5d3d-439f-8c2c-de5909c1db98'),('9513f688-13f9-4816-8790-4bc580754c47','8f6bb82b-258c-4d96-b31f-aa12e12174f8'),('9513f688-13f9-4816-8790-4bc580754c47','bbed3917-26d7-4874-8206-6b92a96cdcf7'),('9513f688-13f9-4816-8790-4bc580754c47','bcfe076f-e344-4af1-abf9-d22232531d74'),('9d24068a-ce39-4fe0-b4ca-ed17d88dc61d','05e7ca87-7ddf-4263-9661-ee32aded10b5'),('9d24068a-ce39-4fe0-b4ca-ed17d88dc61d','889196f7-2019-4cb0-b52b-b42357491963'),('a2d45372-98b7-4526-a9f6-404bf3421783','0f9644f2-6737-4106-b7a5-0c1e9bb5de64'),('a2d45372-98b7-4526-a9f6-404bf3421783','22cdf5ce-93a6-442f-9dad-d17b74fa90da'),('a2d45372-98b7-4526-a9f6-404bf3421783','4bd8b58a-9aa3-47e0-afb1-080d8e80f54c'),('a2d45372-98b7-4526-a9f6-404bf3421783','6e26790b-b0a2-4606-81e0-6d426023627c'),('a2d45372-98b7-4526-a9f6-404bf3421783','73527fbd-3a8b-4c98-9721-c593cc4f3f64'),('a2d45372-98b7-4526-a9f6-404bf3421783','a62b794d-1d46-4f7b-89b9-a8db7cad25d8'),('a2d45372-98b7-4526-a9f6-404bf3421783','ac5ae6d3-738d-4207-9c25-faf9033916d1'),('a2d45372-98b7-4526-a9f6-404bf3421783','aeec29db-c753-436f-a41c-bb57e96d3a44'),('a2d45372-98b7-4526-a9f6-404bf3421783','cc9dc9b5-3045-4619-b164-63b0161e86cc'),('a2d45372-98b7-4526-a9f6-404bf3421783','cf2ab662-9123-49bb-9876-567455c2fd8b'),('a2d45372-98b7-4526-a9f6-404bf3421783','d71e1f86-0cbe-4d80-99fb-66850f3b89ab'),('a2d45372-98b7-4526-a9f6-404bf3421783','f67c67c4-e200-4af1-9cc1-f2768d42bde4'),('a6963d22-eea2-4b3a-8754-7194e36b19d9','e86c3925-a0fd-4bb9-aec7-06afac325f97'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','13e3533e-37ce-4d46-9339-0910be1b276f'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','183a8d28-12e2-4943-bbfa-cd841664c774'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','29373f22-9462-49c9-9465-5c0b02406552'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','49991293-f564-4f1f-96d5-0daf1a38544e'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','5f9ed256-f2d0-43ff-9721-df4119d7db2c'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','895d7f0d-2777-453a-96d4-8906d486e346'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','8f6bb82b-258c-4d96-b31f-aa12e12174f8'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','916bd9f8-0514-47d8-ba7d-b683d68307f4'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','c4703494-50c6-49d3-94ae-5a2077bb9d92'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','dba9977a-cbbc-41fe-a361-aa3dbe8a3555'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','e751f5ca-78f3-42bd-85a8-14fa8000493e'),('ad0cd736-3afd-4525-b701-a211b055de52','7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a'),('ad0cd736-3afd-4525-b701-a211b055de52','916bd9f8-0514-47d8-ba7d-b683d68307f4'),('adabcac7-c8da-4237-bd53-1d3b159063a3','819a34ee-bfb5-4d97-be0f-6655825cedce'),('adabcac7-c8da-4237-bd53-1d3b159063a3','8e0e08a4-82d4-459f-879e-94a38bdc888d'),('af8a468b-d3dc-4958-b931-9da5c6c66f5c','22cdf5ce-93a6-442f-9dad-d17b74fa90da'),('af8a468b-d3dc-4958-b931-9da5c6c66f5c','a62b794d-1d46-4f7b-89b9-a8db7cad25d8'),('b15deda8-eed7-4036-958f-d35d996d7546','1cc839b9-3de0-403b-a2a3-37aa4f395166'),('b15deda8-eed7-4036-958f-d35d996d7546','57fbaac8-86cd-436b-8590-01c7b1ddcb01'),('b15deda8-eed7-4036-958f-d35d996d7546','77af2acf-b3b8-4bd7-8dc9-9acacfd8460f'),('b3253222-ed99-4302-85c4-87f21af532f6','9dfdbb9d-d312-47aa-a96a-6dcd7642ef94'),('b9cc4967-de29-4bac-bcb1-8527bb43e8b9','c4a99dfd-1bb3-4a47-8d9a-9f270029d81c'),('bda514bc-59a2-411e-9633-2e4051b9bb47','d3c83741-4d7c-4f8d-a967-e145f43a1f37'),('bda514bc-59a2-411e-9633-2e4051b9bb47','df067833-d5e4-45a5-88f3-33febd0e2c0e'),('c1867c6f-41ed-4ece-a3c6-cdbffa0c632f','23d73a81-5ca5-46dc-a0a4-0acb9df37e66'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','044fd49d-e163-433b-b81d-f759b31001f8'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','25274b22-3fb5-49f2-86a4-556e7d718909'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','4236c6c5-29fe-4ab5-9c37-20bd7c27b310'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','610e9685-6260-4abf-a77c-cb755394f778'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','856e6390-b8ad-4c9f-91c9-8f7c443ec661'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','8c5d984b-ac7d-4a39-8905-91cc1c90a4f1'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','9ed0f305-5bb8-4a8c-b154-8948cc7cbc4f'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','a2030383-ea62-4a6e-bf5b-be44ce73b92f'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','aa84fd95-5548-4953-bf24-82dd5735d53d'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','bf99d789-2432-4a2c-a052-12fe3893d9a7'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','dfee9baf-1e1f-4ef0-b990-7fb7f4ae6933'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','f0b660af-f948-4318-8713-0f7487844204'),('c3e9db12-e003-43da-84a5-1335e75399a1','0f547ced-b71b-4e80-b973-4cf278ee68af'),('c3e9db12-e003-43da-84a5-1335e75399a1','e3456ec2-ab20-4c44-81a5-464adb083a29'),('ca5bc656-66cb-4b71-89ec-6be847f10c3c','8e14ad73-adea-428c-a49c-ad2e9166f342'),('ca5bc656-66cb-4b71-89ec-6be847f10c3c','d938b822-e9fb-4152-88e8-5c096bfdf2bc'),('cf353d7c-ead2-4897-97a6-bd13321406b9','610e9685-6260-4abf-a77c-cb755394f778'),('cf353d7c-ead2-4897-97a6-bd13321406b9','856e6390-b8ad-4c9f-91c9-8f7c443ec661'),('cf353d7c-ead2-4897-97a6-bd13321406b9','bf99d789-2432-4a2c-a052-12fe3893d9a7'),('d8fed178-71ad-44b0-98b3-0f8fdd736765','d794ac30-ab76-419d-bee5-9a8d93e7586d'),('da407b7c-69bc-4c80-beb9-153c3df75535','1cc839b9-3de0-403b-a2a3-37aa4f395166'),('da407b7c-69bc-4c80-beb9-153c3df75535','372d9b70-6912-4347-8761-ed4ec9dc5ec6'),('da407b7c-69bc-4c80-beb9-153c3df75535','57fbaac8-86cd-436b-8590-01c7b1ddcb01'),('da407b7c-69bc-4c80-beb9-153c3df75535','5f16cb19-4607-4e35-878c-9ad96b2e819c'),('da407b7c-69bc-4c80-beb9-153c3df75535','69ca3868-e401-4cf4-bc2a-822500f61fa0'),('da407b7c-69bc-4c80-beb9-153c3df75535','765fb986-1acf-473f-b70d-18aa5857ed5e'),('da407b7c-69bc-4c80-beb9-153c3df75535','77af2acf-b3b8-4bd7-8dc9-9acacfd8460f'),('da407b7c-69bc-4c80-beb9-153c3df75535','789d6bc9-c2cb-464c-8d3f-f8044c15becc'),('da407b7c-69bc-4c80-beb9-153c3df75535','8a103ba5-0f32-412e-9df7-935be76c269a'),('da407b7c-69bc-4c80-beb9-153c3df75535','cab739bd-37da-4ebb-98b7-6ad36963910a'),('da407b7c-69bc-4c80-beb9-153c3df75535','dcaa786e-65bb-493b-82b7-ca9a8a98c06e'),('da407b7c-69bc-4c80-beb9-153c3df75535','e6654ab6-c8ec-4b40-9bf6-8c5f8a9d4caf'),('dd5f7e7b-9d99-480a-942f-65f08f432e88','c09544b3-6e38-4e64-add0-8704ce8d288b'),('e29bd2f2-a9d2-4be7-88a0-33f727d73467','35e5784e-8fc8-468a-9479-d48cf23d75ae'),('e4ed37ec-1e1a-43f5-937c-eddd7d9628b7','280cf8d4-9945-4435-a04b-35baa75ab475'),('e4ed37ec-1e1a-43f5-937c-eddd7d9628b7','fce977e5-f65f-4bf3-93cf-8ad51dfe670a'),('e654696c-9f03-4220-9d27-7e1beea797d9','56fc80e7-7b88-440d-a993-155b9737f167'),('e654696c-9f03-4220-9d27-7e1beea797d9','6419b34c-6fee-480f-bb83-81527212fcbc'),('e654696c-9f03-4220-9d27-7e1beea797d9','ab519ed2-9b0f-48a3-8278-e7f816750c20'),('e654696c-9f03-4220-9d27-7e1beea797d9','b3253222-ed99-4302-85c4-87f21af532f6'),('ea868994-21da-4a82-9c92-1a0eb50f39cc','4d50abe0-0997-4d89-840f-1576112d0670'),('ea868994-21da-4a82-9c92-1a0eb50f39cc','9b86d928-c562-4980-914c-0e6d730aa448'),('ee97e63b-3349-4a6b-ac77-80581c71f31b','2203c784-b0de-4cf8-bb6a-3363af8d0893'),('ee97e63b-3349-4a6b-ac77-80581c71f31b','8047ef8b-5105-4b3a-8884-fc10607283f6'),('ef5eb597-cfe3-4c22-b912-7d92dc94f2b1','990c547c-4f7d-4083-828f-90a8a8821ce2'),('efdbf526-78fe-463b-b771-29fec5f605c6','6a8d4712-2afe-4bb3-9180-ee0290f16d8f'),('f0741211-ebf5-4c93-9864-ec3eed18a810','610e9685-6260-4abf-a77c-cb755394f778'),('f0741211-ebf5-4c93-9864-ec3eed18a810','856e6390-b8ad-4c9f-91c9-8f7c443ec661'),('f0ec38c0-0d65-400a-bd0c-9c7fb0cc41c7','4a091c15-c235-4191-87bb-4b9efa16dcf7'),('f341d9f0-53cf-4cdd-a571-560193e475ab','3592c44a-3e55-40e6-8153-7f0394c0cab6'),('f341d9f0-53cf-4cdd-a571-560193e475ab','5a05883a-93c3-453e-81d2-8a9a17c90948'),('f341d9f0-53cf-4cdd-a571-560193e475ab','a549da24-e8ac-4124-ae9a-69daf2dbd8f9'),('f807874b-9a70-44ac-aecc-f84512b5515d','f354e42e-ec14-4cf5-b83c-9053aeff387d'),('fcff19d5-1b73-43f4-af56-6a60c16edd6f','33a807ce-b0e2-42fd-b231-ed33e30ffc3d'),('fcff19d5-1b73-43f4-af56-6a60c16edd6f','5694d100-804e-4fdf-85d2-04d3efa04d7e'),('fda30a7a-71d8-468b-8abf-e73c5e5e5458','698d6d13-4e5c-48ef-8ad5-dffc50d30d00'),('fda30a7a-71d8-468b-8abf-e73c5e5e5458','7a0d541d-53bc-4eaf-901e-3c442c5f25c7');
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
INSERT INTO `CREDENTIAL` VALUES ('221c7a2c-fb9c-415c-96e8-ec9551eb537e',NULL,'password','e4b2c29c-756d-4125-bf6f-3843746d3d08',1720055350149,NULL,'{\"value\":\"1Got7PoCkO0y/Ssi/g4ERc7lA29AoISEv7rcu0n4ZcCXstI2bqf/NIsmhNerb9kH0e/DM8wz7xpBUzk+kfZKEw==\",\"salt\":\"+35E0Bh+LOwzDqVvC9vIwQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('474959bb-42b5-4005-becb-48371f4f9fb9',NULL,'password','e18d56f4-d90e-4c00-a402-98bb4ce3a55b',1720055264238,NULL,'{\"value\":\"RbZ3p2HWEaA2BQUOVUo45SFsGcnXH02GSVTUTPvStaxhPSFtxmuWUrlLF8wEDTxVsMZcEoNoz2dhQBXNn/K+1g==\",\"salt\":\"FnUxhowxmXSujch8EJPB5Q==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('5d497e73-1252-4ac8-98b6-ba43e0840fea',NULL,'password','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5',1720055292827,NULL,'{\"value\":\"NQMa2LdlNAQgTESc4k8kjX5Y2eikPNQIlvRAJFXGgMQHjRUzzqawV7yGXTa5TFdVe5pIzDX5LMnEYAeZXJsPTA==\",\"salt\":\"+A+KJL/c/9+KIIu8Hs4Svw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('60fa4c64-f947-4c3f-9bd9-19a9c8618dde',NULL,'password','79261952-4862-4a4d-8da1-1ce8ca3b1481',1720055230549,NULL,'{\"value\":\"s9U9ul41GPcGiyZRKQwlkrgve9+ZEtmR3wa+lla9A9qyOZ7mNlV9IlI7z9eS9HpXRR4RMvBTMSTjwjr4QBQy3g==\",\"salt\":\"Fkls0R4Gjf4JTj9cy+NNug==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('a168def1-a841-4403-b713-0b4df6607c93',NULL,'password','7de05e66-8cfd-4eca-b5bc-b44646fdcfb0',1720055125734,NULL,'{\"value\":\"tS+CpFvb2rQ8/r8XTIZhferB2NbD5vQXwjbhdeV3rIMCSThLuvIltXZF0G2VggQ1fO4xdlYCn0oNLfB+fr6UJg==\",\"salt\":\"vEAKX1ZZcFXGnPvJ7YvEoA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('e560caf3-ad67-4518-b964-c2adcc2f0bf3',NULL,'password','883922dc-0db0-4924-b24e-288971d44e3e',1720055320418,NULL,'{\"value\":\"+ZNOhz7HEkMQhmpb4cAf1CxsLy53Dkg9Ee83q6n8yf04cZjDUyuQxpw89O4CY6DZ35C9ImXrS7pNu4VJf8QXkw==\",\"salt\":\"jlFd3U95wnBImeKG32ToOA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-07-04 10:05:02',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-07-04 10:05:02',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-07-04 10:05:02',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-07-04 10:05:02',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-07-04 10:05:03',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-07-04 10:05:03',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-07-04 10:05:04',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-07-04 10:05:04',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-07-04 10:05:04',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-07-04 10:05:05',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-07-04 10:05:06',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-07-04 10:05:06',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-07-04 10:05:06',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-04 10:05:06',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-04 10:05:06',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-04 10:05:06',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-04 10:05:06',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-07-04 10:05:06',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-07-04 10:05:07',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-07-04 10:05:07',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-07-04 10:05:07',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-07-04 10:05:07',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-07-04 10:05:08',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-07-04 10:05:08',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-07-04 10:05:08',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-07-04 10:05:08',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-07-04 10:05:09',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-07-04 10:05:09',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-07-04 10:05:09',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-07-04 10:05:10',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-07-04 10:05:10',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-07-04 10:05:10',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-04 10:05:10',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-04 10:05:10',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-04 10:05:10',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-07-04 10:05:10',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-04 10:05:10',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'0055098343'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-07-04 10:05:10',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-07-04 10:05:10',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-04 10:05:10',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-04 10:05:10',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-07-04 10:05:10',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-04 10:05:11',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-07-04 10:05:11',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-04 10:05:11',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-04 10:05:11',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-04 10:05:11',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-04 10:05:12',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-04 10:05:12',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-07-04 10:05:13',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-07-04 10:05:13',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-07-04 10:05:13',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-07-04 10:05:13',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-07-04 10:05:13',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-04 10:05:13',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-04 10:05:13',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-04 10:05:13',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-04 10:05:15',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-07-04 10:05:15',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-07-04 10:05:15',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-07-04 10:05:15',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-07-04 10:05:16',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-07-04 10:05:16',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-07-04 10:05:16',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-07-04 10:05:16',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-07-04 10:05:16',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-07-04 10:05:16',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-07-04 10:05:16',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-07-04 10:05:16',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-07-04 10:05:16',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'0055098343'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-07-04 10:05:16',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'0055098343'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-04 10:05:16',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'0055098343'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-04 10:05:16',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'0055098343'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-04 10:05:16',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'0055098343'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-04 10:05:16',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-04 10:05:16',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-04 10:05:16',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-04 10:05:16',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-04 10:05:16',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-04 10:05:16',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-04 10:05:16',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-04 10:05:16',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-04 10:05:16',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-04 10:05:16',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'0055098343'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-04 10:05:16',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-07-04 10:05:16',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'0055098343'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-07-04 10:05:16',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-07-04 10:05:17',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'0055098343'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'0055098343'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'0055098343'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-04 10:05:17',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'0055098343'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-04 10:05:17',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-07-04 10:05:17',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-07-04 10:05:17',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-07-04 10:05:17',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-07-04 10:05:17',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-04 10:05:17',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-04 10:05:17',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'0055098343'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-04 10:05:17',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-07-04 10:05:17',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-07-04 10:05:17',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'0055098343'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-07-04 10:05:17',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-07-04 10:05:17',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-07-04 10:05:17',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-07-04 10:05:17',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'0055098343'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-07-04 10:05:17',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-04 10:05:17',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-04 10:05:17',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-04 10:05:18',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-04 10:05:18',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-04 10:05:18',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-04 10:05:18',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-04 10:05:18',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'0055098343');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('34551b50-154e-45d3-a330-d06cf0168fb9','48a9167c-c90e-41a0-8777-4eeb10ae2a2c',1),('34551b50-154e-45d3-a330-d06cf0168fb9','62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5',1),('34551b50-154e-45d3-a330-d06cf0168fb9','83394525-a8bf-4b2f-8ffc-a35a2f6eeee6',0),('34551b50-154e-45d3-a330-d06cf0168fb9','948c3767-493f-447e-9e2e-04c6c43c898e',1),('34551b50-154e-45d3-a330-d06cf0168fb9','aebfcd6c-bdf1-4478-8746-34ebee0fe7be',0),('34551b50-154e-45d3-a330-d06cf0168fb9','c30b0ca8-0f83-456a-a4da-3a28517a96ac',1),('34551b50-154e-45d3-a330-d06cf0168fb9','e5a517b6-e988-4cc4-ac64-2011b13f6a79',1),('34551b50-154e-45d3-a330-d06cf0168fb9','ef27cdf0-b272-4a95-875d-57feaaac0cba',0),('34551b50-154e-45d3-a330-d06cf0168fb9','efade8d7-f56b-40d7-87a6-5a9cca3baed0',1),('34551b50-154e-45d3-a330-d06cf0168fb9','fe405ddb-dde6-49ba-94e9-ddb09f5e612d',0),('org1','084eb5c9-9b38-475e-b44d-2f9e9d19baca',1),('org1','14e91b1b-afd0-4fec-95da-ec5ca67e2c2e',1),('org1','38e80701-348c-4a01-bc78-ec8b2ca23457',0),('org1','503018eb-526e-46f9-9c03-44a40f5e3c35',1),('org1','52656537-4b7e-4b5a-a422-bbb7ff4a1ca8',1),('org1','8e7d3ae1-1b68-4a70-950e-0927c04db50c',0),('org1','a99b0263-e5dd-4556-bf8b-b3113a8d516b',0),('org1','cf50e063-61d5-4c05-9172-20acd423ff7e',1),('org1','d3544999-50a3-46b2-8dee-9a04b2045e79',0),('org1','f1e33a9b-110a-4e09-981d-c7c647d4bc10',1),('org2','0229bb30-5047-453a-8c72-5f80de7cda5b',0),('org2','16284508-1841-419d-8345-9793b63afbdc',0),('org2','3b300991-fd10-40c1-9d96-33402715e467',1),('org2','3d225d1b-48f1-4d0e-b047-3743b2bcc1cf',1),('org2','4a2d48bb-6f3c-4d80-b611-ead5caa4811b',1),('org2','6a8a2408-0eba-4034-b1ff-3e506471432e',1),('org2','77134219-b889-4735-ae4c-c74ad6d0a659',1),('org2','860c535a-7def-4498-a63a-e0b88eacc48b',1),('org2','904274c0-627c-4374-92a4-d166a00cfc31',0),('org2','f6eaf410-3ac6-4be8-a3af-0553a6ecbfc0',0),('org3','191319ef-7076-4f6e-83aa-4ae7666b0c60',1),('org3','1fab0c38-384d-4153-8ced-0d3bfe6203c1',1),('org3','213ccfbd-170f-484c-a811-40f853c0c93f',0),('org3','2907c890-1744-4034-a206-a63f8c066f4b',0),('org3','47ced235-4c6a-4545-a6af-f89788835c16',1),('org3','5c2d3658-3271-4e11-83df-475b4ae7dd02',0),('org3','5d39b903-a532-4087-ae4d-b98d5c4ea300',0),('org3','c641b253-e4c8-4b3e-a8a2-c3b398643520',1),('org3','da261f6e-d8b2-4771-827c-e61680bf5ea5',1),('org3','e63a6b11-fabc-4926-b428-3274b077c6fd',1),('org4','080b090a-e83e-495b-8f4c-623af9e790cf',1),('org4','3a703d8c-b695-4ffa-80b6-59c25b2e42b2',1),('org4','5f2402bf-e69d-4cda-a30b-526260371ffc',0),('org4','6fafe85a-264e-459c-bd2c-06c40c125269',0),('org4','702b9481-ba44-4b3e-b501-49ca2a6ba554',1),('org4','8daf557e-1806-4c96-b455-68b064dfc501',1),('org4','a4f06c97-77c2-4a8f-bf56-13d7edc56931',0),('org4','e9ae4da4-d4c1-49c1-a22f-4f44602a4d06',1),('org4','ee9e9b60-1ab1-4c23-98a0-60930144fb23',1),('org4','f8548ba1-567c-44be-88a3-5d7c5e0a0dfb',0),('org5','18893819-c9ba-4768-86ab-d39bb2b68faa',0),('org5','2eaf68d2-51f3-40f5-9016-89751c8461b7',0),('org5','4955e71e-fcbd-44c2-97e3-4666ec30d512',1),('org5','49dc8e9b-3200-4a70-8d83-048d768c0fb4',0),('org5','4b35a5ec-f1a9-40a8-8349-76af269b4059',1),('org5','868c4866-f7ca-421b-9b53-db0309911ebd',1),('org5','a6561aba-bdf2-4519-a506-e5847c1fb68c',1),('org5','bfe04e22-8610-4423-89e2-7404bd411b89',1),('org5','dfb4aff2-3857-4efb-b44e-07dfd2bd2604',0),('org5','eee8daea-921a-4e3f-b6bb-d88e582a7db4',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0152690c-3b86-40d6-a04b-152d42a5f1ec','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_view-authorization}','view-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('028fde76-30c3-42eb-920a-86a2b15aff48','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_view-events}','view-events','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('02eed8a5-b622-488e-8fb5-0c35e48fc191','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_ws3-admin','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('0376b098-e57e-4d78-a9dc-9bfd676db9ec','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_view-clients}','view-clients','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('044fd49d-e163-433b-b81d-f759b31001f8','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_view-realm}','view-realm','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('04c8e811-3382-4789-8ce5-3d76023a5180','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_view-profile}','view-profile','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('0574889e-b70b-4af4-a716-881bb8ac4de6','d288df77-676b-418a-815d-15169d1631bf',1,'${role_query-users}','query-users','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('05e7ca87-7ddf-4263-9661-ee32aded10b5','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_query-users}','query-users','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('060c8ca3-56a0-4a69-b5be-ef95fd1e74e7','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_query-realms}','query-realms','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('093967f6-777e-4222-acf4-957aafa1f72c','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_manage-authorization}','manage-authorization','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('09403682-de6c-476a-ace8-a1eb93db1ee2','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_manage-events}','manage-events','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('09cdac04-e897-44ba-a7c6-fbf0dfb9365b','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'ws1','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('0c172b52-255b-428f-8207-6a53caaf07ff','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_query-realms}','query-realms','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('0c601d28-5c0c-428c-ab7d-147bc4723403','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_manage-realm}','manage-realm','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('0d34ca7b-a29d-4329-b15d-95eed2a61915','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_manage-events}','manage-events','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('0d43b199-3fdf-4911-8be3-34ddaaf1f202','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_manage-users}','manage-users','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('0d51e5d3-cbfb-4419-9e50-3b25bff26385','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_manage-identity-providers}','manage-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('0df33e55-5f8a-4d14-a46b-3480469a0ea8','org2',0,'${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('0e2bdfb7-179d-42c3-b9fb-2c9d0e103547','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_manage-consent}','manage-consent','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('0e4604fe-eae5-4498-8b75-f49010dd9eee','42caf3ad-d189-4018-b393-b4b58db92dc7',1,'${role_read-token}','read-token','org2','42caf3ad-d189-4018-b393-b4b58db92dc7',NULL),('0e9cdc04-4408-4ae3-82e0-264a4c13e41b','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_view-groups}','view-groups','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('0eaf0281-2f55-4505-85f0-04fb7724b781','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_view-applications}','view-applications','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('0ee003f5-5a31-4974-81be-0e0a902c601f','d288df77-676b-418a-815d-15169d1631bf',1,'${role_query-realms}','query-realms','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('0f547ced-b71b-4e80-b973-4cf278ee68af','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'ws2','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('0f9644f2-6737-4106-b7a5-0c1e9bb5de64','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-audit-log','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('103ecdf9-489c-4395-9ff7-ed21e85c90d1','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_manage-authorization}','manage-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('10c862d6-8f0e-4582-92f5-f153cdb93720','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_manage-account}','manage-account','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('113b972f-1dca-4fff-a12c-59fbbbb72a9d','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_view-profile}','view-profile','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('125176f6-1de1-4751-8de6-d5d65aee985a','d288df77-676b-418a-815d-15169d1631bf',1,'${role_manage-realm}','manage-realm','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('12555238-1395-469c-8b7a-4d5a71bba4f8','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_manage-authorization}','manage-authorization','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('13d3e00b-f015-4422-b8b1-ba8c77463d9d','d288df77-676b-418a-815d-15169d1631bf',1,'${role_view-events}','view-events','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('13e3533e-37ce-4d46-9339-0910be1b276f','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-usage','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('1516da8d-2682-4281-8c1a-5ce6e9ccddb0','org5',0,'${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('15f99b78-cbe1-4954-9b45-6dfe0fae541f','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_view-events}','view-events','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('1757b6ea-a506-4f4e-9bc8-f067cce0017b','d288df77-676b-418a-815d-15169d1631bf',1,'${role_impersonation}','impersonation','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('183a8d28-12e2-4943-bbfa-cd841664c774','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-ws-role-mt','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('1881f2ef-cef6-458e-9940-b08341f1abad','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'ws3','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('1a2ab47b-b4ec-446f-8b0e-27a18c73d9c8','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_manage-authorization}','manage-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('1a971965-bc23-4e23-bea1-072ade40b59a','089f9a37-5c83-45f3-b460-1bc4e026824e',1,'${role_read-token}','read-token','org5','089f9a37-5c83-45f3-b460-1bc4e026824e',NULL),('1cabf564-bec4-4728-910a-18c3fef062e3','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_manage-consent}','manage-consent','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('1cc839b9-3de0-403b-a2a3-37aa4f395166','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-usr-mt','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('1ceb6637-bda4-4adb-a560-1135b589bf67','d288df77-676b-418a-815d-15169d1631bf',1,'${role_view-authorization}','view-authorization','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('1d64dbd2-e330-4d8f-bd84-97c2f1b0ee3e','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_query-groups}','query-groups','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('1dc3eda1-bb9e-46d5-9ec8-b7643d35e6df','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_manage-users}','manage-users','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('1df83284-5e28-4f74-9196-9c4515c9472f','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_query-users}','query-users','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('1fcc653d-bef1-4ffc-8cb0-11140f62e8f2','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_manage-users}','manage-users','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('21863812-0fb7-4563-8826-b7f1afbdc4d6','org1',0,'${role_default-roles}','default-roles-org1','org1',NULL,NULL),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_realm-admin}','realm-admin','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('2203c784-b0de-4cf8-bb6a-3363af8d0893','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'ws2','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('226542c4-548f-4976-b8dd-d9170b78e74d','d288df77-676b-418a-815d-15169d1631bf',1,'${role_view-users}','view-users','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('22879c93-561f-4935-8778-e581ec286621','04458ae7-60f6-44cd-a035-5a396eb993d5',1,NULL,'_organization-manager','org1','04458ae7-60f6-44cd-a035-5a396eb993d5',NULL),('22cdf5ce-93a6-442f-9dad-d17b74fa90da','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-ws-role-usr','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('23c6c917-9eef-41d5-b841-eb20ef94b5df','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_manage-consent}','manage-consent','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('23d73a81-5ca5-46dc-a0a4-0acb9df37e66','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_manage-account-links}','manage-account-links','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('25274b22-3fb5-49f2-86a4-556e7d718909','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-usage','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('25a5a657-670a-4eed-b113-5b292cff7dc9','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_manage-identity-providers}','manage-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('25f1a938-d0b2-49b2-ba87-3217c2a3a140','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'ws2','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('26282ce8-b3aa-4a20-b8ac-5378dc7a5ca9','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_view-events}','view-events','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('266aba44-736b-4595-82c8-c6f5f7406086','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_manage-authorization}','manage-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('280cf8d4-9945-4435-a04b-35baa75ab475','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_ws1-admin','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('29373f22-9462-49c9-9465-5c0b02406552','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_view-realm}','view-realm','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('29488cd1-1092-4b39-a2dc-8d568a3552af','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_manage-events}','manage-events','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('295b93f9-3e35-4f05-91c3-60866c0056d1','d288df77-676b-418a-815d-15169d1631bf',1,'${role_manage-events}','manage-events','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('2968fa3c-0486-4d23-a17f-68c548d9e6dc','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_view-consent}','view-consent','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('29b5a832-3605-4d86-80bb-e76d0d27d957','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_view-identity-providers}','view-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('2bdad267-0c78-4631-9bd2-6a9a2ff951fb','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_manage-users}','manage-users','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('2bfa1a84-f1f1-4d12-a0e0-222e73a0009a','fe590829-5a72-46df-b480-593cccd24fca',1,NULL,'_ws3-admin','org4','fe590829-5a72-46df-b480-593cccd24fca',NULL),('2d1c0d16-f234-4c7d-91bf-9cd737313dfa','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_impersonation}','impersonation','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('2eeaf535-504f-42d0-92dd-71790ae4d6d1','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_manage-account-links}','manage-account-links','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('30440535-206c-4b10-890d-11b5e21fd6b8','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_manage-clients}','manage-clients','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('311eba68-975c-43f0-9894-102021cfb68e','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_impersonation}','impersonation','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('31775010-4e18-4e31-b952-fc986390f81b','org2',0,'${role_default-roles}','default-roles-org2','org2',NULL,NULL),('320972a4-4a6e-4064-a45d-c4a6e0e95d54','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_manage-clients}','manage-clients','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('33298592-c483-4023-89d9-ee858de3062d','org4',0,'${role_offline-access}','offline_access','org4',NULL,NULL),('33a807ce-b0e2-42fd-b231-ed33e30ffc3d','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'ws2','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('33e128e3-abb2-4f48-9cd6-e9f7c31b95f2','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-ws-mt','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('3592c44a-3e55-40e6-8153-7f0394c0cab6','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-ws-role-usr','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('35e5784e-8fc8-468a-9479-d48cf23d75ae','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_manage-account-links}','manage-account-links','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('3614dc77-690e-499f-89c8-dafb1484c433','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_manage-consent}','manage-consent','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('36b98423-8209-4138-8adc-cf98c89bd76d','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_view-users}','view-users','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('372d9b70-6912-4347-8761-ed4ec9dc5ec6','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-own-mt','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('376b154b-8efc-49a5-b003-4bb83f58c3e9','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_manage-events}','manage-events','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('3912ee3e-de9b-4b8c-b53f-13c9020e8199','d288df77-676b-418a-815d-15169d1631bf',1,'${role_manage-authorization}','manage-authorization','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('3a81a2bc-aa4b-49f1-a246-67a0bbc21369','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_manage-events}','manage-events','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('3aa55d4d-a356-4b5b-ba3c-d92428e6d806','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_manage-users}','manage-users','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('3f2beaab-1604-464e-aa5e-6317dbe58616','d288df77-676b-418a-815d-15169d1631bf',1,'${role_create-client}','create-client','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('4018e577-0f65-44bd-8d6c-e65a2f4fda91','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_ws3-admin','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('407b6bbc-7c8f-4615-84d6-0a62cdacc6a7','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_view-authorization}','view-authorization','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('40a6136b-8107-42e1-b0d1-2bde767ee524','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_view-groups}','view-groups','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('4140bddb-0b43-4cfc-b60f-21dd706ece4c','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_manage-authorization}','manage-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('4236c6c5-29fe-4ab5-9c37-20bd7c27b310','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-audit-log','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','org4',0,'${role_default-roles}','default-roles-org4','org4',NULL,NULL),('439eaa8a-e602-4051-9b8c-aa0bfd9444ec','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_view-events}','view-events','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('443f67a5-76c3-456c-bddc-2b48127f28d9','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_view-clients}','view-clients','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('452564ee-ffc1-4f07-b054-bf5c06746497','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_manage-clients}','manage-clients','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('46c25ea4-2e3c-4f87-acf2-a26b8aba721f','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_query-clients}','query-clients','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('46d8a8d9-0994-418d-8ef6-564481d27961','org3',0,'${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('4710ec9b-bee2-4182-ab44-a9ce80b20a87','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_query-users}','query-users','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('47165651-f63c-496f-bcc0-54a3f911149a','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_delete-account}','delete-account','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('47736e33-645b-4a96-ba43-824bea3578dd','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_delete-account}','delete-account','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('48458e23-ae79-4038-9386-6e57062f1bba','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_manage-identity-providers}','manage-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('49991293-f564-4f1f-96d5-0daf1a38544e','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_view-identity-providers}','view-identity-providers','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('49f73f7c-26d1-42ef-9693-c804fcdf106e','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_view-users}','view-users','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('49fdb689-9a0f-4767-88d3-6505619cbfd4','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_create-client}','create-client','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('4a091c15-c235-4191-87bb-4b9efa16dcf7','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_query-clients}','query-clients','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('4bbecc6c-826b-4f05-b462-30b65ba9a61f','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_manage-authorization}','manage-authorization','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('4bd8b58a-9aa3-47e0-afb1-080d8e80f54c','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-ws-mt','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('4d50abe0-0997-4d89-840f-1576112d0670','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_query-users}','query-users','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('4d8d3678-b288-4dee-8423-eb57bd465b03','04458ae7-60f6-44cd-a035-5a396eb993d5',1,NULL,'_ws3-admin','org1','04458ae7-60f6-44cd-a035-5a396eb993d5',NULL),('4d8d82db-c4cf-45a5-9682-15b828e637d0','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_impersonation}','impersonation','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('4f75482a-931b-42f8-abc3-60641423bbc0','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_query-clients}','query-clients','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('50eb7655-dae8-4928-af18-422b96bf240d','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_manage-realm}','manage-realm','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('521e3d3a-5035-4001-9f36-c283ebc53ca4','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_manage-authorization}','manage-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('52273ac6-3453-4ad7-a2ae-3237b9a884be','a4005476-cc19-4fe9-a6ed-e1ec00babf59',1,'${role_read-token}','read-token','org1','a4005476-cc19-4fe9-a6ed-e1ec00babf59',NULL),('52d1ae6d-5137-48db-a721-312b741fa458','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_manage-realm}','manage-realm','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('53ce041d-d078-43bf-9c36-4c16e0401a8e','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_view-groups}','view-groups','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('55e03eed-689a-419b-8069-2ccf47c1185c','fe590829-5a72-46df-b480-593cccd24fca',1,NULL,'_ws1-admin','org4','fe590829-5a72-46df-b480-593cccd24fca',NULL),('561cfc09-97a0-4ec0-bc97-9c7dfcfdd6cf','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_manage-realm}','manage-realm','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('5639a881-4b10-4906-8881-ed8484667b88','7b641f77-acc3-4adc-9f14-f2da533bbee2',1,NULL,'_organization-user-role-manager','org2','7b641f77-acc3-4adc-9f14-f2da533bbee2',NULL),('5694d100-804e-4fdf-85d2-04d3efa04d7e','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_ws2-admin','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('56fc80e7-7b88-440d-a993-155b9737f167','34551b50-154e-45d3-a330-d06cf0168fb9',0,'${role_uma_authorization}','uma_authorization','34551b50-154e-45d3-a330-d06cf0168fb9',NULL,NULL),('5734af6e-223f-4182-9e09-ddea53d29307','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_view-clients}','view-clients','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('57fbaac8-86cd-436b-8590-01c7b1ddcb01','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-ws-role-usr','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('5895218e-16c2-491c-ae4f-3165d2b06979','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_view-authorization}','view-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('5a05883a-93c3-453e-81d2-8a9a17c90948','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-ws-role-mt','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('5a7699e7-fb4d-4b74-baa9-08e7f1cdbdfa','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_view-authorization}','view-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('5ac16ddb-94f6-490c-9f64-bacd98cfdb81','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_view-identity-providers}','view-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('5b95c1b9-34dc-472d-a1ff-a06e2a82c1e7','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_query-users}','query-users','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('5c427599-92a1-4eef-84cb-7903dde1962e','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_ws1-admin','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('5c47b6bc-0b6d-4bef-8915-3035365eb8d8','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_view-groups}','view-groups','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('5ed67079-1281-4820-97f8-9e900ac23f5c','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_view-realm}','view-realm','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('5f16cb19-4607-4e35-878c-9ad96b2e819c','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-ws-mt','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('5f2a6b88-b648-4467-afc3-b20eaede0b42','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_manage-users}','manage-users','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('5f4ab5db-5996-4c4e-9acb-44906421ee73','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_delete-account}','delete-account','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('5f9ed256-f2d0-43ff-9721-df4119d7db2c','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-upd','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('5faae616-28f4-4ec9-b5c8-c2617e9649d5','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_query-realms}','query-realms','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('610e9685-6260-4abf-a77c-cb755394f778','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-usr-mt','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('62c63408-c790-4025-95f2-bfacb3d470b8','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-role-usr','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('63f8b2d9-1f98-468d-a19b-3642b8d7fafd','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'ws3','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('6419b34c-6fee-480f-bb83-81527212fcbc','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_view-profile}','view-profile','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('652fa641-1825-40af-9b6c-0ce59179af99','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_manage-users}','manage-users','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('66021760-9c4b-45bd-8d42-cd074b84a897','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_create-client}','create-client','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('660ef19b-3430-4b99-ae03-e4729bd17baa','34551b50-154e-45d3-a330-d06cf0168fb9',0,'${role_create-realm}','create-realm','34551b50-154e-45d3-a330-d06cf0168fb9',NULL,NULL),('6632624e-6d1a-4684-922b-75bb69a868ac','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_query-groups}','query-groups','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','org3',0,'${role_default-roles}','default-roles-org3','org3',NULL,NULL),('67440856-906c-4ccb-9817-b1c442d32f1e','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_view-clients}','view-clients','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('67baa771-e452-4b95-9802-2de4ed5d4f92','f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,NULL,'_ws3-admin','org3','f6ca71d5-4ebb-461d-b35c-d83a90681c34',NULL),('67d3d298-cb9c-4852-a216-d79bce4cc90a','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_view-clients}','view-clients','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('697b6201-417d-42b4-b22a-e35426c61ed6','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_query-clients}','query-clients','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('698b9075-91b7-4c88-b6c7-1b6a731ebb7e','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_view-groups}','view-groups','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('698d6d13-4e5c-48ef-8ad5-dffc50d30d00','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'ws3','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('69ca3868-e401-4cf4-bc2a-822500f61fa0','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-upd','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('6a8d4712-2afe-4bb3-9180-ee0290f16d8f','d288df77-676b-418a-815d-15169d1631bf',1,'${role_query-clients}','query-clients','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('6b218d00-24f1-40b7-9b49-ed040de6885a','fe590829-5a72-46df-b480-593cccd24fca',1,NULL,'_organization-user-role-manager','org4','fe590829-5a72-46df-b480-593cccd24fca',NULL),('6b6c3f79-f052-433e-a42e-5c201a30577b','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_manage-clients}','manage-clients','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('6c2e2576-1d00-429b-b8c2-552e61587296','d6a71c1a-016b-4c87-a19a-d6c83aa89934',1,'${role_read-token}','read-token','org4','d6a71c1a-016b-4c87-a19a-d6c83aa89934',NULL),('6d57a8e5-2d34-42c5-ac29-48e96818c4a9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_view-events}','view-events','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('6d8fc332-aebc-4628-abaa-3ca1f8850b53','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_manage-users}','manage-users','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_realm-admin}','realm-admin','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('6e26790b-b0a2-4606-81e0-6d426023627c','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_view-realm}','view-realm','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('6eb51911-6c8d-442e-ab83-fb00bbdfa4f9','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_create-client}','create-client','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('6f4a7c9c-01d3-4062-a226-cf2c8976f514','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_view-consent}','view-consent','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('6facf501-888b-4986-98a1-179afdcc05d1','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_query-realms}','query-realms','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('71875ea0-f2a4-4aaa-8de1-009cfbac4130','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_impersonation}','impersonation','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('718b9668-4ab9-4bd0-9b24-db8e37658b62','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_view-applications}','view-applications','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('72192981-125e-46dd-aca7-35af9c38c70d','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_realm-admin}','realm-admin','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('73527fbd-3a8b-4c98-9721-c593cc4f3f64','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_manage-identity-providers}','manage-identity-providers','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('7466830d-1f6f-47e9-8456-4c34568a1d2d','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_manage-realm}','manage-realm','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('759d6dbb-128a-4323-8546-e129d85e0952','04458ae7-60f6-44cd-a035-5a396eb993d5',1,NULL,'_organization-user-manager','org1','04458ae7-60f6-44cd-a035-5a396eb993d5',NULL),('76142b2c-f526-4b07-89e5-574dbd0c7d73','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_view-applications}','view-applications','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('765fb986-1acf-473f-b70d-18aa5857ed5e','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_manage-identity-providers}','manage-identity-providers','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('76c9fd69-3aee-4d16-a8e5-56019777424c','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_query-groups}','query-groups','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('77305773-f1b2-472d-8f17-af9ddd98347e','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_manage-account}','manage-account','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('77af2acf-b3b8-4bd7-8dc9-9acacfd8460f','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-ws-role-mt','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('78713f84-7fb1-4a55-92ad-3b65d446e8c8','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_query-groups}','query-groups','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('789d6bc9-c2cb-464c-8d3f-f8044c15becc','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-role-usr','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('7a0d541d-53bc-4eaf-901e-3c442c5f25c7','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_ws3-admin','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('7a323dc0-efee-41d0-90b0-0716cb5997ce','org2',0,'${role_offline-access}','offline_access','org2',NULL,NULL),('7b44358c-501e-4db6-bf9e-6838cc4033fb','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_impersonation}','impersonation','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('7cc1e3d3-2b6f-4dab-9722-a753850bc1f7','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_view-applications}','view-applications','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('7dbc4717-4957-491e-873e-840cff716bda','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_delete-account}','delete-account','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('7dfcfa49-c812-4c03-b45a-8defe69cd28b','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_ws1-admin','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('7e671689-c837-446c-866b-3bbfe10af02a','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,NULL,'_ws1-admin','org5','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',NULL),('7fce3cbc-8bf9-4572-ac4e-769a5dcbe26a','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-usr-mt','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('8047ef8b-5105-4b3a-8884-fc10607283f6','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_ws2-admin','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('80922d77-981c-4f90-9cae-ab90e5d3ac3b','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_query-groups}','query-groups','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('80c7fbdb-44c7-43f7-965d-ca83acaf5376','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_ws2-admin','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('816fc2a4-3885-4cef-8db2-9e26735ef032','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_view-authorization}','view-authorization','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('819a34ee-bfb5-4d97-be0f-6655825cedce','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_query-users}','query-users','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('8211e03c-7154-4d4f-ae3f-7d24e49b5542','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_manage-authorization}','manage-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('827ace37-9868-4299-bce1-8844f860477e','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_query-users}','query-users','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('83f846cc-ee9e-4bdb-b039-2f21a0349181','fe590829-5a72-46df-b480-593cccd24fca',1,NULL,'_ws2-admin','org4','fe590829-5a72-46df-b480-593cccd24fca',NULL),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','org5',0,'${role_default-roles}','default-roles-org5','org5',NULL,NULL),('850e5c77-b505-479e-905b-1a01b4ee5b86','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-audit-log','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('8522d94a-9180-4492-90e6-3f7af91c9fa5','04458ae7-60f6-44cd-a035-5a396eb993d5',1,NULL,'_ws1-admin','org1','04458ae7-60f6-44cd-a035-5a396eb993d5',NULL),('856e6390-b8ad-4c9f-91c9-8f7c443ec661','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-ws-role-usr','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('85cd7787-57e2-4db6-82fd-8d30777e84ce','7b641f77-acc3-4adc-9f14-f2da533bbee2',1,NULL,'_ws3-admin','org2','7b641f77-acc3-4adc-9f14-f2da533bbee2',NULL),('85f05404-9f2f-45bc-883b-8a85f5777741','34551b50-154e-45d3-a330-d06cf0168fb9',0,'${role_admin}','admin','34551b50-154e-45d3-a330-d06cf0168fb9',NULL,NULL),('85fd2275-6ab9-43a8-9ddd-0a36476c835d','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_view-clients}','view-clients','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('86e0959b-cf29-454c-a59e-811f2f251240','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_query-users}','query-users','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('872da000-5eaa-4e16-862a-144a21879433','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_view-profile}','view-profile','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('880764e4-5d3d-439f-8c2c-de5909c1db98','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_view-users}','view-users','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('8850600c-0101-4e10-95eb-1b691988da5c','d288df77-676b-418a-815d-15169d1631bf',1,'${role_realm-admin}','realm-admin','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('889196f7-2019-4cb0-b52b-b42357491963','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_query-groups}','query-groups','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('89122b0c-338d-4de5-88b4-ae0bec963bf5','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_create-client}','create-client','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('895d7f0d-2777-453a-96d4-8906d486e346','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-ws-mt','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('8978f64e-0efa-4651-8e3e-2c4412c45253','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_ws1-admin','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('8a103ba5-0f32-412e-9df7-935be76c269a','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_view-identity-providers}','view-identity-providers','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('8a7844d9-a624-4325-8a39-7453f443e2aa','d288df77-676b-418a-815d-15169d1631bf',1,'${role_view-identity-providers}','view-identity-providers','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('8af5ef33-694e-472a-80c6-15d5619b29b2','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_view-identity-providers}','view-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('8b0b41e5-6805-4ff4-8cda-c480e156a930','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_view-profile}','view-profile','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('8bd655f5-519a-4770-bede-f492ae105c94','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_query-groups}','query-groups','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('8c4a0da8-dfa9-41ee-9727-e5fcf75689f3','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_view-users}','view-users','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('8c5d984b-ac7d-4a39-8905-91cc1c90a4f1','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-own-mt','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('8c89e414-2013-4e2d-ae8b-7e26ec1a16f2','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_query-clients}','query-clients','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('8cb65309-7730-4398-a80c-dbcbc2180988','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_manage-clients}','manage-clients','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('8d951762-e1f6-4359-a571-3691f305ec9b','04458ae7-60f6-44cd-a035-5a396eb993d5',1,NULL,'_ws2-admin','org1','04458ae7-60f6-44cd-a035-5a396eb993d5',NULL),('8e0e08a4-82d4-459f-879e-94a38bdc888d','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_query-groups}','query-groups','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('8e14ad73-adea-428c-a49c-ad2e9166f342','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_query-groups}','query-groups','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('8e65821c-751f-4815-aafd-5daa53e1ce77','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_view-users}','view-users','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('8f6bb82b-258c-4d96-b31f-aa12e12174f8','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_manage-identity-providers}','manage-identity-providers','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('906edfcb-d297-4bd3-9410-c02efd673a74','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_view-applications}','view-applications','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('906f8856-be8f-48d6-8ca9-d00a7fe0ce25','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-upd','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('90768c1e-d12e-41aa-b6bb-ffeb4d8fcc99','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,NULL,'_organization-user-manager','org5','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',NULL),('916bd9f8-0514-47d8-ba7d-b683d68307f4','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-ws-role-usr','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('94160c1d-72e9-45ae-be13-3198a4347577','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_view-events}','view-events','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('941d48fe-ab5b-47be-9e9e-e1e75fc4af31','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_view-events}','view-events','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('94b6ac16-077e-4328-a21c-578d504efc9c','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_view-users}','view-users','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('94c1d70e-f325-48bc-b8a7-bb54a969eca0','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_query-users}','query-users','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('9513f688-13f9-4816-8790-4bc580754c47','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_realm-admin}','realm-admin','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('97ee6e0f-67cd-4133-b762-0540fdd9dcd1','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_manage-realm}','manage-realm','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('990c547c-4f7d-4083-828f-90a8a8821ce2','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_query-clients}','query-clients','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('9944e80d-119b-4ae1-89e3-c0c1fdacfc31','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_impersonation}','impersonation','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('9af90cc7-656d-4ffd-92e7-b9aca1cad38d','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_impersonation}','impersonation','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('9b86d928-c562-4980-914c-0e6d730aa448','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_query-groups}','query-groups','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('9c6ef27e-4702-4772-bfb3-cbea76a65deb','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_view-realm}','view-realm','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('9d24068a-ce39-4fe0-b4ca-ed17d88dc61d','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_view-users}','view-users','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('9d523f05-86fc-4ec5-a74f-7d525bd77c0c','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_view-authorization}','view-authorization','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('9d60187d-de9f-40c4-88d4-77f7e77ac24a','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_view-events}','view-events','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('9d61f3d3-bf95-4f46-9116-1fe1efd3bef0','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_view-authorization}','view-authorization','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('9d859782-2491-4a35-baf8-65a7027cb16c','org1',0,'${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('9dfdbb9d-d312-47aa-a96a-6dcd7642ef94','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_manage-account-links}','manage-account-links','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('9e2d8ee2-fe34-491d-9cd8-20fb9483f0d5','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_manage-realm}','manage-realm','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('9ed0f305-5bb8-4a8c-b154-8948cc7cbc4f','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-role-usr','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('9ee094af-b461-4ff2-8ccf-8a8a09de7284','d288df77-676b-418a-815d-15169d1631bf',1,'${role_manage-identity-providers}','manage-identity-providers','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('a0c51bfb-c76a-4a10-87fd-a35f72a3985d','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_impersonation}','impersonation','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('a2030383-ea62-4a6e-bf5b-be44ce73b92f','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_manage-identity-providers}','manage-identity-providers','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('a203d91d-8bc9-4359-b6a1-bb90cae1c078','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_ws3-admin','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('a2d45372-98b7-4526-a9f6-404bf3421783','fe590829-5a72-46df-b480-593cccd24fca',1,NULL,'_organization-manager','org4','fe590829-5a72-46df-b480-593cccd24fca',NULL),('a49b2c0a-c03c-459c-8e00-c1cfef593824','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_create-client}','create-client','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('a549da24-e8ac-4124-ae9a-69daf2dbd8f9','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-usr-mt','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('a5d83681-c74b-4e3e-a466-563a830e11d8','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_view-realm}','view-realm','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('a611a6aa-3d86-4d58-80db-6f976f4963ea','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_delete-account}','delete-account','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('a62b794d-1d46-4f7b-89b9-a8db7cad25d8','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-usr-mt','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('a6963d22-eea2-4b3a-8754-7194e36b19d9','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_manage-consent}','manage-consent','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('a888b2a4-7bd5-42dd-9b43-6179e22bc2e9','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_manage-authorization}','manage-authorization','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','7b641f77-acc3-4adc-9f14-f2da533bbee2',1,NULL,'_organization-manager','org2','7b641f77-acc3-4adc-9f14-f2da533bbee2',NULL),('aa84fd95-5548-4953-bf24-82dd5735d53d','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_view-identity-providers}','view-identity-providers','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('aa98c083-3233-449a-beb7-d9ef4fbda497','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-usage','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('ab519ed2-9b0f-48a3-8278-e7f816750c20','34551b50-154e-45d3-a330-d06cf0168fb9',0,'${role_offline-access}','offline_access','34551b50-154e-45d3-a330-d06cf0168fb9',NULL,NULL),('ab7b81e0-db30-40ca-a85b-33ef91f9d11b','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_manage-users}','manage-users','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('ac5ae6d3-738d-4207-9c25-faf9033916d1','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-own-mt','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('ad0cd736-3afd-4525-b701-a211b055de52','7b641f77-acc3-4adc-9f14-f2da533bbee2',1,NULL,'_organization-user-manager','org2','7b641f77-acc3-4adc-9f14-f2da533bbee2',NULL),('ad41c8ce-1c7f-4192-bf2f-85688a6651c9','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_manage-events}','manage-events','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('adabcac7-c8da-4237-bd53-1d3b159063a3','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_view-users}','view-users','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('aea3e898-56c5-47a8-aa43-be731259f796','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_view-profile}','view-profile','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('aeab7992-cd87-438f-9b47-acffc45c603b','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_view-consent}','view-consent','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('aeec29db-c753-436f-a41c-bb57e96d3a44','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-role-usr','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('af8a468b-d3dc-4958-b931-9da5c6c66f5c','fe590829-5a72-46df-b480-593cccd24fca',1,NULL,'_organization-user-manager','org4','fe590829-5a72-46df-b480-593cccd24fca',NULL),('b1315c2f-09ad-420a-8643-180d39b9fa2f','d288df77-676b-418a-815d-15169d1631bf',1,'${role_view-realm}','view-realm','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('b15deda8-eed7-4036-958f-d35d996d7546','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,NULL,'_organization-user-role-manager','org5','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',NULL),('b183214f-86e1-40ff-90ce-923cfaf63e75','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_manage-realm}','manage-realm','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('b3253222-ed99-4302-85c4-87f21af532f6','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_manage-account}','manage-account','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('b6572eb0-a96a-4f03-af0d-651cacb2fef7','d288df77-676b-418a-815d-15169d1631bf',1,'${role_manage-users}','manage-users','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('b69b7ef6-94f2-4334-883b-01e9588389b0','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',1,'${role_manage-account-links}','manage-account-links','org1','780c20fe-d46f-4c8b-81f9-ef04b7313ec6',NULL),('b7005dd5-bc94-4c1e-8b4a-6fff6aa24a5d','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_query-realms}','query-realms','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('b744684e-5231-49d3-855a-8bd52a1c4cce','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'ws1','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('b8721b64-9a5d-4d91-9bcd-2b7b82961bdd','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_manage-clients}','manage-clients','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('b8ed7129-9921-4f64-aa63-7f08de9e3262','f6f43786-38d9-49a9-918c-c4268bfaa15a',1,'${role_read-token}','read-token','org3','f6f43786-38d9-49a9-918c-c4268bfaa15a',NULL),('b9cc4967-de29-4bac-bcb1-8527bb43e8b9','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_manage-consent}','manage-consent','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('b9fa5c60-ac99-47ba-85f3-80983e045398','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_query-clients}','query-clients','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('bbed3917-26d7-4874-8206-6b92a96cdcf7','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_manage-clients}','manage-clients','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('bcfe076f-e344-4af1-abf9-d22232531d74','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',1,'${role_query-realms}','query-realms','org2','68409b6b-a222-4c2a-93aa-7d9e21b6f79a',NULL),('bd88ceb7-348e-4b34-acf7-cd1bf3257a4b','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'ws3','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('bda514bc-59a2-411e-9633-2e4051b9bb47','f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,NULL,'_ws1-admin','org3','f6ca71d5-4ebb-461d-b35c-d83a90681c34',NULL),('bf7998b6-8f67-46c0-913d-06ea3d5f6b74','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_manage-clients}','manage-clients','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('bf99d789-2432-4a2c-a052-12fe3893d9a7','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-ws-role-mt','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('c09544b3-6e38-4e64-add0-8704ce8d288b','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_query-clients}','query-clients','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('c1867c6f-41ed-4ece-a3c6-cdbffa0c632f','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_manage-account}','manage-account','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('c1993e55-7bca-4846-9edc-ed6baaa96c68','f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,NULL,'_organization-manager','org3','f6ca71d5-4ebb-461d-b35c-d83a90681c34',NULL),('c229cab6-c34c-41f5-a48d-5113ad162695','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_view-authorization}','view-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('c32d4ad3-21d1-4a01-9bb8-6d9e7b57f614','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_manage-realm}','manage-realm','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('c338fdbf-d563-434a-8d90-8ae00110ceea','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_manage-realm}','manage-realm','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('c36b2385-bda0-49ee-afba-324e936529f7','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_query-clients}','query-clients','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('c3e9db12-e003-43da-84a5-1335e75399a1','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,NULL,'_ws2-admin','org5','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',NULL),('c3fd568d-8abd-4c67-97ff-9fe18f6d9bab','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'ws1','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('c4703494-50c6-49d3-94ae-5a2077bb9d92','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-role-usr','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('c4a99dfd-1bb3-4a47-8d9a-9f270029d81c','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_view-consent}','view-consent','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('c688975d-eb9f-4d86-a8d8-5f723e9a0ab4','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_view-realm}','view-realm','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('c9decfc8-3e3a-450f-a743-bd857c60da35','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_view-authorization}','view-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('ca0c7057-e3d9-4ada-ab8e-87a5519a737c','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_manage-events}','manage-events','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('ca5bc656-66cb-4b71-89ec-6be847f10c3c','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_view-users}','view-users','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('cab739bd-37da-4ebb-98b7-6ad36963910a','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-audit-log','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('cb09bcdc-2c9a-40bb-bd5d-ee6e7508422e','30bd9611-6954-42fa-8383-0951f5ee6e5a',1,'${role_view-consent}','view-consent','org3','30bd9611-6954-42fa-8383-0951f5ee6e5a',NULL),('cb2356ac-a111-4d44-84a3-7372e51273b4','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_ws3-admin','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('cc9dc9b5-3045-4619-b164-63b0161e86cc','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-ws-role-mt','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('cda7cbb3-fba6-428f-91a6-2116c05fa0bc','933bd7be-382d-4836-9959-e1d62aa45403',1,'${role_read-token}','read-token','34551b50-154e-45d3-a330-d06cf0168fb9','933bd7be-382d-4836-9959-e1d62aa45403',NULL),('cf2ab662-9123-49bb-9876-567455c2fd8b','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_view-identity-providers}','view-identity-providers','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('cf353d7c-ead2-4897-97a6-bd13321406b9','f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,NULL,'_organization-user-role-manager','org3','f6ca71d5-4ebb-461d-b35c-d83a90681c34',NULL),('cff74f55-002a-4dc7-81d4-8850e7afe491','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_view-groups}','view-groups','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('d02b89f8-bd8c-4129-b4f1-6d0ee9ffd099','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_query-realms}','query-realms','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('d11d00c4-609d-434a-8639-e02ba06a9394','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_view-authorization}','view-authorization','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('d3c83741-4d7c-4f8d-a967-e145f43a1f37','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'ws1','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('d40d95ba-0d1a-4c3d-87c2-e505b18f2a39','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_query-realms}','query-realms','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('d66a329b-b2de-4c6f-8471-a9a7d7c82c80','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_view-applications}','view-applications','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('d69d76ca-7ff7-4723-9446-1c4fa9a3f598','d288df77-676b-418a-815d-15169d1631bf',1,'${role_manage-clients}','manage-clients','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('d6f4ddf4-2560-4ba5-b71f-791ea6946e2a','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_view-identity-providers}','view-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('d71e1f86-0cbe-4d80-99fb-66850f3b89ab','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-usage','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('d794ac30-ab76-419d-bee5-9a8d93e7586d','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_manage-account-links}','manage-account-links','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('d86078fb-dd0b-4e66-bbb7-adc41283b74b','org5',0,'${role_offline-access}','offline_access','org5',NULL,NULL),('d8fed178-71ad-44b0-98b3-0f8fdd736765','fa920e55-8c91-4e0f-8808-159a7c61871d',1,'${role_manage-account}','manage-account','org4','fa920e55-8c91-4e0f-8808-159a7c61871d',NULL),('d938b822-e9fb-4152-88e8-5c096bfdf2bc','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_query-users}','query-users','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('da108c6b-554c-4175-a9c1-8f44a3a57626','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_manage-events}','manage-events','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('da407b7c-69bc-4c80-beb9-153c3df75535','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,NULL,'_organization-manager','org5','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',NULL),('dada9074-8e75-431d-ac4c-c774001be79c','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_query-realms}','query-realms','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('db26c5cf-e87b-4026-a518-65f96fbab5e0','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_create-client}','create-client','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('dba9977a-cbbc-41fe-a361-aa3dbe8a3555','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-audit-log','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('dbba1a3a-858e-440d-88b1-8c0253ee0022','d288df77-676b-418a-815d-15169d1631bf',1,'${role_query-groups}','query-groups','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('dc62d418-cd95-4922-a880-bcf4f3731446','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'_og-own-mt','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('dcaa786e-65bb-493b-82b7-ca9a8a98c06e','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_view-realm}','view-realm','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('dd5f7e7b-9d99-480a-942f-65f08f432e88','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_view-clients}','view-clients','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('de3cbde9-68a1-40e0-9b72-9bb95bb75b3f','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_view-events}','view-events','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('defc61c8-8f6e-4d9c-bb7a-eb0b92139c2d','064213d5-bf33-4ac5-b7be-eea67610f415',1,NULL,'ws2','org1','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('df067833-d5e4-45a5-88f3-33febd0e2c0e','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_ws1-admin','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('df2776bc-22eb-429a-917f-2a012423eaec','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_manage-clients}','manage-clients','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('dfcc188e-1e64-4a06-b93d-67189816454e','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_create-client}','create-client','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('dfee9baf-1e1f-4ef0-b990-7fb7f4ae6933','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-ws-mt','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('e209894e-b8ca-4cc6-a7b7-409371adcd2d','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_view-events}','view-events','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('e26e7d3f-cec0-46b1-bc47-46c5ab631d52','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_view-identity-providers}','view-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('e29bd2f2-a9d2-4be7-88a0-33f727d73467','09071635-43d3-4f1c-a363-e8bbfb639174',1,'${role_manage-account}','manage-account','org2','09071635-43d3-4f1c-a363-e8bbfb639174',NULL),('e3456ec2-ab20-4c44-81a5-464adb083a29','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_ws2-admin','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('e37c74e0-ea59-42ca-bd33-91e05f51e512','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_impersonation}','impersonation','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('e4ed37ec-1e1a-43f5-937c-eddd7d9628b7','7b641f77-acc3-4adc-9f14-f2da533bbee2',1,NULL,'_ws1-admin','org2','7b641f77-acc3-4adc-9f14-f2da533bbee2',NULL),('e571c924-ced4-44cd-8da7-9b9ccab965d9','org3',0,'${role_offline-access}','offline_access','org3',NULL,NULL),('e57dc26e-bb81-4b1d-9410-e7b05b8f3d02','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_ws2-admin','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('e654696c-9f03-4220-9d27-7e1beea797d9','34551b50-154e-45d3-a330-d06cf0168fb9',0,'${role_default-roles}','default-roles-master','34551b50-154e-45d3-a330-d06cf0168fb9',NULL,NULL),('e6654ab6-c8ec-4b40-9bf6-8c5f8a9d4caf','c4dc76fb-a8ec-4565-b899-384117fcb403',1,NULL,'_og-usage','org5','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('e68525d4-3182-44b3-b3a6-db5b10fdb84e','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_view-realm}','view-realm','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('e74d32c3-daf9-4bb4-9d4b-ddf156bac61d','bd270c1d-636d-4691-8268-c3975fa8e1c6',1,'${role_delete-account}','delete-account','34551b50-154e-45d3-a330-d06cf0168fb9','bd270c1d-636d-4691-8268-c3975fa8e1c6',NULL),('e751f5ca-78f3-42bd-85a8-14fa8000493e','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'_og-own-mt','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('e7b6d3e2-a324-4732-9f75-5192ad84950b','132a9080-6a05-43c8-bb6d-8f9ad0444045',1,'${role_manage-identity-providers}','manage-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','132a9080-6a05-43c8-bb6d-8f9ad0444045',NULL),('e86c3925-a0fd-4bb9-aec7-06afac325f97','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',1,'${role_view-consent}','view-consent','org5','29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b',NULL),('e86fe932-77d9-4411-9404-85ce9750cc0c','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_create-client}','create-client','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('e87de7fe-bd38-4894-99a5-5361e7afda41','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_view-identity-providers}','view-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('e91415ad-8b04-4cab-acc7-9b16e0456bb8','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_create-client}','create-client','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('ea868994-21da-4a82-9c92-1a0eb50f39cc','673fe574-2aad-4c41-8fdc-9c3e7ac04048',1,'${role_view-users}','view-users','org3','673fe574-2aad-4c41-8fdc-9c3e7ac04048',NULL),('eafe25e1-6768-4c0c-964b-68d1907a4d27','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_manage-clients}','manage-clients','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('eb8b3d78-947a-4eba-8c16-e85d8db6ba9f','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_manage-events}','manage-events','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('eba82f0e-20a7-4ba6-9925-d87a1fc9f8c0','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_view-realm}','view-realm','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('ee97e63b-3349-4a6b-ac77-80581c71f31b','7b641f77-acc3-4adc-9f14-f2da533bbee2',1,NULL,'_ws2-admin','org2','7b641f77-acc3-4adc-9f14-f2da533bbee2',NULL),('ef5eb597-cfe3-4c22-b912-7d92dc94f2b1','d9558b6d-e578-4475-a8f6-a330bc096e1a',1,'${role_view-clients}','view-clients','org5','d9558b6d-e578-4475-a8f6-a330bc096e1a',NULL),('efdbf526-78fe-463b-b771-29fec5f605c6','d288df77-676b-418a-815d-15169d1631bf',1,'${role_view-clients}','view-clients','org1','d288df77-676b-418a-815d-15169d1631bf',NULL),('f01748f5-a37e-460d-8fd8-8dedaacf22c2','555ccbc1-82f7-47c5-a834-ca9224d51de1',1,'${role_manage-identity-providers}','manage-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','555ccbc1-82f7-47c5-a834-ca9224d51de1',NULL),('f0741211-ebf5-4c93-9864-ec3eed18a810','f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,NULL,'_organization-user-manager','org3','f6ca71d5-4ebb-461d-b35c-d83a90681c34',NULL),('f07c8381-0990-461c-88e6-d17a424f9c98','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'ws3','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('f0b660af-f948-4318-8713-0f7487844204','19f88bac-766a-42e7-8df2-e247cd3f10bf',1,NULL,'_og-upd','org3','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('f0ec38c0-0d65-400a-bd0c-9c7fb0cc41c7','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_view-clients}','view-clients','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('f2510213-e08f-4692-8c91-5cee504272e1','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1,'${role_manage-users}','manage-users','34551b50-154e-45d3-a330-d06cf0168fb9','6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',NULL),('f341d9f0-53cf-4cdd-a571-560193e475ab','04458ae7-60f6-44cd-a035-5a396eb993d5',1,NULL,'_organization-user-role-manager','org1','04458ae7-60f6-44cd-a035-5a396eb993d5',NULL),('f354e42e-ec14-4cf5-b83c-9053aeff387d','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_query-clients}','query-clients','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('f44af8ee-2622-4c17-8257-fdf60901254e','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_manage-identity-providers}','manage-identity-providers','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('f67c67c4-e200-4af1-9cc1-f2768d42bde4','323db795-227a-46f6-bdde-d509c310ef10',1,NULL,'_og-upd','org4','323db795-227a-46f6-bdde-d509c310ef10',NULL),('f765e171-a57a-4131-8caa-a4d82e82fd2e','7785feb2-4924-4cfa-84bf-bdf8633a3193',1,'${role_query-realms}','query-realms','org4','7785feb2-4924-4cfa-84bf-bdf8633a3193',NULL),('f807874b-9a70-44ac-aecc-f84512b5515d','cb793279-2d62-4d18-9bca-b8ee563a6e35',1,'${role_view-clients}','view-clients','34551b50-154e-45d3-a330-d06cf0168fb9','cb793279-2d62-4d18-9bca-b8ee563a6e35',NULL),('f889f43c-e80a-4ed5-990b-293722852011','org4',0,'${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('fce977e5-f65f-4bf3-93cf-8ad51dfe670a','a38acb55-dd09-4a1d-a9e3-9d2811351c30',1,NULL,'ws1','org2','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('fcff19d5-1b73-43f4-af56-6a60c16edd6f','f6ca71d5-4ebb-461d-b35c-d83a90681c34',1,NULL,'_ws2-admin','org3','f6ca71d5-4ebb-461d-b35c-d83a90681c34',NULL),('fd041e9e-8323-45d0-b9a8-5fc51434840f','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_create-client}','create-client','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('fd19f8b8-91ab-42df-ac5a-609d34572a74','b70f7166-5c1f-4d65-a11a-12984cf2033d',1,'${role_manage-events}','manage-events','34551b50-154e-45d3-a330-d06cf0168fb9','b70f7166-5c1f-4d65-a11a-12984cf2033d',NULL),('fda30a7a-71d8-468b-8abf-e73c5e5e5458','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',1,NULL,'_ws3-admin','org5','d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd',NULL),('fe79fa6c-d981-4fe7-89a5-63c9a251a004','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1,'${role_impersonation}','impersonation','34551b50-154e-45d3-a330-d06cf0168fb9','e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',NULL),('fe939665-3c16-4d1d-9b14-6904b79be530','org1',0,'${role_offline-access}','offline_access','org1',NULL,NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('ffevn','24.0.5',1720055119);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('01456d04-ca55-4729-9eab-4d1a0fca14f4','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'da261f6e-d8b2-4771-827c-e61680bf5ea5'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'6a8a2408-0eba-4034-b1ff-3e506471432e'),('01b44c9f-2ba1-423a-bafc-a32be7b65831','audience resolve','openid-connect','oidc-audience-resolve-mapper','af9f4fad-edcc-40d4-9a71-58252b58156c',NULL),('02e8e3bf-8ed3-4f70-b4e7-1ef88d70eb88','acr loa level','openid-connect','oidc-acr-mapper',NULL,'a6561aba-bdf2-4519-a506-e5847c1fb68c'),('03fa882f-4a78-4825-8249-d6567239b264','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'48a9167c-c90e-41a0-8777-4eeb10ae2a2c'),('04f5caf5-8a8d-4095-9775-64e114d4451b','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','1e661719-8161-4c86-b686-a215cbcff768',NULL),('05b9765e-d2a7-41d3-b2c4-7b13146be112','full name','openid-connect','oidc-full-name-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'904274c0-627c-4374-92a4-d166a00cfc31'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('0818a8ad-c3f7-4bb2-8103-8b058ea70e35','acr loa level','openid-connect','oidc-acr-mapper',NULL,'948c3767-493f-447e-9e2e-04c6c43c898e'),('0bf286b1-fa1c-4a25-b127-d621ef068ccf','role list','saml','saml-role-list-mapper',NULL,'702b9481-ba44-4b3e-b501-49ca2a6ba554'),('0e341ba0-88ce-4c38-b372-66b3e823f16f','full name','openid-connect','oidc-full-name-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('115e7334-232f-4ca7-b7f8-ba848489ee34','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ee9e9b60-1ab1-4c23-98a0-60930144fb23'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2eaf68d2-51f3-40f5-9016-89751c8461b7'),('121b399c-a320-43fd-b072-a2c22f94736a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('141d89c3-d885-4b2c-a68f-d98b04d12753','address','openid-connect','oidc-address-mapper',NULL,'aebfcd6c-bdf1-4478-8746-34ebee0fe7be'),('1455cac1-9768-4238-9afe-bad2902a128e','address','openid-connect','oidc-address-mapper',NULL,'8e7d3ae1-1b68-4a70-950e-0927c04db50c'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('1b4523d9-250c-4f5a-af43-d30381249150','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'16284508-1841-419d-8345-9793b63afbdc'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('1e383a76-0309-4632-89e9-8b2c0ba40345','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'38e80701-348c-4a01-bc78-ec8b2ca23457'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a99b0263-e5dd-4556-bf8b-b3113a8d516b'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('2575c309-ad74-486f-8245-8774d4753acf','locale','openid-connect','oidc-usermodel-attribute-mapper','6f99307f-1aad-4431-8856-afe93d965996',NULL),('27c6640e-e67c-4952-864d-dd9f1b570b4f','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('2b2fc8b9-eeea-427a-a523-1430154babcb','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'3a703d8c-b695-4ffa-80b6-59c25b2e42b2'),('2b7d306a-e992-488a-b0af-750ba4204827','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'ef27cdf0-b272-4a95-875d-57feaaac0cba'),('2ba20637-fe6c-4965-a3b6-6e577f2c0b73','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c641b253-e4c8-4b3e-a8a2-c3b398643520'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('2ed009c5-c92b-423c-926b-8427e85e2c32','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2eaf68d2-51f3-40f5-9016-89751c8461b7'),('300aac15-db91-4635-8268-f37d65bba2b6','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('3061da1e-5c39-416e-a228-a5efce917548','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'ee9e9b60-1ab1-4c23-98a0-60930144fb23'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('326acf1b-7460-4aee-a123-9db6789d33f0','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ef27cdf0-b272-4a95-875d-57feaaac0cba'),('36962261-0684-4262-99ff-53a050e7ca55','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6a8a2408-0eba-4034-b1ff-3e506471432e'),('395b705a-4f74-4526-ad8c-6a747b4e4306','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5d39b903-a532-4087-ae4d-b98d5c4ea300'),('3b186735-41d4-497c-93ab-674762ac7a84','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'48a9167c-c90e-41a0-8777-4eeb10ae2a2c'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('3de2b295-e917-4320-82da-b999b19f2443','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('42081be6-9a84-4ef1-ad21-91b45913595f','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5f2402bf-e69d-4cda-a30b-526260371ffc'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('432ebb7d-2fde-4741-ab50-3f7971928dda','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('46d2d6e5-6503-4930-9996-4c89639b1a10','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'16284508-1841-419d-8345-9793b63afbdc'),('47550065-db82-4be3-91ec-0d0158357e4e','locale','openid-connect','oidc-usermodel-attribute-mapper','3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8',NULL),('4ccea148-5d3e-4ed4-8ebb-255934c70f4f','full name','openid-connect','oidc-full-name-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('5026b38a-f880-4d79-aa95-8a554e8d3142','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('50861319-f969-4d20-b0cc-a348ed428f89','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('50fc437d-502f-4e43-8a38-ea2be9869d2e','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'ee9e9b60-1ab1-4c23-98a0-60930144fb23'),('528afa41-1573-4e80-b20e-a7b9b7934611','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('54217d81-a8da-4935-9e0c-f0b7dea42442','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e9ae4da4-d4c1-49c1-a22f-4f44602a4d06'),('583aeb18-9a92-4174-ac6b-9907c7532030','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c2d3658-3271-4e11-83df-475b4ae7dd02'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('5c8c7708-8801-46f6-a112-edeca0437f6d','audience resolve','openid-connect','oidc-audience-resolve-mapper','607de3b9-158a-4754-8db6-e7f58142e546',NULL),('5dd772dc-4f2d-491f-9435-43755c813b2d','address','openid-connect','oidc-address-mapper',NULL,'f8548ba1-567c-44be-88a3-5d7c5e0a0dfb'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('6172e35d-59c6-4813-94c9-3602a25b78ae','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('61e94246-5b28-4c5f-be99-6acd356037d0','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'4955e71e-fcbd-44c2-97e3-4666ec30d512'),('61f33c2b-fb56-4155-a238-330365fbe3eb','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('66256e23-7331-4bfb-ace8-8bde541f59df','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a99b0263-e5dd-4556-bf8b-b3113a8d516b'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('673c984f-7b7d-40dc-beac-c2a5efafb549','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5c2d3658-3271-4e11-83df-475b4ae7dd02'),('6a27073a-be37-42db-b86e-0130f67e75d3','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('6af4f6da-7de0-4f93-aedb-484a116c1781','role list','saml','saml-role-list-mapper',NULL,'3b300991-fd10-40c1-9d96-33402715e467'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'4a2d48bb-6f3c-4d80-b611-ead5caa4811b'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','323db795-227a-46f6-bdde-d509c310ef10',NULL),('719337bd-a041-46f0-bb8e-9af760ab1dcf','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'dfb4aff2-3857-4efb-b44e-07dfd2bd2604'),('732908bd-f996-4f40-ad34-acb82d96e3db','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('75828061-36dc-43ff-9145-67283e81da23','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('77cf464c-298a-4cce-ac42-6bf7affc7ada','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'77134219-b889-4735-ae4c-c74ad6d0a659'),('789809e6-95e5-417d-ac7e-8c0b725eb6d6','role list','saml','saml-role-list-mapper',NULL,'52656537-4b7e-4b5a-a422-bbb7ff4a1ca8'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'868c4866-f7ca-421b-9b53-db0309911ebd'),('7b776162-ee7f-4820-825f-86c191a84860','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'5d39b903-a532-4087-ae4d-b98d5c4ea300'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('80a4bba1-b329-4146-9fe2-b58c158e245c','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('80b7a1c2-6ccb-49cb-b90c-a2707c910b9e','acr loa level','openid-connect','oidc-acr-mapper',NULL,'084eb5c9-9b38-475e-b44d-2f9e9d19baca'),('80d445e0-9ec3-45cc-8917-34507370bc01','audience resolve','openid-connect','oidc-audience-resolve-mapper','dc110ff3-a6b6-4692-b512-cfae6a79d9a6',NULL),('8224fc8b-61de-4497-bb43-80dd08524d58','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5a517b6-e988-4cc4-ac64-2011b13f6a79'),('8384c9f3-4567-41b1-8296-04ff94455ad0','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('84318142-8728-478e-b8ac-1f0938ae7e9d','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e63a6b11-fabc-4926-b428-3274b077c6fd'),('84334a72-1960-452d-8130-6c8d26d1c3e2','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('84707a9d-305a-4118-98fb-d8afe930d029','locale','openid-connect','oidc-usermodel-attribute-mapper','2b14a607-36f6-4465-aa57-9d7cf52372d6',NULL),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'83394525-a8bf-4b2f-8ffc-a35a2f6eeee6'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('8dd56a06-541b-48f1-8044-1926045d5385','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'503018eb-526e-46f9-9c03-44a40f5e3c35'),('8f5472e8-a6cd-4504-b923-caffd590416f','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('9102671e-0c72-49f9-af55-86d74b538311','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'e63a6b11-fabc-4926-b428-3274b077c6fd'),('9337e864-dfab-4d26-a150-9b4c936f7a80','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('96284444-561f-4990-a691-a20b9cfe610a','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f1e33a9b-110a-4e09-981d-c7c647d4bc10'),('967eccac-3113-401c-9924-51f610f1ef75','role list','saml','saml-role-list-mapper',NULL,'bfe04e22-8610-4423-89e2-7404bd411b89'),('981099c4-f316-4008-9657-516b66f66312','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'eee8daea-921a-4e3f-b6bb-d88e582a7db4'),('98b93287-90fb-4b34-b51a-e1fdfbafb0d9','full name','openid-connect','oidc-full-name-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('99cb503d-2511-4184-b843-b8a0b368b2c1','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'83394525-a8bf-4b2f-8ffc-a35a2f6eeee6'),('9b8f6d74-989d-461a-a649-bb889d60115d','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'868c4866-f7ca-421b-9b53-db0309911ebd'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'da261f6e-d8b2-4771-827c-e61680bf5ea5'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('a3d782b6-2cb9-4672-a088-01530dc4b329','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'4a2d48bb-6f3c-4d80-b611-ead5caa4811b'),('a4839fec-0401-4bd9-83f8-e6fe2f7021d0','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c30b0ca8-0f83-456a-a4da-3a28517a96ac'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('a611f415-b4dc-44f1-8ad9-fa071b124b88','acr loa level','openid-connect','oidc-acr-mapper',NULL,'1fab0c38-384d-4153-8ced-0d3bfe6203c1'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','address','openid-connect','oidc-address-mapper',NULL,'0229bb30-5047-453a-8c72-5f80de7cda5b'),('a99e673a-ceff-439b-bdef-93fca7133c1d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('af687373-7b04-4b19-86d8-419ca5b55d50','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('b2d71be7-042c-4d33-b645-f0e03790bd80','address','openid-connect','oidc-address-mapper',NULL,'2907c890-1744-4034-a206-a63f8c066f4b'),('b4ee2683-c06b-4391-be48-baffdbb2cbc0','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'14e91b1b-afd0-4fec-95da-ec5ca67e2c2e'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('b53b3fb0-7683-4b4c-bece-2fdce5e5a925','acr loa level','openid-connect','oidc-acr-mapper',NULL,'8daf557e-1806-4c96-b455-68b064dfc501'),('b5579994-64c5-4e2a-8f50-cb369301f86f','role list','saml','saml-role-list-mapper',NULL,'47ced235-4c6a-4545-a6af-f89788835c16'),('b6198a53-09fa-405c-9996-555ee4143ada','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','323db795-227a-46f6-bdde-d509c310ef10',NULL),('b63c327f-67f6-422c-837f-9118be434155','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('b75e74e9-d8cd-4135-ae37-a54ccc4a1ea3','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'e63a6b11-fabc-4926-b428-3274b077c6fd'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'e5a517b6-e988-4cc4-ac64-2011b13f6a79'),('b8429f13-dfda-424d-ac22-a9c35e5f9155','full name','openid-connect','oidc-full-name-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('b87c1414-7ae7-430f-9278-d25183f216af','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dfb4aff2-3857-4efb-b44e-07dfd2bd2604'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','064213d5-bf33-4ac5-b7be-eea67610f415',NULL),('c05e6be7-3986-492d-8b92-1e1d06c1e731','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'5f2402bf-e69d-4cda-a30b-526260371ffc'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('c7e7d2cf-8001-4beb-ae67-d35fb8c84962','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'f1e33a9b-110a-4e09-981d-c7c647d4bc10'),('cd74b847-7384-4075-9c79-bbb7dad6a694','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fafe85a-264e-459c-bd2c-06c40c125269'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','address','openid-connect','oidc-address-mapper',NULL,'18893819-c9ba-4768-86ab-d39bb2b68faa'),('cdff48ed-915d-4f3f-9198-a13cf576789a','role list','saml','saml-role-list-mapper',NULL,'efade8d7-f56b-40d7-87a6-5a9cca3baed0'),('ce1b6f11-e03a-404c-a634-dc89e8906404','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'191319ef-7076-4f6e-83aa-4ae7666b0c60'),('cf53b2fd-1195-44b7-9199-18236dee5c84','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','323db795-227a-46f6-bdde-d509c310ef10',NULL),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fafe85a-264e-459c-bd2c-06c40c125269'),('d0065b81-32fa-412b-9d90-be9921742313','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('d025889c-edb0-4468-a409-4c4a6d062eae','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'f1e33a9b-110a-4e09-981d-c7c647d4bc10'),('d06a4a87-112f-4760-9078-97cd42c4f5cc','acr loa level','openid-connect','oidc-acr-mapper',NULL,'860c535a-7def-4498-a63a-e0b88eacc48b'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'38e80701-348c-4a01-bc78-ec8b2ca23457'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','locale','openid-connect','oidc-usermodel-attribute-mapper','90c703cb-e94f-4cc5-847c-95cfc1e84846',NULL),('d4412745-4175-4e17-b4ea-20e1ab894a84','audience resolve','openid-connect','oidc-audience-resolve-mapper','03f0f2ad-f94e-4e04-9227-a246a29c1a88',NULL),('d690171b-4905-4b58-b4b6-24705fbd7b4a','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'eee8daea-921a-4e3f-b6bb-d88e582a7db4'),('d75540a1-c065-4286-9b8d-dc964697a3f4','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'4a2d48bb-6f3c-4d80-b611-ead5caa4811b'),('d833730a-14b2-4633-a4f7-3b02be24765f','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'904274c0-627c-4374-92a4-d166a00cfc31'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cf50e063-61d5-4c05-9172-20acd423ff7e'),('de4a60e3-5396-45ca-9a90-1693dd7ebf92','audience resolve','openid-connect','oidc-audience-resolve-mapper','a2a40da7-56ca-4059-8a70-291064b5d6b0',NULL),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','a38acb55-dd09-4a1d-a9e3-9d2811351c30',NULL),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5'),('e8aadbb5-506d-4767-a131-135a3e87b637','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','1e661719-8161-4c86-b686-a215cbcff768',NULL),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','19f88bac-766a-42e7-8df2-e247cd3f10bf',NULL),('eaebee61-b19f-4f42-a108-9161afeea281','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'503018eb-526e-46f9-9c03-44a40f5e3c35'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','1e661719-8161-4c86-b686-a215cbcff768',NULL),('eb7d2003-3693-4791-ab0b-6482c863412e','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'48a9167c-c90e-41a0-8777-4eeb10ae2a2c'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3d225d1b-48f1-4d0e-b047-3743b2bcc1cf'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','c4dc76fb-a8ec-4565-b899-384117fcb403',NULL),('f17cd4e2-306f-44b0-98ac-b8547f817c20','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('f426e71c-cdb1-4ca3-b059-561b1c631778','locale','openid-connect','oidc-usermodel-attribute-mapper','6323d17f-f227-430a-97da-ec6103441167',NULL),('f4517df0-acbb-4050-829b-a74b42ef4f6f','full name','openid-connect','oidc-full-name-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4b35a5ec-f1a9-40a8-8349-76af269b4059'),('f838603b-a055-41e1-80b7-a940d4cbf062','audience resolve','openid-connect','oidc-audience-resolve-mapper','14fc82f2-c9d0-4a4e-867a-da8b620b0e96',NULL),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'080b090a-e83e-495b-8f4c-623af9e790cf'),('f96885c2-a722-42b5-8d75-977c2542ab24','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'eee8daea-921a-4e3f-b6bb-d88e582a7db4'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'e9ae4da4-d4c1-49c1-a22f-4f44602a4d06'),('ff426cfd-b31b-4dda-9041-53804db4932b','locale','openid-connect','oidc-usermodel-attribute-mapper','4d9fbca2-b670-49f6-97fa-0403247f12f7',NULL),('ff8d0d20-bc3b-4e68-9656-0591823590e3','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'62a04cce-d3b0-4c8d-8ff7-3e83f3b46ad5');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('01456d04-ca55-4729-9eab-4d1a0fca14f4','true','access.token.claim'),('01456d04-ca55-4729-9eab-4d1a0fca14f4','email_verified','claim.name'),('01456d04-ca55-4729-9eab-4d1a0fca14f4','true','id.token.claim'),('01456d04-ca55-4729-9eab-4d1a0fca14f4','true','introspection.token.claim'),('01456d04-ca55-4729-9eab-4d1a0fca14f4','boolean','jsonType.label'),('01456d04-ca55-4729-9eab-4d1a0fca14f4','emailVerified','user.attribute'),('01456d04-ca55-4729-9eab-4d1a0fca14f4','true','userinfo.token.claim'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','true','access.token.claim'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','email_verified','claim.name'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','true','id.token.claim'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','true','introspection.token.claim'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','boolean','jsonType.label'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','emailVerified','user.attribute'),('0151e8bc-5fac-4d8d-9545-24a16f5ede2c','true','userinfo.token.claim'),('02e8e3bf-8ed3-4f70-b4e7-1ef88d70eb88','true','access.token.claim'),('02e8e3bf-8ed3-4f70-b4e7-1ef88d70eb88','true','id.token.claim'),('02e8e3bf-8ed3-4f70-b4e7-1ef88d70eb88','true','introspection.token.claim'),('03fa882f-4a78-4825-8249-d6567239b264','true','access.token.claim'),('03fa882f-4a78-4825-8249-d6567239b264','true','introspection.token.claim'),('04f5caf5-8a8d-4095-9775-64e114d4451b','true','access.token.claim'),('04f5caf5-8a8d-4095-9775-64e114d4451b','clientAddress','claim.name'),('04f5caf5-8a8d-4095-9775-64e114d4451b','true','id.token.claim'),('04f5caf5-8a8d-4095-9775-64e114d4451b','String','jsonType.label'),('04f5caf5-8a8d-4095-9775-64e114d4451b','clientAddress','user.session.note'),('04f5caf5-8a8d-4095-9775-64e114d4451b','true','userinfo.token.claim'),('05b9765e-d2a7-41d3-b2c4-7b13146be112','true','access.token.claim'),('05b9765e-d2a7-41d3-b2c4-7b13146be112','true','id.token.claim'),('05b9765e-d2a7-41d3-b2c4-7b13146be112','true','introspection.token.claim'),('05b9765e-d2a7-41d3-b2c4-7b13146be112','true','userinfo.token.claim'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','true','access.token.claim'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','groups','claim.name'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','true','id.token.claim'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','true','introspection.token.claim'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','String','jsonType.label'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','true','multivalued'),('05c0cc43-ab8b-4a18-8234-2857cd4c97b3','foo','user.attribute'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','true','access.token.claim'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','profile','claim.name'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','true','id.token.claim'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','true','introspection.token.claim'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','String','jsonType.label'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','profile','user.attribute'),('075b78f5-dcd6-4573-a7b7-57c07c529cf5','true','userinfo.token.claim'),('0818a8ad-c3f7-4bb2-8103-8b058ea70e35','true','access.token.claim'),('0818a8ad-c3f7-4bb2-8103-8b058ea70e35','true','id.token.claim'),('0818a8ad-c3f7-4bb2-8103-8b058ea70e35','true','introspection.token.claim'),('0bf286b1-fa1c-4a25-b127-d621ef068ccf','Role','attribute.name'),('0bf286b1-fa1c-4a25-b127-d621ef068ccf','Basic','attribute.nameformat'),('0bf286b1-fa1c-4a25-b127-d621ef068ccf','false','single'),('0e341ba0-88ce-4c38-b372-66b3e823f16f','true','access.token.claim'),('0e341ba0-88ce-4c38-b372-66b3e823f16f','true','id.token.claim'),('0e341ba0-88ce-4c38-b372-66b3e823f16f','true','introspection.token.claim'),('0e341ba0-88ce-4c38-b372-66b3e823f16f','true','userinfo.token.claim'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','true','access.token.claim'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','gender','claim.name'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','true','id.token.claim'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','true','introspection.token.claim'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','String','jsonType.label'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','gender','user.attribute'),('0e455cbb-a97f-44b9-8445-172a3bd0912d','true','userinfo.token.claim'),('115e7334-232f-4ca7-b7f8-ba848489ee34','true','access.token.claim'),('115e7334-232f-4ca7-b7f8-ba848489ee34','realm_access.roles','claim.name'),('115e7334-232f-4ca7-b7f8-ba848489ee34','true','introspection.token.claim'),('115e7334-232f-4ca7-b7f8-ba848489ee34','String','jsonType.label'),('115e7334-232f-4ca7-b7f8-ba848489ee34','true','multivalued'),('115e7334-232f-4ca7-b7f8-ba848489ee34','foo','user.attribute'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','true','access.token.claim'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','phone_number','claim.name'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','true','id.token.claim'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','true','introspection.token.claim'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','String','jsonType.label'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','phoneNumber','user.attribute'),('11d69b6a-47a8-49fb-8371-0b42386ffa36','true','userinfo.token.claim'),('121b399c-a320-43fd-b072-a2c22f94736a','true','access.token.claim'),('121b399c-a320-43fd-b072-a2c22f94736a','middle_name','claim.name'),('121b399c-a320-43fd-b072-a2c22f94736a','true','id.token.claim'),('121b399c-a320-43fd-b072-a2c22f94736a','true','introspection.token.claim'),('121b399c-a320-43fd-b072-a2c22f94736a','String','jsonType.label'),('121b399c-a320-43fd-b072-a2c22f94736a','middleName','user.attribute'),('121b399c-a320-43fd-b072-a2c22f94736a','true','userinfo.token.claim'),('141d89c3-d885-4b2c-a68f-d98b04d12753','true','access.token.claim'),('141d89c3-d885-4b2c-a68f-d98b04d12753','true','id.token.claim'),('141d89c3-d885-4b2c-a68f-d98b04d12753','true','introspection.token.claim'),('141d89c3-d885-4b2c-a68f-d98b04d12753','country','user.attribute.country'),('141d89c3-d885-4b2c-a68f-d98b04d12753','formatted','user.attribute.formatted'),('141d89c3-d885-4b2c-a68f-d98b04d12753','locality','user.attribute.locality'),('141d89c3-d885-4b2c-a68f-d98b04d12753','postal_code','user.attribute.postal_code'),('141d89c3-d885-4b2c-a68f-d98b04d12753','region','user.attribute.region'),('141d89c3-d885-4b2c-a68f-d98b04d12753','street','user.attribute.street'),('141d89c3-d885-4b2c-a68f-d98b04d12753','true','userinfo.token.claim'),('1455cac1-9768-4238-9afe-bad2902a128e','true','access.token.claim'),('1455cac1-9768-4238-9afe-bad2902a128e','true','id.token.claim'),('1455cac1-9768-4238-9afe-bad2902a128e','true','introspection.token.claim'),('1455cac1-9768-4238-9afe-bad2902a128e','country','user.attribute.country'),('1455cac1-9768-4238-9afe-bad2902a128e','formatted','user.attribute.formatted'),('1455cac1-9768-4238-9afe-bad2902a128e','locality','user.attribute.locality'),('1455cac1-9768-4238-9afe-bad2902a128e','postal_code','user.attribute.postal_code'),('1455cac1-9768-4238-9afe-bad2902a128e','region','user.attribute.region'),('1455cac1-9768-4238-9afe-bad2902a128e','street','user.attribute.street'),('1455cac1-9768-4238-9afe-bad2902a128e','true','userinfo.token.claim'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','true','access.token.claim'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','website','claim.name'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','true','id.token.claim'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','true','introspection.token.claim'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','String','jsonType.label'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','website','user.attribute'),('14e4cb23-4591-4fb8-ab9e-7eb3936800ab','true','userinfo.token.claim'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','true','access.token.claim'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','middle_name','claim.name'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','true','id.token.claim'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','true','introspection.token.claim'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','String','jsonType.label'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','middleName','user.attribute'),('1794a989-986d-4a7e-b3bf-58289d7b40fc','true','userinfo.token.claim'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','true','access.token.claim'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','clientAddress','claim.name'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','true','id.token.claim'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','String','jsonType.label'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','clientAddress','user.session.note'),('19c35bbd-a57d-4988-8bd5-b453e1f0c409','true','userinfo.token.claim'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','true','access.token.claim'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','locale','claim.name'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','true','id.token.claim'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','true','introspection.token.claim'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','String','jsonType.label'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','locale','user.attribute'),('1ae4bf91-ac1a-4eb0-af15-94abb65d88aa','true','userinfo.token.claim'),('1b4523d9-250c-4f5a-af43-d30381249150','true','access.token.claim'),('1b4523d9-250c-4f5a-af43-d30381249150','phone_number','claim.name'),('1b4523d9-250c-4f5a-af43-d30381249150','true','id.token.claim'),('1b4523d9-250c-4f5a-af43-d30381249150','true','introspection.token.claim'),('1b4523d9-250c-4f5a-af43-d30381249150','String','jsonType.label'),('1b4523d9-250c-4f5a-af43-d30381249150','phoneNumber','user.attribute'),('1b4523d9-250c-4f5a-af43-d30381249150','true','userinfo.token.claim'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','true','access.token.claim'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','nickname','claim.name'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','true','id.token.claim'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','true','introspection.token.claim'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','String','jsonType.label'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','nickname','user.attribute'),('1b92a54a-fbe6-4a1b-8d18-7e97340526ca','true','userinfo.token.claim'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','true','access.token.claim'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','clientHost','claim.name'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','true','id.token.claim'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','String','jsonType.label'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','clientHost','user.session.note'),('1d2cf6b9-9866-447e-a500-3fbbb9878994','true','userinfo.token.claim'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','true','access.token.claim'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','given_name','claim.name'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','true','id.token.claim'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','true','introspection.token.claim'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','String','jsonType.label'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','firstName','user.attribute'),('1df76b80-f102-4ba0-9541-fa9ab8ad14d3','true','userinfo.token.claim'),('1e383a76-0309-4632-89e9-8b2c0ba40345','true','access.token.claim'),('1e383a76-0309-4632-89e9-8b2c0ba40345','upn','claim.name'),('1e383a76-0309-4632-89e9-8b2c0ba40345','true','id.token.claim'),('1e383a76-0309-4632-89e9-8b2c0ba40345','true','introspection.token.claim'),('1e383a76-0309-4632-89e9-8b2c0ba40345','String','jsonType.label'),('1e383a76-0309-4632-89e9-8b2c0ba40345','username','user.attribute'),('1e383a76-0309-4632-89e9-8b2c0ba40345','true','userinfo.token.claim'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','true','access.token.claim'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','phone_number_verified','claim.name'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','true','id.token.claim'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','true','introspection.token.claim'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','boolean','jsonType.label'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','phoneNumberVerified','user.attribute'),('20d307a0-8e28-4ee7-8970-2b6171c89e47','true','userinfo.token.claim'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','true','access.token.claim'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','gender','claim.name'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','true','id.token.claim'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','true','introspection.token.claim'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','String','jsonType.label'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','gender','user.attribute'),('22593b9d-6dc9-406f-8f56-ffc665b8972a','true','userinfo.token.claim'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','true','access.token.claim'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','zoneinfo','claim.name'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','true','id.token.claim'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','true','introspection.token.claim'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','String','jsonType.label'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','zoneinfo','user.attribute'),('238e5b05-329e-4242-a42e-dc8a2dc45a1f','true','userinfo.token.claim'),('2575c309-ad74-486f-8245-8774d4753acf','true','access.token.claim'),('2575c309-ad74-486f-8245-8774d4753acf','locale','claim.name'),('2575c309-ad74-486f-8245-8774d4753acf','true','id.token.claim'),('2575c309-ad74-486f-8245-8774d4753acf','true','introspection.token.claim'),('2575c309-ad74-486f-8245-8774d4753acf','String','jsonType.label'),('2575c309-ad74-486f-8245-8774d4753acf','locale','user.attribute'),('2575c309-ad74-486f-8245-8774d4753acf','true','userinfo.token.claim'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','true','access.token.claim'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','family_name','claim.name'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','true','id.token.claim'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','true','introspection.token.claim'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','String','jsonType.label'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','lastName','user.attribute'),('27c6640e-e67c-4952-864d-dd9f1b570b4f','true','userinfo.token.claim'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','true','access.token.claim'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','gender','claim.name'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','true','id.token.claim'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','true','introspection.token.claim'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','String','jsonType.label'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','gender','user.attribute'),('298c238a-15b0-4b7e-ba92-75e7ce097ce4','true','userinfo.token.claim'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','true','access.token.claim'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','profile','claim.name'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','true','id.token.claim'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','true','introspection.token.claim'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','String','jsonType.label'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','profile','user.attribute'),('2a8d9dbc-ed6d-4f80-93d7-fc582633e30b','true','userinfo.token.claim'),('2b2fc8b9-eeea-427a-a523-1430154babcb','true','access.token.claim'),('2b2fc8b9-eeea-427a-a523-1430154babcb','true','introspection.token.claim'),('2b7d306a-e992-488a-b0af-750ba4204827','true','access.token.claim'),('2b7d306a-e992-488a-b0af-750ba4204827','given_name','claim.name'),('2b7d306a-e992-488a-b0af-750ba4204827','true','id.token.claim'),('2b7d306a-e992-488a-b0af-750ba4204827','true','introspection.token.claim'),('2b7d306a-e992-488a-b0af-750ba4204827','String','jsonType.label'),('2b7d306a-e992-488a-b0af-750ba4204827','firstName','user.attribute'),('2b7d306a-e992-488a-b0af-750ba4204827','true','userinfo.token.claim'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','true','access.token.claim'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','upn','claim.name'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','true','id.token.claim'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','true','introspection.token.claim'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','String','jsonType.label'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','username','user.attribute'),('2b92886e-b0d9-4635-afc9-a15f20e95b64','true','userinfo.token.claim'),('2ba20637-fe6c-4965-a3b6-6e577f2c0b73','true','access.token.claim'),('2ba20637-fe6c-4965-a3b6-6e577f2c0b73','true','introspection.token.claim'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','true','access.token.claim'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','birthdate','claim.name'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','true','id.token.claim'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','true','introspection.token.claim'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','String','jsonType.label'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','birthdate','user.attribute'),('2ea9a204-0a39-4fe3-95dd-ffc344a489da','true','userinfo.token.claim'),('2ed009c5-c92b-423c-926b-8427e85e2c32','true','access.token.claim'),('2ed009c5-c92b-423c-926b-8427e85e2c32','preferred_username','claim.name'),('2ed009c5-c92b-423c-926b-8427e85e2c32','true','id.token.claim'),('2ed009c5-c92b-423c-926b-8427e85e2c32','true','introspection.token.claim'),('2ed009c5-c92b-423c-926b-8427e85e2c32','String','jsonType.label'),('2ed009c5-c92b-423c-926b-8427e85e2c32','username','user.attribute'),('2ed009c5-c92b-423c-926b-8427e85e2c32','true','userinfo.token.claim'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','true','access.token.claim'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','phone_number_verified','claim.name'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','true','id.token.claim'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','true','introspection.token.claim'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','boolean','jsonType.label'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','phoneNumberVerified','user.attribute'),('2f4e32d2-43ca-4627-9a80-27a30a3ff839','true','userinfo.token.claim'),('300aac15-db91-4635-8268-f37d65bba2b6','true','access.token.claim'),('300aac15-db91-4635-8268-f37d65bba2b6','birthdate','claim.name'),('300aac15-db91-4635-8268-f37d65bba2b6','true','id.token.claim'),('300aac15-db91-4635-8268-f37d65bba2b6','true','introspection.token.claim'),('300aac15-db91-4635-8268-f37d65bba2b6','String','jsonType.label'),('300aac15-db91-4635-8268-f37d65bba2b6','birthdate','user.attribute'),('300aac15-db91-4635-8268-f37d65bba2b6','true','userinfo.token.claim'),('3061da1e-5c39-416e-a228-a5efce917548','true','access.token.claim'),('3061da1e-5c39-416e-a228-a5efce917548','resource_access.${client_id}.roles','claim.name'),('3061da1e-5c39-416e-a228-a5efce917548','true','introspection.token.claim'),('3061da1e-5c39-416e-a228-a5efce917548','String','jsonType.label'),('3061da1e-5c39-416e-a228-a5efce917548','true','multivalued'),('3061da1e-5c39-416e-a228-a5efce917548','foo','user.attribute'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','true','access.token.claim'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','profile','claim.name'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','true','id.token.claim'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','true','introspection.token.claim'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','String','jsonType.label'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','profile','user.attribute'),('3109e7cc-5883-472d-bc61-4bcc2265f3a4','true','userinfo.token.claim'),('326acf1b-7460-4aee-a123-9db6789d33f0','true','access.token.claim'),('326acf1b-7460-4aee-a123-9db6789d33f0','profile','claim.name'),('326acf1b-7460-4aee-a123-9db6789d33f0','true','id.token.claim'),('326acf1b-7460-4aee-a123-9db6789d33f0','true','introspection.token.claim'),('326acf1b-7460-4aee-a123-9db6789d33f0','String','jsonType.label'),('326acf1b-7460-4aee-a123-9db6789d33f0','profile','user.attribute'),('326acf1b-7460-4aee-a123-9db6789d33f0','true','userinfo.token.claim'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','true','access.token.claim'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','groups','claim.name'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','true','id.token.claim'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','true','introspection.token.claim'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','String','jsonType.label'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','true','multivalued'),('365b215b-cb31-44f2-b9ea-a7e5aeee3665','foo','user.attribute'),('36962261-0684-4262-99ff-53a050e7ca55','true','access.token.claim'),('36962261-0684-4262-99ff-53a050e7ca55','email','claim.name'),('36962261-0684-4262-99ff-53a050e7ca55','true','id.token.claim'),('36962261-0684-4262-99ff-53a050e7ca55','true','introspection.token.claim'),('36962261-0684-4262-99ff-53a050e7ca55','String','jsonType.label'),('36962261-0684-4262-99ff-53a050e7ca55','email','user.attribute'),('36962261-0684-4262-99ff-53a050e7ca55','true','userinfo.token.claim'),('395b705a-4f74-4526-ad8c-6a747b4e4306','true','access.token.claim'),('395b705a-4f74-4526-ad8c-6a747b4e4306','upn','claim.name'),('395b705a-4f74-4526-ad8c-6a747b4e4306','true','id.token.claim'),('395b705a-4f74-4526-ad8c-6a747b4e4306','true','introspection.token.claim'),('395b705a-4f74-4526-ad8c-6a747b4e4306','String','jsonType.label'),('395b705a-4f74-4526-ad8c-6a747b4e4306','username','user.attribute'),('395b705a-4f74-4526-ad8c-6a747b4e4306','true','userinfo.token.claim'),('3b186735-41d4-497c-93ab-674762ac7a84','true','access.token.claim'),('3b186735-41d4-497c-93ab-674762ac7a84','clientId','claim.name'),('3b186735-41d4-497c-93ab-674762ac7a84','true','id.token.claim'),('3b186735-41d4-497c-93ab-674762ac7a84','String','jsonType.label'),('3b186735-41d4-497c-93ab-674762ac7a84','clientId','user.session.note'),('3b186735-41d4-497c-93ab-674762ac7a84','true','userinfo.token.claim'),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','true','access.token.claim'),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','resource_access.${client_id}.roles','claim.name'),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','true','introspection.token.claim'),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','String','jsonType.label'),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','true','multivalued'),('3baf5945-d264-42b1-9a1d-c98b62f48f4b','foo','user.attribute'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','true','access.token.claim'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','preferred_username','claim.name'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','true','id.token.claim'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','true','introspection.token.claim'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','String','jsonType.label'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','username','user.attribute'),('3bdd4b15-dc1c-4aa3-9f45-c36aac7af34c','true','userinfo.token.claim'),('3de2b295-e917-4320-82da-b999b19f2443','true','access.token.claim'),('3de2b295-e917-4320-82da-b999b19f2443','preferred_username','claim.name'),('3de2b295-e917-4320-82da-b999b19f2443','true','id.token.claim'),('3de2b295-e917-4320-82da-b999b19f2443','true','introspection.token.claim'),('3de2b295-e917-4320-82da-b999b19f2443','String','jsonType.label'),('3de2b295-e917-4320-82da-b999b19f2443','username','user.attribute'),('3de2b295-e917-4320-82da-b999b19f2443','true','userinfo.token.claim'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','true','access.token.claim'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','clientId','claim.name'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','true','id.token.claim'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','String','jsonType.label'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','clientId','user.session.note'),('3e8fd2f7-aa03-4cee-bbba-41381a21df95','true','userinfo.token.claim'),('42081be6-9a84-4ef1-ad21-91b45913595f','true','access.token.claim'),('42081be6-9a84-4ef1-ad21-91b45913595f','upn','claim.name'),('42081be6-9a84-4ef1-ad21-91b45913595f','true','id.token.claim'),('42081be6-9a84-4ef1-ad21-91b45913595f','true','introspection.token.claim'),('42081be6-9a84-4ef1-ad21-91b45913595f','String','jsonType.label'),('42081be6-9a84-4ef1-ad21-91b45913595f','username','user.attribute'),('42081be6-9a84-4ef1-ad21-91b45913595f','true','userinfo.token.claim'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','true','access.token.claim'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','updated_at','claim.name'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','true','id.token.claim'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','true','introspection.token.claim'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','long','jsonType.label'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','updatedAt','user.attribute'),('431cc630-165a-40fd-bc2b-c9b71e44fb75','true','userinfo.token.claim'),('432ebb7d-2fde-4741-ab50-3f7971928dda','true','access.token.claim'),('432ebb7d-2fde-4741-ab50-3f7971928dda','website','claim.name'),('432ebb7d-2fde-4741-ab50-3f7971928dda','true','id.token.claim'),('432ebb7d-2fde-4741-ab50-3f7971928dda','true','introspection.token.claim'),('432ebb7d-2fde-4741-ab50-3f7971928dda','String','jsonType.label'),('432ebb7d-2fde-4741-ab50-3f7971928dda','website','user.attribute'),('432ebb7d-2fde-4741-ab50-3f7971928dda','true','userinfo.token.claim'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','true','access.token.claim'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','zoneinfo','claim.name'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','true','id.token.claim'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','true','introspection.token.claim'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','String','jsonType.label'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','zoneinfo','user.attribute'),('46ab42d1-1ef0-4598-a2f5-52e3de603d81','true','userinfo.token.claim'),('46d2d6e5-6503-4930-9996-4c89639b1a10','true','access.token.claim'),('46d2d6e5-6503-4930-9996-4c89639b1a10','phone_number_verified','claim.name'),('46d2d6e5-6503-4930-9996-4c89639b1a10','true','id.token.claim'),('46d2d6e5-6503-4930-9996-4c89639b1a10','true','introspection.token.claim'),('46d2d6e5-6503-4930-9996-4c89639b1a10','boolean','jsonType.label'),('46d2d6e5-6503-4930-9996-4c89639b1a10','phoneNumberVerified','user.attribute'),('46d2d6e5-6503-4930-9996-4c89639b1a10','true','userinfo.token.claim'),('47550065-db82-4be3-91ec-0d0158357e4e','true','access.token.claim'),('47550065-db82-4be3-91ec-0d0158357e4e','locale','claim.name'),('47550065-db82-4be3-91ec-0d0158357e4e','true','id.token.claim'),('47550065-db82-4be3-91ec-0d0158357e4e','true','introspection.token.claim'),('47550065-db82-4be3-91ec-0d0158357e4e','String','jsonType.label'),('47550065-db82-4be3-91ec-0d0158357e4e','locale','user.attribute'),('47550065-db82-4be3-91ec-0d0158357e4e','true','userinfo.token.claim'),('4ccea148-5d3e-4ed4-8ebb-255934c70f4f','true','access.token.claim'),('4ccea148-5d3e-4ed4-8ebb-255934c70f4f','true','id.token.claim'),('4ccea148-5d3e-4ed4-8ebb-255934c70f4f','true','introspection.token.claim'),('4ccea148-5d3e-4ed4-8ebb-255934c70f4f','true','userinfo.token.claim'),('5026b38a-f880-4d79-aa95-8a554e8d3142','true','access.token.claim'),('5026b38a-f880-4d79-aa95-8a554e8d3142','picture','claim.name'),('5026b38a-f880-4d79-aa95-8a554e8d3142','true','id.token.claim'),('5026b38a-f880-4d79-aa95-8a554e8d3142','true','introspection.token.claim'),('5026b38a-f880-4d79-aa95-8a554e8d3142','String','jsonType.label'),('5026b38a-f880-4d79-aa95-8a554e8d3142','picture','user.attribute'),('5026b38a-f880-4d79-aa95-8a554e8d3142','true','userinfo.token.claim'),('50861319-f969-4d20-b0cc-a348ed428f89','true','access.token.claim'),('50861319-f969-4d20-b0cc-a348ed428f89','gender','claim.name'),('50861319-f969-4d20-b0cc-a348ed428f89','true','id.token.claim'),('50861319-f969-4d20-b0cc-a348ed428f89','true','introspection.token.claim'),('50861319-f969-4d20-b0cc-a348ed428f89','String','jsonType.label'),('50861319-f969-4d20-b0cc-a348ed428f89','gender','user.attribute'),('50861319-f969-4d20-b0cc-a348ed428f89','true','userinfo.token.claim'),('50fc437d-502f-4e43-8a38-ea2be9869d2e','true','access.token.claim'),('50fc437d-502f-4e43-8a38-ea2be9869d2e','true','introspection.token.claim'),('528afa41-1573-4e80-b20e-a7b9b7934611','true','access.token.claim'),('528afa41-1573-4e80-b20e-a7b9b7934611','given_name','claim.name'),('528afa41-1573-4e80-b20e-a7b9b7934611','true','id.token.claim'),('528afa41-1573-4e80-b20e-a7b9b7934611','true','introspection.token.claim'),('528afa41-1573-4e80-b20e-a7b9b7934611','String','jsonType.label'),('528afa41-1573-4e80-b20e-a7b9b7934611','firstName','user.attribute'),('528afa41-1573-4e80-b20e-a7b9b7934611','true','userinfo.token.claim'),('54217d81-a8da-4935-9e0c-f0b7dea42442','true','access.token.claim'),('54217d81-a8da-4935-9e0c-f0b7dea42442','given_name','claim.name'),('54217d81-a8da-4935-9e0c-f0b7dea42442','true','id.token.claim'),('54217d81-a8da-4935-9e0c-f0b7dea42442','true','introspection.token.claim'),('54217d81-a8da-4935-9e0c-f0b7dea42442','String','jsonType.label'),('54217d81-a8da-4935-9e0c-f0b7dea42442','firstName','user.attribute'),('54217d81-a8da-4935-9e0c-f0b7dea42442','true','userinfo.token.claim'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','true','access.token.claim'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','nickname','claim.name'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','true','id.token.claim'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','true','introspection.token.claim'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','String','jsonType.label'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','nickname','user.attribute'),('573af2e8-45f3-4aa1-8d9f-eb6c0483ed21','true','userinfo.token.claim'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','true','access.token.claim'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','email','claim.name'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','true','id.token.claim'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','true','introspection.token.claim'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','String','jsonType.label'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','email','user.attribute'),('575c60ed-d3be-46d0-b7ad-a24d7dd62c14','true','userinfo.token.claim'),('583aeb18-9a92-4174-ac6b-9907c7532030','true','access.token.claim'),('583aeb18-9a92-4174-ac6b-9907c7532030','phone_number','claim.name'),('583aeb18-9a92-4174-ac6b-9907c7532030','true','id.token.claim'),('583aeb18-9a92-4174-ac6b-9907c7532030','true','introspection.token.claim'),('583aeb18-9a92-4174-ac6b-9907c7532030','String','jsonType.label'),('583aeb18-9a92-4174-ac6b-9907c7532030','phoneNumber','user.attribute'),('583aeb18-9a92-4174-ac6b-9907c7532030','true','userinfo.token.claim'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','true','access.token.claim'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','zoneinfo','claim.name'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','true','id.token.claim'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','true','introspection.token.claim'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','String','jsonType.label'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','zoneinfo','user.attribute'),('58a411a9-0d87-4648-b73d-2eacbdf2ce38','true','userinfo.token.claim'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','true','access.token.claim'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','nickname','claim.name'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','true','id.token.claim'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','true','introspection.token.claim'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','String','jsonType.label'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','nickname','user.attribute'),('5a5cff1a-018f-45ec-ae48-407e54e1b25d','true','userinfo.token.claim'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','true','access.token.claim'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','picture','claim.name'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','true','id.token.claim'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','true','introspection.token.claim'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','String','jsonType.label'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','picture','user.attribute'),('5ac55e4c-9eaa-4acf-9361-bb56a050e29e','true','userinfo.token.claim'),('5dd772dc-4f2d-491f-9435-43755c813b2d','true','access.token.claim'),('5dd772dc-4f2d-491f-9435-43755c813b2d','true','id.token.claim'),('5dd772dc-4f2d-491f-9435-43755c813b2d','true','introspection.token.claim'),('5dd772dc-4f2d-491f-9435-43755c813b2d','country','user.attribute.country'),('5dd772dc-4f2d-491f-9435-43755c813b2d','formatted','user.attribute.formatted'),('5dd772dc-4f2d-491f-9435-43755c813b2d','locality','user.attribute.locality'),('5dd772dc-4f2d-491f-9435-43755c813b2d','postal_code','user.attribute.postal_code'),('5dd772dc-4f2d-491f-9435-43755c813b2d','region','user.attribute.region'),('5dd772dc-4f2d-491f-9435-43755c813b2d','street','user.attribute.street'),('5dd772dc-4f2d-491f-9435-43755c813b2d','true','userinfo.token.claim'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','true','access.token.claim'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','clientHost','claim.name'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','true','id.token.claim'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','String','jsonType.label'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','clientHost','user.session.note'),('5dfaceed-dce7-4033-9c0b-7555367e7a08','true','userinfo.token.claim'),('6172e35d-59c6-4813-94c9-3602a25b78ae','true','access.token.claim'),('6172e35d-59c6-4813-94c9-3602a25b78ae','website','claim.name'),('6172e35d-59c6-4813-94c9-3602a25b78ae','true','id.token.claim'),('6172e35d-59c6-4813-94c9-3602a25b78ae','true','introspection.token.claim'),('6172e35d-59c6-4813-94c9-3602a25b78ae','String','jsonType.label'),('6172e35d-59c6-4813-94c9-3602a25b78ae','website','user.attribute'),('6172e35d-59c6-4813-94c9-3602a25b78ae','true','userinfo.token.claim'),('61e94246-5b28-4c5f-be99-6acd356037d0','true','access.token.claim'),('61e94246-5b28-4c5f-be99-6acd356037d0','true','introspection.token.claim'),('61f33c2b-fb56-4155-a238-330365fbe3eb','true','access.token.claim'),('61f33c2b-fb56-4155-a238-330365fbe3eb','updated_at','claim.name'),('61f33c2b-fb56-4155-a238-330365fbe3eb','true','id.token.claim'),('61f33c2b-fb56-4155-a238-330365fbe3eb','true','introspection.token.claim'),('61f33c2b-fb56-4155-a238-330365fbe3eb','long','jsonType.label'),('61f33c2b-fb56-4155-a238-330365fbe3eb','updatedAt','user.attribute'),('61f33c2b-fb56-4155-a238-330365fbe3eb','true','userinfo.token.claim'),('66256e23-7331-4bfb-ace8-8bde541f59df','true','access.token.claim'),('66256e23-7331-4bfb-ace8-8bde541f59df','phone_number','claim.name'),('66256e23-7331-4bfb-ace8-8bde541f59df','true','id.token.claim'),('66256e23-7331-4bfb-ace8-8bde541f59df','true','introspection.token.claim'),('66256e23-7331-4bfb-ace8-8bde541f59df','String','jsonType.label'),('66256e23-7331-4bfb-ace8-8bde541f59df','phoneNumber','user.attribute'),('66256e23-7331-4bfb-ace8-8bde541f59df','true','userinfo.token.claim'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','true','access.token.claim'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','locale','claim.name'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','true','id.token.claim'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','true','introspection.token.claim'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','String','jsonType.label'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','locale','user.attribute'),('66ce5462-e2f8-4b38-b9e5-51b8fcaffd83','true','userinfo.token.claim'),('673c984f-7b7d-40dc-beac-c2a5efafb549','true','access.token.claim'),('673c984f-7b7d-40dc-beac-c2a5efafb549','middle_name','claim.name'),('673c984f-7b7d-40dc-beac-c2a5efafb549','true','id.token.claim'),('673c984f-7b7d-40dc-beac-c2a5efafb549','true','introspection.token.claim'),('673c984f-7b7d-40dc-beac-c2a5efafb549','String','jsonType.label'),('673c984f-7b7d-40dc-beac-c2a5efafb549','middleName','user.attribute'),('673c984f-7b7d-40dc-beac-c2a5efafb549','true','userinfo.token.claim'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','true','access.token.claim'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','phone_number_verified','claim.name'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','true','id.token.claim'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','true','introspection.token.claim'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','boolean','jsonType.label'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','phoneNumberVerified','user.attribute'),('67ad65d0-996a-4a8d-a9ac-2b951a72f535','true','userinfo.token.claim'),('6a27073a-be37-42db-b86e-0130f67e75d3','true','access.token.claim'),('6a27073a-be37-42db-b86e-0130f67e75d3','gender','claim.name'),('6a27073a-be37-42db-b86e-0130f67e75d3','true','id.token.claim'),('6a27073a-be37-42db-b86e-0130f67e75d3','true','introspection.token.claim'),('6a27073a-be37-42db-b86e-0130f67e75d3','String','jsonType.label'),('6a27073a-be37-42db-b86e-0130f67e75d3','gender','user.attribute'),('6a27073a-be37-42db-b86e-0130f67e75d3','true','userinfo.token.claim'),('6af4f6da-7de0-4f93-aedb-484a116c1781','Role','attribute.name'),('6af4f6da-7de0-4f93-aedb-484a116c1781','Basic','attribute.nameformat'),('6af4f6da-7de0-4f93-aedb-484a116c1781','false','single'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','true','access.token.claim'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','resource_access.${client_id}.roles','claim.name'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','true','introspection.token.claim'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','String','jsonType.label'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','true','multivalued'),('6c7ea07e-f322-4120-8ecc-9f474dce02ae','foo','user.attribute'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','true','access.token.claim'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','locale','claim.name'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','true','id.token.claim'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','true','introspection.token.claim'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','String','jsonType.label'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','locale','user.attribute'),('6d95026f-ea7b-4825-bd3b-a1e9fe2b6a1c','true','userinfo.token.claim'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','true','access.token.claim'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','zoneinfo','claim.name'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','true','id.token.claim'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','true','introspection.token.claim'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','String','jsonType.label'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','zoneinfo','user.attribute'),('6e38211c-9c97-4e59-8657-9f35eafbbc7e','true','userinfo.token.claim'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','true','access.token.claim'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','clientId','claim.name'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','true','id.token.claim'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','String','jsonType.label'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','clientId','user.session.note'),('6fc88d3a-2911-46ef-aa6f-bb308f8005a4','true','userinfo.token.claim'),('719337bd-a041-46f0-bb8e-9af760ab1dcf','true','access.token.claim'),('719337bd-a041-46f0-bb8e-9af760ab1dcf','clientId','claim.name'),('719337bd-a041-46f0-bb8e-9af760ab1dcf','true','id.token.claim'),('719337bd-a041-46f0-bb8e-9af760ab1dcf','String','jsonType.label'),('719337bd-a041-46f0-bb8e-9af760ab1dcf','clientId','user.session.note'),('719337bd-a041-46f0-bb8e-9af760ab1dcf','true','userinfo.token.claim'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','true','access.token.claim'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','nickname','claim.name'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','true','id.token.claim'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','true','introspection.token.claim'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','String','jsonType.label'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','nickname','user.attribute'),('7281d6df-5a23-4bea-9b32-afed4fd3b10d','true','userinfo.token.claim'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','true','access.token.claim'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','groups','claim.name'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','true','id.token.claim'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','true','introspection.token.claim'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','String','jsonType.label'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','true','multivalued'),('72fc4366-f5da-41dd-aeeb-3bf89b5d2cec','foo','user.attribute'),('732908bd-f996-4f40-ad34-acb82d96e3db','true','access.token.claim'),('732908bd-f996-4f40-ad34-acb82d96e3db','nickname','claim.name'),('732908bd-f996-4f40-ad34-acb82d96e3db','true','id.token.claim'),('732908bd-f996-4f40-ad34-acb82d96e3db','true','introspection.token.claim'),('732908bd-f996-4f40-ad34-acb82d96e3db','String','jsonType.label'),('732908bd-f996-4f40-ad34-acb82d96e3db','nickname','user.attribute'),('732908bd-f996-4f40-ad34-acb82d96e3db','true','userinfo.token.claim'),('75828061-36dc-43ff-9145-67283e81da23','true','access.token.claim'),('75828061-36dc-43ff-9145-67283e81da23','nickname','claim.name'),('75828061-36dc-43ff-9145-67283e81da23','true','id.token.claim'),('75828061-36dc-43ff-9145-67283e81da23','true','introspection.token.claim'),('75828061-36dc-43ff-9145-67283e81da23','String','jsonType.label'),('75828061-36dc-43ff-9145-67283e81da23','nickname','user.attribute'),('75828061-36dc-43ff-9145-67283e81da23','true','userinfo.token.claim'),('77cf464c-298a-4cce-ac42-6bf7affc7ada','true','access.token.claim'),('77cf464c-298a-4cce-ac42-6bf7affc7ada','true','introspection.token.claim'),('789809e6-95e5-417d-ac7e-8c0b725eb6d6','Role','attribute.name'),('789809e6-95e5-417d-ac7e-8c0b725eb6d6','Basic','attribute.nameformat'),('789809e6-95e5-417d-ac7e-8c0b725eb6d6','false','single'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','true','access.token.claim'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','email_verified','claim.name'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','true','id.token.claim'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','true','introspection.token.claim'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','boolean','jsonType.label'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','emailVerified','user.attribute'),('798b82c7-f1f8-4d0b-bb92-d2652a7b22ac','true','userinfo.token.claim'),('7b776162-ee7f-4820-825f-86c191a84860','true','access.token.claim'),('7b776162-ee7f-4820-825f-86c191a84860','website','claim.name'),('7b776162-ee7f-4820-825f-86c191a84860','true','id.token.claim'),('7b776162-ee7f-4820-825f-86c191a84860','true','introspection.token.claim'),('7b776162-ee7f-4820-825f-86c191a84860','String','jsonType.label'),('7b776162-ee7f-4820-825f-86c191a84860','website','user.attribute'),('7b776162-ee7f-4820-825f-86c191a84860','true','userinfo.token.claim'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','true','access.token.claim'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','family_name','claim.name'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','true','id.token.claim'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','true','introspection.token.claim'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','String','jsonType.label'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','lastName','user.attribute'),('7cdef425-d429-4edf-a426-3bdd52e9e19c','true','userinfo.token.claim'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','true','access.token.claim'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','groups','claim.name'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','true','id.token.claim'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','true','introspection.token.claim'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','String','jsonType.label'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','true','multivalued'),('7ed9c07f-6dc6-4ab9-96a0-c31c4c24a98d','foo','user.attribute'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','true','access.token.claim'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','middle_name','claim.name'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','true','id.token.claim'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','true','introspection.token.claim'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','String','jsonType.label'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','middleName','user.attribute'),('7f1e0d60-574d-40af-9fde-6ce59b4c08c5','true','userinfo.token.claim'),('80a4bba1-b329-4146-9fe2-b58c158e245c','true','access.token.claim'),('80a4bba1-b329-4146-9fe2-b58c158e245c','preferred_username','claim.name'),('80a4bba1-b329-4146-9fe2-b58c158e245c','true','id.token.claim'),('80a4bba1-b329-4146-9fe2-b58c158e245c','true','introspection.token.claim'),('80a4bba1-b329-4146-9fe2-b58c158e245c','String','jsonType.label'),('80a4bba1-b329-4146-9fe2-b58c158e245c','username','user.attribute'),('80a4bba1-b329-4146-9fe2-b58c158e245c','true','userinfo.token.claim'),('80b7a1c2-6ccb-49cb-b90c-a2707c910b9e','true','access.token.claim'),('80b7a1c2-6ccb-49cb-b90c-a2707c910b9e','true','id.token.claim'),('80b7a1c2-6ccb-49cb-b90c-a2707c910b9e','true','introspection.token.claim'),('8224fc8b-61de-4497-bb43-80dd08524d58','true','access.token.claim'),('8224fc8b-61de-4497-bb43-80dd08524d58','birthdate','claim.name'),('8224fc8b-61de-4497-bb43-80dd08524d58','true','id.token.claim'),('8224fc8b-61de-4497-bb43-80dd08524d58','true','introspection.token.claim'),('8224fc8b-61de-4497-bb43-80dd08524d58','String','jsonType.label'),('8224fc8b-61de-4497-bb43-80dd08524d58','birthdate','user.attribute'),('8224fc8b-61de-4497-bb43-80dd08524d58','true','userinfo.token.claim'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','true','access.token.claim'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','email','claim.name'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','true','id.token.claim'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','true','introspection.token.claim'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','String','jsonType.label'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','email','user.attribute'),('82506105-6c5b-4df3-8db7-83fd4e62ac15','true','userinfo.token.claim'),('8384c9f3-4567-41b1-8296-04ff94455ad0','true','access.token.claim'),('8384c9f3-4567-41b1-8296-04ff94455ad0','middle_name','claim.name'),('8384c9f3-4567-41b1-8296-04ff94455ad0','true','id.token.claim'),('8384c9f3-4567-41b1-8296-04ff94455ad0','true','introspection.token.claim'),('8384c9f3-4567-41b1-8296-04ff94455ad0','String','jsonType.label'),('8384c9f3-4567-41b1-8296-04ff94455ad0','middleName','user.attribute'),('8384c9f3-4567-41b1-8296-04ff94455ad0','true','userinfo.token.claim'),('84318142-8728-478e-b8ac-1f0938ae7e9d','true','access.token.claim'),('84318142-8728-478e-b8ac-1f0938ae7e9d','realm_access.roles','claim.name'),('84318142-8728-478e-b8ac-1f0938ae7e9d','true','introspection.token.claim'),('84318142-8728-478e-b8ac-1f0938ae7e9d','String','jsonType.label'),('84318142-8728-478e-b8ac-1f0938ae7e9d','true','multivalued'),('84318142-8728-478e-b8ac-1f0938ae7e9d','foo','user.attribute'),('84334a72-1960-452d-8130-6c8d26d1c3e2','true','access.token.claim'),('84334a72-1960-452d-8130-6c8d26d1c3e2','preferred_username','claim.name'),('84334a72-1960-452d-8130-6c8d26d1c3e2','true','id.token.claim'),('84334a72-1960-452d-8130-6c8d26d1c3e2','true','introspection.token.claim'),('84334a72-1960-452d-8130-6c8d26d1c3e2','String','jsonType.label'),('84334a72-1960-452d-8130-6c8d26d1c3e2','username','user.attribute'),('84334a72-1960-452d-8130-6c8d26d1c3e2','true','userinfo.token.claim'),('84707a9d-305a-4118-98fb-d8afe930d029','true','access.token.claim'),('84707a9d-305a-4118-98fb-d8afe930d029','locale','claim.name'),('84707a9d-305a-4118-98fb-d8afe930d029','true','id.token.claim'),('84707a9d-305a-4118-98fb-d8afe930d029','true','introspection.token.claim'),('84707a9d-305a-4118-98fb-d8afe930d029','String','jsonType.label'),('84707a9d-305a-4118-98fb-d8afe930d029','locale','user.attribute'),('84707a9d-305a-4118-98fb-d8afe930d029','true','userinfo.token.claim'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','true','access.token.claim'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','birthdate','claim.name'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','true','id.token.claim'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','true','introspection.token.claim'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','String','jsonType.label'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','birthdate','user.attribute'),('8632a61e-c1dc-4fd7-b29e-8fc11b615720','true','userinfo.token.claim'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','true','access.token.claim'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','phone_number','claim.name'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','true','id.token.claim'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','true','introspection.token.claim'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','String','jsonType.label'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','phoneNumber','user.attribute'),('886ab6ce-bc2f-4bf9-9407-ca0022575fc7','true','userinfo.token.claim'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','true','access.token.claim'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','middle_name','claim.name'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','true','id.token.claim'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','true','introspection.token.claim'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','String','jsonType.label'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','middleName','user.attribute'),('8d64c042-76d0-4ee3-b2f2-c98a78c8b9bb','true','userinfo.token.claim'),('8dd56a06-541b-48f1-8044-1926045d5385','true','access.token.claim'),('8dd56a06-541b-48f1-8044-1926045d5385','email','claim.name'),('8dd56a06-541b-48f1-8044-1926045d5385','true','id.token.claim'),('8dd56a06-541b-48f1-8044-1926045d5385','true','introspection.token.claim'),('8dd56a06-541b-48f1-8044-1926045d5385','String','jsonType.label'),('8dd56a06-541b-48f1-8044-1926045d5385','email','user.attribute'),('8dd56a06-541b-48f1-8044-1926045d5385','true','userinfo.token.claim'),('8f5472e8-a6cd-4504-b923-caffd590416f','true','access.token.claim'),('8f5472e8-a6cd-4504-b923-caffd590416f','birthdate','claim.name'),('8f5472e8-a6cd-4504-b923-caffd590416f','true','id.token.claim'),('8f5472e8-a6cd-4504-b923-caffd590416f','true','introspection.token.claim'),('8f5472e8-a6cd-4504-b923-caffd590416f','String','jsonType.label'),('8f5472e8-a6cd-4504-b923-caffd590416f','birthdate','user.attribute'),('8f5472e8-a6cd-4504-b923-caffd590416f','true','userinfo.token.claim'),('9102671e-0c72-49f9-af55-86d74b538311','true','access.token.claim'),('9102671e-0c72-49f9-af55-86d74b538311','resource_access.${client_id}.roles','claim.name'),('9102671e-0c72-49f9-af55-86d74b538311','true','introspection.token.claim'),('9102671e-0c72-49f9-af55-86d74b538311','String','jsonType.label'),('9102671e-0c72-49f9-af55-86d74b538311','true','multivalued'),('9102671e-0c72-49f9-af55-86d74b538311','foo','user.attribute'),('9337e864-dfab-4d26-a150-9b4c936f7a80','true','access.token.claim'),('9337e864-dfab-4d26-a150-9b4c936f7a80','clientHost','claim.name'),('9337e864-dfab-4d26-a150-9b4c936f7a80','true','id.token.claim'),('9337e864-dfab-4d26-a150-9b4c936f7a80','String','jsonType.label'),('9337e864-dfab-4d26-a150-9b4c936f7a80','clientHost','user.session.note'),('9337e864-dfab-4d26-a150-9b4c936f7a80','true','userinfo.token.claim'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','true','access.token.claim'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','birthdate','claim.name'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','true','id.token.claim'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','true','introspection.token.claim'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','String','jsonType.label'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','birthdate','user.attribute'),('94eeda64-bb95-4bcb-b7fa-3e9ecb8274e1','true','userinfo.token.claim'),('96284444-561f-4990-a691-a20b9cfe610a','true','access.token.claim'),('96284444-561f-4990-a691-a20b9cfe610a','realm_access.roles','claim.name'),('96284444-561f-4990-a691-a20b9cfe610a','true','introspection.token.claim'),('96284444-561f-4990-a691-a20b9cfe610a','String','jsonType.label'),('96284444-561f-4990-a691-a20b9cfe610a','true','multivalued'),('96284444-561f-4990-a691-a20b9cfe610a','foo','user.attribute'),('967eccac-3113-401c-9924-51f610f1ef75','Role','attribute.name'),('967eccac-3113-401c-9924-51f610f1ef75','Basic','attribute.nameformat'),('967eccac-3113-401c-9924-51f610f1ef75','false','single'),('981099c4-f316-4008-9657-516b66f66312','true','access.token.claim'),('981099c4-f316-4008-9657-516b66f66312','resource_access.${client_id}.roles','claim.name'),('981099c4-f316-4008-9657-516b66f66312','true','introspection.token.claim'),('981099c4-f316-4008-9657-516b66f66312','String','jsonType.label'),('981099c4-f316-4008-9657-516b66f66312','true','multivalued'),('981099c4-f316-4008-9657-516b66f66312','foo','user.attribute'),('98b93287-90fb-4b34-b51a-e1fdfbafb0d9','true','access.token.claim'),('98b93287-90fb-4b34-b51a-e1fdfbafb0d9','true','id.token.claim'),('98b93287-90fb-4b34-b51a-e1fdfbafb0d9','true','introspection.token.claim'),('98b93287-90fb-4b34-b51a-e1fdfbafb0d9','true','userinfo.token.claim'),('99cb503d-2511-4184-b843-b8a0b368b2c1','true','access.token.claim'),('99cb503d-2511-4184-b843-b8a0b368b2c1','picture','claim.name'),('99cb503d-2511-4184-b843-b8a0b368b2c1','true','id.token.claim'),('99cb503d-2511-4184-b843-b8a0b368b2c1','true','introspection.token.claim'),('99cb503d-2511-4184-b843-b8a0b368b2c1','String','jsonType.label'),('99cb503d-2511-4184-b843-b8a0b368b2c1','picture','user.attribute'),('99cb503d-2511-4184-b843-b8a0b368b2c1','true','userinfo.token.claim'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','true','access.token.claim'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','phone_number_verified','claim.name'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','true','id.token.claim'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','true','introspection.token.claim'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','boolean','jsonType.label'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','phoneNumberVerified','user.attribute'),('9aba8bf3-2f4a-4ef9-835b-80c1094e4df8','true','userinfo.token.claim'),('9b8f6d74-989d-461a-a649-bb889d60115d','true','access.token.claim'),('9b8f6d74-989d-461a-a649-bb889d60115d','email','claim.name'),('9b8f6d74-989d-461a-a649-bb889d60115d','true','id.token.claim'),('9b8f6d74-989d-461a-a649-bb889d60115d','true','introspection.token.claim'),('9b8f6d74-989d-461a-a649-bb889d60115d','String','jsonType.label'),('9b8f6d74-989d-461a-a649-bb889d60115d','email','user.attribute'),('9b8f6d74-989d-461a-a649-bb889d60115d','true','userinfo.token.claim'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','true','access.token.claim'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','email','claim.name'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','true','id.token.claim'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','true','introspection.token.claim'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','String','jsonType.label'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','email','user.attribute'),('9c05c008-9b95-4b9f-82c1-9f7b2747a176','true','userinfo.token.claim'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','true','access.token.claim'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','picture','claim.name'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','true','id.token.claim'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','true','introspection.token.claim'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','String','jsonType.label'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','picture','user.attribute'),('9ed9d444-a8bc-4f02-b02a-77eac0e8da6f','true','userinfo.token.claim'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','true','access.token.claim'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','profile','claim.name'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','true','id.token.claim'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','true','introspection.token.claim'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','String','jsonType.label'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','profile','user.attribute'),('a2fe6161-1437-4771-b3cc-c285b4f3a430','true','userinfo.token.claim'),('a3d782b6-2cb9-4672-a088-01530dc4b329','true','access.token.claim'),('a3d782b6-2cb9-4672-a088-01530dc4b329','true','introspection.token.claim'),('a4839fec-0401-4bd9-83f8-e6fe2f7021d0','true','access.token.claim'),('a4839fec-0401-4bd9-83f8-e6fe2f7021d0','true','introspection.token.claim'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','true','access.token.claim'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','picture','claim.name'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','true','id.token.claim'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','true','introspection.token.claim'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','String','jsonType.label'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','picture','user.attribute'),('a587918e-13bb-4d10-8bb2-1e5b616fdf81','true','userinfo.token.claim'),('a611f415-b4dc-44f1-8ad9-fa071b124b88','true','access.token.claim'),('a611f415-b4dc-44f1-8ad9-fa071b124b88','true','id.token.claim'),('a611f415-b4dc-44f1-8ad9-fa071b124b88','true','introspection.token.claim'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','true','access.token.claim'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','true','id.token.claim'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','true','introspection.token.claim'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','country','user.attribute.country'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','formatted','user.attribute.formatted'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','locality','user.attribute.locality'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','postal_code','user.attribute.postal_code'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','region','user.attribute.region'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','street','user.attribute.street'),('a92bf1cb-9fc3-47e1-ac26-8673340e412d','true','userinfo.token.claim'),('a99e673a-ceff-439b-bdef-93fca7133c1d','true','access.token.claim'),('a99e673a-ceff-439b-bdef-93fca7133c1d','updated_at','claim.name'),('a99e673a-ceff-439b-bdef-93fca7133c1d','true','id.token.claim'),('a99e673a-ceff-439b-bdef-93fca7133c1d','true','introspection.token.claim'),('a99e673a-ceff-439b-bdef-93fca7133c1d','long','jsonType.label'),('a99e673a-ceff-439b-bdef-93fca7133c1d','updatedAt','user.attribute'),('a99e673a-ceff-439b-bdef-93fca7133c1d','true','userinfo.token.claim'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','true','access.token.claim'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','locale','claim.name'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','true','id.token.claim'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','true','introspection.token.claim'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','String','jsonType.label'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','locale','user.attribute'),('ac7a9dc7-f64d-4ec7-bd68-46ceeb8c225d','true','userinfo.token.claim'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','true','access.token.claim'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','website','claim.name'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','true','id.token.claim'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','true','introspection.token.claim'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','String','jsonType.label'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','website','user.attribute'),('ad5323eb-d1e3-4412-a8c2-e78992ef3fe5','true','userinfo.token.claim'),('af687373-7b04-4b19-86d8-419ca5b55d50','true','access.token.claim'),('af687373-7b04-4b19-86d8-419ca5b55d50','family_name','claim.name'),('af687373-7b04-4b19-86d8-419ca5b55d50','true','id.token.claim'),('af687373-7b04-4b19-86d8-419ca5b55d50','true','introspection.token.claim'),('af687373-7b04-4b19-86d8-419ca5b55d50','String','jsonType.label'),('af687373-7b04-4b19-86d8-419ca5b55d50','lastName','user.attribute'),('af687373-7b04-4b19-86d8-419ca5b55d50','true','userinfo.token.claim'),('b2d71be7-042c-4d33-b645-f0e03790bd80','true','access.token.claim'),('b2d71be7-042c-4d33-b645-f0e03790bd80','true','id.token.claim'),('b2d71be7-042c-4d33-b645-f0e03790bd80','true','introspection.token.claim'),('b2d71be7-042c-4d33-b645-f0e03790bd80','country','user.attribute.country'),('b2d71be7-042c-4d33-b645-f0e03790bd80','formatted','user.attribute.formatted'),('b2d71be7-042c-4d33-b645-f0e03790bd80','locality','user.attribute.locality'),('b2d71be7-042c-4d33-b645-f0e03790bd80','postal_code','user.attribute.postal_code'),('b2d71be7-042c-4d33-b645-f0e03790bd80','region','user.attribute.region'),('b2d71be7-042c-4d33-b645-f0e03790bd80','street','user.attribute.street'),('b2d71be7-042c-4d33-b645-f0e03790bd80','true','userinfo.token.claim'),('b4ee2683-c06b-4391-be48-baffdbb2cbc0','true','access.token.claim'),('b4ee2683-c06b-4391-be48-baffdbb2cbc0','true','introspection.token.claim'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','true','access.token.claim'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','zoneinfo','claim.name'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','true','id.token.claim'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','true','introspection.token.claim'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','String','jsonType.label'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','zoneinfo','user.attribute'),('b5049510-7292-4b19-99e1-a0bcbca47f9f','true','userinfo.token.claim'),('b53b3fb0-7683-4b4c-bece-2fdce5e5a925','true','access.token.claim'),('b53b3fb0-7683-4b4c-bece-2fdce5e5a925','true','id.token.claim'),('b53b3fb0-7683-4b4c-bece-2fdce5e5a925','true','introspection.token.claim'),('b5579994-64c5-4e2a-8f50-cb369301f86f','Role','attribute.name'),('b5579994-64c5-4e2a-8f50-cb369301f86f','Basic','attribute.nameformat'),('b5579994-64c5-4e2a-8f50-cb369301f86f','false','single'),('b6198a53-09fa-405c-9996-555ee4143ada','true','access.token.claim'),('b6198a53-09fa-405c-9996-555ee4143ada','clientHost','claim.name'),('b6198a53-09fa-405c-9996-555ee4143ada','true','id.token.claim'),('b6198a53-09fa-405c-9996-555ee4143ada','String','jsonType.label'),('b6198a53-09fa-405c-9996-555ee4143ada','clientHost','user.session.note'),('b6198a53-09fa-405c-9996-555ee4143ada','true','userinfo.token.claim'),('b63c327f-67f6-422c-837f-9118be434155','true','access.token.claim'),('b63c327f-67f6-422c-837f-9118be434155','updated_at','claim.name'),('b63c327f-67f6-422c-837f-9118be434155','true','id.token.claim'),('b63c327f-67f6-422c-837f-9118be434155','true','introspection.token.claim'),('b63c327f-67f6-422c-837f-9118be434155','long','jsonType.label'),('b63c327f-67f6-422c-837f-9118be434155','updatedAt','user.attribute'),('b63c327f-67f6-422c-837f-9118be434155','true','userinfo.token.claim'),('b75e74e9-d8cd-4135-ae37-a54ccc4a1ea3','true','access.token.claim'),('b75e74e9-d8cd-4135-ae37-a54ccc4a1ea3','true','introspection.token.claim'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','true','access.token.claim'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','email_verified','claim.name'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','true','id.token.claim'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','true','introspection.token.claim'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','boolean','jsonType.label'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','emailVerified','user.attribute'),('b812f1aa-c5b8-47ee-86be-8c3247eda330','true','userinfo.token.claim'),('b8429f13-dfda-424d-ac22-a9c35e5f9155','true','access.token.claim'),('b8429f13-dfda-424d-ac22-a9c35e5f9155','true','id.token.claim'),('b8429f13-dfda-424d-ac22-a9c35e5f9155','true','introspection.token.claim'),('b8429f13-dfda-424d-ac22-a9c35e5f9155','true','userinfo.token.claim'),('b87c1414-7ae7-430f-9278-d25183f216af','true','access.token.claim'),('b87c1414-7ae7-430f-9278-d25183f216af','upn','claim.name'),('b87c1414-7ae7-430f-9278-d25183f216af','true','id.token.claim'),('b87c1414-7ae7-430f-9278-d25183f216af','true','introspection.token.claim'),('b87c1414-7ae7-430f-9278-d25183f216af','String','jsonType.label'),('b87c1414-7ae7-430f-9278-d25183f216af','username','user.attribute'),('b87c1414-7ae7-430f-9278-d25183f216af','true','userinfo.token.claim'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','true','access.token.claim'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','family_name','claim.name'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','true','id.token.claim'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','true','introspection.token.claim'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','String','jsonType.label'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','lastName','user.attribute'),('b933b8b3-b416-4f59-87f6-9fea6f55ab78','true','userinfo.token.claim'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','true','access.token.claim'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','clientAddress','claim.name'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','true','id.token.claim'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','String','jsonType.label'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','clientAddress','user.session.note'),('c0502d58-23e1-4af4-8c69-3b11b405ff79','true','userinfo.token.claim'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','true','access.token.claim'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','zoneinfo','claim.name'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','true','id.token.claim'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','true','introspection.token.claim'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','String','jsonType.label'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','zoneinfo','user.attribute'),('c05e6be7-3986-492d-8b92-1e1d06c1e731','true','userinfo.token.claim'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','true','access.token.claim'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','groups','claim.name'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','true','id.token.claim'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','true','introspection.token.claim'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','String','jsonType.label'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','true','multivalued'),('c2426b8c-3571-4ccb-9d00-de5348b2541c','foo','user.attribute'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','true','access.token.claim'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','picture','claim.name'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','true','id.token.claim'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','true','introspection.token.claim'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','String','jsonType.label'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','picture','user.attribute'),('c78106d1-e09b-4725-97c3-ee4dea6d8493','true','userinfo.token.claim'),('c7e7d2cf-8001-4beb-ae67-d35fb8c84962','true','access.token.claim'),('c7e7d2cf-8001-4beb-ae67-d35fb8c84962','true','introspection.token.claim'),('cd74b847-7384-4075-9c79-bbb7dad6a694','true','access.token.claim'),('cd74b847-7384-4075-9c79-bbb7dad6a694','phone_number','claim.name'),('cd74b847-7384-4075-9c79-bbb7dad6a694','true','id.token.claim'),('cd74b847-7384-4075-9c79-bbb7dad6a694','true','introspection.token.claim'),('cd74b847-7384-4075-9c79-bbb7dad6a694','String','jsonType.label'),('cd74b847-7384-4075-9c79-bbb7dad6a694','phoneNumber','user.attribute'),('cd74b847-7384-4075-9c79-bbb7dad6a694','true','userinfo.token.claim'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','true','access.token.claim'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','true','id.token.claim'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','true','introspection.token.claim'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','country','user.attribute.country'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','formatted','user.attribute.formatted'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','locality','user.attribute.locality'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','postal_code','user.attribute.postal_code'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','region','user.attribute.region'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','street','user.attribute.street'),('cdf0a7b8-eee6-485d-9b86-a52fccba4bef','true','userinfo.token.claim'),('cdff48ed-915d-4f3f-9198-a13cf576789a','Role','attribute.name'),('cdff48ed-915d-4f3f-9198-a13cf576789a','Basic','attribute.nameformat'),('cdff48ed-915d-4f3f-9198-a13cf576789a','false','single'),('ce1b6f11-e03a-404c-a634-dc89e8906404','true','access.token.claim'),('ce1b6f11-e03a-404c-a634-dc89e8906404','locale','claim.name'),('ce1b6f11-e03a-404c-a634-dc89e8906404','true','id.token.claim'),('ce1b6f11-e03a-404c-a634-dc89e8906404','true','introspection.token.claim'),('ce1b6f11-e03a-404c-a634-dc89e8906404','String','jsonType.label'),('ce1b6f11-e03a-404c-a634-dc89e8906404','locale','user.attribute'),('ce1b6f11-e03a-404c-a634-dc89e8906404','true','userinfo.token.claim'),('cf53b2fd-1195-44b7-9199-18236dee5c84','true','access.token.claim'),('cf53b2fd-1195-44b7-9199-18236dee5c84','clientAddress','claim.name'),('cf53b2fd-1195-44b7-9199-18236dee5c84','true','id.token.claim'),('cf53b2fd-1195-44b7-9199-18236dee5c84','String','jsonType.label'),('cf53b2fd-1195-44b7-9199-18236dee5c84','clientAddress','user.session.note'),('cf53b2fd-1195-44b7-9199-18236dee5c84','true','userinfo.token.claim'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','true','access.token.claim'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','phone_number_verified','claim.name'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','true','id.token.claim'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','true','introspection.token.claim'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','boolean','jsonType.label'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','phoneNumberVerified','user.attribute'),('cff38e86-8691-4fb4-b58f-51ef5b90ded4','true','userinfo.token.claim'),('d0065b81-32fa-412b-9d90-be9921742313','true','access.token.claim'),('d0065b81-32fa-412b-9d90-be9921742313','clientId','claim.name'),('d0065b81-32fa-412b-9d90-be9921742313','true','id.token.claim'),('d0065b81-32fa-412b-9d90-be9921742313','String','jsonType.label'),('d0065b81-32fa-412b-9d90-be9921742313','clientId','user.session.note'),('d0065b81-32fa-412b-9d90-be9921742313','true','userinfo.token.claim'),('d025889c-edb0-4468-a409-4c4a6d062eae','true','access.token.claim'),('d025889c-edb0-4468-a409-4c4a6d062eae','resource_access.${client_id}.roles','claim.name'),('d025889c-edb0-4468-a409-4c4a6d062eae','true','introspection.token.claim'),('d025889c-edb0-4468-a409-4c4a6d062eae','String','jsonType.label'),('d025889c-edb0-4468-a409-4c4a6d062eae','true','multivalued'),('d025889c-edb0-4468-a409-4c4a6d062eae','foo','user.attribute'),('d06a4a87-112f-4760-9078-97cd42c4f5cc','true','access.token.claim'),('d06a4a87-112f-4760-9078-97cd42c4f5cc','true','id.token.claim'),('d06a4a87-112f-4760-9078-97cd42c4f5cc','true','introspection.token.claim'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','true','access.token.claim'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','profile','claim.name'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','true','id.token.claim'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','true','introspection.token.claim'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','String','jsonType.label'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','profile','user.attribute'),('d0adecde-2d0b-46ec-8dc4-986ffe98afdf','true','userinfo.token.claim'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','true','access.token.claim'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','groups','claim.name'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','true','id.token.claim'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','true','introspection.token.claim'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','String','jsonType.label'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','true','multivalued'),('d3bd7080-37a7-4fe8-9338-8d806ea4a743','foo','user.attribute'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','true','access.token.claim'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','locale','claim.name'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','true','id.token.claim'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','true','introspection.token.claim'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','String','jsonType.label'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','locale','user.attribute'),('d408c619-c199-4b32-adc6-fdbd8ccc4163','true','userinfo.token.claim'),('d690171b-4905-4b58-b4b6-24705fbd7b4a','true','access.token.claim'),('d690171b-4905-4b58-b4b6-24705fbd7b4a','realm_access.roles','claim.name'),('d690171b-4905-4b58-b4b6-24705fbd7b4a','true','introspection.token.claim'),('d690171b-4905-4b58-b4b6-24705fbd7b4a','String','jsonType.label'),('d690171b-4905-4b58-b4b6-24705fbd7b4a','true','multivalued'),('d690171b-4905-4b58-b4b6-24705fbd7b4a','foo','user.attribute'),('d75540a1-c065-4286-9b8d-dc964697a3f4','true','access.token.claim'),('d75540a1-c065-4286-9b8d-dc964697a3f4','realm_access.roles','claim.name'),('d75540a1-c065-4286-9b8d-dc964697a3f4','true','introspection.token.claim'),('d75540a1-c065-4286-9b8d-dc964697a3f4','String','jsonType.label'),('d75540a1-c065-4286-9b8d-dc964697a3f4','true','multivalued'),('d75540a1-c065-4286-9b8d-dc964697a3f4','foo','user.attribute'),('d833730a-14b2-4633-a4f7-3b02be24765f','true','access.token.claim'),('d833730a-14b2-4633-a4f7-3b02be24765f','upn','claim.name'),('d833730a-14b2-4633-a4f7-3b02be24765f','true','id.token.claim'),('d833730a-14b2-4633-a4f7-3b02be24765f','true','introspection.token.claim'),('d833730a-14b2-4633-a4f7-3b02be24765f','String','jsonType.label'),('d833730a-14b2-4633-a4f7-3b02be24765f','username','user.attribute'),('d833730a-14b2-4633-a4f7-3b02be24765f','true','userinfo.token.claim'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','true','access.token.claim'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','gender','claim.name'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','true','id.token.claim'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','true','introspection.token.claim'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','String','jsonType.label'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','gender','user.attribute'),('dc958a30-421a-4a81-aed4-f7c1e4fcf84b','true','userinfo.token.claim'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','true','access.token.claim'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','preferred_username','claim.name'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','true','id.token.claim'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','true','introspection.token.claim'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','String','jsonType.label'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','username','user.attribute'),('dd6d2f35-d910-4189-b4c9-f9db3bb6a45a','true','userinfo.token.claim'),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','true','access.token.claim'),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','clientAddress','claim.name'),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','true','id.token.claim'),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','String','jsonType.label'),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','clientAddress','user.session.note'),('df3bb8dc-a5ce-4c82-958d-251e1ec9e5b6','true','userinfo.token.claim'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','true','access.token.claim'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','updated_at','claim.name'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','true','id.token.claim'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','true','introspection.token.claim'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','long','jsonType.label'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','updatedAt','user.attribute'),('e64f8756-cb9d-4e31-8a87-72e5aac9acc1','true','userinfo.token.claim'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','true','access.token.claim'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','given_name','claim.name'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','true','id.token.claim'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','true','introspection.token.claim'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','String','jsonType.label'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','firstName','user.attribute'),('e69ab8d0-54e4-46cb-9795-4b4eb38ec4df','true','userinfo.token.claim'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','true','access.token.claim'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','website','claim.name'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','true','id.token.claim'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','true','introspection.token.claim'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','String','jsonType.label'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','website','user.attribute'),('e7aa8cc7-65f6-4383-a423-c7e11aa5164d','true','userinfo.token.claim'),('e8aadbb5-506d-4767-a131-135a3e87b637','true','access.token.claim'),('e8aadbb5-506d-4767-a131-135a3e87b637','clientId','claim.name'),('e8aadbb5-506d-4767-a131-135a3e87b637','true','id.token.claim'),('e8aadbb5-506d-4767-a131-135a3e87b637','String','jsonType.label'),('e8aadbb5-506d-4767-a131-135a3e87b637','clientId','user.session.note'),('e8aadbb5-506d-4767-a131-135a3e87b637','true','userinfo.token.claim'),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','true','access.token.claim'),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','clientAddress','claim.name'),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','true','id.token.claim'),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','String','jsonType.label'),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','clientAddress','user.session.note'),('ea8126ce-e91d-48f8-9609-dc27e91cc3ca','true','userinfo.token.claim'),('eaebee61-b19f-4f42-a108-9161afeea281','true','access.token.claim'),('eaebee61-b19f-4f42-a108-9161afeea281','email_verified','claim.name'),('eaebee61-b19f-4f42-a108-9161afeea281','true','id.token.claim'),('eaebee61-b19f-4f42-a108-9161afeea281','true','introspection.token.claim'),('eaebee61-b19f-4f42-a108-9161afeea281','boolean','jsonType.label'),('eaebee61-b19f-4f42-a108-9161afeea281','emailVerified','user.attribute'),('eaebee61-b19f-4f42-a108-9161afeea281','true','userinfo.token.claim'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','true','access.token.claim'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','clientHost','claim.name'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','true','id.token.claim'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','String','jsonType.label'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','clientHost','user.session.note'),('eb5f4077-6b3f-45d7-9e9c-cd95d62da89b','true','userinfo.token.claim'),('eb7d2003-3693-4791-ab0b-6482c863412e','true','access.token.claim'),('eb7d2003-3693-4791-ab0b-6482c863412e','realm_access.roles','claim.name'),('eb7d2003-3693-4791-ab0b-6482c863412e','true','introspection.token.claim'),('eb7d2003-3693-4791-ab0b-6482c863412e','String','jsonType.label'),('eb7d2003-3693-4791-ab0b-6482c863412e','true','multivalued'),('eb7d2003-3693-4791-ab0b-6482c863412e','foo','user.attribute'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','true','access.token.claim'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','family_name','claim.name'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','true','id.token.claim'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','true','introspection.token.claim'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','String','jsonType.label'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','lastName','user.attribute'),('ee7a7373-b6e3-4462-b4c8-094eb6eae4b8','true','userinfo.token.claim'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','true','access.token.claim'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','clientHost','claim.name'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','true','id.token.claim'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','String','jsonType.label'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','clientHost','user.session.note'),('f16aae79-bdd3-44ce-bb48-4d5f7e0c13d0','true','userinfo.token.claim'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','true','access.token.claim'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','updated_at','claim.name'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','true','id.token.claim'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','true','introspection.token.claim'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','long','jsonType.label'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','updatedAt','user.attribute'),('f17cd4e2-306f-44b0-98ac-b8547f817c20','true','userinfo.token.claim'),('f426e71c-cdb1-4ca3-b059-561b1c631778','true','access.token.claim'),('f426e71c-cdb1-4ca3-b059-561b1c631778','locale','claim.name'),('f426e71c-cdb1-4ca3-b059-561b1c631778','true','id.token.claim'),('f426e71c-cdb1-4ca3-b059-561b1c631778','true','introspection.token.claim'),('f426e71c-cdb1-4ca3-b059-561b1c631778','String','jsonType.label'),('f426e71c-cdb1-4ca3-b059-561b1c631778','locale','user.attribute'),('f426e71c-cdb1-4ca3-b059-561b1c631778','true','userinfo.token.claim'),('f4517df0-acbb-4050-829b-a74b42ef4f6f','true','access.token.claim'),('f4517df0-acbb-4050-829b-a74b42ef4f6f','true','id.token.claim'),('f4517df0-acbb-4050-829b-a74b42ef4f6f','true','introspection.token.claim'),('f4517df0-acbb-4050-829b-a74b42ef4f6f','true','userinfo.token.claim'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','true','access.token.claim'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','given_name','claim.name'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','true','id.token.claim'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','true','introspection.token.claim'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','String','jsonType.label'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','firstName','user.attribute'),('f70c9310-93e8-4b55-ad4f-78aeb85abc1e','true','userinfo.token.claim'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','true','access.token.claim'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','family_name','claim.name'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','true','id.token.claim'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','true','introspection.token.claim'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','String','jsonType.label'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','lastName','user.attribute'),('f8bca9af-f152-4234-8fdb-3da8c5b4979e','true','userinfo.token.claim'),('f96885c2-a722-42b5-8d75-977c2542ab24','true','access.token.claim'),('f96885c2-a722-42b5-8d75-977c2542ab24','true','introspection.token.claim'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','true','access.token.claim'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','email_verified','claim.name'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','true','id.token.claim'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','true','introspection.token.claim'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','boolean','jsonType.label'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','emailVerified','user.attribute'),('fd6da741-3fc7-4369-8476-52cb8ceac6fc','true','userinfo.token.claim'),('ff426cfd-b31b-4dda-9041-53804db4932b','true','access.token.claim'),('ff426cfd-b31b-4dda-9041-53804db4932b','locale','claim.name'),('ff426cfd-b31b-4dda-9041-53804db4932b','true','id.token.claim'),('ff426cfd-b31b-4dda-9041-53804db4932b','true','introspection.token.claim'),('ff426cfd-b31b-4dda-9041-53804db4932b','String','jsonType.label'),('ff426cfd-b31b-4dda-9041-53804db4932b','locale','user.attribute'),('ff426cfd-b31b-4dda-9041-53804db4932b','true','userinfo.token.claim'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','true','access.token.claim'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','locale','claim.name'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','true','id.token.claim'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','true','introspection.token.claim'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','String','jsonType.label'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','locale','user.attribute'),('ff8d0d20-bc3b-4e68-9656-0591823590e3','true','userinfo.token.claim');
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
INSERT INTO `REALM` VALUES ('34551b50-154e-45d3-a330-d06cf0168fb9',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'cb793279-2d62-4d18-9bca-b8ee563a6e35',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','0a03ef74-3b18-429f-a37a-2b46053155ec','57595fd6-4b62-461c-b3cf-c3b85697499a','1d7125e1-202e-4723-955a-6ae98e10ff22','9841af39-2abe-45e1-b40b-9055708ff252','fa872651-1e01-49ed-a1e7-3f7515a3ffcf',31536000,0,900,1,0,'d181fc35-da3d-4ce6-81fc-0ef1d6bfb116',0,0,0,0,'e654696c-9f03-4220-9d27-7e1beea797d9'),('org1',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org1',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'6ca50dfb-2dcc-4e72-987e-33b96ae39eaa',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','8d533e8c-b2a7-4c31-90f8-959a82534f27','0bc55eb7-5b0d-412a-ac08-c7c4ba936a89','b9c5267e-a331-464f-8e37-de7c6f4c5fe6','fc57b4cf-7234-4c40-a191-d299412f0065','afd5195d-bbee-4cb0-a7a3-77671a18bdaa',31536000,0,900,1,0,'c77284e6-2d84-4706-a1ff-ed33342883b6',0,0,0,0,'21863812-0fb7-4563-8826-b7f1afbdc4d6'),('org2',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org2',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'b70f7166-5c1f-4d65-a11a-12984cf2033d',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','3d251077-5c59-4e90-9e6d-445eb0f4f241','2976de61-b959-4758-a91d-8a50db9608e6','978c975e-af8c-4d0a-93be-25856d3c6aae','67f43f71-1f00-4348-a93b-187b32eafb27','b18fe658-476f-45b4-968d-f147030d9a84',31536000,0,900,1,0,'bde5fa7a-9272-4e3b-9bbd-f08f499298f3',0,0,0,0,'31775010-4e18-4e31-b952-fc986390f81b'),('org3',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org3',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'132a9080-6a05-43c8-bb6d-8f9ad0444045',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','4f6c0fb4-47b2-4e55-8a71-9aac266c032c','1e2772e3-b3d7-4dd9-b6a6-eb7bff97b0f5','fefe068b-f553-4d9f-b578-052b75e4c330','6a31cd4f-644d-4809-b227-05b9937aa086','12ca82d8-ae85-4b77-8dd6-0da1839a6998',31536000,0,900,1,0,'94eb4254-5f47-42e7-abfe-025a9b55f99d',0,0,0,0,'665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087'),('org4',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org4',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'e0bd8ace-d20e-423e-8dc9-2a1c6957be8d',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','9eb9a5cc-fec6-4663-8026-47ec7c2a25d4','ba04b73a-1b83-4d3d-b56b-e64326d73009','01bd8a31-5618-4463-a05f-a4a39578f665','ac329bdf-93e4-4a5a-91cc-43258d706cfe','a8a07762-580c-4806-a360-7a7e39693575',31536000,0,900,1,0,'db7b0f5c-6ff8-4a43-ba78-76e195fdafe1',0,0,0,0,'42a42c06-0ddf-42dc-b8bb-8a8fc30f4919'),('org5',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org5',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'555ccbc1-82f7-47c5-a834-ca9224d51de1',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','94fe3f30-7827-454e-959a-487cfb5fc3c1','309abcb7-aaa0-45d8-b511-4212ac4cca8e','a915d0dd-c883-4ad3-b744-3d94cb585515','afa2b5bc-4beb-4719-9296-86ae19ad108f','72ff433c-a793-4a0b-913d-551a075ab010',31536000,0,900,1,0,'9c5a0039-6d6a-4e23-98af-a954afefe4b2',0,0,0,0,'84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','34551b50-154e-45d3-a330-d06cf0168fb9','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','34551b50-154e-45d3-a330-d06cf0168fb9','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','34551b50-154e-45d3-a330-d06cf0168fb9','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','34551b50-154e-45d3-a330-d06cf0168fb9','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','34551b50-154e-45d3-a330-d06cf0168fb9','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','34551b50-154e-45d3-a330-d06cf0168fb9','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','34551b50-154e-45d3-a330-d06cf0168fb9','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','34551b50-154e-45d3-a330-d06cf0168fb9','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','34551b50-154e-45d3-a330-d06cf0168fb9','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('firstBrokerLoginFlowId','34551b50-154e-45d3-a330-d06cf0168fb9','b081e944-71ff-482f-acb2-381718d5fbe4'),('firstBrokerLoginFlowId','org1','8cf015c4-0f7a-436e-8231-3067315d867b'),('firstBrokerLoginFlowId','org2','54c6989a-6789-4fa9-9970-ff44d1aa62ec'),('firstBrokerLoginFlowId','org3','b17ddebd-5e92-455b-a7bd-6adda7416671'),('firstBrokerLoginFlowId','org4','4049a487-b566-4ea2-95c8-a73dff1eae15'),('firstBrokerLoginFlowId','org5','a712225e-0969-4f4e-a9ac-740a15ac75e0'),('maxDeltaTimeSeconds','34551b50-154e-45d3-a330-d06cf0168fb9','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','34551b50-154e-45d3-a330-d06cf0168fb9','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('maxTemporaryLockouts','34551b50-154e-45d3-a330-d06cf0168fb9','0'),('maxTemporaryLockouts','org1','0'),('maxTemporaryLockouts','org2','0'),('maxTemporaryLockouts','org3','0'),('maxTemporaryLockouts','org4','0'),('maxTemporaryLockouts','org5','0'),('minimumQuickLoginWaitSeconds','34551b50-154e-45d3-a330-d06cf0168fb9','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','34551b50-154e-45d3-a330-d06cf0168fb9','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','34551b50-154e-45d3-a330-d06cf0168fb9','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','34551b50-154e-45d3-a330-d06cf0168fb9','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','34551b50-154e-45d3-a330-d06cf0168fb9','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','34551b50-154e-45d3-a330-d06cf0168fb9','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','34551b50-154e-45d3-a330-d06cf0168fb9','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','34551b50-154e-45d3-a330-d06cf0168fb9','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','34551b50-154e-45d3-a330-d06cf0168fb9','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','34551b50-154e-45d3-a330-d06cf0168fb9','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','34551b50-154e-45d3-a330-d06cf0168fb9',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.referrerPolicy','34551b50-154e-45d3-a330-d06cf0168fb9','no-referrer'),('_browser_header.referrerPolicy','org1','no-referrer'),('_browser_header.referrerPolicy','org2','no-referrer'),('_browser_header.referrerPolicy','org3','no-referrer'),('_browser_header.referrerPolicy','org4','no-referrer'),('_browser_header.referrerPolicy','org5','no-referrer'),('_browser_header.strictTransportSecurity','34551b50-154e-45d3-a330-d06cf0168fb9','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','34551b50-154e-45d3-a330-d06cf0168fb9','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','34551b50-154e-45d3-a330-d06cf0168fb9','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','34551b50-154e-45d3-a330-d06cf0168fb9','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','34551b50-154e-45d3-a330-d06cf0168fb9','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('34551b50-154e-45d3-a330-d06cf0168fb9','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'34551b50-154e-45d3-a330-d06cf0168fb9'),('password','password',1,1,'org1'),('password','password',1,1,'org2'),('password','password',1,1,'org3'),('password','password',1,1,'org4'),('password','password',1,1,'org5');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('34551b50-154e-45d3-a330-d06cf0168fb9','en'),('34551b50-154e-45d3-a330-d06cf0168fb9','ja'),('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
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
INSERT INTO `REDIRECT_URIS` VALUES ('03f0f2ad-f94e-4e04-9227-a246a29c1a88','/realms/org3/account/*'),('04458ae7-60f6-44cd-a035-5a396eb993d5','/*'),('09071635-43d3-4f1c-a363-e8bbfb639174','/realms/org2/account/*'),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','/realms/org4/account/*'),('29b1e24a-46ce-43aa-9a8c-f68f0c6ed58b','/realms/org5/account/*'),('2b14a607-36f6-4465-aa57-9d7cf52372d6','/admin/org5/console/*'),('30bd9611-6954-42fa-8383-0951f5ee6e5a','/realms/org3/account/*'),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','/admin/master/console/*'),('4d9fbca2-b670-49f6-97fa-0403247f12f7','/admin/org1/console/*'),('607de3b9-158a-4754-8db6-e7f58142e546','/realms/org1/account/*'),('6323d17f-f227-430a-97da-ec6103441167','/admin/org4/console/*'),('6f99307f-1aad-4431-8856-afe93d965996','/admin/org2/console/*'),('780c20fe-d46f-4c8b-81f9-ef04b7313ec6','/realms/org1/account/*'),('7b641f77-acc3-4adc-9f14-f2da533bbee2','/*'),('90c703cb-e94f-4cc5-847c-95cfc1e84846','/admin/org3/console/*'),('a2a40da7-56ca-4059-8a70-291064b5d6b0','/realms/org2/account/*'),('af9f4fad-edcc-40d4-9a71-58252b58156c','/realms/master/account/*'),('bd270c1d-636d-4691-8268-c3975fa8e1c6','/realms/master/account/*'),('d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd','/*'),('d9319ab8-a8c1-4901-86ac-b7e2ce35ec06','/*'),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','/realms/org5/account/*'),('f6ca71d5-4ebb-461d-b35c-d83a90681c34','/*'),('fa920e55-8c91-4e0f-8808-159a7c61871d','/realms/org4/account/*'),('fe590829-5a72-46df-b480-593cccd24fca','/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('030fe274-5ffa-4e20-9926-de23e29f5c1e','TERMS_AND_CONDITIONS','Terms and Conditions','org3',0,0,'TERMS_AND_CONDITIONS',20),('10a16c05-605a-40a4-b058-f52488616400','delete_account','Delete Account','34551b50-154e-45d3-a330-d06cf0168fb9',0,0,'delete_account',60),('1117cd7a-b3b7-408a-ac59-dfdc7c4ca771','UPDATE_PASSWORD','Update Password','org1',1,0,'UPDATE_PASSWORD',30),('12b02001-ed3a-4e17-9248-5b2fd6eb1f4a','VERIFY_EMAIL','Verify Email','org3',1,0,'VERIFY_EMAIL',50),('15180fb8-fbcc-4e9b-ba26-bc3fdb552855','CONFIGURE_TOTP','Configure OTP','org3',1,0,'CONFIGURE_TOTP',10),('186c4613-bc4b-4ff5-bb1b-d42230991544','TERMS_AND_CONDITIONS','Terms and Conditions','org4',0,0,'TERMS_AND_CONDITIONS',20),('1a3c00a3-ad49-46c7-8cb2-278c61fe2e09','CONFIGURE_TOTP','Configure OTP','org4',1,0,'CONFIGURE_TOTP',10),('1b2f132d-a85a-4ae5-b90e-862b92ec7bd5','VERIFY_PROFILE','Verify Profile','org4',1,0,'VERIFY_PROFILE',90),('1bedb5ff-3f50-414a-9d47-e50eeaca743a','VERIFY_PROFILE','Verify Profile','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'VERIFY_PROFILE',90),('1ec6c09d-6ee4-49e6-acca-8644d1bc1507','TERMS_AND_CONDITIONS','Terms and Conditions','org1',0,0,'TERMS_AND_CONDITIONS',20),('21607c2f-1e32-4046-a4de-13cf3c8078f1','TERMS_AND_CONDITIONS','Terms and Conditions','34551b50-154e-45d3-a330-d06cf0168fb9',0,0,'TERMS_AND_CONDITIONS',20),('220d443f-62bf-4a1e-9b37-2adcbc919a58','delete_account','Delete Account','org2',0,0,'delete_account',60),('23141089-d33f-48a8-86d0-42ce141467e6','VERIFY_EMAIL','Verify Email','org2',1,0,'VERIFY_EMAIL',50),('253898ba-9243-4039-855f-d196d252874d','VERIFY_PROFILE','Verify Profile','org3',1,0,'VERIFY_PROFILE',90),('26fa481c-6c9d-43ec-a79c-bde82c475fe1','VERIFY_PROFILE','Verify Profile','org2',1,0,'VERIFY_PROFILE',90),('28b78c74-08e3-4890-97ac-d7a00a30a538','update_user_locale','Update User Locale','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'update_user_locale',1000),('327b7be9-02da-4708-9540-a7696c1db128','delete_credential','Delete Credential','org3',1,0,'delete_credential',100),('334e9b24-a3fe-42b7-bdcc-5c6fb2bf64bf','CONFIGURE_TOTP','Configure OTP','org1',1,0,'CONFIGURE_TOTP',10),('33f468be-67e1-47d1-901e-f4de122adfd0','webauthn-register-passwordless','Webauthn Register Passwordless','org1',1,0,'webauthn-register-passwordless',80),('38649209-d953-4f1e-8a38-026bb0e5d0bf','update_user_locale','Update User Locale','org5',1,0,'update_user_locale',1000),('38b95e4d-5e21-4bf3-b6d9-39132430c61f','UPDATE_PROFILE','Update Profile','org4',1,0,'UPDATE_PROFILE',40),('3dfb6d18-fd09-4237-8ed0-a60d4eaf329b','update_user_locale','Update User Locale','org4',1,0,'update_user_locale',1000),('4430e3fc-e3e6-4ba6-93bf-bad237287570','UPDATE_PROFILE','Update Profile','org1',1,0,'UPDATE_PROFILE',40),('4682b59f-2972-4fd6-a60f-0c90822e41f3','UPDATE_PASSWORD','Update Password','org5',1,0,'UPDATE_PASSWORD',30),('4a1708f9-fc56-4fb2-ba72-196aa7786eba','CONFIGURE_TOTP','Configure OTP','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'CONFIGURE_TOTP',10),('4dfaafcf-4d5c-4b70-986c-eecf9b95732a','TERMS_AND_CONDITIONS','Terms and Conditions','org2',0,0,'TERMS_AND_CONDITIONS',20),('4e0b3f75-8ce1-463d-a549-348fdb598dea','webauthn-register','Webauthn Register','org1',1,0,'webauthn-register',70),('4ed3ee28-6b90-4fc3-b40f-7d9fa1473aed','delete_credential','Delete Credential','org5',1,0,'delete_credential',100),('532b0067-57b5-483a-9fa2-0a117308a934','UPDATE_PROFILE','Update Profile','org3',1,0,'UPDATE_PROFILE',40),('55055c38-bd2b-469d-9c3c-23d618ad4a82','UPDATE_PROFILE','Update Profile','org2',1,0,'UPDATE_PROFILE',40),('57ca6ca3-1fed-41f0-aedd-1f1a27757b79','UPDATE_PROFILE','Update Profile','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'UPDATE_PROFILE',40),('57f3391f-b5f0-4d3d-a53f-52d9ddacdd54','delete_credential','Delete Credential','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'delete_credential',100),('61729503-27f0-48d3-9ed8-742796c81d0a','TERMS_AND_CONDITIONS','Terms and Conditions','org5',0,0,'TERMS_AND_CONDITIONS',20),('625d92df-f9b5-4c1e-aa2c-94200a404342','update_user_locale','Update User Locale','org1',1,0,'update_user_locale',1000),('66a6c29c-6b38-4c04-abb1-2b00919cff59','webauthn-register-passwordless','Webauthn Register Passwordless','org2',1,0,'webauthn-register-passwordless',80),('6cebc28b-1885-497f-a14e-cde7cc39ee88','update_user_locale','Update User Locale','org2',1,0,'update_user_locale',1000),('75e0fd00-eb04-45e0-a2e6-07150d53926f','CONFIGURE_TOTP','Configure OTP','org2',1,0,'CONFIGURE_TOTP',10),('81486585-1571-4b2b-9958-36c50bc8ee74','delete_credential','Delete Credential','org4',1,0,'delete_credential',100),('87ae3079-3e72-49af-87be-3558404ba502','delete_credential','Delete Credential','org2',1,0,'delete_credential',100),('8c185f36-42f6-432b-b02e-e88e8042f1fb','webauthn-register','Webauthn Register','org4',1,0,'webauthn-register',70),('953bfdee-520f-4ac3-ba44-cb0fffae2fa0','delete_account','Delete Account','org4',0,0,'delete_account',60),('9ebe9b76-c2c2-4171-a168-6dfc86f1dfff','UPDATE_PASSWORD','Update Password','org3',1,0,'UPDATE_PASSWORD',30),('a619755d-46d6-408b-a749-533a939a54c2','VERIFY_EMAIL','Verify Email','org5',1,0,'VERIFY_EMAIL',50),('ae237fae-962f-4df6-ae46-dd9e0e96960f','UPDATE_PROFILE','Update Profile','org5',1,0,'UPDATE_PROFILE',40),('afc14daa-fb2c-4dae-b0c5-f6b247be03f9','webauthn-register','Webauthn Register','org2',1,0,'webauthn-register',70),('b466da0d-b079-494a-a6b1-7222f4f5cbce','UPDATE_PASSWORD','Update Password','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'UPDATE_PASSWORD',30),('b5f74919-e271-45f3-8b71-e10bc95b0668','webauthn-register-passwordless','Webauthn Register Passwordless','org3',1,0,'webauthn-register-passwordless',80),('c6b2feb9-4a22-405e-b40e-3845cfee744a','UPDATE_PASSWORD','Update Password','org4',1,0,'UPDATE_PASSWORD',30),('c7154f36-ae60-4334-b2ff-bef5dbec6ef0','webauthn-register','Webauthn Register','org3',1,0,'webauthn-register',70),('c73b196a-0207-4a4c-b54d-2457243f9ec6','VERIFY_EMAIL','Verify Email','org1',1,0,'VERIFY_EMAIL',50),('cb0569cd-dd57-4962-a603-76905dc057ba','webauthn-register-passwordless','Webauthn Register Passwordless','org5',1,0,'webauthn-register-passwordless',80),('cde30152-b6f1-4ae4-9dd4-d228e5cf720d','webauthn-register-passwordless','Webauthn Register Passwordless','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'webauthn-register-passwordless',80),('cf29ac87-85a4-4284-8018-c9f1dd093ed8','webauthn-register','Webauthn Register','org5',1,0,'webauthn-register',70),('d0feb8a6-2766-4e50-a4b6-9c15590290c2','CONFIGURE_TOTP','Configure OTP','org5',1,0,'CONFIGURE_TOTP',10),('d4fdf02d-702d-445f-822f-4d54c2888408','UPDATE_PASSWORD','Update Password','org2',1,0,'UPDATE_PASSWORD',30),('deb9694d-1234-490f-8f0a-8a4f364c86d6','delete_account','Delete Account','org1',0,0,'delete_account',60),('df3a1fe6-56e6-4b1f-be08-4647cfc918d8','delete_account','Delete Account','org3',0,0,'delete_account',60),('df8722fa-3e3a-470c-a6c8-deb8abaf5f6d','update_user_locale','Update User Locale','org3',1,0,'update_user_locale',1000),('e090924f-258f-4426-871b-4c55649d0408','VERIFY_PROFILE','Verify Profile','org5',1,0,'VERIFY_PROFILE',90),('e8e70b6d-c310-4c26-9abd-6957c7e05f85','VERIFY_PROFILE','Verify Profile','org1',1,0,'VERIFY_PROFILE',90),('f06b2145-a0d8-4cd6-8521-fe1254ff43b3','VERIFY_EMAIL','Verify Email','org4',1,0,'VERIFY_EMAIL',50),('f44000eb-8fec-47a8-91bd-0e1172f22f63','webauthn-register-passwordless','Webauthn Register Passwordless','org4',1,0,'webauthn-register-passwordless',80),('f5e24a63-0aec-48ab-8783-d8e08ad377d5','delete_credential','Delete Credential','org1',1,0,'delete_credential',100),('f83b1a21-fb3f-4ae6-9bec-cc9d4fef3174','delete_account','Delete Account','org5',0,0,'delete_account',60),('fb2b81e7-36d9-45cd-b11d-39fcc75a04ac','VERIFY_EMAIL','Verify Email','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'VERIFY_EMAIL',50),('ff03db15-7eeb-4257-8f73-ef678bd94574','webauthn-register','Webauthn Register','34551b50-154e-45d3-a330-d06cf0168fb9',1,0,'webauthn-register',70);
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('01ca8f8f-077e-48d4-a810-e4437e2e6e22','2203c784-b0de-4cf8-bb6a-3363af8d0893','kind','workspace'),('0af84e92-32d9-4a3e-9717-2bff3ec6823e','90768c1e-d12e-41aa-b6bb-ffeb4d8fcc99','kind','organization'),('0b134da0-b3bc-4988-8c65-cdd2d9b9755d','4d8d3678-b288-4dee-8423-eb57bd465b03','kind','workspace'),('0c62b395-a64e-4956-9274-ee2d63429a2d','df067833-d5e4-45a5-88f3-33febd0e2c0e','kind','workspace'),('0f61f2f5-6e49-4b53-a19a-ec8b4dbd8c62','1881f2ef-cef6-458e-9940-b08341f1abad','kind','workspace'),('15f75345-5e6b-46a4-9a2e-3729ac59ec0e','f341d9f0-53cf-4cdd-a571-560193e475ab','kind','organization'),('16596d38-c9d7-4e33-95c5-a7519898d5f0','ee97e63b-3349-4a6b-ac77-80581c71f31b','kind','workspace'),('1f49fb01-9261-46ab-8b4f-a923d4299cb3','8522d94a-9180-4492-90e6-3f7af91c9fa5','kind','workspace'),('20b160c2-366d-44fe-b780-97f813cbc5f1','5c427599-92a1-4eef-84cb-7903dde1962e','kind','workspace'),('2c296c45-1277-4023-adf6-b525ee456629','a9bbd368-f4e3-491c-a5c7-c6eda8b73439','kind','organization'),('327c4c19-51a5-452f-856d-dc11a33761bd','5639a881-4b10-4906-8881-ed8484667b88','kind','organization'),('482eb861-6d8b-4fc6-bbe1-3d0cb6ac5f8b','4018e577-0f65-44bd-8d6c-e65a2f4fda91','kind','workspace'),('4e382312-9ce3-4e9e-87bf-1949ad577f73','b744684e-5231-49d3-855a-8bd52a1c4cce','kind','workspace'),('4f859f7a-3e65-44e4-936e-9b4e80afbfc0','83f846cc-ee9e-4bdb-b039-2f21a0349181','kind','workspace'),('52d78736-b523-4c9d-ab91-a6ee16885f22','759d6dbb-128a-4323-8546-e129d85e0952','kind','organization'),('52e86e44-b803-45f1-90b7-1db07b649bcb','c3e9db12-e003-43da-84a5-1335e75399a1','kind','workspace'),('53e576e9-3a3f-4a05-8131-20470d624560','8047ef8b-5105-4b3a-8884-fc10607283f6','kind','workspace'),('57a9c28a-604c-44ba-a924-f0c222b78261','09cdac04-e897-44ba-a7c6-fbf0dfb9365b','kind','workspace'),('5c9c591c-d009-40a5-a359-2fc6ca5bb49e','85cd7787-57e2-4db6-82fd-8d30777e84ce','kind','workspace'),('602966bd-3a3c-4312-ae79-93efeb8edde7','fda30a7a-71d8-468b-8abf-e73c5e5e5458','kind','workspace'),('6b0ea462-1387-4f2f-910f-13c03f6bbe93','5694d100-804e-4fdf-85d2-04d3efa04d7e','kind','workspace'),('6d5bee44-48c8-4ae6-9703-9d65c11220d0','a203d91d-8bc9-4359-b6a1-bb90cae1c078','kind','workspace'),('6f5bab14-bca1-4706-a3bc-c55bd8194d1c','fcff19d5-1b73-43f4-af56-6a60c16edd6f','kind','workspace'),('70001907-866a-42d2-b285-89d9bacd80fb','7a0d541d-53bc-4eaf-901e-3c442c5f25c7','kind','workspace'),('75d129be-99e8-4582-8d93-a67060fec368','698d6d13-4e5c-48ef-8ad5-dffc50d30d00','kind','workspace'),('77a357f2-9f77-4315-95f4-ffeb81a3d8d2','0f547ced-b71b-4e80-b973-4cf278ee68af','kind','workspace'),('7ac63227-314c-4b8d-9a23-fbc49fd936d2','7dfcfa49-c812-4c03-b45a-8defe69cd28b','kind','workspace'),('8ae54729-5e46-4460-82af-2674eb65677f','e57dc26e-bb81-4b1d-9410-e7b05b8f3d02','kind','workspace'),('8d8b56ab-1217-41eb-b9f6-3c52b9b31d25','da407b7c-69bc-4c80-beb9-153c3df75535','kind','organization'),('90c40c96-0691-4c37-ba72-298dd1050d35','f0741211-ebf5-4c93-9864-ec3eed18a810','kind','organization'),('91b36cf0-31ac-442b-ad8b-d504dd080481','af8a468b-d3dc-4958-b931-9da5c6c66f5c','kind','organization'),('923f4541-f703-4a38-b053-833c33222828','63f8b2d9-1f98-468d-a19b-3642b8d7fafd','kind','workspace'),('95d637a7-ad33-4e8e-bc2d-9623d689f8d8','f07c8381-0990-461c-88e6-d17a424f9c98','kind','workspace'),('9748cb41-05aa-456d-83ff-c7efdb0c2183','67baa771-e452-4b95-9802-2de4ed5d4f92','kind','workspace'),('98729d24-a102-4ffa-a00d-3026bcba31cd','6b218d00-24f1-40b7-9b49-ed040de6885a','kind','organization'),('a1475852-5965-4937-9a6b-cb4f24b41a39','280cf8d4-9945-4435-a04b-35baa75ab475','kind','workspace'),('a2091eb9-06bf-4a29-a30a-328cce7e135c','80c7fbdb-44c7-43f7-965d-ca83acaf5376','kind','workspace'),('a5c8cffa-40bc-4187-accb-4822e8028b35','02eed8a5-b622-488e-8fb5-0c35e48fc191','kind','workspace'),('ace463aa-b2b9-41ec-99d2-ca6675461ba4','e4ed37ec-1e1a-43f5-937c-eddd7d9628b7','kind','workspace'),('b2a88e5e-3e8d-44fb-9ffa-69d18c6685c4','a2d45372-98b7-4526-a9f6-404bf3421783','kind','organization'),('b42b25cb-ff5a-4903-963a-6ff11782e8c3','2bfa1a84-f1f1-4d12-a0e0-222e73a0009a','kind','workspace'),('b5f405e8-2a65-4fbc-b77e-ea7b97bbd522','8d951762-e1f6-4359-a571-3691f305ec9b','kind','workspace'),('ba80fa35-beaf-4d00-ac58-1e6adc9a0555','c1993e55-7bca-4846-9edc-ed6baaa96c68','kind','organization'),('bc5f8b10-d29a-488d-8a3d-9dcae39bb88e','cf353d7c-ead2-4897-97a6-bd13321406b9','kind','organization'),('bda1ef09-2172-4769-b630-20fde4f9601b','ad0cd736-3afd-4525-b701-a211b055de52','kind','organization'),('c00d069b-2954-4a8e-90d2-e3897bc1f772','defc61c8-8f6e-4d9c-bb7a-eb0b92139c2d','kind','workspace'),('c3dc975c-01d0-4357-8e59-85f5ad35a3aa','bd88ceb7-348e-4b34-acf7-cd1bf3257a4b','kind','workspace'),('c52aeef3-6ca9-4d2c-ba30-ad40caba2c8d','22879c93-561f-4935-8778-e581ec286621','kind','organization'),('cca259c6-0989-444d-b2b8-8d243f227626','8978f64e-0efa-4651-8e3e-2c4412c45253','kind','workspace'),('d59b3d4b-2713-4566-90dc-2b757b3c354d','25f1a938-d0b2-49b2-ba87-3217c2a3a140','kind','workspace'),('d7690ccc-38f4-4fcf-bbe6-2a2ad4e6c2ce','55e03eed-689a-419b-8069-2ccf47c1185c','kind','workspace'),('d94accab-d44b-4af4-8731-1cd7acfefcec','fce977e5-f65f-4bf3-93cf-8ad51dfe670a','kind','workspace'),('dc1a1126-e9e8-4be5-9eaa-c6fe8c702741','33a807ce-b0e2-42fd-b231-ed33e30ffc3d','kind','workspace'),('e474d0e0-b034-4124-a6ea-71b60c750900','bda514bc-59a2-411e-9633-2e4051b9bb47','kind','workspace'),('e9385287-73a6-4058-b473-0bc852b8e77d','e3456ec2-ab20-4c44-81a5-464adb083a29','kind','workspace'),('ebad3adb-651d-4a84-9457-cc7bab11bc6f','d3c83741-4d7c-4f8d-a967-e145f43a1f37','kind','workspace'),('f0ca3e92-3f1d-4c17-aed8-47051af4656b','7e671689-c837-446c-866b-3bbfe10af02a','kind','workspace'),('f81fc06c-94b6-45b9-ac03-c97ddf2d987a','c3fd568d-8abd-4c67-97ff-9fe18f6d9bab','kind','workspace'),('f8e1e3b9-725a-4e2a-a0bb-443fb3254d5a','b15deda8-eed7-4036-958f-d35d996d7546','kind','organization'),('f8e4220f-0e17-4219-8abe-280f91203c92','cb2356ac-a111-4d44-84a3-7372e51273b4','kind','workspace');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('03f0f2ad-f94e-4e04-9227-a246a29c1a88','698b9075-91b7-4c88-b6c7-1b6a731ebb7e'),('03f0f2ad-f94e-4e04-9227-a246a29c1a88','c1867c6f-41ed-4ece-a3c6-cdbffa0c632f'),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','53ce041d-d078-43bf-9c36-4c16e0401a8e'),('14fc82f2-c9d0-4a4e-867a-da8b620b0e96','d8fed178-71ad-44b0-98b3-0f8fdd736765'),('607de3b9-158a-4754-8db6-e7f58142e546','0e9cdc04-4408-4ae3-82e0-264a4c13e41b'),('607de3b9-158a-4754-8db6-e7f58142e546','10c862d6-8f0e-4582-92f5-f153cdb93720'),('a2a40da7-56ca-4059-8a70-291064b5d6b0','40a6136b-8107-42e1-b0d1-2bde767ee524'),('a2a40da7-56ca-4059-8a70-291064b5d6b0','e29bd2f2-a9d2-4be7-88a0-33f727d73467'),('af9f4fad-edcc-40d4-9a71-58252b58156c','5c47b6bc-0b6d-4bef-8915-3035365eb8d8'),('af9f4fad-edcc-40d4-9a71-58252b58156c','b3253222-ed99-4302-85c4-87f21af532f6'),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','77305773-f1b2-472d-8f17-af9ddd98347e'),('dc110ff3-a6b6-4692-b512-cfae6a79d9a6','cff74f55-002a-4dc7-81d4-8850e7afe491');
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
INSERT INTO `USER_ENTITY` VALUES ('3ac94582-416f-4654-8f64-70599142462d',NULL,'106bb474-970e-4139-8e24-e057ab1fc4a0',0,1,NULL,NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','service-account-_platform',1720055131714,'1e661719-8161-4c86-b686-a215cbcff768',0),('3e11349f-e4f6-47f3-80ad-d2a14e410dcc',NULL,'391a061d-a066-4544-9cd7-594a1ad14391',0,1,NULL,NULL,NULL,'org1','service-account-org1-workspaces',1720055227061,'064213d5-bf33-4ac5-b7be-eea67610f415',0),('3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org3','admin',1720055292352,NULL,0),('65594d4f-8662-4ac4-9a06-a075380e61f0',NULL,'eb2bcae6-cacc-4fbc-b456-51a1d54dfe8b',0,1,NULL,NULL,NULL,'org3','service-account-org3-workspaces',1720055290418,'19f88bac-766a-42e7-8df2-e247cd3f10bf',0),('79261952-4862-4a4d-8da1-1ce8ca3b1481','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org1','admin',1720055230059,NULL,0),('7de05e66-8cfd-4eca-b5bc-b44646fdcfb0',NULL,'e4be9dde-b711-4d6f-be17-2d4ab5e308de',0,1,NULL,NULL,NULL,'34551b50-154e-45d3-a330-d06cf0168fb9','admin',1720055124678,NULL,0),('883922dc-0db0-4924-b24e-288971d44e3e','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org4','admin',1720055319906,NULL,0),('94673dfb-c3f4-4ff6-a269-79fb12871f00',NULL,'9e7f57eb-3c2b-4a6a-9f98-e33a36b711e7',0,1,NULL,NULL,NULL,'org4','service-account-org4-workspaces',1720055318090,'323db795-227a-46f6-bdde-d509c310ef10',0),('cb005670-e056-42e4-ab27-64d7d439de6a',NULL,'7629a3a4-ff1e-455d-bb1c-7e9a0d9005a8',0,1,NULL,NULL,NULL,'org2','service-account-org2-workspaces',1720055261706,'a38acb55-dd09-4a1d-a9e3-9d2811351c30',0),('e18d56f4-d90e-4c00-a402-98bb4ce3a55b','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org2','admin',1720055263710,NULL,0),('e4b2c29c-756d-4125-bf6f-3843746d3d08','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org5','admin',1720055349634,NULL,0),('fe7017be-5aed-40e6-a190-326b86670c59',NULL,'7eb7afe0-0461-4de3-8efb-0f9174ef62d3',0,1,NULL,NULL,NULL,'org5','service-account-org5-workspaces',1720055347273,'c4dc76fb-a8ec-4565-b899-384117fcb403',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('21863812-0fb7-4563-8826-b7f1afbdc4d6','3e11349f-e4f6-47f3-80ad-d2a14e410dcc'),('21863812-0fb7-4563-8826-b7f1afbdc4d6','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('21af0f32-3f5e-4956-b7b6-82d41c598ab5','65594d4f-8662-4ac4-9a06-a075380e61f0'),('22879c93-561f-4935-8778-e581ec286621','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('2bfa1a84-f1f1-4d12-a0e0-222e73a0009a','883922dc-0db0-4924-b24e-288971d44e3e'),('31775010-4e18-4e31-b952-fc986390f81b','cb005670-e056-42e4-ab27-64d7d439de6a'),('31775010-4e18-4e31-b952-fc986390f81b','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','883922dc-0db0-4924-b24e-288971d44e3e'),('42a42c06-0ddf-42dc-b8bb-8a8fc30f4919','94673dfb-c3f4-4ff6-a269-79fb12871f00'),('4d8d3678-b288-4dee-8423-eb57bd465b03','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('55e03eed-689a-419b-8069-2ccf47c1185c','883922dc-0db0-4924-b24e-288971d44e3e'),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('665f0d4d-74d1-4a7a-b8dc-ec2a82ef2087','65594d4f-8662-4ac4-9a06-a075380e61f0'),('67baa771-e452-4b95-9802-2de4ed5d4f92','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('6e17c6d1-8d27-4198-b0ca-bf1060f8d185','94673dfb-c3f4-4ff6-a269-79fb12871f00'),('72192981-125e-46dd-aca7-35af9c38c70d','fe7017be-5aed-40e6-a190-326b86670c59'),('7e671689-c837-446c-866b-3bbfe10af02a','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('83f846cc-ee9e-4bdb-b039-2f21a0349181','883922dc-0db0-4924-b24e-288971d44e3e'),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('84d5e6d5-cbe9-42ae-8935-0ae96b3c6a9d','fe7017be-5aed-40e6-a190-326b86670c59'),('8522d94a-9180-4492-90e6-3f7af91c9fa5','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('85cd7787-57e2-4db6-82fd-8d30777e84ce','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('85f05404-9f2f-45bc-883b-8a85f5777741','3ac94582-416f-4654-8f64-70599142462d'),('85f05404-9f2f-45bc-883b-8a85f5777741','7de05e66-8cfd-4eca-b5bc-b44646fdcfb0'),('8850600c-0101-4e10-95eb-1b691988da5c','3e11349f-e4f6-47f3-80ad-d2a14e410dcc'),('8d951762-e1f6-4359-a571-3691f305ec9b','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('9513f688-13f9-4816-8790-4bc580754c47','cb005670-e056-42e4-ab27-64d7d439de6a'),('a2d45372-98b7-4526-a9f6-404bf3421783','883922dc-0db0-4924-b24e-288971d44e3e'),('a9bbd368-f4e3-491c-a5c7-c6eda8b73439','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('bda514bc-59a2-411e-9633-2e4051b9bb47','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('c1993e55-7bca-4846-9edc-ed6baaa96c68','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('c3e9db12-e003-43da-84a5-1335e75399a1','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('da407b7c-69bc-4c80-beb9-153c3df75535','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('e4ed37ec-1e1a-43f5-937c-eddd7d9628b7','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('e654696c-9f03-4220-9d27-7e1beea797d9','3ac94582-416f-4654-8f64-70599142462d'),('e654696c-9f03-4220-9d27-7e1beea797d9','7de05e66-8cfd-4eca-b5bc-b44646fdcfb0'),('ee97e63b-3349-4a6b-ac77-80581c71f31b','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('fcff19d5-1b73-43f4-af56-6a60c16edd6f','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('fda30a7a-71d8-468b-8abf-e73c5e5e5458','e4b2c29c-756d-4125-bf6f-3843746d3d08');
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
INSERT INTO `WEB_ORIGINS` VALUES ('2b14a607-36f6-4465-aa57-9d7cf52372d6','+'),('3a9db652-cdf9-4b28-aaf2-6aa0e84d10b8','+'),('4d9fbca2-b670-49f6-97fa-0403247f12f7','+'),('6323d17f-f227-430a-97da-ec6103441167','+'),('6f99307f-1aad-4431-8856-afe93d965996','+'),('90c703cb-e94f-4cc5-847c-95cfc1e84846','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-07-04 10:05:42','dummy','2024-07-04 10:05:42','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-07-04 10:05:34','dummy','2024-07-04 10:05:34','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-07-04 10:05:34','dummy','2024-07-04 10:05:34','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-07-04 10:05:34','dummy','2024-07-04 10:05:34','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-07-04 10:05:34','dummy','2024-07-04 10:05:34','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-07-04 10:05:34','dummy','2024-07-04 10:05:34','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-07-04 10:05:32.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-07-04 10:05:32.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-04 10:07:03','unittest-user01','2024-07-04 10:07:16','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-04 10:07:39','unittest-user01','2024-07-04 10:07:45','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-04 10:08:07','unittest-user01','2024-07-04 10:08:14','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-04 10:08:34','unittest-user01','2024-07-04 10:08:41','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-04 10:09:03','unittest-user01','2024-07-04 10:09:11','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_DZTNJDW0YXYTPV5OK8GO','PF_ORG_DZTNJDW0YXYTPV5OK8GO','pr0qTEf2p5NIbv0IbNiONDfIYr3imG4cXtJhBuv9DqTNTP16Wuxe3lMKAg5ZeiXg','2024-07-04 10:07:10','unittest-user01','2024-07-04 10:09:34','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_NGRAPGO9U0NR2407XPS6','PF_ORG_NGRAPGO9U0NR2407XPS6','bIY0USUCKdYShM38CRp8AofDpqUlv6wopI9cRAVeLJt0fOnzA0qoWVTkCnakBp+T','2024-07-04 10:07:44','unittest-user01','2024-07-04 10:09:34','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_EVEYOBR2NOI0T2EV8A0Q','PF_ORG_EVEYOBR2NOI0T2EV8A0Q','asGq9FaQDkuP3eDesnPEy7qfD0x9LIuyNwThF5RC+82XlPgXAmI7C8l2MoAMuG9O','2024-07-04 10:08:13','unittest-user01','2024-07-04 10:09:34','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_L5M5AJMAOAHCIBSZPAF3','PF_ORG_L5M5AJMAOAHCIBSZPAF3','XwExl44ze3+NeJz44MM9q3nWfGkInhTVMhERv2h3iaq0/kEcfL0c5ek5ceVfZBW3','2024-07-04 10:08:40','unittest-user01','2024-07-04 10:09:34','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_8QZ6JDHXROD0UGXAWSHK','PF_ORG_8QZ6JDHXROD0UGXAWSHK','HewPxwNw9D3qpW1PvWw92fQlsjIoFGiXB9mOzEb1H2Sokxlsaq8hIPMaeX7u/CWa','2024-07-04 10:09:10','unittest-user01','2024-07-04 10:09:34','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-07-04 10:05:30','system','2024-07-04 10:05:30','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-07-04 10:05:42','dummy','2024-07-04 10:05:42','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-07-04 10:05:30','system','2024-07-04 10:05:33','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-07-04 10:05:30','system','2024-07-04 10:05:33','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-07-04 10:05:30','system','2024-07-04 10:05:33','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-07-04 10:05:42','dummy','2024-07-04 10:05:42','dummy'),('_default','platform.roles',1000,'2024-07-04 10:05:30','system','2024-07-04 10:05:30','system'),('_default','platform.users',10000,'2024-07-04 10:05:30','system','2024-07-04 10:05:30','system'),('_default','platform.workspaces',100,'2024-07-04 10:05:30','system','2024-07-04 10:05:30','system');
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
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-07-04 10:05:29','1.9.0','2024-07-04 10:05:29','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-07-04 10:05:32','1.9.0','2024-07-04 10:05:32','1.9.0'),(3,'1.5.0','START',NULL,'2024-07-04 10:05:32','1.9.0','2024-07-04 10:05:32','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-07-04 10:05:32','1.9.0','2024-07-04 10:05:32','1.9.0'),(5,'1.5.2','START',NULL,'2024-07-04 10:05:32','1.9.0','2024-07-04 10:05:32','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-07-04 10:05:32','1.9.0','2024-07-04 10:05:32','1.9.0'),(7,'1.6.0','START',NULL,'2024-07-04 10:05:32','1.9.0','2024-07-04 10:05:32','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-07-04 10:05:33','1.9.0','2024-07-04 10:05:33','1.9.0'),(9,'1.7.0','START',NULL,'2024-07-04 10:05:33','1.9.0','2024-07-04 10:05:33','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-07-04 10:05:33','1.9.0','2024-07-04 10:05:33','1.9.0'),(11,'1.8.0','START',NULL,'2024-07-04 10:05:33','1.9.0','2024-07-04 10:05:33','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-07-04 10:05:33','1.9.0','2024-07-04 10:05:33','1.9.0'),(13,'1.8.1','START',NULL,'2024-07-04 10:05:33','1.9.0','2024-07-04 10:05:33','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-07-04 10:05:34','1.9.0','2024-07-04 10:05:34','1.9.0'),(15,'1.8.2','START',NULL,'2024-07-04 10:05:34','1.9.0','2024-07-04 10:05:34','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-07-04 10:05:35','1.9.0','2024-07-04 10:05:35','1.9.0'),(17,'1.9.0','START',NULL,'2024-07-04 10:05:35','1.9.0','2024-07-04 10:05:35','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-07-04 10:05:35','1.9.0','2024-07-04 10:05:35','1.9.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"1e661719-8161-4c86-b686-a215cbcff768\", \"TOKEN_CHECK_CLIENT_SECRET\": \"6cHCIDGBnQ6DWHrn4VNjVi7A0ruWTG2n\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"4902cb80-2936-4df4-a38e-b2200ea3269d\"}','2024-07-04 10:05:32','system','2024-07-04 10:05:32','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-07-04 10:04:25','system','2024-07-04 10:05:35','1.9.0');
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
-- Current Database: `PF_ORG_DZTNJDW0YXYTPV5OK8GO`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_DZTNJDW0YXYTPV5OK8GO` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_DZTNJDW0YXYTPV5OK8GO`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"04458ae7-60f6-44cd-a035-5a396eb993d5\", \"USER_TOKEN_CLIENT_SECRET\": \"KlOqv2Ii93rmOltdMmCDEKny0ujdDK3Q\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"064213d5-bf33-4ac5-b7be-eea67610f415\", \"INTERNAL_API_CLIENT_SECRET\": \"1G9iXtOCrEWgmpvkptfSdlZuCwf4qLkb\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"1d5b7a91-fec4-49bf-9946-4bfa01cd24d5\", \"TOKEN_CHECK_CLIENT_SECRET\": \"gCRadqSu4aPNdcUOk8VsNezohN2kHYwV\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"ca49d0bf-2577-4388-b782-1547474163f8\"}','2024-07-04 10:07:11','unittest-user01','2024-07-04 10:07:11','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:07:16','79261952-4862-4a4d-8da1-1ce8ca3b1481','2024-07-04 10:07:16','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:07:24','79261952-4862-4a4d-8da1-1ce8ca3b1481','2024-07-04 10:07:24','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:07:31','79261952-4862-4a4d-8da1-1ce8ca3b1481','2024-07-04 10:07:31','79261952-4862-4a4d-8da1-1ce8ca3b1481');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_FY4Q2ECBS69KGLWG8G5Z','PF_WS_FY4Q2ECBS69KGLWG8G5Z','8ziPkTxu/9PZsINLjux9MXuJIsUMVk8AYmVyhkjZznjA6i3siXJYEsxgp4dhY91V','2024-07-04 10:07:17','79261952-4862-4a4d-8da1-1ce8ca3b1481','2024-07-04 10:09:34','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('org1','ws2','unittest-platform-db',3306,'PF_WS_RZVXBNCUYAUOYVRHXWSV','PF_WS_RZVXBNCUYAUOYVRHXWSV','oKn4M4lyVJ0+LNJ5lARbvpyrJxIQhVVOIDa9lU7mmQJSgTuZgJMNoQcqHd7Mn3lu','2024-07-04 10:07:24','79261952-4862-4a4d-8da1-1ce8ca3b1481','2024-07-04 10:09:34','79261952-4862-4a4d-8da1-1ce8ca3b1481'),('org1','ws3','unittest-platform-db',3306,'PF_WS_3ZI4B6UJYDELVO8ACFCO','PF_WS_3ZI4B6UJYDELVO8ACFCO','KQGpWS4DB6OcqkUkZa4as2cEkZAu6Gsrr6VJax6cukhyfj4ocxHaacz8HnCEdOXK','2024-07-04 10:07:31','79261952-4862-4a4d-8da1-1ce8ca3b1481','2024-07-04 10:09:34','79261952-4862-4a4d-8da1-1ce8ca3b1481');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_FY4Q2ECBS69KGLWG8G5Z`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_FY4Q2ECBS69KGLWG8G5Z` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_FY4Q2ECBS69KGLWG8G5Z`;

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
-- Current Database: `PF_WS_RZVXBNCUYAUOYVRHXWSV`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_RZVXBNCUYAUOYVRHXWSV` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_RZVXBNCUYAUOYVRHXWSV`;

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
-- Current Database: `PF_WS_3ZI4B6UJYDELVO8ACFCO`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_3ZI4B6UJYDELVO8ACFCO` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_3ZI4B6UJYDELVO8ACFCO`;

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
-- Current Database: `PF_ORG_NGRAPGO9U0NR2407XPS6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_NGRAPGO9U0NR2407XPS6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_NGRAPGO9U0NR2407XPS6`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"7b641f77-acc3-4adc-9f14-f2da533bbee2\", \"USER_TOKEN_CLIENT_SECRET\": \"UipPZKESy0uLbRtAhEun3zgbohtvRQVV\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"a38acb55-dd09-4a1d-a9e3-9d2811351c30\", \"INTERNAL_API_CLIENT_SECRET\": \"lSylHBbsFDIrD5v6dFyUoAhgbH5uT6wh\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"57d37b71-d396-4739-a413-609a9a6401f7\", \"TOKEN_CHECK_CLIENT_SECRET\": \"bMxlmMqz7mXbpv26Eioo1OmHUPcMumYu\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"1df42dc9-8ec2-416c-96f2-2b8b5005eb36\"}','2024-07-04 10:07:44','unittest-user01','2024-07-04 10:07:44','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:07:46','e18d56f4-d90e-4c00-a402-98bb4ce3a55b','2024-07-04 10:07:46','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:07:53','e18d56f4-d90e-4c00-a402-98bb4ce3a55b','2024-07-04 10:07:53','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:01','e18d56f4-d90e-4c00-a402-98bb4ce3a55b','2024-07-04 10:08:01','e18d56f4-d90e-4c00-a402-98bb4ce3a55b');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_RU780483F6I51QNPQ6TH','PF_WS_RU780483F6I51QNPQ6TH','1Qk34UXKqtd0U9xr1qnhY4bpe60LVSUtgNREjdzHL+thDMvrUZhKeVPq6/GskdnG','2024-07-04 10:07:46','e18d56f4-d90e-4c00-a402-98bb4ce3a55b','2024-07-04 10:09:34','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('org2','ws2','unittest-platform-db',3306,'PF_WS_JVYFXG5VWMXCVO8LPPF2','PF_WS_JVYFXG5VWMXCVO8LPPF2','Nqo9BGDGmT2snHYFkccjPPy3L8b0d4OdigexLjrQifCqmFjoecKDesmv7mqKmG55','2024-07-04 10:07:53','e18d56f4-d90e-4c00-a402-98bb4ce3a55b','2024-07-04 10:09:34','e18d56f4-d90e-4c00-a402-98bb4ce3a55b'),('org2','ws3','unittest-platform-db',3306,'PF_WS_GHN693NL6H9NDSNO6ABU','PF_WS_GHN693NL6H9NDSNO6ABU','gvHHYs38rPyLA0wt0mrOt9mdDhy91bwFmMZB1OFFdhGBk4NaJ7lHDJoq9qLg1msu','2024-07-04 10:08:01','e18d56f4-d90e-4c00-a402-98bb4ce3a55b','2024-07-04 10:09:34','e18d56f4-d90e-4c00-a402-98bb4ce3a55b');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_RU780483F6I51QNPQ6TH`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_RU780483F6I51QNPQ6TH` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_RU780483F6I51QNPQ6TH`;

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
-- Current Database: `PF_WS_JVYFXG5VWMXCVO8LPPF2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_JVYFXG5VWMXCVO8LPPF2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_JVYFXG5VWMXCVO8LPPF2`;

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
-- Current Database: `PF_WS_GHN693NL6H9NDSNO6ABU`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_GHN693NL6H9NDSNO6ABU` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_GHN693NL6H9NDSNO6ABU`;

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
-- Current Database: `PF_ORG_EVEYOBR2NOI0T2EV8A0Q`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_EVEYOBR2NOI0T2EV8A0Q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_EVEYOBR2NOI0T2EV8A0Q`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"f6ca71d5-4ebb-461d-b35c-d83a90681c34\", \"USER_TOKEN_CLIENT_SECRET\": \"0soBIWonK36Cl9wGWhQwlZc9elGMDHEw\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"19f88bac-766a-42e7-8df2-e247cd3f10bf\", \"INTERNAL_API_CLIENT_SECRET\": \"gQ01DrZTMEBbfrkX1mTy4AT9DOs4nC4U\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"77e7fcf2-c508-4740-8fec-308f4472cfd7\", \"TOKEN_CHECK_CLIENT_SECRET\": \"Zw9houGsulvNnVtAqMhSzBZpRQsIBEBU\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"8dfc9620-ac5b-49ba-b8be-d792a7ce1e80\"}','2024-07-04 10:08:13','unittest-user01','2024-07-04 10:08:13','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:14','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','2024-07-04 10:08:14','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:20','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','2024-07-04 10:08:20','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:27','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','2024-07-04 10:08:27','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_7Z2BPIAE7XLV7V7R73R6','PF_WS_7Z2BPIAE7XLV7V7R73R6','O4J4/6lnilLRvFnNvBpYCnUMtdOWpCBzkIJvPrLRwN6NC18ERsPEK6re72f2Quq9','2024-07-04 10:08:14','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','2024-07-04 10:09:34','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('org3','ws2','unittest-platform-db',3306,'PF_WS_Q7DB2XOLH72SV2T4R1NG','PF_WS_Q7DB2XOLH72SV2T4R1NG','x+MO8fvt6oKk7t2EvxbJhmTdPMMcZeOc6w7G9OqPeCcKE/wyGcsUExh4fMe1TVhc','2024-07-04 10:08:21','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','2024-07-04 10:09:34','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5'),('org3','ws3','unittest-platform-db',3306,'PF_WS_XHZX8UU8HE1FGGP6P9NS','PF_WS_XHZX8UU8HE1FGGP6P9NS','ioD+l81w2YnfCOzs6+2Bd61d7DY1KHzBPbHcOHFsjXCBH6l6hTP4lPE7N1Bm0/Gv','2024-07-04 10:08:27','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5','2024-07-04 10:09:34','3f31b23a-8996-4cba-8ab9-6c78d25b9fa5');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_7Z2BPIAE7XLV7V7R73R6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_7Z2BPIAE7XLV7V7R73R6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_7Z2BPIAE7XLV7V7R73R6`;

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
-- Current Database: `PF_WS_Q7DB2XOLH72SV2T4R1NG`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_Q7DB2XOLH72SV2T4R1NG` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_Q7DB2XOLH72SV2T4R1NG`;

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
-- Current Database: `PF_WS_XHZX8UU8HE1FGGP6P9NS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_XHZX8UU8HE1FGGP6P9NS` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_XHZX8UU8HE1FGGP6P9NS`;

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
-- Current Database: `PF_ORG_L5M5AJMAOAHCIBSZPAF3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_L5M5AJMAOAHCIBSZPAF3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_L5M5AJMAOAHCIBSZPAF3`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"fe590829-5a72-46df-b480-593cccd24fca\", \"USER_TOKEN_CLIENT_SECRET\": \"DLhMXGhO8ntyOkYMKgB04EcQULdhdggD\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"323db795-227a-46f6-bdde-d509c310ef10\", \"INTERNAL_API_CLIENT_SECRET\": \"ki3U4sTeIV7CcIDigj8rDydsq0IfZPaG\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"c8081e92-8564-41bd-a38a-e381df72e417\", \"TOKEN_CHECK_CLIENT_SECRET\": \"eP3GNA3u6fzRHOREWZeMvin3vKGZoP5d\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"03e239c6-adea-41ff-9114-3f2f8c8bfa36\"}','2024-07-04 10:08:40','unittest-user01','2024-07-04 10:08:40','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:42','883922dc-0db0-4924-b24e-288971d44e3e','2024-07-04 10:08:42','883922dc-0db0-4924-b24e-288971d44e3e'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:49','883922dc-0db0-4924-b24e-288971d44e3e','2024-07-04 10:08:49','883922dc-0db0-4924-b24e-288971d44e3e'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:08:56','883922dc-0db0-4924-b24e-288971d44e3e','2024-07-04 10:08:56','883922dc-0db0-4924-b24e-288971d44e3e');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_XNXK98BEWZ3YC8FJPYBQ','PF_WS_XNXK98BEWZ3YC8FJPYBQ','gYkFcHxjlnM4Knzb8eXU2yXx/sE/MixV8Qekf3VFInxN7mY0aQi6UydQxfM/srRq','2024-07-04 10:08:42','883922dc-0db0-4924-b24e-288971d44e3e','2024-07-04 10:09:34','883922dc-0db0-4924-b24e-288971d44e3e'),('org4','ws2','unittest-platform-db',3306,'PF_WS_PU95SA1Y8GDQWIJPF86X','PF_WS_PU95SA1Y8GDQWIJPF86X','fmN9WiimxBes++qR/IixJ1blb1bRd9D3jVVnQA7y229PEPF9qTtePKDPDSS2y2/T','2024-07-04 10:08:49','883922dc-0db0-4924-b24e-288971d44e3e','2024-07-04 10:09:34','883922dc-0db0-4924-b24e-288971d44e3e'),('org4','ws3','unittest-platform-db',3306,'PF_WS_XKKSMTCPS77GZ984DH77','PF_WS_XKKSMTCPS77GZ984DH77','qJqk2AJ4EHMsXZjb4g615RZaQ7p9Myn1OhbjI8lO+KV3TDW/yDhhBQqAc5YTAetE','2024-07-04 10:08:56','883922dc-0db0-4924-b24e-288971d44e3e','2024-07-04 10:09:34','883922dc-0db0-4924-b24e-288971d44e3e');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_XNXK98BEWZ3YC8FJPYBQ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_XNXK98BEWZ3YC8FJPYBQ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_XNXK98BEWZ3YC8FJPYBQ`;

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
-- Current Database: `PF_WS_PU95SA1Y8GDQWIJPF86X`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_PU95SA1Y8GDQWIJPF86X` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_PU95SA1Y8GDQWIJPF86X`;

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
-- Current Database: `PF_WS_XKKSMTCPS77GZ984DH77`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_XKKSMTCPS77GZ984DH77` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_XKKSMTCPS77GZ984DH77`;

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
-- Current Database: `PF_ORG_8QZ6JDHXROD0UGXAWSHK`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_8QZ6JDHXROD0UGXAWSHK` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_8QZ6JDHXROD0UGXAWSHK`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"d6c73e44-5f5b-4b21-9ea3-41ea633fa8cd\", \"USER_TOKEN_CLIENT_SECRET\": \"TE9w9EZ7SUddPXfc3US2EH038UH7Mrpa\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"c4dc76fb-a8ec-4565-b899-384117fcb403\", \"INTERNAL_API_CLIENT_SECRET\": \"KYU6OZqO0EHduo5YkQekD8iAIbLlbVEM\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"5a70c154-dc6c-438c-85ba-0df54eb491c6\", \"TOKEN_CHECK_CLIENT_SECRET\": \"wRjyexG0cA9mupeeN6QGziKqFCugZX0J\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"d3be74ca-18ef-4b23-8eac-a11225a59d54\"}','2024-07-04 10:09:10','unittest-user01','2024-07-04 10:09:10','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:09:11','e4b2c29c-756d-4125-bf6f-3843746d3d08','2024-07-04 10:09:11','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:09:19','e4b2c29c-756d-4125-bf6f-3843746d3d08','2024-07-04 10:09:19','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-04 10:09:26','e4b2c29c-756d-4125-bf6f-3843746d3d08','2024-07-04 10:09:26','e4b2c29c-756d-4125-bf6f-3843746d3d08');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_433DHVWPTCFQ7XAJ3L3U','PF_WS_433DHVWPTCFQ7XAJ3L3U','vwbABvmNlHiq65rWsrEwVFj5byLVugKmaVgqb3jY6lgw7t4O+nUjS23+ot5yG/xg','2024-07-04 10:09:11','e4b2c29c-756d-4125-bf6f-3843746d3d08','2024-07-04 10:09:34','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('org5','ws2','unittest-platform-db',3306,'PF_WS_HG9UIPY11FX47IIKPQYG','PF_WS_HG9UIPY11FX47IIKPQYG','OrLiG57exHZKjBNRoYWU2DA3rBpLoJp9Eqi8ULAJdVrQ9E9t/aoLZ1Ao8RbqxgfW','2024-07-04 10:09:19','e4b2c29c-756d-4125-bf6f-3843746d3d08','2024-07-04 10:09:34','e4b2c29c-756d-4125-bf6f-3843746d3d08'),('org5','ws3','unittest-platform-db',3306,'PF_WS_47LIIPC62POP89XOSYDW','PF_WS_47LIIPC62POP89XOSYDW','ChnAuHY2t5L05E5EOMMj673okbm4wep3bCAul8/W3tBT5ALavk9F+2THYSZ8X2wn','2024-07-04 10:09:26','e4b2c29c-756d-4125-bf6f-3843746d3d08','2024-07-04 10:09:34','e4b2c29c-756d-4125-bf6f-3843746d3d08');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_433DHVWPTCFQ7XAJ3L3U`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_433DHVWPTCFQ7XAJ3L3U` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_433DHVWPTCFQ7XAJ3L3U`;

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
-- Current Database: `PF_WS_HG9UIPY11FX47IIKPQYG`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_HG9UIPY11FX47IIKPQYG` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_HG9UIPY11FX47IIKPQYG`;

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
-- Current Database: `PF_WS_47LIIPC62POP89XOSYDW`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_47LIIPC62POP89XOSYDW` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_47LIIPC62POP89XOSYDW`;

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

-- Dump completed on 2024-07-04 10:09:36
