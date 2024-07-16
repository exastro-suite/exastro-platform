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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('00910b5f-fb49-4327-8069-ca4ad0f10b09',1721115780398,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425','{\"id\":\"65c3c063-c83c-44fe-b21f-e333de132425\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('01e7d9c4-4cdd-41b8-9847-946a66453044',1721115886772,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_ws2-admin','{\"id\":\"d98d45fb-5fc0-4235-ac99-7b6f345fa3a5\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('02ec1e4c-b938-4ccc-8193-04a4ea7759ab',1721115807002,'org2','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3b29fb01-1712-49d9-aaf8-4691d7d56cfb/client-secret','{\"type\":\"secret\",\"value\":\"cYJq6oH9ItoNnUl6vcLZDYEpWaExdwEj\"}',NULL,'CLIENT'),('03931523-0bfe-4e46-886c-74ae8ddd8765',1721115780939,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-usr-mt','{\"id\":\"23993022-27e1-4c63-89b8-a17e32b0b5b3\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('04fc19fd-c850-459b-b1ef-b1c591db778b',1721115831958,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/c99a0c80-1dbc-4fea-959c-223380942579','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('053ff745-bdb2-4733-b1c5-469609ab78eb',1721115864241,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/ws2','{\"id\":\"aad3a3b8-5902-4d19-8d0d-7995b6a5555b\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('05b03776-1d68-4fc1-a824-6342e82df399',1721115856946,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/afd00778-6563-4989-8edc-6e86fc0dd6dd/role-mappings/clients/51fced76-a0da-43cc-a530-7f4f925da142','[{\"id\":\"8a95423a-09c6-4bcd-b6df-99082a195060\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"51fced76-a0da-43cc-a530-7f4f925da142\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('07c10ca0-fec5-4137-b5f3-8ee745532778',1721115869966,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/ws3','{\"id\":\"d7682be7-cb25-4cbc-b725-8d5e8c646d52\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('08bd2301-8990-4cd0-bfca-71544678eec5',1721115855533,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_organization-manager','{\"id\":\"8a95423a-09c6-4bcd-b6df-99082a195060\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('0b199285-a813-4c57-a7d0-a3bc9bff39fc',1721115855988,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_organization-user-manager','{\"id\":\"0a524663-00b7-440f-b22f-76436eb4ebea\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('0b4032e7-52c5-41bd-96a4-f741fafaf2d9',1721115822214,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_ws3-admin','{\"id\":\"307c5336-94d5-4a5d-8078-2c1f0667e035\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0baaf482-046d-43dd-b946-20c009b25f18',1721115854736,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c','{\"id\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('0d19e356-0421-4e5e-b6ba-bc3d60a693ee',1721115856818,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/afd00778-6563-4989-8edc-6e86fc0dd6dd','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('10324a40-d78b-4688-b581-a92976e4eb3a',1721115839773,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','users/c99a0c80-1dbc-4fea-959c-223380942579/role-mappings/clients/821a7df6-a652-4bcb-96df-5d20ac5a8862','[{\"id\":\"c44d2b90-e531-4ed1-98d8-4096445ddc17\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"821a7df6-a652-4bcb-96df-5d20ac5a8862\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('13250d8b-dd36-4cd8-aa93-91c64e3fb0b1',1721115878573,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_organization-manager','{\"id\":\"e150359e-10e2-4e34-9179-ef95606a6293\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('132ff28e-c2a9-4018-94d6-df0fd022d70c',1721115878160,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/dc5af93f-baaf-4f69-8d4c-a791b1101ac3','{\"id\":\"dc5af93f-baaf-4f69-8d4c-a791b1101ac3\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('145dcc5a-f1cb-4c1d-a034-ef3879dc05b9',1721115808104,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_organization-manager/composites','[{\"id\":\"c96dd477-2566-4716-8553-55b123a57959\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"cf9267ee-600a-473d-95fb-28927ff2d401\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"66e3367b-463b-4c55-b9ab-a4c0e4f53428\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"99b6b609-c19c-4ab6-be76-e96a87039cea\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"1ce7dbb0-5777-4ad4-8309-ee5e0871604c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"fe9f4c00-258d-4d08-bbf6-3b1cd46db86d\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"c7e3c2f4-beb7-4833-8411-bd7ee322721e\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"a4dfeae4-d7fe-4d0b-9289-f65b49792b88\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"2dbe002d-bf9e-4092-8bb2-0b4ff82adc15\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"59887b9d-52eb-4710-9f3a-23ffac62bed2\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5105367b-a90c-4b7e-ad31-15124e4182c0\",\"attributes\":{}},{\"id\":\"c28fdfd0-b601-4660-ab03-e25c065bdbe2\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5105367b-a90c-4b7e-ad31-15124e4182c0\",\"attributes\":{}},{\"id\":\"3983382c-cc90-4a96-84b5-45bebe8483c6\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5105367b-a90c-4b7e-ad31-15124e4182c0\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('18415894-5322-4f49-85b2-c99e5195caaf',1721115877981,'org5','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/cb276f1c-33ac-485a-a83c-0b8a41ed23f8/client-secret','{\"type\":\"secret\",\"value\":\"AsOLoi0JGfiFeoZF6CDBKE2P0jAZwzqW\"}',NULL,'CLIENT'),('19220b65-5b53-41e1-a384-c2bf025aff54',1721115830447,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-ws-mt','{\"id\":\"aaf02b41-d792-412e-b717-3da00193f13f\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('19cb0ddc-97fb-469a-a0a0-ccd7ac9a89e5',1721115816505,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/ws2','{\"id\":\"5824f9c7-6e38-4187-b5f4-12ed3e6ecd9b\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1a583978-ec5c-47d7-b9ef-182fb0bfe886',1721115878369,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-usage','{\"id\":\"2494cb5d-e609-4599-9240-29cef2913a9c\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1a64d1c9-c139-43ca-a133-2b9e364fb6d6',1721115781830,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_organization-user-manager/composites','[{\"id\":\"23993022-27e1-4c63-89b8-a17e32b0b5b3\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"3dd71eb3-b2be-48ce-92d7-57c2a186920b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('1b27d05c-4ad0-4847-9428-919ba71883c9',1721115855067,'org4','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/client-secret','{\"type\":\"secret\",\"value\":\"ILwn34DvXG4CHp3tokLEkkvs7svDDAga\"}',NULL,'CLIENT'),('1c093df8-c8f3-4a04-96f3-48cb5cd18180',1721115892211,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_ws3-admin','{\"id\":\"769036a0-7215-41c3-a0c5-a7d103fdd68c\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1cb9c392-ad71-46ee-b24d-f77a616cd050',1721115878389,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-usr-mt','{\"id\":\"58749245-64cc-4bd1-b0c8-a919deb07da2\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1e468c9d-5aac-4806-ac66-1d99a9e8869d',1721115787158,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','users/acff92c1-082d-47cb-a81c-aaab3f0e08be/role-mappings/clients/65c3c063-c83c-44fe-b21f-e333de132425','[{\"id\":\"8c7fb901-38be-4324-9823-6ea635863c6c\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"65c3c063-c83c-44fe-b21f-e333de132425\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('1e907b81-170f-4a0e-a513-6450c02e549b',1721115831379,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/15855d57-97fa-4295-94e1-96684e22fa78/role-mappings/clients/08342839-debf-47ba-8009-4fbfbd66ec55','[{\"id\":\"e93f502f-1dff-4dc9-a582-89a70282c69a\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"08342839-debf-47ba-8009-4fbfbd66ec55\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('1ed494e5-b6c5-402a-87da-50151030fb47',1721115807132,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840','{\"id\":\"debb3226-8cbc-477d-8b51-65a3c9506840\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('20340ff9-78c0-47bb-8554-bde9d6262b84',1721115816525,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_ws2-admin','{\"id\":\"37350cb7-e677-4c2f-afe8-211d71b7b5e1\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('220a6992-c5cd-4e32-bfc9-a2e51ccdce5e',1721115833315,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_ws1-admin/composites','[{\"id\":\"fd4ebc75-79f3-4b33-8441-aec1140f5201\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"50aa613c-f19f-47fe-a83b-166e4afb07b2\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('24036a1b-c315-4b43-9425-68ffcc8758bd',1721115833233,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/ws1','{\"id\":\"fd4ebc75-79f3-4b33-8441-aec1140f5201\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('24b0e419-17fd-49b1-9664-e690b7657cb7',1721115878210,'org5','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/dc5af93f-baaf-4f69-8d4c-a791b1101ac3/client-secret','{\"type\":\"secret\",\"value\":\"SmDRZEak7LtIXbLfCFnIfJjBD1X8XGXi\"}',NULL,'CLIENT'),('24ce028d-6748-4ceb-88a9-dc2b84da2a6d',1721115878475,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-ws-mt','{\"id\":\"6bd24823-15ae-481e-bf57-0e090f0886f0\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('25b0f97d-b5f5-4335-a5ef-850a7d5d93b4',1721115839735,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_ws2-admin/composites','[{\"id\":\"46d54951-4dd0-4a8d-ba31-e0e70a90f20c\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"0a411163-ad86-4511-a3f9-5cc4453d6901\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('264cf354-d56f-48d2-aaf3-7b9ce388fd27',1721115807650,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-usr-mt','{\"id\":\"1ce7dbb0-5777-4ad4-8309-ee5e0871604c\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2787879e-b803-4892-8d44-f0376b5dbd6c',1721115816666,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','users/68d3bacd-b6ff-4be1-82c1-89cf18e70a4c/role-mappings/clients/debb3226-8cbc-477d-8b51-65a3c9506840','[{\"id\":\"0ae19124-d919-427f-99e8-86521b2440d5\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"debb3226-8cbc-477d-8b51-65a3c9506840\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('2833dda6-35c6-4ffe-9bfd-5117fe23de2d',1721115846919,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_ws3-admin/composites','[{\"id\":\"4c208c60-f037-463f-94cd-624a3b08c7ac\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"e2d75edb-d6bf-411d-a6fa-6741747f8f5d\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('29404e27-939c-4b1a-b2fe-10d29484118e',1721115830297,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-own-mt','{\"id\":\"e60660a7-9ca9-4bd8-8eda-a5e3051877c5\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2b3c4381-3848-448b-a535-88fc6bf8ed11',1721115855370,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-usr-mt','{\"id\":\"f6ec5d46-fb0a-474a-befd-d38fe0421483\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2e873c7d-2e46-49f2-b78f-99c69e177f37',1721115798956,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','users/acff92c1-082d-47cb-a81c-aaab3f0e08be/role-mappings/clients/65c3c063-c83c-44fe-b21f-e333de132425','[{\"id\":\"96791704-5d47-40dd-9597-b6f3d445a6fc\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"65c3c063-c83c-44fe-b21f-e333de132425\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('2e8810fb-4ce8-47e5-8d8b-6e32692029e3',1721115846792,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/ws3','{\"id\":\"4c208c60-f037-463f-94cd-624a3b08c7ac\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('31b09ead-3788-415d-bb4a-c9a41db57421',1721115870082,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','users/afd00778-6563-4989-8edc-6e86fc0dd6dd/role-mappings/clients/51fced76-a0da-43cc-a530-7f4f925da142','[{\"id\":\"3b89f849-38c5-43d8-9d6a-83b21a8ffc83\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"51fced76-a0da-43cc-a530-7f4f925da142\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('32ceeb1f-e0aa-4194-ada1-a252e929fba6',1721115854884,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/5fe788bf-1b97-4815-90c3-1ef8da9d9a45','{\"id\":\"5fe788bf-1b97-4815-90c3-1ef8da9d9a45\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('32eb5e0d-ba89-49ff-90e9-c16bf36ca7ce',1721115892136,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/ws3','{\"id\":\"4dd66d4c-d39f-4198-8261-577b086b7e99\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('33b39854-d9a2-4eb2-89b2-59c8f33e9f94',1721115793190,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','users/acff92c1-082d-47cb-a81c-aaab3f0e08be/role-mappings/clients/65c3c063-c83c-44fe-b21f-e333de132425','[{\"id\":\"0e2570e1-d98d-404f-8845-fcd5101300f2\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"65c3c063-c83c-44fe-b21f-e333de132425\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('33c4e87d-176a-4821-b8f1-7a0d99d60b16',1721115787117,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_ws1-admin/composites','[{\"id\":\"1886a282-12e4-41b7-a39a-b1b1c9a503ee\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a5813dcc-8b3d-4c48-ab09-bb2f2b980d4e\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('348c86a5-4ccf-41c7-9fb7-fadb559179e8',1721115781617,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_organization-manager/composites','[{\"id\":\"47428908-c790-4963-836d-e984eb0637ad\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"2b8410cc-c236-4c9b-8a42-3023d4389fa0\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"fccba685-9d14-49e3-873e-f3f67187d9dd\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"609d31a4-bbb6-4056-9192-556ec3f1c672\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"23993022-27e1-4c63-89b8-a17e32b0b5b3\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"96236374-8d82-4131-8215-0250ebdef0c7\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"3dd71eb3-b2be-48ce-92d7-57c2a186920b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"94c77162-2ffb-44bc-9412-998088eb7e77\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"253fb5f6-3c05-4399-8c1f-5ee9847bef7f\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"3520aaf3-0a9d-49a6-9d1d-34743b7d33cb\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d6d281d4-c0ed-4a66-ac57-0a97be7afbda\",\"attributes\":{}},{\"id\":\"c73f25b0-1ffc-4ac0-bf63-93a89e453a1c\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d6d281d4-c0ed-4a66-ac57-0a97be7afbda\",\"attributes\":{}},{\"id\":\"65b0ef45-b498-4aec-b700-d2e02754f8bc\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d6d281d4-c0ed-4a66-ac57-0a97be7afbda\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('34eb4d83-9630-4c43-821f-638b9d81db95',1721115798739,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/ws3','{\"id\":\"3e322438-2e1e-4a49-8710-f37e58978ce9\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('356387a0-e30e-461c-b0c7-3eaa354eadd7',1721115831147,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_organization-user-role-manager/composites','[{\"id\":\"6a340fa6-b26f-4392-9052-95d0bb622758\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"18f1a96a-a829-4227-bfe7-6e54e9d3560c\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"eafab10f-f326-4729-8df0-935b87dbd736\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('36a16f75-4f2b-4352-8cf8-1551b5641d28',1721115783016,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/acff92c1-082d-47cb-a81c-aaab3f0e08be/role-mappings/clients/65c3c063-c83c-44fe-b21f-e333de132425','[{\"id\":\"f834a4a1-ae42-4988-8b60-043bb321da64\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"65c3c063-c83c-44fe-b21f-e333de132425\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('36a7b0cc-b0fc-4c38-bd7c-0d164ec9cd57',1721115792939,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/ws2','{\"id\":\"b99fb363-4c00-437b-8c0e-6d846e6c75a5\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('39913c5e-0a64-46d0-ac57-f1183e4d5332',1721115808215,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_organization-user-manager','{\"id\":\"c5055b16-02b8-416d-960b-eae7c6cec9ac\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('3d6456b5-8579-4d14-8e55-285110759ad3',1721115798764,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_ws3-admin','{\"id\":\"77db5a6e-264c-4e3e-8369-36046e91f39c\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3d7d15f2-1049-4e22-ac33-9c8f1dd9827d',1721115877944,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/cb276f1c-33ac-485a-a83c-0b8a41ed23f8','{\"id\":\"cb276f1c-33ac-485a-a83c-0b8a41ed23f8\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('3e448ced-0e7f-4abb-8add-c28d6afc8e59',1721115855319,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-role-usr','{\"id\":\"29e6bfd7-32e0-4413-9328-72e02bc7ab16\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3ee4fd1a-6b41-4b1e-8f7e-26bf791c96af',1721115807587,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-own-mt','{\"id\":\"cf9267ee-600a-473d-95fb-28927ff2d401\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3f4224a2-8f37-45bc-ae06-1abffb64f050',1721115806704,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec','{\"id\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('3f6c2240-1a8b-444c-a725-1a301934094e',1721115779968,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b','{\"id\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('40aa4bc6-6b81-41a8-b759-cd22b198965c',1721115878503,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-audit-log','{\"id\":\"0ca0442a-8ed6-430e-b92f-3ad881133385\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('4209239f-16bc-44a3-90de-0656cec6b648',1721115864268,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_ws2-admin','{\"id\":\"a2540645-ddc6-4dfb-afed-2a57a63b8322\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('434f2969-d0f0-44aa-8b8b-66f4dfa82ccd',1721115855857,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_organization-user-role-manager','{\"id\":\"a5e749bc-3db2-40e8-97ab-22297ee80f5a\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('43daca60-8dfd-42b3-a1af-b9feced1f107',1721115864293,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_ws2-admin','{\"id\":\"474f22a4-6d62-46f7-bb0a-ebccf50df396\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('47fde8c9-82bf-4261-a01c-d3f83466ce61',1721115822188,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/ws3','{\"id\":\"2761ff7b-32b8-4f75-8be7-d7aa073f45f7\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('48db1e1e-ecdf-447d-adeb-b1bce1df8572',1721115878949,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_organization-user-manager','{\"id\":\"06f483f4-8668-4d42-a69e-f99da124545e\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('4931af51-c7cb-49aa-9c4a-30afb6bf1d14',1721115864362,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_ws2-admin/composites','[{\"id\":\"aad3a3b8-5902-4d19-8d0d-7995b6a5555b\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a2540645-ddc6-4dfb-afed-2a57a63b8322\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('49a1d1f2-8050-413e-8a47-062d8ad9629f',1721115807685,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-ws-role-usr','{\"id\":\"c7e3c2f4-beb7-4833-8411-bd7ee322721e\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('4c1bbbcd-27da-43df-956e-f5936e3c0705',1721115810196,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_ws1-admin','{\"id\":\"c4641965-9dbe-4d2e-94ef-8204e1165c84\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4c8fddf9-a9f3-464c-87e8-b46e952dfd24',1721115880771,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_ws1-admin','{\"id\":\"22e5a143-dc1a-4c68-8b31-582ebb807ddf\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4ca5a66e-47bc-4a83-a963-82786338133a',1721115807610,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-role-usr','{\"id\":\"66e3367b-463b-4c55-b9ab-a4c0e4f53428\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('4cce313e-b960-4c58-8448-046361551ef5',1721115878279,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-upd','{\"id\":\"7a28f001-dd49-41e2-b021-fc3cca9cf5fa\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('4d2bffdf-0805-48d7-8d37-cbfccbfe6f5a',1721115855422,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-ws-mt','{\"id\":\"9d19a1c1-aa79-4f10-98ca-6a363a121a76\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5029c777-c2b2-4325-8406-d99ea2ec1a2c',1721115808931,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('503ed3c0-6e53-4702-98de-9fd410c3df6d',1721115880936,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','users/03fbdc9a-0040-4699-a474-2c85e9b3c7de/role-mappings/clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b','[{\"id\":\"313f882b-0d0f-4134-8c9f-5a7f7e7e86f6\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"736f2faa-dc2a-49bd-9e25-c09b8d99536b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('5511186f-9d53-4ce4-936e-a6c991d8439d',1721115781242,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_organization-manager','{\"id\":\"f834a4a1-ae42-4988-8b60-043bb321da64\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('557bddf9-43a4-4fce-bfe8-84182eec9d7b',1721115829976,'org3','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/client-secret','{\"type\":\"secret\",\"value\":\"ALaB9bJqgEXYbVglOSMDgan4jA1gpyeU\"}',NULL,'CLIENT'),('56c0b413-f516-4efe-90cf-01aba47702d8',1721115830342,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-usage','{\"id\":\"1d1a24e1-19d2-47bc-b727-4962025a2408\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('56f500bc-d976-4cf7-9963-39276797c441',1721115829634,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a','{\"id\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('5819a72c-8b8b-448d-873b-eb79bd26b71a',1721115810294,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','users/68d3bacd-b6ff-4be1-82c1-89cf18e70a4c/role-mappings/clients/debb3226-8cbc-477d-8b51-65a3c9506840','[{\"id\":\"6a9800ca-0972-49fe-a95d-3f59bc1b960a\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"debb3226-8cbc-477d-8b51-65a3c9506840\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('58452776-6e3f-4518-b4ec-95e2f68e40cd',1721115780478,'org1','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/client-secret','{\"type\":\"secret\",\"value\":\"JnK6H8QHwgMJE8BrlWzUy9UQBp6wvtvA\"}',NULL,'CLIENT'),('5d33b93f-3399-4256-a944-4be37f0815fc',1721115880533,'org5','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7',NULL,'{\"enabled\":true}',NULL,'REALM'),('5ddb0a75-1008-49f0-adb6-203b0e4b9bf9',1721115806792,'org2','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/client-secret','{\"type\":\"secret\",\"value\":\"yZkhmKUpkqLOO01BqNgSby8qw9WEgHdE\"}',NULL,'CLIENT'),('5df62cc0-db85-4516-8d72-6222dfcefd5d',1721115856029,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_organization-user-manager/composites','[{\"id\":\"f6ec5d46-fb0a-474a-befd-d38fe0421483\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"bb72fddf-89b3-4c8d-9659-7b650e09eb22\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('5efee459-7d57-4f74-857e-88d304e11f33',1721115878874,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_organization-manager/composites','[{\"id\":\"7a28f001-dd49-41e2-b021-fc3cca9cf5fa\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"c2f0fd1f-1b34-451d-b5b3-786dddb9e410\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"4a6501e6-8960-4740-9bde-0f1269fb81bb\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"2494cb5d-e609-4599-9240-29cef2913a9c\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"58749245-64cc-4bd1-b0c8-a919deb07da2\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"cfb66984-6731-4fca-87ce-1b6653679c17\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"34cea3cf-cb89-4d82-accc-75172babb570\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"6bd24823-15ae-481e-bf57-0e090f0886f0\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"0ca0442a-8ed6-430e-b92f-3ad881133385\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"58d873e6-f514-411b-af44-a4f73ae760f1\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e539f758-1a07-4e98-88db-8f6008ab3e39\",\"attributes\":{}},{\"id\":\"a55094e4-496d-4d08-a781-af7d8e451a31\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e539f758-1a07-4e98-88db-8f6008ab3e39\",\"attributes\":{}},{\"id\":\"151954f7-6708-4906-bf56-fd1ccf363a05\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e539f758-1a07-4e98-88db-8f6008ab3e39\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('60023310-0df4-4ca3-a92c-fed8b8091949',1721115780901,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-usage','{\"id\":\"609d31a4-bbb6-4056-9192-556ec3f1c672\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('60b7f140-6a0e-4f4c-b895-a70124b3fd39',1721115829841,'org3','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/7b7d2580-6eb9-4208-8343-192d34328442/client-secret','{\"type\":\"secret\",\"value\":\"RIksxRTUTgVRrefUp8knEeG1h3vJj0aO\"}',NULL,'CLIENT'),('638e7d8e-3172-44de-8518-ff20691abea0',1721115855444,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-audit-log','{\"id\":\"e0ba63c9-23ea-4451-8bf0-9c0b4d22e321\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('63db26de-96f3-476a-88ba-ac4090d8dad7',1721115822307,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_ws3-admin/composites','[{\"id\":\"2761ff7b-32b8-4f75-8be7-d7aa073f45f7\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"307c5336-94d5-4a5d-8078-2c1f0667e035\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('6582e0bf-4ea5-49e7-b91e-7cf697786a5e',1721115831183,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_organization-user-manager','{\"id\":\"42866334-8d03-43ab-93a3-a87cd38be012\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('65a68c78-51a3-490c-8372-91db0f6ff3d3',1721115809050,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/68d3bacd-b6ff-4be1-82c1-89cf18e70a4c/role-mappings/clients/debb3226-8cbc-477d-8b51-65a3c9506840','[{\"id\":\"eda58fee-2de1-41cb-a851-5b2fd7dd4b74\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"debb3226-8cbc-477d-8b51-65a3c9506840\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('668742f5-8e7b-440d-b1d8-d840c1fc0e5b',1721115855286,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-upd','{\"id\":\"64d05d3b-05f4-42eb-9e98-8679a0949dd5\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('66a6dd06-bfcc-46e0-9ac0-91e9500c06dd',1721115878996,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_organization-user-manager/composites','[{\"id\":\"58749245-64cc-4bd1-b0c8-a919deb07da2\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"34cea3cf-cb89-4d82-accc-75172babb570\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('675c904e-c2b8-4301-abca-fba002a2d034',1721115830048,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/ba76f696-725a-40d8-a3f9-ba2e7f4378b1','{\"id\":\"ba76f696-725a-40d8-a3f9-ba2e7f4378b1\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('67900a1e-e1dd-48a1-8bee-8d6a7600159b',1721115787050,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_ws1-admin','{\"id\":\"8c7fb901-38be-4324-9823-6ea635863c6c\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('68c098f5-2579-4793-939d-369a372395e0',1721115886755,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/ws2','{\"id\":\"46153f03-0e50-49fe-bed3-cb9652222e99\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('69713342-90e9-431a-962c-056bff099fea',1721115809977,'org2','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7',NULL,'{\"enabled\":true}',NULL,'REALM'),('69c6a2d0-da5c-4812-b0e6-0230f4556acb',1721115878932,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_organization-user-role-manager/composites','[{\"id\":\"58749245-64cc-4bd1-b0c8-a919deb07da2\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"cfb66984-6731-4fca-87ce-1b6653679c17\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}},{\"id\":\"34cea3cf-cb89-4d82-accc-75172babb570\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('6bdb154d-59a6-4e7f-9e84-c4ba9a2d8f24',1721115786651,'org1','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7',NULL,'{\"enabled\":true}',NULL,'REALM'),('6c5f0172-c82c-4217-9586-adc32e5fa25a',1721115780671,'org1','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/35acd348-02e3-4f71-99da-e20c90ca32c1/client-secret','{\"type\":\"secret\",\"value\":\"ZaMhnUnXrezMYgUxW5OLXMW1UazK2SIZ\"}',NULL,'CLIENT'),('6d05e8fe-c427-4137-9695-90460112c8bb',1721115831238,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_organization-user-manager/composites','[{\"id\":\"6a340fa6-b26f-4392-9052-95d0bb622758\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"eafab10f-f326-4729-8df0-935b87dbd736\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('6d27c0f6-6b95-4101-b23c-7ec5f1e33d9f',1721115839640,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/ws2','{\"id\":\"46d54951-4dd0-4a8d-ba31-e0e70a90f20c\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6d9e0e45-57d3-4656-83f0-b8259264933f',1721115816546,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_ws2-admin','{\"id\":\"0ae19124-d919-427f-99e8-86521b2440d5\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6f029c21-b949-474a-af85-33fcbacab294',1721115780967,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-ws-role-mt','{\"id\":\"96236374-8d82-4131-8215-0250ebdef0c7\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6f25da07-009f-428a-9fc3-3e6d0a0c2482',1721115830366,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-usr-mt','{\"id\":\"6a340fa6-b26f-4392-9052-95d0bb622758\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('70e68fdd-8531-451e-8129-127b2d521b9e',1721115878895,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_organization-user-role-manager','{\"id\":\"a5d9f202-a744-4231-ace0-8cd577957458\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('71c06bb6-b820-46cf-bc40-d8597a91bb58',1721115810258,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_ws1-admin/composites','[{\"id\":\"fe049ce0-bf66-4b62-b512-195decd870e5\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"c4641965-9dbe-4d2e-94ef-8204e1165c84\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('71de7da7-62f6-4b6a-b8cb-2da73be550fe',1721115780198,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/a5596fca-63f5-4082-b272-6ddce6204230','{\"id\":\"a5596fca-63f5-4082-b272-6ddce6204230\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('730105a9-a820-478d-8c66-589723bdb505',1721115832066,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/c99a0c80-1dbc-4fea-959c-223380942579/role-mappings/clients/821a7df6-a652-4bcb-96df-5d20ac5a8862','[{\"id\":\"e8fb2aff-cab1-4a32-9810-6e6441efe173\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"821a7df6-a652-4bcb-96df-5d20ac5a8862\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('730ccd9e-c52a-4cd4-9183-7683b86f3bf8',1721115880876,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_ws1-admin/composites','[{\"id\":\"1aa41498-7779-4a6e-9ad8-cb35be030edd\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"22e5a143-dc1a-4c68-8b31-582ebb807ddf\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7a0064d4-62ed-47a5-a691-2983d8f07d01',1721115886875,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','users/03fbdc9a-0040-4699-a474-2c85e9b3c7de/role-mappings/clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b','[{\"id\":\"29d9fd78-ea15-488d-9199-6d966d47b4c7\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"736f2faa-dc2a-49bd-9e25-c09b8d99536b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('7ce281af-8001-4574-a79f-81be47cbbd43',1721115892162,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_ws3-admin','{\"id\":\"e4ee8412-5304-442d-a442-9264601da414\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7d4a8d36-4e99-4702-aabd-7ef879c3ceca',1721115781748,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_organization-user-role-manager/composites','[{\"id\":\"23993022-27e1-4c63-89b8-a17e32b0b5b3\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"96236374-8d82-4131-8215-0250ebdef0c7\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}},{\"id\":\"3dd71eb3-b2be-48ce-92d7-57c2a186920b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('7f3f191d-b8ba-4116-8008-384dce6c51ae',1721115855388,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-ws-role-mt','{\"id\":\"19c6bb84-2dbd-4ef9-9447-5d4953b9cacf\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7f8a2858-3a97-48bd-ab56-3d4c221b7a1b',1721115832998,'org3','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7',NULL,'{\"enabled\":true}',NULL,'REALM'),('80415ad7-bca9-4fee-bc65-2a0d1668568b',1721115886789,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_ws2-admin','{\"id\":\"29d9fd78-ea15-488d-9199-6d966d47b4c7\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('82cb26ce-fbfb-4ddf-9e35-21c675a0944e',1721115807633,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-usage','{\"id\":\"99b6b609-c19c-4ab6-be76-e96a87039cea\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('831a9d2c-4ff0-45bb-a507-199b50f56cb4',1721115878335,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-role-usr','{\"id\":\"4a6501e6-8960-4740-9bde-0f1269fb81bb\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('835773b4-14ab-42b0-a464-f00783dc15a1',1721115830976,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_organization-manager/composites','[{\"id\":\"1135e22a-5cc4-4ad4-8898-2861e84dcbfe\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"e60660a7-9ca9-4bd8-8eda-a5e3051877c5\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"7b99d711-74ac-478a-bd0d-f67e45f2b075\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"1d1a24e1-19d2-47bc-b727-4962025a2408\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"6a340fa6-b26f-4392-9052-95d0bb622758\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"18f1a96a-a829-4227-bfe7-6e54e9d3560c\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"eafab10f-f326-4729-8df0-935b87dbd736\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"aaf02b41-d792-412e-b717-3da00193f13f\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"e84fc679-ab3b-47d7-a651-94550a285921\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"17fd93d5-355f-4d86-a035-b11dbb83312a\",\"attributes\":{}},{\"id\":\"2c9d533e-380c-46c0-bc66-73bd1905078b\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"08342839-debf-47ba-8009-4fbfbd66ec55\",\"attributes\":{}},{\"id\":\"66ffe385-217a-41d5-bc36-bb6bd61ffb4e\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"08342839-debf-47ba-8009-4fbfbd66ec55\",\"attributes\":{}},{\"id\":\"4f74dc54-9a85-467e-8668-b0073229b6fe\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"08342839-debf-47ba-8009-4fbfbd66ec55\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('85280172-bd4b-4e0d-95b3-7a68ae7ad6c1',1721115856155,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/2d1f727c-2006-44d0-95d5-6529342ffc24/role-mappings/clients/f44e4f74-f947-4342-8791-6bc421d4327e','[{\"id\":\"9bc00076-b5d9-44e3-9a23-5108e7ff4ac2\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f44e4f74-f947-4342-8791-6bc421d4327e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('86af5e97-07ff-4f91-86a8-be0858632298',1721115855302,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-own-mt','{\"id\":\"59991fe2-82c5-4946-a2e3-39c59b9a4903\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('86afd457-73b2-42eb-b24c-0599728bc4f8',1721115858428,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_ws1-admin','{\"id\":\"89e68d0e-cdfc-4378-8634-eb627ec0557e\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('89130457-e8d7-4a5a-b571-9a2a8fdf0fbd',1721115846843,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_ws3-admin','{\"id\":\"569a0acd-d651-4990-ab26-2a78bb544875\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('89bc8890-5160-465d-b553-54931da40b86',1721115781069,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-ws-mt','{\"id\":\"94c77162-2ffb-44bc-9412-998088eb7e77\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('89eabff6-08cb-444a-a7ac-5cfd6ab057cb',1721115806929,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3b29fb01-1712-49d9-aaf8-4691d7d56cfb','{\"id\":\"3b29fb01-1712-49d9-aaf8-4691d7d56cfb\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('8a9b4edf-6167-457e-b729-80f07ec2dc2d',1721115807704,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-ws-mt','{\"id\":\"a4dfeae4-d7fe-4d0b-9289-f65b49792b88\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8d6185a9-f77e-4e7e-b142-5f729a7166c5',1721115793017,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_ws2-admin','{\"id\":\"0e2570e1-d98d-404f-8845-fcd5101300f2\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8df42a67-e654-4412-bb55-b5f648b3c316',1721115878437,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-ws-role-usr','{\"id\":\"34cea3cf-cb89-4d82-accc-75172babb570\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8e229b8e-97a8-4a84-a0ed-984e01675c2e',1721115829709,'org3','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/client-secret','{\"type\":\"secret\",\"value\":\"zT3b9JCz7PX3h0zZ4GvbQ8pU9hHE71j0\"}',NULL,'CLIENT'),('92882767-3cac-4986-92c1-6d81c8c7dd02',1721115892267,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_ws3-admin/composites','[{\"id\":\"4dd66d4c-d39f-4198-8261-577b086b7e99\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"e4ee8412-5304-442d-a442-9264601da414\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('932f817f-b7bd-4462-bc95-30e5f6a4e2d6',1721115816619,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_ws2-admin/composites','[{\"id\":\"5824f9c7-6e38-4187-b5f4-12ed3e6ecd9b\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"37350cb7-e677-4c2f-afe8-211d71b7b5e1\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('93c8c65d-3eb7-4f40-a918-3c931b3a05ee',1721115878101,'org5','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/client-secret','{\"type\":\"secret\",\"value\":\"SP5rKo8UJNrm0OAGWCbvuJqEjObLM8Jb\"}',NULL,'CLIENT'),('946ce134-0c8c-4dd4-8939-b456fb00fb17',1721115830403,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-ws-role-mt','{\"id\":\"18f1a96a-a829-4227-bfe7-6e54e9d3560c\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9523059a-476e-4bc3-b10e-f07d9727827e',1721115830119,'org3','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/ba76f696-725a-40d8-a3f9-ba2e7f4378b1/client-secret','{\"type\":\"secret\",\"value\":\"MFDCZWU9WjVRWqD7Cgnp3DJ3HeC4aXAM\"}',NULL,'CLIENT'),('973c2f03-4927-4156-b783-7d69cbe91895',1721115830423,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-ws-role-usr','{\"id\":\"eafab10f-f326-4729-8df0-935b87dbd736\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('99c551bd-7fd8-4d63-bff2-a80a3de39b1c',1721115858521,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','users/afd00778-6563-4989-8edc-6e86fc0dd6dd/role-mappings/clients/51fced76-a0da-43cc-a530-7f4f925da142','[{\"id\":\"89e68d0e-cdfc-4378-8634-eb627ec0557e\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"51fced76-a0da-43cc-a530-7f4f925da142\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('9b1a1f27-878b-4580-907e-927c9e20707e',1721115858397,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_ws1-admin','{\"id\":\"ee513551-3e88-474e-94f6-9ec52b4c6877\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9c08acd1-f4a5-4d24-b52c-35a3979d6346',1721115798793,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_ws3-admin','{\"id\":\"96791704-5d47-40dd-9597-b6f3d445a6fc\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a0c99353-6f54-42d6-9d85-13b1e984bcc9',1721115855821,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_organization-manager/composites','[{\"id\":\"64d05d3b-05f4-42eb-9e98-8679a0949dd5\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"59991fe2-82c5-4946-a2e3-39c59b9a4903\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"29e6bfd7-32e0-4413-9328-72e02bc7ab16\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"d6c47e26-70c6-45f6-beab-c5193a523c3a\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"f6ec5d46-fb0a-474a-befd-d38fe0421483\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"19c6bb84-2dbd-4ef9-9447-5d4953b9cacf\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"bb72fddf-89b3-4c8d-9659-7b650e09eb22\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"9d19a1c1-aa79-4f10-98ca-6a363a121a76\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"e0ba63c9-23ea-4451-8bf0-9c0b4d22e321\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"ca3a7e3b-8e0e-400b-9588-297f3bcf0a34\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"f44e4f74-f947-4342-8791-6bc421d4327e\",\"attributes\":{}},{\"id\":\"9dc882ec-99b5-4f6c-b1d4-1c986e3df141\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"f44e4f74-f947-4342-8791-6bc421d4327e\",\"attributes\":{}},{\"id\":\"ef541bc7-3d21-4040-a6aa-58e62ed9dfac\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"f44e4f74-f947-4342-8791-6bc421d4327e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('a2b3fb67-4c02-440d-9bfe-95ff764a4314',1721115892301,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','users/03fbdc9a-0040-4699-a474-2c85e9b3c7de/role-mappings/clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b','[{\"id\":\"769036a0-7215-41c3-a0c5-a7d103fdd68c\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"736f2faa-dc2a-49bd-9e25-c09b8d99536b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('a2d60dfd-b06d-4466-a266-c893299afa9d',1721115846961,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','users/c99a0c80-1dbc-4fea-959c-223380942579/role-mappings/clients/821a7df6-a652-4bcb-96df-5d20ac5a8862','[{\"id\":\"569a0acd-d651-4990-ab26-2a78bb544875\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"821a7df6-a652-4bcb-96df-5d20ac5a8862\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('a42c8fbb-88a9-4c83-af7a-d240549230ad',1721115880796,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_ws1-admin','{\"id\":\"313f882b-0d0f-4134-8c9f-5a7f7e7e86f6\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a5101a8d-714e-4726-8674-759a005ae214',1721115780836,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-own-mt','{\"id\":\"2b8410cc-c236-4c9b-8a42-3023d4389fa0\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a61d84bf-e269-4c35-93fe-6986d89ba4e7',1721115798875,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_ws3-admin/composites','[{\"id\":\"3e322438-2e1e-4a49-8710-f37e58978ce9\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"77db5a6e-264c-4e3e-8369-36046e91f39c\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('a6d8970f-2d66-47cb-a54a-81f58bce91d4',1721115879656,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/03fbdc9a-0040-4699-a474-2c85e9b3c7de','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('a7b6e904-8660-4e71-9443-765dafd9fa7a',1721115855180,'org4','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/78f8ff86-d160-4a8e-a450-dade12c2546b/client-secret','{\"type\":\"secret\",\"value\":\"ZrnlNGNurGVWilb7SCkSBuK6WbnAdNaZ\"}',NULL,'CLIENT'),('a94c5aad-740c-4977-9c00-ddb7376e9235',1721115829792,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/7b7d2580-6eb9-4208-8343-192d34328442','{\"id\":\"7b7d2580-6eb9-4208-8343-192d34328442\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('a9b14cde-e884-4aaf-a588-6f05f2df22c7',1721115822357,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','users/68d3bacd-b6ff-4be1-82c1-89cf18e70a4c/role-mappings/clients/debb3226-8cbc-477d-8b51-65a3c9506840','[{\"id\":\"e3668d90-1629-4f23-a5e3-6e1a78d72219\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"debb3226-8cbc-477d-8b51-65a3c9506840\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('ab46abf0-356f-42ab-9962-a0a5873db945',1721115781101,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-audit-log','{\"id\":\"253fb5f6-3c05-4399-8c1f-5ee9847bef7f\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ab5f6b7a-a057-4303-ad40-bce4cab4ff98',1721115782027,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/bc5b2e61-2b34-4760-b7de-ce826e8cadda/role-mappings/clients/d6d281d4-c0ed-4a66-ac57-0a97be7afbda','[{\"id\":\"97a1910d-ae1d-4865-992e-44f1ee162165\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d6d281d4-c0ed-4a66-ac57-0a97be7afbda\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('ab657825-66e8-4b12-b39e-d1ca439db313',1721115807829,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_organization-manager','{\"id\":\"eda58fee-2de1-41cb-a851-5b2fd7dd4b74\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ad418fa8-dee9-4299-807c-13c8216a94b8',1721115808136,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_organization-user-role-manager','{\"id\":\"b0490bcc-20dc-47ad-9a9f-235ba557d093\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ad70170b-ad13-4709-9c43-e86fe6f4c8eb',1721115858490,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_ws1-admin/composites','[{\"id\":\"b6f763a7-10a1-4f0f-b824-43414f71e872\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ee513551-3e88-474e-94f6-9ec52b4c6877\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('ae2f48ba-7b1e-4f04-beac-ebb3f1c14b16',1721115810181,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/ws1','{\"id\":\"fe049ce0-bf66-4b62-b512-195decd870e5\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ae971d81-eb0b-4a2a-b316-04595614f96d',1721115808194,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_organization-user-role-manager/composites','[{\"id\":\"1ce7dbb0-5777-4ad4-8309-ee5e0871604c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"fe9f4c00-258d-4d08-bbf6-3b1cd46db86d\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"c7e3c2f4-beb7-4833-8411-bd7ee322721e\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('af5c0349-00dc-4d5a-b9c4-c71bd1e57a71',1721115780283,'org1','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/a5596fca-63f5-4082-b272-6ddce6204230/client-secret','{\"type\":\"secret\",\"value\":\"W6xhjiCOi8l5kqNA5GJxqjf6mKCJhA3j\"}',NULL,'CLIENT'),('b09baeef-0499-4cd8-b275-9ab7ee8f756d',1721115830316,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-role-usr','{\"id\":\"7b99d711-74ac-478a-bd0d-f67e45f2b075\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b1493c69-4835-414d-9afb-762b8e8687c5',1721115830586,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_organization-manager','{\"id\":\"e8fb2aff-cab1-4a32-9810-6e6441efe173\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b154349c-eb87-4e71-8626-4e0037a49e70',1721115822239,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_ws3-admin','{\"id\":\"e3668d90-1629-4f23-a5e3-6e1a78d72219\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b6be97f9-6fcb-4776-bbdb-1cc8092b84dc',1721115858112,'org4','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7',NULL,'{\"enabled\":true}',NULL,'REALM'),('b6d34743-e644-4190-84ab-0390a1b498dc',1721115854937,'org4','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/5fe788bf-1b97-4815-90c3-1ef8da9d9a45/client-secret','{\"type\":\"secret\",\"value\":\"KTcmQ2WlW9cKub89FdLU4tSIDDWwVoH4\"}',NULL,'CLIENT'),('b70b368f-faa2-4094-bf39-8e3a53d41605',1721115886840,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b/roles/_ws2-admin/composites','[{\"id\":\"46153f03-0e50-49fe-bed3-cb9652222e99\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"d98d45fb-5fc0-4235-ac99-7b6f345fa3a5\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b9c8e5a9-87cf-4eca-8790-f11467b92d24',1721115781776,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_organization-user-manager','{\"id\":\"38b7b983-cd3e-4c1d-81c2-fa1b46dd6859\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ba006e73-8df7-4f6d-8904-3f6a7fbc5a23',1721115870004,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_ws3-admin','{\"id\":\"3b89f849-38c5-43d8-9d6a-83b21a8ffc83\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ba12026e-1271-4603-a920-40edcf7be7cf',1721115833353,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','users/c99a0c80-1dbc-4fea-959c-223380942579/role-mappings/clients/821a7df6-a652-4bcb-96df-5d20ac5a8862','[{\"id\":\"fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"821a7df6-a652-4bcb-96df-5d20ac5a8862\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('bb206726-2ce2-4cd7-81ff-d59ee3241845',1721115793128,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_ws2-admin/composites','[{\"id\":\"b99fb363-4c00-437b-8c0e-6d846e6c75a5\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"7e703b8f-2b88-4a81-ae89-b2009ec22cb3\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('bfe078d6-ff92-43d6-9f63-849cc2daa0f5',1721115792984,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_ws2-admin','{\"id\":\"7e703b8f-2b88-4a81-ae89-b2009ec22cb3\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c40689e1-1faa-4813-9a39-f259e7820ef8',1721115808377,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/4ffbe68a-c7be-4307-b463-dbb4fd235e14/role-mappings/clients/5105367b-a90c-4b7e-ad31-15124e4182c0','[{\"id\":\"a8e3c5c2-3f6c-439b-a56b-fc27035a717f\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"5105367b-a90c-4b7e-ad31-15124e4182c0\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('c46f73d5-433b-486c-b042-691f80b72f98',1721115831452,'org3','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('c55dea34-ffae-40db-9e46-83439d876fd2',1721115869985,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_ws3-admin','{\"id\":\"b13698de-6de5-4ddc-8f8b-e70ad14e2338\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c834eff6-5768-4233-8742-c7a318106d9c',1721115879124,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/1714ebd4-dfe6-4e84-b278-9fe34d386fb7/role-mappings/clients/e539f758-1a07-4e98-88db-8f6008ab3e39','[{\"id\":\"24af0c82-7865-4c30-9394-8699ac2d1529\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"e539f758-1a07-4e98-88db-8f6008ab3e39\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('c84ab251-322a-407d-a5ed-dc02c9e26c9b',1721115780070,'org1','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/client-secret','{\"type\":\"secret\",\"value\":\"unR0wzl5Z8E6gMQAJ7Sa84450OEfTBN1\"}',NULL,'CLIENT'),('c8fb8e28-6bf1-470c-a585-dc15b66bf11a',1721115807568,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-upd','{\"id\":\"c96dd477-2566-4716-8553-55b123a57959\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c9742351-fb0a-4ef7-8445-daed08ac95bc',1721115807476,'org2','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/27704f88-2ef9-4e40-a328-aaadec0b3c98/client-secret','{\"type\":\"secret\",\"value\":\"sA4XhHutQdtpKmYA2YSOgfMPb66JF2J1\"}',NULL,'CLIENT'),('caaba606-04d8-4e44-a9d0-6a09bd2b7efd',1721115830478,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-audit-log','{\"id\":\"e84fc679-ab3b-47d7-a651-94550a285921\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('cabcfcd4-437e-49ea-b8b0-b8772352c7a3',1721115807409,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/27704f88-2ef9-4e40-a328-aaadec0b3c98','{\"id\":\"27704f88-2ef9-4e40-a328-aaadec0b3c98\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('cb3c5dbb-fc13-41dd-97b3-5a6f66fa4a75',1721115858380,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/ws1','{\"id\":\"b6f763a7-10a1-4f0f-b824-43414f71e872\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cdb2acc7-734c-4cd1-93b3-a55515d7db71',1721115787022,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_ws1-admin','{\"id\":\"a5813dcc-8b3d-4c48-ab09-bb2f2b980d4e\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cee579e5-b5ea-40d4-80bb-4444340d7c8d',1721115855135,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/78f8ff86-d160-4a8e-a450-dade12c2546b','{\"id\":\"78f8ff86-d160-4a8e-a450-dade12c2546b\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('cf0c8843-bfcf-4819-9f3a-00278e2fa64d',1721115808439,'org2','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('d0a20523-3631-40f2-a85a-a0798a162cca',1721115856235,'org4','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('d2108a2b-7160-4a9f-ab04-7571689b945f',1721115855405,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-ws-role-usr','{\"id\":\"bb72fddf-89b3-4c8d-9659-7b650e09eb22\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d61ecfa1-5573-4310-8bc4-f0867b8687ef',1721115879182,'org5','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('d998a9fe-fc56-46e8-890f-ff93440fed56',1721115807231,'org2','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/client-secret','{\"type\":\"secret\",\"value\":\"CyQ8tqW2CzzkGR47mce2BZ1ehfdJbpDK\"}',NULL,'CLIENT'),('da56ce4f-8467-4055-be68-2f4c8027c7b0',1721115878066,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b','{\"id\":\"736f2faa-dc2a-49bd-9e25-c09b8d99536b\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('da7b7d14-db29-41f3-95c4-8b51d8743541',1721115854792,'org4','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/client-secret','{\"type\":\"secret\",\"value\":\"Pn2CFnVuQiaMYGB0Dezs1SlrN4E5jop0\"}',NULL,'CLIENT'),('dc5732b7-82ae-455f-a081-7743f1aa220e',1721115810212,'org2','CREATE','org2','54d6d676-f0f4-421f-b554-202406a3d2ec','4ffbe68a-c7be-4307-b463-dbb4fd235e14','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_ws1-admin','{\"id\":\"6a9800ca-0972-49fe-a95d-3f59bc1b960a\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('dc8ca1e8-44aa-41fb-97ef-247837f386fa',1721115855025,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142','{\"id\":\"51fced76-a0da-43cc-a530-7f4f925da142\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('dcc8124c-6362-46c8-a929-767d9cda9db0',1721115780594,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/35acd348-02e3-4f71-99da-e20c90ca32c1','{\"id\":\"35acd348-02e3-4f71-99da-e20c90ca32c1\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('dd09f954-dcaa-4f7a-a2a3-e1a1d4edada3',1721115786972,'org1','CREATE','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b','bc5b2e61-2b34-4760-b7de-ce826e8cadda','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/ws1','{\"id\":\"1886a282-12e4-41b7-a39a-b1b1c9a503ee\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('dea705fd-c220-41bc-946c-feb6224b5e1a',1721115833250,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_ws1-admin','{\"id\":\"50aa613c-f19f-47fe-a83b-166e4afb07b2\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('df0e51f4-2471-4dd1-a820-f9042cb4d67d',1721115880744,'org5','CREATE','org5','3d20ecfe-2a25-4637-b015-532c1729c879','1714ebd4-dfe6-4e84-b278-9fe34d386fb7','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/ws1','{\"id\":\"1aa41498-7779-4a6e-9ad8-cb35be030edd\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e07a86fc-03f5-4746-b05d-82b9df0922b0',1721115808259,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/debb3226-8cbc-477d-8b51-65a3c9506840/roles/_organization-user-manager/composites','[{\"id\":\"1ce7dbb0-5777-4ad4-8309-ee5e0871604c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}},{\"id\":\"c7e3c2f4-beb7-4833-8411-bd7ee322721e\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"54d6d676-f0f4-421f-b554-202406a3d2ec\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('e28d4443-b145-45e3-b8e8-4a4b7416ac40',1721115781011,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-ws-role-usr','{\"id\":\"3dd71eb3-b2be-48ce-92d7-57c2a186920b\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e3ea8bda-05b6-4c4a-9d77-e687479b3d96',1721115831014,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_organization-user-role-manager','{\"id\":\"79e06787-206a-4783-85d4-0afa3178307a\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e48865a9-c391-41c1-a4e1-945efbabc5b9',1721115855960,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_organization-user-role-manager/composites','[{\"id\":\"f6ec5d46-fb0a-474a-befd-d38fe0421483\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"19c6bb84-2dbd-4ef9-9447-5d4953b9cacf\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}},{\"id\":\"bb72fddf-89b3-4c8d-9659-7b650e09eb22\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('e4986dae-57c6-4b28-8960-e75752c38416',1721115878311,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-own-mt','{\"id\":\"c2f0fd1f-1b34-451d-b5b3-786dddb9e410\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e702a07e-c0c1-4315-89ad-05465f6e799d',1721115855350,'org4','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/91afb328-27d5-43a0-8239-2560633fac2c/roles/_og-usage','{\"id\":\"d6c47e26-70c6-45f6-beab-c5193a523c3a\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e94d8479-b26e-46a4-b151-fc0ff7db53b2',1721115807743,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-audit-log','{\"id\":\"2dbe002d-bf9e-4092-8bb2-0b4ff82adc15\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e98b4590-2576-464b-9e18-32401c5f37ba',1721115877872,'org5','ACTION','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/client-secret','{\"type\":\"secret\",\"value\":\"VOmxQMR0JMgYvf3MBQDheRpdRA2vItvG\"}',NULL,'CLIENT'),('e9bf9919-2965-466c-a544-885e467dce80',1721115879748,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/03fbdc9a-0040-4699-a474-2c85e9b3c7de/role-mappings/clients/736f2faa-dc2a-49bd-9e25-c09b8d99536b','[{\"id\":\"e150359e-10e2-4e34-9179-ef95606a6293\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"736f2faa-dc2a-49bd-9e25-c09b8d99536b\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('ee604b4c-03ca-4d58-94d6-cd802e7ebcc2',1721115846819,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_ws3-admin','{\"id\":\"e2d75edb-d6bf-411d-a6fa-6741747f8f5d\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ef10372b-ef33-440b-964d-0f9fd81cec3e',1721115780871,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-role-usr','{\"id\":\"fccba685-9d14-49e3-873e-f3f67187d9dd\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ef46ff79-55db-4ae5-9ff6-7b0226a43f29',1721115878403,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879/roles/_og-ws-role-mt','{\"id\":\"cfb66984-6731-4fca-87ce-1b6653679c17\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f09570a9-a85f-418f-967c-19f760039ced',1721115839664,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_ws2-admin','{\"id\":\"0a411163-ad86-4511-a3f9-5cc4453d6901\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f3ab6282-2b7a-4d0c-9769-fc787d50748b',1721115864425,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','users/afd00778-6563-4989-8edc-6e86fc0dd6dd/role-mappings/clients/51fced76-a0da-43cc-a530-7f4f925da142','[{\"id\":\"474f22a4-6d62-46f7-bb0a-ebccf50df396\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"51fced76-a0da-43cc-a530-7f4f925da142\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f453bc72-faae-42e9-a855-da98ef1cddf4',1721115877814,'org5','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/3d20ecfe-2a25-4637-b015-532c1729c879','{\"id\":\"3d20ecfe-2a25-4637-b015-532c1729c879\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('f5ae2808-801d-4579-9f58-a8f0e0c115c3',1721115780788,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/9ce54798-5e96-4bf2-97dc-6aec4b0c438b/roles/_og-upd','{\"id\":\"47428908-c790-4963-836d-e984eb0637ad\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f6af697c-09a6-4912-a259-3c997e2fdcbc',1721115807667,'org2','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/54d6d676-f0f4-421f-b554-202406a3d2ec/roles/_og-ws-role-mt','{\"id\":\"fe9f4c00-258d-4d08-bbf6-3b1cd46db86d\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f6fe8d7e-abdd-42f5-a40b-e9ef2238e247',1721115870050,'org4','CREATE','org4','91afb328-27d5-43a0-8239-2560633fac2c','2d1f727c-2006-44d0-95d5-6529342ffc24','172.20.0.7','clients/51fced76-a0da-43cc-a530-7f4f925da142/roles/_ws3-admin/composites','[{\"id\":\"d7682be7-cb25-4cbc-b725-8d5e8c646d52\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"b13698de-6de5-4ddc-8f8b-e70ad14e2338\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"91afb328-27d5-43a0-8239-2560633fac2c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('f765ffd0-c763-49ac-89df-bb715d31794b',1721115833270,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_ws1-admin','{\"id\":\"fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f80b963b-78f7-4b78-8352-9d8badd40d98',1721115829921,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862','{\"id\":\"821a7df6-a652-4bcb-96df-5d20ac5a8862\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('f8ad438b-1193-4694-9449-24fddf034a2e',1721115830249,'org3','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/17fd93d5-355f-4d86-a035-b11dbb83312a/roles/_og-upd','{\"id\":\"1135e22a-5cc4-4ad4-8898-2861e84dcbfe\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fc4e3d23-161a-4954-b4d1-3583c045bcbe',1721115839684,'org3','CREATE','org3','17fd93d5-355f-4d86-a035-b11dbb83312a','15855d57-97fa-4295-94e1-96684e22fa78','172.20.0.7','clients/821a7df6-a652-4bcb-96df-5d20ac5a8862/roles/_ws2-admin','{\"id\":\"c44d2b90-e531-4ed1-98d8-4096445ddc17\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('fcc1d127-5677-44f4-a273-c9144a695b2b',1721115781655,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','clients/65c3c063-c83c-44fe-b21f-e333de132425/roles/_organization-user-role-manager','{\"id\":\"bcf7e24a-b5a8-4423-8dfb-5d932fb5b191\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('fe0ae005-f8b4-4613-af5a-9ebbf5217495',1721115782159,'org1','UPDATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('ff350f0b-ee9c-4102-8ce7-a2ee3600ee72',1721115782797,'org1','CREATE','040bafd0-9c40-449b-9e25-b760eb822e74','b42f7870-e157-44d7-88b2-2c10c69e222b','c8a09719-5860-4e03-8e8b-948299b41095','172.20.0.7','users/acff92c1-082d-47cb-a81c-aaab3f0e08be','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('00198dbc-806a-4e39-9e45-6b6968c532d3',NULL,'docker-http-basic-authenticator','040bafd0-9c40-449b-9e25-b760eb822e74','3f9e66d5-549b-4599-b7ba-cedc9813d536',0,10,0,NULL,NULL),('009db457-62b3-4635-ace0-bb14aeab087b',NULL,'idp-confirm-link','org5','5be270ca-9cfc-46bb-b56a-942e65013fcb',0,10,0,NULL,NULL),('00b2ba24-4402-4c8e-9527-e2f28ba30320',NULL,'client-x509','org5','b0661eec-c91e-408b-b582-ba7374928b4b',2,40,0,NULL,NULL),('01a424cd-4bfe-4822-b486-a4ecc220e083',NULL,'client-x509','org3','fa5a48b9-9ef6-4a48-8753-cbf40cfb777e',2,40,0,NULL,NULL),('03ac4104-1571-44fa-9242-295f0a5de120',NULL,'registration-page-form','org1','65680493-0b8c-4afa-adfc-441ae8f03c08',0,10,1,'216a2336-2bc3-4199-8f9d-a119d38fdcb0',NULL),('03bf1790-a980-46e8-a2d9-11ffc7560040',NULL,'direct-grant-validate-otp','org1','76fe0edf-5122-4acc-ad44-99d0d7a151d3',0,20,0,NULL,NULL),('05f292cd-f61b-4abb-b5f0-50a6cf04b010',NULL,'idp-confirm-link','org2','0f1d51e3-fcaf-4ab7-bf39-c2e66931190e',0,10,0,NULL,NULL),('08ebfdfb-a794-46fe-a1ff-782cd2894bac',NULL,NULL,'org3','40b87eab-94db-4b36-8761-8ee5fbf51449',2,30,1,'644d32af-745e-4865-b4d2-dd14e87e48db',NULL),('09b848eb-4dd6-40db-9ea3-5b36982ace20',NULL,NULL,'org2','71cd49da-1bb3-4f4a-b1a2-8f9be56b9ad7',1,30,1,'c86bc604-9c51-48be-ac03-67e30b26f8bc',NULL),('09ba8472-3f60-4504-b7bb-c65aa7729dc0',NULL,'auth-otp-form','org1','2294eee9-3024-41d5-9efe-54025b113c85',0,20,0,NULL,NULL),('09ee4862-4e8b-41cb-975b-e0efe74e7806',NULL,'client-secret-jwt','org4','5b5c78ce-60bf-44ee-bee2-027abaacded1',2,30,0,NULL,NULL),('0a8f9b75-82b9-435d-aaab-5adc5284f64a',NULL,'reset-otp','040bafd0-9c40-449b-9e25-b760eb822e74','22404bfb-ceff-412e-bae0-9c3451e3cad9',0,20,0,NULL,NULL),('0a93f072-70df-4c5f-b447-aa1eac2b8348',NULL,'idp-email-verification','org2','1b7451db-2ee9-4c86-8098-70c49cc4c23f',2,10,0,NULL,NULL),('0c53582d-7e17-4e2b-b546-04973ce42c57',NULL,'reset-otp','org5','3791372e-74de-431f-a879-a42e9c1633f9',0,20,0,NULL,NULL),('0c733397-7fb3-424a-8934-289ccd2eea53',NULL,'idp-username-password-form','040bafd0-9c40-449b-9e25-b760eb822e74','a84e6513-898e-480b-9aa0-0d5d0c859b21',0,10,0,NULL,NULL),('0d065e46-df35-4c6c-91fd-3c392bc93855',NULL,'direct-grant-validate-otp','org2','c86bc604-9c51-48be-ac03-67e30b26f8bc',0,20,0,NULL,NULL),('0d0f3223-2fd2-4ccf-b3d7-de846c27da0f',NULL,'client-secret','org1','6668be01-a568-4342-a34c-55d9986c994b',2,10,0,NULL,NULL),('0e9590cc-75d7-4df7-828c-9b9c522a0c0c',NULL,'reset-credentials-choose-user','org3','daed7519-4a03-44b7-8ec7-c4b1d983fd45',0,10,0,NULL,NULL),('114b15ca-c458-4c49-b1e0-5aeeb7f77db8',NULL,NULL,'org5','0eec0258-f8ce-4ccc-8251-4f457f2321e3',1,40,1,'3791372e-74de-431f-a879-a42e9c1633f9',NULL),('11ad6709-be7a-4801-b2a0-9bb078a050e1',NULL,'idp-confirm-link','040bafd0-9c40-449b-9e25-b760eb822e74','fa2dcf5c-f594-49b0-9109-d5562e6acf5b',0,10,0,NULL,NULL),('120424cd-c035-4165-9eef-e9271707632e',NULL,'auth-otp-form','org4','52376e84-0b08-48c2-85cc-6711f0253fb4',0,20,0,NULL,NULL),('13fca67e-eaf9-409c-a43d-b45702021bc5',NULL,'reset-credentials-choose-user','org1','df706edb-3f56-44be-b616-23e8a43d5988',0,10,0,NULL,NULL),('16b01095-45b5-4383-92d8-7ff4dce14685',NULL,NULL,'org4','cb8f174b-d6e1-4e24-b2bd-3f998428fe29',1,20,1,'e37b2918-adc1-420c-9467-cfff3026591a',NULL),('16bb4fc6-d976-4f83-8a6c-eb03d1bdde58',NULL,'direct-grant-validate-otp','org3','a4a74af2-52cb-4781-80c9-9b3c666d9ac1',0,20,0,NULL,NULL),('17bcaa75-df54-4bc2-b882-40222b4f3c91',NULL,'reset-credential-email','org1','df706edb-3f56-44be-b616-23e8a43d5988',0,20,0,NULL,NULL),('1805c44b-8a7d-4290-ba34-67350f6c06b7',NULL,'auth-username-password-form','040bafd0-9c40-449b-9e25-b760eb822e74','74d5eb43-a4be-4744-b906-c38af7a058af',0,10,0,NULL,NULL),('189ecf1f-31c2-4ffa-881d-7af322bf0807',NULL,NULL,'org3','daed7519-4a03-44b7-8ec7-c4b1d983fd45',1,40,1,'4bb4bb8f-a836-4454-804c-eb9fc2aa64d9',NULL),('19dba6b9-96de-4dde-a311-7a4a136cca9a',NULL,'conditional-user-configured','040bafd0-9c40-449b-9e25-b760eb822e74','22404bfb-ceff-412e-bae0-9c3451e3cad9',0,10,0,NULL,NULL),('1b596f03-838b-4676-838a-0d414dcfce56',NULL,'idp-review-profile','org3','73a6ae33-5bb9-4d6f-9208-6ac1fb0f26f2',0,10,0,NULL,'bac019ae-1ad2-4c70-ba8a-ed2de2463983'),('1c756433-49cc-4d74-83e1-ec8008f3c88b',NULL,'identity-provider-redirector','org3','40b87eab-94db-4b36-8761-8ee5fbf51449',2,25,0,NULL,NULL),('1cd940f8-1a44-4458-ae9c-a0786a1b8386',NULL,NULL,'org2','2700f110-56b0-48d3-b821-26cb45224e54',2,20,1,'0f1d51e3-fcaf-4ab7-bf39-c2e66931190e',NULL),('1ce0493c-3740-48c3-ab3c-d4dcc849d873',NULL,'client-x509','org2','05847ae3-15f5-4c40-b93c-c56d019862a9',2,40,0,NULL,NULL),('1d6b7afd-944d-421f-b004-79b409bc1c72',NULL,'auth-otp-form','org4','e37b2918-adc1-420c-9467-cfff3026591a',0,20,0,NULL,NULL),('1d75e929-916b-4814-8f32-814003fd7478',NULL,'auth-spnego','org4','41b450bb-42ba-4614-82db-8daccbbd6b58',3,20,0,NULL,NULL),('1fd5a37c-abbd-4a0e-b335-a9cf8aab97ac',NULL,'reset-password','040bafd0-9c40-449b-9e25-b760eb822e74','cecdcd76-87c7-4805-aa28-b5c08db18e1f',0,30,0,NULL,NULL),('20ab4698-4c85-4476-91da-cfbe5c7fab0c',NULL,'reset-credential-email','org5','0eec0258-f8ce-4ccc-8251-4f457f2321e3',0,20,0,NULL,NULL),('217be30c-4cc2-41f8-a547-c7ed1f6954f3',NULL,'idp-create-user-if-unique','org5','be4e818f-9547-4856-b8f1-5d1793ce44c8',2,10,0,NULL,'f6d25e63-c0b4-4ac2-b743-c24e8c07edeb'),('22076092-82ea-4f12-b694-055a938d3cfb',NULL,'client-secret-jwt','040bafd0-9c40-449b-9e25-b760eb822e74','92dc0537-44ee-404e-93e4-3838324d753e',2,30,0,NULL,NULL),('23109a6d-a5a0-4b8f-b3e9-41dd62801f12',NULL,'auth-otp-form','org3','65d5393a-578d-440f-b64f-6dcb8f9eb69e',0,20,0,NULL,NULL),('248525b3-231a-47ad-8b24-47b820fd52bb',NULL,'client-secret','org2','05847ae3-15f5-4c40-b93c-c56d019862a9',2,10,0,NULL,NULL),('24d83657-e6f2-41c7-b4f7-dcdf2989010a',NULL,'registration-page-form','org3','0c78489c-4bf6-4788-b0d6-5b208df14710',0,10,1,'e39cc966-a58f-4b97-9729-9d9fe9c6412c',NULL),('255b6ee4-5338-4b11-8d9b-5ee785cf178c',NULL,'idp-create-user-if-unique','org1','1dfbe40d-fad4-4645-ba9b-c80bb78a3a6d',2,10,0,NULL,'ccf0caa6-d871-46de-b34e-fab83f405782'),('26352625-d095-4681-912b-911806e6c37e',NULL,NULL,'org4','56b8e155-1fb7-4500-a736-1a04e5b46c16',0,20,1,'d4e7d36d-3f63-4762-956e-daf577582ab4',NULL),('28cf53c1-001e-4019-9f60-d4570b5c1d65',NULL,'client-jwt','org3','fa5a48b9-9ef6-4a48-8753-cbf40cfb777e',2,20,0,NULL,NULL),('2c96246d-d799-4cbf-89c4-e0172bf05359',NULL,NULL,'org2','1b7451db-2ee9-4c86-8098-70c49cc4c23f',2,20,1,'6d0b859d-fa99-410f-b6af-10681e1c1a25',NULL),('2d33c292-9fe6-47e1-a14a-b165ca23a790',NULL,NULL,'org2','6d0b859d-fa99-410f-b6af-10681e1c1a25',1,20,1,'8667a419-ad81-42bd-8936-904054745424',NULL),('2d403c27-c9c2-46eb-935c-b8b81f8a78a6',NULL,NULL,'org1','439072fe-947e-41ab-ad6c-a798d5341b18',2,30,1,'3e0e0a46-fd70-454f-8670-43593f062aca',NULL),('2ee734fe-388c-4c1b-ba65-e356010bade0',NULL,'conditional-user-configured','org1','2294eee9-3024-41d5-9efe-54025b113c85',0,10,0,NULL,NULL),('2fbe4a10-a79d-4740-8674-fe87d5f26b62',NULL,NULL,'org5','d48fdeee-ede1-4659-8e02-6a8b6f938e80',2,20,1,'be08a10f-ebf8-4531-ace4-f8df8a5cc20e',NULL),('2fca3690-f06f-48a4-a3e5-4d12b1ebe7be',NULL,NULL,'org5','5e83190e-b2bb-4251-aed8-1508ad4fb48b',1,30,1,'55bbe49c-e5a3-4b06-b354-4b11bfc5c661',NULL),('304f4381-5a93-4dc1-b0eb-ccadba30abea',NULL,'reset-credential-email','org4','af1579aa-411a-4852-9736-e4888160c21b',0,20,0,NULL,NULL),('328f250a-8bd4-4685-905f-22df292e846e',NULL,'http-basic-authenticator','org1','94db78e0-ce27-424a-89a2-7f22b6e78e40',0,10,0,NULL,NULL),('330a87d0-3096-4860-8197-520ef12c5e08',NULL,NULL,'org3','1c4e20d3-af47-454e-a2e8-9baa4c710f83',0,20,1,'e44cb185-dc13-4e0b-b06a-5e618b0ca3e8',NULL),('34ca8047-10bd-4f06-a4ba-d3d1da57d3d6',NULL,'auth-otp-form','org5','80bece5d-4667-44e1-b45c-6bf036415bd0',0,20,0,NULL,NULL),('365b1ab4-8155-4af3-bd08-e40f9c484ba7',NULL,'reset-otp','org4','4bbc8ef9-4323-44e2-961f-c34d803a8b8c',0,20,0,NULL,NULL),('37f0b0b6-e167-4a54-a0f9-9ea638e7d696',NULL,'idp-confirm-link','org4','56b8e155-1fb7-4500-a736-1a04e5b46c16',0,10,0,NULL,NULL),('3a071bb2-d079-46a8-8174-2ec892a73b24',NULL,'idp-email-verification','040bafd0-9c40-449b-9e25-b760eb822e74','e019bfe2-47cf-491d-b388-f6b3dedb13db',2,10,0,NULL,NULL),('3a5b492f-86ad-4251-b87f-07d3c56e9547',NULL,'auth-cookie','org4','41b450bb-42ba-4614-82db-8daccbbd6b58',2,10,0,NULL,NULL),('3a6d1b33-1547-47d5-aee7-b473b598bed7',NULL,'registration-recaptcha-action','org5','5615e62c-2647-41e8-ab91-0486bc0becfa',3,60,0,NULL,NULL),('3b180b5b-978e-4d05-9ddc-22fd654d6fda',NULL,'docker-http-basic-authenticator','org2','6aefec4f-9804-4989-8678-4c31be754d01',0,10,0,NULL,NULL),('3b79d543-c068-4cea-8a86-248d2a3a912b',NULL,'auth-otp-form','org1','1612998a-fd9f-4fd0-a71c-2a1e34e31f24',0,20,0,NULL,NULL),('3b95edba-a995-454a-8866-7782f526839b',NULL,NULL,'org2','7dcd070f-46e8-458d-a93f-ba378508b1aa',0,20,1,'2700f110-56b0-48d3-b821-26cb45224e54',NULL),('3c3d5fda-8460-4f45-b916-c60774f2cefa',NULL,'idp-email-verification','org5','d48fdeee-ede1-4659-8e02-6a8b6f938e80',2,10,0,NULL,NULL),('3c3da2f6-395f-4d99-bc2e-6a339d0b412f',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','eac2e197-c133-4288-91fe-95410b931678',0,20,1,'a181c80f-4b15-46e5-ae13-3e3686c9c844',NULL),('3ee14f6b-c483-493b-92e2-81551c51ea82',NULL,'conditional-user-configured','org3','4bb4bb8f-a836-4454-804c-eb9fc2aa64d9',0,10,0,NULL,NULL),('3f74be25-ee9c-4ec6-bde2-c62a82210ddc',NULL,'reset-credentials-choose-user','org5','0eec0258-f8ce-4ccc-8251-4f457f2321e3',0,10,0,NULL,NULL),('40bef259-bb4a-4c1e-b505-88f8b575bbac',NULL,'conditional-user-configured','org1','76fe0edf-5122-4acc-ad44-99d0d7a151d3',0,10,0,NULL,NULL),('41f70ef1-f92c-4b10-bc3e-d57a44640913',NULL,'reset-credentials-choose-user','org2','670edf44-44f8-40b9-859f-0135fefe38a8',0,10,0,NULL,NULL),('433a7221-f835-4fee-83c3-5dcbea3d5710',NULL,'auth-otp-form','org3','75ad8dc8-773b-4495-a643-907ee34cfe83',0,20,0,NULL,NULL),('4383dfad-5cb8-4dce-8ab7-3f2e25805db1',NULL,'idp-confirm-link','org3','1c4e20d3-af47-454e-a2e8-9baa4c710f83',0,10,0,NULL,NULL),('46cab1a8-8ebc-4e5e-9d8a-93cc4a2c4878',NULL,'auth-otp-form','040bafd0-9c40-449b-9e25-b760eb822e74','b0ebf027-c24a-4ed0-a054-964e55dbefce',0,20,0,NULL,NULL),('4a96ad75-6e8c-4056-b4a0-0ed8a1d8e3fa',NULL,'registration-page-form','org5','bbeb9a34-47ae-499f-a01f-089bc9515dc2',0,10,1,'5615e62c-2647-41e8-ab91-0486bc0becfa',NULL),('4b249b2e-9275-4f66-bf58-2334ded44f3d',NULL,'direct-grant-validate-username','org3','1db37751-1abe-43f4-a83a-4b84f99a0160',0,10,0,NULL,NULL),('4b2d21ac-f2e4-4a14-b5ec-a871ea0fa600',NULL,'conditional-user-configured','org1','423c18fa-09ac-4ef3-b20d-5569f5e6e6d5',0,10,0,NULL,NULL),('4b2f683a-4001-4aec-bf27-ff2c0e6ed587',NULL,'conditional-user-configured','org4','980a86aa-b5c9-44bd-921c-f1fed8a75f04',0,10,0,NULL,NULL),('4bc661f9-c99f-4e1c-abf3-3824efb78778',NULL,'idp-username-password-form','org1','5578c781-6832-4b0b-9e6b-e22c88310e0b',0,10,0,NULL,NULL),('4c5550e5-c0cc-43a5-89ba-ddb1b9923013',NULL,'auth-username-password-form','org2','d5154ade-be3e-47af-b9a5-64c62271d4bf',0,10,0,NULL,NULL),('4c869950-fbb5-4b39-973e-1c1eb62038a6',NULL,'registration-page-form','040bafd0-9c40-449b-9e25-b760eb822e74','c7df88a0-bce2-4d36-bcd9-a45578b69480',0,10,1,'c87de656-0677-4ed7-bae0-c4eec3f18090',NULL),('4ce8ea55-2633-46c9-9af9-8a775e759387',NULL,'reset-otp','org3','4bb4bb8f-a836-4454-804c-eb9fc2aa64d9',0,20,0,NULL,NULL),('4f0979d0-e4e2-4253-914f-e505d0d9480e',NULL,NULL,'org1','bc8010d0-6a69-4cb5-bf76-98b1c19f741f',0,20,1,'7817ed80-695b-42a6-b60c-b98e8dfd8961',NULL),('4fb6be0f-0852-45dc-a888-e11efe98d644',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','a181c80f-4b15-46e5-ae13-3e3686c9c844',2,20,1,'fa2dcf5c-f594-49b0-9109-d5562e6acf5b',NULL),('50432ea4-832d-465d-b3d4-7ebea21a4e0d',NULL,'direct-grant-validate-username','org2','71cd49da-1bb3-4f4a-b1a2-8f9be56b9ad7',0,10,0,NULL,NULL),('53f95740-2e8e-476f-b5b9-f7ac711b3a85',NULL,'reset-password','org3','daed7519-4a03-44b7-8ec7-c4b1d983fd45',0,30,0,NULL,NULL),('54b79dd9-c768-45dd-b840-fcabed1906d7',NULL,'conditional-user-configured','org3','65d5393a-578d-440f-b64f-6dcb8f9eb69e',0,10,0,NULL,NULL),('54c2861b-c39c-4ece-a4c7-c19f2e66b39f',NULL,'idp-review-profile','org1','734d6d23-7fdb-4472-89c5-0aa0ac7e171b',0,10,0,NULL,'c73a0bfe-b8cd-4dbc-9a54-8dba2b13c0a4'),('554f2f89-495e-4a67-99e0-57c6a71835f7',NULL,'idp-create-user-if-unique','040bafd0-9c40-449b-9e25-b760eb822e74','a181c80f-4b15-46e5-ae13-3e3686c9c844',2,10,0,NULL,'8b31f78d-4e7e-4147-8598-43aa6b650210'),('55666b83-8c1b-4bc7-80d9-7f0bbca2e559',NULL,'idp-review-profile','org5','0278768d-7185-4ccc-878f-df14b2da863c',0,10,0,NULL,'33668bbd-fd81-43db-86c8-bf1b2dbad737'),('567aff91-3409-4a10-b73e-def087a7f628',NULL,'reset-password','org4','af1579aa-411a-4852-9736-e4888160c21b',0,30,0,NULL,NULL),('567cd2fe-b417-4da7-8439-4baf9052b611',NULL,'http-basic-authenticator','org4','27ddb5ed-7170-4183-b925-c331137947e9',0,10,0,NULL,NULL),('587b59da-8cdf-4623-aeba-e362cb6fa796',NULL,'identity-provider-redirector','org2','32c7e458-ad6c-46c4-80f8-348871badd96',2,25,0,NULL,NULL),('59f413f1-9714-4352-bdb0-de21a084dc53',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','fa2dcf5c-f594-49b0-9109-d5562e6acf5b',0,20,1,'e019bfe2-47cf-491d-b388-f6b3dedb13db',NULL),('5a11ebbc-4524-442b-a59d-8a0f21d1626b',NULL,NULL,'org2','0f1d51e3-fcaf-4ab7-bf39-c2e66931190e',0,20,1,'1b7451db-2ee9-4c86-8098-70c49cc4c23f',NULL),('5d215e1a-724e-4010-a3af-b7392fcca94f',NULL,'client-secret','org3','fa5a48b9-9ef6-4a48-8753-cbf40cfb777e',2,10,0,NULL,NULL),('5d42a3e2-88f8-400f-985e-c97f59f32802',NULL,'reset-otp','org2','e8836e69-bdc9-463e-aa08-f3ac3ace63de',0,20,0,NULL,NULL),('5d9209a9-d0b6-4a2c-884b-622483d9adef',NULL,NULL,'org3','644d32af-745e-4865-b4d2-dd14e87e48db',1,20,1,'65d5393a-578d-440f-b64f-6dcb8f9eb69e',NULL),('5f52f9f2-02ce-4c4e-ac90-f9ebe38fe8db',NULL,'idp-create-user-if-unique','org4','ad851a6f-6e6b-4299-b1d7-fe850ae71065',2,10,0,NULL,'2fb761c3-61bd-478c-9d3b-ebade814846e'),('630a9a88-b4f1-46fc-985c-541a19494b65',NULL,'auth-spnego','org2','32c7e458-ad6c-46c4-80f8-348871badd96',3,20,0,NULL,NULL),('632e6630-fe93-4123-a326-14f287ed12d6',NULL,'registration-user-creation','org4','63ba9b53-56a4-4a71-9c86-2568a6e34c6a',0,20,0,NULL,NULL),('64cdb41f-e1f3-42d6-b546-2517ff3c0e8b',NULL,'conditional-user-configured','040bafd0-9c40-449b-9e25-b760eb822e74','17b2e65c-acd6-41d0-929c-f5383505e865',0,10,0,NULL,NULL),('65991430-577a-41ba-a52c-8363a919e003',NULL,'auth-otp-form','040bafd0-9c40-449b-9e25-b760eb822e74','17b2e65c-acd6-41d0-929c-f5383505e865',0,20,0,NULL,NULL),('66111b5b-336d-45db-9a4c-07d6e15b1886',NULL,'auth-cookie','org2','32c7e458-ad6c-46c4-80f8-348871badd96',2,10,0,NULL,NULL),('66f298d4-fc89-49ad-b3ce-58986d2bf770',NULL,'registration-user-creation','040bafd0-9c40-449b-9e25-b760eb822e74','c87de656-0677-4ed7-bae0-c4eec3f18090',0,20,0,NULL,NULL),('67711ca4-ead5-44d8-a751-a56da56c8049',NULL,'idp-create-user-if-unique','org3','bb37bc8d-9639-4051-b6a8-e8a47230486c',2,10,0,NULL,'6238b560-ea4a-413c-aa57-912b9eef0e5e'),('68c3c37d-3fe7-406c-b526-a0077aed4a6c',NULL,NULL,'org1','734d6d23-7fdb-4472-89c5-0aa0ac7e171b',0,20,1,'1dfbe40d-fad4-4645-ba9b-c80bb78a3a6d',NULL),('692cb6f5-76af-4e6d-af80-e845810ecd69',NULL,'auth-spnego','org3','40b87eab-94db-4b36-8761-8ee5fbf51449',3,20,0,NULL,NULL),('6c48ba7a-a3d0-4922-bd32-15776377e118',NULL,'registration-recaptcha-action','org4','63ba9b53-56a4-4a71-9c86-2568a6e34c6a',3,60,0,NULL,NULL),('70b0b8d1-9bdd-484c-bcc1-71cdc9ac2fe0',NULL,NULL,'org1','f7dbff1e-e72a-4a16-9999-d9f807d5168b',1,30,1,'76fe0edf-5122-4acc-ad44-99d0d7a151d3',NULL),('7527c174-7f0b-499a-94b1-438fc69697b0',NULL,'registration-recaptcha-action','org2','6da08f15-1773-4cea-a093-e9ecd7b9abf9',3,60,0,NULL,NULL),('76adea7b-368f-4ae9-a0fc-8b42cbffedf0',NULL,'conditional-user-configured','org5','55bbe49c-e5a3-4b06-b354-4b11bfc5c661',0,10,0,NULL,NULL),('774d6f2d-a81e-47a3-ae21-93e7ec804246',NULL,'auth-cookie','040bafd0-9c40-449b-9e25-b760eb822e74','5c79ef61-da4c-474d-b30b-4c691a139ce4',2,10,0,NULL,NULL),('7909afe0-7d9f-427a-8654-5e71506a18bf',NULL,'direct-grant-validate-otp','040bafd0-9c40-449b-9e25-b760eb822e74','1a4063ad-2975-413b-8a45-6f9dfe52ee94',0,20,0,NULL,NULL),('7b2b03c5-decd-4849-b042-44a4e9b23db3',NULL,'conditional-user-configured','org2','e8836e69-bdc9-463e-aa08-f3ac3ace63de',0,10,0,NULL,NULL),('7c43ac86-5d11-4355-a170-e662f78d6120',NULL,'direct-grant-validate-username','org4','abbceebe-c332-40ac-a68f-683e62f27dda',0,10,0,NULL,NULL),('7cb973ca-5c23-47b8-a721-dfbfba0f79fe',NULL,'conditional-user-configured','org1','1612998a-fd9f-4fd0-a71c-2a1e34e31f24',0,10,0,NULL,NULL),('7cdbe440-ef9b-4730-a10d-0fbfe01b3816',NULL,'docker-http-basic-authenticator','org4','5de19754-67b3-4210-8a20-1712d6c08d10',0,10,0,NULL,NULL),('7f35a88b-f649-4012-a03a-a739f9d5862f',NULL,'reset-password','org1','df706edb-3f56-44be-b616-23e8a43d5988',0,30,0,NULL,NULL),('803533e7-e91b-406e-ae6a-5be87773631d',NULL,'auth-spnego','org5','fce0e3d5-4214-4e0e-9892-b22868b40452',3,20,0,NULL,NULL),('80f2a7ba-6d69-4e59-a585-a0431053bc0d',NULL,'client-jwt','org4','5b5c78ce-60bf-44ee-bee2-027abaacded1',2,20,0,NULL,NULL),('814fdde2-5e1f-47e1-ad88-adaea028cfec',NULL,'direct-grant-validate-username','org1','f7dbff1e-e72a-4a16-9999-d9f807d5168b',0,10,0,NULL,NULL),('82b3a68b-8cbf-4cb8-9ce2-4ddf9b59f454',NULL,'client-secret-jwt','org3','fa5a48b9-9ef6-4a48-8753-cbf40cfb777e',2,30,0,NULL,NULL),('8598ee69-b0fa-4b81-bf65-8a7058949d7e',NULL,'idp-email-verification','org3','e44cb185-dc13-4e0b-b06a-5e618b0ca3e8',2,10,0,NULL,NULL),('86450c27-2fd3-4bb7-949c-e9cf9d1f69af',NULL,'client-secret','org4','5b5c78ce-60bf-44ee-bee2-027abaacded1',2,10,0,NULL,NULL),('86e1ae46-1c09-4062-bf1d-40627d512b5f',NULL,'idp-email-verification','org1','7817ed80-695b-42a6-b60c-b98e8dfd8961',2,10,0,NULL,NULL),('86f08597-8429-499e-9fc2-4b49294fec90',NULL,'registration-terms-and-conditions','org4','63ba9b53-56a4-4a71-9c86-2568a6e34c6a',3,70,0,NULL,NULL),('880d4e87-888e-44af-bf7d-b3a53d6973f8',NULL,'registration-terms-and-conditions','org3','e39cc966-a58f-4b97-9729-9d9fe9c6412c',3,70,0,NULL,NULL),('880df4f6-82a4-427c-bd63-adc16d6efbfa',NULL,'registration-password-action','org5','5615e62c-2647-41e8-ab91-0486bc0becfa',0,50,0,NULL,NULL),('889dd949-776c-416c-bc90-2c14ac691fa6',NULL,'client-secret-jwt','org5','b0661eec-c91e-408b-b582-ba7374928b4b',2,30,0,NULL,NULL),('88a80de1-3be4-4ece-96a9-a4d291e6e1e7',NULL,'conditional-user-configured','org5','80bece5d-4667-44e1-b45c-6bf036415bd0',0,10,0,NULL,NULL),('8a04edad-77c6-41d2-96b3-40be3d92df02',NULL,'conditional-user-configured','org4','4bbc8ef9-4323-44e2-961f-c34d803a8b8c',0,10,0,NULL,NULL),('8ae770c6-41c3-4920-9e99-2af07e9828c8',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','5c79ef61-da4c-474d-b30b-4c691a139ce4',2,30,1,'74d5eb43-a4be-4744-b906-c38af7a058af',NULL),('8b089604-08de-45c7-a4a4-f1418e8018c6',NULL,'auth-otp-form','org2','8667a419-ad81-42bd-8936-904054745424',0,20,0,NULL,NULL),('8b0f2124-bc60-47ad-b444-03111b9bba0a',NULL,'registration-page-form','org4','55b20f57-d680-40e4-a928-b936fb76aeb5',0,10,1,'63ba9b53-56a4-4a71-9c86-2568a6e34c6a',NULL),('8b3e3909-80a0-4f5e-8a31-f6ad7d2d4e7f',NULL,'auth-username-password-form','org1','3e0e0a46-fd70-454f-8670-43593f062aca',0,10,0,NULL,NULL),('8bd82954-acc6-4b19-9f1d-15a7ae789b3b',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','74d5eb43-a4be-4744-b906-c38af7a058af',1,20,1,'17b2e65c-acd6-41d0-929c-f5383505e865',NULL),('8c75a81a-2a65-4e06-9924-1b7e4bfa31ba',NULL,'client-x509','org4','5b5c78ce-60bf-44ee-bee2-027abaacded1',2,40,0,NULL,NULL),('8d936422-912a-4db9-8bd7-125c016010c2',NULL,'identity-provider-redirector','org5','fce0e3d5-4214-4e0e-9892-b22868b40452',2,25,0,NULL,NULL),('8e7f97f9-e13e-48b9-8086-e5960af9c1f0',NULL,'registration-password-action','040bafd0-9c40-449b-9e25-b760eb822e74','c87de656-0677-4ed7-bae0-c4eec3f18090',0,50,0,NULL,NULL),('8fd6e6d7-a87f-4910-a3e8-b21a72479a33',NULL,'client-secret','org5','b0661eec-c91e-408b-b582-ba7374928b4b',2,10,0,NULL,NULL),('922f6263-53f0-4d21-ac17-7ec3396103da',NULL,'direct-grant-validate-password','org5','5e83190e-b2bb-4251-aed8-1508ad4fb48b',0,20,0,NULL,NULL),('92329269-34a9-47b7-b9a4-5188de0cda9d',NULL,'reset-password','org5','0eec0258-f8ce-4ccc-8251-4f457f2321e3',0,30,0,NULL,NULL),('92dfee1b-7444-4165-93bd-51becf29c954',NULL,'docker-http-basic-authenticator','org1','d2115210-1182-4543-ac9e-55cae5d31da7',0,10,0,NULL,NULL),('951ddba2-2b97-4ae7-be05-df8365f93c97',NULL,'registration-password-action','org1','216a2336-2bc3-4199-8f9d-a119d38fdcb0',0,50,0,NULL,NULL),('968538cd-9ce3-4c84-9fe0-0dc5e57f209c',NULL,NULL,'org1','1dfbe40d-fad4-4645-ba9b-c80bb78a3a6d',2,20,1,'bc8010d0-6a69-4cb5-bf76-98b1c19f741f',NULL),('97586ccc-d179-4fda-821a-56c705e01322',NULL,NULL,'org3','e44cb185-dc13-4e0b-b06a-5e618b0ca3e8',2,20,1,'946c076c-0ab7-4562-ad29-cbe906e843f9',NULL),('97e020ce-47ef-4b7a-baf9-99a30ab0fa1e',NULL,'direct-grant-validate-password','org1','f7dbff1e-e72a-4a16-9999-d9f807d5168b',0,20,0,NULL,NULL),('97ffa77c-09b5-4eee-83d2-b997bd506a71',NULL,NULL,'org4','abbceebe-c332-40ac-a68f-683e62f27dda',1,30,1,'980a86aa-b5c9-44bd-921c-f1fed8a75f04',NULL),('99f10098-a4f3-41de-b167-c031eebfa7e5',NULL,'client-x509','org1','6668be01-a568-4342-a34c-55d9986c994b',2,40,0,NULL,NULL),('9a3f82c0-8678-4fed-b1bb-1c6740bcb552',NULL,NULL,'org1','5578c781-6832-4b0b-9e6b-e22c88310e0b',1,20,1,'2294eee9-3024-41d5-9efe-54025b113c85',NULL),('9b9aa763-231c-48f5-a2b7-5fb68c561889',NULL,'conditional-user-configured','040bafd0-9c40-449b-9e25-b760eb822e74','b0ebf027-c24a-4ed0-a054-964e55dbefce',0,10,0,NULL,NULL),('9e3acd3d-9634-4737-8ada-87ab27a46b92',NULL,NULL,'org4','d4e7d36d-3f63-4762-956e-daf577582ab4',2,20,1,'c19748e6-16ed-48cd-8511-c34c11ea7665',NULL),('a335c66d-4769-4d2e-be89-a496329436e8',NULL,'conditional-user-configured','org5','c2335094-591a-47cb-90f1-d79d3d880b01',0,10,0,NULL,NULL),('a3d85ab7-c89e-4abb-95b2-cffb650ac60c',NULL,'client-jwt','040bafd0-9c40-449b-9e25-b760eb822e74','92dc0537-44ee-404e-93e4-3838324d753e',2,20,0,NULL,NULL),('a48d90c8-1797-49da-b5e4-2f6706639a6c',NULL,'auth-cookie','org3','40b87eab-94db-4b36-8761-8ee5fbf51449',2,10,0,NULL,NULL),('a70f7b28-a659-44db-8be7-7c90220de279',NULL,NULL,'org4','41b450bb-42ba-4614-82db-8daccbbd6b58',2,30,1,'cb8f174b-d6e1-4e24-b2bd-3f998428fe29',NULL),('a80ceb45-c995-4a9b-ad48-162f2fce3de9',NULL,'identity-provider-redirector','040bafd0-9c40-449b-9e25-b760eb822e74','5c79ef61-da4c-474d-b30b-4c691a139ce4',2,25,0,NULL,NULL),('a838bff2-0f2e-4dd4-9d35-bded5e29a4db',NULL,NULL,'org1','7817ed80-695b-42a6-b60c-b98e8dfd8961',2,20,1,'5578c781-6832-4b0b-9e6b-e22c88310e0b',NULL),('a8593900-33f1-4da1-97dd-13687f1b1d7d',NULL,'reset-credential-email','org3','daed7519-4a03-44b7-8ec7-c4b1d983fd45',0,20,0,NULL,NULL),('a87c3e77-5b7a-4314-9535-127463e64c68',NULL,'conditional-user-configured','org4','52376e84-0b08-48c2-85cc-6711f0253fb4',0,10,0,NULL,NULL),('a90c6922-9a89-4716-bb93-9c646322897e',NULL,'idp-username-password-form','org3','946c076c-0ab7-4562-ad29-cbe906e843f9',0,10,0,NULL,NULL),('a93b1e8a-0dec-45b7-9e70-8a4565bd85c2',NULL,'auth-cookie','org1','439072fe-947e-41ab-ad6c-a798d5341b18',2,10,0,NULL,NULL),('aa698a29-0a79-4337-87c2-f38549f531c6',NULL,NULL,'org4','af1579aa-411a-4852-9736-e4888160c21b',1,40,1,'4bbc8ef9-4323-44e2-961f-c34d803a8b8c',NULL),('ab0ab379-699f-4ff1-ba7b-b3f07c0fb215',NULL,'auth-otp-form','org5','c2335094-591a-47cb-90f1-d79d3d880b01',0,20,0,NULL,NULL),('ab195411-731a-4561-b3ab-3ca1a86a4687',NULL,'auth-cookie','org5','fce0e3d5-4214-4e0e-9892-b22868b40452',2,10,0,NULL,NULL),('abcc5465-d80b-46f7-8b0c-5fbf3a59ac4b',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','a84e6513-898e-480b-9aa0-0d5d0c859b21',1,20,1,'b0ebf027-c24a-4ed0-a054-964e55dbefce',NULL),('adea46a0-654b-4505-ac6b-8dea33c74033',NULL,'direct-grant-validate-password','org2','71cd49da-1bb3-4f4a-b1a2-8f9be56b9ad7',0,20,0,NULL,NULL),('af6d642a-36b6-4bcf-aae1-4ca1eaee5296',NULL,'registration-password-action','org3','e39cc966-a58f-4b97-9729-9d9fe9c6412c',0,50,0,NULL,NULL),('afbde1d8-9621-4c46-bbed-5d0ec56e1002',NULL,'idp-email-verification','org4','d4e7d36d-3f63-4762-956e-daf577582ab4',2,10,0,NULL,NULL),('b012399a-fb56-450d-a90f-42c85c5f9d1f',NULL,'reset-otp','org1','423c18fa-09ac-4ef3-b20d-5569f5e6e6d5',0,20,0,NULL,NULL),('b15c382c-b96b-4f53-94c5-af0e4e7d91da',NULL,'conditional-user-configured','040bafd0-9c40-449b-9e25-b760eb822e74','1a4063ad-2975-413b-8a45-6f9dfe52ee94',0,10,0,NULL,NULL),('b1c86c06-1f99-4630-a0b0-04c1d1ebf09c',NULL,'http-basic-authenticator','org2','10cc1aaa-1725-47bb-ba4f-24706ab5d250',0,10,0,NULL,NULL),('b20c62f8-ac84-4e0c-89d0-d0a407019d35',NULL,'registration-user-creation','org3','e39cc966-a58f-4b97-9729-9d9fe9c6412c',0,20,0,NULL,NULL),('b45bdd48-68d1-4e6c-9650-2a0dc4fdfd0f',NULL,NULL,'org4','c19748e6-16ed-48cd-8511-c34c11ea7665',1,20,1,'52376e84-0b08-48c2-85cc-6711f0253fb4',NULL),('b5ee9c5c-712c-4f85-b8c3-5b04b9eddb02',NULL,'conditional-user-configured','org4','e37b2918-adc1-420c-9467-cfff3026591a',0,10,0,NULL,NULL),('b6cbb8cc-1f92-4a56-82eb-d26352590ec3',NULL,'client-secret-jwt','org1','6668be01-a568-4342-a34c-55d9986c994b',2,30,0,NULL,NULL),('b80a4c30-a73b-4bc5-b46c-789b4edff4be',NULL,'idp-username-password-form','org4','c19748e6-16ed-48cd-8511-c34c11ea7665',0,10,0,NULL,NULL),('b813b8bf-ef7b-4513-b7f2-50d2000460d5',NULL,'direct-grant-validate-password','040bafd0-9c40-449b-9e25-b760eb822e74','727d6462-4277-490d-a5ea-776e7d0ec6f6',0,20,0,NULL,NULL),('b86fd1ab-8c2a-4761-bc8b-c132536f08a7',NULL,NULL,'org5','182bf442-2edb-4a9c-bc8c-684c125e7f73',1,20,1,'c2335094-591a-47cb-90f1-d79d3d880b01',NULL),('b880b1ff-07f2-44bb-b7a3-4af29bb91730',NULL,NULL,'org5','0278768d-7185-4ccc-878f-df14b2da863c',0,20,1,'be4e818f-9547-4856-b8f1-5d1793ce44c8',NULL),('b894ebe1-7033-4d1a-b159-947129bc7b2e',NULL,'conditional-user-configured','org3','a4a74af2-52cb-4781-80c9-9b3c666d9ac1',0,10,0,NULL,NULL),('ba55ae73-3274-4606-b9a5-595711b59bfe',NULL,'direct-grant-validate-username','org5','5e83190e-b2bb-4251-aed8-1508ad4fb48b',0,10,0,NULL,NULL),('bb47599f-b057-4623-a745-77531a01a413',NULL,'registration-user-creation','org5','5615e62c-2647-41e8-ab91-0486bc0becfa',0,20,0,NULL,NULL),('bbd5fc34-4334-4bfe-9a7d-9a18d4297842',NULL,'direct-grant-validate-otp','org5','55bbe49c-e5a3-4b06-b354-4b11bfc5c661',0,20,0,NULL,NULL),('bc0a18a1-a50e-47a1-b68a-758d9d00932c',NULL,'auth-spnego','org1','439072fe-947e-41ab-ad6c-a798d5341b18',3,20,0,NULL,NULL),('bcbb221f-7e16-41a6-a485-37c9f53de08c',NULL,'client-secret','040bafd0-9c40-449b-9e25-b760eb822e74','92dc0537-44ee-404e-93e4-3838324d753e',2,10,0,NULL,NULL),('bdf2a51a-a538-41d5-af0e-5f2880fc0568',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','e019bfe2-47cf-491d-b388-f6b3dedb13db',2,20,1,'a84e6513-898e-480b-9aa0-0d5d0c859b21',NULL),('bf617363-2eff-4a13-902e-490f662eb8fe',NULL,'registration-recaptcha-action','040bafd0-9c40-449b-9e25-b760eb822e74','c87de656-0677-4ed7-bae0-c4eec3f18090',3,60,0,NULL,NULL),('bf7a0dc6-bccc-4708-9d04-595dbad215e1',NULL,'registration-terms-and-conditions','040bafd0-9c40-449b-9e25-b760eb822e74','c87de656-0677-4ed7-bae0-c4eec3f18090',3,70,0,NULL,NULL),('bff2a9d1-13eb-4c5e-8da8-66fb0bb5c289',NULL,'registration-terms-and-conditions','org2','6da08f15-1773-4cea-a093-e9ecd7b9abf9',3,70,0,NULL,NULL),('c03316b2-689f-46ad-8946-30ae89448503',NULL,'reset-credential-email','org2','670edf44-44f8-40b9-859f-0135fefe38a8',0,20,0,NULL,NULL),('c1847d77-cf47-464f-be9d-7947293dba88',NULL,'docker-http-basic-authenticator','org5','d143505b-e316-4224-a65d-827c7e853da7',0,10,0,NULL,NULL),('c19114f3-98c3-47cc-b331-d7fbb260d08a',NULL,'direct-grant-validate-password','org4','abbceebe-c332-40ac-a68f-683e62f27dda',0,20,0,NULL,NULL),('c3f49d40-f5fc-4e01-a554-e82d04716645',NULL,'identity-provider-redirector','org1','439072fe-947e-41ab-ad6c-a798d5341b18',2,25,0,NULL,NULL),('c4fd5d78-90bb-4d26-80cf-e6eedd90faf9',NULL,'client-x509','040bafd0-9c40-449b-9e25-b760eb822e74','92dc0537-44ee-404e-93e4-3838324d753e',2,40,0,NULL,NULL),('c544a340-edda-49f0-b4ab-de2a0f501243',NULL,'reset-password','org2','670edf44-44f8-40b9-859f-0135fefe38a8',0,30,0,NULL,NULL),('c5d877dd-dbcc-46b3-aa03-16b8171fafb1',NULL,'identity-provider-redirector','org4','41b450bb-42ba-4614-82db-8daccbbd6b58',2,25,0,NULL,NULL),('c7131bd5-bd97-4626-8eb7-8d3cb065e08a',NULL,'idp-username-password-form','org5','be08a10f-ebf8-4531-ace4-f8df8a5cc20e',0,10,0,NULL,NULL),('c7c6ce21-ea0b-4b23-92fa-7d85faa2abe4',NULL,NULL,'org2','32c7e458-ad6c-46c4-80f8-348871badd96',2,30,1,'d5154ade-be3e-47af-b9a5-64c62271d4bf',NULL),('c87b878b-53c3-4623-a356-2458e413bcc0',NULL,'auth-username-password-form','org4','cb8f174b-d6e1-4e24-b2bd-3f998428fe29',0,10,0,NULL,NULL),('c8a92c8b-6a46-427a-b54b-a1471e3df433',NULL,'registration-user-creation','org1','216a2336-2bc3-4199-8f9d-a119d38fdcb0',0,20,0,NULL,NULL),('cace9897-e9e0-4946-b6b7-58d205635673',NULL,'registration-recaptcha-action','org1','216a2336-2bc3-4199-8f9d-a119d38fdcb0',3,60,0,NULL,NULL),('cbede671-d9bb-474f-94d1-f4bbc59c955b',NULL,NULL,'org3','bb37bc8d-9639-4051-b6a8-e8a47230486c',2,20,1,'1c4e20d3-af47-454e-a2e8-9baa4c710f83',NULL),('ce4ef593-8eb5-4935-88d0-369ebd93837d',NULL,NULL,'org4','ad851a6f-6e6b-4299-b1d7-fe850ae71065',2,20,1,'56b8e155-1fb7-4500-a736-1a04e5b46c16',NULL),('d07203da-2dec-4b7c-9239-9062a256439c',NULL,'client-jwt','org5','b0661eec-c91e-408b-b582-ba7374928b4b',2,20,0,NULL,NULL),('d0a82a6c-e920-4c00-be58-5e84302d9a1e',NULL,'idp-review-profile','040bafd0-9c40-449b-9e25-b760eb822e74','eac2e197-c133-4288-91fe-95410b931678',0,10,0,NULL,'e47d865f-6065-449e-960b-f9d900df3012'),('d0b8d725-8b9f-46e4-8479-e2d125936ad9',NULL,'idp-review-profile','org4','aa9d627f-7a5a-4f1d-a4c7-6955230ca7c1',0,10,0,NULL,'40a496a7-1429-49c1-a839-31ca7df85826'),('d3d29a64-2cb2-4f1a-9457-f552490ecae2',NULL,'idp-review-profile','org2','7dcd070f-46e8-458d-a93f-ba378508b1aa',0,10,0,NULL,'9a76a12c-7bcb-4528-abb3-e7af4d6d05cd'),('d44a95b1-6c51-41fd-a627-2b89963a3a8f',NULL,NULL,'org5','fce0e3d5-4214-4e0e-9892-b22868b40452',2,30,1,'182bf442-2edb-4a9c-bc8c-684c125e7f73',NULL),('d4aa1975-9ea5-4373-9fd7-340f47ce3545',NULL,'auth-otp-form','org2','fe48f61b-3cef-45fb-91a0-7ef731e6df78',0,20,0,NULL,NULL),('d56924d9-fbcd-4b94-8fcb-a338e6fb73e3',NULL,NULL,'org2','d5154ade-be3e-47af-b9a5-64c62271d4bf',1,20,1,'fe48f61b-3cef-45fb-91a0-7ef731e6df78',NULL),('d5f2ea8b-e98a-42ee-9641-6ab562ba73ed',NULL,'registration-terms-and-conditions','org5','5615e62c-2647-41e8-ab91-0486bc0becfa',3,70,0,NULL,NULL),('d6295b70-f4f8-4656-b05f-7ea0f068450d',NULL,'registration-terms-and-conditions','org1','216a2336-2bc3-4199-8f9d-a119d38fdcb0',3,70,0,NULL,NULL),('d8cb1e5a-0441-48cd-b8cc-6960e883f276',NULL,'conditional-user-configured','org3','75ad8dc8-773b-4495-a643-907ee34cfe83',0,10,0,NULL,NULL),('da02ca27-334e-49bf-9f99-ef3e39e817bd',NULL,'idp-confirm-link','org1','bc8010d0-6a69-4cb5-bf76-98b1c19f741f',0,10,0,NULL,NULL),('dbb4bc54-4c6e-4331-b1d5-fe4f126f6114',NULL,NULL,'org5','be4e818f-9547-4856-b8f1-5d1793ce44c8',2,20,1,'5be270ca-9cfc-46bb-b56a-942e65013fcb',NULL),('dbb71e88-0bcc-4dbc-8116-7fdb8733c3c5',NULL,NULL,'org1','3e0e0a46-fd70-454f-8670-43593f062aca',1,20,1,'1612998a-fd9f-4fd0-a71c-2a1e34e31f24',NULL),('dc3c1bf2-3f6d-4ba9-a121-3f4e7d0f319e',NULL,'auth-username-password-form','org5','182bf442-2edb-4a9c-bc8c-684c125e7f73',0,10,0,NULL,NULL),('dc474fe3-6776-4ffd-bdd7-0339f65a59ff',NULL,NULL,'org2','670edf44-44f8-40b9-859f-0135fefe38a8',1,40,1,'e8836e69-bdc9-463e-aa08-f3ac3ace63de',NULL),('dd23f3fd-e0e2-4a04-b691-9ffcc4b9e6ce',NULL,'registration-password-action','org2','6da08f15-1773-4cea-a093-e9ecd7b9abf9',0,50,0,NULL,NULL),('df881058-d5c7-4799-8757-3255b2f282d1',NULL,'direct-grant-validate-username','040bafd0-9c40-449b-9e25-b760eb822e74','727d6462-4277-490d-a5ea-776e7d0ec6f6',0,10,0,NULL,NULL),('dfff9c94-274e-4f96-90d8-12a5b46d5bcf',NULL,NULL,'org5','5be270ca-9cfc-46bb-b56a-942e65013fcb',0,20,1,'d48fdeee-ede1-4659-8e02-6a8b6f938e80',NULL),('e06553c6-bcf2-4af2-94f1-a9ccb977efe6',NULL,NULL,'org5','be08a10f-ebf8-4531-ace4-f8df8a5cc20e',1,20,1,'80bece5d-4667-44e1-b45c-6bf036415bd0',NULL),('e258cba3-c424-4549-bf3f-c9b6a7c9917e',NULL,'docker-http-basic-authenticator','org3','35ff9a9d-e6f2-4282-ab4f-3b63d0daf57a',0,10,0,NULL,NULL),('e4015d5e-15ab-49f2-b8ee-0fabc35b5273',NULL,'conditional-user-configured','org2','fe48f61b-3cef-45fb-91a0-7ef731e6df78',0,10,0,NULL,NULL),('e5434be7-5cbf-4562-91bd-a7110e2ead9e',NULL,'idp-username-password-form','org2','6d0b859d-fa99-410f-b6af-10681e1c1a25',0,10,0,NULL,NULL),('e59d3ea0-8f26-44f5-a33a-e719a6048fbc',NULL,'reset-credentials-choose-user','org4','af1579aa-411a-4852-9736-e4888160c21b',0,10,0,NULL,NULL),('e5de429b-b132-46f6-b246-f25f576732c9',NULL,'auth-spnego','040bafd0-9c40-449b-9e25-b760eb822e74','5c79ef61-da4c-474d-b30b-4c691a139ce4',3,20,0,NULL,NULL),('e9b4e076-7b7c-4eda-8fb1-05efa58f2642',NULL,'auth-username-password-form','org3','644d32af-745e-4865-b4d2-dd14e87e48db',0,10,0,NULL,NULL),('ea6539c7-a2fb-4cd9-9628-a7a63b1bcc63',NULL,'registration-password-action','org4','63ba9b53-56a4-4a71-9c86-2568a6e34c6a',0,50,0,NULL,NULL),('eb2828d0-a0f2-43d9-95f4-df05d6735608',NULL,'reset-credentials-choose-user','040bafd0-9c40-449b-9e25-b760eb822e74','cecdcd76-87c7-4805-aa28-b5c08db18e1f',0,10,0,NULL,NULL),('ec8b9afc-3210-4ddc-8de3-da88eaa2eaed',NULL,'registration-recaptcha-action','org3','e39cc966-a58f-4b97-9729-9d9fe9c6412c',3,60,0,NULL,NULL),('eeccc270-d914-4c3b-9714-52e03d421b48',NULL,'http-basic-authenticator','org3','b5f937cd-e88b-4c58-8777-9e1f172b571d',0,10,0,NULL,NULL),('eefb2322-e316-4415-bc4b-99841029655b',NULL,'conditional-user-configured','org2','8667a419-ad81-42bd-8936-904054745424',0,10,0,NULL,NULL),('ef243342-45f0-408e-99e4-ae3e97756f56',NULL,'direct-grant-validate-otp','org4','980a86aa-b5c9-44bd-921c-f1fed8a75f04',0,20,0,NULL,NULL),('ef8f7fdc-e6e4-479d-ae80-b8dd48a18c9c',NULL,'conditional-user-configured','org5','3791372e-74de-431f-a879-a42e9c1633f9',0,10,0,NULL,NULL),('f131470e-8c26-460e-bffd-0e0299013ea9',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','727d6462-4277-490d-a5ea-776e7d0ec6f6',1,30,1,'1a4063ad-2975-413b-8a45-6f9dfe52ee94',NULL),('f1629a73-9b8f-4b32-b29e-de6dd3d732d5',NULL,'direct-grant-validate-password','org3','1db37751-1abe-43f4-a83a-4b84f99a0160',0,20,0,NULL,NULL),('f1c45cbe-6ebb-4b0f-a077-0ffcba430b32',NULL,NULL,'org3','946c076c-0ab7-4562-ad29-cbe906e843f9',1,20,1,'75ad8dc8-773b-4495-a643-907ee34cfe83',NULL),('f20f20e5-160a-40e5-91dc-e10e2c8c401a',NULL,'reset-credential-email','040bafd0-9c40-449b-9e25-b760eb822e74','cecdcd76-87c7-4805-aa28-b5c08db18e1f',0,20,0,NULL,NULL),('f2ea3c2a-acf7-4caa-b1e0-de18f64c683c',NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','cecdcd76-87c7-4805-aa28-b5c08db18e1f',1,40,1,'22404bfb-ceff-412e-bae0-9c3451e3cad9',NULL),('f400c585-1004-491d-93ba-1db230e6928a',NULL,'http-basic-authenticator','org5','034a960c-aa18-4987-87c8-977a4246ad22',0,10,0,NULL,NULL),('f41cb336-fe84-476f-aeb1-21ccf04faf74',NULL,'http-basic-authenticator','040bafd0-9c40-449b-9e25-b760eb822e74','b6ac6c63-419e-47b0-bd33-dd7eeb6f0de7',0,10,0,NULL,NULL),('f46df830-2d1c-4d52-ab96-9026bb49e68a',NULL,'registration-user-creation','org2','6da08f15-1773-4cea-a093-e9ecd7b9abf9',0,20,0,NULL,NULL),('f6329cc1-95be-44cf-a22c-91b82a00dc72',NULL,NULL,'org3','1db37751-1abe-43f4-a83a-4b84f99a0160',1,30,1,'a4a74af2-52cb-4781-80c9-9b3c666d9ac1',NULL),('f6de3905-66d1-4341-a5d0-92e0e30f9ca4',NULL,NULL,'org4','aa9d627f-7a5a-4f1d-a4c7-6955230ca7c1',0,20,1,'ad851a6f-6e6b-4299-b1d7-fe850ae71065',NULL),('f7161b51-1add-4e11-acfb-e9dcf59cf084',NULL,'registration-page-form','org2','3426a575-dec4-4ffb-a72d-5a8d56a0502e',0,10,1,'6da08f15-1773-4cea-a093-e9ecd7b9abf9',NULL),('f7ad7cad-069e-4e3b-9717-dd327b16b704',NULL,'conditional-user-configured','org2','c86bc604-9c51-48be-ac03-67e30b26f8bc',0,10,0,NULL,NULL),('f9b01ef2-1708-4e44-8207-d93cafd14469',NULL,'client-jwt','org2','05847ae3-15f5-4c40-b93c-c56d019862a9',2,20,0,NULL,NULL),('fa2f1447-cf4b-43bc-a79f-5f78d407ced1',NULL,'client-jwt','org1','6668be01-a568-4342-a34c-55d9986c994b',2,20,0,NULL,NULL),('fdef8422-0cde-4443-ae92-9c30bbb9b415',NULL,'client-secret-jwt','org2','05847ae3-15f5-4c40-b93c-c56d019862a9',2,30,0,NULL,NULL),('fe6e455f-880b-4a3a-ae40-18ea981bb879',NULL,NULL,'org1','df706edb-3f56-44be-b616-23e8a43d5988',1,40,1,'423c18fa-09ac-4ef3-b20d-5569f5e6e6d5',NULL),('fee212c0-4c79-428e-99a4-6be5701139a8',NULL,NULL,'org3','73a6ae33-5bb9-4d6f-9208-6ac1fb0f26f2',0,20,1,'bb37bc8d-9639-4051-b6a8-e8a47230486c',NULL),('ff110d42-7431-4826-98e5-7563768a17e9',NULL,'idp-create-user-if-unique','org2','2700f110-56b0-48d3-b821-26cb45224e54',2,10,0,NULL,'c9c1de76-ea84-434e-b60e-7ecee0041891');
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('0278768d-7185-4ccc-878f-df14b2da863c','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',1,1),('034a960c-aa18-4987-87c8-977a4246ad22','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',1,1),('05847ae3-15f5-4c40-b93c-c56d019862a9','clients','Base authentication for clients','org2','client-flow',1,1),('0c78489c-4bf6-4788-b0d6-5b208df14710','registration','registration flow','org3','basic-flow',1,1),('0eec0258-f8ce-4ccc-8251-4f457f2321e3','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',1,1),('0f1d51e3-fcaf-4ab7-bf39-c2e66931190e','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',0,1),('10cc1aaa-1725-47bb-ba4f-24706ab5d250','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',1,1),('1612998a-fd9f-4fd0-a71c-2a1e34e31f24','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('17b2e65c-acd6-41d0-929c-f5383505e865','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('182bf442-2edb-4a9c-bc8c-684c125e7f73','forms','Username, password, otp and other auth forms.','org5','basic-flow',0,1),('1a4063ad-2975-413b-8a45-6f9dfe52ee94','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('1b7451db-2ee9-4c86-8098-70c49cc4c23f','Account verification options','Method with which to verity the existing account','org2','basic-flow',0,1),('1c4e20d3-af47-454e-a2e8-9baa4c710f83','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',0,1),('1db37751-1abe-43f4-a83a-4b84f99a0160','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',1,1),('1dfbe40d-fad4-4645-ba9b-c80bb78a3a6d','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',0,1),('216a2336-2bc3-4199-8f9d-a119d38fdcb0','registration form','registration form','org1','form-flow',0,1),('22404bfb-ceff-412e-bae0-9c3451e3cad9','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('2294eee9-3024-41d5-9efe-54025b113c85','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('2700f110-56b0-48d3-b821-26cb45224e54','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',0,1),('27ddb5ed-7170-4183-b925-c331137947e9','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',1,1),('32c7e458-ad6c-46c4-80f8-348871badd96','browser','browser based authentication','org2','basic-flow',1,1),('3426a575-dec4-4ffb-a72d-5a8d56a0502e','registration','registration flow','org2','basic-flow',1,1),('35ff9a9d-e6f2-4282-ab4f-3b63d0daf57a','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',1,1),('3791372e-74de-431f-a879-a42e9c1633f9','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',0,1),('3e0e0a46-fd70-454f-8670-43593f062aca','forms','Username, password, otp and other auth forms.','org1','basic-flow',0,1),('3f9e66d5-549b-4599-b7ba-cedc9813d536','docker auth','Used by Docker clients to authenticate against the IDP','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('40b87eab-94db-4b36-8761-8ee5fbf51449','browser','browser based authentication','org3','basic-flow',1,1),('41b450bb-42ba-4614-82db-8daccbbd6b58','browser','browser based authentication','org4','basic-flow',1,1),('423c18fa-09ac-4ef3-b20d-5569f5e6e6d5','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',0,1),('439072fe-947e-41ab-ad6c-a798d5341b18','browser','browser based authentication','org1','basic-flow',1,1),('4bb4bb8f-a836-4454-804c-eb9fc2aa64d9','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',0,1),('4bbc8ef9-4323-44e2-961f-c34d803a8b8c','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',0,1),('52376e84-0b08-48c2-85cc-6711f0253fb4','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('5578c781-6832-4b0b-9e6b-e22c88310e0b','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',0,1),('55b20f57-d680-40e4-a928-b936fb76aeb5','registration','registration flow','org4','basic-flow',1,1),('55bbe49c-e5a3-4b06-b354-4b11bfc5c661','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('5615e62c-2647-41e8-ab91-0486bc0becfa','registration form','registration form','org5','form-flow',0,1),('56b8e155-1fb7-4500-a736-1a04e5b46c16','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',0,1),('5b5c78ce-60bf-44ee-bee2-027abaacded1','clients','Base authentication for clients','org4','client-flow',1,1),('5be270ca-9cfc-46bb-b56a-942e65013fcb','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',0,1),('5c79ef61-da4c-474d-b30b-4c691a139ce4','browser','browser based authentication','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('5de19754-67b3-4210-8a20-1712d6c08d10','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',1,1),('5e83190e-b2bb-4251-aed8-1508ad4fb48b','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',1,1),('63ba9b53-56a4-4a71-9c86-2568a6e34c6a','registration form','registration form','org4','form-flow',0,1),('644d32af-745e-4865-b4d2-dd14e87e48db','forms','Username, password, otp and other auth forms.','org3','basic-flow',0,1),('65680493-0b8c-4afa-adfc-441ae8f03c08','registration','registration flow','org1','basic-flow',1,1),('65d5393a-578d-440f-b64f-6dcb8f9eb69e','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('6668be01-a568-4342-a34c-55d9986c994b','clients','Base authentication for clients','org1','client-flow',1,1),('670edf44-44f8-40b9-859f-0135fefe38a8','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',1,1),('6aefec4f-9804-4989-8678-4c31be754d01','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',1,1),('6d0b859d-fa99-410f-b6af-10681e1c1a25','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',0,1),('6da08f15-1773-4cea-a093-e9ecd7b9abf9','registration form','registration form','org2','form-flow',0,1),('71cd49da-1bb3-4f4a-b1a2-8f9be56b9ad7','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',1,1),('727d6462-4277-490d-a5ea-776e7d0ec6f6','direct grant','OpenID Connect Resource Owner Grant','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('734d6d23-7fdb-4472-89c5-0aa0ac7e171b','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',1,1),('73a6ae33-5bb9-4d6f-9208-6ac1fb0f26f2','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',1,1),('74d5eb43-a4be-4744-b906-c38af7a058af','forms','Username, password, otp and other auth forms.','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('75ad8dc8-773b-4495-a643-907ee34cfe83','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('76fe0edf-5122-4acc-ad44-99d0d7a151d3','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('7817ed80-695b-42a6-b60c-b98e8dfd8961','Account verification options','Method with which to verity the existing account','org1','basic-flow',0,1),('7dcd070f-46e8-458d-a93f-ba378508b1aa','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',1,1),('80bece5d-4667-44e1-b45c-6bf036415bd0','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('8667a419-ad81-42bd-8936-904054745424','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('92dc0537-44ee-404e-93e4-3838324d753e','clients','Base authentication for clients','040bafd0-9c40-449b-9e25-b760eb822e74','client-flow',1,1),('946c076c-0ab7-4562-ad29-cbe906e843f9','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',0,1),('94db78e0-ce27-424a-89a2-7f22b6e78e40','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',1,1),('980a86aa-b5c9-44bd-921c-f1fed8a75f04','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('a181c80f-4b15-46e5-ae13-3e3686c9c844','User creation or linking','Flow for the existing/non-existing user alternatives','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('a4a74af2-52cb-4781-80c9-9b3c666d9ac1','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('a84e6513-898e-480b-9aa0-0d5d0c859b21','Verify Existing Account by Re-authentication','Reauthentication of existing account','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('aa9d627f-7a5a-4f1d-a4c7-6955230ca7c1','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',1,1),('abbceebe-c332-40ac-a68f-683e62f27dda','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',1,1),('ad851a6f-6e6b-4299-b1d7-fe850ae71065','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',0,1),('af1579aa-411a-4852-9736-e4888160c21b','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',1,1),('b0661eec-c91e-408b-b582-ba7374928b4b','clients','Base authentication for clients','org5','client-flow',1,1),('b0ebf027-c24a-4ed0-a054-964e55dbefce','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('b5f937cd-e88b-4c58-8777-9e1f172b571d','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',1,1),('b6ac6c63-419e-47b0-bd33-dd7eeb6f0de7','saml ecp','SAML ECP Profile Authentication Flow','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('bb37bc8d-9639-4051-b6a8-e8a47230486c','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',0,1),('bbeb9a34-47ae-499f-a01f-089bc9515dc2','registration','registration flow','org5','basic-flow',1,1),('bc8010d0-6a69-4cb5-bf76-98b1c19f741f','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',0,1),('be08a10f-ebf8-4531-ace4-f8df8a5cc20e','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',0,1),('be4e818f-9547-4856-b8f1-5d1793ce44c8','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',0,1),('c19748e6-16ed-48cd-8511-c34c11ea7665','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',0,1),('c2335094-591a-47cb-90f1-d79d3d880b01','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('c7df88a0-bce2-4d36-bcd9-a45578b69480','registration','registration flow','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('c86bc604-9c51-48be-ac03-67e30b26f8bc','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('c87de656-0677-4ed7-bae0-c4eec3f18090','registration form','registration form','040bafd0-9c40-449b-9e25-b760eb822e74','form-flow',0,1),('cb8f174b-d6e1-4e24-b2bd-3f998428fe29','forms','Username, password, otp and other auth forms.','org4','basic-flow',0,1),('cecdcd76-87c7-4805-aa28-b5c08db18e1f','reset credentials','Reset credentials for a user if they forgot their password or something','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('d143505b-e316-4224-a65d-827c7e853da7','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',1,1),('d2115210-1182-4543-ac9e-55cae5d31da7','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',1,1),('d48fdeee-ede1-4659-8e02-6a8b6f938e80','Account verification options','Method with which to verity the existing account','org5','basic-flow',0,1),('d4e7d36d-3f63-4762-956e-daf577582ab4','Account verification options','Method with which to verity the existing account','org4','basic-flow',0,1),('d5154ade-be3e-47af-b9a5-64c62271d4bf','forms','Username, password, otp and other auth forms.','org2','basic-flow',0,1),('daed7519-4a03-44b7-8ec7-c4b1d983fd45','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',1,1),('df706edb-3f56-44be-b616-23e8a43d5988','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',1,1),('e019bfe2-47cf-491d-b388-f6b3dedb13db','Account verification options','Method with which to verity the existing account','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('e37b2918-adc1-420c-9467-cfff3026591a','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('e39cc966-a58f-4b97-9729-9d9fe9c6412c','registration form','registration form','org3','form-flow',0,1),('e44cb185-dc13-4e0b-b06a-5e618b0ca3e8','Account verification options','Method with which to verity the existing account','org3','basic-flow',0,1),('e8836e69-bdc9-463e-aa08-f3ac3ace63de','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',0,1),('eac2e197-c133-4288-91fe-95410b931678','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',1,1),('f7dbff1e-e72a-4a16-9999-d9f807d5168b','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',1,1),('fa2dcf5c-f594-49b0-9109-d5562e6acf5b','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','040bafd0-9c40-449b-9e25-b760eb822e74','basic-flow',0,1),('fa5a48b9-9ef6-4a48-8753-cbf40cfb777e','clients','Base authentication for clients','org3','client-flow',1,1),('fce0e3d5-4214-4e0e-9892-b22868b40452','browser','browser based authentication','org5','basic-flow',1,1),('fe48f61b-3cef-45fb-91a0-7ef731e6df78','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1);
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('2fb761c3-61bd-478c-9d3b-ebade814846e','create unique user config','org4'),('33668bbd-fd81-43db-86c8-bf1b2dbad737','review profile config','org5'),('40a496a7-1429-49c1-a839-31ca7df85826','review profile config','org4'),('6238b560-ea4a-413c-aa57-912b9eef0e5e','create unique user config','org3'),('8b31f78d-4e7e-4147-8598-43aa6b650210','create unique user config','040bafd0-9c40-449b-9e25-b760eb822e74'),('9a76a12c-7bcb-4528-abb3-e7af4d6d05cd','review profile config','org2'),('bac019ae-1ad2-4c70-ba8a-ed2de2463983','review profile config','org3'),('c73a0bfe-b8cd-4dbc-9a54-8dba2b13c0a4','review profile config','org1'),('c9c1de76-ea84-434e-b60e-7ecee0041891','create unique user config','org2'),('ccf0caa6-d871-46de-b34e-fab83f405782','create unique user config','org1'),('e47d865f-6065-449e-960b-f9d900df3012','review profile config','040bafd0-9c40-449b-9e25-b760eb822e74'),('f6d25e63-c0b4-4ac2-b743-c24e8c07edeb','create unique user config','org5');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('2fb761c3-61bd-478c-9d3b-ebade814846e','false','require.password.update.after.registration'),('33668bbd-fd81-43db-86c8-bf1b2dbad737','missing','update.profile.on.first.login'),('40a496a7-1429-49c1-a839-31ca7df85826','missing','update.profile.on.first.login'),('6238b560-ea4a-413c-aa57-912b9eef0e5e','false','require.password.update.after.registration'),('8b31f78d-4e7e-4147-8598-43aa6b650210','false','require.password.update.after.registration'),('9a76a12c-7bcb-4528-abb3-e7af4d6d05cd','missing','update.profile.on.first.login'),('bac019ae-1ad2-4c70-ba8a-ed2de2463983','missing','update.profile.on.first.login'),('c73a0bfe-b8cd-4dbc-9a54-8dba2b13c0a4','missing','update.profile.on.first.login'),('c9c1de76-ea84-434e-b60e-7ecee0041891','false','require.password.update.after.registration'),('ccf0caa6-d871-46de-b34e-fab83f405782','false','require.password.update.after.registration'),('e47d865f-6065-449e-960b-f9d900df3012','missing','update.profile.on.first.login'),('f6d25e63-c0b4-4ac2-b743-c24e8c07edeb','false','require.password.update.after.registration');
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
INSERT INTO `CLIENT` VALUES ('0448f589-1100-4f24-a765-54b618d40e09',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('06ec7032-69da-4e85-bb0e-eec784fb8ebe',1,0,'account-console',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('08342839-debf-47ba-8009-4fbfbd66ec55',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('0da694e1-8c83-463e-a2e9-4dad1317b771',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('17fd93d5-355f-4d86-a035-b11dbb83312a',1,1,'org3-workspaces',0,0,'zT3b9JCz7PX3h0zZ4GvbQ8pU9hHE71j0',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('20ee9def-fb35-46ec-a829-59d3a0db7567',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('2255466a-8359-4209-af2c-4bd3d839b907',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('2728a023-e3a7-4f73-99bd-c25ef9c8b335',1,0,'security-admin-console',0,1,NULL,'/admin/org3/console/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('27704f88-2ef9-4e40-a328-aaadec0b3c98',1,1,'_org2-api',0,1,'sA4XhHutQdtpKmYA2YSOgfMPb66JF2J1',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('35acd348-02e3-4f71-99da-e20c90ca32c1',1,1,'_org1-api',0,1,'ZaMhnUnXrezMYgUxW5OLXMW1UazK2SIZ',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb',1,1,'system-org2-auth',0,0,'cYJq6oH9ItoNnUl6vcLZDYEpWaExdwEj',NULL,1,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('3d20ecfe-2a25-4637-b015-532c1729c879',1,1,'org5-workspaces',0,0,'VOmxQMR0JMgYvf3MBQDheRpdRA2vItvG',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,0,'org1-realm',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74',NULL,0,0,0,'org1 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,0,'org4-realm',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74',NULL,0,0,0,'org4 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('5105367b-a90c-4b7e-ad31-15124e4182c0',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('51fced76-a0da-43cc-a530-7f4f925da142',1,1,'org4',0,1,'ILwn34DvXG4CHp3tokLEkkvs7svDDAga',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('54d6d676-f0f4-421f-b554-202406a3d2ec',1,1,'org2-workspaces',0,0,'yZkhmKUpkqLOO01BqNgSby8qw9WEgHdE',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('55614122-8f23-4650-bcc5-725a2ac60253',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('5ee3c4a9-92e9-4021-81f0-906d65437dce',1,0,'account',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45',1,1,'system-org4-auth',0,0,'KTcmQ2WlW9cKub89FdLU4tSIDDWwVoH4',NULL,1,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('62bdadf4-836a-481a-a326-5b7176a508ea',1,0,'account-console',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('65c3c063-c83c-44fe-b21f-e333de132425',1,1,'org1',0,1,'JnK6H8QHwgMJE8BrlWzUy9UQBp6wvtvA',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,1,'org5',0,1,'SP5rKo8UJNrm0OAGWCbvuJqEjObLM8Jb',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('757bb3d7-378a-4c1f-830f-5756fbd28c7f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('76abe77e-2892-42b1-bc04-2e56cb6df762',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('76eb28d2-6998-4436-933a-55d97c399802',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('78f8ff86-d160-4a8e-a450-dade12c2546b',1,1,'_org4-api',0,1,'ZrnlNGNurGVWilb7SCkSBuK6WbnAdNaZ',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('7b7d2580-6eb9-4208-8343-192d34328442',1,1,'system-org3-auth',0,0,'RIksxRTUTgVRrefUp8knEeG1h3vJj0aO',NULL,1,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,0,'account',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('821a7df6-a652-4bcb-96df-5d20ac5a8862',1,1,'org3',0,1,'ALaB9bJqgEXYbVglOSMDgan4jA1gpyeU',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('84ba430e-0d33-4e72-856f-478f691833b2',1,0,'account',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('87a03152-81d7-4fed-974a-b2d53d0551a7',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('89a38cf5-c91f-4da5-b988-7777003ee985',1,0,'account-console',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('91afb328-27d5-43a0-8239-2560633fac2c',1,1,'org4-workspaces',0,0,'Pn2CFnVuQiaMYGB0Dezs1SlrN4E5jop0',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,0,'org2-realm',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74',NULL,0,0,0,'org2 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('974eb9d9-d345-4aef-9995-6f05b4943e4a',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,1,'org1-workspaces',0,0,'unR0wzl5Z8E6gMQAJ7Sa84450OEfTBN1',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('a20a6dfa-8597-40e3-bca4-7c749b593584',1,0,'org3-realm',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74',NULL,0,0,0,'org3 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('a35519a5-c081-4b6f-b1a6-36d227638272',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org3','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,0,'org5-realm',0,0,NULL,NULL,1,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74',NULL,0,0,0,'org5 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('a5596fca-63f5-4082-b272-6ddce6204230',1,1,'system-org1-auth',0,0,'W6xhjiCOi8l5kqNA5GJxqjf6mKCJhA3j',NULL,1,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979',1,0,'security-admin-console',0,1,NULL,'/admin/org5/console/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('ac10798a-f624-4556-9c93-5a4f8ce430c5',1,0,'security-admin-console',0,1,NULL,'/admin/org2/console/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('b42f7870-e157-44d7-88b2-2c10c69e222b',1,1,'_platform',0,0,'aRZ8DUpwCMbJWmyIMagLsbXpZnCPDr4v',NULL,0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1',1,1,'_org3-api',0,1,'MFDCZWU9WjVRWqD7Cgnp3DJ3HeC4aXAM',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,0,'account',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0',1,0,'account-console',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('bdcbf90e-171d-449f-b97c-0478b17a5be9',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('c03f5bdd-6396-4e22-b15a-69107d436248',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('cb18e293-11e3-46d1-b34c-d5484595683c',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8',1,1,'system-org5-auth',0,0,'AsOLoi0JGfiFeoZF6CDBKE2P0jAZwzqW',NULL,1,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('cc0ab70c-470b-418c-8081-41c808c74018',1,0,'account-console',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org1','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('d950640f-e6b4-48df-8c59-fe9a1e06e863',1,0,'security-admin-console',0,1,NULL,'/admin/org1/console/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3',1,1,'_org5-api',0,1,'SmDRZEak7LtIXbLfCFnIfJjBD1X8XGXi',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('debb3226-8cbc-477d-8b51-65a3c9506840',1,1,'org2',0,1,'CyQ8tqW2CzzkGR47mce2BZ1ehfdJbpDK',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('df88f233-d420-4e4c-8fbe-9781387a7119',1,0,'security-admin-console',0,1,NULL,'/admin/org4/console/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('e539f758-1a07-4e98-88db-8f6008ab3e39',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('f3f5cc12-161d-4e0b-82e8-828efbf46220',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('f44e4f74-f947-4342-8791-6bc421d4327e',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('fb2a5727-0a86-4f08-b173-e9d49abe92bb',1,0,'_platform-console',0,1,'PbWvDtsppvfp3L3TtRqJh3fozlFtggnj',NULL,0,NULL,0,'040bafd0-9c40-449b-9e25-b760eb822e74','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,0,'account',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0);
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('06ec7032-69da-4e85-bb0e-eec784fb8ebe','pkce.code.challenge.method','S256'),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','post.logout.redirect.uris','+'),('17fd93d5-355f-4d86-a035-b11dbb83312a','backchannel.logout.revoke.offline.tokens','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','backchannel.logout.session.required','true'),('17fd93d5-355f-4d86-a035-b11dbb83312a','client.secret.creation.time','1721115829'),('17fd93d5-355f-4d86-a035-b11dbb83312a','client_credentials.use_refresh_token','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','display.on.consent.screen','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','exclude.session.state.from.auth.response','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','id.token.as.detached.signature','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','oauth2.device.authorization.grant.enabled','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','oidc.ciba.grant.enabled','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','require.pushed.authorization.requests','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.artifact.binding','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.assertion.signature','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.authnstatement','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.client.signature','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.encrypt','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.force.post.binding','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.multivalued.roles','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.onetimeuse.condition','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.server.signature','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml.server.signature.keyinfo.ext','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','saml_force_name_id_format','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','tls.client.certificate.bound.access.tokens','false'),('17fd93d5-355f-4d86-a035-b11dbb83312a','use.refresh.tokens','true'),('20ee9def-fb35-46ec-a829-59d3a0db7567','pkce.code.challenge.method','S256'),('20ee9def-fb35-46ec-a829-59d3a0db7567','post.logout.redirect.uris','+'),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','pkce.code.challenge.method','S256'),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','post.logout.redirect.uris','+'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','access.token.lifespan','86400'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','acr.loa.map','{}'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','backchannel.logout.revoke.offline.tokens','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','backchannel.logout.session.required','true'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','client.secret.creation.time','1721115807'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','client.session.idle.timeout','86400'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','client.session.max.lifespan','86400'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','client_credentials.use_refresh_token','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','display.on.consent.screen','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','exclude.session.state.from.auth.response','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','frontchannel.logout.session.required','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','id.token.as.detached.signature','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','oauth2.device.authorization.grant.enabled','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','oidc.ciba.grant.enabled','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','require.pushed.authorization.requests','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.allow.ecp.flow','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.artifact.binding','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.assertion.signature','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.authnstatement','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.client.signature','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.encrypt','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.force.post.binding','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.multivalued.roles','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.onetimeuse.condition','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.server.signature','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml.server.signature.keyinfo.ext','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','saml_force_name_id_format','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','tls.client.certificate.bound.access.tokens','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','token.response.type.bearer.lower-case','false'),('27704f88-2ef9-4e40-a328-aaadec0b3c98','use.refresh.tokens','true'),('35acd348-02e3-4f71-99da-e20c90ca32c1','access.token.lifespan','86400'),('35acd348-02e3-4f71-99da-e20c90ca32c1','acr.loa.map','{}'),('35acd348-02e3-4f71-99da-e20c90ca32c1','backchannel.logout.revoke.offline.tokens','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','backchannel.logout.session.required','true'),('35acd348-02e3-4f71-99da-e20c90ca32c1','client.secret.creation.time','1721115780'),('35acd348-02e3-4f71-99da-e20c90ca32c1','client.session.idle.timeout','86400'),('35acd348-02e3-4f71-99da-e20c90ca32c1','client.session.max.lifespan','86400'),('35acd348-02e3-4f71-99da-e20c90ca32c1','client_credentials.use_refresh_token','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','display.on.consent.screen','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','exclude.session.state.from.auth.response','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','frontchannel.logout.session.required','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','id.token.as.detached.signature','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','oauth2.device.authorization.grant.enabled','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','oidc.ciba.grant.enabled','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','require.pushed.authorization.requests','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.allow.ecp.flow','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.artifact.binding','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.assertion.signature','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.authnstatement','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.client.signature','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.encrypt','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.force.post.binding','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.multivalued.roles','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.onetimeuse.condition','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.server.signature','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml.server.signature.keyinfo.ext','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','saml_force_name_id_format','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','tls.client.certificate.bound.access.tokens','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','token.response.type.bearer.lower-case','false'),('35acd348-02e3-4f71-99da-e20c90ca32c1','use.refresh.tokens','true'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','backchannel.logout.revoke.offline.tokens','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','backchannel.logout.session.required','true'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','client.secret.creation.time','1721115807'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','client_credentials.use_refresh_token','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','display.on.consent.screen','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','exclude.session.state.from.auth.response','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','id.token.as.detached.signature','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','oauth2.device.authorization.grant.enabled','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','oidc.ciba.grant.enabled','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','require.pushed.authorization.requests','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.artifact.binding','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.assertion.signature','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.authnstatement','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.client.signature','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.encrypt','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.force.post.binding','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.multivalued.roles','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.onetimeuse.condition','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.server.signature','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml.server.signature.keyinfo.ext','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','saml_force_name_id_format','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','tls.client.certificate.bound.access.tokens','false'),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','use.refresh.tokens','true'),('3d20ecfe-2a25-4637-b015-532c1729c879','backchannel.logout.revoke.offline.tokens','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','backchannel.logout.session.required','true'),('3d20ecfe-2a25-4637-b015-532c1729c879','client.secret.creation.time','1721115877'),('3d20ecfe-2a25-4637-b015-532c1729c879','client_credentials.use_refresh_token','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','display.on.consent.screen','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','exclude.session.state.from.auth.response','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','id.token.as.detached.signature','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','oauth2.device.authorization.grant.enabled','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','oidc.ciba.grant.enabled','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','require.pushed.authorization.requests','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.artifact.binding','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.assertion.signature','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.authnstatement','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.client.signature','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.encrypt','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.force.post.binding','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.multivalued.roles','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.onetimeuse.condition','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.server.signature','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml.server.signature.keyinfo.ext','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','saml_force_name_id_format','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','tls.client.certificate.bound.access.tokens','false'),('3d20ecfe-2a25-4637-b015-532c1729c879','use.refresh.tokens','true'),('51fced76-a0da-43cc-a530-7f4f925da142','backchannel.logout.revoke.offline.tokens','false'),('51fced76-a0da-43cc-a530-7f4f925da142','backchannel.logout.session.required','true'),('51fced76-a0da-43cc-a530-7f4f925da142','client.secret.creation.time','1721115855'),('51fced76-a0da-43cc-a530-7f4f925da142','client_credentials.use_refresh_token','false'),('51fced76-a0da-43cc-a530-7f4f925da142','display.on.consent.screen','false'),('51fced76-a0da-43cc-a530-7f4f925da142','exclude.session.state.from.auth.response','false'),('51fced76-a0da-43cc-a530-7f4f925da142','id.token.as.detached.signature','false'),('51fced76-a0da-43cc-a530-7f4f925da142','oauth2.device.authorization.grant.enabled','false'),('51fced76-a0da-43cc-a530-7f4f925da142','oidc.ciba.grant.enabled','false'),('51fced76-a0da-43cc-a530-7f4f925da142','post.logout.redirect.uris','/*'),('51fced76-a0da-43cc-a530-7f4f925da142','require.pushed.authorization.requests','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.artifact.binding','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.assertion.signature','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.authnstatement','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.client.signature','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.encrypt','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.force.post.binding','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.multivalued.roles','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.onetimeuse.condition','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.server.signature','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml.server.signature.keyinfo.ext','false'),('51fced76-a0da-43cc-a530-7f4f925da142','saml_force_name_id_format','false'),('51fced76-a0da-43cc-a530-7f4f925da142','tls.client.certificate.bound.access.tokens','false'),('51fced76-a0da-43cc-a530-7f4f925da142','use.refresh.tokens','true'),('54d6d676-f0f4-421f-b554-202406a3d2ec','backchannel.logout.revoke.offline.tokens','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','backchannel.logout.session.required','true'),('54d6d676-f0f4-421f-b554-202406a3d2ec','client.secret.creation.time','1721115806'),('54d6d676-f0f4-421f-b554-202406a3d2ec','client_credentials.use_refresh_token','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','display.on.consent.screen','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','exclude.session.state.from.auth.response','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','id.token.as.detached.signature','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','oauth2.device.authorization.grant.enabled','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','oidc.ciba.grant.enabled','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','require.pushed.authorization.requests','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.artifact.binding','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.assertion.signature','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.authnstatement','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.client.signature','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.encrypt','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.force.post.binding','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.multivalued.roles','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.onetimeuse.condition','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.server.signature','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml.server.signature.keyinfo.ext','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','saml_force_name_id_format','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','tls.client.certificate.bound.access.tokens','false'),('54d6d676-f0f4-421f-b554-202406a3d2ec','use.refresh.tokens','true'),('55614122-8f23-4650-bcc5-725a2ac60253','pkce.code.challenge.method','S256'),('55614122-8f23-4650-bcc5-725a2ac60253','post.logout.redirect.uris','+'),('5ee3c4a9-92e9-4021-81f0-906d65437dce','post.logout.redirect.uris','+'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','backchannel.logout.revoke.offline.tokens','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','backchannel.logout.session.required','true'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','client.secret.creation.time','1721115854'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','client_credentials.use_refresh_token','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','display.on.consent.screen','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','exclude.session.state.from.auth.response','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','id.token.as.detached.signature','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','oauth2.device.authorization.grant.enabled','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','oidc.ciba.grant.enabled','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','require.pushed.authorization.requests','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.artifact.binding','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.assertion.signature','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.authnstatement','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.client.signature','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.encrypt','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.force.post.binding','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.multivalued.roles','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.onetimeuse.condition','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.server.signature','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml.server.signature.keyinfo.ext','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','saml_force_name_id_format','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','tls.client.certificate.bound.access.tokens','false'),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','use.refresh.tokens','true'),('62bdadf4-836a-481a-a326-5b7176a508ea','pkce.code.challenge.method','S256'),('62bdadf4-836a-481a-a326-5b7176a508ea','post.logout.redirect.uris','+'),('65c3c063-c83c-44fe-b21f-e333de132425','backchannel.logout.revoke.offline.tokens','false'),('65c3c063-c83c-44fe-b21f-e333de132425','backchannel.logout.session.required','true'),('65c3c063-c83c-44fe-b21f-e333de132425','client.secret.creation.time','1721115780'),('65c3c063-c83c-44fe-b21f-e333de132425','client_credentials.use_refresh_token','false'),('65c3c063-c83c-44fe-b21f-e333de132425','display.on.consent.screen','false'),('65c3c063-c83c-44fe-b21f-e333de132425','exclude.session.state.from.auth.response','false'),('65c3c063-c83c-44fe-b21f-e333de132425','id.token.as.detached.signature','false'),('65c3c063-c83c-44fe-b21f-e333de132425','oauth2.device.authorization.grant.enabled','false'),('65c3c063-c83c-44fe-b21f-e333de132425','oidc.ciba.grant.enabled','false'),('65c3c063-c83c-44fe-b21f-e333de132425','post.logout.redirect.uris','/*'),('65c3c063-c83c-44fe-b21f-e333de132425','require.pushed.authorization.requests','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.artifact.binding','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.assertion.signature','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.authnstatement','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.client.signature','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.encrypt','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.force.post.binding','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.multivalued.roles','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.onetimeuse.condition','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.server.signature','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml.server.signature.keyinfo.ext','false'),('65c3c063-c83c-44fe-b21f-e333de132425','saml_force_name_id_format','false'),('65c3c063-c83c-44fe-b21f-e333de132425','tls.client.certificate.bound.access.tokens','false'),('65c3c063-c83c-44fe-b21f-e333de132425','use.refresh.tokens','true'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','backchannel.logout.revoke.offline.tokens','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','backchannel.logout.session.required','true'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','client.secret.creation.time','1721115878'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','client_credentials.use_refresh_token','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','display.on.consent.screen','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','exclude.session.state.from.auth.response','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','id.token.as.detached.signature','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','oauth2.device.authorization.grant.enabled','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','oidc.ciba.grant.enabled','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','post.logout.redirect.uris','/*'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','require.pushed.authorization.requests','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.artifact.binding','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.assertion.signature','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.authnstatement','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.client.signature','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.encrypt','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.force.post.binding','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.multivalued.roles','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.onetimeuse.condition','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.server.signature','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml.server.signature.keyinfo.ext','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','saml_force_name_id_format','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','tls.client.certificate.bound.access.tokens','false'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','use.refresh.tokens','true'),('78f8ff86-d160-4a8e-a450-dade12c2546b','access.token.lifespan','86400'),('78f8ff86-d160-4a8e-a450-dade12c2546b','acr.loa.map','{}'),('78f8ff86-d160-4a8e-a450-dade12c2546b','backchannel.logout.revoke.offline.tokens','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','backchannel.logout.session.required','true'),('78f8ff86-d160-4a8e-a450-dade12c2546b','client.secret.creation.time','1721115855'),('78f8ff86-d160-4a8e-a450-dade12c2546b','client.session.idle.timeout','86400'),('78f8ff86-d160-4a8e-a450-dade12c2546b','client.session.max.lifespan','86400'),('78f8ff86-d160-4a8e-a450-dade12c2546b','client_credentials.use_refresh_token','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','display.on.consent.screen','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','exclude.session.state.from.auth.response','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','frontchannel.logout.session.required','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','id.token.as.detached.signature','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','oauth2.device.authorization.grant.enabled','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','oidc.ciba.grant.enabled','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','require.pushed.authorization.requests','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.allow.ecp.flow','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.artifact.binding','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.assertion.signature','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.authnstatement','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.client.signature','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.encrypt','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.force.post.binding','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.multivalued.roles','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.onetimeuse.condition','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.server.signature','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml.server.signature.keyinfo.ext','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','saml_force_name_id_format','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','tls.client.certificate.bound.access.tokens','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','token.response.type.bearer.lower-case','false'),('78f8ff86-d160-4a8e-a450-dade12c2546b','use.refresh.tokens','true'),('7b7d2580-6eb9-4208-8343-192d34328442','backchannel.logout.revoke.offline.tokens','false'),('7b7d2580-6eb9-4208-8343-192d34328442','backchannel.logout.session.required','true'),('7b7d2580-6eb9-4208-8343-192d34328442','client.secret.creation.time','1721115829'),('7b7d2580-6eb9-4208-8343-192d34328442','client_credentials.use_refresh_token','false'),('7b7d2580-6eb9-4208-8343-192d34328442','display.on.consent.screen','false'),('7b7d2580-6eb9-4208-8343-192d34328442','exclude.session.state.from.auth.response','false'),('7b7d2580-6eb9-4208-8343-192d34328442','id.token.as.detached.signature','false'),('7b7d2580-6eb9-4208-8343-192d34328442','oauth2.device.authorization.grant.enabled','false'),('7b7d2580-6eb9-4208-8343-192d34328442','oidc.ciba.grant.enabled','false'),('7b7d2580-6eb9-4208-8343-192d34328442','require.pushed.authorization.requests','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.artifact.binding','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.assertion.signature','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.authnstatement','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.client.signature','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.encrypt','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.force.post.binding','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.multivalued.roles','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.onetimeuse.condition','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.server.signature','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml.server.signature.keyinfo.ext','false'),('7b7d2580-6eb9-4208-8343-192d34328442','saml_force_name_id_format','false'),('7b7d2580-6eb9-4208-8343-192d34328442','tls.client.certificate.bound.access.tokens','false'),('7b7d2580-6eb9-4208-8343-192d34328442','use.refresh.tokens','true'),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','post.logout.redirect.uris','+'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','backchannel.logout.revoke.offline.tokens','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','backchannel.logout.session.required','true'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','client.secret.creation.time','1721115829'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','client_credentials.use_refresh_token','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','display.on.consent.screen','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','exclude.session.state.from.auth.response','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','id.token.as.detached.signature','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','oauth2.device.authorization.grant.enabled','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','oidc.ciba.grant.enabled','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','post.logout.redirect.uris','/*'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','require.pushed.authorization.requests','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.artifact.binding','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.assertion.signature','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.authnstatement','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.client.signature','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.encrypt','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.force.post.binding','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.multivalued.roles','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.onetimeuse.condition','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.server.signature','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml.server.signature.keyinfo.ext','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','saml_force_name_id_format','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','tls.client.certificate.bound.access.tokens','false'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','use.refresh.tokens','true'),('84ba430e-0d33-4e72-856f-478f691833b2','post.logout.redirect.uris','+'),('89a38cf5-c91f-4da5-b988-7777003ee985','pkce.code.challenge.method','S256'),('89a38cf5-c91f-4da5-b988-7777003ee985','post.logout.redirect.uris','+'),('91afb328-27d5-43a0-8239-2560633fac2c','backchannel.logout.revoke.offline.tokens','false'),('91afb328-27d5-43a0-8239-2560633fac2c','backchannel.logout.session.required','true'),('91afb328-27d5-43a0-8239-2560633fac2c','client.secret.creation.time','1721115854'),('91afb328-27d5-43a0-8239-2560633fac2c','client_credentials.use_refresh_token','false'),('91afb328-27d5-43a0-8239-2560633fac2c','display.on.consent.screen','false'),('91afb328-27d5-43a0-8239-2560633fac2c','exclude.session.state.from.auth.response','false'),('91afb328-27d5-43a0-8239-2560633fac2c','id.token.as.detached.signature','false'),('91afb328-27d5-43a0-8239-2560633fac2c','oauth2.device.authorization.grant.enabled','false'),('91afb328-27d5-43a0-8239-2560633fac2c','oidc.ciba.grant.enabled','false'),('91afb328-27d5-43a0-8239-2560633fac2c','require.pushed.authorization.requests','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.artifact.binding','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.assertion.signature','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.authnstatement','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.client.signature','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.encrypt','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.force.post.binding','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.multivalued.roles','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.onetimeuse.condition','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.server.signature','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml.server.signature.keyinfo.ext','false'),('91afb328-27d5-43a0-8239-2560633fac2c','saml_force_name_id_format','false'),('91afb328-27d5-43a0-8239-2560633fac2c','tls.client.certificate.bound.access.tokens','false'),('91afb328-27d5-43a0-8239-2560633fac2c','use.refresh.tokens','true'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','access.token.lifespan','86400'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','acr.loa.map','{}'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','backchannel.logout.revoke.offline.tokens','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','backchannel.logout.session.required','true'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','client.session.idle.timeout','86400'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','client.session.max.lifespan','86400'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','client_credentials.use_refresh_token','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','display.on.consent.screen','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','exclude.session.state.from.auth.response','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','frontchannel.logout.session.required','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','id.token.as.detached.signature','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','oauth2.device.authorization.grant.enabled','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','oidc.ciba.grant.enabled','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','require.pushed.authorization.requests','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.allow.ecp.flow','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.artifact.binding','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.assertion.signature','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.authnstatement','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.client.signature','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.encrypt','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.force.post.binding','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.multivalued.roles','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.onetimeuse.condition','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.server.signature','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml.server.signature.keyinfo.ext','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','saml_force_name_id_format','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','tls.client.certificate.bound.access.tokens','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','token.response.type.bearer.lower-case','false'),('974eb9d9-d345-4aef-9995-6f05b4943e4a','use.refresh.tokens','true'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','backchannel.logout.revoke.offline.tokens','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','backchannel.logout.session.required','true'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','client.secret.creation.time','1721115780'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','client_credentials.use_refresh_token','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','display.on.consent.screen','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','exclude.session.state.from.auth.response','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','id.token.as.detached.signature','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','oauth2.device.authorization.grant.enabled','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','oidc.ciba.grant.enabled','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','require.pushed.authorization.requests','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.artifact.binding','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.assertion.signature','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.authnstatement','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.client.signature','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.encrypt','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.force.post.binding','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.multivalued.roles','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.onetimeuse.condition','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.server.signature','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml.server.signature.keyinfo.ext','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','saml_force_name_id_format','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','tls.client.certificate.bound.access.tokens','false'),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','use.refresh.tokens','true'),('a5596fca-63f5-4082-b272-6ddce6204230','backchannel.logout.revoke.offline.tokens','false'),('a5596fca-63f5-4082-b272-6ddce6204230','backchannel.logout.session.required','true'),('a5596fca-63f5-4082-b272-6ddce6204230','client.secret.creation.time','1721115780'),('a5596fca-63f5-4082-b272-6ddce6204230','client_credentials.use_refresh_token','false'),('a5596fca-63f5-4082-b272-6ddce6204230','display.on.consent.screen','false'),('a5596fca-63f5-4082-b272-6ddce6204230','exclude.session.state.from.auth.response','false'),('a5596fca-63f5-4082-b272-6ddce6204230','id.token.as.detached.signature','false'),('a5596fca-63f5-4082-b272-6ddce6204230','oauth2.device.authorization.grant.enabled','false'),('a5596fca-63f5-4082-b272-6ddce6204230','oidc.ciba.grant.enabled','false'),('a5596fca-63f5-4082-b272-6ddce6204230','require.pushed.authorization.requests','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.artifact.binding','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.assertion.signature','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.authnstatement','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.client.signature','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.encrypt','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.force.post.binding','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.multivalued.roles','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.onetimeuse.condition','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.server.signature','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml.server.signature.keyinfo.ext','false'),('a5596fca-63f5-4082-b272-6ddce6204230','saml_force_name_id_format','false'),('a5596fca-63f5-4082-b272-6ddce6204230','tls.client.certificate.bound.access.tokens','false'),('a5596fca-63f5-4082-b272-6ddce6204230','use.refresh.tokens','true'),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','pkce.code.challenge.method','S256'),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','post.logout.redirect.uris','+'),('ac10798a-f624-4556-9c93-5a4f8ce430c5','pkce.code.challenge.method','S256'),('ac10798a-f624-4556-9c93-5a4f8ce430c5','post.logout.redirect.uris','+'),('b42f7870-e157-44d7-88b2-2c10c69e222b','backchannel.logout.revoke.offline.tokens','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','backchannel.logout.session.required','true'),('b42f7870-e157-44d7-88b2-2c10c69e222b','client.secret.creation.time','1721115537'),('b42f7870-e157-44d7-88b2-2c10c69e222b','client_credentials.use_refresh_token','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','display.on.consent.screen','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','exclude.session.state.from.auth.response','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','id.token.as.detached.signature','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','oauth2.device.authorization.grant.enabled','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','oidc.ciba.grant.enabled','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','require.pushed.authorization.requests','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.artifact.binding','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.assertion.signature','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.authnstatement','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.client.signature','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.encrypt','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.force.post.binding','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.multivalued.roles','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.onetimeuse.condition','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.server.signature','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml.server.signature.keyinfo.ext','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','saml_force_name_id_format','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','tls.client.certificate.bound.access.tokens','false'),('b42f7870-e157-44d7-88b2-2c10c69e222b','use.refresh.tokens','true'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','access.token.lifespan','86400'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','acr.loa.map','{}'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','backchannel.logout.revoke.offline.tokens','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','backchannel.logout.session.required','true'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','client.secret.creation.time','1721115830'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','client.session.idle.timeout','86400'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','client.session.max.lifespan','86400'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','client_credentials.use_refresh_token','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','display.on.consent.screen','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','exclude.session.state.from.auth.response','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','frontchannel.logout.session.required','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','id.token.as.detached.signature','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','oauth2.device.authorization.grant.enabled','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','oidc.ciba.grant.enabled','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','require.pushed.authorization.requests','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.allow.ecp.flow','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.artifact.binding','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.assertion.signature','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.authnstatement','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.client.signature','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.encrypt','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.force.post.binding','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.multivalued.roles','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.onetimeuse.condition','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.server.signature','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml.server.signature.keyinfo.ext','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','saml_force_name_id_format','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','tls.client.certificate.bound.access.tokens','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','token.response.type.bearer.lower-case','false'),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','use.refresh.tokens','true'),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','post.logout.redirect.uris','+'),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','pkce.code.challenge.method','S256'),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','post.logout.redirect.uris','+'),('cb18e293-11e3-46d1-b34c-d5484595683c','post.logout.redirect.uris','+'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','backchannel.logout.revoke.offline.tokens','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','backchannel.logout.session.required','true'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','client.secret.creation.time','1721115877'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','client_credentials.use_refresh_token','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','display.on.consent.screen','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','exclude.session.state.from.auth.response','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','id.token.as.detached.signature','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','oauth2.device.authorization.grant.enabled','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','oidc.ciba.grant.enabled','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','require.pushed.authorization.requests','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.artifact.binding','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.assertion.signature','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.authnstatement','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.client.signature','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.encrypt','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.force.post.binding','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.multivalued.roles','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.onetimeuse.condition','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.server.signature','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml.server.signature.keyinfo.ext','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','saml_force_name_id_format','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','tls.client.certificate.bound.access.tokens','false'),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','use.refresh.tokens','true'),('cc0ab70c-470b-418c-8081-41c808c74018','pkce.code.challenge.method','S256'),('cc0ab70c-470b-418c-8081-41c808c74018','post.logout.redirect.uris','+'),('d950640f-e6b4-48df-8c59-fe9a1e06e863','pkce.code.challenge.method','S256'),('d950640f-e6b4-48df-8c59-fe9a1e06e863','post.logout.redirect.uris','+'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','access.token.lifespan','86400'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','acr.loa.map','{}'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','backchannel.logout.revoke.offline.tokens','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','backchannel.logout.session.required','true'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','client.secret.creation.time','1721115878'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','client.session.idle.timeout','86400'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','client.session.max.lifespan','86400'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','client_credentials.use_refresh_token','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','display.on.consent.screen','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','exclude.session.state.from.auth.response','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','frontchannel.logout.session.required','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','id.token.as.detached.signature','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','oauth2.device.authorization.grant.enabled','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','oidc.ciba.grant.enabled','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','require.pushed.authorization.requests','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.allow.ecp.flow','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.artifact.binding','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.assertion.signature','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.authnstatement','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.client.signature','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.encrypt','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.force.post.binding','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.multivalued.roles','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.onetimeuse.condition','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.server.signature','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml.server.signature.keyinfo.ext','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','saml_force_name_id_format','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','tls.client.certificate.bound.access.tokens','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','token.response.type.bearer.lower-case','false'),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','use.refresh.tokens','true'),('debb3226-8cbc-477d-8b51-65a3c9506840','backchannel.logout.revoke.offline.tokens','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','backchannel.logout.session.required','true'),('debb3226-8cbc-477d-8b51-65a3c9506840','client.secret.creation.time','1721115807'),('debb3226-8cbc-477d-8b51-65a3c9506840','client_credentials.use_refresh_token','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','display.on.consent.screen','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','exclude.session.state.from.auth.response','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','id.token.as.detached.signature','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','oauth2.device.authorization.grant.enabled','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','oidc.ciba.grant.enabled','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','post.logout.redirect.uris','/*'),('debb3226-8cbc-477d-8b51-65a3c9506840','require.pushed.authorization.requests','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.artifact.binding','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.assertion.signature','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.authnstatement','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.client.signature','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.encrypt','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.force.post.binding','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.multivalued.roles','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.onetimeuse.condition','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.server.signature','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml.server.signature.keyinfo.ext','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','saml_force_name_id_format','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','tls.client.certificate.bound.access.tokens','false'),('debb3226-8cbc-477d-8b51-65a3c9506840','use.refresh.tokens','true'),('df88f233-d420-4e4c-8fbe-9781387a7119','pkce.code.challenge.method','S256'),('df88f233-d420-4e4c-8fbe-9781387a7119','post.logout.redirect.uris','+'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','backchannel.logout.revoke.offline.tokens','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','backchannel.logout.session.required','true'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','client.secret.creation.time','1721115539'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','client_credentials.use_refresh_token','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','display.on.consent.screen','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','exclude.session.state.from.auth.response','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','id.token.as.detached.signature','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','oauth2.device.authorization.grant.enabled','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','oidc.ciba.grant.enabled','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','post.logout.redirect.uris','/*'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','require.pushed.authorization.requests','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.artifact.binding','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.assertion.signature','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.authnstatement','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.client.signature','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.encrypt','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.force.post.binding','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.multivalued.roles','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.onetimeuse.condition','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.server.signature','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml.server.signature.keyinfo.ext','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','saml_force_name_id_format','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','tls.client.certificate.bound.access.tokens','false'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','use.refresh.tokens','true'),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('033e36a9-52e2-4a84-a0a9-7d9205c92757','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('091d4302-f63e-4b7a-b811-8aa48718d48c','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('09a20393-79b0-480e-ad87-1fab7109a4af','email','org4','OpenID Connect built-in scope: email','openid-connect'),('0ca53734-3896-4acd-891a-84e68adfd9de','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('1c5dcbdb-7397-45f3-99b3-5b070b56a289','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('1f7e046f-1bfb-4f1d-b32e-834fdd516c59','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('1ffe8d8f-fcab-40da-a6ec-8ca39b148671','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('267c858c-0480-4182-b76f-4309f172b5f0','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('28696408-7a51-49b2-9ecb-90266e404122','email','org5','OpenID Connect built-in scope: email','openid-connect'),('2bccda12-189c-4182-9a1f-c573828d79e8','address','org3','OpenID Connect built-in scope: address','openid-connect'),('3144ed7a-ee50-42ab-a523-016abc4b5d92','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('38f7c8bc-4ee3-46b1-a925-1ad92fa5f3f9','role_list','org1','SAML role list','saml'),('3957e10c-d7b6-40da-9261-b78170643382','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('397e78d0-fabf-4cfd-b214-9936a60347b1','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('40b1e47f-3f24-42c9-b98c-990fde880aef','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('41bd8ab5-49bd-4392-966d-efc10effba9e','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('4886a7cb-a63d-42ce-9fee-760f1a2c2f10','email','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect built-in scope: email','openid-connect'),('4c90144c-2e6e-4764-bb89-97a0a6bc2acc','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('4d3dc50c-046e-4be6-a7d6-a28f2fb4732a','address','org1','OpenID Connect built-in scope: address','openid-connect'),('588fd181-4a21-48bb-bfd6-c5a15980d877','email','org1','OpenID Connect built-in scope: email','openid-connect'),('71c290b9-9ab7-4c49-b46f-762c4723da84','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('73bf9a14-cc54-4b25-86e9-ae40e996c6a3','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('7cfebc5f-368c-45a9-8e8e-605c430caf09','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('7e917783-3eb6-48fb-bead-e8ce41722d58','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('82f58373-a88d-44e3-a67f-36c4b87a8d9f','profile','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect built-in scope: profile','openid-connect'),('84294d37-f577-4eb6-9233-7ae35cd3c0fb','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('861297de-cbe5-4ac3-9209-45be588259aa','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('94247a81-74b0-4561-a790-41975dcd8d63','role_list','org2','SAML role list','saml'),('9ba65954-3415-4bbd-82bf-49c7b434596a','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('9c40b9dc-3d87-4069-ab41-d1ce62a92ad4','address','org5','OpenID Connect built-in scope: address','openid-connect'),('9e0158d9-56b1-400c-b4c9-e400d616a922','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('a24d02ec-eac5-4200-b566-c75ca300fa76','microprofile-jwt','040bafd0-9c40-449b-9e25-b760eb822e74','Microprofile - JWT built-in scope','openid-connect'),('a580fd66-57e1-4e56-8a97-7a77015f4657','email','org2','OpenID Connect built-in scope: email','openid-connect'),('a90e6804-7709-432d-9367-368a20e94949','address','org4','OpenID Connect built-in scope: address','openid-connect'),('af1d0ff6-80ef-477b-8d7d-58b51cd09459','role_list','org5','SAML role list','saml'),('b2a40e00-8701-46b4-877f-d09d957e8180','role_list','org3','SAML role list','saml'),('b6fc35c6-234a-4e2d-b3bc-69622678a0a3','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('bd3a8fbc-9a67-484a-9966-52cf07d25ac3','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('be4bfa55-4a3e-48db-a7cd-ae045c01f9de','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('bf7128e1-794a-4d8c-8123-1d64255cc634','roles','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect scope for add user roles to the access token','openid-connect'),('c02fdc68-891c-49b5-8621-eb5e501bafa1','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c24e17de-21e2-4323-9b3b-d124f3d65b07','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('c5afdf64-4e09-4b8e-bfb4-428943acd15a','role_list','040bafd0-9c40-449b-9e25-b760eb822e74','SAML role list','saml'),('c5ea99ce-48aa-46d4-8bc1-780e792fd833','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('c78bc6da-aabc-4932-aaee-e067b9e128ba','offline_access','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect built-in scope: offline_access','openid-connect'),('cee1f0f0-1e18-4ad7-b16b-395737bb8d88','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789','web-origins','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d8e03a4b-ff1d-450e-91e3-4832e73b887f','role_list','org4','SAML role list','saml'),('e19e2469-8847-4078-b21d-efa781b72b2d','acr','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('e323deaa-6b05-4d40-8e40-553a163a833d','address','org2','OpenID Connect built-in scope: address','openid-connect'),('e6ea6fc7-fa75-48ad-ba13-e3d623ab904e','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('e89c1a08-6c1a-4954-ad15-e59d3237c8ba','phone','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect built-in scope: phone','openid-connect'),('edf2d7ba-c30d-48a5-8fff-d05ddf158f85','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('f21cd001-c2b6-4090-994f-c0a49521e43e','address','040bafd0-9c40-449b-9e25-b760eb822e74','OpenID Connect built-in scope: address','openid-connect'),('f2d857f8-0190-48f3-84e6-6f7382d5a898','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('f63d8bdd-364d-4b8c-8e73-54388e3eaeaa','email','org3','OpenID Connect built-in scope: email','openid-connect'),('fb3e8af9-8d8a-467c-9f29-0276302d6169','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('fbb5b543-513e-4bb8-8297-58bed7bf36cd','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('fd40bdd4-1f03-4470-82e1-dc485805c331','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('033e36a9-52e2-4a84-a0a9-7d9205c92757','${offlineAccessScopeConsentText}','consent.screen.text'),('033e36a9-52e2-4a84-a0a9-7d9205c92757','true','display.on.consent.screen'),('091d4302-f63e-4b7a-b811-8aa48718d48c','false','display.on.consent.screen'),('091d4302-f63e-4b7a-b811-8aa48718d48c','true','include.in.token.scope'),('09a20393-79b0-480e-ad87-1fab7109a4af','${emailScopeConsentText}','consent.screen.text'),('09a20393-79b0-480e-ad87-1fab7109a4af','true','display.on.consent.screen'),('09a20393-79b0-480e-ad87-1fab7109a4af','true','include.in.token.scope'),('0ca53734-3896-4acd-891a-84e68adfd9de','${rolesScopeConsentText}','consent.screen.text'),('0ca53734-3896-4acd-891a-84e68adfd9de','true','display.on.consent.screen'),('0ca53734-3896-4acd-891a-84e68adfd9de','false','include.in.token.scope'),('1c5dcbdb-7397-45f3-99b3-5b070b56a289','false','display.on.consent.screen'),('1c5dcbdb-7397-45f3-99b3-5b070b56a289','false','include.in.token.scope'),('1f7e046f-1bfb-4f1d-b32e-834fdd516c59','${profileScopeConsentText}','consent.screen.text'),('1f7e046f-1bfb-4f1d-b32e-834fdd516c59','true','display.on.consent.screen'),('1f7e046f-1bfb-4f1d-b32e-834fdd516c59','true','include.in.token.scope'),('1ffe8d8f-fcab-40da-a6ec-8ca39b148671','${rolesScopeConsentText}','consent.screen.text'),('1ffe8d8f-fcab-40da-a6ec-8ca39b148671','true','display.on.consent.screen'),('1ffe8d8f-fcab-40da-a6ec-8ca39b148671','false','include.in.token.scope'),('267c858c-0480-4182-b76f-4309f172b5f0','false','display.on.consent.screen'),('267c858c-0480-4182-b76f-4309f172b5f0','false','include.in.token.scope'),('28696408-7a51-49b2-9ecb-90266e404122','${emailScopeConsentText}','consent.screen.text'),('28696408-7a51-49b2-9ecb-90266e404122','true','display.on.consent.screen'),('28696408-7a51-49b2-9ecb-90266e404122','true','include.in.token.scope'),('2bccda12-189c-4182-9a1f-c573828d79e8','${addressScopeConsentText}','consent.screen.text'),('2bccda12-189c-4182-9a1f-c573828d79e8','true','display.on.consent.screen'),('2bccda12-189c-4182-9a1f-c573828d79e8','true','include.in.token.scope'),('3144ed7a-ee50-42ab-a523-016abc4b5d92','false','display.on.consent.screen'),('3144ed7a-ee50-42ab-a523-016abc4b5d92','false','include.in.token.scope'),('38f7c8bc-4ee3-46b1-a925-1ad92fa5f3f9','${samlRoleListScopeConsentText}','consent.screen.text'),('38f7c8bc-4ee3-46b1-a925-1ad92fa5f3f9','true','display.on.consent.screen'),('3957e10c-d7b6-40da-9261-b78170643382','','consent.screen.text'),('3957e10c-d7b6-40da-9261-b78170643382','false','display.on.consent.screen'),('3957e10c-d7b6-40da-9261-b78170643382','false','include.in.token.scope'),('397e78d0-fabf-4cfd-b214-9936a60347b1','','consent.screen.text'),('397e78d0-fabf-4cfd-b214-9936a60347b1','false','display.on.consent.screen'),('397e78d0-fabf-4cfd-b214-9936a60347b1','false','include.in.token.scope'),('40b1e47f-3f24-42c9-b98c-990fde880aef','${offlineAccessScopeConsentText}','consent.screen.text'),('40b1e47f-3f24-42c9-b98c-990fde880aef','true','display.on.consent.screen'),('41bd8ab5-49bd-4392-966d-efc10effba9e','${profileScopeConsentText}','consent.screen.text'),('41bd8ab5-49bd-4392-966d-efc10effba9e','true','display.on.consent.screen'),('41bd8ab5-49bd-4392-966d-efc10effba9e','true','include.in.token.scope'),('4886a7cb-a63d-42ce-9fee-760f1a2c2f10','${emailScopeConsentText}','consent.screen.text'),('4886a7cb-a63d-42ce-9fee-760f1a2c2f10','true','display.on.consent.screen'),('4886a7cb-a63d-42ce-9fee-760f1a2c2f10','true','include.in.token.scope'),('4c90144c-2e6e-4764-bb89-97a0a6bc2acc','${rolesScopeConsentText}','consent.screen.text'),('4c90144c-2e6e-4764-bb89-97a0a6bc2acc','true','display.on.consent.screen'),('4c90144c-2e6e-4764-bb89-97a0a6bc2acc','false','include.in.token.scope'),('4d3dc50c-046e-4be6-a7d6-a28f2fb4732a','${addressScopeConsentText}','consent.screen.text'),('4d3dc50c-046e-4be6-a7d6-a28f2fb4732a','true','display.on.consent.screen'),('4d3dc50c-046e-4be6-a7d6-a28f2fb4732a','true','include.in.token.scope'),('588fd181-4a21-48bb-bfd6-c5a15980d877','${emailScopeConsentText}','consent.screen.text'),('588fd181-4a21-48bb-bfd6-c5a15980d877','true','display.on.consent.screen'),('588fd181-4a21-48bb-bfd6-c5a15980d877','true','include.in.token.scope'),('71c290b9-9ab7-4c49-b46f-762c4723da84','${phoneScopeConsentText}','consent.screen.text'),('71c290b9-9ab7-4c49-b46f-762c4723da84','true','display.on.consent.screen'),('71c290b9-9ab7-4c49-b46f-762c4723da84','true','include.in.token.scope'),('73bf9a14-cc54-4b25-86e9-ae40e996c6a3','','consent.screen.text'),('73bf9a14-cc54-4b25-86e9-ae40e996c6a3','false','display.on.consent.screen'),('73bf9a14-cc54-4b25-86e9-ae40e996c6a3','false','include.in.token.scope'),('7cfebc5f-368c-45a9-8e8e-605c430caf09','false','display.on.consent.screen'),('7cfebc5f-368c-45a9-8e8e-605c430caf09','true','include.in.token.scope'),('7e917783-3eb6-48fb-bead-e8ce41722d58','${profileScopeConsentText}','consent.screen.text'),('7e917783-3eb6-48fb-bead-e8ce41722d58','true','display.on.consent.screen'),('7e917783-3eb6-48fb-bead-e8ce41722d58','true','include.in.token.scope'),('82f58373-a88d-44e3-a67f-36c4b87a8d9f','${profileScopeConsentText}','consent.screen.text'),('82f58373-a88d-44e3-a67f-36c4b87a8d9f','true','display.on.consent.screen'),('82f58373-a88d-44e3-a67f-36c4b87a8d9f','true','include.in.token.scope'),('84294d37-f577-4eb6-9233-7ae35cd3c0fb','${profileScopeConsentText}','consent.screen.text'),('84294d37-f577-4eb6-9233-7ae35cd3c0fb','true','display.on.consent.screen'),('84294d37-f577-4eb6-9233-7ae35cd3c0fb','true','include.in.token.scope'),('861297de-cbe5-4ac3-9209-45be588259aa','','consent.screen.text'),('861297de-cbe5-4ac3-9209-45be588259aa','false','display.on.consent.screen'),('861297de-cbe5-4ac3-9209-45be588259aa','false','include.in.token.scope'),('94247a81-74b0-4561-a790-41975dcd8d63','${samlRoleListScopeConsentText}','consent.screen.text'),('94247a81-74b0-4561-a790-41975dcd8d63','true','display.on.consent.screen'),('9ba65954-3415-4bbd-82bf-49c7b434596a','${offlineAccessScopeConsentText}','consent.screen.text'),('9ba65954-3415-4bbd-82bf-49c7b434596a','true','display.on.consent.screen'),('9c40b9dc-3d87-4069-ab41-d1ce62a92ad4','${addressScopeConsentText}','consent.screen.text'),('9c40b9dc-3d87-4069-ab41-d1ce62a92ad4','true','display.on.consent.screen'),('9c40b9dc-3d87-4069-ab41-d1ce62a92ad4','true','include.in.token.scope'),('9e0158d9-56b1-400c-b4c9-e400d616a922','${profileScopeConsentText}','consent.screen.text'),('9e0158d9-56b1-400c-b4c9-e400d616a922','true','display.on.consent.screen'),('9e0158d9-56b1-400c-b4c9-e400d616a922','true','include.in.token.scope'),('9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80','${phoneScopeConsentText}','consent.screen.text'),('9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80','true','display.on.consent.screen'),('9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80','true','include.in.token.scope'),('a24d02ec-eac5-4200-b566-c75ca300fa76','false','display.on.consent.screen'),('a24d02ec-eac5-4200-b566-c75ca300fa76','true','include.in.token.scope'),('a580fd66-57e1-4e56-8a97-7a77015f4657','${emailScopeConsentText}','consent.screen.text'),('a580fd66-57e1-4e56-8a97-7a77015f4657','true','display.on.consent.screen'),('a580fd66-57e1-4e56-8a97-7a77015f4657','true','include.in.token.scope'),('a90e6804-7709-432d-9367-368a20e94949','${addressScopeConsentText}','consent.screen.text'),('a90e6804-7709-432d-9367-368a20e94949','true','display.on.consent.screen'),('a90e6804-7709-432d-9367-368a20e94949','true','include.in.token.scope'),('af1d0ff6-80ef-477b-8d7d-58b51cd09459','${samlRoleListScopeConsentText}','consent.screen.text'),('af1d0ff6-80ef-477b-8d7d-58b51cd09459','true','display.on.consent.screen'),('b2a40e00-8701-46b4-877f-d09d957e8180','${samlRoleListScopeConsentText}','consent.screen.text'),('b2a40e00-8701-46b4-877f-d09d957e8180','true','display.on.consent.screen'),('b6fc35c6-234a-4e2d-b3bc-69622678a0a3','${phoneScopeConsentText}','consent.screen.text'),('b6fc35c6-234a-4e2d-b3bc-69622678a0a3','true','display.on.consent.screen'),('b6fc35c6-234a-4e2d-b3bc-69622678a0a3','true','include.in.token.scope'),('bd3a8fbc-9a67-484a-9966-52cf07d25ac3','${rolesScopeConsentText}','consent.screen.text'),('bd3a8fbc-9a67-484a-9966-52cf07d25ac3','true','display.on.consent.screen'),('bd3a8fbc-9a67-484a-9966-52cf07d25ac3','false','include.in.token.scope'),('be4bfa55-4a3e-48db-a7cd-ae045c01f9de','false','display.on.consent.screen'),('be4bfa55-4a3e-48db-a7cd-ae045c01f9de','true','include.in.token.scope'),('bf7128e1-794a-4d8c-8123-1d64255cc634','${rolesScopeConsentText}','consent.screen.text'),('bf7128e1-794a-4d8c-8123-1d64255cc634','true','display.on.consent.screen'),('bf7128e1-794a-4d8c-8123-1d64255cc634','false','include.in.token.scope'),('c02fdc68-891c-49b5-8621-eb5e501bafa1','','consent.screen.text'),('c02fdc68-891c-49b5-8621-eb5e501bafa1','false','display.on.consent.screen'),('c02fdc68-891c-49b5-8621-eb5e501bafa1','false','include.in.token.scope'),('c24e17de-21e2-4323-9b3b-d124f3d65b07','false','display.on.consent.screen'),('c24e17de-21e2-4323-9b3b-d124f3d65b07','false','include.in.token.scope'),('c5afdf64-4e09-4b8e-bfb4-428943acd15a','${samlRoleListScopeConsentText}','consent.screen.text'),('c5afdf64-4e09-4b8e-bfb4-428943acd15a','true','display.on.consent.screen'),('c5ea99ce-48aa-46d4-8bc1-780e792fd833','${phoneScopeConsentText}','consent.screen.text'),('c5ea99ce-48aa-46d4-8bc1-780e792fd833','true','display.on.consent.screen'),('c5ea99ce-48aa-46d4-8bc1-780e792fd833','true','include.in.token.scope'),('c78bc6da-aabc-4932-aaee-e067b9e128ba','${offlineAccessScopeConsentText}','consent.screen.text'),('c78bc6da-aabc-4932-aaee-e067b9e128ba','true','display.on.consent.screen'),('cee1f0f0-1e18-4ad7-b16b-395737bb8d88','false','display.on.consent.screen'),('cee1f0f0-1e18-4ad7-b16b-395737bb8d88','false','include.in.token.scope'),('d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789','','consent.screen.text'),('d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789','false','display.on.consent.screen'),('d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789','false','include.in.token.scope'),('d8e03a4b-ff1d-450e-91e3-4832e73b887f','${samlRoleListScopeConsentText}','consent.screen.text'),('d8e03a4b-ff1d-450e-91e3-4832e73b887f','true','display.on.consent.screen'),('e19e2469-8847-4078-b21d-efa781b72b2d','false','display.on.consent.screen'),('e19e2469-8847-4078-b21d-efa781b72b2d','false','include.in.token.scope'),('e323deaa-6b05-4d40-8e40-553a163a833d','${addressScopeConsentText}','consent.screen.text'),('e323deaa-6b05-4d40-8e40-553a163a833d','true','display.on.consent.screen'),('e323deaa-6b05-4d40-8e40-553a163a833d','true','include.in.token.scope'),('e6ea6fc7-fa75-48ad-ba13-e3d623ab904e','${offlineAccessScopeConsentText}','consent.screen.text'),('e6ea6fc7-fa75-48ad-ba13-e3d623ab904e','true','display.on.consent.screen'),('e89c1a08-6c1a-4954-ad15-e59d3237c8ba','${phoneScopeConsentText}','consent.screen.text'),('e89c1a08-6c1a-4954-ad15-e59d3237c8ba','true','display.on.consent.screen'),('e89c1a08-6c1a-4954-ad15-e59d3237c8ba','true','include.in.token.scope'),('edf2d7ba-c30d-48a5-8fff-d05ddf158f85','${phoneScopeConsentText}','consent.screen.text'),('edf2d7ba-c30d-48a5-8fff-d05ddf158f85','true','display.on.consent.screen'),('edf2d7ba-c30d-48a5-8fff-d05ddf158f85','true','include.in.token.scope'),('f21cd001-c2b6-4090-994f-c0a49521e43e','${addressScopeConsentText}','consent.screen.text'),('f21cd001-c2b6-4090-994f-c0a49521e43e','true','display.on.consent.screen'),('f21cd001-c2b6-4090-994f-c0a49521e43e','true','include.in.token.scope'),('f2d857f8-0190-48f3-84e6-6f7382d5a898','${rolesScopeConsentText}','consent.screen.text'),('f2d857f8-0190-48f3-84e6-6f7382d5a898','true','display.on.consent.screen'),('f2d857f8-0190-48f3-84e6-6f7382d5a898','false','include.in.token.scope'),('f63d8bdd-364d-4b8c-8e73-54388e3eaeaa','${emailScopeConsentText}','consent.screen.text'),('f63d8bdd-364d-4b8c-8e73-54388e3eaeaa','true','display.on.consent.screen'),('f63d8bdd-364d-4b8c-8e73-54388e3eaeaa','true','include.in.token.scope'),('fb3e8af9-8d8a-467c-9f29-0276302d6169','false','display.on.consent.screen'),('fb3e8af9-8d8a-467c-9f29-0276302d6169','true','include.in.token.scope'),('fbb5b543-513e-4bb8-8297-58bed7bf36cd','${offlineAccessScopeConsentText}','consent.screen.text'),('fbb5b543-513e-4bb8-8297-58bed7bf36cd','true','display.on.consent.screen'),('fd40bdd4-1f03-4470-82e1-dc485805c331','false','display.on.consent.screen'),('fd40bdd4-1f03-4470-82e1-dc485805c331','true','include.in.token.scope');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('0448f589-1100-4f24-a765-54b618d40e09','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('0448f589-1100-4f24-a765-54b618d40e09','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('0448f589-1100-4f24-a765-54b618d40e09','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('0448f589-1100-4f24-a765-54b618d40e09','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('0448f589-1100-4f24-a765-54b618d40e09','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('0448f589-1100-4f24-a765-54b618d40e09','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('0448f589-1100-4f24-a765-54b618d40e09','e19e2469-8847-4078-b21d-efa781b72b2d',1),('0448f589-1100-4f24-a765-54b618d40e09','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('0448f589-1100-4f24-a765-54b618d40e09','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','28696408-7a51-49b2-9ecb-90266e404122',1),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('08342839-debf-47ba-8009-4fbfbd66ec55','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('08342839-debf-47ba-8009-4fbfbd66ec55','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('08342839-debf-47ba-8009-4fbfbd66ec55','2bccda12-189c-4182-9a1f-c573828d79e8',0),('08342839-debf-47ba-8009-4fbfbd66ec55','3957e10c-d7b6-40da-9261-b78170643382',1),('08342839-debf-47ba-8009-4fbfbd66ec55','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('08342839-debf-47ba-8009-4fbfbd66ec55','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('08342839-debf-47ba-8009-4fbfbd66ec55','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('08342839-debf-47ba-8009-4fbfbd66ec55','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('08342839-debf-47ba-8009-4fbfbd66ec55','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('0da694e1-8c83-463e-a2e9-4dad1317b771','09a20393-79b0-480e-ad87-1fab7109a4af',1),('0da694e1-8c83-463e-a2e9-4dad1317b771','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('0da694e1-8c83-463e-a2e9-4dad1317b771','267c858c-0480-4182-b76f-4309f172b5f0',1),('0da694e1-8c83-463e-a2e9-4dad1317b771','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('0da694e1-8c83-463e-a2e9-4dad1317b771','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('0da694e1-8c83-463e-a2e9-4dad1317b771','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('0da694e1-8c83-463e-a2e9-4dad1317b771','861297de-cbe5-4ac3-9209-45be588259aa',1),('0da694e1-8c83-463e-a2e9-4dad1317b771','a90e6804-7709-432d-9367-368a20e94949',0),('0da694e1-8c83-463e-a2e9-4dad1317b771','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('17fd93d5-355f-4d86-a035-b11dbb83312a','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('17fd93d5-355f-4d86-a035-b11dbb83312a','2bccda12-189c-4182-9a1f-c573828d79e8',0),('17fd93d5-355f-4d86-a035-b11dbb83312a','3957e10c-d7b6-40da-9261-b78170643382',1),('17fd93d5-355f-4d86-a035-b11dbb83312a','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('17fd93d5-355f-4d86-a035-b11dbb83312a','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('17fd93d5-355f-4d86-a035-b11dbb83312a','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('17fd93d5-355f-4d86-a035-b11dbb83312a','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('17fd93d5-355f-4d86-a035-b11dbb83312a','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('20ee9def-fb35-46ec-a829-59d3a0db7567','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('20ee9def-fb35-46ec-a829-59d3a0db7567','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('20ee9def-fb35-46ec-a829-59d3a0db7567','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('20ee9def-fb35-46ec-a829-59d3a0db7567','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('20ee9def-fb35-46ec-a829-59d3a0db7567','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('20ee9def-fb35-46ec-a829-59d3a0db7567','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('20ee9def-fb35-46ec-a829-59d3a0db7567','e19e2469-8847-4078-b21d-efa781b72b2d',1),('20ee9def-fb35-46ec-a829-59d3a0db7567','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('20ee9def-fb35-46ec-a829-59d3a0db7567','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('2255466a-8359-4209-af2c-4bd3d839b907','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('2255466a-8359-4209-af2c-4bd3d839b907','28696408-7a51-49b2-9ecb-90266e404122',1),('2255466a-8359-4209-af2c-4bd3d839b907','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('2255466a-8359-4209-af2c-4bd3d839b907','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('2255466a-8359-4209-af2c-4bd3d839b907','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('2255466a-8359-4209-af2c-4bd3d839b907','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('2255466a-8359-4209-af2c-4bd3d839b907','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('2255466a-8359-4209-af2c-4bd3d839b907','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('2255466a-8359-4209-af2c-4bd3d839b907','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','2bccda12-189c-4182-9a1f-c573828d79e8',0),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','3957e10c-d7b6-40da-9261-b78170643382',1),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('27704f88-2ef9-4e40-a328-aaadec0b3c98','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('27704f88-2ef9-4e40-a328-aaadec0b3c98','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('27704f88-2ef9-4e40-a328-aaadec0b3c98','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('27704f88-2ef9-4e40-a328-aaadec0b3c98','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('27704f88-2ef9-4e40-a328-aaadec0b3c98','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('27704f88-2ef9-4e40-a328-aaadec0b3c98','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('27704f88-2ef9-4e40-a328-aaadec0b3c98','e323deaa-6b05-4d40-8e40-553a163a833d',0),('27704f88-2ef9-4e40-a328-aaadec0b3c98','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('27704f88-2ef9-4e40-a328-aaadec0b3c98','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('35acd348-02e3-4f71-99da-e20c90ca32c1','0ca53734-3896-4acd-891a-84e68adfd9de',1),('35acd348-02e3-4f71-99da-e20c90ca32c1','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('35acd348-02e3-4f71-99da-e20c90ca32c1','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('35acd348-02e3-4f71-99da-e20c90ca32c1','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('35acd348-02e3-4f71-99da-e20c90ca32c1','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('35acd348-02e3-4f71-99da-e20c90ca32c1','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('35acd348-02e3-4f71-99da-e20c90ca32c1','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('35acd348-02e3-4f71-99da-e20c90ca32c1','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('35acd348-02e3-4f71-99da-e20c90ca32c1','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','e323deaa-6b05-4d40-8e40-553a163a833d',0),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('3b29fb01-1712-49d9-aaf8-4691d7d56cfb','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('3d20ecfe-2a25-4637-b015-532c1729c879','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('3d20ecfe-2a25-4637-b015-532c1729c879','28696408-7a51-49b2-9ecb-90266e404122',1),('3d20ecfe-2a25-4637-b015-532c1729c879','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('3d20ecfe-2a25-4637-b015-532c1729c879','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('3d20ecfe-2a25-4637-b015-532c1729c879','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('3d20ecfe-2a25-4637-b015-532c1729c879','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('3d20ecfe-2a25-4637-b015-532c1729c879','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('3d20ecfe-2a25-4637-b015-532c1729c879','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('5105367b-a90c-4b7e-ad31-15124e4182c0','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('5105367b-a90c-4b7e-ad31-15124e4182c0','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('5105367b-a90c-4b7e-ad31-15124e4182c0','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('5105367b-a90c-4b7e-ad31-15124e4182c0','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('5105367b-a90c-4b7e-ad31-15124e4182c0','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('5105367b-a90c-4b7e-ad31-15124e4182c0','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('5105367b-a90c-4b7e-ad31-15124e4182c0','e323deaa-6b05-4d40-8e40-553a163a833d',0),('5105367b-a90c-4b7e-ad31-15124e4182c0','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('5105367b-a90c-4b7e-ad31-15124e4182c0','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('51fced76-a0da-43cc-a530-7f4f925da142','09a20393-79b0-480e-ad87-1fab7109a4af',1),('51fced76-a0da-43cc-a530-7f4f925da142','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('51fced76-a0da-43cc-a530-7f4f925da142','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('51fced76-a0da-43cc-a530-7f4f925da142','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('51fced76-a0da-43cc-a530-7f4f925da142','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('51fced76-a0da-43cc-a530-7f4f925da142','861297de-cbe5-4ac3-9209-45be588259aa',1),('51fced76-a0da-43cc-a530-7f4f925da142','a90e6804-7709-432d-9367-368a20e94949',0),('51fced76-a0da-43cc-a530-7f4f925da142','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('54d6d676-f0f4-421f-b554-202406a3d2ec','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('54d6d676-f0f4-421f-b554-202406a3d2ec','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('54d6d676-f0f4-421f-b554-202406a3d2ec','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('54d6d676-f0f4-421f-b554-202406a3d2ec','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('54d6d676-f0f4-421f-b554-202406a3d2ec','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('54d6d676-f0f4-421f-b554-202406a3d2ec','e323deaa-6b05-4d40-8e40-553a163a833d',0),('54d6d676-f0f4-421f-b554-202406a3d2ec','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('54d6d676-f0f4-421f-b554-202406a3d2ec','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('55614122-8f23-4650-bcc5-725a2ac60253','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('55614122-8f23-4650-bcc5-725a2ac60253','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('55614122-8f23-4650-bcc5-725a2ac60253','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('55614122-8f23-4650-bcc5-725a2ac60253','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('55614122-8f23-4650-bcc5-725a2ac60253','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('55614122-8f23-4650-bcc5-725a2ac60253','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('55614122-8f23-4650-bcc5-725a2ac60253','e19e2469-8847-4078-b21d-efa781b72b2d',1),('55614122-8f23-4650-bcc5-725a2ac60253','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('55614122-8f23-4650-bcc5-725a2ac60253','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('5ee3c4a9-92e9-4021-81f0-906d65437dce','0ca53734-3896-4acd-891a-84e68adfd9de',1),('5ee3c4a9-92e9-4021-81f0-906d65437dce','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('5ee3c4a9-92e9-4021-81f0-906d65437dce','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('5ee3c4a9-92e9-4021-81f0-906d65437dce','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('5ee3c4a9-92e9-4021-81f0-906d65437dce','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('5ee3c4a9-92e9-4021-81f0-906d65437dce','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('5ee3c4a9-92e9-4021-81f0-906d65437dce','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('5ee3c4a9-92e9-4021-81f0-906d65437dce','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('5ee3c4a9-92e9-4021-81f0-906d65437dce','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','09a20393-79b0-480e-ad87-1fab7109a4af',1),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','861297de-cbe5-4ac3-9209-45be588259aa',1),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','a90e6804-7709-432d-9367-368a20e94949',0),('5fe788bf-1b97-4815-90c3-1ef8da9d9a45','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('62bdadf4-836a-481a-a326-5b7176a508ea','09a20393-79b0-480e-ad87-1fab7109a4af',1),('62bdadf4-836a-481a-a326-5b7176a508ea','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('62bdadf4-836a-481a-a326-5b7176a508ea','267c858c-0480-4182-b76f-4309f172b5f0',1),('62bdadf4-836a-481a-a326-5b7176a508ea','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('62bdadf4-836a-481a-a326-5b7176a508ea','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('62bdadf4-836a-481a-a326-5b7176a508ea','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('62bdadf4-836a-481a-a326-5b7176a508ea','861297de-cbe5-4ac3-9209-45be588259aa',1),('62bdadf4-836a-481a-a326-5b7176a508ea','a90e6804-7709-432d-9367-368a20e94949',0),('62bdadf4-836a-481a-a326-5b7176a508ea','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('65c3c063-c83c-44fe-b21f-e333de132425','0ca53734-3896-4acd-891a-84e68adfd9de',1),('65c3c063-c83c-44fe-b21f-e333de132425','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('65c3c063-c83c-44fe-b21f-e333de132425','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('65c3c063-c83c-44fe-b21f-e333de132425','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('65c3c063-c83c-44fe-b21f-e333de132425','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('65c3c063-c83c-44fe-b21f-e333de132425','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('65c3c063-c83c-44fe-b21f-e333de132425','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('65c3c063-c83c-44fe-b21f-e333de132425','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','28696408-7a51-49b2-9ecb-90266e404122',1),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','e323deaa-6b05-4d40-8e40-553a163a833d',0),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('757bb3d7-378a-4c1f-830f-5756fbd28c7f','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('76abe77e-2892-42b1-bc04-2e56cb6df762','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('76abe77e-2892-42b1-bc04-2e56cb6df762','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('76abe77e-2892-42b1-bc04-2e56cb6df762','2bccda12-189c-4182-9a1f-c573828d79e8',0),('76abe77e-2892-42b1-bc04-2e56cb6df762','3957e10c-d7b6-40da-9261-b78170643382',1),('76abe77e-2892-42b1-bc04-2e56cb6df762','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('76abe77e-2892-42b1-bc04-2e56cb6df762','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('76abe77e-2892-42b1-bc04-2e56cb6df762','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('76abe77e-2892-42b1-bc04-2e56cb6df762','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('76abe77e-2892-42b1-bc04-2e56cb6df762','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('76eb28d2-6998-4436-933a-55d97c399802','09a20393-79b0-480e-ad87-1fab7109a4af',1),('76eb28d2-6998-4436-933a-55d97c399802','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('76eb28d2-6998-4436-933a-55d97c399802','267c858c-0480-4182-b76f-4309f172b5f0',1),('76eb28d2-6998-4436-933a-55d97c399802','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('76eb28d2-6998-4436-933a-55d97c399802','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('76eb28d2-6998-4436-933a-55d97c399802','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('76eb28d2-6998-4436-933a-55d97c399802','861297de-cbe5-4ac3-9209-45be588259aa',1),('76eb28d2-6998-4436-933a-55d97c399802','a90e6804-7709-432d-9367-368a20e94949',0),('76eb28d2-6998-4436-933a-55d97c399802','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('78f8ff86-d160-4a8e-a450-dade12c2546b','09a20393-79b0-480e-ad87-1fab7109a4af',1),('78f8ff86-d160-4a8e-a450-dade12c2546b','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('78f8ff86-d160-4a8e-a450-dade12c2546b','267c858c-0480-4182-b76f-4309f172b5f0',1),('78f8ff86-d160-4a8e-a450-dade12c2546b','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('78f8ff86-d160-4a8e-a450-dade12c2546b','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('78f8ff86-d160-4a8e-a450-dade12c2546b','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('78f8ff86-d160-4a8e-a450-dade12c2546b','861297de-cbe5-4ac3-9209-45be588259aa',1),('78f8ff86-d160-4a8e-a450-dade12c2546b','a90e6804-7709-432d-9367-368a20e94949',0),('78f8ff86-d160-4a8e-a450-dade12c2546b','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('7b7d2580-6eb9-4208-8343-192d34328442','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('7b7d2580-6eb9-4208-8343-192d34328442','2bccda12-189c-4182-9a1f-c573828d79e8',0),('7b7d2580-6eb9-4208-8343-192d34328442','3957e10c-d7b6-40da-9261-b78170643382',1),('7b7d2580-6eb9-4208-8343-192d34328442','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('7b7d2580-6eb9-4208-8343-192d34328442','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('7b7d2580-6eb9-4208-8343-192d34328442','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('7b7d2580-6eb9-4208-8343-192d34328442','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('7b7d2580-6eb9-4208-8343-192d34328442','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','28696408-7a51-49b2-9ecb-90266e404122',1),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('821a7df6-a652-4bcb-96df-5d20ac5a8862','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('821a7df6-a652-4bcb-96df-5d20ac5a8862','2bccda12-189c-4182-9a1f-c573828d79e8',0),('821a7df6-a652-4bcb-96df-5d20ac5a8862','3957e10c-d7b6-40da-9261-b78170643382',1),('821a7df6-a652-4bcb-96df-5d20ac5a8862','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('821a7df6-a652-4bcb-96df-5d20ac5a8862','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('821a7df6-a652-4bcb-96df-5d20ac5a8862','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('821a7df6-a652-4bcb-96df-5d20ac5a8862','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('821a7df6-a652-4bcb-96df-5d20ac5a8862','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('84ba430e-0d33-4e72-856f-478f691833b2','09a20393-79b0-480e-ad87-1fab7109a4af',1),('84ba430e-0d33-4e72-856f-478f691833b2','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('84ba430e-0d33-4e72-856f-478f691833b2','267c858c-0480-4182-b76f-4309f172b5f0',1),('84ba430e-0d33-4e72-856f-478f691833b2','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('84ba430e-0d33-4e72-856f-478f691833b2','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('84ba430e-0d33-4e72-856f-478f691833b2','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('84ba430e-0d33-4e72-856f-478f691833b2','861297de-cbe5-4ac3-9209-45be588259aa',1),('84ba430e-0d33-4e72-856f-478f691833b2','a90e6804-7709-432d-9367-368a20e94949',0),('84ba430e-0d33-4e72-856f-478f691833b2','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('87a03152-81d7-4fed-974a-b2d53d0551a7','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('87a03152-81d7-4fed-974a-b2d53d0551a7','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('87a03152-81d7-4fed-974a-b2d53d0551a7','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('87a03152-81d7-4fed-974a-b2d53d0551a7','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('87a03152-81d7-4fed-974a-b2d53d0551a7','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('87a03152-81d7-4fed-974a-b2d53d0551a7','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('87a03152-81d7-4fed-974a-b2d53d0551a7','e19e2469-8847-4078-b21d-efa781b72b2d',1),('87a03152-81d7-4fed-974a-b2d53d0551a7','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('87a03152-81d7-4fed-974a-b2d53d0551a7','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('89a38cf5-c91f-4da5-b988-7777003ee985','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('89a38cf5-c91f-4da5-b988-7777003ee985','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('89a38cf5-c91f-4da5-b988-7777003ee985','2bccda12-189c-4182-9a1f-c573828d79e8',0),('89a38cf5-c91f-4da5-b988-7777003ee985','3957e10c-d7b6-40da-9261-b78170643382',1),('89a38cf5-c91f-4da5-b988-7777003ee985','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('89a38cf5-c91f-4da5-b988-7777003ee985','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('89a38cf5-c91f-4da5-b988-7777003ee985','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('89a38cf5-c91f-4da5-b988-7777003ee985','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('89a38cf5-c91f-4da5-b988-7777003ee985','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('91afb328-27d5-43a0-8239-2560633fac2c','09a20393-79b0-480e-ad87-1fab7109a4af',1),('91afb328-27d5-43a0-8239-2560633fac2c','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('91afb328-27d5-43a0-8239-2560633fac2c','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('91afb328-27d5-43a0-8239-2560633fac2c','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('91afb328-27d5-43a0-8239-2560633fac2c','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('91afb328-27d5-43a0-8239-2560633fac2c','861297de-cbe5-4ac3-9209-45be588259aa',1),('91afb328-27d5-43a0-8239-2560633fac2c','a90e6804-7709-432d-9367-368a20e94949',0),('91afb328-27d5-43a0-8239-2560633fac2c','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('974eb9d9-d345-4aef-9995-6f05b4943e4a','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('974eb9d9-d345-4aef-9995-6f05b4943e4a','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('974eb9d9-d345-4aef-9995-6f05b4943e4a','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('974eb9d9-d345-4aef-9995-6f05b4943e4a','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('974eb9d9-d345-4aef-9995-6f05b4943e4a','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('974eb9d9-d345-4aef-9995-6f05b4943e4a','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('974eb9d9-d345-4aef-9995-6f05b4943e4a','e19e2469-8847-4078-b21d-efa781b72b2d',1),('974eb9d9-d345-4aef-9995-6f05b4943e4a','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('974eb9d9-d345-4aef-9995-6f05b4943e4a','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','0ca53734-3896-4acd-891a-84e68adfd9de',1),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('9ce54798-5e96-4bf2-97dc-6aec4b0c438b','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('a35519a5-c081-4b6f-b1a6-36d227638272','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('a35519a5-c081-4b6f-b1a6-36d227638272','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('a35519a5-c081-4b6f-b1a6-36d227638272','2bccda12-189c-4182-9a1f-c573828d79e8',0),('a35519a5-c081-4b6f-b1a6-36d227638272','3957e10c-d7b6-40da-9261-b78170643382',1),('a35519a5-c081-4b6f-b1a6-36d227638272','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('a35519a5-c081-4b6f-b1a6-36d227638272','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('a35519a5-c081-4b6f-b1a6-36d227638272','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('a35519a5-c081-4b6f-b1a6-36d227638272','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('a35519a5-c081-4b6f-b1a6-36d227638272','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('a5596fca-63f5-4082-b272-6ddce6204230','0ca53734-3896-4acd-891a-84e68adfd9de',1),('a5596fca-63f5-4082-b272-6ddce6204230','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('a5596fca-63f5-4082-b272-6ddce6204230','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('a5596fca-63f5-4082-b272-6ddce6204230','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('a5596fca-63f5-4082-b272-6ddce6204230','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('a5596fca-63f5-4082-b272-6ddce6204230','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('a5596fca-63f5-4082-b272-6ddce6204230','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('a5596fca-63f5-4082-b272-6ddce6204230','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','28696408-7a51-49b2-9ecb-90266e404122',1),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('ac10798a-f624-4556-9c93-5a4f8ce430c5','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('ac10798a-f624-4556-9c93-5a4f8ce430c5','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('ac10798a-f624-4556-9c93-5a4f8ce430c5','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('ac10798a-f624-4556-9c93-5a4f8ce430c5','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('ac10798a-f624-4556-9c93-5a4f8ce430c5','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('ac10798a-f624-4556-9c93-5a4f8ce430c5','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('ac10798a-f624-4556-9c93-5a4f8ce430c5','e323deaa-6b05-4d40-8e40-553a163a833d',0),('ac10798a-f624-4556-9c93-5a4f8ce430c5','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('ac10798a-f624-4556-9c93-5a4f8ce430c5','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('b42f7870-e157-44d7-88b2-2c10c69e222b','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('b42f7870-e157-44d7-88b2-2c10c69e222b','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('b42f7870-e157-44d7-88b2-2c10c69e222b','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('b42f7870-e157-44d7-88b2-2c10c69e222b','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('b42f7870-e157-44d7-88b2-2c10c69e222b','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('b42f7870-e157-44d7-88b2-2c10c69e222b','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('b42f7870-e157-44d7-88b2-2c10c69e222b','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('b42f7870-e157-44d7-88b2-2c10c69e222b','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','2bccda12-189c-4182-9a1f-c573828d79e8',0),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','3957e10c-d7b6-40da-9261-b78170643382',1),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('ba76f696-725a-40d8-a3f9-ba2e7f4378b1','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','2bccda12-189c-4182-9a1f-c573828d79e8',0),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','3957e10c-d7b6-40da-9261-b78170643382',1),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','e323deaa-6b05-4d40-8e40-553a163a833d',0),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('bdcbf90e-171d-449f-b97c-0478b17a5be9','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('bdcbf90e-171d-449f-b97c-0478b17a5be9','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('bdcbf90e-171d-449f-b97c-0478b17a5be9','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('bdcbf90e-171d-449f-b97c-0478b17a5be9','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('bdcbf90e-171d-449f-b97c-0478b17a5be9','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('bdcbf90e-171d-449f-b97c-0478b17a5be9','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('bdcbf90e-171d-449f-b97c-0478b17a5be9','e19e2469-8847-4078-b21d-efa781b72b2d',1),('bdcbf90e-171d-449f-b97c-0478b17a5be9','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('bdcbf90e-171d-449f-b97c-0478b17a5be9','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('c03f5bdd-6396-4e22-b15a-69107d436248','0ca53734-3896-4acd-891a-84e68adfd9de',1),('c03f5bdd-6396-4e22-b15a-69107d436248','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('c03f5bdd-6396-4e22-b15a-69107d436248','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('c03f5bdd-6396-4e22-b15a-69107d436248','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('c03f5bdd-6396-4e22-b15a-69107d436248','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('c03f5bdd-6396-4e22-b15a-69107d436248','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('c03f5bdd-6396-4e22-b15a-69107d436248','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('c03f5bdd-6396-4e22-b15a-69107d436248','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('c03f5bdd-6396-4e22-b15a-69107d436248','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('cb18e293-11e3-46d1-b34c-d5484595683c','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('cb18e293-11e3-46d1-b34c-d5484595683c','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('cb18e293-11e3-46d1-b34c-d5484595683c','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('cb18e293-11e3-46d1-b34c-d5484595683c','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('cb18e293-11e3-46d1-b34c-d5484595683c','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('cb18e293-11e3-46d1-b34c-d5484595683c','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('cb18e293-11e3-46d1-b34c-d5484595683c','e19e2469-8847-4078-b21d-efa781b72b2d',1),('cb18e293-11e3-46d1-b34c-d5484595683c','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('cb18e293-11e3-46d1-b34c-d5484595683c','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','28696408-7a51-49b2-9ecb-90266e404122',1),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('cb276f1c-33ac-485a-a83c-0b8a41ed23f8','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('cc0ab70c-470b-418c-8081-41c808c74018','0ca53734-3896-4acd-891a-84e68adfd9de',1),('cc0ab70c-470b-418c-8081-41c808c74018','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('cc0ab70c-470b-418c-8081-41c808c74018','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('cc0ab70c-470b-418c-8081-41c808c74018','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('cc0ab70c-470b-418c-8081-41c808c74018','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('cc0ab70c-470b-418c-8081-41c808c74018','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('cc0ab70c-470b-418c-8081-41c808c74018','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('cc0ab70c-470b-418c-8081-41c808c74018','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('cc0ab70c-470b-418c-8081-41c808c74018','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','0ca53734-3896-4acd-891a-84e68adfd9de',1),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('d5bfc5ba-3a9f-4385-997e-76aabcc523b7','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','0ca53734-3896-4acd-891a-84e68adfd9de',1),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('d6d281d4-c0ed-4a66-ac57-0a97be7afbda','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('d950640f-e6b4-48df-8c59-fe9a1e06e863','0ca53734-3896-4acd-891a-84e68adfd9de',1),('d950640f-e6b4-48df-8c59-fe9a1e06e863','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('d950640f-e6b4-48df-8c59-fe9a1e06e863','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('d950640f-e6b4-48df-8c59-fe9a1e06e863','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('d950640f-e6b4-48df-8c59-fe9a1e06e863','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('d950640f-e6b4-48df-8c59-fe9a1e06e863','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('d950640f-e6b4-48df-8c59-fe9a1e06e863','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('d950640f-e6b4-48df-8c59-fe9a1e06e863','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('d950640f-e6b4-48df-8c59-fe9a1e06e863','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','28696408-7a51-49b2-9ecb-90266e404122',1),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('dc5af93f-baaf-4f69-8d4c-a791b1101ac3','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('debb3226-8cbc-477d-8b51-65a3c9506840','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('debb3226-8cbc-477d-8b51-65a3c9506840','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('debb3226-8cbc-477d-8b51-65a3c9506840','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('debb3226-8cbc-477d-8b51-65a3c9506840','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('debb3226-8cbc-477d-8b51-65a3c9506840','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('debb3226-8cbc-477d-8b51-65a3c9506840','e323deaa-6b05-4d40-8e40-553a163a833d',0),('debb3226-8cbc-477d-8b51-65a3c9506840','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('debb3226-8cbc-477d-8b51-65a3c9506840','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('df88f233-d420-4e4c-8fbe-9781387a7119','09a20393-79b0-480e-ad87-1fab7109a4af',1),('df88f233-d420-4e4c-8fbe-9781387a7119','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('df88f233-d420-4e4c-8fbe-9781387a7119','267c858c-0480-4182-b76f-4309f172b5f0',1),('df88f233-d420-4e4c-8fbe-9781387a7119','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('df88f233-d420-4e4c-8fbe-9781387a7119','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('df88f233-d420-4e4c-8fbe-9781387a7119','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('df88f233-d420-4e4c-8fbe-9781387a7119','861297de-cbe5-4ac3-9209-45be588259aa',1),('df88f233-d420-4e4c-8fbe-9781387a7119','a90e6804-7709-432d-9367-368a20e94949',0),('df88f233-d420-4e4c-8fbe-9781387a7119','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('e539f758-1a07-4e98-88db-8f6008ab3e39','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('e539f758-1a07-4e98-88db-8f6008ab3e39','28696408-7a51-49b2-9ecb-90266e404122',1),('e539f758-1a07-4e98-88db-8f6008ab3e39','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('e539f758-1a07-4e98-88db-8f6008ab3e39','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('e539f758-1a07-4e98-88db-8f6008ab3e39','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('e539f758-1a07-4e98-88db-8f6008ab3e39','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('e539f758-1a07-4e98-88db-8f6008ab3e39','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('e539f758-1a07-4e98-88db-8f6008ab3e39','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('e539f758-1a07-4e98-88db-8f6008ab3e39','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','28696408-7a51-49b2-9ecb-90266e404122',1),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('f28c4cf0-fbb4-42d7-ab96-c88705ffe00c','f2d857f8-0190-48f3-84e6-6f7382d5a898',1),('f3f5cc12-161d-4e0b-82e8-828efbf46220','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('f3f5cc12-161d-4e0b-82e8-828efbf46220','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('f3f5cc12-161d-4e0b-82e8-828efbf46220','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('f3f5cc12-161d-4e0b-82e8-828efbf46220','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('f3f5cc12-161d-4e0b-82e8-828efbf46220','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('f3f5cc12-161d-4e0b-82e8-828efbf46220','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('f3f5cc12-161d-4e0b-82e8-828efbf46220','e323deaa-6b05-4d40-8e40-553a163a833d',0),('f3f5cc12-161d-4e0b-82e8-828efbf46220','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('f3f5cc12-161d-4e0b-82e8-828efbf46220','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('f44e4f74-f947-4342-8791-6bc421d4327e','09a20393-79b0-480e-ad87-1fab7109a4af',1),('f44e4f74-f947-4342-8791-6bc421d4327e','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('f44e4f74-f947-4342-8791-6bc421d4327e','267c858c-0480-4182-b76f-4309f172b5f0',1),('f44e4f74-f947-4342-8791-6bc421d4327e','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('f44e4f74-f947-4342-8791-6bc421d4327e','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('f44e4f74-f947-4342-8791-6bc421d4327e','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('f44e4f74-f947-4342-8791-6bc421d4327e','861297de-cbe5-4ac3-9209-45be588259aa',1),('f44e4f74-f947-4342-8791-6bc421d4327e','a90e6804-7709-432d-9367-368a20e94949',0),('f44e4f74-f947-4342-8791-6bc421d4327e','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','e323deaa-6b05-4d40-8e40-553a163a833d',0),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','fb3e8af9-8d8a-467c-9f29-0276302d6169',0);
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('033e36a9-52e2-4a84-a0a9-7d9205c92757','45c60d86-8697-486b-90ac-fc2d0fc2fe59'),('40b1e47f-3f24-42c9-b98c-990fde880aef','4e7d9fae-5d88-45a8-b995-b0ed8fea97fa'),('9ba65954-3415-4bbd-82bf-49c7b434596a','359e7850-aaaa-4a1b-bf65-f0973915720f'),('c78bc6da-aabc-4932-aaee-e067b9e128ba','08e28e12-5297-4fea-ac7c-447e61e9c043'),('e6ea6fc7-fa75-48ad-ba13-e3d623ab904e','aad05f9d-02fb-420f-aa79-b5c026e7ab88'),('fbb5b543-513e-4bb8-8297-58bed7bf36cd','bee883db-229f-472e-8097-78bf12542d2c');
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
INSERT INTO `COMPONENT` VALUES ('0156fc43-b796-4b5d-bca8-29b8561fe4b8','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('0d851125-c7cc-463c-bf0c-6c314ed7147e','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('0e402fba-74f0-4bec-b7c2-44d4167cb3d6','Trusted Hosts','040bafd0-9c40-449b-9e25-b760eb822e74','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','anonymous'),('19688296-a905-4554-9d0d-35a11e51756c','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('19c645c0-c9e6-46fa-9ad3-04e7f04acbac','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('1bcc2a07-9a19-46de-a5a7-eb38f2075215','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('1e33f47b-4426-428c-8f49-4c47d7df0caa','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('21e468c0-bb7f-4524-9b49-bb48de4767d5','Allowed Client Scopes','040bafd0-9c40-449b-9e25-b760eb822e74','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','authenticated'),('22131721-fbf8-44c3-9eee-d254b841dfc7','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('226afe92-b2ca-4403-ad13-af703a003e0a',NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','040bafd0-9c40-449b-9e25-b760eb822e74',NULL),('23b57c3f-905a-43d6-a22b-ec64392d7826','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('285ed19e-edbd-4a99-8c8e-3390c71e1a8f','Consent Required','040bafd0-9c40-449b-9e25-b760eb822e74','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','anonymous'),('2b45879a-eb40-491c-bcf8-1a8d914c1a10',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('2daea004-eedc-4ccb-98d8-851eebefd692','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('2de86059-18e2-4a48-8b4c-f35795af3707','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('2e2757a6-d38e-4909-adab-dade92bee9d5','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('30154c10-95e9-49e4-923c-077a76e2cdd0','hmac-generated-hs512','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('3091413b-980d-4882-924e-4a47c851ee24','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('316de8f5-fe6e-467a-a9ab-4f5902f498a5','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('3c5c604e-bea8-4752-89db-ab2cd0f3502b',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('41719d66-5dbb-4dd3-9880-2b244088186b','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('488f09b4-908a-45c8-9831-42dce5df176c','rsa-enc-generated','040bafd0-9c40-449b-9e25-b760eb822e74','rsa-enc-generated','org.keycloak.keys.KeyProvider','040bafd0-9c40-449b-9e25-b760eb822e74',NULL),('48cbed14-1543-4d8f-a1a0-7873724faa09','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('4a606766-d40c-42cc-8876-351bb8685c11','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('4a8e2e98-d5b0-405c-bd95-71ea581e30cf','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('4e819bb8-51f7-47f5-842a-eed2af8489d9',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('53ad9273-5fc6-4d3d-a4dc-deecb104ed32','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('53cb8bf4-f2f2-4345-b17e-d6d4eb882897','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('5c2b2182-f54b-488b-b56e-5bf7e7856cda','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('5caa969d-97c9-4609-b7d5-9505d7f560a8','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('61e34769-6b70-4054-8bb4-23466bd2c8f2','Allowed Client Scopes','040bafd0-9c40-449b-9e25-b760eb822e74','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','anonymous'),('62faa5c8-f134-41ed-b6c8-382c35aa437e','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('63defdd1-4b24-4d42-a7de-2662a08ec1db','hmac-generated-hs512','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('6622b532-ff23-4465-8d3b-0400a7c1eacb',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('6674cf36-16ae-448c-9acc-366f16e4fb4b','Allowed Protocol Mapper Types','040bafd0-9c40-449b-9e25-b760eb822e74','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','authenticated'),('66f1feed-84de-442b-b593-f1eb10940d07','Max Clients Limit','040bafd0-9c40-449b-9e25-b760eb822e74','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','anonymous'),('675bb60e-f93c-4c69-940c-b9ded84f6925','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('690c5c41-97b2-4564-ac73-072c554532f7','hmac-generated-hs512','040bafd0-9c40-449b-9e25-b760eb822e74','hmac-generated','org.keycloak.keys.KeyProvider','040bafd0-9c40-449b-9e25-b760eb822e74',NULL),('747644a3-39f6-453e-a4dc-71f95b633558','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('74cf383d-92f6-4e5a-b47d-f7317c2f32ad','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('7528bd9b-2719-4588-b550-a4bb6249898c','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('763b6b68-4ac6-4fef-8885-af895e658751','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('7950a778-a533-49b5-866f-06846c9d4712','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('7aa6d0d1-4e89-4d3b-9bd8-752e4eeda2df','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('8178b922-06fa-45b0-838f-bdcac9158d04','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('86566a80-f2d1-4cb3-a3c0-80e4eea3b5b5','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('914b8415-8cdc-483c-9266-07c1f8b30c45','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('92246ac4-1e98-409d-abf7-b7d96dcb3fa5','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('9384678e-536f-4a39-b5b7-bb96cf297aba','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('97e55447-1d2c-4ad2-962c-10aa02419b2e','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('988ad6e5-7c55-4845-85d4-116fef1a1ffe','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('9f6f5600-b267-496b-b334-db4c6741d7ef','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('a4c9d3bd-3886-4a0f-84da-c03409e906a4','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('ade45132-c8b4-4c16-9760-db03e7d1fe10','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('b3207287-4660-41dc-858d-53f645183745','Full Scope Disabled','040bafd0-9c40-449b-9e25-b760eb822e74','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','anonymous'),('b48bc087-3e06-49d6-b733-9d5844c76fea','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('be00ac2d-0b9f-4251-b0f7-fca1f7ec89db',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('beefb020-1f43-4460-bdaf-32b3d57961b6','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('c050d01d-5aad-4211-a17c-b7a0035cd94e','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('c0bb453b-f53a-48f5-8f39-c6bf07accde1','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('c14bf34f-5a8c-4bf6-acb1-f44cddcaeabf','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('c74a7eea-2b7b-408f-9dcb-22e8c5af417e','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('ca5903ad-7c41-447e-ab4e-58a0aa514c00','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('cd57c7ae-1ad4-40ac-93ac-103dd18fb1d6','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','Allowed Protocol Mapper Types','040bafd0-9c40-449b-9e25-b760eb822e74','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','anonymous'),('da806982-23b4-4659-8801-235ed46dbf0e','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('daa8ae89-d429-4a7c-a47c-26b741403683','hmac-generated-hs512','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('dac0aeb2-12cb-48c4-a5f7-1c8fadccbcfe','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('db657328-30c9-492e-8d14-cda50c6906c9','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('de0816c6-3ffb-430a-94fd-9cad108b6769','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('e34bc2fe-7a56-438a-802e-765dc3bc1b7c','aes-generated','040bafd0-9c40-449b-9e25-b760eb822e74','aes-generated','org.keycloak.keys.KeyProvider','040bafd0-9c40-449b-9e25-b760eb822e74',NULL),('e4c18794-4b8d-4700-b9e3-4c208a111e53','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('eaa0e860-063b-47a1-a8ef-14eeeaea117d','rsa-generated','040bafd0-9c40-449b-9e25-b760eb822e74','rsa-generated','org.keycloak.keys.KeyProvider','040bafd0-9c40-449b-9e25-b760eb822e74',NULL),('edfa47a8-cf84-483b-a233-c70dea5a7cd1','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('f24514ba-ce7c-4d16-a080-ff7b9239cebb','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('f248da25-9ee7-4478-80c9-2f9e340b652e','hmac-generated-hs512','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('f7379ae9-675c-472d-b12d-dd0ca5593f79','hmac-generated-hs512','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('f86b6256-c55a-4573-9704-9ab1554f4212','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('00264093-b216-44db-825d-c92d877800fe','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('01262eac-d717-4b9b-91e2-f199fe982282','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('0237ccc0-19f9-46ca-bfb7-1c0fb9e9f0c2','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('069e8e89-c6ca-4f26-b5d2-2b6c8c70b516','9f6f5600-b267-496b-b334-db4c6741d7ef','host-sending-registration-request-must-match','true'),('07297fe7-b6ea-4f67-8727-5bfac7cf8e55','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','oidc-full-name-mapper'),('088f7bbd-ebca-420b-817f-58491f18f6dc','4a606766-d40c-42cc-8876-351bb8685c11','certificate','MIIClzCCAX8CBgGQun8JMzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDcxNjA3NDE0NloXDTM0MDcxNjA3NDMyNlowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKWMVUrDEeLdsLm5g4wymsfCeDScMb/JRAHfuGpO7rPrV1uLYIH6FynzvUBXTvl7I1MOzwFiz1EctJVh1LEF/z5KhlOT/nsoM/C7APh0nPY4RapE3SBMRsKDbIlHpx7dyGnqOSmUpUXqUVBGX3413EjO75Fsqeb0HB2aLTYnZ7XhhznP7gxYWzd/cGzBUlicgHMsd/Zl/rCaWtvBSdHVbFhPf/8z/oohdbm0IbYwjKuNJlNYHIJnyJdlwfxbOn7iptjAzXuSirU/bdr7YQlraxKov2GuOOhoVUwW+pBCPdbBSwDhCBEaFmT4dtU3FS2CDfeAlQwSLSPKt581vjKW/CMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAJzog8U2Pbz1MbMWcvvIzQmflzp9CkZHDSXFqO1VAwT3/pn+rg7rA4tS1RdgxXXyOZMO7laM2wwWJYE7dolSGQDqvF+Z7b0LLS2AS/UZLwJLZzCLMOwR0huCwmCf+WmE9e3UU93CGvn+dY4mmJPu7yEXVJ4IQJnTf3iBpfQrI/4NxyAcp1vJ0z3bJbdlw5ptA0xCJY9y4l3kVudIDkNyFLuY6Xr7+HVrR+iyCfw1MVFaWKGmHvWBskQFMLZJ0r3ymdp/FQcuA29y/Qm8nByRzCCCff6NyKpDv7ZSpJVFmHjFGNBHWCz/qgZNDyyMDPCbJF7ukYw1NkOg3TEvsrP8I5g=='),('090d4b40-ab4f-48a9-8af0-2dc1e105bc77','b48bc087-3e06-49d6-b733-9d5844c76fea','allow-default-scopes','true'),('097fb38e-05c5-440a-902c-b616dedcde84','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','oidc-full-name-mapper'),('0a176156-d8e0-44e2-8a6c-5ccb8a4ffff3','19688296-a905-4554-9d0d-35a11e51756c','privateKey','MIIEpAIBAAKCAQEAtxGGWkMt+TgyiDfRoCZmi1/YR+LcVqFSdLeiWiYHNsvWEzaD+1iM2WHvl45wpYM4uxQx0EhmcvVO4VzlMUfSKL2VLEzQNPN/O/YdBeqOt7FV4ydNGBVK1U7mfQP+9hsFzYOGhymYKraawz/3YwQE4vD5AjC0wKs7AElVOAa0AwGKRaF2cQxSJD71cJ2/ydzEYs6jLD89G6QOfWKAWrqskvmhy6hhYhnP64BJHBn8FfrRsQKICbjYGSj6P0XJLkTtEksr1i7DrXahSfBW/cFsMN1ynmeqsfBUfmK/cJKp9GBDvVU2aR2RCaDDVoNDASp3tYj2Txt+5TLvxTWhFHOdjwIDAQABAoIBAC51jBssIWa2FFztjY2PMUb9s+3KbRCvMDXexJ0MOZh2coW9uBD5kAU7DYrw4zWd76/KmDm7pgRWrQYUhTXUfElKk6kCdXR6tzeIZiUyObX0k09qke4iuTMZKvVfJj1e7kIRtvpmW++7F9ulSCsgwfy2GvurULP0wKx5796gFN8N/ic603e0TC2GkLafwerlxa1ed+1pKUq57tphVIqHm50aTFHBjxSiuUsDXbRnxj7jZQK7MMBgouMxRpaUB/o7QuG5rXydNsZggBmTOA/h4I7aFW5cPAJhPFCLYNYLtefw3whRuCaHzOpbVAPvYoFUoN9TlT9nn+OkJ7Tb2U91UwECgYEA9z+M4e73i11JHCFvnMrZGTBGTVBeB3RU5njIqgOH8+ccLxH4pKe/CDlHwYg9554xHEvU2y/herULuFHej8CpYdFvNeZCZppvTx+RKa5GPe7mOEMbd72hiFDQV9H4fIR925mKSl8MVc4pOxCyLZyDChzk7ljkrvbwQm1AsRTwZr8CgYEAvYxoJeSX+tXw08+6IlbwNFKbdo2r6V9ZGyU6q24Jn1sesDsinD9v3kPRsyvZNP8W2tuCVtjVtrqdajHzIRLt92nLGmlqxa9Mq4fH8M2K73Jw0g2yPg7TENxOiRc0pwoR1Hs1Lmfl1ZyeGVaiUNte3fVqs9BWGYQOC+WCM+sXzTECgYEAoiEzIeiQvPuD+IVYail+KQ1F3Gbp8dtv3N2xQAMmwGJ5UchoEpjJJPxiuF69sUdDjvmO79g69DsKH2jYF83PhIxQb7i5LAzzFqBtkTZtaylgH96pgWCBLyFHLX9LgWNkIH9TdqdTMGULFmdBX7V1HEmMOVtjQfQ94mE//Z7scYMCgYEAqdut5O8hxpV7l8QZ7/XqkWjJigbQ3HQmXK4TElasZtJ4AMMtc8lhTVOHEsGjhttlNsDo3zy232YB9I1IbAYTm9iBOmznUrmRwlEOOltnOsZaFdJSPUx5li1mb3GNLHdYnQnAEZLnonIUN26sTDsZm1v2v6Zd0cXF9KE5+Z6eGLECgYAN/L3KadRXWUlQJFRJtCYvpOqv8bUglWpuNdv8eZtoRSlUypTjZGXOxSfwYzUaT5NlJTF709j7Jmb0wkBZZQg9nTstAZY6w6rMLL+88VqeF2nzK5CEcUpREv548QRJfIaUI06lgIH0IfLwS3sZDVX1Mn4WXmMgFlCJq+Mu492ilg=='),('0bef5c35-491b-4346-b54a-b36f85c999a1','1e33f47b-4426-428c-8f49-4c47d7df0caa','secret','8YM-g6mCOpNqDp2FC43-_g'),('0ccf06c0-ccd7-4e7c-a6c1-65c75c4bcb69','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('0d48f2e8-7f73-4ab7-952c-6931624184e1','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('0e4cc860-ad98-4c83-a31a-8e10409f7d52','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('0e933dd0-1f39-447a-9b45-1781435be1ee','23b57c3f-905a-43d6-a22b-ec64392d7826','certificate','MIIClzCCAX8CBgGQun6ghDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDcxNjA3NDExOVoXDTM0MDcxNjA3NDI1OVowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOEY6M5hqT2R3yDdl5Mm5TQ5ZdfbEt3pYcQGjRxr4RHsskat7X/lbK8xy+XIuzFPfYok7GFIxI6eiRGVQvmApr3c5OHJTlf27nuuI9fTz4ht44rwJg/RyY4eck3uSd3djPN1TSnP9S+tQlW9rh4xE9O2CqPW8wOV+g+XsTvfFosPfZGo1vS6IHOLREsP+UNPU8nM4xsn7TMjDEIebP98IeXKvlhM4Q7EE+XOeFJd7i9/Nk5V5PV2Dr0d4i9wEDnJGtWPAwmcczuGQOBePHISIC2rWNUFZG713XKD2uEkobxDRFrvIyFNVF0YVf7XS29mIdRRbRr2i/rkAB7YllopqVECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAPvf21zW1uoQezGIKB3ysCvU+aP0ftvzs93fhV7dZn7aVswHXYPv49i/vGiKZ5gBXwZic7wV31N0TGmVFcWaQS4WlYQZn17kl/3TB3fm7DpqrMAjgLrhB4w4+X5FoiSjoKi9NcJlJu+WnJT9IuaAuY9sZU8TXM0h6eZRTptrLT42O0HpqnUrByg8Z9FtB7vkazzptR9glzJ+v4n/O20SxqORGVhUW20puBZWCWooq5yNo+IrdKvcDBMmDQw25Ofcl+hqLy77aLWXVn114RS0blISj5F/jvmJ0p5qv7TajocwiAwvDLlkm2l/itE66JpL7nVdKLjFldTR5loZQBwN9rg=='),('0fb2ef9b-3cf9-42a5-b907-7dad7d806b68','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('12ed129e-ac58-49a6-8f8b-439ca6ab46eb','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('16d05fcf-0b60-4899-a7b2-f032d82f8075','ade45132-c8b4-4c16-9760-db03e7d1fe10','certificate','MIIClzCCAX8CBgGQun/F4zANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDcxNjA3NDIzNFoXDTM0MDcxNjA3NDQxNFowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJV+OprQf66fDiLaAi10pnGkl8rzTqNCpnlPyJ0OCwlp/ZAlzRbLwlXlgIkYgPwBCOmF8/eBDO9LF/iaozFdrBTXfBZg5pOAmadvDhiJhhG1VjJK0MR5pjsbMW9YJ54CwmRV0lwq9W24bmji05x+/Bp2GFxzYluavAMyRrRt3dXbVusqE7hQOSKYq1bpuo/Uqc8wP7gbN4uHwEv7BGOejBWSXPLJHG0U/1brbXf2hznjOWVelDJ5Sp4tofZdz1Q0Gn1G5TpkfaJwOVoqVCeDfweip8gfzQQ9GP/WCuBZB3x8RS5HRtErrKWuGk6917+5tGA9JD0Hr72JuB3Op9xsa90CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAQ1n/kfRf6fyfECn3tHLvvAET1AWMaPOdiZ+Nk/c+2+f7iPIx483GqNfHAL0WRl/MaFABFwPE5nDa+3nxES7JcOfbuotqCv0WQzZfN/KHSAWrMrVtekWs8CWdJsWxAXJ4dz4Dd9uTtJ7AFUM897gLETzupnxZRk0NIUahvtJRAm8m5kcvCEQnJCNwNIrovBZ/kn+hzyiMs/ym75FSGITmg0M3LX9QHCPvD8AAhGJj9PiHZFKOBdx17SwOxk9gfWF2gBIIwt2AOAWWtBfwi6sb0gKgZIYwkmclBRVP38LCpR6lnurGlyr7/85v2Ch2lRgHE1ADpdXskSBdrCayOXcaOg=='),('1959c6ea-4cd5-49ff-a53c-e0923f3e39bb','eaa0e860-063b-47a1-a8ef-14eeeaea117d','keyUse','SIG'),('19af4c7d-d12a-4597-9d11-af8fa77a47d1','f248da25-9ee7-4478-80c9-2f9e340b652e','kid','61622d39-058a-45e2-8a80-70a254010fc5'),('1a06ffae-3503-431e-9dda-b86d76723a0c','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','saml-role-list-mapper'),('1d58eaa2-0d39-4f7d-92b0-6d75ecd40b0c','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('1d619127-76b3-4b1d-b1f6-f4cee4d0ede7','988ad6e5-7c55-4845-85d4-116fef1a1ffe','max-clients','200'),('1f132a00-21d7-4d83-8ba9-5eee373e1691','eaa0e860-063b-47a1-a8ef-14eeeaea117d','privateKey','MIIEpAIBAAKCAQEAmutUK0BBe/oazn8HVR+xwvhRk7+DuAN+SxuPZoKoe+S0hkdraTXU/t/SA2MQrGiO28O8Ng08oHsuCItjdI4EQxrOy6RK65Ed2sTUWbUhRik4QT7jb2IAdq0BgKsrgXDb623jB7IB3EfBgHMLsaRvwTYZ+faR5Wt6IsK4aNowXjO7HEuLLYYdDmfbIWSwff0UZZrQ1YfJJlkDhlI3sMyzZ8Go7pyd4mkKskDmnubBw9OPDNG80D/uRAQnHlaOkMwaIR8jyN867cQe+iRnlnrmLA3QtO5L0QkrW6F3jRJDZEK9mNZDmvuuklQ/bvj4swm3JWS55EqJjTp0n4cbmPWjlwIDAQABAoIBAAEut71KesTjbziwLK6nVyZLjodB+jcFV1xjg/cyxbV01NZeqeR3FY83OOv0GqUNEUMf1r5wIsxHA9TYPEUzBbfJoZ116CbvwOiaTWKk8jPxp9MHhZS3TyNDbeAePJTU7biDMZo770n1w6m9Wp9nck33clzB4NpJUazhGeBSRXEFSlIr1/MIr+0zRDRArJBYk1dHzniBOstTqVu3AHnDhJfacdvufmM7dwu6+dISXWKqOzutz2RhVh7exe0vYhpgIAHCXXixHcUlu/KnDo6dH+G28PUP6WQlo+oX1baBPUkWdmTKpU4cxNNwyHY5nHRTbLDD5WOseqomG6mmtZLiOi0CgYEAx8KjP6lZe0VMC9Aj+bomCDYctFS/RLx2ytIu4HaGL0PsmVk0a0Ugo/igGcXGU0QTiHfBrbxROE/LZyNpkGTE8ityQiw5rbWUXIKOLfF3Xb+ZJxFFEkxAKBf6yAyHr4kBmIQH7EM/0NXfIh3LHQL5GHsuUo0o4/xB9lNxXrlMCGsCgYEAxojagiDOKGfrOSVXm/uAoG5Jewvs0mh+hj2f/OjL00zbfcJbBcSGvYJu1KuxuaoIgB9Moww+U3CfacVkq+wORs81Kh57or+vc0UGaO6wbp/fkbB76TWsuwjyXP4pz9HxxpIUhm8h5dYEj0q3aLogAH4l32VqAokix/E9BKlAzIUCgYEAoP+KO0DuUZ/kTpEOrbMN/AhA0kaLcYbD52vHRDnCpE2GX4G58crhJ8a2oo737Rws8gwzGSdx/oSxVwr/hdTxtoy1pgem5Q436OeAWB8JKZHGieotVTYHb0kEYj9XDG7LznR7PjxlLpdxIzoH/fXrdYOyLe5/SmCBeVp/QOzvDskCgYEAswy/jDZL1zMJeAtOfNWQxp9QU9GIbqZg3W58eFn3YQRiu4NqFcSNBCK7E8AY0+oeKnaP5khneVcL3hdw2IBWy9OaDfdZ54hakmnBAyepJMu4lKsGxWdr9W53Lhjm2o9sLnqWWjul5aNjj1uCF8gsjmU2gMf0mH7XSF0ve6GtWAUCgYB/eFydrIIc3upJlotq4+7R+XxXCpiM3iWeC8SDF/qN3vc3gfJAb0gPTKZU1DSYYrs2MOyyBAvXYw9BEx0kaMiiwtw7CnyeI8CKKeA6FFriCep+Ddp3fXieqOUfEExCAfatPkE3r5dX7zxkjF3ddx8iZ1/9VBEngIhrAxJzVOSlsw=='),('212b3151-9e63-4a47-9973-ada0b4a9aeb1','19c645c0-c9e6-46fa-9ad3-04e7f04acbac','certificate','MIIClzCCAX8CBgGQuoAe3DANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDcxNjA3NDI1N1oXDTM0MDcxNjA3NDQzN1owDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMt6kgBrJJUP0RLtMJN3RaiEXXXmZSkpZ02fhAUSQZyCfEhObctSqtSi9IA0bYXD8wu/JqFLWx0ZImiGzXp2ULkS8hnFlUEV1Ox5NF0fWHDUwykMQ5t44FlZv20sunAntHSBazxFarHKKwR4zrNsPA33UXMRs7m1H7gq9lQOBesMPYeOmRurEW1hxA4UxBiLwGppiUlys2IFXIAN2nbFdfyxTBUMck+/AxtdZ7/hxh0NG4oxBDdFOWPwbcqxv7CCwvCb9gDqQoi5HR9geQq4Z1nw4e7CJeXZW7+pH89GLuH+RMPdujXmvDBazRQyhG4mSpuHIr+PcFgS2X3nU6/adH0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAS0Avapwribsklr8Nf6DKrgeRCmgm/OFd3f2nUuuTCPW3w0QNsmLLDVsNVaJb2OEUWvBgUIq/m1f1lgRC+7SKMTph6J2LV+4RLbR+W0VogCnLGG/NszYfm+ZrKc48qbZK86PtYQW2RPWVEgXV5HMKR9+QFYulsKHzQHiDpVPfZbLU+w7FQFl3XfB7AZhLBewYC03SSp0jxrUAWGCh9g6/AQ28Tc/jgUNuYkvHslOo4AoObPCnWnZTtAOjiVHmAC8FXMRoL0glKJhEYrIrf0xPvJeNFbeTaLBXRVSwoPDzdFRfqhyutq8zSjvBm2RBT2oxnOe05MwqM9hduZYq39/LXQ=='),('216c919a-7c91-4a7a-a81d-0e47618a8467','488f09b4-908a-45c8-9831-42dce5df176c','keyUse','ENC'),('225a864a-a611-4b34-b3dd-89b81f82a831','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','saml-role-list-mapper'),('257c079d-4e95-411b-910b-770d65b2f4a3','63defdd1-4b24-4d42-a7de-2662a08ec1db','algorithm','HS512'),('25902274-2a5f-42ac-98bb-0f62a54b3315','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('29844f44-0ea9-4aa3-a268-f7a92985415d','4a606766-d40c-42cc-8876-351bb8685c11','privateKey','MIIEogIBAAKCAQEApYxVSsMR4t2wubmDjDKax8J4NJwxv8lEAd+4ak7us+tXW4tggfoXKfO9QFdO+XsjUw7PAWLPURy0lWHUsQX/PkqGU5P+eygz8LsA+HSc9jhFqkTdIExGwoNsiUenHt3Iaeo5KZSlRepRUEZffjXcSM7vkWyp5vQcHZotNidnteGHOc/uDFhbN39wbMFSWJyAcyx39mX+sJpa28FJ0dVsWE9//zP+iiF1ubQhtjCMq40mU1gcgmfIl2XB/Fs6fuKm2MDNe5KKtT9t2vthCWtrEqi/Ya446GhVTBb6kEI91sFLAOEIERoWZPh21TcVLYIN94CVDBItI8q3nzW+Mpb8IwIDAQABAoIBAB/5IhH96erwmSzNrR/7OBSjtRaoIh2h8B4SiOoTU5vxNJ6MJTgFRssF9cPC+RBLHY/xmL5ySIsoaaI+UldcSqdLunTS7P/5TErOu0nBL/2H8cCIa1LNGI+B1YkQCzF1cTsvjxm+SUtfDZRc+x2DpodzXCawn4HpHLME7315j9i7Jet/3VHhaeWNK1t5ayirJvQ1EJQ5lfltQOZwnq7o2ZPZBJdSkAwg/5dOiMfgbNlzvEPglMNYLng9cztQf2DI4w1gDGn4zfMeo0zUxDmOLjTwOC+NiQiQ9my6WaHeIKs0YYEFyPTNcMChGGqe18Sqk11JKSsANA+X8MYCb0qjHKkCgYEA3QykKtkwVsJAfcVkTOiHSThez6lny6knAiT0lRz7tiHrrG64ANGWeeFZf1uIf0L9tURt5O0pP7Vdubqjx7cTOMxrRJq7fCi/NFarlaSH74H0awnCK5G7CUjw5zH+Qrv8vHhaa2auK6sUMPumAObM87kWRT/YeaiO96epKLDv05sCgYEAv7kvGnI733eFFzAHga3ienswlUC+SKZIxqyi1lm0f2sinyoKcIZvI666ZgjNEek4kfZaxG66AMJR571JpvSqETMDQLwWJpuyxNvVsa5wd4xTwHYvP5st/WSrPa9aY74qd5b9t+hAgKI2CtGAcj37wi0Xh/McYiuTmb4QpfK0FhkCgYBcgUfKbq2eARjACXUaAk1rRN3YhYpcXmNmsFRyeniUFcnslUEHhq40PywW8hVDPKOz0fkzTlRuxtV8PjEACQtQP6u8QAypvtuVaZfQvdPtVTMWADVzyj69efrmpbND9iukK7GbNJM6zxNaFFW6Ftw6OoCpZjiPYQzDczSFRNZ4dQKBgE857TcWgZtkvoDIfjGec3p9saPbr0ZCQMyoxlmhlC8bTKFNNCcvxnmOWMSVWnjOUWwvy25k+0QZCNOkquztKeIVnICBuP2XVZZ36aSVGzCrsmhT7k5wh96wXPsOnWGeUdo9cPcwaIc/gOmTjWqoJoMlMxYg5lfC/imIG0UYOEbxAoGActx9nhv7+GxnMfw1uodoYDu0QVizggI8bLCaDKjIPOFaYwxkHVHNQoF6syNVOeMJm3RrGCUh/g8MjnJd3K9aSUTPv1lJQwE8IiibfGK3G0J29ZWZfU79dLPCELwPSqvpWOcA1K5TjDOE6XQadrqZSEkjfP73c90qMlH71Yl4ivM='),('29a70e69-d5ab-4cbd-9e2c-581c1423c9ef','1e33f47b-4426-428c-8f49-4c47d7df0caa','priority','100'),('29e6d92a-379d-4b38-8591-d2e262cbbdaf','97e55447-1d2c-4ad2-962c-10aa02419b2e','algorithm','RSA-OAEP'),('2afe3692-8f7b-428b-a0e9-7f61db9d015d','c050d01d-5aad-4211-a17c-b7a0035cd94e','algorithm','RSA-OAEP'),('2c1b83b6-ca57-43b9-8e91-06c1cb151f61','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('2dd0771f-1445-4331-b854-026425503ca0','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('2e1bd622-7f78-491a-9ee3-edab31831374','ca5903ad-7c41-447e-ab4e-58a0aa514c00','allow-default-scopes','true'),('2e55efc0-4eba-40b6-b039-1b87e4a86b9c','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','oidc-full-name-mapper'),('2f213153-5272-4678-92cc-82f7df177f75','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','oidc-address-mapper'),('2f6432c1-b0fd-4454-9de2-07ba9760f550','30154c10-95e9-49e4-923c-077a76e2cdd0','kid','04cd2cbb-ac17-477e-9f1d-503799dc0b34'),('30169e05-c5d5-4de5-8a2e-0d41cc3d15d7','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','saml-user-property-mapper'),('30261803-d719-4376-b9cc-ee1928d6f186','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','saml-role-list-mapper'),('311ea421-5eab-433e-ab47-6dfc8d362c33','f86b6256-c55a-4573-9704-9ab1554f4212','host-sending-registration-request-must-match','true'),('3534221d-94da-48ad-b792-361e8a2c99ed','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','oidc-address-mapper'),('35d03f39-2ee6-4998-8f22-a321286fb92e','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','saml-role-list-mapper'),('36ee7710-6c40-4b9f-aa68-87770218c39d','ade45132-c8b4-4c16-9760-db03e7d1fe10','priority','100'),('38a20946-40c6-4053-bcb0-d809b0970412','1bcc2a07-9a19-46de-a5a7-eb38f2075215','host-sending-registration-request-must-match','true'),('3c74ec9a-f9a5-4352-a4fb-4b89f2e75192','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','oidc-full-name-mapper'),('3caf7ac3-372e-41cf-9853-b3563f678a17','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','saml-role-list-mapper'),('3ebf8b4a-5c0f-49b3-bc4a-2801ba41336a','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','saml-user-property-mapper'),('3ed22086-2fe7-4740-b19d-fef9c1549477','19c645c0-c9e6-46fa-9ad3-04e7f04acbac','keyUse','SIG'),('3ee14844-dfc7-4474-b2a6-9c510050b402','1e33f47b-4426-428c-8f49-4c47d7df0caa','kid','b873d63d-f835-43bf-8c64-b09bc98390a1'),('3eeaec68-1a16-45c7-b878-18fbb1e4624b','daa8ae89-d429-4a7c-a47c-26b741403683','secret','RVYVJYNjLZx8fNxDnMrXBxJaRxuULOYMWKfTKWnS41yikpa4-qrqfagHn3kaHUquF04CsIFvsl4ESyhgv0IAxshWhVepBiaXHWFOd0VsZXtYYn-Ul7yVCUe8crM2JXrrLY2Z1qF4piLPVmRUF0AcgvOHXiCo2QyBlYiIsX60klU'),('3f5472df-478f-452e-9e2a-7bbe51d4de59','7950a778-a533-49b5-866f-06846c9d4712','certificate','MIIClzCCAX8CBgGQun/EaTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDcxNjA3NDIzM1oXDTM0MDcxNjA3NDQxM1owDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMbgBpOfLKJ1TKuooogFVWVwnaJLzp3IS7jPumOGfDcgXYgMRmSZWfRXx7IZaqbYPmeBJ6PUY/5kBbCwE59C/WcCMaykPKeVU4Vrv0D4lNfVTCf3Yhh3B0RarkgQ3T84IVtn08VKNf1P0kcS70I8zb+Suph0BAs5uyTyvM4gRiKnUh43WsGajZiLq2f9f4dc8TA9BOAHdy0McEQyoxiiIURlKL9RfsFq3FWK4dYGOr58KUOoiWklulf3NWwd1GGy70gnKgjLwB4Y2tU1Z94JGDiQwzEA+hve2nyUIqkkXIksNrVfjmKbKWXZ7oflzZI47RePOhbl2uZg3H7cWCZsJx8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAJ8VglszFtc2VlXfCkh+B8OWZaTrfkhHBxlbn91+Og7TjqZI+9EzcLmlsPpEChAK7fsbgXo8nnk17xIPy/O5fgMZNLb6VGto4QfrbPwSdX4jlLxZduZptRv1o8kQyt7Lgwh/h3/R5oe5x3SKqkgYQOI9muCmi0BCMrah2SAxDeR3wxsFVlJDvTwUgc7bFe3sBPGlsLR43tQfvgWF1XJPaIHA3tn5xDO2B1kGskmlOIigQdby2kSnNKFb1NgOscQvP/EAbd27ZS0jPDcjrDfZhH6/0TY/Lac5Hrf9RQfqWbl43SIBlOmdHls6FUKa0Pr5N/trK/K3HP+2heOBBb9nlGw=='),('3f5e0dab-9828-498e-b8cd-b0ef6ebdd56a','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','oidc-address-mapper'),('40585ceb-99ce-44bb-bd21-2617cf966cd9','4e819bb8-51f7-47f5-842a-eed2af8489d9','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('40c5179b-f8aa-424c-a38a-42d042bc7155','19688296-a905-4554-9d0d-35a11e51756c','algorithm','RSA-OAEP'),('415563ff-7e97-4c1d-ae9e-c318fa3611d5','eaa0e860-063b-47a1-a8ef-14eeeaea117d','certificate','MIICmzCCAYMCBgGQunrWLTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNzE2MDczNzEwWhcNMzQwNzE2MDczODUwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCa61QrQEF7+hrOfwdVH7HC+FGTv4O4A35LG49mgqh75LSGR2tpNdT+39IDYxCsaI7bw7w2DTygey4Ii2N0jgRDGs7LpErrkR3axNRZtSFGKThBPuNvYgB2rQGAqyuBcNvrbeMHsgHcR8GAcwuxpG/BNhn59pHla3oiwrho2jBeM7scS4sthh0OZ9shZLB9/RRlmtDVh8kmWQOGUjewzLNnwajunJ3iaQqyQOae5sHD048M0bzQP+5EBCceVo6QzBohHyPI3zrtxB76JGeWeuYsDdC07kvRCStboXeNEkNkQr2Y1kOa+66SVD9u+PizCbclZLnkSomNOnSfhxuY9aOXAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGT6yBoIqQxMV4P7cQTt2x4hHo74i3bz79x0szdmmVRTSNZDeXUDH1MG/SQNdz/uA+PNBMXr6QYeRBJ7XiOQxoA1odgt8GC7fXOh+opi6ahG9IaPmXAmXXdijh/XHLnzbmzQ8Z7IPtNAZHeK2UO17685SQRfQJL7IYCY3ojC8PKjVgPTW/2lBKA+GGyGB5PtINOJBk1NrUBrjK6m5oKOOD13ZMiuBYj2htTv3tAmciHmhAwkOhmwVaxCpcnX2Fomh2nwABDRRgqowWQAK7DeVl9X2j60O32Hd7KTvNpHG8p4OJP5Vnj7+4Ma8WX1rJX8XTOut061faP46NE1Ot/YqBo='),('4187458f-734b-4cc5-94f0-cb32b6efa2f0','488f09b4-908a-45c8-9831-42dce5df176c','priority','100'),('43981cef-4b49-47ea-96e9-e356e1e5cbf3','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('43dd02c9-3ddd-490b-ba72-0463cdd1704f','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('462473da-c7fd-4beb-8d4d-6edecf3eebbe','7aa6d0d1-4e89-4d3b-9bd8-752e4eeda2df','allow-default-scopes','true'),('48aef0d9-f56d-427f-a2f6-50187f5345c0','2de86059-18e2-4a48-8b4c-f35795af3707','privateKey','MIIEpAIBAAKCAQEAs8OaIu1D22x7805ldx6EpTN7YYIhZl445YaIh9zKA3iMGEQ+OmJ1ZD1IiT6u5lyBeVUWhYaBXZwJzgixuPQ2VO2NNTHzN1nihyzG2ppx1cFBd7K6B6hgoP1DcYOVle0nbI4Ewp8DEU7zzsV+74bZYYKKH325FmesgmIPXeuPwGvWS+/eaL7H0trJLYq+KpdC2930FxZ40rmKWCG8SbTi11K9xmciIL7GxBFzo3sF7TQ3aaovCAdsX5hgeV34qer2VOxO+OWD/uL0KY0ceOab8X9eUle9BkMBab5PqkYfJQtynsPNRWCxNMbRPfIX0Bv73hL3OBGaOVZ0OqaAbezQZQIDAQABAoIBAFa/5aHGQzFgJF7RbdiywwtgEUIIhOq8PJPTPQ7nhxtusJjDUg5l1kXV5yvIMqobaSXu4Gv2cXaFpxulCXL6cz+/1Z2eqcMD3vQhsSLsVlPzq47CktDAOkVmgwYEHItaA2T5EiYDi3zuT2zw1OVte3j5gINa7hd4V4EiJk1KMLiH4QdVxl7XHCCirIhvmUYUY2TP99Ub3Erf1vscshELfFgcX7v23uteu6PKzTjBR3N29sFYhPa2pnHHw7Dm8t87lmVVQmkm5vcG/JffjL4YAwpyRFrcm+1lRQLDIthxphx1B49V5ha+5/c2TZ++NafS7b+eDnFeqR812sBHQCb8rv8CgYEA88tuctC1QKtbQnyq0qMjjiMupGJxoRh2nU2skpVJF0e0K83v086vl+zWuLQE2dUOprvNGS9T3dUeJuNKEq1S/oa9aV8z5v5IjnLaFqCm3AaCjxxOMIOIjrrhRjRbWd6I8xOxuK8A1P8KHkFUKfITEXQPtVfxGxHftkt0FJbETk8CgYEAvMOHh6stQNC6GbfWw3OwIJxwtBShdstYAEcbsGxbAxzVevelzCnXNabsCy7/zAPThIsDwRM/cby/Guo3/ELfzzp6Ww1M9zIVxbo6Mx2wgjrxOlMDA6hDzc5vS5JVMTsJ6y9InAbuqD8Xlt7IMf+Os1vxKmoMQ73iOpN7gspZnQsCgYEA7LNhIxy8PnOhAWalPCmkxcYm7Peft3dXAtd9bDyBYJb/uWATMCSGnA0ZVO+DnjOcLAo+0er/lGvtAHjBXGzoHbOYh4wlimrs61FbqYiFOS8g5+3lhHjQxzNusYj4AMNtWASREuzm8+ZDXqizHJ6qINH8xmcB8vRhrk6H/815/0UCgYEAorqlsi29u2y1oso7mQ+4vMRg3L4UXEb8vHCQzEz9QPewimvIQPOpFhWq1BFWb9i0lkUJnX8saK7gySE11oEIVKwDI0+aFFjXMDhVSA/GRN7vaup5ZMPAgEIA7FNgoipVaKzAmdHYGK8bdPLl/0RjDviqNXhqzlN6HilahuxOyPUCgYAgcXGeJ+PyGpGGJXl9vOe6xuNBSAswcJkNbdOgvhA7r+hT33Oa8vksenLvSxlh39J5LkMIEj/QJZdJAXC7LljW6aYjLdsVcegzXtYm9sL7rt8cVeo2nUEyY/IY/pMboRwd0CZFXGCiiBmdxfh0dKydklFnorPOzlpx7v6guQE8uw=='),('48b06fbb-6ac6-47eb-ba8d-e8b0a6314cb4','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('48ccb419-e039-47ac-a559-2b122639e618','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('49284f2d-008b-427c-aebf-91ef756c3657','7950a778-a533-49b5-866f-06846c9d4712','keyUse','SIG'),('4a581807-ed25-47c2-bd0a-d7c0b9f79c2b','e34bc2fe-7a56-438a-802e-765dc3bc1b7c','secret','kYZpUrXd_aFkgMs0lHS7Kg'),('4cd98e35-860f-4554-883b-19dab99a5719','f248da25-9ee7-4478-80c9-2f9e340b652e','priority','100'),('4dd83b08-5b2c-409f-a991-8ffd92b3d9e3','63defdd1-4b24-4d42-a7de-2662a08ec1db','priority','100'),('4dfae588-d886-4791-90a4-92260b6ac1ef','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4dfbb2e6-5d1e-48fb-a87e-f4f5e4936040','9f6f5600-b267-496b-b334-db4c6741d7ef','client-uris-must-match','true'),('4e3974bb-fb79-4717-a9e7-0f5565dd03bb','c050d01d-5aad-4211-a17c-b7a0035cd94e','privateKey','MIIEpAIBAAKCAQEA35soQR9xPZmGilyCQ3w6gdUdAc6FttxuRXQkdWkZt/7FVDnh9wif022eFypVdJ21iWa+iqhfaSsurwCEDiW0fVAW5j7H4VWobS8s8qfITMrej9CXDB4uwZGzgve8KcgNzM8lfKbm0QsTRMZ8iahGzwsLUaKcmrHikfbDlP4GX1xxzMolyrlWzLbs56fpPxVbl9IOVw6TrEkeL5CVzRHInXYtzG2fLIfT8uPkSyV9JWFjt39pwl2lfMxUTZI4kz9EeiDur9EcgNmT7wcIV9sUiK40RKHuXYLv2q7RaduozDKKznOJsAHj96wpQY+gMajCF2xs8LsiJjxQw8BRymSjhwIDAQABAoIBADKT/f79BbhRScVyN2TcbL+BXRZTiJtcMPU02CpWo6Ki1i+/CAXAxaYlXWUQBlRid/Wkb+UdQLehNOYQz84DaVgPDZ73BG9L2NUZnqkkmoIEQWN2YzQyf5D5TAmLz9wDjFuPX4NanUsbnjgoTXM1xQ6ACQdmKNY09nLdxk+lRfu7mQDejfoiZ13o/nv5EejerDt7VENbJ57vnacvE/ifLB0gk0aTNZIHHQDFRfup50QCuSVrCUZbGMhL1D1aDOW+AnACQNfCXfYDtG7MFhtBM6RPPgbbzc0cMNNcrB4vAejM4fz0tNMp5xgtULL2uaC8Aiwy4EYdVDriHR9mIghMRQECgYEA+9qY5N7Tl2OomPtVlxaeOqIkPZ8ZPkFXzlxxdngPF6uV1SmBpHQCOFazdGJyprr4jRNjGy2gFhFlH3JrZNTqhDkzdN+ju9r2Eys0mCr/QDlCuaXyZo3tjwDxPfqK68niEr+VYpdmcaVRpguDGObTbrj9ApLyGgR+po/VTTZDvLECgYEA40mDebDmIuBG5Sz8SY8anYmmXAA5HbSXkgV3WTlTSqLoxEX4V3hWYDSsG1ejc6vcPxVTLUMECKkUGO2xoiZPotxojoBoIetZ/0Vm3pJqAlvNzfWw+ECykIWCdHBd3IL09nADSRWW/JQJ9BQSqofwNy6L76sOEYXLENNKu+/BEbcCgYEAx53zITQbsRokP1y18hLTRtXMs6qub1GLLtzGcYenLrOpBlLnllj8iXrusYh2JwB6kBaVrqzy/Yq8A7jEth6r4jEUP8YiGHrsHzVXcmRh+51m7Y5CGlbTu0yb6Ovzv/87WHDRDlvBrsHBfUISnmIVouSsZKXjjguR9qJ6BcDE34ECgYEAxc/fW3P4d3YWfbLvR94CXgXFAeE31ICuQen7+22G7jhmuRvkjcwv8L8m4w0dNrjmkQiwQX5H7nmpAiEtLmCFgsqtPQjImGzLAP6YDzICjVb1AUHJ6eX1Aw8PgOOi7R4UsL7APUVLCTyWhRVLQZvaF0ytgcOwFNQK7fPW4UZDFHUCgYAT40qMD7TQGkIsQJDY9pQGx4+lHEIQJXILb1HKKYAbx/roV/rLEe0QhRKAL9tW9k3dBnoS1Lw4AdlfEqQd9DiK9/znY6itCrMicAqBYxV/SkiG1IjIHCO717l5NtPrFFxHrwrCK6B23rMz3Km6G85hP/D6ozyjRygt2KW93GSIqA=='),('4f6d3fe8-c353-4747-a7ea-01818ce0bf44','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('4fa14160-918f-40f5-a916-d793a766bf5b','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('5037051a-50c7-4c62-a3c1-9dbe7f498a4b','3c5c604e-bea8-4752-89db-ab2cd0f3502b','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('52a7042b-c434-4875-b550-2931dd7de208','c050d01d-5aad-4211-a17c-b7a0035cd94e','priority','100'),('540c7dba-cef6-4927-9afb-ead28439a849','2de86059-18e2-4a48-8b4c-f35795af3707','algorithm','RSA-OAEP'),('555424d8-c13a-43e5-ab98-52f895b0156e','cd57c7ae-1ad4-40ac-93ac-103dd18fb1d6','host-sending-registration-request-must-match','true'),('558d4029-4de4-4420-9f2b-94169acd3720','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('5919cb2f-63c8-4f92-8814-175344048d3b','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','oidc-address-mapper'),('5bf805a9-c0a4-484e-8639-96c9025fec85','f248da25-9ee7-4478-80c9-2f9e340b652e','secret','ae14v2VIU77KOMtfryJcRVsF7VFXnn5eGicK5aBsqu9lcz7ewk30PE8KNlUTk6-xCR8A3_dWR0VxuOuJcpdUoGEWP5BvwyvZiBHAHgRNxA61gqo80voJNfBUMh3f6K00gohnd3tDt-H7AVTCGtwGkAt7Vu5t5ClOHaBF5qKEAzo'),('5c7364b1-fa4c-4505-b7f5-acf2830cbe49','beefb020-1f43-4460-bdaf-32b3d57961b6','certificate','MIIClzCCAX8CBgGQun9iuzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDcxNjA3NDIwOFoXDTM0MDcxNjA3NDM0OFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAI1uNj70U61Pj9O6ROcJ7MPWdzD3DN8o6ejC4ItV3/6YLy4ypJQimEusaqEHPCGzvMpM0XfIAcNe7YPlhJ9NY3F4+V0K++VRD6uhApZIjnsocNDJKTyTsJ8XpO/xxtfYE+J9hwi220rW9mT36hCR9KX+zmbo8K/j4YebPRGHcu8LV46Y50zbJGyE/S+ZcjXhtKFljGZHvSOLEWwmNmpcM6a4EwTXltqPesNW4Lx6gOi11H/dDbj/spL7smQEpMbCq+6LbDOmWl9G1W6xDgAqYzbzu+lVRo68WmVWjifBB4RqFmZMr/9N0BO031m3CL/cYitTJ0f6/HpQXEyeluMbqd0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAMHiyT/Gc0e6BsZgMEZMYdNmLr8Old7WEzFEYFon4pCfFDyZpn6J0ha/7jhnsnKtiFOxd4+ESDbfFQML11W6/9NGKSIXT86WSO/bhogBWpdEtrF3uFD3GojEIIPnKk8QX1aF3ky2LNI0wwOekO6hvipWZg4QlLEYRR9oCdcZo56n1lRq5H7QcQ51myxfrl96Lz3ib2eI4RY4v/w1BX/4Khl7icRLfnQEj/SA8EqMLNvtF0qWz5EFkwvqj89gHXOcpQdMLec6Zt968m7C14YxV8RPQdSHvyp9ykYxkKlEq5tIfYOh4vApogfYKO0iMEpFwvrjkgq7Llj77V3o0vuM/BQ=='),('5dca4252-36b1-438b-9d0c-d51d0ef3cd1a','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','oidc-full-name-mapper'),('5e998d3a-17cc-43bb-a88d-15bb8ca7b506','690c5c41-97b2-4564-ac73-072c554532f7','algorithm','HS512'),('635f8d4f-aac4-41ad-8e1b-babb2d735dab','0e402fba-74f0-4bec-b7c2-44d4167cb3d6','client-uris-must-match','true'),('67c12326-35d8-4021-804e-fe185e4f49b1','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','saml-user-property-mapper'),('68350a2d-2e20-4b29-9701-ccf663bed6bd','30154c10-95e9-49e4-923c-077a76e2cdd0','secret','nFK1u-iiYwHgWKipO7imCQXbpVw-MMOExaJC3c_UpExIq8EYVzlQXH_q9j4L_gPtP4kZiGJUPi4CvTfPo1_ZpfYccpRjDwSEIPrYohM2vzO4faRbaMyv1MCczGVoN1p1ENNkhfjxCOw_PIWGSCwK3e2neK7P4EoMdVYzuj37LCk'),('6972628a-6c2a-48ef-827c-aa6007e3aea1','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','oidc-full-name-mapper'),('6ab5182e-eacb-421f-9314-7ea08891dfca','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('6b682938-9087-4705-a666-72bc94bbe549','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('6e7a2229-77cb-460f-8604-b4211175cf0b','1bcc2a07-9a19-46de-a5a7-eb38f2075215','client-uris-must-match','true'),('706021d0-455c-495a-a969-fe3cbd84ff80','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('72a8f2ef-53a5-4dc2-b7fe-9c18ef0e6847','cd57c7ae-1ad4-40ac-93ac-103dd18fb1d6','client-uris-must-match','true'),('72f89cab-5a84-4e1f-913d-215b82dc1150','3091413b-980d-4882-924e-4a47c851ee24','client-uris-must-match','true'),('73872672-6acb-456c-9a69-1ab9d0c1219d','ade45132-c8b4-4c16-9760-db03e7d1fe10','algorithm','RSA-OAEP'),('75fccc46-fb37-4f72-8089-f895599aace1','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','saml-user-property-mapper'),('76a6ab88-8e54-4a87-8650-d584fac6cdc4','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('77760c65-a5a9-43a8-bc44-7e898ea69ef2','2de86059-18e2-4a48-8b4c-f35795af3707','certificate','MIIClzCCAX8CBgGQuoAgJzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDcxNjA3NDI1N1oXDTM0MDcxNjA3NDQzN1owDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALPDmiLtQ9tse/NOZXcehKUze2GCIWZeOOWGiIfcygN4jBhEPjpidWQ9SIk+ruZcgXlVFoWGgV2cCc4Isbj0NlTtjTUx8zdZ4ocsxtqacdXBQXeyugeoYKD9Q3GDlZXtJ2yOBMKfAxFO887Ffu+G2WGCih99uRZnrIJiD13rj8Br1kvv3mi+x9LayS2KviqXQtvd9BcWeNK5ilghvEm04tdSvcZnIiC+xsQRc6N7Be00N2mqLwgHbF+YYHld+Knq9lTsTvjlg/7i9CmNHHjmm/F/XlJXvQZDAWm+T6pGHyULcp7DzUVgsTTG0T3yF9Ab+94S9zgRmjlWdDqmgG3s0GUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAcO4qMmbNvjPQckdqA/MfK/BILSCM9GSFvCQUN2oq9+cvz9H5Vyi9GzU1aBnvP1oWKNu9N1rqTpFDSUUySbeA2laDttyGNb+uhU2+idxwv+yvSQoECkJqa/VYABSYH7j+iI1aQc5BQ7xrtQ9wKSZAMXAy50P5tdMxcHRlugG61D908eDGCX/hiegTYfJ87mv45ZzGoeZSDaiyucDd+mmOO4j5+RpAGkxmUyeMwYzjL+wlY+R9y0AREGhBpfAvDd2IfwemQ5EtYQr8HRd6E9M2I7OwfMuXsfhycoFPj9e2hCVohlWBpgkXrWbeAF2Pn7wY+rIl/uWXqvxYFW+b/m88zg=='),('78988918-7c38-4f9e-b25e-b1fbe740e993','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','saml-user-property-mapper'),('7a4abf66-eeb6-44d5-9447-d26342008c71','914b8415-8cdc-483c-9266-07c1f8b30c45','priority','100'),('7bf0c4af-3eab-4d1c-990a-e751564a01d9','21e468c0-bb7f-4524-9b49-bb48de4767d5','allow-default-scopes','true'),('7d9cb45b-3d14-48ec-8abf-db99d7f7d50f','690c5c41-97b2-4564-ac73-072c554532f7','secret','KSHYKsxeKu832KWzV8XZeo3GxALOT-O3k1TZqccO7KIlw5qtWu6CNVym0Vd1fOCs4vqt2OveodRK_vFYlCWUJ6YbyBv0fKimLbQkQ2RSiLpgGYuVDtCqh-Bw2WnNKnumRgqLXceWJOiBDX5GY4mVv1FrEthAA3dfY9PDPUXW25A'),('807a05d8-53e2-4862-b2b8-550d8633bfec','74cf383d-92f6-4e5a-b47d-f7317c2f32ad','kid','9058e58a-b872-46d5-b415-1f0224315ff2'),('814534c0-9ec8-4b45-b5b5-444f48bc876e','c14bf34f-5a8c-4bf6-acb1-f44cddcaeabf','max-clients','200'),('8150cb47-7e4e-414a-8244-89ac66287808','4a8e2e98-d5b0-405c-bd95-71ea581e30cf','allow-default-scopes','true'),('8243bfee-1a82-4ddc-9fb2-245a14aece74','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','oidc-address-mapper'),('82e1b47e-9217-4fab-9eef-3a8e4f5eb1b5','daa8ae89-d429-4a7c-a47c-26b741403683','algorithm','HS512'),('840ea856-54fe-4170-ab3a-c6ef0504ac8d','226afe92-b2ca-4403-ad13-af703a003e0a','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('85628e86-dc25-4cd2-abc2-66eb5d7f08a3','ade45132-c8b4-4c16-9760-db03e7d1fe10','keyUse','ENC'),('863abb34-39d5-4180-95cd-b24c9f404ea3','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','oidc-full-name-mapper'),('867c0dd4-0b2f-40e6-9a26-5752197783ec','19c645c0-c9e6-46fa-9ad3-04e7f04acbac','priority','100'),('86a7ea37-7c9b-4a48-b342-e3a7ccc78c24','74cf383d-92f6-4e5a-b47d-f7317c2f32ad','priority','100'),('883e8318-8e70-4786-b978-abd39a4c530f','e34bc2fe-7a56-438a-802e-765dc3bc1b7c','priority','100'),('889fdcf8-d4af-4d30-8c5a-f15d87bf689f','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','oidc-address-mapper'),('892fab04-bc03-45fa-a488-41c3b814ddb9','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','saml-user-property-mapper'),('8a267aa0-9b53-4611-8a17-1cecf2ff916a','f7379ae9-675c-472d-b12d-dd0ca5593f79','algorithm','HS512'),('8a7a737c-021d-4b61-9775-c4936228e9a5','914b8415-8cdc-483c-9266-07c1f8b30c45','secret','ajVrsSOrmXeMW9Kp2VQwFQ'),('8aaf84b5-d932-485c-930a-a06814deb909','19688296-a905-4554-9d0d-35a11e51756c','certificate','MIIClzCCAX8CBgGQun9jyTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDcxNjA3NDIwOVoXDTM0MDcxNjA3NDM0OVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALcRhlpDLfk4Mog30aAmZotf2Efi3FahUnS3olomBzbL1hM2g/tYjNlh75eOcKWDOLsUMdBIZnL1TuFc5TFH0ii9lSxM0DTzfzv2HQXqjrexVeMnTRgVStVO5n0D/vYbBc2DhocpmCq2msM/92MEBOLw+QIwtMCrOwBJVTgGtAMBikWhdnEMUiQ+9XCdv8ncxGLOoyw/PRukDn1igFq6rJL5ocuoYWIZz+uASRwZ/BX60bECiAm42Bko+j9FyS5E7RJLK9Yuw612oUnwVv3BbDDdcp5nqrHwVH5iv3CSqfRgQ71VNmkdkQmgw1aDQwEqd7WI9k8bfuUy78U1oRRznY8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEApOA6khtDnB+WPeClCTFyymumitnHUabXFdx5CDod+wf0U7JpXewIAmmMY6f3n/YBwZczgJSWMGsXUnBJPhkx54JWsYo+UqHo9OVzwwvKlKnHxeTxusBotrrnd2W6DNt0Waftt3c0m7dLpKfRfuCGQ5cc3cBqW5USfQoGm1mqi0W0rlOUICjCx6MmXFPwDP0OskBGD24LhGqSaLgtjeWK0lV/ynnDc/b1b6CdTM0aNlfoQH9ARX1FVhal5CRGDg4i2k2Ux5ifMCIEjlo5fTNWUU8TjfyH8yyQrtGkrm5A2Yr5CW5orKunZ7XNwwjkm4QLKhQy3bNpn5ze/RJ9LaSjnw=='),('8ca5718f-31b5-4aa8-b0a8-dff56c52786b','5caa969d-97c9-4609-b7d5-9505d7f560a8','allow-default-scopes','true'),('8cb75453-b659-46b6-bb65-bed112a056e3','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('8f3c6d59-28a3-40e4-9a27-c3c98b6de3b2','4a606766-d40c-42cc-8876-351bb8685c11','priority','100'),('8f786907-ac93-43fc-8630-0b47360a545b','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('92f8c6ec-a935-462b-b706-2acb8a0fea6f','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','saml-user-property-mapper'),('96bec09e-3679-42bf-b9df-c06221b09d7c','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9769b608-cb93-4226-a35b-6f6c2b86958f','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('983d58d8-f1fe-4df5-908b-6d88493bde7d','e34bc2fe-7a56-438a-802e-765dc3bc1b7c','kid','2369881e-7475-42e4-96fa-29546f5e0e51'),('98ae9be4-0b02-4464-af6c-32c0ed571fbd','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('98dc86b4-f7dc-4f9f-81c9-07de39dc986b','2b45879a-eb40-491c-bcf8-1a8d914c1a10','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('9a3021b1-d709-486f-94f5-1a6eb00280db','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','oidc-address-mapper'),('9a7b18d0-50ec-460d-89f1-5db64351c039','0e402fba-74f0-4bec-b7c2-44d4167cb3d6','host-sending-registration-request-must-match','true'),('9a832281-ad26-47ca-83db-236827592d07','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','oidc-address-mapper'),('9a8c0013-adc4-4cc3-b37c-99ad6bd05f8f','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9ab3b879-bcbe-4ac8-a069-d8b1e202b601','f7379ae9-675c-472d-b12d-dd0ca5593f79','priority','100'),('9b436d3a-62ec-4a0e-9263-6a9fbb9735d4','c050d01d-5aad-4211-a17c-b7a0035cd94e','certificate','MIIClzCCAX8CBgGQun8KHjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDcxNjA3NDE0NloXDTM0MDcxNjA3NDMyNlowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN+bKEEfcT2ZhopcgkN8OoHVHQHOhbbcbkV0JHVpGbf+xVQ54fcIn9NtnhcqVXSdtYlmvoqoX2krLq8AhA4ltH1QFuY+x+FVqG0vLPKnyEzK3o/QlwweLsGRs4L3vCnIDczPJXym5tELE0TGfImoRs8LC1GinJqx4pH2w5T+Bl9ccczKJcq5Vsy27Oen6T8VW5fSDlcOk6xJHi+Qlc0RyJ12LcxtnyyH0/Lj5EslfSVhY7d/acJdpXzMVE2SOJM/RHog7q/RHIDZk+8HCFfbFIiuNESh7l2C79qu0WnbqMwyis5zibAB4/esKUGPoDGowhdsbPC7IiY8UMPAUcpko4cCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAys4GUvDbNBRRGZV8AuakhLi/bCJ9IHT8FMttbYDZszcPBcTlEXp1JzBPV8bCjBfmarmXxLIXLA+N8ENs7VeSG3sNeiKEk+ZxiDMni0nOaEfOAnNt65YOXW5kI5niTXYGwT/l2USoc1i9qDAVpMMDy9Usiogw2CAZqufeChcNgVF9T/6VHPNT0xfzeiuvleo4lk9MK2vTnl9adNWq/rawHp/jzJNTIGy+WmATfypHV2TF2Vux850I/rkn9SQbghcNGKj6FNpcad9CIW/x20mpWIguAnESrusIuNUjA1N9x6KQgOHt2VEQEMYg3dFksQknV0wUkT5QbhhOCv/oYEkYRw=='),('9b92d5c3-1674-42ee-8eac-659061426396','19688296-a905-4554-9d0d-35a11e51756c','keyUse','ENC'),('9c4d9357-6577-49d4-bc50-196ce46c5193','9384678e-536f-4a39-b5b7-bb96cf297aba','allow-default-scopes','true'),('9ce93596-b389-45c3-82c2-54eca503a5fb','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('9d113b66-5500-485e-b3b6-147a0ad7221e','3091413b-980d-4882-924e-4a47c851ee24','host-sending-registration-request-must-match','true'),('9e02b8c9-b0fb-4373-8873-bdf337129e76','db657328-30c9-492e-8d14-cda50c6906c9','priority','100'),('9ec42d9a-83a2-4f64-8aa2-b1730dc6e451','690c5c41-97b2-4564-ac73-072c554532f7','kid','a6f2eb65-9791-4891-b255-f0bdb2e35850'),('9feb0ceb-971d-4a66-a8fc-4dcfa4cb71a0','488f09b4-908a-45c8-9831-42dce5df176c','certificate','MIICmzCCAYMCBgGQunrZLTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNzE2MDczNzExWhcNMzQwNzE2MDczODUxWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC0ODPtDG6RCzgChQKwBze6n708oj2dMwBN4z75Uz3Z/UPfHUeFDjUB3x95XDuCquwddkjpU68Dco+kO6M2xNkmPsjJZCyJZ/ClJU589TAX9TlEgRsIfJPwR/flxundXXqakDts4US0kNW9r+5nk0IgNpbagMzNI0W7BstF48wUTVDz/UDwAGg2FEI9qZa138oUwjmxH+7ia7c4xIlyD96liNttj42TboGbojiE//aQcQoLyf0iQ21GanS/0hDaAU3g+ySC7zWCQKCtFqzM58xdhfPTXq0wY22Ek5IXkExaRtfxcyKxA2+EXAjV2jDJM7GhYNEZdCXbour08J1hlS13AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAFtOdGm+PfRbYXCSnHY3Cyb9lT5cx2Rl7z1ECW9/zPJDGhRgJjHFRN79jNVzvQBLmOzfe/pqzk0UaOsgzeyQJ0BZ+fiYbe9LvchPh/66pYCAtoCULnamuB5eH3P2e6nejP0PMs0LG3CRRxloIeY9KoQT/SfEY/qFoGdjT9NIotqTS4MqHE9UsmyRU73XHc+yysNTeWhfQSo1gZzK53/FBpm2jx2A0aPC7HMRk+yf7aTqS9QzarQcwcTj7lchynFGeuO2gXyryphm2vG7/v2iz2+vcey+ppZRJBetrTm53X5G3/aRMbsqOsImjOcDx+EAHb6IB99AKAkP5xuZjWHP5ZM='),('a1d792d7-c15a-4ba7-ab4f-2aad1368b993','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','saml-role-list-mapper'),('a242af70-1d29-4994-909f-0a165d057b01','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','saml-role-list-mapper'),('a58eaa9b-0f1f-4357-a4a0-08e3e1d74ec3','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('a5de160e-56c7-4cc8-ac46-a7b3ed88d839','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','saml-user-property-mapper'),('a62e3c54-1b68-4108-b345-c8538641c325','19c645c0-c9e6-46fa-9ad3-04e7f04acbac','privateKey','MIIEpAIBAAKCAQEAy3qSAGsklQ/REu0wk3dFqIRddeZlKSlnTZ+EBRJBnIJ8SE5ty1Kq1KL0gDRthcPzC78moUtbHRkiaIbNenZQuRLyGcWVQRXU7Hk0XR9YcNTDKQxDm3jgWVm/bSy6cCe0dIFrPEVqscorBHjOs2w8DfdRcxGzubUfuCr2VA4F6ww9h46ZG6sRbWHEDhTEGIvAammJSXKzYgVcgA3adsV1/LFMFQxyT78DG11nv+HGHQ0bijEEN0U5Y/BtyrG/sILC8Jv2AOpCiLkdH2B5CrhnWfDh7sIl5dlbv6kfz0Yu4f5Ew926Nea8MFrNFDKEbiZKm4civ49wWBLZfedTr9p0fQIDAQABAoIBAA4pmlboHjQ31RwFoU9qSlFn4R9vKVRbmuKWuzglJKbxmBfqSY8Q0m4ZZ34y5/qbAGQtalFors9QLAptc4jWCllPXcV4cKKGk/rflsryfxPfYzQMs/nyyF6/teix58odoVxIk7+urzXvtd3KUMzBOE7ai3NAZKuE1U/awalpDnVlFWQWvrkPqh1YUS06zdb9XhMbIsUZrjaDHKxpLbPXcuc4TnEpO1WFoCZqybysJFnx5RdRmG+RmFOoljXioZ7uHhj/fQeCYFuCgCjs7AUeCmrZFBqYUnOSPpu3jvTz1c7p8Lz2/51fV2kcePeexCGuXcoKhZ5BiLOLLebIWMf3uYECgYEA8Mz/Kt+wbzWWCUhni4zmv8mlLdJTCsqy9PMoJC5gHAinSnnaNmTTGheJmYQ90nF1gXL9fj62bKdCQl4xfj1cg8XQhCr00KQhk26K2dyz9FzZ4U2B45yGn36jasE/2ZcsYpl55nAtxY13OCf1a+c0zu1MKeulFrV+MxdWm4W5x8ECgYEA2FKArl1LL9AdTTEJ9Vnhf4yUUuvqhYg8JEl5pJpwB2N1E+dfN00qR7CvrrkGBgRrWQiLAMjTDMIES8eYf/6DxbaBXLvsarAKsMF4UnyrNqLDC/wd01bkyFKF4UAKf+ciKERjoFgI5KbhVRtlYJAB0PaGpLaq2cHKh7RAi7LIu70CgYAkACHuAP9ZwQMrZB3G6UveRIFjdlxf8qoKoQfRUPWhe1G3erw7AZvl/LrfrrunaLsOnWh0pV+UovTvAzIXE4lvUfW4rMtpHgC/D/nGVI66697PJk1TACXIVqCL51RqbYV/QD7PStos/NdkF+VDOo/Ul/mZEtfdq0iwzr5uBfIegQKBgQDO0OoISle06bLp9wV/ViRabsvsD3NToTFmu/yZm7GZzsPDeMS2uYa/rbP5Rxn0LMt4/sruwBHPM7spvDUXwfy3zUoWn/Bi+9XssbvYmSqT/L6fubXGNWBcCVHIThL7v74PY3sgdKpj+Qyb8qpUzLl/0AJgfegQcs+wOGwxY4e4vQKBgQCHTvLSs0NwKZIUYvjaRMfhmoT6McdJ/F+Jtv1xHIHGe/vCTUSTQRTi0pmTd+k7BC6Rqeose3MIES9uklJryrZwbz4rQ8eX9ewb7qJfuldDhA07xTAQEK9EtI4XXnmJB9QZo5D/ULqFNLty8X9datRMFlD1NNCk/W8xWsHbNGYZWg=='),('a8a4c755-a2ae-49d4-a1cf-0d7bf1f4272d','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','saml-role-list-mapper'),('a8b63885-e092-45a4-bb6b-6f39f7cb101d','763b6b68-4ac6-4fef-8885-af895e658751','allowed-protocol-mapper-types','oidc-address-mapper'),('a8f69157-c20a-44a7-898f-e7193f38f116','62faa5c8-f134-41ed-b6c8-382c35aa437e','max-clients','200'),('a97721c0-996a-416c-ad9c-d96735d4f42d','beefb020-1f43-4460-bdaf-32b3d57961b6','privateKey','MIIEowIBAAKCAQEAjW42PvRTrU+P07pE5wnsw9Z3MPcM3yjp6MLgi1Xf/pgvLjKklCKYS6xqoQc8IbO8ykzRd8gBw17tg+WEn01jcXj5XQr75VEPq6EClkiOeyhw0MkpPJOwnxek7/HG19gT4n2HCLbbStb2ZPfqEJH0pf7OZujwr+Phh5s9EYdy7wtXjpjnTNskbIT9L5lyNeG0oWWMZke9I4sRbCY2alwzprgTBNeW2o96w1bgvHqA6LXUf90NuP+ykvuyZASkxsKr7otsM6ZaX0bVbrEOACpjNvO76VVGjrxaZVaOJ8EHhGoWZkyv/03QE7TfWbcIv9xiK1MnR/r8elBcTJ6W4xup3QIDAQABAoIBAEZC0HQqET/yXLOEwCI/Tf5kl0YeFajvvHTEC6Vs/iCPHjFHO3fUT/CYMUjaPUdI8atWymFFXYrfqAN0jJRPb+25ebh9cnKT+ML89DoQxaftiU5QAUp03LPMnUYOyQgF8qr8TY9IuFzPugyjFQcyW2Xz1jpN0vSusyYZOxdwQOr77GFQ0en20MItl3bd4fmlOat0J7G3jWNDjVRZ9NIKmkaY5EFYHx6X/yRQIDLhMqwhbVQI1SQaKfeWObo97f0VFtMLAI21Iig/7p8fwE4EPnAWn1Jv7EjjhVGoyiW1RbyeOuev1ME4iulzQ8N0tuGS95pHywlCG66C8QFHOq9q0QkCgYEAwrm+A5ybu4cnERPZI4NHkLZDh+3F78OWS/GavXg1OXq8GpRB/ZE7o7v8ZcqRfN/+a8UFtV0zj/ROSgszLIREFByE6SGbbljo2hGsdjAnVYdirnugYXRuGHj9o/BlSNuMU5CZdFC106JPXBNujiyBH4jSXzWUddf5XkZobKsf7ksCgYEAue8/ysXNUEL2x5rySwWDxJVdqAUV8jbDTySX4vgZ5BFR47IUTDl3ljRh0faqBZSYs255vG4bkMvvRccrMwLcCU/1d+pSYYhjHgvOnGP8umZCqgB3LmjzrOV9cooEhKnvlQa2K54iYz4Q8hqr+SJqROe7keNnIb+VueoHdap4j3cCgYAdngK4qelF7JiUkGBGdoE8EXzT/+ZLQYRqqKTQjKgLxg82O7aNyrk3fjA1i0n1pFweKClmHHbrPk1qFaoC61svc+cDTolFj2BbSrTghRJ2f9ESmNsb94mHT1/Ev5uoKTx+uU+d0WjWd6l6Z7o5BaveEAFvWcbq5Z6YKD1Zye1hYQKBgCm8ia5DnmWw0mJV5qNudniPKrnHgnifUFIYnbuGA5HNTXt2AtZlY/GkinyuCNY919UXLF5evPNQw8H/BjRqJOg2OZyUTa+1BMK+1b8HNrjEsZwlhJs3VdNupC0sy/zXhH8IRaYe1gs+6GDgGdBPqFkVR2ZlDEZoEfzsioYgIPXbAoGBALsWhiyGohVWSKWYRjtESJus2V5hVt+2LQ6r6VM5u2we7s5skTFedz4tFeBYnzRzyXxLjiVa3oIrPURAWGWPYkIeI4tmd3jeqZ8lzaYsW8M4rmQSWDu1/krDz4RzUYW7OauYoao2VgwRZceguQbcZNPtGQU+tHlRjUdHs3pf72HD'),('aad5bc06-d1f1-4540-abfc-03c7b4054933','23b57c3f-905a-43d6-a22b-ec64392d7826','priority','100'),('ab63da6d-e13b-41ab-8cf1-135c7b53239e','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ace49c7a-7613-4900-8efb-eaab2c5b5ece','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('ad00703d-30e1-488b-8d3c-538f9bf5cc80','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('adef6174-8bfb-406b-bbce-b95784fe21d9','f7379ae9-675c-472d-b12d-dd0ca5593f79','secret','PG93I7yaJ-EKRZMWLPv966k8LyZMTJ06alZas2c_xDV9ISe-c40L96pPMqd3PXiyCCJddQd9C7-kpdfCdMbXb3DubvkhRKXLOBwJ3XULraxtPJqKhJhBzHNMhY5nvgtEZ1RoxRdPuek5337BprYM7jNH0Cp72oZFnukoVMLpqJg'),('ae2b43e0-a0d4-4b00-b58e-03d8f9fab691','dac0aeb2-12cb-48c4-a5f7-1c8fadccbcfe','allow-default-scopes','true'),('b031961b-d111-4b6b-8245-1cd3b9cc6b53','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b17f0088-9891-4f97-892a-c8d883da0a8b','daa8ae89-d429-4a7c-a47c-26b741403683','kid','f7626191-fb64-40c3-a21a-1d0cb583dc51'),('b21909f7-0134-4377-83c9-1183101c8060','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b27548ea-33f5-4106-b553-4fb7bd3443bf','23b57c3f-905a-43d6-a22b-ec64392d7826','privateKey','MIIEpAIBAAKCAQEA4RjozmGpPZHfIN2XkyblNDll19sS3elhxAaNHGvhEeyyRq3tf+VsrzHL5ci7MU99iiTsYUjEjp6JEZVC+YCmvdzk4clOV/bue64j19PPiG3jivAmD9HJjh5yTe5J3d2M83VNKc/1L61CVb2uHjET07YKo9bzA5X6D5exO98Wiw99kajW9Logc4tESw/5Q09TyczjGyftMyMMQh5s/3wh5cq+WEzhDsQT5c54Ul3uL382TlXk9XYOvR3iL3AQOcka1Y8DCZxzO4ZA4F48chIgLatY1QVkbvXdcoPa4SShvENEWu8jIU1UXRhV/tdLb2Yh1FFtGvaL+uQAHtiWWimpUQIDAQABAoIBABkmVFSYGsr98lp/XQEcS72YWtBRnNEIfgY4iSmkxVfgWfwwUKSFOK3LuDFV9Sb0RQgwn0HbWdgUJH0UxTqP7OayYyxK9qLjZw/l4Vaq8WQX4GAp/BwGX35ZLoJAiSZDK7gZN2Q1j6UiYZKnh7291AOdMkvN/LGTidtAzT+YPweNn4g8q8IhsjMa1gU1lJcmJ2bp4NQRfOmsSxIcMaze/rAfKRTV72Xl7f4jN6IMHiAvC/24C0CwSq2FGPYNkYooVcRS+uV/J5HaSD43DQik2RQ7oXZjfdWT0o1wsW0YUVL2X1zfYj4XNX2p+xf/WOboR8whW1UVUsSEF8oASz1D6DUCgYEA9TQXpCDkE5MDPy5YodLNtNLhFBNb1GJzj618ANrxlct8cSL0S7LuoPjTUwFAbej0ObFp1iYTJ0Nkkirjfrag3opTgVRNsqOWRdMdcPelLADcEGI3M11voAcSc7lTDfKtsnD5IRzPsYB+91AAihxWd1Zg2bzhHDrXXG4gUl0moB8CgYEA6wIuqlsw+UJLT4svbgW+JLad+FVjnvH/I1JEqcEcSEjzKVOKYkAz5T9gxnrzGSzUGMzXa32mir2jgMiqLvQlRDUEdTXWChsPXHLpNR6NAvYACqu2d+Luwjq4qMMvXUvBtBAQ9Y39h0gQ5nB5s+boOmEXUfZgZjYYlemEiZPCyI8CgYBSzF5XS8v4WCI2iX3gVwCjWLosP0U4+G2xTJGc8FG3lVjWE0mO7kLqFFu3oaqR8qHVgXUNnRnGnlktilH7jcvQmcEM4NzDv72Uom9EoDskGr40whWFwL1aukiezyuegB3rLX7SkZoIhC1bcaZc/Kit73sQy1jwYWYrjfxYE6BhXQKBgQDf5VZcS0EfWL+zauGnKqV7CNj7zS56MghnuGteZ3Lwkz/HcaX38T7//B/ROTX+GC2B6zaZXD6dFAuAGK26yjPvBavXl5DyU9GQvJHeX9rspT5o7CuNkJD0T0m6zyqC8jf7uwrNR5fxmQEw6puogCdj5zh2iApTltpZiP8Sq8n5lQKBgQDmPIRQo5J5P2Dda55URa9bYoUozMf9ThGBL2U41tWnOKmTqIjKJFJkC6tk+zmJIZiiFWjXZLujbmBcroVGH7QDdDPbeIhQIMAfvq5xUWjYVBPq88lHoU8mlDy/tPjGFBEWAFNGy68nbU9it2kud80um3fbLxzeF2llGTp86wpJQQ=='),('b29d5001-dc9e-4bc7-9556-25a68a8d6941','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','oidc-address-mapper'),('b30b866c-fd1f-4e96-b142-da3818e8ef30','914b8415-8cdc-483c-9266-07c1f8b30c45','kid','79e29730-7658-498c-a488-d2b89dd4a7c5'),('b34e61ae-a262-4120-a524-615c0ec4f8b8','2de86059-18e2-4a48-8b4c-f35795af3707','keyUse','ENC'),('b45b2801-47ff-4418-a64b-6c091c13718b','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b4adb2a9-105f-46f6-b23c-cf6680b5c693','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','oidc-address-mapper'),('b594c1ea-7236-43f4-b2f9-e037f311d480','eaa0e860-063b-47a1-a8ef-14eeeaea117d','priority','100'),('b64f2e6b-482d-4e61-a9e5-6d6bdb208a33','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b73483d0-5034-451e-95bc-d7de77899dd9','daa8ae89-d429-4a7c-a47c-26b741403683','priority','100'),('b7546596-b07b-49ea-952e-c8c146702597','74cf383d-92f6-4e5a-b47d-f7317c2f32ad','secret','rJnuw7EgFZXYVV4tKE5vnw'),('b81fb235-e91c-47d2-8a79-fe5acabdef9a','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b9482813-720c-424c-9cf0-4413e9d694aa','63defdd1-4b24-4d42-a7de-2662a08ec1db','kid','2f753463-a0ef-4ed9-8240-0a7754d47b1d'),('bc05eea1-ac64-457e-b3ff-8fbfffb85396','97e55447-1d2c-4ad2-962c-10aa02419b2e','priority','100'),('bc2789e7-6c1f-419d-8810-efc35693f72d','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('bc2b2002-16d3-41b6-a39b-534a36fe25f4','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','saml-role-list-mapper'),('bd8f101f-097a-4926-b4cd-ee128bef4509','4a606766-d40c-42cc-8876-351bb8685c11','keyUse','SIG'),('c032d90f-76cd-4329-bffe-c9f09c66ac37','6674cf36-16ae-448c-9acc-366f16e4fb4b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('c1044027-592c-4597-a070-b579df389d4f','c050d01d-5aad-4211-a17c-b7a0035cd94e','keyUse','ENC'),('c6755681-f2eb-4210-a72d-63a12af5aa10','f7379ae9-675c-472d-b12d-dd0ca5593f79','kid','4373398e-cd09-4f9b-a6c3-e8476c5754c6'),('c68cd5b8-cc60-4812-ad16-7e6cfd42474d','f86b6256-c55a-4573-9704-9ab1554f4212','client-uris-must-match','true'),('cb562988-1c27-4600-8e1c-c2fa94c5afc4','488f09b4-908a-45c8-9831-42dce5df176c','algorithm','RSA-OAEP'),('cb72666f-f696-4940-8dc6-9e3e2815ca2d','63defdd1-4b24-4d42-a7de-2662a08ec1db','secret','-AeOfLYEl5xlw2Z-3eg-fjO_yrQUytFmHCBqD5bPOZZmY842mDEz90N_B_3Fp6GudujrzbXxnm55tCpCSqhJZ7ZPCL1Dfmvak0Hv9YMGpcgQqG0nqQKjXytjWQo7ylEyhW2l0TGaBj8Qt4qpx4T2Y-vhYNPzvqBUhjsVf2Bho2U'),('cc60ebcc-a486-4893-9849-5366de0103e3','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('cd8add0f-3bfc-4e57-93d2-f485c8dfc06d','f248da25-9ee7-4478-80c9-2f9e340b652e','algorithm','HS512'),('ce21a7fa-6472-4d0b-b577-c0673d13b7f9','c74a7eea-2b7b-408f-9dcb-22e8c5af417e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('cf5eebec-a669-4379-a526-83c78072453e','30154c10-95e9-49e4-923c-077a76e2cdd0','priority','100'),('cff8fa54-e912-44f1-95f0-329bcd9c22e2','db657328-30c9-492e-8d14-cda50c6906c9','kid','250e01ad-7897-4d42-a425-4feb45c4f82e'),('d02332e9-6689-4fe9-880f-f2966ea17793','beefb020-1f43-4460-bdaf-32b3d57961b6','keyUse','SIG'),('d0451089-f698-4596-8bf3-8d7bd8a60c44','ade45132-c8b4-4c16-9760-db03e7d1fe10','privateKey','MIIEowIBAAKCAQEAlX46mtB/rp8OItoCLXSmcaSXyvNOo0KmeU/InQ4LCWn9kCXNFsvCVeWAiRiA/AEI6YXz94EM70sX+JqjMV2sFNd8FmDmk4CZp28OGImGEbVWMkrQxHmmOxsxb1gnngLCZFXSXCr1bbhuaOLTnH78GnYYXHNiW5q8AzJGtG3d1dtW6yoTuFA5IpirVum6j9SpzzA/uBs3i4fAS/sEY56MFZJc8skcbRT/Vuttd/aHOeM5ZV6UMnlKni2h9l3PVDQafUblOmR9onA5WipUJ4N/B6KnyB/NBD0Y/9YK4FkHfHxFLkdG0Suspa4aTr3Xv7m0YD0kPQevvYm4Hc6n3Gxr3QIDAQABAoIBAAyk+OGD3azgNLKjdHgyS+rEVHd81WuvNUQBCNOp7qqM7b7Nx7dUJDueNh1CdpR6JO4Vn7FRV838sModEE0aYnX/1PXSm+YhhD2agdt29GFWkHQgCmD39iS9M9T6ZJ1zl8wjSy/zDT/K0AHsn5/2yK2XTA+zzb+4SotNqxfTTCZsrho/Y4bksd+bGNVYN2SLvxTcubTc1nO036YHQHAPx4hUIrdSnubfjWb1GM5NoCjEL4c/a8VSMVDfjiLG28HUDE8sdRXipmdl27e00igtN+1GupxnPsIxoi45M2E9Dore88664bLPr88ZUFJ8Rc4eNz+uaTD3phTXIrOmK14rDQECgYEAz5YS2/kksBianMbBRMGml7GWgLOJkyfEwTLfS1HUw2kFeAX4T9FWz1AQfXDHlES97veHU5yK167MA/HHULabCcoIjkaU5t6h+HyiqwucGU9LVAjNomtDKPc3aMAKXVil4TE142CEmLud3rUOK3u+dcWQ/ImxczR+gSp+GqJS1wECgYEAuFu06ujT6kj5kYb6HeiLKxtVwz1NRCq2Jyd5wGvMjOuyZ1t51tOUVW8ZqgI+u8w/MmrXYOEGicrSi0mG2UkyfO3/iARMc9ZY6Q7rjDLxbPiP3AZyxnFJoYfGy6uD42XX/6wUGt4Bjg2kJZSl4WFXQeNMXgok1KkJwgnSq2Q40N0CgYEAtdGirx0nbz39njfP7CMZgWBAjHW0mDmK8hVW0yfXjVidO6Uu+upGeMqNxvFTPaCAI6CW3TsNuSAW/ZV1mFJ4tThKCiP0I8r4Xyb7a4l9rgVv2yjiw9HjPyxZUdxyt5P/pqBtrLxLJ2OdQQWgZaG7Dnh/J1KLJHbkHspTLYzjtgECgYAkb/O1Dil8P8obyjq7GJARCAkOWppf47U2zeWRc3ztSVRsezb8j7rcm+XNpT3y7i57b4R8IF2jdFPitbiST5ZL/NopbvgRWQcfoRRLFHKFICeGzDt5H0D3TResf4zEsAdeAAvFN6XFBssvpk6W2h9d5WfdmlGnOnW0RS6/M0LLfQKBgE/9Sz9fDXYaommfA3xmbxtMhW9NRXMHpvP7B09oThwmnowZIhleoj0mRRXuorgTE6dWWzPWAWSMM9NjEqiLjtoCMq9T/l0GEQ/GXzal3v+u+MS/Mrh8X6erBsZ9VARTkO+CaQNaN1RDYcJQaWkSqrb3UlEekeSgEU8vO/TXRSAQ'),('d1167229-05ca-46c8-9ef2-be630c0bd3d4','7950a778-a533-49b5-866f-06846c9d4712','priority','100'),('d178b58f-3eae-4a9b-bada-24eb3eea0555','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','saml-user-property-mapper'),('d232cd08-f39a-49f3-b177-665b0f0dc58a','2e2757a6-d38e-4909-adab-dade92bee9d5','priority','100'),('d2b78507-1ffe-44fe-839f-7d9cd2cb48a7','53cb8bf4-f2f2-4345-b17e-d6d4eb882897','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d32038c5-bf64-4fb7-861d-0db31f5e7ca7','2e2757a6-d38e-4909-adab-dade92bee9d5','kid','636fe2f2-679b-4e78-92a7-986e7b29a722'),('d4cc9ffb-6aae-4d00-a7d5-4c49f8056990','316de8f5-fe6e-467a-a9ab-4f5902f498a5','allowed-protocol-mapper-types','saml-role-list-mapper'),('d5a09183-adc3-45aa-bcc5-46588244928e','53ad9273-5fc6-4d3d-a4dc-deecb104ed32','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('d7988326-bf36-4dbb-abdf-34aea62acb8c','19688296-a905-4554-9d0d-35a11e51756c','priority','100'),('d853c1c1-b58b-41a8-81aa-034c24184edd','23b57c3f-905a-43d6-a22b-ec64392d7826','keyUse','SIG'),('d85e6a80-1d8d-470d-85ec-b5af5e9a7f76','690c5c41-97b2-4564-ac73-072c554532f7','priority','100'),('d864e8d6-3fce-4923-bda7-bb83e1e302b0','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','saml-user-property-mapper'),('d8962f83-52bc-4464-9c27-de6f3810a8c8','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('db8fa815-4cc0-4cd7-a1c1-d83d3c9922ac','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','oidc-address-mapper'),('dc03358d-5d54-4123-a148-e3992a087c3f','97e55447-1d2c-4ad2-962c-10aa02419b2e','keyUse','ENC'),('ddc602f3-d69e-4e7f-97f9-0c43690057b1','97e55447-1d2c-4ad2-962c-10aa02419b2e','privateKey','MIIEpAIBAAKCAQEAw3x3hLmCqixTLbeQbR/4SorZBaag2FJFuodi/T8gBcAjNQpF16DZ0FOJVum7Z5gW84dJFLKUwX0lUJLuhcSliOOuSi3Nm2UYDKbePB5ENcE3qguzCNNQumhhBLr1J0v+MfaItOsFmyTM5x80U4JjOq8OP2tdFQ7kT0lBT2z4kEbUUo3rKh+MmOiJntu3QuLxWsQBRF1234npk1jQ1xIrayHU8saQm52sR6IPOV/knSqHWoB1ERFcLiLzz3u7qQoZdpkVZ5hvh8s7siEJI1/HomkohPWC1QAOFamsqvAcPvRtoXjROOgDcsidPeSpRqpsZlTjlanrWBdkKQnDwCNxMwIDAQABAoIBABw0R4wzNbp2tbOJYgGUlL6whLpPfbJoQF42rV4LbwPVYl8DMet37iUkAFM1WtAJ/fm54Z3mXBcEhs82u8o6AoYbD2jtbdZHQi6FHtg+p6m3zF+w225hCqsyZxkHHlrCmJS91KCBrifhqdyIwIRx8f4kBqK4y0+/+8nCsHUUrFIoXQ4KUVFEPurbbK/zbk+vJAizopGr8sDUZBi6jBpfM7RMKrlmJu+iaXT5lGfHK16kwm1b2jz/35eqewR/oP8NsafrISqRqHN6vRFmUDtaMLDAbglg6+Wquam1AXSFUARmT9v3sw/ZM+wT7VYyCHEKylAvSyjuDQ/F4cv5Ld6zid0CgYEA+IHbLxCkFZmi5IFb5wDU3CRM1MAL4UG9HPilJ9xAWEB8mwzDA6FF4KmsxQ5sghtQEjDZbCpN2XZCNQnRaFAKUfkIfO6JlMZ1GmNOVHiq3SXDkNjBiaJ1JWnNWKLncib1Z/ZqGlyUhAttQfuHgJV2ySwaeBt91X9CHvgH+1WVDG8CgYEAyWFb6WRy8ey7AqjxEj+NTG9RFjMOFywjfidSPPgvZ51H8QNTNRnSIKx0lQ8P8a487LEqLfTaUXEy4iGvwQwd6DvSKr/Vr9NLh37lgVRlc7pAO4D3d/vEqahx2sdmh5T5qwCxCWwOTWBnItVTfWDTYRX8i8VMILxP3D4ESp6HEX0CgYEAoMGII4MVUi/H0x/nbqD4Ecydswbk6HvZNVOXqxhsu2pD8R0pTkDWbkX00KjLAsNeYdYd4D3hjGpW2+6U+3DDrFF37zFz6L0U5dQVyMkiZtrWDu5ZDIr+UwyFXPBM3mhbWjxqWNFI9b5amFN5TXHinLKeENJf7WtcP6Jdr3WmbJsCgYAcRP6SFPfN3l2iUfUFisZbJIVNiH1B44BYBU0WIgEFmp6uxri3i5hj3dG/2w1x7/O9hmFVcjnzlOB/vhreDsVkBIHMXoGw3QiNTNMLBL35MPwzXjdfMIi7CFpzS+qovdEOoFo56GFZm17fFPNTdnQ1/NAnDttQ/R543HvdvcNYQQKBgQCUYooqpsbhX6QUxoRY90ZwLTeFH3PtR8AOhIbbzFeU5oxdN4vguXGf9MGVYNmbr+mIya6IIKx7mMnPhSu7lUuFISrPbDMaiW1ctwClk+Paa8s2OMi8R/i3IoV1ygE3pBnmvFxeyKtfFQ/pDNLY8o1s9N9/5H8RDS+yGfmFnkPK8Q=='),('de92a1a5-a2ca-472b-8c11-4bea363b317a','92246ac4-1e98-409d-abf7-b7d96dcb3fa5','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('debca393-5294-476f-89b5-108478ac7b7c','747644a3-39f6-453e-a4dc-71f95b633558','allow-default-scopes','true'),('df4ef997-a61b-45ab-b835-135fd2c9033c','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('e5505293-7cec-4be3-998a-a380a30915e0','30154c10-95e9-49e4-923c-077a76e2cdd0','algorithm','HS512'),('e7324222-4efb-4414-93eb-0e08d45e1d92','2e2757a6-d38e-4909-adab-dade92bee9d5','secret','EOPodIszpUJ4Qf6fUtzeEA'),('e736b790-3dec-41a9-9c5e-841a578371d4','488f09b4-908a-45c8-9831-42dce5df176c','privateKey','MIIEpQIBAAKCAQEAtDgz7QxukQs4AoUCsAc3up+9PKI9nTMATeM++VM92f1D3x1HhQ41Ad8feVw7gqrsHXZI6VOvA3KPpDujNsTZJj7IyWQsiWfwpSVOfPUwF/U5RIEbCHyT8Ef35cbp3V16mpA7bOFEtJDVva/uZ5NCIDaW2oDMzSNFuwbLRePMFE1Q8/1A8ABoNhRCPamWtd/KFMI5sR/u4mu3OMSJcg/epYjbbY+Nk26Bm6I4hP/2kHEKC8n9IkNtRmp0v9IQ2gFN4Pskgu81gkCgrRaszOfMXYXz016tMGNthJOSF5BMWkbX8XMisQNvhFwI1dowyTOxoWDRGXQl26Lq9PCdYZUtdwIDAQABAoIBAAKL9fOnXvetv/c6FyJ0u2t2x1t14GkFdSFKSYLxKjJbWlZq7duRm5eQ02EJToKv2JdGssERz4z5KA5852Ca/hw5bI3kep6FhqxWS5Dw9R7pFHUnIaubJiGwD9hF/treM4qDJOpsgMDBLRbjA7Ant2WfBYK2moil72zp4F7nwpik8XNU79s6YKN2xVqdxzC7DP5bVmvfkPmhqJOGeGLv35yAyVoMLF2dpSK5L9665tByA6CzjFJfW9WdC6Jj30mdusijRtmwnIBr5WRbE5vgUsZ1xOxv6q04zxvZkAXPaLbIrRCsOcnP6N81sfofXWK8jEjaSFJoLQvtJwQyVv0wUAECgYEA4gee8QTbnKmvzej79tVQOBb0Yn6XrAS3bsg5Me8rkgtBwb8LGt4Gt9EkiWcZgg1GmdX3qqDcCApx6MGd/T6blXOWz13cZBug+SNTs2BwDFNSoZmqdM2NjtHBkzWdKpYI0nl6mvvffKlNh2Oq+yI6Hp+HFckAKjNKR4c95JwJBEcCgYEAzB2YOkeIzKpYIXnL0wVnnS35AfO9KjWxEjGWnkbaOpzE9iqmDrOtyrrTFLu0AxEdmughdEBBpa5UTKtZE4VT2pHUmqqOPqTSma4OCn5faE+kujNsRST+bc0KjRrSf8tnGo8ooVsLiCwaZ72FVEp5EHlFX98lC28nLK5+dYUXFVECgYEApE736qsmXh84Lo40Q73TX8LICqWN6j1PfxfMBBGh8bt/JLGVCAXoik1dqwiokVLHROM28/GVob6+CX5eNA8EGMN7GOlZYeh3v0Q//0CWk08q3VCQifI2+mBewH2T77Y7WY13ZBy+3KdSNZ5tV7wM1eAP2fVQylyYnaChjIMlRtcCgYEAyTTnKZP4gx/sLluck5DBWczGqKj3MNOqkC+3tKBNYPfGpI7YEKgISk6t4sNBKMDHeTsYNztcOxFE4isKbNbCGTQl6qzz+UaKn5lXF/sI24+e5znnoaVc9SnpG710ASuloCW8vIo+LOakxNyqwLOE8btJqr8SClpwuHfuCrS+U3ECgYEAlzRX2WLeiLdc/JtHSPS92Zw6m/n/WOQs55OceIRjfKuSdthSk5+6jg9v9YSXr1sgqSCO13k1XBwYByOW7DvnSK4dnuneKCVKM7p6FHamRDd0YgHZr+4ZVzbc4vQFD70PQyXgpBg+6ey3suzZmUzgzOyktl7Vtqqg/R8Fsd7n9OE='),('e8f3e730-2db0-4310-b330-0e3a5122790e','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','saml-role-list-mapper'),('eaa543f5-e2db-4144-95d1-a29b16d542da','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','saml-user-property-mapper'),('eb769d2a-8b1d-459b-b3e7-97c7e3468178','edfa47a8-cf84-483b-a233-c70dea5a7cd1','max-clients','200'),('ed0bd899-e240-497a-b39d-369a2145595f','2daea004-eedc-4ccb-98d8-851eebefd692','allow-default-scopes','true'),('ef9df977-81d8-4ca1-8494-272fe0eba0c7','61e34769-6b70-4054-8bb4-23466bd2c8f2','allow-default-scopes','true'),('efcc850d-4f2d-4b0e-aa71-204035795930','66f1feed-84de-442b-b593-f1eb10940d07','max-clients','200'),('f0793b79-ac75-4a10-b74b-72ac807f1d0a','22131721-fbf8-44c3-9eee-d254b841dfc7','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f2015927-bd8b-4418-baed-c12f6b3f5a27','a4c9d3bd-3886-4a0f-84da-c03409e906a4','allowed-protocol-mapper-types','saml-role-list-mapper'),('f35fcb5a-8d4f-4f02-82fc-115a4bc77a23','e4c18794-4b8d-4700-b9e3-4c208a111e53','allow-default-scopes','true'),('f38e5abf-c1d5-41d3-9575-e450aa339563','2de86059-18e2-4a48-8b4c-f35795af3707','priority','100'),('f3b071da-f40e-429e-8033-a8e48e8b7622','f24514ba-ce7c-4d16-a080-ff7b9239cebb','max-clients','200'),('f41683f9-e9ec-42ed-88e2-86c1b99eebff','beefb020-1f43-4460-bdaf-32b3d57961b6','priority','100'),('f6085279-3be0-4c34-873a-23039d45a262','41719d66-5dbb-4dd3-9880-2b244088186b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f6ebc4b1-75a3-4364-86bf-163791aa972a','6622b532-ff23-4465-8d3b-0400a7c1eacb','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('f8cb444b-f88a-47c4-a7ca-fa32fcd54c3b','de0816c6-3ffb-430a-94fd-9cad108b6769','allowed-protocol-mapper-types','oidc-full-name-mapper'),('f8d7a52c-fac3-4af4-bc7e-40418dc09ad7','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','saml-user-property-mapper'),('f8ef41e1-69a4-4412-bb2c-eb070e00e5ce','d5c1fefe-d8ca-48a8-be6f-de65b78a10ca','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('facb1710-1a57-41f4-a5a1-ac5fee3b3246','db657328-30c9-492e-8d14-cda50c6906c9','secret','3u2T7E9Dmae8-O8IAaNtPQ'),('faed2b44-8f4e-48e0-959c-84c847519bf0','be00ac2d-0b9f-4251-b0f7-fca1f7ec89db','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('fc10bc7a-6212-41b5-8626-e546ef875265','7950a778-a533-49b5-866f-06846c9d4712','privateKey','MIIEowIBAAKCAQEAxuAGk58sonVMq6iiiAVVZXCdokvOnchLuM+6Y4Z8NyBdiAxGZJlZ9FfHshlqptg+Z4Eno9Rj/mQFsLATn0L9ZwIxrKQ8p5VThWu/QPiU19VMJ/diGHcHRFquSBDdPzghW2fTxUo1/U/SRxLvQjzNv5K6mHQECzm7JPK8ziBGIqdSHjdawZqNmIurZ/1/h1zxMD0E4Ad3LQxwRDKjGKIhRGUov1F+wWrcVYrh1gY6vnwpQ6iJaSW6V/c1bB3UYbLvSCcqCMvAHhja1TVn3gkYOJDDMQD6G97afJQiqSRciSw2tV+OYpspZdnuh+XNkjjtF486FuXa5mDcftxYJmwnHwIDAQABAoIBADXdXpqkLaww1hvWWHM78pW/i0p2etdcdTnwtXyYY9NwhjS/kl9T87vM/K792FepUTmqjyh98blosOvavO3RcJ3yR68Jas4/ETidZtc7nODaij528BBNSOAYKYUmYC5rzwkZVY/lmjrqYDtU4w3PNzDwlm6NWb0KnWgUANRZhHWE3iYUGwvtMk4ervCMe9mfsOTT5BGACBOBzbqByp3Iy+bJSWSRM0parAYo0f4TOhw2p6zU0RCASuGJLrWoRgoh8/6yYLEUf/90TIUJlximNI9PAGWZ4HvTybeb0WhOfFS+cu8swdcILpzXWyPQdMuk7vOIfEIKfresbmHW8l8lQC0CgYEA/H5BRv5kvGB2kkpJo6eAPMEtp6XIFTK4rWrgFzmmV7Q2dpJ06rPSqCTHEHL2qb82Y2e/s5aTz2BoUd+WahVSxCzgra5n0X9qmj7JIS5cpix2/w5CXJPsEp0ElOkx94fkZtjCVYHClQtn34OikTQBUbrhnuzHIMRJit+UFSEsiJsCgYEAyaMhZGr3BRzPchGAp5Iw79/WQuE/R9oCSYD8kwQfLTRan4tAzL0OAW1Rhw6LQU78ruKAI6lRS0JDjSQc7TWYlCXgn7WkxAKktIliPlx3zxWPiMesD2BbDy9bnpBvR+8TZGS8EiaVenykD3nHrDIeReWf19wUB4M+Xa6x3WLs+c0CgYAWdBPSAGVs6xcgQ0LxLsAUpwksU23LlMsfgNWUuyezvO7q9HM5O+yLz1l0eQS+a6amiF9f1RAn7ObaAQwbOvI1R9hjGZNZ6f7M4LB6JulOTb33SIlWOkFQFm6F34b2ADurebMub2+iWXVPRyF50Cod3oSZ4WyD2XDAzMkaZ+zR6QKBgGVhTu3FVjPM24R3xl76gv5oZbs0s3N16oZ4gwWMIfzBgPsMseT+/Sa8hyxHpL6Obz+jBFhpzkTvqTUyvhSKSQ/bx4eldZVT2uom1S2Tom2NYqCb/CezA7Wr0v3zku/xBagJegIKQkfWmUpqqXkrrcro/Cg1MCDi3R2PM0Cjd5DVAoGBAI1pjN8uNP9CCtHkFN+FFAXS564VPX6X4hAjcOZ2WiXYhxHsLhP4sFo3IuzcD4DfnqusIhpw5yHAAmvHBwT8jUh23jy90WV2GD4dljA9RzAu3ew4eP5vvBslT0+woQs7pm4JAURovg1ZN+rTAyR1G4SD21f9MoFp9i2OCvMyp0IL'),('fd57e14f-e739-4264-897b-d5b4bd32b08d','97e55447-1d2c-4ad2-962c-10aa02419b2e','certificate','MIIClzCCAX8CBgGQun6hMzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDcxNjA3NDExOVoXDTM0MDcxNjA3NDI1OVowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMN8d4S5gqosUy23kG0f+EqK2QWmoNhSRbqHYv0/IAXAIzUKRdeg2dBTiVbpu2eYFvOHSRSylMF9JVCS7oXEpYjjrkotzZtlGAym3jweRDXBN6oLswjTULpoYQS69SdL/jH2iLTrBZskzOcfNFOCYzqvDj9rXRUO5E9JQU9s+JBG1FKN6yofjJjoiZ7bt0Li8VrEAURddt+J6ZNY0NcSK2sh1PLGkJudrEeiDzlf5J0qh1qAdRERXC4i8897u6kKGXaZFWeYb4fLO7IhCSNfx6JpKIT1gtUADhWprKrwHD70baF40TjoA3LInT3kqUaqbGZU45Wp61gXZCkJw8AjcTMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAezObtf4yW2OhVMKLKkieN/rOPSSi8+mj/smDR3VWkpD09+43tou1gaHnwWesISiPD3MqeeT+KVlvTGvcMRn2udnADVXb5mYHBkk0fFDs4gCGWStQkrPE9RtnXN7r4Xki3TlSNAU6TVUfM/PKfBb3+jsLORHpuQMw1pKvbalc/GLYBkLz3fj3t0pzyWfEt2zgySQmXqB/yaRT2h+KJprQQOM6kQEqYOU/EZfkYyPCRgGf0PZBVz7r+fBgMbM2MKaVMCma2A2J8bd5AE1PaG7xCt40bX6nqbumQSTtWJuwVU/KlkrkTDnxvrSwJ31WChnf6eeYsZa+c3q/HVDgSic4uQ==');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('04098255-cf50-4717-aae5-983a65835944','48fcf2ff-1249-4eb7-9545-56c448da9283'),('06f483f4-8668-4d42-a69e-f99da124545e','34cea3cf-cb89-4d82-accc-75172babb570'),('06f483f4-8668-4d42-a69e-f99da124545e','58749245-64cc-4bd1-b0c8-a919deb07da2'),('08d167b6-b593-4226-969e-b0e2cff662d1','63b67648-95b2-4000-b609-12364b2f3ebf'),('08d167b6-b593-4226-969e-b0e2cff662d1','f0297a7b-7a3d-4385-8a8c-ea277c52be22'),('0933d0fe-c47c-47e1-810d-975d044b03d1','74b69c18-e0d2-4dbc-963c-a867e7b37bd3'),('0933d0fe-c47c-47e1-810d-975d044b03d1','770e2456-fd89-4871-bc1b-2837074fc3ae'),('0a524663-00b7-440f-b22f-76436eb4ebea','bb72fddf-89b3-4c8d-9659-7b650e09eb22'),('0a524663-00b7-440f-b22f-76436eb4ebea','f6ec5d46-fb0a-474a-befd-d38fe0421483'),('0ae19124-d919-427f-99e8-86521b2440d5','37350cb7-e677-4c2f-afe8-211d71b7b5e1'),('0ae19124-d919-427f-99e8-86521b2440d5','5824f9c7-6e38-4187-b5f4-12ed3e6ecd9b'),('0e2570e1-d98d-404f-8845-fcd5101300f2','7e703b8f-2b88-4a81-ae89-b2009ec22cb3'),('0e2570e1-d98d-404f-8845-fcd5101300f2','b99fb363-4c00-437b-8c0e-6d846e6c75a5'),('12982282-c2aa-4943-a328-6a8d1b5937b4','08e28e12-5297-4fea-ac7c-447e61e9c043'),('12982282-c2aa-4943-a328-6a8d1b5937b4','8a32ad19-440e-4193-b6f0-6f68a8055c45'),('12982282-c2aa-4943-a328-6a8d1b5937b4','bda4b95c-4ec3-4193-9ff3-8603845f6910'),('12982282-c2aa-4943-a328-6a8d1b5937b4','df6f4f73-1ccb-44c5-966c-d37770d0b41a'),('197dd966-6358-44e5-a40c-9e4fbe636015','01d4b72f-796a-4e22-8f6e-715538c04269'),('197dd966-6358-44e5-a40c-9e4fbe636015','036daf4f-1e86-4356-b8d6-7f1a3c47844d'),('197dd966-6358-44e5-a40c-9e4fbe636015','04098255-cf50-4717-aae5-983a65835944'),('197dd966-6358-44e5-a40c-9e4fbe636015','08d167b6-b593-4226-969e-b0e2cff662d1'),('197dd966-6358-44e5-a40c-9e4fbe636015','0ee24393-c546-4c07-83c1-f594bb80fc62'),('197dd966-6358-44e5-a40c-9e4fbe636015','1764ea61-9f25-4eab-8313-999a14542bc2'),('197dd966-6358-44e5-a40c-9e4fbe636015','18e0af8c-51ab-4930-a036-4b0393687e19'),('197dd966-6358-44e5-a40c-9e4fbe636015','205b8f17-a811-4429-9e5e-aa751fa58321'),('197dd966-6358-44e5-a40c-9e4fbe636015','21717a87-4cc5-4637-9887-6fa206237488'),('197dd966-6358-44e5-a40c-9e4fbe636015','29c53cc7-edbe-4535-a885-0224be01ad13'),('197dd966-6358-44e5-a40c-9e4fbe636015','2af99c52-6c93-44e7-9091-e7cfa323b7c2'),('197dd966-6358-44e5-a40c-9e4fbe636015','2b346639-0704-46f4-87b1-418c84e56ce9'),('197dd966-6358-44e5-a40c-9e4fbe636015','2b524b8b-ce98-451f-b1ab-21a5cc00a61c'),('197dd966-6358-44e5-a40c-9e4fbe636015','2eeb969a-e8cf-4a28-b147-4b875b2ce816'),('197dd966-6358-44e5-a40c-9e4fbe636015','30525fa5-06cb-47a3-93a1-f1cd04ac2751'),('197dd966-6358-44e5-a40c-9e4fbe636015','30ae46d3-df76-4035-a01a-ec59ca4ad9a7'),('197dd966-6358-44e5-a40c-9e4fbe636015','345bfcaf-69fa-4438-b0c0-fa99d8ac1a00'),('197dd966-6358-44e5-a40c-9e4fbe636015','3aa898da-2993-47b4-951a-cd0f55f0ca01'),('197dd966-6358-44e5-a40c-9e4fbe636015','3c9d84f9-09d0-44b2-ab60-3b9bfd08828a'),('197dd966-6358-44e5-a40c-9e4fbe636015','3dcea463-b550-48b7-bccc-b3db869855ee'),('197dd966-6358-44e5-a40c-9e4fbe636015','405d2140-09c0-4c71-889d-52d51b4d1d05'),('197dd966-6358-44e5-a40c-9e4fbe636015','415b7de4-c1f5-4ebc-a278-123ca0f39efb'),('197dd966-6358-44e5-a40c-9e4fbe636015','424b4532-07af-4c96-8fb8-b0280519da4a'),('197dd966-6358-44e5-a40c-9e4fbe636015','42593c3f-aeb3-4424-a41c-e803553b6e8a'),('197dd966-6358-44e5-a40c-9e4fbe636015','44cb1b93-d3bd-4282-a727-13c9f3dc987c'),('197dd966-6358-44e5-a40c-9e4fbe636015','45ac7b1f-698f-449a-955f-f7310846bb93'),('197dd966-6358-44e5-a40c-9e4fbe636015','45ec57bb-eec2-4c23-9f43-ee88cbd73dd3'),('197dd966-6358-44e5-a40c-9e4fbe636015','46ff936d-b9e9-434e-b833-5c9d8c3fcedd'),('197dd966-6358-44e5-a40c-9e4fbe636015','48fcf2ff-1249-4eb7-9545-56c448da9283'),('197dd966-6358-44e5-a40c-9e4fbe636015','4967b49b-6626-434a-b98b-121711333678'),('197dd966-6358-44e5-a40c-9e4fbe636015','4fd5ba64-f638-4a77-ad9c-30a24e435dde'),('197dd966-6358-44e5-a40c-9e4fbe636015','525a21be-2e6e-41ce-bf27-d1860ca30e7b'),('197dd966-6358-44e5-a40c-9e4fbe636015','55ba81e9-074a-4952-9481-074ae3aa3dfc'),('197dd966-6358-44e5-a40c-9e4fbe636015','593d846d-50a8-4278-8fb9-3fe6a35b9f00'),('197dd966-6358-44e5-a40c-9e4fbe636015','611510b8-374e-4205-b3bb-8292d6c03601'),('197dd966-6358-44e5-a40c-9e4fbe636015','61240213-229c-43b5-a886-d668e918d801'),('197dd966-6358-44e5-a40c-9e4fbe636015','6253122c-e27c-43d2-b523-67fa7c68ab78'),('197dd966-6358-44e5-a40c-9e4fbe636015','630a28e9-de08-4d53-8cc7-5adb87184945'),('197dd966-6358-44e5-a40c-9e4fbe636015','63b67648-95b2-4000-b609-12364b2f3ebf'),('197dd966-6358-44e5-a40c-9e4fbe636015','665b5522-69bd-45d7-84e1-615b9c5573e9'),('197dd966-6358-44e5-a40c-9e4fbe636015','67abb8b6-3e52-4785-be06-74f390504eb1'),('197dd966-6358-44e5-a40c-9e4fbe636015','67cf435b-e304-4836-a9a4-2242ef9f81f9'),('197dd966-6358-44e5-a40c-9e4fbe636015','6a92d329-28ea-40ee-9c35-b5dcf2b6fb88'),('197dd966-6358-44e5-a40c-9e4fbe636015','73febe1a-b80b-4cda-a6f8-3ebd6af01581'),('197dd966-6358-44e5-a40c-9e4fbe636015','74d7d5a8-1802-41a5-9f1f-74da5cbf2a32'),('197dd966-6358-44e5-a40c-9e4fbe636015','77a995c0-dd56-49aa-acd0-adfc86e23611'),('197dd966-6358-44e5-a40c-9e4fbe636015','7a5e9d12-506b-4b9a-9552-d9e94acfb2aa'),('197dd966-6358-44e5-a40c-9e4fbe636015','7f09b039-6aed-4750-b2a7-7c71f41f9983'),('197dd966-6358-44e5-a40c-9e4fbe636015','817c7394-335e-47bf-bb37-181ca2b77baf'),('197dd966-6358-44e5-a40c-9e4fbe636015','84b20529-0314-45b7-8e6f-1097febab292'),('197dd966-6358-44e5-a40c-9e4fbe636015','8a54e1a3-7650-4f0a-b04c-b52cd4735f99'),('197dd966-6358-44e5-a40c-9e4fbe636015','8ca424e6-aa8a-45ac-9107-2b4b96678e77'),('197dd966-6358-44e5-a40c-9e4fbe636015','92ad537f-be68-4559-ab85-670e9a9f94a3'),('197dd966-6358-44e5-a40c-9e4fbe636015','97ab751a-2835-40c4-b328-5053d8a3d3b8'),('197dd966-6358-44e5-a40c-9e4fbe636015','97ff3e06-3a68-4e8a-be27-cdb8f11c4cdf'),('197dd966-6358-44e5-a40c-9e4fbe636015','9a0056bd-0852-4bc0-aac1-a3eec4db4204'),('197dd966-6358-44e5-a40c-9e4fbe636015','9e0fd700-10c2-4583-9a09-2165e8b03266'),('197dd966-6358-44e5-a40c-9e4fbe636015','9f34e498-f8c8-4ce6-a672-3c76452c438d'),('197dd966-6358-44e5-a40c-9e4fbe636015','a1707606-41c5-4dcb-9591-822b3c4ec4a0'),('197dd966-6358-44e5-a40c-9e4fbe636015','a66e8279-50c4-4949-a82b-56098e7158d6'),('197dd966-6358-44e5-a40c-9e4fbe636015','a8d8158c-7567-4648-a22a-9d40855c0788'),('197dd966-6358-44e5-a40c-9e4fbe636015','ad6f80c7-5dd8-4818-a4b7-b45b73d6a2b7'),('197dd966-6358-44e5-a40c-9e4fbe636015','ad920628-5e30-410b-8de3-6da2032a3972'),('197dd966-6358-44e5-a40c-9e4fbe636015','af0b37b3-5213-4d27-8238-baae2e9b6205'),('197dd966-6358-44e5-a40c-9e4fbe636015','b01806c3-504c-469d-8496-034ca44b0e01'),('197dd966-6358-44e5-a40c-9e4fbe636015','b1132735-21b1-475e-8205-c084e0680f3b'),('197dd966-6358-44e5-a40c-9e4fbe636015','b1b9c7e4-7a55-4855-89f3-ce60950fd84d'),('197dd966-6358-44e5-a40c-9e4fbe636015','b2d5a852-0925-4a05-aba6-b77f3edf0838'),('197dd966-6358-44e5-a40c-9e4fbe636015','b33a7a45-941f-4b7d-a8f2-c8885b255db9'),('197dd966-6358-44e5-a40c-9e4fbe636015','b3ae801d-f1c0-4779-9936-aae5190f8181'),('197dd966-6358-44e5-a40c-9e4fbe636015','b3aff75e-085d-483d-8e47-aaf55303438d'),('197dd966-6358-44e5-a40c-9e4fbe636015','b75ceeb0-42f0-4667-baca-d2ecec33c6a8'),('197dd966-6358-44e5-a40c-9e4fbe636015','b7c006f4-b10f-424f-9411-715ecf97a826'),('197dd966-6358-44e5-a40c-9e4fbe636015','b9e377ec-f80c-4013-8db0-550f8afb80a6'),('197dd966-6358-44e5-a40c-9e4fbe636015','bdc6dd73-1778-48db-acac-b237cab39da7'),('197dd966-6358-44e5-a40c-9e4fbe636015','bfe93b8a-8b50-4ed6-a743-29bd04afd7b8'),('197dd966-6358-44e5-a40c-9e4fbe636015','c02508d5-b6da-4155-9583-65da4d344129'),('197dd966-6358-44e5-a40c-9e4fbe636015','c0ba985e-024d-4c4b-aa31-bb7bbe38542c'),('197dd966-6358-44e5-a40c-9e4fbe636015','c196beef-2632-47f8-a937-d0d1711a1122'),('197dd966-6358-44e5-a40c-9e4fbe636015','c90d07ce-bf5b-44a9-bbbe-2768c1a2d8eb'),('197dd966-6358-44e5-a40c-9e4fbe636015','caf0ea96-3c2a-464a-a74e-3d4362668a6a'),('197dd966-6358-44e5-a40c-9e4fbe636015','cc51e384-d64a-4a51-b0ca-548fb2f3ce92'),('197dd966-6358-44e5-a40c-9e4fbe636015','cd0c3ff9-2584-4adf-b7a3-cf06943bbaf2'),('197dd966-6358-44e5-a40c-9e4fbe636015','d304badb-1729-40d2-bf8f-683dd2a6a2f6'),('197dd966-6358-44e5-a40c-9e4fbe636015','d6de7302-98d1-4035-818d-c0d9e3ca6d34'),('197dd966-6358-44e5-a40c-9e4fbe636015','d6dea370-4e54-4c39-b1c1-f5fd39ab3b26'),('197dd966-6358-44e5-a40c-9e4fbe636015','d87f022e-94bc-4791-853b-9e1de00228d7'),('197dd966-6358-44e5-a40c-9e4fbe636015','dd8078a5-6a89-44af-b485-c3aa25701bb0'),('197dd966-6358-44e5-a40c-9e4fbe636015','de773bea-b837-405c-ada9-c01dfb4d59fa'),('197dd966-6358-44e5-a40c-9e4fbe636015','e00ee2da-a3a5-4391-881a-370f8f810633'),('197dd966-6358-44e5-a40c-9e4fbe636015','e15a9072-b680-4b80-9ed5-4149d04262cc'),('197dd966-6358-44e5-a40c-9e4fbe636015','e2d635e5-1b2d-4c5d-9d41-05fbcd02753b'),('197dd966-6358-44e5-a40c-9e4fbe636015','e2dd0733-58a0-470c-a532-6cf7c186fdcf'),('197dd966-6358-44e5-a40c-9e4fbe636015','e32fe02e-d635-496b-85c9-b92c48a09784'),('197dd966-6358-44e5-a40c-9e4fbe636015','e64b1226-457a-4d15-935e-28724c3bc6a0'),('197dd966-6358-44e5-a40c-9e4fbe636015','ee1b0226-fbfe-4825-952d-4235b6f107fb'),('197dd966-6358-44e5-a40c-9e4fbe636015','f0297a7b-7a3d-4385-8a8c-ea277c52be22'),('197dd966-6358-44e5-a40c-9e4fbe636015','f1441fae-3a23-4f38-a611-e5923f3ee23e'),('197dd966-6358-44e5-a40c-9e4fbe636015','f160a346-be72-4c1b-9211-ecee350216b2'),('197dd966-6358-44e5-a40c-9e4fbe636015','f1c478aa-e8b8-4426-aa6f-0e9734f3418e'),('197dd966-6358-44e5-a40c-9e4fbe636015','f1d81f9d-e1c2-4d3c-8351-f178680a5e8a'),('197dd966-6358-44e5-a40c-9e4fbe636015','f408d89f-7e9c-43f4-8e9b-8c08cc171a11'),('197dd966-6358-44e5-a40c-9e4fbe636015','f5db54fb-c9f6-4946-ba0f-5a135bdbaf7a'),('197dd966-6358-44e5-a40c-9e4fbe636015','f79ac8be-c881-4bb7-b6c9-080eb1fb47f8'),('197dd966-6358-44e5-a40c-9e4fbe636015','f9ad46f8-30f8-4416-b8d3-be3b6e1a8f6e'),('197dd966-6358-44e5-a40c-9e4fbe636015','fa409dca-5f29-4b70-8f60-7e036e3fb9f1'),('197dd966-6358-44e5-a40c-9e4fbe636015','fa62bb5d-a3b2-4103-923a-8d485f824ec8'),('197dd966-6358-44e5-a40c-9e4fbe636015','fdcb3565-fa13-4ee1-89ab-0212ebf42999'),('197dd966-6358-44e5-a40c-9e4fbe636015','ff2c6582-9cae-4ed8-be11-7f53d84fae8a'),('238d8066-af82-4e5c-bd48-cc57a45461b0','45c60d86-8697-486b-90ac-fc2d0fc2fe59'),('238d8066-af82-4e5c-bd48-cc57a45461b0','611e56f6-4972-4b2d-9804-f9c97dc91649'),('238d8066-af82-4e5c-bd48-cc57a45461b0','6c7896a0-902e-4388-a7e5-6bfecbbef855'),('238d8066-af82-4e5c-bd48-cc57a45461b0','9947413f-2bcf-4b60-97e9-6e3f9d7faef5'),('24af0c82-7865-4c30-9394-8699ac2d1529','151954f7-6708-4906-bf56-fd1ccf363a05'),('24af0c82-7865-4c30-9394-8699ac2d1529','19ad4016-32d4-497a-9de0-6b0782f6387e'),('24af0c82-7865-4c30-9394-8699ac2d1529','1af265ae-cfd0-4f4b-a11e-faef8b8e67c8'),('24af0c82-7865-4c30-9394-8699ac2d1529','2d0de8f8-05cc-493d-aa83-48c1ddae6fe6'),('24af0c82-7865-4c30-9394-8699ac2d1529','351b0e0d-c02d-4477-9eb4-4ab5da25c877'),('24af0c82-7865-4c30-9394-8699ac2d1529','362b6263-e951-4c7b-aefa-2be99d1906cd'),('24af0c82-7865-4c30-9394-8699ac2d1529','423b4a7a-dd61-4702-a950-2320e6e660a8'),('24af0c82-7865-4c30-9394-8699ac2d1529','461ee4b0-d1ce-4e1b-a75c-c44fa6315159'),('24af0c82-7865-4c30-9394-8699ac2d1529','47efa081-7522-4b4a-a387-0de8002aaddb'),('24af0c82-7865-4c30-9394-8699ac2d1529','58d873e6-f514-411b-af44-a4f73ae760f1'),('24af0c82-7865-4c30-9394-8699ac2d1529','5f9d041e-c2a3-480d-825a-bec98d6b1c3e'),('24af0c82-7865-4c30-9394-8699ac2d1529','6cc2abc6-289f-4f73-aa14-77091cc21fc8'),('24af0c82-7865-4c30-9394-8699ac2d1529','796783a7-9bd6-4cee-a8dd-b56574a4c390'),('24af0c82-7865-4c30-9394-8699ac2d1529','a55094e4-496d-4d08-a781-af7d8e451a31'),('24af0c82-7865-4c30-9394-8699ac2d1529','b068c987-e12b-4d1f-8ddc-9552ea43519d'),('24af0c82-7865-4c30-9394-8699ac2d1529','bc121606-f0f0-4a55-843e-8249c8940443'),('24af0c82-7865-4c30-9394-8699ac2d1529','d0bb96dd-811a-4122-a5ce-9e616a56d12c'),('24af0c82-7865-4c30-9394-8699ac2d1529','d0dfdd08-483a-4433-ab70-4ddf9f7d1e2b'),('29d9fd78-ea15-488d-9199-6d966d47b4c7','46153f03-0e50-49fe-bed3-cb9652222e99'),('29d9fd78-ea15-488d-9199-6d966d47b4c7','d98d45fb-5fc0-4235-ac99-7b6f345fa3a5'),('313f882b-0d0f-4134-8c9f-5a7f7e7e86f6','1aa41498-7779-4a6e-9ad8-cb35be030edd'),('313f882b-0d0f-4134-8c9f-5a7f7e7e86f6','22e5a143-dc1a-4c68-8b31-582ebb807ddf'),('35f4df02-28c4-486d-8670-8754f3e57a0f','7f4a43dd-e2ca-463f-9aff-ef86c4a514ed'),('37bf9806-914c-4e6b-bb9b-bdfcdcb863b4','72dac35b-c688-4f9b-9e0e-696163b6e628'),('38b7b983-cd3e-4c1d-81c2-fa1b46dd6859','23993022-27e1-4c63-89b8-a17e32b0b5b3'),('38b7b983-cd3e-4c1d-81c2-fa1b46dd6859','3dd71eb3-b2be-48ce-92d7-57c2a186920b'),('3ae4d2b8-9d1f-4a8e-8d7d-c2758f15d53f','d9c5d9f4-034b-4668-acba-6b3358eda140'),('3b89f849-38c5-43d8-9d6a-83b21a8ffc83','b13698de-6de5-4ddc-8f8b-e70ad14e2338'),('3b89f849-38c5-43d8-9d6a-83b21a8ffc83','d7682be7-cb25-4cbc-b725-8d5e8c646d52'),('3d2911bf-f5ca-4a90-8aca-9efe33e4e9de','2073968f-7dc3-4eb8-8dd2-826557eb28a7'),('3d2911bf-f5ca-4a90-8aca-9efe33e4e9de','37479aa6-e3d8-4b41-a051-e385f441f442'),('42866334-8d03-43ab-93a3-a87cd38be012','6a340fa6-b26f-4392-9052-95d0bb622758'),('42866334-8d03-43ab-93a3-a87cd38be012','eafab10f-f326-4729-8df0-935b87dbd736'),('45ec57bb-eec2-4c23-9f43-ee88cbd73dd3','8a54e1a3-7650-4f0a-b04c-b52cd4735f99'),('45ec57bb-eec2-4c23-9f43-ee88cbd73dd3','af0b37b3-5213-4d27-8238-baae2e9b6205'),('474f22a4-6d62-46f7-bb0a-ebccf50df396','a2540645-ddc6-4dfb-afed-2a57a63b8322'),('474f22a4-6d62-46f7-bb0a-ebccf50df396','aad3a3b8-5902-4d19-8d0d-7995b6a5555b'),('569a0acd-d651-4990-ab26-2a78bb544875','4c208c60-f037-463f-94cd-624a3b08c7ac'),('569a0acd-d651-4990-ab26-2a78bb544875','e2d75edb-d6bf-411d-a6fa-6741747f8f5d'),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','359e7850-aaaa-4a1b-bf65-f0973915720f'),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','692b63ee-019e-4e02-93d7-33898fe9e4b2'),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','7944f806-ce79-43af-8066-dd258060bfe8'),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','e0211544-bf35-4e64-b46c-eba0ee3d82eb'),('67abb8b6-3e52-4785-be06-74f390504eb1','525a21be-2e6e-41ce-bf27-d1860ca30e7b'),('67abb8b6-3e52-4785-be06-74f390504eb1','fa62bb5d-a3b2-4103-923a-8d485f824ec8'),('6a92d329-28ea-40ee-9c35-b5dcf2b6fb88','2b524b8b-ce98-451f-b1ab-21a5cc00a61c'),('6a9800ca-0972-49fe-a95d-3f59bc1b960a','c4641965-9dbe-4d2e-94ef-8204e1165c84'),('6a9800ca-0972-49fe-a95d-3f59bc1b960a','fe049ce0-bf66-4b62-b512-195decd870e5'),('6c7896a0-902e-4388-a7e5-6bfecbbef855','60eef688-34eb-45bc-81d2-eb3b81811a97'),('6cc2abc6-289f-4f73-aa14-77091cc21fc8','1af265ae-cfd0-4f4b-a11e-faef8b8e67c8'),('6cc2abc6-289f-4f73-aa14-77091cc21fc8','bc121606-f0f0-4a55-843e-8249c8940443'),('74d7d5a8-1802-41a5-9f1f-74da5cbf2a32','61240213-229c-43b5-a886-d668e918d801'),('769036a0-7215-41c3-a0c5-a7d103fdd68c','4dd66d4c-d39f-4198-8261-577b086b7e99'),('769036a0-7215-41c3-a0c5-a7d103fdd68c','e4ee8412-5304-442d-a442-9264601da414'),('77a995c0-dd56-49aa-acd0-adfc86e23611','4fd5ba64-f638-4a77-ad9c-30a24e435dde'),('77a995c0-dd56-49aa-acd0-adfc86e23611','e32fe02e-d635-496b-85c9-b92c48a09784'),('7944f806-ce79-43af-8066-dd258060bfe8','582dde54-cfcf-484a-a8fa-6aef66f475ba'),('79e06787-206a-4783-85d4-0afa3178307a','18f1a96a-a829-4227-bfe7-6e54e9d3560c'),('79e06787-206a-4783-85d4-0afa3178307a','6a340fa6-b26f-4392-9052-95d0bb622758'),('79e06787-206a-4783-85d4-0afa3178307a','eafab10f-f326-4729-8df0-935b87dbd736'),('873b677b-f7d3-438b-ac5d-0e6b24038811','0114f0b6-91ac-4e55-b7f0-8a3d88116c93'),('89e68d0e-cdfc-4378-8634-eb627ec0557e','b6f763a7-10a1-4f0f-b824-43414f71e872'),('89e68d0e-cdfc-4378-8634-eb627ec0557e','ee513551-3e88-474e-94f6-9ec52b4c6877'),('8a95423a-09c6-4bcd-b6df-99082a195060','19c6bb84-2dbd-4ef9-9447-5d4953b9cacf'),('8a95423a-09c6-4bcd-b6df-99082a195060','29e6bfd7-32e0-4413-9328-72e02bc7ab16'),('8a95423a-09c6-4bcd-b6df-99082a195060','59991fe2-82c5-4946-a2e3-39c59b9a4903'),('8a95423a-09c6-4bcd-b6df-99082a195060','64d05d3b-05f4-42eb-9e98-8679a0949dd5'),('8a95423a-09c6-4bcd-b6df-99082a195060','9d19a1c1-aa79-4f10-98ca-6a363a121a76'),('8a95423a-09c6-4bcd-b6df-99082a195060','9dc882ec-99b5-4f6c-b1d4-1c986e3df141'),('8a95423a-09c6-4bcd-b6df-99082a195060','bb72fddf-89b3-4c8d-9659-7b650e09eb22'),('8a95423a-09c6-4bcd-b6df-99082a195060','ca3a7e3b-8e0e-400b-9588-297f3bcf0a34'),('8a95423a-09c6-4bcd-b6df-99082a195060','d6c47e26-70c6-45f6-beab-c5193a523c3a'),('8a95423a-09c6-4bcd-b6df-99082a195060','e0ba63c9-23ea-4451-8bf0-9c0b4d22e321'),('8a95423a-09c6-4bcd-b6df-99082a195060','ef541bc7-3d21-4040-a6aa-58e62ed9dfac'),('8a95423a-09c6-4bcd-b6df-99082a195060','f6ec5d46-fb0a-474a-befd-d38fe0421483'),('8c7fb901-38be-4324-9823-6ea635863c6c','1886a282-12e4-41b7-a39a-b1b1c9a503ee'),('8c7fb901-38be-4324-9823-6ea635863c6c','a5813dcc-8b3d-4c48-ab09-bb2f2b980d4e'),('96791704-5d47-40dd-9597-b6f3d445a6fc','3e322438-2e1e-4a49-8710-f37e58978ce9'),('96791704-5d47-40dd-9597-b6f3d445a6fc','77db5a6e-264c-4e3e-8369-36046e91f39c'),('97a1910d-ae1d-4865-992e-44f1ee162165','0bfb08d0-02fd-43e5-8a2f-3625797a6960'),('97a1910d-ae1d-4865-992e-44f1ee162165','0d3a0321-e035-4abe-9455-a9b9127efa3a'),('97a1910d-ae1d-4865-992e-44f1ee162165','10359c7a-5b0c-4d43-bc63-239950f7df25'),('97a1910d-ae1d-4865-992e-44f1ee162165','103683d2-fbd0-46d6-a454-08e0351434d7'),('97a1910d-ae1d-4865-992e-44f1ee162165','15a43a19-2f34-4527-afa6-176a3d8fd20d'),('97a1910d-ae1d-4865-992e-44f1ee162165','2ef13cd4-957c-4020-9973-41890d697449'),('97a1910d-ae1d-4865-992e-44f1ee162165','33599cb8-a06f-4c18-bf56-2b4067a31676'),('97a1910d-ae1d-4865-992e-44f1ee162165','3520aaf3-0a9d-49a6-9d1d-34743b7d33cb'),('97a1910d-ae1d-4865-992e-44f1ee162165','357d3220-9896-4ad7-9756-5a6550d9cbfd'),('97a1910d-ae1d-4865-992e-44f1ee162165','65b0ef45-b498-4aec-b700-d2e02754f8bc'),('97a1910d-ae1d-4865-992e-44f1ee162165','9f47084f-4007-4809-a51d-d537330adf9b'),('97a1910d-ae1d-4865-992e-44f1ee162165','a9221ad4-599c-41a5-afbd-c74ecc77285e'),('97a1910d-ae1d-4865-992e-44f1ee162165','afbe482c-03d8-4199-ac49-190e699bda55'),('97a1910d-ae1d-4865-992e-44f1ee162165','c73f25b0-1ffc-4ac0-bf63-93a89e453a1c'),('97a1910d-ae1d-4865-992e-44f1ee162165','c7aa4f65-9b82-4cbd-95de-4ea1489f4c13'),('97a1910d-ae1d-4865-992e-44f1ee162165','ceb85ccf-7436-4129-b290-8fe29fed23f7'),('97a1910d-ae1d-4865-992e-44f1ee162165','e6f8db81-6013-46dd-94df-da4d79aa31a2'),('97a1910d-ae1d-4865-992e-44f1ee162165','ec027861-0de2-4b25-b1d9-9bb610b78d76'),('97f89c4b-99af-4403-af2a-a5195e573218','1af222bc-f6e9-4808-83e6-82cae4708e6b'),('97f89c4b-99af-4403-af2a-a5195e573218','dd458074-e78a-4a93-96dc-ac1cec230a11'),('97ff3e06-3a68-4e8a-be27-cdb8f11c4cdf','b1b9c7e4-7a55-4855-89f3-ce60950fd84d'),('97ff3e06-3a68-4e8a-be27-cdb8f11c4cdf','f408d89f-7e9c-43f4-8e9b-8c08cc171a11'),('9a0f84cd-5eaa-4377-b2f5-5d30337c4d84','b9e3c5f4-072b-45f7-89aa-51acb6de8e31'),('9a6dc8be-9e8b-49bc-8dd6-31f8dbeb4cfd','9e866fd5-37cc-49aa-a7af-ba984648d662'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','15bfe3dc-2ea8-45e7-b24b-a181a1281592'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','1a710fc2-262f-4ae2-b150-2af4c874c5e2'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','2073968f-7dc3-4eb8-8dd2-826557eb28a7'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','37479aa6-e3d8-4b41-a051-e385f441f442'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','38e0cc37-5964-4c71-903c-0b20812d3090'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','3ae4d2b8-9d1f-4a8e-8d7d-c2758f15d53f'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','3d2911bf-f5ca-4a90-8aca-9efe33e4e9de'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','43a61217-8ace-48f5-9e96-21b22a536af2'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','5f0a98aa-8a67-4549-bf21-32c39a489e0e'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','7dff6034-99c7-4a6d-8005-58c68c4ef1d0'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','83f4a238-d220-481d-85a9-0f4d28cbb589'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','8c95ff19-f47b-4e0d-8dfa-8c9a3b341f6a'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','97674e80-765c-4c7f-ae4e-4a2fa86e83d5'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','9dc882ec-99b5-4f6c-b1d4-1c986e3df141'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','ca3a7e3b-8e0e-400b-9588-297f3bcf0a34'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','d9c5d9f4-034b-4668-acba-6b3358eda140'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','ef541bc7-3d21-4040-a6aa-58e62ed9dfac'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','fe72f229-374d-4db7-9f11-47d21539e83e'),('9e0fd700-10c2-4583-9a09-2165e8b03266','c02508d5-b6da-4155-9583-65da4d344129'),('a4b45483-c30c-46ea-a1a9-dafa6e686c00','21cd41a2-5bf3-4a2f-9d87-68cf30feb38a'),('a5d9f202-a744-4231-ace0-8cd577957458','34cea3cf-cb89-4d82-accc-75172babb570'),('a5d9f202-a744-4231-ace0-8cd577957458','58749245-64cc-4bd1-b0c8-a919deb07da2'),('a5d9f202-a744-4231-ace0-8cd577957458','cfb66984-6731-4fca-87ce-1b6653679c17'),('a5e749bc-3db2-40e8-97ab-22297ee80f5a','19c6bb84-2dbd-4ef9-9447-5d4953b9cacf'),('a5e749bc-3db2-40e8-97ab-22297ee80f5a','bb72fddf-89b3-4c8d-9659-7b650e09eb22'),('a5e749bc-3db2-40e8-97ab-22297ee80f5a','f6ec5d46-fb0a-474a-befd-d38fe0421483'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','083e00e7-55ea-47ce-a196-2427fe421df5'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','0b9260c8-3a36-4315-9ef7-30feb1702ffd'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','0ce8cb5d-017f-45e8-9dd1-00d7c954d64d'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','1af222bc-f6e9-4808-83e6-82cae4708e6b'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','3983382c-cc90-4a96-84b5-45bebe8483c6'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','59887b9d-52eb-4710-9f3a-23ffac62bed2'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','6467d571-c1cb-4a58-9e8b-21cdcc586b24'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','8b5f0009-dcab-44b7-8169-2f2dec0c4de1'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','93a38360-8bea-40ab-8828-b9e058721104'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','97f89c4b-99af-4403-af2a-a5195e573218'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','9a0f84cd-5eaa-4377-b2f5-5d30337c4d84'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','b9e3c5f4-072b-45f7-89aa-51acb6de8e31'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','c28fdfd0-b601-4660-ab03-e25c065bdbe2'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','d9b95956-c78a-4b61-b5eb-c528facaa9f6'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','dd458074-e78a-4a93-96dc-ac1cec230a11'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','e042f342-dfcf-4c67-a3a0-702bb2914167'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','f5879002-ec74-4605-8c9f-248fe2f86f42'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','fcd12bfc-b638-460f-9980-5423b1c0a700'),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','235a02ba-e365-4a12-8f71-9616d3cbd707'),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','aad05f9d-02fb-420f-aa79-b5c026e7ab88'),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','ec9870e7-1cab-47ad-a4dc-ef3fd72f5b93'),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','edded127-7d1a-4106-8532-64ecb378cd58'),('aa27e66e-5bf9-4ebf-8140-2a02fe8f04dd','942f261d-25df-4ba1-abdf-38607a78163b'),('ae87cb8d-a1ef-4e47-a357-72829af18ade','68fa7b55-1b14-4a2d-87c6-716c7a097d8d'),('ae87cb8d-a1ef-4e47-a357-72829af18ade','77c6574e-4d89-4d76-834a-867c4cd23d6d'),('ae87cb8d-a1ef-4e47-a357-72829af18ade','9a6dc8be-9e8b-49bc-8dd6-31f8dbeb4cfd'),('ae87cb8d-a1ef-4e47-a357-72829af18ade','bee883db-229f-472e-8097-78bf12542d2c'),('afbe482c-03d8-4199-ac49-190e699bda55','9f47084f-4007-4809-a51d-d537330adf9b'),('afbe482c-03d8-4199-ac49-190e699bda55','a9221ad4-599c-41a5-afbd-c74ecc77285e'),('b0490bcc-20dc-47ad-9a9f-235ba557d093','1ce7dbb0-5777-4ad4-8309-ee5e0871604c'),('b0490bcc-20dc-47ad-9a9f-235ba557d093','c7e3c2f4-beb7-4833-8411-bd7ee322721e'),('b0490bcc-20dc-47ad-9a9f-235ba557d093','fe9f4c00-258d-4d08-bbf6-3b1cd46db86d'),('bcf7e24a-b5a8-4423-8dfb-5d932fb5b191','23993022-27e1-4c63-89b8-a17e32b0b5b3'),('bcf7e24a-b5a8-4423-8dfb-5d932fb5b191','3dd71eb3-b2be-48ce-92d7-57c2a186920b'),('bcf7e24a-b5a8-4423-8dfb-5d932fb5b191','96236374-8d82-4131-8215-0250ebdef0c7'),('c44d2b90-e531-4ed1-98d8-4096445ddc17','0a411163-ad86-4511-a3f9-5cc4453d6901'),('c44d2b90-e531-4ed1-98d8-4096445ddc17','46d54951-4dd0-4a8d-ba31-e0e70a90f20c'),('c5055b16-02b8-416d-960b-eae7c6cec9ac','1ce7dbb0-5777-4ad4-8309-ee5e0871604c'),('c5055b16-02b8-416d-960b-eae7c6cec9ac','c7e3c2f4-beb7-4833-8411-bd7ee322721e'),('d0bb96dd-811a-4122-a5ce-9e616a56d12c','362b6263-e951-4c7b-aefa-2be99d1906cd'),('d6dea370-4e54-4c39-b1c1-f5fd39ab3b26','2af99c52-6c93-44e7-9091-e7cfa323b7c2'),('d6dea370-4e54-4c39-b1c1-f5fd39ab3b26','2b346639-0704-46f4-87b1-418c84e56ce9'),('d7471445-6170-4d4d-bcef-09af240dbc6e','8fd94f62-afff-4586-b8dc-cb9b0946d044'),('df6f4f73-1ccb-44c5-966c-d37770d0b41a','413121bb-6590-41ee-bb69-e888b66db1b7'),('e150359e-10e2-4e34-9179-ef95606a6293','0ca0442a-8ed6-430e-b92f-3ad881133385'),('e150359e-10e2-4e34-9179-ef95606a6293','151954f7-6708-4906-bf56-fd1ccf363a05'),('e150359e-10e2-4e34-9179-ef95606a6293','2494cb5d-e609-4599-9240-29cef2913a9c'),('e150359e-10e2-4e34-9179-ef95606a6293','34cea3cf-cb89-4d82-accc-75172babb570'),('e150359e-10e2-4e34-9179-ef95606a6293','4a6501e6-8960-4740-9bde-0f1269fb81bb'),('e150359e-10e2-4e34-9179-ef95606a6293','58749245-64cc-4bd1-b0c8-a919deb07da2'),('e150359e-10e2-4e34-9179-ef95606a6293','58d873e6-f514-411b-af44-a4f73ae760f1'),('e150359e-10e2-4e34-9179-ef95606a6293','6bd24823-15ae-481e-bf57-0e090f0886f0'),('e150359e-10e2-4e34-9179-ef95606a6293','7a28f001-dd49-41e2-b021-fc3cca9cf5fa'),('e150359e-10e2-4e34-9179-ef95606a6293','a55094e4-496d-4d08-a781-af7d8e451a31'),('e150359e-10e2-4e34-9179-ef95606a6293','c2f0fd1f-1b34-451d-b5b3-786dddb9e410'),('e150359e-10e2-4e34-9179-ef95606a6293','cfb66984-6731-4fca-87ce-1b6653679c17'),('e3668d90-1629-4f23-a5e3-6e1a78d72219','2761ff7b-32b8-4f75-8be7-d7aa073f45f7'),('e3668d90-1629-4f23-a5e3-6e1a78d72219','307c5336-94d5-4a5d-8078-2c1f0667e035'),('e6f8db81-6013-46dd-94df-da4d79aa31a2','0bfb08d0-02fd-43e5-8a2f-3625797a6960'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','1135e22a-5cc4-4ad4-8898-2861e84dcbfe'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','18f1a96a-a829-4227-bfe7-6e54e9d3560c'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','1d1a24e1-19d2-47bc-b727-4962025a2408'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','2c9d533e-380c-46c0-bc66-73bd1905078b'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','4f74dc54-9a85-467e-8668-b0073229b6fe'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','66ffe385-217a-41d5-bc36-bb6bd61ffb4e'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','6a340fa6-b26f-4392-9052-95d0bb622758'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','7b99d711-74ac-478a-bd0d-f67e45f2b075'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','aaf02b41-d792-412e-b717-3da00193f13f'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','e60660a7-9ca9-4bd8-8eda-a5e3051877c5'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','e84fc679-ab3b-47d7-a651-94550a285921'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','eafab10f-f326-4729-8df0-935b87dbd736'),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','4e7d9fae-5d88-45a8-b995-b0ed8fea97fa'),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','8b623956-ec9a-4143-a2af-62db60a4e793'),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','8e71ee7e-071e-4c0a-8f2b-12e465f5a986'),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','a4b45483-c30c-46ea-a1a9-dafa6e686c00'),('e93f502f-1dff-4dc9-a582-89a70282c69a','0114f0b6-91ac-4e55-b7f0-8a3d88116c93'),('e93f502f-1dff-4dc9-a582-89a70282c69a','0933d0fe-c47c-47e1-810d-975d044b03d1'),('e93f502f-1dff-4dc9-a582-89a70282c69a','169993ab-38c9-4a72-9f9c-6136e31d364e'),('e93f502f-1dff-4dc9-a582-89a70282c69a','2c9d533e-380c-46c0-bc66-73bd1905078b'),('e93f502f-1dff-4dc9-a582-89a70282c69a','48f95fcc-91d5-43d1-b8d9-9d7d5e581ef6'),('e93f502f-1dff-4dc9-a582-89a70282c69a','4f74dc54-9a85-467e-8668-b0073229b6fe'),('e93f502f-1dff-4dc9-a582-89a70282c69a','5b107428-2e7c-4933-a9ee-b6d3ea8f290b'),('e93f502f-1dff-4dc9-a582-89a70282c69a','66ffe385-217a-41d5-bc36-bb6bd61ffb4e'),('e93f502f-1dff-4dc9-a582-89a70282c69a','74b69c18-e0d2-4dbc-963c-a867e7b37bd3'),('e93f502f-1dff-4dc9-a582-89a70282c69a','770e2456-fd89-4871-bc1b-2837074fc3ae'),('e93f502f-1dff-4dc9-a582-89a70282c69a','873b677b-f7d3-438b-ac5d-0e6b24038811'),('e93f502f-1dff-4dc9-a582-89a70282c69a','97690ff5-d477-4ea6-b755-5310436bfb49'),('e93f502f-1dff-4dc9-a582-89a70282c69a','98349832-46e5-4515-b7a8-d401454dba51'),('e93f502f-1dff-4dc9-a582-89a70282c69a','af787959-9cea-4090-aba3-9e464e1609a7'),('e93f502f-1dff-4dc9-a582-89a70282c69a','cc19c629-9174-41e6-9f58-67c0edf436df'),('e93f502f-1dff-4dc9-a582-89a70282c69a','d2123295-bfa3-485a-9643-e0dc9f020add'),('e93f502f-1dff-4dc9-a582-89a70282c69a','de59960c-a7f5-4deb-a0a8-23a450390eb3'),('e93f502f-1dff-4dc9-a582-89a70282c69a','f8f7a58c-39aa-4d21-8785-b8436227f47b'),('ec9870e7-1cab-47ad-a4dc-ef3fd72f5b93','50baf8e7-5502-47f5-b3da-fe0ad021dcf5'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','1ce7dbb0-5777-4ad4-8309-ee5e0871604c'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','2dbe002d-bf9e-4092-8bb2-0b4ff82adc15'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','3983382c-cc90-4a96-84b5-45bebe8483c6'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','59887b9d-52eb-4710-9f3a-23ffac62bed2'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','66e3367b-463b-4c55-b9ab-a4c0e4f53428'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','99b6b609-c19c-4ab6-be76-e96a87039cea'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','a4dfeae4-d7fe-4d0b-9289-f65b49792b88'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','c28fdfd0-b601-4660-ab03-e25c065bdbe2'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','c7e3c2f4-beb7-4833-8411-bd7ee322721e'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','c96dd477-2566-4716-8553-55b123a57959'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','cf9267ee-600a-473d-95fb-28927ff2d401'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','fe9f4c00-258d-4d08-bbf6-3b1cd46db86d'),('ee1b0226-fbfe-4825-952d-4235b6f107fb','665b5522-69bd-45d7-84e1-615b9c5573e9'),('f7d222dc-fc0a-4f25-9d34-bcbcce7e8881','b66451ca-c68a-4b86-b781-579e2ce211e3'),('f834a4a1-ae42-4988-8b60-043bb321da64','23993022-27e1-4c63-89b8-a17e32b0b5b3'),('f834a4a1-ae42-4988-8b60-043bb321da64','253fb5f6-3c05-4399-8c1f-5ee9847bef7f'),('f834a4a1-ae42-4988-8b60-043bb321da64','2b8410cc-c236-4c9b-8a42-3023d4389fa0'),('f834a4a1-ae42-4988-8b60-043bb321da64','3520aaf3-0a9d-49a6-9d1d-34743b7d33cb'),('f834a4a1-ae42-4988-8b60-043bb321da64','3dd71eb3-b2be-48ce-92d7-57c2a186920b'),('f834a4a1-ae42-4988-8b60-043bb321da64','47428908-c790-4963-836d-e984eb0637ad'),('f834a4a1-ae42-4988-8b60-043bb321da64','609d31a4-bbb6-4056-9192-556ec3f1c672'),('f834a4a1-ae42-4988-8b60-043bb321da64','65b0ef45-b498-4aec-b700-d2e02754f8bc'),('f834a4a1-ae42-4988-8b60-043bb321da64','94c77162-2ffb-44bc-9412-998088eb7e77'),('f834a4a1-ae42-4988-8b60-043bb321da64','96236374-8d82-4131-8215-0250ebdef0c7'),('f834a4a1-ae42-4988-8b60-043bb321da64','c73f25b0-1ffc-4ac0-bf63-93a89e453a1c'),('f834a4a1-ae42-4988-8b60-043bb321da64','fccba685-9d14-49e3-873e-f3f67187d9dd'),('fa409dca-5f29-4b70-8f60-7e036e3fb9f1','55ba81e9-074a-4952-9481-074ae3aa3dfc'),('fa7c92ff-d546-42b5-abe0-e1690646e238','3aee0cce-e35a-4d49-b44f-363b56216198'),('fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22','50aa613c-f19f-47fe-a83b-166e4afb07b2'),('fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22','fd4ebc75-79f3-4b33-8441-aec1140f5201');
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
INSERT INTO `CREDENTIAL` VALUES ('0e134e7c-f558-49a0-8c69-aaaa0e4e55bb',NULL,'password','acff92c1-082d-47cb-a81c-aaab3f0e08be',1721115782789,NULL,'{\"value\":\"jNTeyvU4oBC5EkqS3uNbeZ25D1gYQJCn4jUd/khkhJvxp/1BonN67vM/SjJlTj4ZQjGYHQWT1Zo8UgKQr8NsUA==\",\"salt\":\"TtYr7KaEyIoCzx6hGdKoFA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('278e448a-d165-4d2d-bd46-4388cf2fc9c0',NULL,'password','1d9285e8-2479-418c-af18-c8b468e5690f',1721115533083,NULL,'{\"value\":\"1PSirgQi+H6+OQ6yD2ZCLx0SiR+P9mGXyvD6pTHdjjkL/P0S4ogV6qqZpPZ5rNa78Vf0BPGLVxoRtWf/LMPerg==\",\"salt\":\"NfKhTEC2H6810cWhaj/9xA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('48e61145-5db2-41a0-8014-a5c7496ed8df',NULL,'password','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c',1721115808928,NULL,'{\"value\":\"1bm+N12RvnciV/BepCGaQnAqkBnFRXqyS98HUoHMn9pA4Dzn6tZpXUnS0SxWTt+UFlfrndO++0w15HSstnlA3w==\",\"salt\":\"l+5aP4pd0ur7JlyunqHlwA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('b04a667f-f781-4d8d-8175-e23f9ff7d615',NULL,'password','afd00778-6563-4989-8edc-6e86fc0dd6dd',1721115856815,NULL,'{\"value\":\"GD42c+CggERB2ug0/26G7eolHzbQeztBU1vLFxwO///Aiu+ku/iCVI+uoypIl7x5XFhEiTHQ2McOzeHdOnUJzw==\",\"salt\":\"ZQY8oJXx619YEihQh3HiRQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('b2c8813f-634f-4313-9455-d748bf5de200',NULL,'password','03fbdc9a-0040-4699-a474-2c85e9b3c7de',1721115879653,NULL,'{\"value\":\"1m/2GyqGUKTOJJvUSNUOGWlD333Sp3qWx4so/PKIymdwvvC+vNt1RKMh+IJYhgAS8JORvVqUD5AsOtIwhsb0lQ==\",\"salt\":\"dsKN6eeuUy3Ts7IMsO2Sdw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('fb149e92-362d-4db1-b682-b896cf82f508',NULL,'password','c99a0c80-1dbc-4fea-959c-223380942579',1721115831956,NULL,'{\"value\":\"22RptAJs3HRCkjX8xBA+COMiA2DyBz4xRU7Gz0t08rfWEtVgvEj0UH/12mJdFY84lQbSpj/Cbkn6cIDbVz64ZA==\",\"salt\":\"mhWqJuJuS+sEzpFL4j3fQw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-07-16 16:38:34',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-07-16 16:38:34',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-07-16 16:38:35',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-07-16 16:38:35',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-07-16 16:38:36',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-07-16 16:38:36',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-07-16 16:38:37',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-07-16 16:38:37',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-07-16 16:38:37',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-07-16 16:38:38',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-07-16 16:38:38',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-07-16 16:38:38',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-07-16 16:38:38',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:38:39',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:38:39',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:38:39',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-07-16 16:38:39',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-07-16 16:38:39',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-07-16 16:38:40',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-07-16 16:38:40',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-07-16 16:38:40',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-07-16 16:38:40',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-07-16 16:38:40',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-07-16 16:38:40',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-07-16 16:38:40',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-07-16 16:38:40',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-07-16 16:38:41',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-07-16 16:38:41',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-07-16 16:38:41',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-07-16 16:38:41',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-07-16 16:38:42',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-07-16 16:38:42',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:38:42',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:38:42',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:38:42',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:38:42',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-07-16 16:38:42',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1115511212'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-07-16 16:38:42',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-07-16 16:38:42',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:38:42',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:38:42',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:38:42',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-07-16 16:38:43',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-07-16 16:38:43',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:38:43',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:38:43',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:38:43',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:38:43',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-07-16 16:38:43',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-07-16 16:38:44',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-07-16 16:38:44',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-07-16 16:38:44',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-07-16 16:38:44',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-07-16 16:38:44',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:38:44',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:38:44',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:38:44',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-07-16 16:38:45',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-07-16 16:38:45',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-07-16 16:38:45',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-07-16 16:38:45',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-07-16 16:38:45',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-07-16 16:38:45',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-07-16 16:38:46',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-07-16 16:38:46',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-07-16 16:38:46',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-07-16 16:38:46',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-07-16 16:38:46',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-07-16 16:38:46',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-07-16 16:38:46',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'1115511212'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-07-16 16:38:46',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'1115511212'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:38:46',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1115511212'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:38:46',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1115511212'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:38:46',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'1115511212'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:38:46',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-07-16 16:38:46',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:38:46',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:38:46',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:38:46',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-07-16 16:38:46',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:38:46',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:38:46',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:38:46',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:38:46',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'1115511212'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-07-16 16:38:46',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-07-16 16:38:46',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'1115511212'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-07-16 16:38:46',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-07-16 16:38:46',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'1115511212'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1115511212'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'1115511212'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-07-16 16:38:46',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:46',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'1115511212'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:46',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:46',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:46',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:46',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:47',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-07-16 16:38:47',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-07-16 16:38:47',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-07-16 16:38:47',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-07-16 16:38:47',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-07-16 16:38:47',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-16 16:38:47',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-16 16:38:47',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'1115511212'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-07-16 16:38:47',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-07-16 16:38:47',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-07-16 16:38:47',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'1115511212'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-07-16 16:38:47',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-07-16 16:38:47',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-07-16 16:38:47',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-07-16 16:38:47',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'1115511212'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-07-16 16:38:47',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:38:47',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:38:47',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:38:47',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-07-16 16:38:47',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-16 16:38:47',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-16 16:38:47',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-07-16 16:38:47',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'1115511212');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('040bafd0-9c40-449b-9e25-b760eb822e74','4886a7cb-a63d-42ce-9fee-760f1a2c2f10',1),('040bafd0-9c40-449b-9e25-b760eb822e74','82f58373-a88d-44e3-a67f-36c4b87a8d9f',1),('040bafd0-9c40-449b-9e25-b760eb822e74','a24d02ec-eac5-4200-b566-c75ca300fa76',0),('040bafd0-9c40-449b-9e25-b760eb822e74','bf7128e1-794a-4d8c-8123-1d64255cc634',1),('040bafd0-9c40-449b-9e25-b760eb822e74','c5afdf64-4e09-4b8e-bfb4-428943acd15a',1),('040bafd0-9c40-449b-9e25-b760eb822e74','c78bc6da-aabc-4932-aaee-e067b9e128ba',0),('040bafd0-9c40-449b-9e25-b760eb822e74','d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789',1),('040bafd0-9c40-449b-9e25-b760eb822e74','e19e2469-8847-4078-b21d-efa781b72b2d',1),('040bafd0-9c40-449b-9e25-b760eb822e74','e89c1a08-6c1a-4954-ad15-e59d3237c8ba',0),('040bafd0-9c40-449b-9e25-b760eb822e74','f21cd001-c2b6-4090-994f-c0a49521e43e',0),('org1','0ca53734-3896-4acd-891a-84e68adfd9de',1),('org1','1f7e046f-1bfb-4f1d-b32e-834fdd516c59',1),('org1','3144ed7a-ee50-42ab-a523-016abc4b5d92',1),('org1','38f7c8bc-4ee3-46b1-a925-1ad92fa5f3f9',1),('org1','4d3dc50c-046e-4be6-a7d6-a28f2fb4732a',0),('org1','588fd181-4a21-48bb-bfd6-c5a15980d877',1),('org1','71c290b9-9ab7-4c49-b46f-762c4723da84',0),('org1','c02fdc68-891c-49b5-8621-eb5e501bafa1',1),('org1','fbb5b543-513e-4bb8-8297-58bed7bf36cd',0),('org1','fd40bdd4-1f03-4470-82e1-dc485805c331',0),('org2','397e78d0-fabf-4cfd-b214-9936a60347b1',1),('org2','41bd8ab5-49bd-4392-966d-efc10effba9e',1),('org2','4c90144c-2e6e-4764-bb89-97a0a6bc2acc',1),('org2','94247a81-74b0-4561-a790-41975dcd8d63',1),('org2','a580fd66-57e1-4e56-8a97-7a77015f4657',1),('org2','b6fc35c6-234a-4e2d-b3bc-69622678a0a3',0),('org2','c24e17de-21e2-4323-9b3b-d124f3d65b07',1),('org2','e323deaa-6b05-4d40-8e40-553a163a833d',0),('org2','e6ea6fc7-fa75-48ad-ba13-e3d623ab904e',0),('org2','fb3e8af9-8d8a-467c-9f29-0276302d6169',0),('org3','033e36a9-52e2-4a84-a0a9-7d9205c92757',0),('org3','1c5dcbdb-7397-45f3-99b3-5b070b56a289',1),('org3','2bccda12-189c-4182-9a1f-c573828d79e8',0),('org3','3957e10c-d7b6-40da-9261-b78170643382',1),('org3','9e0158d9-56b1-400c-b4c9-e400d616a922',1),('org3','9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80',0),('org3','b2a40e00-8701-46b4-877f-d09d957e8180',1),('org3','bd3a8fbc-9a67-484a-9966-52cf07d25ac3',1),('org3','be4bfa55-4a3e-48db-a7cd-ae045c01f9de',0),('org3','f63d8bdd-364d-4b8c-8e73-54388e3eaeaa',1),('org4','09a20393-79b0-480e-ad87-1fab7109a4af',1),('org4','1ffe8d8f-fcab-40da-a6ec-8ca39b148671',1),('org4','267c858c-0480-4182-b76f-4309f172b5f0',1),('org4','40b1e47f-3f24-42c9-b98c-990fde880aef',0),('org4','7cfebc5f-368c-45a9-8e8e-605c430caf09',0),('org4','84294d37-f577-4eb6-9233-7ae35cd3c0fb',1),('org4','861297de-cbe5-4ac3-9209-45be588259aa',1),('org4','a90e6804-7709-432d-9367-368a20e94949',0),('org4','d8e03a4b-ff1d-450e-91e3-4832e73b887f',1),('org4','edf2d7ba-c30d-48a5-8fff-d05ddf158f85',0),('org5','091d4302-f63e-4b7a-b811-8aa48718d48c',0),('org5','28696408-7a51-49b2-9ecb-90266e404122',1),('org5','73bf9a14-cc54-4b25-86e9-ae40e996c6a3',1),('org5','7e917783-3eb6-48fb-bead-e8ce41722d58',1),('org5','9ba65954-3415-4bbd-82bf-49c7b434596a',0),('org5','9c40b9dc-3d87-4069-ab41-d1ce62a92ad4',0),('org5','af1d0ff6-80ef-477b-8d7d-58b51cd09459',1),('org5','c5ea99ce-48aa-46d4-8bc1-780e792fd833',0),('org5','cee1f0f0-1e18-4ad7-b16b-395737bb8d88',1),('org5','f2d857f8-0190-48f3-84e6-6f7382d5a898',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0114f0b6-91ac-4e55-b7f0-8a3d88116c93','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_query-clients}','query-clients','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('01d4b72f-796a-4e22-8f6e-715538c04269','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_manage-clients}','manage-clients','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('036daf4f-1e86-4356-b8d6-7f1a3c47844d','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_view-events}','view-events','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('0397a159-d4c3-4de6-ba17-f1fb1f17d194','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_view-groups}','view-groups','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('04098255-cf50-4717-aae5-983a65835944','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_view-clients}','view-clients','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('06f483f4-8668-4d42-a69e-f99da124545e','736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,NULL,'_organization-user-manager','org5','736f2faa-dc2a-49bd-9e25-c09b8d99536b',NULL),('083e00e7-55ea-47ce-a196-2427fe421df5','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_manage-clients}','manage-clients','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('08d167b6-b593-4226-969e-b0e2cff662d1','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_view-users}','view-users','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('08e28e12-5297-4fea-ac7c-447e61e9c043','040bafd0-9c40-449b-9e25-b760eb822e74',0,'${role_offline-access}','offline_access','040bafd0-9c40-449b-9e25-b760eb822e74',NULL,NULL),('0933d0fe-c47c-47e1-810d-975d044b03d1','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_view-users}','view-users','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('0a411163-ad86-4511-a3f9-5cc4453d6901','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_ws2-admin','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('0a524663-00b7-440f-b22f-76436eb4ebea','51fced76-a0da-43cc-a530-7f4f925da142',1,NULL,'_organization-user-manager','org4','51fced76-a0da-43cc-a530-7f4f925da142',NULL),('0ae19124-d919-427f-99e8-86521b2440d5','debb3226-8cbc-477d-8b51-65a3c9506840',1,NULL,'_ws2-admin','org2','debb3226-8cbc-477d-8b51-65a3c9506840',NULL),('0b9260c8-3a36-4315-9ef7-30feb1702ffd','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_manage-authorization}','manage-authorization','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('0bfb08d0-02fd-43e5-8a2f-3625797a6960','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_query-clients}','query-clients','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('0ca0442a-8ed6-430e-b92f-3ad881133385','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-audit-log','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('0ce8cb5d-017f-45e8-9dd1-00d7c954d64d','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_query-realms}','query-realms','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('0d3a0321-e035-4abe-9455-a9b9127efa3a','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_create-client}','create-client','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('0dafb6d4-65a9-44c7-9b33-f4e12df09f44','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_view-applications}','view-applications','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('0e2570e1-d98d-404f-8845-fcd5101300f2','65c3c063-c83c-44fe-b21f-e333de132425',1,NULL,'_ws2-admin','org1','65c3c063-c83c-44fe-b21f-e333de132425',NULL),('0ee24393-c546-4c07-83c1-f594bb80fc62','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_view-authorization}','view-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('10359c7a-5b0c-4d43-bc63-239950f7df25','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_impersonation}','impersonation','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('103683d2-fbd0-46d6-a454-08e0351434d7','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_manage-authorization}','manage-authorization','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('1135e22a-5cc4-4ad4-8898-2861e84dcbfe','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-upd','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('124fb45b-8bfe-409e-b3b1-7217771d02f8','76eb28d2-6998-4436-933a-55d97c399802',1,'${role_read-token}','read-token','org4','76eb28d2-6998-4436-933a-55d97c399802',NULL),('12982282-c2aa-4943-a328-6a8d1b5937b4','040bafd0-9c40-449b-9e25-b760eb822e74',0,'${role_default-roles}','default-roles-master','040bafd0-9c40-449b-9e25-b760eb822e74',NULL,NULL),('151954f7-6708-4906-bf56-fd1ccf363a05','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_view-realm}','view-realm','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('15a43a19-2f34-4527-afa6-176a3d8fd20d','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_query-realms}','query-realms','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('15bfe3dc-2ea8-45e7-b24b-a181a1281592','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_manage-clients}','manage-clients','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('169993ab-38c9-4a72-9f9c-6136e31d364e','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_manage-realm}','manage-realm','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('1764ea61-9f25-4eab-8313-999a14542bc2','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_view-realm}','view-realm','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('1886a282-12e4-41b7-a39a-b1b1c9a503ee','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'ws1','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('18e0af8c-51ab-4930-a036-4b0393687e19','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_view-realm}','view-realm','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('18f1a96a-a829-4227-bfe7-6e54e9d3560c','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-ws-role-mt','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('197dd966-6358-44e5-a40c-9e4fbe636015','040bafd0-9c40-449b-9e25-b760eb822e74',0,'${role_admin}','admin','040bafd0-9c40-449b-9e25-b760eb822e74',NULL,NULL),('19ad4016-32d4-497a-9de0-6b0782f6387e','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_manage-events}','manage-events','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('19c6bb84-2dbd-4ef9-9447-5d4953b9cacf','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-ws-role-mt','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('1a710fc2-262f-4ae2-b150-2af4c874c5e2','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_manage-events}','manage-events','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('1aa41498-7779-4a6e-9ad8-cb35be030edd','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'ws1','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('1af222bc-f6e9-4808-83e6-82cae4708e6b','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_query-groups}','query-groups','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('1af265ae-cfd0-4f4b-a11e-faef8b8e67c8','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_query-groups}','query-groups','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('1ce7dbb0-5777-4ad4-8309-ee5e0871604c','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-usr-mt','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('1d1a24e1-19d2-47bc-b727-4962025a2408','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-usage','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('205b8f17-a811-4429-9e5e-aa751fa58321','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_manage-clients}','manage-clients','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('2073968f-7dc3-4eb8-8dd2-826557eb28a7','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_query-users}','query-users','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('21717a87-4cc5-4637-9887-6fa206237488','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_manage-identity-providers}','manage-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('21cd41a2-5bf3-4a2f-9d87-68cf30feb38a','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_manage-account-links}','manage-account-links','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('22e5a143-dc1a-4c68-8b31-582ebb807ddf','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_ws1-admin','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('235a02ba-e365-4a12-8f71-9616d3cbd707','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_view-profile}','view-profile','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('238d8066-af82-4e5c-bd48-cc57a45461b0','org3',0,'${role_default-roles}','default-roles-org3','org3',NULL,NULL),('23993022-27e1-4c63-89b8-a17e32b0b5b3','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-usr-mt','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('2494cb5d-e609-4599-9240-29cef2913a9c','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-usage','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('24af0c82-7865-4c30-9394-8699ac2d1529','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_realm-admin}','realm-admin','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('253fb5f6-3c05-4399-8c1f-5ee9847bef7f','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-audit-log','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('2761ff7b-32b8-4f75-8be7-d7aa073f45f7','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'ws3','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('29c53cc7-edbe-4535-a885-0224be01ad13','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_query-realms}','query-realms','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('29d9fd78-ea15-488d-9199-6d966d47b4c7','736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,NULL,'_ws2-admin','org5','736f2faa-dc2a-49bd-9e25-c09b8d99536b',NULL),('29e6bfd7-32e0-4413-9328-72e02bc7ab16','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-role-usr','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('2af99c52-6c93-44e7-9091-e7cfa323b7c2','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_query-groups}','query-groups','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('2b346639-0704-46f4-87b1-418c84e56ce9','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_query-users}','query-users','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('2b524b8b-ce98-451f-b1ab-21a5cc00a61c','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_query-clients}','query-clients','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('2b8410cc-c236-4c9b-8a42-3023d4389fa0','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-own-mt','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('2c9d533e-380c-46c0-bc66-73bd1905078b','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_manage-identity-providers}','manage-identity-providers','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('2d0de8f8-05cc-493d-aa83-48c1ddae6fe6','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_manage-realm}','manage-realm','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('2dbe002d-bf9e-4092-8bb2-0b4ff82adc15','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-audit-log','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('2eeb969a-e8cf-4a28-b147-4b875b2ce816','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_view-events}','view-events','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('2ef13cd4-957c-4020-9973-41890d697449','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_view-events}','view-events','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('2f22dbe3-94c0-4b76-ba0e-8cf40f9a0666','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_delete-account}','delete-account','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('30525fa5-06cb-47a3-93a1-f1cd04ac2751','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_create-client}','create-client','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('307c5336-94d5-4a5d-8078-2c1f0667e035','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_ws3-admin','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('30ae46d3-df76-4035-a01a-ec59ca4ad9a7','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_create-client}','create-client','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('313f882b-0d0f-4134-8c9f-5a7f7e7e86f6','736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,NULL,'_ws1-admin','org5','736f2faa-dc2a-49bd-9e25-c09b8d99536b',NULL),('33599cb8-a06f-4c18-bf56-2b4067a31676','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_manage-realm}','manage-realm','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('345bfcaf-69fa-4438-b0c0-fa99d8ac1a00','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_manage-users}','manage-users','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('34cea3cf-cb89-4d82-accc-75172babb570','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-ws-role-usr','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('351b0e0d-c02d-4477-9eb4-4ab5da25c877','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_manage-authorization}','manage-authorization','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('3520aaf3-0a9d-49a6-9d1d-34743b7d33cb','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_manage-identity-providers}','manage-identity-providers','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('357d3220-9896-4ad7-9756-5a6550d9cbfd','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_manage-events}','manage-events','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('359e7850-aaaa-4a1b-bf65-f0973915720f','org5',0,'${role_offline-access}','offline_access','org5',NULL,NULL),('35f4df02-28c4-486d-8670-8754f3e57a0f','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_manage-consent}','manage-consent','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('362b6263-e951-4c7b-aefa-2be99d1906cd','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_query-clients}','query-clients','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('37350cb7-e677-4c2f-afe8-211d71b7b5e1','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_ws2-admin','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('37479aa6-e3d8-4b41-a051-e385f441f442','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_query-groups}','query-groups','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('37bf9806-914c-4e6b-bb9b-bdfcdcb863b4','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_manage-consent}','manage-consent','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('38b7b983-cd3e-4c1d-81c2-fa1b46dd6859','65c3c063-c83c-44fe-b21f-e333de132425',1,NULL,'_organization-user-manager','org1','65c3c063-c83c-44fe-b21f-e333de132425',NULL),('38e0cc37-5964-4c71-903c-0b20812d3090','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_view-events}','view-events','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('3983382c-cc90-4a96-84b5-45bebe8483c6','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_view-realm}','view-realm','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('3a3530d0-eea9-4928-9cc9-41801d2fa7d0','87a03152-81d7-4fed-974a-b2d53d0551a7',1,'${role_read-token}','read-token','040bafd0-9c40-449b-9e25-b760eb822e74','87a03152-81d7-4fed-974a-b2d53d0551a7',NULL),('3aa898da-2993-47b4-951a-cd0f55f0ca01','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_manage-authorization}','manage-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('3ae4d2b8-9d1f-4a8e-8d7d-c2758f15d53f','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_view-clients}','view-clients','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('3aee0cce-e35a-4d49-b44f-363b56216198','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_view-consent}','view-consent','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('3b89f849-38c5-43d8-9d6a-83b21a8ffc83','51fced76-a0da-43cc-a530-7f4f925da142',1,NULL,'_ws3-admin','org4','51fced76-a0da-43cc-a530-7f4f925da142',NULL),('3c9d84f9-09d0-44b2-ab60-3b9bfd08828a','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_view-realm}','view-realm','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('3d2911bf-f5ca-4a90-8aca-9efe33e4e9de','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_view-users}','view-users','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('3dcea463-b550-48b7-bccc-b3db869855ee','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_manage-identity-providers}','manage-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('3dd71eb3-b2be-48ce-92d7-57c2a186920b','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-ws-role-usr','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('3e322438-2e1e-4a49-8710-f37e58978ce9','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'ws3','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('405d2140-09c0-4c71-889d-52d51b4d1d05','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_view-identity-providers}','view-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('413121bb-6590-41ee-bb69-e888b66db1b7','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_manage-account-links}','manage-account-links','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('415b7de4-c1f5-4ebc-a278-123ca0f39efb','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_create-client}','create-client','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('423b4a7a-dd61-4702-a950-2320e6e660a8','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_manage-clients}','manage-clients','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('424b4532-07af-4c96-8fb8-b0280519da4a','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_view-authorization}','view-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('42593c3f-aeb3-4424-a41c-e803553b6e8a','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_manage-events}','manage-events','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('42866334-8d03-43ab-93a3-a87cd38be012','821a7df6-a652-4bcb-96df-5d20ac5a8862',1,NULL,'_organization-user-manager','org3','821a7df6-a652-4bcb-96df-5d20ac5a8862',NULL),('43a61217-8ace-48f5-9e96-21b22a536af2','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_impersonation}','impersonation','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('44cb1b93-d3bd-4282-a727-13c9f3dc987c','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_view-events}','view-events','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('45ac7b1f-698f-449a-955f-f7310846bb93','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_create-client}','create-client','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('45c60d86-8697-486b-90ac-fc2d0fc2fe59','org3',0,'${role_offline-access}','offline_access','org3',NULL,NULL),('45ec57bb-eec2-4c23-9f43-ee88cbd73dd3','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_view-users}','view-users','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('46153f03-0e50-49fe-bed3-cb9652222e99','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'ws2','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('461ee4b0-d1ce-4e1b-a75c-c44fa6315159','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_view-authorization}','view-authorization','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('46d54951-4dd0-4a8d-ba31-e0e70a90f20c','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'ws2','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('46ff936d-b9e9-434e-b833-5c9d8c3fcedd','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_view-realm}','view-realm','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('47428908-c790-4963-836d-e984eb0637ad','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-upd','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('474f22a4-6d62-46f7-bb0a-ebccf50df396','51fced76-a0da-43cc-a530-7f4f925da142',1,NULL,'_ws2-admin','org4','51fced76-a0da-43cc-a530-7f4f925da142',NULL),('47efa081-7522-4b4a-a387-0de8002aaddb','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_manage-users}','manage-users','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('48f95fcc-91d5-43d1-b8d9-9d7d5e581ef6','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_impersonation}','impersonation','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('48fcf2ff-1249-4eb7-9545-56c448da9283','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_query-clients}','query-clients','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('4967b49b-6626-434a-b98b-121711333678','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_view-identity-providers}','view-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('4a6501e6-8960-4740-9bde-0f1269fb81bb','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-role-usr','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('4b02b4d5-552b-464d-8e8a-30a324c24633','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_delete-account}','delete-account','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('4c208c60-f037-463f-94cd-624a3b08c7ac','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'ws3','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('4dd66d4c-d39f-4198-8261-577b086b7e99','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'ws3','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('4e7d9fae-5d88-45a8-b995-b0ed8fea97fa','org4',0,'${role_offline-access}','offline_access','org4',NULL,NULL),('4f74dc54-9a85-467e-8668-b0073229b6fe','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_view-realm}','view-realm','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('4fd5ba64-f638-4a77-ad9c-30a24e435dde','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_query-users}','query-users','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('50aa613c-f19f-47fe-a83b-166e4afb07b2','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_ws1-admin','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('50baf8e7-5502-47f5-b3da-fe0ad021dcf5','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_manage-account-links}','manage-account-links','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('525a21be-2e6e-41ce-bf27-d1860ca30e7b','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_query-users}','query-users','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('55ba81e9-074a-4952-9481-074ae3aa3dfc','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_query-clients}','query-clients','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('569a0acd-d651-4990-ab26-2a78bb544875','821a7df6-a652-4bcb-96df-5d20ac5a8862',1,NULL,'_ws3-admin','org3','821a7df6-a652-4bcb-96df-5d20ac5a8862',NULL),('5824f9c7-6e38-4187-b5f4-12ed3e6ecd9b','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'ws2','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('582dde54-cfcf-484a-a8fa-6aef66f475ba','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_manage-account-links}','manage-account-links','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('58749245-64cc-4bd1-b0c8-a919deb07da2','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-usr-mt','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('58d873e6-f514-411b-af44-a4f73ae760f1','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_manage-identity-providers}','manage-identity-providers','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('593d846d-50a8-4278-8fb9-3fe6a35b9f00','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_create-client}','create-client','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('59887b9d-52eb-4710-9f3a-23ffac62bed2','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_manage-identity-providers}','manage-identity-providers','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('59991fe2-82c5-4946-a2e3-39c59b9a4903','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-own-mt','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('5a1faa4c-9cf1-4335-9d42-c0aa90a71753','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_view-groups}','view-groups','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('5b107428-2e7c-4933-a9ee-b6d3ea8f290b','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_query-realms}','query-realms','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','org5',0,'${role_default-roles}','default-roles-org5','org5',NULL,NULL),('5cebf511-618e-4f3c-a24e-e1ae7748738c','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_delete-account}','delete-account','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('5f0a98aa-8a67-4549-bf21-32c39a489e0e','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_query-realms}','query-realms','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('5f9d041e-c2a3-480d-825a-bec98d6b1c3e','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_impersonation}','impersonation','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('609d31a4-bbb6-4056-9192-556ec3f1c672','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-usage','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('60eef688-34eb-45bc-81d2-eb3b81811a97','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_manage-account-links}','manage-account-links','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('61052e47-28e3-454a-b5af-4590755c6b0d','c03f5bdd-6396-4e22-b15a-69107d436248',1,'${role_read-token}','read-token','org1','c03f5bdd-6396-4e22-b15a-69107d436248',NULL),('611510b8-374e-4205-b3bb-8292d6c03601','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_impersonation}','impersonation','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('611e56f6-4972-4b2d-9804-f9c97dc91649','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_view-profile}','view-profile','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('61240213-229c-43b5-a886-d668e918d801','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_query-clients}','query-clients','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('6253122c-e27c-43d2-b523-67fa7c68ab78','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_manage-identity-providers}','manage-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('630a28e9-de08-4d53-8cc7-5adb87184945','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_view-authorization}','view-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('63b67648-95b2-4000-b609-12364b2f3ebf','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_query-groups}','query-groups','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('6467d571-c1cb-4a58-9e8b-21cdcc586b24','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_view-events}','view-events','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('64d05d3b-05f4-42eb-9e98-8679a0949dd5','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-upd','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('65b0ef45-b498-4aec-b700-d2e02754f8bc','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_view-realm}','view-realm','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('665b5522-69bd-45d7-84e1-615b9c5573e9','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_query-clients}','query-clients','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('66e3367b-463b-4c55-b9ab-a4c0e4f53428','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-role-usr','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('66ffe385-217a-41d5-bc36-bb6bd61ffb4e','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_view-identity-providers}','view-identity-providers','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('67abb8b6-3e52-4785-be06-74f390504eb1','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_view-users}','view-users','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('67cf435b-e304-4836-a9a4-2242ef9f81f9','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_manage-identity-providers}','manage-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('68fa7b55-1b14-4a2d-87c6-716c7a097d8d','org1',0,'${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('692b63ee-019e-4e02-93d7-33898fe9e4b2','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_view-profile}','view-profile','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('6a340fa6-b26f-4392-9052-95d0bb622758','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-usr-mt','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('6a92d329-28ea-40ee-9c35-b5dcf2b6fb88','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_view-clients}','view-clients','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('6a9800ca-0972-49fe-a95d-3f59bc1b960a','debb3226-8cbc-477d-8b51-65a3c9506840',1,NULL,'_ws1-admin','org2','debb3226-8cbc-477d-8b51-65a3c9506840',NULL),('6bd24823-15ae-481e-bf57-0e090f0886f0','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-ws-mt','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('6c7896a0-902e-4388-a7e5-6bfecbbef855','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_manage-account}','manage-account','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('6cc2abc6-289f-4f73-aa14-77091cc21fc8','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_view-users}','view-users','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('6f0d4cbe-d20d-4402-b803-b3d45c552fc5','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_view-applications}','view-applications','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('72dac35b-c688-4f9b-9e0e-696163b6e628','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_view-consent}','view-consent','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('73febe1a-b80b-4cda-a6f8-3ebd6af01581','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_manage-users}','manage-users','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('74b69c18-e0d2-4dbc-963c-a867e7b37bd3','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_query-users}','query-users','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('74d7d5a8-1802-41a5-9f1f-74da5cbf2a32','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_view-clients}','view-clients','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('769036a0-7215-41c3-a0c5-a7d103fdd68c','736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,NULL,'_ws3-admin','org5','736f2faa-dc2a-49bd-9e25-c09b8d99536b',NULL),('770e2456-fd89-4871-bc1b-2837074fc3ae','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_query-groups}','query-groups','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('77a995c0-dd56-49aa-acd0-adfc86e23611','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_view-users}','view-users','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('77c6574e-4d89-4d76-834a-867c4cd23d6d','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_view-profile}','view-profile','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('77db5a6e-264c-4e3e-8369-36046e91f39c','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_ws3-admin','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('7944f806-ce79-43af-8066-dd258060bfe8','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_manage-account}','manage-account','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('796783a7-9bd6-4cee-a8dd-b56574a4c390','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_view-events}','view-events','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('79e06787-206a-4783-85d4-0afa3178307a','821a7df6-a652-4bcb-96df-5d20ac5a8862',1,NULL,'_organization-user-role-manager','org3','821a7df6-a652-4bcb-96df-5d20ac5a8862',NULL),('7a031151-7ec5-4808-a9ee-e1796d468947','2255466a-8359-4209-af2c-4bd3d839b907',1,'${role_read-token}','read-token','org5','2255466a-8359-4209-af2c-4bd3d839b907',NULL),('7a28f001-dd49-41e2-b021-fc3cca9cf5fa','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-upd','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('7a5e9d12-506b-4b9a-9552-d9e94acfb2aa','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_manage-identity-providers}','manage-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('7b99d711-74ac-478a-bd0d-f67e45f2b075','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-role-usr','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('7ba4161e-4357-415a-a58f-cdaefee9d7c7','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_delete-account}','delete-account','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('7dff6034-99c7-4a6d-8005-58c68c4ef1d0','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_manage-realm}','manage-realm','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('7e703b8f-2b88-4a81-ae89-b2009ec22cb3','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_ws2-admin','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('7f09b039-6aed-4750-b2a7-7c71f41f9983','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_manage-realm}','manage-realm','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('7f4a43dd-e2ca-463f-9aff-ef86c4a514ed','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_view-consent}','view-consent','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('7f9f40cc-aac6-4424-b3c1-0fb403c20282','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_view-groups}','view-groups','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('817c7394-335e-47bf-bb37-181ca2b77baf','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_query-realms}','query-realms','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('83f4a238-d220-481d-85a9-0f4d28cbb589','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_manage-authorization}','manage-authorization','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('84b20529-0314-45b7-8e6f-1097febab292','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_query-realms}','query-realms','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('873b677b-f7d3-438b-ac5d-0e6b24038811','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_view-clients}','view-clients','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('87b87aa2-2eef-47b6-b649-62a8144f943e','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_view-groups}','view-groups','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('880815e3-1c11-4163-bfbe-72650ffb3f4e','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_delete-account}','delete-account','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('89e68d0e-cdfc-4378-8634-eb627ec0557e','51fced76-a0da-43cc-a530-7f4f925da142',1,NULL,'_ws1-admin','org4','51fced76-a0da-43cc-a530-7f4f925da142',NULL),('8a32ad19-440e-4193-b6f0-6f68a8055c45','040bafd0-9c40-449b-9e25-b760eb822e74',0,'${role_uma_authorization}','uma_authorization','040bafd0-9c40-449b-9e25-b760eb822e74',NULL,NULL),('8a54e1a3-7650-4f0a-b04c-b52cd4735f99','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_query-users}','query-users','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('8a95423a-09c6-4bcd-b6df-99082a195060','51fced76-a0da-43cc-a530-7f4f925da142',1,NULL,'_organization-manager','org4','51fced76-a0da-43cc-a530-7f4f925da142',NULL),('8b5f0009-dcab-44b7-8169-2f2dec0c4de1','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_impersonation}','impersonation','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('8b623956-ec9a-4143-a2af-62db60a4e793','org4',0,'${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('8c7fb901-38be-4324-9823-6ea635863c6c','65c3c063-c83c-44fe-b21f-e333de132425',1,NULL,'_ws1-admin','org1','65c3c063-c83c-44fe-b21f-e333de132425',NULL),('8c95ff19-f47b-4e0d-8dfa-8c9a3b341f6a','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_manage-users}','manage-users','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('8ca424e6-aa8a-45ac-9107-2b4b96678e77','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_manage-events}','manage-events','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('8d874e04-f066-4973-b37c-fafa7508a514','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',1,'${role_view-applications}','view-applications','org5','7f5afeb0-6b8e-4e06-b41c-02d3a850db5c',NULL),('8e71ee7e-071e-4c0a-8f2b-12e465f5a986','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_view-profile}','view-profile','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('8fd94f62-afff-4586-b8dc-cb9b0946d044','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_view-consent}','view-consent','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('9159d8a2-a129-4308-b22a-333490f2222b','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_view-groups}','view-groups','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('92ad537f-be68-4559-ab85-670e9a9f94a3','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_view-events}','view-events','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('93a38360-8bea-40ab-8828-b9e058721104','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_manage-users}','manage-users','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('942f261d-25df-4ba1-abdf-38607a78163b','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_view-consent}','view-consent','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('94c77162-2ffb-44bc-9412-998088eb7e77','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-ws-mt','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('96236374-8d82-4131-8215-0250ebdef0c7','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-ws-role-mt','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('96791704-5d47-40dd-9597-b6f3d445a6fc','65c3c063-c83c-44fe-b21f-e333de132425',1,NULL,'_ws3-admin','org1','65c3c063-c83c-44fe-b21f-e333de132425',NULL),('97674e80-765c-4c7f-ae4e-4a2fa86e83d5','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_create-client}','create-client','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('97690ff5-d477-4ea6-b755-5310436bfb49','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_manage-authorization}','manage-authorization','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('97a1910d-ae1d-4865-992e-44f1ee162165','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_realm-admin}','realm-admin','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('97ab751a-2835-40c4-b328-5053d8a3d3b8','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_view-identity-providers}','view-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('97f89c4b-99af-4403-af2a-a5195e573218','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_view-users}','view-users','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('97ff3e06-3a68-4e8a-be27-cdb8f11c4cdf','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_view-users}','view-users','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('98349832-46e5-4515-b7a8-d401454dba51','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_view-events}','view-events','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('984dd9a2-c302-4744-a3de-59f9fad03279','76abe77e-2892-42b1-bc04-2e56cb6df762',1,'${role_read-token}','read-token','org3','76abe77e-2892-42b1-bc04-2e56cb6df762',NULL),('9947413f-2bcf-4b60-97e9-6e3f9d7faef5','org3',0,'${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('99b6b609-c19c-4ab6-be76-e96a87039cea','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-usage','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('9a0056bd-0852-4bc0-aac1-a3eec4db4204','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_manage-users}','manage-users','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('9a0f84cd-5eaa-4377-b2f5-5d30337c4d84','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_view-clients}','view-clients','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('9a6dc8be-9e8b-49bc-8dd6-31f8dbeb4cfd','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_manage-account}','manage-account','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_realm-admin}','realm-admin','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('9d19a1c1-aa79-4f10-98ca-6a363a121a76','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-ws-mt','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('9dc882ec-99b5-4f6c-b1d4-1c986e3df141','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_view-identity-providers}','view-identity-providers','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('9e0fd700-10c2-4583-9a09-2165e8b03266','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_view-clients}','view-clients','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('9e866fd5-37cc-49aa-a7af-ba984648d662','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_manage-account-links}','manage-account-links','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('9f34e498-f8c8-4ce6-a672-3c76452c438d','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_manage-authorization}','manage-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('9f47084f-4007-4809-a51d-d537330adf9b','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_query-users}','query-users','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('9fc39a70-6051-467f-9014-291f6b1e6bdc','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_view-applications}','view-applications','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('a1707606-41c5-4dcb-9591-822b3c4ec4a0','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_view-authorization}','view-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('a2540645-ddc6-4dfb-afed-2a57a63b8322','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_ws2-admin','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('a4b45483-c30c-46ea-a1a9-dafa6e686c00','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_manage-account}','manage-account','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('a4dfeae4-d7fe-4d0b-9289-f65b49792b88','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-ws-mt','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('a55094e4-496d-4d08-a781-af7d8e451a31','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_view-identity-providers}','view-identity-providers','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('a5813dcc-8b3d-4c48-ab09-bb2f2b980d4e','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_ws1-admin','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('a5d9f202-a744-4231-ace0-8cd577957458','736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,NULL,'_organization-user-role-manager','org5','736f2faa-dc2a-49bd-9e25-c09b8d99536b',NULL),('a5e749bc-3db2-40e8-97ab-22297ee80f5a','51fced76-a0da-43cc-a530-7f4f925da142',1,NULL,'_organization-user-role-manager','org4','51fced76-a0da-43cc-a530-7f4f925da142',NULL),('a66e8279-50c4-4949-a82b-56098e7158d6','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_manage-clients}','manage-clients','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('a8d8158c-7567-4648-a22a-9d40855c0788','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_manage-identity-providers}','manage-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_realm-admin}','realm-admin','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('a9221ad4-599c-41a5-afbd-c74ecc77285e','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_query-groups}','query-groups','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','org2',0,'${role_default-roles}','default-roles-org2','org2',NULL,NULL),('aa27e66e-5bf9-4ebf-8140-2a02fe8f04dd','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_manage-consent}','manage-consent','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('aac73a0b-4d93-4c6d-828e-d6e562201ba6','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_view-applications}','view-applications','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('aad05f9d-02fb-420f-aa79-b5c026e7ab88','org2',0,'${role_offline-access}','offline_access','org2',NULL,NULL),('aad3a3b8-5902-4d19-8d0d-7995b6a5555b','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'ws2','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('aaf02b41-d792-412e-b717-3da00193f13f','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-ws-mt','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('ad6f80c7-5dd8-4818-a4b7-b45b73d6a2b7','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_manage-realm}','manage-realm','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('ad920628-5e30-410b-8de3-6da2032a3972','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_manage-authorization}','manage-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('ae87cb8d-a1ef-4e47-a357-72829af18ade','org1',0,'${role_default-roles}','default-roles-org1','org1',NULL,NULL),('af0b37b3-5213-4d27-8238-baae2e9b6205','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_query-groups}','query-groups','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('af787959-9cea-4090-aba3-9e464e1609a7','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_manage-events}','manage-events','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('afbe482c-03d8-4199-ac49-190e699bda55','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_view-users}','view-users','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('b01806c3-504c-469d-8496-034ca44b0e01','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_manage-events}','manage-events','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('b0490bcc-20dc-47ad-9a9f-235ba557d093','debb3226-8cbc-477d-8b51-65a3c9506840',1,NULL,'_organization-user-role-manager','org2','debb3226-8cbc-477d-8b51-65a3c9506840',NULL),('b068c987-e12b-4d1f-8ddc-9552ea43519d','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_query-realms}','query-realms','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('b1132735-21b1-475e-8205-c084e0680f3b','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_view-realm}','view-realm','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('b13698de-6de5-4ddc-8f8b-e70ad14e2338','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_ws3-admin','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('b1b9c7e4-7a55-4855-89f3-ce60950fd84d','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_query-groups}','query-groups','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('b2d5a852-0925-4a05-aba6-b77f3edf0838','040bafd0-9c40-449b-9e25-b760eb822e74',0,'${role_create-realm}','create-realm','040bafd0-9c40-449b-9e25-b760eb822e74',NULL,NULL),('b33a7a45-941f-4b7d-a8f2-c8885b255db9','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_impersonation}','impersonation','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('b3ae801d-f1c0-4779-9936-aae5190f8181','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_manage-users}','manage-users','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('b3aff75e-085d-483d-8e47-aaf55303438d','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_manage-events}','manage-events','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('b4d94948-b27f-449c-beff-db83e6c2278d','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_delete-account}','delete-account','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('b66451ca-c68a-4b86-b781-579e2ce211e3','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_view-consent}','view-consent','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('b6f763a7-10a1-4f0f-b824-43414f71e872','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'ws1','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('b75ceeb0-42f0-4667-baca-d2ecec33c6a8','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_manage-authorization}','manage-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('b7c006f4-b10f-424f-9411-715ecf97a826','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_manage-users}','manage-users','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('b8b2574a-2a56-4fd6-abfa-f5f81a39c6a3','5ee3c4a9-92e9-4021-81f0-906d65437dce',1,'${role_view-groups}','view-groups','org1','5ee3c4a9-92e9-4021-81f0-906d65437dce',NULL),('b99fb363-4c00-437b-8c0e-6d846e6c75a5','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'ws2','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('b9e377ec-f80c-4013-8db0-550f8afb80a6','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_view-events}','view-events','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('b9e3c5f4-072b-45f7-89aa-51acb6de8e31','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_query-clients}','query-clients','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('bb72fddf-89b3-4c8d-9659-7b650e09eb22','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-ws-role-usr','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('bc121606-f0f0-4a55-843e-8249c8940443','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_query-users}','query-users','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('bcf7e24a-b5a8-4423-8dfb-5d932fb5b191','65c3c063-c83c-44fe-b21f-e333de132425',1,NULL,'_organization-user-role-manager','org1','65c3c063-c83c-44fe-b21f-e333de132425',NULL),('bda4b95c-4ec3-4193-9ff3-8603845f6910','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_view-profile}','view-profile','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('bdc6dd73-1778-48db-acac-b237cab39da7','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_manage-authorization}','manage-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('bee883db-229f-472e-8097-78bf12542d2c','org1',0,'${role_offline-access}','offline_access','org1',NULL,NULL),('bfe93b8a-8b50-4ed6-a743-29bd04afd7b8','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_view-realm}','view-realm','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('c02508d5-b6da-4155-9583-65da4d344129','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_query-clients}','query-clients','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('c0ba985e-024d-4c4b-aa31-bb7bbe38542c','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_manage-users}','manage-users','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('c196beef-2632-47f8-a937-d0d1711a1122','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_manage-realm}','manage-realm','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('c28fdfd0-b601-4660-ab03-e25c065bdbe2','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_view-identity-providers}','view-identity-providers','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('c2f0fd1f-1b34-451d-b5b3-786dddb9e410','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-own-mt','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('c44d2b90-e531-4ed1-98d8-4096445ddc17','821a7df6-a652-4bcb-96df-5d20ac5a8862',1,NULL,'_ws2-admin','org3','821a7df6-a652-4bcb-96df-5d20ac5a8862',NULL),('c4641965-9dbe-4d2e-94ef-8204e1165c84','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_ws1-admin','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('c5055b16-02b8-416d-960b-eae7c6cec9ac','debb3226-8cbc-477d-8b51-65a3c9506840',1,NULL,'_organization-user-manager','org2','debb3226-8cbc-477d-8b51-65a3c9506840',NULL),('c60a4d86-60e4-456b-9ed5-3cb92d5bbeef','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_view-applications}','view-applications','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('c73f25b0-1ffc-4ac0-bf63-93a89e453a1c','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_view-identity-providers}','view-identity-providers','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('c7aa4f65-9b82-4cbd-95de-4ea1489f4c13','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_view-authorization}','view-authorization','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('c7e3c2f4-beb7-4833-8411-bd7ee322721e','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-ws-role-usr','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('c90d07ce-bf5b-44a9-bbbe-2768c1a2d8eb','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_view-identity-providers}','view-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('c96dd477-2566-4716-8553-55b123a57959','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-upd','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('ca3a7e3b-8e0e-400b-9588-297f3bcf0a34','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_manage-identity-providers}','manage-identity-providers','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('caf0ea96-3c2a-464a-a74e-3d4362668a6a','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_manage-realm}','manage-realm','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('cc19c629-9174-41e6-9f58-67c0edf436df','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_create-client}','create-client','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('cc51e384-d64a-4a51-b0ca-548fb2f3ce92','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_query-realms}','query-realms','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('cd0c3ff9-2584-4adf-b7a3-cf06943bbaf2','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_view-authorization}','view-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('ceb85ccf-7436-4129-b290-8fe29fed23f7','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_manage-users}','manage-users','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('cf51d0fe-fd1b-4b20-b902-97b1f02e8ca1','757bb3d7-378a-4c1f-830f-5756fbd28c7f',1,'${role_read-token}','read-token','org2','757bb3d7-378a-4c1f-830f-5756fbd28c7f',NULL),('cf9267ee-600a-473d-95fb-28927ff2d401','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-own-mt','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('cfb66984-6731-4fca-87ce-1b6653679c17','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_og-ws-role-mt','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('d0bb96dd-811a-4122-a5ce-9e616a56d12c','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_view-clients}','view-clients','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('d0dfdd08-483a-4433-ab70-4ddf9f7d1e2b','e539f758-1a07-4e98-88db-8f6008ab3e39',1,'${role_create-client}','create-client','org5','e539f758-1a07-4e98-88db-8f6008ab3e39',NULL),('d2123295-bfa3-485a-9643-e0dc9f020add','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_manage-clients}','manage-clients','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('d304badb-1729-40d2-bf8f-683dd2a6a2f6','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_manage-clients}','manage-clients','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('d6c47e26-70c6-45f6-beab-c5193a523c3a','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-usage','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('d6de7302-98d1-4035-818d-c0d9e3ca6d34','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_manage-realm}','manage-realm','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('d6dea370-4e54-4c39-b1c1-f5fd39ab3b26','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_view-users}','view-users','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('d7471445-6170-4d4d-bcef-09af240dbc6e','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',1,'${role_manage-consent}','manage-consent','org3','bb0bae74-b6e1-4f68-b1ae-c80227d8b51f',NULL),('d7682be7-cb25-4cbc-b725-8d5e8c646d52','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'ws3','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('d87f022e-94bc-4791-853b-9e1de00228d7','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_view-events}','view-events','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('d98d45fb-5fc0-4235-ac99-7b6f345fa3a5','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_ws2-admin','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('d9b95956-c78a-4b61-b5eb-c528facaa9f6','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_create-client}','create-client','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('d9c5d9f4-034b-4668-acba-6b3358eda140','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_query-clients}','query-clients','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('dd458074-e78a-4a93-96dc-ac1cec230a11','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_query-users}','query-users','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('dd8078a5-6a89-44af-b485-c3aa25701bb0','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_impersonation}','impersonation','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('de59960c-a7f5-4deb-a0a8-23a450390eb3','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_view-authorization}','view-authorization','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('de773bea-b837-405c-ada9-c01dfb4d59fa','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_impersonation}','impersonation','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('df6f4f73-1ccb-44c5-966c-d37770d0b41a','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_manage-account}','manage-account','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('e00ee2da-a3a5-4391-881a-370f8f810633','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_manage-authorization}','manage-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('e0211544-bf35-4e64-b46c-eba0ee3d82eb','org5',0,'${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('e042f342-dfcf-4c67-a3a0-702bb2914167','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_manage-events}','manage-events','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('e0ba63c9-23ea-4451-8bf0-9c0b4d22e321','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-audit-log','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('e150359e-10e2-4e34-9179-ef95606a6293','736f2faa-dc2a-49bd-9e25-c09b8d99536b',1,NULL,'_organization-manager','org5','736f2faa-dc2a-49bd-9e25-c09b8d99536b',NULL),('e15a9072-b680-4b80-9ed5-4149d04262cc','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_create-client}','create-client','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('e2d635e5-1b2d-4c5d-9d41-05fbcd02753b','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_manage-clients}','manage-clients','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('e2d75edb-d6bf-411d-a6fa-6741747f8f5d','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_ws3-admin','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('e2dd0733-58a0-470c-a532-6cf7c186fdcf','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_view-authorization}','view-authorization','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('e32fe02e-d635-496b-85c9-b92c48a09784','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_query-groups}','query-groups','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('e3668d90-1629-4f23-a5e3-6e1a78d72219','debb3226-8cbc-477d-8b51-65a3c9506840',1,NULL,'_ws3-admin','org2','debb3226-8cbc-477d-8b51-65a3c9506840',NULL),('e4ee8412-5304-442d-a442-9264601da414','3d20ecfe-2a25-4637-b015-532c1729c879',1,NULL,'_ws3-admin','org5','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('e60660a7-9ca9-4bd8-8eda-a5e3051877c5','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-own-mt','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('e64b1226-457a-4d15-935e-28724c3bc6a0','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_manage-clients}','manage-clients','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('e6f8db81-6013-46dd-94df-da4d79aa31a2','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_view-clients}','view-clients','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('e84fc679-ab3b-47d7-a651-94550a285921','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-audit-log','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('e8fb2aff-cab1-4a32-9810-6e6441efe173','821a7df6-a652-4bcb-96df-5d20ac5a8862',1,NULL,'_organization-manager','org3','821a7df6-a652-4bcb-96df-5d20ac5a8862',NULL),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','org4',0,'${role_default-roles}','default-roles-org4','org4',NULL,NULL),('e93f502f-1dff-4dc9-a582-89a70282c69a','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_realm-admin}','realm-admin','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('eafab10f-f326-4729-8df0-935b87dbd736','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'_og-ws-role-usr','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('ec027861-0de2-4b25-b1d9-9bb610b78d76','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',1,'${role_manage-clients}','manage-clients','org1','d6d281d4-c0ed-4a66-ac57-0a97be7afbda',NULL),('ec9870e7-1cab-47ad-a4dc-ef3fd72f5b93','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',1,'${role_manage-account}','manage-account','org2','fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031',NULL),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','debb3226-8cbc-477d-8b51-65a3c9506840',1,NULL,'_organization-manager','org2','debb3226-8cbc-477d-8b51-65a3c9506840',NULL),('edded127-7d1a-4106-8532-64ecb378cd58','org2',0,'${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('ee1b0226-fbfe-4825-952d-4235b6f107fb','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_view-clients}','view-clients','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('ee513551-3e88-474e-94f6-9ec52b4c6877','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_ws1-admin','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('ef541bc7-3d21-4040-a6aa-58e62ed9dfac','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_view-realm}','view-realm','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('f0297a7b-7a3d-4385-8a8c-ea277c52be22','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_query-users}','query-users','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('f1441fae-3a23-4f38-a611-e5923f3ee23e','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_view-identity-providers}','view-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('f160a346-be72-4c1b-9211-ecee350216b2','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_manage-realm}','manage-realm','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('f1c478aa-e8b8-4426-aa6f-0e9734f3418e','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1,'${role_view-identity-providers}','view-identity-providers','040bafd0-9c40-449b-9e25-b760eb822e74','4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',NULL),('f1d81f9d-e1c2-4d3c-8351-f178680a5e8a','0448f589-1100-4f24-a765-54b618d40e09',1,'${role_impersonation}','impersonation','040bafd0-9c40-449b-9e25-b760eb822e74','0448f589-1100-4f24-a765-54b618d40e09',NULL),('f408d89f-7e9c-43f4-8e9b-8c08cc171a11','4b701d3f-a390-4f55-9bad-efda1c3cb8de',1,'${role_query-users}','query-users','040bafd0-9c40-449b-9e25-b760eb822e74','4b701d3f-a390-4f55-9bad-efda1c3cb8de',NULL),('f5879002-ec74-4605-8c9f-248fe2f86f42','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_manage-realm}','manage-realm','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('f5db54fb-c9f6-4946-ba0f-5a135bdbaf7a','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_query-realms}','query-realms','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL),('f6ec5d46-fb0a-474a-befd-d38fe0421483','91afb328-27d5-43a0-8239-2560633fac2c',1,NULL,'_og-usr-mt','org4','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('f79ac8be-c881-4bb7-b6c9-080eb1fb47f8','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_query-realms}','query-realms','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('f7d222dc-fc0a-4f25-9d34-bcbcce7e8881','cb18e293-11e3-46d1-b34c-d5484595683c',1,'${role_manage-consent}','manage-consent','040bafd0-9c40-449b-9e25-b760eb822e74','cb18e293-11e3-46d1-b34c-d5484595683c',NULL),('f834a4a1-ae42-4988-8b60-043bb321da64','65c3c063-c83c-44fe-b21f-e333de132425',1,NULL,'_organization-manager','org1','65c3c063-c83c-44fe-b21f-e333de132425',NULL),('f8f7a58c-39aa-4d21-8785-b8436227f47b','08342839-debf-47ba-8009-4fbfbd66ec55',1,'${role_manage-users}','manage-users','org3','08342839-debf-47ba-8009-4fbfbd66ec55',NULL),('f9ad46f8-30f8-4416-b8d3-be3b6e1a8f6e','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_impersonation}','impersonation','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('fa409dca-5f29-4b70-8f60-7e036e3fb9f1','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_view-clients}','view-clients','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('fa62bb5d-a3b2-4103-923a-8d485f824ec8','a20a6dfa-8597-40e3-bca4-7c749b593584',1,'${role_query-groups}','query-groups','040bafd0-9c40-449b-9e25-b760eb822e74','a20a6dfa-8597-40e3-bca4-7c749b593584',NULL),('fa7c92ff-d546-42b5-abe0-e1690646e238','84ba430e-0d33-4e72-856f-478f691833b2',1,'${role_manage-consent}','manage-consent','org4','84ba430e-0d33-4e72-856f-478f691833b2',NULL),('fccba685-9d14-49e3-873e-f3f67187d9dd','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',1,NULL,'_og-role-usr','org1','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('fcd12bfc-b638-460f-9980-5423b1c0a700','5105367b-a90c-4b7e-ad31-15124e4182c0',1,'${role_view-authorization}','view-authorization','org2','5105367b-a90c-4b7e-ad31-15124e4182c0',NULL),('fd4ebc75-79f3-4b33-8441-aec1140f5201','17fd93d5-355f-4d86-a035-b11dbb83312a',1,NULL,'ws1','org3','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('fdcb3565-fa13-4ee1-89ab-0212ebf42999','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1,'${role_manage-events}','manage-events','040bafd0-9c40-449b-9e25-b760eb822e74','91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',NULL),('fe049ce0-bf66-4b62-b512-195decd870e5','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'ws1','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('fe72f229-374d-4db7-9f11-47d21539e83e','f44e4f74-f947-4342-8791-6bc421d4327e',1,'${role_view-authorization}','view-authorization','org4','f44e4f74-f947-4342-8791-6bc421d4327e',NULL),('fe9f4c00-258d-4d08-bbf6-3b1cd46db86d','54d6d676-f0f4-421f-b554-202406a3d2ec',1,NULL,'_og-ws-role-mt','org2','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22','821a7df6-a652-4bcb-96df-5d20ac5a8862',1,NULL,'_ws1-admin','org3','821a7df6-a652-4bcb-96df-5d20ac5a8862',NULL),('ff2c6582-9cae-4ed8-be11-7f53d84fae8a','a3cea3c7-a43e-42e6-8f37-d4cb75503027',1,'${role_manage-events}','manage-events','040bafd0-9c40-449b-9e25-b760eb822e74','a3cea3c7-a43e-42e6-8f37-d4cb75503027',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('55gp7','24.0.5',1721115528);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('00710235-40f9-485a-aee9-ba9622740bd8','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('009a4769-da76-4266-abc5-d684680843fe','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'73bf9a14-cc54-4b25-86e9-ae40e996c6a3'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'bd3a8fbc-9a67-484a-9966-52cf07d25ac3'),('05a21962-17e0-4c60-bedb-c103dc862597','address','openid-connect','oidc-address-mapper',NULL,'f21cd001-c2b6-4090-994f-c0a49521e43e'),('0878692a-078a-46b3-9f53-e47273fde3f0','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'588fd181-4a21-48bb-bfd6-c5a15980d877'),('0e28eebe-4c89-493d-94ab-779c27396186','address','openid-connect','oidc-address-mapper',NULL,'a90e6804-7709-432d-9367-368a20e94949'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('0f7b3554-4f20-4a8e-991b-c0ed2593bac6','full name','openid-connect','oidc-full-name-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('0fe3a301-7698-43a6-9b8b-063b9a739cbe','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'1ffe8d8f-fcab-40da-a6ec-8ca39b148671'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('11afcab7-6b5c-4134-909e-09719f702c7d','acr loa level','openid-connect','oidc-acr-mapper',NULL,'267c858c-0480-4182-b76f-4309f172b5f0'),('14f4fe11-513f-4819-8c6f-244de71a68ae','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'d1c2c9d3-ad02-4cd6-9c26-5c6c409d1789'),('1684e1c7-3724-4276-9c7b-589dad9ca297','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','locale','openid-connect','oidc-usermodel-attribute-mapper','55614122-8f23-4650-bcc5-725a2ac60253',NULL),('18a8e184-371e-4bab-8086-7888b2af21ee','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('1c570a94-4525-41e1-997c-17a59a391895','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'be4bfa55-4a3e-48db-a7cd-ae045c01f9de'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a580fd66-57e1-4e56-8a97-7a77015f4657'),('21790638-c531-4571-8004-1924ba79d24c','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('24fc08fb-1bf8-4cb0-a546-6a6baea3f2c7','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'4c90144c-2e6e-4764-bb89-97a0a6bc2acc'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('27f9819d-b877-4ba5-aba8-233837709eab','audience resolve','openid-connect','oidc-audience-resolve-mapper','62bdadf4-836a-481a-a326-5b7176a508ea',NULL),('287c85ac-168d-45f0-93bc-789d09fcf2b5','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'1ffe8d8f-fcab-40da-a6ec-8ca39b148671'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'f63d8bdd-364d-4b8c-8e73-54388e3eaeaa'),('2965c58d-8740-4509-bfc8-b36a940be2c7','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('298d2321-4300-4085-99eb-941e9a546bdb','audience resolve','openid-connect','oidc-audience-resolve-mapper','06ec7032-69da-4e85-bb0e-eec784fb8ebe',NULL),('29ced215-1a43-4a39-b7a7-31e6ef278e20','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c02fdc68-891c-49b5-8621-eb5e501bafa1'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','address','openid-connect','oidc-address-mapper',NULL,'9c40b9dc-3d87-4069-ab41-d1ce62a92ad4'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('2bea0b25-4693-44f3-b478-e5034e6c807d','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','b42f7870-e157-44d7-88b2-2c10c69e222b',NULL),('2df9d496-b6a7-4c4e-8f6f-15515891acef','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'edf2d7ba-c30d-48a5-8fff-d05ddf158f85'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('33f23364-85dc-4e77-845b-365ece792c7c','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'3957e10c-d7b6-40da-9261-b78170643382'),('3517c14a-7007-454f-8dd5-85f0a18e9685','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('363c2af4-4caf-4ea0-976a-b38874c51a89','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('38a572df-f56c-4113-b913-ee75f17ddb0a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('38d73db8-1873-4688-8f8a-fdebad0d4baa','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'bf7128e1-794a-4d8c-8123-1d64255cc634'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('3c1000b6-05e5-4732-b018-48136b193a7a','audience resolve','openid-connect','oidc-audience-resolve-mapper','cc0ab70c-470b-418c-8081-41c808c74018',NULL),('3c3b4040-c47c-4824-90a2-5f966d311fa6','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'091d4302-f63e-4b7a-b811-8aa48718d48c'),('3cb6d84e-2312-4d53-a19d-09defc004eca','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'f2d857f8-0190-48f3-84e6-6f7382d5a898'),('3cd5537d-a36d-4b59-8aea-99285a631da9','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'0ca53734-3896-4acd-891a-84e68adfd9de'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('48a09347-89a0-4612-b85e-7b71af76abfa','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','9ce54798-5e96-4bf2-97dc-6aec4b0c438b',NULL),('4a76a051-9104-47e0-8526-c927fda08d45','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'28696408-7a51-49b2-9ecb-90266e404122'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('4c398d41-0864-4995-8118-c7576b375fa7','audience resolve','openid-connect','oidc-audience-resolve-mapper','89a38cf5-c91f-4da5-b988-7777003ee985',NULL),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('4dc571b5-8757-44e1-940c-5bbb338c169b','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'71c290b9-9ab7-4c49-b46f-762c4723da84'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('516c78f7-738a-481b-bde4-fa3ce18e53d2','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','b42f7870-e157-44d7-88b2-2c10c69e222b',NULL),('5263af97-4720-424b-b7a8-0510c6603574','acr loa level','openid-connect','oidc-acr-mapper',NULL,'3144ed7a-ee50-42ab-a523-016abc4b5d92'),('55f32e39-c694-4691-92ba-8fd1a511008f','acr loa level','openid-connect','oidc-acr-mapper',NULL,'1c5dcbdb-7397-45f3-99b3-5b070b56a289'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('5a351a27-055a-4b77-9c14-3a3486e4df1d','role list','saml','saml-role-list-mapper',NULL,'38f7c8bc-4ee3-46b1-a925-1ad92fa5f3f9'),('5a7599b1-d829-4301-9802-7a0a662288b7','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f63d8bdd-364d-4b8c-8e73-54388e3eaeaa'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e89c1a08-6c1a-4954-ad15-e59d3237c8ba'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'4886a7cb-a63d-42ce-9fee-760f1a2c2f10'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9fc8ebe2-3a33-43b2-b409-ffbd50aa1c80'),('62abdaf9-ec57-406d-a50f-e18297baef88','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'4c90144c-2e6e-4764-bb89-97a0a6bc2acc'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('64d0651b-2469-4e30-b52b-e923d33889b2','full name','openid-connect','oidc-full-name-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('65027bbd-5a4a-4a66-83bc-959480d38e97','full name','openid-connect','oidc-full-name-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('664acc5f-0914-414e-8d56-121a3585f784','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('67247481-7021-46c2-809d-ff8d4f37393e','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','54d6d676-f0f4-421f-b554-202406a3d2ec',NULL),('6840a789-4536-47a6-b637-bd0429087440','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('68ff8c80-864b-4ce2-8e29-0209320440e5','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5ea99ce-48aa-46d4-8bc1-780e792fd833'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('6a3b4830-20bb-42ca-81d6-f353b74012ab','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'09a20393-79b0-480e-ad87-1fab7109a4af'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('6b37739b-3d23-4fc8-8115-132d7129cfa1','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'edf2d7ba-c30d-48a5-8fff-d05ddf158f85'),('6c9fa34a-f8da-489d-8e26-a15348b1fb6c','full name','openid-connect','oidc-full-name-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('6f3978b9-d7f6-4eab-a248-0b1155575769','acr loa level','openid-connect','oidc-acr-mapper',NULL,'c24e17de-21e2-4323-9b3b-d124f3d65b07'),('7120c825-2664-4543-b8f8-d29ce4a138b9','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0ca53734-3896-4acd-891a-84e68adfd9de'),('71f1a1f6-736d-471a-bd86-a792d10dd702','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'bf7128e1-794a-4d8c-8123-1d64255cc634'),('72690ade-7605-4f6a-8d77-6f516fe84015','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'588fd181-4a21-48bb-bfd6-c5a15980d877'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','locale','openid-connect','oidc-usermodel-attribute-mapper','ac10798a-f624-4556-9c93-5a4f8ce430c5',NULL),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('7b53638b-9c13-4dcb-867e-315ba5737419','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b6fc35c6-234a-4e2d-b3bc-69622678a0a3'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('7db43001-9479-41db-b0f8-f725d01c1985','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'bd3a8fbc-9a67-484a-9966-52cf07d25ac3'),('801723d3-405a-47ed-a27c-a595dbd28479','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('83b90a81-68b0-4421-922c-cd911290f8b4','role list','saml','saml-role-list-mapper',NULL,'94247a81-74b0-4561-a790-41975dcd8d63'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c5ea99ce-48aa-46d4-8bc1-780e792fd833'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('867fe269-84e3-4cef-a867-a7e546962c5e','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('8dd68c51-d245-476f-87c7-3898cf087a11','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('8de7646c-acde-46cb-b398-07c1bec648a2','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('8f706bec-b44e-4249-9b38-a567ccc802ba','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','3d20ecfe-2a25-4637-b015-532c1729c879',NULL),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('91a1d266-8244-4647-b8a0-4b37b2cade56','acr loa level','openid-connect','oidc-acr-mapper',NULL,'cee1f0f0-1e18-4ad7-b16b-395737bb8d88'),('928fccd8-0254-450d-b302-143c4194c8a0','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('929ef4b7-916d-4b39-aec6-8f43107229e3','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7cfebc5f-368c-45a9-8e8e-605c430caf09'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','address','openid-connect','oidc-address-mapper',NULL,'e323deaa-6b05-4d40-8e40-553a163a833d'),('96c54367-9ef4-4927-8435-50bb91ee04e9','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('96cb4cd6-72a1-419d-8c1d-61bc7600e0cd','role list','saml','saml-role-list-mapper',NULL,'af1d0ff6-80ef-477b-8d7d-58b51cd09459'),('97f0376c-409f-45c4-85b0-e7a937f75300','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a24d02ec-eac5-4200-b566-c75ca300fa76'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'71c290b9-9ab7-4c49-b46f-762c4723da84'),('992f78df-5472-45fd-ba68-064afb8e34a2','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f2d857f8-0190-48f3-84e6-6f7382d5a898'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('9fd74eb8-7607-446e-86ad-9c19896d1932','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('a13e0351-392e-4a52-af28-75705a5df05d','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','91afb328-27d5-43a0-8239-2560633fac2c',NULL),('a313336d-a0b1-4720-8203-83ac45e79833','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('a3eec46f-9980-4bee-9d99-0ab87062ad11','full name','openid-connect','oidc-full-name-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('af7cf789-9e25-4442-bd57-91497ef69951','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'bd3a8fbc-9a67-484a-9966-52cf07d25ac3'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','address','openid-connect','oidc-address-mapper',NULL,'4d3dc50c-046e-4be6-a7d6-a28f2fb4732a'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'4886a7cb-a63d-42ce-9fee-760f1a2c2f10'),('b05d0a6d-8636-45e9-b4e3-30baf3c2f80a','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'f2d857f8-0190-48f3-84e6-6f7382d5a898'),('b2507bcb-d264-4b95-a872-a4cdac3d2205','acr loa level','openid-connect','oidc-acr-mapper',NULL,'e19e2469-8847-4078-b21d-efa781b72b2d'),('b25caa3a-e889-4438-838b-0c05f1ccd678','audience resolve','openid-connect','oidc-audience-resolve-mapper','20ee9def-fb35-46ec-a829-59d3a0db7567',NULL),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1f7e046f-1bfb-4f1d-b32e-834fdd516c59'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'1ffe8d8f-fcab-40da-a6ec-8ca39b148671'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'be4bfa55-4a3e-48db-a7cd-ae045c01f9de'),('b87059b9-8c28-4365-910f-2deaf8517e98','locale','openid-connect','oidc-usermodel-attribute-mapper','a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979',NULL),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7cfebc5f-368c-45a9-8e8e-605c430caf09'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('bcb81c4c-b497-4205-a642-554846b59b69','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('bd4a88af-ca88-4789-b1c5-50512c538f45','audience resolve','openid-connect','oidc-audience-resolve-mapper','bbf88cc4-9933-4c14-915f-ce12cd9a05a0',NULL),('be8c7471-94c0-4eb7-ba83-8da40e632d52','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('bef9704f-2c75-478f-a419-698d1ce7cba6','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b6fc35c6-234a-4e2d-b3bc-69622678a0a3'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','locale','openid-connect','oidc-usermodel-attribute-mapper','d950640f-e6b4-48df-8c59-fe9a1e06e863',NULL),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'091d4302-f63e-4b7a-b811-8aa48718d48c'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('c28013bb-ef94-457a-b740-77912c0d5f4a','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('c592ce37-8d18-4a25-86b7-61a1818989f0','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','locale','openid-connect','oidc-usermodel-attribute-mapper','2728a023-e3a7-4f73-99bd-c25ef9c8b335',NULL),('c7816da7-f829-4225-9218-cbc51f2f7065','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('c9943160-96e4-47e5-a4c3-b2b94d1b8dee','role list','saml','saml-role-list-mapper',NULL,'d8e03a4b-ff1d-450e-91e3-4832e73b887f'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a24d02ec-eac5-4200-b566-c75ca300fa76'),('ce1d6928-dcae-46c4-855f-fbcbdc4629bf','role list','saml','saml-role-list-mapper',NULL,'b2a40e00-8701-46b4-877f-d09d957e8180'),('ce6dba7b-775c-45ec-8d83-05d33c55de53','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'861297de-cbe5-4ac3-9209-45be588259aa'),('cf95dfa6-904e-4126-8980-5022754e044d','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'28696408-7a51-49b2-9ecb-90266e404122'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','locale','openid-connect','oidc-usermodel-attribute-mapper','df88f233-d420-4e4c-8fbe-9781387a7119',NULL),('d0570e4d-1dc6-4df8-806a-775a9378b59d','role list','saml','saml-role-list-mapper',NULL,'c5afdf64-4e09-4b8e-bfb4-428943acd15a'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'fd40bdd4-1f03-4470-82e1-dc485805c331'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('ddf56cb0-990d-4d13-a020-ac3d86386370','address','openid-connect','oidc-address-mapper',NULL,'2bccda12-189c-4182-9a1f-c573828d79e8'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'4c90144c-2e6e-4764-bb89-97a0a6bc2acc'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9e0158d9-56b1-400c-b4c9-e400d616a922'),('e43b5128-cbfc-474c-921b-5f82a0f1b57a','full name','openid-connect','oidc-full-name-mapper',NULL,'7e917783-3eb6-48fb-bead-e8ce41722d58'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'fd40bdd4-1f03-4470-82e1-dc485805c331'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','17fd93d5-355f-4d86-a035-b11dbb83312a',NULL),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','b42f7870-e157-44d7-88b2-2c10c69e222b',NULL),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('eaca9e18-9385-43ad-b70f-9b33ed174509','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'fb3e8af9-8d8a-467c-9f29-0276302d6169'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'fb3e8af9-8d8a-467c-9f29-0276302d6169'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'a580fd66-57e1-4e56-8a97-7a77015f4657'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'84294d37-f577-4eb6-9233-7ae35cd3c0fb'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'41bd8ab5-49bd-4392-966d-efc10effba9e'),('f709ae4e-afdf-404b-956e-039d201c1b9b','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'0ca53734-3896-4acd-891a-84e68adfd9de'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'82f58373-a88d-44e3-a67f-36c4b87a8d9f'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e89c1a08-6c1a-4954-ad15-e59d3237c8ba'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'bf7128e1-794a-4d8c-8123-1d64255cc634'),('fa7ea0b2-efac-48f7-be82-12b6d3651843','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'397e78d0-fabf-4cfd-b214-9936a60347b1'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'09a20393-79b0-480e-ad87-1fab7109a4af');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('00710235-40f9-485a-aee9-ba9622740bd8','true','access.token.claim'),('00710235-40f9-485a-aee9-ba9622740bd8','website','claim.name'),('00710235-40f9-485a-aee9-ba9622740bd8','true','id.token.claim'),('00710235-40f9-485a-aee9-ba9622740bd8','true','introspection.token.claim'),('00710235-40f9-485a-aee9-ba9622740bd8','String','jsonType.label'),('00710235-40f9-485a-aee9-ba9622740bd8','website','user.attribute'),('00710235-40f9-485a-aee9-ba9622740bd8','true','userinfo.token.claim'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','true','access.token.claim'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','nickname','claim.name'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','true','id.token.claim'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','true','introspection.token.claim'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','String','jsonType.label'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','nickname','user.attribute'),('0074d5ea-dbd3-4949-a39e-f2a0c0fc7e4c','true','userinfo.token.claim'),('009a4769-da76-4266-abc5-d684680843fe','true','access.token.claim'),('009a4769-da76-4266-abc5-d684680843fe','true','introspection.token.claim'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','true','access.token.claim'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','zoneinfo','claim.name'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','true','id.token.claim'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','true','introspection.token.claim'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','String','jsonType.label'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','zoneinfo','user.attribute'),('03c48f6d-405e-4630-bfdb-5d3e0c3aea38','true','userinfo.token.claim'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','true','access.token.claim'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','nickname','claim.name'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','true','id.token.claim'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','true','introspection.token.claim'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','String','jsonType.label'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','nickname','user.attribute'),('04c5cdeb-45a2-4166-87f8-0e4b6a96040c','true','userinfo.token.claim'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','true','access.token.claim'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','resource_access.${client_id}.roles','claim.name'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','true','introspection.token.claim'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','String','jsonType.label'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','true','multivalued'),('04e1d00d-5a43-44c3-9d63-4335d778a5fc','foo','user.attribute'),('05a21962-17e0-4c60-bedb-c103dc862597','true','access.token.claim'),('05a21962-17e0-4c60-bedb-c103dc862597','true','id.token.claim'),('05a21962-17e0-4c60-bedb-c103dc862597','true','introspection.token.claim'),('05a21962-17e0-4c60-bedb-c103dc862597','country','user.attribute.country'),('05a21962-17e0-4c60-bedb-c103dc862597','formatted','user.attribute.formatted'),('05a21962-17e0-4c60-bedb-c103dc862597','locality','user.attribute.locality'),('05a21962-17e0-4c60-bedb-c103dc862597','postal_code','user.attribute.postal_code'),('05a21962-17e0-4c60-bedb-c103dc862597','region','user.attribute.region'),('05a21962-17e0-4c60-bedb-c103dc862597','street','user.attribute.street'),('05a21962-17e0-4c60-bedb-c103dc862597','true','userinfo.token.claim'),('0878692a-078a-46b3-9f53-e47273fde3f0','true','access.token.claim'),('0878692a-078a-46b3-9f53-e47273fde3f0','email','claim.name'),('0878692a-078a-46b3-9f53-e47273fde3f0','true','id.token.claim'),('0878692a-078a-46b3-9f53-e47273fde3f0','true','introspection.token.claim'),('0878692a-078a-46b3-9f53-e47273fde3f0','String','jsonType.label'),('0878692a-078a-46b3-9f53-e47273fde3f0','email','user.attribute'),('0878692a-078a-46b3-9f53-e47273fde3f0','true','userinfo.token.claim'),('0e28eebe-4c89-493d-94ab-779c27396186','true','access.token.claim'),('0e28eebe-4c89-493d-94ab-779c27396186','true','id.token.claim'),('0e28eebe-4c89-493d-94ab-779c27396186','true','introspection.token.claim'),('0e28eebe-4c89-493d-94ab-779c27396186','country','user.attribute.country'),('0e28eebe-4c89-493d-94ab-779c27396186','formatted','user.attribute.formatted'),('0e28eebe-4c89-493d-94ab-779c27396186','locality','user.attribute.locality'),('0e28eebe-4c89-493d-94ab-779c27396186','postal_code','user.attribute.postal_code'),('0e28eebe-4c89-493d-94ab-779c27396186','region','user.attribute.region'),('0e28eebe-4c89-493d-94ab-779c27396186','street','user.attribute.street'),('0e28eebe-4c89-493d-94ab-779c27396186','true','userinfo.token.claim'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','true','access.token.claim'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','locale','claim.name'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','true','id.token.claim'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','true','introspection.token.claim'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','String','jsonType.label'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','locale','user.attribute'),('0f5713f4-208a-4224-ae4a-97ae62d3ef4d','true','userinfo.token.claim'),('0f7b3554-4f20-4a8e-991b-c0ed2593bac6','true','access.token.claim'),('0f7b3554-4f20-4a8e-991b-c0ed2593bac6','true','id.token.claim'),('0f7b3554-4f20-4a8e-991b-c0ed2593bac6','true','introspection.token.claim'),('0f7b3554-4f20-4a8e-991b-c0ed2593bac6','true','userinfo.token.claim'),('0fe3a301-7698-43a6-9b8b-063b9a739cbe','true','access.token.claim'),('0fe3a301-7698-43a6-9b8b-063b9a739cbe','true','introspection.token.claim'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','true','access.token.claim'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','phone_number_verified','claim.name'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','true','id.token.claim'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','true','introspection.token.claim'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','boolean','jsonType.label'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','phoneNumberVerified','user.attribute'),('10d1d4ab-5586-40b0-8a72-7d6298c7919b','true','userinfo.token.claim'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','true','access.token.claim'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','website','claim.name'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','true','id.token.claim'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','true','introspection.token.claim'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','String','jsonType.label'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','website','user.attribute'),('111c4c02-903c-4bc5-95b3-e7955a97bff6','true','userinfo.token.claim'),('11afcab7-6b5c-4134-909e-09719f702c7d','true','access.token.claim'),('11afcab7-6b5c-4134-909e-09719f702c7d','true','id.token.claim'),('11afcab7-6b5c-4134-909e-09719f702c7d','true','introspection.token.claim'),('14f4fe11-513f-4819-8c6f-244de71a68ae','true','access.token.claim'),('14f4fe11-513f-4819-8c6f-244de71a68ae','true','introspection.token.claim'),('1684e1c7-3724-4276-9c7b-589dad9ca297','true','access.token.claim'),('1684e1c7-3724-4276-9c7b-589dad9ca297','family_name','claim.name'),('1684e1c7-3724-4276-9c7b-589dad9ca297','true','id.token.claim'),('1684e1c7-3724-4276-9c7b-589dad9ca297','true','introspection.token.claim'),('1684e1c7-3724-4276-9c7b-589dad9ca297','String','jsonType.label'),('1684e1c7-3724-4276-9c7b-589dad9ca297','lastName','user.attribute'),('1684e1c7-3724-4276-9c7b-589dad9ca297','true','userinfo.token.claim'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','true','access.token.claim'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','locale','claim.name'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','true','id.token.claim'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','true','introspection.token.claim'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','String','jsonType.label'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','locale','user.attribute'),('16e62a5a-3d6d-494f-8b93-83bf81aed293','true','userinfo.token.claim'),('18a8e184-371e-4bab-8086-7888b2af21ee','true','access.token.claim'),('18a8e184-371e-4bab-8086-7888b2af21ee','picture','claim.name'),('18a8e184-371e-4bab-8086-7888b2af21ee','true','id.token.claim'),('18a8e184-371e-4bab-8086-7888b2af21ee','true','introspection.token.claim'),('18a8e184-371e-4bab-8086-7888b2af21ee','String','jsonType.label'),('18a8e184-371e-4bab-8086-7888b2af21ee','picture','user.attribute'),('18a8e184-371e-4bab-8086-7888b2af21ee','true','userinfo.token.claim'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','true','access.token.claim'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','preferred_username','claim.name'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','true','id.token.claim'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','true','introspection.token.claim'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','String','jsonType.label'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','username','user.attribute'),('1c1314cf-4d5d-4748-bc48-1c058d687f76','true','userinfo.token.claim'),('1c570a94-4525-41e1-997c-17a59a391895','true','access.token.claim'),('1c570a94-4525-41e1-997c-17a59a391895','groups','claim.name'),('1c570a94-4525-41e1-997c-17a59a391895','true','id.token.claim'),('1c570a94-4525-41e1-997c-17a59a391895','true','introspection.token.claim'),('1c570a94-4525-41e1-997c-17a59a391895','String','jsonType.label'),('1c570a94-4525-41e1-997c-17a59a391895','true','multivalued'),('1c570a94-4525-41e1-997c-17a59a391895','foo','user.attribute'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','true','access.token.claim'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','email','claim.name'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','true','id.token.claim'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','true','introspection.token.claim'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','String','jsonType.label'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','email','user.attribute'),('1d926e23-fc84-469a-b5d2-bbd942bef42c','true','userinfo.token.claim'),('21790638-c531-4571-8004-1924ba79d24c','true','access.token.claim'),('21790638-c531-4571-8004-1924ba79d24c','clientHost','claim.name'),('21790638-c531-4571-8004-1924ba79d24c','true','id.token.claim'),('21790638-c531-4571-8004-1924ba79d24c','String','jsonType.label'),('21790638-c531-4571-8004-1924ba79d24c','clientHost','user.session.note'),('21790638-c531-4571-8004-1924ba79d24c','true','userinfo.token.claim'),('24fc08fb-1bf8-4cb0-a546-6a6baea3f2c7','true','access.token.claim'),('24fc08fb-1bf8-4cb0-a546-6a6baea3f2c7','true','introspection.token.claim'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','true','access.token.claim'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','locale','claim.name'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','true','id.token.claim'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','true','introspection.token.claim'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','String','jsonType.label'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','locale','user.attribute'),('255c4536-1307-4de0-909e-a9eb62c7f7a4','true','userinfo.token.claim'),('287c85ac-168d-45f0-93bc-789d09fcf2b5','true','access.token.claim'),('287c85ac-168d-45f0-93bc-789d09fcf2b5','resource_access.${client_id}.roles','claim.name'),('287c85ac-168d-45f0-93bc-789d09fcf2b5','true','introspection.token.claim'),('287c85ac-168d-45f0-93bc-789d09fcf2b5','String','jsonType.label'),('287c85ac-168d-45f0-93bc-789d09fcf2b5','true','multivalued'),('287c85ac-168d-45f0-93bc-789d09fcf2b5','foo','user.attribute'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','true','access.token.claim'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','email_verified','claim.name'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','true','id.token.claim'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','true','introspection.token.claim'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','boolean','jsonType.label'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','emailVerified','user.attribute'),('2926f17e-8f5d-45cd-9921-9bcb338ce2b8','true','userinfo.token.claim'),('2965c58d-8740-4509-bfc8-b36a940be2c7','true','access.token.claim'),('2965c58d-8740-4509-bfc8-b36a940be2c7','updated_at','claim.name'),('2965c58d-8740-4509-bfc8-b36a940be2c7','true','id.token.claim'),('2965c58d-8740-4509-bfc8-b36a940be2c7','true','introspection.token.claim'),('2965c58d-8740-4509-bfc8-b36a940be2c7','long','jsonType.label'),('2965c58d-8740-4509-bfc8-b36a940be2c7','updatedAt','user.attribute'),('2965c58d-8740-4509-bfc8-b36a940be2c7','true','userinfo.token.claim'),('29ced215-1a43-4a39-b7a7-31e6ef278e20','true','access.token.claim'),('29ced215-1a43-4a39-b7a7-31e6ef278e20','true','introspection.token.claim'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','true','access.token.claim'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','true','id.token.claim'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','true','introspection.token.claim'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','country','user.attribute.country'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','formatted','user.attribute.formatted'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','locality','user.attribute.locality'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','postal_code','user.attribute.postal_code'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','region','user.attribute.region'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','street','user.attribute.street'),('29f0d8fa-5e5a-49de-8ab2-bc91c78e05f1','true','userinfo.token.claim'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','true','access.token.claim'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','clientId','claim.name'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','true','id.token.claim'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','String','jsonType.label'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','clientId','user.session.note'),('2a6aebf0-8e4d-4276-9509-b42abecab1a4','true','userinfo.token.claim'),('2bea0b25-4693-44f3-b478-e5034e6c807d','true','access.token.claim'),('2bea0b25-4693-44f3-b478-e5034e6c807d','clientAddress','claim.name'),('2bea0b25-4693-44f3-b478-e5034e6c807d','true','id.token.claim'),('2bea0b25-4693-44f3-b478-e5034e6c807d','String','jsonType.label'),('2bea0b25-4693-44f3-b478-e5034e6c807d','clientAddress','user.session.note'),('2bea0b25-4693-44f3-b478-e5034e6c807d','true','userinfo.token.claim'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','true','access.token.claim'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','phone_number','claim.name'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','true','id.token.claim'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','true','introspection.token.claim'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','String','jsonType.label'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','phoneNumber','user.attribute'),('2df9d496-b6a7-4c4e-8f6f-15515891acef','true','userinfo.token.claim'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','true','access.token.claim'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','middle_name','claim.name'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','true','id.token.claim'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','true','introspection.token.claim'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','String','jsonType.label'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','middleName','user.attribute'),('2f827488-85ac-4cf4-9b12-f7f58d4332b4','true','userinfo.token.claim'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','true','access.token.claim'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','birthdate','claim.name'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','true','id.token.claim'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','true','introspection.token.claim'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','String','jsonType.label'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','birthdate','user.attribute'),('316c4c4f-f0a7-4d21-aa60-cc72c5952bac','true','userinfo.token.claim'),('33f23364-85dc-4e77-845b-365ece792c7c','true','access.token.claim'),('33f23364-85dc-4e77-845b-365ece792c7c','true','introspection.token.claim'),('3517c14a-7007-454f-8dd5-85f0a18e9685','true','access.token.claim'),('3517c14a-7007-454f-8dd5-85f0a18e9685','gender','claim.name'),('3517c14a-7007-454f-8dd5-85f0a18e9685','true','id.token.claim'),('3517c14a-7007-454f-8dd5-85f0a18e9685','true','introspection.token.claim'),('3517c14a-7007-454f-8dd5-85f0a18e9685','String','jsonType.label'),('3517c14a-7007-454f-8dd5-85f0a18e9685','gender','user.attribute'),('3517c14a-7007-454f-8dd5-85f0a18e9685','true','userinfo.token.claim'),('363c2af4-4caf-4ea0-976a-b38874c51a89','true','access.token.claim'),('363c2af4-4caf-4ea0-976a-b38874c51a89','middle_name','claim.name'),('363c2af4-4caf-4ea0-976a-b38874c51a89','true','id.token.claim'),('363c2af4-4caf-4ea0-976a-b38874c51a89','true','introspection.token.claim'),('363c2af4-4caf-4ea0-976a-b38874c51a89','String','jsonType.label'),('363c2af4-4caf-4ea0-976a-b38874c51a89','middleName','user.attribute'),('363c2af4-4caf-4ea0-976a-b38874c51a89','true','userinfo.token.claim'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','true','access.token.claim'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','locale','claim.name'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','true','id.token.claim'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','true','introspection.token.claim'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','String','jsonType.label'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','locale','user.attribute'),('369317f4-14ef-41b9-97bd-4a70cae3d4dd','true','userinfo.token.claim'),('38a572df-f56c-4113-b913-ee75f17ddb0a','true','access.token.claim'),('38a572df-f56c-4113-b913-ee75f17ddb0a','middle_name','claim.name'),('38a572df-f56c-4113-b913-ee75f17ddb0a','true','id.token.claim'),('38a572df-f56c-4113-b913-ee75f17ddb0a','true','introspection.token.claim'),('38a572df-f56c-4113-b913-ee75f17ddb0a','String','jsonType.label'),('38a572df-f56c-4113-b913-ee75f17ddb0a','middleName','user.attribute'),('38a572df-f56c-4113-b913-ee75f17ddb0a','true','userinfo.token.claim'),('38d73db8-1873-4688-8f8a-fdebad0d4baa','true','access.token.claim'),('38d73db8-1873-4688-8f8a-fdebad0d4baa','true','introspection.token.claim'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','true','access.token.claim'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','preferred_username','claim.name'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','true','id.token.claim'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','true','introspection.token.claim'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','String','jsonType.label'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','username','user.attribute'),('3ac3f950-ac3a-44e7-9ae2-4d9773bba1ef','true','userinfo.token.claim'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','true','access.token.claim'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','website','claim.name'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','true','id.token.claim'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','true','introspection.token.claim'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','String','jsonType.label'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','website','user.attribute'),('3bdb325d-8f8e-4ee0-aec7-680d8910a2a9','true','userinfo.token.claim'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','true','access.token.claim'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','upn','claim.name'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','true','id.token.claim'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','true','introspection.token.claim'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','String','jsonType.label'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','username','user.attribute'),('3c3b4040-c47c-4824-90a2-5f966d311fa6','true','userinfo.token.claim'),('3cb6d84e-2312-4d53-a19d-09defc004eca','true','access.token.claim'),('3cb6d84e-2312-4d53-a19d-09defc004eca','resource_access.${client_id}.roles','claim.name'),('3cb6d84e-2312-4d53-a19d-09defc004eca','true','introspection.token.claim'),('3cb6d84e-2312-4d53-a19d-09defc004eca','String','jsonType.label'),('3cb6d84e-2312-4d53-a19d-09defc004eca','true','multivalued'),('3cb6d84e-2312-4d53-a19d-09defc004eca','foo','user.attribute'),('3cd5537d-a36d-4b59-8aea-99285a631da9','true','access.token.claim'),('3cd5537d-a36d-4b59-8aea-99285a631da9','resource_access.${client_id}.roles','claim.name'),('3cd5537d-a36d-4b59-8aea-99285a631da9','true','introspection.token.claim'),('3cd5537d-a36d-4b59-8aea-99285a631da9','String','jsonType.label'),('3cd5537d-a36d-4b59-8aea-99285a631da9','true','multivalued'),('3cd5537d-a36d-4b59-8aea-99285a631da9','foo','user.attribute'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','true','access.token.claim'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','middle_name','claim.name'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','true','id.token.claim'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','true','introspection.token.claim'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','String','jsonType.label'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','middleName','user.attribute'),('3e7287d3-a147-4b12-8aad-bcdd26c12fbe','true','userinfo.token.claim'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','true','access.token.claim'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','website','claim.name'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','true','id.token.claim'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','true','introspection.token.claim'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','String','jsonType.label'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','website','user.attribute'),('41c22dca-0c1f-425e-a155-ce9d8895eb9c','true','userinfo.token.claim'),('48a09347-89a0-4612-b85e-7b71af76abfa','true','access.token.claim'),('48a09347-89a0-4612-b85e-7b71af76abfa','clientAddress','claim.name'),('48a09347-89a0-4612-b85e-7b71af76abfa','true','id.token.claim'),('48a09347-89a0-4612-b85e-7b71af76abfa','String','jsonType.label'),('48a09347-89a0-4612-b85e-7b71af76abfa','clientAddress','user.session.note'),('48a09347-89a0-4612-b85e-7b71af76abfa','true','userinfo.token.claim'),('4a76a051-9104-47e0-8526-c927fda08d45','true','access.token.claim'),('4a76a051-9104-47e0-8526-c927fda08d45','email','claim.name'),('4a76a051-9104-47e0-8526-c927fda08d45','true','id.token.claim'),('4a76a051-9104-47e0-8526-c927fda08d45','true','introspection.token.claim'),('4a76a051-9104-47e0-8526-c927fda08d45','String','jsonType.label'),('4a76a051-9104-47e0-8526-c927fda08d45','email','user.attribute'),('4a76a051-9104-47e0-8526-c927fda08d45','true','userinfo.token.claim'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','true','access.token.claim'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','clientId','claim.name'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','true','id.token.claim'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','String','jsonType.label'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','clientId','user.session.note'),('4b1c0869-2de2-4e78-bbc6-66b2f69abf01','true','userinfo.token.claim'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','true','access.token.claim'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','website','claim.name'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','true','id.token.claim'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','true','introspection.token.claim'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','String','jsonType.label'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','website','user.attribute'),('4c6a8c50-0143-4bfd-bbed-13b4fef3c2a5','true','userinfo.token.claim'),('4dc571b5-8757-44e1-940c-5bbb338c169b','true','access.token.claim'),('4dc571b5-8757-44e1-940c-5bbb338c169b','phone_number','claim.name'),('4dc571b5-8757-44e1-940c-5bbb338c169b','true','id.token.claim'),('4dc571b5-8757-44e1-940c-5bbb338c169b','true','introspection.token.claim'),('4dc571b5-8757-44e1-940c-5bbb338c169b','String','jsonType.label'),('4dc571b5-8757-44e1-940c-5bbb338c169b','phoneNumber','user.attribute'),('4dc571b5-8757-44e1-940c-5bbb338c169b','true','userinfo.token.claim'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','true','access.token.claim'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','updated_at','claim.name'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','true','id.token.claim'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','true','introspection.token.claim'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','long','jsonType.label'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','updatedAt','user.attribute'),('4f7599e7-ef3b-480a-80a9-a6590c1c5705','true','userinfo.token.claim'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','true','access.token.claim'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','clientAddress','claim.name'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','true','id.token.claim'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','String','jsonType.label'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','clientAddress','user.session.note'),('4fdd75dd-b010-40d5-83ac-5225fd7ffa6f','true','userinfo.token.claim'),('516c78f7-738a-481b-bde4-fa3ce18e53d2','true','access.token.claim'),('516c78f7-738a-481b-bde4-fa3ce18e53d2','clientId','claim.name'),('516c78f7-738a-481b-bde4-fa3ce18e53d2','true','id.token.claim'),('516c78f7-738a-481b-bde4-fa3ce18e53d2','String','jsonType.label'),('516c78f7-738a-481b-bde4-fa3ce18e53d2','clientId','user.session.note'),('516c78f7-738a-481b-bde4-fa3ce18e53d2','true','userinfo.token.claim'),('5263af97-4720-424b-b7a8-0510c6603574','true','access.token.claim'),('5263af97-4720-424b-b7a8-0510c6603574','true','id.token.claim'),('5263af97-4720-424b-b7a8-0510c6603574','true','introspection.token.claim'),('55f32e39-c694-4691-92ba-8fd1a511008f','true','access.token.claim'),('55f32e39-c694-4691-92ba-8fd1a511008f','true','id.token.claim'),('55f32e39-c694-4691-92ba-8fd1a511008f','true','introspection.token.claim'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','true','access.token.claim'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','zoneinfo','claim.name'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','true','id.token.claim'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','true','introspection.token.claim'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','String','jsonType.label'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','zoneinfo','user.attribute'),('5760cada-c1e5-42bb-b6a4-af93e6a082bb','true','userinfo.token.claim'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','true','access.token.claim'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','picture','claim.name'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','true','id.token.claim'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','true','introspection.token.claim'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','String','jsonType.label'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','picture','user.attribute'),('590dbe8d-2f0d-48cb-b0c8-7c566da7f787','true','userinfo.token.claim'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','true','access.token.claim'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','given_name','claim.name'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','true','id.token.claim'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','true','introspection.token.claim'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','String','jsonType.label'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','firstName','user.attribute'),('59717dec-85dc-4b08-abde-4e8d9bf257f2','true','userinfo.token.claim'),('5a351a27-055a-4b77-9c14-3a3486e4df1d','Role','attribute.name'),('5a351a27-055a-4b77-9c14-3a3486e4df1d','Basic','attribute.nameformat'),('5a351a27-055a-4b77-9c14-3a3486e4df1d','false','single'),('5a7599b1-d829-4301-9802-7a0a662288b7','true','access.token.claim'),('5a7599b1-d829-4301-9802-7a0a662288b7','email','claim.name'),('5a7599b1-d829-4301-9802-7a0a662288b7','true','id.token.claim'),('5a7599b1-d829-4301-9802-7a0a662288b7','true','introspection.token.claim'),('5a7599b1-d829-4301-9802-7a0a662288b7','String','jsonType.label'),('5a7599b1-d829-4301-9802-7a0a662288b7','email','user.attribute'),('5a7599b1-d829-4301-9802-7a0a662288b7','true','userinfo.token.claim'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','true','access.token.claim'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','phone_number','claim.name'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','true','id.token.claim'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','true','introspection.token.claim'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','String','jsonType.label'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','phoneNumber','user.attribute'),('5b8d8d2d-d069-4697-99a6-3de6b28bdbaf','true','userinfo.token.claim'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','true','access.token.claim'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','email','claim.name'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','true','id.token.claim'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','true','introspection.token.claim'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','String','jsonType.label'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','email','user.attribute'),('5da304d6-3a5a-4591-b230-d10ea6beca3e','true','userinfo.token.claim'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','true','access.token.claim'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','zoneinfo','claim.name'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','true','id.token.claim'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','true','introspection.token.claim'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','String','jsonType.label'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','zoneinfo','user.attribute'),('600fbca2-9d0c-4b8c-8508-9739ee40cfdf','true','userinfo.token.claim'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','true','access.token.claim'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','phone_number','claim.name'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','true','id.token.claim'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','true','introspection.token.claim'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','String','jsonType.label'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','phoneNumber','user.attribute'),('6246a2f0-8a7b-44a8-856c-0cbf330bbc49','true','userinfo.token.claim'),('62abdaf9-ec57-406d-a50f-e18297baef88','true','access.token.claim'),('62abdaf9-ec57-406d-a50f-e18297baef88','realm_access.roles','claim.name'),('62abdaf9-ec57-406d-a50f-e18297baef88','true','introspection.token.claim'),('62abdaf9-ec57-406d-a50f-e18297baef88','String','jsonType.label'),('62abdaf9-ec57-406d-a50f-e18297baef88','true','multivalued'),('62abdaf9-ec57-406d-a50f-e18297baef88','foo','user.attribute'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','true','access.token.claim'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','picture','claim.name'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','true','id.token.claim'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','true','introspection.token.claim'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','String','jsonType.label'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','picture','user.attribute'),('63bfaaeb-cd80-469d-ac28-0e7232e2fe01','true','userinfo.token.claim'),('64d0651b-2469-4e30-b52b-e923d33889b2','true','access.token.claim'),('64d0651b-2469-4e30-b52b-e923d33889b2','true','id.token.claim'),('64d0651b-2469-4e30-b52b-e923d33889b2','true','introspection.token.claim'),('64d0651b-2469-4e30-b52b-e923d33889b2','true','userinfo.token.claim'),('65027bbd-5a4a-4a66-83bc-959480d38e97','true','access.token.claim'),('65027bbd-5a4a-4a66-83bc-959480d38e97','true','id.token.claim'),('65027bbd-5a4a-4a66-83bc-959480d38e97','true','introspection.token.claim'),('65027bbd-5a4a-4a66-83bc-959480d38e97','true','userinfo.token.claim'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','true','access.token.claim'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','picture','claim.name'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','true','id.token.claim'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','true','introspection.token.claim'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','String','jsonType.label'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','picture','user.attribute'),('65c1c34e-9d17-4ad5-9510-72b7844bf04b','true','userinfo.token.claim'),('664acc5f-0914-414e-8d56-121a3585f784','true','access.token.claim'),('664acc5f-0914-414e-8d56-121a3585f784','updated_at','claim.name'),('664acc5f-0914-414e-8d56-121a3585f784','true','id.token.claim'),('664acc5f-0914-414e-8d56-121a3585f784','true','introspection.token.claim'),('664acc5f-0914-414e-8d56-121a3585f784','long','jsonType.label'),('664acc5f-0914-414e-8d56-121a3585f784','updatedAt','user.attribute'),('664acc5f-0914-414e-8d56-121a3585f784','true','userinfo.token.claim'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','true','access.token.claim'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','birthdate','claim.name'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','true','id.token.claim'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','true','introspection.token.claim'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','String','jsonType.label'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','birthdate','user.attribute'),('66ce0e74-1ec7-4077-846b-9dde0676b72f','true','userinfo.token.claim'),('67247481-7021-46c2-809d-ff8d4f37393e','true','access.token.claim'),('67247481-7021-46c2-809d-ff8d4f37393e','clientHost','claim.name'),('67247481-7021-46c2-809d-ff8d4f37393e','true','id.token.claim'),('67247481-7021-46c2-809d-ff8d4f37393e','String','jsonType.label'),('67247481-7021-46c2-809d-ff8d4f37393e','clientHost','user.session.note'),('67247481-7021-46c2-809d-ff8d4f37393e','true','userinfo.token.claim'),('6840a789-4536-47a6-b637-bd0429087440','true','access.token.claim'),('6840a789-4536-47a6-b637-bd0429087440','locale','claim.name'),('6840a789-4536-47a6-b637-bd0429087440','true','id.token.claim'),('6840a789-4536-47a6-b637-bd0429087440','true','introspection.token.claim'),('6840a789-4536-47a6-b637-bd0429087440','String','jsonType.label'),('6840a789-4536-47a6-b637-bd0429087440','locale','user.attribute'),('6840a789-4536-47a6-b637-bd0429087440','true','userinfo.token.claim'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','true','access.token.claim'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','given_name','claim.name'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','true','id.token.claim'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','true','introspection.token.claim'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','String','jsonType.label'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','firstName','user.attribute'),('688e2d2c-74ca-4461-b3a6-53f1de37c940','true','userinfo.token.claim'),('68ff8c80-864b-4ce2-8e29-0209320440e5','true','access.token.claim'),('68ff8c80-864b-4ce2-8e29-0209320440e5','phone_number','claim.name'),('68ff8c80-864b-4ce2-8e29-0209320440e5','true','id.token.claim'),('68ff8c80-864b-4ce2-8e29-0209320440e5','true','introspection.token.claim'),('68ff8c80-864b-4ce2-8e29-0209320440e5','String','jsonType.label'),('68ff8c80-864b-4ce2-8e29-0209320440e5','phoneNumber','user.attribute'),('68ff8c80-864b-4ce2-8e29-0209320440e5','true','userinfo.token.claim'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','true','access.token.claim'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','clientId','claim.name'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','true','id.token.claim'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','String','jsonType.label'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','clientId','user.session.note'),('69474ecf-4d22-450e-a8dd-543a16de3dd7','true','userinfo.token.claim'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','true','access.token.claim'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','email','claim.name'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','true','id.token.claim'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','true','introspection.token.claim'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','String','jsonType.label'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','email','user.attribute'),('6a3b4830-20bb-42ca-81d6-f353b74012ab','true','userinfo.token.claim'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','true','access.token.claim'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','clientAddress','claim.name'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','true','id.token.claim'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','String','jsonType.label'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','clientAddress','user.session.note'),('6aea5eec-950d-4c5a-af0b-57b3b800ab35','true','userinfo.token.claim'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','true','access.token.claim'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','phone_number_verified','claim.name'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','true','id.token.claim'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','true','introspection.token.claim'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','boolean','jsonType.label'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','phoneNumberVerified','user.attribute'),('6b37739b-3d23-4fc8-8115-132d7129cfa1','true','userinfo.token.claim'),('6c9fa34a-f8da-489d-8e26-a15348b1fb6c','true','access.token.claim'),('6c9fa34a-f8da-489d-8e26-a15348b1fb6c','true','id.token.claim'),('6c9fa34a-f8da-489d-8e26-a15348b1fb6c','true','introspection.token.claim'),('6c9fa34a-f8da-489d-8e26-a15348b1fb6c','true','userinfo.token.claim'),('6f3978b9-d7f6-4eab-a248-0b1155575769','true','access.token.claim'),('6f3978b9-d7f6-4eab-a248-0b1155575769','true','id.token.claim'),('6f3978b9-d7f6-4eab-a248-0b1155575769','true','introspection.token.claim'),('7120c825-2664-4543-b8f8-d29ce4a138b9','true','access.token.claim'),('7120c825-2664-4543-b8f8-d29ce4a138b9','birthdate','claim.name'),('7120c825-2664-4543-b8f8-d29ce4a138b9','true','id.token.claim'),('7120c825-2664-4543-b8f8-d29ce4a138b9','true','introspection.token.claim'),('7120c825-2664-4543-b8f8-d29ce4a138b9','String','jsonType.label'),('7120c825-2664-4543-b8f8-d29ce4a138b9','birthdate','user.attribute'),('7120c825-2664-4543-b8f8-d29ce4a138b9','true','userinfo.token.claim'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','true','access.token.claim'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','realm_access.roles','claim.name'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','true','introspection.token.claim'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','String','jsonType.label'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','true','multivalued'),('717761eb-bea9-4614-932e-c3cdbccbc9ea','foo','user.attribute'),('71f1a1f6-736d-471a-bd86-a792d10dd702','true','access.token.claim'),('71f1a1f6-736d-471a-bd86-a792d10dd702','realm_access.roles','claim.name'),('71f1a1f6-736d-471a-bd86-a792d10dd702','true','introspection.token.claim'),('71f1a1f6-736d-471a-bd86-a792d10dd702','String','jsonType.label'),('71f1a1f6-736d-471a-bd86-a792d10dd702','true','multivalued'),('71f1a1f6-736d-471a-bd86-a792d10dd702','foo','user.attribute'),('72690ade-7605-4f6a-8d77-6f516fe84015','true','access.token.claim'),('72690ade-7605-4f6a-8d77-6f516fe84015','email_verified','claim.name'),('72690ade-7605-4f6a-8d77-6f516fe84015','true','id.token.claim'),('72690ade-7605-4f6a-8d77-6f516fe84015','true','introspection.token.claim'),('72690ade-7605-4f6a-8d77-6f516fe84015','boolean','jsonType.label'),('72690ade-7605-4f6a-8d77-6f516fe84015','emailVerified','user.attribute'),('72690ade-7605-4f6a-8d77-6f516fe84015','true','userinfo.token.claim'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','true','access.token.claim'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','locale','claim.name'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','true','id.token.claim'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','true','introspection.token.claim'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','String','jsonType.label'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','locale','user.attribute'),('76e68a85-e65a-4826-a3be-ed610b60a0b8','true','userinfo.token.claim'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','true','access.token.claim'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','profile','claim.name'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','true','id.token.claim'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','true','introspection.token.claim'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','String','jsonType.label'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','profile','user.attribute'),('7866d0cc-3d18-4acd-bb15-a8d272f96e0a','true','userinfo.token.claim'),('7b53638b-9c13-4dcb-867e-315ba5737419','true','access.token.claim'),('7b53638b-9c13-4dcb-867e-315ba5737419','phone_number','claim.name'),('7b53638b-9c13-4dcb-867e-315ba5737419','true','id.token.claim'),('7b53638b-9c13-4dcb-867e-315ba5737419','true','introspection.token.claim'),('7b53638b-9c13-4dcb-867e-315ba5737419','String','jsonType.label'),('7b53638b-9c13-4dcb-867e-315ba5737419','phoneNumber','user.attribute'),('7b53638b-9c13-4dcb-867e-315ba5737419','true','userinfo.token.claim'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','true','access.token.claim'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','clientHost','claim.name'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','true','id.token.claim'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','String','jsonType.label'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','clientHost','user.session.note'),('7d2185e9-c682-4210-9bfc-7e0861fe4486','true','userinfo.token.claim'),('7db43001-9479-41db-b0f8-f725d01c1985','true','access.token.claim'),('7db43001-9479-41db-b0f8-f725d01c1985','realm_access.roles','claim.name'),('7db43001-9479-41db-b0f8-f725d01c1985','true','introspection.token.claim'),('7db43001-9479-41db-b0f8-f725d01c1985','String','jsonType.label'),('7db43001-9479-41db-b0f8-f725d01c1985','true','multivalued'),('7db43001-9479-41db-b0f8-f725d01c1985','foo','user.attribute'),('801723d3-405a-47ed-a27c-a595dbd28479','true','access.token.claim'),('801723d3-405a-47ed-a27c-a595dbd28479','gender','claim.name'),('801723d3-405a-47ed-a27c-a595dbd28479','true','id.token.claim'),('801723d3-405a-47ed-a27c-a595dbd28479','true','introspection.token.claim'),('801723d3-405a-47ed-a27c-a595dbd28479','String','jsonType.label'),('801723d3-405a-47ed-a27c-a595dbd28479','gender','user.attribute'),('801723d3-405a-47ed-a27c-a595dbd28479','true','userinfo.token.claim'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','true','access.token.claim'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','gender','claim.name'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','true','id.token.claim'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','true','introspection.token.claim'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','String','jsonType.label'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','gender','user.attribute'),('83582d6f-4330-4eaf-ac48-aa522abc48ee','true','userinfo.token.claim'),('83b90a81-68b0-4421-922c-cd911290f8b4','Role','attribute.name'),('83b90a81-68b0-4421-922c-cd911290f8b4','Basic','attribute.nameformat'),('83b90a81-68b0-4421-922c-cd911290f8b4','false','single'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','true','access.token.claim'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','preferred_username','claim.name'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','true','id.token.claim'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','true','introspection.token.claim'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','String','jsonType.label'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','username','user.attribute'),('83be5a9d-da9c-4876-90eb-ef314f460d1b','true','userinfo.token.claim'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','true','access.token.claim'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','phone_number_verified','claim.name'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','true','id.token.claim'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','true','introspection.token.claim'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','boolean','jsonType.label'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','phoneNumberVerified','user.attribute'),('849d5a0c-9bee-4e0e-ad46-5929c3eacc8c','true','userinfo.token.claim'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','true','access.token.claim'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','preferred_username','claim.name'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','true','id.token.claim'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','true','introspection.token.claim'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','String','jsonType.label'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','username','user.attribute'),('85c268ad-44d1-4a69-b34d-ef8df9c5a981','true','userinfo.token.claim'),('867fe269-84e3-4cef-a867-a7e546962c5e','true','access.token.claim'),('867fe269-84e3-4cef-a867-a7e546962c5e','clientHost','claim.name'),('867fe269-84e3-4cef-a867-a7e546962c5e','true','id.token.claim'),('867fe269-84e3-4cef-a867-a7e546962c5e','String','jsonType.label'),('867fe269-84e3-4cef-a867-a7e546962c5e','clientHost','user.session.note'),('867fe269-84e3-4cef-a867-a7e546962c5e','true','userinfo.token.claim'),('8dd68c51-d245-476f-87c7-3898cf087a11','true','access.token.claim'),('8dd68c51-d245-476f-87c7-3898cf087a11','given_name','claim.name'),('8dd68c51-d245-476f-87c7-3898cf087a11','true','id.token.claim'),('8dd68c51-d245-476f-87c7-3898cf087a11','true','introspection.token.claim'),('8dd68c51-d245-476f-87c7-3898cf087a11','String','jsonType.label'),('8dd68c51-d245-476f-87c7-3898cf087a11','firstName','user.attribute'),('8dd68c51-d245-476f-87c7-3898cf087a11','true','userinfo.token.claim'),('8de7646c-acde-46cb-b398-07c1bec648a2','true','access.token.claim'),('8de7646c-acde-46cb-b398-07c1bec648a2','family_name','claim.name'),('8de7646c-acde-46cb-b398-07c1bec648a2','true','id.token.claim'),('8de7646c-acde-46cb-b398-07c1bec648a2','true','introspection.token.claim'),('8de7646c-acde-46cb-b398-07c1bec648a2','String','jsonType.label'),('8de7646c-acde-46cb-b398-07c1bec648a2','lastName','user.attribute'),('8de7646c-acde-46cb-b398-07c1bec648a2','true','userinfo.token.claim'),('8f706bec-b44e-4249-9b38-a567ccc802ba','true','access.token.claim'),('8f706bec-b44e-4249-9b38-a567ccc802ba','clientAddress','claim.name'),('8f706bec-b44e-4249-9b38-a567ccc802ba','true','id.token.claim'),('8f706bec-b44e-4249-9b38-a567ccc802ba','String','jsonType.label'),('8f706bec-b44e-4249-9b38-a567ccc802ba','clientAddress','user.session.note'),('8f706bec-b44e-4249-9b38-a567ccc802ba','true','userinfo.token.claim'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','true','access.token.claim'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','profile','claim.name'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','true','id.token.claim'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','true','introspection.token.claim'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','String','jsonType.label'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','profile','user.attribute'),('9064eae7-aabf-415e-92aa-6b25e23dc7b9','true','userinfo.token.claim'),('91a1d266-8244-4647-b8a0-4b37b2cade56','true','access.token.claim'),('91a1d266-8244-4647-b8a0-4b37b2cade56','true','id.token.claim'),('91a1d266-8244-4647-b8a0-4b37b2cade56','true','introspection.token.claim'),('928fccd8-0254-450d-b302-143c4194c8a0','true','access.token.claim'),('928fccd8-0254-450d-b302-143c4194c8a0','clientId','claim.name'),('928fccd8-0254-450d-b302-143c4194c8a0','true','id.token.claim'),('928fccd8-0254-450d-b302-143c4194c8a0','String','jsonType.label'),('928fccd8-0254-450d-b302-143c4194c8a0','clientId','user.session.note'),('928fccd8-0254-450d-b302-143c4194c8a0','true','userinfo.token.claim'),('929ef4b7-916d-4b39-aec6-8f43107229e3','true','access.token.claim'),('929ef4b7-916d-4b39-aec6-8f43107229e3','locale','claim.name'),('929ef4b7-916d-4b39-aec6-8f43107229e3','true','id.token.claim'),('929ef4b7-916d-4b39-aec6-8f43107229e3','true','introspection.token.claim'),('929ef4b7-916d-4b39-aec6-8f43107229e3','String','jsonType.label'),('929ef4b7-916d-4b39-aec6-8f43107229e3','locale','user.attribute'),('929ef4b7-916d-4b39-aec6-8f43107229e3','true','userinfo.token.claim'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','true','access.token.claim'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','upn','claim.name'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','true','id.token.claim'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','true','introspection.token.claim'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','String','jsonType.label'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','username','user.attribute'),('95fadd53-2640-48ee-b80d-3cd70235d7fd','true','userinfo.token.claim'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','true','access.token.claim'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','true','id.token.claim'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','true','introspection.token.claim'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','country','user.attribute.country'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','formatted','user.attribute.formatted'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','locality','user.attribute.locality'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','postal_code','user.attribute.postal_code'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','region','user.attribute.region'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','street','user.attribute.street'),('96771636-9f14-4e68-8a2a-c7e4f2a04f1a','true','userinfo.token.claim'),('96c54367-9ef4-4927-8435-50bb91ee04e9','true','access.token.claim'),('96c54367-9ef4-4927-8435-50bb91ee04e9','nickname','claim.name'),('96c54367-9ef4-4927-8435-50bb91ee04e9','true','id.token.claim'),('96c54367-9ef4-4927-8435-50bb91ee04e9','true','introspection.token.claim'),('96c54367-9ef4-4927-8435-50bb91ee04e9','String','jsonType.label'),('96c54367-9ef4-4927-8435-50bb91ee04e9','nickname','user.attribute'),('96c54367-9ef4-4927-8435-50bb91ee04e9','true','userinfo.token.claim'),('96cb4cd6-72a1-419d-8c1d-61bc7600e0cd','Role','attribute.name'),('96cb4cd6-72a1-419d-8c1d-61bc7600e0cd','Basic','attribute.nameformat'),('96cb4cd6-72a1-419d-8c1d-61bc7600e0cd','false','single'),('97f0376c-409f-45c4-85b0-e7a937f75300','true','access.token.claim'),('97f0376c-409f-45c4-85b0-e7a937f75300','groups','claim.name'),('97f0376c-409f-45c4-85b0-e7a937f75300','true','id.token.claim'),('97f0376c-409f-45c4-85b0-e7a937f75300','true','introspection.token.claim'),('97f0376c-409f-45c4-85b0-e7a937f75300','String','jsonType.label'),('97f0376c-409f-45c4-85b0-e7a937f75300','true','multivalued'),('97f0376c-409f-45c4-85b0-e7a937f75300','foo','user.attribute'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','true','access.token.claim'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','phone_number_verified','claim.name'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','true','id.token.claim'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','true','introspection.token.claim'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','boolean','jsonType.label'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','phoneNumberVerified','user.attribute'),('98d08cd4-ebdd-4dc5-8b64-f2061970b4b9','true','userinfo.token.claim'),('992f78df-5472-45fd-ba68-064afb8e34a2','true','access.token.claim'),('992f78df-5472-45fd-ba68-064afb8e34a2','realm_access.roles','claim.name'),('992f78df-5472-45fd-ba68-064afb8e34a2','true','introspection.token.claim'),('992f78df-5472-45fd-ba68-064afb8e34a2','String','jsonType.label'),('992f78df-5472-45fd-ba68-064afb8e34a2','true','multivalued'),('992f78df-5472-45fd-ba68-064afb8e34a2','foo','user.attribute'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','true','access.token.claim'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','clientId','claim.name'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','true','id.token.claim'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','String','jsonType.label'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','clientId','user.session.note'),('9953f29b-7ce4-43de-87b2-ec9b4121e358','true','userinfo.token.claim'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','true','access.token.claim'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','gender','claim.name'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','true','id.token.claim'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','true','introspection.token.claim'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','String','jsonType.label'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','gender','user.attribute'),('9ba6231b-bf66-4ae9-8e2c-d0330e6d74a8','true','userinfo.token.claim'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','true','access.token.claim'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','zoneinfo','claim.name'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','true','id.token.claim'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','true','introspection.token.claim'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','String','jsonType.label'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','zoneinfo','user.attribute'),('9ce6fcb8-0dd4-4d15-a409-b1fa5ea09dd7','true','userinfo.token.claim'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','true','access.token.claim'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','given_name','claim.name'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','true','id.token.claim'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','true','introspection.token.claim'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','String','jsonType.label'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','firstName','user.attribute'),('9f7e8faf-e57d-4392-9c23-f3cf090477c6','true','userinfo.token.claim'),('9fd74eb8-7607-446e-86ad-9c19896d1932','true','access.token.claim'),('9fd74eb8-7607-446e-86ad-9c19896d1932','preferred_username','claim.name'),('9fd74eb8-7607-446e-86ad-9c19896d1932','true','id.token.claim'),('9fd74eb8-7607-446e-86ad-9c19896d1932','true','introspection.token.claim'),('9fd74eb8-7607-446e-86ad-9c19896d1932','String','jsonType.label'),('9fd74eb8-7607-446e-86ad-9c19896d1932','username','user.attribute'),('9fd74eb8-7607-446e-86ad-9c19896d1932','true','userinfo.token.claim'),('a13e0351-392e-4a52-af28-75705a5df05d','true','access.token.claim'),('a13e0351-392e-4a52-af28-75705a5df05d','clientAddress','claim.name'),('a13e0351-392e-4a52-af28-75705a5df05d','true','id.token.claim'),('a13e0351-392e-4a52-af28-75705a5df05d','String','jsonType.label'),('a13e0351-392e-4a52-af28-75705a5df05d','clientAddress','user.session.note'),('a13e0351-392e-4a52-af28-75705a5df05d','true','userinfo.token.claim'),('a313336d-a0b1-4720-8203-83ac45e79833','true','access.token.claim'),('a313336d-a0b1-4720-8203-83ac45e79833','given_name','claim.name'),('a313336d-a0b1-4720-8203-83ac45e79833','true','id.token.claim'),('a313336d-a0b1-4720-8203-83ac45e79833','true','introspection.token.claim'),('a313336d-a0b1-4720-8203-83ac45e79833','String','jsonType.label'),('a313336d-a0b1-4720-8203-83ac45e79833','firstName','user.attribute'),('a313336d-a0b1-4720-8203-83ac45e79833','true','userinfo.token.claim'),('a3eec46f-9980-4bee-9d99-0ab87062ad11','true','access.token.claim'),('a3eec46f-9980-4bee-9d99-0ab87062ad11','true','id.token.claim'),('a3eec46f-9980-4bee-9d99-0ab87062ad11','true','introspection.token.claim'),('a3eec46f-9980-4bee-9d99-0ab87062ad11','true','userinfo.token.claim'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','true','access.token.claim'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','birthdate','claim.name'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','true','id.token.claim'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','true','introspection.token.claim'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','String','jsonType.label'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','birthdate','user.attribute'),('a623da87-f0d6-4322-b889-7ea9e6a0330c','true','userinfo.token.claim'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','true','access.token.claim'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','birthdate','claim.name'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','true','id.token.claim'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','true','introspection.token.claim'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','String','jsonType.label'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','birthdate','user.attribute'),('a8dac337-dbbc-434f-a5d5-d9e6576e4bf0','true','userinfo.token.claim'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','true','access.token.claim'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','updated_at','claim.name'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','true','id.token.claim'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','true','introspection.token.claim'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','long','jsonType.label'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','updatedAt','user.attribute'),('ab7bd9d4-db4c-45a2-8967-f57a48db71e3','true','userinfo.token.claim'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','true','access.token.claim'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','profile','claim.name'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','true','id.token.claim'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','true','introspection.token.claim'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','String','jsonType.label'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','profile','user.attribute'),('ad15e82e-bae8-45f5-95fe-8ab24e4f84a1','true','userinfo.token.claim'),('af7cf789-9e25-4442-bd57-91497ef69951','true','access.token.claim'),('af7cf789-9e25-4442-bd57-91497ef69951','true','introspection.token.claim'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','true','access.token.claim'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','picture','claim.name'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','true','id.token.claim'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','true','introspection.token.claim'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','String','jsonType.label'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','picture','user.attribute'),('afea7e3f-94e0-4d7d-8ef6-f4e81a60fab6','true','userinfo.token.claim'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','true','access.token.claim'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','true','id.token.claim'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','true','introspection.token.claim'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','country','user.attribute.country'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','formatted','user.attribute.formatted'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','locality','user.attribute.locality'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','postal_code','user.attribute.postal_code'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','region','user.attribute.region'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','street','user.attribute.street'),('b036d102-f20c-4fff-94ff-5cf2ea2cd8b7','true','userinfo.token.claim'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','true','access.token.claim'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','email_verified','claim.name'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','true','id.token.claim'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','true','introspection.token.claim'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','boolean','jsonType.label'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','emailVerified','user.attribute'),('b03f00f9-c4bd-4739-a2e6-cc993e28c570','true','userinfo.token.claim'),('b05d0a6d-8636-45e9-b4e3-30baf3c2f80a','true','access.token.claim'),('b05d0a6d-8636-45e9-b4e3-30baf3c2f80a','true','introspection.token.claim'),('b2507bcb-d264-4b95-a872-a4cdac3d2205','true','access.token.claim'),('b2507bcb-d264-4b95-a872-a4cdac3d2205','true','id.token.claim'),('b2507bcb-d264-4b95-a872-a4cdac3d2205','true','introspection.token.claim'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','true','access.token.claim'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','family_name','claim.name'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','true','id.token.claim'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','true','introspection.token.claim'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','String','jsonType.label'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','lastName','user.attribute'),('b2bccc13-d6fa-4e9e-a280-4e77858ae518','true','userinfo.token.claim'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','true','access.token.claim'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','realm_access.roles','claim.name'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','true','introspection.token.claim'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','String','jsonType.label'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','true','multivalued'),('b4f2c302-31f5-4f85-9cc2-c9b96e70abb2','foo','user.attribute'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','true','access.token.claim'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','zoneinfo','claim.name'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','true','id.token.claim'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','true','introspection.token.claim'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','String','jsonType.label'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','zoneinfo','user.attribute'),('b60970ba-2f92-4dd7-b0cd-56ff03c4646f','true','userinfo.token.claim'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','true','access.token.claim'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','upn','claim.name'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','true','id.token.claim'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','true','introspection.token.claim'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','String','jsonType.label'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','username','user.attribute'),('b6f5da5e-e85a-47d8-8cd2-2b6830e9f8cb','true','userinfo.token.claim'),('b87059b9-8c28-4365-910f-2deaf8517e98','true','access.token.claim'),('b87059b9-8c28-4365-910f-2deaf8517e98','locale','claim.name'),('b87059b9-8c28-4365-910f-2deaf8517e98','true','id.token.claim'),('b87059b9-8c28-4365-910f-2deaf8517e98','true','introspection.token.claim'),('b87059b9-8c28-4365-910f-2deaf8517e98','String','jsonType.label'),('b87059b9-8c28-4365-910f-2deaf8517e98','locale','user.attribute'),('b87059b9-8c28-4365-910f-2deaf8517e98','true','userinfo.token.claim'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','true','access.token.claim'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','groups','claim.name'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','true','id.token.claim'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','true','introspection.token.claim'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','String','jsonType.label'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','true','multivalued'),('b9c45e4e-2305-4f12-baf8-447ceb67ec01','foo','user.attribute'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','true','access.token.claim'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','birthdate','claim.name'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','true','id.token.claim'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','true','introspection.token.claim'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','String','jsonType.label'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','birthdate','user.attribute'),('ba15ef3c-edc4-47c3-ade4-f5ad444be5ac','true','userinfo.token.claim'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','true','access.token.claim'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','middle_name','claim.name'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','true','id.token.claim'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','true','introspection.token.claim'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','String','jsonType.label'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','middleName','user.attribute'),('bb4ddb79-e9b1-41f3-a7b5-0506a4e5366d','true','userinfo.token.claim'),('bcb81c4c-b497-4205-a642-554846b59b69','true','access.token.claim'),('bcb81c4c-b497-4205-a642-554846b59b69','nickname','claim.name'),('bcb81c4c-b497-4205-a642-554846b59b69','true','id.token.claim'),('bcb81c4c-b497-4205-a642-554846b59b69','true','introspection.token.claim'),('bcb81c4c-b497-4205-a642-554846b59b69','String','jsonType.label'),('bcb81c4c-b497-4205-a642-554846b59b69','nickname','user.attribute'),('bcb81c4c-b497-4205-a642-554846b59b69','true','userinfo.token.claim'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','true','access.token.claim'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','zoneinfo','claim.name'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','true','id.token.claim'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','true','introspection.token.claim'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','String','jsonType.label'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','zoneinfo','user.attribute'),('be8c7471-94c0-4eb7-ba83-8da40e632d52','true','userinfo.token.claim'),('bef9704f-2c75-478f-a419-698d1ce7cba6','true','access.token.claim'),('bef9704f-2c75-478f-a419-698d1ce7cba6','phone_number_verified','claim.name'),('bef9704f-2c75-478f-a419-698d1ce7cba6','true','id.token.claim'),('bef9704f-2c75-478f-a419-698d1ce7cba6','true','introspection.token.claim'),('bef9704f-2c75-478f-a419-698d1ce7cba6','boolean','jsonType.label'),('bef9704f-2c75-478f-a419-698d1ce7cba6','phoneNumberVerified','user.attribute'),('bef9704f-2c75-478f-a419-698d1ce7cba6','true','userinfo.token.claim'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','true','access.token.claim'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','family_name','claim.name'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','true','id.token.claim'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','true','introspection.token.claim'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','String','jsonType.label'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','lastName','user.attribute'),('bf533fbe-4561-4d99-b6ad-0c5dba505267','true','userinfo.token.claim'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','true','access.token.claim'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','locale','claim.name'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','true','id.token.claim'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','true','introspection.token.claim'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','String','jsonType.label'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','locale','user.attribute'),('bff3e4e4-1a87-45c1-8646-340dfeef721c','true','userinfo.token.claim'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','true','access.token.claim'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','groups','claim.name'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','true','id.token.claim'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','true','introspection.token.claim'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','String','jsonType.label'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','true','multivalued'),('c0b5085a-11d4-4a4b-b8f7-e91f92724811','foo','user.attribute'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','true','access.token.claim'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','website','claim.name'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','true','id.token.claim'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','true','introspection.token.claim'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','String','jsonType.label'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','website','user.attribute'),('c1385f13-0c56-424f-a7fe-4c57a8f91b6f','true','userinfo.token.claim'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','true','access.token.claim'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','profile','claim.name'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','true','id.token.claim'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','true','introspection.token.claim'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','String','jsonType.label'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','profile','user.attribute'),('c26d84ca-c1f5-49e6-ad97-3a2612177af9','true','userinfo.token.claim'),('c28013bb-ef94-457a-b740-77912c0d5f4a','true','access.token.claim'),('c28013bb-ef94-457a-b740-77912c0d5f4a','picture','claim.name'),('c28013bb-ef94-457a-b740-77912c0d5f4a','true','id.token.claim'),('c28013bb-ef94-457a-b740-77912c0d5f4a','true','introspection.token.claim'),('c28013bb-ef94-457a-b740-77912c0d5f4a','String','jsonType.label'),('c28013bb-ef94-457a-b740-77912c0d5f4a','picture','user.attribute'),('c28013bb-ef94-457a-b740-77912c0d5f4a','true','userinfo.token.claim'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','true','access.token.claim'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','nickname','claim.name'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','true','id.token.claim'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','true','introspection.token.claim'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','String','jsonType.label'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','nickname','user.attribute'),('c3ce08ee-4c30-4a62-8ce5-a9b660a81efd','true','userinfo.token.claim'),('c592ce37-8d18-4a25-86b7-61a1818989f0','true','access.token.claim'),('c592ce37-8d18-4a25-86b7-61a1818989f0','updated_at','claim.name'),('c592ce37-8d18-4a25-86b7-61a1818989f0','true','id.token.claim'),('c592ce37-8d18-4a25-86b7-61a1818989f0','true','introspection.token.claim'),('c592ce37-8d18-4a25-86b7-61a1818989f0','long','jsonType.label'),('c592ce37-8d18-4a25-86b7-61a1818989f0','updatedAt','user.attribute'),('c592ce37-8d18-4a25-86b7-61a1818989f0','true','userinfo.token.claim'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','true','access.token.claim'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','locale','claim.name'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','true','id.token.claim'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','true','introspection.token.claim'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','String','jsonType.label'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','locale','user.attribute'),('c6795143-07b6-4c17-8466-0ba7d7cd056a','true','userinfo.token.claim'),('c7816da7-f829-4225-9218-cbc51f2f7065','true','access.token.claim'),('c7816da7-f829-4225-9218-cbc51f2f7065','gender','claim.name'),('c7816da7-f829-4225-9218-cbc51f2f7065','true','id.token.claim'),('c7816da7-f829-4225-9218-cbc51f2f7065','true','introspection.token.claim'),('c7816da7-f829-4225-9218-cbc51f2f7065','String','jsonType.label'),('c7816da7-f829-4225-9218-cbc51f2f7065','gender','user.attribute'),('c7816da7-f829-4225-9218-cbc51f2f7065','true','userinfo.token.claim'),('c9943160-96e4-47e5-a4c3-b2b94d1b8dee','Role','attribute.name'),('c9943160-96e4-47e5-a4c3-b2b94d1b8dee','Basic','attribute.nameformat'),('c9943160-96e4-47e5-a4c3-b2b94d1b8dee','false','single'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','true','access.token.claim'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','family_name','claim.name'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','true','id.token.claim'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','true','introspection.token.claim'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','String','jsonType.label'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','lastName','user.attribute'),('cb3eb49d-4b83-4d5a-bfd0-7041e2f8e003','true','userinfo.token.claim'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','true','access.token.claim'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','upn','claim.name'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','true','id.token.claim'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','true','introspection.token.claim'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','String','jsonType.label'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','username','user.attribute'),('cdfc4e92-c2f0-48c4-9264-dc7146d2a2b5','true','userinfo.token.claim'),('ce1d6928-dcae-46c4-855f-fbcbdc4629bf','Role','attribute.name'),('ce1d6928-dcae-46c4-855f-fbcbdc4629bf','Basic','attribute.nameformat'),('ce1d6928-dcae-46c4-855f-fbcbdc4629bf','false','single'),('ce6dba7b-775c-45ec-8d83-05d33c55de53','true','access.token.claim'),('ce6dba7b-775c-45ec-8d83-05d33c55de53','true','introspection.token.claim'),('cf95dfa6-904e-4126-8980-5022754e044d','true','access.token.claim'),('cf95dfa6-904e-4126-8980-5022754e044d','email_verified','claim.name'),('cf95dfa6-904e-4126-8980-5022754e044d','true','id.token.claim'),('cf95dfa6-904e-4126-8980-5022754e044d','true','introspection.token.claim'),('cf95dfa6-904e-4126-8980-5022754e044d','boolean','jsonType.label'),('cf95dfa6-904e-4126-8980-5022754e044d','emailVerified','user.attribute'),('cf95dfa6-904e-4126-8980-5022754e044d','true','userinfo.token.claim'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','true','access.token.claim'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','locale','claim.name'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','true','id.token.claim'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','true','introspection.token.claim'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','String','jsonType.label'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','locale','user.attribute'),('d020e89f-2a64-41f9-ae53-c90cc69d4133','true','userinfo.token.claim'),('d0570e4d-1dc6-4df8-806a-775a9378b59d','Role','attribute.name'),('d0570e4d-1dc6-4df8-806a-775a9378b59d','Basic','attribute.nameformat'),('d0570e4d-1dc6-4df8-806a-775a9378b59d','false','single'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','true','access.token.claim'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','groups','claim.name'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','true','id.token.claim'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','true','introspection.token.claim'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','String','jsonType.label'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','true','multivalued'),('d57e879c-3ffc-4ca4-9f84-cd34c3880761','foo','user.attribute'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','true','access.token.claim'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','family_name','claim.name'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','true','id.token.claim'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','true','introspection.token.claim'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','String','jsonType.label'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','lastName','user.attribute'),('d92ce843-e6b0-4752-9f50-fedd0404c41d','true','userinfo.token.claim'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','true','access.token.claim'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','gender','claim.name'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','true','id.token.claim'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','true','introspection.token.claim'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','String','jsonType.label'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','gender','user.attribute'),('dbfd58a6-e60f-4cc7-93af-dd33a0431440','true','userinfo.token.claim'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','true','access.token.claim'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','nickname','claim.name'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','true','id.token.claim'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','true','introspection.token.claim'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','String','jsonType.label'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','nickname','user.attribute'),('dd2a9af7-23a1-42ec-9e41-9aaf4379e6fa','true','userinfo.token.claim'),('ddf56cb0-990d-4d13-a020-ac3d86386370','true','access.token.claim'),('ddf56cb0-990d-4d13-a020-ac3d86386370','true','id.token.claim'),('ddf56cb0-990d-4d13-a020-ac3d86386370','true','introspection.token.claim'),('ddf56cb0-990d-4d13-a020-ac3d86386370','country','user.attribute.country'),('ddf56cb0-990d-4d13-a020-ac3d86386370','formatted','user.attribute.formatted'),('ddf56cb0-990d-4d13-a020-ac3d86386370','locality','user.attribute.locality'),('ddf56cb0-990d-4d13-a020-ac3d86386370','postal_code','user.attribute.postal_code'),('ddf56cb0-990d-4d13-a020-ac3d86386370','region','user.attribute.region'),('ddf56cb0-990d-4d13-a020-ac3d86386370','street','user.attribute.street'),('ddf56cb0-990d-4d13-a020-ac3d86386370','true','userinfo.token.claim'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','true','access.token.claim'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','profile','claim.name'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','true','id.token.claim'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','true','introspection.token.claim'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','String','jsonType.label'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','profile','user.attribute'),('e12a17b1-1629-4c2e-89f9-e4927dc63cdf','true','userinfo.token.claim'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','true','access.token.claim'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','resource_access.${client_id}.roles','claim.name'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','true','introspection.token.claim'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','String','jsonType.label'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','true','multivalued'),('e2ce5acb-f3f5-4b25-bffa-b652185bbe8c','foo','user.attribute'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','true','access.token.claim'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','profile','claim.name'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','true','id.token.claim'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','true','introspection.token.claim'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','String','jsonType.label'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','profile','user.attribute'),('e439ff7d-f975-48b7-bd05-3bb3648021ed','true','userinfo.token.claim'),('e43b5128-cbfc-474c-921b-5f82a0f1b57a','true','access.token.claim'),('e43b5128-cbfc-474c-921b-5f82a0f1b57a','true','id.token.claim'),('e43b5128-cbfc-474c-921b-5f82a0f1b57a','true','introspection.token.claim'),('e43b5128-cbfc-474c-921b-5f82a0f1b57a','true','userinfo.token.claim'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','true','access.token.claim'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','upn','claim.name'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','true','id.token.claim'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','true','introspection.token.claim'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','String','jsonType.label'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','username','user.attribute'),('e6221ee9-94a2-4bfb-94bc-4c416c81ed2f','true','userinfo.token.claim'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','true','access.token.claim'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','clientHost','claim.name'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','true','id.token.claim'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','String','jsonType.label'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','clientHost','user.session.note'),('e6f9746e-a7f1-4a5d-8558-9b35dd9404b6','true','userinfo.token.claim'),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','true','access.token.claim'),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','clientHost','claim.name'),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','true','id.token.claim'),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','String','jsonType.label'),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','clientHost','user.session.note'),('e8399ba6-9c17-4e7d-9487-3a9a2a444305','true','userinfo.token.claim'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','true','access.token.claim'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','middle_name','claim.name'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','true','id.token.claim'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','true','introspection.token.claim'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','String','jsonType.label'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','middleName','user.attribute'),('e8e4b8b5-8a74-487f-98d8-298f299d09e2','true','userinfo.token.claim'),('eaca9e18-9385-43ad-b70f-9b33ed174509','true','access.token.claim'),('eaca9e18-9385-43ad-b70f-9b33ed174509','locale','claim.name'),('eaca9e18-9385-43ad-b70f-9b33ed174509','true','id.token.claim'),('eaca9e18-9385-43ad-b70f-9b33ed174509','true','introspection.token.claim'),('eaca9e18-9385-43ad-b70f-9b33ed174509','String','jsonType.label'),('eaca9e18-9385-43ad-b70f-9b33ed174509','locale','user.attribute'),('eaca9e18-9385-43ad-b70f-9b33ed174509','true','userinfo.token.claim'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','true','access.token.claim'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','upn','claim.name'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','true','id.token.claim'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','true','introspection.token.claim'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','String','jsonType.label'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','username','user.attribute'),('eb85baa3-ad7b-42af-9b2b-4e56e6173a8e','true','userinfo.token.claim'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','true','access.token.claim'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','groups','claim.name'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','true','id.token.claim'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','true','introspection.token.claim'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','String','jsonType.label'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','true','multivalued'),('ef37a592-ca4b-495a-a5b6-1a8bb6322d8a','foo','user.attribute'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','true','access.token.claim'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','email_verified','claim.name'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','true','id.token.claim'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','true','introspection.token.claim'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','boolean','jsonType.label'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','emailVerified','user.attribute'),('f252968c-bd71-4b78-b5ac-4ff00aa0f2bd','true','userinfo.token.claim'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','true','access.token.claim'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','preferred_username','claim.name'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','true','id.token.claim'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','true','introspection.token.claim'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','String','jsonType.label'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','username','user.attribute'),('f2ccec1b-5564-4ff0-993d-4bd3315174dd','true','userinfo.token.claim'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','true','access.token.claim'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','updated_at','claim.name'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','true','id.token.claim'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','true','introspection.token.claim'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','long','jsonType.label'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','updatedAt','user.attribute'),('f377eda6-573b-43e9-bae4-45dc3817bc1c','true','userinfo.token.claim'),('f709ae4e-afdf-404b-956e-039d201c1b9b','true','access.token.claim'),('f709ae4e-afdf-404b-956e-039d201c1b9b','true','introspection.token.claim'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','true','access.token.claim'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','given_name','claim.name'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','true','id.token.claim'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','true','introspection.token.claim'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','String','jsonType.label'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','firstName','user.attribute'),('f72c09d7-614e-4c89-bf92-f8cc542574a0','true','userinfo.token.claim'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','true','access.token.claim'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','phone_number_verified','claim.name'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','true','id.token.claim'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','true','introspection.token.claim'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','boolean','jsonType.label'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','phoneNumberVerified','user.attribute'),('f86f25f2-ffa7-4eb1-8f79-ad5a3fcbb6e2','true','userinfo.token.claim'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','true','access.token.claim'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','resource_access.${client_id}.roles','claim.name'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','true','introspection.token.claim'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','String','jsonType.label'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','true','multivalued'),('f95f36dd-8003-4c85-ad9b-442604aa6e7c','foo','user.attribute'),('fa7ea0b2-efac-48f7-be82-12b6d3651843','true','access.token.claim'),('fa7ea0b2-efac-48f7-be82-12b6d3651843','true','introspection.token.claim'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','true','access.token.claim'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','email_verified','claim.name'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','true','id.token.claim'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','true','introspection.token.claim'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','boolean','jsonType.label'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','emailVerified','user.attribute'),('fd65d9b0-126f-460e-a7ba-01dc632980a9','true','userinfo.token.claim');
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
INSERT INTO `REALM` VALUES ('040bafd0-9c40-449b-9e25-b760eb822e74',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'0448f589-1100-4f24-a765-54b618d40e09',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','5c79ef61-da4c-474d-b30b-4c691a139ce4','c7df88a0-bce2-4d36-bcd9-a45578b69480','727d6462-4277-490d-a5ea-776e7d0ec6f6','cecdcd76-87c7-4805-aa28-b5c08db18e1f','92dc0537-44ee-404e-93e4-3838324d753e',31536000,0,900,1,0,'3f9e66d5-549b-4599-b7ba-cedc9813d536',0,0,0,0,'12982282-c2aa-4943-a328-6a8d1b5937b4'),('org1',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org1',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'4b701d3f-a390-4f55-9bad-efda1c3cb8de',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','439072fe-947e-41ab-ad6c-a798d5341b18','65680493-0b8c-4afa-adfc-441ae8f03c08','f7dbff1e-e72a-4a16-9999-d9f807d5168b','df706edb-3f56-44be-b616-23e8a43d5988','6668be01-a568-4342-a34c-55d9986c994b',31536000,0,900,1,0,'d2115210-1182-4543-ac9e-55cae5d31da7',0,0,0,0,'ae87cb8d-a1ef-4e47-a357-72829af18ade'),('org2',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org2',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'91f4e6f3-6cd6-4a3f-a0e8-58e9d037dcd6',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','32c7e458-ad6c-46c4-80f8-348871badd96','3426a575-dec4-4ffb-a72d-5a8d56a0502e','71cd49da-1bb3-4f4a-b1a2-8f9be56b9ad7','670edf44-44f8-40b9-859f-0135fefe38a8','05847ae3-15f5-4c40-b93c-c56d019862a9',31536000,0,900,1,0,'6aefec4f-9804-4989-8678-4c31be754d01',0,0,0,0,'a9c1ac47-6186-4da9-87e2-6aed12dbeb80'),('org3',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org3',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'a20a6dfa-8597-40e3-bca4-7c749b593584',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','40b87eab-94db-4b36-8761-8ee5fbf51449','0c78489c-4bf6-4788-b0d6-5b208df14710','1db37751-1abe-43f4-a83a-4b84f99a0160','daed7519-4a03-44b7-8ec7-c4b1d983fd45','fa5a48b9-9ef6-4a48-8753-cbf40cfb777e',31536000,0,900,1,0,'35ff9a9d-e6f2-4282-ab4f-3b63d0daf57a',0,0,0,0,'238d8066-af82-4e5c-bd48-cc57a45461b0'),('org4',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org4',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'4d6d4c79-29ab-4e02-b3a7-6273b4da3f8a',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','41b450bb-42ba-4614-82db-8daccbbd6b58','55b20f57-d680-40e4-a928-b936fb76aeb5','abbceebe-c332-40ac-a68f-683e62f27dda','af1579aa-411a-4852-9736-e4888160c21b','5b5c78ce-60bf-44ee-bee2-027abaacded1',31536000,0,900,1,0,'5de19754-67b3-4210-8a20-1712d6c08d10',0,0,0,0,'e90b8367-0f10-4425-8b79-9ee5a665d2b5'),('org5',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org5',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'a3cea3c7-a43e-42e6-8f37-d4cb75503027',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','fce0e3d5-4214-4e0e-9892-b22868b40452','bbeb9a34-47ae-499f-a01f-089bc9515dc2','5e83190e-b2bb-4251-aed8-1508ad4fb48b','0eec0258-f8ce-4ccc-8251-4f457f2321e3','b0661eec-c91e-408b-b582-ba7374928b4b',31536000,0,900,1,0,'d143505b-e316-4224-a65d-827c7e853da7',0,0,0,0,'5b9df0ec-a548-4c93-aa8e-5dde0009c203');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','040bafd0-9c40-449b-9e25-b760eb822e74','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','040bafd0-9c40-449b-9e25-b760eb822e74','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','040bafd0-9c40-449b-9e25-b760eb822e74','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','040bafd0-9c40-449b-9e25-b760eb822e74','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','040bafd0-9c40-449b-9e25-b760eb822e74','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','040bafd0-9c40-449b-9e25-b760eb822e74','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','040bafd0-9c40-449b-9e25-b760eb822e74','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','040bafd0-9c40-449b-9e25-b760eb822e74','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','040bafd0-9c40-449b-9e25-b760eb822e74','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('firstBrokerLoginFlowId','040bafd0-9c40-449b-9e25-b760eb822e74','eac2e197-c133-4288-91fe-95410b931678'),('firstBrokerLoginFlowId','org1','734d6d23-7fdb-4472-89c5-0aa0ac7e171b'),('firstBrokerLoginFlowId','org2','7dcd070f-46e8-458d-a93f-ba378508b1aa'),('firstBrokerLoginFlowId','org3','73a6ae33-5bb9-4d6f-9208-6ac1fb0f26f2'),('firstBrokerLoginFlowId','org4','aa9d627f-7a5a-4f1d-a4c7-6955230ca7c1'),('firstBrokerLoginFlowId','org5','0278768d-7185-4ccc-878f-df14b2da863c'),('maxDeltaTimeSeconds','040bafd0-9c40-449b-9e25-b760eb822e74','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','040bafd0-9c40-449b-9e25-b760eb822e74','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('maxTemporaryLockouts','040bafd0-9c40-449b-9e25-b760eb822e74','0'),('maxTemporaryLockouts','org1','0'),('maxTemporaryLockouts','org2','0'),('maxTemporaryLockouts','org3','0'),('maxTemporaryLockouts','org4','0'),('maxTemporaryLockouts','org5','0'),('minimumQuickLoginWaitSeconds','040bafd0-9c40-449b-9e25-b760eb822e74','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','040bafd0-9c40-449b-9e25-b760eb822e74','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','040bafd0-9c40-449b-9e25-b760eb822e74','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','040bafd0-9c40-449b-9e25-b760eb822e74','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','040bafd0-9c40-449b-9e25-b760eb822e74','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','040bafd0-9c40-449b-9e25-b760eb822e74','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','040bafd0-9c40-449b-9e25-b760eb822e74','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','040bafd0-9c40-449b-9e25-b760eb822e74','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','040bafd0-9c40-449b-9e25-b760eb822e74','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','040bafd0-9c40-449b-9e25-b760eb822e74','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','040bafd0-9c40-449b-9e25-b760eb822e74',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.referrerPolicy','040bafd0-9c40-449b-9e25-b760eb822e74','no-referrer'),('_browser_header.referrerPolicy','org1','no-referrer'),('_browser_header.referrerPolicy','org2','no-referrer'),('_browser_header.referrerPolicy','org3','no-referrer'),('_browser_header.referrerPolicy','org4','no-referrer'),('_browser_header.referrerPolicy','org5','no-referrer'),('_browser_header.strictTransportSecurity','040bafd0-9c40-449b-9e25-b760eb822e74','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','040bafd0-9c40-449b-9e25-b760eb822e74','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','040bafd0-9c40-449b-9e25-b760eb822e74','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','040bafd0-9c40-449b-9e25-b760eb822e74','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','040bafd0-9c40-449b-9e25-b760eb822e74','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('040bafd0-9c40-449b-9e25-b760eb822e74','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'040bafd0-9c40-449b-9e25-b760eb822e74'),('password','password',1,1,'org1'),('password','password',1,1,'org2'),('password','password',1,1,'org3'),('password','password',1,1,'org4'),('password','password',1,1,'org5');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('040bafd0-9c40-449b-9e25-b760eb822e74','en'),('040bafd0-9c40-449b-9e25-b760eb822e74','ja'),('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
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
INSERT INTO `REDIRECT_URIS` VALUES ('06ec7032-69da-4e85-bb0e-eec784fb8ebe','/realms/org5/account/*'),('20ee9def-fb35-46ec-a829-59d3a0db7567','/realms/master/account/*'),('2728a023-e3a7-4f73-99bd-c25ef9c8b335','/admin/org3/console/*'),('51fced76-a0da-43cc-a530-7f4f925da142','/*'),('55614122-8f23-4650-bcc5-725a2ac60253','/admin/master/console/*'),('5ee3c4a9-92e9-4021-81f0-906d65437dce','/realms/org1/account/*'),('62bdadf4-836a-481a-a326-5b7176a508ea','/realms/org4/account/*'),('65c3c063-c83c-44fe-b21f-e333de132425','/*'),('736f2faa-dc2a-49bd-9e25-c09b8d99536b','/*'),('7f5afeb0-6b8e-4e06-b41c-02d3a850db5c','/realms/org5/account/*'),('821a7df6-a652-4bcb-96df-5d20ac5a8862','/*'),('84ba430e-0d33-4e72-856f-478f691833b2','/realms/org4/account/*'),('89a38cf5-c91f-4da5-b988-7777003ee985','/realms/org3/account/*'),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','/admin/org5/console/*'),('ac10798a-f624-4556-9c93-5a4f8ce430c5','/admin/org2/console/*'),('bb0bae74-b6e1-4f68-b1ae-c80227d8b51f','/realms/org3/account/*'),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','/realms/org2/account/*'),('cb18e293-11e3-46d1-b34c-d5484595683c','/realms/master/account/*'),('cc0ab70c-470b-418c-8081-41c808c74018','/realms/org1/account/*'),('d950640f-e6b4-48df-8c59-fe9a1e06e863','/admin/org1/console/*'),('debb3226-8cbc-477d-8b51-65a3c9506840','/*'),('df88f233-d420-4e4c-8fbe-9781387a7119','/admin/org4/console/*'),('fb2a5727-0a86-4f08-b173-e9d49abe92bb','/*'),('fcfd3b71-f01f-4a71-a9cb-8e1a0ee01031','/realms/org2/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('0039de96-e083-406c-99a8-9efffea6505c','update_user_locale','Update User Locale','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'update_user_locale',1000),('0311a070-e26f-43ac-b049-b9ea9f089c03','webauthn-register','Webauthn Register','org3',1,0,'webauthn-register',70),('0ad184cd-05b7-4cd9-9701-1db2501f446d','webauthn-register','Webauthn Register','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'webauthn-register',70),('0ad6547f-824f-470b-9610-2333ed5dcf4d','CONFIGURE_TOTP','Configure OTP','org2',1,0,'CONFIGURE_TOTP',10),('0b2036f8-4682-46b6-be4f-cfaba07d3d51','UPDATE_PASSWORD','Update Password','org5',1,0,'UPDATE_PASSWORD',30),('14a6c048-a02c-42d4-9d63-af62efba33d4','CONFIGURE_TOTP','Configure OTP','org3',1,0,'CONFIGURE_TOTP',10),('22c8296c-3ed2-42bd-9859-d39f902f2bd4','delete_credential','Delete Credential','org4',1,0,'delete_credential',100),('25c9821a-ced7-475c-a3f5-1a6131909e89','delete_account','Delete Account','040bafd0-9c40-449b-9e25-b760eb822e74',0,0,'delete_account',60),('26aa1b1f-5c44-47e9-9268-9c1e422da3cb','CONFIGURE_TOTP','Configure OTP','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'CONFIGURE_TOTP',10),('2bfe2acf-b85c-4c22-80b8-4e709c082b83','VERIFY_PROFILE','Verify Profile','org2',1,0,'VERIFY_PROFILE',90),('305a28d3-e8e8-43af-ba16-9c64934a2016','delete_credential','Delete Credential','org2',1,0,'delete_credential',100),('38160dfa-774a-43e8-86f1-5a8d42c8b638','webauthn-register-passwordless','Webauthn Register Passwordless','org3',1,0,'webauthn-register-passwordless',80),('395e23e1-e987-400a-8055-a2340e91f028','VERIFY_EMAIL','Verify Email','org5',1,0,'VERIFY_EMAIL',50),('4105c73f-f002-4bc1-b0cf-461753c9e7ce','UPDATE_PASSWORD','Update Password','org3',1,0,'UPDATE_PASSWORD',30),('447b05aa-eecd-4d29-b910-29a94776df5c','update_user_locale','Update User Locale','org5',1,0,'update_user_locale',1000),('4e520253-50ba-4546-9821-f059fba618f0','TERMS_AND_CONDITIONS','Terms and Conditions','org3',0,0,'TERMS_AND_CONDITIONS',20),('51253282-f306-4c38-a61c-a4e03efd36d1','VERIFY_PROFILE','Verify Profile','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'VERIFY_PROFILE',90),('52c89c89-75f3-473f-88ff-88c48ed94994','delete_account','Delete Account','org1',0,0,'delete_account',60),('56ca7216-b3db-4d04-8017-a4740cdd2104','webauthn-register-passwordless','Webauthn Register Passwordless','org5',1,0,'webauthn-register-passwordless',80),('5e7b7ae8-d7ce-4519-be17-0c1ce9e6e52b','TERMS_AND_CONDITIONS','Terms and Conditions','org4',0,0,'TERMS_AND_CONDITIONS',20),('62723ad8-0823-424b-b64a-c2c528edce3b','delete_credential','Delete Credential','org5',1,0,'delete_credential',100),('646f79bc-3e58-473e-8cdf-c4174484aa56','delete_credential','Delete Credential','org1',1,0,'delete_credential',100),('676c9c85-979b-4751-9f66-834f016e3cda','delete_account','Delete Account','org5',0,0,'delete_account',60),('69014f99-ceb8-45d5-a656-04d5d251cbfd','VERIFY_PROFILE','Verify Profile','org4',1,0,'VERIFY_PROFILE',90),('6ee1bd23-0efe-4ebc-8f1e-25c98f57d9d2','UPDATE_PASSWORD','Update Password','org4',1,0,'UPDATE_PASSWORD',30),('6f746669-0689-4f56-a697-2a1e352f83e1','update_user_locale','Update User Locale','org2',1,0,'update_user_locale',1000),('70a4eb0e-0794-4387-b359-89cbfb202785','webauthn-register','Webauthn Register','org4',1,0,'webauthn-register',70),('70aa689c-eb08-462c-a974-4e863da14b27','VERIFY_EMAIL','Verify Email','org3',1,0,'VERIFY_EMAIL',50),('7179ab7f-d6ee-47ba-b03c-bdecaa3ba3d9','UPDATE_PROFILE','Update Profile','org2',1,0,'UPDATE_PROFILE',40),('736b7cce-9505-481b-8d40-f1677c4e15a2','delete_account','Delete Account','org4',0,0,'delete_account',60),('7650139d-bf79-490c-bc50-77fbb4e2f5ef','VERIFY_EMAIL','Verify Email','org4',1,0,'VERIFY_EMAIL',50),('77f0146a-93e7-450b-90a7-bca661e714c1','CONFIGURE_TOTP','Configure OTP','org1',1,0,'CONFIGURE_TOTP',10),('7adfce95-bbec-4615-84ea-7aa7cc7e1e29','webauthn-register-passwordless','Webauthn Register Passwordless','org1',1,0,'webauthn-register-passwordless',80),('7c05e99f-4395-48f9-8eae-28968362981c','CONFIGURE_TOTP','Configure OTP','org5',1,0,'CONFIGURE_TOTP',10),('7da62497-50e1-476f-8cbc-bfa77cf3bdf5','TERMS_AND_CONDITIONS','Terms and Conditions','org2',0,0,'TERMS_AND_CONDITIONS',20),('80a1f0b2-dc85-4290-8bf3-78d0fbf8864d','VERIFY_EMAIL','Verify Email','org1',1,0,'VERIFY_EMAIL',50),('840e35c3-d5e7-42da-87f4-41ca1a4b5a4e','delete_credential','Delete Credential','org3',1,0,'delete_credential',100),('86326171-f530-4e92-b6f5-a561d01caa85','VERIFY_EMAIL','Verify Email','org2',1,0,'VERIFY_EMAIL',50),('8ce71954-0ec0-4d3a-8408-7c2e5255610f','VERIFY_EMAIL','Verify Email','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'VERIFY_EMAIL',50),('9142bea4-078d-4a3b-b5d0-758fbd10f9ed','UPDATE_PASSWORD','Update Password','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'UPDATE_PASSWORD',30),('96ffbb4e-8644-43e9-8c87-a5c0313dbd6e','TERMS_AND_CONDITIONS','Terms and Conditions','040bafd0-9c40-449b-9e25-b760eb822e74',0,0,'TERMS_AND_CONDITIONS',20),('97ca75c1-f49c-4d9d-97b1-ea545deec687','update_user_locale','Update User Locale','org1',1,0,'update_user_locale',1000),('98947970-bbf8-430f-8f8f-ecfff4c9d4fa','UPDATE_PROFILE','Update Profile','org1',1,0,'UPDATE_PROFILE',40),('9f8e969d-5ff6-480a-b7f9-2501794644f7','update_user_locale','Update User Locale','org4',1,0,'update_user_locale',1000),('a125de6a-f4a8-4626-a619-10adb87ee3f0','delete_credential','Delete Credential','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'delete_credential',100),('b2cfe59b-fd5d-40eb-85c2-63805eba370a','UPDATE_PROFILE','Update Profile','org4',1,0,'UPDATE_PROFILE',40),('b72be233-a75f-433b-a0e9-2f704e988e66','VERIFY_PROFILE','Verify Profile','org3',1,0,'VERIFY_PROFILE',90),('b9fa8cf2-f753-4d80-b2e0-676fc33ea4b3','UPDATE_PROFILE','Update Profile','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'UPDATE_PROFILE',40),('bb1cf4e0-d758-4011-958d-90d28df95b93','webauthn-register-passwordless','Webauthn Register Passwordless','040bafd0-9c40-449b-9e25-b760eb822e74',1,0,'webauthn-register-passwordless',80),('bebe75ba-21c7-41dd-849f-9dbb343aba3d','CONFIGURE_TOTP','Configure OTP','org4',1,0,'CONFIGURE_TOTP',10),('c6b78eeb-c221-4e21-9fa8-db1f7376446a','webauthn-register','Webauthn Register','org5',1,0,'webauthn-register',70),('cacc1f88-91ee-4add-adf7-d6d450a21216','webauthn-register','Webauthn Register','org1',1,0,'webauthn-register',70),('d1e99086-f665-445b-a0c6-67b1df53ad79','UPDATE_PROFILE','Update Profile','org3',1,0,'UPDATE_PROFILE',40),('d29913be-950d-4616-b5c7-ce2309a38ff1','TERMS_AND_CONDITIONS','Terms and Conditions','org5',0,0,'TERMS_AND_CONDITIONS',20),('d5c60b3b-42c6-490a-8815-a16a71d7fc12','webauthn-register-passwordless','Webauthn Register Passwordless','org2',1,0,'webauthn-register-passwordless',80),('da518e16-a131-4c57-a363-051accb057bd','VERIFY_PROFILE','Verify Profile','org1',1,0,'VERIFY_PROFILE',90),('ddbff9e9-df3b-409d-95b5-aac3ca42d91e','VERIFY_PROFILE','Verify Profile','org5',1,0,'VERIFY_PROFILE',90),('e18e552d-6f17-44f9-8bff-ebeda27c89a0','delete_account','Delete Account','org2',0,0,'delete_account',60),('e23c99af-2165-44ec-8de3-6d64801e6b54','UPDATE_PASSWORD','Update Password','org2',1,0,'UPDATE_PASSWORD',30),('e431997f-b820-464d-8979-26f92663c127','update_user_locale','Update User Locale','org3',1,0,'update_user_locale',1000),('e5cc9cd5-c0d6-43e0-abd8-494de305a49c','webauthn-register','Webauthn Register','org2',1,0,'webauthn-register',70),('e7bf7d39-2f30-45c3-9ec8-9a6ce465ce69','delete_account','Delete Account','org3',0,0,'delete_account',60),('f0bdb995-cb4c-41ea-bf0d-de7b81cfc495','UPDATE_PASSWORD','Update Password','org1',1,0,'UPDATE_PASSWORD',30),('f2890520-bbcc-4ab5-b9f2-408c18aae503','UPDATE_PROFILE','Update Profile','org5',1,0,'UPDATE_PROFILE',40),('f4d40e04-7f03-4814-8de6-960d61217610','TERMS_AND_CONDITIONS','Terms and Conditions','org1',0,0,'TERMS_AND_CONDITIONS',20),('f50fa2de-9946-4bbb-80fd-579ecd76e2e3','webauthn-register-passwordless','Webauthn Register Passwordless','org4',1,0,'webauthn-register-passwordless',80);
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('05b09217-a286-4f2a-8af2-a8b78a18353d','e4ee8412-5304-442d-a442-9264601da414','kind','workspace'),('094d82aa-abbb-4f77-8887-da9d6fc7a158','7e703b8f-2b88-4a81-ae89-b2009ec22cb3','kind','workspace'),('0dca26fc-f0de-4d02-90d7-aa8440123d57','ee513551-3e88-474e-94f6-9ec52b4c6877','kind','workspace'),('0e5d9fc0-53dd-4cb7-9095-3c875d3f813b','4dd66d4c-d39f-4198-8261-577b086b7e99','kind','workspace'),('12a5132c-5ea1-4d76-9330-cd15d8705eab','b0490bcc-20dc-47ad-9a9f-235ba557d093','kind','organization'),('14618359-aead-4e2f-8d0e-6c600c5d8451','d7682be7-cb25-4cbc-b725-8d5e8c646d52','kind','workspace'),('19856b7f-090e-4332-851f-61c79a8d14d7','e8fb2aff-cab1-4a32-9810-6e6441efe173','kind','organization'),('1d2e128f-c552-4993-934d-508406744370','a2540645-ddc6-4dfb-afed-2a57a63b8322','kind','workspace'),('1d6fa195-aafc-477c-b0e8-91d731a5f3b3','bcf7e24a-b5a8-4423-8dfb-5d932fb5b191','kind','organization'),('1e45ccf0-925a-438f-8ca0-c2fb5f9f0b7c','fd4ebc75-79f3-4b33-8441-aec1140f5201','kind','workspace'),('20793c63-ae4a-4a83-ae42-75ce1bf70a20','e150359e-10e2-4e34-9179-ef95606a6293','kind','organization'),('26a243fb-bd47-4bd8-9ec8-74afd4158cec','46d54951-4dd0-4a8d-ba31-e0e70a90f20c','kind','workspace'),('2b567ad7-29ff-4b30-aeba-6b1ee10e7c28','b13698de-6de5-4ddc-8f8b-e70ad14e2338','kind','workspace'),('36810ae1-5f3b-4ed5-b3de-02d84b8a4bd9','e3668d90-1629-4f23-a5e3-6e1a78d72219','kind','workspace'),('37b5f953-abc2-4d9d-8921-b7dc6a382831','c44d2b90-e531-4ed1-98d8-4096445ddc17','kind','workspace'),('3e259e8a-c73b-447f-825f-012131a3762a','a5d9f202-a744-4231-ace0-8cd577957458','kind','organization'),('3fc9d5b9-13a8-47bf-b9c1-91a0cead2989','474f22a4-6d62-46f7-bb0a-ebccf50df396','kind','workspace'),('41fae25a-7d00-47ec-9d74-2861d32defc0','89e68d0e-cdfc-4378-8634-eb627ec0557e','kind','workspace'),('4dbdae57-c564-4d9f-80d1-d9be8b3d4e3e','42866334-8d03-43ab-93a3-a87cd38be012','kind','organization'),('51ab6837-ef98-4dc7-87ea-84bf50de92d7','f834a4a1-ae42-4988-8b60-043bb321da64','kind','organization'),('558d3851-4b0d-4369-9968-0853343179de','b6f763a7-10a1-4f0f-b824-43414f71e872','kind','workspace'),('59933b1c-6f6a-4032-a9e5-c0667b176dfa','0e2570e1-d98d-404f-8845-fcd5101300f2','kind','workspace'),('599995f7-5c96-4879-a811-b27118c1c457','1886a282-12e4-41b7-a39a-b1b1c9a503ee','kind','workspace'),('64ff212a-04fa-4826-8dbd-c2d0414429de','22e5a143-dc1a-4c68-8b31-582ebb807ddf','kind','workspace'),('6ee18f64-8bc6-4650-8d07-2a6cd3adf65e','1aa41498-7779-4a6e-9ad8-cb35be030edd','kind','workspace'),('71b8b389-c249-4719-8356-7f675027bde1','29d9fd78-ea15-488d-9199-6d966d47b4c7','kind','workspace'),('76b7bf37-5d8c-431e-93a8-398b255220f9','eda58fee-2de1-41cb-a851-5b2fd7dd4b74','kind','organization'),('7953b56a-45e0-451b-93fa-5f255fc3c33e','b99fb363-4c00-437b-8c0e-6d846e6c75a5','kind','workspace'),('7e1f8c9a-2f24-4ed2-9326-a45391b4e01b','46153f03-0e50-49fe-bed3-cb9652222e99','kind','workspace'),('84931bde-ac28-40d1-b984-2d78d6e16225','6a9800ca-0972-49fe-a95d-3f59bc1b960a','kind','workspace'),('851a9162-b4a7-40c2-ac85-c2455d78703a','0ae19124-d919-427f-99e8-86521b2440d5','kind','workspace'),('8579c030-7571-4529-af2c-73e8361f5ce8','fe049ce0-bf66-4b62-b512-195decd870e5','kind','workspace'),('876b5b92-1d73-462c-8588-96bdb0f5d368','fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22','kind','workspace'),('93adb951-b473-413d-a648-5f8fed1878c9','96791704-5d47-40dd-9597-b6f3d445a6fc','kind','workspace'),('9b969a5e-0c44-4b5e-ac24-3e6e552d43b5','8a95423a-09c6-4bcd-b6df-99082a195060','kind','organization'),('9bc665b0-2289-47aa-a688-f46c68edb811','06f483f4-8668-4d42-a69e-f99da124545e','kind','organization'),('9c911a29-eab9-4fcc-bed7-d99a4e24c937','77db5a6e-264c-4e3e-8369-36046e91f39c','kind','workspace'),('9e3aa99b-6969-490f-9ab2-be76311bceda','79e06787-206a-4783-85d4-0afa3178307a','kind','organization'),('a8cb81b5-ccde-4968-9eba-6b835d1f586d','5824f9c7-6e38-4187-b5f4-12ed3e6ecd9b','kind','workspace'),('ac979b79-db70-4f6f-814f-40bfc2a45567','c4641965-9dbe-4d2e-94ef-8204e1165c84','kind','workspace'),('af88ced0-cdf8-4b42-9d5a-e6d384c3ddc3','38b7b983-cd3e-4c1d-81c2-fa1b46dd6859','kind','organization'),('b206e484-3dcf-4565-9fba-76e62bd1e7ea','307c5336-94d5-4a5d-8078-2c1f0667e035','kind','workspace'),('b3b3e7fe-8f9d-43f5-be42-b418ecd83ada','a5813dcc-8b3d-4c48-ab09-bb2f2b980d4e','kind','workspace'),('b43d361e-04b5-4b03-8ed7-352fdff9f115','a5e749bc-3db2-40e8-97ab-22297ee80f5a','kind','organization'),('b4e52bc9-ec8c-4773-afea-15f2249441b8','8c7fb901-38be-4324-9823-6ea635863c6c','kind','workspace'),('b57ac4c5-7df1-49d6-95f6-2d98b7343c10','50aa613c-f19f-47fe-a83b-166e4afb07b2','kind','workspace'),('b8536ced-34ea-47e1-8acc-34d2402d2fdf','4c208c60-f037-463f-94cd-624a3b08c7ac','kind','workspace'),('b85a6062-6a15-4ec5-9481-5a687af93ccb','e2d75edb-d6bf-411d-a6fa-6741747f8f5d','kind','workspace'),('be1e850a-6801-4f69-914e-13aefb48e429','769036a0-7215-41c3-a0c5-a7d103fdd68c','kind','workspace'),('c3cfc255-d058-45e6-a741-04f366398995','37350cb7-e677-4c2f-afe8-211d71b7b5e1','kind','workspace'),('c45ced02-f5f2-443c-8b8d-1b6fda09fa1c','0a524663-00b7-440f-b22f-76436eb4ebea','kind','organization'),('c7a2b792-3a38-49ed-8823-e1e12c2ea125','3b89f849-38c5-43d8-9d6a-83b21a8ffc83','kind','workspace'),('d1c970e2-a0e3-4bd7-bd4f-16d25d739e9f','3e322438-2e1e-4a49-8710-f37e58978ce9','kind','workspace'),('de5f5eff-2c31-47bf-b171-e742d0850951','c5055b16-02b8-416d-960b-eae7c6cec9ac','kind','organization'),('e6f36025-e7bf-438b-bba9-60046af1917b','d98d45fb-5fc0-4235-ac99-7b6f345fa3a5','kind','workspace'),('e83cb13c-f582-496f-b42c-0804f7346ced','569a0acd-d651-4990-ab26-2a78bb544875','kind','workspace'),('f3033639-f305-4977-b6e6-2a5b72e6849b','313f882b-0d0f-4134-8c9f-5a7f7e7e86f6','kind','workspace'),('f62659b8-0eaa-4280-b520-385863e6dc3a','aad3a3b8-5902-4d19-8d0d-7995b6a5555b','kind','workspace'),('fa80476b-ebbe-4228-aae5-c141d6543494','0a411163-ad86-4511-a3f9-5cc4453d6901','kind','workspace'),('fde32f7f-5469-43e4-b33a-db68793f4d05','2761ff7b-32b8-4f75-8be7-d7aa073f45f7','kind','workspace');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('06ec7032-69da-4e85-bb0e-eec784fb8ebe','5a1faa4c-9cf1-4335-9d42-c0aa90a71753'),('06ec7032-69da-4e85-bb0e-eec784fb8ebe','7944f806-ce79-43af-8066-dd258060bfe8'),('20ee9def-fb35-46ec-a829-59d3a0db7567','7f9f40cc-aac6-4424-b3c1-0fb403c20282'),('20ee9def-fb35-46ec-a829-59d3a0db7567','df6f4f73-1ccb-44c5-966c-d37770d0b41a'),('62bdadf4-836a-481a-a326-5b7176a508ea','87b87aa2-2eef-47b6-b649-62a8144f943e'),('62bdadf4-836a-481a-a326-5b7176a508ea','a4b45483-c30c-46ea-a1a9-dafa6e686c00'),('89a38cf5-c91f-4da5-b988-7777003ee985','6c7896a0-902e-4388-a7e5-6bfecbbef855'),('89a38cf5-c91f-4da5-b988-7777003ee985','9159d8a2-a129-4308-b22a-333490f2222b'),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','0397a159-d4c3-4de6-ba17-f1fb1f17d194'),('bbf88cc4-9933-4c14-915f-ce12cd9a05a0','ec9870e7-1cab-47ad-a4dc-ef3fd72f5b93'),('cc0ab70c-470b-418c-8081-41c808c74018','9a6dc8be-9e8b-49bc-8dd6-31f8dbeb4cfd'),('cc0ab70c-470b-418c-8081-41c808c74018','b8b2574a-2a56-4fd6-abfa-f5f81a39c6a3');
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
INSERT INTO `USER_ENTITY` VALUES ('03fbdc9a-0040-4699-a474-2c85e9b3c7de','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org5','admin',1721115879228,NULL,0),('15855d57-97fa-4295-94e1-96684e22fa78',NULL,'6f71859e-13e3-4777-89c6-d619c76148cb',0,1,NULL,NULL,NULL,'org3','service-account-org3-workspaces',1721115829627,'17fd93d5-355f-4d86-a035-b11dbb83312a',0),('1714ebd4-dfe6-4e84-b278-9fe34d386fb7',NULL,'ebfa9868-aa11-4925-a6a3-91c9fa530c49',0,1,NULL,NULL,NULL,'org5','service-account-org5-workspaces',1721115877806,'3d20ecfe-2a25-4637-b015-532c1729c879',0),('1d9285e8-2479-418c-af18-c8b468e5690f',NULL,'c50e3b55-f718-4a8b-b2b4-1fd6cbbf8d57',0,1,NULL,NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','admin',1721115532311,NULL,0),('2d1f727c-2006-44d0-95d5-6529342ffc24',NULL,'167a700a-a558-41e8-8fbf-2434f4350b20',0,1,NULL,NULL,NULL,'org4','service-account-org4-workspaces',1721115854730,'91afb328-27d5-43a0-8239-2560633fac2c',0),('4ffbe68a-c7be-4307-b463-dbb4fd235e14',NULL,'eed9be82-82c5-4cf2-9506-a98ee095734b',0,1,NULL,NULL,NULL,'org2','service-account-org2-workspaces',1721115806694,'54d6d676-f0f4-421f-b554-202406a3d2ec',0),('68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org2','admin',1721115808500,NULL,0),('acff92c1-082d-47cb-a81c-aaab3f0e08be','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org1','admin',1721115782313,NULL,0),('afd00778-6563-4989-8edc-6e86fc0dd6dd','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org4','admin',1721115856326,NULL,0),('bc5b2e61-2b34-4760-b7de-ce826e8cadda',NULL,'55cf5549-0bbf-4fa3-b6b7-c75dfd7f070c',0,1,NULL,NULL,NULL,'org1','service-account-org1-workspaces',1721115779950,'9ce54798-5e96-4bf2-97dc-6aec4b0c438b',0),('c8a09719-5860-4e03-8e8b-948299b41095',NULL,'303a5ef8-b914-4e68-83fe-d7e03ece61f1',0,1,NULL,NULL,NULL,'040bafd0-9c40-449b-9e25-b760eb822e74','service-account-_platform',1721115538059,'b42f7870-e157-44d7-88b2-2c10c69e222b',0),('c99a0c80-1dbc-4fea-959c-223380942579','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org3','admin',1721115831516,NULL,0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('0ae19124-d919-427f-99e8-86521b2440d5','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('0e2570e1-d98d-404f-8845-fcd5101300f2','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('12982282-c2aa-4943-a328-6a8d1b5937b4','1d9285e8-2479-418c-af18-c8b468e5690f'),('12982282-c2aa-4943-a328-6a8d1b5937b4','c8a09719-5860-4e03-8e8b-948299b41095'),('197dd966-6358-44e5-a40c-9e4fbe636015','1d9285e8-2479-418c-af18-c8b468e5690f'),('197dd966-6358-44e5-a40c-9e4fbe636015','c8a09719-5860-4e03-8e8b-948299b41095'),('238d8066-af82-4e5c-bd48-cc57a45461b0','15855d57-97fa-4295-94e1-96684e22fa78'),('238d8066-af82-4e5c-bd48-cc57a45461b0','c99a0c80-1dbc-4fea-959c-223380942579'),('24af0c82-7865-4c30-9394-8699ac2d1529','1714ebd4-dfe6-4e84-b278-9fe34d386fb7'),('29d9fd78-ea15-488d-9199-6d966d47b4c7','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('313f882b-0d0f-4134-8c9f-5a7f7e7e86f6','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('3b89f849-38c5-43d8-9d6a-83b21a8ffc83','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('474f22a4-6d62-46f7-bb0a-ebccf50df396','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('569a0acd-d651-4990-ab26-2a78bb544875','c99a0c80-1dbc-4fea-959c-223380942579'),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('5b9df0ec-a548-4c93-aa8e-5dde0009c203','1714ebd4-dfe6-4e84-b278-9fe34d386fb7'),('6a9800ca-0972-49fe-a95d-3f59bc1b960a','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('769036a0-7215-41c3-a0c5-a7d103fdd68c','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('89e68d0e-cdfc-4378-8634-eb627ec0557e','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('8a95423a-09c6-4bcd-b6df-99082a195060','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('8c7fb901-38be-4324-9823-6ea635863c6c','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('96791704-5d47-40dd-9597-b6f3d445a6fc','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('97a1910d-ae1d-4865-992e-44f1ee162165','bc5b2e61-2b34-4760-b7de-ce826e8cadda'),('9bc00076-b5d9-44e3-9a23-5108e7ff4ac2','2d1f727c-2006-44d0-95d5-6529342ffc24'),('a8e3c5c2-3f6c-439b-a56b-fc27035a717f','4ffbe68a-c7be-4307-b463-dbb4fd235e14'),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','4ffbe68a-c7be-4307-b463-dbb4fd235e14'),('a9c1ac47-6186-4da9-87e2-6aed12dbeb80','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('ae87cb8d-a1ef-4e47-a357-72829af18ade','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('ae87cb8d-a1ef-4e47-a357-72829af18ade','bc5b2e61-2b34-4760-b7de-ce826e8cadda'),('c44d2b90-e531-4ed1-98d8-4096445ddc17','c99a0c80-1dbc-4fea-959c-223380942579'),('e150359e-10e2-4e34-9179-ef95606a6293','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('e3668d90-1629-4f23-a5e3-6e1a78d72219','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('e8fb2aff-cab1-4a32-9810-6e6441efe173','c99a0c80-1dbc-4fea-959c-223380942579'),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','2d1f727c-2006-44d0-95d5-6529342ffc24'),('e90b8367-0f10-4425-8b79-9ee5a665d2b5','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('e93f502f-1dff-4dc9-a582-89a70282c69a','15855d57-97fa-4295-94e1-96684e22fa78'),('eda58fee-2de1-41cb-a851-5b2fd7dd4b74','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('f834a4a1-ae42-4988-8b60-043bb321da64','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('fef48d35-b61e-4f6f-8c22-b7f0bdf2ca22','c99a0c80-1dbc-4fea-959c-223380942579');
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
INSERT INTO `WEB_ORIGINS` VALUES ('2728a023-e3a7-4f73-99bd-c25ef9c8b335','+'),('55614122-8f23-4650-bcc5-725a2ac60253','+'),('a5c0b60a-5a7d-4c2a-9395-ff0fa58eb979','+'),('ac10798a-f624-4556-9c93-5a4f8ce430c5','+'),('d950640f-e6b4-48df-8c59-fe9a1e06e863','+'),('df88f233-d420-4e4c-8fbe-9781387a7119','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-07-16 16:39:07','dummy','2024-07-16 16:39:07','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2024-07-16 16:39:00','dummy','2024-07-16 16:39:00','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-07-16 16:39:00','dummy','2024-07-16 16:39:00','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2024-07-16 16:39:00','dummy','2024-07-16 16:39:00','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-07-16 16:39:00','dummy','2024-07-16 16:39:00','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2024-07-16 16:39:00','dummy','2024-07-16 16:39:00','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2024-07-16 16:39:01','dummy','2024-07-16 16:39:01','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2024-07-16 16:39:01','dummy','2024-07-16 16:39:01','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-07-16 16:38:59.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-07-16 16:38:59.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-16 16:42:57','unittest-user01','2024-07-16 16:43:06','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-16 16:43:24','unittest-user01','2024-07-16 16:43:29','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-16 16:43:47','unittest-user01','2024-07-16 16:43:53','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-16 16:44:12','unittest-user01','2024-07-16 16:44:18','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-07-16 16:44:35','unittest-user01','2024-07-16 16:44:40','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_QSMB8FD8OSQZG2OOJIH5','PF_ORG_QSMB8FD8OSQZG2OOJIH5','xzYzfSq+7FVsx9E1JxQOCUDkEKKtS2LbYYkHcpLRnqG/O4nCbW086W+DxgqUS7uU','2024-07-16 16:43:03','unittest-user01','2024-07-16 16:44:58','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_552YT85QIZ0C21XDRAAU','PF_ORG_552YT85QIZ0C21XDRAAU','0tlJ4CEgyKgtkxthFkXX8VanHu/aIee0HGPSbkfjtwbJ2PbiHktmezotPJ7CVJPx','2024-07-16 16:43:29','unittest-user01','2024-07-16 16:44:58','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_H1F394IPON13KEZ7F8OP','PF_ORG_H1F394IPON13KEZ7F8OP','w64hsD09xJJi59XEn490y3pMGWLdp4binfTGhn52MTtM4U2AEFbvuTSo+Kdyqp7/','2024-07-16 16:43:52','unittest-user01','2024-07-16 16:44:58','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_HYSIC53W8W853D2C2BYK','PF_ORG_HYSIC53W8W853D2C2BYK','S7t70Az+U4k0HD6Z/CVu3cLOrZGPI8PPtHfFaQjNPvNrpy5iQrCL1FVmVBaIbmNo','2024-07-16 16:44:17','unittest-user01','2024-07-16 16:44:58','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_DDWG37JPX6KRVPI15T85','PF_ORG_DDWG37JPX6KRVPI15T85','8SHd6SfbpmukE3WQrYmnwMQYQo528iVYrYzlK9edFunTJFe9weukA/PuvVQ39vBW','2024-07-16 16:44:39','unittest-user01','2024-07-16 16:44:58','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-07-16 16:38:56','system','2024-07-16 16:38:56','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-07-16 16:39:07','dummy','2024-07-16 16:39:07','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-07-16 16:38:56','system','2024-07-16 16:38:59','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-07-16 16:38:56','system','2024-07-16 16:38:59','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-07-16 16:38:56','system','2024-07-16 16:38:59','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-07-16 16:39:07','dummy','2024-07-16 16:39:07','dummy'),('_default','platform.roles',1000,'2024-07-16 16:38:56','system','2024-07-16 16:38:56','system'),('_default','platform.users',10000,'2024-07-16 16:38:56','system','2024-07-16 16:38:56','system'),('_default','platform.workspaces',100,'2024-07-16 16:38:56','system','2024-07-16 16:38:56','system');
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
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-07-16 16:38:56','1.9.0','2024-07-16 16:38:56','1.9.0'),(2,'1.3.0','SUCCEED',NULL,'2024-07-16 16:38:58','1.9.0','2024-07-16 16:38:58','1.9.0'),(3,'1.5.0','START',NULL,'2024-07-16 16:38:58','1.9.0','2024-07-16 16:38:58','1.9.0'),(4,'1.5.0','SUCCEED',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(5,'1.5.2','START',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(6,'1.5.2','SUCCEED',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(7,'1.6.0','START',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(8,'1.6.0','SUCCEED',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(9,'1.7.0','START',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(10,'1.7.0','SUCCEED',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(11,'1.8.0','START',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(12,'1.8.0','SUCCEED',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(13,'1.8.1','START',NULL,'2024-07-16 16:38:59','1.9.0','2024-07-16 16:38:59','1.9.0'),(14,'1.8.1','SUCCEED',NULL,'2024-07-16 16:39:00','1.9.0','2024-07-16 16:39:00','1.9.0'),(15,'1.8.2','START',NULL,'2024-07-16 16:39:00','1.9.0','2024-07-16 16:39:00','1.9.0'),(16,'1.8.2','SUCCEED',NULL,'2024-07-16 16:39:01','1.9.0','2024-07-16 16:39:01','1.9.0'),(17,'1.9.0','START',NULL,'2024-07-16 16:39:01','1.9.0','2024-07-16 16:39:01','1.9.0'),(18,'1.9.0','SUCCEED',NULL,'2024-07-16 16:39:01','1.9.0','2024-07-16 16:39:01','1.9.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"b42f7870-e157-44d7-88b2-2c10c69e222b\", \"TOKEN_CHECK_CLIENT_SECRET\": \"aRZ8DUpwCMbJWmyIMagLsbXpZnCPDr4v\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"974eb9d9-d345-4aef-9995-6f05b4943e4a\"}','2024-07-16 16:38:58','system','2024-07-16 16:38:58','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.9.0','2024-07-16 16:38:02','system','2024-07-16 16:39:01','1.9.0');
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
-- Current Database: `PF_ORG_QSMB8FD8OSQZG2OOJIH5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_QSMB8FD8OSQZG2OOJIH5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_QSMB8FD8OSQZG2OOJIH5`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"65c3c063-c83c-44fe-b21f-e333de132425\", \"USER_TOKEN_CLIENT_SECRET\": \"JnK6H8QHwgMJE8BrlWzUy9UQBp6wvtvA\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"9ce54798-5e96-4bf2-97dc-6aec4b0c438b\", \"INTERNAL_API_CLIENT_SECRET\": \"unR0wzl5Z8E6gMQAJ7Sa84450OEfTBN1\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"a5596fca-63f5-4082-b272-6ddce6204230\", \"TOKEN_CHECK_CLIENT_SECRET\": \"W6xhjiCOi8l5kqNA5GJxqjf6mKCJhA3j\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"35acd348-02e3-4f71-99da-e20c90ca32c1\"}','2024-07-16 16:43:03','unittest-user01','2024-07-16 16:43:03','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:06','acff92c1-082d-47cb-a81c-aaab3f0e08be','2024-07-16 16:43:06','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:12','acff92c1-082d-47cb-a81c-aaab3f0e08be','2024-07-16 16:43:12','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:18','acff92c1-082d-47cb-a81c-aaab3f0e08be','2024-07-16 16:43:18','acff92c1-082d-47cb-a81c-aaab3f0e08be');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_BYR3KNDQQQLCJDUYC4Q5','PF_WS_BYR3KNDQQQLCJDUYC4Q5','CKn+Z6Rgalxyoeg4w2k0vIdH37Kq8+5Hh1iu7mtGyMFs0j+QAocxBLnmXwdBD+tv','2024-07-16 16:43:07','acff92c1-082d-47cb-a81c-aaab3f0e08be','2024-07-16 16:44:58','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('org1','ws2','unittest-platform-db',3306,'PF_WS_TD9IAV7V0YFGWKXAU41C','PF_WS_TD9IAV7V0YFGWKXAU41C','2Gv9HrGIUBFY+pBGedkX3Pi53erNdincT8Nc3meJK67BGk2cTpwdMms+8q/Pbf2f','2024-07-16 16:43:13','acff92c1-082d-47cb-a81c-aaab3f0e08be','2024-07-16 16:44:58','acff92c1-082d-47cb-a81c-aaab3f0e08be'),('org1','ws3','unittest-platform-db',3306,'PF_WS_TTBIL5BYV76VATCUOSYJ','PF_WS_TTBIL5BYV76VATCUOSYJ','5WfjdBVmETsmkEJ8GIL+AHCL9wz30yT9bnV15Ez96VaRyydeVmKWUHWVhibN3tQK','2024-07-16 16:43:19','acff92c1-082d-47cb-a81c-aaab3f0e08be','2024-07-16 16:44:58','acff92c1-082d-47cb-a81c-aaab3f0e08be');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_BYR3KNDQQQLCJDUYC4Q5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_BYR3KNDQQQLCJDUYC4Q5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_BYR3KNDQQQLCJDUYC4Q5`;

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
-- Current Database: `PF_WS_TD9IAV7V0YFGWKXAU41C`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_TD9IAV7V0YFGWKXAU41C` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_TD9IAV7V0YFGWKXAU41C`;

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
-- Current Database: `PF_WS_TTBIL5BYV76VATCUOSYJ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_TTBIL5BYV76VATCUOSYJ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_TTBIL5BYV76VATCUOSYJ`;

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
-- Current Database: `PF_ORG_552YT85QIZ0C21XDRAAU`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_552YT85QIZ0C21XDRAAU` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_552YT85QIZ0C21XDRAAU`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"debb3226-8cbc-477d-8b51-65a3c9506840\", \"USER_TOKEN_CLIENT_SECRET\": \"CyQ8tqW2CzzkGR47mce2BZ1ehfdJbpDK\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"54d6d676-f0f4-421f-b554-202406a3d2ec\", \"INTERNAL_API_CLIENT_SECRET\": \"yZkhmKUpkqLOO01BqNgSby8qw9WEgHdE\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"3b29fb01-1712-49d9-aaf8-4691d7d56cfb\", \"TOKEN_CHECK_CLIENT_SECRET\": \"cYJq6oH9ItoNnUl6vcLZDYEpWaExdwEj\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"27704f88-2ef9-4e40-a328-aaadec0b3c98\"}','2024-07-16 16:43:29','unittest-user01','2024-07-16 16:43:29','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:30','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','2024-07-16 16:43:30','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:36','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','2024-07-16 16:43:36','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:42','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','2024-07-16 16:43:42','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_Y6BTEKT10IBWOV4UAZAY','PF_WS_Y6BTEKT10IBWOV4UAZAY','bo5YDs8tg7SFKU4RL6bEIO1ffsHgTFFftSG65+j392GUr4gkkm0vrmRDh27leHpf','2024-07-16 16:43:30','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','2024-07-16 16:44:58','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('org2','ws2','unittest-platform-db',3306,'PF_WS_Z1BA2RH12YD4NLOQNG9C','PF_WS_Z1BA2RH12YD4NLOQNG9C','lLnjhHniUUxplRuUTmU1KmbBhnZrIN6W0D2ZTkDHYvjOwmqIIH42RL3PSHrM0fse','2024-07-16 16:43:36','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','2024-07-16 16:44:58','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c'),('org2','ws3','unittest-platform-db',3306,'PF_WS_0591BREN3S5H87Z1VP2L','PF_WS_0591BREN3S5H87Z1VP2L','CIzxk89rNkXs7Ev1kR/Y3aM3zmyL6fmX5+mA20sYHpSHVwYaacBImZDWBhaEOx1p','2024-07-16 16:43:42','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c','2024-07-16 16:44:58','68d3bacd-b6ff-4be1-82c1-89cf18e70a4c');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_Y6BTEKT10IBWOV4UAZAY`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_Y6BTEKT10IBWOV4UAZAY` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_Y6BTEKT10IBWOV4UAZAY`;

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
-- Current Database: `PF_WS_Z1BA2RH12YD4NLOQNG9C`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_Z1BA2RH12YD4NLOQNG9C` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_Z1BA2RH12YD4NLOQNG9C`;

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
-- Current Database: `PF_WS_0591BREN3S5H87Z1VP2L`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_0591BREN3S5H87Z1VP2L` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_0591BREN3S5H87Z1VP2L`;

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
-- Current Database: `PF_ORG_H1F394IPON13KEZ7F8OP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_H1F394IPON13KEZ7F8OP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_H1F394IPON13KEZ7F8OP`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"821a7df6-a652-4bcb-96df-5d20ac5a8862\", \"USER_TOKEN_CLIENT_SECRET\": \"ALaB9bJqgEXYbVglOSMDgan4jA1gpyeU\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"17fd93d5-355f-4d86-a035-b11dbb83312a\", \"INTERNAL_API_CLIENT_SECRET\": \"zT3b9JCz7PX3h0zZ4GvbQ8pU9hHE71j0\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"7b7d2580-6eb9-4208-8343-192d34328442\", \"TOKEN_CHECK_CLIENT_SECRET\": \"RIksxRTUTgVRrefUp8knEeG1h3vJj0aO\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"ba76f696-725a-40d8-a3f9-ba2e7f4378b1\"}','2024-07-16 16:43:52','unittest-user01','2024-07-16 16:43:52','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:53','c99a0c80-1dbc-4fea-959c-223380942579','2024-07-16 16:43:53','c99a0c80-1dbc-4fea-959c-223380942579'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:43:59','c99a0c80-1dbc-4fea-959c-223380942579','2024-07-16 16:43:59','c99a0c80-1dbc-4fea-959c-223380942579'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:06','c99a0c80-1dbc-4fea-959c-223380942579','2024-07-16 16:44:06','c99a0c80-1dbc-4fea-959c-223380942579');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_VSE99GAWOEN49WMPPUD3','PF_WS_VSE99GAWOEN49WMPPUD3','s6lZhUI4ByXibghbBDpvvXV+MtLaz0pTOrqUAAvKKZY/RkrRv3N7a02LrIXTNKvK','2024-07-16 16:43:53','c99a0c80-1dbc-4fea-959c-223380942579','2024-07-16 16:44:58','c99a0c80-1dbc-4fea-959c-223380942579'),('org3','ws2','unittest-platform-db',3306,'PF_WS_USR83BXTVIFHX77XRRQV','PF_WS_USR83BXTVIFHX77XRRQV','ekl/9RxYJCWY/isFRysgMnORSqzc/5MNze+SGbveC4+UbmslysjnOdb0mD33Xml0','2024-07-16 16:43:59','c99a0c80-1dbc-4fea-959c-223380942579','2024-07-16 16:44:58','c99a0c80-1dbc-4fea-959c-223380942579'),('org3','ws3','unittest-platform-db',3306,'PF_WS_DDIRJG02WTB2Q15X07YK','PF_WS_DDIRJG02WTB2Q15X07YK','ujLZnEBQte4cA+OR15WeG8OutguvBr2wErNLrmrkPCd7iQpSdxgkC19My83Oz7qi','2024-07-16 16:44:07','c99a0c80-1dbc-4fea-959c-223380942579','2024-07-16 16:44:58','c99a0c80-1dbc-4fea-959c-223380942579');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_VSE99GAWOEN49WMPPUD3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_VSE99GAWOEN49WMPPUD3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_VSE99GAWOEN49WMPPUD3`;

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
-- Current Database: `PF_WS_USR83BXTVIFHX77XRRQV`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_USR83BXTVIFHX77XRRQV` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_USR83BXTVIFHX77XRRQV`;

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
-- Current Database: `PF_WS_DDIRJG02WTB2Q15X07YK`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_DDIRJG02WTB2Q15X07YK` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_DDIRJG02WTB2Q15X07YK`;

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
-- Current Database: `PF_ORG_HYSIC53W8W853D2C2BYK`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_HYSIC53W8W853D2C2BYK` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_HYSIC53W8W853D2C2BYK`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"51fced76-a0da-43cc-a530-7f4f925da142\", \"USER_TOKEN_CLIENT_SECRET\": \"ILwn34DvXG4CHp3tokLEkkvs7svDDAga\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"91afb328-27d5-43a0-8239-2560633fac2c\", \"INTERNAL_API_CLIENT_SECRET\": \"Pn2CFnVuQiaMYGB0Dezs1SlrN4E5jop0\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"5fe788bf-1b97-4815-90c3-1ef8da9d9a45\", \"TOKEN_CHECK_CLIENT_SECRET\": \"KTcmQ2WlW9cKub89FdLU4tSIDDWwVoH4\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"78f8ff86-d160-4a8e-a450-dade12c2546b\"}','2024-07-16 16:44:17','unittest-user01','2024-07-16 16:44:17','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:18','afd00778-6563-4989-8edc-6e86fc0dd6dd','2024-07-16 16:44:18','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:24','afd00778-6563-4989-8edc-6e86fc0dd6dd','2024-07-16 16:44:24','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:29','afd00778-6563-4989-8edc-6e86fc0dd6dd','2024-07-16 16:44:29','afd00778-6563-4989-8edc-6e86fc0dd6dd');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_WCBA4U626QS07HVLDXCD','PF_WS_WCBA4U626QS07HVLDXCD','uTTePWgETMKzsjIzQOvaQUoMvYe3qsNrr9DGI8wltoi+yuoaNJ9gtKG/q1L06wap','2024-07-16 16:44:18','afd00778-6563-4989-8edc-6e86fc0dd6dd','2024-07-16 16:44:58','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('org4','ws2','unittest-platform-db',3306,'PF_WS_8ODI85BH8VSSAYQJ80LZ','PF_WS_8ODI85BH8VSSAYQJ80LZ','QDh2r8pRw09LVP6RnX1vJefsl58MahkJ+pRretIjjJ+kBlwZtcMIzw1EO0aegwue','2024-07-16 16:44:24','afd00778-6563-4989-8edc-6e86fc0dd6dd','2024-07-16 16:44:58','afd00778-6563-4989-8edc-6e86fc0dd6dd'),('org4','ws3','unittest-platform-db',3306,'PF_WS_XCBVLD6F9UNUPAKJ65YE','PF_WS_XCBVLD6F9UNUPAKJ65YE','y+ZWU4f3wQKyhxdKg6HV/WcaBLitS2+8Q48O1fxX/9Qv38Zek4593DHVfb7lPAO0','2024-07-16 16:44:30','afd00778-6563-4989-8edc-6e86fc0dd6dd','2024-07-16 16:44:58','afd00778-6563-4989-8edc-6e86fc0dd6dd');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_WCBA4U626QS07HVLDXCD`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_WCBA4U626QS07HVLDXCD` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_WCBA4U626QS07HVLDXCD`;

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
-- Current Database: `PF_WS_8ODI85BH8VSSAYQJ80LZ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_8ODI85BH8VSSAYQJ80LZ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_8ODI85BH8VSSAYQJ80LZ`;

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
-- Current Database: `PF_WS_XCBVLD6F9UNUPAKJ65YE`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_XCBVLD6F9UNUPAKJ65YE` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_XCBVLD6F9UNUPAKJ65YE`;

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
-- Current Database: `PF_ORG_DDWG37JPX6KRVPI15T85`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_DDWG37JPX6KRVPI15T85` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_DDWG37JPX6KRVPI15T85`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"736f2faa-dc2a-49bd-9e25-c09b8d99536b\", \"USER_TOKEN_CLIENT_SECRET\": \"SP5rKo8UJNrm0OAGWCbvuJqEjObLM8Jb\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"3d20ecfe-2a25-4637-b015-532c1729c879\", \"INTERNAL_API_CLIENT_SECRET\": \"VOmxQMR0JMgYvf3MBQDheRpdRA2vItvG\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"cb276f1c-33ac-485a-a83c-0b8a41ed23f8\", \"TOKEN_CHECK_CLIENT_SECRET\": \"AsOLoi0JGfiFeoZF6CDBKE2P0jAZwzqW\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"dc5af93f-baaf-4f69-8d4c-a791b1101ac3\"}','2024-07-16 16:44:40','unittest-user01','2024-07-16 16:44:40','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:40','03fbdc9a-0040-4699-a474-2c85e9b3c7de','2024-07-16 16:44:40','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:46','03fbdc9a-0040-4699-a474-2c85e9b3c7de','2024-07-16 16:44:46','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-07-16 16:44:52','03fbdc9a-0040-4699-a474-2c85e9b3c7de','2024-07-16 16:44:52','03fbdc9a-0040-4699-a474-2c85e9b3c7de');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_KMJE5JEFEE0V0ZK9QNE8','PF_WS_KMJE5JEFEE0V0ZK9QNE8','om1qrSjr0m9eOUMeK6+dkPzSChhW7wa6ZiQx02L8DJ3tdqjI37Hs+nkWNMFOmt+r','2024-07-16 16:44:41','03fbdc9a-0040-4699-a474-2c85e9b3c7de','2024-07-16 16:44:58','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('org5','ws2','unittest-platform-db',3306,'PF_WS_L6V5A7S6TF1JWAM7NE44','PF_WS_L6V5A7S6TF1JWAM7NE44','PRcZE31S2h06NOGOYwSZO/iI6nQwzfJ/3vWAQ/HT7zBKiwwMXQg6nB1kzqGvyZ13','2024-07-16 16:44:46','03fbdc9a-0040-4699-a474-2c85e9b3c7de','2024-07-16 16:44:58','03fbdc9a-0040-4699-a474-2c85e9b3c7de'),('org5','ws3','unittest-platform-db',3306,'PF_WS_2O2G7V0XCN0BIO072WD7','PF_WS_2O2G7V0XCN0BIO072WD7','xlnloRKfGxBYLg3J5fqBwFXw64qus4vWrXy8b6THYL3yoPB4aye1hDSLhHK/Eca7','2024-07-16 16:44:52','03fbdc9a-0040-4699-a474-2c85e9b3c7de','2024-07-16 16:44:58','03fbdc9a-0040-4699-a474-2c85e9b3c7de');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_KMJE5JEFEE0V0ZK9QNE8`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_KMJE5JEFEE0V0ZK9QNE8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_KMJE5JEFEE0V0ZK9QNE8`;

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
-- Current Database: `PF_WS_L6V5A7S6TF1JWAM7NE44`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_L6V5A7S6TF1JWAM7NE44` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_L6V5A7S6TF1JWAM7NE44`;

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
-- Current Database: `PF_WS_2O2G7V0XCN0BIO072WD7`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_2O2G7V0XCN0BIO072WD7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_2O2G7V0XCN0BIO072WD7`;

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

-- Dump completed on 2024-07-16 16:44:59
