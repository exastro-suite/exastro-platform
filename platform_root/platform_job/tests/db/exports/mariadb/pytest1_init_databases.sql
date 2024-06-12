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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('00faa749-6926-4870-8eee-12d1cecc4827',1718160992860,'org1','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/client-secret','{\"type\":\"secret\",\"value\":\"aJX1ccuLBF6MPf1LG5M0FsYujwWnccWf\"}',NULL,'CLIENT'),('02644fd7-0c00-4d3d-a70a-668789ff823b',1718161056125,'org3','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/client-secret','{\"type\":\"secret\",\"value\":\"ynwF4fF0Tn1Y3lAUYN8llnhXsWAaPLEi\"}',NULL,'CLIENT'),('032d23a4-a4e6-44a8-8dc6-e80d564ac2fa',1718160993109,'org1','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/36a323e4-40bf-43e2-bb8d-c541fafd50d6/client-secret','{\"type\":\"secret\",\"value\":\"ZROqxzsSjGP50w8QcxfiHyRzsrRDOVQe\"}',NULL,'CLIENT'),('03b538c1-0e87-4485-9f38-061dcf3be7f2',1718161105845,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','users/fc80d9f2-1ab4-48a4-9089-17cba6d2677c/role-mappings/clients/87151c85-c4be-4bd9-ad28-582c4300419a','[{\"id\":\"895c6e6c-39c4-42ae-ba37-0ae823d75800\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"87151c85-c4be-4bd9-ad28-582c4300419a\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('03b9975f-1a19-490a-adb0-fe7338cc62a3',1718161056489,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-ws-role-mt','{\"id\":\"8890cdbc-73bf-4d89-9d02-19d935fe5b5d\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('04a0f102-135b-48f1-afb9-3e68bf3a873f',1718161129222,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-usage','{\"id\":\"b69d61b5-4a12-4cf6-969c-8ec827f78b95\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('05f6bcd8-e12d-43be-bc1a-5c74df7982b8',1718161055634,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165','{\"id\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('0692899e-152a-4e60-b835-545e3c48d455',1718161143271,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/ws2','{\"id\":\"38c4cc83-b6f9-405f-93b1-fbd5f08b951b\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('077350bc-2c65-42e3-b276-133f95e0f71a',1718160993935,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-ws-role-usr','{\"id\":\"c16d95bb-4a9b-4a12-afc8-61a22c5430fd\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('08d58951-f9d9-418c-9a54-aeb1c1ad8473',1718161130221,'org5','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('0940f764-c84f-472a-8eea-6931e9713b7e',1718161115960,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_ws3-admin/composites','[{\"id\":\"7cce667c-e41f-4752-87da-3808e47afc81\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ea532d28-5740-4c4e-b908-40df5039ff2d\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('0a948cf1-1ca0-4d61-bc86-4b732dca81c7',1718160993293,'org1','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/client-secret','{\"type\":\"secret\",\"value\":\"YIwJsVHzgVyAjARDVR1cRCddtvOaEfaS\"}',NULL,'CLIENT'),('0bd1c98c-d85b-4302-a8c2-a66f02642e24',1718161025930,'org2','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/client-secret','{\"type\":\"secret\",\"value\":\"aUpmchv4vBAnq8AenNM0cOTS4JbY6oJG\"}',NULL,'CLIENT'),('0cdedddb-cfd9-4813-9629-696707c54ac3',1718161090903,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-own-mt','{\"id\":\"e1c6becd-a31f-4f23-8a39-e16529f64210\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1127f371-399c-4962-949a-80622a2e4091',1718160995413,'org1','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('1131ef25-ff12-407e-8b1e-251e57596293',1718161076852,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','users/3b92645d-b286-454a-ac7e-0988c0ef454c/role-mappings/clients/728645f5-c020-49b8-b411-dcde55a7ade7','[{\"id\":\"cbfa0568-54f4-4a27-b8d8-da462f9bb751\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"728645f5-c020-49b8-b411-dcde55a7ade7\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('14f50b08-72ff-42f1-aceb-50a6a74f1d17',1718161089716,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d','{\"id\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('15b55868-d694-43f5-9320-b1a1c69fd89c',1718161152495,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/ws3','{\"id\":\"010ec8b3-ffe5-4dc5-91e3-693b9cc371b3\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('15cc84b8-caf0-4250-aa0a-7736450497de',1718161056940,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_organization-manager/composites','[{\"id\":\"5c6dcb87-654f-44a3-90f6-8eaf808677fd\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"93a7e15a-eedd-47e7-b546-88a97aaf7fb2\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"1e0f760b-585a-41de-ad19-f0caf67ef953\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"416e105c-ff36-4901-a39b-a2b8467bbbb9\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"8890cdbc-73bf-4d89-9d02-19d935fe5b5d\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"76ec2416-4319-4a7f-b628-019b9653e08f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"7fe5c3f0-8108-414d-aabe-1f1e17fac4e8\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"df2f1d1f-894b-437e-8393-a92b058891c1\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"089089cf-8d0c-4d12-85c9-71d6fad58811\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d83d4038-0b52-4b6c-beae-09a02c525e5d\",\"attributes\":{}},{\"id\":\"cac1989b-a164-4953-b202-3a33e46b0d16\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d83d4038-0b52-4b6c-beae-09a02c525e5d\",\"attributes\":{}},{\"id\":\"8fdd3e59-228e-4284-b48a-eb539b200ce8\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d83d4038-0b52-4b6c-beae-09a02c525e5d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('17ea687c-c455-4b17-8b92-8001d33d8c33',1718160993679,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-own-mt','{\"id\":\"a3ec8e6d-831c-4fb2-83d7-532d9ea61383\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('19db2bdb-c0a8-43e6-aece-59980a32508a',1718161091162,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-audit-log','{\"id\":\"64f27664-3b60-440a-9ea6-e64e33b7d340\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('19e140a4-99b4-47af-8f04-577f196f4ce1',1718161143365,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_ws2-admin/composites','[{\"id\":\"38c4cc83-b6f9-405f-93b1-fbd5f08b951b\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"964e2ff8-3363-4d1c-8a23-72b93b2ecda1\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('1ab4ea9f-8454-41cf-8a5c-e29e20a4140b',1718161056583,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-audit-log','{\"id\":\"df2f1d1f-894b-437e-8393-a92b058891c1\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1af57679-c697-44e8-a1de-908bffb065c0',1718161056468,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-usr-mt','{\"id\":\"1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1d0a5db5-2f69-43a5-a7df-836fd4d5f709',1718161091120,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-ws-mt','{\"id\":\"b42f87a3-520f-4975-bb3b-28968ea1daf1\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1d3f6d56-02cc-4455-906a-8d156bb4d5eb',1718160995018,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_organization-user-manager','{\"id\":\"3249e4f5-8c72-4f1f-a8d5-6f842443fd4a\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('215ae3ea-5976-426a-93b6-21632e4179c4',1718161056399,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-own-mt','{\"id\":\"93a7e15a-eedd-47e7-b546-88a97aaf7fb2\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('21719c63-de8d-45da-b6c1-d5f988c03f42',1718161129263,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-usr-mt','{\"id\":\"2939ad4c-0508-4554-b927-d1f7916e2f3c\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('26539b8e-0e70-4799-889c-026fda8bc9ba',1718161025442,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5','{\"id\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('27d71e0c-fa32-492e-bfc7-204280e455c4',1718161092194,'org4','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('29c220c1-ed98-4c33-98c6-3a0d45ca1358',1718161089835,'org4','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/client-secret','{\"type\":\"secret\",\"value\":\"hpQWexYlgiAjBL17U8mEftQYiGbDvnmr\"}',NULL,'CLIENT'),('2ca2ac90-6273-4c15-8242-1c57ce3b1e43',1718161091914,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_organization-user-manager','{\"id\":\"9f9435e8-3485-4c8b-8464-f171830e650d\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('2dd2723c-9233-42e3-b609-680b73787bd6',1718161128646,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae','{\"id\":\"d9a1f06e-912b-4fc0-b702-6e36617fd3ae\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2e36fd8f-5d0f-47c0-9a1c-14408be4d2e3',1718160995111,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_organization-user-manager/composites','[{\"id\":\"7051bbde-751f-467d-81ec-2646aa5a7a35\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"c16d95bb-4a9b-4a12-afc8-61a22c5430fd\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('2eaf5cfa-766a-4450-b3d5-8ef597ad6f19',1718161095340,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_ws1-admin','{\"id\":\"929a307b-d774-46cc-885f-4d3b8d342f63\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2ebec1d6-23dd-43f7-996f-71caf344b992',1718161129113,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-upd','{\"id\":\"c909c2f0-c3f1-4960-8f60-9ba938d3d03c\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2f7f28a3-0b19-4806-ac96-e0169ea073b2',1718161105710,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_ws2-admin','{\"id\":\"00c6c1ea-acb5-4ca1-b211-13cac5c0eed0\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2f8e2312-d815-4e40-ba1b-15b5960d755b',1718161131003,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/e4d50bcd-9246-4f89-a837-baf5a1b0a1bf/role-mappings/clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae','[{\"id\":\"620d4b19-4623-49ce-9efc-a44aee31679f\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d9a1f06e-912b-4fc0-b702-6e36617fd3ae\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('2ffbebdf-2b37-4d37-8f91-bc7474995677',1718161030266,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/ws1','{\"id\":\"0fa61866-57f0-49cf-909c-fd49a5bfbeea\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3023257e-bf07-4471-8db8-80a4199c01b6',1718161028595,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/b2b807a0-56ed-4cb0-a517-ffebec83b59a','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('309b1bee-aad1-494d-bb8d-1eb1712c0283',1718161056541,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-ws-mt','{\"id\":\"7fe5c3f0-8108-414d-aabe-1f1e17fac4e8\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('323f2cf0-67dc-4071-8ff9-efca0c02213b',1718161116046,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','users/fc80d9f2-1ab4-48a4-9089-17cba6d2677c/role-mappings/clients/87151c85-c4be-4bd9-ad28-582c4300419a','[{\"id\":\"a02d2bf3-10b4-43b8-8664-af614992e7e6\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"87151c85-c4be-4bd9-ad28-582c4300419a\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('32d8fd8c-438d-43b3-8e8c-a8ee70373a38',1718161038485,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_ws2-admin','{\"id\":\"a1fcc6bb-eaa9-46b3-b2a2-c435a14072f1\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('346b8b78-e5a9-4d10-9656-712d7b16edef',1718161027605,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_organization-user-role-manager/composites','[{\"id\":\"9fbbf359-3bfb-4b05-8717-c0d736344655\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"ba3db413-da8a-4a03-b4f8-813c2c8a9f33\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"74f18454-52ef-48d3-8343-9d0606364f55\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('34d773f4-06bd-4721-bb99-df591848b675',1718161128804,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','{\"id\":\"5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('3502175f-e16e-4b3c-be56-e23ae3835ffe',1718161027931,'org2','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('3678566a-bd89-436a-9de0-d6738e1aff7d',1718160993231,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb','{\"id\":\"3be016d4-911e-4469-9231-6ac1341460fb\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('37eb1950-a7a2-42a6-bd81-b6f989f77b56',1718161059378,'org3','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10',NULL,'{\"enabled\":true}',NULL,'REALM'),('392ce4a3-65c4-4c34-a247-a4ca129cc792',1718161046304,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_ws3-admin','{\"id\":\"46f7b820-7b85-4ebc-8193-e2737dadea6e\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('399ccb41-6725-4bd5-9e8d-c93d399919b2',1718160993776,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-usage','{\"id\":\"0e763ee8-bed3-4bd7-8c2d-9be0b32cfcc0\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3b1dbd4d-fd60-4622-9d0a-f228093fbf2d',1718161026513,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-role-usr','{\"id\":\"eac90208-2c76-48f7-9e1d-94c8d3ea743a\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3b812bf8-7d37-4f1f-865d-1b06a60c5b7f',1718161093015,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/fc80d9f2-1ab4-48a4-9089-17cba6d2677c/role-mappings/clients/87151c85-c4be-4bd9-ad28-582c4300419a','[{\"id\":\"fbe1c70f-88eb-4671-a207-690dfd2c0ebf\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"87151c85-c4be-4bd9-ad28-582c4300419a\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('3dc0eaf8-aadc-42d9-8f51-439386f4bd5e',1718160993637,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-upd','{\"id\":\"cd7e235a-8417-4a80-9664-9a2136e97927\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3fb9edd9-9e53-436d-93a8-a5e5cf096247',1718161090934,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-role-usr','{\"id\":\"f8a53e17-c4e2-43d3-89ac-8e88b12d01a4\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('40847ebf-eeb3-4d54-9da5-5ee6a03aadc5',1718161002231,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_ws1-admin','{\"id\":\"3d4927b5-3a8b-41ac-9308-e9e4f0344865\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('40f0d605-52ed-4271-98be-94c737f67630',1718161055882,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/2d3b4076-0185-48fb-b7b0-8fca369a9638','{\"id\":\"2d3b4076-0185-48fb-b7b0-8fca369a9638\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('4128fe85-6133-42c4-90a6-3daa9927c1ae',1718160994708,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_organization-manager/composites','[{\"id\":\"cd7e235a-8417-4a80-9664-9a2136e97927\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"a3ec8e6d-831c-4fb2-83d7-532d9ea61383\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"31306a0c-c098-4fd9-b1d4-9a8d50d9e116\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"0e763ee8-bed3-4bd7-8c2d-9be0b32cfcc0\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"7051bbde-751f-467d-81ec-2646aa5a7a35\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"3cc34475-54ed-4bf9-9d50-739f2d71e530\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"c16d95bb-4a9b-4a12-afc8-61a22c5430fd\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"39b9fcec-5be4-48d6-9eed-146a91b9897e\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"f9de58e0-7808-4fb8-aed0-eca1bbd34561\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"a03b9fd2-2e48-4a65-9799-46ae7f304c13\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"107e7f8e-6320-41f2-8851-cf3238fb4254\",\"attributes\":{}},{\"id\":\"601e1456-b6ad-4108-8eec-f19638cfe8af\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"107e7f8e-6320-41f2-8851-cf3238fb4254\",\"attributes\":{}},{\"id\":\"1d7573af-20d8-4e61-85d7-d6d2cc24fc85\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"107e7f8e-6320-41f2-8851-cf3238fb4254\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('42090c5c-db66-4021-9974-2b406a374ad7',1718161025525,'org2','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/client-secret','{\"type\":\"secret\",\"value\":\"3JkFXrF1oxlAYMNauiDnB73C1UlH0WZV\"}',NULL,'CLIENT'),('424a42a1-0c62-45e2-835a-99045ea583ab',1718161095279,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_ws1-admin','{\"id\":\"cd4d49ed-91e6-4f97-b103-e36dc22c7e3d\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('45ef3b3c-7080-43f2-a4bd-2be1aa88a8cc',1718161026566,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-usr-mt','{\"id\":\"9fbbf359-3bfb-4b05-8717-c0d736344655\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('464a97de-0eb4-419b-8fd2-440bcba197cd',1718160995295,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/fd171a69-9a1b-4efa-b6ff-009497c2120a/role-mappings/clients/107e7f8e-6320-41f2-8851-cf3238fb4254','[{\"id\":\"30e12d60-06a5-4b34-8229-b04ea3fea69e\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"107e7f8e-6320-41f2-8851-cf3238fb4254\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('469da1da-317e-45ce-9982-454b2fa7f2f1',1718161132957,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/ws1','{\"id\":\"fc94301d-404e-4e05-a967-fb1c708a1831\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('47079de5-a7d7-41c3-8a34-15b23a84ef73',1718161090533,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a','{\"id\":\"87151c85-c4be-4bd9-ad28-582c4300419a\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('484a17a5-1bf6-4318-a717-4cc4976fe58e',1718161091805,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_organization-user-role-manager','{\"id\":\"29eee57d-85f4-4b42-a91b-e82ba820c6ca\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('4ba52aca-eaee-4010-bd63-facd9d6ce776',1718161057044,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_organization-user-manager','{\"id\":\"aac3e92b-7375-49b4-b430-ae372fab0cfd\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('4f416484-ea1f-4c44-b9e7-b3496f5a7505',1718161002379,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_ws1-admin/composites','[{\"id\":\"47dabece-dd62-438c-ae27-13acba344a81\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"3d4927b5-3a8b-41ac-9308-e9e4f0344865\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('4fc85749-8e5d-429e-a312-031bf667fdc4',1718161128914,'org5','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f/client-secret','{\"type\":\"secret\",\"value\":\"8GJliIHXGzXD2cgj2JN2KzJrcjpjvUbl\"}',NULL,'CLIENT'),('500ed56a-acbd-4426-8136-a2ddc6de0634',1718161128284,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048','{\"id\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('51b05d27-2a6c-4ce7-b05a-ca8878a85299',1718161056377,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-upd','{\"id\":\"5c6dcb87-654f-44a3-90f6-8eaf808677fd\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('53cebf62-d804-4169-90ef-cad29d3c5d7c',1718161067946,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','users/3b92645d-b286-454a-ac7e-0988c0ef454c/role-mappings/clients/728645f5-c020-49b8-b411-dcde55a7ade7','[{\"id\":\"96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"728645f5-c020-49b8-b411-dcde55a7ade7\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('54e26589-8c83-4d37-8b5f-3a84982f17f7',1718161129317,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-ws-role-usr','{\"id\":\"49c6eb3c-29cf-4920-b488-a47a61c146a8\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5555812d-1e12-46eb-b364-566609358680',1718161059970,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_ws1-admin/composites','[{\"id\":\"08a2c967-134e-46fb-866c-9281a0b60558\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a37744ce-b793-4ffc-a06f-ba6b4ac87a4c\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('57b94331-6df9-4d93-a545-099e4e868d52',1718161095191,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/ws1','{\"id\":\"50d44303-bddd-4a16-b526-1a8776cc8360\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('589144ca-b3bc-4c6d-b0f4-284d32c3f8c0',1718161055941,'org3','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/2d3b4076-0185-48fb-b7b0-8fca369a9638/client-secret','{\"type\":\"secret\",\"value\":\"8snJGw1mokg3L4i95V7RxtnBDnTGitTw\"}',NULL,'CLIENT'),('58bde976-44e5-46ff-85d4-11f4fa7615e6',1718161009419,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_ws2-admin','{\"id\":\"78bbb7e1-630d-40f9-991e-c2440dc78f11\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('59ca226d-721c-4f99-8684-d31ac3c4bef0',1718161029881,'org2','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10',NULL,'{\"enabled\":true}',NULL,'REALM'),('5b36be79-c5ae-46ff-9f91-b3240ea5d572',1718161025657,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1470d436-c958-4f9a-87c8-47dfec1ef965','{\"id\":\"1470d436-c958-4f9a-87c8-47dfec1ef965\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('5bfccae8-d954-412a-96a0-2d2d47d5667e',1718161091886,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_organization-user-role-manager/composites','[{\"id\":\"29ebd35b-6122-41d6-b0fc-40328a29ee1f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"e8cdad99-a524-4e6b-acb0-06ec072db27e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"ef5a58fe-c3aa-493c-857d-727144a7a0d1\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('5d391650-0215-48c8-a483-2546e36c0f26',1718161016326,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/ws3','{\"id\":\"9a168ec7-159e-4063-98c6-11fcaa6827ad\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5fcfdd4f-1f1a-46e1-ba62-cbdbf73f9090',1718161060025,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','users/3b92645d-b286-454a-ac7e-0988c0ef454c/role-mappings/clients/728645f5-c020-49b8-b411-dcde55a7ade7','[{\"id\":\"f3333600-0bb4-4063-82be-bafdaf80d8bd\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"728645f5-c020-49b8-b411-dcde55a7ade7\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('617fc696-7abf-4990-bf2c-e4d328dc4a64',1718161133085,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','users/e4d50bcd-9246-4f89-a837-baf5a1b0a1bf/role-mappings/clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae','[{\"id\":\"05ca98ac-c36c-435d-becc-5836ff7e15e9\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d9a1f06e-912b-4fc0-b702-6e36617fd3ae\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('63e21e85-9e43-4017-bb94-d797154147b0',1718161026748,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-audit-log','{\"id\":\"c6542b96-2f1b-4dee-9357-f6fefd21fdcf\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('663cc65a-a611-49ae-8e3d-e621b4cfea0e',1718160994974,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_organization-user-role-manager/composites','[{\"id\":\"7051bbde-751f-467d-81ec-2646aa5a7a35\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"3cc34475-54ed-4bf9-9d50-739f2d71e530\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}},{\"id\":\"c16d95bb-4a9b-4a12-afc8-61a22c5430fd\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('66ee6396-0d9b-4fc4-aa08-68116b83db2d',1718161057023,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_organization-user-role-manager/composites','[{\"id\":\"1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"8890cdbc-73bf-4d89-9d02-19d935fe5b5d\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"76ec2416-4319-4a7f-b628-019b9653e08f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('69371952-7576-485d-95cc-66965c5d2690',1718161092099,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd/role-mappings/clients/55526e5d-f414-42cc-bf17-528b51147b24','[{\"id\":\"f1277128-0b07-4fdc-9ed7-0ac3244f564a\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"55526e5d-f414-42cc-bf17-528b51147b24\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('6a0b2699-4bb7-4d5f-afea-d20009ec2593',1718161130836,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('6ab7a7d0-3467-4398-8b15-e5bc855d3cda',1718161030319,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_ws1-admin','{\"id\":\"778e2b1a-49a6-4005-9b1b-1a02fbfa085d\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6b5e9f1b-56f2-4d55-859b-9fcbf63a67cb',1718161090869,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-upd','{\"id\":\"c7f86d87-f2b4-4500-bf48-a3e98c08e3ad\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6c5a8ba2-503f-4f33-83dc-11bac0f54677',1718161009445,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_ws2-admin','{\"id\":\"4008aef9-0553-43e8-90b9-344fc5b6859a\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6d777b96-1831-4820-9544-6e191fe25f1c',1718161129378,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-audit-log','{\"id\":\"f4d7d9b1-4803-4abc-9fb4-2a8583e8890f\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6eae804e-c60f-423c-9f54-d7cd7a8e4f2b',1718161091971,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_organization-user-manager/composites','[{\"id\":\"29ebd35b-6122-41d6-b0fc-40328a29ee1f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"ef5a58fe-c3aa-493c-857d-727144a7a0d1\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('6f53c828-edcf-4d3b-aed6-444af38b7072',1718161026538,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-usage','{\"id\":\"d578490f-2d5e-4b80-9417-8637ffda4385\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('72052c3d-5197-4a0b-99ac-1a1f26d27e67',1718161090283,'org4','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8849ca9a-419a-4bb2-b5d6-5672c7925665/client-secret','{\"type\":\"secret\",\"value\":\"0gsThyASHCw2aWdFa55b8iXHRMaReoqY\"}',NULL,'CLIENT'),('7245e435-7ba9-46ae-845f-9801834b703c',1718161058061,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/3b92645d-b286-454a-ac7e-0988c0ef454c/role-mappings/clients/728645f5-c020-49b8-b411-dcde55a7ade7','[{\"id\":\"b2b61a4f-11ba-40da-acd4-438f6bce1331\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"728645f5-c020-49b8-b411-dcde55a7ade7\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('73b3766a-388c-4b22-90a0-076d1b900cce',1718161056425,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-role-usr','{\"id\":\"1e0f760b-585a-41de-ad19-f0caf67ef953\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('768b3ebe-bb6f-47b9-ab79-9d151ef1c5a7',1718161095455,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_ws1-admin/composites','[{\"id\":\"50d44303-bddd-4a16-b526-1a8776cc8360\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"cd4d49ed-91e6-4f97-b103-e36dc22c7e3d\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7799cdac-530b-4456-89ce-591b770cbb8a',1718160994781,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_organization-user-role-manager','{\"id\":\"056e5a3f-b5fc-4f82-9274-eb03177dc6e7\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('79db52ab-6cbd-4220-8b5d-ac87061fb333',1718161105796,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_ws2-admin/composites','[{\"id\":\"070db73f-0e38-4719-ad5f-bfddd7d00010\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"00c6c1ea-acb5-4ca1-b211-13cac5c0eed0\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7a8713cf-53f8-4aa9-b33e-be707689fd85',1718160993721,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-role-usr','{\"id\":\"31306a0c-c098-4fd9-b1d4-9a8d50d9e116\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7a940812-d13a-4d2c-991a-3caa804ba3b4',1718161009385,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/ws2','{\"id\":\"4a78f73b-2eec-42e3-be04-1de33d714625\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7bfd2a3b-6656-48e8-8616-b4c08464fa73',1718161128503,'org5','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/55d78e00-10fd-445a-9762-651263fc57d9/client-secret','{\"type\":\"secret\",\"value\":\"3UFTrbidCi5qEWWrle3dmAP1sO8EQ8EV\"}',NULL,'CLIENT'),('7cec2edf-9c8f-42b6-bf2b-53a84a776bec',1718161009546,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_ws2-admin/composites','[{\"id\":\"4a78f73b-2eec-42e3-be04-1de33d714625\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"78bbb7e1-630d-40f9-991e-c2440dc78f11\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7d9a66aa-6586-4dc9-baca-38605cc5fc7e',1718161056515,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-ws-role-usr','{\"id\":\"76ec2416-4319-4a7f-b628-019b9653e08f\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('800f57e1-9393-4044-baef-3b2e7ef98eb7',1718160993517,'org1','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3f3a6c82-649a-4911-a86e-8f4424e65ff1/client-secret','{\"type\":\"secret\",\"value\":\"k36JwHht0WvdqNcFcgU2BmHBsliDOaug\"}',NULL,'CLIENT'),('8077aed9-3998-44c7-ac0f-f5c5c3c33317',1718161115822,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_ws3-admin','{\"id\":\"ea532d28-5740-4c4e-b908-40df5039ff2d\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('81197c5b-5d1f-49f7-9736-ec92b872eba3',1718161128708,'org5','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/client-secret','{\"type\":\"secret\",\"value\":\"rGLDTBymxoEXjp9ZbQiYsR5WFVAIw1tw\"}',NULL,'CLIENT'),('8151a218-4c72-4715-88a2-430edc44a3cb',1718161009602,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','users/a09c275c-0f93-4a53-85a4-0ff0b0301fcc/role-mappings/clients/3be016d4-911e-4469-9231-6ac1341460fb','[{\"id\":\"4008aef9-0553-43e8-90b9-344fc5b6859a\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"3be016d4-911e-4469-9231-6ac1341460fb\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('81623df1-9d8f-4d41-91d4-05690a89fe44',1718161002430,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','users/a09c275c-0f93-4a53-85a4-0ff0b0301fcc/role-mappings/clients/3be016d4-911e-4469-9231-6ac1341460fb','[{\"id\":\"88af9d3d-2f67-4531-bfe4-f47247dafada\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"3be016d4-911e-4469-9231-6ac1341460fb\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('81d2e278-ef8a-45ce-b5d7-906793b969a0',1718161130043,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_organization-user-manager/composites','[{\"id\":\"2939ad4c-0508-4554-b927-d1f7916e2f3c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"49c6eb3c-29cf-4920-b488-a47a61c146a8\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('82645ee8-4d4b-4306-89a6-773f6d074bf8',1718161091280,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_organization-manager','{\"id\":\"fbe1c70f-88eb-4671-a207-690dfd2c0ebf\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('832db7fc-04c3-46b2-ab1c-4084a97431d1',1718160993010,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/36a323e4-40bf-43e2-bb8d-c541fafd50d6','{\"id\":\"36a323e4-40bf-43e2-bb8d-c541fafd50d6\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('8a087df0-6131-4088-80bf-9384ad56258c',1718161025866,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317','{\"id\":\"cdafba6c-0be4-4099-b7c1-5c353281b317\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('8af6aa8a-2d95-4b21-8981-338f7dc80910',1718161027691,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_organization-user-manager/composites','[{\"id\":\"9fbbf359-3bfb-4b05-8717-c0d736344655\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"74f18454-52ef-48d3-8343-9d0606364f55\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('8d507bf3-de88-4012-b2db-9263e64d7752',1718161129187,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-role-usr','{\"id\":\"bf516ab0-d6af-415a-b34c-b461944122ef\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8d635190-e9a9-42ff-9951-1ef55717ea42',1718161132994,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_ws1-admin','{\"id\":\"05ca98ac-c36c-435d-becc-5836ff7e15e9\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8ea70b10-5adb-4016-865c-c3bbedca553a',1718161076652,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_ws3-admin','{\"id\":\"35427293-42b6-4879-9059-aac833f6c21a\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('90ab4135-1d50-43f6-8296-6c7cc1a17b49',1718161026439,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-upd','{\"id\":\"abb18c0e-6cad-4167-8f0e-fad84c23c3ae\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('92400197-f80e-48ae-8944-9fb308f1c614',1718161027628,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_organization-user-manager','{\"id\":\"5d3104d3-82c8-4535-81bd-de3cddd37178\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('92621cd2-20b3-4a58-aa28-6214213514c6',1718161115785,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/ws3','{\"id\":\"7cce667c-e41f-4752-87da-3808e47afc81\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9396de01-ced2-4719-b8d5-8f0bf9ed694e',1718161046253,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_ws3-admin','{\"id\":\"bfa34d68-e978-45be-8783-904bc3128fdb\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('94af014e-6b95-4e96-bb4d-ce1b83fc3eff',1718161143400,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','users/e4d50bcd-9246-4f89-a837-baf5a1b0a1bf/role-mappings/clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae','[{\"id\":\"aa815afc-f653-492e-899c-446783030cb9\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d9a1f06e-912b-4fc0-b702-6e36617fd3ae\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('953e9c49-ed35-4a1c-9ef4-6ee5aa53f0ad',1718161143318,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_ws2-admin','{\"id\":\"aa815afc-f653-492e-899c-446783030cb9\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('963b87f6-69eb-4f5f-aba6-3df1495db7e1',1718161129886,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_organization-user-role-manager','{\"id\":\"63077bbd-b0d2-4ab9-9abd-4ccb8e682be6\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('97a2e947-dce2-4793-b4b8-73624da8e0b1',1718161129290,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-ws-role-mt','{\"id\":\"91813dae-e2a2-44ca-b504-6ae4f3470aa8\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('986328bd-0146-4e37-8234-e5881a8cf5f9',1718161002209,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/ws1','{\"id\":\"47dabece-dd62-438c-ae27-13acba344a81\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9974bc97-3355-481a-8a46-3d00a103c6c2',1718161133042,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_ws1-admin/composites','[{\"id\":\"fc94301d-404e-4e05-a967-fb1c708a1831\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"5c42947d-1edf-4387-9f46-d4e7e57cfb8b\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('99866b2d-30fa-4396-87a7-3272606dab6f',1718161057945,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/3b92645d-b286-454a-ac7e-0988c0ef454c','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('9a19edf1-dfa0-4c61-970f-0a1194372f5b',1718161026275,'org2','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a4d2faaf-9b22-4102-bd6a-21c23003d05a/client-secret','{\"type\":\"secret\",\"value\":\"ElfUklmIbqgubczMiPSl2vhp508UPIsp\"}',NULL,'CLIENT'),('9a936e43-6556-4c4f-a0d2-8bd4bac94156',1718161057255,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/8d53991b-3ece-4ee8-b152-229fdf8a3be2/role-mappings/clients/d83d4038-0b52-4b6c-beae-09a02c525e5d','[{\"id\":\"2d8e40e5-78d5-417f-a9bc-fa7c2d4668db\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d83d4038-0b52-4b6c-beae-09a02c525e5d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('9ea87155-c970-415b-8237-983d60815398',1718160993967,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-ws-mt','{\"id\":\"39b9fcec-5be4-48d6-9eed-146a91b9897e\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9f4f6e8d-2bd4-41d8-b381-55ece32a230c',1718161016517,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_ws3-admin/composites','[{\"id\":\"9a168ec7-159e-4063-98c6-11fcaa6827ad\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"69d3a0a3-5456-49b9-ae19-23c656233ab9\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('a034f421-34a8-4f12-a680-d4cee842a6aa',1718160994163,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_organization-manager','{\"id\":\"6a47c506-e084-40ba-becd-2e4f60261e44\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('a4d5f946-1d53-49af-9988-7f9965a86ce0',1718161026135,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a4d2faaf-9b22-4102-bd6a-21c23003d05a','{\"id\":\"a4d2faaf-9b22-4102-bd6a-21c23003d05a\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('a4de3be1-a598-48f2-ba01-c01631296060',1718161076682,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_ws3-admin','{\"id\":\"cbfa0568-54f4-4a27-b8d8-da462f9bb751\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a51601ed-2351-429a-a7d7-276c4a2e7279',1718161027475,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_organization-manager/composites','[{\"id\":\"abb18c0e-6cad-4167-8f0e-fad84c23c3ae\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"cadbf291-2f8b-4740-ae0e-bd76db05ef71\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"eac90208-2c76-48f7-9e1d-94c8d3ea743a\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"d578490f-2d5e-4b80-9417-8637ffda4385\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"9fbbf359-3bfb-4b05-8717-c0d736344655\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"ba3db413-da8a-4a03-b4f8-813c2c8a9f33\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"74f18454-52ef-48d3-8343-9d0606364f55\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"e2f2a39e-c067-46f2-99b2-2109880d2967\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"c6542b96-2f1b-4dee-9357-f6fefd21fdcf\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{}},{\"id\":\"7822b23f-510a-4ada-b513-c90bed7c90ec\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"29e4432e-6534-4b3d-8371-0993b180a64a\",\"attributes\":{}},{\"id\":\"9a7fa1d9-5ec4-446d-bf41-a9dd26cb1f19\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"29e4432e-6534-4b3d-8371-0993b180a64a\",\"attributes\":{}},{\"id\":\"f9c477a4-28af-4222-917f-d534c76af487\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"29e4432e-6534-4b3d-8371-0993b180a64a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('a5c023dd-a4b3-41f5-b9b4-5b81a89de895',1718160993406,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/3f3a6c82-649a-4911-a86e-8f4424e65ff1','{\"id\":\"3f3a6c82-649a-4911-a86e-8f4424e65ff1\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('a899d196-32b2-4ee8-b4a3-0063ff074eca',1718161095518,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','users/fc80d9f2-1ab4-48a4-9089-17cba6d2677c/role-mappings/clients/87151c85-c4be-4bd9-ad28-582c4300419a','[{\"id\":\"929a307b-d774-46cc-885f-4d3b8d342f63\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"87151c85-c4be-4bd9-ad28-582c4300419a\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('aae7dfa0-008f-44d7-99a8-529d9275c543',1718161001909,'org1','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10',NULL,'{\"enabled\":true}',NULL,'REALM'),('ab650407-f588-4c2d-9988-6f1d87628865',1718161056067,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7','{\"id\":\"728645f5-c020-49b8-b411-dcde55a7ade7\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('abc5e7f5-5067-4eb9-b100-49603b82293e',1718160992767,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071','{\"id\":\"1b02217f-d5bb-4032-b67c-57e32ee5b071\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('ac65c199-7365-42e1-9c3e-9dd449bd88d1',1718161038463,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/ws2','{\"id\":\"b7116fff-d63d-4899-9b64-c2fe6590f855\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ae024c4e-8c0d-467a-8ceb-386785b3ba33',1718161132658,'org5','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10',NULL,'{\"enabled\":true}',NULL,'REALM'),('ae30202f-06a7-462d-b6eb-28ae0edb6fc1',1718161027515,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_organization-user-role-manager','{\"id\":\"53ef88cb-e78d-43d4-9632-9ee04d9f6c91\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ae45bfea-ce6e-4ed1-99b9-d5a9f17d0677',1718161067766,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_ws2-admin','{\"id\":\"d221d2fa-bdca-4cd2-8211-ff8447b5db5a\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('af58a82d-ef3c-4363-8e4e-80ea62bc1144',1718161016368,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_ws3-admin','{\"id\":\"69d3a0a3-5456-49b9-ae19-23c656233ab9\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b11202c3-afb5-4369-b74d-c18621703455',1718161025750,'org2','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1470d436-c958-4f9a-87c8-47dfec1ef965/client-secret','{\"type\":\"secret\",\"value\":\"LZ8cRCqovakTziQD6MvdM6jEWf7IO6LK\"}',NULL,'CLIENT'),('b132a818-731c-4467-8abd-ad5f472801f1',1718161152567,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_ws3-admin','{\"id\":\"04b858f3-0de7-46ec-a103-6769dc16e9c3\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b1b88986-8b3b-4001-bbe1-7e64e93618fd',1718161027054,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_organization-manager','{\"id\":\"2f02694a-2310-4822-affc-6e78081e2606\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b2db499e-49f6-499e-abd6-fd30636fc181',1718161038514,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_ws2-admin','{\"id\":\"40349bfb-3002-449b-bc97-ffac3e9883fe\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b2f7d9f1-5ea9-4c3f-92d5-738c2cf9be09',1718161056964,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_organization-user-role-manager','{\"id\":\"d949451b-4e2b-4146-89c1-79dabec7f49d\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b3fdd208-137f-4b17-b91e-d39cfea0f11a',1718161091748,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_organization-manager/composites','[{\"id\":\"c7f86d87-f2b4-4500-bf48-a3e98c08e3ad\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"e1c6becd-a31f-4f23-8a39-e16529f64210\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"f8a53e17-c4e2-43d3-89ac-8e88b12d01a4\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"2cfbfafa-3d9e-4875-99bb-60b89a40f810\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"29ebd35b-6122-41d6-b0fc-40328a29ee1f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"e8cdad99-a524-4e6b-acb0-06ec072db27e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"ef5a58fe-c3aa-493c-857d-727144a7a0d1\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"b42f87a3-520f-4975-bb3b-28968ea1daf1\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"64f27664-3b60-440a-9ea6-e64e33b7d340\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"fadb6747-16d0-4959-b7f6-7384792f8b3d\",\"attributes\":{}},{\"id\":\"ec775167-543f-4e29-8557-c16a984a9f11\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"55526e5d-f414-42cc-bf17-528b51147b24\",\"attributes\":{}},{\"id\":\"c275bbae-6b06-49df-aba5-d0a914fc9dd2\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"55526e5d-f414-42cc-bf17-528b51147b24\",\"attributes\":{}},{\"id\":\"c6a82b7b-a497-4f32-ba7d-48e53a6f81ee\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"55526e5d-f414-42cc-bf17-528b51147b24\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('b448833a-4a2b-4efb-b74a-3d21c6a75df7',1718161129161,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-own-mt','{\"id\":\"df811e9a-da8e-4e10-9d3d-ca8e623822aa\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b5231d16-2f2e-46e5-8b8c-bc9cdeb62bb2',1718161152523,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_ws3-admin','{\"id\":\"479657f3-828b-4b0b-9b60-c50d8ea0038b\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b57836fe-7420-4c27-93ea-67e9474b4182',1718161115848,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_ws3-admin','{\"id\":\"a02d2bf3-10b4-43b8-8664-af614992e7e6\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b5a1a1a9-a049-4ebf-9302-f3ba86d59c6b',1718161057336,'org3','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('b60118ad-5f83-4f22-8d77-2f0f18f313a3',1718161030443,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','users/b2b807a0-56ed-4cb0-a517-ffebec83b59a/role-mappings/clients/cdafba6c-0be4-4099-b7c1-5c353281b317','[{\"id\":\"778e2b1a-49a6-4005-9b1b-1a02fbfa085d\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"cdafba6c-0be4-4099-b7c1-5c353281b317\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b71433a7-a310-4919-8339-acf3ffbcd26f',1718161132977,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_ws1-admin','{\"id\":\"5c42947d-1edf-4387-9f46-d4e7e57cfb8b\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b7b42e69-ebe2-4158-ad2e-1d6824515185',1718161076626,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/ws3','{\"id\":\"7e111b5e-bad0-4fd2-b853-4a7206f1d98c\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b9fdc3f2-714a-4b08-9743-3bf169a3d118',1718161105678,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/ws2','{\"id\":\"070db73f-0e38-4719-ad5f-bfddd7d00010\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('bd4d1cfa-d187-4460-9967-332b4e3eb4af',1718161128339,'org5','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/client-secret','{\"type\":\"secret\",\"value\":\"Csb2NTxVbqGURW37UHlDgzFXyt99rnV4\"}',NULL,'CLIENT'),('be5552e6-d2af-44c1-a4f0-b636d0643e27',1718160996379,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/a09c275c-0f93-4a53-85a4-0ff0b0301fcc/role-mappings/clients/3be016d4-911e-4469-9231-6ac1341460fb','[{\"id\":\"6a47c506-e084-40ba-becd-2e4f60261e44\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"3be016d4-911e-4469-9231-6ac1341460fb\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('c18ad843-7ab0-48cc-a1a4-5c6c3d529037',1718161143300,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_ws2-admin','{\"id\":\"964e2ff8-3363-4d1c-8a23-72b93b2ecda1\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c1c45955-f9b2-4c36-a833-c5df0f4293c7',1718161128422,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/55d78e00-10fd-445a-9762-651263fc57d9','{\"id\":\"55d78e00-10fd-445a-9762-651263fc57d9\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('c29f5d57-d56b-47a5-8fa8-57b2e5de36b4',1718161129857,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_organization-manager/composites','[{\"id\":\"c909c2f0-c3f1-4960-8f60-9ba938d3d03c\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"df811e9a-da8e-4e10-9d3d-ca8e623822aa\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"bf516ab0-d6af-415a-b34c-b461944122ef\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"b69d61b5-4a12-4cf6-969c-8ec827f78b95\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"2939ad4c-0508-4554-b927-d1f7916e2f3c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"91813dae-e2a2-44ca-b504-6ae4f3470aa8\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"49c6eb3c-29cf-4920-b488-a47a61c146a8\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"8497ec31-6dcd-4c89-a052-785bae49bc2c\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"f4d7d9b1-4803-4abc-9fb4-2a8583e8890f\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"b7c48abd-fc1d-4462-b9ae-0dc24c7575d0\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0e91c93d-0260-4530-a9ac-af848287b1e1\",\"attributes\":{}},{\"id\":\"ac3a0b3c-6796-4a49-95ab-a95e575982fd\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0e91c93d-0260-4530-a9ac-af848287b1e1\",\"attributes\":{}},{\"id\":\"6a80c8be-8377-4a1c-bd46-39b983ca9359\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0e91c93d-0260-4530-a9ac-af848287b1e1\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('c3922b6c-1cff-484b-b67c-f6bc6a9fb231',1718160993884,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-ws-role-mt','{\"id\":\"3cc34475-54ed-4bf9-9d50-739f2d71e530\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c4036306-4eba-4731-a9c4-90d04d1fd707',1718161130159,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/3915ea99-7c60-454a-8d54-837ba1da3cef/role-mappings/clients/0e91c93d-0260-4530-a9ac-af848287b1e1','[{\"id\":\"f165247c-9a8e-4bc5-9c48-df7f11162aa9\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"0e91c93d-0260-4530-a9ac-af848287b1e1\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('c95135e2-428d-41c6-b340-e158286e837c',1718161129954,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_organization-user-role-manager/composites','[{\"id\":\"2939ad4c-0508-4554-b927-d1f7916e2f3c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"91813dae-e2a2-44ca-b504-6ae4f3470aa8\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}},{\"id\":\"49c6eb3c-29cf-4920-b488-a47a61c146a8\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('c9b4db96-abcf-4c94-bc04-97a915a5a143',1718161026601,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-ws-role-mt','{\"id\":\"ba3db413-da8a-4a03-b4f8-813c2c8a9f33\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c9ee2d44-b3f3-463a-ba06-ba6c13c4e8bd',1718161059836,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_ws1-admin','{\"id\":\"a37744ce-b793-4ffc-a06f-ba6b4ac87a4c\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cc3acf31-ddae-45a9-b3b1-b6773e89ae53',1718161056291,'org3','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/ac33af4f-2879-49b5-90a5-cee8005768f3/client-secret','{\"type\":\"secret\",\"value\":\"7AVdMyEBtUzHw8rXkFVteHB752NI511m\"}',NULL,'CLIENT'),('ccdf87cf-0d93-4607-8924-3e41f70a59a1',1718161090693,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','{\"id\":\"2e1b18d3-a4c7-4c9c-901c-396bc7b432d0\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('ce383a61-60ae-4289-a53e-5a483b081b2c',1718161092836,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/fc80d9f2-1ab4-48a4-9089-17cba6d2677c','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('d050b10a-d28a-4bd2-aa6c-ac9e741ca1ae',1718161059791,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/ws1','{\"id\":\"08a2c967-134e-46fb-866c-9281a0b60558\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d06272bb-2647-4c8f-a23c-9fc578405257',1718161129486,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_organization-manager','{\"id\":\"620d4b19-4623-49ce-9efc-a44aee31679f\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('d0fb26c6-23cc-4afc-8325-5fe954c7c824',1718161094614,'org4','UPDATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10',NULL,'{\"enabled\":true}',NULL,'REALM'),('d19752b6-6352-4e3f-992c-59b2cb6b2329',1718161091074,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-ws-role-usr','{\"id\":\"ef5a58fe-c3aa-493c-857d-727144a7a0d1\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d244537c-4b47-46a2-a5eb-7ffc8d3e09e6',1718161026702,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-ws-mt','{\"id\":\"e2f2a39e-c067-46f2-99b2-2109880d2967\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d3804b74-7dc8-4876-9d4d-a004b4ef266d',1718161090064,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8849ca9a-419a-4bb2-b5d6-5672c7925665','{\"id\":\"8849ca9a-419a-4bb2-b5d6-5672c7925665\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('d4f0f8d1-8fae-40fb-bac9-32a36e1f4ac9',1718161090994,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-usr-mt','{\"id\":\"29ebd35b-6122-41d6-b0fc-40328a29ee1f\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d50ee13d-a18a-4b3a-80ea-40ece582a9c4',1718161105733,'org4','CREATE','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/roles/_ws2-admin','{\"id\":\"895c6e6c-39c4-42ae-ba37-0ae823d75800\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d80e5f55-d58e-4c54-ac77-7ff711e93003',1718161030395,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_ws1-admin/composites','[{\"id\":\"0fa61866-57f0-49cf-909c-fd49a5bfbeea\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"f8d40958-5753-462b-b922-cbd7aeb4475f\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('d84b598c-bfc7-4451-b304-ad8869c36eb6',1718161091030,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-ws-role-mt','{\"id\":\"e8cdad99-a524-4e6b-acb0-06ec072db27e\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d8a1935b-e451-4183-befb-8c010802f0fc',1718161090959,'org4','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/fadb6747-16d0-4959-b7f6-7384792f8b3d/roles/_og-usage','{\"id\":\"2cfbfafa-3d9e-4875-99bb-60b89a40f810\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('da565091-a3c4-46ed-b2e0-4d25387dd5ea',1718161002261,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_ws1-admin','{\"id\":\"88af9d3d-2f67-4531-bfe4-f47247dafada\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('da686d57-9332-4a4d-9529-7873ae8910b8',1718161059871,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_ws1-admin','{\"id\":\"f3333600-0bb4-4063-82be-bafdaf80d8bd\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('da8543f9-f123-4860-9070-ef252bf31d80',1718161046217,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/ws3','{\"id\":\"7384a5b7-1b0e-4054-871d-893461e8bc93\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e04a723d-f2f2-45a8-9bb3-c04d1e2797d2',1718161046415,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','users/b2b807a0-56ed-4cb0-a517-ffebec83b59a/role-mappings/clients/cdafba6c-0be4-4099-b7c1-5c353281b317','[{\"id\":\"46f7b820-7b85-4ebc-8193-e2737dadea6e\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"cdafba6c-0be4-4099-b7c1-5c353281b317\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('e04d9266-a088-48a7-b2bf-82c731bd5cec',1718161046371,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_ws3-admin/composites','[{\"id\":\"7384a5b7-1b0e-4054-871d-893461e8bc93\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"bfa34d68-e978-45be-8783-904bc3128fdb\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('e094a324-05ca-47dc-adbc-aef9008a2b0f',1718161016409,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','clients/3be016d4-911e-4469-9231-6ac1341460fb/roles/_ws3-admin','{\"id\":\"874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e158498c-58b7-41ef-845f-1dc6b74dac6f',1718161057094,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_organization-user-manager/composites','[{\"id\":\"1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}},{\"id\":\"76ec2416-4319-4a7f-b628-019b9653e08f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('e2f0dd51-7e2d-45c3-a68f-b9c6231c2b83',1718161056232,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/ac33af4f-2879-49b5-90a5-cee8005768f3','{\"id\":\"ac33af4f-2879-49b5-90a5-cee8005768f3\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('e567d494-a362-4716-981a-e8d03c3b5688',1718161056665,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_organization-manager','{\"id\":\"b2b61a4f-11ba-40da-acd4-438f6bce1331\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e6866695-0628-4a0e-8ec2-64838a4edf44',1718161055734,'org3','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/client-secret','{\"type\":\"secret\",\"value\":\"pzzmTM3HH0gCj32G4HwiJM6zVcaNe3OG\"}',NULL,'CLIENT'),('e83463e7-5d14-4ae1-a6ee-8c2625d97a8a',1718161152683,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','users/e4d50bcd-9246-4f89-a837-baf5a1b0a1bf/role-mappings/clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae','[{\"id\":\"04b858f3-0de7-46ec-a103-6769dc16e9c3\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d9a1f06e-912b-4fc0-b702-6e36617fd3ae\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('ea6fe15e-382d-4798-987d-9fffee8ac40d',1718161067797,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_ws2-admin','{\"id\":\"96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ea7fe342-9a85-4ab0-8cb9-20ba43d9e6d1',1718161129351,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/8dcbe59c-2305-4e8b-a509-d4506fb44048/roles/_og-ws-mt','{\"id\":\"8497ec31-6dcd-4c89-a052-785bae49bc2c\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('eb5f4760-7e44-4e4b-b0d1-4bda9d1ababe',1718161090593,'org4','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/87151c85-c4be-4bd9-ad28-582c4300419a/client-secret','{\"type\":\"secret\",\"value\":\"LiKS3S8dptVqnirIvmit9QAAQsOQRUQQ\"}',NULL,'CLIENT'),('ebbcb9aa-72d2-4c08-9663-8f4beef0e45b',1718161026667,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-ws-role-usr','{\"id\":\"74f18454-52ef-48d3-8343-9d0606364f55\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ec38500d-f9fd-4409-87b3-4a7cf0895ead',1718160994006,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-audit-log','{\"id\":\"f9de58e0-7808-4fb8-aed0-eca1bbd34561\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ec85d7ef-c36d-40ae-a266-397cd8ccb243',1718161016586,'org1','CREATE','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071','fd171a69-9a1b-4efa-b6ff-009497c2120a','172.18.0.10','users/a09c275c-0f93-4a53-85a4-0ff0b0301fcc/role-mappings/clients/3be016d4-911e-4469-9231-6ac1341460fb','[{\"id\":\"874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"3be016d4-911e-4469-9231-6ac1341460fb\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('efb72bbb-0319-4fad-b461-b43a5e7af8c3',1718161076779,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_ws3-admin/composites','[{\"id\":\"7e111b5e-bad0-4fd2-b853-4a7206f1d98c\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"35427293-42b6-4879-9059-aac833f6c21a\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('efbf7a4c-51e4-4c39-a498-c38ccf8efb45',1718161090773,'org4','ACTION','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/2e1b18d3-a4c7-4c9c-901c-396bc7b432d0/client-secret','{\"type\":\"secret\",\"value\":\"10l7dG5j2VNKqk4hrUbRSmOJ6D3MtHU1\"}',NULL,'CLIENT'),('f08db418-37b1-49d3-a4ee-1e56a6e7ec6d',1718160993836,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/1b02217f-d5bb-4032-b67c-57e32ee5b071/roles/_og-usr-mt','{\"id\":\"7051bbde-751f-467d-81ec-2646aa5a7a35\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f15c3b2f-5170-4449-9845-5a0e0141db53',1718160996121,'org1','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/a09c275c-0f93-4a53-85a4-0ff0b0301fcc','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('f3f3d1c9-91c1-4cc5-9956-721c69947cc4',1718161152634,'org5','CREATE','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048','3915ea99-7c60-454a-8d54-837ba1da3cef','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_ws3-admin/composites','[{\"id\":\"010ec8b3-ffe5-4dc5-91e3-693b9cc371b3\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"479657f3-828b-4b0b-9b60-c50d8ea0038b\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"8dcbe59c-2305-4e8b-a509-d4506fb44048\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('f6b8c65c-32ad-41c3-b054-31d80734ce45',1718161030288,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_ws1-admin','{\"id\":\"f8d40958-5753-462b-b922-cbd7aeb4475f\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f6dee5eb-8661-4b6d-8837-57263c919e9e',1718161129995,'org5','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/d9a1f06e-912b-4fc0-b702-6e36617fd3ae/roles/_organization-user-manager','{\"id\":\"08f3d0a1-85ce-4007-a153-6990811982d3\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('f7e699a2-eabc-4536-952d-ae7284279449',1718161028808,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/b2b807a0-56ed-4cb0-a517-ffebec83b59a/role-mappings/clients/cdafba6c-0be4-4099-b7c1-5c353281b317','[{\"id\":\"2f02694a-2310-4822-affc-6e78081e2606\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"cdafba6c-0be4-4099-b7c1-5c353281b317\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f90ef0df-56b0-485b-8c7b-8e483284a45d',1718161038573,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','clients/cdafba6c-0be4-4099-b7c1-5c353281b317/roles/_ws2-admin/composites','[{\"id\":\"b7116fff-d63d-4899-9b64-c2fe6590f855\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a1fcc6bb-eaa9-46b3-b2a2-c435a14072f1\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"b1947fe6-f799-4b32-a230-cf2a036325a5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('fac50f68-7a45-4a06-9038-f01f5d0d3576',1718161027864,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','users/e2576f32-dc9f-49f8-abc5-9475d51817a4/role-mappings/clients/29e4432e-6534-4b3d-8371-0993b180a64a','[{\"id\":\"85a7db0a-1b27-4679-b784-a4a7209cc428\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"29e4432e-6534-4b3d-8371-0993b180a64a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('fc3c2357-1d29-44f3-95dd-067834bc2d7c',1718161038613,'org2','CREATE','org2','b1947fe6-f799-4b32-a230-cf2a036325a5','e2576f32-dc9f-49f8-abc5-9475d51817a4','172.18.0.10','users/b2b807a0-56ed-4cb0-a517-ffebec83b59a/role-mappings/clients/cdafba6c-0be4-4099-b7c1-5c353281b317','[{\"id\":\"40349bfb-3002-449b-bc97-ffac3e9883fe\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"cdafba6c-0be4-4099-b7c1-5c353281b317\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fedeea5f-1dfb-47ad-a32f-6e06c708a213',1718161067740,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/ws2','{\"id\":\"831c6801-a7e3-49dd-98d9-6977b5c92271\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ff62a512-6d46-4c31-a024-3abe26f88102',1718161056446,'org3','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/a7f4ed5d-f103-44f9-a072-fb3489d0a165/roles/_og-usage','{\"id\":\"416e105c-ff36-4901-a39b-a2b8467bbbb9\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ffb2b122-9e11-4b41-8ac0-9b0921ba7cce',1718161067903,'org3','CREATE','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165','8d53991b-3ece-4ee8-b152-229fdf8a3be2','172.18.0.10','clients/728645f5-c020-49b8-b411-dcde55a7ade7/roles/_ws2-admin/composites','[{\"id\":\"831c6801-a7e3-49dd-98d9-6977b5c92271\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"d221d2fa-bdca-4cd2-8211-ff8447b5db5a\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a7f4ed5d-f103-44f9-a072-fb3489d0a165\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('fff79366-106d-451f-bde1-50deb2f031da',1718161026489,'org2','CREATE','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','3303237e-7510-4499-a187-e1b5854d17e7','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb','172.18.0.10','clients/b1947fe6-f799-4b32-a230-cf2a036325a5/roles/_og-own-mt','{\"id\":\"cadbf291-2f8b-4740-ae0e-bd76db05ef71\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('01073f3e-606a-4142-9986-b17583f767f6',NULL,'registration-user-creation','org4','d7fec2bb-c915-4a25-b1fe-ae77d3e626c4',0,20,0,NULL,NULL),('02e59d28-b0bc-48e0-afc1-fb9a817e0ee9',NULL,NULL,'org3','92e7d90f-2e96-4ad4-bb4d-afc235695cde',2,30,1,'0541e2c2-3f89-43d7-9609-20496c2c1205',NULL),('03914c9d-78e6-4200-a466-4c57d1ce7c62',NULL,'idp-create-user-if-unique','org4','bfb90176-62ce-4ea3-8073-075c3cf794cf',2,10,0,NULL,'df5870fd-3b2e-48ed-9b47-9460d2df9604'),('047a6948-22be-4103-9661-1e1552c8af8d',NULL,'direct-grant-validate-username','org2','d9756387-50d5-4cb5-a21c-b41b3f048d6f',0,10,0,NULL,NULL),('04808946-63fd-4836-85b1-30cc139e7a1c',NULL,'reset-credential-email','org2','cbebd621-7598-41f4-8285-4c8d9f483a50',0,20,0,NULL,NULL),('088b4df6-5208-4e99-8ef7-960d37b3c679',NULL,'auth-spnego','org1','a3fa7d89-8f17-4daa-bb08-d7dfcf10972c',3,20,0,NULL,NULL),('09e04f83-cf93-4242-9ff2-2a46f0b5cc3d',NULL,'registration-page-form','org5','19f94e69-6bd8-4018-bb62-0b437358df44',0,10,1,'8cac8dae-5903-48f1-9f81-6ad8e544ae22',NULL),('0aa7d301-1ada-4c8e-94e5-429467904d4a',NULL,'conditional-user-configured','org2','b7aeeecd-f30c-47d0-b905-0dbedcaf3f7a',0,10,0,NULL,NULL),('0afc91b4-6192-42bc-a0ea-31a56380ff4e',NULL,'registration-user-creation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','1cd86436-4deb-42a7-a0ee-e1701df22ae4',0,20,0,NULL,NULL),('0c0ac7d1-7571-4281-aeb6-51245730a5cd',NULL,'registration-user-creation','org5','8cac8dae-5903-48f1-9f81-6ad8e544ae22',0,20,0,NULL,NULL),('0ceff8b0-3ef9-448c-a55a-3f2b597d8ab9',NULL,'conditional-user-configured','org5','6940ac14-1bc7-404d-bffc-1bec10126912',0,10,0,NULL,NULL),('0cf260d7-6957-4a2d-b018-8d41a8922242',NULL,'reset-credential-email','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','2d046191-856c-4432-b98f-064a38c0aac7',0,20,0,NULL,NULL),('0f131527-36e6-46a6-92ed-0a90d08fd807',NULL,'auth-otp-form','org3','ad121011-97ef-42f1-b982-64e35317c134',0,20,0,NULL,NULL),('10b58f4c-be9a-4d74-8f6f-270e24f52cc5',NULL,'registration-terms-and-conditions','org2','16399c37-25af-4b4f-9c37-fc052a138970',3,70,0,NULL,NULL),('11bf2206-8b22-4cfa-94cd-0e65c77ad282',NULL,'direct-grant-validate-password','org2','d9756387-50d5-4cb5-a21c-b41b3f048d6f',0,20,0,NULL,NULL),('11cd8ef6-7626-4dae-8bd2-7ead292f1b9d',NULL,'client-jwt','org2','746c9212-7f1f-471a-898e-2cbd958e5104',2,20,0,NULL,NULL),('1461e780-8e84-4449-9011-4735981fee09',NULL,'client-x509','org1','ae38a75a-b7a1-4f92-8841-5eb493978a85',2,40,0,NULL,NULL),('152f9a04-2531-48ed-b40f-c383964d6591',NULL,'auth-otp-form','org1','5560b610-89f4-48ba-bbd7-8aa4914d6a84',0,20,0,NULL,NULL),('16319723-23fa-461a-9704-18b3fe7a7e3e',NULL,'client-x509','org5','45458190-77ef-4bcc-a71e-c76118b90e20',2,40,0,NULL,NULL),('16eb7916-9121-427e-aba9-ac42168a0be1',NULL,'client-secret-jwt','org3','c525c9ea-8516-465e-8a86-3a60ddc1df45',2,30,0,NULL,NULL),('16ef3212-f776-419d-9855-981735472475',NULL,'identity-provider-redirector','org2','0927997f-1704-4280-af1e-5d8e1a72d8b7',2,25,0,NULL,NULL),('17e7adf4-f6fb-44d2-92b9-275ff29547ef',NULL,'registration-password-action','org1','e55c1f10-daf0-421f-9d66-51d916c3f4ad',0,50,0,NULL,NULL),('18d439a2-5dfe-4ee5-9059-536546bbd673',NULL,'docker-http-basic-authenticator','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','31f60baa-a256-426a-a66d-05b53e19e774',0,10,0,NULL,NULL),('194f0438-d306-41c7-8f18-edf97b674abd',NULL,NULL,'org5','8372dfd3-18d3-4d96-b95f-38f86d0965d5',1,20,1,'502fb0c3-98a5-438c-8aba-11f5acc1b63e',NULL),('196bf308-8190-42c8-9eff-219a5eb1f06e',NULL,'conditional-user-configured','org1','df7f750f-9456-4cbc-bfee-bccbf07243ee',0,10,0,NULL,NULL),('1a0568d9-d2f1-420f-8c9a-95612b1d1274',NULL,'conditional-user-configured','org2','9d3d9d53-1c6f-41ee-81cf-04c5d7b0b3fa',0,10,0,NULL,NULL),('1b02365c-47d3-41fc-9b8a-7f0f5e197857',NULL,NULL,'org5','c5a6fab9-fb37-41ac-9715-00170a007b07',1,40,1,'6940ac14-1bc7-404d-bffc-1bec10126912',NULL),('1d3423bd-5694-41e9-ad7b-7262335d1287',NULL,'client-jwt','org4','0594a0db-6948-47f2-a7c4-76d04c11d876',2,20,0,NULL,NULL),('1d7839a0-b7a1-476d-8b8c-3cd9abd7b3df',NULL,NULL,'org5','9547f6e3-5310-4222-85ef-25e7962986fb',2,30,1,'f7e45921-6c74-4ada-92c6-90acd0853a69',NULL),('1f14dee0-8a1f-4495-b0e2-7ec64797a712',NULL,'idp-email-verification','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','044a095d-e6de-48d9-acee-fcb8e1d5c45c',2,10,0,NULL,NULL),('1f92e1ea-e88d-4693-9eff-7edc16991ffb',NULL,'idp-username-password-form','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','874c2e06-6275-4e37-9269-8524df386f35',0,10,0,NULL,NULL),('1fda5a7c-fb82-4b2f-a167-31838f9f6a74',NULL,NULL,'org1','dea5c95a-4944-41ba-a186-fc821214ac16',1,40,1,'df7f750f-9456-4cbc-bfee-bccbf07243ee',NULL),('21c56be9-711b-45fa-8a73-25634d0db51d',NULL,'reset-password','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','2d046191-856c-4432-b98f-064a38c0aac7',0,30,0,NULL,NULL),('22057b96-9383-40e7-836b-7f99539f8f85',NULL,'auth-spnego','org2','0927997f-1704-4280-af1e-5d8e1a72d8b7',3,20,0,NULL,NULL),('22e0d843-3001-4662-8129-83c9f0b08114',NULL,'registration-terms-and-conditions','org5','8cac8dae-5903-48f1-9f81-6ad8e544ae22',3,70,0,NULL,NULL),('23b70a3f-bef0-4d44-91d6-cf531fbeb0e6',NULL,'registration-password-action','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','1cd86436-4deb-42a7-a0ee-e1701df22ae4',0,50,0,NULL,NULL),('23ce13d5-33db-4d41-96d3-bd44b58b809d',NULL,'conditional-user-configured','org3','88964ae8-1791-4849-9192-bd13e0f0dfab',0,10,0,NULL,NULL),('2442b93a-d6fe-43a2-a7ee-78ddd69cebff',NULL,'registration-password-action','org3','5bb79d76-476e-4557-a92b-6b9e745f7aa9',0,50,0,NULL,NULL),('245dce38-3e26-41d3-a69c-dbb19ed0ad09',NULL,'registration-page-form','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','ec77a7ba-190f-496e-9097-888c92efe7a2',0,10,1,'1cd86436-4deb-42a7-a0ee-e1701df22ae4',NULL),('27229f5e-72f9-4ea9-b8fe-9ea01ce1fbde',NULL,NULL,'org4','e8b20ecc-e5ab-4d1a-ae7e-d5b38b46322c',2,20,1,'6d1ca9c7-c302-4d1a-82c0-474d8b6d3ef0',NULL),('278defab-05cc-48e4-8fe3-c010ca627b9a',NULL,'conditional-user-configured','org4','ff5ff436-d849-402f-828d-df0e744f2bc8',0,10,0,NULL,NULL),('27ab1b38-2084-44d1-ba0a-70487ba9a9f5',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','2d046191-856c-4432-b98f-064a38c0aac7',1,40,1,'5e6b1132-8821-4f7e-b2ae-733f7ccf6cfd',NULL),('27ce444d-52f3-4d61-ba4f-19468279f148',NULL,'docker-http-basic-authenticator','org5','97f96d08-dc23-4aa0-a913-debd28039491',0,10,0,NULL,NULL),('29757b9d-9386-4d09-93ad-9a48eef48835',NULL,'auth-cookie','org5','9547f6e3-5310-4222-85ef-25e7962986fb',2,10,0,NULL,NULL),('29a85809-7db9-4223-ba81-3f4fce022d54',NULL,'auth-spnego','org5','9547f6e3-5310-4222-85ef-25e7962986fb',3,20,0,NULL,NULL),('2b0f96bc-ac14-431d-860b-316cf1ccfd28',NULL,'auth-otp-form','org5','665198d6-ac78-49b1-84d0-438173eca9c6',0,20,0,NULL,NULL),('2d63c20a-ddfb-44cc-9d76-f7503cd9e540',NULL,'client-jwt','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','b1c79d7d-7925-4406-9ea0-5e3875232af3',2,20,0,NULL,NULL),('2e0ee051-3514-43e8-ab88-1ff10ee30f75',NULL,'registration-recaptcha-action','org3','5bb79d76-476e-4557-a92b-6b9e745f7aa9',3,60,0,NULL,NULL),('2e89d886-2200-4c64-96e7-7339e283e67f',NULL,'registration-page-form','org2','8c65830f-52a9-46e0-9344-c8669fa5b86d',0,10,1,'16399c37-25af-4b4f-9c37-fc052a138970',NULL),('3025254c-0b19-4c42-b68a-0924d8462086',NULL,'conditional-user-configured','org1','b688f813-d5a8-4c6c-b2f3-cd0a8f6f7250',0,10,0,NULL,NULL),('3052f4c4-9a68-43f9-81c1-d14b114754d5',NULL,NULL,'org3','5591c08c-752f-4955-8140-2d20b65cfcf3',2,20,1,'eaf4d00d-66fb-4567-a1cc-c7952d2e424e',NULL),('3262808b-cb4e-4b22-bf79-7cfa63ad05fb',NULL,'conditional-user-configured','org1','465d557f-10f6-455b-b15c-3a8e8d17f6e4',0,10,0,NULL,NULL),('334703db-0967-4346-b2f7-18426122769a',NULL,'idp-email-verification','org2','b59e739f-e3f4-4bf9-a929-0a860f8fe5d0',2,10,0,NULL,NULL),('34924a55-06d7-476f-b9d2-4e3867d30402',NULL,'http-basic-authenticator','org5','4c46c201-2fd2-4428-ab42-b745cf373df1',0,10,0,NULL,NULL),('34fb3fa6-062d-45ce-b06a-4b467fb37087',NULL,'client-x509','org4','0594a0db-6948-47f2-a7c4-76d04c11d876',2,40,0,NULL,NULL),('35e43211-ce31-41e3-b776-f20e7b214821',NULL,'reset-password','org4','248c17d2-5baa-4de4-8989-1de08ace42d8',0,30,0,NULL,NULL),('369b784e-f779-4cbb-98bb-152269a32d71',NULL,NULL,'org5','a4d8705f-6420-4ffa-8c5e-51e8f4729e10',2,20,1,'8372dfd3-18d3-4d96-b95f-38f86d0965d5',NULL),('381ff095-7ba5-41a3-8272-14cecaa9af5c',NULL,'reset-password','org3','4a1876c2-0ba6-4b1a-a3a5-5a0e18ae5a99',0,30,0,NULL,NULL),('38240560-e4ad-4d9a-b8bc-f39b6cb2b15d',NULL,'conditional-user-configured','org3','ad121011-97ef-42f1-b982-64e35317c134',0,10,0,NULL,NULL),('38b1ce74-c00e-46e2-b43b-419b80364149',NULL,'conditional-user-configured','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','44a80f1b-3064-4836-8b0a-bb6d979d04c9',0,10,0,NULL,NULL),('394f19e1-d26e-46aa-951a-37bc950ae1ba',NULL,'direct-grant-validate-username','org4','68201b24-4598-4750-a825-43c03696a50b',0,10,0,NULL,NULL),('39ba053e-3cfb-46ec-bc54-72b794a9cc26',NULL,NULL,'org3','dba3fa12-0194-4ba5-aa59-9797dd3aaf7a',0,20,1,'5591c08c-752f-4955-8140-2d20b65cfcf3',NULL),('3b8ee9f2-261f-4dd3-b824-3a9c1ae7d420',NULL,'conditional-user-configured','org2','2ecef6d7-c374-4840-9818-08da510c52c5',0,10,0,NULL,NULL),('3c290273-3725-4202-9fd0-c00578b7fa22',NULL,'client-jwt','org5','45458190-77ef-4bcc-a71e-c76118b90e20',2,20,0,NULL,NULL),('3d97f000-d951-41dc-ba7f-9276c765a79c',NULL,'registration-recaptcha-action','org4','d7fec2bb-c915-4a25-b1fe-ae77d3e626c4',3,60,0,NULL,NULL),('3dd42641-c956-4f97-86d5-4a4322e27902',NULL,'docker-http-basic-authenticator','org2','3436d736-679c-4b67-bc7f-6c9cbef7fa29',0,10,0,NULL,NULL),('3e5cc23e-b95d-4d38-b0d6-6ce709d4913f',NULL,'reset-credentials-choose-user','org4','248c17d2-5baa-4de4-8989-1de08ace42d8',0,10,0,NULL,NULL),('41d30a92-38a2-471c-8bdd-9acf11db98d1',NULL,'idp-create-user-if-unique','org2','9f26bd55-c702-4245-a524-2f3d28ff5968',2,10,0,NULL,'3b4de157-1623-4efd-b0db-004f5b9182f8'),('420fa744-38ee-4a77-9e06-f6eecad85b7a',NULL,'direct-grant-validate-otp','org2','9d3d9d53-1c6f-41ee-81cf-04c5d7b0b3fa',0,20,0,NULL,NULL),('4282b437-f7e4-41e0-8e6e-a5f3472c790b',NULL,'reset-otp','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','5e6b1132-8821-4f7e-b2ae-733f7ccf6cfd',0,20,0,NULL,NULL),('432fd639-cda1-4508-899f-de2b22c6deff',NULL,'auth-username-password-form','org4','70c0714b-cd4e-4dd4-8fee-2a845d64d4e2',0,10,0,NULL,NULL),('458d1382-e6a3-4391-b0c1-68d50d3eab90',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','e901a02f-baa1-4dda-9de1-825a53b09e59',1,20,1,'eb18893c-19f3-4ef5-85cd-5bc967edbb2e',NULL),('45e78a19-0f71-4dfc-8aa7-35228838a824',NULL,'conditional-user-configured','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','5e6b1132-8821-4f7e-b2ae-733f7ccf6cfd',0,10,0,NULL,NULL),('46e00d67-e48d-4a12-b829-6b9bee27e761',NULL,'auth-username-password-form','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','e901a02f-baa1-4dda-9de1-825a53b09e59',0,10,0,NULL,NULL),('47f1cb42-7254-4de6-b77e-e5b8583fdd4c',NULL,'conditional-user-configured','org3','423a1e9f-f695-4940-a352-fc7064935355',0,10,0,NULL,NULL),('489bc350-631c-4b17-b2df-2355abf64137',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','044a095d-e6de-48d9-acee-fcb8e1d5c45c',2,20,1,'874c2e06-6275-4e37-9269-8524df386f35',NULL),('48c9ee23-9702-4f8e-ae84-44d55fa4604f',NULL,'idp-create-user-if-unique','org5','c0947915-582a-4d95-a815-63baa2d48599',2,10,0,NULL,'57b39354-e43d-417a-8a9a-abd321b17edf'),('4a340b59-9ea1-46db-a888-f75fffa5b9a0',NULL,'client-jwt','org3','c525c9ea-8516-465e-8a86-3a60ddc1df45',2,20,0,NULL,NULL),('4b3d16b9-649f-4fc1-906a-76f4afa70e45',NULL,'conditional-user-configured','org5','cf92eea4-96b3-46f0-9710-0a0d77756dbf',0,10,0,NULL,NULL),('4c2c7e4d-6530-4414-9450-78d488472a73',NULL,'client-secret-jwt','org1','ae38a75a-b7a1-4f92-8841-5eb493978a85',2,30,0,NULL,NULL),('4c401fb8-1493-4331-a0aa-6a439e13759e',NULL,'reset-otp','org3','88964ae8-1791-4849-9192-bd13e0f0dfab',0,20,0,NULL,NULL),('4e0871ea-867d-4425-a101-d92ecdb17629',NULL,NULL,'org1','d9e914dc-1283-42bf-b541-b20d78541191',1,20,1,'5560b610-89f4-48ba-bbd7-8aa4914d6a84',NULL),('4eecf9b0-9631-4fb4-acd1-a633560db65d',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','9edcb37d-f4fa-450b-a4e0-d07c6e3a1b77',0,20,1,'044a095d-e6de-48d9-acee-fcb8e1d5c45c',NULL),('4f9e38ee-52c1-40bb-89c7-c0396fe90320',NULL,'conditional-user-configured','org4','76d187b6-d24e-420e-af1e-1d4b53bb43b2',0,10,0,NULL,NULL),('500772b2-56aa-4a9d-b065-5f71518ab52f',NULL,NULL,'org3','c5b99c3f-0600-4b5f-88d6-285114c15048',1,30,1,'96c02e79-e97b-46f4-aadd-80619e0d38e4',NULL),('502f2e78-4157-42b6-a025-7ffd87ed5865',NULL,'auth-otp-form','org4','e3da14c3-93ae-47e7-94e3-15cdf5752b29',0,20,0,NULL,NULL),('50406277-6d7c-4848-a95c-480183508aea',NULL,'idp-confirm-link','org5','20d5f1c9-498d-491a-9591-f4e7a7607104',0,10,0,NULL,NULL),('510275a0-c92e-41e6-8764-e8bdd6302bf8',NULL,'idp-create-user-if-unique','org3','5591c08c-752f-4955-8140-2d20b65cfcf3',2,10,0,NULL,'42cfe89e-974f-401f-bac1-9d2f53d8e013'),('516bff52-61cb-4411-b424-fb6270e81495',NULL,'reset-credentials-choose-user','org1','dea5c95a-4944-41ba-a186-fc821214ac16',0,10,0,NULL,NULL),('51c9097c-ed35-42d9-a8c9-1d2d12f96493',NULL,'http-basic-authenticator','org2','ab4081bf-4495-49de-8597-783a683e6d0f',0,10,0,NULL,NULL),('51e02c9f-c653-4091-b116-5a994fb3f819',NULL,'client-secret-jwt','org2','746c9212-7f1f-471a-898e-2cbd958e5104',2,30,0,NULL,NULL),('528dc21d-e125-47ac-8247-60dfeeefc415',NULL,'direct-grant-validate-username','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','776e0ac9-c039-45d8-8c85-058d3294600c',0,10,0,NULL,NULL),('52b1ac04-41cb-4a64-8ff7-35512862c0c2',NULL,NULL,'org2','cbebd621-7598-41f4-8285-4c8d9f483a50',1,40,1,'b7aeeecd-f30c-47d0-b905-0dbedcaf3f7a',NULL),('52b23116-86b7-48e2-b75d-24e06c0e8382',NULL,'registration-terms-and-conditions','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','1cd86436-4deb-42a7-a0ee-e1701df22ae4',3,70,0,NULL,NULL),('5350530b-6b91-4de8-bd29-2616de07b051',NULL,NULL,'org4','8981fcb1-ef1f-4a23-9635-c508ae518fff',2,30,1,'70c0714b-cd4e-4dd4-8fee-2a845d64d4e2',NULL),('53ec6eb4-8fca-4c5a-90c5-38a3900535da',NULL,NULL,'org3','eaf4d00d-66fb-4567-a1cc-c7952d2e424e',0,20,1,'a135f93d-1f95-4f5c-b10f-fd0c0b8cf42b',NULL),('54a349f6-ed72-4fa8-9d5e-62076e5efbc1',NULL,'registration-terms-and-conditions','org3','5bb79d76-476e-4557-a92b-6b9e745f7aa9',3,70,0,NULL,NULL),('56a8291a-62dc-437b-9397-f6ef2f08d9e1',NULL,'registration-password-action','org4','d7fec2bb-c915-4a25-b1fe-ae77d3e626c4',0,50,0,NULL,NULL),('57dd6df6-6a12-4a3b-9247-c11c414e8802',NULL,'auth-otp-form','org3','423a1e9f-f695-4940-a352-fc7064935355',0,20,0,NULL,NULL),('582ffaf4-af77-4be8-9931-19ff220be28d',NULL,'idp-confirm-link','org1','a35fe5b3-bda2-424c-b85a-9e716b06ba4e',0,10,0,NULL,NULL),('5a055a06-c1a0-456b-bfa4-c3b76b12dd6f',NULL,'reset-credential-email','org1','dea5c95a-4944-41ba-a186-fc821214ac16',0,20,0,NULL,NULL),('5b9c8034-f310-46a5-9f88-a8e4385f580c',NULL,'auth-spnego','org3','92e7d90f-2e96-4ad4-bb4d-afc235695cde',3,20,0,NULL,NULL),('5bccd44a-cd0f-4b6d-aede-30c190e0b9fd',NULL,'idp-email-verification','org1','4891650f-4e14-48f3-bf28-333dc40b7352',2,10,0,NULL,NULL),('5d4317b9-4559-4d5f-a4ca-f81c0f5e3b87',NULL,'direct-grant-validate-otp','org3','96c02e79-e97b-46f4-aadd-80619e0d38e4',0,20,0,NULL,NULL),('5ea27ea9-e1a0-47ef-99a0-f1c93d8a86ff',NULL,'idp-create-user-if-unique','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','de0a2dd9-8fcf-4a1f-a796-2f60f4ea2fd1',2,10,0,NULL,'dfe775eb-e441-464e-8382-2b972f418a8a'),('5eff542d-7b10-490a-86af-9101fd887dd5',NULL,'conditional-user-configured','org2','a46415ae-707b-4eb2-aaac-f2ab4fb3b997',0,10,0,NULL,NULL),('5fef722a-9774-489e-9204-615231bd4ac0',NULL,'idp-username-password-form','org3','a3095066-1cad-4b25-bae2-8bd51875bddd',0,10,0,NULL,NULL),('600fae31-5b4e-4c8f-ac18-c08d8f93599b',NULL,'reset-otp','org5','6940ac14-1bc7-404d-bffc-1bec10126912',0,20,0,NULL,NULL),('604db155-fb51-4888-8e33-dc574c070e97',NULL,'conditional-user-configured','org4','b0f98d4c-c0bd-4264-b7c8-89e9dadd97c9',0,10,0,NULL,NULL),('60c88a21-7512-4bc6-9612-c630dd154a69',NULL,'auth-cookie','org1','a3fa7d89-8f17-4daa-bb08-d7dfcf10972c',2,10,0,NULL,NULL),('618ba716-50e1-4b1e-8c5b-58576c5febf8',NULL,'conditional-user-configured','org4','e3da14c3-93ae-47e7-94e3-15cdf5752b29',0,10,0,NULL,NULL),('6240113e-eb21-4cd4-b9d4-39e4c61d982b',NULL,'auth-spnego','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','aba3ebca-c70b-4357-8904-76df663b9791',3,20,0,NULL,NULL),('63147cf1-3ff5-46ac-ac5b-9661d8850c93',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','0cb8847d-3ff9-47f3-9e72-01c2ca1be9b7',0,20,1,'de0a2dd9-8fcf-4a1f-a796-2f60f4ea2fd1',NULL),('63455437-b1fc-423e-944a-7a8a83bc36ce',NULL,NULL,'org4','68201b24-4598-4750-a825-43c03696a50b',1,30,1,'b0f98d4c-c0bd-4264-b7c8-89e9dadd97c9',NULL),('63a86189-ae7e-4bd9-833e-a356b51f3966',NULL,'client-secret-jwt','org4','0594a0db-6948-47f2-a7c4-76d04c11d876',2,30,0,NULL,NULL),('63b3e6c4-d771-472c-a456-ed15aed01250',NULL,NULL,'org1','4891650f-4e14-48f3-bf28-333dc40b7352',2,20,1,'d9e914dc-1283-42bf-b541-b20d78541191',NULL),('63b55661-dfb1-43f2-9a70-02679019fe42',NULL,'direct-grant-validate-otp','org4','b0f98d4c-c0bd-4264-b7c8-89e9dadd97c9',0,20,0,NULL,NULL),('655cd62a-dba6-4969-928e-598aa9da4320',NULL,'registration-recaptcha-action','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','1cd86436-4deb-42a7-a0ee-e1701df22ae4',3,60,0,NULL,NULL),('6639feef-21c2-4b52-9eec-b9fb9918778f',NULL,'client-jwt','org1','ae38a75a-b7a1-4f92-8841-5eb493978a85',2,20,0,NULL,NULL),('666b267f-f364-4f47-b82e-282bce942956',NULL,'idp-confirm-link','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','9edcb37d-f4fa-450b-a4e0-d07c6e3a1b77',0,10,0,NULL,NULL),('66f192c8-2fe2-400c-9c5e-da5ad9e6d786',NULL,'direct-grant-validate-password','org1','27d30e5e-ade2-4a05-a34e-118203c97c4a',0,20,0,NULL,NULL),('6939d3d0-17a0-457a-9182-abe14586d23f',NULL,'auth-cookie','org2','0927997f-1704-4280-af1e-5d8e1a72d8b7',2,10,0,NULL,NULL),('6a16b0be-29ef-4935-b9fa-fd1814195939',NULL,'reset-credentials-choose-user','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','2d046191-856c-4432-b98f-064a38c0aac7',0,10,0,NULL,NULL),('6bfa3bcf-ae29-4eb9-8c11-4f1f95e4bcfb',NULL,NULL,'org5','cb7ef909-4f53-46b6-987e-f9bc17160408',1,30,1,'cf92eea4-96b3-46f0-9710-0a0d77756dbf',NULL),('6d07a242-7eac-467a-98a1-1a693ad2eb79',NULL,'direct-grant-validate-password','org3','c5b99c3f-0600-4b5f-88d6-285114c15048',0,20,0,NULL,NULL),('6d23a264-e181-4dfc-a8c0-30f728b6b397',NULL,'direct-grant-validate-username','org3','c5b99c3f-0600-4b5f-88d6-285114c15048',0,10,0,NULL,NULL),('6e1ba632-04e6-4010-96a6-6574668766d6',NULL,'auth-cookie','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','aba3ebca-c70b-4357-8904-76df663b9791',2,10,0,NULL,NULL),('6e47be8e-8510-41ea-9002-47b62e1a0248',NULL,NULL,'org1','f5007e0f-0c17-4461-a8e3-db021204fa8c',1,20,1,'465d557f-10f6-455b-b15c-3a8e8d17f6e4',NULL),('6efdd5a2-feb8-40de-a57c-bf98eb55443b',NULL,'idp-email-verification','org4','e8b20ecc-e5ab-4d1a-ae7e-d5b38b46322c',2,10,0,NULL,NULL),('73544bc6-f6b2-43e9-b7f4-0b121207635c',NULL,'reset-otp','org4','76d187b6-d24e-420e-af1e-1d4b53bb43b2',0,20,0,NULL,NULL),('73b8c77a-8817-4a15-bbd8-cbb0a22664f2',NULL,NULL,'org5','f7e45921-6c74-4ada-92c6-90acd0853a69',1,20,1,'665198d6-ac78-49b1-84d0-438173eca9c6',NULL),('73e97239-018f-4018-82cb-fb9f2821988c',NULL,'direct-grant-validate-otp','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','eb6c91a4-70d5-45ec-bd46-13a2a7b2ff9c',0,20,0,NULL,NULL),('76583340-55b6-4fd4-947b-79647d8a5af9',NULL,'docker-http-basic-authenticator','org3','e9342259-5408-4731-97b5-8cbf93b21d29',0,10,0,NULL,NULL),('7807a325-4fe8-4439-9c10-cfaf1ff32469',NULL,'reset-credentials-choose-user','org5','c5a6fab9-fb37-41ac-9715-00170a007b07',0,10,0,NULL,NULL),('787db173-5e5d-4561-8b91-07fde1f70562',NULL,'registration-password-action','org5','8cac8dae-5903-48f1-9f81-6ad8e544ae22',0,50,0,NULL,NULL),('78bf1e38-fd33-40c7-8ead-f4626747f33e',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','776e0ac9-c039-45d8-8c85-058d3294600c',1,30,1,'eb6c91a4-70d5-45ec-bd46-13a2a7b2ff9c',NULL),('798469d8-5b4f-4eb4-8066-cf04f6e4faef',NULL,'conditional-user-configured','org5','502fb0c3-98a5-438c-8aba-11f5acc1b63e',0,10,0,NULL,NULL),('7be87366-1a70-4b19-b9b5-f35796530012',NULL,'client-x509','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','b1c79d7d-7925-4406-9ea0-5e3875232af3',2,40,0,NULL,NULL),('7c48b4c3-8110-4952-b13e-18fffd321f03',NULL,'docker-http-basic-authenticator','org4','ca590cb4-00fc-4f94-8643-2de42b34fb74',0,10,0,NULL,NULL),('7e777a92-19d9-4526-b5c4-f5618c58cd46',NULL,NULL,'org1','4a6e5f02-607b-43a8-b59b-1b0904d16259',2,20,1,'a35fe5b3-bda2-424c-b85a-9e716b06ba4e',NULL),('7f00d06b-8b3a-4ea6-a32f-1e1bd0eace0e',NULL,'client-secret','org2','746c9212-7f1f-471a-898e-2cbd958e5104',2,10,0,NULL,NULL),('8117a6e8-34cd-4605-b861-8d31d887e00e',NULL,NULL,'org2','ef81ba69-ba30-4b31-b22d-98afc88a3a4b',1,20,1,'2ecef6d7-c374-4840-9818-08da510c52c5',NULL),('82138337-927b-4e63-95fb-67ff2d8c7c01',NULL,'auth-otp-form','org2','2ecef6d7-c374-4840-9818-08da510c52c5',0,20,0,NULL,NULL),('825578ff-b0b7-4fae-a845-d69a3313478a',NULL,'auth-otp-form','org5','502fb0c3-98a5-438c-8aba-11f5acc1b63e',0,20,0,NULL,NULL),('82e8aa61-94cd-4775-8290-41fa8ff29ae8',NULL,'client-secret','org4','0594a0db-6948-47f2-a7c4-76d04c11d876',2,10,0,NULL,NULL),('83b2f218-cc9f-4d62-8aae-1e08a65de987',NULL,'auth-username-password-form','org2','e2d29bbd-f473-4cd2-b085-029809db1c60',0,10,0,NULL,NULL),('84dc2812-e7b5-498f-9b6d-d7f3c5bc4fd2',NULL,NULL,'org1','a35fe5b3-bda2-424c-b85a-9e716b06ba4e',0,20,1,'4891650f-4e14-48f3-bf28-333dc40b7352',NULL),('853ee640-c6a3-46bc-a159-a8fa21338a9d',NULL,'registration-terms-and-conditions','org1','e55c1f10-daf0-421f-9d66-51d916c3f4ad',3,70,0,NULL,NULL),('857dbaf8-1f91-4c28-8668-c8ced1914c46',NULL,'registration-recaptcha-action','org5','8cac8dae-5903-48f1-9f81-6ad8e544ae22',3,60,0,NULL,NULL),('87082373-7510-4506-8da0-bf3766435153',NULL,'client-secret-jwt','org5','45458190-77ef-4bcc-a71e-c76118b90e20',2,30,0,NULL,NULL),('879b8c7b-9537-40e6-a16b-061087b4ea50',NULL,'idp-username-password-form','org1','d9e914dc-1283-42bf-b541-b20d78541191',0,10,0,NULL,NULL),('88261e39-9718-4437-af19-c39fdd6685b8',NULL,'http-basic-authenticator','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','20f9670c-bb74-4052-b8c0-0ee16067d2c5',0,10,0,NULL,NULL),('88fd09f4-6531-44d1-a46f-37ace56b4b6e',NULL,NULL,'org1','029352bc-387c-4865-a19f-7ed364640773',0,20,1,'4a6e5f02-607b-43a8-b59b-1b0904d16259',NULL),('8a20704a-061b-43d0-a754-0cacfb0c14f0',NULL,'reset-credentials-choose-user','org2','cbebd621-7598-41f4-8285-4c8d9f483a50',0,10,0,NULL,NULL),('8a38c7c6-cd3d-4a85-8c64-a29a70d17b6f',NULL,'reset-password','org2','cbebd621-7598-41f4-8285-4c8d9f483a50',0,30,0,NULL,NULL),('8a941801-69a3-4eb2-972a-1276a0d9fe64',NULL,'registration-password-action','org2','16399c37-25af-4b4f-9c37-fc052a138970',0,50,0,NULL,NULL),('8b4556ff-1a66-49a5-9e12-b4a430579bac',NULL,'auth-otp-form','org1','465d557f-10f6-455b-b15c-3a8e8d17f6e4',0,20,0,NULL,NULL),('8b57e1d1-c729-4bc8-8543-bf9fb2857f5a',NULL,'idp-review-profile','org1','029352bc-387c-4865-a19f-7ed364640773',0,10,0,NULL,'f10d1747-4215-40d5-b204-07ed090a99f1'),('8f130ade-4a5c-4792-94c7-5c4dfa4f1b84',NULL,'conditional-user-configured','org5','665198d6-ac78-49b1-84d0-438173eca9c6',0,10,0,NULL,NULL),('93358ffa-c1e8-429d-a0b5-df302852a164',NULL,'direct-grant-validate-otp','org5','cf92eea4-96b3-46f0-9710-0a0d77756dbf',0,20,0,NULL,NULL),('93899a3c-f373-4a3c-a999-288a2c664f7f',NULL,NULL,'org3','a3095066-1cad-4b25-bae2-8bd51875bddd',1,20,1,'423a1e9f-f695-4940-a352-fc7064935355',NULL),('94d5bd24-54af-4e97-a94e-a4f0e6b8ae8c',NULL,NULL,'org2','686de335-a6f9-46d6-a72d-112cce4b2cdd',0,20,1,'9f26bd55-c702-4245-a524-2f3d28ff5968',NULL),('94e53942-3a37-47fc-a469-c3b35fb98ed2',NULL,'client-secret','org5','45458190-77ef-4bcc-a71e-c76118b90e20',2,10,0,NULL,NULL),('9600ef15-a965-41da-a4b7-2156e273991c',NULL,'conditional-user-configured','org1','5560b610-89f4-48ba-bbd7-8aa4914d6a84',0,10,0,NULL,NULL),('967024da-3392-440c-a835-8d0f7257190f',NULL,'reset-credential-email','org3','4a1876c2-0ba6-4b1a-a3a5-5a0e18ae5a99',0,20,0,NULL,NULL),('9dc59517-ef58-43cf-ab17-eadafd24f5b0',NULL,'reset-credentials-choose-user','org3','4a1876c2-0ba6-4b1a-a3a5-5a0e18ae5a99',0,10,0,NULL,NULL),('9e4ad9f7-2105-4748-8ec6-9546a684ad56',NULL,'idp-confirm-link','org3','eaf4d00d-66fb-4567-a1cc-c7952d2e424e',0,10,0,NULL,NULL),('9f7c4f70-e69d-4477-8a25-eedc22e8c4d5',NULL,'idp-review-profile','org2','686de335-a6f9-46d6-a72d-112cce4b2cdd',0,10,0,NULL,'e726d27a-3d92-4695-b41a-96a50e85bbb6'),('a1bb8d43-476d-44e6-90a0-2f6130cdf2e7',NULL,NULL,'org2','0927997f-1704-4280-af1e-5d8e1a72d8b7',2,30,1,'e2d29bbd-f473-4cd2-b085-029809db1c60',NULL),('a358f914-c458-4165-857e-b7d22017935b',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','aba3ebca-c70b-4357-8904-76df663b9791',2,30,1,'e901a02f-baa1-4dda-9de1-825a53b09e59',NULL),('a36fd885-a0f0-4175-b037-a45075531eee',NULL,'idp-email-verification','org3','a135f93d-1f95-4f5c-b10f-fd0c0b8cf42b',2,10,0,NULL,NULL),('a4dbce69-a755-49a7-baac-98c645510063',NULL,'idp-confirm-link','org2','faeaf4c5-e6fe-4461-a19f-226ce9d5f5fb',0,10,0,NULL,NULL),('a5f7fddd-fbab-4310-9c62-c657073279c4',NULL,NULL,'org1','27d30e5e-ade2-4a05-a34e-118203c97c4a',1,30,1,'b688f813-d5a8-4c6c-b2f3-cd0a8f6f7250',NULL),('a9ae7cae-75e7-419b-a4a2-f8106089f704',NULL,'auth-username-password-form','org1','f5007e0f-0c17-4461-a8e3-db021204fa8c',0,10,0,NULL,NULL),('a9df463e-7796-400e-bf69-f367c2edefaa',NULL,'auth-username-password-form','org3','0541e2c2-3f89-43d7-9609-20496c2c1205',0,10,0,NULL,NULL),('aa160a75-09d7-4d2e-8c2c-706fac9af0d8',NULL,'registration-user-creation','org1','e55c1f10-daf0-421f-9d66-51d916c3f4ad',0,20,0,NULL,NULL),('ab371ae9-c0ea-4477-8215-89cfc280d9f7',NULL,NULL,'org2','d9756387-50d5-4cb5-a21c-b41b3f048d6f',1,30,1,'9d3d9d53-1c6f-41ee-81cf-04c5d7b0b3fa',NULL),('ac0a624e-5c96-43c4-b9ab-cb294333934b',NULL,'client-secret','org3','c525c9ea-8516-465e-8a86-3a60ddc1df45',2,10,0,NULL,NULL),('ad2da7a6-3ad3-4de9-b979-660324bf2134',NULL,'idp-confirm-link','org4','82fdff55-02e1-47bb-83ac-51dabcc0e3ae',0,10,0,NULL,NULL),('ae2898e3-ac19-42dd-927d-c4da9461f791',NULL,NULL,'org3','4a1876c2-0ba6-4b1a-a3a5-5a0e18ae5a99',1,40,1,'88964ae8-1791-4849-9192-bd13e0f0dfab',NULL),('aee271cd-3a9b-4e26-b2c3-eeebd711a880',NULL,'http-basic-authenticator','org4','8884ec13-e9fa-48f8-a50d-a14e88a6a17d',0,10,0,NULL,NULL),('b048855b-a7ef-4338-84ee-ae91610db2eb',NULL,'auth-cookie','org3','92e7d90f-2e96-4ad4-bb4d-afc235695cde',2,10,0,NULL,NULL),('b264d2d2-c0f8-4b9e-a45d-c65a521ed953',NULL,'direct-grant-validate-otp','org1','b688f813-d5a8-4c6c-b2f3-cd0a8f6f7250',0,20,0,NULL,NULL),('b3659360-7683-4542-b6e7-8b05a047f8c6',NULL,NULL,'org4','6d1ca9c7-c302-4d1a-82c0-474d8b6d3ef0',1,20,1,'ff5ff436-d849-402f-828d-df0e744f2bc8',NULL),('b3ba72a0-d2cb-45b2-bec0-8fa9c69dc4c8',NULL,'client-x509','org3','c525c9ea-8516-465e-8a86-3a60ddc1df45',2,40,0,NULL,NULL),('b449764e-fbc4-48e2-ae9e-ad241e82e9a7',NULL,NULL,'org2','9f26bd55-c702-4245-a524-2f3d28ff5968',2,20,1,'faeaf4c5-e6fe-4461-a19f-226ce9d5f5fb',NULL),('b62e236f-1853-4c1f-9c5b-9e44c0be0ee7',NULL,'reset-credential-email','org4','248c17d2-5baa-4de4-8989-1de08ace42d8',0,20,0,NULL,NULL),('b66f40f3-1c6a-4601-aee5-5c6941b6468e',NULL,NULL,'org2','e2d29bbd-f473-4cd2-b085-029809db1c60',1,20,1,'a46415ae-707b-4eb2-aaac-f2ab4fb3b997',NULL),('b7026843-842f-4bb8-8b3b-9459a882221e',NULL,'direct-grant-validate-username','org1','27d30e5e-ade2-4a05-a34e-118203c97c4a',0,10,0,NULL,NULL),('b8fbec09-8aea-4f10-b9ae-c80d1c4fe697',NULL,'http-basic-authenticator','org3','b84e4e00-6809-4c79-87cb-cda4de877281',0,10,0,NULL,NULL),('bac5a9c8-2d8c-4156-b7f5-8e36ca3c1e20',NULL,NULL,'org2','faeaf4c5-e6fe-4461-a19f-226ce9d5f5fb',0,20,1,'b59e739f-e3f4-4bf9-a929-0a860f8fe5d0',NULL),('bbd47984-1423-420e-9ec6-2ba47c3ee9a9',NULL,NULL,'org1','a3fa7d89-8f17-4daa-bb08-d7dfcf10972c',2,30,1,'f5007e0f-0c17-4461-a8e3-db021204fa8c',NULL),('bc80ff52-e7ee-4ac4-905e-ffb251233be9',NULL,'identity-provider-redirector','org5','9547f6e3-5310-4222-85ef-25e7962986fb',2,25,0,NULL,NULL),('bd88a4ae-25c6-4bb8-8f0d-0ce5a40ecb9e',NULL,'reset-otp','org1','df7f750f-9456-4cbc-bfee-bccbf07243ee',0,20,0,NULL,NULL),('be8854ec-556b-42b8-b6e7-ddcd054547f2',NULL,'auth-username-password-form','org5','f7e45921-6c74-4ada-92c6-90acd0853a69',0,10,0,NULL,NULL),('bf987034-a589-41ab-aaee-9e80472af0b2',NULL,'idp-username-password-form','org2','ef81ba69-ba30-4b31-b22d-98afc88a3a4b',0,10,0,NULL,NULL),('c11dcdda-97dd-4793-a249-05adb506a84a',NULL,'auth-spnego','org4','8981fcb1-ef1f-4a23-9635-c508ae518fff',3,20,0,NULL,NULL),('c30c1261-22fd-4baf-8020-55eacc3504b3',NULL,'client-secret','org1','ae38a75a-b7a1-4f92-8841-5eb493978a85',2,10,0,NULL,NULL),('c46a9ec9-40c1-4f66-9778-9dea9561deb8',NULL,'idp-email-verification','org5','a4d8705f-6420-4ffa-8c5e-51e8f4729e10',2,10,0,NULL,NULL),('c5e47b8a-2399-40b8-9b09-e08c2317ec94',NULL,'reset-password','org1','dea5c95a-4944-41ba-a186-fc821214ac16',0,30,0,NULL,NULL),('c7e762b2-e68f-4aa5-bc64-7cffe9e8e47f',NULL,'registration-user-creation','org2','16399c37-25af-4b4f-9c37-fc052a138970',0,20,0,NULL,NULL),('ca1017dc-b00f-4345-ad65-26ccb5bdd1bb',NULL,NULL,'org4','70c0714b-cd4e-4dd4-8fee-2a845d64d4e2',1,20,1,'e3da14c3-93ae-47e7-94e3-15cdf5752b29',NULL),('cb24b93b-d712-4452-a1a5-d3d550674330',NULL,'http-basic-authenticator','org1','8c45ddbd-fcac-4837-a322-d208902c9988',0,10,0,NULL,NULL),('cb33ccfa-ea02-42b6-a6f7-c8edceafeb6d',NULL,'auth-otp-form','org4','ff5ff436-d849-402f-828d-df0e744f2bc8',0,20,0,NULL,NULL),('cbf07a13-fbd9-4c55-b7ff-d85830b342a8',NULL,NULL,'org3','0541e2c2-3f89-43d7-9609-20496c2c1205',1,20,1,'ad121011-97ef-42f1-b982-64e35317c134',NULL),('ccc39b78-eeb7-4dd4-b015-acd8e3516e8d',NULL,'direct-grant-validate-username','org5','cb7ef909-4f53-46b6-987e-f9bc17160408',0,10,0,NULL,NULL),('d03b595d-b50c-4cf3-8c99-e1d330cebe2e',NULL,'idp-username-password-form','org5','8372dfd3-18d3-4d96-b95f-38f86d0965d5',0,10,0,NULL,NULL),('d2823b7f-b1fc-464f-bbcf-72572f97ee6c',NULL,'idp-review-profile','org4','8f30ffe7-14c2-47c6-b0c6-3780368e1219',0,10,0,NULL,'3f33a24f-9723-4399-a806-b36cccff9674'),('d3fd0260-f411-4e5a-991c-4fc7c544c9be',NULL,'auth-otp-form','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','eb18893c-19f3-4ef5-85cd-5bc967edbb2e',0,20,0,NULL,NULL),('d5816306-d156-4d67-82b3-0c049ef19265',NULL,NULL,'org4','8f30ffe7-14c2-47c6-b0c6-3780368e1219',0,20,1,'bfb90176-62ce-4ea3-8073-075c3cf794cf',NULL),('d60fd6a3-0128-40f3-9044-f12a751de6a7',NULL,'reset-credential-email','org5','c5a6fab9-fb37-41ac-9715-00170a007b07',0,20,0,NULL,NULL),('d715a1b6-47d3-491a-8f9b-f0b6be355668',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','de0a2dd9-8fcf-4a1f-a796-2f60f4ea2fd1',2,20,1,'9edcb37d-f4fa-450b-a4e0-d07c6e3a1b77',NULL),('d81ff10e-6e3b-4d5f-989f-c067a957ba9d',NULL,NULL,'org2','b59e739f-e3f4-4bf9-a929-0a860f8fe5d0',2,20,1,'ef81ba69-ba30-4b31-b22d-98afc88a3a4b',NULL),('d83c9cc4-86ec-41d4-b01d-1a6a7d33a767',NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','874c2e06-6275-4e37-9269-8524df386f35',1,20,1,'44a80f1b-3064-4836-8b0a-bb6d979d04c9',NULL),('d87037d1-b6a5-4973-aceb-08baa9c687bf',NULL,'registration-terms-and-conditions','org4','d7fec2bb-c915-4a25-b1fe-ae77d3e626c4',3,70,0,NULL,NULL),('d9a05c83-8ef0-417b-80c7-6582ffa19d31',NULL,'registration-page-form','org3','f4eeef0a-dd76-4641-9f14-7eb6090df6c3',0,10,1,'5bb79d76-476e-4557-a92b-6b9e745f7aa9',NULL),('daab6d8a-c3c6-4f8b-9caf-8450cf0fe54a',NULL,'conditional-user-configured','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','eb18893c-19f3-4ef5-85cd-5bc967edbb2e',0,10,0,NULL,NULL),('dacdcdcc-9862-4daf-ac78-978e96c810bf',NULL,NULL,'org4','248c17d2-5baa-4de4-8989-1de08ace42d8',1,40,1,'76d187b6-d24e-420e-af1e-1d4b53bb43b2',NULL),('db63509c-70f7-4611-8146-5772bfeedc77',NULL,'direct-grant-validate-password','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','776e0ac9-c039-45d8-8c85-058d3294600c',0,20,0,NULL,NULL),('de6b19df-cf27-4b8f-8b15-2d0903643b08',NULL,'registration-recaptcha-action','org1','e55c1f10-daf0-421f-9d66-51d916c3f4ad',3,60,0,NULL,NULL),('e02a4b57-1baa-4519-aff3-ab5bba4d5644',NULL,'registration-page-form','org4','4f44bbbb-e902-4b6c-8ca6-9f0398a18f8b',0,10,1,'d7fec2bb-c915-4a25-b1fe-ae77d3e626c4',NULL),('e0938787-1e81-42b8-aa19-4d8b75347f98',NULL,'idp-username-password-form','org4','6d1ca9c7-c302-4d1a-82c0-474d8b6d3ef0',0,10,0,NULL,NULL),('e258de67-5d13-48e4-9788-228447ec20b3',NULL,'idp-create-user-if-unique','org1','4a6e5f02-607b-43a8-b59b-1b0904d16259',2,10,0,NULL,'729070ff-d4f4-4a48-82a5-af3d37d35969'),('e3354e73-cf3b-4ea4-a52b-70fbc9fc1f86',NULL,NULL,'org5','c0947915-582a-4d95-a815-63baa2d48599',2,20,1,'20d5f1c9-498d-491a-9591-f4e7a7607104',NULL),('e3e59cd9-6598-4c91-a6a6-6adba725a12c',NULL,NULL,'org5','20d5f1c9-498d-491a-9591-f4e7a7607104',0,20,1,'a4d8705f-6420-4ffa-8c5e-51e8f4729e10',NULL),('e42ac5d4-a75c-4b68-acdb-27d7b5785ac2',NULL,'auth-otp-form','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','44a80f1b-3064-4836-8b0a-bb6d979d04c9',0,20,0,NULL,NULL),('e4c1a94e-d0b3-4891-afaf-b413912c7203',NULL,NULL,'org4','bfb90176-62ce-4ea3-8073-075c3cf794cf',2,20,1,'82fdff55-02e1-47bb-83ac-51dabcc0e3ae',NULL),('e4dea814-42a1-4dbd-af19-524fc7c54279',NULL,NULL,'org4','82fdff55-02e1-47bb-83ac-51dabcc0e3ae',0,20,1,'e8b20ecc-e5ab-4d1a-ae7e-d5b38b46322c',NULL),('e5df7567-af3c-4805-a4db-6362b3f7ca75',NULL,'identity-provider-redirector','org4','8981fcb1-ef1f-4a23-9635-c508ae518fff',2,25,0,NULL,NULL),('e5ee1226-edde-4060-a71d-bfb8ee5191fd',NULL,'idp-review-profile','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','0cb8847d-3ff9-47f3-9e72-01c2ca1be9b7',0,10,0,NULL,'71000dca-94e3-4c6b-877f-aa279019a858'),('e678583a-0736-49f1-ba2f-82d91b3e5b99',NULL,'direct-grant-validate-password','org5','cb7ef909-4f53-46b6-987e-f9bc17160408',0,20,0,NULL,NULL),('e6c99309-601d-488f-8ffe-981c5f89730d',NULL,'registration-user-creation','org3','5bb79d76-476e-4557-a92b-6b9e745f7aa9',0,20,0,NULL,NULL),('e75914e9-7f4f-441e-b4f2-b7da8fee4ebb',NULL,'client-secret-jwt','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','b1c79d7d-7925-4406-9ea0-5e3875232af3',2,30,0,NULL,NULL),('e9113426-3712-4529-9461-cd9e86a869bf',NULL,'client-secret','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','b1c79d7d-7925-4406-9ea0-5e3875232af3',2,10,0,NULL,NULL),('ea6277b3-f554-4c72-acd5-41cc8acfcba8',NULL,'identity-provider-redirector','org3','92e7d90f-2e96-4ad4-bb4d-afc235695cde',2,25,0,NULL,NULL),('eac4c4a6-4144-4198-a72c-5fbccf1142d1',NULL,'idp-review-profile','org3','dba3fa12-0194-4ba5-aa59-9797dd3aaf7a',0,10,0,NULL,'35453b8d-bcd4-48a3-bee5-c7cdac4eb762'),('eba85469-22b1-402b-be51-0c5c62ee565d',NULL,'idp-review-profile','org5','15654c42-0845-4205-b7ce-89ff8bbab08b',0,10,0,NULL,'7fa2ed9c-bac1-470b-926d-07f5d9d65aef'),('ec62dc97-203b-4e08-a50d-d495d192a08c',NULL,NULL,'org5','15654c42-0845-4205-b7ce-89ff8bbab08b',0,20,1,'c0947915-582a-4d95-a815-63baa2d48599',NULL),('ed0a7bc1-1e4c-4f1a-9f5b-5906d43d5ae7',NULL,'conditional-user-configured','org3','96c02e79-e97b-46f4-aadd-80619e0d38e4',0,10,0,NULL,NULL),('edb2f5cb-1cda-4380-8b74-9756063a93f6',NULL,'identity-provider-redirector','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','aba3ebca-c70b-4357-8904-76df663b9791',2,25,0,NULL,NULL),('f41a4eab-6293-4fca-a7e1-a7b3f9072c75',NULL,'docker-http-basic-authenticator','org1','b3b59bfc-4efd-446b-83c3-c008064fde42',0,10,0,NULL,NULL),('f47c56bd-e55d-45ff-98b8-0a45400e41a8',NULL,'registration-page-form','org1','e7f5c1f5-291c-4009-9a5f-d5514e5f3169',0,10,1,'e55c1f10-daf0-421f-9d66-51d916c3f4ad',NULL),('f50bb452-674b-4670-ad3d-9bab7215f0b5',NULL,'direct-grant-validate-password','org4','68201b24-4598-4750-a825-43c03696a50b',0,20,0,NULL,NULL),('f7c66fca-33ce-4811-8080-884d946c64a3',NULL,'reset-otp','org2','b7aeeecd-f30c-47d0-b905-0dbedcaf3f7a',0,20,0,NULL,NULL),('f813337a-bb60-42fa-bf25-a2ee276a975b',NULL,'client-x509','org2','746c9212-7f1f-471a-898e-2cbd958e5104',2,40,0,NULL,NULL),('fcd0209b-8f8d-4aa7-8129-fe4330d0c134',NULL,'registration-recaptcha-action','org2','16399c37-25af-4b4f-9c37-fc052a138970',3,60,0,NULL,NULL),('fcd29037-0d86-4ad6-836c-afe9ad195449',NULL,'identity-provider-redirector','org1','a3fa7d89-8f17-4daa-bb08-d7dfcf10972c',2,25,0,NULL,NULL),('fd885d16-8c57-44b7-b20d-aee9a585f06b',NULL,'auth-cookie','org4','8981fcb1-ef1f-4a23-9635-c508ae518fff',2,10,0,NULL,NULL),('fdcac871-71dd-4b71-8df3-3f1cda12f0d0',NULL,'reset-password','org5','c5a6fab9-fb37-41ac-9715-00170a007b07',0,30,0,NULL,NULL),('fe3ac681-2ef6-45fa-963e-e4b5b70376eb',NULL,NULL,'org3','a135f93d-1f95-4f5c-b10f-fd0c0b8cf42b',2,20,1,'a3095066-1cad-4b25-bae2-8bd51875bddd',NULL),('fe3e01db-45e9-46e9-b5c9-03930f01365b',NULL,'auth-otp-form','org2','a46415ae-707b-4eb2-aaac-f2ab4fb3b997',0,20,0,NULL,NULL),('ffe0127b-1025-4e59-8fa2-a18b6b452d29',NULL,'conditional-user-configured','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','eb6c91a4-70d5-45ec-bd46-13a2a7b2ff9c',0,10,0,NULL,NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('029352bc-387c-4865-a19f-7ed364640773','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',1,1),('044a095d-e6de-48d9-acee-fcb8e1d5c45c','Account verification options','Method with which to verity the existing account','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('0541e2c2-3f89-43d7-9609-20496c2c1205','forms','Username, password, otp and other auth forms.','org3','basic-flow',0,1),('0594a0db-6948-47f2-a7c4-76d04c11d876','clients','Base authentication for clients','org4','client-flow',1,1),('0927997f-1704-4280-af1e-5d8e1a72d8b7','browser','browser based authentication','org2','basic-flow',1,1),('0cb8847d-3ff9-47f3-9e72-01c2ca1be9b7','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('15654c42-0845-4205-b7ce-89ff8bbab08b','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',1,1),('16399c37-25af-4b4f-9c37-fc052a138970','registration form','registration form','org2','form-flow',0,1),('19f94e69-6bd8-4018-bb62-0b437358df44','registration','registration flow','org5','basic-flow',1,1),('1cd86436-4deb-42a7-a0ee-e1701df22ae4','registration form','registration form','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','form-flow',0,1),('20d5f1c9-498d-491a-9591-f4e7a7607104','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',0,1),('20f9670c-bb74-4052-b8c0-0ee16067d2c5','saml ecp','SAML ECP Profile Authentication Flow','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('248c17d2-5baa-4de4-8989-1de08ace42d8','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',1,1),('27d30e5e-ade2-4a05-a34e-118203c97c4a','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',1,1),('2d046191-856c-4432-b98f-064a38c0aac7','reset credentials','Reset credentials for a user if they forgot their password or something','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('2ecef6d7-c374-4840-9818-08da510c52c5','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('31f60baa-a256-426a-a66d-05b53e19e774','docker auth','Used by Docker clients to authenticate against the IDP','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('3436d736-679c-4b67-bc7f-6c9cbef7fa29','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',1,1),('423a1e9f-f695-4940-a352-fc7064935355','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('44a80f1b-3064-4836-8b0a-bb6d979d04c9','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('45458190-77ef-4bcc-a71e-c76118b90e20','clients','Base authentication for clients','org5','client-flow',1,1),('465d557f-10f6-455b-b15c-3a8e8d17f6e4','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('4891650f-4e14-48f3-bf28-333dc40b7352','Account verification options','Method with which to verity the existing account','org1','basic-flow',0,1),('4a1876c2-0ba6-4b1a-a3a5-5a0e18ae5a99','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',1,1),('4a6e5f02-607b-43a8-b59b-1b0904d16259','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',0,1),('4c46c201-2fd2-4428-ab42-b745cf373df1','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',1,1),('4f44bbbb-e902-4b6c-8ca6-9f0398a18f8b','registration','registration flow','org4','basic-flow',1,1),('502fb0c3-98a5-438c-8aba-11f5acc1b63e','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('5560b610-89f4-48ba-bbd7-8aa4914d6a84','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('5591c08c-752f-4955-8140-2d20b65cfcf3','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',0,1),('5bb79d76-476e-4557-a92b-6b9e745f7aa9','registration form','registration form','org3','form-flow',0,1),('5e6b1132-8821-4f7e-b2ae-733f7ccf6cfd','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('665198d6-ac78-49b1-84d0-438173eca9c6','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('68201b24-4598-4750-a825-43c03696a50b','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',1,1),('686de335-a6f9-46d6-a72d-112cce4b2cdd','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',1,1),('6940ac14-1bc7-404d-bffc-1bec10126912','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',0,1),('6d1ca9c7-c302-4d1a-82c0-474d8b6d3ef0','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',0,1),('70c0714b-cd4e-4dd4-8fee-2a845d64d4e2','forms','Username, password, otp and other auth forms.','org4','basic-flow',0,1),('746c9212-7f1f-471a-898e-2cbd958e5104','clients','Base authentication for clients','org2','client-flow',1,1),('76d187b6-d24e-420e-af1e-1d4b53bb43b2','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',0,1),('776e0ac9-c039-45d8-8c85-058d3294600c','direct grant','OpenID Connect Resource Owner Grant','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('82fdff55-02e1-47bb-83ac-51dabcc0e3ae','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',0,1),('8372dfd3-18d3-4d96-b95f-38f86d0965d5','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',0,1),('874c2e06-6275-4e37-9269-8524df386f35','Verify Existing Account by Re-authentication','Reauthentication of existing account','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('8884ec13-e9fa-48f8-a50d-a14e88a6a17d','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',1,1),('88964ae8-1791-4849-9192-bd13e0f0dfab','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',0,1),('8981fcb1-ef1f-4a23-9635-c508ae518fff','browser','browser based authentication','org4','basic-flow',1,1),('8c45ddbd-fcac-4837-a322-d208902c9988','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',1,1),('8c65830f-52a9-46e0-9344-c8669fa5b86d','registration','registration flow','org2','basic-flow',1,1),('8cac8dae-5903-48f1-9f81-6ad8e544ae22','registration form','registration form','org5','form-flow',0,1),('8f30ffe7-14c2-47c6-b0c6-3780368e1219','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',1,1),('92e7d90f-2e96-4ad4-bb4d-afc235695cde','browser','browser based authentication','org3','basic-flow',1,1),('9547f6e3-5310-4222-85ef-25e7962986fb','browser','browser based authentication','org5','basic-flow',1,1),('96c02e79-e97b-46f4-aadd-80619e0d38e4','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('97f96d08-dc23-4aa0-a913-debd28039491','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',1,1),('9d3d9d53-1c6f-41ee-81cf-04c5d7b0b3fa','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('9edcb37d-f4fa-450b-a4e0-d07c6e3a1b77','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('9f26bd55-c702-4245-a524-2f3d28ff5968','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',0,1),('a135f93d-1f95-4f5c-b10f-fd0c0b8cf42b','Account verification options','Method with which to verity the existing account','org3','basic-flow',0,1),('a3095066-1cad-4b25-bae2-8bd51875bddd','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',0,1),('a35fe5b3-bda2-424c-b85a-9e716b06ba4e','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',0,1),('a3fa7d89-8f17-4daa-bb08-d7dfcf10972c','browser','browser based authentication','org1','basic-flow',1,1),('a46415ae-707b-4eb2-aaac-f2ab4fb3b997','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('a4d8705f-6420-4ffa-8c5e-51e8f4729e10','Account verification options','Method with which to verity the existing account','org5','basic-flow',0,1),('ab4081bf-4495-49de-8597-783a683e6d0f','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',1,1),('aba3ebca-c70b-4357-8904-76df663b9791','browser','browser based authentication','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('ad121011-97ef-42f1-b982-64e35317c134','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('ae38a75a-b7a1-4f92-8841-5eb493978a85','clients','Base authentication for clients','org1','client-flow',1,1),('b0f98d4c-c0bd-4264-b7c8-89e9dadd97c9','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('b1c79d7d-7925-4406-9ea0-5e3875232af3','clients','Base authentication for clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','client-flow',1,1),('b3b59bfc-4efd-446b-83c3-c008064fde42','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',1,1),('b59e739f-e3f4-4bf9-a929-0a860f8fe5d0','Account verification options','Method with which to verity the existing account','org2','basic-flow',0,1),('b688f813-d5a8-4c6c-b2f3-cd0a8f6f7250','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('b7aeeecd-f30c-47d0-b905-0dbedcaf3f7a','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',0,1),('b84e4e00-6809-4c79-87cb-cda4de877281','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',1,1),('bfb90176-62ce-4ea3-8073-075c3cf794cf','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',0,1),('c0947915-582a-4d95-a815-63baa2d48599','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',0,1),('c525c9ea-8516-465e-8a86-3a60ddc1df45','clients','Base authentication for clients','org3','client-flow',1,1),('c5a6fab9-fb37-41ac-9715-00170a007b07','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',1,1),('c5b99c3f-0600-4b5f-88d6-285114c15048','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',1,1),('ca590cb4-00fc-4f94-8643-2de42b34fb74','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',1,1),('cb7ef909-4f53-46b6-987e-f9bc17160408','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',1,1),('cbebd621-7598-41f4-8285-4c8d9f483a50','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',1,1),('cf92eea4-96b3-46f0-9710-0a0d77756dbf','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('d7fec2bb-c915-4a25-b1fe-ae77d3e626c4','registration form','registration form','org4','form-flow',0,1),('d9756387-50d5-4cb5-a21c-b41b3f048d6f','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',1,1),('d9e914dc-1283-42bf-b541-b20d78541191','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',0,1),('dba3fa12-0194-4ba5-aa59-9797dd3aaf7a','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',1,1),('de0a2dd9-8fcf-4a1f-a796-2f60f4ea2fd1','User creation or linking','Flow for the existing/non-existing user alternatives','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('dea5c95a-4944-41ba-a186-fc821214ac16','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',1,1),('df7f750f-9456-4cbc-bfee-bccbf07243ee','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',0,1),('e2d29bbd-f473-4cd2-b085-029809db1c60','forms','Username, password, otp and other auth forms.','org2','basic-flow',0,1),('e3da14c3-93ae-47e7-94e3-15cdf5752b29','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('e55c1f10-daf0-421f-9d66-51d916c3f4ad','registration form','registration form','org1','form-flow',0,1),('e7f5c1f5-291c-4009-9a5f-d5514e5f3169','registration','registration flow','org1','basic-flow',1,1),('e8b20ecc-e5ab-4d1a-ae7e-d5b38b46322c','Account verification options','Method with which to verity the existing account','org4','basic-flow',0,1),('e901a02f-baa1-4dda-9de1-825a53b09e59','forms','Username, password, otp and other auth forms.','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('e9342259-5408-4731-97b5-8cbf93b21d29','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',1,1),('eaf4d00d-66fb-4567-a1cc-c7952d2e424e','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',0,1),('eb18893c-19f3-4ef5-85cd-5bc967edbb2e','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('eb6c91a4-70d5-45ec-bd46-13a2a7b2ff9c','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',0,1),('ec77a7ba-190f-496e-9097-888c92efe7a2','registration','registration flow','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','basic-flow',1,1),('ef81ba69-ba30-4b31-b22d-98afc88a3a4b','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',0,1),('f4eeef0a-dd76-4641-9f14-7eb6090df6c3','registration','registration flow','org3','basic-flow',1,1),('f5007e0f-0c17-4461-a8e3-db021204fa8c','forms','Username, password, otp and other auth forms.','org1','basic-flow',0,1),('f7e45921-6c74-4ada-92c6-90acd0853a69','forms','Username, password, otp and other auth forms.','org5','basic-flow',0,1),('faeaf4c5-e6fe-4461-a19f-226ce9d5f5fb','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',0,1),('ff5ff436-d849-402f-828d-df0e744f2bc8','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1);
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('35453b8d-bcd4-48a3-bee5-c7cdac4eb762','review profile config','org3'),('3b4de157-1623-4efd-b0db-004f5b9182f8','create unique user config','org2'),('3f33a24f-9723-4399-a806-b36cccff9674','review profile config','org4'),('42cfe89e-974f-401f-bac1-9d2f53d8e013','create unique user config','org3'),('57b39354-e43d-417a-8a9a-abd321b17edf','create unique user config','org5'),('71000dca-94e3-4c6b-877f-aa279019a858','review profile config','51b99e2d-45c6-4bd3-8559-f70bc3d3c025'),('729070ff-d4f4-4a48-82a5-af3d37d35969','create unique user config','org1'),('7fa2ed9c-bac1-470b-926d-07f5d9d65aef','review profile config','org5'),('df5870fd-3b2e-48ed-9b47-9460d2df9604','create unique user config','org4'),('dfe775eb-e441-464e-8382-2b972f418a8a','create unique user config','51b99e2d-45c6-4bd3-8559-f70bc3d3c025'),('e726d27a-3d92-4695-b41a-96a50e85bbb6','review profile config','org2'),('f10d1747-4215-40d5-b204-07ed090a99f1','review profile config','org1');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('35453b8d-bcd4-48a3-bee5-c7cdac4eb762','missing','update.profile.on.first.login'),('3b4de157-1623-4efd-b0db-004f5b9182f8','false','require.password.update.after.registration'),('3f33a24f-9723-4399-a806-b36cccff9674','missing','update.profile.on.first.login'),('42cfe89e-974f-401f-bac1-9d2f53d8e013','false','require.password.update.after.registration'),('57b39354-e43d-417a-8a9a-abd321b17edf','false','require.password.update.after.registration'),('71000dca-94e3-4c6b-877f-aa279019a858','missing','update.profile.on.first.login'),('729070ff-d4f4-4a48-82a5-af3d37d35969','false','require.password.update.after.registration'),('7fa2ed9c-bac1-470b-926d-07f5d9d65aef','missing','update.profile.on.first.login'),('df5870fd-3b2e-48ed-9b47-9460d2df9604','false','require.password.update.after.registration'),('dfe775eb-e441-464e-8382-2b972f418a8a','false','require.password.update.after.registration'),('e726d27a-3d92-4695-b41a-96a50e85bbb6','missing','update.profile.on.first.login'),('f10d1747-4215-40d5-b204-07ed090a99f1','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('070f24c2-4920-450b-84b1-10016e3708f0',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('0e91c93d-0260-4530-a9ac-af848287b1e1',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('107e7f8e-6320-41f2-8851-cf3238fb4254',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('1470d436-c958-4f9a-87c8-47dfec1ef965',1,1,'system-org2-auth',0,0,'LZ8cRCqovakTziQD6MvdM6jEWf7IO6LK',NULL,1,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('17b08b06-2f19-41f4-8963-f4832485b124',1,0,'org1-realm',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,0,0,0,'org1 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('1b02217f-d5bb-4032-b67c-57e32ee5b071',1,1,'org1-workspaces',0,0,'aJX1ccuLBF6MPf1LG5M0FsYujwWnccWf',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('1ba73ec3-f950-46b5-b578-18c214dec948',1,0,'account-console',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('1d972755-a6c7-41e5-801d-68e02061a4d0',1,0,'account-console',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('29e4432e-6534-4b3d-8371-0993b180a64a',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2d1a1dc8-4340-451c-9cf3-188ac053b024',1,0,'security-admin-console',0,1,NULL,'/admin/org2/console/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('2d3b4076-0185-48fb-b7b0-8fca369a9638',1,1,'system-org3-auth',0,0,'8snJGw1mokg3L4i95V7RxtnBDnTGitTw',NULL,1,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('2e0570af-3629-4e4a-94bd-2c1feceb332a',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0',1,1,'_org4-api',0,1,'10l7dG5j2VNKqk4hrUbRSmOJ6D3MtHU1',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,0,'account',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('2f79aa02-3015-47ff-b794-859729eb9a47',1,0,'security-admin-console',0,1,NULL,'/admin/org4/console/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('3303237e-7510-4499-a187-e1b5854d17e7',1,1,'_platform',0,0,'oVDqb1ZTpbAsTLewjPHWjchhy0VtzAYz',NULL,0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('362c7047-df41-41a6-ba79-d79adbb0e31e',1,0,'account-console',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('36a323e4-40bf-43e2-bb8d-c541fafd50d6',1,1,'system-org1-auth',0,0,'ZROqxzsSjGP50w8QcxfiHyRzsrRDOVQe',NULL,1,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('38b045ce-2293-4f53-bb82-e8676d9264d0',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('3be016d4-911e-4469-9231-6ac1341460fb',1,1,'org1',0,1,'YIwJsVHzgVyAjARDVR1cRCddtvOaEfaS',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('3f3a6c82-649a-4911-a86e-8f4424e65ff1',1,1,'_org1-api',0,1,'k36JwHht0WvdqNcFcgU2BmHBsliDOaug',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,0,'org5-realm',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,0,0,0,'org5 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('55526e5d-f414-42cc-bf17-528b51147b24',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('55d78e00-10fd-445a-9762-651263fc57d9',1,1,'system-org5-auth',0,0,'3UFTrbidCi5qEWWrle3dmAP1sO8EQ8EV',NULL,1,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('562de244-70bc-48d7-a18f-c318a4d49d63',1,0,'account',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('56d7816e-3aae-48ce-a861-6d3d0ea208ce',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('58d33d58-f134-493b-a787-9ed6c93859a9',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f',1,1,'_org5-api',0,1,'8GJliIHXGzXD2cgj2JN2KzJrcjpjvUbl',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('5b9974e3-958a-4141-a968-20b76fb0f11b',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('5f218d2e-9217-4bcc-88f6-cc8b9d227361',1,0,'account-console',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('61c2e50c-94e8-4819-9958-3f25713f9d07',1,0,'account',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,0,'org2-realm',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,0,0,0,'org2 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('703cfefd-fdb1-4022-8876-625cd45e0016',1,0,'org3-realm',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,0,0,0,'org3 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('728645f5-c020-49b8-b411-dcde55a7ade7',1,1,'org3',0,1,'ynwF4fF0Tn1Y3lAUYN8llnhXsWAaPLEi',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('7946239a-71e4-45b6-a356-d6f0218ca9cf',1,0,'security-admin-console',0,1,NULL,'/admin/org1/console/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('798b8335-bb1d-4dd7-a08d-af73bdc5657a',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('87151c85-c4be-4bd9-ad28-582c4300419a',1,1,'org4',0,1,'LiKS3S8dptVqnirIvmit9QAAQsOQRUQQ',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('8849ca9a-419a-4bb2-b5d6-5672c7925665',1,1,'system-org4-auth',0,0,'0gsThyASHCw2aWdFa55b8iXHRMaReoqY',NULL,1,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('8dcbe59c-2305-4e8b-a509-d4506fb44048',1,1,'org5-workspaces',0,0,'Csb2NTxVbqGURW37UHlDgzFXyt99rnV4',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('9f92d871-32f3-44e7-9bc8-347c45d5051d',1,0,'_platform-console',0,1,'9BT9FYHsvU5GepeGY6UlrhBftyK8N5vC',NULL,0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('a4d2faaf-9b22-4102-bd6a-21c23003d05a',1,1,'_org2-api',0,1,'ElfUklmIbqgubczMiPSl2vhp508UPIsp',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,1,'org3-workspaces',0,0,'pzzmTM3HH0gCj32G4HwiJM6zVcaNe3OG',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1',1,0,'account-console',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('ac33af4f-2879-49b5-90a5-cee8005768f3',1,1,'_org3-api',0,1,'7AVdMyEBtUzHw8rXkFVteHB752NI511m',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('b1947fe6-f799-4b32-a230-cf2a036325a5',1,1,'org2-workspaces',0,0,'3JkFXrF1oxlAYMNauiDnB73C1UlH0WZV',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('b317e865-5673-4b43-a925-83cd9439b98e',1,0,'security-admin-console',0,1,NULL,'/admin/org5/console/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('b321f2bd-a50d-40ec-a16f-08965bbc8a85',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('b493156e-cef6-4608-b87a-c1488089b61d',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,0,'org4-realm',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,0,0,0,'org4 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,0,'account',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('ca7f2967-42dc-4494-8afc-7583883c302c',1,0,'security-admin-console',0,1,NULL,'/admin/org3/console/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('cb7b6a97-1257-4373-926d-0289e24593e9',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('cdafba6c-0be4-4099-b7c1-5c353281b317',1,1,'org2',0,1,'aUpmchv4vBAnq8AenNM0cOTS4JbY6oJG',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('d83d4038-0b52-4b6c-beae-09a02c525e5d',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,1,'org5',0,1,'rGLDTBymxoEXjp9ZbQiYsR5WFVAIw1tw',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('e1eb8871-baac-4485-be48-95a8db2c9fdc',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org3','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('e9cf3880-4d58-4993-b42d-5276cab1004d',1,0,'account',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('f7be3607-bb55-4257-bdb8-25b9fbcda051',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org1','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('fadb6747-16d0-4959-b7f6-7384792f8b3d',1,1,'org4-workspaces',0,0,'hpQWexYlgiAjBL17U8mEftQYiGbDvnmr',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0);
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('070f24c2-4920-450b-84b1-10016e3708f0','post.logout.redirect.uris','+'),('1470d436-c958-4f9a-87c8-47dfec1ef965','backchannel.logout.revoke.offline.tokens','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','backchannel.logout.session.required','true'),('1470d436-c958-4f9a-87c8-47dfec1ef965','client.secret.creation.time','1718161025'),('1470d436-c958-4f9a-87c8-47dfec1ef965','client_credentials.use_refresh_token','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','display.on.consent.screen','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','exclude.session.state.from.auth.response','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','id.token.as.detached.signature','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','oauth2.device.authorization.grant.enabled','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','oidc.ciba.grant.enabled','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','require.pushed.authorization.requests','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.artifact.binding','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.assertion.signature','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.authnstatement','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.client.signature','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.encrypt','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.force.post.binding','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.multivalued.roles','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.onetimeuse.condition','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.server.signature','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml.server.signature.keyinfo.ext','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','saml_force_name_id_format','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','tls.client.certificate.bound.access.tokens','false'),('1470d436-c958-4f9a-87c8-47dfec1ef965','use.refresh.tokens','true'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','backchannel.logout.revoke.offline.tokens','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','backchannel.logout.session.required','true'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','client.secret.creation.time','1718160992'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','client_credentials.use_refresh_token','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','display.on.consent.screen','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','exclude.session.state.from.auth.response','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','id.token.as.detached.signature','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','oauth2.device.authorization.grant.enabled','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','oidc.ciba.grant.enabled','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','require.pushed.authorization.requests','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.artifact.binding','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.assertion.signature','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.authnstatement','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.client.signature','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.encrypt','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.force.post.binding','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.multivalued.roles','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.onetimeuse.condition','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.server.signature','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml.server.signature.keyinfo.ext','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','saml_force_name_id_format','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','tls.client.certificate.bound.access.tokens','false'),('1b02217f-d5bb-4032-b67c-57e32ee5b071','use.refresh.tokens','true'),('1ba73ec3-f950-46b5-b578-18c214dec948','pkce.code.challenge.method','S256'),('1ba73ec3-f950-46b5-b578-18c214dec948','post.logout.redirect.uris','+'),('1d972755-a6c7-41e5-801d-68e02061a4d0','pkce.code.challenge.method','S256'),('1d972755-a6c7-41e5-801d-68e02061a4d0','post.logout.redirect.uris','+'),('2d1a1dc8-4340-451c-9cf3-188ac053b024','pkce.code.challenge.method','S256'),('2d1a1dc8-4340-451c-9cf3-188ac053b024','post.logout.redirect.uris','+'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','backchannel.logout.revoke.offline.tokens','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','backchannel.logout.session.required','true'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','client.secret.creation.time','1718161055'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','client_credentials.use_refresh_token','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','display.on.consent.screen','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','exclude.session.state.from.auth.response','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','id.token.as.detached.signature','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','oauth2.device.authorization.grant.enabled','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','oidc.ciba.grant.enabled','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','require.pushed.authorization.requests','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.artifact.binding','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.assertion.signature','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.authnstatement','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.client.signature','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.encrypt','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.force.post.binding','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.multivalued.roles','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.onetimeuse.condition','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.server.signature','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml.server.signature.keyinfo.ext','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','saml_force_name_id_format','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','tls.client.certificate.bound.access.tokens','false'),('2d3b4076-0185-48fb-b7b0-8fca369a9638','use.refresh.tokens','true'),('2e0570af-3629-4e4a-94bd-2c1feceb332a','pkce.code.challenge.method','S256'),('2e0570af-3629-4e4a-94bd-2c1feceb332a','post.logout.redirect.uris','+'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','access.token.lifespan','86400'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','acr.loa.map','{}'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','backchannel.logout.revoke.offline.tokens','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','backchannel.logout.session.required','true'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','client.secret.creation.time','1718161090'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','client.session.idle.timeout','86400'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','client.session.max.lifespan','86400'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','client_credentials.use_refresh_token','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','display.on.consent.screen','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','exclude.session.state.from.auth.response','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','frontchannel.logout.session.required','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','id.token.as.detached.signature','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','oauth2.device.authorization.grant.enabled','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','oidc.ciba.grant.enabled','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','require.pushed.authorization.requests','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.allow.ecp.flow','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.artifact.binding','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.assertion.signature','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.authnstatement','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.client.signature','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.encrypt','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.force.post.binding','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.multivalued.roles','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.onetimeuse.condition','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.server.signature','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml.server.signature.keyinfo.ext','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','saml_force_name_id_format','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','tls.client.certificate.bound.access.tokens','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','token.response.type.bearer.lower-case','false'),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','use.refresh.tokens','true'),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','post.logout.redirect.uris','+'),('2f79aa02-3015-47ff-b794-859729eb9a47','pkce.code.challenge.method','S256'),('2f79aa02-3015-47ff-b794-859729eb9a47','post.logout.redirect.uris','+'),('3303237e-7510-4499-a187-e1b5854d17e7','backchannel.logout.revoke.offline.tokens','false'),('3303237e-7510-4499-a187-e1b5854d17e7','backchannel.logout.session.required','true'),('3303237e-7510-4499-a187-e1b5854d17e7','client.secret.creation.time','1718160903'),('3303237e-7510-4499-a187-e1b5854d17e7','client_credentials.use_refresh_token','false'),('3303237e-7510-4499-a187-e1b5854d17e7','display.on.consent.screen','false'),('3303237e-7510-4499-a187-e1b5854d17e7','exclude.session.state.from.auth.response','false'),('3303237e-7510-4499-a187-e1b5854d17e7','id.token.as.detached.signature','false'),('3303237e-7510-4499-a187-e1b5854d17e7','oauth2.device.authorization.grant.enabled','false'),('3303237e-7510-4499-a187-e1b5854d17e7','oidc.ciba.grant.enabled','false'),('3303237e-7510-4499-a187-e1b5854d17e7','require.pushed.authorization.requests','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.artifact.binding','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.assertion.signature','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.authnstatement','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.client.signature','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.encrypt','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.force.post.binding','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.multivalued.roles','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.onetimeuse.condition','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.server.signature','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml.server.signature.keyinfo.ext','false'),('3303237e-7510-4499-a187-e1b5854d17e7','saml_force_name_id_format','false'),('3303237e-7510-4499-a187-e1b5854d17e7','tls.client.certificate.bound.access.tokens','false'),('3303237e-7510-4499-a187-e1b5854d17e7','use.refresh.tokens','true'),('362c7047-df41-41a6-ba79-d79adbb0e31e','pkce.code.challenge.method','S256'),('362c7047-df41-41a6-ba79-d79adbb0e31e','post.logout.redirect.uris','+'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','backchannel.logout.revoke.offline.tokens','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','backchannel.logout.session.required','true'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','client.secret.creation.time','1718160993'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','client_credentials.use_refresh_token','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','display.on.consent.screen','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','exclude.session.state.from.auth.response','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','id.token.as.detached.signature','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','oauth2.device.authorization.grant.enabled','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','oidc.ciba.grant.enabled','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','require.pushed.authorization.requests','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.artifact.binding','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.assertion.signature','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.authnstatement','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.client.signature','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.encrypt','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.force.post.binding','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.multivalued.roles','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.onetimeuse.condition','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.server.signature','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml.server.signature.keyinfo.ext','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','saml_force_name_id_format','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','tls.client.certificate.bound.access.tokens','false'),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','use.refresh.tokens','true'),('3be016d4-911e-4469-9231-6ac1341460fb','backchannel.logout.revoke.offline.tokens','false'),('3be016d4-911e-4469-9231-6ac1341460fb','backchannel.logout.session.required','true'),('3be016d4-911e-4469-9231-6ac1341460fb','client.secret.creation.time','1718160993'),('3be016d4-911e-4469-9231-6ac1341460fb','client_credentials.use_refresh_token','false'),('3be016d4-911e-4469-9231-6ac1341460fb','display.on.consent.screen','false'),('3be016d4-911e-4469-9231-6ac1341460fb','exclude.session.state.from.auth.response','false'),('3be016d4-911e-4469-9231-6ac1341460fb','id.token.as.detached.signature','false'),('3be016d4-911e-4469-9231-6ac1341460fb','oauth2.device.authorization.grant.enabled','false'),('3be016d4-911e-4469-9231-6ac1341460fb','oidc.ciba.grant.enabled','false'),('3be016d4-911e-4469-9231-6ac1341460fb','post.logout.redirect.uris','/*'),('3be016d4-911e-4469-9231-6ac1341460fb','require.pushed.authorization.requests','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.artifact.binding','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.assertion.signature','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.authnstatement','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.client.signature','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.encrypt','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.force.post.binding','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.multivalued.roles','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.onetimeuse.condition','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.server.signature','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml.server.signature.keyinfo.ext','false'),('3be016d4-911e-4469-9231-6ac1341460fb','saml_force_name_id_format','false'),('3be016d4-911e-4469-9231-6ac1341460fb','tls.client.certificate.bound.access.tokens','false'),('3be016d4-911e-4469-9231-6ac1341460fb','use.refresh.tokens','true'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','access.token.lifespan','86400'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','acr.loa.map','{}'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','backchannel.logout.revoke.offline.tokens','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','backchannel.logout.session.required','true'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','client.secret.creation.time','1718160993'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','client.session.idle.timeout','86400'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','client.session.max.lifespan','86400'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','client_credentials.use_refresh_token','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','display.on.consent.screen','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','exclude.session.state.from.auth.response','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','frontchannel.logout.session.required','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','id.token.as.detached.signature','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','oauth2.device.authorization.grant.enabled','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','oidc.ciba.grant.enabled','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','require.pushed.authorization.requests','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.allow.ecp.flow','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.artifact.binding','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.assertion.signature','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.authnstatement','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.client.signature','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.encrypt','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.force.post.binding','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.multivalued.roles','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.onetimeuse.condition','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.server.signature','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml.server.signature.keyinfo.ext','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','saml_force_name_id_format','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','tls.client.certificate.bound.access.tokens','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','token.response.type.bearer.lower-case','false'),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','use.refresh.tokens','true'),('55d78e00-10fd-445a-9762-651263fc57d9','backchannel.logout.revoke.offline.tokens','false'),('55d78e00-10fd-445a-9762-651263fc57d9','backchannel.logout.session.required','true'),('55d78e00-10fd-445a-9762-651263fc57d9','client.secret.creation.time','1718161128'),('55d78e00-10fd-445a-9762-651263fc57d9','client_credentials.use_refresh_token','false'),('55d78e00-10fd-445a-9762-651263fc57d9','display.on.consent.screen','false'),('55d78e00-10fd-445a-9762-651263fc57d9','exclude.session.state.from.auth.response','false'),('55d78e00-10fd-445a-9762-651263fc57d9','id.token.as.detached.signature','false'),('55d78e00-10fd-445a-9762-651263fc57d9','oauth2.device.authorization.grant.enabled','false'),('55d78e00-10fd-445a-9762-651263fc57d9','oidc.ciba.grant.enabled','false'),('55d78e00-10fd-445a-9762-651263fc57d9','require.pushed.authorization.requests','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.artifact.binding','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.assertion.signature','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.authnstatement','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.client.signature','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.encrypt','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.force.post.binding','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.multivalued.roles','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.onetimeuse.condition','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.server.signature','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml.server.signature.keyinfo.ext','false'),('55d78e00-10fd-445a-9762-651263fc57d9','saml_force_name_id_format','false'),('55d78e00-10fd-445a-9762-651263fc57d9','tls.client.certificate.bound.access.tokens','false'),('55d78e00-10fd-445a-9762-651263fc57d9','use.refresh.tokens','true'),('562de244-70bc-48d7-a18f-c318a4d49d63','post.logout.redirect.uris','+'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','access.token.lifespan','86400'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','acr.loa.map','{}'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','backchannel.logout.revoke.offline.tokens','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','backchannel.logout.session.required','true'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','client.secret.creation.time','1718161128'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','client.session.idle.timeout','86400'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','client.session.max.lifespan','86400'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','client_credentials.use_refresh_token','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','display.on.consent.screen','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','exclude.session.state.from.auth.response','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','frontchannel.logout.session.required','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','id.token.as.detached.signature','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','oauth2.device.authorization.grant.enabled','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','oidc.ciba.grant.enabled','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','require.pushed.authorization.requests','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.allow.ecp.flow','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.artifact.binding','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.assertion.signature','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.authnstatement','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.client.signature','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.encrypt','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.force.post.binding','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.multivalued.roles','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.onetimeuse.condition','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.server.signature','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml.server.signature.keyinfo.ext','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','saml_force_name_id_format','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','tls.client.certificate.bound.access.tokens','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','token.response.type.bearer.lower-case','false'),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','use.refresh.tokens','true'),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','pkce.code.challenge.method','S256'),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','post.logout.redirect.uris','+'),('61c2e50c-94e8-4819-9958-3f25713f9d07','post.logout.redirect.uris','+'),('728645f5-c020-49b8-b411-dcde55a7ade7','backchannel.logout.revoke.offline.tokens','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','backchannel.logout.session.required','true'),('728645f5-c020-49b8-b411-dcde55a7ade7','client.secret.creation.time','1718161056'),('728645f5-c020-49b8-b411-dcde55a7ade7','client_credentials.use_refresh_token','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','display.on.consent.screen','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','exclude.session.state.from.auth.response','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','id.token.as.detached.signature','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','oauth2.device.authorization.grant.enabled','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','oidc.ciba.grant.enabled','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','post.logout.redirect.uris','/*'),('728645f5-c020-49b8-b411-dcde55a7ade7','require.pushed.authorization.requests','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.artifact.binding','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.assertion.signature','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.authnstatement','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.client.signature','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.encrypt','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.force.post.binding','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.multivalued.roles','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.onetimeuse.condition','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.server.signature','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml.server.signature.keyinfo.ext','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','saml_force_name_id_format','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','tls.client.certificate.bound.access.tokens','false'),('728645f5-c020-49b8-b411-dcde55a7ade7','use.refresh.tokens','true'),('7946239a-71e4-45b6-a356-d6f0218ca9cf','pkce.code.challenge.method','S256'),('7946239a-71e4-45b6-a356-d6f0218ca9cf','post.logout.redirect.uris','+'),('87151c85-c4be-4bd9-ad28-582c4300419a','backchannel.logout.revoke.offline.tokens','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','backchannel.logout.session.required','true'),('87151c85-c4be-4bd9-ad28-582c4300419a','client.secret.creation.time','1718161090'),('87151c85-c4be-4bd9-ad28-582c4300419a','client_credentials.use_refresh_token','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','display.on.consent.screen','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','exclude.session.state.from.auth.response','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','id.token.as.detached.signature','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','oauth2.device.authorization.grant.enabled','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','oidc.ciba.grant.enabled','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','post.logout.redirect.uris','/*'),('87151c85-c4be-4bd9-ad28-582c4300419a','require.pushed.authorization.requests','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.artifact.binding','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.assertion.signature','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.authnstatement','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.client.signature','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.encrypt','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.force.post.binding','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.multivalued.roles','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.onetimeuse.condition','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.server.signature','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml.server.signature.keyinfo.ext','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','saml_force_name_id_format','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','tls.client.certificate.bound.access.tokens','false'),('87151c85-c4be-4bd9-ad28-582c4300419a','use.refresh.tokens','true'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','backchannel.logout.revoke.offline.tokens','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','backchannel.logout.session.required','true'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','client.secret.creation.time','1718161090'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','client_credentials.use_refresh_token','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','display.on.consent.screen','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','exclude.session.state.from.auth.response','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','id.token.as.detached.signature','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','oauth2.device.authorization.grant.enabled','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','oidc.ciba.grant.enabled','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','require.pushed.authorization.requests','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.artifact.binding','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.assertion.signature','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.authnstatement','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.client.signature','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.encrypt','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.force.post.binding','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.multivalued.roles','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.onetimeuse.condition','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.server.signature','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml.server.signature.keyinfo.ext','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','saml_force_name_id_format','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','tls.client.certificate.bound.access.tokens','false'),('8849ca9a-419a-4bb2-b5d6-5672c7925665','use.refresh.tokens','true'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','backchannel.logout.revoke.offline.tokens','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','backchannel.logout.session.required','true'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','client.secret.creation.time','1718161128'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','client_credentials.use_refresh_token','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','display.on.consent.screen','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','exclude.session.state.from.auth.response','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','id.token.as.detached.signature','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','oauth2.device.authorization.grant.enabled','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','oidc.ciba.grant.enabled','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','require.pushed.authorization.requests','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.artifact.binding','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.assertion.signature','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.authnstatement','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.client.signature','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.encrypt','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.force.post.binding','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.multivalued.roles','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.onetimeuse.condition','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.server.signature','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml.server.signature.keyinfo.ext','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','saml_force_name_id_format','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','tls.client.certificate.bound.access.tokens','false'),('8dcbe59c-2305-4e8b-a509-d4506fb44048','use.refresh.tokens','true'),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','pkce.code.challenge.method','S256'),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','post.logout.redirect.uris','+'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','backchannel.logout.revoke.offline.tokens','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','backchannel.logout.session.required','true'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','client.secret.creation.time','1718160906'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','client_credentials.use_refresh_token','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','display.on.consent.screen','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','exclude.session.state.from.auth.response','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','id.token.as.detached.signature','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','oauth2.device.authorization.grant.enabled','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','oidc.ciba.grant.enabled','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','post.logout.redirect.uris','/*'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','require.pushed.authorization.requests','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.artifact.binding','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.assertion.signature','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.authnstatement','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.client.signature','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.encrypt','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.force.post.binding','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.multivalued.roles','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.onetimeuse.condition','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.server.signature','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml.server.signature.keyinfo.ext','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','saml_force_name_id_format','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','tls.client.certificate.bound.access.tokens','false'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','use.refresh.tokens','true'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','access.token.lifespan','86400'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','acr.loa.map','{}'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','backchannel.logout.revoke.offline.tokens','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','backchannel.logout.session.required','true'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','client.secret.creation.time','1718161026'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','client.session.idle.timeout','86400'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','client.session.max.lifespan','86400'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','client_credentials.use_refresh_token','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','display.on.consent.screen','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','exclude.session.state.from.auth.response','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','frontchannel.logout.session.required','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','id.token.as.detached.signature','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','oauth2.device.authorization.grant.enabled','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','oidc.ciba.grant.enabled','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','require.pushed.authorization.requests','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.allow.ecp.flow','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.artifact.binding','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.assertion.signature','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.authnstatement','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.client.signature','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.encrypt','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.force.post.binding','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.multivalued.roles','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.onetimeuse.condition','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.server.signature','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml.server.signature.keyinfo.ext','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','saml_force_name_id_format','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','tls.client.certificate.bound.access.tokens','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','token.response.type.bearer.lower-case','false'),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','use.refresh.tokens','true'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','backchannel.logout.revoke.offline.tokens','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','backchannel.logout.session.required','true'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','client.secret.creation.time','1718161055'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','client_credentials.use_refresh_token','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','display.on.consent.screen','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','exclude.session.state.from.auth.response','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','id.token.as.detached.signature','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','oauth2.device.authorization.grant.enabled','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','oidc.ciba.grant.enabled','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','require.pushed.authorization.requests','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.artifact.binding','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.assertion.signature','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.authnstatement','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.client.signature','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.encrypt','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.force.post.binding','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.multivalued.roles','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.onetimeuse.condition','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.server.signature','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml.server.signature.keyinfo.ext','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','saml_force_name_id_format','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','tls.client.certificate.bound.access.tokens','false'),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','use.refresh.tokens','true'),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','pkce.code.challenge.method','S256'),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','post.logout.redirect.uris','+'),('ac33af4f-2879-49b5-90a5-cee8005768f3','access.token.lifespan','86400'),('ac33af4f-2879-49b5-90a5-cee8005768f3','acr.loa.map','{}'),('ac33af4f-2879-49b5-90a5-cee8005768f3','backchannel.logout.revoke.offline.tokens','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','backchannel.logout.session.required','true'),('ac33af4f-2879-49b5-90a5-cee8005768f3','client.secret.creation.time','1718161056'),('ac33af4f-2879-49b5-90a5-cee8005768f3','client.session.idle.timeout','86400'),('ac33af4f-2879-49b5-90a5-cee8005768f3','client.session.max.lifespan','86400'),('ac33af4f-2879-49b5-90a5-cee8005768f3','client_credentials.use_refresh_token','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','display.on.consent.screen','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','exclude.session.state.from.auth.response','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','frontchannel.logout.session.required','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','id.token.as.detached.signature','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','oauth2.device.authorization.grant.enabled','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','oidc.ciba.grant.enabled','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','require.pushed.authorization.requests','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.allow.ecp.flow','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.artifact.binding','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.assertion.signature','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.authnstatement','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.client.signature','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.encrypt','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.force.post.binding','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.multivalued.roles','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.onetimeuse.condition','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.server.signature','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml.server.signature.keyinfo.ext','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','saml_force_name_id_format','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','tls.client.certificate.bound.access.tokens','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','token.response.type.bearer.lower-case','false'),('ac33af4f-2879-49b5-90a5-cee8005768f3','use.refresh.tokens','true'),('b1947fe6-f799-4b32-a230-cf2a036325a5','backchannel.logout.revoke.offline.tokens','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','backchannel.logout.session.required','true'),('b1947fe6-f799-4b32-a230-cf2a036325a5','client.secret.creation.time','1718161025'),('b1947fe6-f799-4b32-a230-cf2a036325a5','client_credentials.use_refresh_token','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','display.on.consent.screen','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','exclude.session.state.from.auth.response','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','id.token.as.detached.signature','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','oauth2.device.authorization.grant.enabled','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','oidc.ciba.grant.enabled','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','require.pushed.authorization.requests','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.artifact.binding','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.assertion.signature','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.authnstatement','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.client.signature','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.encrypt','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.force.post.binding','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.multivalued.roles','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.onetimeuse.condition','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.server.signature','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml.server.signature.keyinfo.ext','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','saml_force_name_id_format','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','tls.client.certificate.bound.access.tokens','false'),('b1947fe6-f799-4b32-a230-cf2a036325a5','use.refresh.tokens','true'),('b317e865-5673-4b43-a925-83cd9439b98e','pkce.code.challenge.method','S256'),('b317e865-5673-4b43-a925-83cd9439b98e','post.logout.redirect.uris','+'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','access.token.lifespan','86400'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','acr.loa.map','{}'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','backchannel.logout.revoke.offline.tokens','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','backchannel.logout.session.required','true'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','client.session.idle.timeout','86400'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','client.session.max.lifespan','86400'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','client_credentials.use_refresh_token','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','display.on.consent.screen','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','exclude.session.state.from.auth.response','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','frontchannel.logout.session.required','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','id.token.as.detached.signature','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','oauth2.device.authorization.grant.enabled','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','oidc.ciba.grant.enabled','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','require.pushed.authorization.requests','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.allow.ecp.flow','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.artifact.binding','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.assertion.signature','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.authnstatement','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.client.signature','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.encrypt','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.force.post.binding','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.multivalued.roles','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.onetimeuse.condition','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.server.signature','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml.server.signature.keyinfo.ext','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','saml_force_name_id_format','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','tls.client.certificate.bound.access.tokens','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','token.response.type.bearer.lower-case','false'),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','use.refresh.tokens','true'),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','post.logout.redirect.uris','+'),('ca7f2967-42dc-4494-8afc-7583883c302c','pkce.code.challenge.method','S256'),('ca7f2967-42dc-4494-8afc-7583883c302c','post.logout.redirect.uris','+'),('cdafba6c-0be4-4099-b7c1-5c353281b317','backchannel.logout.revoke.offline.tokens','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','backchannel.logout.session.required','true'),('cdafba6c-0be4-4099-b7c1-5c353281b317','client.secret.creation.time','1718161025'),('cdafba6c-0be4-4099-b7c1-5c353281b317','client_credentials.use_refresh_token','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','display.on.consent.screen','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','exclude.session.state.from.auth.response','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','id.token.as.detached.signature','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','oauth2.device.authorization.grant.enabled','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','oidc.ciba.grant.enabled','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','post.logout.redirect.uris','/*'),('cdafba6c-0be4-4099-b7c1-5c353281b317','require.pushed.authorization.requests','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.artifact.binding','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.assertion.signature','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.authnstatement','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.client.signature','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.encrypt','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.force.post.binding','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.multivalued.roles','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.onetimeuse.condition','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.server.signature','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml.server.signature.keyinfo.ext','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','saml_force_name_id_format','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','tls.client.certificate.bound.access.tokens','false'),('cdafba6c-0be4-4099-b7c1-5c353281b317','use.refresh.tokens','true'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','backchannel.logout.revoke.offline.tokens','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','backchannel.logout.session.required','true'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','client.secret.creation.time','1718161128'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','client_credentials.use_refresh_token','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','display.on.consent.screen','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','exclude.session.state.from.auth.response','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','id.token.as.detached.signature','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','oauth2.device.authorization.grant.enabled','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','oidc.ciba.grant.enabled','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','post.logout.redirect.uris','/*'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','require.pushed.authorization.requests','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.artifact.binding','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.assertion.signature','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.authnstatement','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.client.signature','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.encrypt','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.force.post.binding','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.multivalued.roles','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.onetimeuse.condition','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.server.signature','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml.server.signature.keyinfo.ext','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','saml_force_name_id_format','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','tls.client.certificate.bound.access.tokens','false'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','use.refresh.tokens','true'),('e9cf3880-4d58-4993-b42d-5276cab1004d','post.logout.redirect.uris','+'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','backchannel.logout.revoke.offline.tokens','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','backchannel.logout.session.required','true'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','client.secret.creation.time','1718161089'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','client_credentials.use_refresh_token','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','display.on.consent.screen','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','exclude.session.state.from.auth.response','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','id.token.as.detached.signature','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','oauth2.device.authorization.grant.enabled','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','oidc.ciba.grant.enabled','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','require.pushed.authorization.requests','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.artifact.binding','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.assertion.signature','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.authnstatement','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.client.signature','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.encrypt','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.force.post.binding','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.multivalued.roles','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.onetimeuse.condition','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.server.signature','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml.server.signature.keyinfo.ext','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','saml_force_name_id_format','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','tls.client.certificate.bound.access.tokens','false'),('fadb6747-16d0-4959-b7f6-7384792f8b3d','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('01db02ba-5b84-489c-b04d-3bf376a4be68','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('0350a4ec-d983-4b36-8cf6-02857c0550ff','email','org3','OpenID Connect built-in scope: email','openid-connect'),('06de2bc6-76a3-4782-bcc4-551d53a88145','profile','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect built-in scope: profile','openid-connect'),('0a073fd1-3eb5-4252-989c-b1da55183fca','role_list','org1','SAML role list','saml'),('10090f9c-672a-4939-9b20-d6a1365b8397','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('18a441af-f824-4118-acd9-1b9b3f223007','role_list','org2','SAML role list','saml'),('196d85d4-d0fd-41bd-aa17-ba4d38919b7e','email','org1','OpenID Connect built-in scope: email','openid-connect'),('1b4c8312-f910-47a6-97a7-0bfdec3fc705','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('247382aa-55ff-420f-91fd-88f2b202a3f7','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('2cbc2004-3382-4bb9-85af-8d909faed357','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('396c1462-3f29-4681-9bdf-205016137165','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('3c247d4f-4b65-4b8e-b243-f26b8124068a','address','org1','OpenID Connect built-in scope: address','openid-connect'),('40a410b5-5633-424e-9edd-5e2fed510fbf','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('415cfb4d-0872-45ff-8f3d-d3402bf0a04b','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('44618b55-4426-4599-a2df-d102289edaec','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('4503942f-471a-4096-819b-7f7550255f99','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('4c8b153d-47bb-4118-a727-5adae8d379ca','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('573ef186-9519-4cbf-9413-638d559d5725','role_list','org3','SAML role list','saml'),('5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f','address','org4','OpenID Connect built-in scope: address','openid-connect'),('5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3','email','org5','OpenID Connect built-in scope: email','openid-connect'),('6ced35b6-82e3-408f-8d39-674e5046826a','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8','phone','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect built-in scope: phone','openid-connect'),('73fc20e5-903b-4e1d-bb86-bee82aac4f5e','email','org4','OpenID Connect built-in scope: email','openid-connect'),('780a63f7-cd01-4042-ace6-756c2c0246a9','web-origins','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('79be3c58-66c3-493f-9b41-63f5932cd256','address','org3','OpenID Connect built-in scope: address','openid-connect'),('7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('829802f6-91a4-478a-a69f-4870ec990a54','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('8a1cc568-0e97-41fb-90c9-030d8794525a','offline_access','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect built-in scope: offline_access','openid-connect'),('92b6435d-27be-4e06-ad33-fdbbab5effc5','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('95d34a9a-a738-49d4-8c95-83e1f35f22de','microprofile-jwt','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','Microprofile - JWT built-in scope','openid-connect'),('95f28550-8a42-4e4c-8b75-57735c259262','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('970da01e-80f0-456a-9b41-db34158cd2d1','email','org2','OpenID Connect built-in scope: email','openid-connect'),('99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('a16bd48a-a471-4aee-889b-5c112987f65e','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('a3be8d7b-f503-456e-bf20-3d59422fdd42','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('acd67b0a-2353-4b21-9e14-a4924c6e56f3','role_list','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','SAML role list','saml'),('b7792496-e95d-400f-96f1-99265ce5ccfa','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('bcaf9f9b-face-4a40-a92a-826c09ad563b','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('bf41c45b-3e1c-4abc-83b8-6802520fc276','address','org5','OpenID Connect built-in scope: address','openid-connect'),('cb34d771-0f8c-4df1-99a7-fe6fceb85925','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('cc2303dc-4165-4fc3-b24c-8dc0d7f25f41','address','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect built-in scope: address','openid-connect'),('d35f12c2-91c4-4d09-a06a-d89203f2efd6','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('d3d139ce-39d4-481d-af01-53c4dffde4b0','role_list','org5','SAML role list','saml'),('d3f0a90b-7000-47a6-82e3-7efdcbf501d3','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('d5e9ff94-535e-42db-bcda-b3f54e6b338d','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d71fb6b5-e22a-4501-b57c-5ac1c9e57a27','email','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect built-in scope: email','openid-connect'),('e5f6b985-b17f-45e1-8b51-c86324f63089','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('e765decd-f663-4e8e-bed3-57894b73f688','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('e8fdb9d6-cb26-4529-ade8-8d4d0c08f746','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('ecbd0428-fba5-4b97-9989-5938b54045d9','roles','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect scope for add user roles to the access token','openid-connect'),('f69b14f9-f662-4e4a-9f79-269a929bf501','role_list','org4','SAML role list','saml'),('f6a57487-a8b7-465f-b816-771a63b39b77','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('f78408f4-3b7a-42ec-82bf-337bc62f713c','acr','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('f82054ed-9f54-4bdc-867c-e8bf4789465c','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('f9a1aac2-6f0e-4165-905e-be5e577999e1','address','org2','OpenID Connect built-in scope: address','openid-connect'),('fc55bd21-c811-44fb-8084-8c8851a7a1f3','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('01db02ba-5b84-489c-b04d-3bf376a4be68','${rolesScopeConsentText}','consent.screen.text'),('01db02ba-5b84-489c-b04d-3bf376a4be68','true','display.on.consent.screen'),('01db02ba-5b84-489c-b04d-3bf376a4be68','false','include.in.token.scope'),('0350a4ec-d983-4b36-8cf6-02857c0550ff','${emailScopeConsentText}','consent.screen.text'),('0350a4ec-d983-4b36-8cf6-02857c0550ff','true','display.on.consent.screen'),('0350a4ec-d983-4b36-8cf6-02857c0550ff','true','include.in.token.scope'),('06de2bc6-76a3-4782-bcc4-551d53a88145','${profileScopeConsentText}','consent.screen.text'),('06de2bc6-76a3-4782-bcc4-551d53a88145','true','display.on.consent.screen'),('06de2bc6-76a3-4782-bcc4-551d53a88145','true','include.in.token.scope'),('0a073fd1-3eb5-4252-989c-b1da55183fca','${samlRoleListScopeConsentText}','consent.screen.text'),('0a073fd1-3eb5-4252-989c-b1da55183fca','true','display.on.consent.screen'),('10090f9c-672a-4939-9b20-d6a1365b8397','false','display.on.consent.screen'),('10090f9c-672a-4939-9b20-d6a1365b8397','true','include.in.token.scope'),('18a441af-f824-4118-acd9-1b9b3f223007','${samlRoleListScopeConsentText}','consent.screen.text'),('18a441af-f824-4118-acd9-1b9b3f223007','true','display.on.consent.screen'),('196d85d4-d0fd-41bd-aa17-ba4d38919b7e','${emailScopeConsentText}','consent.screen.text'),('196d85d4-d0fd-41bd-aa17-ba4d38919b7e','true','display.on.consent.screen'),('196d85d4-d0fd-41bd-aa17-ba4d38919b7e','true','include.in.token.scope'),('1b4c8312-f910-47a6-97a7-0bfdec3fc705','false','display.on.consent.screen'),('1b4c8312-f910-47a6-97a7-0bfdec3fc705','false','include.in.token.scope'),('247382aa-55ff-420f-91fd-88f2b202a3f7','false','display.on.consent.screen'),('247382aa-55ff-420f-91fd-88f2b202a3f7','true','include.in.token.scope'),('2cbc2004-3382-4bb9-85af-8d909faed357','${offlineAccessScopeConsentText}','consent.screen.text'),('2cbc2004-3382-4bb9-85af-8d909faed357','true','display.on.consent.screen'),('396c1462-3f29-4681-9bdf-205016137165','${phoneScopeConsentText}','consent.screen.text'),('396c1462-3f29-4681-9bdf-205016137165','true','display.on.consent.screen'),('396c1462-3f29-4681-9bdf-205016137165','true','include.in.token.scope'),('3c247d4f-4b65-4b8e-b243-f26b8124068a','${addressScopeConsentText}','consent.screen.text'),('3c247d4f-4b65-4b8e-b243-f26b8124068a','true','display.on.consent.screen'),('3c247d4f-4b65-4b8e-b243-f26b8124068a','true','include.in.token.scope'),('40a410b5-5633-424e-9edd-5e2fed510fbf','${profileScopeConsentText}','consent.screen.text'),('40a410b5-5633-424e-9edd-5e2fed510fbf','true','display.on.consent.screen'),('40a410b5-5633-424e-9edd-5e2fed510fbf','true','include.in.token.scope'),('415cfb4d-0872-45ff-8f3d-d3402bf0a04b','${rolesScopeConsentText}','consent.screen.text'),('415cfb4d-0872-45ff-8f3d-d3402bf0a04b','true','display.on.consent.screen'),('415cfb4d-0872-45ff-8f3d-d3402bf0a04b','false','include.in.token.scope'),('44618b55-4426-4599-a2df-d102289edaec','false','display.on.consent.screen'),('44618b55-4426-4599-a2df-d102289edaec','false','include.in.token.scope'),('4503942f-471a-4096-819b-7f7550255f99','false','display.on.consent.screen'),('4503942f-471a-4096-819b-7f7550255f99','true','include.in.token.scope'),('4c8b153d-47bb-4118-a727-5adae8d379ca','${offlineAccessScopeConsentText}','consent.screen.text'),('4c8b153d-47bb-4118-a727-5adae8d379ca','true','display.on.consent.screen'),('573ef186-9519-4cbf-9413-638d559d5725','${samlRoleListScopeConsentText}','consent.screen.text'),('573ef186-9519-4cbf-9413-638d559d5725','true','display.on.consent.screen'),('5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f','${addressScopeConsentText}','consent.screen.text'),('5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f','true','display.on.consent.screen'),('5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f','true','include.in.token.scope'),('5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3','${emailScopeConsentText}','consent.screen.text'),('5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3','true','display.on.consent.screen'),('5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3','true','include.in.token.scope'),('6ced35b6-82e3-408f-8d39-674e5046826a','false','display.on.consent.screen'),('6ced35b6-82e3-408f-8d39-674e5046826a','false','include.in.token.scope'),('71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8','${phoneScopeConsentText}','consent.screen.text'),('71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8','true','display.on.consent.screen'),('71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8','true','include.in.token.scope'),('73fc20e5-903b-4e1d-bb86-bee82aac4f5e','${emailScopeConsentText}','consent.screen.text'),('73fc20e5-903b-4e1d-bb86-bee82aac4f5e','true','display.on.consent.screen'),('73fc20e5-903b-4e1d-bb86-bee82aac4f5e','true','include.in.token.scope'),('780a63f7-cd01-4042-ace6-756c2c0246a9','','consent.screen.text'),('780a63f7-cd01-4042-ace6-756c2c0246a9','false','display.on.consent.screen'),('780a63f7-cd01-4042-ace6-756c2c0246a9','false','include.in.token.scope'),('782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0','${rolesScopeConsentText}','consent.screen.text'),('782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0','true','display.on.consent.screen'),('782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0','false','include.in.token.scope'),('79be3c58-66c3-493f-9b41-63f5932cd256','${addressScopeConsentText}','consent.screen.text'),('79be3c58-66c3-493f-9b41-63f5932cd256','true','display.on.consent.screen'),('79be3c58-66c3-493f-9b41-63f5932cd256','true','include.in.token.scope'),('7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9','false','display.on.consent.screen'),('7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9','false','include.in.token.scope'),('829802f6-91a4-478a-a69f-4870ec990a54','${rolesScopeConsentText}','consent.screen.text'),('829802f6-91a4-478a-a69f-4870ec990a54','true','display.on.consent.screen'),('829802f6-91a4-478a-a69f-4870ec990a54','false','include.in.token.scope'),('8a1cc568-0e97-41fb-90c9-030d8794525a','${offlineAccessScopeConsentText}','consent.screen.text'),('8a1cc568-0e97-41fb-90c9-030d8794525a','true','display.on.consent.screen'),('92b6435d-27be-4e06-ad33-fdbbab5effc5','${phoneScopeConsentText}','consent.screen.text'),('92b6435d-27be-4e06-ad33-fdbbab5effc5','true','display.on.consent.screen'),('92b6435d-27be-4e06-ad33-fdbbab5effc5','true','include.in.token.scope'),('95d34a9a-a738-49d4-8c95-83e1f35f22de','false','display.on.consent.screen'),('95d34a9a-a738-49d4-8c95-83e1f35f22de','true','include.in.token.scope'),('95f28550-8a42-4e4c-8b75-57735c259262','${phoneScopeConsentText}','consent.screen.text'),('95f28550-8a42-4e4c-8b75-57735c259262','true','display.on.consent.screen'),('95f28550-8a42-4e4c-8b75-57735c259262','true','include.in.token.scope'),('970da01e-80f0-456a-9b41-db34158cd2d1','${emailScopeConsentText}','consent.screen.text'),('970da01e-80f0-456a-9b41-db34158cd2d1','true','display.on.consent.screen'),('970da01e-80f0-456a-9b41-db34158cd2d1','true','include.in.token.scope'),('99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e','${phoneScopeConsentText}','consent.screen.text'),('99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e','true','display.on.consent.screen'),('99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e','true','include.in.token.scope'),('a16bd48a-a471-4aee-889b-5c112987f65e','${rolesScopeConsentText}','consent.screen.text'),('a16bd48a-a471-4aee-889b-5c112987f65e','true','display.on.consent.screen'),('a16bd48a-a471-4aee-889b-5c112987f65e','false','include.in.token.scope'),('a3be8d7b-f503-456e-bf20-3d59422fdd42','false','display.on.consent.screen'),('a3be8d7b-f503-456e-bf20-3d59422fdd42','false','include.in.token.scope'),('aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6','','consent.screen.text'),('aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6','false','display.on.consent.screen'),('aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6','false','include.in.token.scope'),('acd67b0a-2353-4b21-9e14-a4924c6e56f3','${samlRoleListScopeConsentText}','consent.screen.text'),('acd67b0a-2353-4b21-9e14-a4924c6e56f3','true','display.on.consent.screen'),('b7792496-e95d-400f-96f1-99265ce5ccfa','${profileScopeConsentText}','consent.screen.text'),('b7792496-e95d-400f-96f1-99265ce5ccfa','true','display.on.consent.screen'),('b7792496-e95d-400f-96f1-99265ce5ccfa','true','include.in.token.scope'),('b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e','${profileScopeConsentText}','consent.screen.text'),('b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e','true','display.on.consent.screen'),('b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e','true','include.in.token.scope'),('bcaf9f9b-face-4a40-a92a-826c09ad563b','','consent.screen.text'),('bcaf9f9b-face-4a40-a92a-826c09ad563b','false','display.on.consent.screen'),('bcaf9f9b-face-4a40-a92a-826c09ad563b','false','include.in.token.scope'),('bf41c45b-3e1c-4abc-83b8-6802520fc276','${addressScopeConsentText}','consent.screen.text'),('bf41c45b-3e1c-4abc-83b8-6802520fc276','true','display.on.consent.screen'),('bf41c45b-3e1c-4abc-83b8-6802520fc276','true','include.in.token.scope'),('cb34d771-0f8c-4df1-99a7-fe6fceb85925','','consent.screen.text'),('cb34d771-0f8c-4df1-99a7-fe6fceb85925','false','display.on.consent.screen'),('cb34d771-0f8c-4df1-99a7-fe6fceb85925','false','include.in.token.scope'),('cc2303dc-4165-4fc3-b24c-8dc0d7f25f41','${addressScopeConsentText}','consent.screen.text'),('cc2303dc-4165-4fc3-b24c-8dc0d7f25f41','true','display.on.consent.screen'),('cc2303dc-4165-4fc3-b24c-8dc0d7f25f41','true','include.in.token.scope'),('d35f12c2-91c4-4d09-a06a-d89203f2efd6','false','display.on.consent.screen'),('d35f12c2-91c4-4d09-a06a-d89203f2efd6','true','include.in.token.scope'),('d3d139ce-39d4-481d-af01-53c4dffde4b0','${samlRoleListScopeConsentText}','consent.screen.text'),('d3d139ce-39d4-481d-af01-53c4dffde4b0','true','display.on.consent.screen'),('d3f0a90b-7000-47a6-82e3-7efdcbf501d3','${offlineAccessScopeConsentText}','consent.screen.text'),('d3f0a90b-7000-47a6-82e3-7efdcbf501d3','true','display.on.consent.screen'),('d5e9ff94-535e-42db-bcda-b3f54e6b338d','','consent.screen.text'),('d5e9ff94-535e-42db-bcda-b3f54e6b338d','false','display.on.consent.screen'),('d5e9ff94-535e-42db-bcda-b3f54e6b338d','false','include.in.token.scope'),('d71fb6b5-e22a-4501-b57c-5ac1c9e57a27','${emailScopeConsentText}','consent.screen.text'),('d71fb6b5-e22a-4501-b57c-5ac1c9e57a27','true','display.on.consent.screen'),('d71fb6b5-e22a-4501-b57c-5ac1c9e57a27','true','include.in.token.scope'),('e5f6b985-b17f-45e1-8b51-c86324f63089','${profileScopeConsentText}','consent.screen.text'),('e5f6b985-b17f-45e1-8b51-c86324f63089','true','display.on.consent.screen'),('e5f6b985-b17f-45e1-8b51-c86324f63089','true','include.in.token.scope'),('e765decd-f663-4e8e-bed3-57894b73f688','${profileScopeConsentText}','consent.screen.text'),('e765decd-f663-4e8e-bed3-57894b73f688','true','display.on.consent.screen'),('e765decd-f663-4e8e-bed3-57894b73f688','true','include.in.token.scope'),('e8fdb9d6-cb26-4529-ade8-8d4d0c08f746','${phoneScopeConsentText}','consent.screen.text'),('e8fdb9d6-cb26-4529-ade8-8d4d0c08f746','true','display.on.consent.screen'),('e8fdb9d6-cb26-4529-ade8-8d4d0c08f746','true','include.in.token.scope'),('ecbd0428-fba5-4b97-9989-5938b54045d9','${rolesScopeConsentText}','consent.screen.text'),('ecbd0428-fba5-4b97-9989-5938b54045d9','true','display.on.consent.screen'),('ecbd0428-fba5-4b97-9989-5938b54045d9','false','include.in.token.scope'),('f69b14f9-f662-4e4a-9f79-269a929bf501','${samlRoleListScopeConsentText}','consent.screen.text'),('f69b14f9-f662-4e4a-9f79-269a929bf501','true','display.on.consent.screen'),('f6a57487-a8b7-465f-b816-771a63b39b77','false','display.on.consent.screen'),('f6a57487-a8b7-465f-b816-771a63b39b77','true','include.in.token.scope'),('f78408f4-3b7a-42ec-82bf-337bc62f713c','false','display.on.consent.screen'),('f78408f4-3b7a-42ec-82bf-337bc62f713c','false','include.in.token.scope'),('f82054ed-9f54-4bdc-867c-e8bf4789465c','','consent.screen.text'),('f82054ed-9f54-4bdc-867c-e8bf4789465c','false','display.on.consent.screen'),('f82054ed-9f54-4bdc-867c-e8bf4789465c','false','include.in.token.scope'),('f9a1aac2-6f0e-4165-905e-be5e577999e1','${addressScopeConsentText}','consent.screen.text'),('f9a1aac2-6f0e-4165-905e-be5e577999e1','true','display.on.consent.screen'),('f9a1aac2-6f0e-4165-905e-be5e577999e1','true','include.in.token.scope'),('fc55bd21-c811-44fb-8084-8c8851a7a1f3','${offlineAccessScopeConsentText}','consent.screen.text'),('fc55bd21-c811-44fb-8084-8c8851a7a1f3','true','display.on.consent.screen'),('feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4','${offlineAccessScopeConsentText}','consent.screen.text'),('feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4','true','display.on.consent.screen');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('070f24c2-4920-450b-84b1-10016e3708f0','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('070f24c2-4920-450b-84b1-10016e3708f0','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('070f24c2-4920-450b-84b1-10016e3708f0','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('070f24c2-4920-450b-84b1-10016e3708f0','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('070f24c2-4920-450b-84b1-10016e3708f0','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('070f24c2-4920-450b-84b1-10016e3708f0','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('070f24c2-4920-450b-84b1-10016e3708f0','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('070f24c2-4920-450b-84b1-10016e3708f0','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('070f24c2-4920-450b-84b1-10016e3708f0','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('0e91c93d-0260-4530-a9ac-af848287b1e1','10090f9c-672a-4939-9b20-d6a1365b8397',0),('0e91c93d-0260-4530-a9ac-af848287b1e1','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('0e91c93d-0260-4530-a9ac-af848287b1e1','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('0e91c93d-0260-4530-a9ac-af848287b1e1','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('0e91c93d-0260-4530-a9ac-af848287b1e1','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('0e91c93d-0260-4530-a9ac-af848287b1e1','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('0e91c93d-0260-4530-a9ac-af848287b1e1','95f28550-8a42-4e4c-8b75-57735c259262',0),('0e91c93d-0260-4530-a9ac-af848287b1e1','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('0e91c93d-0260-4530-a9ac-af848287b1e1','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('107e7f8e-6320-41f2-8851-cf3238fb4254','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('107e7f8e-6320-41f2-8851-cf3238fb4254','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('107e7f8e-6320-41f2-8851-cf3238fb4254','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('107e7f8e-6320-41f2-8851-cf3238fb4254','6ced35b6-82e3-408f-8d39-674e5046826a',1),('107e7f8e-6320-41f2-8851-cf3238fb4254','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('107e7f8e-6320-41f2-8851-cf3238fb4254','a16bd48a-a471-4aee-889b-5c112987f65e',1),('107e7f8e-6320-41f2-8851-cf3238fb4254','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('107e7f8e-6320-41f2-8851-cf3238fb4254','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('107e7f8e-6320-41f2-8851-cf3238fb4254','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('1470d436-c958-4f9a-87c8-47dfec1ef965','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('1470d436-c958-4f9a-87c8-47dfec1ef965','2cbc2004-3382-4bb9-85af-8d909faed357',0),('1470d436-c958-4f9a-87c8-47dfec1ef965','970da01e-80f0-456a-9b41-db34158cd2d1',1),('1470d436-c958-4f9a-87c8-47dfec1ef965','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('1470d436-c958-4f9a-87c8-47dfec1ef965','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('1470d436-c958-4f9a-87c8-47dfec1ef965','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('1470d436-c958-4f9a-87c8-47dfec1ef965','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('1470d436-c958-4f9a-87c8-47dfec1ef965','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('1b02217f-d5bb-4032-b67c-57e32ee5b071','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('1b02217f-d5bb-4032-b67c-57e32ee5b071','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('1b02217f-d5bb-4032-b67c-57e32ee5b071','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('1b02217f-d5bb-4032-b67c-57e32ee5b071','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('1b02217f-d5bb-4032-b67c-57e32ee5b071','a16bd48a-a471-4aee-889b-5c112987f65e',1),('1b02217f-d5bb-4032-b67c-57e32ee5b071','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('1b02217f-d5bb-4032-b67c-57e32ee5b071','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('1b02217f-d5bb-4032-b67c-57e32ee5b071','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('1ba73ec3-f950-46b5-b578-18c214dec948','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('1ba73ec3-f950-46b5-b578-18c214dec948','79be3c58-66c3-493f-9b41-63f5932cd256',0),('1ba73ec3-f950-46b5-b578-18c214dec948','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('1ba73ec3-f950-46b5-b578-18c214dec948','829802f6-91a4-478a-a69f-4870ec990a54',1),('1ba73ec3-f950-46b5-b578-18c214dec948','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('1ba73ec3-f950-46b5-b578-18c214dec948','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('1ba73ec3-f950-46b5-b578-18c214dec948','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('1ba73ec3-f950-46b5-b578-18c214dec948','e765decd-f663-4e8e-bed3-57894b73f688',1),('1ba73ec3-f950-46b5-b578-18c214dec948','f6a57487-a8b7-465f-b816-771a63b39b77',0),('1d972755-a6c7-41e5-801d-68e02061a4d0','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('1d972755-a6c7-41e5-801d-68e02061a4d0','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('1d972755-a6c7-41e5-801d-68e02061a4d0','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('1d972755-a6c7-41e5-801d-68e02061a4d0','6ced35b6-82e3-408f-8d39-674e5046826a',1),('1d972755-a6c7-41e5-801d-68e02061a4d0','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('1d972755-a6c7-41e5-801d-68e02061a4d0','a16bd48a-a471-4aee-889b-5c112987f65e',1),('1d972755-a6c7-41e5-801d-68e02061a4d0','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('1d972755-a6c7-41e5-801d-68e02061a4d0','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('1d972755-a6c7-41e5-801d-68e02061a4d0','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('29e4432e-6534-4b3d-8371-0993b180a64a','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('29e4432e-6534-4b3d-8371-0993b180a64a','2cbc2004-3382-4bb9-85af-8d909faed357',0),('29e4432e-6534-4b3d-8371-0993b180a64a','44618b55-4426-4599-a2df-d102289edaec',1),('29e4432e-6534-4b3d-8371-0993b180a64a','970da01e-80f0-456a-9b41-db34158cd2d1',1),('29e4432e-6534-4b3d-8371-0993b180a64a','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('29e4432e-6534-4b3d-8371-0993b180a64a','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('29e4432e-6534-4b3d-8371-0993b180a64a','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('29e4432e-6534-4b3d-8371-0993b180a64a','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('29e4432e-6534-4b3d-8371-0993b180a64a','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('2d1a1dc8-4340-451c-9cf3-188ac053b024','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('2d1a1dc8-4340-451c-9cf3-188ac053b024','2cbc2004-3382-4bb9-85af-8d909faed357',0),('2d1a1dc8-4340-451c-9cf3-188ac053b024','44618b55-4426-4599-a2df-d102289edaec',1),('2d1a1dc8-4340-451c-9cf3-188ac053b024','970da01e-80f0-456a-9b41-db34158cd2d1',1),('2d1a1dc8-4340-451c-9cf3-188ac053b024','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('2d1a1dc8-4340-451c-9cf3-188ac053b024','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('2d1a1dc8-4340-451c-9cf3-188ac053b024','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('2d1a1dc8-4340-451c-9cf3-188ac053b024','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('2d1a1dc8-4340-451c-9cf3-188ac053b024','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('2d3b4076-0185-48fb-b7b0-8fca369a9638','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('2d3b4076-0185-48fb-b7b0-8fca369a9638','79be3c58-66c3-493f-9b41-63f5932cd256',0),('2d3b4076-0185-48fb-b7b0-8fca369a9638','829802f6-91a4-478a-a69f-4870ec990a54',1),('2d3b4076-0185-48fb-b7b0-8fca369a9638','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('2d3b4076-0185-48fb-b7b0-8fca369a9638','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('2d3b4076-0185-48fb-b7b0-8fca369a9638','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('2d3b4076-0185-48fb-b7b0-8fca369a9638','e765decd-f663-4e8e-bed3-57894b73f688',1),('2d3b4076-0185-48fb-b7b0-8fca369a9638','f6a57487-a8b7-465f-b816-771a63b39b77',0),('2e0570af-3629-4e4a-94bd-2c1feceb332a','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('2e0570af-3629-4e4a-94bd-2c1feceb332a','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('2e0570af-3629-4e4a-94bd-2c1feceb332a','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('2e0570af-3629-4e4a-94bd-2c1feceb332a','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('2e0570af-3629-4e4a-94bd-2c1feceb332a','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('2e0570af-3629-4e4a-94bd-2c1feceb332a','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('2e0570af-3629-4e4a-94bd-2c1feceb332a','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('2e0570af-3629-4e4a-94bd-2c1feceb332a','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('2e0570af-3629-4e4a-94bd-2c1feceb332a','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','396c1462-3f29-4681-9bdf-205016137165',0),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','4503942f-471a-4096-819b-7f7550255f99',0),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('2e1b18d3-a4c7-4c9c-901c-396bc7b432d0','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','79be3c58-66c3-493f-9b41-63f5932cd256',0),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','829802f6-91a4-478a-a69f-4870ec990a54',1),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','e765decd-f663-4e8e-bed3-57894b73f688',1),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','f6a57487-a8b7-465f-b816-771a63b39b77',0),('2f79aa02-3015-47ff-b794-859729eb9a47','396c1462-3f29-4681-9bdf-205016137165',0),('2f79aa02-3015-47ff-b794-859729eb9a47','4503942f-471a-4096-819b-7f7550255f99',0),('2f79aa02-3015-47ff-b794-859729eb9a47','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('2f79aa02-3015-47ff-b794-859729eb9a47','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('2f79aa02-3015-47ff-b794-859729eb9a47','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('2f79aa02-3015-47ff-b794-859729eb9a47','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('2f79aa02-3015-47ff-b794-859729eb9a47','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('2f79aa02-3015-47ff-b794-859729eb9a47','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('2f79aa02-3015-47ff-b794-859729eb9a47','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('3303237e-7510-4499-a187-e1b5854d17e7','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('3303237e-7510-4499-a187-e1b5854d17e7','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('3303237e-7510-4499-a187-e1b5854d17e7','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('3303237e-7510-4499-a187-e1b5854d17e7','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('3303237e-7510-4499-a187-e1b5854d17e7','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('3303237e-7510-4499-a187-e1b5854d17e7','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('3303237e-7510-4499-a187-e1b5854d17e7','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('3303237e-7510-4499-a187-e1b5854d17e7','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('362c7047-df41-41a6-ba79-d79adbb0e31e','396c1462-3f29-4681-9bdf-205016137165',0),('362c7047-df41-41a6-ba79-d79adbb0e31e','4503942f-471a-4096-819b-7f7550255f99',0),('362c7047-df41-41a6-ba79-d79adbb0e31e','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('362c7047-df41-41a6-ba79-d79adbb0e31e','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('362c7047-df41-41a6-ba79-d79adbb0e31e','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('362c7047-df41-41a6-ba79-d79adbb0e31e','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('362c7047-df41-41a6-ba79-d79adbb0e31e','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('362c7047-df41-41a6-ba79-d79adbb0e31e','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('362c7047-df41-41a6-ba79-d79adbb0e31e','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','a16bd48a-a471-4aee-889b-5c112987f65e',1),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('36a323e4-40bf-43e2-bb8d-c541fafd50d6','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('38b045ce-2293-4f53-bb82-e8676d9264d0','396c1462-3f29-4681-9bdf-205016137165',0),('38b045ce-2293-4f53-bb82-e8676d9264d0','4503942f-471a-4096-819b-7f7550255f99',0),('38b045ce-2293-4f53-bb82-e8676d9264d0','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('38b045ce-2293-4f53-bb82-e8676d9264d0','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('38b045ce-2293-4f53-bb82-e8676d9264d0','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('38b045ce-2293-4f53-bb82-e8676d9264d0','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('38b045ce-2293-4f53-bb82-e8676d9264d0','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('38b045ce-2293-4f53-bb82-e8676d9264d0','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('38b045ce-2293-4f53-bb82-e8676d9264d0','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('3be016d4-911e-4469-9231-6ac1341460fb','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('3be016d4-911e-4469-9231-6ac1341460fb','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('3be016d4-911e-4469-9231-6ac1341460fb','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('3be016d4-911e-4469-9231-6ac1341460fb','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('3be016d4-911e-4469-9231-6ac1341460fb','a16bd48a-a471-4aee-889b-5c112987f65e',1),('3be016d4-911e-4469-9231-6ac1341460fb','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('3be016d4-911e-4469-9231-6ac1341460fb','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('3be016d4-911e-4469-9231-6ac1341460fb','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','6ced35b6-82e3-408f-8d39-674e5046826a',1),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','a16bd48a-a471-4aee-889b-5c112987f65e',1),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('3f3a6c82-649a-4911-a86e-8f4424e65ff1','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('55526e5d-f414-42cc-bf17-528b51147b24','396c1462-3f29-4681-9bdf-205016137165',0),('55526e5d-f414-42cc-bf17-528b51147b24','4503942f-471a-4096-819b-7f7550255f99',0),('55526e5d-f414-42cc-bf17-528b51147b24','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('55526e5d-f414-42cc-bf17-528b51147b24','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('55526e5d-f414-42cc-bf17-528b51147b24','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('55526e5d-f414-42cc-bf17-528b51147b24','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('55526e5d-f414-42cc-bf17-528b51147b24','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('55526e5d-f414-42cc-bf17-528b51147b24','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('55526e5d-f414-42cc-bf17-528b51147b24','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('55d78e00-10fd-445a-9762-651263fc57d9','10090f9c-672a-4939-9b20-d6a1365b8397',0),('55d78e00-10fd-445a-9762-651263fc57d9','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('55d78e00-10fd-445a-9762-651263fc57d9','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('55d78e00-10fd-445a-9762-651263fc57d9','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('55d78e00-10fd-445a-9762-651263fc57d9','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('55d78e00-10fd-445a-9762-651263fc57d9','95f28550-8a42-4e4c-8b75-57735c259262',0),('55d78e00-10fd-445a-9762-651263fc57d9','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('55d78e00-10fd-445a-9762-651263fc57d9','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('562de244-70bc-48d7-a18f-c318a4d49d63','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('562de244-70bc-48d7-a18f-c318a4d49d63','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('562de244-70bc-48d7-a18f-c318a4d49d63','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('562de244-70bc-48d7-a18f-c318a4d49d63','6ced35b6-82e3-408f-8d39-674e5046826a',1),('562de244-70bc-48d7-a18f-c318a4d49d63','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('562de244-70bc-48d7-a18f-c318a4d49d63','a16bd48a-a471-4aee-889b-5c112987f65e',1),('562de244-70bc-48d7-a18f-c318a4d49d63','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('562de244-70bc-48d7-a18f-c318a4d49d63','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('562de244-70bc-48d7-a18f-c318a4d49d63','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('56d7816e-3aae-48ce-a861-6d3d0ea208ce','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('58d33d58-f134-493b-a787-9ed6c93859a9','10090f9c-672a-4939-9b20-d6a1365b8397',0),('58d33d58-f134-493b-a787-9ed6c93859a9','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('58d33d58-f134-493b-a787-9ed6c93859a9','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('58d33d58-f134-493b-a787-9ed6c93859a9','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('58d33d58-f134-493b-a787-9ed6c93859a9','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('58d33d58-f134-493b-a787-9ed6c93859a9','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('58d33d58-f134-493b-a787-9ed6c93859a9','95f28550-8a42-4e4c-8b75-57735c259262',0),('58d33d58-f134-493b-a787-9ed6c93859a9','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('58d33d58-f134-493b-a787-9ed6c93859a9','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','10090f9c-672a-4939-9b20-d6a1365b8397',0),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','95f28550-8a42-4e4c-8b75-57735c259262',0),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('5b9974e3-958a-4141-a968-20b76fb0f11b','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('5b9974e3-958a-4141-a968-20b76fb0f11b','79be3c58-66c3-493f-9b41-63f5932cd256',0),('5b9974e3-958a-4141-a968-20b76fb0f11b','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('5b9974e3-958a-4141-a968-20b76fb0f11b','829802f6-91a4-478a-a69f-4870ec990a54',1),('5b9974e3-958a-4141-a968-20b76fb0f11b','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('5b9974e3-958a-4141-a968-20b76fb0f11b','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('5b9974e3-958a-4141-a968-20b76fb0f11b','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('5b9974e3-958a-4141-a968-20b76fb0f11b','e765decd-f663-4e8e-bed3-57894b73f688',1),('5b9974e3-958a-4141-a968-20b76fb0f11b','f6a57487-a8b7-465f-b816-771a63b39b77',0),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','10090f9c-672a-4939-9b20-d6a1365b8397',0),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','95f28550-8a42-4e4c-8b75-57735c259262',0),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('61c2e50c-94e8-4819-9958-3f25713f9d07','396c1462-3f29-4681-9bdf-205016137165',0),('61c2e50c-94e8-4819-9958-3f25713f9d07','4503942f-471a-4096-819b-7f7550255f99',0),('61c2e50c-94e8-4819-9958-3f25713f9d07','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('61c2e50c-94e8-4819-9958-3f25713f9d07','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('61c2e50c-94e8-4819-9958-3f25713f9d07','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('61c2e50c-94e8-4819-9958-3f25713f9d07','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('61c2e50c-94e8-4819-9958-3f25713f9d07','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('61c2e50c-94e8-4819-9958-3f25713f9d07','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('61c2e50c-94e8-4819-9958-3f25713f9d07','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('728645f5-c020-49b8-b411-dcde55a7ade7','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('728645f5-c020-49b8-b411-dcde55a7ade7','79be3c58-66c3-493f-9b41-63f5932cd256',0),('728645f5-c020-49b8-b411-dcde55a7ade7','829802f6-91a4-478a-a69f-4870ec990a54',1),('728645f5-c020-49b8-b411-dcde55a7ade7','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('728645f5-c020-49b8-b411-dcde55a7ade7','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('728645f5-c020-49b8-b411-dcde55a7ade7','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('728645f5-c020-49b8-b411-dcde55a7ade7','e765decd-f663-4e8e-bed3-57894b73f688',1),('728645f5-c020-49b8-b411-dcde55a7ade7','f6a57487-a8b7-465f-b816-771a63b39b77',0),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','2cbc2004-3382-4bb9-85af-8d909faed357',0),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','44618b55-4426-4599-a2df-d102289edaec',1),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','970da01e-80f0-456a-9b41-db34158cd2d1',1),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('78a68b65-96b1-4279-a3bb-ff6dc7cfbf93','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('7946239a-71e4-45b6-a356-d6f0218ca9cf','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('7946239a-71e4-45b6-a356-d6f0218ca9cf','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('7946239a-71e4-45b6-a356-d6f0218ca9cf','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('7946239a-71e4-45b6-a356-d6f0218ca9cf','6ced35b6-82e3-408f-8d39-674e5046826a',1),('7946239a-71e4-45b6-a356-d6f0218ca9cf','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('7946239a-71e4-45b6-a356-d6f0218ca9cf','a16bd48a-a471-4aee-889b-5c112987f65e',1),('7946239a-71e4-45b6-a356-d6f0218ca9cf','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('7946239a-71e4-45b6-a356-d6f0218ca9cf','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('7946239a-71e4-45b6-a356-d6f0218ca9cf','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('798b8335-bb1d-4dd7-a08d-af73bdc5657a','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('87151c85-c4be-4bd9-ad28-582c4300419a','396c1462-3f29-4681-9bdf-205016137165',0),('87151c85-c4be-4bd9-ad28-582c4300419a','4503942f-471a-4096-819b-7f7550255f99',0),('87151c85-c4be-4bd9-ad28-582c4300419a','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('87151c85-c4be-4bd9-ad28-582c4300419a','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('87151c85-c4be-4bd9-ad28-582c4300419a','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('87151c85-c4be-4bd9-ad28-582c4300419a','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('87151c85-c4be-4bd9-ad28-582c4300419a','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('87151c85-c4be-4bd9-ad28-582c4300419a','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('8849ca9a-419a-4bb2-b5d6-5672c7925665','396c1462-3f29-4681-9bdf-205016137165',0),('8849ca9a-419a-4bb2-b5d6-5672c7925665','4503942f-471a-4096-819b-7f7550255f99',0),('8849ca9a-419a-4bb2-b5d6-5672c7925665','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('8849ca9a-419a-4bb2-b5d6-5672c7925665','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('8849ca9a-419a-4bb2-b5d6-5672c7925665','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('8849ca9a-419a-4bb2-b5d6-5672c7925665','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('8849ca9a-419a-4bb2-b5d6-5672c7925665','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('8849ca9a-419a-4bb2-b5d6-5672c7925665','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('8dcbe59c-2305-4e8b-a509-d4506fb44048','10090f9c-672a-4939-9b20-d6a1365b8397',0),('8dcbe59c-2305-4e8b-a509-d4506fb44048','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('8dcbe59c-2305-4e8b-a509-d4506fb44048','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('8dcbe59c-2305-4e8b-a509-d4506fb44048','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('8dcbe59c-2305-4e8b-a509-d4506fb44048','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('8dcbe59c-2305-4e8b-a509-d4506fb44048','95f28550-8a42-4e4c-8b75-57735c259262',0),('8dcbe59c-2305-4e8b-a509-d4506fb44048','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('8dcbe59c-2305-4e8b-a509-d4506fb44048','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('9f92d871-32f3-44e7-9bc8-347c45d5051d','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('9f92d871-32f3-44e7-9bc8-347c45d5051d','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('9f92d871-32f3-44e7-9bc8-347c45d5051d','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('9f92d871-32f3-44e7-9bc8-347c45d5051d','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('9f92d871-32f3-44e7-9bc8-347c45d5051d','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('9f92d871-32f3-44e7-9bc8-347c45d5051d','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('9f92d871-32f3-44e7-9bc8-347c45d5051d','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('9f92d871-32f3-44e7-9bc8-347c45d5051d','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','2cbc2004-3382-4bb9-85af-8d909faed357',0),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','44618b55-4426-4599-a2df-d102289edaec',1),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','970da01e-80f0-456a-9b41-db34158cd2d1',1),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('a4d2faaf-9b22-4102-bd6a-21c23003d05a','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','79be3c58-66c3-493f-9b41-63f5932cd256',0),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','829802f6-91a4-478a-a69f-4870ec990a54',1),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','e765decd-f663-4e8e-bed3-57894b73f688',1),('a7f4ed5d-f103-44f9-a072-fb3489d0a165','f6a57487-a8b7-465f-b816-771a63b39b77',0),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','2cbc2004-3382-4bb9-85af-8d909faed357',0),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','44618b55-4426-4599-a2df-d102289edaec',1),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','970da01e-80f0-456a-9b41-db34158cd2d1',1),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('ac33af4f-2879-49b5-90a5-cee8005768f3','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('ac33af4f-2879-49b5-90a5-cee8005768f3','79be3c58-66c3-493f-9b41-63f5932cd256',0),('ac33af4f-2879-49b5-90a5-cee8005768f3','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('ac33af4f-2879-49b5-90a5-cee8005768f3','829802f6-91a4-478a-a69f-4870ec990a54',1),('ac33af4f-2879-49b5-90a5-cee8005768f3','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('ac33af4f-2879-49b5-90a5-cee8005768f3','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('ac33af4f-2879-49b5-90a5-cee8005768f3','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('ac33af4f-2879-49b5-90a5-cee8005768f3','e765decd-f663-4e8e-bed3-57894b73f688',1),('ac33af4f-2879-49b5-90a5-cee8005768f3','f6a57487-a8b7-465f-b816-771a63b39b77',0),('b1947fe6-f799-4b32-a230-cf2a036325a5','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('b1947fe6-f799-4b32-a230-cf2a036325a5','2cbc2004-3382-4bb9-85af-8d909faed357',0),('b1947fe6-f799-4b32-a230-cf2a036325a5','970da01e-80f0-456a-9b41-db34158cd2d1',1),('b1947fe6-f799-4b32-a230-cf2a036325a5','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('b1947fe6-f799-4b32-a230-cf2a036325a5','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('b1947fe6-f799-4b32-a230-cf2a036325a5','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('b1947fe6-f799-4b32-a230-cf2a036325a5','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('b1947fe6-f799-4b32-a230-cf2a036325a5','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('b317e865-5673-4b43-a925-83cd9439b98e','10090f9c-672a-4939-9b20-d6a1365b8397',0),('b317e865-5673-4b43-a925-83cd9439b98e','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('b317e865-5673-4b43-a925-83cd9439b98e','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('b317e865-5673-4b43-a925-83cd9439b98e','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('b317e865-5673-4b43-a925-83cd9439b98e','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('b317e865-5673-4b43-a925-83cd9439b98e','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('b317e865-5673-4b43-a925-83cd9439b98e','95f28550-8a42-4e4c-8b75-57735c259262',0),('b317e865-5673-4b43-a925-83cd9439b98e','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('b317e865-5673-4b43-a925-83cd9439b98e','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('b321f2bd-a50d-40ec-a16f-08965bbc8a85','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('b493156e-cef6-4608-b87a-c1488089b61d','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('b493156e-cef6-4608-b87a-c1488089b61d','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('b493156e-cef6-4608-b87a-c1488089b61d','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('b493156e-cef6-4608-b87a-c1488089b61d','6ced35b6-82e3-408f-8d39-674e5046826a',1),('b493156e-cef6-4608-b87a-c1488089b61d','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('b493156e-cef6-4608-b87a-c1488089b61d','a16bd48a-a471-4aee-889b-5c112987f65e',1),('b493156e-cef6-4608-b87a-c1488089b61d','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('b493156e-cef6-4608-b87a-c1488089b61d','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('b493156e-cef6-4608-b87a-c1488089b61d','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','10090f9c-672a-4939-9b20-d6a1365b8397',0),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','95f28550-8a42-4e4c-8b75-57735c259262',0),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('b5a7c8bb-a435-4812-8dc3-8af6ba94c6e4','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','396c1462-3f29-4681-9bdf-205016137165',0),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','4503942f-471a-4096-819b-7f7550255f99',0),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('bd5dadc6-acf6-47b8-9d16-f8ada8e998d5','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','10090f9c-672a-4939-9b20-d6a1365b8397',0),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','95f28550-8a42-4e4c-8b75-57735c259262',0),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('ca7f2967-42dc-4494-8afc-7583883c302c','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('ca7f2967-42dc-4494-8afc-7583883c302c','79be3c58-66c3-493f-9b41-63f5932cd256',0),('ca7f2967-42dc-4494-8afc-7583883c302c','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('ca7f2967-42dc-4494-8afc-7583883c302c','829802f6-91a4-478a-a69f-4870ec990a54',1),('ca7f2967-42dc-4494-8afc-7583883c302c','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('ca7f2967-42dc-4494-8afc-7583883c302c','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('ca7f2967-42dc-4494-8afc-7583883c302c','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('ca7f2967-42dc-4494-8afc-7583883c302c','e765decd-f663-4e8e-bed3-57894b73f688',1),('ca7f2967-42dc-4494-8afc-7583883c302c','f6a57487-a8b7-465f-b816-771a63b39b77',0),('cb7b6a97-1257-4373-926d-0289e24593e9','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('cb7b6a97-1257-4373-926d-0289e24593e9','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('cb7b6a97-1257-4373-926d-0289e24593e9','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('cb7b6a97-1257-4373-926d-0289e24593e9','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('cb7b6a97-1257-4373-926d-0289e24593e9','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('cb7b6a97-1257-4373-926d-0289e24593e9','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('cb7b6a97-1257-4373-926d-0289e24593e9','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('cb7b6a97-1257-4373-926d-0289e24593e9','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('cb7b6a97-1257-4373-926d-0289e24593e9','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','2cbc2004-3382-4bb9-85af-8d909faed357',0),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','44618b55-4426-4599-a2df-d102289edaec',1),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','970da01e-80f0-456a-9b41-db34158cd2d1',1),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('cceb3ef3-6e23-4e02-a842-ca6a1cabb10f','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('cdafba6c-0be4-4099-b7c1-5c353281b317','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('cdafba6c-0be4-4099-b7c1-5c353281b317','2cbc2004-3382-4bb9-85af-8d909faed357',0),('cdafba6c-0be4-4099-b7c1-5c353281b317','970da01e-80f0-456a-9b41-db34158cd2d1',1),('cdafba6c-0be4-4099-b7c1-5c353281b317','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('cdafba6c-0be4-4099-b7c1-5c353281b317','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('cdafba6c-0be4-4099-b7c1-5c353281b317','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('cdafba6c-0be4-4099-b7c1-5c353281b317','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('cdafba6c-0be4-4099-b7c1-5c353281b317','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('d83d4038-0b52-4b6c-beae-09a02c525e5d','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('d83d4038-0b52-4b6c-beae-09a02c525e5d','79be3c58-66c3-493f-9b41-63f5932cd256',0),('d83d4038-0b52-4b6c-beae-09a02c525e5d','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('d83d4038-0b52-4b6c-beae-09a02c525e5d','829802f6-91a4-478a-a69f-4870ec990a54',1),('d83d4038-0b52-4b6c-beae-09a02c525e5d','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('d83d4038-0b52-4b6c-beae-09a02c525e5d','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('d83d4038-0b52-4b6c-beae-09a02c525e5d','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('d83d4038-0b52-4b6c-beae-09a02c525e5d','e765decd-f663-4e8e-bed3-57894b73f688',1),('d83d4038-0b52-4b6c-beae-09a02c525e5d','f6a57487-a8b7-465f-b816-771a63b39b77',0),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','10090f9c-672a-4939-9b20-d6a1365b8397',0),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','95f28550-8a42-4e4c-8b75-57735c259262',0),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('e1eb8871-baac-4485-be48-95a8db2c9fdc','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('e1eb8871-baac-4485-be48-95a8db2c9fdc','79be3c58-66c3-493f-9b41-63f5932cd256',0),('e1eb8871-baac-4485-be48-95a8db2c9fdc','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('e1eb8871-baac-4485-be48-95a8db2c9fdc','829802f6-91a4-478a-a69f-4870ec990a54',1),('e1eb8871-baac-4485-be48-95a8db2c9fdc','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('e1eb8871-baac-4485-be48-95a8db2c9fdc','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('e1eb8871-baac-4485-be48-95a8db2c9fdc','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('e1eb8871-baac-4485-be48-95a8db2c9fdc','e765decd-f663-4e8e-bed3-57894b73f688',1),('e1eb8871-baac-4485-be48-95a8db2c9fdc','f6a57487-a8b7-465f-b816-771a63b39b77',0),('e9cf3880-4d58-4993-b42d-5276cab1004d','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('e9cf3880-4d58-4993-b42d-5276cab1004d','2cbc2004-3382-4bb9-85af-8d909faed357',0),('e9cf3880-4d58-4993-b42d-5276cab1004d','44618b55-4426-4599-a2df-d102289edaec',1),('e9cf3880-4d58-4993-b42d-5276cab1004d','970da01e-80f0-456a-9b41-db34158cd2d1',1),('e9cf3880-4d58-4993-b42d-5276cab1004d','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('e9cf3880-4d58-4993-b42d-5276cab1004d','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('e9cf3880-4d58-4993-b42d-5276cab1004d','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('e9cf3880-4d58-4993-b42d-5276cab1004d','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('e9cf3880-4d58-4993-b42d-5276cab1004d','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('f7be3607-bb55-4257-bdb8-25b9fbcda051','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('f7be3607-bb55-4257-bdb8-25b9fbcda051','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('f7be3607-bb55-4257-bdb8-25b9fbcda051','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('f7be3607-bb55-4257-bdb8-25b9fbcda051','6ced35b6-82e3-408f-8d39-674e5046826a',1),('f7be3607-bb55-4257-bdb8-25b9fbcda051','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('f7be3607-bb55-4257-bdb8-25b9fbcda051','a16bd48a-a471-4aee-889b-5c112987f65e',1),('f7be3607-bb55-4257-bdb8-25b9fbcda051','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('f7be3607-bb55-4257-bdb8-25b9fbcda051','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('f7be3607-bb55-4257-bdb8-25b9fbcda051','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('fadb6747-16d0-4959-b7f6-7384792f8b3d','396c1462-3f29-4681-9bdf-205016137165',0),('fadb6747-16d0-4959-b7f6-7384792f8b3d','4503942f-471a-4096-819b-7f7550255f99',0),('fadb6747-16d0-4959-b7f6-7384792f8b3d','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('fadb6747-16d0-4959-b7f6-7384792f8b3d','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('fadb6747-16d0-4959-b7f6-7384792f8b3d','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('fadb6747-16d0-4959-b7f6-7384792f8b3d','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('fadb6747-16d0-4959-b7f6-7384792f8b3d','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('fadb6747-16d0-4959-b7f6-7384792f8b3d','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0);
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('2cbc2004-3382-4bb9-85af-8d909faed357','14e2a1cb-b475-4733-b7b2-7624857622b0'),('4c8b153d-47bb-4118-a727-5adae8d379ca','0d0bc684-08fa-4f53-b7d3-e50fbd30f97d'),('8a1cc568-0e97-41fb-90c9-030d8794525a','5f7ffdce-84f8-4790-8990-dbd4e7d2eaeb'),('d3f0a90b-7000-47a6-82e3-7efdcbf501d3','37818107-20ba-4025-99eb-1481aaedb049'),('fc55bd21-c811-44fb-8084-8c8851a7a1f3','12b54410-8f19-4151-a8da-163741aebc45'),('feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4','75133a4f-b43b-49fc-a9df-e45a7b83f0c2');
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
INSERT INTO `COMPONENT` VALUES ('047324ba-30c0-41c8-bb0a-8f00fb059eed','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('0583336a-af41-4df4-a4e4-6674154a8b92','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('05bc1fe3-31a1-43a6-944a-2f8e4e7eb311','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('08156530-ee78-4d41-8d5a-8a816e668367','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('13825c47-4934-456f-86e9-d5188d8e1aa6','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('1494d7b8-e23f-49df-a67a-2d290fd90921','Allowed Client Scopes','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','authenticated'),('15f6a855-fe6f-4732-b5e3-1b738e48d01a','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('16c7be2f-7244-4182-8a87-bcf7b37c316c','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('1bfd2538-26ed-411a-a584-2d7e527ffc4f','Allowed Protocol Mapper Types','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','anonymous'),('1ce52ae2-3898-4e1b-9501-884fae929f9e','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('1d799f88-efd4-4ffd-b718-100c89f72d8f','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('1de1bf0a-0a49-4ad9-b7b1-57c8d02ad3d6','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('1f054e6e-acc5-49c6-aa8c-cfcc825d7124','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('1ff5c55e-63a7-4427-a828-aaba726faff9','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('2003552d-7031-4cc7-a299-fc3787548ba4','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('20bcda7d-9f25-48e9-a52f-bb70f6e1a246','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('26ee3b30-ee1b-49e9-8bec-11e9be345865','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('27dd0233-1ec0-49bf-a785-d19312250f80','hmac-generated-hs512','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('2bd5f1d1-807d-4407-8ab2-eb82938b9e64','hmac-generated-hs512','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','hmac-generated','org.keycloak.keys.KeyProvider','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL),('30ce9a38-6ee9-4ee1-b0ea-36e5db6ba314','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('350f370b-8f24-44d7-9ab4-97f8d2227024','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('3a63c40a-bd22-488b-97ad-ee114beb1b08',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('3d4e614e-8cee-4416-bcbd-94b4a5272cb3','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('4108f56e-6872-4979-aaca-d1d5c68cc9c1','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('47af4949-05dd-4381-bdb1-4a6be3cb5cab','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('4c76ae7e-4932-4ef7-8160-bb6357edbe1c','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('4d676a20-4622-405d-92f8-298fd32a97e0','hmac-generated-hs512','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('520c5618-7f10-4acb-a5f4-0c2a359029ad','hmac-generated-hs512','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('55c04d88-5269-4812-a72e-ab21ffeb75fe','Trusted Hosts','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','anonymous'),('6169e050-35e3-463d-aece-841f57cbc1b7','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('6e0d9ee3-e43c-4b3d-9ab4-272bf8fbff11','hmac-generated-hs512','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('700a3aa6-0b4b-4465-9ae6-e7ae94c68a93','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('72ed4d97-3ce9-41b2-9ce8-253498c09c4e','hmac-generated-hs512','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('7850f80a-4ec0-4602-962b-d1f6488df2f7',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('7a162907-153d-416a-ba3c-aa8d415ec8ca',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('7da396dd-c18f-4548-8e10-a1d54dcc1675','Consent Required','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','anonymous'),('7dad497c-3566-4c00-b46e-1d127e6730af','rsa-generated','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','rsa-generated','org.keycloak.keys.KeyProvider','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL),('80563658-d7b9-4ef4-b43e-35ea4be8428e','Max Clients Limit','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','anonymous'),('82002ae8-25f3-4644-a9be-46c6fe9692ec','rsa-enc-generated','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','rsa-enc-generated','org.keycloak.keys.KeyProvider','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL),('8592d365-bf85-4c50-8797-200739b54fcd','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('893cba9f-480c-4892-a6ba-079a1e0c5cfb','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('8a5b6db2-4847-489d-a595-d27e58f52b4e','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('8c019e00-5c75-4f67-a1c7-fbf609f80f3a','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('8d253bf2-5456-4f14-8dbc-cbf8d15d185b','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('90748f1e-63b6-4757-95fa-85583b5e71fa','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('9ffbdc02-424f-49e8-8dd0-8ca6c7fed329','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('a2bb2b48-ffc6-41c7-8ccd-2bb0bd89f8c7','aes-generated','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','aes-generated','org.keycloak.keys.KeyProvider','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL),('a4fdadd7-db82-40cf-ba25-7a271b66ca3d','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('afd5e877-45a6-4c92-bcb5-9cd3b956e4ae','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('b84540a7-06cb-474f-8eee-ab6a3241a1e9','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('b9af05bd-99dd-4e11-b39b-dea5091dbd18','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('ba8aff2a-0349-47bc-ae93-6c9a3841667e','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('bb0b526c-a8a9-41e7-b6d7-a8f6a4c4a9da','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('c558658e-5c1c-4bf3-914d-4402a9a599f4','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('c63e09b6-ff68-4814-8949-f52303e2d802',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('c880e319-5b91-443c-a0d2-fde1819d21b3','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('c990ac71-bd66-469d-a515-f8f89cdceba5','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('ccaafd75-e323-4cc0-aa7d-032cefd6a789','Allowed Client Scopes','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','anonymous'),('d1fefcbb-0c0c-4692-b30c-e827a8159f85','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('d3d9aa4a-fc5b-4f43-b9f3-d0fa5a5065a2','Full Scope Disabled','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','anonymous'),('da541baa-b58a-4fa4-811e-05ac4f751fd6','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('db427c31-461a-47ec-99e6-7412ec90c124','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('db97e911-31f0-45b7-99f7-3d8342bb0d82','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('dd9b9081-acce-402a-9936-2fa41ec97c7c','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('dda92740-c922-4483-b50a-ad2e088f55b8','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('de1626ee-e345-46c5-9d0f-b0d371ef42ff','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('e09db6e2-7f61-4a85-92d4-38f96d23fd39','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('e3d9dfac-fb87-4f76-9f0f-a80d3a5f41b7','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('e5299903-9f11-4e60-9bd7-3b6f1f1c423f',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('e58dc8ac-8d42-42b9-8140-4afef1eb48ca','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('e59640b6-083c-4d0f-bef4-1a359b05b4ec','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('ef50d26c-95f1-47fb-8e20-0509e8efe891','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('f4f5c459-3734-4680-b7d8-1042f60f605b',NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL),('f982be1d-1d2d-4c3b-99b1-02eb010a7a45','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('f9d810f6-e6d6-46c0-8e34-4bf46e7d6117','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','Allowed Protocol Mapper Types','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','authenticated'),('fd10c7ce-684b-4bd6-97eb-87fb56b1db10','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('fea92a2e-3367-43d9-b43b-b45556b74a19','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('00a97b8c-528b-4898-8fe1-9890852ba420','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('011f9e47-a8b4-412b-bbf1-7696540000ef','8a5b6db2-4847-489d-a595-d27e58f52b4e','keyUse','ENC'),('01a51b37-4836-42ec-a5ef-168699775c1f','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('022ee940-97cd-4383-97d5-3418dbbc3e53','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('0289f7c1-65db-4d8d-8108-3c463cb10b6f','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','saml-user-property-mapper'),('03921421-9d9c-4dd0-8f2b-400462e1a1e7','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('03f66299-bfdd-4083-b378-c58e2ca0b335','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('03f73a2c-3c1d-4e29-9696-3650a4b03cae','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('050f0c07-0532-4c9d-9271-7accc7e45032','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','oidc-address-mapper'),('074e1847-e137-46f1-9762-a96afc7d63e9','c990ac71-bd66-469d-a515-f8f89cdceba5','host-sending-registration-request-must-match','true'),('07b1c47a-265c-4f64-a25c-0cd274526a02','82002ae8-25f3-4644-a9be-46c6fe9692ec','certificate','MIICmzCCAYMCBgGQCl6n6jANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjEyMDI1MzEzWhcNMzQwNjEyMDI1NDUzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCjh+S2fIYHHwr25qvL5oQhTiSVpxs/XL2ypT5b9tvtmv7MyYEzhrcWmpZauuHJkNEfKbg7Yh9VRoj+lkcOzLxUTgimQkuLlSqrNKKy13Mbi04fGIUeM31AbH/epcC/0jJRAlWSBg21S3P6bDeHG36TWSPJ7CLGm7cBJohO5td1IFbUiB9AS8xLNwWhunVYC1JdTSd0OO48eZ4wfGcalvorPyFVA4hDCXQSbfYD1bez5q8EMDzMCNgpjcrvdGvhM0YzKXIWZo8qZQGr/LDNXt8dmTUJQBxxBtC1dMKzEhUARaXcOiqzrmydFMFm5lIHkjNYFQdnNeLpH8x0WzZUQIdtAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAG+ntDSJgxcOJhqZg/8dg0e7eDqRJdfUCAmA1ehY8YOgda/smIgAOEWPVf4d7VcdfpGHXPC8kqho1S3JydgxZ9raRLgAGTxAalmpV+eFcaqpirv+dYD9K3wGL00JMCpFtOZnQcVHTAD1w/XjARldJsiQuh6qBmH976RCEQH81y6K5qSu8LPsm6x2xf+WxFn6IFoqlYU/JeLaCzAwf4sYjKLc9xEDPqWEQKh7fVdH0DAm1/8MZ+/BMqoxFefbfkWnJTh93nU0rOuKgPAmp9OUO3ShQU93s8UD8Yf4Z3nw/5ysRIkeGSCDC5oR1zy2aC1eqMUvh3AW++kRNtLkmF7nFkE='),('07d6c045-6d22-4678-a57a-56c4b6a9f35e','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('089e2509-a256-4079-a5b1-da68d382d3b2','9ffbdc02-424f-49e8-8dd0-8ca6c7fed329','kid','18cfec5f-9ceb-43ab-986e-3e370efac914'),('08d85a00-b04d-4931-b733-0554be6988d3','26ee3b30-ee1b-49e9-8bec-11e9be345865','certificate','MIIClzCCAX8CBgGQCmAjxDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDYxMjAyNTQ1MVoXDTM0MDYxMjAyNTYzMVowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKu0iWpBSEl8PbD1hAm9xJ63YeqxVAEzkZ+56Y66XU9+cy5V/ASvYkY5j9oxVwq9O+pdlaq4clqcHGLT65zc6j9MGjWvLKhgKJMa80GK8gtHunmAeumyg3tRoN5ET0jytV7zoSUI2mpIC+21q00QmpOqm/UVpcXyJJeTo5QeaHrpOA4uGtXM2Mriu005u6Dxr0G6LQDBSt+s88P1mwza4SHuZvzijVOwaw1eSCOuVpNwLbFhMmuocwvbhwjJmnxHBfV2JMoO1UMcAsFvcL0bIjHDTvxYKL9fm414UEGbmjXyffupidOmUJutBFQPnD87oEEVWuY8rdKdS6D/HyO/WYUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAPK3G3aqU4aNDRw6IU3TPI7+jub5GCwUA/9dD30iEIFFceInBqXdNIdMYb4GprcQFTKN5Nrr/hmSXvVo1m0cZoroYeHU2k6GaanpfhgXq0+9Bmeb8lA3VMCTB6iAguorn5MUDlixzSctgj5C2jGZZNUdDYhSnw08nBxhnN2QUjMbn8EEtOmoxBgFVX9Uew/9F3ylNU/vJw62JGISZAti7Fsm7Eb3eVHOUUCw/08rKWZs7mLhmarAorCfLZsuuBYzY8cOadmYJdk6rQ55yNjVAKCCDWaJAbUqBQrCd8XxC0ipuHrIAdXZUtxYtIyX6g7+9+VliMqHEH6phEz7pzXiAyA=='),('091b9ceb-ff17-4e8e-88d2-0fe4e27650c4','7dad497c-3566-4c00-b46e-1d127e6730af','keyUse','SIG'),('09720f23-ac24-4f94-b1a7-ae47ff254265','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','oidc-address-mapper'),('0aefdfbd-d1a6-4b8b-b556-06957e8f486c','6169e050-35e3-463d-aece-841f57cbc1b7','keyUse','ENC'),('0b93a39e-068e-41e2-81d4-967b8e355d1b','4c76ae7e-4932-4ef7-8160-bb6357edbe1c','privateKey','MIIEpAIBAAKCAQEAwNKWTLFBh/2XnGfc1dPBaXkUS+6Wf9ZY0JCqmgO65GsDK2wgdj80lFUq3FYHRINEykjf8hd0xPs6jYhntL31wgB/XONGThOk+vLi6I9EcjedhOjbggmW8GU4CseE6/VYZtEusoWcneR9K12DO8cKicpg7UMUB0RNigzLE9Z1qTKkZGibA+AjpbRk5JIGV1cIr1VzpbG1q3OZ4PGPSIXgcJSpiY2YEnaRkbu9H1ChwBHnBZcXyf1921/P2CizKWuKARAT7CpsY88tiD7xq1heIFsA53+vFS7XqyOpv+2kzo8KzZvOl8WfqarJFrEAqI6k94Bip2FiaAmFBznjAEdeJwIDAQABAoIBAFsBqW12BbNdBbcMsEZ9pJ4WxvUVnROmA5IgjVyWoRlYxoyyglm8+CCAV/PZaKG2APwmTAgzeOnVlyugsy2zsG/Jk1Mwc4i7LdVBWMYhhFESHbbSvnOP+hzo8Pvpcjt5tykD1rHsbOB6rHcQsjU++qLREVE6JRRO8PfUlO5+fFcH3aQLgx80Ibe6q+QtUkgQj3Yes0zU9FantExc7t/buBnQzQAxdIGAuM1N82wzywfD0lb083DOPTA0bjk5Cf016jEv9br+mOqfh7r7Q+7Qw5QoXbp87w+9MOO03LwDz3Cg61mixxJYm+qNmiLfwGafeoDPAhDtwTMXt5XF7tMe4RkCgYEA3whgNtOaIPGJQnR4rcUj64EQOQzDkysAlIISLahGHq4awnd0q05085XGXuRPgbqXUDqTkgguV102uEf2WJt5bENMOgdiUcZSxOiTTUSkEvkHhHtwK8+qYS3RF/obmfQkA7szoiDAhRelfyuUUTk5G3J4WR1wEzavNYnsi+PrAtkCgYEA3VMNOj4Cl5A7xewD0tv59AEgL0It9NpFrvoydig9vN9IaEw22sotuCMkCVv/DMhUi8ETWhOVCsnGw/M81X9kgSOw8tn1JhSKr8VyqyIiEE80yB1dEfAZaDv/1Mqg8G1kBZknNfxgFFUzpJ1xjHoECOYL9QfSwqDjxV6gK1DmyP8CgYEAlAKW90uN6XbhRDzPKWK+57cK8RFLaQsMo4F+VtZpUkrwb0WfI2A5tL0cnDSfntQZPqDg9fR/7HJrsffvv/XNqs8ucwQbd3FJ1GsT9h8rU3v4RS81zZ1O0Jb7QBI25wBiNiexqFJb8Pc0WSSulQiIoXJh86HZkqajt8AEPwHOIGECgYAKs7ZjB5aWf5n0UxpIOuzWOKu2vUt9mIRgFqcUAZQiquVUbcMFR1t4mPJoJXOqyZEVBOwLogDF+cXLudpKNJPGjtRCmfl5suqV30VRMyBUi4/w0UKr2GFSIfyX7Ihlt9RrVOGJgb+fnBMYNajE8y14xK71VUCCusbox0+VaJ8QPwKBgQCFydk+v29Ka0Dv2gjTPc80pYHlORdhuKmTV72VCnCHcbEcb1oOouXLA3DDQQn8/JAmEoafWEOmpw7oC56AYJmE20Jg2WH/C25V4JUZiRKd8JLLRx6abGnoLIxxuQYyX8YyDZ0YcTzcxPFQwSKAPruntu9XiZ34Ug3Xb+B3v4MEeA=='),('0cc75010-7765-4252-9cfd-79c45934fa19','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','oidc-full-name-mapper'),('0e1fbd7b-d8c6-4560-b901-c6497e780deb','b84540a7-06cb-474f-8eee-ab6a3241a1e9','priority','100'),('0eaa0f9e-31ee-4119-82ff-532cc4ac1695','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','saml-user-property-mapper'),('100d2c51-3d5b-4fa6-b6da-8c34c02207f3','08156530-ee78-4d41-8d5a-8a816e668367','priority','100'),('117f003d-971b-4512-a217-91897c39b64f','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','saml-role-list-mapper'),('11c33d9c-282c-4ef1-b200-9d7a8fffcdbd','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','oidc-full-name-mapper'),('1277aebe-b864-4c77-9d15-be598132cd0e','e59640b6-083c-4d0f-bef4-1a359b05b4ec','client-uris-must-match','true'),('130a6732-6688-4e96-9159-4c7db63d5a0f','1ff5c55e-63a7-4427-a828-aaba726faff9','keyUse','SIG'),('141df300-0e54-452f-b9f5-654ef8150b82','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('157d85ab-6f59-4a5d-bde0-634121f57e1f','afd5e877-45a6-4c92-bcb5-9cd3b956e4ae','max-clients','200'),('16e68ee2-7e4c-4ec0-b6e3-78205ef54e76','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('17634d1e-a562-4097-8b38-206cf90aa1c9','da541baa-b58a-4fa4-811e-05ac4f751fd6','algorithm','RSA-OAEP'),('17e423e3-0184-43cb-a6a6-2ac1e7c0656b','6e0d9ee3-e43c-4b3d-9ab4-272bf8fbff11','algorithm','HS512'),('1839b7e4-f52b-497d-bdc3-eeb95c1154fa','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','saml-role-list-mapper'),('18f648fe-aec8-4daa-a9f0-3ef40fe77890','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('19798a7f-42ae-487e-b269-6878514e13ee','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','saml-user-property-mapper'),('1abc187b-c978-4f74-b5c1-70c3b3a42f9f','55c04d88-5269-4812-a72e-ab21ffeb75fe','host-sending-registration-request-must-match','true'),('1b5d32b2-c20b-4d49-8419-5c80a26bac24','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('1c83ff1b-c153-4e29-8462-bcbf7e0c763c','6e0d9ee3-e43c-4b3d-9ab4-272bf8fbff11','kid','88c30965-267d-496f-a3ea-c76b79b2b6aa'),('1da68d57-59df-44f0-91d6-37daf89e02e1','520c5618-7f10-4acb-a5f4-0c2a359029ad','priority','100'),('1ef0218a-234f-4616-8208-2c89b780c936','f982be1d-1d2d-4c3b-99b1-02eb010a7a45','host-sending-registration-request-must-match','true'),('20c4d2dd-8977-4d32-a438-3ee51129e653','16c7be2f-7244-4182-8a87-bcf7b37c316c','max-clients','200'),('20ce8113-2b14-4298-ba52-3ce5214019af','520c5618-7f10-4acb-a5f4-0c2a359029ad','algorithm','HS512'),('24a88408-9636-4956-8eb9-133e302c1f8c','82002ae8-25f3-4644-a9be-46c6fe9692ec','privateKey','MIIEowIBAAKCAQEAo4fktnyGBx8K9uary+aEIU4klacbP1y9sqU+W/bb7Zr+zMmBM4a3FpqWWrrhyZDRHym4O2IfVUaI/pZHDsy8VE4IpkJLi5UqqzSistdzG4tOHxiFHjN9QGx/3qXAv9IyUQJVkgYNtUtz+mw3hxt+k1kjyewixpu3ASaITubXdSBW1IgfQEvMSzcFobp1WAtSXU0ndDjuPHmeMHxnGpb6Kz8hVQOIQwl0Em32A9W3s+avBDA8zAjYKY3K73Rr4TNGMylyFmaPKmUBq/ywzV7fHZk1CUAccQbQtXTCsxIVAEWl3Doqs65snRTBZuZSB5IzWBUHZzXi6R/MdFs2VECHbQIDAQABAoIBAEcZyjz3tlR5UEyabZ6pWtCaR7jTn7q0aXw3cX4NvoC4D8ndYPIUxB0tWGsZbxsy/mGkw4f6OTJcCStcDogmR0oGZadYEr2dPSCUMZs9prwWnQBTKmm/rFkq84vMGJquWxcywx7KyAIHzOTYUWpKb4XET5W3OEWPJYn4BXL81jgDhdTcll1McA3qntSY3eVaYQMQQzyTqucHITJyGe/uITTgkBDZMsiwSybXzu9ouaAqByDQl2ytl9B5lz/xHWZkUPxEOuDnnlSw3lxXjkSo5bIRyi0x7eM8UuYBAiRxFlgji2Bj4R8TNSHTfVfnQE44Jfe74ngY3HWGS2TgWAYtSmcCgYEA2MqkUQu2vPT1jHQTpYjFANZOUW5RfQeA9JvmdH7MyDjgWvWL4NOFVRpx9NgH0F+mpXs5XyqSnhEYEpI/CLKbdymD1EQLSuxQZIJN6D7mjVWzjLkmlxrvhYbXHk0+01p7z8h6xP5DBjP+zlwJb5bjcDnINKWOd9tE3OnayRKK5xcCgYEAwRtNTOEGzjmvONTj+ecydcri8kef0OHeBtqFPh2rTmUngAukfQtzEgaWq12bUoQW7pRRgCb8FRtmBdR5keLhnEffvi551nB/fUfRBEXCbB9vR5I+rcAMctSz7j5miUNXNhikSGzULSGpC8bg7PA+vuD+SUDryZB4NrLiKquQGBsCgYA8GuK3vaGqfdfeWwhfaq4D72bDWOyq13u/VcHtJoKsOGirj0x6xuo+kBhsI8D22q4fTyy239zKij68V2O2i55iyVXNchgXa7FWTHJBI79UDCC9sU+rsUIbKSlXM19pxbpx/0laeIwomh3ZJNdQ4uqn4L1LK2N2g4pyHTwVZ1ivfQKBgQCOEqEvs8uHBIe3H2JPZVsJsOiB6lJZoyPwFOu9BKUZe3CxU1+EpFzX4UMO90KkVgxtIXBJAeWrPco09dsviyYEDhk+WgFH1OLncGQGabCeTg5YMO+uc8J05asv2Hcl/AZ5BW4w3ujH/6DYykyH5kWzt+M+T+ZqGMFpNPkS/cB5CwKBgEWh/hFuRj5wHatXLpwGEU8hDlHMSxzk07c1H24Bky9Uvis9A2M+RQQ0bV4g/KiDtc+gEOVMcD0fI7SHTP72IrmDuGNDOl0M0W7lMxyPGyLfxTnPJwFoDqGXI7vo+VlDLTMxA9RDzaB12wPc2wbH25IBEQwLctC1HqlSf/jNHIFX'),('258bb887-d440-4cca-b1ce-3765574f82ec','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('26c4e6c0-5220-4585-bc25-39b0d83cef6f','82002ae8-25f3-4644-a9be-46c6fe9692ec','priority','100'),('275b420d-0575-4b80-9d24-d438ce139f4c','4d676a20-4622-405d-92f8-298fd32a97e0','algorithm','HS512'),('29e914f9-17f9-4cb6-8dd3-15fb65b62c72','520c5618-7f10-4acb-a5f4-0c2a359029ad','kid','32d27d06-3dc7-4e27-93bb-4c5d50986872'),('2b28602e-aa8b-45e6-a7c0-666d6676c675','c558658e-5c1c-4bf3-914d-4402a9a599f4','allow-default-scopes','true'),('2cb0aa26-96b2-4afd-9db9-f4a4b8244230','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('2d042a86-262a-45c3-b517-1ee7e15c3a90','9ffbdc02-424f-49e8-8dd0-8ca6c7fed329','secret','bw9Fb04MmWira3IbyIHV7w'),('2d759f36-e4b3-466b-b616-d7ad6e6d6096','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','oidc-full-name-mapper'),('2e319302-d9cc-4202-8ad0-ae323fab61b0','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','oidc-address-mapper'),('2edfd2b9-aa3b-4dde-afdb-62caf7c96ebc','1f054e6e-acc5-49c6-aa8c-cfcc825d7124','allow-default-scopes','true'),('32cfb353-ade6-4c43-96f0-d124118caae3','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('34837198-90db-4a60-aa9d-3c9539d00f81','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('3583a1e3-3c7a-461d-b02b-e80f9483f305','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('36238187-389c-4ec5-9670-0cea8bc59484','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('36768840-ad68-47c2-bf1c-9781135735b2','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','oidc-address-mapper'),('375b8ba5-7f7e-4cd6-884f-f2eb22cabfeb','27dd0233-1ec0-49bf-a785-d19312250f80','kid','04bd3edc-f35a-40c9-9da2-1d69ec9b4305'),('37f1f263-2f80-4056-a9bc-d61899d7e3cc','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','oidc-address-mapper'),('3a6e693e-ca3b-449f-9782-c85cff192941','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','oidc-address-mapper'),('3abbcdad-b441-4fd5-9de4-17985b573440','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('3ddf243e-3b8f-481f-8081-13131f385a49','30ce9a38-6ee9-4ee1-b0ea-36e5db6ba314','certificate','MIIClzCCAX8CBgGQCmGfaTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDYxMjAyNTYyOFoXDTM0MDYxMjAyNTgwOFowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJGcvDI2Qvv/wuA3g4Xpc9OEVRjw77EdaYFQ8SIha1F/++KrDeYAYN7usAug32aEoY0BGHed8zch2jL+rVjr/wIlqtsfzHRrDTVPnGRjcQ3lLXJiLaLGB4A5Dmglgbp2PnZscfGhj+DwJq5cIXnqroTsjY87HbQ64c6acybIuWqY1oJYBm/f3xRQzhwgC2WRIzJ2DlrAqDZ6S4WEx3ywIgHyP8sIpK4VKOSHnPEvygeln32tBn46r8w5fV3HIzexwaqP7zquecVkVGGAteuDydluzWoiL4pXb10tRQKsCrIGb3bc59sC+BR6iEP9iljVJF4D1tM/Zoi0Zn8ni4v85ycCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAcMBfQKelYJzzLp7MsRkU2cih6UgCfYWSc2CZC9JNxr11j70U5qw6iJFh0ru9+Vrx1kp1KJ9oRjicVEM14yEAAIJmhqCh8RsQFAMjwksaAhnoNcXqoDVXtIPrPYfFaHpkjw0jjPgEPwlUDEdArzAIxo7Rl86iVlrGJ7dQgkCpIudvrIH7RljvwF4BAkA6uwZRCsWIBFeWep5P5uLR7Ru2/c7hFp4CSdhhqtrFXxxuhbCnGr9oHfPKToqKc1FJJb1PSWkKVPHz/hrqn+3Xz+quSXmnfn/S7SQ9U5v1gOcfHJ412rA/hOLyfq5fpy6+DoqVqS2ZfpOQYCn6Zh0c0qg/dQ=='),('3de2dc11-a986-454e-b2cc-1efc6c14c8bb','7850f80a-4ec0-4602-962b-d1f6488df2f7','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('3e838db6-f669-46a6-8b93-791c00d34d9f','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','saml-role-list-mapper'),('3ec82a8e-d8a5-4567-8271-adecfb8472e8','4108f56e-6872-4979-aaca-d1d5c68cc9c1','keyUse','SIG'),('3ef573fb-f5be-49de-b389-21c439aa68db','6169e050-35e3-463d-aece-841f57cbc1b7','privateKey','MIIEpAIBAAKCAQEAnwP3JLkaSDEBTYdu9mXco4Dt2TP5riUkV1KHaZYV6xaA75UQI1PDxlxtiHYVroVlEpZjFWGVUygRNcKmH7RAUVcgkMfkmgjr72Yg0Pw2n/Z2Uua2P+sVAC5KxGn2IkmiGK8s81106QjolOwRVvVtRHnTxsFDjBi55W1OjBAGyIJiQ83a9SPprGbbO1gsClbGtF2Dwg4dJiMEQ+lHkzF5a2yqOOmY8YWrfiOSzKqPBK3lmG1kxBxIhsKerOn32lw4EgMEorxrjCX+e4q2wtLDd0KeWKv7WcrtnnWnqERCZVEyqte9HuOf4AXyMPMCbx06mhpx/HlzfcxPzGYWjAARUwIDAQABAoIBAAc/DIOhZce1Z/xK+C0FTk0rImub+TxM1/+ctKwEmWIZp+2DCvW5Kvo+mwU1cF6AGK+Ep+ZBCKd9827SPHTEZ4vtXwAKA+pbDrldm5A6dhjLB/BWMCbwhQf5lBGoTH2agmcCkJdUgm/eJo8mxNGEJKMStCpiAzx+ofYJCaPLVSvM5t5/c2bZGDOdTNVFfy0NCMXqQLHOvPQXlbuLXpY12U4jK1nnjCvD5W6QVK55VwNw68H2ImIIOVMNm44tA54XBq/7KdIopME6ilNfuDeIYDSv4rMqlQsmleBUdrvZgsh/FKSojenlMqqfvsHcEW0bTXBQ8ISzVJtr8X5YfCO3NCUCgYEAzIlBaSLA221Y7fUomz44iQbqRneg0CCBosKzLh8z3x58rvf1OrSYMyY7N31hj9Ykcz9INcykvbJ7aUubfbvPtKUomZsWyjxx7K2QuokfhpVPh30ev0dGwWXED79DukigytVFmGa4l0wTLsPGWRhIsMvbD1irYeZ5zlWbdJJSke0CgYEAxwaYy/kA8ifIEf+nUdUkulFB0B9Q581lOJsMAAfRlaxCW8Re3hqiXQCfhG3BpcCxi9EeS+HxO5ndzsAFKX3bLgFqyTUfvo1wTdC3M8rmejWPiUnDIks1WgupfMvLM/ppwtjwmYQVjjqt8O8usbmEIULWAgXAf6z2R35APZTByD8CgYEAh/D53ozQrYaBwrZcpMG4Baro7qj34xyXzLunJ5JpgXPb3tbC0J/TQLu6Q+k7fMQROd/neIppPANybstnryuyoxfaYi1n+kYuWeYJ+VDF+Ucnsp+AXhVbe5LNusGenCNFa0pQlThAm55eaYiJPhIbzhXPpOWEEu+CKZdQWSwfYQkCgYB/sXvXYqt4so1q/twbZOVrpTbUkUMXdnC7IL9SRbHyldL9jcBQQEZr5TpzfPgBoOBJFKKbjRt5Yf8t54VoWZeGrOIWtj7nw1eKlZ71W/kD79ln/Ct2lUplu5XCu/5kGwZAPXAhDt3Fo2B2dP9AiAZ+UKN+KLKZOB/LPvV4jTjHgQKBgQCdzTzzqQip15pT5SQZKyOAAhCXqIFPjHMJXi+l/LZJMMNPzgxzrPHd7yN8+Hmv582u3zbsyqIGOZ1ucMgSIkziFoJTTLGukdl/wXvOQ9dEGNUKsNZwOj8ulc7ImpkYZ4/6k/vKsS0FCN947PiLArewK9ClOah/Nfp8tdNAd4ihqQ=='),('3f7d3894-f55a-4d20-9fac-fa5c130c6847','4d676a20-4622-405d-92f8-298fd32a97e0','priority','100'),('41853c2a-432f-44ae-ae17-21c83dfd0a74','4d676a20-4622-405d-92f8-298fd32a97e0','kid','37a24053-8ccc-45e0-bef7-0282ceeb45d7'),('43bd6520-e435-4bce-bbd1-7f669004c791','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','saml-user-property-mapper'),('442810ee-8ee0-4b18-8e84-ce659f9a09ba','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('447b3ffb-fd29-4004-b46e-e46c54e50249','da541baa-b58a-4fa4-811e-05ac4f751fd6','certificate','MIIClzCCAX8CBgGQCmGiNTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDYxMjAyNTYyOVoXDTM0MDYxMjAyNTgwOVowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMJ60ZABNgN19BPE9afOalca2Rw6owtX9ZzHfOCSi3pNPjpAKfdso7U/vhjspOvlU8Pq0PA+wLsi4fI5Akeail+8lN7GSH6TCHU23ZLPScTs+RVSuQZ/DqjIuzRgr7ZO3uDdAmyM2UFW4JUlI9nxvl0H7IuylUZk/UqaNjbi/QivNHkvqavKwRqzshOmfBjTL4Y5gijR2mafDVBph5WD2kCfbsdvB68gVn5n53C9h3IFkti0Txj0EtnZX3eapBUyS2FtIf7L4aMn/O7Vd5keucpjFt5GxlXjlurf2wItDQfwfmh1X3nfxP0hVHPV/TajjrtKkO/nYO9bZ68toYaSrncCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAHKrP+Om+T+J/jSrhfxceYiKQJifYmvF1yrbghRooDNUgAngT8jueAHUmkBFXUErxMIk8EqF7dRvQf6D5R0u4myGJDPfk008ABoVGNBn1mgi2CdnP4z44SjC6FgruhowFGy0bTM9i6dfjb2LXv1Nx978M3k+lkHbxzz4XDMwB34X30YV7attoeQQDMNa3eoF7msAu8RuL4kaT4Rfw6CsTz1/Ow2ns7V2oyC6N4WDsc8K+feXzoT+/+oMVwm5h7vYIQlBGudPB1WGAeEb7oiSKUCE8S2I7SK87AZdB6H9Zcn9oOveTrnHNmPZ7cMKVyBmsELseOVNXUAdWo9kA3woSpA=='),('45b06a9e-efd3-4ae4-a262-93158560d867','7dad497c-3566-4c00-b46e-1d127e6730af','priority','100'),('463699ad-4223-4bbe-b51b-0188c9ebcb87','ef50d26c-95f1-47fb-8e20-0509e8efe891','kid','dbbec450-4e33-442e-b4a0-06da0c412f40'),('47c1c464-fc67-49d3-9ac9-b27501781bd8','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('4ad0a4cf-7a56-40a8-b357-f76ce51ac064','8592d365-bf85-4c50-8797-200739b54fcd','allow-default-scopes','true'),('4b829931-349f-4c5c-ad4c-0b29a059b736','e3d9dfac-fb87-4f76-9f0f-a80d3a5f41b7','allow-default-scopes','true'),('4c571499-9e93-4bb6-bb76-486195119734','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4c6fd8c1-8472-4e30-a341-2caf7488ef74','8a5b6db2-4847-489d-a595-d27e58f52b4e','privateKey','MIIEpAIBAAKCAQEA1P0dPvKGHDzi/VnbGEaz37/8wWaqxROueaBo39XFfwEomqggYWdIMBEuvR43DgZYBIo6frb8V7o3uUBAjP4El+0rpneHNQnmyGM+GnlbSW2BZOZ51q4AL1CkcsmIWMeufXMBvcKYkE9O9PbsrV/zQqmZhLOvuvEpzzKx0CfEsWEuRGUYFRPDxZyMIV9eOdgP4awB5krrfb8UwZOxCTYQjrVeNolJqJ6cL3l5ohUBuCj6mMceYYL1JUYhBMs8rnAsA6goBCrwF6FmXsC7NQgzJs6qTGgbPoqMLWJs81QjS4BDClfebyUDTqBqkrGiziyy5ulxG9+yN9/pM0pHjT3nWwIDAQABAoIBAASiZUqDWGuw33eHxv6mOy+5K7TBmSGkpf07gkysiBmVWt7SnbHA3488MHoo+CWz+aJPp6ouLRtzj9bWERGATXVI0dRTcXuz9XOSxT0qOtREL7aUVT5YluRwqsNcozzbS26rW/RXEZ7COwOVg9zZ458ltZNvnXlB2hkKD1hqJRt+6atnbwdfGVBR5DVqOd/7IUm3KsUtBgYYPcmW+qERBT2xMYWQjc2y8wtaBT9LFv4nC17nNe+rbqITFm/UicYPOHePBmLBtsfnVBlm0v5is6NWebbj21RuODmdf3uqUAf2aWwUTe/hyvURTcXqnc5qMpoLl42tN25UEK6ra1tq4VECgYEA6cHzbAQDPVE/eTBuqLu33PlCUrNco0IYJsE7qhJqWhkPvSu7JRy44k/94p2KOyT5xblAq5ZCF7nYnBEapXgjrQITKqlQNB3SkOYb0STrZ3s09R8FlxVTDml3lXZptLTQXcGhlUC4DAwM5oguJb8Mi7vPs4wWse9bt4XSZQnUKdcCgYEA6UFCM0hVsri5nPCA0GJMfifh4K+Oj3uDw6oI/2p4t8SPJnio6lXnvzRitU0CSWdfw2yGqCJBh1ZLUXGKPmueQ5+nT52ef12aaaBVIpM4FDDJRaC3NjJGGC9SaLFfiRvQUfyksI2fFOgMuPX6YfIKyWnmHB9D9IQ1YahsY/qS5h0CgYEAgu/3UFv3DJPEQDgW5EEyPn8I3ZZGn9RX/u1iZGOoWwuKu2YRkDpEfdBc4GFqmrKdjlm0lei24N9jLBiQmntvUGvHHLB2kprZ5fxfPIm3quFiyqMz2GtDeOEu8PPBRk26Iapivl3gOi9N0pwZbV9UwbjUITipRcZT07sMHTiiNUUCgYAZl/6CkAJPPPOo477OnqqUAR5IwBqdZckcdBDOrckXKOsoJn8qT0jBcycNi6ifk0cvsz3HPxL/nZlgE1w+4yIXe3IpSzsz8Hpb8qrEw3CYzo2XJT5VJQkJ6E9bi3LXIYUnKdiMQs3cxmV2+g6CJsPGO+dy2H9lWghdcdSK19i8hQKBgQC9fxlTv8HOtuKzaO6QP6ooLZ60QKa9gHo4rcUZnldW9CtJX/FJj9Ycpmd3VHNkAOV0qtHpbjQ9fSWERULPsfh6sES0gr/Yjb/iMnYwqfk0sJTVlfA3NRW06KUQKOt52vnU4Tv51VA5kuMF+MfDQXPYUQoYFP2S2KIsHj22VuLg6g=='),('4cd436e4-1d9a-4476-a7db-2d64c347286a','13825c47-4934-456f-86e9-d5188d8e1aa6','host-sending-registration-request-must-match','true'),('4da7fc4c-025e-4da0-b538-27d5734347bb','4c76ae7e-4932-4ef7-8160-bb6357edbe1c','algorithm','RSA-OAEP'),('4e35f8d1-34a2-41ff-be54-5125cc394b5b','b84540a7-06cb-474f-8eee-ab6a3241a1e9','kid','79b4a551-1138-4327-bf80-4d9b98b286bf'),('555f0fa1-ea4c-4513-ab28-5a4397351387','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('55629f28-b6be-4f05-8b37-d544ff677080','2bd5f1d1-807d-4407-8ab2-eb82938b9e64','secret','N-0tyCR_ynDyMtGNO2nREvN6ICqO2RLGKGFTF0mw3ryQe-Y9AwFEMt0gOIP6WZsKX2o_dFdw5Pv0WfaPfuFsmOfBUYSOYKEhng0Dld5_b1fjKji5vgDrp2s1W3RYyX_aMZ40961WilQGIrRnb6f0SmpRl-YYW4QFMo4XjJOpLlc'),('57409ee7-c1f1-4675-ae01-fa110b8aae33','7dad497c-3566-4c00-b46e-1d127e6730af','privateKey','MIIEowIBAAKCAQEAopS3dBEJ7cjsb7MSVGEgusp9RnDV9qBOdh5hVEOtjTIO8+TD2geJ8JJ/B1ivaWRjM/pXe4ZGaCyZ3IiSnloXf5nKQ26SKEI/mUECHUB2MihVFqsDAJV2eVQfPbg0t6mrzkugvNYdtCDUwftYiaKuleRD1/ee77Zt/GlVhOe0V8c+FGtkrk+FgovHAks3tPOVfsIIlbDJECWHIUrDvpZWxhrrzPwyhakX5/DKr4qFp57UvfSgOdtmZ66ZKSU9zDIBG+8bNtepTOf3OAnU0iAjkiq43VpEgv8D1+crydfAZoZscWy5g+apKFDMUQQxQivvBzPA7FYlWU9sGcZEgIaENQIDAQABAoIBAAcPGPYHpVw3LJje+A1E2FRz5UORM6ENLcrwH762X4sxYLfTN3O4fxM8cRqDDb6wNqRzmqfI2Ta9tQJ/xYntlHacWU1bOCpaUgOX8H0PpvIfkS42R5+XXbj/34lg/Zz513VSEE0SqOCAymwPuzTipNzqN83hOPvkelsKwcVPACQNdzzKZ/hTLRNRM2y2n06H5IJSHIxxtbXc6sBaePjeA8xeIM11AS+kpzjCUhMSacMhlNS14kDt9106Uug+66WFmooF4UkG6tPR/ZtBSg474Kds1ylDN3+H7ij3RCbQQPAU8M9/3K9dKz056IwrwAsiZtSafrR8H86re2y9PzFSfKMCgYEA5U0OLy1eWWuX+ywU2cjcHN32j980NIdX+f3bYiDFO2FgMFXTVN+P+nm+8Q6BzOfrNhG3dHAwVQptNfb2cJfOFDPuRN0v7/XKpTDR5jvJe5jKjH4spaGBmFqPs7gNWvBK6TCm+BHuE4l2JFHDRAKWPYJah+WJ7q2ZYSkTpcZjHlcCgYEAtYLi90Ve/EXj2bMH/L6YetAmwSGGDsrfOC+D9FJKgIbJ1NQRSBxrLTo8NhRT0FDr/MBqyY+et0pM76CtZPBDWh1FUbPrH0BHhXeNGjgPO5UEtuk+Mi3JvUdSx7pOfVzfcQpIPFG7LEdwM3uyFeDx3g1McTZnyNcMiYDakkKxAlMCgYAs0O+pxts+7OmKfOYiXsCun69WFVD1x1IpmTUsq60A2xpauBuS5hMU6ICqSqSR8O4m5jWN+3Nm25/WwUsPXIw5pKC4MubwpoCR4sXTkvHhR06nQO3m/Xb/2QtnG9z4Xii2BP1NVOvMQ7ykgpqAi2Tj5rtc/j8EOEfXFpkxeGHdBwKBgBSGh4n0w0f900VD9IxFNVL2BNvkIZe8oz9kSCSxxZEBLQOvM4EXDZugsTxgUhYFgJolXC4M2qLZeRfD8LewX71p//O8R8NR7oSOP1uOqVJQiKbye0ELYnvP+/FwBP4yKWZMBl0j1Omt7mcz/rBwrokwscs/nr7caqOF+bF+byvXAoGBAKBeVFlMPaG2ci8buBvIlAcfWlEgvneZuLg0q2B5anB8UGOEiwjA0O90LWeHpUkIBEyGOBEToyBUveldOEr59W2ueKq0Edrm0Qr7ZyRnz0LcaIz1jezMwCCoCX4s5IEB7dn3saST/jvCfaGF2NAQT3O5WGMcilHJmZ0sQ1Vvl18f'),('5bcddeba-e1ac-43c3-86bd-b9bfb11c68db','ccaafd75-e323-4cc0-aa7d-032cefd6a789','allow-default-scopes','true'),('5c22b67b-55c6-4b04-88c6-051d04768909','6169e050-35e3-463d-aece-841f57cbc1b7','priority','100'),('5ceea277-d2f5-4347-bc88-90a578898112','55c04d88-5269-4812-a72e-ab21ffeb75fe','client-uris-must-match','true'),('5ed1ce9c-74f5-4d38-a5cf-dcbf30209d26','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5f57e5e3-1ca8-415c-87c4-9d0b3629865c','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','saml-user-property-mapper'),('5fa0cc31-75ff-4b8f-936d-54208e9e2f32','05bc1fe3-31a1-43a6-944a-2f8e4e7eb311','allow-default-scopes','true'),('5fdcefe6-d2af-45a9-a461-70970b7014cb','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('614c5819-14d2-47a0-b9dc-6a8742432b62','a2bb2b48-ffc6-41c7-8ccd-2bb0bd89f8c7','priority','100'),('62b19218-d68a-474f-83e7-483fe84194ed','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('62f8eada-5ff1-40e1-8210-8e585fd69eec','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','saml-user-property-mapper'),('64dd4e1c-d7ff-4bc9-8b2a-0a0873bfa0da','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('66972cb6-5fea-4e29-a3bd-12c18b5b62f6','3a63c40a-bd22-488b-97ad-ee114beb1b08','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('66a76911-afcb-4ac4-b1ef-d2290ddce0ae','1ff5c55e-63a7-4427-a828-aaba726faff9','certificate','MIIClzCCAX8CBgGQCmEb7TANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDYxMjAyNTU1NFoXDTM0MDYxMjAyNTczNFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK9uJn5StKJmUAhXiksQ2RpTpcmdeT5xUPgOyI4y1KAcDY8omOk5cDkx8tUyoSz6obJF1wnOfAt4V88xmm1QZGt/fDmnDhw42swAKhuDVS3/1EuPVUX+TqDHSD+im6Er79i4hYcuDDndAHMojVK3WRceYr0Co/+9klITTp7HGfj8klfmwDjx7nYWIBqgBWkFypOHJeVPSM+QaSX8JP4hMGvrK8EXBPjbK3xHCTuuEojJZbNN0hkiX+lNAgW4zKk5/xJuvh6dY2AKhl5N3PRNaJM++FrK19MkVhE4Cv2jOpAjTkOxjwuIoga+z96cGmE/EoSX7tBgNpGSEZtFgxpreBsCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAkmIgDfYKCIETJC/wNnmR7FyTpQ+2otAcci9lKS/791uc4YttdtoutjqxqlkftAZ0i/+rTI5x0ySO0si2BdN+OqEsOigNie/wLk7IfsLgpibXQBojyYVhBV6JC0fOHRkdkkE+fUaeCo7emU8tv+G8TAwWo59WNVr+SHwHyh16IcdP7gmzo6WFQboFH4cC0lzhElcz0WZZnfQalgpgokmqX2iC2/LT6aBH50uKHJ6L7lJXhTqeh1d4yP6smpSfuEN/+CUZ1Y9j+2AHXqOc4XwgRRtAsal0yJk9tv2MjVrjuqO/fmCsTv4rsRLRsGOyO9qtYBXE7v36/JhJrZUGLwex3w=='),('69c2b4ec-b0d3-44a8-85be-cd43613e6572','da541baa-b58a-4fa4-811e-05ac4f751fd6','priority','100'),('6a523dce-2515-4a41-95b1-31ffbac116ce','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('6a727831-ef5c-4229-80a9-cf0e2da7c820','f9d810f6-e6d6-46c0-8e34-4bf46e7d6117','privateKey','MIIEpQIBAAKCAQEA2m242x9qi33H5TCFGGRsKWwt8t0+C1ttIReLM3+cbm2CK1wphq35vr8cbz88+8QaaFLrdJP1a1smXj5EXDNKMA0R1LBY3oMFUMSNddDN6zC2qBlz06kMjERD+tOxn6vvrNoeRBtPKEqEiwDTam/CDIyew2gmti8EKjpdSSeOWUUkuq02/ohkbU6n1poCRWF+QfWrh6u8xeM/4hkUDn7TojmxQgdURGcxLJTabvR8f8FvtVRNMrxaGXiUManin9cjRe6VYk2IrsHipicVJeDtfMo66L+tcG2E6kn6E99LD6fV2/5hTeTJZUygOqc7HezsgM/L4l6O4pJc6gr1FCbaFQIDAQABAoIBACuJcq7UWnl+wuTrEKBNxeRUwGzXzdnYKY6OwYtsfFrjX25ykoFadHzhXVLMNUTOb+AK5Q0Jv8Fb+/ANc7U38OnWdQ8ibjg9v8W7Q6Hv0ld2UHX9isFtwMdFhRI99znG/MEEgcNb+SFkBvqo2brtly1Gqw9yV0L5aJhdJUJjTMN8fuRINATavy8TYiZlb86jFuJ6lmt7RB9aByE/bho0NkuzrrjcAf2ppVakS2ATJHoi8hVEcyRpX69DuCp7JjTnQzOz/+drDFClOpaggMwx6zZY5lrzxX4iuw1OjIb/cOeQvmQixFxOlN9DvnPkZ6vzfxmJzMRYVJ6Htj9sZgo07RkCgYEA/ieGqdL/3a90wZ2d7J6OEK5yiqvL3zlwyd/WUqaln0fhUolwmlv3Dkmw10YJo+W3Z0TEGnRjuJOG6o/gZ1czpwO/lrNEfOx16UMdMUKZ910Iik2B83vOF/gSP9VWCSrgRA7DqX0tW0/of4DJmFei36n4svU0jDzUwyG65N3MzD0CgYEA3APIG+xtqXolCFJwwCt+n5fYBxJkQ/lHsbj5VKkE9he5I90H9vdYJM0dcW8Opm0VY/OyIOcM44kP2W/Jf1vp35cXc3VTbyyjU43KDBawAwnjZNq3MvBe3fXlKmVrLANASFFJEsvVOs8lUBsRfDgJNcr4i3Aas0jJfvhbyxROarkCgYEA7/jyNbd80Byy6X2hd6HeEfIlRLohrYvW60XmX/PpvhNotT4AjD75bww1ZY5D2/UyztcnMrNi1Qy2/xMKl4jGxJPNesWZjTrXuoAcOD7ikaXOQogcg4IKfqdE0/DjY5SQXLJ0HLyM7wLsTDeWIbndl8ItiQvtqdxmKDjY9vBWRyECgYEAs7ubI8SXKVYRHqVKWpKtlG6VGeHaavUfrn3voUuaM/fZVQTh1szlAttVbC9PhoGicc7I+7wEeXSkr/p0X0iU3AUwMS/tguqyWjWAkzONgk33p5JNCp32wdh455OGY6QcRXex/FrrzGkgkDospI+aZolzVWW1SjTx9nmpc1MZZHECgYEA/ECHTrznWCNr5c9x4CiM/NVNek7ZSD4fuvZFo1F/brLFeADoJkro4eEKtq8hjJtRwOwa0kJbUsXM7l6Gm/9vgqmwpsgMzkFBYGMGvHefURtL+0QZrGPCI/ZwKkG9hSkGYmN3+yastNn3qjEQlt4baJrzwUzITS+kgNlxyLNoMqk='),('6aa8e14a-5d09-4954-85c8-6160c9fa11da','82002ae8-25f3-4644-a9be-46c6fe9692ec','algorithm','RSA-OAEP'),('6afe6b5f-efed-45a7-b59c-53ea1169fd59','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','oidc-full-name-mapper'),('6b8dab0f-e124-4a6d-a28f-5d7fdd62dbf9','7dad497c-3566-4c00-b46e-1d127e6730af','certificate','MIICmzCCAYMCBgGQCl6mPjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjEyMDI1MzEzWhcNMzQwNjEyMDI1NDUzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCilLd0EQntyOxvsxJUYSC6yn1GcNX2oE52HmFUQ62NMg7z5MPaB4nwkn8HWK9pZGMz+ld7hkZoLJnciJKeWhd/mcpDbpIoQj+ZQQIdQHYyKFUWqwMAlXZ5VB89uDS3qavOS6C81h20INTB+1iJoq6V5EPX957vtm38aVWE57RXxz4Ua2SuT4WCi8cCSze085V+wgiVsMkQJYchSsO+llbGGuvM/DKFqRfn8MqvioWnntS99KA522ZnrpkpJT3MMgEb7xs216lM5/c4CdTSICOSKrjdWkSC/wPX5yvJ18BmhmxxbLmD5qkoUMxRBDFCK+8HM8DsViVZT2wZxkSAhoQ1AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAF7oRTCRIrOwRs2ruKAZ4sDXB/xOFtUUP4PQJ5wzbgMsv/co7xGPk2KIlXX7wDX/5xjc8uYWRO8AhKHzbTjbMBkLHUtaEfTera4LvRhNg2KtP0CABnIYBfxvIRjvrjUi23kqd8x98kVg6ehp9QRFdGhMEEvTCVYwjnt8bw6vdBqcMJYmWfve2JpSrdRKHetZu4prtJQJIwt8ITqdpibtBI7dy8QfuLUArEd0D54pZqdLbQsEuQrePi4zG/pJemuiEXV82lRE3/3H12fVo5WEId9XKtonPOOd1H7kaTGEp0IzdZlCoFdlqNMEPh4J9h+DlCPLx19RQeq/4Za9tJ5UlUQ='),('6c55e83e-a72e-4059-9bed-340ab19b716c','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','saml-user-property-mapper'),('6d98ec32-f3b3-4860-a3d6-59572e129cfb','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','saml-role-list-mapper'),('6f7c595f-3477-4c10-b358-3afe9156ef1c','82002ae8-25f3-4644-a9be-46c6fe9692ec','keyUse','ENC'),('6fc2ab3e-d6b2-49e5-a9f3-43f51de202f9','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('700c975a-6b16-4213-b1e8-88a70fb27298','1ff5c55e-63a7-4427-a828-aaba726faff9','priority','100'),('70ce8095-bbe0-4806-ab12-8509a28f15b2','8a5b6db2-4847-489d-a595-d27e58f52b4e','algorithm','RSA-OAEP'),('70e4117f-7b2d-4863-8f17-bb1c50e22458','4d676a20-4622-405d-92f8-298fd32a97e0','secret','ygrDz-CXpLhEKAeMNz8puQazzaETTBIIo1x-A9okvcCLi5eFUzigbu-3Ue6xpNkQ0RFESxQ4uX0CHvdaCkimKqlM83J3jKf0Z_dnTPQ6MPAcgUYgfh-VW7-0lqZJ6dfdRSrcWlfHjTz7F5wrBpqhDB2fKhHeFTFVCUmhPRDZ_tc'),('717c71e6-51cd-416c-a125-b8e2d94e8c8d','4c76ae7e-4932-4ef7-8160-bb6357edbe1c','priority','100'),('7392409a-1203-4365-b0e3-f8b75a512f4f','f9d810f6-e6d6-46c0-8e34-4bf46e7d6117','keyUse','ENC'),('73d8593c-3ac9-4ebc-955d-98153fe47636','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('73dedfdf-8cd2-4e0f-8b23-85aebb196bd2','30ce9a38-6ee9-4ee1-b0ea-36e5db6ba314','privateKey','MIIEogIBAAKCAQEAkZy8MjZC+//C4DeDhelz04RVGPDvsR1pgVDxIiFrUX/74qsN5gBg3u6wC6DfZoShjQEYd53zNyHaMv6tWOv/AiWq2x/MdGsNNU+cZGNxDeUtcmItosYHgDkOaCWBunY+dmxx8aGP4PAmrlwheequhOyNjzsdtDrhzppzJsi5apjWglgGb9/fFFDOHCALZZEjMnYOWsCoNnpLhYTHfLAiAfI/ywikrhUo5Iec8S/KB6Wffa0GfjqvzDl9XccjN7HBqo/vOq55xWRUYYC164PJ2W7NaiIvildvXS1FAqwKsgZvdtzn2wL4FHqIQ/2KWNUkXgPW0z9miLRmfyeLi/znJwIDAQABAoIBAANTwwMctUwfzHqmGhXBv1lKcU1YGAoCg4omaNQgUlzy4TUNNoyWXqBJcPFbFC+6AR0BNOdqzwdn+R3oLtrUzadlZ/GI2PmiBpO8xXSPxyILpg2yi5toDfzSkO81SDEUCZpYIQRl7i00H5YlWch44dL8usFWlveqzsUTR2VP+dijK5FXAgq69/zRGsvBDjiTu9ydEtgoJnz97RZaUicE0mf3poTTr2ge3uLh60Ua8K2uYRxjhQ4wbKXPmw9eRV12J82ceTXDA0deLob2XCHPeysDlSSxXUMwo+ua5yMeASm5+Hy9d05RGn49j3NYB/NRu5qVkUPZgxwpU2mYcHlCeHUCgYEAzB16an3Shaa5mnwaxz7ZHdhTel364lq6zzRYQEZMMs1wuxhQAyBETwTcZirf4mbXAAMK2nBUNZnmiIArIDqjZemazN7MHj7XjJj41yP2L5R788E1xp+cLOY1g8xlaYy4oEQ6JrAzz8zc7b+Du2OWPJ2lF08baSDduiREQyzQzlMCgYEAtqBCJh5/bBk101FoggNW7ky59oBn+yvEmcIwSchjLY2P4XF34s4htcJ4KKrAxRM/1BYXdFTDX+pPY3nNdldQpHKzLW45Mamv7cugjn0VmSiy4y+hzA8/C2BY0FZ53fcJ57F9ZM4VXY7OzhNk/MxxQ3+M2GdfksmiQ5M94A6p4V0CgYBya6vt+m6DIX02Do/sVVzckCHrnLdBIF9MPCmkjkO0ztl86BoiRnpEWZM7aplqjv/DL/FrlkB+c7F5n2+Nd5GVVajDY7nE0rF+TVphL/WXooMBl7OPjnW77ajeIzxOOOZeYSDAA1JoEI1gcVVlPGRBwpWDRYM2IYhqCl6B0aOTpQKBgBYg4wMFbQEnKNt7IMOoLe9gAqR4uKC5k+/hlMJL8qCBZ660dgdYXMNOVgrvbb4zb+d96cehwa6skIQILToqqE3UzBs0IOAApJ2Wr9S0GVrekJZwnhVAv63cNcbAw7F+joexfPUq93HHrQ1RUkpDZ3H7UZCjLfR2VCAGBlhQzorNAoGAM7JelecRumefd0SaRPC6xkpuaHBk9bXi0XIsH5qEIv+qH9Kx57mIc71KJavw9Oqs171rMItfKvscWDPzYRadI9wLyuJqUpHb7zknysQWbsqukIseuW4l4TOdWYv5hRZIEBL14DGzdtFnCwHJYKZenvc7HeUTI0XOqW3+ZCS1KG4='),('764f616d-825b-4346-ae67-43abbd9eedd5','26ee3b30-ee1b-49e9-8bec-11e9be345865','keyUse','SIG'),('767cb8c4-bb24-456a-b09b-a01ae6dcd2a7','72ed4d97-3ce9-41b2-9ce8-253498c09c4e','priority','100'),('7764cc73-0f39-4eb2-88cb-ae687f6d458c','1ff5c55e-63a7-4427-a828-aaba726faff9','privateKey','MIIEogIBAAKCAQEAr24mflK0omZQCFeKSxDZGlOlyZ15PnFQ+A7IjjLUoBwNjyiY6TlwOTHy1TKhLPqhskXXCc58C3hXzzGabVBka398OacOHDjazAAqG4NVLf/US49VRf5OoMdIP6KboSvv2LiFhy4MOd0AcyiNUrdZFx5ivQKj/72SUhNOnscZ+PySV+bAOPHudhYgGqAFaQXKk4cl5U9Iz5BpJfwk/iEwa+srwRcE+NsrfEcJO64SiMlls03SGSJf6U0CBbjMqTn/Em6+Hp1jYAqGXk3c9E1okz74WsrX0yRWETgK/aM6kCNOQ7GPC4iiBr7P3pwaYT8ShJfu0GA2kZIRm0WDGmt4GwIDAQABAoIBACf5u7/RbOQM2HPuLs9IOZCsOv0kazp1a/P6umzc3GLXwac7owySUCZYYXN/pAax3iLXk1bivJWIiMnoDb6XMSrl1BL3JFn+Aq214+J9HO3sfB3zvYTDnHs6rhYCIeCqOG90LMlPDu4olC+pr/qHWT/RZsKXVXOzaSJWz/WSfTKlSsXRrJLrQNiQ6uflmP7wezeaqr9flBml9yxjbYwWghHYnMKkYuduvebm4AhBqAE6C5VmlcIQJWfynw95SHY+Vx/b4Dl41zbjOoC3kOJjjmx1U4L9/RueeioxMokVHL45RAXFRLamTPM1YFPHiamFA/GDaBEq8Joh68RHdIVMnuECgYEA1a3qG7t6zna17L0PJ6KOsn968w81dn2Fq6Vh0DVO9HvezDv7gKEbRVyHDrSpstgC0FdAGqgXQZ56SUl1O8qjhVOhg3VASyOWBLU99ppFAUGtJNc4iZ7vaiMrLAQi7q6DFY1/b2PGWinvJp6VOzcV7hNbX3AHmxoGVgyoc+K9nKkCgYEA0izpGASDgW+x3+dhMix4OQYhWIxZmWNAYYMG13vrvSYRiiXhcoSiOGC9Sddz/6U4mUcI1A7JXtBBt25UgN3sMmWCLfzTzxzWZfWvovvqScPyKlDodb2FoVmt5C5W0Mc6FbCV2RmQpOJKgmLla4GKG3NoWSEBh4eMLhjcVZcJxSMCgYBHS8cgR7bbKtrayd5DoEayojx42ytAhPNT6VOwsAjPJIGbbawmKBs8Unox2vAAX3jY4TPfcRSJbYJp75uxPpS/CL+MaFPyfkYw/fRV0vWRTMOj1jfkG2bQ6Dkgb6TkNNBCIbtShF0LepB0N1edsWycylKjjnLLOqzAi2qteAtCOQKBgARSsCiyTxImff4hADrL910U5zKvEFi7VeOrkkR0ZBDr64hv5wc3+y41ry8Jo3UqrNNaRrA17aZpmjBvsIVGC0muFNNlU+X6rd5DA23SyKrjwONl7qIdV9ZNxenfmiGJN4SisTJZ+EOr8+RirF1duL1/zjGnICTtgNCh6kZIaQcJAoGAcUfINZeSMzxohu0/y/CeWWn7LZA3cx95YNLnzBDWXFnToZOxHkb/nd+aiPvrumeIN+fWmhM7Pop2zIkv+9rZ3Z31iPRc4Lnu0fgFhqF++2u2tlLHsXm5AhBvJtazFdJEIU92m1Y97pZncmRtWfca1kaTobpnJK45WZOWXP0T1WQ='),('78805fb3-81e7-48cc-8d3d-8531a80b8d13','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','oidc-address-mapper'),('78bfd7a9-3ac2-48d7-aa44-feab4aa150b9','f9d810f6-e6d6-46c0-8e34-4bf46e7d6117','priority','100'),('78d2657c-2b16-458b-88fb-90611f2ac315','c63e09b6-ff68-4814-8949-f52303e2d802','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('78d37d6d-97ee-4840-9047-6044bd996e82','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('791dd64c-e19d-413e-8565-19654de574a0','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','oidc-address-mapper'),('7a9be062-c9e5-477d-9b28-3a619f93561f','e09db6e2-7f61-4a85-92d4-38f96d23fd39','kid','e73e3184-362f-4950-bcd7-6d99ba017dbe'),('7bf2eb79-070e-4c8a-bbfe-d00772f19bb8','27dd0233-1ec0-49bf-a785-d19312250f80','secret','W-NnzyEYA8JdWso1T2J4dNUxdTGMh_wBiLxQ0-teVowdq6BWEgtwlUfvJp2L06bZFr01itst4GIqR1GBnuh-4BYePfFtoxNA0IQ9KQ_Te965M5xExYUXT4l8HVGoqtjFTUiKTKLrxiI1emQiPwBnnTNpNbnRS7DkwH73qvA8FRg'),('7d3b908d-cad8-45e5-85bd-3a47a2d8d477','2bd5f1d1-807d-4407-8ab2-eb82938b9e64','algorithm','HS512'),('7da8f406-6849-4648-ae7c-a578b279269e','13825c47-4934-456f-86e9-d5188d8e1aa6','client-uris-must-match','true'),('8233330b-15c2-4477-8483-ad75c02a0175','fd10c7ce-684b-4bd6-97eb-87fb56b1db10','secret','0GsjAT-eN1R-1i9FHMVxrg'),('86ba8d08-336b-45f1-baa3-d7877638aa59','2bd5f1d1-807d-4407-8ab2-eb82938b9e64','kid','954c5da1-124c-4936-a2e8-b5d5859d0518'),('86f672f0-638b-4a55-aff4-3c43eee1c171','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('87d25890-6f40-42c8-936f-e40068d8b121','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('8a8b3c3d-8c23-42a0-bd13-7aec97e9508f','6169e050-35e3-463d-aece-841f57cbc1b7','certificate','MIIClzCCAX8CBgGQCmCnMzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDYxMjAyNTUyNFoXDTM0MDYxMjAyNTcwNFowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ8D9yS5GkgxAU2HbvZl3KOA7dkz+a4lJFdSh2mWFesWgO+VECNTw8ZcbYh2Fa6FZRKWYxVhlVMoETXCph+0QFFXIJDH5JoI6+9mIND8Np/2dlLmtj/rFQAuSsRp9iJJohivLPNddOkI6JTsEVb1bUR508bBQ4wYueVtTowQBsiCYkPN2vUj6axm2ztYLApWxrRdg8IOHSYjBEPpR5MxeWtsqjjpmPGFq34jksyqjwSt5ZhtZMQcSIbCnqzp99pcOBIDBKK8a4wl/nuKtsLSw3dCnlir+1nK7Z51p6hEQmVRMqrXvR7jn+AF8jDzAm8dOpoacfx5c33MT8xmFowAEVMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAgAGjwhPmDpsXvGn64TKOhEgfneyzvPiL4drAosp2rjCznULY1rTaIAARtpcwvLSr85rkKx25rsDHzw7QSosI1VhpbJahvUZez3AQ37bo8gMuBABuJkuzFzwZreaOHc9pw09QLw2hOcUvo3TtO0l+LeOfHIEecfNFsrcA24Kf9cZYB69sP+LtaG0c13LFM1hKhaGfjYKry5BTjHbCG8JQUMr6x2GmsGJnFyeQXfziuTX119K6FZxLNmT2crxgBhwPnJWNOcAtRKdQqfHWguIPjr1JRchbAYaJzK7t/JyJB+uPgqLy5JaYy2XSpVEqyYMh/s0J5wGqUxHlEBPTgQkefw=='),('8c10325f-164c-4a52-862a-35dc5f28091f','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('8c876c80-cfa7-4954-bcaa-9222e69f041c','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8ef67c3c-9bbd-41a9-a2c6-5561d4d08fd8','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('8f98cba8-3e45-4ca1-bf86-a0336cc102dc','fd10c7ce-684b-4bd6-97eb-87fb56b1db10','priority','100'),('8fe72598-be8f-46b9-becf-a4746fa59624','72ed4d97-3ce9-41b2-9ce8-253498c09c4e','kid','57ec6f1c-795c-429e-8036-0bb7a3b48cb3'),('9013071e-054b-4db8-b618-f9a88db3136a','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','oidc-full-name-mapper'),('903d670b-a777-4b27-8001-a70482b195e9','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('925cffca-b21c-4b64-aac5-46f0feabde37','6e0d9ee3-e43c-4b3d-9ab4-272bf8fbff11','secret','i2YSxY5tD4VZTo6DuP4Wt30cQvMzlEZhMjgUkdAXLGoGNNNl-X6pRFSMbEXaF8gwOWsmeQEqnJKMPGlJb2DWbi2lgVC3VE7auKBKXIxrzfJDok7ZuZBZgJRBCW0wP0hASv0y31UTNEkG1VoIzRBrqLuyIp4tYv8hPP-SMbClP3U'),('927f63c8-d161-4a02-b4ba-a826948e1539','da541baa-b58a-4fa4-811e-05ac4f751fd6','keyUse','ENC'),('93c65a69-2459-4f37-adde-8ff67d860b0b','e59640b6-083c-4d0f-bef4-1a359b05b4ec','host-sending-registration-request-must-match','true'),('94b0bc86-a04e-4d36-8f9f-8caa32b94e02','f982be1d-1d2d-4c3b-99b1-02eb010a7a45','client-uris-must-match','true'),('95d1754a-bb7c-4c95-ac63-5bf769678526','08156530-ee78-4d41-8d5a-8a816e668367','privateKey','MIIEowIBAAKCAQEA7j0K6EONqUTxQX8put0WZk1tXBXdiz8K2Rgzq8Ry+VV40tAXoDOpSSvG1Y9TbRK8yasP/M1ofN+rlPJ7RWv1fAhGfpimCxfC2UoM2QswzCLRUvgnrTPH8XnEXp8jozx+DySHHl+6nR6r0fOSmU/dv5YFkQW0T8INCGvxs02kv4f3jARsritk261TovBbn1a4wi0k/RPYN4VZhN4zdfQISWdv4lWkZLVU5iC45QuK4LJaacySbSUKR5xKnbRlcqDrhznLuri41eY3NNcM8OsWque90aEo9/sWgDqIoUvqCmd9IOY2s+PhNIVia6GAoj8rnWgm9my+CtdZ7aQ4ivbz0QIDAQABAoIBAAn07SbF4/7GDdsx6FmR8eS2qbJmi4rNSLPICijMng2Dn/gXkFU2s4WGWdoFEnSFivRWvOVQ5GQLqQ0hkTtWhrz3T5Ls6EugY5lXOfA8Qn7VmbABBQ99EYcrEqTtu7yPw6j4WtlPIOp+JKoyptbXeqoOKA9mkKGgt5C5ijF3NkJ25J9f9I2oDAj1KTzcGc8rnwfV7OXvG46mKilVOS6H/FxPLMv+vcpKjFTnpylODDzZWlw9sMjK1Zx3zTX4s9qfZXZvByfLEqHSpSBMb8GbJ6HJj8WAea0d05vW/k2mLU4XpmRIrMGkApWhi19wO4o2yKdX4b5A6PovvH8e1uOo4AECgYEA/wsoNldH1i40ZkkDT3DMr4Yt386X8YyU4uLIrEUPvyvqeBL2XzD3AFeOX9h0KTr4qdzkq9xJLHgmLw2FZ1VgBsyuPQGHlBNTvvzyHciwMpf+BKvRvwpXbescMpiIQnlomjdjDPHjoHmSEXQS212+pWFz+PiVdeRbcgqgiBWK4dECgYEA7yHApZlJRp2ok2+r7v7U+d0Kgsm6ef2ufrfTTpMDmz4+hgwq202x70rPp5BDfinsPAmtM9Dq+FN9DdhYsbkhG4PSiSHZ5rWN/PGOYXXoVtqhDIMokAGv7Zc2P+qfrMZ2MhU/ZbuS4MaHLVvJz5C9MgK0DgOTH9ulPzI9uuFNcgECgYBTu0n8bTM8cfbqDdZ0YkgQ6DBvZdgkiU7oHiRbymCdFsHnofIY1m6BQj2P4fRhBOdWfRrmAXBUlS2UDRBbGIBqOxCJHtNwHdhEv66NcLHIKnZO+knmOnLxt1qOkd1KVamt17lBKrjcmo0GBeGa+2/3w8LbXmFTTyFmk26YvtnVwQKBgE7at3ckC/jARnWPzod5+usGC9BDCz3s/FyG66QucHMB3IZBfuRgQ3ugFMexl8ADvQWzPy0mCEWo6kTlgaHhZVx4ZLWZtwwP9GljkkrrIZl6cL76hSavl77mLRp4mPzVWOZ9ATHf37hFXxADA5JxrSHPqGYyoZJQ0LX9MEPuxaYBAoGBAPJbGam/NbOntZPiEyGIfM4BPdV7yLCIjN31UJNPp/LU2pJePuB76vSj0i4dMfTN8j425q4E7TDL2x4YOLBjdi+DZ3htHMfv/H5NPw3mXsnkQAXuAErsT+abYQ5d6zYWTUtpULtsKxtIOnjBlBHu7LtgguDw6LxOjvklwWYi+19k'),('978ee3fd-bddd-4de5-98ef-c0f13c3e301e','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9bdad256-cde6-4b98-886b-ec4e62a78c35','4c76ae7e-4932-4ef7-8160-bb6357edbe1c','keyUse','ENC'),('9d39477a-6f6c-4ee0-841b-17a08674ba74','a2bb2b48-ffc6-41c7-8ccd-2bb0bd89f8c7','kid','1210da92-85be-47b7-a9d4-092d3a713de3'),('a2a2af0c-2132-44ec-ba06-c3fb54bb2cfb','e5299903-9f11-4e60-9bd7-3b6f1f1c423f','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('a56463a6-01ee-434c-8f81-6ef10bd62509','6e0d9ee3-e43c-4b3d-9ab4-272bf8fbff11','priority','100'),('a5b5ddc8-7caf-420c-9f04-dabe5ce4b077','047324ba-30c0-41c8-bb0a-8f00fb059eed','host-sending-registration-request-must-match','true'),('a6840b90-378b-40d2-be66-eae3020d8cf1','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('a777aa8d-f01c-4c8e-8383-b4da10ac6b94','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','saml-user-property-mapper'),('a90e24b9-aa22-4bfc-bfdd-0554318341ec','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','saml-user-property-mapper'),('a976e438-d41c-4151-a3e7-468a62b54169','4c76ae7e-4932-4ef7-8160-bb6357edbe1c','certificate','MIIClzCCAX8CBgGQCmAmvDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDYxMjAyNTQ1MVoXDTM0MDYxMjAyNTYzMVowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDSlkyxQYf9l5xn3NXTwWl5FEvuln/WWNCQqpoDuuRrAytsIHY/NJRVKtxWB0SDRMpI3/IXdMT7Oo2IZ7S99cIAf1zjRk4TpPry4uiPRHI3nYTo24IJlvBlOArHhOv1WGbRLrKFnJ3kfStdgzvHConKYO1DFAdETYoMyxPWdakypGRomwPgI6W0ZOSSBldXCK9Vc6WxtatzmeDxj0iF4HCUqYmNmBJ2kZG7vR9QocAR5wWXF8n9fdtfz9gosylrigEQE+wqbGPPLYg+8atYXiBbAOd/rxUu16sjqb/tpM6PCs2bzpfFn6mqyRaxAKiOpPeAYqdhYmgJhQc54wBHXicCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAhR9bhjVZMFN1n7x0RMR3aFid7p7oA51DqnepPvnL785Ektlg4zKUsc3OPkjzuXrjq7uxjzZda1IBqFq0sx/KsNch0OkO9Y/GYngX936SPhU7lipi0PxE66uwXE5MONMnQYLAA5Z4FnURqipu9KU1Uwf7cu6EltzevpvfqrTfQ120rI7pvKwfY9AyKzj3j9dBr1JEOPYh7dGWoKIyAakLuD111a09JkwUdv/8ouPFeVl/JxlSHmbyFF71EWt5mb3tS1gMg0ys8+7mme60GcEirVJXMQ6v8YnZeXgmsuan4n6X3ie4bODt8+T7z8BmqoKLWOdh74W1y3jIdu8lRMatoA=='),('aa183991-8e90-4134-b0f3-5ade3cd200ce','7a162907-153d-416a-ba3c-aa8d415ec8ca','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('abadcad8-ef48-40ae-92c5-3466be2c170a','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ac99939f-6301-4c62-8811-78d985dc0d31','e09db6e2-7f61-4a85-92d4-38f96d23fd39','priority','100'),('ad22fc77-4f11-46d2-aa63-9734802057a3','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','oidc-full-name-mapper'),('ad4fbbb8-3235-43ba-88f7-ade4ef524dde','26ee3b30-ee1b-49e9-8bec-11e9be345865','privateKey','MIIEowIBAAKCAQEAq7SJakFISXw9sPWECb3Enrdh6rFUATORn7npjrpdT35zLlX8BK9iRjmP2jFXCr076l2VqrhyWpwcYtPrnNzqP0waNa8sqGAokxrzQYryC0e6eYB66bKDe1Gg3kRPSPK1XvOhJQjaakgL7bWrTRCak6qb9RWlxfIkl5OjlB5oeuk4Di4a1czYyuK7TTm7oPGvQbotAMFK36zzw/WbDNrhIe5m/OKNU7BrDV5II65Wk3AtsWEya6hzC9uHCMmafEcF9XYkyg7VQxwCwW9wvRsiMcNO/Fgov1+bjXhQQZuaNfJ9+6mJ06ZQm60EVA+cPzugQRVa5jyt0p1LoP8fI79ZhQIDAQABAoIBAA4y7kAiqOMmyoU1MFeL4VQMryS0yFEXHh46xgUfBTNbLhQxWRdcF4DeJraw6NVDA87kMUm+WfqDOVe01aGRpS9Z0DsLQuKjnQdZLa+IWW60XkfI56EmuXe7rtViibnrFDOHaxaAbmtmjNH5+XH0gwveCmqQgTZmyT7dnyPTBenP96cNgW13cMfJwOPe568B/y8kxw12wtVVlQjkikUIOabICSE8JnrJNNhXI1KFEB70c5uxIwwG7n7k8u9icUeET6A++LG5Wda1fkFzs+df/pbhi6T5rhdXJAoKHnE7UOZlAB6NwHp0y+O4fH0lnVk0zDop5nA05VyYXXF9yXEmtlsCgYEA4QvZJGEf9DCQapDsfgOesp4KN+D/2phrKglTmKtu4PtJ/ZgfJjHv+aPPzBsKXEPa844gJ/oOT700Fo89eo/l5mdvav/H+ZK70B0FXBv2qFeqpDK+lhvzWH+M2jd2tMYBc3ebiWKCvFHsc24V6RAHJpjF1pfxO8/NUMxkJQAGeZMCgYEAw1J8Pba+Bz1/4/eF0+0fTPuMtaZjrtzWHiqCfqI1GkvVF+vAv1mBin4tHyigEve4D7BKqnNl6qGaw6qt8ENosrHf2kekJd8f4vTQPK7AYgDS/do8TPCAoG7dqzY0MdtEsmSZ3lO+pDTC5PMyYmTuEmZKh0ziq7wcnqeT6xj374cCgYAzVweflAS9KYMYvJ0nFl5S81jzbIIR9WmlOmF2181AyDMWBmk8xnGvqt5R+u0/JT/DBm5xkEtJh6llaCInXsKc8IXrjBSr6/yquqQpYjvAJdfJA8aU6iV20AprEfIjxXQ5SlUSX4XhvnLJ1phrBfwLoxinHxyqf3qgbzB9fGb9vwKBgEXR/42D/IvUBRp1icZG9jBrn1Hzx6BjWrrv0TP5QehDgUoKwRzlnvPlxLVlrUr6eDZLe3VQyPbFi/Az2/eN8Sgng3CguWG8T8auYp2+jhC6YLHTyEhslF5FI0InnyLPUdA/O+2InBZQsfZrpPAdSikTncKdzk07cjOYjby1cTOTAoGBAJJaPxrFBisYqRxM0EVJqULxSEU5UYs6GRWHW/Ur4AZsaw8Egp+pyH2itNcfYb1sDYhAC8CQdCS1XgOGBZiMnMJr3uY/ho7WeRBA4vAl7UbtACtnvzfhdVsrmwUW3xKblZG5DpYBd9txH3eUQPBqZdWwXpmHVmAXuXibq5i1kOhB'),('adc535e5-17b5-4254-936a-709aa1dfab96','08156530-ee78-4d41-8d5a-8a816e668367','certificate','MIIClzCCAX8CBgGQCmI2qDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDYxMjAyNTcwN1oXDTM0MDYxMjAyNTg0N1owDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAO49CuhDjalE8UF/KbrdFmZNbVwV3Ys/CtkYM6vEcvlVeNLQF6AzqUkrxtWPU20SvMmrD/zNaHzfq5Tye0Vr9XwIRn6YpgsXwtlKDNkLMMwi0VL4J60zx/F5xF6fI6M8fg8khx5fup0eq9HzkplP3b+WBZEFtE/CDQhr8bNNpL+H94wEbK4rZNutU6LwW59WuMItJP0T2DeFWYTeM3X0CElnb+JVpGS1VOYguOULiuCyWmnMkm0lCkecSp20ZXKg64c5y7q4uNXmNzTXDPDrFqrnvdGhKPf7FoA6iKFL6gpnfSDmNrPj4TSFYmuhgKI/K51oJvZsvgrXWe2kOIr289ECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEA3/M1KjrEcU/Poucvutz9jA5ebLEmYT6I8x1rSWztsMv8qBUJIzsosb8w9cYATafIB88WIEOWA1255gDw7992R3viYZrNpwfYeBuIfofkz4BueZXUWKYkgPEqCMbe4FZzY0SRF1EubmVVw8oXtj6T8TQTTTLf2hqz0u6KosrNc2EvI3IvvspTKzXRvyenhAfzeGWmAHX6JuDxpUOdths848sJnkQLxp5HXrwBzmP+PLkOwZtU7BZ3xP5IPpuxN2z6CJfIF2OfreNGUuDEIOgknXlXgDzQ7Er2ZNdMHoSEA3InXe5k8z2KcQeZCPnUS9wxO4ydhrSRdpcpEzBsgxZ/ig=='),('ae44b3a6-fc1a-462d-8398-183d56df1bae','ef50d26c-95f1-47fb-8e20-0509e8efe891','secret','uQGvXfb7FS_1XtaUDkQQMg'),('b089ecc5-a5db-4c1b-a328-29557b6512ef','893cba9f-480c-4892-a6ba-079a1e0c5cfb','allow-default-scopes','true'),('b0b16849-b5ae-44c1-9442-9c62c75a2c2b','1ce52ae2-3898-4e1b-9501-884fae929f9e','max-clients','200'),('b0e9de7d-e9a9-4ba6-ad80-bdd348df13dd','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b1abfa61-2c56-4862-91d8-67a1e1a01b48','9ffbdc02-424f-49e8-8dd0-8ca6c7fed329','priority','100'),('b2b35f42-7ff4-459c-86cd-a349118bc630','30ce9a38-6ee9-4ee1-b0ea-36e5db6ba314','priority','100'),('b2d17621-d13e-4464-9660-4e57e1bb3fca','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','saml-role-list-mapper'),('b3236c45-f4cd-429e-b292-6f120ef7a624','f9d810f6-e6d6-46c0-8e34-4bf46e7d6117','algorithm','RSA-OAEP'),('b6e33469-2968-467e-8329-3f3e7b573e99','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b74463e2-0718-4510-8689-dfda25585cd7','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','saml-role-list-mapper'),('b77c3d91-119d-4874-8735-38be17d73390','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','saml-role-list-mapper'),('b8abb1b6-9b98-4dba-9589-c8ae411d092e','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ba5f021b-d931-4930-a970-3c287f6190c5','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('bb918519-5e5b-41bb-a7e8-ea46066501a9','a2bb2b48-ffc6-41c7-8ccd-2bb0bd89f8c7','secret','YETWKpAHj8Frt6rzopa71g'),('bc220b4d-bc0a-41a1-82f0-0ebb501e3604','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','oidc-full-name-mapper'),('bc739896-afc5-46e1-bf2f-bef970a1fe94','350f370b-8f24-44d7-9ab4-97f8d2227024','allowed-protocol-mapper-types','oidc-full-name-mapper'),('bccd3de0-e175-49f4-a360-50ef04500dcf','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('bd0d24d3-41c3-4f24-89fa-645d180b8a3b','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','oidc-address-mapper'),('bfdb141f-aa50-4c24-88ea-b68e3ba60f12','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','saml-user-property-mapper'),('bfe319b6-143c-4b36-92c3-3434e65f3eeb','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('c06b4455-bfe1-4b7f-a1a5-5662b9f248eb','72ed4d97-3ce9-41b2-9ce8-253498c09c4e','algorithm','HS512'),('c211a8a3-0a96-4738-8ce9-8600f3180119','80563658-d7b9-4ef4-b43e-35ea4be8428e','max-clients','200'),('c320884d-a820-4c13-b1eb-a960a696959f','4108f56e-6872-4979-aaca-d1d5c68cc9c1','privateKey','MIIEpQIBAAKCAQEA1Fi86QLBT3hT/2gWCOuTKiBXdmyf1S3e5qEa4lNNysLwQDYSFqgI7XyfwbNZo8XbWtR3GormK8arfBFJIe3hV0dqOTbEDX1UAduRNQEImMyP2L9nLBx1lr/ZsI3reySVsbEY2KEQKXTXNWu3R8NmLcGsXYWIqvUIGmEA7Mo0M4j9yGMLWkw/jXVOrMfqImiK9S6QzmsDrBnEgnGTknBxHQB8d0nC9xWsToJ3nC5QNGNTH1+gOaedwQoxHlobF6Mt5hfq6mykM0tB8HvBlKpFC7JQQlv9KH7NY9jMzOR0pF8tkAsnTaSt1KbE/1L903vvGSsT7WoaWTI/8NfIzzspMwIDAQABAoIBADKn4JjtcVQV7mPVXrxOBlNcV8EGdLKUOMJn2FP5b2tZSZrnyzTgbRDKVAoPUOkCwCtQ2ADa9cGnqSz1qq6PYtxBSxPO/sIBDdNLn743OufIlOAt+NzLBTorFjFKCczck2FKUBUNhx98ogI6agSSloN/2jCNNGckAQTZ8zCJpB5OtnudlXe4x0uA28pY/PSWXmI3O89U+l0NW0XN0gi4mA7bx1SAv9ate7BmTn7es00t5Kf2eAPDeEVL+d4hoxRTId7hJ+WLygxq4EyBp4JTZpndcjUJAoLEyYicqdLTmD4+QW2qKEKmi8maL1W6xlNfFl/mK+tOogzWLFgTcbHwkOECgYEA8cIc61RL9M8fQedVqsImipODbWtP456OrtM+WmtFUcRF6R9sw3Qxf5z6G8plfyA+8DRppVhgdQWuMQyVQSWRWkkG04yVgcBRfOQkGEgbEd5KnwcbsMFtvS92JTGJAuHu1ILUQZCZwfS6LR7y+aHMECVFWTioSkKtDPbsj0wJnpkCgYEA4NsTpBRO+LPJ1GPoFyJffhiLw56Qw90UQ/j/rcOJCMI3aYSY6DQK4Mhso2PLEtdGUTPwtS+fUbijHMGCSQgCEjJrNEXGX6dkUtyxdY5FoVMhm6RSvl+LvJK7fvk5yyJzf0VrMvKbZ0Vhp/UrQbHPrKqpT2VMc1F/ct2ghxKQoasCgYEAjqnwCuc504OOfIOZSCU+PTSDsERNZpMgvAYom48F3xSl9MX4lvawZxApf9DWSEitG26ykUIv2Z66hnNYeJNEzTSe9KPXbjQhYkP3EOUsJEU7X9EABDSBH80sORKcObk+COYTf4VnVs+mNg43cByMoVJ9NAN9PCVQnX/xZTaHzrECgYEAwns55bTbCSkX7GftGfVU+s9oM242b/IL0S7Qlg6Fu9mf69gQGObKcdlofXmW71jbLOjrzQq/lgNIsVp9wYT3pZ2OM8wV5C34C+NuaesANqSccO4T0yz4w8V1/kC5yASoOPBl488KsqvD522aWFve7808W7uWADgBL+yZJ7ra9bkCgYEAiq4AWEZlV6lU6qdfXyjPcnCFJRzHUR4XrAODe7rlwtdQYIfRVQb8wiUrDsjomK88j9VZRTK3Rd3UA0r710JpXcMoWUmUnSkeDsvMmqNZM4e7GIgNamQwBTs1ctTmGheTnVMzQU/ta0Lh1uCB43nzbUlwBPELJDd8NqaQQJmJZkI='),('c5604262-bc51-4b7a-9f43-5769e5c4bc61','db427c31-461a-47ec-99e6-7412ec90c124','allow-default-scopes','true'),('c839b8d4-029d-4f89-964d-11bbdf3f6bdb','047324ba-30c0-41c8-bb0a-8f00fb059eed','client-uris-must-match','true'),('ca154493-3cb0-4dc9-b1a9-0b38de9a405c','08156530-ee78-4d41-8d5a-8a816e668367','keyUse','SIG'),('cb25c660-3b14-4843-880e-d20ca42a82d0','72ed4d97-3ce9-41b2-9ce8-253498c09c4e','secret','OFFskhQh_xrNgqrExdlmmWI_YNqri6HSBdGFiAw7k3miS-NAYF-LxCbDntddXLIlYzGRAoihEMMfMGUe_vKgmLWS4I66KbLUZ2ufQ59_8UfDKtpIf7HyXHSXK7SmsEHinUmWrGby2kuXtT_LVIAgC3bg7BRaISpjmxl2eP8Tsc4'),('cb69bf5a-c1d1-4a66-a9f3-28f9e016fff7','4108f56e-6872-4979-aaca-d1d5c68cc9c1','priority','100'),('cb77e1fc-9afe-4ec0-89e9-cf3742e60c64','c990ac71-bd66-469d-a515-f8f89cdceba5','client-uris-must-match','true'),('cd2fce23-0abf-4447-8891-934ff04160e1','e09db6e2-7f61-4a85-92d4-38f96d23fd39','secret','ww7a0THXYvESqEiY3kbfiA'),('cdbb8f20-ab90-489c-930f-6ad6d69da1fd','ef50d26c-95f1-47fb-8e20-0509e8efe891','priority','100'),('ce2b01ce-697a-4820-8500-dee038139f8d','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','saml-role-list-mapper'),('cef12392-80b8-491d-8d33-2c4e0f51283c','c880e319-5b91-443c-a0d2-fde1819d21b3','allow-default-scopes','true'),('d17f8ebb-6f2b-46ac-9310-29123ec07150','520c5618-7f10-4acb-a5f4-0c2a359029ad','secret','2FwU0v7vxUKb05dx6s6wY1OfSBjsq2L5SgAVDT_XH9VjPIniQE7Y5R37erB4A7zKHdRm92-JDsxludVXAl-TlMCtx9oNOMIShjYo0B3aMxdfql5ygnwm5u7gnXx-JPaebV5ZtQ_s0c9nqR2DKJFrovqzNtd9flogMUQOpn_nboc'),('d2a30c7c-5fb7-40cf-b584-c791bea20cf1','2003552d-7031-4cc7-a299-fc3787548ba4','max-clients','200'),('d423d96c-ddb9-49dd-a0f3-5f64e15aee03','db97e911-31f0-45b7-99f7-3d8342bb0d82','allowed-protocol-mapper-types','oidc-address-mapper'),('d6f29a65-0632-4d4f-aba2-72ed99455657','e58dc8ac-8d42-42b9-8140-4afef1eb48ca','max-clients','200'),('d6fcd455-64bc-4eb7-9804-d44bccd66b11','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','oidc-full-name-mapper'),('da201227-7798-436a-bc13-3a9a4a25eaa4','0583336a-af41-4df4-a4e4-6674154a8b92','allowed-protocol-mapper-types','oidc-address-mapper'),('da3a4a09-b4d7-442c-b4f2-dee485e2a73e','2bd5f1d1-807d-4407-8ab2-eb82938b9e64','priority','100'),('dae24e20-1c9f-416c-8328-1030ec44ad84','1bfd2538-26ed-411a-a584-2d7e527ffc4f','allowed-protocol-mapper-types','saml-role-list-mapper'),('dc4d0ddc-be09-4e19-beb0-daddff3fea7e','6169e050-35e3-463d-aece-841f57cbc1b7','algorithm','RSA-OAEP'),('dd6281da-27f2-4058-b472-2ff9abba1e66','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('df97e179-f135-4e68-9e86-e10ae516cc1a','8a5b6db2-4847-489d-a595-d27e58f52b4e','certificate','MIIClzCCAX8CBgGQCmEdzDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDYxMjAyNTU1NVoXDTM0MDYxMjAyNTczNVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANT9HT7yhhw84v1Z2xhGs9+//MFmqsUTrnmgaN/VxX8BKJqoIGFnSDARLr0eNw4GWASKOn62/Fe6N7lAQIz+BJftK6Z3hzUJ5shjPhp5W0ltgWTmedauAC9QpHLJiFjHrn1zAb3CmJBPTvT27K1f80KpmYSzr7rxKc8ysdAnxLFhLkRlGBUTw8WcjCFfXjnYD+GsAeZK632/FMGTsQk2EI61XjaJSaienC95eaIVAbgo+pjHHmGC9SVGIQTLPK5wLAOoKAQq8BehZl7AuzUIMybOqkxoGz6KjC1ibPNUI0uAQwpX3m8lA06gapKxos4ssubpcRvfsjff6TNKR40951sCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAAfrnBMmC85k2xZUzxzp9FZknT6z23Cbu43fmTt4Z9srlAEtN6C0umIVKBkJISJ15OHC52H2NFEKsrzWauUgb0NKs9MUr94xoQzZvEj/WFIgL39uE+G7EjO1vIQol20anbjB7iuDcpe72T0Os/8gdsbHIZo/oEV+o9znxsqLQlvtfNIQNFQ7cNAKU5e0JXlLTVR1F8yGsz+F8UAwL6PlPPbmqKxt+iibWhwLcLqt7kFFwCQHcvlUhCoPcctzjHPVzh88UISDb7LyPf+KCnOwTkQDXBfa+4/5I4q5nH7lFTSyWOrFMqqQxGYee0zpBdNexM8K3P20xYVHmA5qlrMNxmw=='),('e1da4ad0-936c-443f-b3f8-8b97914ce6f6','dd9b9081-acce-402a-9936-2fa41ec97c7c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('e3184d04-5078-4274-aabb-35cb2ef56442','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','saml-role-list-mapper'),('e35ea8d0-6c85-4e2b-976a-0f872433b747','4108f56e-6872-4979-aaca-d1d5c68cc9c1','certificate','MIIClzCCAX8CBgGQCmCkrjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDYxMjAyNTUyNFoXDTM0MDYxMjAyNTcwNFowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANRYvOkCwU94U/9oFgjrkyogV3Zsn9Ut3uahGuJTTcrC8EA2EhaoCO18n8GzWaPF21rUdxqK5ivGq3wRSSHt4VdHajk2xA19VAHbkTUBCJjMj9i/ZywcdZa/2bCN63sklbGxGNihECl01zVrt0fDZi3BrF2FiKr1CBphAOzKNDOI/chjC1pMP411TqzH6iJoivUukM5rA6wZxIJxk5JwcR0AfHdJwvcVrE6Cd5wuUDRjUx9foDmnncEKMR5aGxejLeYX6upspDNLQfB7wZSqRQuyUEJb/Sh+zWPYzMzkdKRfLZALJ02krdSmxP9S/dN77xkrE+1qGlkyP/DXyM87KTMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAYcvK6U7vDXBa+PQA/QwSl/moZk0xpeSENTlpa2J+5liVY+1DTyjJkumPfrfi6+pQnbS7cycgdM1Bg2sFKMfRyMOpuiDlKkCpiPuWSUf3wgHF0o5pNBnoviXgEP+1zW+ZdtQIBt/YCVZvepnRYYuXPsH/SslsHfkNa5yYWve6iX/lP15u8SVJ/SR4zZ30SjoiHGN6Kxpt6+jxhxCVDdAQzWXmxcPJCOzO2YMaaPZSuzmefEHHiSivqN1YPe7X8d26MvKGEnlKAh4lIiDVpwBpK2+Fvu3xlSvY2rmnJtbI/0koH9m57M/bpueW5HisypZx7IZtbN5ZlSFSxv4TT7WBlw=='),('e5d04fb4-98f6-4dec-9edc-20f1855ee4a0','de1626ee-e345-46c5-9d0f-b0d371ef42ff','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e6e77453-fe25-4d2d-a402-05d35f4eb421','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e74bfc71-2338-4b89-8dc6-5ed041a4e216','a4fdadd7-db82-40cf-ba25-7a271b66ca3d','allowed-protocol-mapper-types','saml-role-list-mapper'),('e9db58a6-55e4-480c-8163-df77009d45f3','20bcda7d-9f25-48e9-a52f-bb70f6e1a246','allow-default-scopes','true'),('e9e648b2-781d-4af5-a53a-e38d385d4536','fcd40c96-3f95-413c-a9d8-aa65d8e0cd83','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('eb756763-e87e-444f-9730-5edf32802d49','fd10c7ce-684b-4bd6-97eb-87fb56b1db10','kid','0b04a649-6992-495f-8268-ca54a8aabe49'),('ebeb498a-fc8d-4a86-b71b-8ab3c9785d7c','1494d7b8-e23f-49df-a67a-2d290fd90921','allow-default-scopes','true'),('ec4a4c9d-3dce-4e98-9ffa-1e730c6fd145','f4f5c459-3734-4680-b7d8-1042f60f605b','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('ed1c3e3b-a215-4ef2-b977-c30205f4bb1f','30ce9a38-6ee9-4ee1-b0ea-36e5db6ba314','keyUse','SIG'),('ee69920d-bf4e-42c4-b4c9-a26294605667','b84540a7-06cb-474f-8eee-ab6a3241a1e9','secret','g-Rb98XraKM1XGEuXTQFdQ'),('f038ff7b-0641-4710-aced-4e9dff20af8a','da541baa-b58a-4fa4-811e-05ac4f751fd6','privateKey','MIIEowIBAAKCAQEAwnrRkAE2A3X0E8T1p85qVxrZHDqjC1f1nMd84JKLek0+OkAp92yjtT++GOyk6+VTw+rQ8D7AuyLh8jkCR5qKX7yU3sZIfpMIdTbdks9JxOz5FVK5Bn8OqMi7NGCvtk7e4N0CbIzZQVbglSUj2fG+XQfsi7KVRmT9Spo2NuL9CK80eS+pq8rBGrOyE6Z8GNMvhjmCKNHaZp8NUGmHlYPaQJ9ux28HryBWfmfncL2HcgWS2LRPGPQS2dlfd5qkFTJLYW0h/svhoyf87tV3mR65ymMW3kbGVeOW6t/bAi0NB/B+aHVfed/E/SFUc9X9NqOOu0qQ7+dg71tnry2hhpKudwIDAQABAoIBADdOD/xAq+iOCYv5rdY7l/gPVYB2mFkoeVtNS5Dde7aa8sBD8OtAxMlNSDT0Tu4aeBi11RcM8WgGQnTMi35rT0Bsc3Vqs8Dy9SvIH3iZZCQRM8BBlwZm6XdMJhh+Clnw0ebmUsMlxr6TAyjGuAxJd9Yi47zSWyr6myE0+4feQxDNqn/ICOrljBU8cd2sjAThe5hpx44Z0iM4M6FJR+dEPBGcFkRvx6ZQbqSTqcAL5J5zYfzzD6wxoQt7AUbhi0p1yUwR8r+bpJ8TR+PeUUyhR0iaS9H0fhTVvfSZAAJX9Nc/QGo6Z2yzY6KiAArI0DwyQH+/+BOGdYCINgmzzLjNjjkCgYEA+n6pK1RBZ50irFCBKnOobhj/spL7Ki8lRAmBYHDi8mhH2K0gaJHFgibYS7APjfcbaIOFFBVjZ4J8N91RpL6+RDLiv+3dPo9dIQDr+gLlsxIIL1LLDeg8l7Khukj/C3/iYHjYOvqnEJ/2A/97X7Oec+Hqa1paNOcBpZzE0zY2Ce0CgYEAxsEBQeBiEIb37p2EUnamTi6ciGSFU3hKs24K0fxBlgx0bxI+TUYKQQWl92Bk8bbp/penI2Xl1/ttaGlG8shoMNvxIbfxuXiW4dHxRtJWekihnLiFC/eGLyr14ZnnLhawkJy7i5zPyJHIlWKi6H9DZwCLZ3u4XyiX3W95TBLR/XMCgYEAxItpdSPxBbmXoRixoHuLZoea6aTGCf1gAhhrOR6aE5Wa+foteZ8XF94ezJRiQAPpr4Gyg2Wcz3TkvnibPOalJ6G9pNagSBv4+JJelZZ8YJr/bRJLXKgiEu0IVMA9zeoT15o6H1zYhQTd5ZkqVpb69vYGFyGXsfanpihxjz/z+qkCgYACYjozog9LB3Ndx0HZA1dHRMPX1uzKbXzn3f//OLlIpWmYE23v21EwKnMtHljXlUwFI6h7gjNZfch4IhsZulGVlG2169DYWpvkpXHxWYB0Av79NDFUTWmskyVTyVa+dMM1WMvfBshvLWBsejxd8XjLeXQyj4dMjN4VZ8raoLcoBQKBgAWv7VR4xtkTg2BFMt4HiEIghTmxvAh4r1ucwjZwSNV5vuAqmfszb703IGsh9TuB2hj306xi142dGwjGen7viuqJ7WVkaRPDTY3j8SB+Z9Kv1w6sADi+rk9pDUytBn7etw+Kn+xY4DKwZ3+M3BSo+85TCl4C7cXK3LNgfjwv0Ypg'),('f2313692-0116-4d39-9795-932be6217d80','fea92a2e-3367-43d9-b43b-b45556b74a19','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('f5035a91-0ca5-40ee-a90f-f1e93a9cd6ec','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','saml-user-property-mapper'),('f556cea5-356e-4567-b6ff-5debf9cb4b66','f9d810f6-e6d6-46c0-8e34-4bf46e7d6117','certificate','MIIClzCCAX8CBgGQCmI5TDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDYxMjAyNTcwN1oXDTM0MDYxMjAyNTg0N1owDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANptuNsfaot9x+UwhRhkbClsLfLdPgtbbSEXizN/nG5tgitcKYat+b6/HG8/PPvEGmhS63ST9WtbJl4+RFwzSjANEdSwWN6DBVDEjXXQzeswtqgZc9OpDIxEQ/rTsZ+r76zaHkQbTyhKhIsA02pvwgyMnsNoJrYvBCo6XUknjllFJLqtNv6IZG1Op9aaAkVhfkH1q4ervMXjP+IZFA5+06I5sUIHVERnMSyU2m70fH/Bb7VUTTK8Whl4lDGp4p/XI0XulWJNiK7B4qYnFSXg7XzKOui/rXBthOpJ+hPfSw+n1dv+YU3kyWVMoDqnOx3s7IDPy+JejuKSXOoK9RQm2hUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAsY6y7Zuc5MPtlK0DNNACmbJIZvd3Zm3PvXdJhz/1lEtYWPZoBz5Fi6RlDUy8gQlsQC0mMoDkmLUe86K5u8b21Jx3hjnBL4lU/NtFOKPCo/8OTkjbtlpWeWl7ov6dly5Nka8VZ9ejjOW3HpeA9CEwj/1v5oNAzjOI2bQx+Cu9PF949jQ5JPNqUG6lAVd8KRZ8oRwuvCrtp7+qMz9gxq7h5Sz2xjRthTRauplp88h9Nf6tD5E9GY+vpS8JqFOF8AG9Hw7SBi9fpQLTu9kWJvw4AV2BjsPEV4cDgKhBPFwe4+EHLFmjzFRWi3Mue8Lio4eBU1h9xCnrLhm2SoLnANqOmw=='),('f578e61f-4316-4e9d-9024-e0e4adeb47f3','1d799f88-efd4-4ffd-b718-100c89f72d8f','allow-default-scopes','true'),('f5c6184e-f8f2-46a9-9342-5942e5d7701c','d1fefcbb-0c0c-4692-b30c-e827a8159f85','allowed-protocol-mapper-types','oidc-address-mapper'),('f88f9e9a-c351-495b-a431-e22f1502743d','26ee3b30-ee1b-49e9-8bec-11e9be345865','priority','100'),('f8bd84c3-4509-4bf9-a7ae-02678ca04dd1','90748f1e-63b6-4757-95fa-85583b5e71fa','allowed-protocol-mapper-types','saml-role-list-mapper'),('fa619606-439e-43fe-b0fd-f0d4502262f5','8a5b6db2-4847-489d-a595-d27e58f52b4e','priority','100'),('fad56db1-3c30-4428-9cee-8da97f1b4470','27dd0233-1ec0-49bf-a785-d19312250f80','priority','100'),('fc391aba-7ffb-47e8-840d-e93b3c153440','27dd0233-1ec0-49bf-a785-d19312250f80','algorithm','HS512'),('fe013dde-c7ce-4152-baad-d6aedc3a6d53','3d4e614e-8cee-4416-bcbd-94b4a5272cb3','allowed-protocol-mapper-types','saml-user-property-mapper');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('018274d0-ca3a-4e23-83dd-81742cb39d1f','1fdfa0a3-1700-4f39-874a-46bdc7eb8be6'),('018274d0-ca3a-4e23-83dd-81742cb39d1f','9699b573-6eb7-4f60-8b7d-0f50e1c99692'),('02774b10-4a7a-4802-923d-3909f07bd027','565ee6a8-3ce7-44ff-b3f5-59e01b31bf97'),('02774b10-4a7a-4802-923d-3909f07bd027','5f7ffdce-84f8-4790-8990-dbd4e7d2eaeb'),('02774b10-4a7a-4802-923d-3909f07bd027','9ac132bd-1c71-4a54-972e-a62e83809f91'),('02774b10-4a7a-4802-923d-3909f07bd027','ac2ed342-6e6d-402a-8852-1e286b56e217'),('04b858f3-0de7-46ec-a103-6769dc16e9c3','010ec8b3-ffe5-4dc5-91e3-693b9cc371b3'),('04b858f3-0de7-46ec-a103-6769dc16e9c3','479657f3-828b-4b0b-9b60-c50d8ea0038b'),('056e5a3f-b5fc-4f82-9274-eb03177dc6e7','3cc34475-54ed-4bf9-9d50-739f2d71e530'),('056e5a3f-b5fc-4f82-9274-eb03177dc6e7','7051bbde-751f-467d-81ec-2646aa5a7a35'),('056e5a3f-b5fc-4f82-9274-eb03177dc6e7','c16d95bb-4a9b-4a12-afc8-61a22c5430fd'),('05ca98ac-c36c-435d-becc-5836ff7e15e9','5c42947d-1edf-4387-9f46-d4e7e57cfb8b'),('05ca98ac-c36c-435d-becc-5836ff7e15e9','fc94301d-404e-4e05-a967-fb1c708a1831'),('08f3d0a1-85ce-4007-a153-6990811982d3','2939ad4c-0508-4554-b927-d1f7916e2f3c'),('08f3d0a1-85ce-4007-a153-6990811982d3','49c6eb3c-29cf-4920-b488-a47a61c146a8'),('14cf4bbc-036f-4816-9217-c0d0add46ff2','1b2bde80-bc0e-4a77-904b-7d63ba782a98'),('14cf4bbc-036f-4816-9217-c0d0add46ff2','7e06e37a-9b46-460c-ac14-0301e5d14e4a'),('22e3f376-7ee5-48bd-8ad4-4576c072d03e','d41e2f22-96f5-402a-9b01-2c0f59c740e6'),('27b8562b-36e0-4836-947d-b9ea8e636d8f','f9ee2d26-fdf1-480c-a4c7-9c5f238ce855'),('27fb65a2-bd4f-4361-98d6-4d3f2633011c','35354f50-eb44-4d6b-bd1f-874ee907f31c'),('29bf41a1-6c60-4810-bfe7-97ad67587008','0d0bc684-08fa-4f53-b7d3-e50fbd30f97d'),('29bf41a1-6c60-4810-bfe7-97ad67587008','3ffeba98-ae7d-4cc4-ad64-4022e6ad7cf7'),('29bf41a1-6c60-4810-bfe7-97ad67587008','bb0657f9-40a7-440d-8d68-d00e75fdcfe5'),('29bf41a1-6c60-4810-bfe7-97ad67587008','ff6a8286-bd57-4838-8c81-853d36d9d787'),('29eee57d-85f4-4b42-a91b-e82ba820c6ca','29ebd35b-6122-41d6-b0fc-40328a29ee1f'),('29eee57d-85f4-4b42-a91b-e82ba820c6ca','e8cdad99-a524-4e6b-acb0-06ec072db27e'),('29eee57d-85f4-4b42-a91b-e82ba820c6ca','ef5a58fe-c3aa-493c-857d-727144a7a0d1'),('2bba83a9-c76c-416d-bec9-8f4242025483','94902166-18b4-4da8-9296-1d3ae567cdad'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','0333b6b6-bfd9-498a-8b54-7ed3825e7a79'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','089089cf-8d0c-4d12-85c9-71d6fad58811'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','110dc14d-65fd-4aed-939d-38ec80462c35'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','18965a3b-345e-4b2b-b6c2-576c2cec386b'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','465c8a57-d26a-4fd0-8b43-8b18ca05e72a'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','4d1c71c8-7479-4f56-911a-6bfcb33b2112'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','4db2dde9-9efc-4a07-a4d9-a6cdbba6ca70'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','56183ca5-8f90-498e-86a3-8a203a694ded'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','62e4457f-13f9-489a-9d5b-375a965eee85'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','8fdd3e59-228e-4284-b48a-eb539b200ce8'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','969d75da-460e-4263-934d-0e4fb0d52c13'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','99b9da4e-5717-49ba-b3af-5ca34f94ebf2'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','ca79dcd3-8ed4-46b5-919a-2ee1fdbfac37'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','cac1989b-a164-4953-b202-3a33e46b0d16'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','ce1abf80-c717-4aff-bd2e-b7c857486d26'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','dc1d2d2b-cb0b-4abe-96ff-7346b2057213'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','de064718-00b6-4d02-b176-0963610c79cc'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','fa3b5254-703f-4e14-9209-39f4c78c5c49'),('2f02694a-2310-4822-affc-6e78081e2606','74f18454-52ef-48d3-8343-9d0606364f55'),('2f02694a-2310-4822-affc-6e78081e2606','7822b23f-510a-4ada-b513-c90bed7c90ec'),('2f02694a-2310-4822-affc-6e78081e2606','9a7fa1d9-5ec4-446d-bf41-a9dd26cb1f19'),('2f02694a-2310-4822-affc-6e78081e2606','9fbbf359-3bfb-4b05-8717-c0d736344655'),('2f02694a-2310-4822-affc-6e78081e2606','abb18c0e-6cad-4167-8f0e-fad84c23c3ae'),('2f02694a-2310-4822-affc-6e78081e2606','ba3db413-da8a-4a03-b4f8-813c2c8a9f33'),('2f02694a-2310-4822-affc-6e78081e2606','c6542b96-2f1b-4dee-9357-f6fefd21fdcf'),('2f02694a-2310-4822-affc-6e78081e2606','cadbf291-2f8b-4740-ae0e-bd76db05ef71'),('2f02694a-2310-4822-affc-6e78081e2606','d578490f-2d5e-4b80-9417-8637ffda4385'),('2f02694a-2310-4822-affc-6e78081e2606','e2f2a39e-c067-46f2-99b2-2109880d2967'),('2f02694a-2310-4822-affc-6e78081e2606','eac90208-2c76-48f7-9e1d-94c8d3ea743a'),('2f02694a-2310-4822-affc-6e78081e2606','f9c477a4-28af-4222-917f-d534c76af487'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','0ae395f8-a808-4b06-a2b1-fae74f43e635'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','0cbf186d-feff-4ccf-b281-1c48f5ca2adc'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','1d7573af-20d8-4e61-85d7-d6d2cc24fc85'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','2088d3a0-b6c6-4d82-b88d-14dbf0c0b6ec'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','2ad3121f-83f4-4ded-9406-ca91b3348f1b'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','319358cc-6da1-40ac-baa9-c9c127e2f068'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','3cb1ae6e-126b-4560-959e-c5696a06fcb6'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','468df03f-75e5-4b29-b0a1-4dff732230e1'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','5912df1c-9ce4-43a8-a470-f4c4dc09c151'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','59f24ab3-2cc5-45e7-b1f9-a66a094e318d'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','601e1456-b6ad-4108-8eec-f19638cfe8af'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','69ea30d6-d880-4d67-a096-aef38ddaf117'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','9ab2f649-415b-46d5-a9d3-9d9d77882e17'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','a03b9fd2-2e48-4a65-9799-46ae7f304c13'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','a081def5-2445-4ac0-be50-3f23a65158fc'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','c5592334-754c-47c9-bd18-61520b1ace9d'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','c642e6dc-7de8-4b2f-ae5a-d648fd22b2d4'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','ecd6bf2a-8511-401c-8a12-154f07214589'),('30e56e50-9657-4852-922a-1dd2a05b1d1e','f945ff35-2bd7-4dbd-b734-83c12be41ee4'),('319358cc-6da1-40ac-baa9-c9c127e2f068','c642e6dc-7de8-4b2f-ae5a-d648fd22b2d4'),('3249e4f5-8c72-4f1f-a8d5-6f842443fd4a','7051bbde-751f-467d-81ec-2646aa5a7a35'),('3249e4f5-8c72-4f1f-a8d5-6f842443fd4a','c16d95bb-4a9b-4a12-afc8-61a22c5430fd'),('386003c5-d286-45f9-aa4e-06124f50596f','0c67fc5d-9038-4299-986e-7b6bc12fa9d0'),('4008aef9-0553-43e8-90b9-344fc5b6859a','4a78f73b-2eec-42e3-be04-1de33d714625'),('4008aef9-0553-43e8-90b9-344fc5b6859a','78bbb7e1-630d-40f9-991e-c2440dc78f11'),('40349bfb-3002-449b-bc97-ffac3e9883fe','a1fcc6bb-eaa9-46b3-b2a2-c435a14072f1'),('40349bfb-3002-449b-bc97-ffac3e9883fe','b7116fff-d63d-4899-9b64-c2fe6590f855'),('40905173-8753-4e66-8d8c-7e9a6da621f7','e8b60b0e-ed10-4666-b279-bdbfb1378448'),('46f7b820-7b85-4ebc-8193-e2737dadea6e','7384a5b7-1b0e-4054-871d-893461e8bc93'),('46f7b820-7b85-4ebc-8193-e2737dadea6e','bfa34d68-e978-45be-8783-904bc3128fdb'),('4ea3cf01-48ec-4aed-a279-ccb9aba3403b','ad7c0fe8-74f3-4b04-9dfc-a6ab2802ed25'),('5174e430-28fc-4436-a280-e5250b3d879b','72fa619d-8e1f-4d8a-ae94-66da4b6c4787'),('5174e430-28fc-4436-a280-e5250b3d879b','84711de3-3f09-4c83-8926-30004ee052d2'),('53ef88cb-e78d-43d4-9632-9ee04d9f6c91','74f18454-52ef-48d3-8343-9d0606364f55'),('53ef88cb-e78d-43d4-9632-9ee04d9f6c91','9fbbf359-3bfb-4b05-8717-c0d736344655'),('53ef88cb-e78d-43d4-9632-9ee04d9f6c91','ba3db413-da8a-4a03-b4f8-813c2c8a9f33'),('56183ca5-8f90-498e-86a3-8a203a694ded','ce1abf80-c717-4aff-bd2e-b7c857486d26'),('565ee6a8-3ce7-44ff-b3f5-59e01b31bf97','cc111dd7-68f5-4b81-b877-c7203eb5b120'),('5819cd88-8396-4c0a-9181-f1f8ed01f70a','3764d81f-6d6c-4c16-a966-8a8e95b4d582'),('5819cd88-8396-4c0a-9181-f1f8ed01f70a','91dd1eb6-f5d7-4c4e-9881-f8329f7c2b4d'),('5d3104d3-82c8-4535-81bd-de3cddd37178','74f18454-52ef-48d3-8343-9d0606364f55'),('5d3104d3-82c8-4535-81bd-de3cddd37178','9fbbf359-3bfb-4b05-8717-c0d736344655'),('5d41ad95-03c5-4f3f-b722-2c47f9842602','47708ca5-df30-4b0b-973d-998b373b05f4'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','044412ba-ad3e-405a-9146-c8bc50ed996a'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','07cef6f3-8e90-4210-b127-8ba03991ff58'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','0c1ec1d3-8915-4510-9a2d-575f6153a722'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','0deeb29d-12cd-4afc-9607-100f3f5ed435'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','0e22a3d9-9c99-4317-8ee9-942dc86a5b7a'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','10a71f76-908b-4ee6-a95b-c669a1d90efd'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','136f59ca-9c74-471a-9121-e0f8c2bef8aa'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','13d4f2cf-62b9-42d5-99fe-2fb8934804f7'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','13f3446a-44e1-4c88-bd3b-13fce43d7436'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','14ccda86-c3a1-44da-b2af-5e635d9310ba'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','14cf4bbc-036f-4816-9217-c0d0add46ff2'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','17c0dc0a-840d-464a-bfcd-47a548a957cb'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','18d7e35f-9dd3-4e53-9da6-507132cf8a61'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','1902b768-a997-488f-9dcf-840c0fd259a0'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','1b2bde80-bc0e-4a77-904b-7d63ba782a98'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','1f7887ed-9e13-44d6-8d8e-bd0a47522175'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','2125dea9-3cf7-4595-b5d3-cd2b500363b1'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','22a98194-af19-4610-a18e-9f7b61e6ba0c'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','2a174c26-9ad4-4f05-b127-7347a8ee2867'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','2bba83a9-c76c-416d-bec9-8f4242025483'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','2dc3e065-18c8-47c1-949b-d0926a5a1bf8'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','3010e9dc-a9a4-4b2c-bd34-83934dda7e14'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','3764d81f-6d6c-4c16-a966-8a8e95b4d582'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','3981bb78-9647-4bce-ab14-7c48173037b9'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','3e61dce3-e07b-4f32-9ef3-644ca00d6c66'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','40905173-8753-4e66-8d8c-7e9a6da621f7'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','42c8d577-bcf9-4eaa-a2a0-c083d528c3ca'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','4435ae80-36b3-45e8-932a-0c9cc67e7a4e'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','46caf651-4293-4d65-9cdb-b019bf8c2cb9'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','47708ca5-df30-4b0b-973d-998b373b05f4'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','4f2e6ba7-6561-417d-ac69-3363d2c9dff5'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','505f9cfe-b3d3-4208-a8f8-6d4600417680'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5174e430-28fc-4436-a280-e5250b3d879b'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','52d4fa16-a3b3-4565-ae73-9ebdc92d6db4'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','569ad2de-0ed7-4df8-892f-230f68bbd56f'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','57088a94-9e7b-4b1c-94e2-35b4d3bb7bb2'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','577a8056-b249-49c0-8e3c-2321e7022434'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5819cd88-8396-4c0a-9181-f1f8ed01f70a'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5ba18390-9717-480d-b692-a0e1fbf57cb1'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5c9b8b5f-9b14-4861-94ba-2019623dbe66'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5d0ca8c8-dbc4-4118-a613-30cede33a1e5'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5d129c8a-50c0-4f4c-a816-87c36b0c2f37'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5d41ad95-03c5-4f3f-b722-2c47f9842602'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','5fce7fe4-2c35-4712-ada6-bc5737498424'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','614614e4-72fe-44bf-b59c-c77233faf400'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','62a84404-904c-4283-8efb-5ae24779149b'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','6397e75f-5724-4dc5-accb-3d79b056f29e'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','64c25f23-e978-41ef-9cd1-98e9691e02cf'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','65c5b360-70ba-42bd-962a-4d90fbdc7c18'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','687e8e6c-6071-4512-83b6-4cedd8dcc0d8'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','706be7b7-7c58-48ab-84a5-22539039b53f'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','72fa619d-8e1f-4d8a-ae94-66da4b6c4787'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','79db443c-3170-44b6-85c2-09a932b6b581'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','7a741bc8-b727-4b0c-abe9-ae46a88df814'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','7d282a06-96bb-4f2e-8af3-ad3138dc3839'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','7e06e37a-9b46-460c-ac14-0301e5d14e4a'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','8364e573-ff57-41f9-a7fc-84af5a2b03c7'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','84649662-3b00-4bb3-b328-0f665becd754'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','84711de3-3f09-4c83-8926-30004ee052d2'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','86004a14-8473-4293-9244-97d8e940375b'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','879916fb-0093-44bf-bf0d-94ba0bbace95'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','89ae1ed6-5847-4ac5-810a-eebe82134b33'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','8a525193-0ce8-4162-87ab-5af442a3af2a'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','8ac8c0b6-cd75-4bf5-8184-82c0989abc55'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','8d4a3394-8132-48af-9349-d2c40c46d03f'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','8dc7f3f9-0562-463c-8d10-a4db950d9242'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','913e3e3b-276f-479e-8521-04ea400bfca6'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','91dd1eb6-f5d7-4c4e-9881-f8329f7c2b4d'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','91ec71f5-7dcd-4527-8482-642f15da9cb7'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','92799bf5-c731-4a04-aedb-d2f5c7216bc2'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','928a4dbf-babf-405b-a60e-bdec44e1aec4'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','92962358-0159-4bcd-8fe2-5c23f93a704b'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','94325578-5583-4d89-8596-82fa06502c8d'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','94902166-18b4-4da8-9296-1d3ae567cdad'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','992c2fe5-2d93-46ac-b92e-1a7eb276b53c'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','9ac7c8c5-290e-4a33-9ef0-c876d33f9890'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','9c40cca9-f1dc-47c5-a26d-7fdd1eb6010b'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','9e4a9d35-3795-49ba-9f14-e709ccc57b18'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','9f55b1c3-61bd-4b5e-bfbe-83c5a63358b6'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','a19d3f37-a306-4fe4-b141-da766fcb9754'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','ac216ff7-4c11-4e6f-946b-ae4c839b02ad'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','b4868d9d-def7-40a6-ad2f-87df3fa6e986'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','b5ba81e5-3451-4bbc-b356-ea13c80f75d5'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','b647639e-b3a2-445f-8f56-6cb7979d5177'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','ba8f3db0-bb72-49ac-b94b-648dc8776fb8'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','c47d13e8-696e-48fa-967c-e91ac2e7e188'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','c6f5e8ce-cd45-4d10-8698-c49939757580'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','ca27c83a-ab40-4a27-b36d-ad413c47a7b6'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','cd7ab97a-9bad-4e75-bbca-f57e0f21c25e'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','cef04c12-f28c-4cd1-b5b8-972b7464fe73'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','d0cfccc2-1852-4236-a3d2-b74cf4dc9701'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','d1411ae2-1fb0-46ff-b166-80dd260e0b00'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','d2232f2c-7bb9-4f26-8b35-c1531ac36e7c'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','d6f1de80-3e7d-40ab-8e3b-68284f40de1c'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','daade461-014c-4d52-90f1-741f9c350046'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','dc11a15b-c50a-430d-8111-93b089670373'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','dc7ac4c5-81f1-4b90-98a0-600a52381734'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','dc8fe040-962d-4405-8619-7c9de54cebfc'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','e2ee4164-78b5-442f-a8ce-e5854b16e4e3'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','e8b60b0e-ed10-4666-b279-bdbfb1378448'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','ea40a49d-1c5e-4bd1-87bf-e5cae9fe3ec4'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','ef636e01-bd99-48af-97a1-d2c87cb5e613'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','efbe3a66-0e72-4bcf-b736-b1cccde0388e'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','f141606f-d3b1-42ff-b496-cc146bf33e41'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','f41961fb-1a35-4f60-9b65-379b53229191'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','f6920458-f460-479a-947b-c3f5f05a5c58'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','f6c8c42f-bb78-481f-aa68-7a9b3735ccf5'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','fba0cf47-a378-4e21-a21f-94b88fe05a72'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','fc3da5a0-8f26-4bb3-a9fc-a0a10805f1ee'),('620d4b19-4623-49ce-9efc-a44aee31679f','2939ad4c-0508-4554-b927-d1f7916e2f3c'),('620d4b19-4623-49ce-9efc-a44aee31679f','49c6eb3c-29cf-4920-b488-a47a61c146a8'),('620d4b19-4623-49ce-9efc-a44aee31679f','6a80c8be-8377-4a1c-bd46-39b983ca9359'),('620d4b19-4623-49ce-9efc-a44aee31679f','8497ec31-6dcd-4c89-a052-785bae49bc2c'),('620d4b19-4623-49ce-9efc-a44aee31679f','91813dae-e2a2-44ca-b504-6ae4f3470aa8'),('620d4b19-4623-49ce-9efc-a44aee31679f','ac3a0b3c-6796-4a49-95ab-a95e575982fd'),('620d4b19-4623-49ce-9efc-a44aee31679f','b69d61b5-4a12-4cf6-969c-8ec827f78b95'),('620d4b19-4623-49ce-9efc-a44aee31679f','b7c48abd-fc1d-4462-b9ae-0dc24c7575d0'),('620d4b19-4623-49ce-9efc-a44aee31679f','bf516ab0-d6af-415a-b34c-b461944122ef'),('620d4b19-4623-49ce-9efc-a44aee31679f','c909c2f0-c3f1-4960-8f60-9ba938d3d03c'),('620d4b19-4623-49ce-9efc-a44aee31679f','df811e9a-da8e-4e10-9d3d-ca8e623822aa'),('620d4b19-4623-49ce-9efc-a44aee31679f','f4d7d9b1-4803-4abc-9fb4-2a8583e8890f'),('620e3a5e-2a76-4ef7-9382-01150ee06069','05f6fd6c-2c80-47db-816f-f14de2e1a1cb'),('62a936b0-8339-4a87-8ee7-19f4b0cf9c75','cfec1782-d567-4a9f-9360-c8814702df03'),('63077bbd-b0d2-4ab9-9abd-4ccb8e682be6','2939ad4c-0508-4554-b927-d1f7916e2f3c'),('63077bbd-b0d2-4ab9-9abd-4ccb8e682be6','49c6eb3c-29cf-4920-b488-a47a61c146a8'),('63077bbd-b0d2-4ab9-9abd-4ccb8e682be6','91813dae-e2a2-44ca-b504-6ae4f3470aa8'),('647eea5e-6e4a-4f2b-b1bc-5918dc3c84ba','2f60beb5-26b5-4d9e-9b6f-31c1bb6fd91c'),('647eea5e-6e4a-4f2b-b1bc-5918dc3c84ba','c33f16b5-0f73-475e-8274-d7d90a070821'),('6a47c506-e084-40ba-becd-2e4f60261e44','0e763ee8-bed3-4bd7-8c2d-9be0b32cfcc0'),('6a47c506-e084-40ba-becd-2e4f60261e44','1d7573af-20d8-4e61-85d7-d6d2cc24fc85'),('6a47c506-e084-40ba-becd-2e4f60261e44','31306a0c-c098-4fd9-b1d4-9a8d50d9e116'),('6a47c506-e084-40ba-becd-2e4f60261e44','39b9fcec-5be4-48d6-9eed-146a91b9897e'),('6a47c506-e084-40ba-becd-2e4f60261e44','3cc34475-54ed-4bf9-9d50-739f2d71e530'),('6a47c506-e084-40ba-becd-2e4f60261e44','601e1456-b6ad-4108-8eec-f19638cfe8af'),('6a47c506-e084-40ba-becd-2e4f60261e44','7051bbde-751f-467d-81ec-2646aa5a7a35'),('6a47c506-e084-40ba-becd-2e4f60261e44','a03b9fd2-2e48-4a65-9799-46ae7f304c13'),('6a47c506-e084-40ba-becd-2e4f60261e44','a3ec8e6d-831c-4fb2-83d7-532d9ea61383'),('6a47c506-e084-40ba-becd-2e4f60261e44','c16d95bb-4a9b-4a12-afc8-61a22c5430fd'),('6a47c506-e084-40ba-becd-2e4f60261e44','cd7e235a-8417-4a80-9664-9a2136e97927'),('6a47c506-e084-40ba-becd-2e4f60261e44','f9de58e0-7808-4fb8-aed0-eca1bbd34561'),('6eac912e-4042-4c12-af41-78d1421fcf81','7771e7a1-e1a1-4437-91f9-ce341eb5af2f'),('778e2b1a-49a6-4005-9b1b-1a02fbfa085d','0fa61866-57f0-49cf-909c-fd49a5bfbeea'),('778e2b1a-49a6-4005-9b1b-1a02fbfa085d','f8d40958-5753-462b-b922-cbd7aeb4475f'),('79cae8ef-3069-4b9e-a3ec-5162a9337102','90144b56-6d11-4537-9358-831dbed88721'),('85a7db0a-1b27-4679-b784-a4a7209cc428','018274d0-ca3a-4e23-83dd-81742cb39d1f'),('85a7db0a-1b27-4679-b784-a4a7209cc428','1fdfa0a3-1700-4f39-874a-46bdc7eb8be6'),('85a7db0a-1b27-4679-b784-a4a7209cc428','2e416b6b-dafb-40b3-b5d9-220c6b472cea'),('85a7db0a-1b27-4679-b784-a4a7209cc428','30e56e50-9657-4852-922a-1dd2a05b1d1e'),('85a7db0a-1b27-4679-b784-a4a7209cc428','39ccd113-2e1e-464e-8222-32c60ce0ce02'),('85a7db0a-1b27-4679-b784-a4a7209cc428','664845b9-c71a-4dcb-9fb0-1279531e1e00'),('85a7db0a-1b27-4679-b784-a4a7209cc428','7056f595-d6d0-40ad-bdf6-2addbe857221'),('85a7db0a-1b27-4679-b784-a4a7209cc428','7822b23f-510a-4ada-b513-c90bed7c90ec'),('85a7db0a-1b27-4679-b784-a4a7209cc428','7a0d0389-7c7c-49b8-a408-bd4500687d2e'),('85a7db0a-1b27-4679-b784-a4a7209cc428','96778dd7-baac-4c0f-9556-4573c4e96791'),('85a7db0a-1b27-4679-b784-a4a7209cc428','9699b573-6eb7-4f60-8b7d-0f50e1c99692'),('85a7db0a-1b27-4679-b784-a4a7209cc428','9a7fa1d9-5ec4-446d-bf41-a9dd26cb1f19'),('85a7db0a-1b27-4679-b784-a4a7209cc428','9b5847c6-3d67-4fd6-ba30-e2fae53a39a6'),('85a7db0a-1b27-4679-b784-a4a7209cc428','9ef52964-ebac-414a-9bb3-165957f6c568'),('85a7db0a-1b27-4679-b784-a4a7209cc428','b48b84c6-69bb-4a47-8b78-8f776a82aab1'),('85a7db0a-1b27-4679-b784-a4a7209cc428','f2308b48-45f2-4640-8096-149964552741'),('85a7db0a-1b27-4679-b784-a4a7209cc428','f945ff35-2bd7-4dbd-b734-83c12be41ee4'),('85a7db0a-1b27-4679-b784-a4a7209cc428','f9c477a4-28af-4222-917f-d534c76af487'),('8705e473-8b47-4350-b8a7-2dc1216ab25b','37818107-20ba-4025-99eb-1481aaedb049'),('8705e473-8b47-4350-b8a7-2dc1216ab25b','50c4490e-9294-4237-8668-910d0997ed37'),('8705e473-8b47-4350-b8a7-2dc1216ab25b','66ccaf61-27a3-4d6f-96ec-38461e484152'),('8705e473-8b47-4350-b8a7-2dc1216ab25b','6eac912e-4042-4c12-af41-78d1421fcf81'),('874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b','69d3a0a3-5456-49b9-ae19-23c656233ab9'),('874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b','9a168ec7-159e-4063-98c6-11fcaa6827ad'),('88af9d3d-2f67-4531-bfe4-f47247dafada','3d4927b5-3a8b-41ac-9308-e9e4f0344865'),('88af9d3d-2f67-4531-bfe4-f47247dafada','47dabece-dd62-438c-ae27-13acba344a81'),('895c6e6c-39c4-42ae-ba37-0ae823d75800','00c6c1ea-acb5-4ca1-b211-13cac5c0eed0'),('895c6e6c-39c4-42ae-ba37-0ae823d75800','070db73f-0e38-4719-ad5f-bfddd7d00010'),('8dbfdeec-2e4f-4e33-a7c9-c05893d22a0e','2fef6819-c28b-473d-87f3-ae80915f033a'),('913e3e3b-276f-479e-8521-04ea400bfca6','62a84404-904c-4283-8efb-5ae24779149b'),('913e3e3b-276f-479e-8521-04ea400bfca6','9f55b1c3-61bd-4b5e-bfbe-83c5a63358b6'),('928a4dbf-babf-405b-a60e-bdec44e1aec4','5fce7fe4-2c35-4712-ada6-bc5737498424'),('929a307b-d774-46cc-885f-4d3b8d342f63','50d44303-bddd-4a16-b526-1a8776cc8360'),('929a307b-d774-46cc-885f-4d3b8d342f63','cd4d49ed-91e6-4f97-b103-e36dc22c7e3d'),('96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6','831c6801-a7e3-49dd-98d9-6977b5c92271'),('96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6','d221d2fa-bdca-4cd2-8211-ff8447b5db5a'),('9f9435e8-3485-4c8b-8464-f171830e650d','29ebd35b-6122-41d6-b0fc-40328a29ee1f'),('9f9435e8-3485-4c8b-8464-f171830e650d','ef5a58fe-c3aa-493c-857d-727144a7a0d1'),('a02d2bf3-10b4-43b8-8664-af614992e7e6','7cce667c-e41f-4752-87da-3808e47afc81'),('a02d2bf3-10b4-43b8-8664-af614992e7e6','ea532d28-5740-4c4e-b908-40df5039ff2d'),('a081def5-2445-4ac0-be50-3f23a65158fc','0ae395f8-a808-4b06-a2b1-fae74f43e635'),('a081def5-2445-4ac0-be50-3f23a65158fc','9ab2f649-415b-46d5-a9d3-9d9d77882e17'),('a2c457d0-df0a-4c4c-a140-629614e4731d','5517eeba-93aa-4773-9a3f-948367b3402b'),('a2c457d0-df0a-4c4c-a140-629614e4731d','ff15a45d-e12e-4838-9ac7-d237cad67556'),('aa815afc-f653-492e-899c-446783030cb9','38c4cc83-b6f9-405f-93b1-fbd5f08b951b'),('aa815afc-f653-492e-899c-446783030cb9','964e2ff8-3363-4d1c-8a23-72b93b2ecda1'),('aac3e92b-7375-49b4-b430-ae372fab0cfd','1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f'),('aac3e92b-7375-49b4-b430-ae372fab0cfd','76ec2416-4319-4a7f-b628-019b9653e08f'),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','12b54410-8f19-4151-a8da-163741aebc45'),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','27b8562b-36e0-4836-947d-b9ea8e636d8f'),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','4e0d5cf9-6580-404b-a501-53c09fd896f2'),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','6a3e98d5-48be-4ea2-bb74-e017af9b3d4b'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','089089cf-8d0c-4d12-85c9-71d6fad58811'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','1e0f760b-585a-41de-ad19-f0caf67ef953'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','416e105c-ff36-4901-a39b-a2b8467bbbb9'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','5c6dcb87-654f-44a3-90f6-8eaf808677fd'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','76ec2416-4319-4a7f-b628-019b9653e08f'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','7fe5c3f0-8108-414d-aabe-1f1e17fac4e8'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','8890cdbc-73bf-4d89-9d02-19d935fe5b5d'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','8fdd3e59-228e-4284-b48a-eb539b200ce8'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','93a7e15a-eedd-47e7-b546-88a97aaf7fb2'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','cac1989b-a164-4953-b202-3a33e46b0d16'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','df2f1d1f-894b-437e-8393-a92b058891c1'),('bb0657f9-40a7-440d-8d68-d00e75fdcfe5','cd6095f6-b2dc-4a5b-980f-f15c559b3b07'),('c1f22d4c-e63e-4155-9c00-257d58e42656','72ecd35b-f76c-4fe3-b45b-d046d6c62281'),('ca79dcd3-8ed4-46b5-919a-2ee1fdbfac37','62e4457f-13f9-489a-9d5b-375a965eee85'),('ca79dcd3-8ed4-46b5-919a-2ee1fdbfac37','dc1d2d2b-cb0b-4abe-96ff-7346b2057213'),('cbfa0568-54f4-4a27-b8d8-da462f9bb751','35427293-42b6-4879-9059-aac833f6c21a'),('cbfa0568-54f4-4a27-b8d8-da462f9bb751','7e111b5e-bad0-4fd2-b853-4a7206f1d98c'),('d949451b-4e2b-4146-89c1-79dabec7f49d','1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f'),('d949451b-4e2b-4146-89c1-79dabec7f49d','76ec2416-4319-4a7f-b628-019b9653e08f'),('d949451b-4e2b-4146-89c1-79dabec7f49d','8890cdbc-73bf-4d89-9d02-19d935fe5b5d'),('daade461-014c-4d52-90f1-741f9c350046','505f9cfe-b3d3-4208-a8f8-6d4600417680'),('ea40a49d-1c5e-4bd1-87bf-e5cae9fe3ec4','14ccda86-c3a1-44da-b2af-5e635d9310ba'),('ea40a49d-1c5e-4bd1-87bf-e5cae9fe3ec4','ba8f3db0-bb72-49ac-b94b-648dc8776fb8'),('eb275897-903e-4c5a-8357-185bfb4df33e','e2783001-224d-4082-996e-ab0a121eae65'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','0b3255ea-985d-4048-9618-b81bce0fb14b'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','22e3f376-7ee5-48bd-8ad4-4576c072d03e'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','2f60beb5-26b5-4d9e-9b6f-31c1bb6fd91c'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','429c6e4b-33ac-46f4-9cdb-cb7ea54900d3'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','498c3e88-ff99-4e74-b932-7a6a69fa3d3b'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','647eea5e-6e4a-4f2b-b1bc-5918dc3c84ba'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','778ac27c-7169-4c38-908c-82e5bab822c1'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','81506dd9-a7d4-4ae4-a5be-7d0c0241f26d'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','9aeaec42-13af-4435-bf9e-72d1920fd1fa'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','a323b7b3-5020-4d01-ad52-8c1bb15eb6d7'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','b2931592-ddf8-428f-a2be-0f2f46b6aa92'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','c275bbae-6b06-49df-aba5-d0a914fc9dd2'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','c33f16b5-0f73-475e-8274-d7d90a070821'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','c6a82b7b-a497-4f32-ba7d-48e53a6f81ee'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','c87add8b-a4ab-4953-ab6a-434593d575fe'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','d41e2f22-96f5-402a-9b01-2c0f59c740e6'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','d72bc3e9-7290-4c1b-9605-9132cece7306'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','ec775167-543f-4e29-8557-c16a984a9f11'),('f141606f-d3b1-42ff-b496-cc146bf33e41','1f7887ed-9e13-44d6-8d8e-bd0a47522175'),('f141606f-d3b1-42ff-b496-cc146bf33e41','577a8056-b249-49c0-8e3c-2321e7022434'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','04ccb7ed-f2aa-4dae-b231-46bdbf220a00'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','5517eeba-93aa-4773-9a3f-948367b3402b'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','62a936b0-8339-4a87-8ee7-19f4b0cf9c75'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','67ea679e-92af-407f-b7c8-17024c8093e2'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','6a80c8be-8377-4a1c-bd46-39b983ca9359'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','75841af2-c2bf-4e51-beca-914ceb0d834f'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','86b52158-c04d-42d0-8a71-a75f2b3fec57'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','9e4392b6-9ea8-4687-9de1-bda21b75baf7'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','9e9e052d-6600-42ad-b6a3-458cd3b8574d'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','a2c457d0-df0a-4c4c-a140-629614e4731d'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','ac3a0b3c-6796-4a49-95ab-a95e575982fd'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','b7c48abd-fc1d-4462-b9ae-0dc24c7575d0'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','bd9e5c82-dbfc-4ef2-8492-68d375b95ac5'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','c53d5c4e-a85a-44d6-941e-f124335dd8ac'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','cfec1782-d567-4a9f-9360-c8814702df03'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','e974aba6-c040-49df-bc4d-374e7ddef75c'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','ed736dce-4408-4ef5-aa44-b9f7b19f177f'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','ff15a45d-e12e-4838-9ac7-d237cad67556'),('f30408db-2ad6-4230-ba07-cb7655848f35','620e3a5e-2a76-4ef7-9382-01150ee06069'),('f30408db-2ad6-4230-ba07-cb7655848f35','6fe226d9-99cb-4f46-bda1-d83b364b0edf'),('f30408db-2ad6-4230-ba07-cb7655848f35','75133a4f-b43b-49fc-a9df-e45a7b83f0c2'),('f30408db-2ad6-4230-ba07-cb7655848f35','8b15f18f-4adc-488e-90d0-a60e2c2264ee'),('f3333600-0bb4-4063-82be-bafdaf80d8bd','08a2c967-134e-46fb-866c-9281a0b60558'),('f3333600-0bb4-4063-82be-bafdaf80d8bd','a37744ce-b793-4ffc-a06f-ba6b4ac87a4c'),('f9585285-10fd-4b89-aacb-a1ae153dfab4','14e2a1cb-b475-4733-b7b2-7624857622b0'),('f9585285-10fd-4b89-aacb-a1ae153dfab4','61eec536-33e1-4268-afc5-9f6afd8bfce6'),('f9585285-10fd-4b89-aacb-a1ae153dfab4','79cae8ef-3069-4b9e-a3ec-5162a9337102'),('f9585285-10fd-4b89-aacb-a1ae153dfab4','c2814c58-67c2-40a9-903f-8b4c05677854'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','29ebd35b-6122-41d6-b0fc-40328a29ee1f'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','2cfbfafa-3d9e-4875-99bb-60b89a40f810'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','64f27664-3b60-440a-9ea6-e64e33b7d340'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','b42f87a3-520f-4975-bb3b-28968ea1daf1'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','c275bbae-6b06-49df-aba5-d0a914fc9dd2'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','c6a82b7b-a497-4f32-ba7d-48e53a6f81ee'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','c7f86d87-f2b4-4500-bf48-a3e98c08e3ad'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','e1c6becd-a31f-4f23-8a39-e16529f64210'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','e8cdad99-a524-4e6b-acb0-06ec072db27e'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','ec775167-543f-4e29-8557-c16a984a9f11'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','ef5a58fe-c3aa-493c-857d-727144a7a0d1'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','f8a53e17-c4e2-43d3-89ac-8e88b12d01a4'),('fc3da5a0-8f26-4bb3-a9fc-a0a10805f1ee','fba0cf47-a378-4e21-a21f-94b88fe05a72');
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
INSERT INTO `CREDENTIAL` VALUES ('3252bc7d-b978-4e9e-8932-82cd74a92ff0',NULL,'password','3b92645d-b286-454a-ac7e-0988c0ef454c',1718161057941,NULL,'{\"value\":\"7g22c4mxM0BGAAQks2jwDjHR9V2cwD8yJdGhshcSbM8I5M8Er/HWQ/xXH2olnapp8Msob5zvUQyiBk4v7TNlxQ==\",\"salt\":\"5H/Hcq53NotrQA7FH01Aog==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('407ca770-786b-4b39-8f28-27ae9a6947b7',NULL,'password','98765be3-c643-4d28-bfd1-3dac4c0c2b24',1718160896005,NULL,'{\"value\":\"QKnTNVtOwCoJr5BZrAv4NPxitJOkDIKacmchWM9liC6jOJ1cdPPilcnZA8nwYhvZea6zFNfIAvlPOq/7wTGjMg==\",\"salt\":\"2w+B/SUGPJKqpTQ2vR1IkQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('64b502b1-114b-4944-b2ce-b1bb4f75a582',NULL,'password','a09c275c-0f93-4a53-85a4-0ff0b0301fcc',1718160996115,NULL,'{\"value\":\"/bDSqeA3wGp7iagDZKQ4pDvfjbpJFDi4UY18Z8wPtsGFOIh2zCfBsZxZi4pBfaXi7+Rf/j8ZylTBi0GC72q7IA==\",\"salt\":\"yOZo0C3c0QsFPWv5EEj/Yg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('6c18cb44-e628-41dd-a5ab-37de5aaec26e',NULL,'password','b2b807a0-56ed-4cb0-a517-ffebec83b59a',1718161028591,NULL,'{\"value\":\"xrnnuiuathwaVCquCj2gwG/YoCZvf4Mui9MFW4k3UZodKt+kO4PI4ZJ+hIRZBVKms91FsaPitYNp28YwG2QRKA==\",\"salt\":\"D/f/FiLO2RD02OJjW2//2Q==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('a7e62b18-65d0-4dfc-8154-fbbbf4697e8a',NULL,'password','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf',1718161130832,NULL,'{\"value\":\"uNnW9Z8qZcawLWN2H6f+0rWjKCwNDChAleVYrUu4CBWdXq+dvMxxVdKFKPmMRUaAceu93AnEw1zswtuMkgTtbw==\",\"salt\":\"PN8t/qK8Rfgv3U29kMctZg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('c30d6ca7-90cd-4bb2-8dca-cf2a47b18125',NULL,'password','fc80d9f2-1ab4-48a4-9089-17cba6d2677c',1718161092833,NULL,'{\"value\":\"I3nto0WhiczwkJKhSvScetUg+9Y2lwO9RrGwxop/Nzfu4fj0mndZoBBAzQTouDxnba0B58PYo3i3GNDfRpOimg==\",\"salt\":\"0OnXOia3ZXtMgmInzAYXFg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-12 11:54:24',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-12 11:54:24',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-12 11:54:24',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-12 11:54:24',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-12 11:54:26',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-12 11:54:26',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-12 11:54:28',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-12 11:54:28',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-12 11:54:28',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-12 11:54:30',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-12 11:54:31',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-12 11:54:31',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-12 11:54:31',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-12 11:54:31',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-12 11:54:31',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-12 11:54:31',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-12 11:54:31',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-12 11:54:33',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-12 11:54:34',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-12 11:54:34',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-12 11:54:34',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-12 11:54:34',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-12 11:54:34',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-12 11:54:34',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-12 11:54:34',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-12 11:54:35',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-12 11:54:37',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-12 11:54:37',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-12 11:54:38',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-12 11:54:38',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-12 11:54:38',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-12 11:54:38',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-12 11:54:38',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-12 11:54:38',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-12 11:54:39',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-12 11:54:39',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-12 11:54:39',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8160859772'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-12 11:54:39',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-12 11:54:39',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-12 11:54:39',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-12 11:54:39',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-12 11:54:39',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-12 11:54:40',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-12 11:54:40',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-12 11:54:41',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-12 11:54:41',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-12 11:54:41',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-12 11:54:42',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-12 11:54:42',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-12 11:54:43',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-12 11:54:43',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-12 11:54:43',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-12 11:54:43',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-12 11:54:43',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-12 11:54:43',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-12 11:54:43',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-12 11:54:43',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-12 11:54:45',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-12 11:54:45',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-12 11:54:46',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-12 11:54:46',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-12 11:54:46',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-12 11:54:46',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-12 11:54:46',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-12 11:54:46',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-12 11:54:46',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-12 11:54:46',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-12 11:54:46',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-12 11:54:46',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-12 11:54:46',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8160859772'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-12 11:54:46',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8160859772'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-12 11:54:46',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8160859772'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-12 11:54:46',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8160859772'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-12 11:54:46',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8160859772'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-12 11:54:46',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-12 11:54:47',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-12 11:54:47',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-12 11:54:47',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-12 11:54:47',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-12 11:54:47',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-12 11:54:47',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-12 11:54:47',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-12 11:54:47',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-12 11:54:47',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8160859772'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-12 11:54:47',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-12 11:54:47',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'8160859772'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-12 11:54:47',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-12 11:54:47',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'8160859772'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8160859772'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8160859772'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-12 11:54:47',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8160859772'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-12 11:54:47',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-12 11:54:47',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-12 11:54:47',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-12 11:54:47',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-12 11:54:47',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-12 11:54:47',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-12 11:54:47',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8160859772'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-12 11:54:48',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-06-12 11:54:48',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-12 11:54:48',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8160859772'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-12 11:54:48',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-12 11:54:48',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-12 11:54:48',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-12 11:54:48',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'8160859772'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-12 11:54:48',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-12 11:54:48',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-12 11:54:48',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-12 11:54:48',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-12 11:54:48',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-12 11:54:48',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-12 11:54:48',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-12 11:54:48',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8160859772');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','06de2bc6-76a3-4782-bcc4-551d53a88145',1),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8',0),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','780a63f7-cd01-4042-ace6-756c2c0246a9',1),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','8a1cc568-0e97-41fb-90c9-030d8794525a',0),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','95d34a9a-a738-49d4-8c95-83e1f35f22de',0),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','acd67b0a-2353-4b21-9e14-a4924c6e56f3',1),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cc2303dc-4165-4fc3-b24c-8dc0d7f25f41',0),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','d71fb6b5-e22a-4501-b57c-5ac1c9e57a27',1),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','ecbd0428-fba5-4b97-9989-5938b54045d9',1),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','f78408f4-3b7a-42ec-82bf-337bc62f713c',1),('org1','0a073fd1-3eb5-4252-989c-b1da55183fca',1),('org1','196d85d4-d0fd-41bd-aa17-ba4d38919b7e',1),('org1','247382aa-55ff-420f-91fd-88f2b202a3f7',0),('org1','3c247d4f-4b65-4b8e-b243-f26b8124068a',0),('org1','6ced35b6-82e3-408f-8d39-674e5046826a',1),('org1','92b6435d-27be-4e06-ad33-fdbbab5effc5',0),('org1','a16bd48a-a471-4aee-889b-5c112987f65e',1),('org1','b7792496-e95d-400f-96f1-99265ce5ccfa',1),('org1','cb34d771-0f8c-4df1-99a7-fe6fceb85925',1),('org1','feb4a5c4-5f56-42a1-8fab-b4fcc756b3d4',0),('org2','01db02ba-5b84-489c-b04d-3bf376a4be68',1),('org2','18a441af-f824-4118-acd9-1b9b3f223007',1),('org2','2cbc2004-3382-4bb9-85af-8d909faed357',0),('org2','44618b55-4426-4599-a2df-d102289edaec',1),('org2','970da01e-80f0-456a-9b41-db34158cd2d1',1),('org2','b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e',1),('org2','d35f12c2-91c4-4d09-a06a-d89203f2efd6',0),('org2','d5e9ff94-535e-42db-bcda-b3f54e6b338d',1),('org2','e8fdb9d6-cb26-4529-ade8-8d4d0c08f746',0),('org2','f9a1aac2-6f0e-4165-905e-be5e577999e1',0),('org3','0350a4ec-d983-4b36-8cf6-02857c0550ff',1),('org3','573ef186-9519-4cbf-9413-638d559d5725',1),('org3','79be3c58-66c3-493f-9b41-63f5932cd256',0),('org3','7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9',1),('org3','829802f6-91a4-478a-a69f-4870ec990a54',1),('org3','99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e',0),('org3','bcaf9f9b-face-4a40-a92a-826c09ad563b',1),('org3','d3f0a90b-7000-47a6-82e3-7efdcbf501d3',0),('org3','e765decd-f663-4e8e-bed3-57894b73f688',1),('org3','f6a57487-a8b7-465f-b816-771a63b39b77',0),('org4','396c1462-3f29-4681-9bdf-205016137165',0),('org4','4503942f-471a-4096-819b-7f7550255f99',0),('org4','5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f',0),('org4','73fc20e5-903b-4e1d-bb86-bee82aac4f5e',1),('org4','782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0',1),('org4','a3be8d7b-f503-456e-bf20-3d59422fdd42',1),('org4','e5f6b985-b17f-45e1-8b51-c86324f63089',1),('org4','f69b14f9-f662-4e4a-9f79-269a929bf501',1),('org4','f82054ed-9f54-4bdc-867c-e8bf4789465c',1),('org4','fc55bd21-c811-44fb-8084-8c8851a7a1f3',0),('org5','10090f9c-672a-4939-9b20-d6a1365b8397',0),('org5','1b4c8312-f910-47a6-97a7-0bfdec3fc705',1),('org5','40a410b5-5633-424e-9edd-5e2fed510fbf',1),('org5','415cfb4d-0872-45ff-8f3d-d3402bf0a04b',1),('org5','4c8b153d-47bb-4118-a727-5adae8d379ca',0),('org5','5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3',1),('org5','95f28550-8a42-4e4c-8b75-57735c259262',0),('org5','aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6',1),('org5','bf41c45b-3e1c-4abc-83b8-6802520fc276',0),('org5','d3d139ce-39d4-481d-af01-53c4dffde4b0',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('00c6c1ea-acb5-4ca1-b211-13cac5c0eed0','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_ws2-admin','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('010ec8b3-ffe5-4dc5-91e3-693b9cc371b3','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'ws3','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('018274d0-ca3a-4e23-83dd-81742cb39d1f','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_view-users}','view-users','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('02774b10-4a7a-4802-923d-3909f07bd027','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,'${role_default-roles}','default-roles-master','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,NULL),('0333b6b6-bfd9-498a-8b54-7ed3825e7a79','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_query-realms}','query-realms','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('044412ba-ad3e-405a-9146-c8bc50ed996a','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_impersonation}','impersonation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('04b858f3-0de7-46ec-a103-6769dc16e9c3','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,NULL,'_ws3-admin','org5','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',NULL),('04ccb7ed-f2aa-4dae-b231-46bdbf220a00','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_manage-events}','manage-events','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('056e5a3f-b5fc-4f82-9274-eb03177dc6e7','3be016d4-911e-4469-9231-6ac1341460fb',1,NULL,'_organization-user-role-manager','org1','3be016d4-911e-4469-9231-6ac1341460fb',NULL),('05ca98ac-c36c-435d-becc-5836ff7e15e9','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,NULL,'_ws1-admin','org5','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',NULL),('05f6fd6c-2c80-47db-816f-f14de2e1a1cb','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_manage-account-links}','manage-account-links','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('070db73f-0e38-4719-ad5f-bfddd7d00010','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'ws2','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('07cef6f3-8e90-4210-b127-8ba03991ff58','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_manage-users}','manage-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('089089cf-8d0c-4d12-85c9-71d6fad58811','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_manage-identity-providers}','manage-identity-providers','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('08a2c967-134e-46fb-866c-9281a0b60558','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'ws1','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('08f3d0a1-85ce-4007-a153-6990811982d3','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,NULL,'_organization-user-manager','org5','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',NULL),('0ae395f8-a808-4b06-a2b1-fae74f43e635','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_query-users}','query-users','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('0b3255ea-985d-4048-9618-b81bce0fb14b','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_view-events}','view-events','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('0c1ec1d3-8915-4510-9a2d-575f6153a722','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_manage-realm}','manage-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('0c67fc5d-9038-4299-986e-7b6bc12fa9d0','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_view-consent}','view-consent','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('0cbf186d-feff-4ccf-b281-1c48f5ca2adc','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_query-realms}','query-realms','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('0d0bc684-08fa-4f53-b7d3-e50fbd30f97d','org5',0,'${role_offline-access}','offline_access','org5',NULL,NULL),('0deeb29d-12cd-4afc-9607-100f3f5ed435','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_manage-clients}','manage-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('0e22a3d9-9c99-4317-8ee9-942dc86a5b7a','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_create-client}','create-client','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('0e763ee8-bed3-4bd7-8c2d-9be0b32cfcc0','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-usage','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('0fa61866-57f0-49cf-909c-fd49a5bfbeea','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'ws1','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('10a71f76-908b-4ee6-a95b-c669a1d90efd','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_manage-clients}','manage-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('110dc14d-65fd-4aed-939d-38ec80462c35','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_view-authorization}','view-authorization','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('12b54410-8f19-4151-a8da-163741aebc45','org4',0,'${role_offline-access}','offline_access','org4',NULL,NULL),('136f59ca-9c74-471a-9121-e0f8c2bef8aa','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_view-realm}','view-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('13d4f2cf-62b9-42d5-99fe-2fb8934804f7','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_manage-authorization}','manage-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('13f3446a-44e1-4c88-bd3b-13fce43d7436','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_create-client}','create-client','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('14ccda86-c3a1-44da-b2af-5e635d9310ba','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_query-users}','query-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('14cf4bbc-036f-4816-9217-c0d0add46ff2','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_view-users}','view-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('14e2a1cb-b475-4733-b7b2-7624857622b0','org2',0,'${role_offline-access}','offline_access','org2',NULL,NULL),('17c0dc0a-840d-464a-bfcd-47a548a957cb','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_impersonation}','impersonation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('18965a3b-345e-4b2b-b6c2-576c2cec386b','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_manage-clients}','manage-clients','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('18d7e35f-9dd3-4e53-9da6-507132cf8a61','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_view-realm}','view-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('1902b768-a997-488f-9dcf-840c0fd259a0','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_query-realms}','query-realms','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('1b2bde80-bc0e-4a77-904b-7d63ba782a98','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_query-groups}','query-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('1bfa6b77-9c0b-427b-babb-be83c1adf0cd','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_view-groups}','view-groups','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('1d7573af-20d8-4e61-85d7-d6d2cc24fc85','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_view-realm}','view-realm','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('1e0f760b-585a-41de-ad19-f0caf67ef953','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-role-usr','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('1ed4c78f-a2bb-4b79-a0cf-1ba70bec0e9f','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-usr-mt','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('1f7887ed-9e13-44d6-8d8e-bd0a47522175','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_query-groups}','query-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('1fdfa0a3-1700-4f39-874a-46bdc7eb8be6','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_query-users}','query-users','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('2088d3a0-b6c6-4d82-b88d-14dbf0c0b6ec','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_manage-events}','manage-events','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('2125dea9-3cf7-4595-b5d3-cd2b500363b1','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_manage-identity-providers}','manage-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('22a98194-af19-4610-a18e-9f7b61e6ba0c','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_manage-identity-providers}','manage-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('22e3f376-7ee5-48bd-8ad4-4576c072d03e','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_view-clients}','view-clients','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('24e7ec28-986f-4279-ac71-5188f93df83d','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_delete-account}','delete-account','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('27b8562b-36e0-4836-947d-b9ea8e636d8f','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_manage-account}','manage-account','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('27fb65a2-bd4f-4361-98d6-4d3f2633011c','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_manage-consent}','manage-consent','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('2939ad4c-0508-4554-b927-d1f7916e2f3c','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-usr-mt','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('29bf41a1-6c60-4810-bfe7-97ad67587008','org5',0,'${role_default-roles}','default-roles-org5','org5',NULL,NULL),('29ebd35b-6122-41d6-b0fc-40328a29ee1f','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-usr-mt','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('29eee57d-85f4-4b42-a91b-e82ba820c6ca','87151c85-c4be-4bd9-ad28-582c4300419a',1,NULL,'_organization-user-role-manager','org4','87151c85-c4be-4bd9-ad28-582c4300419a',NULL),('2a174c26-9ad4-4f05-b127-7347a8ee2867','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_manage-realm}','manage-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('2ad3121f-83f4-4ded-9406-ca91b3348f1b','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_manage-authorization}','manage-authorization','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('2bba83a9-c76c-416d-bec9-8f4242025483','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_view-clients}','view-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('2c2cb442-2e86-48d8-91b7-4cdb0c850ef7','38b045ce-2293-4f53-bb82-e8676d9264d0',1,'${role_read-token}','read-token','org4','38b045ce-2293-4f53-bb82-e8676d9264d0',NULL),('2cfbfafa-3d9e-4875-99bb-60b89a40f810','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-usage','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_realm-admin}','realm-admin','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('2dc3e065-18c8-47c1-949b-d0926a5a1bf8','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_manage-clients}','manage-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('2e416b6b-dafb-40b3-b5d9-220c6b472cea','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_manage-events}','manage-events','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('2f02694a-2310-4822-affc-6e78081e2606','cdafba6c-0be4-4099-b7c1-5c353281b317',1,NULL,'_organization-manager','org2','cdafba6c-0be4-4099-b7c1-5c353281b317',NULL),('2f60beb5-26b5-4d9e-9b6f-31c1bb6fd91c','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_query-groups}','query-groups','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('2fce0133-cbf2-466d-8235-a9428a386264','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_view-groups}','view-groups','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('2fef6819-c28b-473d-87f3-ae80915f033a','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_view-consent}','view-consent','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('3010e9dc-a9a4-4b2c-bd34-83934dda7e14','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_view-realm}','view-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('30e12d60-06a5-4b34-8229-b04ea3fea69e','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_realm-admin}','realm-admin','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('30e56e50-9657-4852-922a-1dd2a05b1d1e','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_view-clients}','view-clients','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('31306a0c-c098-4fd9-b1d4-9a8d50d9e116','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-role-usr','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('319358cc-6da1-40ac-baa9-c9c127e2f068','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_view-clients}','view-clients','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('3249e4f5-8c72-4f1f-a8d5-6f842443fd4a','3be016d4-911e-4469-9231-6ac1341460fb',1,NULL,'_organization-user-manager','org1','3be016d4-911e-4469-9231-6ac1341460fb',NULL),('35354f50-eb44-4d6b-bd1f-874ee907f31c','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_view-consent}','view-consent','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('35427293-42b6-4879-9059-aac833f6c21a','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_ws3-admin','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('3764d81f-6d6c-4c16-a966-8a8e95b4d582','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_query-users}','query-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('37818107-20ba-4025-99eb-1481aaedb049','org3',0,'${role_offline-access}','offline_access','org3',NULL,NULL),('386003c5-d286-45f9-aa4e-06124f50596f','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_manage-consent}','manage-consent','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('38c4cc83-b6f9-405f-93b1-fbd5f08b951b','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'ws2','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('3981bb78-9647-4bce-ab14-7c48173037b9','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_manage-events}','manage-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('39b9fcec-5be4-48d6-9eed-146a91b9897e','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-ws-mt','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('39ccd113-2e1e-464e-8222-32c60ce0ce02','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_manage-authorization}','manage-authorization','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('39f4c4c1-ee02-4859-9c28-a9040b71b96e','cceb3ef3-6e23-4e02-a842-ca6a1cabb10f',1,'${role_read-token}','read-token','org2','cceb3ef3-6e23-4e02-a842-ca6a1cabb10f',NULL),('3cb1ae6e-126b-4560-959e-c5696a06fcb6','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_impersonation}','impersonation','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('3cc34475-54ed-4bf9-9d50-739f2d71e530','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-ws-role-mt','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('3d4927b5-3a8b-41ac-9308-e9e4f0344865','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_ws1-admin','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('3e61dce3-e07b-4f32-9ef3-644ca00d6c66','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_view-identity-providers}','view-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('3ffeba98-ae7d-4cc4-ad64-4022e6ad7cf7','org5',0,'${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('4008aef9-0553-43e8-90b9-344fc5b6859a','3be016d4-911e-4469-9231-6ac1341460fb',1,NULL,'_ws2-admin','org1','3be016d4-911e-4469-9231-6ac1341460fb',NULL),('40349bfb-3002-449b-bc97-ffac3e9883fe','cdafba6c-0be4-4099-b7c1-5c353281b317',1,NULL,'_ws2-admin','org2','cdafba6c-0be4-4099-b7c1-5c353281b317',NULL),('40905173-8753-4e66-8d8c-7e9a6da621f7','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_view-clients}','view-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('416e105c-ff36-4901-a39b-a2b8467bbbb9','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-usage','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('429c6e4b-33ac-46f4-9cdb-cb7ea54900d3','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_manage-users}','manage-users','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('42c8d577-bcf9-4eaa-a2a0-c083d528c3ca','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_view-authorization}','view-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('4435ae80-36b3-45e8-932a-0c9cc67e7a4e','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_create-client}','create-client','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('465c8a57-d26a-4fd0-8b43-8b18ca05e72a','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_impersonation}','impersonation','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('468df03f-75e5-4b29-b0a1-4dff732230e1','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_manage-clients}','manage-clients','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('46caf651-4293-4d65-9cdb-b019bf8c2cb9','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_create-client}','create-client','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('46f7b820-7b85-4ebc-8193-e2737dadea6e','cdafba6c-0be4-4099-b7c1-5c353281b317',1,NULL,'_ws3-admin','org2','cdafba6c-0be4-4099-b7c1-5c353281b317',NULL),('47708ca5-df30-4b0b-973d-998b373b05f4','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_query-clients}','query-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('479657f3-828b-4b0b-9b60-c50d8ea0038b','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_ws3-admin','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('47dabece-dd62-438c-ae27-13acba344a81','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'ws1','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('498c3e88-ff99-4e74-b932-7a6a69fa3d3b','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_manage-clients}','manage-clients','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('49c6eb3c-29cf-4920-b488-a47a61c146a8','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-ws-role-usr','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('4a78f73b-2eec-42e3-be04-1de33d714625','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'ws2','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('4d1c71c8-7479-4f56-911a-6bfcb33b2112','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_view-events}','view-events','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('4db2dde9-9efc-4a07-a4d9-a6cdbba6ca70','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_manage-authorization}','manage-authorization','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('4e0d5cf9-6580-404b-a501-53c09fd896f2','org4',0,'${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('4ea3cf01-48ec-4aed-a279-ccb9aba3403b','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_manage-consent}','manage-consent','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('4f2e6ba7-6561-417d-ac69-3363d2c9dff5','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_manage-events}','manage-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('505f9cfe-b3d3-4208-a8f8-6d4600417680','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_query-clients}','query-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('50c4490e-9294-4237-8668-910d0997ed37','org3',0,'${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('50d44303-bddd-4a16-b526-1a8776cc8360','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'ws1','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('5174e430-28fc-4436-a280-e5250b3d879b','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_view-users}','view-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('524e9890-2cbc-45d0-b368-d4489de36cbf','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_view-applications}','view-applications','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('52d4fa16-a3b3-4565-ae73-9ebdc92d6db4','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_view-authorization}','view-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('53ef88cb-e78d-43d4-9632-9ee04d9f6c91','cdafba6c-0be4-4099-b7c1-5c353281b317',1,NULL,'_organization-user-role-manager','org2','cdafba6c-0be4-4099-b7c1-5c353281b317',NULL),('5517eeba-93aa-4773-9a3f-948367b3402b','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_query-users}','query-users','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('56183ca5-8f90-498e-86a3-8a203a694ded','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_view-clients}','view-clients','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('565ee6a8-3ce7-44ff-b3f5-59e01b31bf97','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_manage-account}','manage-account','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('565fefe6-af35-4567-853c-631c0463bfbd','5b9974e3-958a-4141-a968-20b76fb0f11b',1,'${role_read-token}','read-token','org3','5b9974e3-958a-4141-a968-20b76fb0f11b',NULL),('569ad2de-0ed7-4df8-892f-230f68bbd56f','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_query-realms}','query-realms','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('57088a94-9e7b-4b1c-94e2-35b4d3bb7bb2','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_manage-realm}','manage-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('577a8056-b249-49c0-8e3c-2321e7022434','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_query-users}','query-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('5819cd88-8396-4c0a-9181-f1f8ed01f70a','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_view-users}','view-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('5912df1c-9ce4-43a8-a470-f4c4dc09c151','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_manage-realm}','manage-realm','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('59f24ab3-2cc5-45e7-b1f9-a66a094e318d','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_view-events}','view-events','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('5ba18390-9717-480d-b692-a0e1fbf57cb1','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_manage-events}','manage-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('5c42947d-1edf-4387-9f46-d4e7e57cfb8b','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_ws1-admin','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('5c6dcb87-654f-44a3-90f6-8eaf808677fd','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-upd','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('5c9b8b5f-9b14-4861-94ba-2019623dbe66','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_manage-realm}','manage-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('5d0ca8c8-dbc4-4118-a613-30cede33a1e5','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_manage-users}','manage-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('5d129c8a-50c0-4f4c-a816-87c36b0c2f37','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_query-realms}','query-realms','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('5d3104d3-82c8-4535-81bd-de3cddd37178','cdafba6c-0be4-4099-b7c1-5c353281b317',1,NULL,'_organization-user-manager','org2','cdafba6c-0be4-4099-b7c1-5c353281b317',NULL),('5d41ad95-03c5-4f3f-b722-2c47f9842602','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_view-clients}','view-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('5d64ff0c-9420-49f7-9aa3-834a4b089e9d','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_view-applications}','view-applications','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('5ebde616-dd7d-4b11-b5ff-666f61fff846','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,'${role_admin}','admin','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,NULL),('5f7ffdce-84f8-4790-8990-dbd4e7d2eaeb','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,'${role_offline-access}','offline_access','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,NULL),('5fce7fe4-2c35-4712-ada6-bc5737498424','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_query-clients}','query-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('601e1456-b6ad-4108-8eec-f19638cfe8af','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_view-identity-providers}','view-identity-providers','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('614614e4-72fe-44bf-b59c-c77233faf400','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_manage-authorization}','manage-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('61eec536-33e1-4268-afc5-9f6afd8bfce6','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_view-profile}','view-profile','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('620d4b19-4623-49ce-9efc-a44aee31679f','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,NULL,'_organization-manager','org5','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',NULL),('620e3a5e-2a76-4ef7-9382-01150ee06069','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_manage-account}','manage-account','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('62a84404-904c-4283-8efb-5ae24779149b','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_query-users}','query-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('62a936b0-8339-4a87-8ee7-19f4b0cf9c75','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_view-clients}','view-clients','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('62e4457f-13f9-489a-9d5b-375a965eee85','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_query-users}','query-users','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('63077bbd-b0d2-4ab9-9abd-4ccb8e682be6','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,NULL,'_organization-user-role-manager','org5','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',NULL),('6397e75f-5724-4dc5-accb-3d79b056f29e','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_manage-realm}','manage-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('647eea5e-6e4a-4f2b-b1bc-5918dc3c84ba','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_view-users}','view-users','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('64c25f23-e978-41ef-9cd1-98e9691e02cf','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_impersonation}','impersonation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('64f27664-3b60-440a-9ea6-e64e33b7d340','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-audit-log','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('65c5b360-70ba-42bd-962a-4d90fbdc7c18','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_manage-identity-providers}','manage-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('664845b9-c71a-4dcb-9fb0-1279531e1e00','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_manage-users}','manage-users','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('66ccaf61-27a3-4d6f-96ec-38461e484152','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_view-profile}','view-profile','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('67ea679e-92af-407f-b7c8-17024c8093e2','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_manage-realm}','manage-realm','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('687e8e6c-6071-4512-83b6-4cedd8dcc0d8','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_manage-events}','manage-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('68fb3d3d-54bc-4169-b768-e9ebd323f8cc','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_delete-account}','delete-account','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('69d3a0a3-5456-49b9-ae19-23c656233ab9','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_ws3-admin','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('69ea30d6-d880-4d67-a096-aef38ddaf117','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_manage-users}','manage-users','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('6a3e98d5-48be-4ea2-bb74-e017af9b3d4b','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_view-profile}','view-profile','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('6a47c506-e084-40ba-becd-2e4f60261e44','3be016d4-911e-4469-9231-6ac1341460fb',1,NULL,'_organization-manager','org1','3be016d4-911e-4469-9231-6ac1341460fb',NULL),('6a80c8be-8377-4a1c-bd46-39b983ca9359','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_view-realm}','view-realm','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('6eac912e-4042-4c12-af41-78d1421fcf81','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_manage-account}','manage-account','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('6fe226d9-99cb-4f46-bda1-d83b364b0edf','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_view-profile}','view-profile','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('7051bbde-751f-467d-81ec-2646aa5a7a35','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-usr-mt','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('7056f595-d6d0-40ad-bdf6-2addbe857221','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_create-client}','create-client','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('706be7b7-7c58-48ab-84a5-22539039b53f','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_impersonation}','impersonation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('716d5672-ddb2-4a48-b3c4-d66f1dfb2bfb','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_view-applications}','view-applications','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('72ecd35b-f76c-4fe3-b45b-d046d6c62281','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_view-consent}','view-consent','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('72fa619d-8e1f-4d8a-ae94-66da4b6c4787','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_query-groups}','query-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('7384a5b7-1b0e-4054-871d-893461e8bc93','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'ws3','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('74f18454-52ef-48d3-8343-9d0606364f55','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-ws-role-usr','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('75133a4f-b43b-49fc-a9df-e45a7b83f0c2','org1',0,'${role_offline-access}','offline_access','org1',NULL,NULL),('75841af2-c2bf-4e51-beca-914ceb0d834f','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_query-realms}','query-realms','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('76ec2416-4319-4a7f-b628-019b9653e08f','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-ws-role-usr','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('7771e7a1-e1a1-4437-91f9-ce341eb5af2f','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_manage-account-links}','manage-account-links','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('778ac27c-7169-4c38-908c-82e5bab822c1','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_manage-authorization}','manage-authorization','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('778e2b1a-49a6-4005-9b1b-1a02fbfa085d','cdafba6c-0be4-4099-b7c1-5c353281b317',1,NULL,'_ws1-admin','org2','cdafba6c-0be4-4099-b7c1-5c353281b317',NULL),('7822b23f-510a-4ada-b513-c90bed7c90ec','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_manage-identity-providers}','manage-identity-providers','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('78bbb7e1-630d-40f9-991e-c2440dc78f11','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_ws2-admin','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('79cae8ef-3069-4b9e-a3ec-5162a9337102','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_manage-account}','manage-account','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('79db443c-3170-44b6-85c2-09a932b6b581','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_manage-identity-providers}','manage-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('7a0d0389-7c7c-49b8-a408-bd4500687d2e','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_view-authorization}','view-authorization','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('7a741bc8-b727-4b0c-abe9-ae46a88df814','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_view-authorization}','view-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('7cce667c-e41f-4752-87da-3808e47afc81','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'ws3','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('7d282a06-96bb-4f2e-8af3-ad3138dc3839','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_manage-authorization}','manage-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('7e06e37a-9b46-460c-ac14-0301e5d14e4a','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_query-users}','query-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('7e111b5e-bad0-4fd2-b853-4a7206f1d98c','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'ws3','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('7fe5c3f0-8108-414d-aabe-1f1e17fac4e8','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-ws-mt','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('81506dd9-a7d4-4ae4-a5be-7d0c0241f26d','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_manage-events}','manage-events','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('831c6801-a7e3-49dd-98d9-6977b5c92271','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'ws2','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('8364e573-ff57-41f9-a7fc-84af5a2b03c7','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_view-identity-providers}','view-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('84649662-3b00-4bb3-b328-0f665becd754','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_view-events}','view-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('84711de3-3f09-4c83-8926-30004ee052d2','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_query-users}','query-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('8497ec31-6dcd-4c89-a052-785bae49bc2c','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-ws-mt','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('85a7db0a-1b27-4679-b784-a4a7209cc428','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_realm-admin}','realm-admin','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('86004a14-8473-4293-9244-97d8e940375b','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_view-events}','view-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('86b52158-c04d-42d0-8a71-a75f2b3fec57','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_manage-clients}','manage-clients','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('8705e473-8b47-4350-b8a7-2dc1216ab25b','org3',0,'${role_default-roles}','default-roles-org3','org3',NULL,NULL),('874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b','3be016d4-911e-4469-9231-6ac1341460fb',1,NULL,'_ws3-admin','org1','3be016d4-911e-4469-9231-6ac1341460fb',NULL),('879916fb-0093-44bf-bf0d-94ba0bbace95','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_manage-clients}','manage-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('8890cdbc-73bf-4d89-9d02-19d935fe5b5d','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-ws-role-mt','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('88af9d3d-2f67-4531-bfe4-f47247dafada','3be016d4-911e-4469-9231-6ac1341460fb',1,NULL,'_ws1-admin','org1','3be016d4-911e-4469-9231-6ac1341460fb',NULL),('895c6e6c-39c4-42ae-ba37-0ae823d75800','87151c85-c4be-4bd9-ad28-582c4300419a',1,NULL,'_ws2-admin','org4','87151c85-c4be-4bd9-ad28-582c4300419a',NULL),('89a90598-4d49-4032-ae48-1d35bc2d1857','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_view-groups}','view-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('89ae1ed6-5847-4ac5-810a-eebe82134b33','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_manage-users}','manage-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('8a525193-0ce8-4162-87ab-5af442a3af2a','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,'${role_create-realm}','create-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,NULL),('8ac8c0b6-cd75-4bf5-8184-82c0989abc55','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_view-identity-providers}','view-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('8b15f18f-4adc-488e-90d0-a60e2c2264ee','org1',0,'${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('8d4a3394-8132-48af-9349-d2c40c46d03f','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_view-identity-providers}','view-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('8dbfdeec-2e4f-4e33-a7c9-c05893d22a0e','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_manage-consent}','manage-consent','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('8dc7f3f9-0562-463c-8d10-a4db950d9242','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_view-events}','view-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('8fdd3e59-228e-4284-b48a-eb539b200ce8','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_view-realm}','view-realm','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('90144b56-6d11-4537-9358-831dbed88721','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_manage-account-links}','manage-account-links','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('913e3e3b-276f-479e-8521-04ea400bfca6','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_view-users}','view-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('9168b39a-059b-4296-b3fb-39b18ab1e61d','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_delete-account}','delete-account','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('91813dae-e2a2-44ca-b504-6ae4f3470aa8','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-ws-role-mt','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('91dd1eb6-f5d7-4c4e-9881-f8329f7c2b4d','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_query-groups}','query-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('91ec71f5-7dcd-4527-8482-642f15da9cb7','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_manage-authorization}','manage-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('92799bf5-c731-4a04-aedb-d2f5c7216bc2','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_query-realms}','query-realms','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('928a4dbf-babf-405b-a60e-bdec44e1aec4','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_view-clients}','view-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('92962358-0159-4bcd-8fe2-5c23f93a704b','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_manage-authorization}','manage-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('929a307b-d774-46cc-885f-4d3b8d342f63','87151c85-c4be-4bd9-ad28-582c4300419a',1,NULL,'_ws1-admin','org4','87151c85-c4be-4bd9-ad28-582c4300419a',NULL),('93a7e15a-eedd-47e7-b546-88a97aaf7fb2','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-own-mt','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('94325578-5583-4d89-8596-82fa06502c8d','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_view-realm}','view-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('94902166-18b4-4da8-9296-1d3ae567cdad','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_query-clients}','query-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('964e2ff8-3363-4d1c-8a23-72b93b2ecda1','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_ws2-admin','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('96778dd7-baac-4c0f-9556-4573c4e96791','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_view-events}','view-events','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('9699b573-6eb7-4f60-8b7d-0f50e1c99692','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_query-groups}','query-groups','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('969d75da-460e-4263-934d-0e4fb0d52c13','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_manage-users}','manage-users','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6','728645f5-c020-49b8-b411-dcde55a7ade7',1,NULL,'_ws2-admin','org3','728645f5-c020-49b8-b411-dcde55a7ade7',NULL),('992c2fe5-2d93-46ac-b92e-1a7eb276b53c','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_manage-identity-providers}','manage-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('99b9da4e-5717-49ba-b3af-5ca34f94ebf2','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_manage-realm}','manage-realm','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('9a168ec7-159e-4063-98c6-11fcaa6827ad','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'ws3','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('9a7fa1d9-5ec4-446d-bf41-a9dd26cb1f19','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_view-identity-providers}','view-identity-providers','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('9ab2f649-415b-46d5-a9d3-9d9d77882e17','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_query-groups}','query-groups','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('9ac132bd-1c71-4a54-972e-a62e83809f91','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_view-profile}','view-profile','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('9ac7c8c5-290e-4a33-9ef0-c876d33f9890','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_view-authorization}','view-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('9aeaec42-13af-4435-bf9e-72d1920fd1fa','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_view-authorization}','view-authorization','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('9b5847c6-3d67-4fd6-ba30-e2fae53a39a6','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_manage-clients}','manage-clients','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('9c40cca9-f1dc-47c5-a26d-7fdd1eb6010b','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_view-events}','view-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('9e4392b6-9ea8-4687-9de1-bda21b75baf7','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_impersonation}','impersonation','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('9e4a9d35-3795-49ba-9f14-e709ccc57b18','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_view-authorization}','view-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('9e9e052d-6600-42ad-b6a3-458cd3b8574d','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_manage-users}','manage-users','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('9ef52964-ebac-414a-9bb3-165957f6c568','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_manage-realm}','manage-realm','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('9f55b1c3-61bd-4b5e-bfbe-83c5a63358b6','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_query-groups}','query-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('9f9435e8-3485-4c8b-8464-f171830e650d','87151c85-c4be-4bd9-ad28-582c4300419a',1,NULL,'_organization-user-manager','org4','87151c85-c4be-4bd9-ad28-582c4300419a',NULL),('9fbbf359-3bfb-4b05-8717-c0d736344655','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-usr-mt','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('a02d2bf3-10b4-43b8-8664-af614992e7e6','87151c85-c4be-4bd9-ad28-582c4300419a',1,NULL,'_ws3-admin','org4','87151c85-c4be-4bd9-ad28-582c4300419a',NULL),('a03b9fd2-2e48-4a65-9799-46ae7f304c13','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_manage-identity-providers}','manage-identity-providers','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('a081def5-2445-4ac0-be50-3f23a65158fc','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_view-users}','view-users','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('a109408e-ebf6-4d10-926c-ea9249dfb5f3','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_view-groups}','view-groups','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('a19d3f37-a306-4fe4-b141-da766fcb9754','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_manage-realm}','manage-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('a1fcc6bb-eaa9-46b3-b2a2-c435a14072f1','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_ws2-admin','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('a2c457d0-df0a-4c4c-a140-629614e4731d','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_view-users}','view-users','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('a323b7b3-5020-4d01-ad52-8c1bb15eb6d7','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_manage-realm}','manage-realm','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('a37744ce-b793-4ffc-a06f-ba6b4ac87a4c','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_ws1-admin','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('a3ec8e6d-831c-4fb2-83d7-532d9ea61383','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-own-mt','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('aa815afc-f653-492e-899c-446783030cb9','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',1,NULL,'_ws2-admin','org5','d9a1f06e-912b-4fc0-b702-6e36617fd3ae',NULL),('aac3e92b-7375-49b4-b430-ae372fab0cfd','728645f5-c020-49b8-b411-dcde55a7ade7',1,NULL,'_organization-user-manager','org3','728645f5-c020-49b8-b411-dcde55a7ade7',NULL),('abb18c0e-6cad-4167-8f0e-fad84c23c3ae','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-upd','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('ac216ff7-4c11-4e6f-946b-ae4c839b02ad','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_manage-users}','manage-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('ac2ed342-6e6d-402a-8852-1e286b56e217','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,'${role_uma_authorization}','uma_authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',NULL,NULL),('ac3a0b3c-6796-4a49-95ab-a95e575982fd','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_view-identity-providers}','view-identity-providers','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('ad7c0fe8-74f3-4b04-9dfc-a6ab2802ed25','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_view-consent}','view-consent','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','org4',0,'${role_default-roles}','default-roles-org4','org4',NULL,NULL),('b2931592-ddf8-428f-a2be-0f2f46b6aa92','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_query-realms}','query-realms','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('b2b61a4f-11ba-40da-acd4-438f6bce1331','728645f5-c020-49b8-b411-dcde55a7ade7',1,NULL,'_organization-manager','org3','728645f5-c020-49b8-b411-dcde55a7ade7',NULL),('b42f87a3-520f-4975-bb3b-28968ea1daf1','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-ws-mt','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('b4868d9d-def7-40a6-ad2f-87df3fa6e986','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_view-realm}','view-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('b48b84c6-69bb-4a47-8b78-8f776a82aab1','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_impersonation}','impersonation','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('b5ba81e5-3451-4bbc-b356-ea13c80f75d5','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_manage-identity-providers}','manage-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('b647639e-b3a2-445f-8f56-6cb7979d5177','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_manage-clients}','manage-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('b69d61b5-4a12-4cf6-969c-8ec827f78b95','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-usage','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('b7116fff-d63d-4899-9b64-c2fe6590f855','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'ws2','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('b79e9f1e-439c-4873-ae02-38e0781bc087','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_view-applications}','view-applications','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('b7c48abd-fc1d-4462-b9ae-0dc24c7575d0','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_manage-identity-providers}','manage-identity-providers','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('b7d43662-72e0-4191-81c0-06fd251ee30f','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_view-groups}','view-groups','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('b933e995-566a-4423-8b6a-2a17ec00317c','798b8335-bb1d-4dd7-a08d-af73bdc5657a',1,'${role_read-token}','read-token','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','798b8335-bb1d-4dd7-a08d-af73bdc5657a',NULL),('ba3db413-da8a-4a03-b4f8-813c2c8a9f33','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-ws-role-mt','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('ba8f3db0-bb72-49ac-b94b-648dc8776fb8','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_query-groups}','query-groups','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('bb0657f9-40a7-440d-8d68-d00e75fdcfe5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_manage-account}','manage-account','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('bc04029c-6fd0-489d-a638-c1250104778d','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_delete-account}','delete-account','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('bce0c044-0e00-4105-bf56-4fec470cbc5a','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_delete-account}','delete-account','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('bd9e5c82-dbfc-4ef2-8492-68d375b95ac5','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_create-client}','create-client','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('bf516ab0-d6af-415a-b34c-b461944122ef','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-role-usr','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('bfa34d68-e978-45be-8783-904bc3128fdb','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_ws3-admin','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('c16d95bb-4a9b-4a12-afc8-61a22c5430fd','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-ws-role-usr','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('c1f22d4c-e63e-4155-9c00-257d58e42656','562de244-70bc-48d7-a18f-c318a4d49d63',1,'${role_manage-consent}','manage-consent','org1','562de244-70bc-48d7-a18f-c318a4d49d63',NULL),('c275bbae-6b06-49df-aba5-d0a914fc9dd2','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_view-identity-providers}','view-identity-providers','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('c2814c58-67c2-40a9-903f-8b4c05677854','org2',0,'${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('c33f16b5-0f73-475e-8274-d7d90a070821','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_query-users}','query-users','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('c47d13e8-696e-48fa-967c-e91ac2e7e188','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_view-events}','view-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('c53d5c4e-a85a-44d6-941e-f124335dd8ac','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_manage-authorization}','manage-authorization','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('c5592334-754c-47c9-bd18-61520b1ace9d','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_create-client}','create-client','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('c642e6dc-7de8-4b2f-ae5a-d648fd22b2d4','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_query-clients}','query-clients','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('c6542b96-2f1b-4dee-9357-f6fefd21fdcf','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-audit-log','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('c6a82b7b-a497-4f32-ba7d-48e53a6f81ee','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_view-realm}','view-realm','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('c6f5e8ce-cd45-4d10-8698-c49939757580','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_manage-clients}','manage-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('c73e24d9-ed9a-4535-a2a4-8ccf15bf7f1f','58d33d58-f134-493b-a787-9ed6c93859a9',1,'${role_read-token}','read-token','org5','58d33d58-f134-493b-a787-9ed6c93859a9',NULL),('c7f86d87-f2b4-4500-bf48-a3e98c08e3ad','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-upd','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('c87add8b-a4ab-4953-ab6a-434593d575fe','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_create-client}','create-client','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('c909c2f0-c3f1-4960-8f60-9ba938d3d03c','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-upd','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('ca27c83a-ab40-4a27-b36d-ad413c47a7b6','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_manage-events}','manage-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('ca79dcd3-8ed4-46b5-919a-2ee1fdbfac37','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_view-users}','view-users','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('cac1989b-a164-4953-b202-3a33e46b0d16','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_view-identity-providers}','view-identity-providers','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('cadbf291-2f8b-4740-ae0e-bd76db05ef71','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-own-mt','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('cbfa0568-54f4-4a27-b8d8-da462f9bb751','728645f5-c020-49b8-b411-dcde55a7ade7',1,NULL,'_ws3-admin','org3','728645f5-c020-49b8-b411-dcde55a7ade7',NULL),('cc111dd7-68f5-4b81-b877-c7203eb5b120','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_manage-account-links}','manage-account-links','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('cd4d49ed-91e6-4f97-b103-e36dc22c7e3d','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_ws1-admin','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('cd6095f6-b2dc-4a5b-980f-f15c559b3b07','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_manage-account-links}','manage-account-links','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('cd7ab97a-9bad-4e75-bbca-f57e0f21c25e','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_impersonation}','impersonation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('cd7e235a-8417-4a80-9664-9a2136e97927','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-upd','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('ce1abf80-c717-4aff-bd2e-b7c857486d26','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_query-clients}','query-clients','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('cef04c12-f28c-4cd1-b5b8-972b7464fe73','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_view-authorization}','view-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('cfec1782-d567-4a9f-9360-c8814702df03','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_query-clients}','query-clients','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('d0cfccc2-1852-4236-a3d2-b74cf4dc9701','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_query-realms}','query-realms','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('d1411ae2-1fb0-46ff-b166-80dd260e0b00','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_create-client}','create-client','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('d18c6c70-7f24-4bca-a67e-11bf2ecc2b0f','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_view-groups}','view-groups','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('d221d2fa-bdca-4cd2-8211-ff8447b5db5a','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_ws2-admin','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('d2232f2c-7bb9-4f26-8b35-c1531ac36e7c','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_query-realms}','query-realms','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('d41e2f22-96f5-402a-9b01-2c0f59c740e6','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_query-clients}','query-clients','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('d578490f-2d5e-4b80-9417-8637ffda4385','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-usage','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('d6f1de80-3e7d-40ab-8e3b-68284f40de1c','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_create-client}','create-client','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('d72bc3e9-7290-4c1b-9605-9132cece7306','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_impersonation}','impersonation','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('d949451b-4e2b-4146-89c1-79dabec7f49d','728645f5-c020-49b8-b411-dcde55a7ade7',1,NULL,'_organization-user-role-manager','org3','728645f5-c020-49b8-b411-dcde55a7ade7',NULL),('da5f4122-6070-4e22-b01b-dfe96d5837ce','070f24c2-4920-450b-84b1-10016e3708f0',1,'${role_view-applications}','view-applications','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','070f24c2-4920-450b-84b1-10016e3708f0',NULL),('da9341d3-8664-481c-b4e7-cf7d73aa66ed','e9cf3880-4d58-4993-b42d-5276cab1004d',1,'${role_view-applications}','view-applications','org2','e9cf3880-4d58-4993-b42d-5276cab1004d',NULL),('daade461-014c-4d52-90f1-741f9c350046','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_view-clients}','view-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('dc11a15b-c50a-430d-8111-93b089670373','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_manage-authorization}','manage-authorization','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('dc1d2d2b-cb0b-4abe-96ff-7346b2057213','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_query-groups}','query-groups','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('dc7ac4c5-81f1-4b90-98a0-600a52381734','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_manage-users}','manage-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('dc8fe040-962d-4405-8619-7c9de54cebfc','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_view-identity-providers}','view-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('de064718-00b6-4d02-b176-0963610c79cc','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_create-client}','create-client','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('df2f1d1f-894b-437e-8393-a92b058891c1','a7f4ed5d-f103-44f9-a072-fb3489d0a165',1,NULL,'_og-audit-log','org3','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('df811e9a-da8e-4e10-9d3d-ca8e623822aa','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-own-mt','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('e1c6becd-a31f-4f23-8a39-e16529f64210','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-own-mt','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('e2783001-224d-4082-996e-ab0a121eae65','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_view-consent}','view-consent','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('e2ee4164-78b5-442f-a8ce-e5854b16e4e3','703cfefd-fdb1-4022-8876-625cd45e0016',1,'${role_manage-users}','manage-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','703cfefd-fdb1-4022-8876-625cd45e0016',NULL),('e2f2a39e-c067-46f2-99b2-2109880d2967','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-ws-mt','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('e6810694-493f-4b0f-9b11-8235ce2efe1c','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_delete-account}','delete-account','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL),('e8b60b0e-ed10-4666-b279-bdbfb1378448','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_query-clients}','query-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('e8cdad99-a524-4e6b-acb0-06ec072db27e','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-ws-role-mt','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('e974aba6-c040-49df-bc4d-374e7ddef75c','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_view-authorization}','view-authorization','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('ea40a49d-1c5e-4bd1-87bf-e5cae9fe3ec4','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_view-users}','view-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('ea532d28-5740-4c4e-b908-40df5039ff2d','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_ws3-admin','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('eac90208-2c76-48f7-9e1d-94c8d3ea743a','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_og-role-usr','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('eb275897-903e-4c5a-8357-185bfb4df33e','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',1,'${role_manage-consent}','manage-consent','org3','2e31d85e-fa7f-46eb-9b40-691fdef8fc6d',NULL),('ec775167-543f-4e29-8557-c16a984a9f11','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_manage-identity-providers}','manage-identity-providers','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('ecd6bf2a-8511-401c-8a12-154f07214589','107e7f8e-6320-41f2-8851-cf3238fb4254',1,'${role_view-authorization}','view-authorization','org1','107e7f8e-6320-41f2-8851-cf3238fb4254',NULL),('ed736dce-4408-4ef5-aa44-b9f7b19f177f','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_view-events}','view-events','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('ef5a58fe-c3aa-493c-857d-727144a7a0d1','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-ws-role-usr','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('ef636e01-bd99-48af-97a1-d2c87cb5e613','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1,'${role_view-events}','view-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',NULL),('efbe3a66-0e72-4bcf-b736-b1cccde0388e','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_manage-events}','manage-events','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','55526e5d-f414-42cc-bf17-528b51147b24',1,'${role_realm-admin}','realm-admin','org4','55526e5d-f414-42cc-bf17-528b51147b24',NULL),('f141606f-d3b1-42ff-b496-cc146bf33e41','17b08b06-2f19-41f4-8963-f4832485b124',1,'${role_view-users}','view-users','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','17b08b06-2f19-41f4-8963-f4832485b124',NULL),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_realm-admin}','realm-admin','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('f2308b48-45f2-4640-8096-149964552741','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_query-realms}','query-realms','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('f30408db-2ad6-4230-ba07-cb7655848f35','org1',0,'${role_default-roles}','default-roles-org1','org1',NULL,NULL),('f3333600-0bb4-4063-82be-bafdaf80d8bd','728645f5-c020-49b8-b411-dcde55a7ade7',1,NULL,'_ws1-admin','org3','728645f5-c020-49b8-b411-dcde55a7ade7',NULL),('f41961fb-1a35-4f60-9b65-379b53229191','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1,'${role_view-realm}','view-realm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','baeb9d61-c6a9-4c50-a3c8-d77ee222c380',NULL),('f45b92e6-643b-4b8d-af6f-e2e4e5e88c73','b493156e-cef6-4608-b87a-c1488089b61d',1,'${role_read-token}','read-token','org1','b493156e-cef6-4608-b87a-c1488089b61d',NULL),('f4d7d9b1-4803-4abc-9fb4-2a8583e8890f','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'_og-audit-log','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('f6920458-f460-479a-947b-c3f5f05a5c58','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_view-identity-providers}','view-identity-providers','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('f6c8c42f-bb78-481f-aa68-7a9b3735ccf5','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1,'${role_impersonation}','impersonation','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','470bbc8d-7c12-40d4-98eb-99b48efa4e3c',NULL),('f8a53e17-c4e2-43d3-89ac-8e88b12d01a4','fadb6747-16d0-4959-b7f6-7384792f8b3d',1,NULL,'_og-role-usr','org4','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('f8d40958-5753-462b-b922-cbd7aeb4475f','b1947fe6-f799-4b32-a230-cf2a036325a5',1,NULL,'_ws1-admin','org2','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('f945ff35-2bd7-4dbd-b734-83c12be41ee4','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_query-clients}','query-clients','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('f9585285-10fd-4b89-aacb-a1ae153dfab4','org2',0,'${role_default-roles}','default-roles-org2','org2',NULL,NULL),('f9c477a4-28af-4222-917f-d534c76af487','29e4432e-6534-4b3d-8371-0993b180a64a',1,'${role_view-realm}','view-realm','org2','29e4432e-6534-4b3d-8371-0993b180a64a',NULL),('f9de58e0-7808-4fb8-aed0-eca1bbd34561','1b02217f-d5bb-4032-b67c-57e32ee5b071',1,NULL,'_og-audit-log','org1','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('f9ee2d26-fdf1-480c-a4c7-9c5f238ce855','61c2e50c-94e8-4819-9958-3f25713f9d07',1,'${role_manage-account-links}','manage-account-links','org4','61c2e50c-94e8-4819-9958-3f25713f9d07',NULL),('fa3b5254-703f-4e14-9209-39f4c78c5c49','d83d4038-0b52-4b6c-beae-09a02c525e5d',1,'${role_manage-events}','manage-events','org3','d83d4038-0b52-4b6c-beae-09a02c525e5d',NULL),('fba0cf47-a378-4e21-a21f-94b88fe05a72','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_query-clients}','query-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','87151c85-c4be-4bd9-ad28-582c4300419a',1,NULL,'_organization-manager','org4','87151c85-c4be-4bd9-ad28-582c4300419a',NULL),('fc3da5a0-8f26-4bb3-a9fc-a0a10805f1ee','cb7b6a97-1257-4373-926d-0289e24593e9',1,'${role_view-clients}','view-clients','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','cb7b6a97-1257-4373-926d-0289e24593e9',NULL),('fc94301d-404e-4e05-a967-fb1c708a1831','8dcbe59c-2305-4e8b-a509-d4506fb44048',1,NULL,'ws1','org5','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('ff15a45d-e12e-4838-9ac7-d237cad67556','0e91c93d-0260-4530-a9ac-af848287b1e1',1,'${role_query-groups}','query-groups','org5','0e91c93d-0260-4530-a9ac-af848287b1e1',NULL),('ff6a8286-bd57-4838-8c81-853d36d9d787','c74d30a3-3a41-4667-a8b6-b400b4dd664b',1,'${role_view-profile}','view-profile','org5','c74d30a3-3a41-4667-a8b6-b400b4dd664b',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('efyaz','24.0.5',1718160889);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('01449be7-1764-41a2-8d6b-d3c762e7c84b','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('0473cdbd-ea29-433f-9776-698296a53f79','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('061b42a4-2f3b-46a5-a736-307a5af25316','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('063e2c86-f34f-422e-916a-530714ca61e0','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4503942f-471a-4096-819b-7f7550255f99'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'95f28550-8a42-4e4c-8b75-57735c259262'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('11dce293-9976-4fcf-bcd7-d5c368397c78','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'4503942f-471a-4096-819b-7f7550255f99'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'970da01e-80f0-456a-9b41-db34158cd2d1'),('14db7ab8-d067-46b3-8fe2-77230da82dce','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'829802f6-91a4-478a-a69f-4870ec990a54'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','address','openid-connect','oidc-address-mapper',NULL,'f9a1aac2-6f0e-4165-905e-be5e577999e1'),('166f9a84-a758-4e41-a561-980e1c658825','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('17ff765d-b513-48b3-985c-11b9c79f306f','role list','saml','saml-role-list-mapper',NULL,'18a441af-f824-4118-acd9-1b9b3f223007'),('1e5aa962-ba14-4e9f-a4e0-9c5ed85bf7bd','role list','saml','saml-role-list-mapper',NULL,'d3d139ce-39d4-481d-af01-53c4dffde4b0'),('217bcb8f-aab8-463d-8d61-93765eabb11f','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('241db890-f983-4c08-a5ca-3a9f223745ef','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0'),('25dc4e11-5762-47b2-aeac-945ca378c884','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('28174e32-6c57-47f8-bab0-0dae78f272a0','full name','openid-connect','oidc-full-name-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('29580f73-ae10-40e6-a55e-e22c6afa034b','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('2aace495-db1f-47c1-8773-87bdb74698c9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('2aff2e5d-407a-4bf5-ad10-5a54c7f63cc0','full name','openid-connect','oidc-full-name-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('2b0da27b-76ae-4682-b376-9845ba148648','role list','saml','saml-role-list-mapper',NULL,'f69b14f9-f662-4e4a-9f79-269a929bf501'),('2b17f202-c804-451b-b01d-be0c965490fe','acr loa level','openid-connect','oidc-acr-mapper',NULL,'6ced35b6-82e3-408f-8d39-674e5046826a'),('2fbb010f-da92-4876-ad5d-d8547b97c522','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'71dd9bf2-0eb6-4336-87aa-a1dfa33e68d8'),('31ea39b2-1ee4-4e03-96ca-41757a61399e','role list','saml','saml-role-list-mapper',NULL,'acd67b0a-2353-4b21-9e14-a4924c6e56f3'),('32a91561-e8ba-4267-8791-87846b954d3a','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'ecbd0428-fba5-4b97-9989-5938b54045d9'),('34912e4d-d1e4-4e43-b349-81fb7c2ad68b','full name','openid-connect','oidc-full-name-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('375e8851-9f06-4ad9-a4b2-03929e545baa','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('37bc8942-6f0e-41a7-b407-2b83d3f9788a','role list','saml','saml-role-list-mapper',NULL,'573ef186-9519-4cbf-9413-638d559d5725'),('398820f8-c380-45e2-9aea-518e543adba5','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('3a6599eb-855f-40ee-9101-845854e6aa70','locale','openid-connect','oidc-usermodel-attribute-mapper','7946239a-71e4-45b6-a356-d6f0218ca9cf',NULL),('3b6a30b8-e635-479f-b22b-13d345266312','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'92b6435d-27be-4e06-ad33-fdbbab5effc5'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'d35f12c2-91c4-4d09-a06a-d89203f2efd6'),('3c5745e0-1448-41d6-866b-de205579cfa6','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'415cfb4d-0872-45ff-8f3d-d3402bf0a04b'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e8fdb9d6-cb26-4529-ade8-8d4d0c08f746'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ecbd0428-fba5-4b97-9989-5938b54045d9'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('4064fdc0-d06b-401c-9cb2-9f3864134077','locale','openid-connect','oidc-usermodel-attribute-mapper','2d1a1dc8-4340-451c-9cf3-188ac053b024',NULL),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','locale','openid-connect','oidc-usermodel-attribute-mapper','2e0570af-3629-4e4a-94bd-2c1feceb332a',NULL),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d35f12c2-91c4-4d09-a06a-d89203f2efd6'),('45057e11-927c-4ace-8596-b0089737d502','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('45aa25dd-116f-40d7-909a-1334d3c32447','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('48dfc573-d839-4b5d-a152-07d00877be05','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('49894cbd-ee47-41a1-a542-6ead6a28d532','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('4995c3db-8dca-4206-bcc2-a244f133d597','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'196d85d4-d0fd-41bd-aa17-ba4d38919b7e'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('4ee9066c-577a-480c-ab45-de31d700d5b3','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f6a57487-a8b7-465f-b816-771a63b39b77'),('50da41fb-8720-4765-bc87-639bdfd4b947','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('55c57620-670e-4256-acc8-b29b3ae530b3','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'d71fb6b5-e22a-4501-b57c-5ac1c9e57a27'),('5746be05-a824-4062-a6ea-740a2d6720e1','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('58356b0b-ac49-48ff-8770-edce2b247aaf','locale','openid-connect','oidc-usermodel-attribute-mapper','b317e865-5673-4b43-a925-83cd9439b98e',NULL),('598d28bb-0653-47b8-84ba-374207a08512','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('5abe2ab0-dcdd-48b4-b201-4d128ca7ad06','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'01db02ba-5b84-489c-b04d-3bf376a4be68'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e8fdb9d6-cb26-4529-ade8-8d4d0c08f746'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','3303237e-7510-4499-a187-e1b5854d17e7',NULL),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'396c1462-3f29-4681-9bdf-205016137165'),('5ee4fda3-bac2-4a39-bd81-1814048318a2','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'780a63f7-cd01-4042-ace6-756c2c0246a9'),('60367076-4d20-4006-a8b0-18e999744b07','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'a16bd48a-a471-4aee-889b-5c112987f65e'),('604be95d-5167-4204-bb4c-b5e68062753a','role list','saml','saml-role-list-mapper',NULL,'0a073fd1-3eb5-4252-989c-b1da55183fca'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('65703061-514f-4551-8bcc-fb15725a2b86','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f6a57487-a8b7-465f-b816-771a63b39b77'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a16bd48a-a471-4aee-889b-5c112987f65e'),('66e625d9-8fde-4b64-b929-02fed34493a0','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('675196a2-4650-46e9-8f03-f5286f9b2356','audience resolve','openid-connect','oidc-audience-resolve-mapper','362c7047-df41-41a6-ba79-d79adbb0e31e',NULL),('684a535c-cc80-4a40-8968-6b69e0e0fd82','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('6b815176-0414-421c-881e-9fb1109d8432','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'396c1462-3f29-4681-9bdf-205016137165'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('6e96f5e6-106f-47db-9d52-57a1355e4642','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('717a24fe-9037-40ef-a2ee-f456692ef017','locale','openid-connect','oidc-usermodel-attribute-mapper','2f79aa02-3015-47ff-b794-859729eb9a47',NULL),('742eac16-4234-456a-b268-88b5afda18a3','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'cb34d771-0f8c-4df1-99a7-fe6fceb85925'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('77988939-9617-44e5-87fd-0f8902006e6d','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','address','openid-connect','oidc-address-mapper',NULL,'bf41c45b-3e1c-4abc-83b8-6802520fc276'),('79e1bc0b-725a-4bae-b598-34fe12224a30','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'95f28550-8a42-4e4c-8b75-57735c259262'),('7dfd3b18-1742-40ee-957e-54189c6f6162','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d71fb6b5-e22a-4501-b57c-5ac1c9e57a27'),('8146b6d6-69b6-40c4-9afa-94c227507850','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('81ee0b16-46e8-4db8-a684-56b3e255e896','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'247382aa-55ff-420f-91fd-88f2b202a3f7'),('82a3e54a-d5bc-4547-a86b-779c745625d2','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'95d34a9a-a738-49d4-8c95-83e1f35f22de'),('833dc21b-d126-48e3-9832-804567192da2','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('86f46ae2-6748-4760-a9bb-5023e136e559','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('88bdc874-db32-419a-97d3-8f82b8af27bd','acr loa level','openid-connect','oidc-acr-mapper',NULL,'a3be8d7b-f503-456e-bf20-3d59422fdd42'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'196d85d4-d0fd-41bd-aa17-ba4d38919b7e'),('89d2d459-6104-4072-89fd-03bb2f6802f3','acr loa level','openid-connect','oidc-acr-mapper',NULL,'1b4c8312-f910-47a6-97a7-0bfdec3fc705'),('8d539818-f56d-4dcd-8d5b-d911d5934908','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('8dcc4713-8bf7-48d9-9695-6207af87bf31','audience resolve','openid-connect','oidc-audience-resolve-mapper','5f218d2e-9217-4bcc-88f6-cc8b9d227361',NULL),('9103d381-540f-45da-9641-24c22665264f','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'99fd2dce-7bd0-4e6c-b7ee-2e3aa23a253e'),('91148796-a454-4d5f-8379-7153e33fa4df','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'415cfb4d-0872-45ff-8f3d-d3402bf0a04b'),('91900c4b-d504-45df-b443-335bf595c863','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('95ec2405-2865-4319-a4be-b07f1d13909f','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('987b6c3e-292b-4d18-9b25-bf9907851858','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'bcaf9f9b-face-4a40-a92a-826c09ad563b'),('9e822aae-2ff4-460d-a842-a444ee4ba305','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'73fc20e5-903b-4e1d-bb86-bee82aac4f5e'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('a01ba3cb-5d8f-4bed-8d9f-e3eba39e15d3','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'ecbd0428-fba5-4b97-9989-5938b54045d9'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('a5b76c1f-eb66-4c97-bce4-2f11a4bafdde','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'aaa7f2fc-ee36-4f4d-8ff2-c079565fb2e6'),('a6269418-cf93-455f-8c6f-9c9877279db0','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3'),('a7b92c7e-2e36-4623-9ee5-93ad9f7e2210','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'d5e9ff94-535e-42db-bcda-b3f54e6b338d'),('a8aaf979-58ee-4004-9a6a-680ab726011c','acr loa level','openid-connect','oidc-acr-mapper',NULL,'44618b55-4426-4599-a2df-d102289edaec'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','locale','openid-connect','oidc-usermodel-attribute-mapper','ca7f2967-42dc-4494-8afc-7583883c302c',NULL),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0350a4ec-d983-4b36-8cf6-02857c0550ff'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'247382aa-55ff-420f-91fd-88f2b202a3f7'),('b245f27d-2604-476e-9cf1-a24d774621e2','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('b588a8a7-26db-4903-b334-7f0c489a71bb','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('b7ba196c-edd4-4c32-8b3b-8656621cb978','audience resolve','openid-connect','oidc-audience-resolve-mapper','1d972755-a6c7-41e5-801d-68e02061a4d0',NULL),('ba660647-b4f6-45c1-841c-214fef8037e7','address','openid-connect','oidc-address-mapper',NULL,'5ddcd97a-5579-4bc6-ac09-a4dbb9038c9f'),('bba15edb-a151-4276-9c76-8bdaca1105fe','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('bfd2a04f-7527-44d2-8264-34b2b862c38c','audience resolve','openid-connect','oidc-audience-resolve-mapper','1ba73ec3-f950-46b5-b578-18c214dec948',NULL),('c0ac401a-4a1f-4f30-9e8e-142d3ca94e35','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'415cfb4d-0872-45ff-8f3d-d3402bf0a04b'),('c1195d0c-7d63-4030-b5a4-27ea17517660','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'782b1d4c-c7bd-4ba4-9ba6-e686e95a6bb0'),('c78e7930-a953-446c-bc8f-fda33f73751e','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','8dcbe59c-2305-4e8b-a509-d4506fb44048',NULL),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'92b6435d-27be-4e06-ad33-fdbbab5effc5'),('ca00e8c2-7489-4fa2-88fb-c065c9b4ea2a','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'829802f6-91a4-478a-a69f-4870ec990a54'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','address','openid-connect','oidc-address-mapper',NULL,'cc2303dc-4165-4fc3-b24c-8dc0d7f25f41'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'73fc20e5-903b-4e1d-bb86-bee82aac4f5e'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','b1947fe6-f799-4b32-a230-cf2a036325a5',NULL),('ce64e430-859e-41ba-b24f-cf903b0582cb','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('cecee2a6-a646-4569-ad4f-892d56a8927d','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('cf0c8012-cb65-4258-afec-fb2379eecddf','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('d20f785a-ae14-4f55-b558-061e37bb1ccb','full name','openid-connect','oidc-full-name-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'0350a4ec-d983-4b36-8cf6-02857c0550ff'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','address','openid-connect','oidc-address-mapper',NULL,'79be3c58-66c3-493f-9b41-63f5932cd256'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('d5586729-5ddc-4c55-919c-b0ab760498a4','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('d5f449a9-7a09-4b48-815b-a5a7418f0c38','acr loa level','openid-connect','oidc-acr-mapper',NULL,'f78408f4-3b7a-42ec-82bf-337bc62f713c'),('d67f3d20-e32b-4f14-bfb3-32c8a2e97220','audience resolve','openid-connect','oidc-audience-resolve-mapper','aa2fa7b1-6da8-415f-848d-9f4153aa61b1',NULL),('d67fa227-dc2c-4403-a26f-5e273804f9dc','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'10090f9c-672a-4939-9b20-d6a1365b8397'),('d7f9a9d5-f989-482f-816c-961a001e813f','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('d88a80da-7448-4185-9170-6942a92fe726','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('d93d7b48-4bd3-4df9-bbbd-9fc6d0e44f98','acr loa level','openid-connect','oidc-acr-mapper',NULL,'7cb17bbd-d2c8-4ae6-a2e7-92f0548811b9'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'10090f9c-672a-4939-9b20-d6a1365b8397'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('dfbdc31d-44a7-4028-8518-ed69fe30f96d','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'f82054ed-9f54-4bdc-867c-e8bf4789465c'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b7792496-e95d-400f-96f1-99265ce5ccfa'),('e314b6be-bef7-4b0a-849b-daa8b04ef1bb','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'a16bd48a-a471-4aee-889b-5c112987f65e'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'5e83f97c-23dd-4ec9-a44c-b59a7a17c6c3'),('e59ef379-a583-4ad1-a239-5a57e35b71da','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','a7f4ed5d-f103-44f9-a072-fb3489d0a165',NULL),('e68f2d78-9afa-49b1-baba-6b4f6d583070','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'01db02ba-5b84-489c-b04d-3bf376a4be68'),('e766d25c-695f-4596-8768-db06bff17bcb','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'95d34a9a-a738-49d4-8c95-83e1f35f22de'),('e8157ed2-1bfe-416e-960a-16959ff39266','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('ed580657-3f5b-4806-a77c-afd219c25da8','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','fadb6747-16d0-4959-b7f6-7384792f8b3d',NULL),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','3303237e-7510-4499-a187-e1b5854d17e7',NULL),('f0d48c20-ee9e-41a5-b287-ce9dbc54afc3','full name','openid-connect','oidc-full-name-mapper',NULL,'e765decd-f663-4e8e-bed3-57894b73f688'),('f3786245-955f-41f5-95a9-2ae0719224c5','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','1b02217f-d5bb-4032-b67c-57e32ee5b071',NULL),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','3303237e-7510-4499-a187-e1b5854d17e7',NULL),('f46081d1-a2db-4885-a521-e9abb2766e10','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('f6615336-5641-48c4-9001-23da1771d6ea','audience resolve','openid-connect','oidc-audience-resolve-mapper','8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4',NULL),('f7eb2b09-42c1-4647-80e6-6e724165271d','full name','openid-connect','oidc-full-name-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('f8104b34-0423-4c6d-a98f-1710b1905880','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06de2bc6-76a3-4782-bcc4-551d53a88145'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b97a3f5e-ff6e-4afb-8d3c-7d2b75944e0e'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e5f6b985-b17f-45e1-8b51-c86324f63089'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'970da01e-80f0-456a-9b41-db34158cd2d1'),('fb606275-f3be-4b25-a42f-fd801b006353','address','openid-connect','oidc-address-mapper',NULL,'3c247d4f-4b65-4b8e-b243-f26b8124068a'),('fdab39e5-8208-4602-80cb-27e31995104b','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'40a410b5-5633-424e-9edd-5e2fed510fbf'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'829802f6-91a4-478a-a69f-4870ec990a54'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'01db02ba-5b84-489c-b04d-3bf376a4be68');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('01449be7-1764-41a2-8d6b-d3c762e7c84b','true','access.token.claim'),('01449be7-1764-41a2-8d6b-d3c762e7c84b','website','claim.name'),('01449be7-1764-41a2-8d6b-d3c762e7c84b','true','id.token.claim'),('01449be7-1764-41a2-8d6b-d3c762e7c84b','true','introspection.token.claim'),('01449be7-1764-41a2-8d6b-d3c762e7c84b','String','jsonType.label'),('01449be7-1764-41a2-8d6b-d3c762e7c84b','website','user.attribute'),('01449be7-1764-41a2-8d6b-d3c762e7c84b','true','userinfo.token.claim'),('0473cdbd-ea29-433f-9776-698296a53f79','true','access.token.claim'),('0473cdbd-ea29-433f-9776-698296a53f79','nickname','claim.name'),('0473cdbd-ea29-433f-9776-698296a53f79','true','id.token.claim'),('0473cdbd-ea29-433f-9776-698296a53f79','true','introspection.token.claim'),('0473cdbd-ea29-433f-9776-698296a53f79','String','jsonType.label'),('0473cdbd-ea29-433f-9776-698296a53f79','nickname','user.attribute'),('0473cdbd-ea29-433f-9776-698296a53f79','true','userinfo.token.claim'),('061b42a4-2f3b-46a5-a736-307a5af25316','true','access.token.claim'),('061b42a4-2f3b-46a5-a736-307a5af25316','clientHost','claim.name'),('061b42a4-2f3b-46a5-a736-307a5af25316','true','id.token.claim'),('061b42a4-2f3b-46a5-a736-307a5af25316','String','jsonType.label'),('061b42a4-2f3b-46a5-a736-307a5af25316','clientHost','user.session.note'),('061b42a4-2f3b-46a5-a736-307a5af25316','true','userinfo.token.claim'),('063e2c86-f34f-422e-916a-530714ca61e0','true','access.token.claim'),('063e2c86-f34f-422e-916a-530714ca61e0','upn','claim.name'),('063e2c86-f34f-422e-916a-530714ca61e0','true','id.token.claim'),('063e2c86-f34f-422e-916a-530714ca61e0','true','introspection.token.claim'),('063e2c86-f34f-422e-916a-530714ca61e0','String','jsonType.label'),('063e2c86-f34f-422e-916a-530714ca61e0','username','user.attribute'),('063e2c86-f34f-422e-916a-530714ca61e0','true','userinfo.token.claim'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','true','access.token.claim'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','phone_number_verified','claim.name'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','true','id.token.claim'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','true','introspection.token.claim'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','boolean','jsonType.label'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','phoneNumberVerified','user.attribute'),('0669f1ab-2fcd-48df-82b3-e2572ed1ab78','true','userinfo.token.claim'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','true','access.token.claim'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','gender','claim.name'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','true','id.token.claim'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','true','introspection.token.claim'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','String','jsonType.label'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','gender','user.attribute'),('0a801cfd-d4af-4907-93bf-6ecf37e1b0a9','true','userinfo.token.claim'),('11dce293-9976-4fcf-bcd7-d5c368397c78','true','access.token.claim'),('11dce293-9976-4fcf-bcd7-d5c368397c78','groups','claim.name'),('11dce293-9976-4fcf-bcd7-d5c368397c78','true','id.token.claim'),('11dce293-9976-4fcf-bcd7-d5c368397c78','true','introspection.token.claim'),('11dce293-9976-4fcf-bcd7-d5c368397c78','String','jsonType.label'),('11dce293-9976-4fcf-bcd7-d5c368397c78','true','multivalued'),('11dce293-9976-4fcf-bcd7-d5c368397c78','foo','user.attribute'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','true','access.token.claim'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','email_verified','claim.name'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','true','id.token.claim'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','true','introspection.token.claim'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','boolean','jsonType.label'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','emailVerified','user.attribute'),('1323ca03-186a-455a-a0a0-ee49a5e5a651','true','userinfo.token.claim'),('14db7ab8-d067-46b3-8fe2-77230da82dce','true','access.token.claim'),('14db7ab8-d067-46b3-8fe2-77230da82dce','realm_access.roles','claim.name'),('14db7ab8-d067-46b3-8fe2-77230da82dce','true','introspection.token.claim'),('14db7ab8-d067-46b3-8fe2-77230da82dce','String','jsonType.label'),('14db7ab8-d067-46b3-8fe2-77230da82dce','true','multivalued'),('14db7ab8-d067-46b3-8fe2-77230da82dce','foo','user.attribute'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','true','access.token.claim'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','true','id.token.claim'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','true','introspection.token.claim'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','country','user.attribute.country'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','formatted','user.attribute.formatted'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','locality','user.attribute.locality'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','postal_code','user.attribute.postal_code'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','region','user.attribute.region'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','street','user.attribute.street'),('1650b72e-4ebc-4c17-8c97-f67c829583c3','true','userinfo.token.claim'),('166f9a84-a758-4e41-a561-980e1c658825','true','access.token.claim'),('166f9a84-a758-4e41-a561-980e1c658825','clientId','claim.name'),('166f9a84-a758-4e41-a561-980e1c658825','true','id.token.claim'),('166f9a84-a758-4e41-a561-980e1c658825','String','jsonType.label'),('166f9a84-a758-4e41-a561-980e1c658825','clientId','user.session.note'),('166f9a84-a758-4e41-a561-980e1c658825','true','userinfo.token.claim'),('17ff765d-b513-48b3-985c-11b9c79f306f','Role','attribute.name'),('17ff765d-b513-48b3-985c-11b9c79f306f','Basic','attribute.nameformat'),('17ff765d-b513-48b3-985c-11b9c79f306f','false','single'),('1e5aa962-ba14-4e9f-a4e0-9c5ed85bf7bd','Role','attribute.name'),('1e5aa962-ba14-4e9f-a4e0-9c5ed85bf7bd','Basic','attribute.nameformat'),('1e5aa962-ba14-4e9f-a4e0-9c5ed85bf7bd','false','single'),('217bcb8f-aab8-463d-8d61-93765eabb11f','true','access.token.claim'),('217bcb8f-aab8-463d-8d61-93765eabb11f','profile','claim.name'),('217bcb8f-aab8-463d-8d61-93765eabb11f','true','id.token.claim'),('217bcb8f-aab8-463d-8d61-93765eabb11f','true','introspection.token.claim'),('217bcb8f-aab8-463d-8d61-93765eabb11f','String','jsonType.label'),('217bcb8f-aab8-463d-8d61-93765eabb11f','profile','user.attribute'),('217bcb8f-aab8-463d-8d61-93765eabb11f','true','userinfo.token.claim'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','true','access.token.claim'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','phone_number_verified','claim.name'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','true','id.token.claim'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','true','introspection.token.claim'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','boolean','jsonType.label'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','phoneNumberVerified','user.attribute'),('22a7b5d5-2378-4275-a628-d98d4fc11a74','true','userinfo.token.claim'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','true','access.token.claim'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','clientAddress','claim.name'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','true','id.token.claim'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','String','jsonType.label'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','clientAddress','user.session.note'),('2330300b-58f2-49d6-ad3a-abf3b10b1087','true','userinfo.token.claim'),('241db890-f983-4c08-a5ca-3a9f223745ef','true','access.token.claim'),('241db890-f983-4c08-a5ca-3a9f223745ef','true','introspection.token.claim'),('25dc4e11-5762-47b2-aeac-945ca378c884','true','access.token.claim'),('25dc4e11-5762-47b2-aeac-945ca378c884','given_name','claim.name'),('25dc4e11-5762-47b2-aeac-945ca378c884','true','id.token.claim'),('25dc4e11-5762-47b2-aeac-945ca378c884','true','introspection.token.claim'),('25dc4e11-5762-47b2-aeac-945ca378c884','String','jsonType.label'),('25dc4e11-5762-47b2-aeac-945ca378c884','firstName','user.attribute'),('25dc4e11-5762-47b2-aeac-945ca378c884','true','userinfo.token.claim'),('28174e32-6c57-47f8-bab0-0dae78f272a0','true','access.token.claim'),('28174e32-6c57-47f8-bab0-0dae78f272a0','true','id.token.claim'),('28174e32-6c57-47f8-bab0-0dae78f272a0','true','introspection.token.claim'),('28174e32-6c57-47f8-bab0-0dae78f272a0','true','userinfo.token.claim'),('29580f73-ae10-40e6-a55e-e22c6afa034b','true','access.token.claim'),('29580f73-ae10-40e6-a55e-e22c6afa034b','locale','claim.name'),('29580f73-ae10-40e6-a55e-e22c6afa034b','true','id.token.claim'),('29580f73-ae10-40e6-a55e-e22c6afa034b','true','introspection.token.claim'),('29580f73-ae10-40e6-a55e-e22c6afa034b','String','jsonType.label'),('29580f73-ae10-40e6-a55e-e22c6afa034b','locale','user.attribute'),('29580f73-ae10-40e6-a55e-e22c6afa034b','true','userinfo.token.claim'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','true','access.token.claim'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','preferred_username','claim.name'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','true','id.token.claim'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','true','introspection.token.claim'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','String','jsonType.label'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','username','user.attribute'),('2a5e9c9e-2dce-4fb0-9099-0c2a566aa44d','true','userinfo.token.claim'),('2aace495-db1f-47c1-8773-87bdb74698c9','true','access.token.claim'),('2aace495-db1f-47c1-8773-87bdb74698c9','profile','claim.name'),('2aace495-db1f-47c1-8773-87bdb74698c9','true','id.token.claim'),('2aace495-db1f-47c1-8773-87bdb74698c9','true','introspection.token.claim'),('2aace495-db1f-47c1-8773-87bdb74698c9','String','jsonType.label'),('2aace495-db1f-47c1-8773-87bdb74698c9','profile','user.attribute'),('2aace495-db1f-47c1-8773-87bdb74698c9','true','userinfo.token.claim'),('2aff2e5d-407a-4bf5-ad10-5a54c7f63cc0','true','access.token.claim'),('2aff2e5d-407a-4bf5-ad10-5a54c7f63cc0','true','id.token.claim'),('2aff2e5d-407a-4bf5-ad10-5a54c7f63cc0','true','introspection.token.claim'),('2aff2e5d-407a-4bf5-ad10-5a54c7f63cc0','true','userinfo.token.claim'),('2b0da27b-76ae-4682-b376-9845ba148648','Role','attribute.name'),('2b0da27b-76ae-4682-b376-9845ba148648','Basic','attribute.nameformat'),('2b0da27b-76ae-4682-b376-9845ba148648','false','single'),('2b17f202-c804-451b-b01d-be0c965490fe','true','access.token.claim'),('2b17f202-c804-451b-b01d-be0c965490fe','true','id.token.claim'),('2b17f202-c804-451b-b01d-be0c965490fe','true','introspection.token.claim'),('2fbb010f-da92-4876-ad5d-d8547b97c522','true','access.token.claim'),('2fbb010f-da92-4876-ad5d-d8547b97c522','preferred_username','claim.name'),('2fbb010f-da92-4876-ad5d-d8547b97c522','true','id.token.claim'),('2fbb010f-da92-4876-ad5d-d8547b97c522','true','introspection.token.claim'),('2fbb010f-da92-4876-ad5d-d8547b97c522','String','jsonType.label'),('2fbb010f-da92-4876-ad5d-d8547b97c522','username','user.attribute'),('2fbb010f-da92-4876-ad5d-d8547b97c522','true','userinfo.token.claim'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','true','access.token.claim'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','phone_number','claim.name'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','true','id.token.claim'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','true','introspection.token.claim'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','String','jsonType.label'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','phoneNumber','user.attribute'),('2fdb4c7d-8a14-49dd-b89e-05a5396167e6','true','userinfo.token.claim'),('31ea39b2-1ee4-4e03-96ca-41757a61399e','Role','attribute.name'),('31ea39b2-1ee4-4e03-96ca-41757a61399e','Basic','attribute.nameformat'),('31ea39b2-1ee4-4e03-96ca-41757a61399e','false','single'),('32a91561-e8ba-4267-8791-87846b954d3a','true','access.token.claim'),('32a91561-e8ba-4267-8791-87846b954d3a','resource_access.${client_id}.roles','claim.name'),('32a91561-e8ba-4267-8791-87846b954d3a','true','introspection.token.claim'),('32a91561-e8ba-4267-8791-87846b954d3a','String','jsonType.label'),('32a91561-e8ba-4267-8791-87846b954d3a','true','multivalued'),('32a91561-e8ba-4267-8791-87846b954d3a','foo','user.attribute'),('34912e4d-d1e4-4e43-b349-81fb7c2ad68b','true','access.token.claim'),('34912e4d-d1e4-4e43-b349-81fb7c2ad68b','true','id.token.claim'),('34912e4d-d1e4-4e43-b349-81fb7c2ad68b','true','introspection.token.claim'),('34912e4d-d1e4-4e43-b349-81fb7c2ad68b','true','userinfo.token.claim'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','true','access.token.claim'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','clientId','claim.name'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','true','id.token.claim'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','String','jsonType.label'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','clientId','user.session.note'),('35d1b596-4125-4aef-91ed-66cc5d8ecaa7','true','userinfo.token.claim'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','true','access.token.claim'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','middle_name','claim.name'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','true','id.token.claim'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','true','introspection.token.claim'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','String','jsonType.label'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','middleName','user.attribute'),('35fa5fd0-a19a-4a9e-ab96-fc063ed7e536','true','userinfo.token.claim'),('375e8851-9f06-4ad9-a4b2-03929e545baa','true','access.token.claim'),('375e8851-9f06-4ad9-a4b2-03929e545baa','given_name','claim.name'),('375e8851-9f06-4ad9-a4b2-03929e545baa','true','id.token.claim'),('375e8851-9f06-4ad9-a4b2-03929e545baa','true','introspection.token.claim'),('375e8851-9f06-4ad9-a4b2-03929e545baa','String','jsonType.label'),('375e8851-9f06-4ad9-a4b2-03929e545baa','firstName','user.attribute'),('375e8851-9f06-4ad9-a4b2-03929e545baa','true','userinfo.token.claim'),('37bc8942-6f0e-41a7-b407-2b83d3f9788a','Role','attribute.name'),('37bc8942-6f0e-41a7-b407-2b83d3f9788a','Basic','attribute.nameformat'),('37bc8942-6f0e-41a7-b407-2b83d3f9788a','false','single'),('398820f8-c380-45e2-9aea-518e543adba5','true','access.token.claim'),('398820f8-c380-45e2-9aea-518e543adba5','zoneinfo','claim.name'),('398820f8-c380-45e2-9aea-518e543adba5','true','id.token.claim'),('398820f8-c380-45e2-9aea-518e543adba5','true','introspection.token.claim'),('398820f8-c380-45e2-9aea-518e543adba5','String','jsonType.label'),('398820f8-c380-45e2-9aea-518e543adba5','zoneinfo','user.attribute'),('398820f8-c380-45e2-9aea-518e543adba5','true','userinfo.token.claim'),('3a6599eb-855f-40ee-9101-845854e6aa70','true','access.token.claim'),('3a6599eb-855f-40ee-9101-845854e6aa70','locale','claim.name'),('3a6599eb-855f-40ee-9101-845854e6aa70','true','id.token.claim'),('3a6599eb-855f-40ee-9101-845854e6aa70','true','introspection.token.claim'),('3a6599eb-855f-40ee-9101-845854e6aa70','String','jsonType.label'),('3a6599eb-855f-40ee-9101-845854e6aa70','locale','user.attribute'),('3a6599eb-855f-40ee-9101-845854e6aa70','true','userinfo.token.claim'),('3b6a30b8-e635-479f-b22b-13d345266312','true','access.token.claim'),('3b6a30b8-e635-479f-b22b-13d345266312','phone_number','claim.name'),('3b6a30b8-e635-479f-b22b-13d345266312','true','id.token.claim'),('3b6a30b8-e635-479f-b22b-13d345266312','true','introspection.token.claim'),('3b6a30b8-e635-479f-b22b-13d345266312','String','jsonType.label'),('3b6a30b8-e635-479f-b22b-13d345266312','phoneNumber','user.attribute'),('3b6a30b8-e635-479f-b22b-13d345266312','true','userinfo.token.claim'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','true','access.token.claim'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','groups','claim.name'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','true','id.token.claim'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','true','introspection.token.claim'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','String','jsonType.label'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','true','multivalued'),('3c1c6a3a-cfb8-477f-8d9d-d3c70a6d2297','foo','user.attribute'),('3c5745e0-1448-41d6-866b-de205579cfa6','true','access.token.claim'),('3c5745e0-1448-41d6-866b-de205579cfa6','realm_access.roles','claim.name'),('3c5745e0-1448-41d6-866b-de205579cfa6','true','introspection.token.claim'),('3c5745e0-1448-41d6-866b-de205579cfa6','String','jsonType.label'),('3c5745e0-1448-41d6-866b-de205579cfa6','true','multivalued'),('3c5745e0-1448-41d6-866b-de205579cfa6','foo','user.attribute'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','true','access.token.claim'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','phone_number','claim.name'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','true','id.token.claim'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','true','introspection.token.claim'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','String','jsonType.label'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','phoneNumber','user.attribute'),('3d5d2e7a-eb80-4a05-915d-34a5772dcf15','true','userinfo.token.claim'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','true','access.token.claim'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','realm_access.roles','claim.name'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','true','introspection.token.claim'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','String','jsonType.label'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','true','multivalued'),('3db41317-11e0-4e20-8301-3ce1dd39bfaf','foo','user.attribute'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','true','access.token.claim'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','middle_name','claim.name'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','true','id.token.claim'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','true','introspection.token.claim'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','String','jsonType.label'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','middleName','user.attribute'),('3eb47c1e-5601-4d3a-b92c-19715ed9e589','true','userinfo.token.claim'),('4064fdc0-d06b-401c-9cb2-9f3864134077','true','access.token.claim'),('4064fdc0-d06b-401c-9cb2-9f3864134077','locale','claim.name'),('4064fdc0-d06b-401c-9cb2-9f3864134077','true','id.token.claim'),('4064fdc0-d06b-401c-9cb2-9f3864134077','true','introspection.token.claim'),('4064fdc0-d06b-401c-9cb2-9f3864134077','String','jsonType.label'),('4064fdc0-d06b-401c-9cb2-9f3864134077','locale','user.attribute'),('4064fdc0-d06b-401c-9cb2-9f3864134077','true','userinfo.token.claim'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','true','access.token.claim'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','locale','claim.name'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','true','id.token.claim'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','true','introspection.token.claim'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','String','jsonType.label'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','locale','user.attribute'),('430ffb9e-75c0-49cf-9739-3c1f23f088ed','true','userinfo.token.claim'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','true','access.token.claim'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','upn','claim.name'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','true','id.token.claim'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','true','introspection.token.claim'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','String','jsonType.label'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','username','user.attribute'),('44e99b34-fbb3-4d98-bb7f-78291a2d1a46','true','userinfo.token.claim'),('45057e11-927c-4ace-8596-b0089737d502','true','access.token.claim'),('45057e11-927c-4ace-8596-b0089737d502','updated_at','claim.name'),('45057e11-927c-4ace-8596-b0089737d502','true','id.token.claim'),('45057e11-927c-4ace-8596-b0089737d502','true','introspection.token.claim'),('45057e11-927c-4ace-8596-b0089737d502','long','jsonType.label'),('45057e11-927c-4ace-8596-b0089737d502','updatedAt','user.attribute'),('45057e11-927c-4ace-8596-b0089737d502','true','userinfo.token.claim'),('45aa25dd-116f-40d7-909a-1334d3c32447','true','access.token.claim'),('45aa25dd-116f-40d7-909a-1334d3c32447','locale','claim.name'),('45aa25dd-116f-40d7-909a-1334d3c32447','true','id.token.claim'),('45aa25dd-116f-40d7-909a-1334d3c32447','true','introspection.token.claim'),('45aa25dd-116f-40d7-909a-1334d3c32447','String','jsonType.label'),('45aa25dd-116f-40d7-909a-1334d3c32447','locale','user.attribute'),('45aa25dd-116f-40d7-909a-1334d3c32447','true','userinfo.token.claim'),('48dfc573-d839-4b5d-a152-07d00877be05','true','access.token.claim'),('48dfc573-d839-4b5d-a152-07d00877be05','preferred_username','claim.name'),('48dfc573-d839-4b5d-a152-07d00877be05','true','id.token.claim'),('48dfc573-d839-4b5d-a152-07d00877be05','true','introspection.token.claim'),('48dfc573-d839-4b5d-a152-07d00877be05','String','jsonType.label'),('48dfc573-d839-4b5d-a152-07d00877be05','username','user.attribute'),('48dfc573-d839-4b5d-a152-07d00877be05','true','userinfo.token.claim'),('49894cbd-ee47-41a1-a542-6ead6a28d532','true','access.token.claim'),('49894cbd-ee47-41a1-a542-6ead6a28d532','updated_at','claim.name'),('49894cbd-ee47-41a1-a542-6ead6a28d532','true','id.token.claim'),('49894cbd-ee47-41a1-a542-6ead6a28d532','true','introspection.token.claim'),('49894cbd-ee47-41a1-a542-6ead6a28d532','long','jsonType.label'),('49894cbd-ee47-41a1-a542-6ead6a28d532','updatedAt','user.attribute'),('49894cbd-ee47-41a1-a542-6ead6a28d532','true','userinfo.token.claim'),('4995c3db-8dca-4206-bcc2-a244f133d597','true','access.token.claim'),('4995c3db-8dca-4206-bcc2-a244f133d597','email_verified','claim.name'),('4995c3db-8dca-4206-bcc2-a244f133d597','true','id.token.claim'),('4995c3db-8dca-4206-bcc2-a244f133d597','true','introspection.token.claim'),('4995c3db-8dca-4206-bcc2-a244f133d597','boolean','jsonType.label'),('4995c3db-8dca-4206-bcc2-a244f133d597','emailVerified','user.attribute'),('4995c3db-8dca-4206-bcc2-a244f133d597','true','userinfo.token.claim'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','true','access.token.claim'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','clientAddress','claim.name'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','true','id.token.claim'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','String','jsonType.label'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','clientAddress','user.session.note'),('49ae435e-bf8e-47ec-8aaa-db57e74f69ba','true','userinfo.token.claim'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','true','access.token.claim'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','family_name','claim.name'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','true','id.token.claim'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','true','introspection.token.claim'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','String','jsonType.label'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','lastName','user.attribute'),('4bafa85e-a47b-42ce-a69a-f7f3872a8370','true','userinfo.token.claim'),('4ee9066c-577a-480c-ab45-de31d700d5b3','true','access.token.claim'),('4ee9066c-577a-480c-ab45-de31d700d5b3','groups','claim.name'),('4ee9066c-577a-480c-ab45-de31d700d5b3','true','id.token.claim'),('4ee9066c-577a-480c-ab45-de31d700d5b3','true','introspection.token.claim'),('4ee9066c-577a-480c-ab45-de31d700d5b3','String','jsonType.label'),('4ee9066c-577a-480c-ab45-de31d700d5b3','true','multivalued'),('4ee9066c-577a-480c-ab45-de31d700d5b3','foo','user.attribute'),('50da41fb-8720-4765-bc87-639bdfd4b947','true','access.token.claim'),('50da41fb-8720-4765-bc87-639bdfd4b947','middle_name','claim.name'),('50da41fb-8720-4765-bc87-639bdfd4b947','true','id.token.claim'),('50da41fb-8720-4765-bc87-639bdfd4b947','true','introspection.token.claim'),('50da41fb-8720-4765-bc87-639bdfd4b947','String','jsonType.label'),('50da41fb-8720-4765-bc87-639bdfd4b947','middleName','user.attribute'),('50da41fb-8720-4765-bc87-639bdfd4b947','true','userinfo.token.claim'),('55c57620-670e-4256-acc8-b29b3ae530b3','true','access.token.claim'),('55c57620-670e-4256-acc8-b29b3ae530b3','clientHost','claim.name'),('55c57620-670e-4256-acc8-b29b3ae530b3','true','id.token.claim'),('55c57620-670e-4256-acc8-b29b3ae530b3','String','jsonType.label'),('55c57620-670e-4256-acc8-b29b3ae530b3','clientHost','user.session.note'),('55c57620-670e-4256-acc8-b29b3ae530b3','true','userinfo.token.claim'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','true','access.token.claim'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','email_verified','claim.name'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','true','id.token.claim'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','true','introspection.token.claim'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','boolean','jsonType.label'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','emailVerified','user.attribute'),('56ce4c0f-0b38-4496-b7ae-77ec97b47c60','true','userinfo.token.claim'),('5746be05-a824-4062-a6ea-740a2d6720e1','true','access.token.claim'),('5746be05-a824-4062-a6ea-740a2d6720e1','updated_at','claim.name'),('5746be05-a824-4062-a6ea-740a2d6720e1','true','id.token.claim'),('5746be05-a824-4062-a6ea-740a2d6720e1','true','introspection.token.claim'),('5746be05-a824-4062-a6ea-740a2d6720e1','long','jsonType.label'),('5746be05-a824-4062-a6ea-740a2d6720e1','updatedAt','user.attribute'),('5746be05-a824-4062-a6ea-740a2d6720e1','true','userinfo.token.claim'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','true','access.token.claim'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','nickname','claim.name'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','true','id.token.claim'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','true','introspection.token.claim'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','String','jsonType.label'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','nickname','user.attribute'),('5807d2b8-2bc4-4031-b1ec-b6311605042d','true','userinfo.token.claim'),('58356b0b-ac49-48ff-8770-edce2b247aaf','true','access.token.claim'),('58356b0b-ac49-48ff-8770-edce2b247aaf','locale','claim.name'),('58356b0b-ac49-48ff-8770-edce2b247aaf','true','id.token.claim'),('58356b0b-ac49-48ff-8770-edce2b247aaf','true','introspection.token.claim'),('58356b0b-ac49-48ff-8770-edce2b247aaf','String','jsonType.label'),('58356b0b-ac49-48ff-8770-edce2b247aaf','locale','user.attribute'),('58356b0b-ac49-48ff-8770-edce2b247aaf','true','userinfo.token.claim'),('598d28bb-0653-47b8-84ba-374207a08512','true','access.token.claim'),('598d28bb-0653-47b8-84ba-374207a08512','clientHost','claim.name'),('598d28bb-0653-47b8-84ba-374207a08512','true','id.token.claim'),('598d28bb-0653-47b8-84ba-374207a08512','String','jsonType.label'),('598d28bb-0653-47b8-84ba-374207a08512','clientHost','user.session.note'),('598d28bb-0653-47b8-84ba-374207a08512','true','userinfo.token.claim'),('5abe2ab0-dcdd-48b4-b201-4d128ca7ad06','true','access.token.claim'),('5abe2ab0-dcdd-48b4-b201-4d128ca7ad06','true','introspection.token.claim'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','true','access.token.claim'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','phone_number_verified','claim.name'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','true','id.token.claim'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','true','introspection.token.claim'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','boolean','jsonType.label'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','phoneNumberVerified','user.attribute'),('5b0b86f4-327f-4876-aeb6-39f5ceab326d','true','userinfo.token.claim'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','true','access.token.claim'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','birthdate','claim.name'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','true','id.token.claim'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','true','introspection.token.claim'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','String','jsonType.label'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','birthdate','user.attribute'),('5b822ef0-b9ca-46a7-9c93-e2b753260da5','true','userinfo.token.claim'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','true','access.token.claim'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','clientId','claim.name'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','true','id.token.claim'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','String','jsonType.label'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','clientId','user.session.note'),('5bf12b51-a8ed-48cd-9f3e-ccd9bff461ba','true','userinfo.token.claim'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','true','access.token.claim'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','locale','claim.name'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','true','id.token.claim'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','true','introspection.token.claim'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','String','jsonType.label'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','locale','user.attribute'),('5c72d8f5-ffcd-41b5-8a73-fa4b6f0b30d8','true','userinfo.token.claim'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','true','access.token.claim'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','phone_number','claim.name'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','true','id.token.claim'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','true','introspection.token.claim'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','String','jsonType.label'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','phoneNumber','user.attribute'),('5cbc613c-e8a0-48db-ba21-b882f0b07090','true','userinfo.token.claim'),('5ee4fda3-bac2-4a39-bd81-1814048318a2','true','access.token.claim'),('5ee4fda3-bac2-4a39-bd81-1814048318a2','true','introspection.token.claim'),('60367076-4d20-4006-a8b0-18e999744b07','true','access.token.claim'),('60367076-4d20-4006-a8b0-18e999744b07','resource_access.${client_id}.roles','claim.name'),('60367076-4d20-4006-a8b0-18e999744b07','true','introspection.token.claim'),('60367076-4d20-4006-a8b0-18e999744b07','String','jsonType.label'),('60367076-4d20-4006-a8b0-18e999744b07','true','multivalued'),('60367076-4d20-4006-a8b0-18e999744b07','foo','user.attribute'),('604be95d-5167-4204-bb4c-b5e68062753a','Role','attribute.name'),('604be95d-5167-4204-bb4c-b5e68062753a','Basic','attribute.nameformat'),('604be95d-5167-4204-bb4c-b5e68062753a','false','single'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','true','access.token.claim'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','zoneinfo','claim.name'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','true','id.token.claim'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','true','introspection.token.claim'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','String','jsonType.label'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','zoneinfo','user.attribute'),('62406c0e-63ac-479a-a1a4-1ad2191af62b','true','userinfo.token.claim'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','true','access.token.claim'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','updated_at','claim.name'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','true','id.token.claim'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','true','introspection.token.claim'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','long','jsonType.label'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','updatedAt','user.attribute'),('62e25e9d-d3b6-4528-8638-7129c50d0dc3','true','userinfo.token.claim'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','true','access.token.claim'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','phone_number_verified','claim.name'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','true','id.token.claim'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','true','introspection.token.claim'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','boolean','jsonType.label'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','phoneNumberVerified','user.attribute'),('62fb2dab-fac7-4452-8a8c-c14985d46f11','true','userinfo.token.claim'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','true','access.token.claim'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','birthdate','claim.name'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','true','id.token.claim'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','true','introspection.token.claim'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','String','jsonType.label'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','birthdate','user.attribute'),('6383d8c2-f6ac-4082-827d-2ccea2c93929','true','userinfo.token.claim'),('65703061-514f-4551-8bcc-fb15725a2b86','true','access.token.claim'),('65703061-514f-4551-8bcc-fb15725a2b86','upn','claim.name'),('65703061-514f-4551-8bcc-fb15725a2b86','true','id.token.claim'),('65703061-514f-4551-8bcc-fb15725a2b86','true','introspection.token.claim'),('65703061-514f-4551-8bcc-fb15725a2b86','String','jsonType.label'),('65703061-514f-4551-8bcc-fb15725a2b86','username','user.attribute'),('65703061-514f-4551-8bcc-fb15725a2b86','true','userinfo.token.claim'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','true','access.token.claim'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','realm_access.roles','claim.name'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','true','introspection.token.claim'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','String','jsonType.label'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','true','multivalued'),('66967598-0393-4bf7-bdb3-eb10e8e7ab01','foo','user.attribute'),('66e625d9-8fde-4b64-b929-02fed34493a0','true','access.token.claim'),('66e625d9-8fde-4b64-b929-02fed34493a0','picture','claim.name'),('66e625d9-8fde-4b64-b929-02fed34493a0','true','id.token.claim'),('66e625d9-8fde-4b64-b929-02fed34493a0','true','introspection.token.claim'),('66e625d9-8fde-4b64-b929-02fed34493a0','String','jsonType.label'),('66e625d9-8fde-4b64-b929-02fed34493a0','picture','user.attribute'),('66e625d9-8fde-4b64-b929-02fed34493a0','true','userinfo.token.claim'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','true','access.token.claim'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','picture','claim.name'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','true','id.token.claim'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','true','introspection.token.claim'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','String','jsonType.label'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','picture','user.attribute'),('684a535c-cc80-4a40-8968-6b69e0e0fd82','true','userinfo.token.claim'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','true','access.token.claim'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','preferred_username','claim.name'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','true','id.token.claim'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','true','introspection.token.claim'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','String','jsonType.label'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','username','user.attribute'),('69958846-cea4-4905-9bfb-0c48f3f3aeca','true','userinfo.token.claim'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','true','access.token.claim'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','resource_access.${client_id}.roles','claim.name'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','true','introspection.token.claim'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','String','jsonType.label'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','true','multivalued'),('6a4506e4-7d2f-40f0-8427-1d8260d709ce','foo','user.attribute'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','true','access.token.claim'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','locale','claim.name'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','true','id.token.claim'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','true','introspection.token.claim'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','String','jsonType.label'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','locale','user.attribute'),('6b5a04fd-4bba-4f8f-aaba-308bfd4901fb','true','userinfo.token.claim'),('6b815176-0414-421c-881e-9fb1109d8432','true','access.token.claim'),('6b815176-0414-421c-881e-9fb1109d8432','phone_number_verified','claim.name'),('6b815176-0414-421c-881e-9fb1109d8432','true','id.token.claim'),('6b815176-0414-421c-881e-9fb1109d8432','true','introspection.token.claim'),('6b815176-0414-421c-881e-9fb1109d8432','boolean','jsonType.label'),('6b815176-0414-421c-881e-9fb1109d8432','phoneNumberVerified','user.attribute'),('6b815176-0414-421c-881e-9fb1109d8432','true','userinfo.token.claim'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','true','access.token.claim'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','zoneinfo','claim.name'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','true','id.token.claim'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','true','introspection.token.claim'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','String','jsonType.label'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','zoneinfo','user.attribute'),('6cd350f5-4f57-4d72-ad39-2ede24d93540','true','userinfo.token.claim'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','true','access.token.claim'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','gender','claim.name'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','true','id.token.claim'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','true','introspection.token.claim'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','String','jsonType.label'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','gender','user.attribute'),('6d7b4d71-c9d4-4448-bd80-f63435f1af1e','true','userinfo.token.claim'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','true','access.token.claim'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','family_name','claim.name'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','true','id.token.claim'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','true','introspection.token.claim'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','String','jsonType.label'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','lastName','user.attribute'),('6e3bc024-7d35-494d-b216-f15bcc88df0e','true','userinfo.token.claim'),('6e96f5e6-106f-47db-9d52-57a1355e4642','true','access.token.claim'),('6e96f5e6-106f-47db-9d52-57a1355e4642','nickname','claim.name'),('6e96f5e6-106f-47db-9d52-57a1355e4642','true','id.token.claim'),('6e96f5e6-106f-47db-9d52-57a1355e4642','true','introspection.token.claim'),('6e96f5e6-106f-47db-9d52-57a1355e4642','String','jsonType.label'),('6e96f5e6-106f-47db-9d52-57a1355e4642','nickname','user.attribute'),('6e96f5e6-106f-47db-9d52-57a1355e4642','true','userinfo.token.claim'),('717a24fe-9037-40ef-a2ee-f456692ef017','true','access.token.claim'),('717a24fe-9037-40ef-a2ee-f456692ef017','locale','claim.name'),('717a24fe-9037-40ef-a2ee-f456692ef017','true','id.token.claim'),('717a24fe-9037-40ef-a2ee-f456692ef017','true','introspection.token.claim'),('717a24fe-9037-40ef-a2ee-f456692ef017','String','jsonType.label'),('717a24fe-9037-40ef-a2ee-f456692ef017','locale','user.attribute'),('717a24fe-9037-40ef-a2ee-f456692ef017','true','userinfo.token.claim'),('742eac16-4234-456a-b268-88b5afda18a3','true','access.token.claim'),('742eac16-4234-456a-b268-88b5afda18a3','true','introspection.token.claim'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','true','access.token.claim'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','family_name','claim.name'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','true','id.token.claim'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','true','introspection.token.claim'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','String','jsonType.label'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','lastName','user.attribute'),('749e62fd-c4b9-42bc-8693-f58b39d7f6b6','true','userinfo.token.claim'),('77988939-9617-44e5-87fd-0f8902006e6d','true','access.token.claim'),('77988939-9617-44e5-87fd-0f8902006e6d','birthdate','claim.name'),('77988939-9617-44e5-87fd-0f8902006e6d','true','id.token.claim'),('77988939-9617-44e5-87fd-0f8902006e6d','true','introspection.token.claim'),('77988939-9617-44e5-87fd-0f8902006e6d','String','jsonType.label'),('77988939-9617-44e5-87fd-0f8902006e6d','birthdate','user.attribute'),('77988939-9617-44e5-87fd-0f8902006e6d','true','userinfo.token.claim'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','true','access.token.claim'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','true','id.token.claim'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','true','introspection.token.claim'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','country','user.attribute.country'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','formatted','user.attribute.formatted'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','locality','user.attribute.locality'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','postal_code','user.attribute.postal_code'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','region','user.attribute.region'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','street','user.attribute.street'),('78ca20e5-e103-45b3-bc69-56b397b4b1f6','true','userinfo.token.claim'),('79e1bc0b-725a-4bae-b598-34fe12224a30','true','access.token.claim'),('79e1bc0b-725a-4bae-b598-34fe12224a30','phone_number','claim.name'),('79e1bc0b-725a-4bae-b598-34fe12224a30','true','id.token.claim'),('79e1bc0b-725a-4bae-b598-34fe12224a30','true','introspection.token.claim'),('79e1bc0b-725a-4bae-b598-34fe12224a30','String','jsonType.label'),('79e1bc0b-725a-4bae-b598-34fe12224a30','phoneNumber','user.attribute'),('79e1bc0b-725a-4bae-b598-34fe12224a30','true','userinfo.token.claim'),('7dfd3b18-1742-40ee-957e-54189c6f6162','true','access.token.claim'),('7dfd3b18-1742-40ee-957e-54189c6f6162','email','claim.name'),('7dfd3b18-1742-40ee-957e-54189c6f6162','true','id.token.claim'),('7dfd3b18-1742-40ee-957e-54189c6f6162','true','introspection.token.claim'),('7dfd3b18-1742-40ee-957e-54189c6f6162','String','jsonType.label'),('7dfd3b18-1742-40ee-957e-54189c6f6162','email','user.attribute'),('7dfd3b18-1742-40ee-957e-54189c6f6162','true','userinfo.token.claim'),('8146b6d6-69b6-40c4-9afa-94c227507850','true','access.token.claim'),('8146b6d6-69b6-40c4-9afa-94c227507850','clientAddress','claim.name'),('8146b6d6-69b6-40c4-9afa-94c227507850','true','id.token.claim'),('8146b6d6-69b6-40c4-9afa-94c227507850','String','jsonType.label'),('8146b6d6-69b6-40c4-9afa-94c227507850','clientAddress','user.session.note'),('8146b6d6-69b6-40c4-9afa-94c227507850','true','userinfo.token.claim'),('81ee0b16-46e8-4db8-a684-56b3e255e896','true','access.token.claim'),('81ee0b16-46e8-4db8-a684-56b3e255e896','upn','claim.name'),('81ee0b16-46e8-4db8-a684-56b3e255e896','true','id.token.claim'),('81ee0b16-46e8-4db8-a684-56b3e255e896','true','introspection.token.claim'),('81ee0b16-46e8-4db8-a684-56b3e255e896','String','jsonType.label'),('81ee0b16-46e8-4db8-a684-56b3e255e896','username','user.attribute'),('81ee0b16-46e8-4db8-a684-56b3e255e896','true','userinfo.token.claim'),('82a3e54a-d5bc-4547-a86b-779c745625d2','true','access.token.claim'),('82a3e54a-d5bc-4547-a86b-779c745625d2','website','claim.name'),('82a3e54a-d5bc-4547-a86b-779c745625d2','true','id.token.claim'),('82a3e54a-d5bc-4547-a86b-779c745625d2','true','introspection.token.claim'),('82a3e54a-d5bc-4547-a86b-779c745625d2','String','jsonType.label'),('82a3e54a-d5bc-4547-a86b-779c745625d2','website','user.attribute'),('82a3e54a-d5bc-4547-a86b-779c745625d2','true','userinfo.token.claim'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','true','access.token.claim'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','upn','claim.name'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','true','id.token.claim'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','true','introspection.token.claim'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','String','jsonType.label'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','username','user.attribute'),('82dfa38d-1c81-41f3-8ebf-e075a174c082','true','userinfo.token.claim'),('833dc21b-d126-48e3-9832-804567192da2','true','access.token.claim'),('833dc21b-d126-48e3-9832-804567192da2','family_name','claim.name'),('833dc21b-d126-48e3-9832-804567192da2','true','id.token.claim'),('833dc21b-d126-48e3-9832-804567192da2','true','introspection.token.claim'),('833dc21b-d126-48e3-9832-804567192da2','String','jsonType.label'),('833dc21b-d126-48e3-9832-804567192da2','lastName','user.attribute'),('833dc21b-d126-48e3-9832-804567192da2','true','userinfo.token.claim'),('86f46ae2-6748-4760-a9bb-5023e136e559','true','access.token.claim'),('86f46ae2-6748-4760-a9bb-5023e136e559','locale','claim.name'),('86f46ae2-6748-4760-a9bb-5023e136e559','true','id.token.claim'),('86f46ae2-6748-4760-a9bb-5023e136e559','true','introspection.token.claim'),('86f46ae2-6748-4760-a9bb-5023e136e559','String','jsonType.label'),('86f46ae2-6748-4760-a9bb-5023e136e559','locale','user.attribute'),('86f46ae2-6748-4760-a9bb-5023e136e559','true','userinfo.token.claim'),('88bdc874-db32-419a-97d3-8f82b8af27bd','true','access.token.claim'),('88bdc874-db32-419a-97d3-8f82b8af27bd','true','id.token.claim'),('88bdc874-db32-419a-97d3-8f82b8af27bd','true','introspection.token.claim'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','true','access.token.claim'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','email','claim.name'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','true','id.token.claim'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','true','introspection.token.claim'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','String','jsonType.label'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','email','user.attribute'),('893cf7c7-c849-4ed0-9ca0-a9cff70e1fdd','true','userinfo.token.claim'),('89d2d459-6104-4072-89fd-03bb2f6802f3','true','access.token.claim'),('89d2d459-6104-4072-89fd-03bb2f6802f3','true','id.token.claim'),('89d2d459-6104-4072-89fd-03bb2f6802f3','true','introspection.token.claim'),('8d539818-f56d-4dcd-8d5b-d911d5934908','true','access.token.claim'),('8d539818-f56d-4dcd-8d5b-d911d5934908','nickname','claim.name'),('8d539818-f56d-4dcd-8d5b-d911d5934908','true','id.token.claim'),('8d539818-f56d-4dcd-8d5b-d911d5934908','true','introspection.token.claim'),('8d539818-f56d-4dcd-8d5b-d911d5934908','String','jsonType.label'),('8d539818-f56d-4dcd-8d5b-d911d5934908','nickname','user.attribute'),('8d539818-f56d-4dcd-8d5b-d911d5934908','true','userinfo.token.claim'),('9103d381-540f-45da-9641-24c22665264f','true','access.token.claim'),('9103d381-540f-45da-9641-24c22665264f','phone_number','claim.name'),('9103d381-540f-45da-9641-24c22665264f','true','id.token.claim'),('9103d381-540f-45da-9641-24c22665264f','true','introspection.token.claim'),('9103d381-540f-45da-9641-24c22665264f','String','jsonType.label'),('9103d381-540f-45da-9641-24c22665264f','phoneNumber','user.attribute'),('9103d381-540f-45da-9641-24c22665264f','true','userinfo.token.claim'),('91148796-a454-4d5f-8379-7153e33fa4df','true','access.token.claim'),('91148796-a454-4d5f-8379-7153e33fa4df','resource_access.${client_id}.roles','claim.name'),('91148796-a454-4d5f-8379-7153e33fa4df','true','introspection.token.claim'),('91148796-a454-4d5f-8379-7153e33fa4df','String','jsonType.label'),('91148796-a454-4d5f-8379-7153e33fa4df','true','multivalued'),('91148796-a454-4d5f-8379-7153e33fa4df','foo','user.attribute'),('91900c4b-d504-45df-b443-335bf595c863','true','access.token.claim'),('91900c4b-d504-45df-b443-335bf595c863','gender','claim.name'),('91900c4b-d504-45df-b443-335bf595c863','true','id.token.claim'),('91900c4b-d504-45df-b443-335bf595c863','true','introspection.token.claim'),('91900c4b-d504-45df-b443-335bf595c863','String','jsonType.label'),('91900c4b-d504-45df-b443-335bf595c863','gender','user.attribute'),('91900c4b-d504-45df-b443-335bf595c863','true','userinfo.token.claim'),('95ec2405-2865-4319-a4be-b07f1d13909f','true','access.token.claim'),('95ec2405-2865-4319-a4be-b07f1d13909f','profile','claim.name'),('95ec2405-2865-4319-a4be-b07f1d13909f','true','id.token.claim'),('95ec2405-2865-4319-a4be-b07f1d13909f','true','introspection.token.claim'),('95ec2405-2865-4319-a4be-b07f1d13909f','String','jsonType.label'),('95ec2405-2865-4319-a4be-b07f1d13909f','profile','user.attribute'),('95ec2405-2865-4319-a4be-b07f1d13909f','true','userinfo.token.claim'),('987b6c3e-292b-4d18-9b25-bf9907851858','true','access.token.claim'),('987b6c3e-292b-4d18-9b25-bf9907851858','true','introspection.token.claim'),('9e822aae-2ff4-460d-a842-a444ee4ba305','true','access.token.claim'),('9e822aae-2ff4-460d-a842-a444ee4ba305','email_verified','claim.name'),('9e822aae-2ff4-460d-a842-a444ee4ba305','true','id.token.claim'),('9e822aae-2ff4-460d-a842-a444ee4ba305','true','introspection.token.claim'),('9e822aae-2ff4-460d-a842-a444ee4ba305','boolean','jsonType.label'),('9e822aae-2ff4-460d-a842-a444ee4ba305','emailVerified','user.attribute'),('9e822aae-2ff4-460d-a842-a444ee4ba305','true','userinfo.token.claim'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','true','access.token.claim'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','updated_at','claim.name'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','true','id.token.claim'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','true','introspection.token.claim'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','long','jsonType.label'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','updatedAt','user.attribute'),('9f2ba2fe-5d3e-4977-ad40-23ec19b28ade','true','userinfo.token.claim'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','true','access.token.claim'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','profile','claim.name'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','true','id.token.claim'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','true','introspection.token.claim'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','String','jsonType.label'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','profile','user.attribute'),('a00bccf1-f768-48f7-abb5-4c9706aeeb13','true','userinfo.token.claim'),('a01ba3cb-5d8f-4bed-8d9f-e3eba39e15d3','true','access.token.claim'),('a01ba3cb-5d8f-4bed-8d9f-e3eba39e15d3','true','introspection.token.claim'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','true','access.token.claim'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','picture','claim.name'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','true','id.token.claim'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','true','introspection.token.claim'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','String','jsonType.label'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','picture','user.attribute'),('a0bf8253-f39b-47d8-969c-0dd1e94c0348','true','userinfo.token.claim'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','true','access.token.claim'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','clientId','claim.name'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','true','id.token.claim'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','String','jsonType.label'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','clientId','user.session.note'),('a2945d8b-2329-44b2-8c09-8dad1509e7d8','true','userinfo.token.claim'),('a5b76c1f-eb66-4c97-bce4-2f11a4bafdde','true','access.token.claim'),('a5b76c1f-eb66-4c97-bce4-2f11a4bafdde','true','introspection.token.claim'),('a6269418-cf93-455f-8c6f-9c9877279db0','true','access.token.claim'),('a6269418-cf93-455f-8c6f-9c9877279db0','email','claim.name'),('a6269418-cf93-455f-8c6f-9c9877279db0','true','id.token.claim'),('a6269418-cf93-455f-8c6f-9c9877279db0','true','introspection.token.claim'),('a6269418-cf93-455f-8c6f-9c9877279db0','String','jsonType.label'),('a6269418-cf93-455f-8c6f-9c9877279db0','email','user.attribute'),('a6269418-cf93-455f-8c6f-9c9877279db0','true','userinfo.token.claim'),('a7b92c7e-2e36-4623-9ee5-93ad9f7e2210','true','access.token.claim'),('a7b92c7e-2e36-4623-9ee5-93ad9f7e2210','true','introspection.token.claim'),('a8aaf979-58ee-4004-9a6a-680ab726011c','true','access.token.claim'),('a8aaf979-58ee-4004-9a6a-680ab726011c','true','id.token.claim'),('a8aaf979-58ee-4004-9a6a-680ab726011c','true','introspection.token.claim'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','true','access.token.claim'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','clientId','claim.name'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','true','id.token.claim'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','String','jsonType.label'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','clientId','user.session.note'),('a91c7d22-3cce-4be4-807d-70a20d74f1fa','true','userinfo.token.claim'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','true','access.token.claim'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','locale','claim.name'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','true','id.token.claim'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','true','introspection.token.claim'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','String','jsonType.label'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','locale','user.attribute'),('a9ee29bc-8002-4f71-8653-c30eccbe3f11','true','userinfo.token.claim'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','true','access.token.claim'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','email','claim.name'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','true','id.token.claim'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','true','introspection.token.claim'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','String','jsonType.label'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','email','user.attribute'),('ae23c7c6-f1a5-4c3d-9868-2afd1d1e6897','true','userinfo.token.claim'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','true','access.token.claim'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','gender','claim.name'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','true','id.token.claim'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','true','introspection.token.claim'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','String','jsonType.label'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','gender','user.attribute'),('aebc2fa7-5c43-4cdf-a739-8f723be2b45c','true','userinfo.token.claim'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','true','access.token.claim'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','groups','claim.name'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','true','id.token.claim'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','true','introspection.token.claim'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','String','jsonType.label'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','true','multivalued'),('afa63a80-0bed-4e15-b3ef-2d16bbefb92d','foo','user.attribute'),('b245f27d-2604-476e-9cf1-a24d774621e2','true','access.token.claim'),('b245f27d-2604-476e-9cf1-a24d774621e2','given_name','claim.name'),('b245f27d-2604-476e-9cf1-a24d774621e2','true','id.token.claim'),('b245f27d-2604-476e-9cf1-a24d774621e2','true','introspection.token.claim'),('b245f27d-2604-476e-9cf1-a24d774621e2','String','jsonType.label'),('b245f27d-2604-476e-9cf1-a24d774621e2','firstName','user.attribute'),('b245f27d-2604-476e-9cf1-a24d774621e2','true','userinfo.token.claim'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','true','access.token.claim'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','given_name','claim.name'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','true','id.token.claim'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','true','introspection.token.claim'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','String','jsonType.label'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','firstName','user.attribute'),('b2cad884-5f0e-4eaa-9dd6-57d902b50a25','true','userinfo.token.claim'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','true','access.token.claim'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','middle_name','claim.name'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','true','id.token.claim'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','true','introspection.token.claim'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','String','jsonType.label'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','middleName','user.attribute'),('b3cab24f-28a9-4465-b8bb-39805485b9d5','true','userinfo.token.claim'),('b588a8a7-26db-4903-b334-7f0c489a71bb','true','access.token.claim'),('b588a8a7-26db-4903-b334-7f0c489a71bb','given_name','claim.name'),('b588a8a7-26db-4903-b334-7f0c489a71bb','true','id.token.claim'),('b588a8a7-26db-4903-b334-7f0c489a71bb','true','introspection.token.claim'),('b588a8a7-26db-4903-b334-7f0c489a71bb','String','jsonType.label'),('b588a8a7-26db-4903-b334-7f0c489a71bb','firstName','user.attribute'),('b588a8a7-26db-4903-b334-7f0c489a71bb','true','userinfo.token.claim'),('ba660647-b4f6-45c1-841c-214fef8037e7','true','access.token.claim'),('ba660647-b4f6-45c1-841c-214fef8037e7','true','id.token.claim'),('ba660647-b4f6-45c1-841c-214fef8037e7','true','introspection.token.claim'),('ba660647-b4f6-45c1-841c-214fef8037e7','country','user.attribute.country'),('ba660647-b4f6-45c1-841c-214fef8037e7','formatted','user.attribute.formatted'),('ba660647-b4f6-45c1-841c-214fef8037e7','locality','user.attribute.locality'),('ba660647-b4f6-45c1-841c-214fef8037e7','postal_code','user.attribute.postal_code'),('ba660647-b4f6-45c1-841c-214fef8037e7','region','user.attribute.region'),('ba660647-b4f6-45c1-841c-214fef8037e7','street','user.attribute.street'),('ba660647-b4f6-45c1-841c-214fef8037e7','true','userinfo.token.claim'),('bba15edb-a151-4276-9c76-8bdaca1105fe','true','access.token.claim'),('bba15edb-a151-4276-9c76-8bdaca1105fe','middle_name','claim.name'),('bba15edb-a151-4276-9c76-8bdaca1105fe','true','id.token.claim'),('bba15edb-a151-4276-9c76-8bdaca1105fe','true','introspection.token.claim'),('bba15edb-a151-4276-9c76-8bdaca1105fe','String','jsonType.label'),('bba15edb-a151-4276-9c76-8bdaca1105fe','middleName','user.attribute'),('bba15edb-a151-4276-9c76-8bdaca1105fe','true','userinfo.token.claim'),('c0ac401a-4a1f-4f30-9e8e-142d3ca94e35','true','access.token.claim'),('c0ac401a-4a1f-4f30-9e8e-142d3ca94e35','true','introspection.token.claim'),('c1195d0c-7d63-4030-b5a4-27ea17517660','true','access.token.claim'),('c1195d0c-7d63-4030-b5a4-27ea17517660','profile','claim.name'),('c1195d0c-7d63-4030-b5a4-27ea17517660','true','id.token.claim'),('c1195d0c-7d63-4030-b5a4-27ea17517660','true','introspection.token.claim'),('c1195d0c-7d63-4030-b5a4-27ea17517660','String','jsonType.label'),('c1195d0c-7d63-4030-b5a4-27ea17517660','profile','user.attribute'),('c1195d0c-7d63-4030-b5a4-27ea17517660','true','userinfo.token.claim'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','true','access.token.claim'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','nickname','claim.name'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','true','id.token.claim'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','true','introspection.token.claim'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','String','jsonType.label'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','nickname','user.attribute'),('c1a2deec-d008-4bae-8c3b-fe41d90f5ac7','true','userinfo.token.claim'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','true','access.token.claim'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','realm_access.roles','claim.name'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','true','introspection.token.claim'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','String','jsonType.label'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','true','multivalued'),('c6c9a64c-d808-4b20-b077-bfab0192f51e','foo','user.attribute'),('c78e7930-a953-446c-bc8f-fda33f73751e','true','access.token.claim'),('c78e7930-a953-446c-bc8f-fda33f73751e','clientAddress','claim.name'),('c78e7930-a953-446c-bc8f-fda33f73751e','true','id.token.claim'),('c78e7930-a953-446c-bc8f-fda33f73751e','String','jsonType.label'),('c78e7930-a953-446c-bc8f-fda33f73751e','clientAddress','user.session.note'),('c78e7930-a953-446c-bc8f-fda33f73751e','true','userinfo.token.claim'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','true','access.token.claim'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','phone_number_verified','claim.name'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','true','id.token.claim'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','true','introspection.token.claim'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','boolean','jsonType.label'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','phoneNumberVerified','user.attribute'),('c9e36d57-eb48-49fb-b974-e7ddd77dee50','true','userinfo.token.claim'),('ca00e8c2-7489-4fa2-88fb-c065c9b4ea2a','true','access.token.claim'),('ca00e8c2-7489-4fa2-88fb-c065c9b4ea2a','true','introspection.token.claim'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','true','access.token.claim'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','true','id.token.claim'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','true','introspection.token.claim'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','country','user.attribute.country'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','formatted','user.attribute.formatted'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','locality','user.attribute.locality'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','postal_code','user.attribute.postal_code'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','region','user.attribute.region'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','street','user.attribute.street'),('ca8a5bfb-aa79-441b-8f40-0de5599a2815','true','userinfo.token.claim'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','true','access.token.claim'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','email','claim.name'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','true','id.token.claim'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','true','introspection.token.claim'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','String','jsonType.label'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','email','user.attribute'),('cbfcbb31-b6ff-459f-9829-7f352435e9c2','true','userinfo.token.claim'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','true','access.token.claim'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','clientHost','claim.name'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','true','id.token.claim'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','String','jsonType.label'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','clientHost','user.session.note'),('ce123cbd-b242-48a3-bb94-4fcb65b6ceef','true','userinfo.token.claim'),('ce64e430-859e-41ba-b24f-cf903b0582cb','true','access.token.claim'),('ce64e430-859e-41ba-b24f-cf903b0582cb','zoneinfo','claim.name'),('ce64e430-859e-41ba-b24f-cf903b0582cb','true','id.token.claim'),('ce64e430-859e-41ba-b24f-cf903b0582cb','true','introspection.token.claim'),('ce64e430-859e-41ba-b24f-cf903b0582cb','String','jsonType.label'),('ce64e430-859e-41ba-b24f-cf903b0582cb','zoneinfo','user.attribute'),('ce64e430-859e-41ba-b24f-cf903b0582cb','true','userinfo.token.claim'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','true','access.token.claim'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','birthdate','claim.name'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','true','id.token.claim'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','true','introspection.token.claim'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','String','jsonType.label'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','birthdate','user.attribute'),('cebf423b-3713-446e-86fb-8ca0ebeff43c','true','userinfo.token.claim'),('cecee2a6-a646-4569-ad4f-892d56a8927d','true','access.token.claim'),('cecee2a6-a646-4569-ad4f-892d56a8927d','nickname','claim.name'),('cecee2a6-a646-4569-ad4f-892d56a8927d','true','id.token.claim'),('cecee2a6-a646-4569-ad4f-892d56a8927d','true','introspection.token.claim'),('cecee2a6-a646-4569-ad4f-892d56a8927d','String','jsonType.label'),('cecee2a6-a646-4569-ad4f-892d56a8927d','nickname','user.attribute'),('cecee2a6-a646-4569-ad4f-892d56a8927d','true','userinfo.token.claim'),('cf0c8012-cb65-4258-afec-fb2379eecddf','true','access.token.claim'),('cf0c8012-cb65-4258-afec-fb2379eecddf','picture','claim.name'),('cf0c8012-cb65-4258-afec-fb2379eecddf','true','id.token.claim'),('cf0c8012-cb65-4258-afec-fb2379eecddf','true','introspection.token.claim'),('cf0c8012-cb65-4258-afec-fb2379eecddf','String','jsonType.label'),('cf0c8012-cb65-4258-afec-fb2379eecddf','picture','user.attribute'),('cf0c8012-cb65-4258-afec-fb2379eecddf','true','userinfo.token.claim'),('d20f785a-ae14-4f55-b558-061e37bb1ccb','true','access.token.claim'),('d20f785a-ae14-4f55-b558-061e37bb1ccb','true','id.token.claim'),('d20f785a-ae14-4f55-b558-061e37bb1ccb','true','introspection.token.claim'),('d20f785a-ae14-4f55-b558-061e37bb1ccb','true','userinfo.token.claim'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','true','access.token.claim'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','email_verified','claim.name'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','true','id.token.claim'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','true','introspection.token.claim'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','boolean','jsonType.label'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','emailVerified','user.attribute'),('d3bf9f62-c45c-48e7-a660-1f48a5a17b56','true','userinfo.token.claim'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','true','access.token.claim'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','true','id.token.claim'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','true','introspection.token.claim'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','country','user.attribute.country'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','formatted','user.attribute.formatted'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','locality','user.attribute.locality'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','postal_code','user.attribute.postal_code'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','region','user.attribute.region'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','street','user.attribute.street'),('d3c2b060-c5cf-43f8-b0c7-3454cfd00360','true','userinfo.token.claim'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','true','access.token.claim'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','website','claim.name'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','true','id.token.claim'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','true','introspection.token.claim'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','String','jsonType.label'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','website','user.attribute'),('d52d9c9c-4e21-4f48-abd5-112e449b7f5f','true','userinfo.token.claim'),('d5586729-5ddc-4c55-919c-b0ab760498a4','true','access.token.claim'),('d5586729-5ddc-4c55-919c-b0ab760498a4','preferred_username','claim.name'),('d5586729-5ddc-4c55-919c-b0ab760498a4','true','id.token.claim'),('d5586729-5ddc-4c55-919c-b0ab760498a4','true','introspection.token.claim'),('d5586729-5ddc-4c55-919c-b0ab760498a4','String','jsonType.label'),('d5586729-5ddc-4c55-919c-b0ab760498a4','username','user.attribute'),('d5586729-5ddc-4c55-919c-b0ab760498a4','true','userinfo.token.claim'),('d5f449a9-7a09-4b48-815b-a5a7418f0c38','true','access.token.claim'),('d5f449a9-7a09-4b48-815b-a5a7418f0c38','true','id.token.claim'),('d5f449a9-7a09-4b48-815b-a5a7418f0c38','true','introspection.token.claim'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','true','access.token.claim'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','family_name','claim.name'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','true','id.token.claim'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','true','introspection.token.claim'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','String','jsonType.label'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','lastName','user.attribute'),('d67fa227-dc2c-4403-a26f-5e273804f9dc','true','userinfo.token.claim'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','true','access.token.claim'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','middle_name','claim.name'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','true','id.token.claim'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','true','introspection.token.claim'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','String','jsonType.label'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','middleName','user.attribute'),('d692aec1-e1ef-4a17-b3f7-aab9421f9c05','true','userinfo.token.claim'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','true','access.token.claim'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','upn','claim.name'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','true','id.token.claim'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','true','introspection.token.claim'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','String','jsonType.label'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','username','user.attribute'),('d6ac0912-1fce-49f4-8eb0-717619032dd3','true','userinfo.token.claim'),('d7f9a9d5-f989-482f-816c-961a001e813f','true','access.token.claim'),('d7f9a9d5-f989-482f-816c-961a001e813f','family_name','claim.name'),('d7f9a9d5-f989-482f-816c-961a001e813f','true','id.token.claim'),('d7f9a9d5-f989-482f-816c-961a001e813f','true','introspection.token.claim'),('d7f9a9d5-f989-482f-816c-961a001e813f','String','jsonType.label'),('d7f9a9d5-f989-482f-816c-961a001e813f','lastName','user.attribute'),('d7f9a9d5-f989-482f-816c-961a001e813f','true','userinfo.token.claim'),('d88a80da-7448-4185-9170-6942a92fe726','true','access.token.claim'),('d88a80da-7448-4185-9170-6942a92fe726','birthdate','claim.name'),('d88a80da-7448-4185-9170-6942a92fe726','true','id.token.claim'),('d88a80da-7448-4185-9170-6942a92fe726','true','introspection.token.claim'),('d88a80da-7448-4185-9170-6942a92fe726','String','jsonType.label'),('d88a80da-7448-4185-9170-6942a92fe726','birthdate','user.attribute'),('d88a80da-7448-4185-9170-6942a92fe726','true','userinfo.token.claim'),('d93d7b48-4bd3-4df9-bbbd-9fc6d0e44f98','true','access.token.claim'),('d93d7b48-4bd3-4df9-bbbd-9fc6d0e44f98','true','id.token.claim'),('d93d7b48-4bd3-4df9-bbbd-9fc6d0e44f98','true','introspection.token.claim'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','true','access.token.claim'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','groups','claim.name'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','true','id.token.claim'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','true','introspection.token.claim'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','String','jsonType.label'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','true','multivalued'),('da39aa0b-79c4-4eae-a744-c1d8ce2b2193','foo','user.attribute'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','true','access.token.claim'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','website','claim.name'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','true','id.token.claim'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','true','introspection.token.claim'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','String','jsonType.label'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','website','user.attribute'),('dbb1a839-6213-4ab1-b5ae-77fa960db355','true','userinfo.token.claim'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','true','access.token.claim'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','website','claim.name'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','true','id.token.claim'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','true','introspection.token.claim'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','String','jsonType.label'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','website','user.attribute'),('dbb783a8-b134-45e8-9860-ae8b5fde6e06','true','userinfo.token.claim'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','true','access.token.claim'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','locale','claim.name'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','true','id.token.claim'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','true','introspection.token.claim'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','String','jsonType.label'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','locale','user.attribute'),('dc8b6f07-880c-47f9-816d-4d0e1daf3f91','true','userinfo.token.claim'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','true','access.token.claim'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','picture','claim.name'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','true','id.token.claim'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','true','introspection.token.claim'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','String','jsonType.label'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','picture','user.attribute'),('dd19b6fb-88dd-42d6-9e09-d997acfb9ed0','true','userinfo.token.claim'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','true','access.token.claim'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','updated_at','claim.name'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','true','id.token.claim'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','true','introspection.token.claim'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','long','jsonType.label'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','updatedAt','user.attribute'),('dd8a75b2-469b-4d4e-a6ee-8fbeb059de82','true','userinfo.token.claim'),('dfbdc31d-44a7-4028-8518-ed69fe30f96d','true','access.token.claim'),('dfbdc31d-44a7-4028-8518-ed69fe30f96d','true','introspection.token.claim'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','true','access.token.claim'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','birthdate','claim.name'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','true','id.token.claim'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','true','introspection.token.claim'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','String','jsonType.label'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','birthdate','user.attribute'),('e15ce0f2-26ef-40d9-bcaf-7e82501ecc32','true','userinfo.token.claim'),('e314b6be-bef7-4b0a-849b-daa8b04ef1bb','true','access.token.claim'),('e314b6be-bef7-4b0a-849b-daa8b04ef1bb','true','introspection.token.claim'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','true','access.token.claim'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','zoneinfo','claim.name'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','true','id.token.claim'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','true','introspection.token.claim'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','String','jsonType.label'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','zoneinfo','user.attribute'),('e34f428a-20ab-4f6e-9d58-94ed2108f751','true','userinfo.token.claim'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','true','access.token.claim'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','profile','claim.name'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','true','id.token.claim'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','true','introspection.token.claim'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','String','jsonType.label'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','profile','user.attribute'),('e4042dd9-9f1e-4076-84c9-ca9ab20c595d','true','userinfo.token.claim'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','true','access.token.claim'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','email_verified','claim.name'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','true','id.token.claim'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','true','introspection.token.claim'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','boolean','jsonType.label'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','emailVerified','user.attribute'),('e52f4d6d-a890-4b9b-b66c-e620ee8cc383','true','userinfo.token.claim'),('e59ef379-a583-4ad1-a239-5a57e35b71da','true','access.token.claim'),('e59ef379-a583-4ad1-a239-5a57e35b71da','clientId','claim.name'),('e59ef379-a583-4ad1-a239-5a57e35b71da','true','id.token.claim'),('e59ef379-a583-4ad1-a239-5a57e35b71da','String','jsonType.label'),('e59ef379-a583-4ad1-a239-5a57e35b71da','clientId','user.session.note'),('e59ef379-a583-4ad1-a239-5a57e35b71da','true','userinfo.token.claim'),('e68f2d78-9afa-49b1-baba-6b4f6d583070','true','access.token.claim'),('e68f2d78-9afa-49b1-baba-6b4f6d583070','realm_access.roles','claim.name'),('e68f2d78-9afa-49b1-baba-6b4f6d583070','true','introspection.token.claim'),('e68f2d78-9afa-49b1-baba-6b4f6d583070','String','jsonType.label'),('e68f2d78-9afa-49b1-baba-6b4f6d583070','true','multivalued'),('e68f2d78-9afa-49b1-baba-6b4f6d583070','foo','user.attribute'),('e766d25c-695f-4596-8768-db06bff17bcb','true','access.token.claim'),('e766d25c-695f-4596-8768-db06bff17bcb','groups','claim.name'),('e766d25c-695f-4596-8768-db06bff17bcb','true','id.token.claim'),('e766d25c-695f-4596-8768-db06bff17bcb','true','introspection.token.claim'),('e766d25c-695f-4596-8768-db06bff17bcb','String','jsonType.label'),('e766d25c-695f-4596-8768-db06bff17bcb','true','multivalued'),('e766d25c-695f-4596-8768-db06bff17bcb','foo','user.attribute'),('e8157ed2-1bfe-416e-960a-16959ff39266','true','access.token.claim'),('e8157ed2-1bfe-416e-960a-16959ff39266','website','claim.name'),('e8157ed2-1bfe-416e-960a-16959ff39266','true','id.token.claim'),('e8157ed2-1bfe-416e-960a-16959ff39266','true','introspection.token.claim'),('e8157ed2-1bfe-416e-960a-16959ff39266','String','jsonType.label'),('e8157ed2-1bfe-416e-960a-16959ff39266','website','user.attribute'),('e8157ed2-1bfe-416e-960a-16959ff39266','true','userinfo.token.claim'),('ed580657-3f5b-4806-a77c-afd219c25da8','true','access.token.claim'),('ed580657-3f5b-4806-a77c-afd219c25da8','clientAddress','claim.name'),('ed580657-3f5b-4806-a77c-afd219c25da8','true','id.token.claim'),('ed580657-3f5b-4806-a77c-afd219c25da8','String','jsonType.label'),('ed580657-3f5b-4806-a77c-afd219c25da8','clientAddress','user.session.note'),('ed580657-3f5b-4806-a77c-afd219c25da8','true','userinfo.token.claim'),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','true','access.token.claim'),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','clientAddress','claim.name'),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','true','id.token.claim'),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','String','jsonType.label'),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','clientAddress','user.session.note'),('ef3a8b48-2ed5-4d5e-ac6e-038c4e305a47','true','userinfo.token.claim'),('f0d48c20-ee9e-41a5-b287-ce9dbc54afc3','true','access.token.claim'),('f0d48c20-ee9e-41a5-b287-ce9dbc54afc3','true','id.token.claim'),('f0d48c20-ee9e-41a5-b287-ce9dbc54afc3','true','introspection.token.claim'),('f0d48c20-ee9e-41a5-b287-ce9dbc54afc3','true','userinfo.token.claim'),('f3786245-955f-41f5-95a9-2ae0719224c5','true','access.token.claim'),('f3786245-955f-41f5-95a9-2ae0719224c5','clientHost','claim.name'),('f3786245-955f-41f5-95a9-2ae0719224c5','true','id.token.claim'),('f3786245-955f-41f5-95a9-2ae0719224c5','String','jsonType.label'),('f3786245-955f-41f5-95a9-2ae0719224c5','clientHost','user.session.note'),('f3786245-955f-41f5-95a9-2ae0719224c5','true','userinfo.token.claim'),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','true','access.token.claim'),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','clientHost','claim.name'),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','true','id.token.claim'),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','String','jsonType.label'),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','clientHost','user.session.note'),('f3d5e5c3-fa94-42ad-a553-3c07c6a5118d','true','userinfo.token.claim'),('f46081d1-a2db-4885-a521-e9abb2766e10','true','access.token.claim'),('f46081d1-a2db-4885-a521-e9abb2766e10','gender','claim.name'),('f46081d1-a2db-4885-a521-e9abb2766e10','true','id.token.claim'),('f46081d1-a2db-4885-a521-e9abb2766e10','true','introspection.token.claim'),('f46081d1-a2db-4885-a521-e9abb2766e10','String','jsonType.label'),('f46081d1-a2db-4885-a521-e9abb2766e10','gender','user.attribute'),('f46081d1-a2db-4885-a521-e9abb2766e10','true','userinfo.token.claim'),('f7eb2b09-42c1-4647-80e6-6e724165271d','true','access.token.claim'),('f7eb2b09-42c1-4647-80e6-6e724165271d','true','id.token.claim'),('f7eb2b09-42c1-4647-80e6-6e724165271d','true','introspection.token.claim'),('f7eb2b09-42c1-4647-80e6-6e724165271d','true','userinfo.token.claim'),('f8104b34-0423-4c6d-a98f-1710b1905880','true','access.token.claim'),('f8104b34-0423-4c6d-a98f-1710b1905880','given_name','claim.name'),('f8104b34-0423-4c6d-a98f-1710b1905880','true','id.token.claim'),('f8104b34-0423-4c6d-a98f-1710b1905880','true','introspection.token.claim'),('f8104b34-0423-4c6d-a98f-1710b1905880','String','jsonType.label'),('f8104b34-0423-4c6d-a98f-1710b1905880','firstName','user.attribute'),('f8104b34-0423-4c6d-a98f-1710b1905880','true','userinfo.token.claim'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','true','access.token.claim'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','preferred_username','claim.name'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','true','id.token.claim'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','true','introspection.token.claim'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','String','jsonType.label'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','username','user.attribute'),('f9b6f25d-0d34-42c7-a9a8-9df14257b240','true','userinfo.token.claim'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','true','access.token.claim'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','picture','claim.name'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','true','id.token.claim'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','true','introspection.token.claim'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','String','jsonType.label'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','picture','user.attribute'),('fa04ddbc-e709-4853-a50b-5c53f31450e3','true','userinfo.token.claim'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','true','access.token.claim'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','gender','claim.name'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','true','id.token.claim'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','true','introspection.token.claim'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','String','jsonType.label'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','gender','user.attribute'),('fa3a3871-6995-4e9d-bf85-b392cfc21535','true','userinfo.token.claim'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','true','access.token.claim'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','email','claim.name'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','true','id.token.claim'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','true','introspection.token.claim'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','String','jsonType.label'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','email','user.attribute'),('fadab313-af4d-4ea7-a382-d26fdf7bec11','true','userinfo.token.claim'),('fb606275-f3be-4b25-a42f-fd801b006353','true','access.token.claim'),('fb606275-f3be-4b25-a42f-fd801b006353','true','id.token.claim'),('fb606275-f3be-4b25-a42f-fd801b006353','true','introspection.token.claim'),('fb606275-f3be-4b25-a42f-fd801b006353','country','user.attribute.country'),('fb606275-f3be-4b25-a42f-fd801b006353','formatted','user.attribute.formatted'),('fb606275-f3be-4b25-a42f-fd801b006353','locality','user.attribute.locality'),('fb606275-f3be-4b25-a42f-fd801b006353','postal_code','user.attribute.postal_code'),('fb606275-f3be-4b25-a42f-fd801b006353','region','user.attribute.region'),('fb606275-f3be-4b25-a42f-fd801b006353','street','user.attribute.street'),('fb606275-f3be-4b25-a42f-fd801b006353','true','userinfo.token.claim'),('fdab39e5-8208-4602-80cb-27e31995104b','true','access.token.claim'),('fdab39e5-8208-4602-80cb-27e31995104b','zoneinfo','claim.name'),('fdab39e5-8208-4602-80cb-27e31995104b','true','id.token.claim'),('fdab39e5-8208-4602-80cb-27e31995104b','true','introspection.token.claim'),('fdab39e5-8208-4602-80cb-27e31995104b','String','jsonType.label'),('fdab39e5-8208-4602-80cb-27e31995104b','zoneinfo','user.attribute'),('fdab39e5-8208-4602-80cb-27e31995104b','true','userinfo.token.claim'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','true','access.token.claim'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','resource_access.${client_id}.roles','claim.name'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','true','introspection.token.claim'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','String','jsonType.label'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','true','multivalued'),('ff033222-dbb5-472d-b9a2-9a3772ee9e35','foo','user.attribute'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','true','access.token.claim'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','resource_access.${client_id}.roles','claim.name'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','true','introspection.token.claim'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','String','jsonType.label'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','true','multivalued'),('fffa8d24-1be0-474b-a1c2-15fb8167b0b5','foo','user.attribute');
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
INSERT INTO `REALM` VALUES ('51b99e2d-45c6-4bd3-8559-f70bc3d3c025',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'cb7b6a97-1257-4373-926d-0289e24593e9',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','aba3ebca-c70b-4357-8904-76df663b9791','ec77a7ba-190f-496e-9097-888c92efe7a2','776e0ac9-c039-45d8-8c85-058d3294600c','2d046191-856c-4432-b98f-064a38c0aac7','b1c79d7d-7925-4406-9ea0-5e3875232af3',31536000,0,900,1,0,'31f60baa-a256-426a-a66d-05b53e19e774',0,0,0,0,'02774b10-4a7a-4802-923d-3909f07bd027'),('org1',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org1',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'17b08b06-2f19-41f4-8963-f4832485b124',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','a3fa7d89-8f17-4daa-bb08-d7dfcf10972c','e7f5c1f5-291c-4009-9a5f-d5514e5f3169','27d30e5e-ade2-4a05-a34e-118203c97c4a','dea5c95a-4944-41ba-a186-fc821214ac16','ae38a75a-b7a1-4f92-8841-5eb493978a85',31536000,0,900,1,0,'b3b59bfc-4efd-446b-83c3-c008064fde42',0,0,0,0,'f30408db-2ad6-4230-ba07-cb7655848f35'),('org2',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org2',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'6e21c509-d1d5-4ce2-9a74-8e6ffa57a98c',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','0927997f-1704-4280-af1e-5d8e1a72d8b7','8c65830f-52a9-46e0-9344-c8669fa5b86d','d9756387-50d5-4cb5-a21c-b41b3f048d6f','cbebd621-7598-41f4-8285-4c8d9f483a50','746c9212-7f1f-471a-898e-2cbd958e5104',31536000,0,900,1,0,'3436d736-679c-4b67-bc7f-6c9cbef7fa29',0,0,0,0,'f9585285-10fd-4b89-aacb-a1ae153dfab4'),('org3',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org3',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'703cfefd-fdb1-4022-8876-625cd45e0016',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','92e7d90f-2e96-4ad4-bb4d-afc235695cde','f4eeef0a-dd76-4641-9f14-7eb6090df6c3','c5b99c3f-0600-4b5f-88d6-285114c15048','4a1876c2-0ba6-4b1a-a3a5-5a0e18ae5a99','c525c9ea-8516-465e-8a86-3a60ddc1df45',31536000,0,900,1,0,'e9342259-5408-4731-97b5-8cbf93b21d29',0,0,0,0,'8705e473-8b47-4350-b8a7-2dc1216ab25b'),('org4',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org4',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'baeb9d61-c6a9-4c50-a3c8-d77ee222c380',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','8981fcb1-ef1f-4a23-9635-c508ae518fff','4f44bbbb-e902-4b6c-8ca6-9f0398a18f8b','68201b24-4598-4750-a825-43c03696a50b','248c17d2-5baa-4de4-8989-1de08ace42d8','0594a0db-6948-47f2-a7c4-76d04c11d876',31536000,0,900,1,0,'ca590cb4-00fc-4f94-8643-2de42b34fb74',0,0,0,0,'aefe4d8f-5a20-4c72-9c6e-27d84ef04211'),('org5',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org5',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'470bbc8d-7c12-40d4-98eb-99b48efa4e3c',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','9547f6e3-5310-4222-85ef-25e7962986fb','19f94e69-6bd8-4018-bb62-0b437358df44','cb7ef909-4f53-46b6-987e-f9bc17160408','c5a6fab9-fb37-41ac-9715-00170a007b07','45458190-77ef-4bcc-a71e-c76118b90e20',31536000,0,900,1,0,'97f96d08-dc23-4aa0-a913-debd28039491',0,0,0,0,'29bf41a1-6c60-4810-bfe7-97ad67587008');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('firstBrokerLoginFlowId','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','0cb8847d-3ff9-47f3-9e72-01c2ca1be9b7'),('firstBrokerLoginFlowId','org1','029352bc-387c-4865-a19f-7ed364640773'),('firstBrokerLoginFlowId','org2','686de335-a6f9-46d6-a72d-112cce4b2cdd'),('firstBrokerLoginFlowId','org3','dba3fa12-0194-4ba5-aa59-9797dd3aaf7a'),('firstBrokerLoginFlowId','org4','8f30ffe7-14c2-47c6-b0c6-3780368e1219'),('firstBrokerLoginFlowId','org5','15654c42-0845-4205-b7ce-89ff8bbab08b'),('maxDeltaTimeSeconds','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('maxTemporaryLockouts','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','0'),('maxTemporaryLockouts','org1','0'),('maxTemporaryLockouts','org2','0'),('maxTemporaryLockouts','org3','0'),('maxTemporaryLockouts','org4','0'),('maxTemporaryLockouts','org5','0'),('minimumQuickLoginWaitSeconds','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.referrerPolicy','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','no-referrer'),('_browser_header.referrerPolicy','org1','no-referrer'),('_browser_header.referrerPolicy','org2','no-referrer'),('_browser_header.referrerPolicy','org3','no-referrer'),('_browser_header.referrerPolicy','org4','no-referrer'),('_browser_header.referrerPolicy','org5','no-referrer'),('_browser_header.strictTransportSecurity','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','51b99e2d-45c6-4bd3-8559-f70bc3d3c025','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025'),('password','password',1,1,'org1'),('password','password',1,1,'org2'),('password','password',1,1,'org3'),('password','password',1,1,'org4'),('password','password',1,1,'org5');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','en'),('51b99e2d-45c6-4bd3-8559-f70bc3d3c025','ja'),('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
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
INSERT INTO `REDIRECT_URIS` VALUES ('070f24c2-4920-450b-84b1-10016e3708f0','/realms/master/account/*'),('1ba73ec3-f950-46b5-b578-18c214dec948','/realms/org3/account/*'),('1d972755-a6c7-41e5-801d-68e02061a4d0','/realms/org1/account/*'),('2d1a1dc8-4340-451c-9cf3-188ac053b024','/admin/org2/console/*'),('2e0570af-3629-4e4a-94bd-2c1feceb332a','/admin/master/console/*'),('2e31d85e-fa7f-46eb-9b40-691fdef8fc6d','/realms/org3/account/*'),('2f79aa02-3015-47ff-b794-859729eb9a47','/admin/org4/console/*'),('362c7047-df41-41a6-ba79-d79adbb0e31e','/realms/org4/account/*'),('3be016d4-911e-4469-9231-6ac1341460fb','/*'),('562de244-70bc-48d7-a18f-c318a4d49d63','/realms/org1/account/*'),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','/realms/org5/account/*'),('61c2e50c-94e8-4819-9958-3f25713f9d07','/realms/org4/account/*'),('728645f5-c020-49b8-b411-dcde55a7ade7','/*'),('7946239a-71e4-45b6-a356-d6f0218ca9cf','/admin/org1/console/*'),('87151c85-c4be-4bd9-ad28-582c4300419a','/*'),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','/realms/master/account/*'),('9f92d871-32f3-44e7-9bc8-347c45d5051d','/*'),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','/realms/org2/account/*'),('b317e865-5673-4b43-a925-83cd9439b98e','/admin/org5/console/*'),('c74d30a3-3a41-4667-a8b6-b400b4dd664b','/realms/org5/account/*'),('ca7f2967-42dc-4494-8afc-7583883c302c','/admin/org3/console/*'),('cdafba6c-0be4-4099-b7c1-5c353281b317','/*'),('d9a1f06e-912b-4fc0-b702-6e36617fd3ae','/*'),('e9cf3880-4d58-4993-b42d-5276cab1004d','/realms/org2/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('065a124e-eef4-41ba-8fec-bb7a94088f72','update_user_locale','Update User Locale','org5',1,0,'update_user_locale',1000),('070a2830-c719-45e9-9c74-53b8d88a1a89','TERMS_AND_CONDITIONS','Terms and Conditions','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,0,'TERMS_AND_CONDITIONS',20),('0c8148fb-eff4-4ff7-b70c-67bde841562f','update_user_locale','Update User Locale','org1',1,0,'update_user_locale',1000),('0db195d3-9326-4456-9e0b-faa511584289','VERIFY_EMAIL','Verify Email','org5',1,0,'VERIFY_EMAIL',50),('1265e26a-6c19-4cb3-945e-91d24d7b5f58','delete_account','Delete Account','org1',0,0,'delete_account',60),('155e163e-1933-4622-9e30-5997d9f5832c','CONFIGURE_TOTP','Configure OTP','org1',1,0,'CONFIGURE_TOTP',10),('161388ed-002f-4ef0-9a4e-a51dda40e930','TERMS_AND_CONDITIONS','Terms and Conditions','org5',0,0,'TERMS_AND_CONDITIONS',20),('17972dda-969d-4156-8abb-ce6b8c9004a8','TERMS_AND_CONDITIONS','Terms and Conditions','org2',0,0,'TERMS_AND_CONDITIONS',20),('1ab0c3ea-b079-44f1-bd7c-05c4bd496c6d','delete_account','Delete Account','org2',0,0,'delete_account',60),('2318d9db-2ae0-4704-92f4-b4e4d13074c3','CONFIGURE_TOTP','Configure OTP','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'CONFIGURE_TOTP',10),('23660bf5-73d0-4840-b425-9d9f4589bcf3','UPDATE_PASSWORD','Update Password','org5',1,0,'UPDATE_PASSWORD',30),('2850d7b7-fe7a-4a73-a814-191a91048d95','UPDATE_PROFILE','Update Profile','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'UPDATE_PROFILE',40),('294ff305-1eda-4261-95f7-2623b7c3d46a','CONFIGURE_TOTP','Configure OTP','org2',1,0,'CONFIGURE_TOTP',10),('31844f14-ec0e-46e3-aa2f-d25271fe569f','VERIFY_PROFILE','Verify Profile','org3',1,0,'VERIFY_PROFILE',90),('3350138d-024d-4a82-ba58-dffb5ccf6f0a','delete_account','Delete Account','org3',0,0,'delete_account',60),('3b3cb2aa-72d2-4d5c-95b0-4238192b203d','webauthn-register-passwordless','Webauthn Register Passwordless','org4',1,0,'webauthn-register-passwordless',80),('3b7fa710-560f-4652-8d5d-99e0f1bceff5','UPDATE_PASSWORD','Update Password','org2',1,0,'UPDATE_PASSWORD',30),('46125883-f541-4449-88c4-7322fd11b4fa','delete_credential','Delete Credential','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'delete_credential',100),('4be2f72d-e79b-45ba-8544-4966646a4a5f','UPDATE_PROFILE','Update Profile','org5',1,0,'UPDATE_PROFILE',40),('4e19ab32-f877-4cd1-a97d-01244a43526c','CONFIGURE_TOTP','Configure OTP','org3',1,0,'CONFIGURE_TOTP',10),('526f228b-e4e3-4ea8-8d82-0e64b9f8f2b8','update_user_locale','Update User Locale','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'update_user_locale',1000),('532274f9-5002-4a49-8aa4-a10e330c3564','delete_credential','Delete Credential','org5',1,0,'delete_credential',100),('55c2f77e-616b-4da6-8ff8-44b64870a61e','VERIFY_PROFILE','Verify Profile','org5',1,0,'VERIFY_PROFILE',90),('562b7279-15c0-42a9-a56c-849a0bb801be','CONFIGURE_TOTP','Configure OTP','org4',1,0,'CONFIGURE_TOTP',10),('581ecc11-300a-4fa9-ae86-69fa462d4ddb','UPDATE_PROFILE','Update Profile','org4',1,0,'UPDATE_PROFILE',40),('5a392763-1278-4892-8f42-05cb0bcaba2b','webauthn-register-passwordless','Webauthn Register Passwordless','org1',1,0,'webauthn-register-passwordless',80),('5ced67af-6030-44a9-8696-b0bb03d16198','webauthn-register-passwordless','Webauthn Register Passwordless','org5',1,0,'webauthn-register-passwordless',80),('5d6a8536-3851-4452-a449-cf33c469c188','UPDATE_PROFILE','Update Profile','org2',1,0,'UPDATE_PROFILE',40),('5fa1a459-2a5d-4aa0-9a40-ef400ae4eab6','UPDATE_PASSWORD','Update Password','org4',1,0,'UPDATE_PASSWORD',30),('70ecba62-6d6b-4485-b8da-864f200901d2','delete_account','Delete Account','org4',0,0,'delete_account',60),('7289fe82-eb2c-4ffc-8fb4-dabae75d03d4','webauthn-register-passwordless','Webauthn Register Passwordless','org3',1,0,'webauthn-register-passwordless',80),('72fda66c-d945-409d-9834-cd726070771c','webauthn-register-passwordless','Webauthn Register Passwordless','org2',1,0,'webauthn-register-passwordless',80),('76dcf507-3002-47d6-80fc-012dd0ab11ba','VERIFY_EMAIL','Verify Email','org2',1,0,'VERIFY_EMAIL',50),('7826ac3c-0661-4e0c-80da-94ff899deade','delete_credential','Delete Credential','org4',1,0,'delete_credential',100),('7b19e96e-9302-496e-9329-e0ac24821b9e','TERMS_AND_CONDITIONS','Terms and Conditions','org4',0,0,'TERMS_AND_CONDITIONS',20),('7fb11d49-a6d0-4cad-b364-e4af155a3485','VERIFY_EMAIL','Verify Email','org3',1,0,'VERIFY_EMAIL',50),('8a6b37b2-cd28-41f1-be44-ce06570e1883','VERIFY_EMAIL','Verify Email','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'VERIFY_EMAIL',50),('943ca60e-7b67-4a52-87e3-5e9b4efd4e6c','webauthn-register','Webauthn Register','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'webauthn-register',70),('9810cb53-c156-4dfa-aee2-6a357991740e','VERIFY_EMAIL','Verify Email','org1',1,0,'VERIFY_EMAIL',50),('994d7e51-d05a-4e82-b49c-5da00eeb45c2','webauthn-register','Webauthn Register','org1',1,0,'webauthn-register',70),('995c3e96-4154-43ae-8680-fd6b8ceca08d','UPDATE_PASSWORD','Update Password','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'UPDATE_PASSWORD',30),('9b15e1ec-5649-4b10-91b6-78ce6aa8b156','update_user_locale','Update User Locale','org3',1,0,'update_user_locale',1000),('9fc06741-53ac-4239-9f18-bb83884b68c3','webauthn-register','Webauthn Register','org3',1,0,'webauthn-register',70),('a64e6c22-851b-4669-86d8-a390ea93b163','VERIFY_EMAIL','Verify Email','org4',1,0,'VERIFY_EMAIL',50),('b05a4b0f-9eab-4e2f-85c1-34e0e842c2aa','webauthn-register','Webauthn Register','org2',1,0,'webauthn-register',70),('b63164d3-11ae-4f76-919e-7595afa2993e','update_user_locale','Update User Locale','org2',1,0,'update_user_locale',1000),('b64a2de2-5b20-4ad7-9394-00792b8f5965','VERIFY_PROFILE','Verify Profile','org2',1,0,'VERIFY_PROFILE',90),('bb70b3d9-873e-495c-a793-cfb495523c95','UPDATE_PASSWORD','Update Password','org3',1,0,'UPDATE_PASSWORD',30),('c1b75694-7317-48e9-922e-beaff3c48a9b','delete_account','Delete Account','org5',0,0,'delete_account',60),('c1d7b78d-a1b2-4288-895f-dd1951c1d5b6','TERMS_AND_CONDITIONS','Terms and Conditions','org1',0,0,'TERMS_AND_CONDITIONS',20),('c7c5974a-7051-40e1-bafb-8d544884a927','UPDATE_PROFILE','Update Profile','org3',1,0,'UPDATE_PROFILE',40),('c91b6944-0d72-4fbb-8986-588cd40c775c','webauthn-register-passwordless','Webauthn Register Passwordless','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'webauthn-register-passwordless',80),('ccf85c12-b759-4b27-9353-c71424f3649f','CONFIGURE_TOTP','Configure OTP','org5',1,0,'CONFIGURE_TOTP',10),('cd034588-a9d3-4bf6-9eb9-c06a8ae3acb9','delete_credential','Delete Credential','org3',1,0,'delete_credential',100),('d04b89ce-6d71-4310-bb02-acd6cc887298','VERIFY_PROFILE','Verify Profile','org4',1,0,'VERIFY_PROFILE',90),('d546a969-5018-4568-9e5a-2b4bee1b4853','VERIFY_PROFILE','Verify Profile','org1',1,0,'VERIFY_PROFILE',90),('d636e628-9927-47be-b133-05a0ceb5a004','update_user_locale','Update User Locale','org4',1,0,'update_user_locale',1000),('db48c2e8-9d2e-491b-a0af-77e839ef6152','TERMS_AND_CONDITIONS','Terms and Conditions','org3',0,0,'TERMS_AND_CONDITIONS',20),('de763437-c41f-4587-ae49-1ae43e499cbf','delete_credential','Delete Credential','org1',1,0,'delete_credential',100),('e3b7f097-7600-4ea6-b67a-811dfd88c49b','delete_credential','Delete Credential','org2',1,0,'delete_credential',100),('e6d513c2-0f45-4c51-bbc6-91fcd7bd3eb7','delete_account','Delete Account','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',0,0,'delete_account',60),('ed501260-7ec1-4118-9cf0-48e0c94ed52a','webauthn-register','Webauthn Register','org5',1,0,'webauthn-register',70),('eec8e0e9-8d2b-44fa-b0c5-1c1029cdba7d','webauthn-register','Webauthn Register','org4',1,0,'webauthn-register',70),('f73c0136-f423-499b-a73f-a4a0ea37b898','VERIFY_PROFILE','Verify Profile','51b99e2d-45c6-4bd3-8559-f70bc3d3c025',1,0,'VERIFY_PROFILE',90),('fd19daf6-cc7c-42b0-a802-015c970b0ce9','UPDATE_PASSWORD','Update Password','org1',1,0,'UPDATE_PASSWORD',30),('fe92e00e-eabb-4dde-9342-76dd46d59421','UPDATE_PROFILE','Update Profile','org1',1,0,'UPDATE_PROFILE',40);
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('0c12c9d6-5b3f-4784-8567-13e9ee31a51c','88af9d3d-2f67-4531-bfe4-f47247dafada','kind','workspace'),('10e2380f-a238-44c0-a16a-251c3bebddec','b7116fff-d63d-4899-9b64-c2fe6590f855','kind','workspace'),('10ffadd5-8650-4b67-b491-a368c2d9e202','aa815afc-f653-492e-899c-446783030cb9','kind','workspace'),('1f304882-9d75-4248-81ef-08cdda714808','964e2ff8-3363-4d1c-8a23-72b93b2ecda1','kind','workspace'),('2218877b-49ba-4f67-9b07-67c35ebd48d8','29eee57d-85f4-4b42-a91b-e82ba820c6ca','kind','organization'),('257efe81-e3df-4797-ab04-23ede5944b6e','056e5a3f-b5fc-4f82-9274-eb03177dc6e7','kind','organization'),('2791cad7-9948-480e-8580-2b56a496b193','fc94301d-404e-4e05-a967-fb1c708a1831','kind','workspace'),('27e72338-e42b-4987-a96b-c31d2ae3a902','46f7b820-7b85-4ebc-8193-e2737dadea6e','kind','workspace'),('30a5bcb4-2e67-4956-a422-5805a2be8e6d','831c6801-a7e3-49dd-98d9-6977b5c92271','kind','workspace'),('33e6e847-bb2b-4ba1-b41f-fd843d41aa61','620d4b19-4623-49ce-9efc-a44aee31679f','kind','organization'),('36c8ab86-4673-49fc-bafb-65cfd2e6a86a','50d44303-bddd-4a16-b526-1a8776cc8360','kind','workspace'),('3c0da8fe-8612-487d-9828-2d092ab1ab88','479657f3-828b-4b0b-9b60-c50d8ea0038b','kind','workspace'),('3d628dbc-7f64-408b-970a-dc5b88b2f447','7e111b5e-bad0-4fd2-b853-4a7206f1d98c','kind','workspace'),('40c77170-c87a-4ffc-badd-4dd27b88966c','f3333600-0bb4-4063-82be-bafdaf80d8bd','kind','workspace'),('48474078-76ff-41a8-896b-348ef9870480','fbe1c70f-88eb-4671-a207-690dfd2c0ebf','kind','organization'),('498be955-e8bf-4dad-ba4a-796924d6a06a','6a47c506-e084-40ba-becd-2e4f60261e44','kind','organization'),('4b0d2dc0-c3ba-47e6-ac20-2e8cb1df9e2a','38c4cc83-b6f9-405f-93b1-fbd5f08b951b','kind','workspace'),('54139d01-9e88-4c9c-b182-ba6ba8fffc86','04b858f3-0de7-46ec-a103-6769dc16e9c3','kind','workspace'),('562cb07c-1dbf-4905-8fb6-485026c036b6','9f9435e8-3485-4c8b-8464-f171830e650d','kind','organization'),('5880ee3b-00ea-4bf0-9831-1da7787d002f','4008aef9-0553-43e8-90b9-344fc5b6859a','kind','workspace'),('5a02526d-5b68-4327-873f-ab6d89f5a22e','05ca98ac-c36c-435d-becc-5836ff7e15e9','kind','workspace'),('5b20479c-2925-4a23-afc9-c154a5b0a1f1','cbfa0568-54f4-4a27-b8d8-da462f9bb751','kind','workspace'),('5b99a650-f9b6-4034-a238-b2b2c8950a5a','40349bfb-3002-449b-bc97-ffac3e9883fe','kind','workspace'),('5d601b7e-9fc9-4724-9d88-303cbaa7ac7d','3249e4f5-8c72-4f1f-a8d5-6f842443fd4a','kind','organization'),('62cc0504-b1ef-4651-98a7-05bb0f75403c','778e2b1a-49a6-4005-9b1b-1a02fbfa085d','kind','workspace'),('63d1df8d-2c73-45f1-a339-9c485af76898','9a168ec7-159e-4063-98c6-11fcaa6827ad','kind','workspace'),('693e993c-763f-4d33-92c4-496f464368d7','5c42947d-1edf-4387-9f46-d4e7e57cfb8b','kind','workspace'),('69d87457-818e-4c86-ae61-f5ed529afded','aac3e92b-7375-49b4-b430-ae372fab0cfd','kind','organization'),('72fc85d1-965b-489c-904e-9732cafe5c30','070db73f-0e38-4719-ad5f-bfddd7d00010','kind','workspace'),('76868287-b1ac-4181-abf2-7615f35a632e','d949451b-4e2b-4146-89c1-79dabec7f49d','kind','organization'),('81e89376-5a0a-41b5-8f76-88aa5726e260','2f02694a-2310-4822-affc-6e78081e2606','kind','organization'),('8d6df84f-2e9b-4a9a-8411-5577350fd9e5','63077bbd-b0d2-4ab9-9abd-4ccb8e682be6','kind','organization'),('90f42b78-2ca2-411b-9cd0-f31d18004427','bfa34d68-e978-45be-8783-904bc3128fdb','kind','workspace'),('93649d7f-71bf-4c36-8bd0-475d64f5bf17','010ec8b3-ffe5-4dc5-91e3-693b9cc371b3','kind','workspace'),('9b140252-8ceb-419e-8b64-ed78d08c35d8','f8d40958-5753-462b-b922-cbd7aeb4475f','kind','workspace'),('9b3e0f21-2dcf-4004-a58a-d8bc16f313b3','78bbb7e1-630d-40f9-991e-c2440dc78f11','kind','workspace'),('9ee0937d-6b64-4b61-bc70-db97b86b9d5c','a1fcc6bb-eaa9-46b3-b2a2-c435a14072f1','kind','workspace'),('9f68e819-b61b-4f17-968a-5f4b156de2c5','35427293-42b6-4879-9059-aac833f6c21a','kind','workspace'),('a0f2a2bd-2ecf-4219-8d58-717c8489f5e1','96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6','kind','workspace'),('a35f3d58-1a2f-4a98-aa44-1f8c7dfb2507','cd4d49ed-91e6-4f97-b103-e36dc22c7e3d','kind','workspace'),('a9ae3da4-4ddd-4ed0-a9dc-308eaff871ff','b2b61a4f-11ba-40da-acd4-438f6bce1331','kind','organization'),('b6fcd34b-7aac-4b81-9ca8-1cdb908818d5','d221d2fa-bdca-4cd2-8211-ff8447b5db5a','kind','workspace'),('bb37dab7-7877-4805-894f-5a30a4860229','08a2c967-134e-46fb-866c-9281a0b60558','kind','workspace'),('bef53d6c-3dc0-4d8e-a61a-07e8ef323308','7384a5b7-1b0e-4054-871d-893461e8bc93','kind','workspace'),('bf9889d8-7302-4c3d-9777-7dac799621a7','69d3a0a3-5456-49b9-ae19-23c656233ab9','kind','workspace'),('c2bc49d5-f9d5-4ec5-a5a0-cd6fb5c79349','895c6e6c-39c4-42ae-ba37-0ae823d75800','kind','workspace'),('c58a6113-f3fd-4a25-bbc6-7262f5ee47b3','a02d2bf3-10b4-43b8-8664-af614992e7e6','kind','workspace'),('c6b041ed-775e-4b67-9586-2b5530a15b9d','53ef88cb-e78d-43d4-9632-9ee04d9f6c91','kind','organization'),('caa79e81-5879-4b4c-b7ed-d4942792df85','a37744ce-b793-4ffc-a06f-ba6b4ac87a4c','kind','workspace'),('d3f06445-88b5-4224-a65f-ad7e0b83cd3a','00c6c1ea-acb5-4ca1-b211-13cac5c0eed0','kind','workspace'),('d8361791-3d15-4c58-a43a-0e453f97bea8','3d4927b5-3a8b-41ac-9308-e9e4f0344865','kind','workspace'),('dc1d08ea-f5a5-455a-b020-e8920d34f070','5d3104d3-82c8-4535-81bd-de3cddd37178','kind','organization'),('e12e251e-99e0-4ccf-b0e7-57ecf2a087ea','7cce667c-e41f-4752-87da-3808e47afc81','kind','workspace'),('e350f75d-2120-414f-bac0-e20c09cbfb7a','08f3d0a1-85ce-4007-a153-6990811982d3','kind','organization'),('e51ecfd4-1d8b-432c-b1ed-af38b39fd60f','874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b','kind','workspace'),('e68ad847-24b8-484b-bff5-dc568b2730f3','4a78f73b-2eec-42e3-be04-1de33d714625','kind','workspace'),('e6b336f8-1683-4b39-b0e8-62fa566d6244','47dabece-dd62-438c-ae27-13acba344a81','kind','workspace'),('efcf1c82-16ae-4745-8db1-0b1041b327c3','929a307b-d774-46cc-885f-4d3b8d342f63','kind','workspace'),('f65fb3e9-52f6-4eb4-aaed-0c7b73746616','0fa61866-57f0-49cf-909c-fd49a5bfbeea','kind','workspace'),('fce66e84-d118-4c9f-9233-f034f3c59f26','ea532d28-5740-4c4e-b908-40df5039ff2d','kind','workspace');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('1ba73ec3-f950-46b5-b578-18c214dec948','6eac912e-4042-4c12-af41-78d1421fcf81'),('1ba73ec3-f950-46b5-b578-18c214dec948','d18c6c70-7f24-4bca-a67e-11bf2ecc2b0f'),('1d972755-a6c7-41e5-801d-68e02061a4d0','1bfa6b77-9c0b-427b-babb-be83c1adf0cd'),('1d972755-a6c7-41e5-801d-68e02061a4d0','620e3a5e-2a76-4ef7-9382-01150ee06069'),('362c7047-df41-41a6-ba79-d79adbb0e31e','27b8562b-36e0-4836-947d-b9ea8e636d8f'),('362c7047-df41-41a6-ba79-d79adbb0e31e','b7d43662-72e0-4191-81c0-06fd251ee30f'),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','a109408e-ebf6-4d10-926c-ea9249dfb5f3'),('5f218d2e-9217-4bcc-88f6-cc8b9d227361','bb0657f9-40a7-440d-8d68-d00e75fdcfe5'),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','565ee6a8-3ce7-44ff-b3f5-59e01b31bf97'),('8f0f98a7-ef5d-4152-9ebf-c5d26f3ddac4','89a90598-4d49-4032-ae48-1d35bc2d1857'),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','2fce0133-cbf2-466d-8235-a9428a386264'),('aa2fa7b1-6da8-415f-848d-9f4153aa61b1','79cae8ef-3069-4b9e-a3ec-5162a9337102');
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
INSERT INTO `USER_ENTITY` VALUES ('2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd',NULL,'cf1fb86f-00fc-42a9-8b7e-55639d61127d',0,1,NULL,NULL,NULL,'org4','service-account-org4-workspaces',1718161089705,'fadb6747-16d0-4959-b7f6-7384792f8b3d',0),('3915ea99-7c60-454a-8d54-837ba1da3cef',NULL,'4e6c10f6-34a4-4248-b720-f09c8e81d8b0',0,1,NULL,NULL,NULL,'org5','service-account-org5-workspaces',1718161128276,'8dcbe59c-2305-4e8b-a509-d4506fb44048',0),('3b92645d-b286-454a-ac7e-0988c0ef454c','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org3','admin',1718161057441,NULL,0),('8d53991b-3ece-4ee8-b152-229fdf8a3be2',NULL,'753c4244-e999-4dab-81d7-8ddd33819d02',0,1,NULL,NULL,NULL,'org3','service-account-org3-workspaces',1718161055623,'a7f4ed5d-f103-44f9-a072-fb3489d0a165',0),('8ee8acc8-ce7d-4077-aed9-a32aa2e800fb',NULL,'b4460dfa-7ff8-490e-a3aa-b521624ea057',0,1,NULL,NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','service-account-_platform',1718160903401,'3303237e-7510-4499-a187-e1b5854d17e7',0),('98765be3-c643-4d28-bfd1-3dac4c0c2b24',NULL,'b97918f9-3ee4-4dd9-a5fc-570d66fca817',0,1,NULL,NULL,NULL,'51b99e2d-45c6-4bd3-8559-f70bc3d3c025','admin',1718160894834,NULL,0),('a09c275c-0f93-4a53-85a4-0ff0b0301fcc','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org1','admin',1718160995548,NULL,0),('b2b807a0-56ed-4cb0-a517-ffebec83b59a','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org2','admin',1718161028018,NULL,0),('e2576f32-dc9f-49f8-abc5-9475d51817a4',NULL,'9586de30-4e16-462c-86a0-ec2d9d56244f',0,1,NULL,NULL,NULL,'org2','service-account-org2-workspaces',1718161025436,'b1947fe6-f799-4b32-a230-cf2a036325a5',0),('e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org5','admin',1718161130276,NULL,0),('fc80d9f2-1ab4-48a4-9089-17cba6d2677c','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org4','admin',1718161092287,NULL,0),('fd171a69-9a1b-4efa-b6ff-009497c2120a',NULL,'9f645093-e24d-4d56-8356-dffeba7440ce',0,1,NULL,NULL,NULL,'org1','service-account-org1-workspaces',1718160992758,'1b02217f-d5bb-4032-b67c-57e32ee5b071',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('02774b10-4a7a-4802-923d-3909f07bd027','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb'),('02774b10-4a7a-4802-923d-3909f07bd027','98765be3-c643-4d28-bfd1-3dac4c0c2b24'),('04b858f3-0de7-46ec-a103-6769dc16e9c3','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('05ca98ac-c36c-435d-becc-5836ff7e15e9','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('29bf41a1-6c60-4810-bfe7-97ad67587008','3915ea99-7c60-454a-8d54-837ba1da3cef'),('29bf41a1-6c60-4810-bfe7-97ad67587008','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('2d8e40e5-78d5-417f-a9bc-fa7c2d4668db','8d53991b-3ece-4ee8-b152-229fdf8a3be2'),('2f02694a-2310-4822-affc-6e78081e2606','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('30e12d60-06a5-4b34-8229-b04ea3fea69e','fd171a69-9a1b-4efa-b6ff-009497c2120a'),('4008aef9-0553-43e8-90b9-344fc5b6859a','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('40349bfb-3002-449b-bc97-ffac3e9883fe','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('46f7b820-7b85-4ebc-8193-e2737dadea6e','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','8ee8acc8-ce7d-4077-aed9-a32aa2e800fb'),('5ebde616-dd7d-4b11-b5ff-666f61fff846','98765be3-c643-4d28-bfd1-3dac4c0c2b24'),('620d4b19-4623-49ce-9efc-a44aee31679f','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('6a47c506-e084-40ba-becd-2e4f60261e44','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('778e2b1a-49a6-4005-9b1b-1a02fbfa085d','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('85a7db0a-1b27-4679-b784-a4a7209cc428','e2576f32-dc9f-49f8-abc5-9475d51817a4'),('8705e473-8b47-4350-b8a7-2dc1216ab25b','3b92645d-b286-454a-ac7e-0988c0ef454c'),('8705e473-8b47-4350-b8a7-2dc1216ab25b','8d53991b-3ece-4ee8-b152-229fdf8a3be2'),('874e5f2b-833b-40a9-8cc0-c9ffeb4fbd1b','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('88af9d3d-2f67-4531-bfe4-f47247dafada','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('895c6e6c-39c4-42ae-ba37-0ae823d75800','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('929a307b-d774-46cc-885f-4d3b8d342f63','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('96c7ebfd-5e0c-4a73-b019-53f2ac5fa6a6','3b92645d-b286-454a-ac7e-0988c0ef454c'),('a02d2bf3-10b4-43b8-8664-af614992e7e6','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('aa815afc-f653-492e-899c-446783030cb9','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd'),('aefe4d8f-5a20-4c72-9c6e-27d84ef04211','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('b2b61a4f-11ba-40da-acd4-438f6bce1331','3b92645d-b286-454a-ac7e-0988c0ef454c'),('cbfa0568-54f4-4a27-b8d8-da462f9bb751','3b92645d-b286-454a-ac7e-0988c0ef454c'),('f1277128-0b07-4fdc-9ed7-0ac3244f564a','2eb5ce83-6c7c-4b6e-a6f2-98961cde21cd'),('f165247c-9a8e-4bc5-9c48-df7f11162aa9','3915ea99-7c60-454a-8d54-837ba1da3cef'),('f30408db-2ad6-4230-ba07-cb7655848f35','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('f30408db-2ad6-4230-ba07-cb7655848f35','fd171a69-9a1b-4efa-b6ff-009497c2120a'),('f3333600-0bb4-4063-82be-bafdaf80d8bd','3b92645d-b286-454a-ac7e-0988c0ef454c'),('f9585285-10fd-4b89-aacb-a1ae153dfab4','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('f9585285-10fd-4b89-aacb-a1ae153dfab4','e2576f32-dc9f-49f8-abc5-9475d51817a4'),('fbe1c70f-88eb-4671-a207-690dfd2c0ebf','fc80d9f2-1ab4-48a4-9089-17cba6d2677c');
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
INSERT INTO `WEB_ORIGINS` VALUES ('2d1a1dc8-4340-451c-9cf3-188ac053b024','+'),('2e0570af-3629-4e4a-94bd-2c1feceb332a','+'),('2f79aa02-3015-47ff-b794-859729eb9a47','+'),('7946239a-71e4-45b6-a356-d6f0218ca9cf','+'),('b317e865-5673-4b43-a925-83cd9439b98e','+'),('ca7f2967-42dc-4494-8afc-7583883c302c','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-06-12 11:55:18','dummy','2024-06-12 11:55:18','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-06-12 11:55:07','dummy','2024-06-12 11:55:07','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-06-12 11:55:07','dummy','2024-06-12 11:55:07','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-06-12 11:55:05.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-06-12 11:55:05.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-12 11:56:29','unittest-user01','2024-06-12 11:56:41','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-12 11:57:02','unittest-user01','2024-06-12 11:57:09','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-12 11:57:33','unittest-user01','2024-06-12 11:57:39','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-12 11:58:06','unittest-user01','2024-06-12 11:58:14','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-12 11:58:45','unittest-user01','2024-06-12 11:58:52','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_C7YHE5Q6ETCFRUIUXWAQ','PF_ORG_C7YHE5Q6ETCFRUIUXWAQ','wUmezc1hN+CekbACm9Y3kt9qeAOk80Yplb8F/hX8M/lTfXthELA/unVjEf3W55p2','2024-06-12 11:56:36','unittest-user01','2024-06-12 11:59:22','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_8OYYJQV753U878NKTBRP','PF_ORG_8OYYJQV753U878NKTBRP','0in09jA4sCmnEMj82xFllAFDjnkpLoKZ8Pq1w5uW5RF+9u+/aqBTJ/M9JepZkvbA','2024-06-12 11:57:08','unittest-user01','2024-06-12 11:59:22','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_3W5VKYX5MXIPIVZHN9D1','PF_ORG_3W5VKYX5MXIPIVZHN9D1','oI6na8sMhZh8lTVj7lTTnyeW05Ov6KOmEh+qj+e1S3VKXaY4STqmI+jVKy89fOo/','2024-06-12 11:57:38','unittest-user01','2024-06-12 11:59:22','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_0B5PZLDOZBFGLKCCTKOM','PF_ORG_0B5PZLDOZBFGLKCCTKOM','FWXYS07fyx0DwOzb45PwbCsQ90xTDYCAHUpGz/I77b/iO0O27PVPIlbsDLSxAjl0','2024-06-12 11:58:13','unittest-user01','2024-06-12 11:59:22','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_ZHBTF1VFJW8W6NDWBOSM','PF_ORG_ZHBTF1VFJW8W6NDWBOSM','mOdVtnLMUeRpSkvElp2JlKDRlpROn9fW+yp9w3OLJhqXAfZdaJlouqChCSVFe9sV','2024-06-12 11:58:51','unittest-user01','2024-06-12 11:59:22','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-06-12 11:55:02','system','2024-06-12 11:55:02','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-06-12 11:55:18','dummy','2024-06-12 11:55:18','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-06-12 11:55:02','system','2024-06-12 11:55:06','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-06-12 11:55:02','system','2024-06-12 11:55:06','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-06-12 11:55:02','system','2024-06-12 11:55:06','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-06-12 11:55:18','dummy','2024-06-12 11:55:18','dummy'),('_default','platform.roles',1000,'2024-06-12 11:55:02','system','2024-06-12 11:55:02','system'),('_default','platform.users',10000,'2024-06-12 11:55:02','system','2024-06-12 11:55:02','system'),('_default','platform.workspaces',100,'2024-06-12 11:55:02','system','2024-06-12 11:55:02','system');
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
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-06-12 11:55:01','1.9.0','2024-06-12 11:55:01','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-06-12 11:55:04','1.9.0','2024-06-12 11:55:04','1.9.0'),(3,'1.5.0','START',NULL,'2024-06-12 11:55:04','1.9.0','2024-06-12 11:55:04','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-06-12 11:55:05','1.9.0','2024-06-12 11:55:05','1.9.0'),(5,'1.5.2','START',NULL,'2024-06-12 11:55:05','1.9.0','2024-06-12 11:55:05','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-06-12 11:55:05','1.9.0','2024-06-12 11:55:05','1.9.0'),(7,'1.6.0','START',NULL,'2024-06-12 11:55:05','1.9.0','2024-06-12 11:55:05','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-06-12 11:55:06','1.9.0','2024-06-12 11:55:06','1.9.0'),(9,'1.7.0','START',NULL,'2024-06-12 11:55:06','1.9.0','2024-06-12 11:55:06','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-06-12 11:55:06','1.9.0','2024-06-12 11:55:06','1.9.0'),(11,'1.8.0','START',NULL,'2024-06-12 11:55:06','1.9.0','2024-06-12 11:55:06','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-06-12 11:55:06','1.9.0','2024-06-12 11:55:06','1.9.0'),(13,'1.8.1','START',NULL,'2024-06-12 11:55:06','1.9.0','2024-06-12 11:55:06','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-06-12 11:55:07','1.9.0','2024-06-12 11:55:07','1.9.0'),(15,'1.8.2','START',NULL,'2024-06-12 11:55:07','1.9.0','2024-06-12 11:55:07','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-06-12 11:55:07','1.9.0','2024-06-12 11:55:07','1.9.0'),(17,'1.9.0','START',NULL,'2024-06-12 11:55:08','1.9.0','2024-06-12 11:55:08','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-06-12 11:55:08','1.9.0','2024-06-12 11:55:08','1.9.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"3303237e-7510-4499-a187-e1b5854d17e7\", \"TOKEN_CHECK_CLIENT_SECRET\": \"oVDqb1ZTpbAsTLewjPHWjchhy0VtzAYz\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"b321f2bd-a50d-40ec-a16f-08965bbc8a85\"}','2024-06-12 11:55:04','system','2024-06-12 11:55:04','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-06-12 11:53:40','system','2024-06-12 11:55:08','1.9.0');
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
-- Current Database: `PF_ORG_C7YHE5Q6ETCFRUIUXWAQ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_C7YHE5Q6ETCFRUIUXWAQ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_C7YHE5Q6ETCFRUIUXWAQ`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"3be016d4-911e-4469-9231-6ac1341460fb\", \"USER_TOKEN_CLIENT_SECRET\": \"YIwJsVHzgVyAjARDVR1cRCddtvOaEfaS\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"1b02217f-d5bb-4032-b67c-57e32ee5b071\", \"INTERNAL_API_CLIENT_SECRET\": \"aJX1ccuLBF6MPf1LG5M0FsYujwWnccWf\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"36a323e4-40bf-43e2-bb8d-c541fafd50d6\", \"TOKEN_CHECK_CLIENT_SECRET\": \"ZROqxzsSjGP50w8QcxfiHyRzsrRDOVQe\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"3f3a6c82-649a-4911-a86e-8f4424e65ff1\"}','2024-06-12 11:56:36','unittest-user01','2024-06-12 11:56:36','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:56:42','a09c275c-0f93-4a53-85a4-0ff0b0301fcc','2024-06-12 11:56:42','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:56:49','a09c275c-0f93-4a53-85a4-0ff0b0301fcc','2024-06-12 11:56:49','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:56:56','a09c275c-0f93-4a53-85a4-0ff0b0301fcc','2024-06-12 11:56:56','a09c275c-0f93-4a53-85a4-0ff0b0301fcc');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_VG46ACPSEGQAATL4BY2D','PF_WS_VG46ACPSEGQAATL4BY2D','aYcMYSzSy/tRWySyA4tLkDZgezMtWzozAOHlVq3S+BwPwCmxciASJUxT/+bLDK8x','2024-06-12 11:56:42','a09c275c-0f93-4a53-85a4-0ff0b0301fcc','2024-06-12 11:59:22','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('org1','ws2','unittest-platform-db',3306,'PF_WS_QKS81359CNTN6EKAA6T1','PF_WS_QKS81359CNTN6EKAA6T1','rr555Eyb5O/k+sqfapMaE61IL+n/iKpa29BcylGWsaf6IBQbATy8ZMaV6UEj0RPk','2024-06-12 11:56:49','a09c275c-0f93-4a53-85a4-0ff0b0301fcc','2024-06-12 11:59:22','a09c275c-0f93-4a53-85a4-0ff0b0301fcc'),('org1','ws3','unittest-platform-db',3306,'PF_WS_1GVRKN1YCKX25FTNQQEZ','PF_WS_1GVRKN1YCKX25FTNQQEZ','z4BVG+win2wtO+cvPaE5yUquLei7t6MA8CkcfrVklvvCb6S/LjdJrDt7bWG/GhW4','2024-06-12 11:56:56','a09c275c-0f93-4a53-85a4-0ff0b0301fcc','2024-06-12 11:59:22','a09c275c-0f93-4a53-85a4-0ff0b0301fcc');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_VG46ACPSEGQAATL4BY2D`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_VG46ACPSEGQAATL4BY2D` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_VG46ACPSEGQAATL4BY2D`;

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
-- Current Database: `PF_WS_QKS81359CNTN6EKAA6T1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_QKS81359CNTN6EKAA6T1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_QKS81359CNTN6EKAA6T1`;

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
-- Current Database: `PF_WS_1GVRKN1YCKX25FTNQQEZ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_1GVRKN1YCKX25FTNQQEZ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_1GVRKN1YCKX25FTNQQEZ`;

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
-- Current Database: `PF_ORG_8OYYJQV753U878NKTBRP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_8OYYJQV753U878NKTBRP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_8OYYJQV753U878NKTBRP`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"cdafba6c-0be4-4099-b7c1-5c353281b317\", \"USER_TOKEN_CLIENT_SECRET\": \"aUpmchv4vBAnq8AenNM0cOTS4JbY6oJG\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"b1947fe6-f799-4b32-a230-cf2a036325a5\", \"INTERNAL_API_CLIENT_SECRET\": \"3JkFXrF1oxlAYMNauiDnB73C1UlH0WZV\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"1470d436-c958-4f9a-87c8-47dfec1ef965\", \"TOKEN_CHECK_CLIENT_SECRET\": \"LZ8cRCqovakTziQD6MvdM6jEWf7IO6LK\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"a4d2faaf-9b22-4102-bd6a-21c23003d05a\"}','2024-06-12 11:57:09','unittest-user01','2024-06-12 11:57:09','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:57:10','b2b807a0-56ed-4cb0-a517-ffebec83b59a','2024-06-12 11:57:10','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:57:18','b2b807a0-56ed-4cb0-a517-ffebec83b59a','2024-06-12 11:57:18','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:57:26','b2b807a0-56ed-4cb0-a517-ffebec83b59a','2024-06-12 11:57:26','b2b807a0-56ed-4cb0-a517-ffebec83b59a');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_WTDR6AOQ1FKINSODQQV2','PF_WS_WTDR6AOQ1FKINSODQQV2','mDFtbgQlBMueFu6mJ0FQRXkiESyA0ZHqTXbTzu2jBoYpmmIVMFIztNy6vLNcMSep','2024-06-12 11:57:10','b2b807a0-56ed-4cb0-a517-ffebec83b59a','2024-06-12 11:59:22','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('org2','ws2','unittest-platform-db',3306,'PF_WS_5O167AWSSKWE41EHDICK','PF_WS_5O167AWSSKWE41EHDICK','r1q1VhuDGr4Nnpn8PY5SEc3vhJHfv6/pX2qh0mPeW+i6DUeESI2oFfw5fQ0FehRY','2024-06-12 11:57:18','b2b807a0-56ed-4cb0-a517-ffebec83b59a','2024-06-12 11:59:22','b2b807a0-56ed-4cb0-a517-ffebec83b59a'),('org2','ws3','unittest-platform-db',3306,'PF_WS_KYXNTJMOOWY2OFUK336T','PF_WS_KYXNTJMOOWY2OFUK336T','GvF0UN7ydD00dswTVqwMWol0w7M3FLPhCU+EOmIskyo+j/64Z1xdlwfcAPvIKZ3v','2024-06-12 11:57:26','b2b807a0-56ed-4cb0-a517-ffebec83b59a','2024-06-12 11:59:22','b2b807a0-56ed-4cb0-a517-ffebec83b59a');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_WTDR6AOQ1FKINSODQQV2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_WTDR6AOQ1FKINSODQQV2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_WTDR6AOQ1FKINSODQQV2`;

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
-- Current Database: `PF_WS_5O167AWSSKWE41EHDICK`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_5O167AWSSKWE41EHDICK` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_5O167AWSSKWE41EHDICK`;

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
-- Current Database: `PF_WS_KYXNTJMOOWY2OFUK336T`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_KYXNTJMOOWY2OFUK336T` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_KYXNTJMOOWY2OFUK336T`;

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
-- Current Database: `PF_ORG_3W5VKYX5MXIPIVZHN9D1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_3W5VKYX5MXIPIVZHN9D1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_3W5VKYX5MXIPIVZHN9D1`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"728645f5-c020-49b8-b411-dcde55a7ade7\", \"USER_TOKEN_CLIENT_SECRET\": \"ynwF4fF0Tn1Y3lAUYN8llnhXsWAaPLEi\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"a7f4ed5d-f103-44f9-a072-fb3489d0a165\", \"INTERNAL_API_CLIENT_SECRET\": \"pzzmTM3HH0gCj32G4HwiJM6zVcaNe3OG\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"2d3b4076-0185-48fb-b7b0-8fca369a9638\", \"TOKEN_CHECK_CLIENT_SECRET\": \"8snJGw1mokg3L4i95V7RxtnBDnTGitTw\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"ac33af4f-2879-49b5-90a5-cee8005768f3\"}','2024-06-12 11:57:38','unittest-user01','2024-06-12 11:57:38','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:57:39','3b92645d-b286-454a-ac7e-0988c0ef454c','2024-06-12 11:57:39','3b92645d-b286-454a-ac7e-0988c0ef454c'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:57:47','3b92645d-b286-454a-ac7e-0988c0ef454c','2024-06-12 11:57:47','3b92645d-b286-454a-ac7e-0988c0ef454c'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:57:56','3b92645d-b286-454a-ac7e-0988c0ef454c','2024-06-12 11:57:56','3b92645d-b286-454a-ac7e-0988c0ef454c');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_XZJ2YXEZU3L9CS22HHY4','PF_WS_XZJ2YXEZU3L9CS22HHY4','1H4Czgoxz4S/4tFsjJHPzZekmMacV8wrlP7prN0XUExO5BsROXBGJ5GeFw6ugxyy','2024-06-12 11:57:40','3b92645d-b286-454a-ac7e-0988c0ef454c','2024-06-12 11:59:22','3b92645d-b286-454a-ac7e-0988c0ef454c'),('org3','ws2','unittest-platform-db',3306,'PF_WS_LEOHBZY2002YTIEW0V6A','PF_WS_LEOHBZY2002YTIEW0V6A','kPb4Mc+5qaoCCMP6EDDLPRADYhqpctNtdhPZsqdWi2Sm2JRL+dUUiv9is/tExfAY','2024-06-12 11:57:48','3b92645d-b286-454a-ac7e-0988c0ef454c','2024-06-12 11:59:22','3b92645d-b286-454a-ac7e-0988c0ef454c'),('org3','ws3','unittest-platform-db',3306,'PF_WS_RPZD5C7ZEDFOM76CE0HC','PF_WS_RPZD5C7ZEDFOM76CE0HC','46InkUQrtgDy0V/imbqtfuHqThXFo1DI0O4repNrjRTX9adR82EzLgYxJ8Q9W7mo','2024-06-12 11:57:56','3b92645d-b286-454a-ac7e-0988c0ef454c','2024-06-12 11:59:22','3b92645d-b286-454a-ac7e-0988c0ef454c');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_XZJ2YXEZU3L9CS22HHY4`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_XZJ2YXEZU3L9CS22HHY4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_XZJ2YXEZU3L9CS22HHY4`;

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
-- Current Database: `PF_WS_LEOHBZY2002YTIEW0V6A`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_LEOHBZY2002YTIEW0V6A` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_LEOHBZY2002YTIEW0V6A`;

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
-- Current Database: `PF_WS_RPZD5C7ZEDFOM76CE0HC`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_RPZD5C7ZEDFOM76CE0HC` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_RPZD5C7ZEDFOM76CE0HC`;

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
-- Current Database: `PF_ORG_0B5PZLDOZBFGLKCCTKOM`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_0B5PZLDOZBFGLKCCTKOM` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_0B5PZLDOZBFGLKCCTKOM`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"87151c85-c4be-4bd9-ad28-582c4300419a\", \"USER_TOKEN_CLIENT_SECRET\": \"LiKS3S8dptVqnirIvmit9QAAQsOQRUQQ\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"fadb6747-16d0-4959-b7f6-7384792f8b3d\", \"INTERNAL_API_CLIENT_SECRET\": \"hpQWexYlgiAjBL17U8mEftQYiGbDvnmr\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"8849ca9a-419a-4bb2-b5d6-5672c7925665\", \"TOKEN_CHECK_CLIENT_SECRET\": \"0gsThyASHCw2aWdFa55b8iXHRMaReoqY\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"2e1b18d3-a4c7-4c9c-901c-396bc7b432d0\"}','2024-06-12 11:58:13','unittest-user01','2024-06-12 11:58:13','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:58:15','fc80d9f2-1ab4-48a4-9089-17cba6d2677c','2024-06-12 11:58:15','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:58:25','fc80d9f2-1ab4-48a4-9089-17cba6d2677c','2024-06-12 11:58:25','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:58:35','fc80d9f2-1ab4-48a4-9089-17cba6d2677c','2024-06-12 11:58:35','fc80d9f2-1ab4-48a4-9089-17cba6d2677c');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_K437GY2A7G48HKUM935N','PF_WS_K437GY2A7G48HKUM935N','c6ikpgoXLX2JhdgDlPSBDaW42upHBOyHp65PsQCx7F8VBQt8qxv36UUyoPQ+hCw9','2024-06-12 11:58:15','fc80d9f2-1ab4-48a4-9089-17cba6d2677c','2024-06-12 11:59:22','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('org4','ws2','unittest-platform-db',3306,'PF_WS_E36N4VSJ9DE70LLNBDN6','PF_WS_E36N4VSJ9DE70LLNBDN6','zeyRPbxZlt14mdICT59KEXneg2nU1AWl9kezlHl4jKeu9Pm5KwrC1Eg+E1X6IXI+','2024-06-12 11:58:26','fc80d9f2-1ab4-48a4-9089-17cba6d2677c','2024-06-12 11:59:22','fc80d9f2-1ab4-48a4-9089-17cba6d2677c'),('org4','ws3','unittest-platform-db',3306,'PF_WS_5R1M7XR75L66ZVS6P8DO','PF_WS_5R1M7XR75L66ZVS6P8DO','KRjvUZEo+GW4s/cYB9POox72bjWywI5RTgZCoUzP7ifxQK4ZNZx8JNz4CJJmaIy2','2024-06-12 11:58:36','fc80d9f2-1ab4-48a4-9089-17cba6d2677c','2024-06-12 11:59:22','fc80d9f2-1ab4-48a4-9089-17cba6d2677c');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_K437GY2A7G48HKUM935N`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_K437GY2A7G48HKUM935N` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_K437GY2A7G48HKUM935N`;

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
-- Current Database: `PF_WS_E36N4VSJ9DE70LLNBDN6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_E36N4VSJ9DE70LLNBDN6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_E36N4VSJ9DE70LLNBDN6`;

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
-- Current Database: `PF_WS_5R1M7XR75L66ZVS6P8DO`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_5R1M7XR75L66ZVS6P8DO` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_5R1M7XR75L66ZVS6P8DO`;

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
-- Current Database: `PF_ORG_ZHBTF1VFJW8W6NDWBOSM`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_ZHBTF1VFJW8W6NDWBOSM` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_ZHBTF1VFJW8W6NDWBOSM`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"d9a1f06e-912b-4fc0-b702-6e36617fd3ae\", \"USER_TOKEN_CLIENT_SECRET\": \"rGLDTBymxoEXjp9ZbQiYsR5WFVAIw1tw\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"8dcbe59c-2305-4e8b-a509-d4506fb44048\", \"INTERNAL_API_CLIENT_SECRET\": \"Csb2NTxVbqGURW37UHlDgzFXyt99rnV4\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"55d78e00-10fd-445a-9762-651263fc57d9\", \"TOKEN_CHECK_CLIENT_SECRET\": \"3UFTrbidCi5qEWWrle3dmAP1sO8EQ8EV\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"5b3391a3-3aa2-4b06-a8f8-1f82dc4c5a5f\"}','2024-06-12 11:58:51','unittest-user01','2024-06-12 11:58:51','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:58:52','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','2024-06-12 11:58:52','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:59:03','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','2024-06-12 11:59:03','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-12 11:59:12','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','2024-06-12 11:59:12','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_Y7HVLCKIQDJXTX449OZ0','PF_WS_Y7HVLCKIQDJXTX449OZ0','+UjMHaMbEnMZ94pPzyYd2ZWvE6CvB8kUBRgz0EC7L1pkvKF1E9DtlKvdDxvDp6t+','2024-06-12 11:58:53','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','2024-06-12 11:59:22','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('org5','ws2','unittest-platform-db',3306,'PF_WS_CDHTDO9VIO9S1UNDBG3N','PF_WS_CDHTDO9VIO9S1UNDBG3N','U4T46Z/S7taO73V18A55XrGo907FzeaZdLOncZHVCMzOo5XFSZF0G0aMieOrr1nv','2024-06-12 11:59:03','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','2024-06-12 11:59:22','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf'),('org5','ws3','unittest-platform-db',3306,'PF_WS_TXTUY2N2DM5M1LXPPC3J','PF_WS_TXTUY2N2DM5M1LXPPC3J','jeCfe1CSw78W72aAMgT+zgN2Wul1r1en4OHV9M84fq1JHt2qYotkKssUOLvMV/JU','2024-06-12 11:59:12','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf','2024-06-12 11:59:22','e4d50bcd-9246-4f89-a837-baf5a1b0a1bf');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_Y7HVLCKIQDJXTX449OZ0`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_Y7HVLCKIQDJXTX449OZ0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_Y7HVLCKIQDJXTX449OZ0`;

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
-- Current Database: `PF_WS_CDHTDO9VIO9S1UNDBG3N`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_CDHTDO9VIO9S1UNDBG3N` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_CDHTDO9VIO9S1UNDBG3N`;

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
-- Current Database: `PF_WS_TXTUY2N2DM5M1LXPPC3J`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_TXTUY2N2DM5M1LXPPC3J` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_TXTUY2N2DM5M1LXPPC3J`;

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

-- Dump completed on 2024-06-12 11:59:24
