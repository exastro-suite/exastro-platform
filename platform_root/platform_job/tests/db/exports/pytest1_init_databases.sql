-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('025afb8d-f500-4354-8396-93d710b50b6f',1700534280395,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_ws2-admin','{\"id\":\"46be0cf7-9cf7-49fd-b9b3-00697eb181d2\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('034ced80-cba1-45ec-8726-f2af0da829e7',1700534259251,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','users/17985b46-8512-429d-a393-68ed7e707bf0/role-mappings/clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d','[{\"id\":\"4dce2b36-3a76-440b-914d-8f567abb2cb0\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"60799ffb-f3e9-4588-9f1f-08775cc0ee2d\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('069c63ad-3ba8-43ec-8baf-6173904a0059',1700534299660,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-own-mt','{\"id\":\"27c9318d-0e2c-4b19-925f-31093d0effe0\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('06b223fc-3a82-4b5a-9cda-778e26ad3ed6',1700534215678,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/ws2','{\"id\":\"a15324ce-44ec-4878-9aaf-486f7d1e2461\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0763a888-6c9a-4c3e-9f65-48180b59b33d',1700534200687,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_organization-user-manager','{\"id\":\"a6af2db4-76e0-4c0a-945f-f2e29fab4257\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('08228c0d-e190-4fb1-ab55-f90c5ecadf07',1700534248708,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_ws2-admin/composites','[{\"id\":\"1833f8dc-3043-4e1d-826a-de0f28b85159\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"6aad9a0d-d85d-4a49-8067-70bb3909fdfc\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('09fbe10f-1b77-40ba-a4e2-338477b0af1d',1700534333315,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','users/2bca6b04-7c55-4409-9dd3-eda27e0ed385/role-mappings/clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','[{\"id\":\"1b52e66a-90a1-4d55-b8ba-dfa317606d88\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('0abb4eef-7f93-48b7-b431-5ddd48638c1b',1700534350950,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','users/2bca6b04-7c55-4409-9dd3-eda27e0ed385/role-mappings/clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','[{\"id\":\"7fdfb7ec-9d6c-4067-a44a-70dbc2863a42\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('0ac227c8-3c0b-407d-a5c4-47de8e0fc978',1700534331199,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-usr-mt','{\"id\":\"5b23ea0f-0607-4aeb-86a8-f7581c63de92\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0cc66246-c0ce-4f83-9c86-802d6cdb1717',1700534299269,'org4','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c/client-secret','{\"type\":\"secret\",\"value\":\"FI8kwXsWXLoFPu6jvfkrEfFAzDF4yBvn\"}',NULL,'CLIENT'),('10948403-5a81-470b-ad4e-a04090554f13',1700534310605,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_ws2-admin','{\"id\":\"ebdf628f-b58b-45c4-ad3e-55ed1dafe24b\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('110acf7e-2c05-4178-8f67-7ced834c7e37',1700534310654,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_ws2-admin/composites','[{\"id\":\"cacb980f-9dbc-432a-b9e6-d9190db7f831\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"4f2929cc-7c6b-441c-920d-c5fee61543aa\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('11e38952-df20-4339-b25c-7cc2b5981d38',1700534259023,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_ws3-admin','{\"id\":\"4dce2b36-3a76-440b-914d-8f567abb2cb0\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('12905582-c771-455b-bd08-209d1aae2bbe',1700534289099,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_ws3-admin/composites','[{\"id\":\"15f93b96-e3ef-4df3-8da4-f3b1f94b9252\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"e64e0e6e-45a7-4925-8e5d-2ab99c8c9264\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('12a83ce0-1e4d-4526-a780-80bc14b8a37c',1700534270274,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_organization-user-manager','{\"id\":\"c0a56635-54ac-40f6-b4e7-fa2d76e8079a\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('13165862-7eb1-4ce2-be02-2ddb2ffc6c84',1700534239379,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','users/17985b46-8512-429d-a393-68ed7e707bf0/role-mappings/clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d','[{\"id\":\"62befced-52d7-4cef-a00d-e8916bc0d68a\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"60799ffb-f3e9-4588-9f1f-08775cc0ee2d\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('13f298c9-f42d-4829-8ef3-b0d45b4e2a4d',1700534331165,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-role-usr','{\"id\":\"0b52746b-d4b9-42c9-855b-0f4812a8136a\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1417e8a2-6484-4820-9e9f-4f95c8ed1d49',1700534199450,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5','{\"id\":\"498fc338-cab0-4248-86e6-bc4321b81af5\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('14efcdd7-3e6a-495e-90ff-e399a816ddd1',1700534215729,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_ws2-admin','{\"id\":\"5cc83723-b1eb-49ca-aadc-d48465ddff86\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1531214a-63d3-418a-8073-34c619be7604',1700534331149,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-own-mt','{\"id\":\"c4445745-87f7-47e8-9a02-5562ab03881a\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1578bf15-b389-43ae-8bd3-9943b56a63f1',1700534239340,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_ws1-admin/composites','[{\"id\":\"7c08b9f2-77f6-4448-845b-4fab9c56f2a9\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ea8d0a21-1170-4154-82c6-45798083817c\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('1718b2b2-b7ab-4c01-9fb1-046772d8058d',1700534224607,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_ws3-admin','{\"id\":\"935203ce-86a2-466f-a946-d292cc7a7313\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('19d8a49a-cc00-4681-96d6-9c9b8278a9e5',1700534236703,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-upd','{\"id\":\"08fdf655-f027-4e04-a0ea-94e8184c0340\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1a8e3b94-4ef0-465c-9f71-8c6e9610a4d5',1700534299016,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291','{\"id\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('1ac67549-7d01-4a5e-956b-865ef98573bc',1700534269809,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-role-usr','{\"id\":\"77a06631-1e7f-4e45-9328-6619064516ac\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1f2b17c2-44bb-4538-a50d-48dc4e457e49',1700534236539,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/0d322164-ad54-4855-b3d6-62113bded474','{\"id\":\"0d322164-ad54-4855-b3d6-62113bded474\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('206aed83-22af-4de6-b68f-386f432d80f2',1700534331306,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_organization-manager','{\"id\":\"563acf43-45df-450f-8842-58cecd2550ba\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('21b35cb5-b330-410f-87e7-ff01675e0200',1700534271723,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_ws1-admin','{\"id\":\"ac5ea540-f1cb-4466-a773-2a8e3471bf1e\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('222d1695-02eb-42b2-ad49-6ddfcad5047d',1700534331470,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_organization-manager/composites','[{\"id\":\"dfaa5343-5c73-4c75-8cac-d228a2f69613\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"c4445745-87f7-47e8-9a02-5562ab03881a\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"0b52746b-d4b9-42c9-855b-0f4812a8136a\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"af2e8e82-8248-4aa0-8b86-e2c9cc4ae102\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"5b23ea0f-0607-4aeb-86a8-f7581c63de92\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"019cb3d7-b7fd-45de-9c09-ec2fec16f7e2\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"5e6ffd03-16a8-42c0-ab46-8461123b09c8\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"3c4b9863-edb1-4ce4-baf2-6bacb2a43b83\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('23596785-502d-4ab8-9cba-9ea6b92833aa',1700534342047,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/ws2','{\"id\":\"fb4e200e-5ed5-44fb-8db9-4f7a242efeb0\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('27af4896-82db-4a6d-8f06-389c19086903',1700534236297,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d','{\"id\":\"60799ffb-f3e9-4588-9f1f-08775cc0ee2d\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('29544393-e7e3-4237-ab04-cf60376ef83d',1700534331060,'org5','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/029c5bde-e604-419a-97d3-4ca2228de1be/client-secret','{\"type\":\"secret\",\"value\":\"kqFVDkq3VzvOaNSbYRqZHFptprIwNtkM\"}',NULL,'CLIENT'),('29d263f8-ce39-454b-987a-bf8cac090b6a',1700534299690,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-usage','{\"id\":\"9a9d5fca-6755-4a61-9adf-6d1cd90490e5\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('29e6fba4-4882-4e2f-9e16-1215f94d3b4d',1700534236944,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-ws-role-usr','{\"id\":\"94aa7e81-2814-456d-ab87-a4f64345e23b\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('29efc08f-8bb8-44e6-bbb0-00b2db90ce80',1700534299578,'org4','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/91fd74c7-1fbb-410a-83c4-b19d280c4878/client-secret','{\"type\":\"secret\",\"value\":\"cXqWaq9KG4VYse4Dsd7OtyrMprbID0Nf\"}',NULL,'CLIENT'),('2b001384-b75b-465f-b3b3-8e86cf4672a1',1700534239266,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_ws1-admin','{\"id\":\"ea8d0a21-1170-4154-82c6-45798083817c\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2b74121f-bbdf-407f-9a34-8f60d4c1f27f',1700534331500,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_organization-user-role-manager','{\"id\":\"3b884bb2-036e-4039-acce-8fcbf1e8edbe\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('2bff1617-a449-4c1f-a7cc-d352ececcd06',1700534299705,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-usr-mt','{\"id\":\"026a58cc-7ae9-47cb-ab9d-cc22a0a26b75\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2d680c98-006c-4e9f-9e0e-d287f308be78',1700534215804,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_ws2-admin/composites','[{\"id\":\"a15324ce-44ec-4878-9aaf-486f7d1e2461\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"bd71a142-3ea3-4aa0-bc94-0997777be7fc\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('2d7935e8-79e4-4750-81f9-d10c562041ab',1700534289028,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_ws3-admin','{\"id\":\"02da046e-c89c-4d1f-8901-5806992aa88c\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2eb41c42-eda0-4a65-81cf-4bb88cd05bb6',1700534199682,'org1','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/84cdd591-bea5-4aea-ba75-13df79253868/client-secret','{\"type\":\"secret\",\"value\":\"ZhgfccZYwwJuv45i7K6WTCk27woU52pn\"}',NULL,'CLIENT'),('2f3acafc-c1a2-4e4c-a12d-45cc6b462210',1700534199965,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-ws-role-mt','{\"id\":\"89aa3f6f-c3ab-4d92-a0ba-e091efeec11f\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('318e1090-ad25-44d9-88c0-9f4714406566',1700534299736,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-ws-role-usr','{\"id\":\"9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('32ddfeed-fabe-4f9d-8621-b0095b22fcdc',1700534319408,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_ws3-admin','{\"id\":\"41999579-9836-4f8a-b2f2-dd8b2b48d61a\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('33bb3331-0ea3-4513-aa0b-c57ff0442905',1700534331009,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/029c5bde-e604-419a-97d3-4ca2228de1be','{\"id\":\"029c5bde-e604-419a-97d3-4ca2228de1be\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('33f26750-253e-4a69-851d-a09cbbe1e841',1700534331607,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_organization-user-role-manager/composites','[{\"id\":\"5b23ea0f-0607-4aeb-86a8-f7581c63de92\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"019cb3d7-b7fd-45de-9c09-ec2fec16f7e2\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"5e6ffd03-16a8-42c0-ab46-8461123b09c8\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('349c3339-ff4c-4403-8dcb-20a07c343b81',1700534199205,'org1','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/client-secret','{\"type\":\"secret\",\"value\":\"korsu1cqIUDtRwXJearQpxImA6tT5j4w\"}',NULL,'CLIENT'),('36455b2d-27a0-4362-8383-542d074b09ab',1700534258968,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/ws3','{\"id\":\"7e0a8edb-4556-44fd-8ea3-787780381c82\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('36845c04-67b0-43c7-be00-c4aa7c19138b',1700534342098,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_ws2-admin','{\"id\":\"a0fbba49-a06a-4271-a936-0665f51337bf\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('383bc062-03e1-40c2-a37c-05afd3c4f31a',1700534302158,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','users/2c1da741-01aa-4dae-824d-3a5e986699fe/role-mappings/clients/576651bb-ff24-48e9-bfa7-4285938bf1da','[{\"id\":\"fdab3c8f-5944-409f-a311-4c49d4672888\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"576651bb-ff24-48e9-bfa7-4285938bf1da\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('39e29f10-f61c-483d-a2b3-370c7bf11989',1700534269829,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-usage','{\"id\":\"4aaf7b45-70f0-497a-9d3b-a783216266f1\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3b4e7cac-bdc3-4c50-ae4f-05a31e880e7b',1700534299976,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_organization-manager/composites','[{\"id\":\"a1a1a34d-4c01-44cb-ab68-c693be6daec1\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"27c9318d-0e2c-4b19-925f-31093d0effe0\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"a07848e4-1169-4bc5-8715-4378e63bbf8a\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"9a9d5fca-6755-4a61-9adf-6d1cd90490e5\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"026a58cc-7ae9-47cb-ab9d-cc22a0a26b75\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"4a958966-45bd-45fd-b287-a242bc3f2b07\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"98c245da-d0a5-4193-99ec-d9078261ba28\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('3c04c731-067a-4b8d-8f41-e443298c32dc',1700534206602,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_ws1-admin','{\"id\":\"a87a2845-d06c-4379-9be5-39f6fa35b5bc\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3c19aa92-c260-4b2b-b7e2-ec377b2d7335',1700534331263,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-ws-mt','{\"id\":\"3c4b9863-edb1-4ce4-baf2-6bacb2a43b83\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3ebca7ba-c206-4aaf-91fa-8539e1998a27',1700534330885,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','{\"id\":\"2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('431f3a8c-6e74-476b-8c1d-26b80781f4d3',1700534299719,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-ws-role-mt','{\"id\":\"4a958966-45bd-45fd-b287-a242bc3f2b07\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('43f3f2ec-d280-47e7-8131-0a43fc93940c',1700534301658,'org4','UPDATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12',NULL,'{\"enabled\":true}',NULL,'REALM'),('4431eead-2586-4c75-93b2-75ad7bca6f68',1700534300009,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_organization-user-role-manager','{\"id\":\"4de73f5b-566a-425d-82f0-babfa2ee56a3\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('446ae4d1-4255-4e3a-ab4f-86c3df6433fb',1700534331183,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-usage','{\"id\":\"af2e8e82-8248-4aa0-8b86-e2c9cc4ae102\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('44e92184-5935-4378-8d4e-2e8e3327cecf',1700534342189,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_ws2-admin/composites','[{\"id\":\"fb4e200e-5ed5-44fb-8db9-4f7a242efeb0\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"d58c0547-9edc-43a0-90a8-6ef23f870730\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('47388629-4e44-4829-ab13-76d3b95a2b08',1700534224563,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_ws3-admin','{\"id\":\"95a9a9ba-0584-4f47-adff-521019e5b671\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('49431fa0-a0c7-4dc3-9511-91162e6d35d3',1700534235924,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282','{\"id\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('49518067-021a-4e3c-8a86-4f2b0cc63579',1700534271832,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','users/1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814/role-mappings/clients/8e1aa514-01d1-4d71-b984-1f533b776280','[{\"id\":\"62444f8d-fa4f-4957-8ec8-e81417ac5b73\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8e1aa514-01d1-4d71-b984-1f533b776280\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('4c643fc6-3a40-4680-b077-73c5c6985396',1700534269501,'org3','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/9b54a677-f83d-4176-9bd1-6bc428f78077/client-secret','{\"type\":\"secret\",\"value\":\"oXhzkV3GGTpNdwwf1AMCNBKRPtFeQe7O\"}',NULL,'CLIENT'),('4e39c91f-5d85-4321-bcc7-7e95c5c51ab5',1700534199388,'org1','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/1de5b8f3-931d-4ce7-bda0-427432898190/client-secret','{\"type\":\"secret\",\"value\":\"5kKfX3f8qKDo3vsUw9dreO9YGBCxg2CB\"}',NULL,'CLIENT'),('506a34da-e153-491d-b58a-67b29268d534',1700534236731,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-own-mt','{\"id\":\"1f2a9c6c-b527-4216-ac5d-4415e3e876cc\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('52452e0d-d81a-4278-8e58-95f210fc605f',1700534269633,'org3','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/client-secret','{\"type\":\"secret\",\"value\":\"FpAPNCZJULu228bUCybcxTRgETBP7kzH\"}',NULL,'CLIENT'),('5412dd4c-0613-4fa0-a8e7-b08f3862711c',1700534236198,'org2','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c7a3d742-da9e-420e-a8a7-eb2aa95aac83/client-secret','{\"type\":\"secret\",\"value\":\"7VGy9OFfePUSn0DeTkauCItOnds3VOte\"}',NULL,'CLIENT'),('54bb147d-5c37-44d0-9927-14362e432e35',1700534269846,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-usr-mt','{\"id\":\"e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('571904c1-5465-46e2-8ee5-201a6c2ac345',1700534270185,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_organization-manager/composites','[{\"id\":\"5b57b239-eb7f-41a2-9cdb-706b813438a0\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"e41eb562-3a52-4d1a-941d-0670856e4d74\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"77a06631-1e7f-4e45-9328-6619064516ac\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"4aaf7b45-70f0-497a-9d3b-a783216266f1\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"1a3b48ab-262c-49cb-9d9e-fa673d5d549c\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"5c5edd41-e2e7-4d49-9788-28e8840cf305\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('593c97a6-3c5f-4dba-8a95-bba8aa48d49a',1700534350816,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_ws3-admin','{\"id\":\"7fdfb7ec-9d6c-4067-a44a-70dbc2863a42\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('59eefaa4-76f4-40e8-afa2-70cbbf929c5e',1700534259149,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_ws3-admin/composites','[{\"id\":\"7e0a8edb-4556-44fd-8ea3-787780381c82\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"0a7c3458-50a0-421f-a6e6-89759991bed5\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('59f84fa4-538a-4d16-9478-112042d57eb0',1700534200010,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-ws-role-usr','{\"id\":\"407fe76e-fb6c-4baa-a818-b72f20ce8189\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5b69bf96-9f3c-4759-a194-cd143a04b10f',1700534331217,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-ws-role-mt','{\"id\":\"019cb3d7-b7fd-45de-9c09-ec2fec16f7e2\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5bc7352c-bac7-4456-bff1-8cb2e0e0ef4f',1700534237508,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_organization-user-role-manager/composites','[{\"id\":\"f25e8587-db5d-4404-bacf-33f8380876a4\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"e73102b4-fc0d-45c9-b8c0-1c5be067d832\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"94aa7e81-2814-456d-ab87-a4f64345e23b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('5bc76180-7dc7-401f-a9d3-ea790f40f9b2',1700534333212,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_ws1-admin','{\"id\":\"1b52e66a-90a1-4d55-b8ba-dfa317606d88\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5d24e832-4c4f-4309-a4a8-407d9e5181bd',1700534270018,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_organization-manager','{\"id\":\"6dab20a9-5026-4995-9b18-df607596f36f\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('5ddca458-3c1f-427a-b918-6cdf775e411e',1700534237547,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_organization-user-manager','{\"id\":\"54966569-c013-48bb-bd19-1ea8bb7a936a\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('5ef93a98-173d-4b7e-b275-e9ab48132035',1700534310588,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_ws2-admin','{\"id\":\"4f2929cc-7c6b-441c-920d-c5fee61543aa\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('61448dd1-9abc-4920-8a40-9e261075e227',1700534271467,'org3','UPDATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12',NULL,'{\"enabled\":true}',NULL,'REALM'),('61567a34-56d9-40d8-8ec2-e81a90b1215c',1700534224684,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_ws3-admin/composites','[{\"id\":\"950ad99b-32e2-4257-b0ec-19c6c820bd51\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"95a9a9ba-0584-4f47-adff-521019e5b671\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('62764909-3798-4457-b2cc-798c557f2c00',1700534271706,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/ws1','{\"id\":\"7d7411ef-7d70-4b64-b21b-9ef9783c69c5\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('633a7250-b8f3-486e-b43d-99d7a0c4d968',1700534331131,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-upd','{\"id\":\"dfaa5343-5c73-4c75-8cac-d228a2f69613\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('637a3558-556a-4bac-a4e9-89759a15a749',1700534236616,'org2','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/0d322164-ad54-4855-b3d6-62113bded474/client-secret','{\"type\":\"secret\",\"value\":\"axS5O00YuDIXdt2Oinh8hauAhE9PFMy3\"}',NULL,'CLIENT'),('6387c120-8ee1-4030-aa71-46116e32a3b1',1700534199822,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-upd','{\"id\":\"231682b1-9b0e-404c-9e48-cba06fc381a2\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('656e07f6-8ab3-4c31-96e6-2b529af7f938',1700534199087,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','{\"id\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('66566c57-ce23-49bf-9275-42ea8bd294d6',1700534269865,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-ws-role-mt','{\"id\":\"1a3b48ab-262c-49cb-9d9e-fa673d5d549c\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6aafad5d-02b8-41bb-a431-6cb64dfea19a',1700534299372,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da','{\"id\":\"576651bb-ff24-48e9-bfa7-4285938bf1da\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('6ade8d09-e59e-48fb-9e2b-91bc0cdac042',1700534200534,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_organization-user-role-manager','{\"id\":\"f58fae44-5e81-480e-9527-0a6e06968d26\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('6bab2882-5782-4a7b-835f-3f8137f1e6be',1700534280487,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','users/1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814/role-mappings/clients/8e1aa514-01d1-4d71-b984-1f533b776280','[{\"id\":\"46be0cf7-9cf7-49fd-b9b3-00697eb181d2\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8e1aa514-01d1-4d71-b984-1f533b776280\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('6c127a3a-2f3b-4a2b-80bc-6ae60991ac43',1700534299197,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','{\"id\":\"a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('6d42d96f-2189-47c1-b4cb-2c6535db4013',1700534206622,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_ws1-admin','{\"id\":\"0784f974-32a7-4ad2-b360-da5426daee66\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6ffa4979-7d76-4b84-9985-58b9784fcdd3',1700534239287,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_ws1-admin','{\"id\":\"62befced-52d7-4cef-a00d-e8916bc0d68a\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('70c44381-9e9f-4b20-9aec-b08e3170364c',1700534269782,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-upd','{\"id\":\"5b57b239-eb7f-41a2-9cdb-706b813438a0\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('727934eb-f21f-4347-8be9-b820a1b01b2b',1700534300726,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/2c1da741-01aa-4dae-824d-3a5e986699fe/role-mappings/clients/576651bb-ff24-48e9-bfa7-4285938bf1da','[{\"id\":\"b080ee8b-14a9-42bf-af4f-f6abac6a92cf\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"576651bb-ff24-48e9-bfa7-4285938bf1da\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('737ba30d-e80e-46bf-9f2e-36b1042e145e',1700534271796,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_ws1-admin/composites','[{\"id\":\"7d7411ef-7d70-4b64-b21b-9ef9783c69c5\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ac5ea540-f1cb-4466-a773-2a8e3471bf1e\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('748e3c08-6463-4453-b1b1-1e56a977e103',1700534199886,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-role-usr','{\"id\":\"91d4988f-97e3-4bb7-bc63-c0cc1fe34f8b\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('74ad02cd-bcbf-4b5b-ae2f-686faa7aa7b4',1700534270257,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_organization-user-role-manager/composites','[{\"id\":\"e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"1a3b48ab-262c-49cb-9d9e-fa673d5d549c\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('75d42f1f-259e-4ca5-a6a8-16ffd8379a09',1700534289139,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','users/1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814/role-mappings/clients/8e1aa514-01d1-4d71-b984-1f533b776280','[{\"id\":\"02da046e-c89c-4d1f-8901-5806992aa88c\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8e1aa514-01d1-4d71-b984-1f533b776280\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('762f0926-0c77-4baa-9d00-084d41e95a54',1700534271743,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_ws1-admin','{\"id\":\"62444f8d-fa4f-4957-8ec8-e81417ac5b73\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('77635f6d-207e-4ed6-a876-976b1f74a827',1700534319538,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','users/2c1da741-01aa-4dae-824d-3a5e986699fe/role-mappings/clients/576651bb-ff24-48e9-bfa7-4285938bf1da','[{\"id\":\"ade84f9c-dcad-4e90-8c74-e1242250f845\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"576651bb-ff24-48e9-bfa7-4285938bf1da\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('78dbe737-3b35-4422-8aef-cbf9a5753ef0',1700534301985,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_ws1-admin','{\"id\":\"aba93f08-21e9-48dd-8d1b-908af9847081\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7998d3af-8a19-48e9-8b12-8717d0dd9077',1700534248769,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','users/17985b46-8512-429d-a393-68ed7e707bf0/role-mappings/clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d','[{\"id\":\"12824a67-64b9-442b-b619-5f5f0508b87e\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"60799ffb-f3e9-4588-9f1f-08775cc0ee2d\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('79aa7bb6-5c43-4458-a9c4-b33a3f25e523',1700534199858,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-own-mt','{\"id\":\"26fd499f-e9d0-41b7-a6b4-2f4b4ef2999c\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7b1f9d4b-c607-46b3-a827-82cb6265d4a0',1700534200490,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_organization-manager/composites','[{\"id\":\"231682b1-9b0e-404c-9e48-cba06fc381a2\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"26fd499f-e9d0-41b7-a6b4-2f4b4ef2999c\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"91d4988f-97e3-4bb7-bc63-c0cc1fe34f8b\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"7b462ab2-8704-437a-b147-7d442149f85f\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"e2de53bc-34cf-4670-8561-1386c8bd5ffd\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"89aa3f6f-c3ab-4d92-a0ba-e091efeec11f\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"407fe76e-fb6c-4baa-a818-b72f20ce8189\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"7163527e-588a-4cc1-96a4-50827e83c5c2\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('7b32d785-215f-4a2c-97ee-25a3addc5142',1700534270321,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_organization-user-manager/composites','[{\"id\":\"e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}},{\"id\":\"02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('7cbd3ebb-ffc6-411e-83ca-de509b07f460',1700534269563,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280','{\"id\":\"8e1aa514-01d1-4d71-b984-1f533b776280\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('7e71fee1-f7a0-4955-b134-25da7e03b57e',1700534270672,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814/role-mappings/clients/8e1aa514-01d1-4d71-b984-1f533b776280','[{\"id\":\"6dab20a9-5026-4995-9b18-df607596f36f\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8e1aa514-01d1-4d71-b984-1f533b776280\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('8007e35d-7a1d-4c8c-98ed-f99da2dcb494',1700534319494,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_ws3-admin/composites','[{\"id\":\"3d298263-3811-4faa-87a7-f02549d5d58c\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"41999579-9836-4f8a-b2f2-dd8b2b48d61a\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('83268fc5-0bfc-4ed5-a40c-1c740b5e113a',1700534269363,'org3','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/client-secret','{\"type\":\"secret\",\"value\":\"nwefnBFgRVabf2C0IvbyYwSE1LQClxHn\"}',NULL,'CLIENT'),('83518f5d-b9e3-4d9e-b446-41173938495c',1700534199912,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-usage','{\"id\":\"7b462ab2-8704-437a-b147-7d442149f85f\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('836eb175-7a2f-49c3-9168-660682dd2102',1700534200054,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-ws-mt','{\"id\":\"7163527e-588a-4cc1-96a4-50827e83c5c2\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('83f9192b-720c-477f-a5ef-2d5e70cae8ec',1700534288997,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_ws3-admin','{\"id\":\"e64e0e6e-45a7-4925-8e5d-2ab99c8c9264\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8412ed42-af1f-40b9-a757-6419de4836d5',1700534269687,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8116d826-05ea-4e90-ba26-011ab786de7e','{\"id\":\"8116d826-05ea-4e90-ba26-011ab786de7e\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('85c0c51d-25e9-44d5-b2d2-b5ecd301a759',1700534199297,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/1de5b8f3-931d-4ce7-bda0-427432898190','{\"id\":\"1de5b8f3-931d-4ce7-bda0-427432898190\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('89a05095-cf8f-4905-87c7-61895009b395',1700534301964,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/ws1','{\"id\":\"5cae315f-957c-41d5-9155-9bb7b955bb98\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8b867105-6f9e-4a2b-805f-7bfbb71551ee',1700534237595,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_organization-user-manager/composites','[{\"id\":\"f25e8587-db5d-4404-bacf-33f8380876a4\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"94aa7e81-2814-456d-ab87-a4f64345e23b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('8e5ed21c-700f-41a0-8044-82266d8d6ced',1700534199936,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_og-usr-mt','{\"id\":\"e2de53bc-34cf-4670-8561-1386c8bd5ffd\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8ed07843-0867-4c7a-b771-4774e66bb0b6',1700534331238,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_og-ws-role-usr','{\"id\":\"5e6ffd03-16a8-42c0-ab46-8461123b09c8\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8f84f7a5-da63-4347-b258-d6cd66069f40',1700534330824,'org5','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/431e75fb-37ba-4b29-9bb0-1c8caad5690b/client-secret','{\"type\":\"secret\",\"value\":\"udoyTBgbajITKTfmCfggvmjeJQ3HjJFa\"}',NULL,'CLIENT'),('91749d3b-6189-4fce-b8e7-33fa83361a54',1700534200646,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_organization-user-role-manager/composites','[{\"id\":\"e2de53bc-34cf-4670-8561-1386c8bd5ffd\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"89aa3f6f-c3ab-4d92-a0ba-e091efeec11f\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"407fe76e-fb6c-4baa-a818-b72f20ce8189\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('91d3d28e-17da-495d-b92e-99f207b987a3',1700534280449,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_ws2-admin/composites','[{\"id\":\"694ceae1-18dc-49db-8816-405166110947\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"7796b73c-1df5-43a9-97ab-24da090db75f\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('91ea3e67-a4e3-4391-98da-c2f3764ba89d',1700534310568,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/ws2','{\"id\":\"cacb980f-9dbc-432a-b9e6-d9190db7f831\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('92618ef5-d6b4-446e-9eff-b95a9a7adf63',1700534224535,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/ws3','{\"id\":\"950ad99b-32e2-4257-b0ec-19c6c820bd51\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('95325b91-fd57-4a9f-a647-85c3b1f04048',1700534258997,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_ws3-admin','{\"id\":\"0a7c3458-50a0-421f-a6e6-89759991bed5\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('96450390-b5bc-4243-86e4-5c413926b27f',1700534270588,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[\"UPDATE_PROFILE\"]}',NULL,'USER'),('973d0be9-8261-40ce-824c-428ecfe46f20',1700534299459,'org4','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/client-secret','{\"type\":\"secret\",\"value\":\"OCRxwXBms6vWumTJOSGZUFpqD3KM9BQJ\"}',NULL,'CLIENT'),('982d9d03-525e-40a8-9241-996a85f28219',1700534199523,'org1','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/client-secret','{\"type\":\"secret\",\"value\":\"5DGCk4lRA0p7rB3oevStVSOYU1TwCWWm\"}',NULL,'CLIENT'),('98ab7a55-8f0d-4887-a2de-009af3ae0ab0',1700534206582,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/ws1','{\"id\":\"f38cc6dc-87c2-457d-9395-c9ac962b906c\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('99724323-033c-4cb8-b920-1b8d4f3d4bc3',1700534299752,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-ws-mt','{\"id\":\"98c245da-d0a5-4193-99ec-d9078261ba28\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9a406bbd-2a2b-42f6-8e30-589cac304a03',1700534237380,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_organization-manager/composites','[{\"id\":\"08fdf655-f027-4e04-a0ea-94e8184c0340\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"1f2a9c6c-b527-4216-ac5d-4415e3e876cc\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"3050c013-6753-41a6-9b8e-462548191508\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"676cde1e-5817-4d19-a6ac-22056ece2963\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"f25e8587-db5d-4404-bacf-33f8380876a4\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"e73102b4-fc0d-45c9-b8c0-1c5be067d832\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"94aa7e81-2814-456d-ab87-a4f64345e23b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}},{\"id\":\"2de3beac-faa3-439d-93c2-68212f86445c\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('9ab019d9-ea50-489d-9007-281a72bc0f24',1700534206727,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','users/dbaf8376-fb3d-49d8-8c25-3f29a12a3160/role-mappings/clients/498fc338-cab0-4248-86e6-bc4321b81af5','[{\"id\":\"0784f974-32a7-4ad2-b360-da5426daee66\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"498fc338-cab0-4248-86e6-bc4321b81af5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('9b7fc6eb-6087-4a39-908e-f4c058baaf70',1700534299530,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/91fd74c7-1fbb-410a-83c4-b19d280c4878','{\"id\":\"91fd74c7-1fbb-410a-83c4-b19d280c4878\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('9b9bdd0d-b759-482f-9eb0-4f1820b47d8b',1700534206686,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_ws1-admin/composites','[{\"id\":\"f38cc6dc-87c2-457d-9395-c9ac962b906c\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a87a2845-d06c-4379-9be5-39f6fa35b5bc\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('9e144a73-dd8e-4650-ba2d-32d385e9bf41',1700534236004,'org2','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/client-secret','{\"type\":\"secret\",\"value\":\"8am6HztM2EA6fL1Ic5vxaJ8NNEyOvZP7\"}',NULL,'CLIENT'),('9ffb626a-52a5-4f1c-ac3a-c226d71b8535',1700534332921,'org5','UPDATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12',NULL,'{\"enabled\":true}',NULL,'REALM'),('a0242d06-1410-4136-81ad-a12ccb495c7c',1700534215847,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','users/dbaf8376-fb3d-49d8-8c25-3f29a12a3160/role-mappings/clients/498fc338-cab0-4248-86e6-bc4321b81af5','[{\"id\":\"5cc83723-b1eb-49ca-aadc-d48465ddff86\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"498fc338-cab0-4248-86e6-bc4321b81af5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('a09308cd-852f-4971-8369-d3bfb0e0559e',1700534330636,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f','{\"id\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('a21ed93f-7e99-4f6c-b8a3-d03ccd357105',1700534288965,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/ws3','{\"id\":\"15f93b96-e3ef-4df3-8da4-f3b1f94b9252\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a22f8878-368e-43f1-8ba7-a0e6f55196d1',1700534350784,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_ws3-admin','{\"id\":\"0076d9d4-8fc2-41f3-aef0-20f45bbbd6b2\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a3493967-4c8f-40ba-8fb3-9749ca7eccf4',1700534200763,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_organization-user-manager/composites','[{\"id\":\"e2de53bc-34cf-4670-8561-1386c8bd5ffd\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}},{\"id\":\"407fe76e-fb6c-4baa-a818-b72f20ce8189\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('a3ceb29f-1e32-448e-bbd8-1dffd6f32300',1700534330777,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/431e75fb-37ba-4b29-9bb0-1c8caad5690b','{\"id\":\"431e75fb-37ba-4b29-9bb0-1c8caad5690b\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('a4512bfc-0fce-4852-a73d-05573e58db44',1700534236394,'org2','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/client-secret','{\"type\":\"secret\",\"value\":\"91PNgcbHrYMraztMx1GM8jGfTbHcWiw6\"}',NULL,'CLIENT'),('a570c3fd-2cb9-409f-a3f4-a65c8a904006',1700534300517,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/2c1da741-01aa-4dae-824d-3a5e986699fe','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[\"UPDATE_PROFILE\"]}',NULL,'USER'),('aa238759-368b-4ad4-bd23-24df18b9225b',1700534330697,'org5','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/client-secret','{\"type\":\"secret\",\"value\":\"wT7a3OBtVJWumA30yej77q8Bfd2jgLSI\"}',NULL,'CLIENT'),('aabb0583-71f4-4bac-afc1-46a9f2275982',1700534269725,'org3','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8116d826-05ea-4e90-ba26-011ab786de7e/client-secret','{\"type\":\"secret\",\"value\":\"zx2oJuu7QlputloTQMMS9tfxLPLFfooU\"}',NULL,'CLIENT'),('ac5dd21a-5477-46f2-8e9b-0e9585403ff1',1700534237982,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/17985b46-8512-429d-a393-68ed7e707bf0','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[\"UPDATE_PROFILE\"]}',NULL,'USER'),('ae1458ab-2c31-46a5-aa85-2c7a4e5960a2',1700534236119,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/c7a3d742-da9e-420e-a8a7-eb2aa95aac83','{\"id\":\"c7a3d742-da9e-420e-a8a7-eb2aa95aac83\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('aecdd8ba-8ac8-4f3f-8da4-9c0c82af2e19',1700534206252,'org1','UPDATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12',NULL,'{\"enabled\":true}',NULL,'REALM'),('b05474bf-c84f-4a30-b807-f678a4471638',1700534300196,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_organization-user-manager/composites','[{\"id\":\"026a58cc-7ae9-47cb-ab9d-cc22a0a26b75\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('b4b91f9a-289c-4bbb-b3ad-5e2f9bafac9a',1700534224747,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','users/dbaf8376-fb3d-49d8-8c25-3f29a12a3160/role-mappings/clients/498fc338-cab0-4248-86e6-bc4321b81af5','[{\"id\":\"935203ce-86a2-466f-a946-d292cc7a7313\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"498fc338-cab0-4248-86e6-bc4321b81af5\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b64de64e-9692-4c97-825f-7ec11bf75e90',1700534239244,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/ws1','{\"id\":\"7c08b9f2-77f6-4448-845b-4fab9c56f2a9\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b7b3dc8f-020c-49fb-a997-08e984baaa84',1700534238200,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/17985b46-8512-429d-a393-68ed7e707bf0/role-mappings/clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d','[{\"id\":\"77e5467f-5446-43c9-9628-1dfcf45d6186\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"60799ffb-f3e9-4588-9f1f-08775cc0ee2d\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b7bc7b17-ddda-4550-85b2-648d86fbf836',1700534237406,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_organization-user-role-manager','{\"id\":\"dd1ec34a-e672-4eac-917e-610f672f133d\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('bbff9623-fdea-49f6-b816-f104fe5eedde',1700534236879,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-ws-role-mt','{\"id\":\"e73102b4-fc0d-45c9-b8c0-1c5be067d832\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bc41a5b6-4fa6-40b3-a115-361a883b754e',1700534331673,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_organization-user-manager','{\"id\":\"5baa1626-6bca-45a7-8bda-7bfefe8a9298\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('bca48dd2-aef1-499d-8065-7549372f0fae',1700534342069,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_ws2-admin','{\"id\":\"d58c0547-9edc-43a0-90a8-6ef23f870730\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('bd2072b3-1dc6-4f60-952e-f0dfa9d5b1f1',1700534302012,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_ws1-admin','{\"id\":\"fdab3c8f-5944-409f-a311-4c49d4672888\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c02f15ce-b543-4940-97db-0dca88f951fb',1700534333273,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_ws1-admin/composites','[{\"id\":\"dd4230e0-ae9f-4e77-bc54-2ec1f08c1a7f\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a4207752-be71-4c0c-877e-25a5559f66fb\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('c0486d74-5f94-4d5b-8bfa-8021ac8dd39a',1700534302091,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_ws1-admin/composites','[{\"id\":\"5cae315f-957c-41d5-9155-9bb7b955bb98\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"aba93f08-21e9-48dd-8d1b-908af9847081\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('c4cffcfc-5228-4d1b-a443-d50481f7a529',1700534248559,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/ws2','{\"id\":\"1833f8dc-3043-4e1d-826a-de0f28b85159\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c587e9e8-a1f7-45fb-992d-0f327bbb54b4',1700534280377,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_ws2-admin','{\"id\":\"7796b73c-1df5-43a9-97ab-24da090db75f\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c6a17d89-3a17-4d81-8072-91ea1fdf7ee4',1700534236829,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-usr-mt','{\"id\":\"f25e8587-db5d-4404-bacf-33f8380876a4\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c7d448d6-4e3f-4aa9-bb94-aa4cddd2b4a8',1700534350763,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/ws3','{\"id\":\"c0b9f084-497d-45a5-8b02-b30a4f880e01\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c8993d22-de79-4680-aa40-7307f2118775',1700534200910,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/0c7db272-75ef-47e0-acf3-2810ca6ddd47/role-mappings/clients/b132e832-a5b3-4182-8fb8-b565ad083bb1','[{\"id\":\"cee5241b-12de-456a-abe3-7f9a0d250637\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"b132e832-a5b3-4182-8fb8-b565ad083bb1\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('c923f841-f07f-4826-a420-210f6ab89e1d',1700534280354,'org3','CREATE','org3','938bd1fc-040b-4721-b954-063f4fa33739','7be80e73-5862-4205-a35f-59078264ea6d','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/ws2','{\"id\":\"694ceae1-18dc-49db-8816-405166110947\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cacf1e80-145c-457a-aca3-85a794034c37',1700534299645,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-upd','{\"id\":\"a1a1a34d-4c01-44cb-ab68-c693be6daec1\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d1176032-c306-4b51-9ed8-71ad6b68bc5d',1700534215705,'org1','CREATE','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','0c7db272-75ef-47e0-acf3-2810ca6ddd47','172.20.0.12','clients/2e20a65f-d2b0-4ec5-ba1d-603797d78bd6/roles/_ws2-admin','{\"id\":\"bd71a142-3ea3-4aa0-bc94-0997777be7fc\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d147a178-758c-48d7-af8d-add199520cdc',1700534248617,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_ws2-admin','{\"id\":\"12824a67-64b9-442b-b619-5f5f0508b87e\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d1e50047-961b-423a-bcea-d1f3d5560d4c',1700534310689,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','users/2c1da741-01aa-4dae-824d-3a5e986699fe/role-mappings/clients/576651bb-ff24-48e9-bfa7-4285938bf1da','[{\"id\":\"ebdf628f-b58b-45c4-ad3e-55ed1dafe24b\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"576651bb-ff24-48e9-bfa7-4285938bf1da\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('d20f9822-a596-4e41-b3e2-fc7a26760801',1700534201230,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/dbaf8376-fb3d-49d8-8c25-3f29a12a3160/role-mappings/clients/498fc338-cab0-4248-86e6-bc4321b81af5','[{\"id\":\"e5483f14-5855-4976-bfac-8fecab1f610c\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"498fc338-cab0-4248-86e6-bc4321b81af5\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('d37ccb2a-2c20-48c7-bdbc-182124fe702d',1700534237097,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/60799ffb-f3e9-4588-9f1f-08775cc0ee2d/roles/_organization-manager','{\"id\":\"77e5467f-5446-43c9-9628-1dfcf45d6186\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('d3dd27f6-9e6d-4c31-bfe9-375c9142402e',1700534236770,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-role-usr','{\"id\":\"3050c013-6753-41a6-9b8e-462548191508\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d534ca2d-0e60-4da4-9597-fe80d3c6d056',1700534300102,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_organization-user-role-manager/composites','[{\"id\":\"026a58cc-7ae9-47cb-ab9d-cc22a0a26b75\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"4a958966-45bd-45fd-b287-a242bc3f2b07\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}},{\"id\":\"9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"e84e1e63-e0fe-4a05-ba92-a52078fe8291\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('d817a34e-ddbb-499a-a02c-69b8e75f4a40',1700534300350,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/10f1218e-f6ee-41d2-b78a-8c3614c699ad/role-mappings/clients/53aaf740-7deb-46f9-9b83-ae2827f90224','[{\"id\":\"e53cd3df-d461-4d89-b66b-7b8f793c5e61\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"53aaf740-7deb-46f9-9b83-ae2827f90224\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('d836fbcf-f035-4722-affe-4f38769c5386',1700534299676,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/_og-role-usr','{\"id\":\"a07848e4-1169-4bc5-8715-4378e63bbf8a\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d8faf54e-bb20-43de-9575-123e3fd7232d',1700534200165,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/498fc338-cab0-4248-86e6-bc4321b81af5/roles/_organization-manager','{\"id\":\"e5483f14-5855-4976-bfac-8fecab1f610c\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('db492c3a-a182-46ad-be6d-ff1d659e87db',1700534319427,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_ws3-admin','{\"id\":\"ade84f9c-dcad-4e90-8c74-e1242250f845\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('dc41254e-81b7-4c24-b992-367d128281e0',1700534239028,'org2','UPDATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12',NULL,'{\"enabled\":true}',NULL,'REALM'),('dd08de9e-bc3d-4963-bf3e-332a9fdc6bdd',1700534299096,'org4','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/client-secret','{\"type\":\"secret\",\"value\":\"PogXPNtMwrpNBmscF0pvk725OrXyYS4n\"}',NULL,'CLIENT'),('df8b286b-4076-4529-a18a-d99ea8eeb396',1700534330932,'org5','ACTION','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/client-secret','{\"type\":\"secret\",\"value\":\"yevqasCcGPUJCA85FAwtZtzzx0Yeg9zl\"}',NULL,'CLIENT'),('e398092c-a3b5-4106-8337-8e48d60437a4',1700534319389,'org4','CREATE','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291','10f1218e-f6ee-41d2-b78a-8c3614c699ad','172.20.0.12','clients/e84e1e63-e0fe-4a05-ba92-a52078fe8291/roles/ws3','{\"id\":\"3d298263-3811-4faa-87a7-f02549d5d58c\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e455014b-5a89-46e8-b5f6-5c69178b6b5a',1700534331881,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/fe6fa754-db80-4589-8276-6e1ab8ffda4e/role-mappings/clients/82fa0823-5eec-43cb-bd64-332723030562','[{\"id\":\"88054132-1593-4402-a348-d2cbced7b3a2\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"82fa0823-5eec-43cb-bd64-332723030562\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('e4ed07f1-d8ee-42f7-ae1d-c42c9dfaa2de',1700534270205,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/8e1aa514-01d1-4d71-b984-1f533b776280/roles/_organization-user-role-manager','{\"id\":\"99a3f609-6874-4fe6-8ec2-aa5409b7afaf\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e7a09e77-2873-4510-a24e-ee3b1fd1f48a',1700534236986,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-ws-mt','{\"id\":\"2de3beac-faa3-439d-93c2-68212f86445c\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e7d7a1b2-929b-4ea2-8621-a7cb6feacd38',1700534333174,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/ws1','{\"id\":\"dd4230e0-ae9f-4e77-bc54-2ec1f08c1a7f\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('eb0cec0c-029a-4ab2-bb09-d18d21911d6b',1700534248589,'org2','CREATE','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9ca1940b-1b3e-4f96-a15e-f012535b4437','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_ws2-admin','{\"id\":\"6aad9a0d-d85d-4a49-8067-70bb3909fdfc\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('eb25f0e8-2475-47d9-8826-52dc69c2590d',1700534333191,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/c2dd697e-cba2-4eea-8cbf-f415be94f49f/roles/_ws1-admin','{\"id\":\"a4207752-be71-4c0c-877e-25a5559f66fb\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('eb5d5b05-ce66-4802-9a4d-8f5fab9d1837',1700534237827,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/9ca1940b-1b3e-4f96-a15e-f012535b4437/role-mappings/clients/23e85250-5e60-44bf-8e59-318f8b913cfb','[{\"id\":\"744b41bc-4a5d-4c5c-9321-3aa74555ee22\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"23e85250-5e60-44bf-8e59-318f8b913cfb\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('ebd86a00-b38d-4b02-a900-88552884dfe9',1700534199597,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/84cdd591-bea5-4aea-ba75-13df79253868','{\"id\":\"84cdd591-bea5-4aea-ba75-13df79253868\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('ee75a81b-6c02-48eb-8355-81394d7ae418',1700534331763,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_organization-user-manager/composites','[{\"id\":\"5b23ea0f-0607-4aeb-86a8-f7581c63de92\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}},{\"id\":\"5e6ffd03-16a8-42c0-ab46-8461123b09c8\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('f0121b2c-9b20-46d2-bc43-fae77934d53d',1700534236795,'org2','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/7716f2a9-f3f0-4de4-8b5f-44f748ab9282/roles/_og-usage','{\"id\":\"676cde1e-5817-4d19-a6ac-22056ece2963\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f135e69a-7d2a-443d-9dc6-7f8a5192a9e8',1700534269796,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-own-mt','{\"id\":\"e41eb562-3a52-4d1a-941d-0670856e4d74\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f264d37d-8811-4a66-8e35-2314ce3be533',1700534342255,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','users/2bca6b04-7c55-4409-9dd3-eda27e0ed385/role-mappings/clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','[{\"id\":\"a0fbba49-a06a-4271-a936-0665f51337bf\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f2d70151-8c4f-47b3-b2f9-0b280ed7ed62',1700534269897,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-ws-role-usr','{\"id\":\"02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f2f9524f-4f54-4019-af6a-52b7fdd3293c',1700534201085,'org1','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/dbaf8376-fb3d-49d8-8c25-3f29a12a3160','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[\"UPDATE_PROFILE\"]}',NULL,'USER'),('f36f395d-4009-4f38-937e-8ef64292f448',1700534332032,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/2bca6b04-7c55-4409-9dd3-eda27e0ed385','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[\"UPDATE_PROFILE\"]}',NULL,'USER'),('f54e2cb6-d830-4671-83a3-5a6ebc27c92f',1700534350884,'org5','CREATE','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f','fe6fa754-db80-4589-8276-6e1ab8ffda4e','172.20.0.12','clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1/roles/_ws3-admin/composites','[{\"id\":\"c0b9f084-497d-45a5-8b02-b30a4f880e01\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"0076d9d4-8fc2-41f3-aef0-20f45bbbd6b2\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c2dd697e-cba2-4eea-8cbf-f415be94f49f\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('f85c00c6-e265-44df-96a1-e9efb2b87a70',1700534270449,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/7be80e73-5862-4205-a35f-59078264ea6d/role-mappings/clients/dee8bb53-aeda-49c9-b1e1-6b6369f92a01','[{\"id\":\"05fe66dc-390d-4dcb-bed1-91d5ee0bd05c\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"dee8bb53-aeda-49c9-b1e1-6b6369f92a01\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('f9fe4e41-77cb-4aba-9731-631a5e7e13d2',1700534299792,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_organization-manager','{\"id\":\"b080ee8b-14a9-42bf-af4f-f6abac6a92cf\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('fa46cfa0-e1f1-4859-9f42-a53a4390a83a',1700534300144,'org4','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/576651bb-ff24-48e9-bfa7-4285938bf1da/roles/_organization-user-manager','{\"id\":\"623385aa-0230-4564-bcc4-91fecad85ddf\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('fa9657b6-4931-4103-90a9-9e2744a53dba',1700534332142,'org5','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','users/2bca6b04-7c55-4409-9dd3-eda27e0ed385/role-mappings/clients/2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','[{\"id\":\"563acf43-45df-450f-8842-58cecd2550ba\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fcc806bb-771f-4879-ae1e-38d1943bd334',1700534269446,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/9b54a677-f83d-4176-9bd1-6bc428f78077','{\"id\":\"9b54a677-f83d-4176-9bd1-6bc428f78077\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('ff641586-392b-4435-accf-7bee36ab02f8',1700534269946,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739/roles/_og-ws-mt','{\"id\":\"5c5edd41-e2e7-4d49-9788-28e8840cf305\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fff282b9-cd90-4db5-8506-e86484b4954b',1700534269300,'org3','CREATE','a8877546-78d2-4601-8f66-d697f8ccfc92','a8f8eae8-605c-4796-8598-dd02e8ff03f3','f9913dd3-690d-4b66-8d01-a0863131b713','172.20.0.12','clients/938bd1fc-040b-4721-b954-063f4fa33739','{\"id\":\"938bd1fc-040b-4721-b954-063f4fa33739\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0102a2ef-cc5d-40e0-b520-0ea238fac651',NULL,NULL,'org1','90fdaef3-cedf-4d77-a1ec-9183dc954842',1,40,_binary '','ec056b62-5e07-4b9b-ab57-d1643e4952fc',NULL),('02d2c598-694b-497c-8d56-e503ea1e6c2a',NULL,'idp-review-profile','a8877546-78d2-4601-8f66-d697f8ccfc92','fd3d325f-abae-46ec-9e8d-e734064d86a5',0,10,_binary '\0',NULL,'d267ecdd-997f-4c6d-9d78-c6357740215a'),('02f52b66-5c19-4677-963c-f9b4bc871d94',NULL,'client-secret-jwt','org3','e996790a-3fab-43be-905e-2fcf128ddc4d',2,30,_binary '\0',NULL,NULL),('041180d9-094a-466b-aa2b-1a59aaada171',NULL,'reset-otp','org1','ec056b62-5e07-4b9b-ab57-d1643e4952fc',0,20,_binary '\0',NULL,NULL),('0582352b-ec88-4347-842f-ca9ff54c1207',NULL,'basic-auth-otp','org2','0276ef83-23c9-4e27-add3-57ffd4bab324',3,20,_binary '\0',NULL,NULL),('062f26b6-d944-4065-ac51-9e0f255c70a7',NULL,'conditional-user-configured','a8877546-78d2-4601-8f66-d697f8ccfc92','82f0b304-057f-435e-9a75-7d8c40b07538',0,10,_binary '\0',NULL,NULL),('065418c5-9ae7-4545-869d-edc7544d4d54',NULL,'auth-cookie','a8877546-78d2-4601-8f66-d697f8ccfc92','e5723d2b-c5e4-4796-a9d2-1bc6982380af',2,10,_binary '\0',NULL,NULL),('071a2253-ecf2-44b7-bccb-e509eccc016d',NULL,'basic-auth-otp','org5','1555a1d8-f17e-4f59-84e5-d05f6c1ee82a',3,20,_binary '\0',NULL,NULL),('0a01f781-164a-4662-9d66-ea92cda5ca6f',NULL,'client-jwt','org2','91f6c8cd-d0ca-4db4-b781-40a2aab081ba',2,20,_binary '\0',NULL,NULL),('0a0bef73-0868-41d4-80d3-70be85e969cb',NULL,'no-cookie-redirect','org3','ed37c2da-d9a7-4918-935f-3baca8198072',0,10,_binary '\0',NULL,NULL),('0b4f9ed3-a885-4fe7-b216-53bc20d19da3',NULL,'registration-recaptcha-action','org5','2cb6df1e-a0b1-491b-b250-d4fba2c07f32',3,60,_binary '\0',NULL,NULL),('0d3380f9-442c-472e-bf9b-597c3d15e69d',NULL,'docker-http-basic-authenticator','org1','be8e2ee2-5cc0-4f3a-912b-005d5f80dff9',0,10,_binary '\0',NULL,NULL),('0d34f05f-b235-4967-8470-38b697b231f8',NULL,'idp-confirm-link','org4','025a61d6-2d80-4db5-b371-c54f4f5f030f',0,10,_binary '\0',NULL,NULL),('0d48e6bb-5fb4-416a-be4f-4874b7cdafb6',NULL,'auth-spnego','a8877546-78d2-4601-8f66-d697f8ccfc92','e5723d2b-c5e4-4796-a9d2-1bc6982380af',3,20,_binary '\0',NULL,NULL),('1001371f-f161-4832-b725-6d61b21ddfcf',NULL,'registration-password-action','org4','1d4ec9f9-544d-4b0f-90d2-bb0816a08828',0,50,_binary '\0',NULL,NULL),('118db797-63f3-40a0-b1d4-93be8b6b4d44',NULL,'registration-user-creation','org2','d0ed3495-aae8-442a-9898-eebc611ffd4c',0,20,_binary '\0',NULL,NULL),('11b69998-8493-4aec-8fdd-629ec5eb59ee',NULL,NULL,'org3','a9009955-edf5-4def-bdf2-bd588d925630',1,20,_binary '','64a5b62b-6d39-4426-9964-56ab2ca7dfc3',NULL),('1333995a-739b-46e3-aee4-0a8336896463',NULL,NULL,'org2','bc884640-75ba-4cb0-8d7e-d8acd940ffa2',0,20,_binary '','8986ee88-dbcb-41c0-bea4-7ec500675b80',NULL),('13809fff-1abf-401b-9de4-d25acd00d7a6',NULL,'auth-spnego','org1','86cf0fa7-d3ae-4339-b8df-b7d26ab209fd',3,30,_binary '\0',NULL,NULL),('14d8f3fc-ba8d-4d9d-897f-a97a9dc83167',NULL,'auth-username-password-form','org1','8fc7b3ab-b001-4a79-a263-5e90f1969b34',0,10,_binary '\0',NULL,NULL),('14e557ab-28eb-4087-b4c5-e14db13d70e5',NULL,NULL,'org2','b8508d95-2f48-42de-8706-f1d8ce839899',1,30,_binary '','e0a28eee-7026-4547-a3be-359a3648a255',NULL),('15c4ba2c-21c7-4336-a1f6-f5e8af285832',NULL,'idp-username-password-form','org5','1afbd24c-a7f6-4c08-99ab-99ccf270ea56',0,10,_binary '\0',NULL,NULL),('1a09b316-2631-4516-bba4-e81a3296d4c6',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','c2644ff5-7c18-4b69-829d-a05f27a13d8e',0,20,_binary '','d7abd05b-37ce-46c3-a610-1b0a9f947e91',NULL),('1a794bc9-6a96-4ee3-bb55-9f913bebad8a',NULL,'conditional-user-configured','a8877546-78d2-4601-8f66-d697f8ccfc92','bd8dd26d-3af4-4db6-9729-4a801634eea5',0,10,_binary '\0',NULL,NULL),('1ac3ba46-5d57-417f-86ae-e51f4bd6b3a5',NULL,NULL,'org1','a5b92d9c-fbaf-4665-9281-455b3b9b4d22',0,20,_binary '','c49b3d6e-f17e-4f99-836d-e3cf0e502ab1',NULL),('1b9a5451-4c93-4615-bc27-19406a0aa89d',NULL,'auth-cookie','org3','cc4d6866-e31b-46dd-a92c-177725fa77e0',2,10,_binary '\0',NULL,NULL),('1bac2e8c-d180-4385-b4fc-3c769ba9dab4',NULL,NULL,'org5','83c190a0-fba5-441e-a3b9-aeeaf861a52d',1,30,_binary '','dd05dbfe-cec9-483c-8c07-afb553b0aa7f',NULL),('1bec2d74-4b84-4dbc-86b5-02d551e5feaa',NULL,'client-secret-jwt','org4','5ed25393-4bf0-4251-adb2-c907ce65e8cb',2,30,_binary '\0',NULL,NULL),('1cdc4b50-b256-4087-8dca-24b158c93fec',NULL,'idp-create-user-if-unique','a8877546-78d2-4601-8f66-d697f8ccfc92','ec8e6d81-aa14-4950-ae3c-ed25f514a677',2,10,_binary '\0',NULL,'c557dd35-9e64-4fd5-a978-50a0e1b5880a'),('1d51c538-f137-44cb-9b28-7d9c414030a7',NULL,'auth-otp-form','org3','eb847cc7-a482-48c9-9367-0b04b9d305fc',0,20,_binary '\0',NULL,NULL),('1eb1944c-77fe-4ee6-ab76-e021fcc75c89',NULL,'idp-username-password-form','a8877546-78d2-4601-8f66-d697f8ccfc92','17195c21-b978-4f94-88b6-f17316dd0401',0,10,_binary '\0',NULL,NULL),('1f0710e9-4c26-4e89-8391-2cb82fbd48a7',NULL,'registration-page-form','org4','c352a557-e6af-4c38-8c1e-c202ce213ca9',0,10,_binary '','1d4ec9f9-544d-4b0f-90d2-bb0816a08828',NULL),('1f1bba04-dc7a-41a2-9e29-b74f5894c05f',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','fd3d325f-abae-46ec-9e8d-e734064d86a5',0,20,_binary '','ec8e6d81-aa14-4950-ae3c-ed25f514a677',NULL),('1fc08dc5-33b1-4ce7-926f-cf6e63f8ff10',NULL,'client-x509','org2','91f6c8cd-d0ca-4db4-b781-40a2aab081ba',2,40,_binary '\0',NULL,NULL),('1fd4b5d9-0816-40e2-b3cf-c4a86e5485f2',NULL,'reset-credentials-choose-user','org5','48fc7826-e231-4395-90be-561bcb914096',0,10,_binary '\0',NULL,NULL),('219a0510-621e-4b15-b002-9922a5e61858',NULL,NULL,'org3','ed37c2da-d9a7-4918-935f-3baca8198072',0,20,_binary '','0d6febd6-463b-45d3-94d4-b2f136802bcd',NULL),('23d81520-af30-44ad-8617-0753b1862723',NULL,'auth-spnego','org2','0276ef83-23c9-4e27-add3-57ffd4bab324',3,30,_binary '\0',NULL,NULL),('2416c043-5af2-4566-a3be-050831febda4',NULL,'registration-user-creation','org5','2cb6df1e-a0b1-491b-b250-d4fba2c07f32',0,20,_binary '\0',NULL,NULL),('249ff10a-1f9a-42b4-985c-d561455135f7',NULL,NULL,'org1','b447d8df-57ad-4c83-91ed-0489282242d4',2,20,_binary '','1e978387-71bd-4eb9-9209-fe029a2b3f9c',NULL),('24c6cddd-3f98-4f10-963e-afcc0f6ffe5c',NULL,'idp-username-password-form','org1','1e978387-71bd-4eb9-9209-fe029a2b3f9c',0,10,_binary '\0',NULL,NULL),('27f0b07a-dc8c-4ed8-9230-94c7283500e1',NULL,'conditional-user-configured','org1','c283722a-b98b-4759-b3c8-8e26ccc555a5',0,10,_binary '\0',NULL,NULL),('281de9de-f823-4f4d-a09b-fc278ac656ad',NULL,NULL,'org5','1afbd24c-a7f6-4c08-99ab-99ccf270ea56',1,20,_binary '','12078a89-62aa-4499-9da0-8c25ae5f141e',NULL),('28c7534e-9a55-4687-8a3d-a22f4266b6f8',NULL,'idp-create-user-if-unique','org4','d7ace0dd-2772-46d8-a5e5-7d3e8c228141',2,10,_binary '\0',NULL,'77278327-ddf8-446f-976c-4111d3bf8f18'),('293cddd8-27ea-475b-a268-7778f505bdce',NULL,'registration-recaptcha-action','a8877546-78d2-4601-8f66-d697f8ccfc92','28656c50-5bff-4f88-86ce-4bade26b42a7',3,60,_binary '\0',NULL,NULL),('2a3c49e6-0955-4f50-82fc-067f97b01cb2',NULL,'direct-grant-validate-otp','org2','e0a28eee-7026-4547-a3be-359a3648a255',0,20,_binary '\0',NULL,NULL),('2a53269e-42f6-43d2-9963-78c80402a0fd',NULL,'registration-recaptcha-action','org4','1d4ec9f9-544d-4b0f-90d2-bb0816a08828',3,60,_binary '\0',NULL,NULL),('2b70e11d-81ca-48f8-9ab5-6f15fe388d48',NULL,'registration-page-form','org3','63694787-6af7-4b0b-9cfd-7da74a01c905',0,10,_binary '','77058000-8ae1-4ba4-9109-4aab149f04f9',NULL),('2beedc37-f2f4-456f-b0d2-394f09c09f04',NULL,'direct-grant-validate-password','a8877546-78d2-4601-8f66-d697f8ccfc92','895deb31-422c-43ea-9dd4-32bc5d6b2580',0,20,_binary '\0',NULL,NULL),('2dbff7fb-afde-476f-9458-5d72b24d855e',NULL,'client-x509','a8877546-78d2-4601-8f66-d697f8ccfc92','8432467c-defb-4a33-888d-826370c03377',2,40,_binary '\0',NULL,NULL),('2fc65658-626a-4caa-8dff-2efe6ea27741',NULL,NULL,'org2','1a2f8750-0081-4ca3-936c-1d7e4f9415f3',2,30,_binary '','c0454bbe-1089-4ba2-ac33-3c20e3876c28',NULL),('300fc6b0-28b3-4f47-8852-653ba3ecdb2c',NULL,'http-basic-authenticator','org3','eb45356c-c799-4d29-975e-cb9766d242ad',0,10,_binary '\0',NULL,NULL),('30a69844-8607-45c6-b0e6-77e2784b567a',NULL,'http-basic-authenticator','org1','c9a06991-b604-496d-8020-f0c8c56ea70b',0,10,_binary '\0',NULL,NULL),('30dc3c46-8494-471d-a356-5ebd9fd0ad11',NULL,'client-x509','org5','1a28f11d-8f40-4b3b-80c5-4cd0d3c78566',2,40,_binary '\0',NULL,NULL),('310d294e-c5c4-4d77-ab69-ad814ff74cf3',NULL,'auth-otp-form','org4','e0258ada-816e-4ab4-acc4-3626f8098460',0,20,_binary '\0',NULL,NULL),('32aadf61-37bb-4829-9228-fef08d1eb92d',NULL,'auth-spnego','org4','b8e3a1da-b405-4cc3-9f5c-07dc894208fd',3,30,_binary '\0',NULL,NULL),('32d916c6-3480-47e5-ae97-885a2f617526',NULL,NULL,'org4','5eab5d3b-baf1-467c-abec-d75a29f11374',0,20,_binary '','b8e3a1da-b405-4cc3-9f5c-07dc894208fd',NULL),('337a4739-4564-47d1-88f5-221ec46ac25e',NULL,'auth-spnego','org5','2072f6f0-2206-450b-9564-60ac31836592',3,20,_binary '\0',NULL,NULL),('37c7137e-199c-47ba-bb7f-bdfc97519966',NULL,'direct-grant-validate-otp','org5','dd05dbfe-cec9-483c-8c07-afb553b0aa7f',0,20,_binary '\0',NULL,NULL),('382aa7cf-5394-4ae6-83cd-8274c791c1c4',NULL,'docker-http-basic-authenticator','org4','a4dd9d9b-236e-49f7-af6a-216fb8f836f1',0,10,_binary '\0',NULL,NULL),('38a21720-34b3-4a72-9e5d-c78f0396a0f9',NULL,'reset-credentials-choose-user','org4','f477aa4e-777c-49b8-a19a-f1f9fd0b06d1',0,10,_binary '\0',NULL,NULL),('3bb9d0da-9cc1-4d61-816e-768db16b712f',NULL,NULL,'org5','e52bc2c5-9ae8-4896-a7fa-3bc998ddbe71',2,20,_binary '','031953e5-3345-4a67-8bfd-99e92c7417d2',NULL),('3c5bd2ac-2110-4c38-875f-a0b87bde6343',NULL,'direct-grant-validate-username','a8877546-78d2-4601-8f66-d697f8ccfc92','895deb31-422c-43ea-9dd4-32bc5d6b2580',0,10,_binary '\0',NULL,NULL),('3c8db331-d5a0-48b9-a162-12aefb0db82c',NULL,'auth-otp-form','org2','f6245934-09fe-4a79-8712-b55903c978e7',0,20,_binary '\0',NULL,NULL),('3d882bfb-453c-48f3-8f54-3b41fc3aac01',NULL,'client-secret-jwt','org1','af61eb67-da11-4721-9394-6041f0f9d3b8',2,30,_binary '\0',NULL,NULL),('3e26f0f3-3b09-4715-b052-c7e95841d794',NULL,'direct-grant-validate-password','org5','83c190a0-fba5-441e-a3b9-aeeaf861a52d',0,20,_binary '\0',NULL,NULL),('3e4baf3b-eda8-478d-b9db-3aedc62cb274',NULL,NULL,'org4','025a61d6-2d80-4db5-b371-c54f4f5f030f',0,20,_binary '','a0b3f44f-d017-44bf-9e8a-3ce42da04db0',NULL),('402aceaf-21a9-48b8-8cd2-09f0846e0370',NULL,'client-secret','org4','5ed25393-4bf0-4251-adb2-c907ce65e8cb',2,10,_binary '\0',NULL,NULL),('414b86d2-5058-4c11-b2de-4408c7b86a72',NULL,'auth-username-password-form','org5','731e3d9d-32a8-4594-a22b-d42a3e52a5b0',0,10,_binary '\0',NULL,NULL),('4311edd5-e278-46b4-ac96-b893b9f3c4eb',NULL,'conditional-user-configured','org5','dd05dbfe-cec9-483c-8c07-afb553b0aa7f',0,10,_binary '\0',NULL,NULL),('44cc89e1-32f8-411b-8e5c-ccf30c1ca124',NULL,'client-jwt','org3','e996790a-3fab-43be-905e-2fcf128ddc4d',2,20,_binary '\0',NULL,NULL),('45185233-4271-412f-87e6-88a575098297',NULL,'conditional-user-configured','org3','861208be-9381-4918-86fc-fa1631ccca86',0,10,_binary '\0',NULL,NULL),('4791a898-fd61-4ff0-8e30-b08252ea32c4',NULL,'registration-user-creation','org1','d3298e5c-a7dc-4630-824d-20bb3e376e9d',0,20,_binary '\0',NULL,NULL),('49467a64-bddd-4286-a6bc-0f55239b907c',NULL,'client-x509','org4','5ed25393-4bf0-4251-adb2-c907ce65e8cb',2,40,_binary '\0',NULL,NULL),('496b51fa-c1d9-4113-a550-988877ea39d6',NULL,NULL,'org2','7a1b9004-23fa-4098-8564-950f31f3b2da',0,20,_binary '','0276ef83-23c9-4e27-add3-57ffd4bab324',NULL),('4a6f2385-5ddf-4845-bca2-5a5abfb1f0ed',NULL,'auth-otp-form','org1','9ef3f22b-8067-4de0-8c2b-6de3cf8f9561',0,20,_binary '\0',NULL,NULL),('4b60ebe6-6030-4cb5-ac82-9110fe16f72b',NULL,NULL,'org4','a0b3f44f-d017-44bf-9e8a-3ce42da04db0',2,20,_binary '','4ea951d9-79da-4428-9d5f-3eaa72565876',NULL),('4d4694d4-c20a-45a4-939e-25530fdb9469',NULL,'conditional-user-configured','org3','64a5b62b-6d39-4426-9964-56ab2ca7dfc3',0,10,_binary '\0',NULL,NULL),('518e4593-d077-421a-9cc3-fc7542c1852a',NULL,NULL,'org3','05941521-bbe6-426e-b446-4ac6ca66641a',2,20,_binary '','7be8c562-cdec-4e1a-bc9d-f3e1a186c4cd',NULL),('524365b7-f325-478f-b36f-24b5dbebeefc',NULL,'registration-user-creation','a8877546-78d2-4601-8f66-d697f8ccfc92','28656c50-5bff-4f88-86ce-4bade26b42a7',0,20,_binary '\0',NULL,NULL),('54144b97-7155-4d5b-a967-7ccb889e9efb',NULL,'auth-username-password-form','org2','c0454bbe-1089-4ba2-ac33-3c20e3876c28',0,10,_binary '\0',NULL,NULL),('545f225c-472f-48db-a249-1bde28125c50',NULL,'direct-grant-validate-username','org4','1d8a3894-ca87-405f-bc60-742e65baef08',0,10,_binary '\0',NULL,NULL),('552a739f-e8c9-474f-86f9-da88d9fdcaf8',NULL,'http-basic-authenticator','a8877546-78d2-4601-8f66-d697f8ccfc92','044f0f8a-af42-49a9-be6e-d8716b321ce7',0,10,_binary '\0',NULL,NULL),('56123f33-bdee-4404-984d-95d3c847c820',NULL,'reset-password','a8877546-78d2-4601-8f66-d697f8ccfc92','d082c940-4417-418f-994c-c07f76625a47',0,30,_binary '\0',NULL,NULL),('5642559d-572e-4fce-9e94-da4d97e3363a',NULL,'registration-password-action','org5','2cb6df1e-a0b1-491b-b250-d4fba2c07f32',0,50,_binary '\0',NULL,NULL),('569d20ca-357d-43ca-9946-30e6fcdbbaa7',NULL,'idp-username-password-form','org4','4ea951d9-79da-4428-9d5f-3eaa72565876',0,10,_binary '\0',NULL,NULL),('56adda67-a269-4629-8c3a-8d2c52120b89',NULL,'basic-auth-otp','org4','b8e3a1da-b405-4cc3-9f5c-07dc894208fd',3,20,_binary '\0',NULL,NULL),('599abbe7-a68a-4890-bccb-28991b6b53bd',NULL,'direct-grant-validate-username','org2','b8508d95-2f48-42de-8706-f1d8ce839899',0,10,_binary '\0',NULL,NULL),('5a9a1776-db21-4c76-8e6f-60f0b7502aa3',NULL,'basic-auth','org2','0276ef83-23c9-4e27-add3-57ffd4bab324',0,10,_binary '\0',NULL,NULL),('5add1a28-6f89-461a-8832-c5c55a952d4f',NULL,'auth-username-password-form','a8877546-78d2-4601-8f66-d697f8ccfc92','eaf1f18a-b03b-41d3-8d2d-41961926bef3',0,10,_binary '\0',NULL,NULL),('5b4af5e0-cda8-43ac-a5a8-b4229288831c',NULL,'auth-otp-form','org1','9522de50-0b61-466b-b845-96007b942349',0,20,_binary '\0',NULL,NULL),('5cf18b2b-a1e5-4030-b7fa-4662600a27ca',NULL,NULL,'org1','5124f66b-ecd4-4baa-878d-8b8d4400f917',2,30,_binary '','8fc7b3ab-b001-4a79-a263-5e90f1969b34',NULL),('5de19c0b-b93c-4f33-8eaa-2072a36ee144',NULL,'identity-provider-redirector','org5','2072f6f0-2206-450b-9564-60ac31836592',2,25,_binary '\0',NULL,NULL),('5e697f2b-7401-469c-8cc0-be2fe396333b',NULL,'client-jwt','org4','5ed25393-4bf0-4251-adb2-c907ce65e8cb',2,20,_binary '\0',NULL,NULL),('5e85ad23-4338-42cf-92fd-f55d89a77e9d',NULL,'client-secret-jwt','org2','91f6c8cd-d0ca-4db4-b781-40a2aab081ba',2,30,_binary '\0',NULL,NULL),('600d1639-4145-432e-ad65-134d874e8a96',NULL,'conditional-user-configured','org2','e0a28eee-7026-4547-a3be-359a3648a255',0,10,_binary '\0',NULL,NULL),('613b5f1f-7261-42a2-83ca-7035c8958ed1',NULL,'reset-password','org4','f477aa4e-777c-49b8-a19a-f1f9fd0b06d1',0,30,_binary '\0',NULL,NULL),('618d46f3-2ea5-4047-979d-1d838e411754',NULL,'direct-grant-validate-otp','a8877546-78d2-4601-8f66-d697f8ccfc92','efe52150-7f7d-4a77-935f-6e2c0749eeb6',0,20,_binary '\0',NULL,NULL),('66b48291-db57-49cc-b9b6-707870fa16d5',NULL,NULL,'org2','8986ee88-dbcb-41c0-bea4-7ec500675b80',2,20,_binary '','e5a180a2-7680-4f8a-84a2-8498c082107a',NULL),('6745da62-4aab-45cd-8926-4532a1452b5f',NULL,'conditional-user-configured','org5','12078a89-62aa-4499-9da0-8c25ae5f141e',0,10,_binary '\0',NULL,NULL),('67d49153-d75a-4f3a-9b1d-fb0d21a5ef56',NULL,'idp-email-verification','org4','a0b3f44f-d017-44bf-9e8a-3ce42da04db0',2,10,_binary '\0',NULL,NULL),('6887ef02-b074-4dc8-942c-dc9c0f44d5fc',NULL,'idp-email-verification','org2','8986ee88-dbcb-41c0-bea4-7ec500675b80',2,10,_binary '\0',NULL,NULL),('6955f6d0-e217-46f5-a445-885d6d82b371',NULL,'client-jwt','org5','1a28f11d-8f40-4b3b-80c5-4cd0d3c78566',2,20,_binary '\0',NULL,NULL),('698a6e22-2731-41c4-bd30-48fbdee48e1f',NULL,'conditional-user-configured','org5','ce3e3566-12db-4e02-89dd-28ee78995440',0,10,_binary '\0',NULL,NULL),('698b314c-3c07-4bc3-842c-28f1bf7074d3',NULL,'auth-username-password-form','org4','ffa6632c-3396-4dc9-af79-82186c9528ab',0,10,_binary '\0',NULL,NULL),('69dff0d0-a35c-43a1-93c8-cc3c25732967',NULL,'client-secret','org3','e996790a-3fab-43be-905e-2fcf128ddc4d',2,10,_binary '\0',NULL,NULL),('6aad54d6-dadc-414e-9e82-10b3851a7450',NULL,'docker-http-basic-authenticator','org5','bf7e7b18-1fe6-4732-b28d-7381dd9cd5c7',0,10,_binary '\0',NULL,NULL),('6b28596b-2fb5-441b-ba10-8039aec78d9e',NULL,'reset-credential-email','a8877546-78d2-4601-8f66-d697f8ccfc92','d082c940-4417-418f-994c-c07f76625a47',0,20,_binary '\0',NULL,NULL),('6b80652d-18e6-4625-b696-ee2c803b8450',NULL,'idp-confirm-link','a8877546-78d2-4601-8f66-d697f8ccfc92','c2644ff5-7c18-4b69-829d-a05f27a13d8e',0,10,_binary '\0',NULL,NULL),('6b89b9b1-1710-457f-96dd-34b2f60bedaa',NULL,NULL,'org4','4ea951d9-79da-4428-9d5f-3eaa72565876',1,20,_binary '','96bf97b4-f905-4eaa-b0aa-765d126d38e4',NULL),('6c9b2aaa-8bcf-4d8f-a66b-6cf4b2e1c7f6',NULL,'direct-grant-validate-otp','org1','c283722a-b98b-4759-b3c8-8e26ccc555a5',0,20,_binary '\0',NULL,NULL),('6cfdaddc-41ca-4cc3-8504-1e3a8e85872b',NULL,'conditional-user-configured','org4','e0258ada-816e-4ab4-acc4-3626f8098460',0,10,_binary '\0',NULL,NULL),('6d568505-c97c-4790-a316-a303e15370f4',NULL,NULL,'org5','48fc7826-e231-4395-90be-561bcb914096',1,40,_binary '','ce3e3566-12db-4e02-89dd-28ee78995440',NULL),('6e5f5935-4b84-44aa-b2ea-afdedd0ef9f4',NULL,'idp-email-verification','a8877546-78d2-4601-8f66-d697f8ccfc92','d7abd05b-37ce-46c3-a610-1b0a9f947e91',2,10,_binary '\0',NULL,NULL),('6f88b6f8-e884-4b56-9d55-da4dec55ba24',NULL,'reset-credentials-choose-user','org1','90fdaef3-cedf-4d77-a1ec-9183dc954842',0,10,_binary '\0',NULL,NULL),('70ff0b46-4660-4d31-80c3-b9be463e4060',NULL,'registration-page-form','a8877546-78d2-4601-8f66-d697f8ccfc92','99dcc0c2-8a9c-4903-921f-f8bf2eab6dcb',0,10,_binary '','28656c50-5bff-4f88-86ce-4bade26b42a7',NULL),('72398368-61a5-4a43-9d00-593fe8912d51',NULL,'conditional-user-configured','org2','f8095dfd-32b7-4d6c-8adb-d56b1bcfd250',0,10,_binary '\0',NULL,NULL),('734024cb-14c6-4b20-bfd0-f16623e033db',NULL,'idp-username-password-form','org2','e5a180a2-7680-4f8a-84a2-8498c082107a',0,10,_binary '\0',NULL,NULL),('73f2a3e1-4365-4d77-b7ff-bbe512bdbd30',NULL,'basic-auth-otp','org3','0d6febd6-463b-45d3-94d4-b2f136802bcd',3,20,_binary '\0',NULL,NULL),('73fa9086-77dd-45d6-a466-7829c7f62ec8',NULL,'client-jwt','a8877546-78d2-4601-8f66-d697f8ccfc92','8432467c-defb-4a33-888d-826370c03377',2,20,_binary '\0',NULL,NULL),('7456fa5b-0705-4350-9243-3a717e960271',NULL,'direct-grant-validate-password','org2','b8508d95-2f48-42de-8706-f1d8ce839899',0,20,_binary '\0',NULL,NULL),('746e139a-cf93-413a-ab31-c85d436870e9',NULL,'identity-provider-redirector','org1','5124f66b-ecd4-4baa-878d-8b8d4400f917',2,25,_binary '\0',NULL,NULL),('74711226-ce6e-436b-a367-df9897775afc',NULL,'idp-username-password-form','org3','7be8c562-cdec-4e1a-bc9d-f3e1a186c4cd',0,10,_binary '\0',NULL,NULL),('75244581-36d7-4977-900a-31e734c9ba20',NULL,'client-secret','org5','1a28f11d-8f40-4b3b-80c5-4cd0d3c78566',2,10,_binary '\0',NULL,NULL),('75445a4a-87c5-46f8-8929-2cb0d7898124',NULL,'registration-profile-action','org3','77058000-8ae1-4ba4-9109-4aab149f04f9',0,40,_binary '\0',NULL,NULL),('76494a92-7b60-4730-85d6-9a2d0372770f',NULL,'idp-email-verification','org5','a733fb2d-3f0e-4b3c-bdbb-5f211a61049f',2,10,_binary '\0',NULL,NULL),('7743da8c-a170-4fc0-9e2b-245420168b8d',NULL,NULL,'org5','7377be46-18a9-4369-a3ec-288dcb6264f8',0,20,_binary '','e52bc2c5-9ae8-4896-a7fa-3bc998ddbe71',NULL),('77e8fb7f-aee3-47cc-83b7-267173f4c349',NULL,'reset-credentials-choose-user','org2','652fe730-4da3-46a3-b44a-aaa366be34d9',0,10,_binary '\0',NULL,NULL),('79dce5b1-28d3-44ad-bd85-ebf004938cde',NULL,'idp-confirm-link','org2','bc884640-75ba-4cb0-8d7e-d8acd940ffa2',0,10,_binary '\0',NULL,NULL),('7a587c82-8b78-4023-922c-b601586df7cb',NULL,NULL,'org2','6ee2c15a-3009-41b3-b9cf-cf9a89f16f95',0,20,_binary '','86ae610f-236e-43af-8c6f-ffdc2a4eefa3',NULL),('7e449460-27e7-4913-bb17-c10c4acd43f2',NULL,'conditional-user-configured','org5','a3b0d05d-7f52-499c-b06a-fb67b8233bde',0,10,_binary '\0',NULL,NULL),('7e81bc58-852d-4911-9d9f-a1d09f181d46',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','895deb31-422c-43ea-9dd4-32bc5d6b2580',1,30,_binary '','efe52150-7f7d-4a77-935f-6e2c0749eeb6',NULL),('7ef5be44-47f2-4cd4-a067-f67ddedaf3ad',NULL,NULL,'org2','652fe730-4da3-46a3-b44a-aaa366be34d9',1,40,_binary '','f8095dfd-32b7-4d6c-8adb-d56b1bcfd250',NULL),('7f907343-c4ea-4489-a992-11c9d103bad6',NULL,'idp-review-profile','org5','7377be46-18a9-4369-a3ec-288dcb6264f8',0,10,_binary '\0',NULL,'ad7b5a4e-f3f4-4ad7-a6d2-b5877e482a81'),('80208eac-9a93-490a-8d82-e195ac4e5199',NULL,'reset-password','org1','90fdaef3-cedf-4d77-a1ec-9183dc954842',0,30,_binary '\0',NULL,NULL),('80759e3c-2421-4121-ae1c-c46b7aea5c2f',NULL,'client-secret-jwt','org5','1a28f11d-8f40-4b3b-80c5-4cd0d3c78566',2,30,_binary '\0',NULL,NULL),('820e3907-0447-40cc-baa3-3871ba5d4154',NULL,NULL,'org1','8fc7b3ab-b001-4a79-a263-5e90f1969b34',1,20,_binary '','9ef3f22b-8067-4de0-8c2b-6de3cf8f9561',NULL),('8218498d-474c-4b7a-93f1-ed10b665065d',NULL,NULL,'org3','cc4d6866-e31b-46dd-a92c-177725fa77e0',2,30,_binary '','a9009955-edf5-4def-bdf2-bd588d925630',NULL),('82632e54-0bcc-4e67-be3a-a78772ddbd93',NULL,'auth-otp-form','org3','64a5b62b-6d39-4426-9964-56ab2ca7dfc3',0,20,_binary '\0',NULL,NULL),('827c9246-11a3-48df-9ddd-95becb1e6047',NULL,'registration-page-form','org2','e1e10c6f-4a43-48e7-9d40-83090d59b99e',0,10,_binary '','d0ed3495-aae8-442a-9898-eebc611ffd4c',NULL),('82b075bb-f005-4977-9023-94690c32fac3',NULL,NULL,'org4','ffa6632c-3396-4dc9-af79-82186c9528ab',1,20,_binary '','e0258ada-816e-4ab4-acc4-3626f8098460',NULL),('837c1390-45ce-4eb7-8bd8-a381a465c9db',NULL,'reset-password','org5','48fc7826-e231-4395-90be-561bcb914096',0,30,_binary '\0',NULL,NULL),('841ffa6a-aa26-42ce-907c-3582f101c0b1',NULL,'registration-user-creation','org3','77058000-8ae1-4ba4-9109-4aab149f04f9',0,20,_binary '\0',NULL,NULL),('84817cd4-4e56-4c7a-b4dc-f2b767d0983b',NULL,'idp-create-user-if-unique','org2','86ae610f-236e-43af-8c6f-ffdc2a4eefa3',2,10,_binary '\0',NULL,'2219deea-d0cd-405e-a042-aca9c7bcbce7'),('850c379e-b36b-47c0-b9e7-74fc657adcdf',NULL,'registration-page-form','org1','ba5d6ab3-f2b8-4511-aca5-3e30d07cbd51',0,10,_binary '','d3298e5c-a7dc-4630-824d-20bb3e376e9d',NULL),('85261fd7-8b77-4822-b23e-d6e1f47e27e7',NULL,'auth-otp-form','org2','8aa2ae37-86c5-4037-b7c5-796720eae6ec',0,20,_binary '\0',NULL,NULL),('85e9a878-59e2-4b0e-810a-bfc795d63946',NULL,'conditional-user-configured','org3','ec39e72c-2c62-4e21-aed0-6122e2291fe5',0,10,_binary '\0',NULL,NULL),('861384d3-a04f-40e7-a7a6-12656b69cbb7',NULL,'no-cookie-redirect','org2','7a1b9004-23fa-4098-8564-950f31f3b2da',0,10,_binary '\0',NULL,NULL),('86bb589e-738a-4412-b0f4-57267f9292ea',NULL,'http-basic-authenticator','org4','65cd9ed5-64d0-42c0-a199-59a9f771c8a0',0,10,_binary '\0',NULL,NULL),('870aee67-27db-45c4-973f-d9a7dedd17c1',NULL,'auth-cookie','org4','a4828e43-aa62-477f-813d-8f9ef667bd8f',2,10,_binary '\0',NULL,NULL),('881b7176-0dcc-4be5-b2de-661df2dd709d',NULL,'reset-credentials-choose-user','org3','b8b6f7b8-3f93-48cb-a539-6e1520b0677a',0,10,_binary '\0',NULL,NULL),('88c3ac01-00b0-48b2-924f-4d3e2395357a',NULL,'idp-confirm-link','org1','5a55137d-ce9d-4275-ac35-2293e228a474',0,10,_binary '\0',NULL,NULL),('8b1384d0-e4f0-47f5-81cb-a5a5ad4f7f52',NULL,'registration-user-creation','org4','1d4ec9f9-544d-4b0f-90d2-bb0816a08828',0,20,_binary '\0',NULL,NULL),('8b37281c-e1a8-493f-a926-918e6a2a9862',NULL,NULL,'org3','7be8c562-cdec-4e1a-bc9d-f3e1a186c4cd',1,20,_binary '','eb847cc7-a482-48c9-9367-0b04b9d305fc',NULL),('8ce0aa76-cc11-41a8-959c-ce9731190f8a',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','d7abd05b-37ce-46c3-a610-1b0a9f947e91',2,20,_binary '','17195c21-b978-4f94-88b6-f17316dd0401',NULL),('8e2f6b2f-7ae6-4530-b66a-4abadff3d8a4',NULL,'reset-credential-email','org3','b8b6f7b8-3f93-48cb-a539-6e1520b0677a',0,20,_binary '\0',NULL,NULL),('8f00bdb7-946e-4668-aff9-a835bc6059fe',NULL,'identity-provider-redirector','a8877546-78d2-4601-8f66-d697f8ccfc92','e5723d2b-c5e4-4796-a9d2-1bc6982380af',2,25,_binary '\0',NULL,NULL),('8f5dc91d-ac89-4bb5-b0ba-76dc62179c85',NULL,NULL,'org5','abfcdd7a-5659-4341-ad4d-31cd26276c9f',0,20,_binary '','1555a1d8-f17e-4f59-84e5-d05f6c1ee82a',NULL),('904ec3c6-498d-46d4-a2b9-f7cb74d7926d',NULL,NULL,'org3','99e610cd-0b84-4f41-8ae1-355b167e306a',0,20,_binary '','05941521-bbe6-426e-b446-4ac6ca66641a',NULL),('91346182-9d7c-4397-b339-ac21c838656d',NULL,'reset-credential-email','org1','90fdaef3-cedf-4d77-a1ec-9183dc954842',0,20,_binary '\0',NULL,NULL),('92202fa2-38a0-4813-a4e4-a1a31e97de9b',NULL,NULL,'org1','5a55137d-ce9d-4275-ac35-2293e228a474',0,20,_binary '','b447d8df-57ad-4c83-91ed-0489282242d4',NULL),('92886c3e-1219-4b8e-822b-e2e6523ac6e9',NULL,'no-cookie-redirect','org1','36c38e94-5655-45b0-bbb2-59f6e355ec8b',0,10,_binary '\0',NULL,NULL),('936f6049-0eaf-4baa-8c36-cc7702c42f34',NULL,'reset-password','org3','b8b6f7b8-3f93-48cb-a539-6e1520b0677a',0,30,_binary '\0',NULL,NULL),('94b0b0e0-b459-4bbb-8504-ebf7cf77e553',NULL,NULL,'org5','031953e5-3345-4a67-8bfd-99e92c7417d2',0,20,_binary '','a733fb2d-3f0e-4b3c-bdbb-5f211a61049f',NULL),('9613219c-ff14-4021-8bc8-207c348990fd',NULL,'basic-auth','org3','0d6febd6-463b-45d3-94d4-b2f136802bcd',0,10,_binary '\0',NULL,NULL),('961871fe-6b01-49ff-85c3-f3b2fd46cdc4',NULL,'auth-cookie','org5','2072f6f0-2206-450b-9564-60ac31836592',2,10,_binary '\0',NULL,NULL),('97523bcb-206d-4ba8-8483-9fc089df4eb3',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','d082c940-4417-418f-994c-c07f76625a47',1,40,_binary '','bd8dd26d-3af4-4db6-9729-4a801634eea5',NULL),('9996aa20-a001-48d7-ad37-4db09fbf270b',NULL,'auth-spnego','org1','5124f66b-ecd4-4baa-878d-8b8d4400f917',3,20,_binary '\0',NULL,NULL),('9ae6f2b4-606b-454b-9461-adcc73bb13a7',NULL,NULL,'org4','d7ace0dd-2772-46d8-a5e5-7d3e8c228141',2,20,_binary '','025a61d6-2d80-4db5-b371-c54f4f5f030f',NULL),('9b2777f5-c646-4595-9dfa-b698dc0daf59',NULL,NULL,'org2','e5a180a2-7680-4f8a-84a2-8498c082107a',1,20,_binary '','f6245934-09fe-4a79-8712-b55903c978e7',NULL),('9c0446bd-aa01-43a8-a7a4-7c44e40aff4d',NULL,NULL,'org4','a4828e43-aa62-477f-813d-8f9ef667bd8f',2,30,_binary '','ffa6632c-3396-4dc9-af79-82186c9528ab',NULL),('9d59fd32-6131-4220-a3c5-b6a7edf392f0',NULL,'auth-cookie','org1','5124f66b-ecd4-4baa-878d-8b8d4400f917',2,10,_binary '\0',NULL,NULL),('9fe93c43-b861-4641-83cd-7334a8862538',NULL,'client-secret','org2','91f6c8cd-d0ca-4db4-b781-40a2aab081ba',2,10,_binary '\0',NULL,NULL),('a0f1f73a-af0a-45b9-8347-792481634974',NULL,'docker-http-basic-authenticator','a8877546-78d2-4601-8f66-d697f8ccfc92','03551875-5296-4e9d-aef4-c6b0ef57eeea',0,10,_binary '\0',NULL,NULL),('a1e429fb-3a87-4462-ad42-ff0bb90a1158',NULL,'conditional-user-configured','org1','ec056b62-5e07-4b9b-ab57-d1643e4952fc',0,10,_binary '\0',NULL,NULL),('a2781983-68be-497c-a9c1-025607c34722',NULL,'direct-grant-validate-otp','org3','ec39e72c-2c62-4e21-aed0-6122e2291fe5',0,20,_binary '\0',NULL,NULL),('a33ec528-546c-4f7e-8fb5-4354d8e9bb34',NULL,'idp-email-verification','org1','b447d8df-57ad-4c83-91ed-0489282242d4',2,10,_binary '\0',NULL,NULL),('a57728c2-55a3-489f-9a3f-ab9fc54b607e',NULL,'reset-credentials-choose-user','a8877546-78d2-4601-8f66-d697f8ccfc92','d082c940-4417-418f-994c-c07f76625a47',0,10,_binary '\0',NULL,NULL),('a589a042-1815-4a78-8deb-76b65fcef2b8',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','17195c21-b978-4f94-88b6-f17316dd0401',1,20,_binary '','82f0b304-057f-435e-9a75-7d8c40b07538',NULL),('a6183990-6122-4b83-90aa-72f16c2cd21d',NULL,'reset-otp','org5','ce3e3566-12db-4e02-89dd-28ee78995440',0,20,_binary '\0',NULL,NULL),('a679e601-ca36-4588-8688-7abd75e0bd09',NULL,'auth-otp-form','org5','12078a89-62aa-4499-9da0-8c25ae5f141e',0,20,_binary '\0',NULL,NULL),('a77e8dba-56d1-4e48-9346-ff8824285f5d',NULL,NULL,'org5','731e3d9d-32a8-4594-a22b-d42a3e52a5b0',1,20,_binary '','a3b0d05d-7f52-499c-b06a-fb67b8233bde',NULL),('a7f2168d-baaa-46d8-ad80-0610642a871a',NULL,'registration-password-action','org2','d0ed3495-aae8-442a-9898-eebc611ffd4c',0,50,_binary '\0',NULL,NULL),('a81b3f48-0251-4626-ab8b-d355da4e6523',NULL,'http-basic-authenticator','org5','6a9b5912-ddb9-498d-bba5-e0d3826c803b',0,10,_binary '\0',NULL,NULL),('aa30a12b-8bc4-46a4-83d4-9332161fb0d6',NULL,'no-cookie-redirect','a8877546-78d2-4601-8f66-d697f8ccfc92','e964a337-91fe-4fe0-a8b7-6b99e079c41e',0,10,_binary '\0',NULL,NULL),('ab773a59-d2e7-4fd3-ac9e-e0bdc3944c51',NULL,NULL,'org4','f477aa4e-777c-49b8-a19a-f1f9fd0b06d1',1,40,_binary '','ccbee342-4221-4707-8dc8-0901c719ba83',NULL),('ac01ffa5-1a95-4b47-b1f8-98a0fc35faa1',NULL,'idp-email-verification','org3','05941521-bbe6-426e-b446-4ac6ca66641a',2,10,_binary '\0',NULL,NULL),('accb5a32-09fd-4f3c-a4e9-2ca3fb290da8',NULL,'registration-profile-action','org4','1d4ec9f9-544d-4b0f-90d2-bb0816a08828',0,40,_binary '\0',NULL,NULL),('ad21917f-b87e-438e-966f-41f1d07c8ef6',NULL,'auth-otp-form','org5','a3b0d05d-7f52-499c-b06a-fb67b8233bde',0,20,_binary '\0',NULL,NULL),('ae71c7d3-0672-45b5-b7a9-03f283d17227',NULL,'idp-confirm-link','org3','99e610cd-0b84-4f41-8ae1-355b167e306a',0,10,_binary '\0',NULL,NULL),('b088f275-0e99-4f3a-8d47-52d8e3eb8386',NULL,'registration-password-action','org3','77058000-8ae1-4ba4-9109-4aab149f04f9',0,50,_binary '\0',NULL,NULL),('b0a46917-5d82-4cf2-84d2-9b163428c10c',NULL,'auth-spnego','org4','a4828e43-aa62-477f-813d-8f9ef667bd8f',3,20,_binary '\0',NULL,NULL),('b0ed723f-3c9f-4524-b38b-d8c4e1eb03c6',NULL,'basic-auth','org1','86cf0fa7-d3ae-4339-b8df-b7d26ab209fd',0,10,_binary '\0',NULL,NULL),('b15429ab-794a-43eb-a11f-79e6bc19106a',NULL,NULL,'org2','c0454bbe-1089-4ba2-ac33-3c20e3876c28',1,20,_binary '','8aa2ae37-86c5-4037-b7c5-796720eae6ec',NULL),('b1dc0c59-7381-4bfd-9eb9-537af8f1cd1a',NULL,'idp-create-user-if-unique','org1','c49b3d6e-f17e-4f99-836d-e3cf0e502ab1',2,10,_binary '\0',NULL,'14526f7a-e494-49ca-b505-840819488851'),('b2e10a1b-de4d-4a37-b46c-8d7ce99203b3',NULL,NULL,'org1','437a964c-28f5-41e9-a0e6-e395ab788c0d',1,30,_binary '','c283722a-b98b-4759-b3c8-8e26ccc555a5',NULL),('b41253f2-b990-476a-811d-ecc842a1ccb9',NULL,'reset-otp','a8877546-78d2-4601-8f66-d697f8ccfc92','bd8dd26d-3af4-4db6-9729-4a801634eea5',0,20,_binary '\0',NULL,NULL),('b74c317c-0092-4c2d-887f-998f224968ad',NULL,'direct-grant-validate-password','org3','3a489046-eea9-4d50-8c8f-b5bbbeb7b05c',0,20,_binary '\0',NULL,NULL),('b9f06e57-8c8d-4834-be27-16b74fde80e7',NULL,'registration-profile-action','org5','2cb6df1e-a0b1-491b-b250-d4fba2c07f32',0,40,_binary '\0',NULL,NULL),('b9f3c5e5-0fd1-4888-8058-8233d7cea912',NULL,'auth-spnego','a8877546-78d2-4601-8f66-d697f8ccfc92','6631e96d-a5c6-4fa9-90f4-69a36ad6fb90',3,30,_binary '\0',NULL,NULL),('bb58c23d-a4ce-44f1-be57-fd1df8c5002b',NULL,'idp-confirm-link','org5','031953e5-3345-4a67-8bfd-99e92c7417d2',0,10,_binary '\0',NULL,NULL),('bb7ca58b-4c4c-4074-bf72-4bc1d9b9e860',NULL,'conditional-user-configured','org4','ccbee342-4221-4707-8dc8-0901c719ba83',0,10,_binary '\0',NULL,NULL),('bc0924c4-0b38-461f-ba05-8752bae1ef0b',NULL,'basic-auth','org5','1555a1d8-f17e-4f59-84e5-d05f6c1ee82a',0,10,_binary '\0',NULL,NULL),('bf94e32c-5ee0-46c3-a212-b955a171eac0',NULL,'idp-review-profile','org3','95c460c1-7627-48e5-84b4-cd7a932e3405',0,10,_binary '\0',NULL,'8ce9b4e8-9453-402c-9980-af2a6d4f123f'),('bfc3a239-5110-49b6-9ae6-8c232c50196b',NULL,'conditional-user-configured','org2','f6245934-09fe-4a79-8712-b55903c978e7',0,10,_binary '\0',NULL,NULL),('bff73694-ceee-4903-a7cb-ae58e7656223',NULL,'reset-credential-email','org5','48fc7826-e231-4395-90be-561bcb914096',0,20,_binary '\0',NULL,NULL),('c0479993-7077-4a46-8dac-28c751aa3328',NULL,NULL,'org1','36c38e94-5655-45b0-bbb2-59f6e355ec8b',0,20,_binary '','86cf0fa7-d3ae-4339-b8df-b7d26ab209fd',NULL),('c18c8e88-0793-4be8-9f9a-d238e9aae0c6',NULL,'conditional-user-configured','a8877546-78d2-4601-8f66-d697f8ccfc92','2542dd6f-ac5b-4311-8a4b-3aaae2a3cb12',0,10,_binary '\0',NULL,NULL),('c4c74545-aab7-45e3-9a2f-e39356cdc95c',NULL,'registration-recaptcha-action','org3','77058000-8ae1-4ba4-9109-4aab149f04f9',3,60,_binary '\0',NULL,NULL),('c514e549-426f-4d2f-972d-c29a82c06852',NULL,'no-cookie-redirect','org5','abfcdd7a-5659-4341-ad4d-31cd26276c9f',0,10,_binary '\0',NULL,NULL),('c56454da-d469-414a-9aa0-1aaffe5fcdb6',NULL,'idp-create-user-if-unique','org5','e52bc2c5-9ae8-4896-a7fa-3bc998ddbe71',2,10,_binary '\0',NULL,'035eda39-aa2d-494e-b8d9-002de4cfc8d3'),('c8947092-e7f4-4f4e-867a-893db13afa3e',NULL,'reset-credential-email','org2','652fe730-4da3-46a3-b44a-aaa366be34d9',0,20,_binary '\0',NULL,NULL),('c8d3cb15-fb23-4b4d-b209-8834447ce5ec',NULL,'registration-recaptcha-action','org1','d3298e5c-a7dc-4630-824d-20bb3e376e9d',3,60,_binary '\0',NULL,NULL),('c9a9e0f8-cee5-466a-b803-cad233ae20a3',NULL,'idp-review-profile','org1','a5b92d9c-fbaf-4665-9281-455b3b9b4d22',0,10,_binary '\0',NULL,'78b44b1d-4564-48b1-bc0a-e50191d92438'),('ca140549-bb47-4057-865f-555de2726ba2',NULL,'conditional-user-configured','org4','96bf97b4-f905-4eaa-b0aa-765d126d38e4',0,10,_binary '\0',NULL,NULL),('cad28841-8d5a-4876-bcf8-b4208adadb20',NULL,NULL,'org2','86ae610f-236e-43af-8c6f-ffdc2a4eefa3',2,20,_binary '','bc884640-75ba-4cb0-8d7e-d8acd940ffa2',NULL),('cb69b02d-bac3-4435-8782-b11fcc0fd5eb',NULL,'reset-otp','org4','ccbee342-4221-4707-8dc8-0901c719ba83',0,20,_binary '\0',NULL,NULL),('cb7ae2e1-25dc-4097-be26-d418a24c6fca',NULL,'conditional-user-configured','org1','9ef3f22b-8067-4de0-8c2b-6de3cf8f9561',0,10,_binary '\0',NULL,NULL),('cc5e2779-7be8-4038-a754-bf72f2534182',NULL,'basic-auth-otp','org1','86cf0fa7-d3ae-4339-b8df-b7d26ab209fd',3,20,_binary '\0',NULL,NULL),('cc630123-3f83-491b-9956-e96ffb584ca8',NULL,'registration-profile-action','org2','d0ed3495-aae8-442a-9898-eebc611ffd4c',0,40,_binary '\0',NULL,NULL),('cca89474-685d-466b-a20f-1f265d38e877',NULL,'auth-spnego','org3','cc4d6866-e31b-46dd-a92c-177725fa77e0',3,20,_binary '\0',NULL,NULL),('cd3ef4ba-0fee-457b-b2ce-d3b30d9a36d9',NULL,'no-cookie-redirect','org4','5eab5d3b-baf1-467c-abec-d75a29f11374',0,10,_binary '\0',NULL,NULL),('cd425fad-d57b-46e6-a016-7e348395464b',NULL,NULL,'org1','1e978387-71bd-4eb9-9209-fe029a2b3f9c',1,20,_binary '','9522de50-0b61-466b-b845-96007b942349',NULL),('ce19c80e-fcc7-4e4a-98d6-7019df2cc503',NULL,'auth-otp-form','a8877546-78d2-4601-8f66-d697f8ccfc92','2542dd6f-ac5b-4311-8a4b-3aaae2a3cb12',0,20,_binary '\0',NULL,NULL),('cf45fec1-0741-4c80-b378-3a455c3afc1e',NULL,'reset-password','org2','652fe730-4da3-46a3-b44a-aaa366be34d9',0,30,_binary '\0',NULL,NULL),('cfe25d11-d65f-4b17-a4b7-b141c73887a2',NULL,NULL,'org5','2072f6f0-2206-450b-9564-60ac31836592',2,30,_binary '','731e3d9d-32a8-4594-a22b-d42a3e52a5b0',NULL),('d1534f18-841e-49b0-a490-f5161cdd7880',NULL,'client-secret','a8877546-78d2-4601-8f66-d697f8ccfc92','8432467c-defb-4a33-888d-826370c03377',2,10,_binary '\0',NULL,NULL),('d23b4902-a23a-4675-8e3f-3451fe026ac9',NULL,'direct-grant-validate-username','org1','437a964c-28f5-41e9-a0e6-e395ab788c0d',0,10,_binary '\0',NULL,NULL),('d2f057b7-7e3f-4d77-80d8-adb5e565ba0f',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','ec8e6d81-aa14-4950-ae3c-ed25f514a677',2,20,_binary '','c2644ff5-7c18-4b69-829d-a05f27a13d8e',NULL),('d376b688-1035-4454-8a4b-be7425bd102d',NULL,'basic-auth-otp','a8877546-78d2-4601-8f66-d697f8ccfc92','6631e96d-a5c6-4fa9-90f4-69a36ad6fb90',3,20,_binary '\0',NULL,NULL),('d3cc148b-d09f-45ec-9e75-013d9ef2003b',NULL,'auth-spnego','org3','0d6febd6-463b-45d3-94d4-b2f136802bcd',3,30,_binary '\0',NULL,NULL),('d3d38142-6211-4fdb-a54e-dace51556002',NULL,'direct-grant-validate-password','org4','1d8a3894-ca87-405f-bc60-742e65baef08',0,20,_binary '\0',NULL,NULL),('d4015e81-fa88-4f51-9180-d76959908ca9',NULL,'conditional-user-configured','org1','9522de50-0b61-466b-b845-96007b942349',0,10,_binary '\0',NULL,NULL),('d42feaf0-5f1a-4c05-99bb-ac62c9b285a2',NULL,'docker-http-basic-authenticator','org2','56585575-d8d6-4a30-82e7-da7996f8abe5',0,10,_binary '\0',NULL,NULL),('d62f3050-8759-4ed6-ad86-1acca58be636',NULL,'docker-http-basic-authenticator','org3','7a78d3ed-0e83-46fd-9fe5-6b3b9abd2c0c',0,10,_binary '\0',NULL,NULL),('d96b5a12-09c6-4121-8f1c-5a61b72c391b',NULL,'direct-grant-validate-username','org3','3a489046-eea9-4d50-8c8f-b5bbbeb7b05c',0,10,_binary '\0',NULL,NULL),('dac1d557-091e-482a-afab-950a029737fe',NULL,NULL,'org4','634333bc-875f-456e-be70-4c001050b03a',0,20,_binary '','d7ace0dd-2772-46d8-a5e5-7d3e8c228141',NULL),('dae556ef-3553-46d6-ba55-1b6a7b22fa3d',NULL,'conditional-user-configured','org4','4e5081c2-46dc-48dd-a00d-90310dd6eeae',0,10,_binary '\0',NULL,NULL),('db65baf6-b006-419e-aac9-b381c558a18e',NULL,'auth-spnego','org5','1555a1d8-f17e-4f59-84e5-d05f6c1ee82a',3,30,_binary '\0',NULL,NULL),('db6aba12-d68b-49c0-b2ce-dcd8faac81d9',NULL,NULL,'org3','3a489046-eea9-4d50-8c8f-b5bbbeb7b05c',1,30,_binary '','ec39e72c-2c62-4e21-aed0-6122e2291fe5',NULL),('db9ceb5d-1c01-4101-ab0f-bff5adb68c79',NULL,NULL,'org3','1710e7b5-4f9e-489c-9f0d-c81a0dd13a41',2,20,_binary '','99e610cd-0b84-4f41-8ae1-355b167e306a',NULL),('dcb57af8-110f-4ae9-8205-ca4e68d78949',NULL,'auth-otp-form','org4','96bf97b4-f905-4eaa-b0aa-765d126d38e4',0,20,_binary '\0',NULL,NULL),('dd69330e-4b63-487f-aef6-dfc1b82680e0',NULL,NULL,'org3','b8b6f7b8-3f93-48cb-a539-6e1520b0677a',1,40,_binary '','861208be-9381-4918-86fc-fa1631ccca86',NULL),('e023d71f-ca66-401a-8858-df636410b480',NULL,'client-secret-jwt','a8877546-78d2-4601-8f66-d697f8ccfc92','8432467c-defb-4a33-888d-826370c03377',2,30,_binary '\0',NULL,NULL),('e10b038c-7814-40ea-b9e1-baa3caeb73b5',NULL,'reset-credential-email','org4','f477aa4e-777c-49b8-a19a-f1f9fd0b06d1',0,20,_binary '\0',NULL,NULL),('e1e4261a-9753-4902-980c-956c19b106f9',NULL,'direct-grant-validate-username','org5','83c190a0-fba5-441e-a3b9-aeeaf861a52d',0,10,_binary '\0',NULL,NULL),('e209d99c-825f-47d7-97b1-d01afd0d052a',NULL,'idp-review-profile','org4','634333bc-875f-456e-be70-4c001050b03a',0,10,_binary '\0',NULL,'c55b69da-5d74-4997-b5ae-c9f5ea5e091c'),('e2c00b14-c20f-4cb5-9217-dd36f4a3782f',NULL,'registration-password-action','a8877546-78d2-4601-8f66-d697f8ccfc92','28656c50-5bff-4f88-86ce-4bade26b42a7',0,50,_binary '\0',NULL,NULL),('e30ba99f-c928-433b-9bfc-442af9661f1d',NULL,'auth-otp-form','a8877546-78d2-4601-8f66-d697f8ccfc92','82f0b304-057f-435e-9a75-7d8c40b07538',0,20,_binary '\0',NULL,NULL),('e3e2c848-bd9d-407e-a81c-59b03ad6cc75',NULL,'auth-cookie','org2','1a2f8750-0081-4ca3-936c-1d7e4f9415f3',2,10,_binary '\0',NULL,NULL),('e4b3fed0-40b3-4cc6-81d0-3c1a09d2d941',NULL,'client-x509','org3','e996790a-3fab-43be-905e-2fcf128ddc4d',2,40,_binary '\0',NULL,NULL),('e4d7f815-ffc9-4d8c-947d-92dd1f4ffc92',NULL,'auth-username-password-form','org3','a9009955-edf5-4def-bdf2-bd588d925630',0,10,_binary '\0',NULL,NULL),('e53200a0-f505-4b52-a4ed-333eda2b80da',NULL,'direct-grant-validate-password','org1','437a964c-28f5-41e9-a0e6-e395ab788c0d',0,20,_binary '\0',NULL,NULL),('e5981659-7228-42e5-b7c0-afc6c9690fce',NULL,'basic-auth','org4','b8e3a1da-b405-4cc3-9f5c-07dc894208fd',0,10,_binary '\0',NULL,NULL),('e63e7821-3f02-4456-af2b-5709937c550d',NULL,'conditional-user-configured','org2','8aa2ae37-86c5-4037-b7c5-796720eae6ec',0,10,_binary '\0',NULL,NULL),('e7b823b5-2b04-47e9-b704-e43c1baaf87f',NULL,'conditional-user-configured','a8877546-78d2-4601-8f66-d697f8ccfc92','efe52150-7f7d-4a77-935f-6e2c0749eeb6',0,10,_binary '\0',NULL,NULL),('e998d71f-799e-40de-a318-d7db99d5d4a9',NULL,'registration-password-action','org1','d3298e5c-a7dc-4630-824d-20bb3e376e9d',0,50,_binary '\0',NULL,NULL),('e9cbb816-06a1-4136-aeba-9020a0e1a6f7',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','e964a337-91fe-4fe0-a8b7-6b99e079c41e',0,20,_binary '','6631e96d-a5c6-4fa9-90f4-69a36ad6fb90',NULL),('ea5c2d31-207d-4c36-b62d-0b6e8e8e8587',NULL,NULL,'org1','c49b3d6e-f17e-4f99-836d-e3cf0e502ab1',2,20,_binary '','5a55137d-ce9d-4275-ac35-2293e228a474',NULL),('eb46a8eb-12cb-4a59-9164-19ecf20c9609',NULL,'registration-page-form','org5','7b62e2d3-b82c-40bf-afdf-958125ddbfbd',0,10,_binary '','2cb6df1e-a0b1-491b-b250-d4fba2c07f32',NULL),('eba074e8-3626-4bcb-946b-899fe81b68f2',NULL,'idp-review-profile','org2','6ee2c15a-3009-41b3-b9cf-cf9a89f16f95',0,10,_binary '\0',NULL,'b529370a-2b4c-43b9-96f3-c2ad9332894a'),('eba3b78b-8ecc-423d-b56f-e95e74273ff3',NULL,'conditional-user-configured','org3','eb847cc7-a482-48c9-9367-0b04b9d305fc',0,10,_binary '\0',NULL,NULL),('eedc6991-3288-4be0-bf21-c34e58fbc0f0',NULL,'registration-profile-action','org1','d3298e5c-a7dc-4630-824d-20bb3e376e9d',0,40,_binary '\0',NULL,NULL),('efd194df-ce44-4bd1-9fdc-913bc7b8cdf4',NULL,'client-jwt','org1','af61eb67-da11-4721-9394-6041f0f9d3b8',2,20,_binary '\0',NULL,NULL),('f1b34267-c0a3-450b-8f59-07630f625b00',NULL,'registration-profile-action','a8877546-78d2-4601-8f66-d697f8ccfc92','28656c50-5bff-4f88-86ce-4bade26b42a7',0,40,_binary '\0',NULL,NULL),('f22e5470-3aff-4d61-b8c0-a97ff6b13c85',NULL,'identity-provider-redirector','org4','a4828e43-aa62-477f-813d-8f9ef667bd8f',2,25,_binary '\0',NULL,NULL),('f22febc3-0082-4cef-9582-49d8de2918ac',NULL,NULL,'org4','1d8a3894-ca87-405f-bc60-742e65baef08',1,30,_binary '','4e5081c2-46dc-48dd-a00d-90310dd6eeae',NULL),('f287307e-de43-4abf-a4f9-f73b84b33c74',NULL,'registration-recaptcha-action','org2','d0ed3495-aae8-442a-9898-eebc611ffd4c',3,60,_binary '\0',NULL,NULL),('f2cb61c8-3cab-4eda-b58f-33404cbe620c',NULL,'http-basic-authenticator','org2','47d6344a-e1b0-4e3c-bbe3-0c4bf73b6ec3',0,10,_binary '\0',NULL,NULL),('f31ab32d-37f8-465b-9871-488d6ccb8c87',NULL,'reset-otp','org3','861208be-9381-4918-86fc-fa1631ccca86',0,20,_binary '\0',NULL,NULL),('f3476758-745f-4df7-9647-c1307f106b1c',NULL,'client-secret','org1','af61eb67-da11-4721-9394-6041f0f9d3b8',2,10,_binary '\0',NULL,NULL),('f5242496-2aa6-41f8-8aa5-c7bd2578534b',NULL,'identity-provider-redirector','org3','cc4d6866-e31b-46dd-a92c-177725fa77e0',2,25,_binary '\0',NULL,NULL),('f5703f00-5b0e-4292-b350-2196569ccea5',NULL,'identity-provider-redirector','org2','1a2f8750-0081-4ca3-936c-1d7e4f9415f3',2,25,_binary '\0',NULL,NULL),('f690a26f-c5a9-4049-89e3-9602685d5f2f',NULL,'basic-auth','a8877546-78d2-4601-8f66-d697f8ccfc92','6631e96d-a5c6-4fa9-90f4-69a36ad6fb90',0,10,_binary '\0',NULL,NULL),('f769a14f-99ff-4f88-8195-efe335684b69',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','eaf1f18a-b03b-41d3-8d2d-41961926bef3',1,20,_binary '','2542dd6f-ac5b-4311-8a4b-3aaae2a3cb12',NULL),('f8851546-caf4-4dde-b71d-c80df0581101',NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','e5723d2b-c5e4-4796-a9d2-1bc6982380af',2,30,_binary '','eaf1f18a-b03b-41d3-8d2d-41961926bef3',NULL),('fa6a9f66-2ddb-4e01-8769-d28dc93523ad',NULL,NULL,'org5','a733fb2d-3f0e-4b3c-bdbb-5f211a61049f',2,20,_binary '','1afbd24c-a7f6-4c08-99ab-99ccf270ea56',NULL),('faefad54-40b5-4c92-ba8d-967f8b962187',NULL,'reset-otp','org2','f8095dfd-32b7-4d6c-8adb-d56b1bcfd250',0,20,_binary '\0',NULL,NULL),('fb8bb689-b249-4931-9d90-9c14bdba53b2',NULL,'client-x509','org1','af61eb67-da11-4721-9394-6041f0f9d3b8',2,40,_binary '\0',NULL,NULL),('fdfdb96a-3be7-4a85-a061-5ae1df6c73de',NULL,'idp-create-user-if-unique','org3','1710e7b5-4f9e-489c-9f0d-c81a0dd13a41',2,10,_binary '\0',NULL,'85f00f46-c46a-420c-a917-3f67fb5e7ca3'),('ff3d4bab-417d-4810-b6e8-b17cf17bb0fc',NULL,'auth-spnego','org2','1a2f8750-0081-4ca3-936c-1d7e4f9415f3',3,20,_binary '\0',NULL,NULL),('ffb38bf7-3799-40c0-a7b2-975a53dc9006',NULL,'direct-grant-validate-otp','org4','4e5081c2-46dc-48dd-a00d-90310dd6eeae',0,20,_binary '\0',NULL,NULL),('ffcffa70-81b9-4e57-bac0-18c763b9c283',NULL,NULL,'org3','95c460c1-7627-48e5-84b4-cd7a932e3405',0,20,_binary '','1710e7b5-4f9e-489c-9f0d-c81a0dd13a41',NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('025a61d6-2d80-4db5-b371-c54f4f5f030f','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',_binary '\0',_binary ''),('0276ef83-23c9-4e27-add3-57ffd4bab324','Authentication Options','Authentication options.','org2','basic-flow',_binary '\0',_binary ''),('031953e5-3345-4a67-8bfd-99e92c7417d2','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',_binary '\0',_binary ''),('03551875-5296-4e9d-aef4-c6b0ef57eeea','docker auth','Used by Docker clients to authenticate against the IDP','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('044f0f8a-af42-49a9-be6e-d8716b321ce7','saml ecp','SAML ECP Profile Authentication Flow','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('05941521-bbe6-426e-b446-4ac6ca66641a','Account verification options','Method with which to verity the existing account','org3','basic-flow',_binary '\0',_binary ''),('0d6febd6-463b-45d3-94d4-b2f136802bcd','Authentication Options','Authentication options.','org3','basic-flow',_binary '\0',_binary ''),('12078a89-62aa-4499-9da0-8c25ae5f141e','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',_binary '\0',_binary ''),('1555a1d8-f17e-4f59-84e5-d05f6c1ee82a','Authentication Options','Authentication options.','org5','basic-flow',_binary '\0',_binary ''),('1710e7b5-4f9e-489c-9f0d-c81a0dd13a41','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',_binary '\0',_binary ''),('17195c21-b978-4f94-88b6-f17316dd0401','Verify Existing Account by Re-authentication','Reauthentication of existing account','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('1a28f11d-8f40-4b3b-80c5-4cd0d3c78566','clients','Base authentication for clients','org5','client-flow',_binary '',_binary ''),('1a2f8750-0081-4ca3-936c-1d7e4f9415f3','browser','browser based authentication','org2','basic-flow',_binary '',_binary ''),('1afbd24c-a7f6-4c08-99ab-99ccf270ea56','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',_binary '\0',_binary ''),('1d4ec9f9-544d-4b0f-90d2-bb0816a08828','registration form','registration form','org4','form-flow',_binary '\0',_binary ''),('1d8a3894-ca87-405f-bc60-742e65baef08','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',_binary '',_binary ''),('1e978387-71bd-4eb9-9209-fe029a2b3f9c','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',_binary '\0',_binary ''),('2072f6f0-2206-450b-9564-60ac31836592','browser','browser based authentication','org5','basic-flow',_binary '',_binary ''),('2542dd6f-ac5b-4311-8a4b-3aaae2a3cb12','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('28656c50-5bff-4f88-86ce-4bade26b42a7','registration form','registration form','a8877546-78d2-4601-8f66-d697f8ccfc92','form-flow',_binary '\0',_binary ''),('2cb6df1e-a0b1-491b-b250-d4fba2c07f32','registration form','registration form','org5','form-flow',_binary '\0',_binary ''),('36c38e94-5655-45b0-bbb2-59f6e355ec8b','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org1','basic-flow',_binary '',_binary ''),('3a489046-eea9-4d50-8c8f-b5bbbeb7b05c','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',_binary '',_binary ''),('437a964c-28f5-41e9-a0e6-e395ab788c0d','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',_binary '',_binary ''),('47d6344a-e1b0-4e3c-bbe3-0c4bf73b6ec3','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',_binary '',_binary ''),('48fc7826-e231-4395-90be-561bcb914096','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',_binary '',_binary ''),('4e5081c2-46dc-48dd-a00d-90310dd6eeae','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',_binary '\0',_binary ''),('4ea951d9-79da-4428-9d5f-3eaa72565876','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',_binary '\0',_binary ''),('5124f66b-ecd4-4baa-878d-8b8d4400f917','browser','browser based authentication','org1','basic-flow',_binary '',_binary ''),('56585575-d8d6-4a30-82e7-da7996f8abe5','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',_binary '',_binary ''),('5a55137d-ce9d-4275-ac35-2293e228a474','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',_binary '\0',_binary ''),('5eab5d3b-baf1-467c-abec-d75a29f11374','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org4','basic-flow',_binary '',_binary ''),('5ed25393-4bf0-4251-adb2-c907ce65e8cb','clients','Base authentication for clients','org4','client-flow',_binary '',_binary ''),('634333bc-875f-456e-be70-4c001050b03a','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',_binary '',_binary ''),('63694787-6af7-4b0b-9cfd-7da74a01c905','registration','registration flow','org3','basic-flow',_binary '',_binary ''),('64a5b62b-6d39-4426-9964-56ab2ca7dfc3','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',_binary '\0',_binary ''),('652fe730-4da3-46a3-b44a-aaa366be34d9','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',_binary '',_binary ''),('65cd9ed5-64d0-42c0-a199-59a9f771c8a0','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',_binary '',_binary ''),('6631e96d-a5c6-4fa9-90f4-69a36ad6fb90','Authentication Options','Authentication options.','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('6a9b5912-ddb9-498d-bba5-e0d3826c803b','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',_binary '',_binary ''),('6ee2c15a-3009-41b3-b9cf-cf9a89f16f95','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',_binary '',_binary ''),('731e3d9d-32a8-4594-a22b-d42a3e52a5b0','forms','Username, password, otp and other auth forms.','org5','basic-flow',_binary '\0',_binary ''),('7377be46-18a9-4369-a3ec-288dcb6264f8','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',_binary '',_binary ''),('77058000-8ae1-4ba4-9109-4aab149f04f9','registration form','registration form','org3','form-flow',_binary '\0',_binary ''),('7a1b9004-23fa-4098-8564-950f31f3b2da','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org2','basic-flow',_binary '',_binary ''),('7a78d3ed-0e83-46fd-9fe5-6b3b9abd2c0c','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',_binary '',_binary ''),('7b62e2d3-b82c-40bf-afdf-958125ddbfbd','registration','registration flow','org5','basic-flow',_binary '',_binary ''),('7be8c562-cdec-4e1a-bc9d-f3e1a186c4cd','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',_binary '\0',_binary ''),('82f0b304-057f-435e-9a75-7d8c40b07538','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('83c190a0-fba5-441e-a3b9-aeeaf861a52d','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',_binary '',_binary ''),('8432467c-defb-4a33-888d-826370c03377','clients','Base authentication for clients','a8877546-78d2-4601-8f66-d697f8ccfc92','client-flow',_binary '',_binary ''),('861208be-9381-4918-86fc-fa1631ccca86','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',_binary '\0',_binary ''),('86ae610f-236e-43af-8c6f-ffdc2a4eefa3','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',_binary '\0',_binary ''),('86cf0fa7-d3ae-4339-b8df-b7d26ab209fd','Authentication Options','Authentication options.','org1','basic-flow',_binary '\0',_binary ''),('895deb31-422c-43ea-9dd4-32bc5d6b2580','direct grant','OpenID Connect Resource Owner Grant','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('8986ee88-dbcb-41c0-bea4-7ec500675b80','Account verification options','Method with which to verity the existing account','org2','basic-flow',_binary '\0',_binary ''),('8aa2ae37-86c5-4037-b7c5-796720eae6ec','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',_binary '\0',_binary ''),('8fc7b3ab-b001-4a79-a263-5e90f1969b34','forms','Username, password, otp and other auth forms.','org1','basic-flow',_binary '\0',_binary ''),('90fdaef3-cedf-4d77-a1ec-9183dc954842','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',_binary '',_binary ''),('91f6c8cd-d0ca-4db4-b781-40a2aab081ba','clients','Base authentication for clients','org2','client-flow',_binary '',_binary ''),('9522de50-0b61-466b-b845-96007b942349','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',_binary '\0',_binary ''),('95c460c1-7627-48e5-84b4-cd7a932e3405','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',_binary '',_binary ''),('96bf97b4-f905-4eaa-b0aa-765d126d38e4','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',_binary '\0',_binary ''),('99dcc0c2-8a9c-4903-921f-f8bf2eab6dcb','registration','registration flow','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('99e610cd-0b84-4f41-8ae1-355b167e306a','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',_binary '\0',_binary ''),('9ef3f22b-8067-4de0-8c2b-6de3cf8f9561','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',_binary '\0',_binary ''),('a0b3f44f-d017-44bf-9e8a-3ce42da04db0','Account verification options','Method with which to verity the existing account','org4','basic-flow',_binary '\0',_binary ''),('a3b0d05d-7f52-499c-b06a-fb67b8233bde','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',_binary '\0',_binary ''),('a4828e43-aa62-477f-813d-8f9ef667bd8f','browser','browser based authentication','org4','basic-flow',_binary '',_binary ''),('a4dd9d9b-236e-49f7-af6a-216fb8f836f1','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',_binary '',_binary ''),('a5b92d9c-fbaf-4665-9281-455b3b9b4d22','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',_binary '',_binary ''),('a733fb2d-3f0e-4b3c-bdbb-5f211a61049f','Account verification options','Method with which to verity the existing account','org5','basic-flow',_binary '\0',_binary ''),('a9009955-edf5-4def-bdf2-bd588d925630','forms','Username, password, otp and other auth forms.','org3','basic-flow',_binary '\0',_binary ''),('abfcdd7a-5659-4341-ad4d-31cd26276c9f','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org5','basic-flow',_binary '',_binary ''),('af61eb67-da11-4721-9394-6041f0f9d3b8','clients','Base authentication for clients','org1','client-flow',_binary '',_binary ''),('b447d8df-57ad-4c83-91ed-0489282242d4','Account verification options','Method with which to verity the existing account','org1','basic-flow',_binary '\0',_binary ''),('b8508d95-2f48-42de-8706-f1d8ce839899','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',_binary '',_binary ''),('b8b6f7b8-3f93-48cb-a539-6e1520b0677a','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',_binary '',_binary ''),('b8e3a1da-b405-4cc3-9f5c-07dc894208fd','Authentication Options','Authentication options.','org4','basic-flow',_binary '\0',_binary ''),('ba5d6ab3-f2b8-4511-aca5-3e30d07cbd51','registration','registration flow','org1','basic-flow',_binary '',_binary ''),('bc884640-75ba-4cb0-8d7e-d8acd940ffa2','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',_binary '\0',_binary ''),('bd8dd26d-3af4-4db6-9729-4a801634eea5','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('be8e2ee2-5cc0-4f3a-912b-005d5f80dff9','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',_binary '',_binary ''),('bf7e7b18-1fe6-4732-b28d-7381dd9cd5c7','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',_binary '',_binary ''),('c0454bbe-1089-4ba2-ac33-3c20e3876c28','forms','Username, password, otp and other auth forms.','org2','basic-flow',_binary '\0',_binary ''),('c2644ff5-7c18-4b69-829d-a05f27a13d8e','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('c283722a-b98b-4759-b3c8-8e26ccc555a5','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',_binary '\0',_binary ''),('c352a557-e6af-4c38-8c1e-c202ce213ca9','registration','registration flow','org4','basic-flow',_binary '',_binary ''),('c49b3d6e-f17e-4f99-836d-e3cf0e502ab1','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',_binary '\0',_binary ''),('c9a06991-b604-496d-8020-f0c8c56ea70b','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',_binary '',_binary ''),('cc4d6866-e31b-46dd-a92c-177725fa77e0','browser','browser based authentication','org3','basic-flow',_binary '',_binary ''),('ccbee342-4221-4707-8dc8-0901c719ba83','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',_binary '\0',_binary ''),('ce3e3566-12db-4e02-89dd-28ee78995440','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',_binary '\0',_binary ''),('d082c940-4417-418f-994c-c07f76625a47','reset credentials','Reset credentials for a user if they forgot their password or something','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('d0ed3495-aae8-442a-9898-eebc611ffd4c','registration form','registration form','org2','form-flow',_binary '\0',_binary ''),('d3298e5c-a7dc-4630-824d-20bb3e376e9d','registration form','registration form','org1','form-flow',_binary '\0',_binary ''),('d7abd05b-37ce-46c3-a610-1b0a9f947e91','Account verification options','Method with which to verity the existing account','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('d7ace0dd-2772-46d8-a5e5-7d3e8c228141','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',_binary '\0',_binary ''),('dd05dbfe-cec9-483c-8c07-afb553b0aa7f','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',_binary '\0',_binary ''),('e0258ada-816e-4ab4-acc4-3626f8098460','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',_binary '\0',_binary ''),('e0a28eee-7026-4547-a3be-359a3648a255','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',_binary '\0',_binary ''),('e1e10c6f-4a43-48e7-9d40-83090d59b99e','registration','registration flow','org2','basic-flow',_binary '',_binary ''),('e52bc2c5-9ae8-4896-a7fa-3bc998ddbe71','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',_binary '\0',_binary ''),('e5723d2b-c5e4-4796-a9d2-1bc6982380af','browser','browser based authentication','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('e5a180a2-7680-4f8a-84a2-8498c082107a','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',_binary '\0',_binary ''),('e964a337-91fe-4fe0-a8b7-6b99e079c41e','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('e996790a-3fab-43be-905e-2fcf128ddc4d','clients','Base authentication for clients','org3','client-flow',_binary '',_binary ''),('eaf1f18a-b03b-41d3-8d2d-41961926bef3','forms','Username, password, otp and other auth forms.','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('eb45356c-c799-4d29-975e-cb9766d242ad','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',_binary '',_binary ''),('eb847cc7-a482-48c9-9367-0b04b9d305fc','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',_binary '\0',_binary ''),('ec056b62-5e07-4b9b-ab57-d1643e4952fc','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',_binary '\0',_binary ''),('ec39e72c-2c62-4e21-aed0-6122e2291fe5','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',_binary '\0',_binary ''),('ec8e6d81-aa14-4950-ae3c-ed25f514a677','User creation or linking','Flow for the existing/non-existing user alternatives','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('ed37c2da-d9a7-4918-935f-3baca8198072','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org3','basic-flow',_binary '',_binary ''),('efe52150-7f7d-4a77-935f-6e2c0749eeb6','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '\0',_binary ''),('f477aa4e-777c-49b8-a19a-f1f9fd0b06d1','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',_binary '',_binary ''),('f6245934-09fe-4a79-8712-b55903c978e7','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',_binary '\0',_binary ''),('f8095dfd-32b7-4d6c-8adb-d56b1bcfd250','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',_binary '\0',_binary ''),('fd3d325f-abae-46ec-9e8d-e734064d86a5','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','a8877546-78d2-4601-8f66-d697f8ccfc92','basic-flow',_binary '',_binary ''),('ffa6632c-3396-4dc9-af79-82186c9528ab','forms','Username, password, otp and other auth forms.','org4','basic-flow',_binary '\0',_binary '');
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('035eda39-aa2d-494e-b8d9-002de4cfc8d3','create unique user config','org5'),('14526f7a-e494-49ca-b505-840819488851','create unique user config','org1'),('2219deea-d0cd-405e-a042-aca9c7bcbce7','create unique user config','org2'),('77278327-ddf8-446f-976c-4111d3bf8f18','create unique user config','org4'),('78b44b1d-4564-48b1-bc0a-e50191d92438','review profile config','org1'),('85f00f46-c46a-420c-a917-3f67fb5e7ca3','create unique user config','org3'),('8ce9b4e8-9453-402c-9980-af2a6d4f123f','review profile config','org3'),('ad7b5a4e-f3f4-4ad7-a6d2-b5877e482a81','review profile config','org5'),('b529370a-2b4c-43b9-96f3-c2ad9332894a','review profile config','org2'),('c557dd35-9e64-4fd5-a978-50a0e1b5880a','create unique user config','a8877546-78d2-4601-8f66-d697f8ccfc92'),('c55b69da-5d74-4997-b5ae-c9f5ea5e091c','review profile config','org4'),('d267ecdd-997f-4c6d-9d78-c6357740215a','review profile config','a8877546-78d2-4601-8f66-d697f8ccfc92');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('035eda39-aa2d-494e-b8d9-002de4cfc8d3','false','require.password.update.after.registration'),('14526f7a-e494-49ca-b505-840819488851','false','require.password.update.after.registration'),('2219deea-d0cd-405e-a042-aca9c7bcbce7','false','require.password.update.after.registration'),('77278327-ddf8-446f-976c-4111d3bf8f18','false','require.password.update.after.registration'),('78b44b1d-4564-48b1-bc0a-e50191d92438','missing','update.profile.on.first.login'),('85f00f46-c46a-420c-a917-3f67fb5e7ca3','false','require.password.update.after.registration'),('8ce9b4e8-9453-402c-9980-af2a6d4f123f','missing','update.profile.on.first.login'),('ad7b5a4e-f3f4-4ad7-a6d2-b5877e482a81','missing','update.profile.on.first.login'),('b529370a-2b4c-43b9-96f3-c2ad9332894a','missing','update.profile.on.first.login'),('c557dd35-9e64-4fd5-a978-50a0e1b5880a','false','require.password.update.after.registration'),('c55b69da-5d74-4997-b5ae-c9f5ea5e091c','missing','update.profile.on.first.login'),('d267ecdd-997f-4c6d-9d78-c6357740215a','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('0107e684-1e28-42bd-8a3b-9651db47bc37',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('029c5bde-e604-419a-97d3-4ca2228de1be',_binary '',_binary '','_org5-api',0,_binary '','kqFVDkq3VzvOaNSbYRqZHFptprIwNtkM',NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('0413273e-892c-44ea-898e-fd49d1201ba1',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org3/account/',_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('08eeb426-2b14-4f54-b965-d4abfa9479ea',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('0d322164-ad54-4855-b3d6-62113bded474',_binary '',_binary '','_org2-api',0,_binary '','axS5O00YuDIXdt2Oinh8hauAhE9PFMy3',NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/master/console/',_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('1de5b8f3-931d-4ce7-bda0-427432898190',_binary '',_binary '','system-org1-auth',0,_binary '\0','5kKfX3f8qKDo3vsUw9dreO9YGBCxg2CB',NULL,_binary '',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',_binary '','org1-workspaces',0,_binary '\0','korsu1cqIUDtRwXJearQpxImA6tT5j4w',NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',_binary '','org5',0,_binary '','yevqasCcGPUJCA85FAwtZtzzx0Yeg9zl',NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('2faaf180-4c53-45f1-9f28-4b99c13c31ef',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('3169e16b-60c0-4a9b-89e9-2ea4984d626a',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '',_binary '\0','master-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,0,_binary '\0',_binary '\0','master Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('3b7d6028-9a77-4afc-a538-13ed7185ebb8',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b',_binary '',_binary '','system-org5-auth',0,_binary '\0','udoyTBgbajITKTfmCfggvmjeJQ3HjJFa',NULL,_binary '',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',_binary '','org1',0,_binary '','5DGCk4lRA0p7rB3oevStVSOYU1TwCWWm',NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('54a7148b-b941-4113-9ce2-c0521889afc8',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('56298f08-af78-4b33-9491-4389ec26f209',_binary '',_binary '','_platform-api',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',_binary '','org4',0,_binary '','OCRxwXBms6vWumTJOSGZUFpqD3KM9BQJ',NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',_binary '','org2',0,_binary '','91PNgcbHrYMraztMx1GM8jGfTbHcWiw6',NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org5/account/',_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('6b499240-3de7-435a-818a-ee5874ceae98',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '',_binary '\0','org1-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,0,_binary '\0',_binary '\0','org1 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',_binary '','org2-workspaces',0,_binary '\0','8am6HztM2EA6fL1Ic5vxaJ8NNEyOvZP7',NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '',_binary '\0','org3-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,0,_binary '\0',_binary '\0','org3 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('7ccf992d-cf94-4cca-a1f1-ad30db657e92',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('8116d826-05ea-4e90-ba26-011ab786de7e',_binary '',_binary '','_org3-api',0,_binary '','zx2oJuu7QlputloTQMMS9tfxLPLFfooU',NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('82fa0823-5eec-43cb-bd64-332723030562',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org2/account/',_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('84cdd591-bea5-4aea-ba75-13df79253868',_binary '',_binary '','_org1-api',0,_binary '','ZhgfccZYwwJuv45i7K6WTCk27woU52pn',NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',_binary '','org3',0,_binary '','FpAPNCZJULu228bUCybcxTRgETBP7kzH',NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org3/account/',_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org4/account/',_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('91fd74c7-1fbb-410a-83c4-b19d280c4878',_binary '',_binary '','_org4-api',0,_binary '','cXqWaq9KG4VYse4Dsd7OtyrMprbID0Nf',NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('938bd1fc-040b-4721-b954-063f4fa33739',_binary '',_binary '','org3-workspaces',0,_binary '\0','nwefnBFgRVabf2C0IvbyYwSE1LQClxHn',NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org3/console/',_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('97934877-0b5d-49fa-8612-070f51740430',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('9afada1b-e972-45be-b9bf-86b4eb758408',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org2/account/',_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('9b54a677-f83d-4176-9bd1-6bc428f78077',_binary '',_binary '','system-org3-auth',0,_binary '\0','oXhzkV3GGTpNdwwf1AMCNBKRPtFeQe7O',NULL,_binary '',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org1/console/',_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c',_binary '',_binary '','system-org4-auth',0,_binary '\0','FI8kwXsWXLoFPu6jvfkrEfFAzDF4yBvn',NULL,_binary '',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3',_binary '',_binary '','_platform',0,_binary '\0','8BDOMnLsaE8XYuunAGAwym9VfIbZduwh',NULL,_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org1/account/',_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org2/console/',_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org4/account/',_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c1a9f132-ac4b-4f61-b831-29f1d247f380',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',_binary '','org5-workspaces',0,_binary '\0','wT7a3OBtVJWumA30yej77q8Bfd2jgLSI',NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('c7558bbf-2654-4e6a-ae73-f65023330268',_binary '',_binary '\0','org4-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,0,_binary '\0',_binary '\0','org4 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83',_binary '',_binary '','system-org2-auth',0,_binary '\0','7VGy9OFfePUSn0DeTkauCItOnds3VOte',NULL,_binary '',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '',_binary '\0','org5-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,0,_binary '\0',_binary '\0','org5 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('d03f4768-32f0-44ae-aac8-e22bc7213192',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org5/account/',_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1',_binary '',_binary '\0','_platform-console',0,_binary '','GeMp1z6pxNaVvKTWYBfwqnAhblHrDRcF',NULL,_binary '\0',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org1/account/',_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org4/console/',_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',_binary '','org4-workspaces',0,_binary '\0','PogXPNtMwrpNBmscF0pvk725OrXyYS4n',NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('f0d24cf3-6681-43f9-a774-b5b0f152c960',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org5/console/',_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '',_binary '\0','org2-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,0,_binary '\0',_binary '\0','org2 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0');
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
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('0107e684-1e28-42bd-8a3b-9651db47bc37','pkce.code.challenge.method','S256'),('0107e684-1e28-42bd-8a3b-9651db47bc37','post.logout.redirect.uris','+'),('029c5bde-e604-419a-97d3-4ca2228de1be','access.token.lifespan','86400'),('029c5bde-e604-419a-97d3-4ca2228de1be','acr.loa.map','{}'),('029c5bde-e604-419a-97d3-4ca2228de1be','backchannel.logout.revoke.offline.tokens','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','backchannel.logout.session.required','true'),('029c5bde-e604-419a-97d3-4ca2228de1be','client.secret.creation.time','1700534331'),('029c5bde-e604-419a-97d3-4ca2228de1be','client.session.idle.timeout','86400'),('029c5bde-e604-419a-97d3-4ca2228de1be','client.session.max.lifespan','86400'),('029c5bde-e604-419a-97d3-4ca2228de1be','client_credentials.use_refresh_token','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','display.on.consent.screen','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','exclude.session.state.from.auth.response','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','frontchannel.logout.session.required','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','id.token.as.detached.signature','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','oauth2.device.authorization.grant.enabled','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','oidc.ciba.grant.enabled','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','require.pushed.authorization.requests','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.allow.ecp.flow','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.artifact.binding','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.assertion.signature','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.authnstatement','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.client.signature','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.encrypt','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.force.post.binding','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.multivalued.roles','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.onetimeuse.condition','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.server.signature','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml.server.signature.keyinfo.ext','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','saml_force_name_id_format','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','tls.client.certificate.bound.access.tokens','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','token.response.type.bearer.lower-case','false'),('029c5bde-e604-419a-97d3-4ca2228de1be','use.refresh.tokens','true'),('0413273e-892c-44ea-898e-fd49d1201ba1','pkce.code.challenge.method','S256'),('0413273e-892c-44ea-898e-fd49d1201ba1','post.logout.redirect.uris','+'),('0d322164-ad54-4855-b3d6-62113bded474','access.token.lifespan','86400'),('0d322164-ad54-4855-b3d6-62113bded474','acr.loa.map','{}'),('0d322164-ad54-4855-b3d6-62113bded474','backchannel.logout.revoke.offline.tokens','false'),('0d322164-ad54-4855-b3d6-62113bded474','backchannel.logout.session.required','true'),('0d322164-ad54-4855-b3d6-62113bded474','client.secret.creation.time','1700534236'),('0d322164-ad54-4855-b3d6-62113bded474','client.session.idle.timeout','86400'),('0d322164-ad54-4855-b3d6-62113bded474','client.session.max.lifespan','86400'),('0d322164-ad54-4855-b3d6-62113bded474','client_credentials.use_refresh_token','false'),('0d322164-ad54-4855-b3d6-62113bded474','display.on.consent.screen','false'),('0d322164-ad54-4855-b3d6-62113bded474','exclude.session.state.from.auth.response','false'),('0d322164-ad54-4855-b3d6-62113bded474','frontchannel.logout.session.required','false'),('0d322164-ad54-4855-b3d6-62113bded474','id.token.as.detached.signature','false'),('0d322164-ad54-4855-b3d6-62113bded474','oauth2.device.authorization.grant.enabled','false'),('0d322164-ad54-4855-b3d6-62113bded474','oidc.ciba.grant.enabled','false'),('0d322164-ad54-4855-b3d6-62113bded474','require.pushed.authorization.requests','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.allow.ecp.flow','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.artifact.binding','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.assertion.signature','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.authnstatement','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.client.signature','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.encrypt','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.force.post.binding','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.multivalued.roles','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.onetimeuse.condition','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.server.signature','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml.server.signature.keyinfo.ext','false'),('0d322164-ad54-4855-b3d6-62113bded474','saml_force_name_id_format','false'),('0d322164-ad54-4855-b3d6-62113bded474','tls.client.certificate.bound.access.tokens','false'),('0d322164-ad54-4855-b3d6-62113bded474','token.response.type.bearer.lower-case','false'),('0d322164-ad54-4855-b3d6-62113bded474','use.refresh.tokens','true'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','pkce.code.challenge.method','S256'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','post.logout.redirect.uris','+'),('1de5b8f3-931d-4ce7-bda0-427432898190','backchannel.logout.revoke.offline.tokens','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','backchannel.logout.session.required','true'),('1de5b8f3-931d-4ce7-bda0-427432898190','client.secret.creation.time','1700534199'),('1de5b8f3-931d-4ce7-bda0-427432898190','client_credentials.use_refresh_token','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','display.on.consent.screen','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','exclude.session.state.from.auth.response','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','id.token.as.detached.signature','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','oauth2.device.authorization.grant.enabled','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','oidc.ciba.grant.enabled','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','require.pushed.authorization.requests','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.artifact.binding','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.assertion.signature','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.authnstatement','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.client.signature','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.encrypt','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.force.post.binding','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.multivalued.roles','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.onetimeuse.condition','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.server.signature','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml.server.signature.keyinfo.ext','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','saml_force_name_id_format','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','tls.client.certificate.bound.access.tokens','false'),('1de5b8f3-931d-4ce7-bda0-427432898190','use.refresh.tokens','true'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','backchannel.logout.revoke.offline.tokens','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','backchannel.logout.session.required','true'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','client.secret.creation.time','1700534199'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','client_credentials.use_refresh_token','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','display.on.consent.screen','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','exclude.session.state.from.auth.response','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','id.token.as.detached.signature','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','oauth2.device.authorization.grant.enabled','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','oidc.ciba.grant.enabled','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','require.pushed.authorization.requests','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.artifact.binding','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.assertion.signature','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.authnstatement','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.client.signature','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.encrypt','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.force.post.binding','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.multivalued.roles','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.onetimeuse.condition','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.server.signature','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml.server.signature.keyinfo.ext','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','saml_force_name_id_format','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','tls.client.certificate.bound.access.tokens','false'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','use.refresh.tokens','true'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','backchannel.logout.revoke.offline.tokens','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','backchannel.logout.session.required','true'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','client.secret.creation.time','1700534330'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','client_credentials.use_refresh_token','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','display.on.consent.screen','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','exclude.session.state.from.auth.response','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','id.token.as.detached.signature','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','oauth2.device.authorization.grant.enabled','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','oidc.ciba.grant.enabled','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','post.logout.redirect.uris','/*'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','require.pushed.authorization.requests','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.artifact.binding','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.assertion.signature','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.authnstatement','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.client.signature','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.encrypt','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.force.post.binding','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.multivalued.roles','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.onetimeuse.condition','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.server.signature','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml.server.signature.keyinfo.ext','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','saml_force_name_id_format','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','tls.client.certificate.bound.access.tokens','false'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','use.refresh.tokens','true'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','backchannel.logout.revoke.offline.tokens','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','backchannel.logout.session.required','true'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','client.secret.creation.time','1700534330'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','client_credentials.use_refresh_token','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','display.on.consent.screen','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','exclude.session.state.from.auth.response','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','id.token.as.detached.signature','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','oauth2.device.authorization.grant.enabled','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','oidc.ciba.grant.enabled','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','require.pushed.authorization.requests','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.artifact.binding','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.assertion.signature','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.authnstatement','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.client.signature','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.encrypt','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.force.post.binding','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.multivalued.roles','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.onetimeuse.condition','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.server.signature','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml.server.signature.keyinfo.ext','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','saml_force_name_id_format','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','tls.client.certificate.bound.access.tokens','false'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','use.refresh.tokens','true'),('498fc338-cab0-4248-86e6-bc4321b81af5','backchannel.logout.revoke.offline.tokens','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','backchannel.logout.session.required','true'),('498fc338-cab0-4248-86e6-bc4321b81af5','client.secret.creation.time','1700534199'),('498fc338-cab0-4248-86e6-bc4321b81af5','client_credentials.use_refresh_token','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','display.on.consent.screen','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','exclude.session.state.from.auth.response','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','id.token.as.detached.signature','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','oauth2.device.authorization.grant.enabled','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','oidc.ciba.grant.enabled','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','post.logout.redirect.uris','/*'),('498fc338-cab0-4248-86e6-bc4321b81af5','require.pushed.authorization.requests','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.artifact.binding','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.assertion.signature','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.authnstatement','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.client.signature','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.encrypt','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.force.post.binding','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.multivalued.roles','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.onetimeuse.condition','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.server.signature','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml.server.signature.keyinfo.ext','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','saml_force_name_id_format','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','tls.client.certificate.bound.access.tokens','false'),('498fc338-cab0-4248-86e6-bc4321b81af5','use.refresh.tokens','true'),('54a7148b-b941-4113-9ce2-c0521889afc8','post.logout.redirect.uris','+'),('56298f08-af78-4b33-9491-4389ec26f209','access.token.lifespan','86400'),('56298f08-af78-4b33-9491-4389ec26f209','acr.loa.map','{}'),('56298f08-af78-4b33-9491-4389ec26f209','backchannel.logout.revoke.offline.tokens','false'),('56298f08-af78-4b33-9491-4389ec26f209','backchannel.logout.session.required','true'),('56298f08-af78-4b33-9491-4389ec26f209','client.session.idle.timeout','86400'),('56298f08-af78-4b33-9491-4389ec26f209','client.session.max.lifespan','86400'),('56298f08-af78-4b33-9491-4389ec26f209','client_credentials.use_refresh_token','false'),('56298f08-af78-4b33-9491-4389ec26f209','display.on.consent.screen','false'),('56298f08-af78-4b33-9491-4389ec26f209','exclude.session.state.from.auth.response','false'),('56298f08-af78-4b33-9491-4389ec26f209','frontchannel.logout.session.required','false'),('56298f08-af78-4b33-9491-4389ec26f209','id.token.as.detached.signature','false'),('56298f08-af78-4b33-9491-4389ec26f209','oauth2.device.authorization.grant.enabled','false'),('56298f08-af78-4b33-9491-4389ec26f209','oidc.ciba.grant.enabled','false'),('56298f08-af78-4b33-9491-4389ec26f209','require.pushed.authorization.requests','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.allow.ecp.flow','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.artifact.binding','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.assertion.signature','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.authnstatement','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.client.signature','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.encrypt','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.force.post.binding','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.multivalued.roles','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.onetimeuse.condition','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.server.signature','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml.server.signature.keyinfo.ext','false'),('56298f08-af78-4b33-9491-4389ec26f209','saml_force_name_id_format','false'),('56298f08-af78-4b33-9491-4389ec26f209','tls.client.certificate.bound.access.tokens','false'),('56298f08-af78-4b33-9491-4389ec26f209','token.response.type.bearer.lower-case','false'),('56298f08-af78-4b33-9491-4389ec26f209','use.refresh.tokens','true'),('576651bb-ff24-48e9-bfa7-4285938bf1da','backchannel.logout.revoke.offline.tokens','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','backchannel.logout.session.required','true'),('576651bb-ff24-48e9-bfa7-4285938bf1da','client.secret.creation.time','1700534299'),('576651bb-ff24-48e9-bfa7-4285938bf1da','client_credentials.use_refresh_token','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','display.on.consent.screen','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','exclude.session.state.from.auth.response','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','id.token.as.detached.signature','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','oauth2.device.authorization.grant.enabled','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','oidc.ciba.grant.enabled','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','post.logout.redirect.uris','/*'),('576651bb-ff24-48e9-bfa7-4285938bf1da','require.pushed.authorization.requests','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.artifact.binding','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.assertion.signature','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.authnstatement','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.client.signature','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.encrypt','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.force.post.binding','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.multivalued.roles','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.onetimeuse.condition','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.server.signature','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml.server.signature.keyinfo.ext','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','saml_force_name_id_format','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','tls.client.certificate.bound.access.tokens','false'),('576651bb-ff24-48e9-bfa7-4285938bf1da','use.refresh.tokens','true'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','backchannel.logout.revoke.offline.tokens','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','backchannel.logout.session.required','true'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','client.secret.creation.time','1700534236'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','client_credentials.use_refresh_token','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','display.on.consent.screen','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','exclude.session.state.from.auth.response','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','id.token.as.detached.signature','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','oauth2.device.authorization.grant.enabled','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','oidc.ciba.grant.enabled','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','post.logout.redirect.uris','/*'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','require.pushed.authorization.requests','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.artifact.binding','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.assertion.signature','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.authnstatement','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.client.signature','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.encrypt','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.force.post.binding','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.multivalued.roles','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.onetimeuse.condition','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.server.signature','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml.server.signature.keyinfo.ext','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','saml_force_name_id_format','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','tls.client.certificate.bound.access.tokens','false'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','use.refresh.tokens','true'),('616c44d6-74e5-43f0-a01b-65d99c137f45','post.logout.redirect.uris','+'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','backchannel.logout.revoke.offline.tokens','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','backchannel.logout.session.required','true'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','client.secret.creation.time','1700534235'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','client_credentials.use_refresh_token','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','display.on.consent.screen','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','exclude.session.state.from.auth.response','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','id.token.as.detached.signature','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','oauth2.device.authorization.grant.enabled','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','oidc.ciba.grant.enabled','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','require.pushed.authorization.requests','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.artifact.binding','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.assertion.signature','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.authnstatement','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.client.signature','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.encrypt','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.force.post.binding','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.multivalued.roles','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.onetimeuse.condition','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.server.signature','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml.server.signature.keyinfo.ext','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','saml_force_name_id_format','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','tls.client.certificate.bound.access.tokens','false'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','use.refresh.tokens','true'),('8116d826-05ea-4e90-ba26-011ab786de7e','access.token.lifespan','86400'),('8116d826-05ea-4e90-ba26-011ab786de7e','acr.loa.map','{}'),('8116d826-05ea-4e90-ba26-011ab786de7e','backchannel.logout.revoke.offline.tokens','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','backchannel.logout.session.required','true'),('8116d826-05ea-4e90-ba26-011ab786de7e','client.secret.creation.time','1700534269'),('8116d826-05ea-4e90-ba26-011ab786de7e','client.session.idle.timeout','86400'),('8116d826-05ea-4e90-ba26-011ab786de7e','client.session.max.lifespan','86400'),('8116d826-05ea-4e90-ba26-011ab786de7e','client_credentials.use_refresh_token','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','display.on.consent.screen','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','exclude.session.state.from.auth.response','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','frontchannel.logout.session.required','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','id.token.as.detached.signature','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','oauth2.device.authorization.grant.enabled','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','oidc.ciba.grant.enabled','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','require.pushed.authorization.requests','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.allow.ecp.flow','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.artifact.binding','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.assertion.signature','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.authnstatement','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.client.signature','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.encrypt','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.force.post.binding','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.multivalued.roles','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.onetimeuse.condition','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.server.signature','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml.server.signature.keyinfo.ext','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','saml_force_name_id_format','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','tls.client.certificate.bound.access.tokens','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','token.response.type.bearer.lower-case','false'),('8116d826-05ea-4e90-ba26-011ab786de7e','use.refresh.tokens','true'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','post.logout.redirect.uris','+'),('84cdd591-bea5-4aea-ba75-13df79253868','access.token.lifespan','86400'),('84cdd591-bea5-4aea-ba75-13df79253868','acr.loa.map','{}'),('84cdd591-bea5-4aea-ba75-13df79253868','backchannel.logout.revoke.offline.tokens','false'),('84cdd591-bea5-4aea-ba75-13df79253868','backchannel.logout.session.required','true'),('84cdd591-bea5-4aea-ba75-13df79253868','client.secret.creation.time','1700534199'),('84cdd591-bea5-4aea-ba75-13df79253868','client.session.idle.timeout','86400'),('84cdd591-bea5-4aea-ba75-13df79253868','client.session.max.lifespan','86400'),('84cdd591-bea5-4aea-ba75-13df79253868','client_credentials.use_refresh_token','false'),('84cdd591-bea5-4aea-ba75-13df79253868','display.on.consent.screen','false'),('84cdd591-bea5-4aea-ba75-13df79253868','exclude.session.state.from.auth.response','false'),('84cdd591-bea5-4aea-ba75-13df79253868','frontchannel.logout.session.required','false'),('84cdd591-bea5-4aea-ba75-13df79253868','id.token.as.detached.signature','false'),('84cdd591-bea5-4aea-ba75-13df79253868','oauth2.device.authorization.grant.enabled','false'),('84cdd591-bea5-4aea-ba75-13df79253868','oidc.ciba.grant.enabled','false'),('84cdd591-bea5-4aea-ba75-13df79253868','require.pushed.authorization.requests','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.allow.ecp.flow','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.artifact.binding','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.assertion.signature','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.authnstatement','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.client.signature','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.encrypt','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.force.post.binding','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.multivalued.roles','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.onetimeuse.condition','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.server.signature','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml.server.signature.keyinfo.ext','false'),('84cdd591-bea5-4aea-ba75-13df79253868','saml_force_name_id_format','false'),('84cdd591-bea5-4aea-ba75-13df79253868','tls.client.certificate.bound.access.tokens','false'),('84cdd591-bea5-4aea-ba75-13df79253868','token.response.type.bearer.lower-case','false'),('84cdd591-bea5-4aea-ba75-13df79253868','use.refresh.tokens','true'),('8e1aa514-01d1-4d71-b984-1f533b776280','backchannel.logout.revoke.offline.tokens','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','backchannel.logout.session.required','true'),('8e1aa514-01d1-4d71-b984-1f533b776280','client.secret.creation.time','1700534269'),('8e1aa514-01d1-4d71-b984-1f533b776280','client_credentials.use_refresh_token','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','display.on.consent.screen','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','exclude.session.state.from.auth.response','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','id.token.as.detached.signature','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','oauth2.device.authorization.grant.enabled','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','oidc.ciba.grant.enabled','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','post.logout.redirect.uris','/*'),('8e1aa514-01d1-4d71-b984-1f533b776280','require.pushed.authorization.requests','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.artifact.binding','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.assertion.signature','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.authnstatement','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.client.signature','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.encrypt','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.force.post.binding','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.multivalued.roles','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.onetimeuse.condition','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.server.signature','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml.server.signature.keyinfo.ext','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','saml_force_name_id_format','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','tls.client.certificate.bound.access.tokens','false'),('8e1aa514-01d1-4d71-b984-1f533b776280','use.refresh.tokens','true'),('90915a43-585e-46cc-b9d0-f3ad91c639e8','post.logout.redirect.uris','+'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','post.logout.redirect.uris','+'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','access.token.lifespan','86400'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','acr.loa.map','{}'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','backchannel.logout.revoke.offline.tokens','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','backchannel.logout.session.required','true'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','client.secret.creation.time','1700534299'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','client.session.idle.timeout','86400'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','client.session.max.lifespan','86400'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','client_credentials.use_refresh_token','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','display.on.consent.screen','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','exclude.session.state.from.auth.response','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','frontchannel.logout.session.required','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','id.token.as.detached.signature','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','oauth2.device.authorization.grant.enabled','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','oidc.ciba.grant.enabled','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','require.pushed.authorization.requests','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.allow.ecp.flow','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.artifact.binding','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.assertion.signature','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.authnstatement','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.client.signature','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.encrypt','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.force.post.binding','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.multivalued.roles','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.onetimeuse.condition','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.server.signature','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml.server.signature.keyinfo.ext','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','saml_force_name_id_format','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','tls.client.certificate.bound.access.tokens','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','token.response.type.bearer.lower-case','false'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','use.refresh.tokens','true'),('938bd1fc-040b-4721-b954-063f4fa33739','backchannel.logout.revoke.offline.tokens','false'),('938bd1fc-040b-4721-b954-063f4fa33739','backchannel.logout.session.required','true'),('938bd1fc-040b-4721-b954-063f4fa33739','client.secret.creation.time','1700534269'),('938bd1fc-040b-4721-b954-063f4fa33739','client_credentials.use_refresh_token','false'),('938bd1fc-040b-4721-b954-063f4fa33739','display.on.consent.screen','false'),('938bd1fc-040b-4721-b954-063f4fa33739','exclude.session.state.from.auth.response','false'),('938bd1fc-040b-4721-b954-063f4fa33739','id.token.as.detached.signature','false'),('938bd1fc-040b-4721-b954-063f4fa33739','oauth2.device.authorization.grant.enabled','false'),('938bd1fc-040b-4721-b954-063f4fa33739','oidc.ciba.grant.enabled','false'),('938bd1fc-040b-4721-b954-063f4fa33739','require.pushed.authorization.requests','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.artifact.binding','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.assertion.signature','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.authnstatement','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.client.signature','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.encrypt','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.force.post.binding','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.multivalued.roles','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.onetimeuse.condition','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.server.signature','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml.server.signature.keyinfo.ext','false'),('938bd1fc-040b-4721-b954-063f4fa33739','saml_force_name_id_format','false'),('938bd1fc-040b-4721-b954-063f4fa33739','tls.client.certificate.bound.access.tokens','false'),('938bd1fc-040b-4721-b954-063f4fa33739','use.refresh.tokens','true'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','pkce.code.challenge.method','S256'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','post.logout.redirect.uris','+'),('9afada1b-e972-45be-b9bf-86b4eb758408','pkce.code.challenge.method','S256'),('9afada1b-e972-45be-b9bf-86b4eb758408','post.logout.redirect.uris','+'),('9b54a677-f83d-4176-9bd1-6bc428f78077','backchannel.logout.revoke.offline.tokens','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','backchannel.logout.session.required','true'),('9b54a677-f83d-4176-9bd1-6bc428f78077','client.secret.creation.time','1700534269'),('9b54a677-f83d-4176-9bd1-6bc428f78077','client_credentials.use_refresh_token','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','display.on.consent.screen','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','exclude.session.state.from.auth.response','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','id.token.as.detached.signature','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','oauth2.device.authorization.grant.enabled','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','oidc.ciba.grant.enabled','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','require.pushed.authorization.requests','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.artifact.binding','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.assertion.signature','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.authnstatement','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.client.signature','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.encrypt','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.force.post.binding','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.multivalued.roles','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.onetimeuse.condition','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.server.signature','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml.server.signature.keyinfo.ext','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','saml_force_name_id_format','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','tls.client.certificate.bound.access.tokens','false'),('9b54a677-f83d-4176-9bd1-6bc428f78077','use.refresh.tokens','true'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','pkce.code.challenge.method','S256'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','post.logout.redirect.uris','+'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','backchannel.logout.revoke.offline.tokens','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','backchannel.logout.session.required','true'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','client.secret.creation.time','1700534299'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','client_credentials.use_refresh_token','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','display.on.consent.screen','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','exclude.session.state.from.auth.response','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','id.token.as.detached.signature','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','oauth2.device.authorization.grant.enabled','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','oidc.ciba.grant.enabled','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','require.pushed.authorization.requests','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.artifact.binding','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.assertion.signature','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.authnstatement','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.client.signature','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.encrypt','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.force.post.binding','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.multivalued.roles','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.onetimeuse.condition','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.server.signature','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml.server.signature.keyinfo.ext','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','saml_force_name_id_format','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','tls.client.certificate.bound.access.tokens','false'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','use.refresh.tokens','true'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','backchannel.logout.revoke.offline.tokens','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','backchannel.logout.session.required','true'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','client.secret.creation.time','1700534160'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','client_credentials.use_refresh_token','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','display.on.consent.screen','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','exclude.session.state.from.auth.response','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','id.token.as.detached.signature','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','oauth2.device.authorization.grant.enabled','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','oidc.ciba.grant.enabled','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','require.pushed.authorization.requests','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.artifact.binding','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.assertion.signature','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.authnstatement','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.client.signature','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.encrypt','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.force.post.binding','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.multivalued.roles','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.onetimeuse.condition','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.server.signature','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml.server.signature.keyinfo.ext','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','saml_force_name_id_format','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','tls.client.certificate.bound.access.tokens','false'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','use.refresh.tokens','true'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','pkce.code.challenge.method','S256'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','post.logout.redirect.uris','+'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','pkce.code.challenge.method','S256'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','post.logout.redirect.uris','+'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','pkce.code.challenge.method','S256'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','post.logout.redirect.uris','+'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','backchannel.logout.revoke.offline.tokens','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','backchannel.logout.session.required','true'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','client.secret.creation.time','1700534330'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','client_credentials.use_refresh_token','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','display.on.consent.screen','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','exclude.session.state.from.auth.response','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','id.token.as.detached.signature','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','oauth2.device.authorization.grant.enabled','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','oidc.ciba.grant.enabled','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','require.pushed.authorization.requests','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.artifact.binding','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.assertion.signature','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.authnstatement','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.client.signature','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.encrypt','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.force.post.binding','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.multivalued.roles','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.onetimeuse.condition','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.server.signature','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml.server.signature.keyinfo.ext','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','saml_force_name_id_format','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','tls.client.certificate.bound.access.tokens','false'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','use.refresh.tokens','true'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','backchannel.logout.revoke.offline.tokens','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','backchannel.logout.session.required','true'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','client.secret.creation.time','1700534236'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','client_credentials.use_refresh_token','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','display.on.consent.screen','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','exclude.session.state.from.auth.response','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','id.token.as.detached.signature','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','oauth2.device.authorization.grant.enabled','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','oidc.ciba.grant.enabled','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','require.pushed.authorization.requests','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.artifact.binding','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.assertion.signature','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.authnstatement','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.client.signature','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.encrypt','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.force.post.binding','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.multivalued.roles','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.onetimeuse.condition','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.server.signature','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml.server.signature.keyinfo.ext','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','saml_force_name_id_format','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','tls.client.certificate.bound.access.tokens','false'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','use.refresh.tokens','true'),('d03f4768-32f0-44ae-aac8-e22bc7213192','pkce.code.challenge.method','S256'),('d03f4768-32f0-44ae-aac8-e22bc7213192','post.logout.redirect.uris','+'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','backchannel.logout.revoke.offline.tokens','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','backchannel.logout.session.required','true'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','client.secret.creation.time','1700534162'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','client_credentials.use_refresh_token','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','display.on.consent.screen','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','exclude.session.state.from.auth.response','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','id.token.as.detached.signature','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','oauth2.device.authorization.grant.enabled','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','oidc.ciba.grant.enabled','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','post.logout.redirect.uris','/*'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','require.pushed.authorization.requests','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.artifact.binding','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.assertion.signature','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.authnstatement','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.client.signature','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.encrypt','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.force.post.binding','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.multivalued.roles','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.onetimeuse.condition','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.server.signature','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml.server.signature.keyinfo.ext','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','saml_force_name_id_format','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','tls.client.certificate.bound.access.tokens','false'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','use.refresh.tokens','true'),('da53c749-9153-4bc2-8a6c-a5439f78164f','post.logout.redirect.uris','+'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','pkce.code.challenge.method','S256'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','post.logout.redirect.uris','+'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','backchannel.logout.revoke.offline.tokens','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','backchannel.logout.session.required','true'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','client.secret.creation.time','1700534299'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','client_credentials.use_refresh_token','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','display.on.consent.screen','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','exclude.session.state.from.auth.response','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','id.token.as.detached.signature','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','oauth2.device.authorization.grant.enabled','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','oidc.ciba.grant.enabled','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','require.pushed.authorization.requests','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.artifact.binding','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.assertion.signature','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.authnstatement','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.client.signature','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.encrypt','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.force.post.binding','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.multivalued.roles','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.onetimeuse.condition','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.server.signature','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml.server.signature.keyinfo.ext','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','saml_force_name_id_format','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','tls.client.certificate.bound.access.tokens','false'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','use.refresh.tokens','true'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','pkce.code.challenge.method','S256'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('04764dab-1f0f-4c51-9dbe-b45ed3c41708','address','org3','OpenID Connect built-in scope: address','openid-connect'),('06c629f6-4fb3-45db-b853-0e65886efde1','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('0ebd738b-ff8e-417a-ae0a-a8480513e50e','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('14726c97-0fba-4f0b-bbe8-2162204cef20','role_list','org3','SAML role list','saml'),('17140d05-75ae-4874-b264-78c1232b4b92','roles','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect scope for add user roles to the access token','openid-connect'),('174436e7-af29-4a38-a37a-ef53e148d2b0','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('251c113b-3b89-489a-b89b-1429c71de9bc','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('259d2b38-9a5e-4952-99bd-e2e13e8b4507','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('2801abd7-d1f8-4625-8dd2-cf5ae414c008','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('2ccdf43b-2d02-4b47-b7ee-5176ac564332','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('2e6f4d09-2ffa-4b2f-bea7-83430d1b4300','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('4261e717-255c-4894-be73-a2f32798f8a6','role_list','org4','SAML role list','saml'),('437edba2-9f02-468b-99bc-f922d0ce6184','email','org3','OpenID Connect built-in scope: email','openid-connect'),('43f16c9f-5725-4ad5-81bd-7e470ffb1d50','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('44e9c652-b923-4fbf-88eb-7332a1996218','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('459ead87-bce8-4925-9757-a2149d6d9a45','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('4c52212f-f10e-4388-9959-18e5adc977b9','address','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect built-in scope: address','openid-connect'),('51b2fff3-e02b-4e5e-9cef-04f7bf22959a','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('52ee9e04-b3fd-4e78-a83d-c15bad81554c','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('54408590-de3c-42af-ae1c-1e302e69b0ec','address','org4','OpenID Connect built-in scope: address','openid-connect'),('560885f6-a19a-4bd4-aa4f-cc1a52b5a74a','profile','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect built-in scope: profile','openid-connect'),('5638f6bf-ef0e-4bf6-acca-f295f1062115','offline_access','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect built-in scope: offline_access','openid-connect'),('5c9ef9d5-84b8-424d-b011-6a2a1393b236','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('5f2eda65-04ac-427d-b470-a04b68000524','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('66ef630d-2918-47c7-acb5-9d285cfc28b5','role_list','org5','SAML role list','saml'),('687cfb52-cf70-422f-b7cc-ac0a45dfdd82','phone','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect built-in scope: phone','openid-connect'),('6b55ca8c-1e26-4ba7-9a39-3186a1196fa3','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('6cdb1fc9-960a-4bc7-b40f-10d4150bd759','role_list','org1','SAML role list','saml'),('6d255c8d-b841-45bb-96db-c64cc243f1a4','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('6d77f32c-80d6-4cfb-b519-c43217a81d89','acr','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('6fab75d7-733e-4890-b096-50bcb0871ca3','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('7171466e-8552-4002-91bc-ddb718c7fcf2','email','org4','OpenID Connect built-in scope: email','openid-connect'),('74c2be43-8bae-49ae-8add-3ff653d5728e','role_list','org2','SAML role list','saml'),('77270adc-5c14-4f38-9fc5-14bd75497167','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('7910a755-d7b7-4ddc-9fc7-9a6614b11f69','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('829a488c-718f-4531-a9f6-ab00f53640a4','email','org1','OpenID Connect built-in scope: email','openid-connect'),('9fb19211-f6ab-45db-87e0-448df52079b0','address','org2','OpenID Connect built-in scope: address','openid-connect'),('b05e6963-67ad-41f3-b95e-9b8fdd56976f','role_list','a8877546-78d2-4601-8f66-d697f8ccfc92','SAML role list','saml'),('b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('b33d9460-1543-441d-8ab1-d9474673f5a3','email','org5','OpenID Connect built-in scope: email','openid-connect'),('b7ff58ee-7277-4b7d-8410-232388a2586b','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('c121e9f5-f608-4c14-bf94-7e8dd83c9236','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('c45016df-a2b9-4751-8d4e-74f15bec4d84','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c68e5d0d-3495-43ed-91f1-a7b2f6a0665c','microprofile-jwt','a8877546-78d2-4601-8f66-d697f8ccfc92','Microprofile - JWT built-in scope','openid-connect'),('cf0814c3-6aae-450b-a3fd-3f9f01b35367','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('cfd62848-1628-41a1-b5bb-de6143bb9fd1','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('dcc31d94-c344-4665-a0d7-21f01609396e','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('e5f2d392-4924-4785-b180-93e18ef56d38','address','org5','OpenID Connect built-in scope: address','openid-connect'),('e5f98793-02a9-4400-ac0f-c67bab7fefc9','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('e74c9199-baae-4815-9b3e-03fe95e7bfc9','email','org2','OpenID Connect built-in scope: email','openid-connect'),('ec4f8801-dd3d-4cdd-86c9-a52b68beb937','address','org1','OpenID Connect built-in scope: address','openid-connect'),('ec6ffefb-272f-41ed-bfd8-73ca499a94c5','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('f1521e13-3949-4dc3-8c63-42225e60cfae','email','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect built-in scope: email','openid-connect'),('f22c3424-be2d-4c40-94ba-cda83dc82abf','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('f4c48c1b-8b06-4ef5-8b30-5b30fb372782','web-origins','a8877546-78d2-4601-8f66-d697f8ccfc92','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('f6d1a25c-296c-427e-be91-2e8f52e18067','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('fb055ca6-2889-47e6-852e-043b61aa5e34','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('ff8351da-6cf2-4d5c-b5e1-b0ab712fc283','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('04764dab-1f0f-4c51-9dbe-b45ed3c41708','${addressScopeConsentText}','consent.screen.text'),('04764dab-1f0f-4c51-9dbe-b45ed3c41708','true','display.on.consent.screen'),('04764dab-1f0f-4c51-9dbe-b45ed3c41708','true','include.in.token.scope'),('06c629f6-4fb3-45db-b853-0e65886efde1','${profileScopeConsentText}','consent.screen.text'),('06c629f6-4fb3-45db-b853-0e65886efde1','true','display.on.consent.screen'),('06c629f6-4fb3-45db-b853-0e65886efde1','true','include.in.token.scope'),('0ebd738b-ff8e-417a-ae0a-a8480513e50e','','consent.screen.text'),('0ebd738b-ff8e-417a-ae0a-a8480513e50e','false','display.on.consent.screen'),('0ebd738b-ff8e-417a-ae0a-a8480513e50e','false','include.in.token.scope'),('14726c97-0fba-4f0b-bbe8-2162204cef20','${samlRoleListScopeConsentText}','consent.screen.text'),('14726c97-0fba-4f0b-bbe8-2162204cef20','true','display.on.consent.screen'),('17140d05-75ae-4874-b264-78c1232b4b92','${rolesScopeConsentText}','consent.screen.text'),('17140d05-75ae-4874-b264-78c1232b4b92','true','display.on.consent.screen'),('17140d05-75ae-4874-b264-78c1232b4b92','false','include.in.token.scope'),('174436e7-af29-4a38-a37a-ef53e148d2b0','${rolesScopeConsentText}','consent.screen.text'),('174436e7-af29-4a38-a37a-ef53e148d2b0','true','display.on.consent.screen'),('174436e7-af29-4a38-a37a-ef53e148d2b0','false','include.in.token.scope'),('17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c','false','display.on.consent.screen'),('17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c','false','include.in.token.scope'),('251c113b-3b89-489a-b89b-1429c71de9bc','${profileScopeConsentText}','consent.screen.text'),('251c113b-3b89-489a-b89b-1429c71de9bc','true','display.on.consent.screen'),('251c113b-3b89-489a-b89b-1429c71de9bc','true','include.in.token.scope'),('259d2b38-9a5e-4952-99bd-e2e13e8b4507','${phoneScopeConsentText}','consent.screen.text'),('259d2b38-9a5e-4952-99bd-e2e13e8b4507','true','display.on.consent.screen'),('259d2b38-9a5e-4952-99bd-e2e13e8b4507','true','include.in.token.scope'),('2801abd7-d1f8-4625-8dd2-cf5ae414c008','${profileScopeConsentText}','consent.screen.text'),('2801abd7-d1f8-4625-8dd2-cf5ae414c008','true','display.on.consent.screen'),('2801abd7-d1f8-4625-8dd2-cf5ae414c008','true','include.in.token.scope'),('2ccdf43b-2d02-4b47-b7ee-5176ac564332','${rolesScopeConsentText}','consent.screen.text'),('2ccdf43b-2d02-4b47-b7ee-5176ac564332','true','display.on.consent.screen'),('2ccdf43b-2d02-4b47-b7ee-5176ac564332','false','include.in.token.scope'),('2e6f4d09-2ffa-4b2f-bea7-83430d1b4300','false','display.on.consent.screen'),('2e6f4d09-2ffa-4b2f-bea7-83430d1b4300','false','include.in.token.scope'),('4261e717-255c-4894-be73-a2f32798f8a6','${samlRoleListScopeConsentText}','consent.screen.text'),('4261e717-255c-4894-be73-a2f32798f8a6','true','display.on.consent.screen'),('437edba2-9f02-468b-99bc-f922d0ce6184','${emailScopeConsentText}','consent.screen.text'),('437edba2-9f02-468b-99bc-f922d0ce6184','true','display.on.consent.screen'),('437edba2-9f02-468b-99bc-f922d0ce6184','true','include.in.token.scope'),('43f16c9f-5725-4ad5-81bd-7e470ffb1d50','false','display.on.consent.screen'),('43f16c9f-5725-4ad5-81bd-7e470ffb1d50','true','include.in.token.scope'),('44e9c652-b923-4fbf-88eb-7332a1996218','${rolesScopeConsentText}','consent.screen.text'),('44e9c652-b923-4fbf-88eb-7332a1996218','true','display.on.consent.screen'),('44e9c652-b923-4fbf-88eb-7332a1996218','false','include.in.token.scope'),('459ead87-bce8-4925-9757-a2149d6d9a45','${offlineAccessScopeConsentText}','consent.screen.text'),('459ead87-bce8-4925-9757-a2149d6d9a45','true','display.on.consent.screen'),('4c52212f-f10e-4388-9959-18e5adc977b9','${addressScopeConsentText}','consent.screen.text'),('4c52212f-f10e-4388-9959-18e5adc977b9','true','display.on.consent.screen'),('4c52212f-f10e-4388-9959-18e5adc977b9','true','include.in.token.scope'),('51b2fff3-e02b-4e5e-9cef-04f7bf22959a','${phoneScopeConsentText}','consent.screen.text'),('51b2fff3-e02b-4e5e-9cef-04f7bf22959a','true','display.on.consent.screen'),('51b2fff3-e02b-4e5e-9cef-04f7bf22959a','true','include.in.token.scope'),('52ee9e04-b3fd-4e78-a83d-c15bad81554c','${offlineAccessScopeConsentText}','consent.screen.text'),('52ee9e04-b3fd-4e78-a83d-c15bad81554c','true','display.on.consent.screen'),('54408590-de3c-42af-ae1c-1e302e69b0ec','${addressScopeConsentText}','consent.screen.text'),('54408590-de3c-42af-ae1c-1e302e69b0ec','true','display.on.consent.screen'),('54408590-de3c-42af-ae1c-1e302e69b0ec','true','include.in.token.scope'),('560885f6-a19a-4bd4-aa4f-cc1a52b5a74a','${profileScopeConsentText}','consent.screen.text'),('560885f6-a19a-4bd4-aa4f-cc1a52b5a74a','true','display.on.consent.screen'),('560885f6-a19a-4bd4-aa4f-cc1a52b5a74a','true','include.in.token.scope'),('5638f6bf-ef0e-4bf6-acca-f295f1062115','${offlineAccessScopeConsentText}','consent.screen.text'),('5638f6bf-ef0e-4bf6-acca-f295f1062115','true','display.on.consent.screen'),('5c9ef9d5-84b8-424d-b011-6a2a1393b236','false','display.on.consent.screen'),('5c9ef9d5-84b8-424d-b011-6a2a1393b236','true','include.in.token.scope'),('5f2eda65-04ac-427d-b470-a04b68000524','','consent.screen.text'),('5f2eda65-04ac-427d-b470-a04b68000524','false','display.on.consent.screen'),('5f2eda65-04ac-427d-b470-a04b68000524','false','include.in.token.scope'),('66ef630d-2918-47c7-acb5-9d285cfc28b5','${samlRoleListScopeConsentText}','consent.screen.text'),('66ef630d-2918-47c7-acb5-9d285cfc28b5','true','display.on.consent.screen'),('687cfb52-cf70-422f-b7cc-ac0a45dfdd82','${phoneScopeConsentText}','consent.screen.text'),('687cfb52-cf70-422f-b7cc-ac0a45dfdd82','true','display.on.consent.screen'),('687cfb52-cf70-422f-b7cc-ac0a45dfdd82','true','include.in.token.scope'),('6b55ca8c-1e26-4ba7-9a39-3186a1196fa3','${offlineAccessScopeConsentText}','consent.screen.text'),('6b55ca8c-1e26-4ba7-9a39-3186a1196fa3','true','display.on.consent.screen'),('6cdb1fc9-960a-4bc7-b40f-10d4150bd759','${samlRoleListScopeConsentText}','consent.screen.text'),('6cdb1fc9-960a-4bc7-b40f-10d4150bd759','true','display.on.consent.screen'),('6d255c8d-b841-45bb-96db-c64cc243f1a4','${phoneScopeConsentText}','consent.screen.text'),('6d255c8d-b841-45bb-96db-c64cc243f1a4','true','display.on.consent.screen'),('6d255c8d-b841-45bb-96db-c64cc243f1a4','true','include.in.token.scope'),('6d77f32c-80d6-4cfb-b519-c43217a81d89','false','display.on.consent.screen'),('6d77f32c-80d6-4cfb-b519-c43217a81d89','false','include.in.token.scope'),('6fab75d7-733e-4890-b096-50bcb0871ca3','${profileScopeConsentText}','consent.screen.text'),('6fab75d7-733e-4890-b096-50bcb0871ca3','true','display.on.consent.screen'),('6fab75d7-733e-4890-b096-50bcb0871ca3','true','include.in.token.scope'),('7171466e-8552-4002-91bc-ddb718c7fcf2','${emailScopeConsentText}','consent.screen.text'),('7171466e-8552-4002-91bc-ddb718c7fcf2','true','display.on.consent.screen'),('7171466e-8552-4002-91bc-ddb718c7fcf2','true','include.in.token.scope'),('74c2be43-8bae-49ae-8add-3ff653d5728e','${samlRoleListScopeConsentText}','consent.screen.text'),('74c2be43-8bae-49ae-8add-3ff653d5728e','true','display.on.consent.screen'),('77270adc-5c14-4f38-9fc5-14bd75497167','${offlineAccessScopeConsentText}','consent.screen.text'),('77270adc-5c14-4f38-9fc5-14bd75497167','true','display.on.consent.screen'),('7910a755-d7b7-4ddc-9fc7-9a6614b11f69','${profileScopeConsentText}','consent.screen.text'),('7910a755-d7b7-4ddc-9fc7-9a6614b11f69','true','display.on.consent.screen'),('7910a755-d7b7-4ddc-9fc7-9a6614b11f69','true','include.in.token.scope'),('829a488c-718f-4531-a9f6-ab00f53640a4','${emailScopeConsentText}','consent.screen.text'),('829a488c-718f-4531-a9f6-ab00f53640a4','true','display.on.consent.screen'),('829a488c-718f-4531-a9f6-ab00f53640a4','true','include.in.token.scope'),('9fb19211-f6ab-45db-87e0-448df52079b0','${addressScopeConsentText}','consent.screen.text'),('9fb19211-f6ab-45db-87e0-448df52079b0','true','display.on.consent.screen'),('9fb19211-f6ab-45db-87e0-448df52079b0','true','include.in.token.scope'),('b05e6963-67ad-41f3-b95e-9b8fdd56976f','${samlRoleListScopeConsentText}','consent.screen.text'),('b05e6963-67ad-41f3-b95e-9b8fdd56976f','true','display.on.consent.screen'),('b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4','false','display.on.consent.screen'),('b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4','false','include.in.token.scope'),('b33d9460-1543-441d-8ab1-d9474673f5a3','${emailScopeConsentText}','consent.screen.text'),('b33d9460-1543-441d-8ab1-d9474673f5a3','true','display.on.consent.screen'),('b33d9460-1543-441d-8ab1-d9474673f5a3','true','include.in.token.scope'),('b7ff58ee-7277-4b7d-8410-232388a2586b','${rolesScopeConsentText}','consent.screen.text'),('b7ff58ee-7277-4b7d-8410-232388a2586b','true','display.on.consent.screen'),('b7ff58ee-7277-4b7d-8410-232388a2586b','false','include.in.token.scope'),('c121e9f5-f608-4c14-bf94-7e8dd83c9236','${phoneScopeConsentText}','consent.screen.text'),('c121e9f5-f608-4c14-bf94-7e8dd83c9236','true','display.on.consent.screen'),('c121e9f5-f608-4c14-bf94-7e8dd83c9236','true','include.in.token.scope'),('c45016df-a2b9-4751-8d4e-74f15bec4d84','','consent.screen.text'),('c45016df-a2b9-4751-8d4e-74f15bec4d84','false','display.on.consent.screen'),('c45016df-a2b9-4751-8d4e-74f15bec4d84','false','include.in.token.scope'),('c68e5d0d-3495-43ed-91f1-a7b2f6a0665c','false','display.on.consent.screen'),('c68e5d0d-3495-43ed-91f1-a7b2f6a0665c','true','include.in.token.scope'),('cf0814c3-6aae-450b-a3fd-3f9f01b35367','${offlineAccessScopeConsentText}','consent.screen.text'),('cf0814c3-6aae-450b-a3fd-3f9f01b35367','true','display.on.consent.screen'),('cfd62848-1628-41a1-b5bb-de6143bb9fd1','${phoneScopeConsentText}','consent.screen.text'),('cfd62848-1628-41a1-b5bb-de6143bb9fd1','true','display.on.consent.screen'),('cfd62848-1628-41a1-b5bb-de6143bb9fd1','true','include.in.token.scope'),('dcc31d94-c344-4665-a0d7-21f01609396e','','consent.screen.text'),('dcc31d94-c344-4665-a0d7-21f01609396e','false','display.on.consent.screen'),('dcc31d94-c344-4665-a0d7-21f01609396e','false','include.in.token.scope'),('dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd','false','display.on.consent.screen'),('dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd','false','include.in.token.scope'),('e5f2d392-4924-4785-b180-93e18ef56d38','${addressScopeConsentText}','consent.screen.text'),('e5f2d392-4924-4785-b180-93e18ef56d38','true','display.on.consent.screen'),('e5f2d392-4924-4785-b180-93e18ef56d38','true','include.in.token.scope'),('e5f98793-02a9-4400-ac0f-c67bab7fefc9','','consent.screen.text'),('e5f98793-02a9-4400-ac0f-c67bab7fefc9','false','display.on.consent.screen'),('e5f98793-02a9-4400-ac0f-c67bab7fefc9','false','include.in.token.scope'),('e74c9199-baae-4815-9b3e-03fe95e7bfc9','${emailScopeConsentText}','consent.screen.text'),('e74c9199-baae-4815-9b3e-03fe95e7bfc9','true','display.on.consent.screen'),('e74c9199-baae-4815-9b3e-03fe95e7bfc9','true','include.in.token.scope'),('ec4f8801-dd3d-4cdd-86c9-a52b68beb937','${addressScopeConsentText}','consent.screen.text'),('ec4f8801-dd3d-4cdd-86c9-a52b68beb937','true','display.on.consent.screen'),('ec4f8801-dd3d-4cdd-86c9-a52b68beb937','true','include.in.token.scope'),('ec6ffefb-272f-41ed-bfd8-73ca499a94c5','false','display.on.consent.screen'),('ec6ffefb-272f-41ed-bfd8-73ca499a94c5','true','include.in.token.scope'),('f1521e13-3949-4dc3-8c63-42225e60cfae','${emailScopeConsentText}','consent.screen.text'),('f1521e13-3949-4dc3-8c63-42225e60cfae','true','display.on.consent.screen'),('f1521e13-3949-4dc3-8c63-42225e60cfae','true','include.in.token.scope'),('f22c3424-be2d-4c40-94ba-cda83dc82abf','${rolesScopeConsentText}','consent.screen.text'),('f22c3424-be2d-4c40-94ba-cda83dc82abf','true','display.on.consent.screen'),('f22c3424-be2d-4c40-94ba-cda83dc82abf','false','include.in.token.scope'),('f4c48c1b-8b06-4ef5-8b30-5b30fb372782','','consent.screen.text'),('f4c48c1b-8b06-4ef5-8b30-5b30fb372782','false','display.on.consent.screen'),('f4c48c1b-8b06-4ef5-8b30-5b30fb372782','false','include.in.token.scope'),('f6d1a25c-296c-427e-be91-2e8f52e18067','false','display.on.consent.screen'),('f6d1a25c-296c-427e-be91-2e8f52e18067','true','include.in.token.scope'),('fb055ca6-2889-47e6-852e-043b61aa5e34','false','display.on.consent.screen'),('fb055ca6-2889-47e6-852e-043b61aa5e34','false','include.in.token.scope'),('ff8351da-6cf2-4d5c-b5e1-b0ab712fc283','false','display.on.consent.screen'),('ff8351da-6cf2-4d5c-b5e1-b0ab712fc283','true','include.in.token.scope');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('0107e684-1e28-42bd-8a3b-9651db47bc37','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('0107e684-1e28-42bd-8a3b-9651db47bc37','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('0107e684-1e28-42bd-8a3b-9651db47bc37','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('0107e684-1e28-42bd-8a3b-9651db47bc37','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('0107e684-1e28-42bd-8a3b-9651db47bc37','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('0107e684-1e28-42bd-8a3b-9651db47bc37','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('0107e684-1e28-42bd-8a3b-9651db47bc37','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('0107e684-1e28-42bd-8a3b-9651db47bc37','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('0107e684-1e28-42bd-8a3b-9651db47bc37','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('029c5bde-e604-419a-97d3-4ca2228de1be','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('029c5bde-e604-419a-97d3-4ca2228de1be','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('029c5bde-e604-419a-97d3-4ca2228de1be','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('029c5bde-e604-419a-97d3-4ca2228de1be','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('029c5bde-e604-419a-97d3-4ca2228de1be','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('029c5bde-e604-419a-97d3-4ca2228de1be','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('029c5bde-e604-419a-97d3-4ca2228de1be','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('029c5bde-e604-419a-97d3-4ca2228de1be','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('029c5bde-e604-419a-97d3-4ca2228de1be','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('0413273e-892c-44ea-898e-fd49d1201ba1','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('0413273e-892c-44ea-898e-fd49d1201ba1','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('0413273e-892c-44ea-898e-fd49d1201ba1','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('0413273e-892c-44ea-898e-fd49d1201ba1','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('0413273e-892c-44ea-898e-fd49d1201ba1','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('0413273e-892c-44ea-898e-fd49d1201ba1','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('0413273e-892c-44ea-898e-fd49d1201ba1','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('0413273e-892c-44ea-898e-fd49d1201ba1','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('0413273e-892c-44ea-898e-fd49d1201ba1','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('08eeb426-2b14-4f54-b965-d4abfa9479ea','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('08eeb426-2b14-4f54-b965-d4abfa9479ea','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('08eeb426-2b14-4f54-b965-d4abfa9479ea','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('08eeb426-2b14-4f54-b965-d4abfa9479ea','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('08eeb426-2b14-4f54-b965-d4abfa9479ea','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('08eeb426-2b14-4f54-b965-d4abfa9479ea','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('08eeb426-2b14-4f54-b965-d4abfa9479ea','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('08eeb426-2b14-4f54-b965-d4abfa9479ea','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('08eeb426-2b14-4f54-b965-d4abfa9479ea','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('0d322164-ad54-4855-b3d6-62113bded474','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('0d322164-ad54-4855-b3d6-62113bded474','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('0d322164-ad54-4855-b3d6-62113bded474','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('0d322164-ad54-4855-b3d6-62113bded474','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('0d322164-ad54-4855-b3d6-62113bded474','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('0d322164-ad54-4855-b3d6-62113bded474','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('0d322164-ad54-4855-b3d6-62113bded474','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('0d322164-ad54-4855-b3d6-62113bded474','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('0d322164-ad54-4855-b3d6-62113bded474','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('1de5b8f3-931d-4ce7-bda0-427432898190','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('1de5b8f3-931d-4ce7-bda0-427432898190','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('1de5b8f3-931d-4ce7-bda0-427432898190','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('1de5b8f3-931d-4ce7-bda0-427432898190','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('1de5b8f3-931d-4ce7-bda0-427432898190','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('1de5b8f3-931d-4ce7-bda0-427432898190','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('1de5b8f3-931d-4ce7-bda0-427432898190','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('1de5b8f3-931d-4ce7-bda0-427432898190','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('23e85250-5e60-44bf-8e59-318f8b913cfb','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('23e85250-5e60-44bf-8e59-318f8b913cfb','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('23e85250-5e60-44bf-8e59-318f8b913cfb','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('23e85250-5e60-44bf-8e59-318f8b913cfb','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('23e85250-5e60-44bf-8e59-318f8b913cfb','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('23e85250-5e60-44bf-8e59-318f8b913cfb','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('23e85250-5e60-44bf-8e59-318f8b913cfb','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('23e85250-5e60-44bf-8e59-318f8b913cfb','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('23e85250-5e60-44bf-8e59-318f8b913cfb','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('2e20a65f-d2b0-4ec5-ba1d-603797d78bd6','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('2faaf180-4c53-45f1-9f28-4b99c13c31ef','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('2fd9819b-b10b-4482-ae53-b857ef8e7ab0','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('3169e16b-60c0-4a9b-89e9-2ea4984d626a','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('31f83365-eec7-46f2-9b8b-f03c9ca86cef','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('3b7d6028-9a77-4afc-a538-13ed7185ebb8','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('431e75fb-37ba-4b29-9bb0-1c8caad5690b','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('498fc338-cab0-4248-86e6-bc4321b81af5','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('498fc338-cab0-4248-86e6-bc4321b81af5','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('498fc338-cab0-4248-86e6-bc4321b81af5','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('498fc338-cab0-4248-86e6-bc4321b81af5','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('498fc338-cab0-4248-86e6-bc4321b81af5','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('498fc338-cab0-4248-86e6-bc4321b81af5','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('498fc338-cab0-4248-86e6-bc4321b81af5','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('498fc338-cab0-4248-86e6-bc4321b81af5','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('53aaf740-7deb-46f9-9b83-ae2827f90224','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('53aaf740-7deb-46f9-9b83-ae2827f90224','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('53aaf740-7deb-46f9-9b83-ae2827f90224','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('53aaf740-7deb-46f9-9b83-ae2827f90224','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('53aaf740-7deb-46f9-9b83-ae2827f90224','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('53aaf740-7deb-46f9-9b83-ae2827f90224','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('53aaf740-7deb-46f9-9b83-ae2827f90224','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('53aaf740-7deb-46f9-9b83-ae2827f90224','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('53aaf740-7deb-46f9-9b83-ae2827f90224','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('54a7148b-b941-4113-9ce2-c0521889afc8','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('54a7148b-b941-4113-9ce2-c0521889afc8','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('54a7148b-b941-4113-9ce2-c0521889afc8','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('54a7148b-b941-4113-9ce2-c0521889afc8','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('54a7148b-b941-4113-9ce2-c0521889afc8','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('54a7148b-b941-4113-9ce2-c0521889afc8','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('54a7148b-b941-4113-9ce2-c0521889afc8','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('54a7148b-b941-4113-9ce2-c0521889afc8','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('54a7148b-b941-4113-9ce2-c0521889afc8','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('56298f08-af78-4b33-9491-4389ec26f209','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('56298f08-af78-4b33-9491-4389ec26f209','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('56298f08-af78-4b33-9491-4389ec26f209','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('56298f08-af78-4b33-9491-4389ec26f209','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('56298f08-af78-4b33-9491-4389ec26f209','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('56298f08-af78-4b33-9491-4389ec26f209','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('56298f08-af78-4b33-9491-4389ec26f209','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('56298f08-af78-4b33-9491-4389ec26f209','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('56298f08-af78-4b33-9491-4389ec26f209','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('576651bb-ff24-48e9-bfa7-4285938bf1da','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('576651bb-ff24-48e9-bfa7-4285938bf1da','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('576651bb-ff24-48e9-bfa7-4285938bf1da','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('576651bb-ff24-48e9-bfa7-4285938bf1da','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('576651bb-ff24-48e9-bfa7-4285938bf1da','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('576651bb-ff24-48e9-bfa7-4285938bf1da','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('576651bb-ff24-48e9-bfa7-4285938bf1da','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('576651bb-ff24-48e9-bfa7-4285938bf1da','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('59d69c3f-3f78-44c0-9e4d-7be81cb108b7','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('5e8ea139-8f28-4e1d-b1f5-026675d45f3f','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('616c44d6-74e5-43f0-a01b-65d99c137f45','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('616c44d6-74e5-43f0-a01b-65d99c137f45','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('616c44d6-74e5-43f0-a01b-65d99c137f45','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('616c44d6-74e5-43f0-a01b-65d99c137f45','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('616c44d6-74e5-43f0-a01b-65d99c137f45','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('616c44d6-74e5-43f0-a01b-65d99c137f45','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('616c44d6-74e5-43f0-a01b-65d99c137f45','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('616c44d6-74e5-43f0-a01b-65d99c137f45','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('616c44d6-74e5-43f0-a01b-65d99c137f45','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('6b499240-3de7-435a-818a-ee5874ceae98','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('6b499240-3de7-435a-818a-ee5874ceae98','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('6b499240-3de7-435a-818a-ee5874ceae98','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('6b499240-3de7-435a-818a-ee5874ceae98','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('6b499240-3de7-435a-818a-ee5874ceae98','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('6b499240-3de7-435a-818a-ee5874ceae98','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('6b499240-3de7-435a-818a-ee5874ceae98','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('6b499240-3de7-435a-818a-ee5874ceae98','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('6b499240-3de7-435a-818a-ee5874ceae98','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('7716f2a9-f3f0-4de4-8b5f-44f748ab9282','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('7ccf992d-cf94-4cca-a1f1-ad30db657e92','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('8116d826-05ea-4e90-ba26-011ab786de7e','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('8116d826-05ea-4e90-ba26-011ab786de7e','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('8116d826-05ea-4e90-ba26-011ab786de7e','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('8116d826-05ea-4e90-ba26-011ab786de7e','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('8116d826-05ea-4e90-ba26-011ab786de7e','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('8116d826-05ea-4e90-ba26-011ab786de7e','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('8116d826-05ea-4e90-ba26-011ab786de7e','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('8116d826-05ea-4e90-ba26-011ab786de7e','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('8116d826-05ea-4e90-ba26-011ab786de7e','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('82fa0823-5eec-43cb-bd64-332723030562','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('82fa0823-5eec-43cb-bd64-332723030562','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('82fa0823-5eec-43cb-bd64-332723030562','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('82fa0823-5eec-43cb-bd64-332723030562','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('82fa0823-5eec-43cb-bd64-332723030562','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('82fa0823-5eec-43cb-bd64-332723030562','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('82fa0823-5eec-43cb-bd64-332723030562','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('82fa0823-5eec-43cb-bd64-332723030562','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('82fa0823-5eec-43cb-bd64-332723030562','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('84cdd591-bea5-4aea-ba75-13df79253868','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('84cdd591-bea5-4aea-ba75-13df79253868','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('84cdd591-bea5-4aea-ba75-13df79253868','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('84cdd591-bea5-4aea-ba75-13df79253868','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('84cdd591-bea5-4aea-ba75-13df79253868','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('84cdd591-bea5-4aea-ba75-13df79253868','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('84cdd591-bea5-4aea-ba75-13df79253868','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('84cdd591-bea5-4aea-ba75-13df79253868','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('84cdd591-bea5-4aea-ba75-13df79253868','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('8e1aa514-01d1-4d71-b984-1f533b776280','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('8e1aa514-01d1-4d71-b984-1f533b776280','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('8e1aa514-01d1-4d71-b984-1f533b776280','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('8e1aa514-01d1-4d71-b984-1f533b776280','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('8e1aa514-01d1-4d71-b984-1f533b776280','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('8e1aa514-01d1-4d71-b984-1f533b776280','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('8e1aa514-01d1-4d71-b984-1f533b776280','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('8e1aa514-01d1-4d71-b984-1f533b776280','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('90915a43-585e-46cc-b9d0-f3ad91c639e8','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('90915a43-585e-46cc-b9d0-f3ad91c639e8','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('90915a43-585e-46cc-b9d0-f3ad91c639e8','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('90915a43-585e-46cc-b9d0-f3ad91c639e8','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('90915a43-585e-46cc-b9d0-f3ad91c639e8','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('90915a43-585e-46cc-b9d0-f3ad91c639e8','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('90915a43-585e-46cc-b9d0-f3ad91c639e8','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('90915a43-585e-46cc-b9d0-f3ad91c639e8','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('90915a43-585e-46cc-b9d0-f3ad91c639e8','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('91fd74c7-1fbb-410a-83c4-b19d280c4878','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('91fd74c7-1fbb-410a-83c4-b19d280c4878','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('91fd74c7-1fbb-410a-83c4-b19d280c4878','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('91fd74c7-1fbb-410a-83c4-b19d280c4878','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('91fd74c7-1fbb-410a-83c4-b19d280c4878','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('91fd74c7-1fbb-410a-83c4-b19d280c4878','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('938bd1fc-040b-4721-b954-063f4fa33739','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('938bd1fc-040b-4721-b954-063f4fa33739','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('938bd1fc-040b-4721-b954-063f4fa33739','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('938bd1fc-040b-4721-b954-063f4fa33739','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('938bd1fc-040b-4721-b954-063f4fa33739','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('938bd1fc-040b-4721-b954-063f4fa33739','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('938bd1fc-040b-4721-b954-063f4fa33739','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('938bd1fc-040b-4721-b954-063f4fa33739','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('97934877-0b5d-49fa-8612-070f51740430','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('97934877-0b5d-49fa-8612-070f51740430','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('97934877-0b5d-49fa-8612-070f51740430','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('97934877-0b5d-49fa-8612-070f51740430','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('97934877-0b5d-49fa-8612-070f51740430','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('97934877-0b5d-49fa-8612-070f51740430','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('97934877-0b5d-49fa-8612-070f51740430','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('97934877-0b5d-49fa-8612-070f51740430','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('97934877-0b5d-49fa-8612-070f51740430','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('9afada1b-e972-45be-b9bf-86b4eb758408','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('9afada1b-e972-45be-b9bf-86b4eb758408','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('9afada1b-e972-45be-b9bf-86b4eb758408','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('9afada1b-e972-45be-b9bf-86b4eb758408','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('9afada1b-e972-45be-b9bf-86b4eb758408','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('9afada1b-e972-45be-b9bf-86b4eb758408','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('9afada1b-e972-45be-b9bf-86b4eb758408','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('9afada1b-e972-45be-b9bf-86b4eb758408','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('9afada1b-e972-45be-b9bf-86b4eb758408','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('9b54a677-f83d-4176-9bd1-6bc428f78077','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('9b54a677-f83d-4176-9bd1-6bc428f78077','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('9b54a677-f83d-4176-9bd1-6bc428f78077','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('9b54a677-f83d-4176-9bd1-6bc428f78077','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('9b54a677-f83d-4176-9bd1-6bc428f78077','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('9b54a677-f83d-4176-9bd1-6bc428f78077','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('9b54a677-f83d-4176-9bd1-6bc428f78077','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('9b54a677-f83d-4176-9bd1-6bc428f78077','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('a8f8eae8-605c-4796-8598-dd02e8ff03f3','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('b132e832-a5b3-4182-8fb8-b565ad083bb1','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('b132e832-a5b3-4182-8fb8-b565ad083bb1','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('b132e832-a5b3-4182-8fb8-b565ad083bb1','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('b132e832-a5b3-4182-8fb8-b565ad083bb1','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('b132e832-a5b3-4182-8fb8-b565ad083bb1','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('b132e832-a5b3-4182-8fb8-b565ad083bb1','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('b132e832-a5b3-4182-8fb8-b565ad083bb1','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('b132e832-a5b3-4182-8fb8-b565ad083bb1','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('b132e832-a5b3-4182-8fb8-b565ad083bb1','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('c1a9f132-ac4b-4f61-b831-29f1d247f380','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('c1a9f132-ac4b-4f61-b831-29f1d247f380','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('c1a9f132-ac4b-4f61-b831-29f1d247f380','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('c1a9f132-ac4b-4f61-b831-29f1d247f380','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('c1a9f132-ac4b-4f61-b831-29f1d247f380','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('c1a9f132-ac4b-4f61-b831-29f1d247f380','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('c1a9f132-ac4b-4f61-b831-29f1d247f380','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('c1a9f132-ac4b-4f61-b831-29f1d247f380','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('c1a9f132-ac4b-4f61-b831-29f1d247f380','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('c2dd697e-cba2-4eea-8cbf-f415be94f49f','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('c7a3d742-da9e-420e-a8a7-eb2aa95aac83','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('d03f4768-32f0-44ae-aac8-e22bc7213192','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('d03f4768-32f0-44ae-aac8-e22bc7213192','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('d03f4768-32f0-44ae-aac8-e22bc7213192','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('d03f4768-32f0-44ae-aac8-e22bc7213192','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('d03f4768-32f0-44ae-aac8-e22bc7213192','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('d03f4768-32f0-44ae-aac8-e22bc7213192','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('d03f4768-32f0-44ae-aac8-e22bc7213192','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('d03f4768-32f0-44ae-aac8-e22bc7213192','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('d03f4768-32f0-44ae-aac8-e22bc7213192','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('da53c749-9153-4bc2-8a6c-a5439f78164f','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('da53c749-9153-4bc2-8a6c-a5439f78164f','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('da53c749-9153-4bc2-8a6c-a5439f78164f','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('da53c749-9153-4bc2-8a6c-a5439f78164f','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('da53c749-9153-4bc2-8a6c-a5439f78164f','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('da53c749-9153-4bc2-8a6c-a5439f78164f','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('da53c749-9153-4bc2-8a6c-a5439f78164f','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('da53c749-9153-4bc2-8a6c-a5439f78164f','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('da53c749-9153-4bc2-8a6c-a5439f78164f','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('dee8bb53-aeda-49c9-b1e1-6b6369f92a01','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('e84e1e63-e0fe-4a05-ba92-a52078fe8291','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('f00d57fe-94e2-4f9d-8ff3-3fd12b840258','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('f0d24cf3-6681-43f9-a774-b5b0f152c960','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('f0d24cf3-6681-43f9-a774-b5b0f152c960','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('f0d24cf3-6681-43f9-a774-b5b0f152c960','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('f0d24cf3-6681-43f9-a774-b5b0f152c960','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('f0d24cf3-6681-43f9-a774-b5b0f152c960','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0');
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('459ead87-bce8-4925-9757-a2149d6d9a45','b72d0333-7283-45fd-9ff5-68d3e4793cdd'),('52ee9e04-b3fd-4e78-a83d-c15bad81554c','cae76351-b3fd-4f4d-a8f9-a38863aa8f5a'),('5638f6bf-ef0e-4bf6-acca-f295f1062115','c562ee56-e12b-4294-aa8a-5889729450e0'),('6b55ca8c-1e26-4ba7-9a39-3186a1196fa3','8b68ee81-8d49-4d34-9df6-42bccc3d23ae'),('77270adc-5c14-4f38-9fc5-14bd75497167','55bfd3e9-dc9e-489c-bb02-ef749e908efc'),('cf0814c3-6aae-450b-a3fd-3f9f01b35367','12b2031f-2094-4c79-9d61-5bd2ef272c0e');
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
INSERT INTO `COMPONENT` VALUES ('0355b016-f14f-42b6-8fea-df2a5b6e5a4c','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('0cc60b7f-6b1e-4307-ab9e-3f1cf3591c18','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('190bfea0-026e-4b06-9e4e-50d04fc309bc','Allowed Client Scopes','a8877546-78d2-4601-8f66-d697f8ccfc92','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','anonymous'),('198c4e24-c3a8-499e-8aa1-eeff4aa6f97b','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('21fcca83-adab-4af4-9a3a-70a6d0051c64',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('25594876-617a-4d96-802b-edce75dbaedb','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('25fd8bce-e3eb-4c95-bae2-636c924a5952',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('2751b4a4-6a95-4455-8ca3-cf2236d7c7c2','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('2ae0ec59-4961-484d-8aed-26349670df6d','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('30a10a97-a306-4cb3-9c71-8f9b188fdc00','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('30ea9124-9086-49d5-9e59-1596ad14481c','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('3cd0dbc4-96c7-4e3f-9213-9bbb0ef0f105','rsa-enc-generated','a8877546-78d2-4601-8f66-d697f8ccfc92','rsa-enc-generated','org.keycloak.keys.KeyProvider','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL),('3ce0b2b8-41f0-4433-b70d-2184c17ba5b2','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('3f64eb28-63c4-4d10-96fc-b36228f41a9a','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('447eb641-3129-407a-afc4-d69deefd26b2','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('4a99fdf2-be10-47e6-994f-6c8c72845b95','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('4dfedc1b-1d30-4806-b9c4-882d3138bd23',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('4fc64970-ec69-4c34-874a-0a201b5e2119','Allowed Protocol Mapper Types','a8877546-78d2-4601-8f66-d697f8ccfc92','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','authenticated'),('54890761-280c-40d8-b419-2074875691ed','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('556c3202-0704-456e-957c-c790958a9615','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('578591e7-d84d-494e-a8c3-8a507109a222',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('578b9129-33fe-41bd-a9a6-b1d835d76a85','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('585562b3-b806-4b83-a3bf-5ba1a2d00bb0','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('5d3f8d1d-20a1-4911-a1c4-6d2f97d9f77b','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('5db50345-6cfc-4aac-b7fa-bf6e6f042c8e','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('603c4b4e-f5e5-4f20-854b-45b2b2466909','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('6143a44d-b230-459a-90b4-143aa2f11301','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('616d1d2e-42ff-4375-83f6-8f9bfeb70c39','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('61c75b68-07b5-4183-a5f5-9694bdb6c61f','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('65d3b7b3-72eb-4cff-a778-7b5678913cae','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('6a781d33-9a4f-4d8b-84bd-e831e15af13e','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('6acf7ec9-88f5-4d14-954c-1e520df90724','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('6e4db62b-43cd-4eb7-bce8-ae3effc974de','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('71217af1-0588-4b8e-8119-c54ea10d4448','Allowed Client Scopes','a8877546-78d2-4601-8f66-d697f8ccfc92','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','authenticated'),('72083c7c-50a3-42af-b8e0-c9d5157c731d','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('73b70a41-e031-444d-87d5-debeb953e8f1','Full Scope Disabled','a8877546-78d2-4601-8f66-d697f8ccfc92','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','anonymous'),('775962b7-6fab-480e-a1fd-cb653f022e9b','Allowed Protocol Mapper Types','a8877546-78d2-4601-8f66-d697f8ccfc92','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','anonymous'),('78040151-e44f-436b-8fac-811a2245dfaa','hmac-generated','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('78caf30e-8c74-4526-8c7a-f0c2bcc55348','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('7b0159dc-9c57-42fc-8f57-270443db495e',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('7c7188c4-42fc-4c4c-ac05-a8997220c5ff','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('7f837495-f575-4461-94c6-50cdbd4550ff','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('8999a54d-a019-4765-921b-066ccceb5bb8','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('8a1d3b59-ae2e-4632-8911-cbbd222e799e','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('8c50a3f1-5476-4b6b-9e33-f772a11070fd','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('8e7067a9-1b14-47a0-8a04-70e3b56b8447','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('8f21b2f6-861a-43d4-9e17-dbb1dc130c16','Max Clients Limit','a8877546-78d2-4601-8f66-d697f8ccfc92','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','anonymous'),('933cceb4-7429-4171-ba28-2e393757918e','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('99790bef-b4aa-4f93-93dd-5dd550678176','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('9c7680a3-7f0b-4144-b31b-c02c4eac3c20','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('9cbf7d6f-b78c-42e0-97a6-9782dccb9288','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('a113170a-9cc1-409a-a5a0-8baa4e310644','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('a117049f-95f2-4428-ab50-c504bbb49be0','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('a32c9d8d-368c-4dee-b88e-f5346d290451','hmac-generated','a8877546-78d2-4601-8f66-d697f8ccfc92','hmac-generated','org.keycloak.keys.KeyProvider','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL),('a9df5002-93d6-4d8a-8312-31468822d1d2','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('ad9fa791-60f0-446e-9d22-4c51c4481950','Trusted Hosts','a8877546-78d2-4601-8f66-d697f8ccfc92','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','anonymous'),('bb5a79e3-e2b1-486a-9816-c122dd45fb17','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('c22a824c-14d1-46f1-befc-d29a89ecf648','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('c3efdd27-0522-4d20-bad3-58a0db098d4b','hmac-generated','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('c505de46-505e-4729-a867-c5a3f873f004','hmac-generated','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('c59d0fd5-b7eb-4cd8-9d50-3ef49f2545af','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('c8d0cecc-cd99-401d-ac0f-f9d6c2c5eba2','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('d1c19517-7e94-4adb-b98f-f77f311a36a5','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('dffb9f04-9b89-4e33-b965-4d9c0df83ed7','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('e03d6724-0c49-4551-a300-adb5e2b0f808','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('e2b656da-3aee-4189-834d-5f5610c348cd','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('e7dd1387-7292-4ffc-b02c-932797ed0a59','hmac-generated','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('e851204b-c6c9-4290-9649-a5db0eabe979','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('f10be68d-5f22-4c21-9bef-988ae4aa1c86','aes-generated','a8877546-78d2-4601-8f66-d697f8ccfc92','aes-generated','org.keycloak.keys.KeyProvider','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL),('f57fcfc0-748a-4281-9cd7-a08557fea3d9','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('f81b2c0b-33c5-442b-a8dc-abcccaeef166','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('f87c7ccd-dc2a-4e8c-aeb1-3e52720ecbeb','hmac-generated','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('f8df3291-8d83-4aa0-9fe3-18505eb26387','rsa-generated','a8877546-78d2-4601-8f66-d697f8ccfc92','rsa-generated','org.keycloak.keys.KeyProvider','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL),('f91c97d5-d653-4355-b6dd-853814c70236','Consent Required','a8877546-78d2-4601-8f66-d697f8ccfc92','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','anonymous'),('fd479528-613c-4fa4-aaa2-65c623903dbf','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL);
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('001f4ff7-5e64-4983-8f46-52102d2cbd69','6143a44d-b230-459a-90b4-143aa2f11301','priority','100'),('00800156-cdd5-478b-ae7c-3c7de9679e7c','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','saml-role-list-mapper'),('0241e415-4955-420c-86d4-d4f81567160e','6143a44d-b230-459a-90b4-143aa2f11301','keyUse','SIG'),('034f4466-2048-4ec2-a448-682559f9443f','30a10a97-a306-4cb3-9c71-8f9b188fdc00','priority','100'),('03832fa9-c9cd-4293-9439-e5fc05b05594','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','saml-user-property-mapper'),('05d9eb57-5478-4476-8813-e0e3d6fdfc05','3cd0dbc4-96c7-4e3f-9213-9bbb0ef0f105','keyUse','ENC'),('05fbeb80-7209-443d-a0d7-815117a29a37','f8df3291-8d83-4aa0-9fe3-18505eb26387','certificate','MIICmzCCAYMCBgGL77v6szANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMTIxMDIzNDE1WhcNMzMxMTIxMDIzNTU1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC7xxSKoENr5rO7qlMZcrKPcZIjvdqhvMhYsiGfVK3qoF4I3L39KDRUU19qQVMkPnAv9xUbAL/B35KbzkA1fsopPuGvvCi9c5F2cwnSkTb7IdK9+V7AFvxYxx3tGNq9NO9cGTqkuyH1tSTOxEjNxVVVgDcUO8PPyVogF3gxcxBTqqDIQxwbW4/BszE8pQNVS47AZtZsXDNoDTMgyu1niYZ/mmxMkNc+ZbbmOJmWoEg6MEemnMtszptmk1nfXv7j+lRsb5w6E3F2vc/XDg9DECRKytW9Bw1TpUmPeAyy/7Lx1iEELvtDrGyi+TBe0vRPJYGINVm9QB2/Sho0/sDc/hQ7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAMl4jf/0QVla80EWKeycA1EulKwtYPdzcqJcwSBf131LpIhL5VEfa7rM3sHuVLKoX4v35So/GSNvz5wJSn4RdmwRIhd6jB+m3tyiPBTybrWLLbJUQsC8B3i/9jwUxJ1QIS+SKYMHnk/7Br3oAySyTfM7HYntAFq/6dHxFeqWSDN9uyslL67ruKcNuureffCToV8mnUMFy9p6y6G5P833pGWsiOET1GOqYJIyJgLqSJdkzpfj4jwx0+/41Ixxenffmyag8XnCzEPfed99kQM/Z5AlL9vi6jHw41ckcvOATkFUk2IgTA42lIkrClmfB0oUa29SGlKu9X5kLVZ4JjbNGQ='),('076c8bc0-1c1a-48ed-8324-fddf7ed1ba87','e03d6724-0c49-4551-a300-adb5e2b0f808','max-clients','200'),('07f1f5be-6c01-4db8-816b-fadef38f606c','f87c7ccd-dc2a-4e8c-aeb1-3e52720ecbeb','priority','100'),('0c0d34a6-1573-4442-96d4-83f7410ebd0c','8999a54d-a019-4765-921b-066ccceb5bb8','allow-default-scopes','true'),('0c476554-0e72-4758-aeab-ef4751afb415','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('0dcf1948-7550-4a62-918f-73ad9fe3fcd5','616d1d2e-42ff-4375-83f6-8f9bfeb70c39','algorithm','RSA-OAEP'),('0f76840f-50a0-4cb0-86b4-fa3db43e79c0','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','oidc-full-name-mapper'),('120fd8e6-0702-453c-a4d8-a0724f26ccda','a113170a-9cc1-409a-a5a0-8baa4e310644','host-sending-registration-request-must-match','true'),('121d51c9-9fbf-4547-b643-3d4276307055','3ce0b2b8-41f0-4433-b70d-2184c17ba5b2','certificate','MIIClzCCAX8CBgGL7720IDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTIzMTEyMTAyMzYwOFoXDTMzMTEyMTAyMzc0OFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALex736ipQhf7JgK6KL5gGSywtlah/1BJbv95nekeFoUZVv9Kh4C6zystPOFniScO8asCdKr94t0z1U2BVOpbau+8kCQRILjVyQ6eUYx2+5rh2rWWIkXRCxJ8+B8VM6MH8GDDnOHH+938tAu4K/83mG9uoanRCjs/qLMRVZEGveqknUyMqDQRZYtQ6OITnrLc3xKdiV4c4YRKBiNV4KamIEqVHCdWQBDnm2i9xkLeWy0ssg3DIOUGgYq8UPCw+effS/Ct7biMh3WrIa/RBoHw3M63xS5oAuOdR4/x9w4F2MMBMXZcB5K/mpU95oJwPxLd49lbom6zNIPhBvMD8+An08CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEArFmiiPhVSejEi89Ra+fND3eEjkNSJ7gH35B5usvjbXjUGFnn8T1ELi+Ux89Jt79olEndSRxEGobwMG8LtRmsSRKYpyZgg/BUAfzNVBP+QjahG+cWZ+Yj2mJ4q+5y2VECJFSHbeQQnPCv+iXAKyz6gTjr6htax0Ma2fZMLWc5mfmLg4krHcDBYlsyqWeaiPGx2RliIt2+0TZczmQr9ZZKR8WMYicqfhoU6jFpc90jskUBGrAPiyWjAvtEMZIDzJ2GM+RsyvKq2szH4N+LizDwRVtTJZ5Q3Hpln/sJZxQLGoG77ljd62Ofv4E666b9VANGJ+VrtD1UAxBu3dPC2FwLeA=='),('1487e907-837b-460f-a4aa-527afc10ef13','c505de46-505e-4729-a867-c5a3f873f004','algorithm','HS256'),('158a53c8-bb5d-47fe-81c6-dd94df8e36fe','78040151-e44f-436b-8fac-811a2245dfaa','priority','100'),('15f9f260-7862-46f4-a704-fce46d704258','8f21b2f6-861a-43d4-9e17-dbb1dc130c16','max-clients','200'),('1829ec2a-847e-4d72-8081-4dc8ab9ff445','72083c7c-50a3-42af-b8e0-c9d5157c731d','keyUse','SIG'),('19fa3e69-2816-4b92-b301-c88f01739d93','8c50a3f1-5476-4b6b-9e33-f772a11070fd','priority','100'),('1ab6b362-f535-4647-8ddd-5e6b2cb43d8f','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('1ad0b69a-6707-4df9-89cc-5ced6daa672d','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','saml-role-list-mapper'),('1c1c1bac-fd38-4aac-915f-e113d935b267','c505de46-505e-4729-a867-c5a3f873f004','priority','100'),('1c34b6c7-db3f-4688-9772-04229866641a','7c7188c4-42fc-4c4c-ac05-a8997220c5ff','certificate','MIIClzCCAX8CBgGL776jkDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTIzMTEyMTAyMzcxMFoXDTMzMTEyMTAyMzg1MFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJsFBeYuLSniU25FU3pLPejXBqgGfvmMGyMwpsHGBXdtWuwT8zLtQMsawUpEK/mrTyUTp5UDBxucr01Q7wNwwuGRZ2flhoyWk7FG5EJMACoOjHdtYypBCorWphTP9jHrpDpT6iPupIczN5x1SJbxKIZTFLYVoe3Bf/nWbisKBEO7B2fBOEuquNLCchx21tLlHHZNbiEcELxszuSkq96cbQjoV2W16oSXDHtxDYPNVpaPsgS2JXAeJc7HH0mQXrfjTG740cQQW4Z/o6xxhgb3nXPfK8z1n37YwPfTRqJJtbxMhccrOIyxybwX+Ch5JfUzyaOKlvW88qJUE/xjU0pFk4UCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAZKA2RHybFe1+g3k2HOxsWZ3MRMsuU1kfgQbz3dmm0WW7lFss5TGbPvrFV/u5A0W/+hdAJkwbXSQ2GayFRKMmxvmtxZhsmcP7EL6MwteLjAIEezyr7B/TL2sw096PcXHMlS428eaS5LeQK1HA6NKiIgRDFMxJPHZ+uYah4UGTRn+NBs2QlpwqafRU4hwjNjSSlM3PsUNBGLaQi0gdZGsC3oQASDUTHo2C5JC25nO6Ott8EVZd6eX2TPc4OBAeQB6Wa8w39vu7EaFKvR0StnOnKvgYJS2Zm8NfzoXVNZ9Zq4q2hc3XNawh5g8iraXGxoErEg5LOKPUoU28L5hIsHZQ0w=='),('1cf6cb89-e2c7-47f8-a5ea-642508d77b5f','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('1d843624-6083-47b8-8524-b0528079d1e1','c3efdd27-0522-4d20-bad3-58a0db098d4b','priority','100'),('1dc43c9e-5cd7-40e8-94cd-c3a9656a70d5','190bfea0-026e-4b06-9e4e-50d04fc309bc','allow-default-scopes','true'),('1e4938f6-3fa7-4e29-a6cc-4c03a6b9fd9b','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('20dbdc6d-c877-4615-9954-23c685fc2722','3cd0dbc4-96c7-4e3f-9213-9bbb0ef0f105','certificate','MIICmzCCAYMCBgGL77v8FzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMxMTIxMDIzNDE2WhcNMzMxMTIxMDIzNTU2WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCwjxAda+/y6zS6HfByB7DSKb+hqZAKrk9sFsUCApwfxcyF6nzbAsfxpis/g3Bk0MjVBHL+x+IS8TD8MRYFhkWefZXeM2mqG6z1Lm1JICwOf7//2GpRQ15X1pp5BFgtc94XmwsayNDPADYlXQA/nY7YNP4MXkD8nv2jzU0OcF9j5rC8/o8FW0JWZJPho+AiRVNpsWMm71ntL9s6z04qFchIuwTH1GNFxF/IJBEDbTaLH3D1X4KE7J083Rv2+KzXNFZgclurYPsakSUaEa1gE82G78G9Pr7eCo+dzI8+9pPPAdfvDZyinFMRVh6578oNcaGss0hBQVmiioxv3kj27rrXAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHTYH3a1wb0YuaWb4wVxDPsHu5Sm0+jHy7LLDTwwMKob2h8uV0Ebow8TNhKZlr5DO2XzTjKU6xRZItlQ8o/5HQjI8zSruzzdHZp3aS7sWHit66oumHs0+gCJ7QnsEV+LEQ1DHLbzTMk31WvtIw8Mabgv+Vz6XOQslchlufUqsUmTeAxWSUNxak2oQu88kQ/5s42Obz+bgmWyDKh8aiB0kUojWos/TY/yR4PGYPvKXTUG1N8IcHwwbQBV/k7ductiZiUqY1RfcvTBpRSxTcCIS7P3ibNVVIG9mqRVgkF6D9Wut8O0A+AflpM5hhb8ULrYQgqQYOOPiEzwFxehinoS/dY='),('2198642e-26b9-4099-b0ef-6440371cac78','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','oidc-full-name-mapper'),('22b0148d-df51-4e49-99c9-a6ccd876a7e1','f81b2c0b-33c5-442b-a8dc-abcccaeef166','secret','vs_3YnOrOE-5Jdo1lmLDhg'),('238f7c6d-71cb-41ef-95f2-c5e30c1d6e4a','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','oidc-address-mapper'),('25d58a26-650e-4207-98f5-8babe911ef3c','fd479528-613c-4fa4-aaa2-65c623903dbf','kid','3afe263a-19ae-4227-bcaf-111d1da7efe8'),('261ca0e4-fa50-414e-8d26-53e2a802e3a8','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','saml-user-property-mapper'),('273f95ad-13e4-4e1a-a5bf-d1cb2cd83621','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('2a846ece-ea11-4813-a102-558785b7f4e5','c3efdd27-0522-4d20-bad3-58a0db098d4b','algorithm','HS256'),('2d767425-7378-4a5e-aec3-99e21fe97980','3ce0b2b8-41f0-4433-b70d-2184c17ba5b2','priority','100'),('2daff0b3-9754-4b6c-bf06-6b090f6b8b96','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','saml-role-list-mapper'),('2e44a6dd-37a6-4ff2-bd54-d65218fbf438','a32c9d8d-368c-4dee-b88e-f5346d290451','secret','4_pzZ_w-VPdKYjnfdg2NTnJo0hZ7zy8K_hzilNU3rwekkCOLEVGaJow02ja8XwY2QHHKLOkUbD6YJhgc-9899g'),('2ed8c73a-9491-4042-8a3c-c1060b3cabea','f8df3291-8d83-4aa0-9fe3-18505eb26387','priority','100'),('2f76559d-0d34-4381-886c-a1e7b537ade0','fd479528-613c-4fa4-aaa2-65c623903dbf','secret','lneGbjw0rPFOOVInm3Oviw'),('31275068-3409-433e-b34d-21dd57beaf01','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','saml-user-property-mapper'),('32d26dc1-2cb4-4c81-b8d3-133d05c5a080','72083c7c-50a3-42af-b8e0-c9d5157c731d','priority','100'),('339e5519-ec0d-427e-9c9e-9c5908389c60','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('352b994d-b038-4052-bbfb-98bf788c6d64','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('354ee046-a956-4319-a0ee-2fe7505fe5b2','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('355cd08d-e75e-4466-97ee-10b414b95959','99790bef-b4aa-4f93-93dd-5dd550678176','priority','100'),('35f91ecf-4b8d-4381-8ab2-d00ec9231649','c8d0cecc-cd99-401d-ac0f-f9d6c2c5eba2','kid','9a2897d3-bc6a-49eb-bad8-91ef3e937db4'),('36c87ff9-ea15-4511-ae08-31d7b57f9264','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('38daa924-4c87-4188-8dff-1d677187b516','f8df3291-8d83-4aa0-9fe3-18505eb26387','privateKey','MIIEogIBAAKCAQEAu8cUiqBDa+azu6pTGXKyj3GSI73aobzIWLIhn1St6qBeCNy9/Sg0VFNfakFTJD5wL/cVGwC/wd+Sm85ANX7KKT7hr7wovXORdnMJ0pE2+yHSvflewBb8WMcd7RjavTTvXBk6pLsh9bUkzsRIzcVVVYA3FDvDz8laIBd4MXMQU6qgyEMcG1uPwbMxPKUDVUuOwGbWbFwzaA0zIMrtZ4mGf5psTJDXPmW25jiZlqBIOjBHppzLbM6bZpNZ317+4/pUbG+cOhNxdr3P1w4PQxAkSsrVvQcNU6VJj3gMsv+y8dYhBC77Q6xsovkwXtL0TyWBiDVZvUAdv0oaNP7A3P4UOwIDAQABAoIBAB1o9lop9LVbKk5bxG0pbjcSQiHP9AS99SETMTnrwNuNJ3062ZTjbaLBdiHFvnhgQSD6EXeru9zpH+TAPoVCaPZhz2Y/UaAukBtdtC2jKdnWd9PiUUlDsF1VPmYqrOPSfSTPHMS9PHnn1658xqxX2mAsVzQXkjkin7eEBYK1M1rvC0WYhS9sYLC+WlVH0qouB6A8NUGfajes7Y2D98BKcWGBxHjMX89z2LNhOU9evdyoUAI2dgXCjqJa4h+8KSO65sYrHp4O+XQEGeTZwgzZx1smccnR70wDRuG15nzWdmwpGhk99KJ+c5O5PLKwcvXkGR+hg8lqGsI6SG2fdda7yWkCgYEA5Rm8VBuPh8UDoF2yNlwfB4V0VnllAne+FlCq5B+As+uRwHDx7olobmVYdhGeNFlLrgxkyLbGYG9nPE7XOPFHqUCRgtd0MvdngtMHOYfZFq2G0y0jUVqtMZn6IMqXdBawhgnWK5uz+QoTdxh/koqu3pGv7H5PobE4Mix6YIWnFIMCgYEA0dNEzpwb4yWslWgdyWTy3v0Zcb/yJQ1pKDMc3+lRmBtebd34DjWHJkeW6MH/lx30e5xtQJhQUq+bCcJN3WtrqdXWrBrRCYY+hcGU9bbt+Q2Du+ype7Pevo+HXnPstaf+YVg+83vy3Pc9IQpwuHBmjLkTxpV4+otE9JFxOR4fo+kCgYBKkVTV/155L2vdv4Fo5hUHaq2SE9MHuZe6RalJtOM8LHl1LI3iOQEvpXbkfxmCKmpSjSAkoDDzZG8ylurAUvAjK6vw7VWZ3SLo1uzsEcZb9kEC7RcovJ3QnjBmieo/077C8eKusPAkJ95sDiI/vTnroXmkPPyIQVlsI0P1tKrMJwKBgGCealbBZ84G8RuzX9P3Gic4YNkSTAxnyn5qWud4Zswl/iuVRL42Q8+Ks6DmhC0v6/5nn59ZA9OvbTLnODe3WVJRV5LUnmFGYc/xvggPfjFq2bhVWA3QW8dgDDOgKeXUP7zPh91SvBin+IwYZKNpjq9KIiMVfSnRq6T6vCpTBrrRAoGAXl2Y2138/owcfX3WIy6xZJI9iA8Z2OJquOKuFHSpxZFiOFVFEDyBYKphu2G4PlmPmoKWgYwaBKsVbVGhj1s6gVAlVx7ecAbz6z5pZbiCy8Gx/euBri6QihB8bdpKozn6wURk/lImScTTyNkuD7+yUaHAARBlF3U/PGkqprEu6OM='),('393f0754-7fde-458e-8c56-403fbddbd542','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('3a1c144d-fe55-4827-89c8-9c5ce7f36bd9','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','oidc-address-mapper'),('3c10e748-a9ed-41b6-bfac-90f90651da53','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','oidc-full-name-mapper'),('3c6dc153-4ade-4f07-a6f6-3c574d9ad116','2ae0ec59-4961-484d-8aed-26349670df6d','certificate','MIIClzCCAX8CBgGL774nHjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTIzMTEyMTAyMzYzOFoXDTMzMTEyMTAyMzgxOFowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMNRBh56Li2wpcpGztT3oCLz66nq5lsQajWugGCuGdPuy8jwwreA8tSmlSERR2uS3WKH59TlANJs1EQyONXiAqtFBB5WjS0h6dzNhFkF+/+6+j4L82wRBCMeek7ifWgBY1kJQ9Ubcdmx/6xJqMv4Vmo5f/UG/lgXj+gqMp+ZU0kjPfQnrVVVc+XNaUtHqOPMcj3yZ9ZNUzPlfhSwexZicFDcP3st8/VdlV9Skrkoc1KyeC6W65Ns41tYF3xD6zF39Nuc0OWUFQgB+nhRHKjJ9WCywsnyUfym03RPzeqAPdJ5y+kdbyK6KqUcxh/oUUoNc+47Li0ftFJPiTa4P4HVFYMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEASwrkoE1KqC44Gm1gAyRvHHunNI0tfgoD8Lwx4MIL4yGCITYGRk1s+75NvdqVstC7zr8Kz+7K2wq2VvERGyrlHbgHGIbE2hqBHbgz4VS5hoOARK+y2pdMC4LRvpzHCGtIYhlJRWwkfxM4G8Cc7hGFBmK3kJvJtX5rmUVMVK9q/4iB7qJVYbCavIgbi8z1yZi2FfSPRy3znMDaQ6JL5gyzzw8QUIfjDU1Hk+wrXz9csWGkV/sW4Bz6bZ2Nyhzs4zR2WdiMhvdyKZj0haWsKbyKRgk1HQzO3z+vC/qpKrpsktjzWEiGRE5O2V93uSdPtXVl1gpurgppkyCT05J/zAlHwg=='),('3e999d84-bb75-4fa6-aa16-ae7daa652978','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','saml-role-list-mapper'),('3f71e63e-03d5-4a58-a603-7955b30b94b6','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','saml-role-list-mapper'),('4090ed29-89eb-4e88-abfe-7efd3d48fe97','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('40cf750d-5b46-48d6-b8f0-d3e8b221fba3','c505de46-505e-4729-a867-c5a3f873f004','kid','40b4fb2e-5d88-4b94-a9eb-2973743ed048'),('4177ac30-f508-4863-9908-dbe7e416f178','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('41b33c3f-6e27-4b38-aaeb-62cf8ec97805','0cc60b7f-6b1e-4307-ab9e-3f1cf3591c18','client-uris-must-match','true'),('4341daba-ec64-4c76-924f-a73bcfdbfd79','f10be68d-5f22-4c21-9bef-988ae4aa1c86','kid','3b676b11-c5d2-4a5d-b100-36dbb3c680a4'),('44b3f29e-c11d-40b6-a7e0-d9b6f1ee9ed0','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('474fe06c-6a09-4563-a3e7-613ba18e7650','616d1d2e-42ff-4375-83f6-8f9bfeb70c39','keyUse','ENC'),('48443f7a-4450-42f0-9cb1-6d80c7add6b3','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('495f4861-35cc-45c4-80a1-bbf977b98ee2','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','saml-user-property-mapper'),('4a25242e-b8c3-4dcd-8f83-a027ac1d3e10','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('4cadf768-61fe-4dfd-a088-5a9e55ee9a14','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4d083f56-01fe-444b-b0ff-66f543d569ec','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4dd899f7-6a67-48c2-937f-bd3e2ee2f07c','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','oidc-address-mapper'),('4e00f77b-66e8-4561-a330-c2757f579629','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','oidc-full-name-mapper'),('4e751cb9-6ec2-4abc-b929-975b38a3a28e','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4f0f8ad9-d319-4125-8cdf-58e645a1d924','c8d0cecc-cd99-401d-ac0f-f9d6c2c5eba2','secret','xIboRtMKmxbHIZctgbnLtw'),('507bdd90-a135-4542-88ad-56b38c291e2b','f57fcfc0-748a-4281-9cd7-a08557fea3d9','host-sending-registration-request-must-match','true'),('50e0f5e2-fa3d-47eb-8821-11024b72052c','c3efdd27-0522-4d20-bad3-58a0db098d4b','kid','a2087723-abd9-4e67-94ac-2be558f8ab68'),('512a273d-018a-4262-be14-7d8da7fcc300','2ae0ec59-4961-484d-8aed-26349670df6d','priority','100'),('520bec63-c0fa-4cf4-88a7-1a0f99cf1b0d','198c4e24-c3a8-499e-8aa1-eeff4aa6f97b','certificate','MIIClzCCAX8CBgGL776hmzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTIzMTEyMTAyMzcwOVoXDTMzMTEyMTAyMzg0OVowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANfnjKIHgwmp+sqsZCccQiyGMIfFadIaQFj+W9r7dvEgCKTng/dBGKnVUWOnkVnxEkYyLSdibPgOUvcq5+C5WuNZtqVVic7MwpMXSsXf2AwXb3IKWqhFvHdXRZaYaTpQN+zEJ27WPOkksxlIm3CfwdGrraGK2vPkyWmYf78Ldr6iLp1mVeHH6RzRndBOpi6mzWD/HCU0AIUJqf1fhfMJoNIX3o6lcadQChF1B4sMs6lbK82Lw4W0q+dJfe9ne1JsaP1DQ22edHux1ZKbJo4RrsbBJBic6B6sg1rA/Wg0kHx2g7ieTMhbo2DKdyOEidg5dMYuuplJB+9YcorIhsrmCO8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAa420ROpATlx1RI6UB85rqZG+T54sal7FWOk3OaB9a7rwihX5kEV8+KvnvgUjKIjhhBYeA3wCbgIWEcVCyxB/HHg7tnSyhVidlERM404q9/RTnP+W/2EoEH02KvXUEkvtdv5Pb5/+Vk3H4jWKSuyKalSrYQyaH9zRvvIcbdLy9M0/8zteKW0FVub+bgDaXMAv8cdL6JoUzrAYwsnnMmzzE7/ZX3XFO68gBDRQ67DqEqUdh5nMnx1nzUp+IzwszopD0lmx1e63SNQTZgce7Vus/scWHOxG92T7gC7IA//rU1HAjVJkWXRdM+143UiJE+9wAO/P5hVEaTfvXjF4vvjCwQ=='),('53e4bd2a-1e92-402e-a498-3fe215d1c44e','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('554d8359-c3a0-4e91-b5fb-a754b31a9521','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','saml-user-property-mapper'),('56b24733-e9d4-4083-8035-bf35e8ff0dd1','99790bef-b4aa-4f93-93dd-5dd550678176','secret','hznrtCy0SBEdV1T0tS99pA'),('56ec68ff-fdc4-4da5-a29f-e2dde787af1d','6143a44d-b230-459a-90b4-143aa2f11301','certificate','MIIClzCCAX8CBgGL77yfdTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTIzMTEyMTAyMzQ1OFoXDTMzMTEyMTAyMzYzOFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN6nTDHTfEqT+uGwz49u1WqKDZRTtX3L/VhPvCrOk60dMhEZkgnT+oMbBaJS7glf3rpce6MguJDQfyKZW6mIBhJZfizzaXrpjnnVwkikfbIuyKTcW4129PmvwHam9yTKXvtlQCczqTnVDl3FV6zT7yy0dJC33FU/1p5mtR91t16S7UkqJoVoJ48CzQPplqTaZVQQNUN1ZEkmDIR8bF1+xJGQ5PVyvHDNSucaKSiv+1zZRmyQV1kM0I+O2idn8/0yEjEuzY+/FSnqdE5QPfXzne7h2HYp8liXxtrJoBklx1W+fZLh+yyaSHwGc9pTQeDOcgfZpdkKgs0vIfTJUGFwZrkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAFeV2ys92mn6a7hyVBZ00GX8qMGmQTlwv0l55HwewOdC7FoywP4JmIggyE1w26v4tikL6PiAB95B3eqD1eRX5Ie6Em2emMz+buiA74qUDHWfn7UEgCdMlgeGty2oIFROaccpabFVSvqoMuTzOzWkTz9YSASWxs6DHxxO/zUZXrZX5cYC6BxBMxS20v6ywLvfzLw3A4RwJVDkNmEValnKq+oFQlBF/momuPG7aLDdART/GIKElzVdHb9zB2rWAKVgcbdR2v5tAJnFgPef+SMpXlIHbAoYQGwi+d/dP/k1ikE3m8Ic3JGg228ql0tHE/nbtCRtD8o7ijHeMjf2ISe3ziQ=='),('57a7b9ac-47de-456d-9a5d-ddc81cb565a3','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('57a983a8-4c2a-4cbe-817f-474a5562c6ad','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('58a74ea7-6675-4b14-8ed2-494d40b52697','3ce0b2b8-41f0-4433-b70d-2184c17ba5b2','keyUse','ENC'),('58c98c92-113d-4ef6-bb1e-5e36c49af163','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','saml-user-property-mapper'),('5c22ef6f-b414-4538-baf1-808f9c289762','616d1d2e-42ff-4375-83f6-8f9bfeb70c39','certificate','MIIClzCCAX8CBgGL770xJDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTIzMTEyMTAyMzUzNVoXDTMzMTEyMTAyMzcxNVowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMIM4BCUVD56kIjniyNCoPdWPMolJIJEOF5c77WkuYWq8Tt82kRNg+Zoe6dJoK4+LDjYa+vpqGsDbBmu+1B2SQY7x338JCC1hQUomZ284B3ks2S3I8zV4NegGx+gNF/fDN9x+wV+YRC8KUEJSeyTA4GxPmLvxmUIupdxttYB4naaFOedEm8J5c+21oZ8jCJLZMQwYWNJC5CjPINtojwlSFlSYkEnuXPCnA+jAkPniHWu9QjD41ZJCfK/hctWAOUvPtuCSYeCb71EH99l32ET9hnbuiSHk1vStN9JvNSebRffxzu7EwI2SwAGjDTTWbo9IEvUYvSQYa+CuEwxN/KqbpMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAkCDiuhv/VvFJdF9XlI1i9q3phQ7neGfxxaZ5xHBfa5J5OhC9FmFlONjeAiToxdNiC4F6i9NSko3iBKPGVbuk9wKIGHi1Cz/kzp1i1zQpryIptFaZplZOCt+gNpXQKm8qAIlUGgGtajx91pGCuO8TlhvkVhulu6fRNWu3vU1ueuNeU3V3feXnohG+2kTZGmUMI/mgsPnRcFOosdwltGt+Z9EKjy+TOQGHC9sKYV58d/yKCyQIiA4dihSB++ZOJMK9tNI9hTxNZUEcJaFcBt/07B906idhs50Bt8qkPY6BbFTVhSyYVYr9junF0h8GkSyXFzZ/iQb/tCmPYa5MwW4E9w=='),('5d337e72-234e-4cfb-ad3c-ae89a6836632','f87c7ccd-dc2a-4e8c-aeb1-3e52720ecbeb','algorithm','HS256'),('5f6b8731-bb8e-43dd-b310-253b59ef81c6','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','saml-role-list-mapper'),('6016871f-86af-43ab-b81b-dce704fe16ba','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','oidc-address-mapper'),('601f8d06-e6f6-40b4-9b68-72cd29af9a18','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','saml-role-list-mapper'),('604d3694-6ebb-4539-8d46-9978b87ad2be','30a10a97-a306-4cb3-9c71-8f9b188fdc00','kid','cc672ce4-b711-4294-ada9-aad491714c61'),('61390443-9ec5-4ac9-8269-85d83b6b590a','2ae0ec59-4961-484d-8aed-26349670df6d','keyUse','SIG'),('62a4481b-1c89-4008-a09c-fb1d0adde3fd','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('63ac3ed0-e15c-4287-b5fd-be68f85b8f79','4a99fdf2-be10-47e6-994f-6c8c72845b95','max-clients','200'),('64ec933a-53ae-4bf4-8579-03c39d238da0','7c7188c4-42fc-4c4c-ac05-a8997220c5ff','algorithm','RSA-OAEP'),('65873917-4d79-4f94-accf-820c45713331','198c4e24-c3a8-499e-8aa1-eeff4aa6f97b','privateKey','MIIEpQIBAAKCAQEA1+eMogeDCan6yqxkJxxCLIYwh8Vp0hpAWP5b2vt28SAIpOeD90EYqdVRY6eRWfESRjItJ2Js+A5S9yrn4Lla41m2pVWJzszCkxdKxd/YDBdvcgpaqEW8d1dFlphpOlA37MQnbtY86SSzGUibcJ/B0autoYra8+TJaZh/vwt2vqIunWZV4cfpHNGd0E6mLqbNYP8cJTQAhQmp/V+F8wmg0hfejqVxp1AKEXUHiwyzqVsrzYvDhbSr50l972d7Umxo/UNDbZ50e7HVkpsmjhGuxsEkGJzoHqyDWsD9aDSQfHaDuJ5MyFujYMp3I4SJ2Dl0xi66mUkH71hyisiGyuYI7wIDAQABAoIBAGfMSujFCsMVJNzWZ2oEJG5Kbz9+8eKQO1ptoxSS67p+B5ncMi4nbieMRk5OS8t9Yic8TUgPgkr5e/qXdpYsFp2RzoULLC8vcuYLfyfFd5VMmQgvISmgKT0IyIxfpsthsJlULo8TUYJW4gHoTc6mB6T5UAcHfj9eQVTSe6wJ42M/LAbykMyObUWvS4SFnawgDphX3cAtPmYrU3Q+7YB02s4yZIhytfh8Fpi2UL7TESCwcH5EI/z/MIT8rHYj7fnc+txPKVf5Y1r5ymDpp9UBRO3vUrL3f7LbLcbvBLX2vB4yrtiP1TZs2lecEmQgZeEM69WCfmSREnLkG/wp+GEGcXkCgYEA+eY47VNIc5IIfKqMjb/KgqjO9VVZOqsxoaGaNsfMUPJz1JdQgxy5HSBTGn45t+UNN8HPpGjTqiozKjP+W1acEo/psedkiZL9oUMU0ECYQvziwOo/q+FjMNqpQcv25dqL/z53Swd1R8dnGSDQTZ4tZ3iFBxHjP99jobKYLHS3nZkCgYEA3SzfPUgYuCNgqwsTDlC+P2oO1HwJX5slJYCgfh3LMIKvPdNYDGUwgSxCXIyMIifU7eCT2xSllYgmpIE0I/qSL/HO7fMg4r6TCPY792/zvoQiJz+Wc1g78HE5vCm4ACxt8qvQtmhnw2e1Tu/eKh7YlbQFBP6E663EyBE071/dH8cCgYEAp5vWSrc1PO6RaqwpIVmlxgTa6omYE1WHMFVnTZ6sVw6GyevDQG0fa32mv3ox1Dl4qBEB58+3R8aOEpxU2YY5n+mOYJhGQk+odWS8rQDmHufmXmW+1tWQ5c+C/nKC4p+2jjejY1tZOg9wAtaTX7vb0C5xatCAjvKRrH5QumB+VuECgYEAxqDNu1NMH9JltjYz3t9Ue87bkqfyIxJJwexKNfi7yc0TZAqxQDB/5wHAdy0hjGsJJrhREKbyLeAgFAyUrtsQ/k3C8J8wIXHUym+YWxcHZ0lzApxwmRXcfoqwtvMgc8dy1kTHI4mP5kT05vc0Jc+d4pPRDjMlXCKqXqJVT8Rf6XECgYEAwqSFE11IK2NKtZZ9w001XKD0LAKRPj5QYY22U0JkgsjOYAc3tRDLasrMWdfNBra9MGH5pVTu2VNbveokioRb2DNbNicWdRDyKXopp/DQgCGuO+H9lHRAXHuJROVtn56L+8neZUU5Gug4ufLBW7jlXjKcphIlO5eRE3pJutxqqEA='),('65d23811-4c56-4088-a44f-9d03421e520d','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('66415128-178b-4400-b8e6-db4c81d4b7e7','a9df5002-93d6-4d8a-8312-31468822d1d2','host-sending-registration-request-must-match','true'),('6861ba6b-1a6c-4f5d-941d-303d0e24cc51','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','oidc-full-name-mapper'),('68acf973-cd0e-4fe2-b6fb-ebe865027721','78040151-e44f-436b-8fac-811a2245dfaa','secret','e0epP61S3MmxmRVCqPbYsZFXMi2E_uKv14OUlJsPZUBYtF8w1najoafIjobVS5Pto_NP-f1V8dg650LEwMz_Xg'),('69d7948a-cbaa-4b95-975f-d62eb89b7ce4','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','saml-user-property-mapper'),('6a109614-7c13-4275-9b36-71401f1cefac','e7dd1387-7292-4ffc-b02c-932797ed0a59','secret','liwkx4Xv86JlFbqcqXyMV9pV8Sd7qW8VASsdPfRNj5P5KTxZ71c3In19NNJNXUAC35q67qhTqJlISZYxXqJ1NQ'),('6ac341ba-972a-4af1-8501-6d4c9fc4ec21','78caf30e-8c74-4526-8c7a-f0c2bcc55348','allow-default-scopes','true'),('6b3cd571-1f61-481a-9e98-b6c44075eee3','616d1d2e-42ff-4375-83f6-8f9bfeb70c39','priority','100'),('6cbebbf0-13b5-466f-861a-1d40f1cfb24a','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','saml-role-list-mapper'),('6e0423d6-f065-4deb-bf28-2f35d941ff22','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('6fd0d9ff-967d-47ac-bf81-51c00c2ac39e','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','saml-role-list-mapper'),('71d63f9a-8763-4c7f-a546-5b0ae1137693','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','oidc-address-mapper'),('71df34da-49c9-4b11-bb72-2d44ab0bdf46','198c4e24-c3a8-499e-8aa1-eeff4aa6f97b','priority','100'),('722ab062-b573-4998-971f-0840d38dd860','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','oidc-address-mapper'),('732e7cba-87f0-427c-adf5-5cd3c3154786','2751b4a4-6a95-4455-8ca3-cf2236d7c7c2','allow-default-scopes','true'),('73681abc-467c-4ac1-a9e8-b23c1036e3d4','78040151-e44f-436b-8fac-811a2245dfaa','kid','9eb1b0d6-f8bf-4adf-8006-8b7e643c6c3e'),('75699c48-f4ff-482b-a9da-f66a486031e2','54890761-280c-40d8-b419-2074875691ed','algorithm','RSA-OAEP'),('7694e0f4-69c6-461c-b886-c888fb9da35e','f8df3291-8d83-4aa0-9fe3-18505eb26387','keyUse','SIG'),('77c48dff-a610-46ba-a9b1-89b64b23ab36','c3efdd27-0522-4d20-bad3-58a0db098d4b','secret','ruKRC-XsRxg5gqzDIMCCIhh_UpCLTrAh08vfjKit1yJcn6THkiXI41csaOH4Kx4dFsBWuQ6skkqx79yStGA8_Q'),('78e8e00d-b38e-4317-bcce-032042e51b0e','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('79912d1d-7bc6-4e35-8d34-2a4f50a9e7b3','f81b2c0b-33c5-442b-a8dc-abcccaeef166','kid','e14b800d-9a07-4610-81fd-ba1fabf7d90d'),('79ed868f-38d8-414d-9d0a-a51059e4d9d0','9c7680a3-7f0b-4144-b31b-c02c4eac3c20','priority','100'),('7b76d584-dbc4-4be7-9f37-2acd0039f294','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','saml-user-property-mapper'),('7ce41a75-da17-4b29-9591-5ecd72146ce6','ad9fa791-60f0-446e-9d22-4c51c4481950','client-uris-must-match','true'),('7ea524a5-04c5-4ac1-84e7-6d592ae17658','9c7680a3-7f0b-4144-b31b-c02c4eac3c20','certificate','MIIClzCCAX8CBgGL774ntjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTIzMTEyMTAyMzYzOFoXDTMzMTEyMTAyMzgxOFowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALRiR7CAgZ2VP5GOdZr46QjT5rzio7FODIWxv7ZVgx1PWoozzv8vtVVv4xBrZo0S9BFJ3b9rgiFiINiB4Sn7mmrnLNQ5M52WjVBnwY00R4YX58QeuDbMUWF9TuU+QAfybDXF/NBP90R2uHVyjTEERP110mK3e8BWikLRyJWl0vQ8o0WfKOzmEDC7YbB4e4ko+E0w/U5i6s/R3quRDbML/snYuud94/Dsck6lW7F4oPpGvLoGH32YNhEWOjv7Qafh5obIgxZzIanp3uwS9lNUFlxWlXFCnuZkQfvbY4B7edL3SuDf332Pij3m4cifuisCeBIGyXHQ7sfUjz2MplgQtyMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAjuxfJsqd05Luwad6Q5NyBKZ291U8njNrisaM7KHlH3TTywD8ZLttGLWOBXrRym4QBpbBCTwa83iUb5HzZQ9sYuFoPeJ6B8kpyzTZVNQiv9G3VqTXJA/3TS4cSRqgNkNLnP7cQs6++2kOuwAvphu+xkiFwHTkf6Dc6rZIqkaJa5nTLQ1jsylhD76jnmsVKUEShAQ66Wih89PdkcQy1ZQnVcSTkxqi6wPf068uWud3XINA3irP/7MFsgKK9eD3TYOs91dqq3vYg7KnbNbofVcrum9vjr3959k3d15Fi2ebFgCqvV0tZoPy25EYfUmDJon+HmrzATl9vIsyZtr6MbulQA=='),('7f3c4e99-74e9-4d79-b7cc-d43ad75f399a','f57fcfc0-748a-4281-9cd7-a08557fea3d9','client-uris-must-match','true'),('80efeb95-dbed-4e66-9c35-9c90ea94ab06','7c7188c4-42fc-4c4c-ac05-a8997220c5ff','privateKey','MIIEpAIBAAKCAQEAmwUF5i4tKeJTbkVTeks96NcGqAZ++YwbIzCmwcYFd21a7BPzMu1AyxrBSkQr+atPJROnlQMHG5yvTVDvA3DC4ZFnZ+WGjJaTsUbkQkwAKg6Md21jKkEKitamFM/2MeukOlPqI+6khzM3nHVIlvEohlMUthWh7cF/+dZuKwoEQ7sHZ8E4S6q40sJyHHbW0uUcdk1uIRwQvGzO5KSr3pxtCOhXZbXqhJcMe3ENg81Wlo+yBLYlcB4lzscfSZBet+NMbvjRxBBbhn+jrHGGBvedc98rzPWfftjA99NGokm1vEyFxys4jLHJvBf4KHkl9TPJo4qW9bzyolQT/GNTSkWThQIDAQABAoIBAA5txULLgYCohEN7SG3VmwmVGhWBpUfs9omr+ZmHqPKYxyG6KaTP2HwPHXagKcevXkqBLdP82CiFyPtVUSns0PbV5d4RyxhC27RgeNaC5HEFsaVcFSLVsvmBSSwevzeeS0bykJSPndjHt6FkeUEzaSY3jXH1SYErxZGnl9GBuSvkk3fkyWvbkZ+tmpxljZd9szkduqK6uoGfRN7mZN+DgH4NCyVWWQ7hkR/IxpEKBGLibtGpDV5CYI/wIc+n5ZuJOxc76qL5/B3d/1n2doGYuTdJQzdOjmIC0vis9eec2QKi6KEMgh1mwOCsc8K5YnnHlPWR9oQJTWpjvRl3++ApvwECgYEA1pyvkPpAVgZdJFT3rsufKxT3v34rnQxgRvwiur+/cw6dZYMvoxj5tRrdfpnDoZTmLlFU/LVoAj6MINyEtiHEKsgvmQVAVQqMaZyOJMWzW7QlAeZ1fxVupsux0WgDpNI7+kPS4xyHBJezKuoUgTXcjCAN8039Pl1dqxv24uxEXVUCgYEAuOpIJ+Dm4eggYav1lpwz3fUE8pqoDG8CWqkVghRFjvrmV1h5QKdvAmEAEhyKvQa/bwyF9pDBRIlRlS5b2MnfvBJDhQEYPzrlaREnrs7P+TqryjD1u1S3R9qMninf+cUjCpdxC6ngpO91kgVFCKoaW1iOw/hVYdvUBJu4Ql1u3XECgYEAlZE5YkamE833l9yHiZBra3D/gLuD1b3MU2xhH9mGqb8jvp2A06ASVz9T4mlzR+cnzFvuaPhcdkP1EOneq7g4qMA/O9vHC/2AAhKTldkauOyBZiOg+2KKbUBEuvZMo8/I8Q/Xp2Q4TOEUgvIEPFC3Vgj47/oIZjBXmWqx01BqDMkCgYB2383hLRjgM4zVnWl1GBfT4Zb7q2bLD3Yw+C/mfse0wiDgF/VjFgAsRFV6TzT1jef1KNTaDHbia3Cx+ap79FNLoWYck/aVd3RRlgCvxS4353rWsaDXe/+TRrFNYFgnRo9fWLoIqH3NKk+nvpGBn3DwNj8ZRoUFMv/asozCxTPnUQKBgQDCEWnYkwLH5M9nS0v6dL1TY1T8Y5TbMzkUkpgEEgVLBD8WAQqGFqMJJ+Qh33v4v7LqJ0vnEAqu5tWLOhb6ad7mcBVEA8Ep0Sy1Sd0DAMOZIebp/bxIJOlp+TJNrSNxE/esDqb9mXcp+TkMuAOtSu67IuKgqLvSJXJmB8TD7Hm4dQ=='),('814dc501-f857-4872-a685-d61591abaa0c','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','oidc-address-mapper'),('83d45afd-a17b-42ef-b6ef-010e4befc3a8','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('8401aae1-ae9e-4e5b-bd56-3ba232799099','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','oidc-address-mapper'),('88480078-154b-4aaf-b27b-82c72dfeaf40','6143a44d-b230-459a-90b4-143aa2f11301','privateKey','MIIEpAIBAAKCAQEA3qdMMdN8SpP64bDPj27VaooNlFO1fcv9WE+8Ks6TrR0yERmSCdP6gxsFolLuCV/eulx7oyC4kNB/IplbqYgGEll+LPNpeumOedXCSKR9si7IpNxbjXb0+a/Adqb3JMpe+2VAJzOpOdUOXcVXrNPvLLR0kLfcVT/Wnma1H3W3XpLtSSomhWgnjwLNA+mWpNplVBA1Q3VkSSYMhHxsXX7EkZDk9XK8cM1K5xopKK/7XNlGbJBXWQzQj47aJ2fz/TISMS7Nj78VKep0TlA99fOd7uHYdinyWJfG2smgGSXHVb59kuH7LJpIfAZz2lNB4M5yB9ml2QqCzS8h9MlQYXBmuQIDAQABAoIBAD3GrkHe20v37fKDs7sotccXIbhnV2JdYGAJ03wPD/NGt/b9oMLgUU/iBfipSMlKE8qiUV2L/RmU98laQo/xoTmjIfqH2NrVBYZxVDQCi6uOBnaTe0VvXX4PkPd60PSgv6TBzYBy+X+FyTQkRnS54tEFCpiCovv2N+6AMb3WU/fFiNHhdGaa3hDf8lwYjzlsWmNWLPi/PdSXLH8bGJkRLDAF+64ZS8QlLTfFBVlnTZ9uO2kdWfvciwh9/ZmOtgzWdXCDdPkDilTKmGrFYwvMhPYGRV/TrFma9MoKtCLV9Pr7NGT+PaAG6V0Uzx0AiAdwfsAAyl8TXMp71FRO4HoFG2cCgYEA9J4VjUAwndXrgZJBbjd1d0g8GmPL+CYQsDAWCbLTV/dS2b/GwdxxENf2Q0Sz1FF1KyQv4N/76TgGHYw5xG/KhuFxfUBdoYo7kb/7Emve5PfkzG3vedVSaeZiUpzWcYM1+tO1j2k5wsH2jS83VC3bJm5VLKy3mu1lnG9g7+s78icCgYEA6QOTRl38ETEeZrFUM78wviej3fTMR7mQRDdKeoOBg/E2C1I1q563SF7y8dgthrEe13QmnK3zyItWG8NvH0pwY4S4Fzir6oOBczk5AhpoZUX7E9D4Bhr4vcRTKuovj+0RqP0f+xLSlurAOEyhyALBUDJHHsEstIDPg8Jky/txzB8CgYAlB71ZeasiaZzSK5LOHYUhvoSithLNiO2jzlO3uiN2QJGBNx/efwF6vEaiXkce0An9suewkhevcXSzimPAUfAFxSEKBfFmn+duo/JdEolWfhRbwhSri9iDAYZG3Uk1O9izFNN6V0KQMg6hxtEIZDy1r6QjNC5DPMbSDKZPC3wypwKBgQDKamuujghhWt0A8nyl8ylBlqfYMUaf7Afx6mINqV2CI7ECBqlO67Jl8O10v4lU31peaaz9IHOMu9XSimRmt0CIgwt0SKu3LgPu9z+Znx0fFLq2jSpYC2gXWYux1Pv6OEPGHBWDAufjaAwRHCjR2eraYsK7aa4PI3KhD+aF+GjzmwKBgQDX5zRV8KVLumBHAg8/ga3GlbkpotL/b115ITHgTkVRG/tW356rz1mgcimDxRX64pgmbiuMB0PKG5xr5SYGpUCHFEuXT84PcO7RtB5bs2Po/e4YLbSJcyFckVijMyTAVWZlDS24o7o8p9T/s4lNHlMA3IsBlED0A2JDGHj9Sz5d5w=='),('8b5d0a64-97b5-4cd6-a59f-27721c223a9a','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8c660e15-bac9-4def-ab61-65a83d75e277','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8fe07e5b-ba22-47c6-8d86-e4fe87731c4a','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','oidc-address-mapper'),('93395a57-79dd-4133-b9e1-92247d00b105','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','saml-user-property-mapper'),('93717d48-0b38-4aa7-9b97-eaf729f4c69a','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('9402f67a-cc55-48f2-96a9-6407938c949e','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9684f29a-fe55-4e09-8803-ad568edd893b','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('971f2031-7dc4-4829-96be-513ec9a66522','8c50a3f1-5476-4b6b-9e33-f772a11070fd','privateKey','MIIEowIBAAKCAQEA6tPXeXiqZKFDZr+y225bHxcyJ/TVnURw8EQ7I06q0rR7oZqmM9Wy+VAhZhbWEHGHT3jqfRbip6KOJXTsi9ITE2jdGzvbuFqUv9302S5xeA101rqzQhS1cPZEPxn3np0DfLUr1NIMEy3HDWumt+/gxcZVUQhRZfHUjh/QFzK7ZTCvBBARUbhMZw+YZ4kHAgQJqkDOC3qjySvYE9aOQHV6KlGBgaWnp83BSknktZR7e5DbpHeMnGEDND4M4klvM9hy/uZ+E7eRZEd0EEAaeYVigQG6xCJe5ImLwFL5Sx0PnqL/w6BEBrfR7lpkPzI2lwLxnEnqi6UhEph/reqcVL5BEQIDAQABAoIBAEcuPqb9+hx1u4IWQqd8HJfghp4Q+31n5RoXfJuXuXUUK1ORlqaotM8YyH7zFiE24I6o9t9DBCJPRmo5NoitfYXJKBicvN31axh7tb/tcYyz+4IpZrP1pggfRhGgk+wa6RcwraAdqXZYznkVdBxWVJpuo6bj8BSISOdp4kBd6urhUc1d5gDzaiQQ1NREi6TjlSyz/ZUC7++9AcmqKWFop7A0wwrOWS8rfO4yQWQC7I5QAabvaE6zt9gHlMq8410HH6LVEtWvZ7viqYOfocd9g+FxEh6ElG9tMmzxrf5DJQYEecD0aV39Jz6bg0mhQ1C6sCPjYwRwwOD6X75j17xqjy8CgYEA96bqEh7se0mekZb0Z701JVm0PZ3i9LnCpEZqhV/uGSKUNHSlVhYEUb1kCXaKqTDGBH12uZbHNvjOC4Wv7JlOFIOX563hqV8+2h/NE+wVpDlfZrN/r4BW6/ez24yJ6TzeINptqDd1BLiyaeaLTKhPW5+SKkcLMYDlUyERyxRvLtMCgYEA8r5Cfa7WeRLWDY9Fxrc4MB3jtODETfhGD2HsECaS5gDIA1aUPQIx62UxEX08/LFTA6aX4pTDy3mhKEgiIHdkbbonDI8H+NiM2HYvar6lmSqyncgwx8/BLABrYIYcMICWZd+0XDwLHyv+ifqs5Negvaa+eqZmsb+zuAaMJytxCgsCgYBX5SnWXJtZ9nsM+SKtXv3pz7ik1dCjQvrOCx/rTmzXBurK40t7Dj1iNXG32hbEjcb5+P2WSOlTnWKjvEMAGjkYFsxnMdORpXhNOlQy6euUabhuXu7GfypafYOcPHkGCtBboKqitWwWzOalp2lxP5tKzYu27ZgPbcv2gRorlYkQeQKBgFqZACAAfTO7AAEXlCdSgroSrcX4jcu7+goLththCjql2ADG85TBmPgOUH4CjByT4jPenZmHhHwQ7UEnivUrGmSJscFSMNuDly3DDnd8qDm+YePZr7sjoylVDr57z1Ga7IchMyOplU0REnNVB+pxQCEIdtc3++QjdGQerXiBEjN5AoGBALpLhdnEi9BV3mXwJXR6sm9MSG/kxXQYh61VpKdpm5BuYIQONTmUnCkdksBKEg6dkMx/RO62FRA5A5XWYdjIUsAn7fn2OdjsIJklz8Flay4JPC6eigZdcRxwIWA0t5A0tYwVUMzNDKc4Yt6oWYVbjYXTf1KoBpeqqRTNFO3rtbDu'),('97ef3a15-1e8b-4aa9-b4f6-b8468c590558','0cc60b7f-6b1e-4307-ab9e-3f1cf3591c18','host-sending-registration-request-must-match','true'),('9823be0f-2a3b-4995-904c-5c803426d187','616d1d2e-42ff-4375-83f6-8f9bfeb70c39','privateKey','MIIEowIBAAKCAQEAwgzgEJRUPnqQiOeLI0Kg91Y8yiUkgkQ4XlzvtaS5harxO3zaRE2D5mh7p0mgrj4sONhr6+moawNsGa77UHZJBjvHffwkILWFBSiZnbzgHeSzZLcjzNXg16AbH6A0X98M33H7BX5hELwpQQlJ7JMDgbE+Yu/GZQi6l3G21gHidpoU550Sbwnlz7bWhnyMIktkxDBhY0kLkKM8g22iPCVIWVJiQSe5c8KcD6MCQ+eIda71CMPjVkkJ8r+Fy1YA5S8+24JJh4JvvUQf32XfYRP2Gdu6JIeTW9K030m81J5tF9/HO7sTAjZLAAaMNNNZuj0gS9Ri9JBhr4K4TDE38qpukwIDAQABAoIBACuxxH5XOAT9ijAZmx3scdxfwb5u0KK4g8zTtnI7Tj8H99vCSE+a+LlYC4fmr1Ss0T5XlS2A5ph6I8xAt3wttlG+AjSfIu9ukC5SLwzyq7Bvf+mMx3XnLwK+nXzokQKJcheaTcC17VtcUxm+4rNvgxmf9IFIpm63oXRaeaYEtJ6pvNrCGV22XMQ7vw1qBddHeR6cJl9wyz6EjsvsbBMbcMODj3AXbVv2YeKTdAZt6j8wr3qhwQRp9+jNs/YOLRBx3XXqrP/OktHFmIgD/nTfIzM8PngiE3swD6ZHZHEhBM2NQf2f6L7i4oO+vhbHnX9kYLN6umRcAM+EXzKAgtmUK8kCgYEA54Sa/V3cAKEd/bdwOPJq+4zli3pXTGT2KJH2oI8LeOMpDEg2rPr6ixk7dACK13cNswwz1Rn6e8qA0uZuPMDivZy5LUIot38XXK/oKgxDGbuNKHYA/aiLgOOfgG5cF0kcx5tFIDZ86ngxAbAA06u46r0VOzQmP92DvWBBJ0aYTn8CgYEA1pH8i9UtpOGQevjoJovQX/NsZ1fCL1FtmOM8Z/LzeWaCGtcUy2TRnDIk5TqsArw07Vd16zC4BhGGsiKS84HxZXmyLaCoqICk32ZM+G8+UtRQy3Fq7AAi6hxUeUfkhR9OV9v3D5i2ATGuVpIdptf+qj2fFOSlpiyZkgolKQtKve0CgYAcynrTw1ZWpbKrGKLWEh+HxM/O9pngoDWUegJnmSJeGDHEmz5haJy7q5mfJWoevWlwuLXBbIef2WEH2SwgVgRcfB7zJ+UUXLO1DRMcF4ZIrvAw9evNn6YpkyUEvbSqGKeBkyeXh+8k4WmGwjJ4IETQvE7lm+idzJhTdqLjlX3fVQKBgQCPxPF6oDQdLiYov26NpVDRecFA3UR3gA/3SQrIe7k3tr+mTEbaoYrxJYgjL9ThYEn2XYvdMp+bMVMXOKNOFdsxKwGAIQ3hGZFfPqSEMcWIqkoYhr4ls1Gxm5neSZWMvRU5OWGpSaFp22f9CZpkmIVCfFeDIFD9rxSXDcUoYzCJYQKBgBCS/F7ZlAFCRWuKjPRv3WUhLrIEWBG/5v7UN7cbVicYeZQpQhkrDKqudagpS2U/T6jOmAqq2rL/xMp/qex4ik9ry6XKLm8f2cjUr1Unv3KEvwA5PTiun68G1akKVj9jEy8KM4tiAJfjQiP9j3pg7buzIW6FGsSlkZ608E09qqDj'),('99becf91-5b2e-48c6-b8c5-921d236fac5c','54890761-280c-40d8-b419-2074875691ed','keyUse','ENC'),('9a0be34d-ef48-4738-bffb-e997c4590703','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','oidc-address-mapper'),('9b34846c-e112-49bd-bbf5-7ee990699979','99790bef-b4aa-4f93-93dd-5dd550678176','kid','3932d99c-f9d1-4220-ac69-92da8a6b20f8'),('9bc42233-3e6b-415c-ac24-8eb6c53bd2e9','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','oidc-address-mapper'),('9d8b1efd-16c2-4de5-81d4-55875aaf110f','ad9fa791-60f0-446e-9d22-4c51c4481950','host-sending-registration-request-must-match','true'),('9f100a50-7632-418d-9b00-62190d8438b4','a32c9d8d-368c-4dee-b88e-f5346d290451','priority','100'),('a00db766-7205-484c-8f6a-4fade170ced1','d1c19517-7e94-4adb-b98f-f77f311a36a5','allow-default-scopes','true'),('a09d12a1-c608-455e-9eb9-24ee75335d47','3ce0b2b8-41f0-4433-b70d-2184c17ba5b2','algorithm','RSA-OAEP'),('a1ea3dec-a607-4b50-b642-ba8f0d692456','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('a292ffb1-90ec-4199-b97e-d94d116b91d1','f87c7ccd-dc2a-4e8c-aeb1-3e52720ecbeb','kid','dcd823ef-1b20-418e-bcb8-09f7073099ab'),('a5db968c-7435-4b42-a620-75afe484d26c','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('a6c1f030-5fe7-4ba7-9dee-ba823e54d729','3ce0b2b8-41f0-4433-b70d-2184c17ba5b2','privateKey','MIIEowIBAAKCAQEAt7HvfqKlCF/smAroovmAZLLC2VqH/UElu/3md6R4WhRlW/0qHgLrPKy084WeJJw7xqwJ0qv3i3TPVTYFU6ltq77yQJBEguNXJDp5RjHb7muHatZYiRdELEnz4HxUzowfwYMOc4cf73fy0C7gr/zeYb26hqdEKOz+osxFVkQa96qSdTIyoNBFli1Do4hOestzfEp2JXhzhhEoGI1XgpqYgSpUcJ1ZAEOebaL3GQt5bLSyyDcMg5QaBirxQ8LD5599L8K3tuIyHdashr9EGgfDczrfFLmgC451Hj/H3DgXYwwExdlwHkr+alT3mgnA/Et3j2VuibrM0g+EG8wPz4CfTwIDAQABAoIBACAdqeOYCAZ4zuKeNaIYwQvZ/RsHKvNqKnC9qUeNp8UH/9ifYHeyxvHquBBDciywa/sGJQmCK1tkZsNdGH1SB+yZC72h+3huytN4ra9KFEuQ3TIem4gMW0zq+Qpscl9SPFMW2LX2D+1MKVWgfIQIT9EC3NOh9ta46KQJ1q2IZraZ/gFCUMjp+Qv5hiqwqGPllEuGk60hNs4AfGY6aDnAgqO9mPerO6XOm9h1MiIl6BPAgjXCfjSJUu0KvOf98/g1ptUnJNtFcRdgw/ZshhNcZyE3UfwyAPTstrkrBCDscWxQkVfo2E48AstrBQW+NV9uq8UyCKI3lhl06hAnxqy8mGECgYEA2OizudUzXBohZwm93bWuMuyKUSDJ/XhW87LhRjh19PVYWtiI1mKLIaZnhjwGfAPBmNXqFPsS8tAugauFrb20dscnsp08OsfkSIpE5yqpITzPizuX/UT2gzEk1g0Avuw57wVHiFC9dAV4M+7QGMuldlcH/LsXA4IYEWq6bYuke9cCgYEA2Mzgu6lHKZvN+Ez1fh5OW02Y7dbFKZ1+oXUGls397tWt2o3uofYw68vmnZuOH3euu/fTbLgD3l3DX9lqLK5q2GjrOqsL4melMJJuBNGku7x2yOOLEQmVZ+WmEIJj2BFAglNx83EMSe0n0z8xuQtV5wmsc4tW4GQkO6keWbrfSUkCgYBKH9urWcxfYR6hE5cquPd6t5Lc/pOIZyNvzGVnlcvZli5HfU/l028wZKlkGgctQitai1+fI93p1HLQJUldgkK1hIFwbIM0ozLEB1xckxuRHDLgpdDe4D5NvvGTpIXouNljcS5sywqzJ1tYg/fhQVaeBkfYeib3L/IBobNr1Bi1qQKBgQCA4cr3xLo5UhYv9hA62WlbfdXcDkFHbAlLknZIUE0VHpIryxSB1AlhI+YE6+ShcFTACaP2ja4/Ex6CbI1h4o5B+J1eUzDNdzAMoAAnfTmhIXi8FAkoJ7pZ+XuvdNRGLnta/qBPSHU1vXZfbsHwb3yxzF5okf0jiGTB0tfoH999gQKBgD/mr/0L4solJbX5XS4e9LLh96dGUnzq2FhhdmNG7okDMr6AhXFfjPQV0+VqAoDBF7Z4/tigpEK1T1+cZjRXhMglJV/TpdkC98WkSTN6Gt2dA0S5dI3BDAFru6KBc3mAR7vup5tzZNcCqk5SFiRw8FVUw7BuHOwvgAEs2kn6EcPm'),('ad150ffd-cd87-4dca-866b-fefdafe21b5b','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','oidc-address-mapper'),('afb8cd7d-9dce-4ca3-9536-5f6f83637b2d','a9df5002-93d6-4d8a-8312-31468822d1d2','client-uris-must-match','true'),('b0333b1c-a1d1-4bdf-b8f1-558c8bc70aa1','f10be68d-5f22-4c21-9bef-988ae4aa1c86','secret','OMB8xUFyIQw1MugpiFWcSA'),('b0c16c36-3d13-4e7f-aa3d-b95f5a35b139','f10be68d-5f22-4c21-9bef-988ae4aa1c86','priority','100'),('b4421b55-df91-4ef6-89af-1c15774b6f99','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('b7959614-70e0-41f4-9128-f3e7ad99fbfa','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b8596700-fb67-4a6e-a34e-df30964ab8e5','6e4db62b-43cd-4eb7-bce8-ae3effc974de','max-clients','200'),('b9dc2191-e474-4c00-88a1-c20c39a42d52','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ba2432ee-816b-4e51-beab-7dbe65928a19','78040151-e44f-436b-8fac-811a2245dfaa','algorithm','HS256'),('ba4a006a-1693-4e6a-b8c9-27023b9f200c','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','saml-role-list-mapper'),('bb23a8d0-d56f-4446-9070-71e77a844400','c8d0cecc-cd99-401d-ac0f-f9d6c2c5eba2','priority','100'),('bb3df162-c5bd-422f-b3ef-eafa18ef2b41','e7dd1387-7292-4ffc-b02c-932797ed0a59','algorithm','HS256'),('bc26ac5f-dec2-4f22-96b0-aa280a7f91d9','578b9129-33fe-41bd-a9a6-b1d835d76a85','max-clients','200'),('bc9fd08b-588a-439e-af29-08eba17394da','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('bd3db78e-3ba0-4dd5-8053-2c3307c65c89','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('bd5a1e00-8d63-4b95-98a4-74abf3630f29','556c3202-0704-456e-957c-c790958a9615','allowed-protocol-mapper-types','saml-role-list-mapper'),('bd88ae42-71f9-49a8-a3b7-29a606dd0bc0','9c7680a3-7f0b-4144-b31b-c02c4eac3c20','keyUse','ENC'),('bdcbceeb-e1bf-41e7-8824-3cd07aa83da3','65d3b7b3-72eb-4cff-a778-7b5678913cae','allow-default-scopes','true'),('bed98a48-9e6e-4aa0-ab40-22fe35ed9fb8','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','oidc-full-name-mapper'),('bf3c37e9-727d-4c18-8536-dd6566c5488b','603c4b4e-f5e5-4f20-854b-45b2b2466909','max-clients','200'),('bf6a836b-779f-45fc-b3e5-8e1b69051cd2','71217af1-0588-4b8e-8119-c54ea10d4448','allow-default-scopes','true'),('c02ace3a-a87e-4ab9-a263-d587ce4ae216','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('c050bd6b-2110-4230-818c-fb6adc36ce17','e7dd1387-7292-4ffc-b02c-932797ed0a59','kid','cb392988-84a1-4ced-a175-e4199ed0f9ba'),('c16d1032-6153-481d-9ccb-719a491defb4','f87c7ccd-dc2a-4e8c-aeb1-3e52720ecbeb','secret','lNsUdrBDFnGihAyK9-sCjzEU3_liGh5WUcewkjOi1iLWWKAfjxifdJwaBIVAnmZC8i-2SYdbiuw9xy1UH7fRIA'),('c178de82-eaf7-4095-ba12-055d0e95494e','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c3d26f8f-6699-4799-8c7c-4ab4e48c3b19','585562b3-b806-4b83-a3bf-5ba1a2d00bb0','allow-default-scopes','true'),('c454c22b-41e1-4b2a-a00a-81a1f09a378e','54890761-280c-40d8-b419-2074875691ed','priority','100'),('c4550736-bf28-4fa2-8962-71648741f3e7','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('c687a07e-2541-4d56-a864-9e6554a6ec78','3f64eb28-63c4-4d10-96fc-b36228f41a9a','allow-default-scopes','true'),('c74714e1-c2d6-4165-9df1-b98ceb14deb6','e7dd1387-7292-4ffc-b02c-932797ed0a59','priority','100'),('c9aea223-f5a1-4add-b79e-f998df741316','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('cafd7ac2-5da1-4666-92ed-9b15a5c210bd','f81b2c0b-33c5-442b-a8dc-abcccaeef166','priority','100'),('cd9a7314-a8e3-4619-a0d6-86222f5b1c77','fd479528-613c-4fa4-aaa2-65c623903dbf','priority','100'),('cdc768e5-bb08-4521-85fa-5032ca862a64','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('cded541f-60f6-45b7-bdaf-474ff16d8f9d','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','saml-user-property-mapper'),('d1db4ce4-cb3c-40f1-8a7c-31b2a6424812','6acf7ec9-88f5-4d14-954c-1e520df90724','allow-default-scopes','true'),('d3d7b073-10c1-4ed8-8554-677373706860','5d3f8d1d-20a1-4911-a1c4-6d2f97d9f77b','allow-default-scopes','true'),('d533161f-cb2a-411d-85fe-fb8d6148bd68','72083c7c-50a3-42af-b8e0-c9d5157c731d','certificate','MIIClzCCAX8CBgGL772zbjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTIzMTEyMTAyMzYwOFoXDTMzMTEyMTAyMzc0OFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAPZj5uOtVjmoZ1gNBPBQgMWYpBhwvNQwYaQVUcTC6glwJMgT/Bg0RKKjU/jKRmqtE1HP9ZZI9hjzG2jUgfj6Pw92pP+dYUp43uQ+YlV+bCQG4hK0uJbm8l1tsJqzMqTIZ+TElMvJgw5/tmvko0I+CI04q/BuDLceDLWVs52daD+ICNF/6MhzplOUIty32mNiQqO5WmCIsXZGaA5dTk83UQPVe1STGL6IqkbaXhxJMj4XI194+mYAzr4z+NcU3am/Q5bRkl3GZhbMjCBq+nWaQXy/1oKjGUTSDkW8yaSpDQ9EfQxVWnd5KJzUt6Cw9Q7j5AZT/3qupuXmUrbm59DZMX0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEA22QTYCHaIQWDteu1jWhlfHxAg4CPOId1np+oO8UCEx5/Mcg8S+Xz9o0tZNuV5G1k+2NtBP+zG9rPEqR96ukFSsDywb1lxEDZkElWPs1i126WuE6eG0AYt6fD6qBG0ds/PVV6d4tqZjq6gql8kqATec/RozDm1rLZO+S0xgD/q4i5WQnx89YvWH5x1LGD74qZfyyZkqKRXp2q8gEfjn/4MSHsmYeofkaFSr5iaqTdQgfqt91lMwcD/oeLvBXXjjxr7w7m0rMbary81nAnTXoD4vxy1ISWEyx7Tl+2pqlxeE/O7CzUiieEy/BquDmoT6MS/SVmL4owe6EgF0EEhrySEQ=='),('d5aac350-4710-436f-b930-6c3b196fad5e','a32c9d8d-368c-4dee-b88e-f5346d290451','algorithm','HS256'),('d6ac9bfd-3102-465f-a864-3d41cb9c2d67','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('d7c64226-8dc8-45ab-9951-b6174d5fff8e','30a10a97-a306-4cb3-9c71-8f9b188fdc00','secret','cQ2z5oS6VFwuWpU7vOCbCQ'),('d7e3b6d3-280a-4a43-b013-995d7574a9d1','9cbf7d6f-b78c-42e0-97a6-9782dccb9288','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d98c646b-6f19-4771-a9ee-f9ce4e9e2045','3cd0dbc4-96c7-4e3f-9213-9bbb0ef0f105','privateKey','MIIEpAIBAAKCAQEAsI8QHWvv8us0uh3wcgew0im/oamQCq5PbBbFAgKcH8XMhep82wLH8aYrP4NwZNDI1QRy/sfiEvEw/DEWBYZFnn2V3jNpqhus9S5tSSAsDn+//9hqUUNeV9aaeQRYLXPeF5sLGsjQzwA2JV0AP52O2DT+DF5A/J79o81NDnBfY+awvP6PBVtCVmST4aPgIkVTabFjJu9Z7S/bOs9OKhXISLsEx9RjRcRfyCQRA202ix9w9V+ChOydPN0b9vis1zRWYHJbq2D7GpElGhGtYBPNhu/BvT6+3gqPncyPPvaTzwHX7w2copxTEVYeue/KDXGhrLNIQUFZooqMb95I9u661wIDAQABAoIBAADrhex5UwNDiX9Mx6N4ecnmkMqRXSBJHz3Tcoxboh+iQroR6juj7JHMSV5n226TDfDaOJUuSnXJzvUJdnFp7TPxuJWzU+IgicqvRr+CTOh4bvIw2QD6ZmPzyNNHnAQEngwmcSzfDgN+H0objXRHaGalBAvhc9o9I9o2KCgimsSk/V9ZKpwVKEVIGXjyWPClekvyg1xBZfZuEeKzRAICzd77s8lIHxzGqG5ZFqs/vETkADdpshXhD/4nNakjrvpuYWRcAr8bp+KNiqVjg9QSs2BcHBAnanI2ZVS7SqQ1PbNRRnrsJ47kfoHuz9fii6aTI0CNpRekmSCzG5zJ0wNVBX0CgYEA4vwjRXi/pUBBuwgxS3AIT9SWH8JdCwq56p1u0qyQtkvHFyJoL0GxF/aZFmlI4mQbyHeOTLxx0WBu8ANTWShpI791IIm8Yg14wm5XRbJtphVDAO3v2XjaL4+KcLILv1AUKmYXdoHTSR8CnypeQ6fvJLGbaXdDYyzDG4YSI4HsTuUCgYEAxyDH1At4faXJ0zFKL4ATE8F6PHHe+23eRv63SK7DAOfoe1bHvOajDheedOoMs6LgWFhmw2hqZn+y5xk+ifH97jt8lt9fowPHppCe4W2IlNhimOGwpfR8zigHXkUKYiH98lpiHFj390KsH3XKGHwoSXzbamFGeWw7Zn8FpGcdiwsCgYEAggoFgwV8dgXsImS9KQTUHjgikatedrb8cEcleJjYhze+pahWm8w80we6CLbkxJ6ptB2abqf/ZP6kT+j31TprkclcJvoB7QLezjU81nc0jlPcASpPoP21sk2/+HRoeoA8LVYz1vblvxx++gTh4EzTmugNq0xiVO0OEjSrK6CBa2kCgYAWly50bPS3dHaIIiBjcSk45YtDjjuY1KcR8NXERidTU/v4+ihg0t2OvLk6VE8qlgDTpPvLkW34wOX/98ozhiOjwlXpG+BSsxwUVnXf5zhGgqH07C3JNgpurPXhCP4bkfWoZ/6XbrR69bJnQ0qxKmy7oZGW6QBAyDmY8DIoq5YbbwKBgQCzmJOgykEuFicL55Xgb2w6lW3Ca864BF8kitTZwKN1KOhxM+c3F8e1G78iTm0mYSYDwNkiKklTSe69efFG5g/4In1fe46sTPWdVLdfhPlI+iQvaK3LAtUi5ley9LfwLp2rHfSLOD0AVYi1K7u5E0P9VcKH92yHsLd9SwwFy/Doxw=='),('db479b52-3772-47dc-9cc0-d6c2e6aee832','2ae0ec59-4961-484d-8aed-26349670df6d','privateKey','MIIEowIBAAKCAQEAw1EGHnouLbClykbO1PegIvPrqermWxBqNa6AYK4Z0+7LyPDCt4Dy1KaVIRFHa5LdYofn1OUA0mzURDI41eICq0UEHlaNLSHp3M2EWQX7/7r6PgvzbBEEIx56TuJ9aAFjWQlD1Rtx2bH/rEmoy/hWajl/9Qb+WBeP6Coyn5lTSSM99CetVVVz5c1pS0eo48xyPfJn1k1TM+V+FLB7FmJwUNw/ey3z9V2VX1KSuShzUrJ4Lpbrk2zjW1gXfEPrMXf025zQ5ZQVCAH6eFEcqMn1YLLCyfJR/KbTdE/N6oA90nnL6R1vIroqpRzGH+hRSg1z7jsuLR+0Uk+JNrg/gdUVgwIDAQABAoIBADUf2SO6BMxtozJ4/vHjJn3LTZqqZxx2wwS14XoqcKD57xjJD5U88A+R/bcATaY/TJLrt01rOkWBz1x7MoVOU36FJ6Ee1ohjlIn3pltWatv8Xes5cey/Vho9RHQnW4fJ9N03TWlt7RISvaF9aXmNIugCmsCpNc39Hqm9rIZHfGVERCkxEMzDXloBv0ddxwFnurCLcdWofTmPnn6J2k3phOcp8x2nsvsKDeiSbxLypTIe8VlvAExiy8cmpHYqwM8J/73LBKpmQ5vtn31AmR5nqAufdTKqogynt4CzFrRE8v/EUdebfdeRgZNYGpip8LyWzxRimXcjmKjkTvq3soSSCEUCgYEA8YvPP41RT8mq0/7JyO/043KHnppO5lpueU528wgvc9u/z+ZTp92wXAOakB7UvWY/gJwXw/BCGWuOcHo5qnatryvl61F6x/vYKAtavOY3JVxCmEP2Bh4wk2lHJIZatlYo+UfhQ9tVznxtCcbu0mvBD9Nn46QhhTb6MmsppdeKNyUCgYEAzwEIeLopggVtn/XmBqARfZI/3IcI8laiZYhFijaLApgntnfS3tPA8W1ZiAIOfIRgeiX4KTutXFo24HMGkcnk2en0HPFtfq2L+9EuuRpCsqxCQVAuy5h3ssrSjmpOMm8bFKaD57xye39tUnMXIcFnCyAqTVi3TH2PFpleUE2WrYcCgYAK5B3tJKcU7Ofp9SQODlvBYamhyh1in5M5nwMYBDd3huIIMr904zcPfw4aD3nSLGkSmHct24hvcv0SL0CoYf+E1XrheGQL3lwpuhFWUR8NbTKHgRD3x6azDt0pVXGDpTDlxIrwr1QYIl4cQb8E99zVpNebWQw14Hu5iEFxe918jQKBgQC/rbg3ekJnODmLbjoCloO7oAnsXUnGhLw5ghbKZbkQvO3BA3FKjg/SPqwxyZ26ZSWk1bXWEIF1y7+W1EwYATgdJIq7pj76lx7RHaDDG/L42ZM8QVAjjFoCP9b6sqsX/lO4Knxnv9LOUm9bcmDQC/MrlSw2lNieRoGRrpBrkXzdzwKBgGWGlsPuTxP3fB/vD0fGX8AiZzTIQYjCbhljoSgRZ4fzKNOev/B5Yr86KIvA0O2T0Gf5qQATyH0PiQpp04zoYaGKo1I2jWM3OP/+R3Sl+hngZD8XeMg5bgTf2dtelSozcyGWYXRhgNs/UH7PHF5d5ncncr5mfkDgY3jy+w+Zv9wC'),('dc57040c-4515-49a4-9607-0ac21f057b86','1a6531ee-c3c0-432d-bca3-c4aa0ac31d05','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('dc9ee0ea-5fa8-405d-9c99-c5ad9989fb77','3cd0dbc4-96c7-4e3f-9213-9bbb0ef0f105','algorithm','RSA-OAEP'),('dd78c1ec-0c22-453c-8a8c-f8012456c6b4','3cd0dbc4-96c7-4e3f-9213-9bbb0ef0f105','priority','100'),('de419b0d-6883-4302-8d82-e2467e2e4182','ee748fd7-aac5-4a75-adb3-38eb18ad2d3a','allowed-protocol-mapper-types','oidc-full-name-mapper'),('de4da1cc-4cbf-4ac9-b246-c2885c263069','8c50a3f1-5476-4b6b-9e33-f772a11070fd','certificate','MIIClzCCAX8CBgGL770vjzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTIzMTEyMTAyMzUzNVoXDTMzMTEyMTAyMzcxNVowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOrT13l4qmShQ2a/sttuWx8XMif01Z1EcPBEOyNOqtK0e6GapjPVsvlQIWYW1hBxh0946n0W4qeijiV07IvSExNo3Rs727halL/d9NkucXgNdNa6s0IUtXD2RD8Z956dA3y1K9TSDBMtxw1rprfv4MXGVVEIUWXx1I4f0Bcyu2UwrwQQEVG4TGcPmGeJBwIECapAzgt6o8kr2BPWjkB1eipRgYGlp6fNwUpJ5LWUe3uQ26R3jJxhAzQ+DOJJbzPYcv7mfhO3kWRHdBBAGnmFYoEBusQiXuSJi8BS+UsdD56i/8OgRAa30e5aZD8yNpcC8ZxJ6oulIRKYf63qnFS+QRECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAQWF4rhCCEq2UXUng5XOn+Q3Q0fYsesZ8YEFfsxoPottFl9fDmNMCVUMMaee9h9vuZEU2RTGjQTFmFPt/brZ9VjeKw/qO9UZxRekg+KkF5xMuS1DdA0Fo+NpCh1BtvkYd/G8YI/s1Z022Umm0ZkaCn5fK2tQ4OoSL0H35I2HjD+B8UIVBB3NbxRd/Zt0yhtx5+1Iv+QHmNBf3ha71C1R9i5CezDf+tr4HlUbOz7lcGS9pQYktzdDqjs4+UC5oNiZIlekGHwTM++IuYCt5euYUrDO887LYTkT4Aj9/Tp76/J+lRdt3LlL1T0SQ8wMiqM+opjrNBcAd3fX1fQ2PlX7mVQ=='),('df44698b-f542-4cc9-95d7-df2dbcc96bbc','54890761-280c-40d8-b419-2074875691ed','privateKey','MIIEowIBAAKCAQEA0TWjcHe/zWKdK1WKqeqQeQCTFISJ/r7fKyUG6KAC9KCwxDBuYxuRymXLUgQP16+NBfj5TTMbivflZH9SnDpnwrzZX7k5Rx83hthhVtb1HlM1bwskFzz0EwvEE1NYxhVNUk4aEAsrME1oPu86cUtNYANQl0v8+zTgC+w02x3XedMVyrvCeY/keAPpbmfeVbvNlVZc6WfLf9Y9yz4bF+8a6ICV4C87I5YrC6+JRfA73Bhp+ft+k1y2uiKjLunXUxN8w0zpbi+30BUQO8f5HfsONSt9ooeFvnYh9FJJZ93SILoZX7fmhN0WGlJNDmMzSMzI8cHCbrqTswx196bNYEZ6BwIDAQABAoIBAECigTm0jXnvTx59waboVLVFk6tBnX6qSrmCKYXCNdeNM7+RNPGCqYKt+2h938Ujs/6V4rPSp95B40muun+Q3dDA1qmnyIXsI5QSEtSo+bbiPz5s4zwYtVGTD4Nm+yTLnQViItQ1FyVHrP7Qmy44dRHGRGZR8DlOJzAXzGar7A/zM4SJnmn5jErK0Gb6Rk1ARKIZYc3pUvEsFflPDCdUZJf9D8laS98zMpJ0hn5Yi99R+MsvNFzuB0tUUiNWt9SArEqOMoPOIWDaaGgD3KtEL1fpzJGFUPQaZa6YztsmggP1JnkGC/pO0zz4ODYXnLFsiu+SdFw+FHoTgElFcwmY6PECgYEA8bcx6T3NhPNj/sa737JIN3Ns8I3CB2y9MKt2BL4/rCWO1XPeY/M2recadHZ6p/k4JTGuJX2ziLkXXpFGZIqQlJ0sxZwBER3gq/M56zEADdByLv7W0SVYGUBQsj7EaoayuTg8gLf6rotVhgBY6MWDNm4npKKWQWacnpqOcHO16rcCgYEA3ZKsf7DThUyJXuiZukFufhlJ6eRXbA6CBbqgcAnvgtWpQAkQHy5pkZEMzbeoRodIK/yJ94Gk9DS5F37L37rUvQgVq5F9X7JQmJ9Pu2mQvm5OTIFDa9+em9yA6vTDVoonGv3sJxcZHmyy3HTXOGAPPKAFDmhimC1sLScmBtim2zECgYA40xeBvMzHF60HZVMfmLsPhiwzNTBLLI4hlf2NyegQIVg96Bp9Jt1Q7sayYHQfbyB65f4JxE5jsxfCXKbO1iB9P6IZ5r39dyetZOXV29Qmaz2cvL5ltsDKVuthrA3i+T2k+4qFvDrLs+fsM8KzHlPlhOn+81Ydk/D3/F/GIf2/awKBgBQUPaOYr6JtzCkYpQ227j9pJUSX18BIFEpWnkFo9RaDLEJMT/SzbQevAF0IHqy9h7HMwef3DK7AtGFHsUwGD09OE0Cn/5eTfjBGh6AxMdfAAUJ3mFeHPUVclyYzphwKiv6sMiFcu38BVLgbsoE+W0MgMTUcCotF2n7BBHYsXfqRAoGBANe5aSh3BO4NtP/ShnBtIscW5876XKJN+6zFsxvVbKL5/EYN4LoLW9E0lOZ9c1MY9XWfy/4BZetsJjWQ23l9UjqjsRXpYevdTPhKK1tMv/y6Sm3R0z9pHckpkFqf8LU6RgeGS6MLA0PKCPNag90UvIO0s/hi2wi7vJyIP/Bltgki'),('e41a2e1f-8ca9-4221-9f59-73734f9e6ad2','9c7680a3-7f0b-4144-b31b-c02c4eac3c20','privateKey','MIIEpQIBAAKCAQEAtGJHsICBnZU/kY51mvjpCNPmvOKjsU4MhbG/tlWDHU9aijPO/y+1VW/jEGtmjRL0EUndv2uCIWIg2IHhKfuaaucs1DkznZaNUGfBjTRHhhfnxB64NsxRYX1O5T5AB/JsNcX80E/3RHa4dXKNMQRE/XXSYrd7wFaKQtHIlaXS9DyjRZ8o7OYQMLthsHh7iSj4TTD9TmLqz9Heq5ENswv+ydi6533j8OxyTqVbsXig+ka8ugYffZg2ERY6O/tBp+HmhsiDFnMhqene7BL2U1QWXFaVcUKe5mRB+9tjgHt50vdK4N/ffY+KPebhyJ+6KwJ4EgbJcdDux9SPPYymWBC3IwIDAQABAoIBAAZcw+v9GhVFifLjFCzZBCKdbsOagSPbIi2mvTPpn/C2SazR8rQlPDZGP5bCPnObGfa5kq8kwcD604F4m0k+OsUYhOONrz0Ytwnc2CdF3Fv4BL5NbDmqlBhBesugmglJJmcVbxanBtWM75amDiGzd9nEya8MQgPg29Pdhhr0lDj17iIL7zYirbvbnlHj5A7SbgvxogoY0R9/H53OA7OqgGmT7hpyOHTOk07rJFHgIKHTp1JZZHqCecbcSbPXk8Qj7wOV1oU1zWsz4dBqtG71/lui2bX5fHl8GMz8Bt/7Wffr2C4KiICfWVMDDT/jpzS3BLYobt46rTcqgbL9sLb0FSkCgYEA9eCABdiB9/6yEgBK0o5vHFPecHmZ4nJRJDSPuDAjSzTqQmZc8swzntGsvE2l/ZuNUDRA9dX3QDIlVZTS291U1Fca+YQTxxpLO/RumHZdKGkjgWntyNJ25idxeYJDlJbHEj0a02iypOEI1Gcag5qc6w1+vOxAHUjITQMXsKqU1FcCgYEAu89+ptBHH/eqTVqIGUsC2zBeHfzD3dHGoQRL05vSBXJfQzF/SyVuL4MHOw0S9St21SWL9QdyKWkA//ov7KIpXZxifI/CBesAD4ORqr4tUYlxzUPHC8MEufSxH8ykTn5rifTmarSj2ep0n6cguShRJFeTZ9CXil3WtCHP4lIPlBUCgYEAvQyuotADroCgvgKHhTmK6Qb7YxO8ZEZtaR8Y2g/5MxwuentmQDEOB7FD1U0GseZmUyK6R8sKXsuvtQvGzNJzJQkMbolFA7ON4T1hw8xOeIHOkPS3pc9dKD1vnHOyLo935OgitiYsJWX5egcEdeftezVXGz+zVFDf4YbdMjMWV+UCgYEArPu50NWnnRcVoffPwVQoxlBvb7lfgpD0HVyCpt4vfFrSyWXus/0+1r4dy9MH8g9dfYb+uOppySBxDlSXDaJy7UjcIZSbha3kuWVapuRRg3dP/Vr/G6M9WDW7aumnMLEaRc/u5ruI628aie56onAzBIExQP6MhaJW3kUCX5drx90CgYEA9RaAc91QJPiffYsbI0sg9JBFaLW+X45UN0ja2HbpRCHi/uYArTMN+WEGMSSOmrNHNiUdzvwYeyVlJlhrat21mO0jgYuRpjoBOqgvvIif7UaEWvYh+AHTwLmeY4voTm7SEXU3Mk+vfoK+Lh24a5dqhh6cAwPIndx1UIFwexVyh84='),('e56b28ee-c30f-4b24-9562-00a823d88f5b','e851204b-c6c9-4290-9649-a5db0eabe979','allowed-protocol-mapper-types','oidc-full-name-mapper'),('e59e9730-90be-48b6-b8cd-71fc1d6c0ef2','a113170a-9cc1-409a-a5a0-8baa4e310644','client-uris-must-match','true'),('e7dcfdee-9ac3-4868-a980-9248c4df3838','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('e8a2ad78-5768-44df-a65f-c8d48341609c','a32c9d8d-368c-4dee-b88e-f5346d290451','kid','600ec9ed-3345-42ac-8b8b-ef68625fb2b3'),('e95b5e33-2504-4d42-a0d1-19aed695ecf5','7c7188c4-42fc-4c4c-ac05-a8997220c5ff','keyUse','ENC'),('eaf2b8cb-6726-43b1-b231-b1a4d951d3db','c505de46-505e-4729-a867-c5a3f873f004','secret','_gRVlWeo1RyBkvPZZuC0Qd7fKaxsWNkczpsOA-H_rr_x4ce7BHF8fLFnVC3rAK5zokH_u9uxv0vr3pgCpeTDow'),('ec02917a-4d5b-403e-8135-53ab9f72f9ce','54890761-280c-40d8-b419-2074875691ed','certificate','MIIClzCCAX8CBgGL77ygdjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTIzMTEyMTAyMzQ1OFoXDTMzMTEyMTAyMzYzOFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANE1o3B3v81inStViqnqkHkAkxSEif6+3yslBuigAvSgsMQwbmMbkcply1IED9evjQX4+U0zG4r35WR/Upw6Z8K82V+5OUcfN4bYYVbW9R5TNW8LJBc89BMLxBNTWMYVTVJOGhALKzBNaD7vOnFLTWADUJdL/Ps04AvsNNsd13nTFcq7wnmP5HgD6W5n3lW7zZVWXOlny3/WPcs+GxfvGuiAleAvOyOWKwuviUXwO9wYafn7fpNctroioy7p11MTfMNM6W4vt9AVEDvH+R37DjUrfaKHhb52IfRSSWfd0iC6GV+35oTdFhpSTQ5jM0jMyPHBwm66k7MMdfemzWBGegcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEASwrtHGKHpam8NfE29qWnudOGQ4yZtZ4qvOouwlTeIQHy0ibITkwr0VmL7qFrk32j22Uj8+8KMrcIFgBne6QGS7wl0Jts4rp0JXJm1TnD2V8pBTOwPxdS5NCkg1SfRrwS/lrgab+D7QoQBIFGN83m2zMmov2PD1UTMRqgZqjZ4Z5fQ/HzZl0xAxpHjxXAMsJVST3/lWQO7l/P1Y2VIS6o86r/GWcncZkFd8aBpFW94K2JtZizthU+gfyQpPdz8AaY7ph7Y8uJ1z5xWacj0dI6nJVZzHpH5A1uPZtNYfXnhZm8hatfB1uOUiTJEeQIRQndlDy9kd7geKMra3JSCMiJRQ=='),('ece0a2ed-0dfe-49f1-9db8-cce24fe142e9','7f837495-f575-4461-94c6-50cdbd4550ff','allow-default-scopes','true'),('eceab0f7-dee4-4819-bcd5-7c5fe3e66dc3','bb5a79e3-e2b1-486a-9816-c122dd45fb17','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('eee0e24b-8ad8-4ed6-b7f9-09bc572fcd31','30ea9124-9086-49d5-9e59-1596ad14481c','allowed-protocol-mapper-types','saml-role-list-mapper'),('eee5f728-3ea8-4982-a17b-a2a535d8d4b3','6a781d33-9a4f-4d8b-84bd-e831e15af13e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ef91361c-45ba-4b89-b634-cfb22300dd2e','c22a824c-14d1-46f1-befc-d29a89ecf648','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ef99bf37-cd44-414a-b2f4-6c62e1a7d374','25594876-617a-4d96-802b-edce75dbaedb','host-sending-registration-request-must-match','true'),('f0c19641-854f-4c69-8463-94c6d4d74228','7c7188c4-42fc-4c4c-ac05-a8997220c5ff','priority','100'),('f2dfe839-4a0d-4385-ba83-c483acca0371','198c4e24-c3a8-499e-8aa1-eeff4aa6f97b','keyUse','SIG'),('f68f5f13-8fba-401c-aace-465ed4175f04','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','saml-user-property-mapper'),('f6e2821c-5d3a-417c-9ce9-4e0a3bc4e00c','72083c7c-50a3-42af-b8e0-c9d5157c731d','privateKey','MIIEowIBAAKCAQEA9mPm461WOahnWA0E8FCAxZikGHC81DBhpBVRxMLqCXAkyBP8GDREoqNT+MpGaq0TUc/1lkj2GPMbaNSB+Po/D3ak/51hSnje5D5iVX5sJAbiErS4lubyXW2wmrMypMhn5MSUy8mDDn+2a+SjQj4IjTir8G4Mtx4MtZWznZ1oP4gI0X/oyHOmU5Qi3LfaY2JCo7laYIixdkZoDl1OTzdRA9V7VJMYvoiqRtpeHEkyPhcjX3j6ZgDOvjP41xTdqb9DltGSXcZmFsyMIGr6dZpBfL/WgqMZRNIORbzJpKkND0R9DFVad3konNS3oLD1DuPkBlP/eq6m5eZStubn0NkxfQIDAQABAoIBAC8UPrlxVQD2YyzJbBCpKTnYZT6ASCx5RCbwpeulXMfJ5FVQsEJFtnmnILPwnozinkbrKB97uH5i8XFR7bXPxz3iqztmbIEo4FoXa32vhuVJZWgynPTEkznz7CNbK0meO2/UeiQIUKD0GTy7dtCA/uxREFWECazxsnb98FClE5bTvPJZhlCgEBvx4AhG78O4ovMs/ONHGy1Y4PxmIahOn+6Lkh4VhzICnQ72fw8We1swNFcFB6zTvYD8bSXb05hwplNBZh70suI5Cb0Hpuz0+kEupaQ5iStXpG74bvq9cbVsxl5zZCF2D9JQngl6z0LYZwdouX43qz7x0hGpB6DBuDECgYEA/v7r879G0KWw334b/+aNDQcx3NQipLM6ESmPS/c/4HIGss98AdtW87xFKAMOZV7Q5zWlT8kgoN4aEdecWKXxm9hA9/DU4wJP1Ut3QFUGHZaQj0yzhy9JbzCE9vFeipL2h9xCQXyAn094l/rzx3LdO4uOWamWJw9UF5VsBb8ao6UCgYEA91xN7PUsiJE8psq+ZtEXboI6+GBAbNCz/17o2ZTE45b61cYtqcgE1B7/17Xn0o1JIIzd19tFJDN9jMv0VbQuqb1SzlLXU9ubBaOVfrow3Rx+eo5w6B8vzN+T67LneUIVJnthzV/K89LyfITWuix8C6njchi+7aBF0GMR6/p5DvkCgYEA+GGdui7eLszGbdxsL6cGS+NvOXhVSnLeI+uEjm2Hhfvr9G7Qjwp1NzNzdZcMhceG20BRB1eVdb0CTdDklSEHKFPMbPbklz8gPlalEUAAlf+cTklbMlnoQOtVCSlxeq/OfeYZj6pTq1qA0CF9JhEH2EGG5mWfQerXcaV1tF9C9pUCgYB8zKRAPj52tJgeKsI/i5S/25K3B5DZlb6KxC7EwAtKLD1np7IYK+NLxkwcYBmTIFdZxdiTdHyA1D2u0KP4rYyxdOSXVjJvi6e+A5eENZo7pImnecA7TKjIO7EcxMmGYzHalXt1q7PwqmhPLJJNoe3/0HoBcby6lRdEGQfMwDVduQKBgHTGEb/Gh1h5eDlSTzBRDwQbBvEQFnD6XRZIjebAFNu9mtn8l1B+dud2DMgFlvy6a5AVtqvgAZJxQ3JiH2qqfDPl/kNhotTgeH0uwJLCUx0W/kjWN82xph8f3uGKStx0x3b14O/LMJOo++4PEQl1wgIQw8ZlpBp+Yw0zUtPcH/bf'),('f95c9e00-149a-40d5-9763-001e9dbd561c','8c50a3f1-5476-4b6b-9e33-f772a11070fd','keyUse','SIG'),('fa65dc22-04c0-432f-8c8b-f48f1513a60e','25594876-617a-4d96-802b-edce75dbaedb','client-uris-must-match','true'),('fa69ffcd-65e6-4dd2-a0ef-81ce5f91aa9d','9c7680a3-7f0b-4144-b31b-c02c4eac3c20','algorithm','RSA-OAEP'),('fcf0a403-28d8-4f74-914f-578a82241427','dffb9f04-9b89-4e33-b965-4d9c0df83ed7','allowed-protocol-mapper-types','oidc-full-name-mapper'),('fef01cc0-46c1-4834-9e5a-7df180254ffc','4fc64970-ec69-4c34-874a-0a201b5e2119','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ff8c7705-a538-4800-8987-bed0a632fd7f','775962b7-6fab-480e-a1fd-cb653f022e9b','allowed-protocol-mapper-types','saml-user-property-mapper');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('02da046e-c89c-4d1f-8901-5806992aa88c','15f93b96-e3ef-4df3-8da4-f3b1f94b9252'),('02da046e-c89c-4d1f-8901-5806992aa88c','e64e0e6e-45a7-4925-8e5d-2ab99c8c9264'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','02065d82-4871-4e8a-82b9-c75b4ef86b48'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','02951132-f709-41df-8d00-8269ad7b79cc'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','097aa7e4-ea47-4873-a617-20e7ad393170'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','0d7fbd0b-a817-4d2e-b284-63703651cc9b'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','1ead6abe-3048-4602-ae4b-129d1b093988'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','289763cb-54ac-4f73-9faa-ecf2db65e519'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','3e215da0-382b-488d-9b6c-084b00c8dbf7'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','403f22eb-837d-418d-9ae5-a640b6542a5a'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','6028beb9-26c1-4707-98a5-2cd8419b903a'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','783bf7ed-1c5c-4a23-9ec6-82ef032f4bb7'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','81adbe36-01bb-4faa-8707-c218afbbabb5'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','994e6757-2222-4daa-9bb3-6b2322c62765'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','9f4aae6a-fa2f-4b4e-a4ac-ef7ce1741b3a'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','ac8436ca-2df7-44d5-8ca2-d9ecae834961'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','befbeecf-f6a9-408c-97bd-f0097755f08e'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','c13dfe7d-995c-4b4d-a517-0157dca12f91'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','e58549db-5f25-47e2-a9bf-5200565a9536'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','e68f4996-8017-4c04-b4f7-e02055c4ab4a'),('0784f974-32a7-4ad2-b360-da5426daee66','a87a2845-d06c-4379-9be5-39f6fa35b5bc'),('0784f974-32a7-4ad2-b360-da5426daee66','f38cc6dc-87c2-457d-9395-c9ac962b906c'),('0b9f0ffb-5c6b-44ca-9412-6109d3e2cd53','8ad61991-7d65-49f7-b483-7eb7d75e97a4'),('0b9f0ffb-5c6b-44ca-9412-6109d3e2cd53','d70e9d95-a517-4e4a-9e5e-e7170659b977'),('0d16f29b-78f3-4841-bab1-1ab32fd59447','c862080d-d95c-400b-b94b-2e77b52a4832'),('12824a67-64b9-442b-b619-5f5f0508b87e','1833f8dc-3043-4e1d-826a-de0f28b85159'),('12824a67-64b9-442b-b619-5f5f0508b87e','6aad9a0d-d85d-4a49-8067-70bb3909fdfc'),('1441bca1-e67c-44aa-86f0-66a2e29e59bd','ba857b63-f52f-4fde-8746-653b72f38628'),('1b52e66a-90a1-4d55-b8ba-dfa317606d88','a4207752-be71-4c0c-877e-25a5559f66fb'),('1b52e66a-90a1-4d55-b8ba-dfa317606d88','dd4230e0-ae9f-4e77-bc54-2ec1f08c1a7f'),('220754aa-1542-4f3d-b9c3-192ca8405490','5c29fa37-a295-496c-9f6c-cef7b731c591'),('220754aa-1542-4f3d-b9c3-192ca8405490','bfafcdc2-8e81-423c-8e2e-009dfd45340d'),('265620b2-0155-4dce-ac68-0624f684e3c9','3d155595-8318-4d12-9902-5eaed1d98f4d'),('265620b2-0155-4dce-ac68-0624f684e3c9','55bfd3e9-dc9e-489c-bb02-ef749e908efc'),('265620b2-0155-4dce-ac68-0624f684e3c9','89eba396-4deb-4773-b365-15363d1c3e4e'),('265620b2-0155-4dce-ac68-0624f684e3c9','98f194b4-5e80-4f0a-a823-034710584e6a'),('32842aba-644f-42fe-8255-c903bbbc3955','9b1c1d96-a33d-4946-8fa4-b27441674097'),('3b884bb2-036e-4039-acce-8fcbf1e8edbe','019cb3d7-b7fd-45de-9c09-ec2fec16f7e2'),('3b884bb2-036e-4039-acce-8fcbf1e8edbe','5b23ea0f-0607-4aeb-86a8-f7581c63de92'),('3b884bb2-036e-4039-acce-8fcbf1e8edbe','5e6ffd03-16a8-42c0-ab46-8461123b09c8'),('3d155595-8318-4d12-9902-5eaed1d98f4d','de140f14-8532-4e58-a061-478f871dbebd'),('3e215da0-382b-488d-9b6c-084b00c8dbf7','6028beb9-26c1-4707-98a5-2cd8419b903a'),('3e215da0-382b-488d-9b6c-084b00c8dbf7','c13dfe7d-995c-4b4d-a517-0157dca12f91'),('42dbd305-c14b-4c2f-a9fa-12b89aba97b7','18f63a40-f31a-4d06-ac0c-331d3286c016'),('439775a0-9e52-4099-8222-7f36d0bc2aca','9b433460-3e63-436c-8347-f71ad7a5109c'),('468ad400-f12d-46d4-b187-66f4aad8afdd','43ead944-5fc6-4d13-a50c-c44004bf5c76'),('468ad400-f12d-46d4-b187-66f4aad8afdd','5ed2dc21-5790-4133-b9f5-992c215b49f5'),('46be0cf7-9cf7-49fd-b9b3-00697eb181d2','694ceae1-18dc-49db-8816-405166110947'),('46be0cf7-9cf7-49fd-b9b3-00697eb181d2','7796b73c-1df5-43a9-97ab-24da090db75f'),('4dce2b36-3a76-440b-914d-8f567abb2cb0','0a7c3458-50a0-421f-a6e6-89759991bed5'),('4dce2b36-3a76-440b-914d-8f567abb2cb0','7e0a8edb-4556-44fd-8ea3-787780381c82'),('4de64791-292b-41da-ba14-30f6b63b0478','b3250121-96bd-4b16-84d3-69e7799f6b3f'),('4de64791-292b-41da-ba14-30f6b63b0478','bfbf94e9-8f06-4b71-b40e-635a30fd1952'),('4de73f5b-566a-425d-82f0-babfa2ee56a3','026a58cc-7ae9-47cb-ab9d-cc22a0a26b75'),('4de73f5b-566a-425d-82f0-babfa2ee56a3','4a958966-45bd-45fd-b287-a242bc3f2b07'),('4de73f5b-566a-425d-82f0-babfa2ee56a3','9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db'),('505eac82-16d0-4073-bce0-c458a3b3b329','0336d57e-f2d1-48fd-87f9-a4ef7c51da4b'),('50e2ef11-f7fc-4c90-9350-34af76f3bfb0','24111242-07c8-4c03-9a63-52ff741ea55e'),('50e2ef11-f7fc-4c90-9350-34af76f3bfb0','eb60a970-16dd-4626-acca-bbe85629929f'),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','12b2031f-2094-4c79-9d61-5bd2ef272c0e'),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','47e859cd-8eb3-4031-8b2c-92b942aca2a0'),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','57eda79f-4668-471a-94dc-d6b75e2ffe5e'),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','69c5ca3d-f123-4862-8173-6b68566c6dbe'),('54966569-c013-48bb-bd19-1ea8bb7a936a','94aa7e81-2814-456d-ab87-a4f64345e23b'),('54966569-c013-48bb-bd19-1ea8bb7a936a','f25e8587-db5d-4404-bacf-33f8380876a4'),('563acf43-45df-450f-8842-58cecd2550ba','019cb3d7-b7fd-45de-9c09-ec2fec16f7e2'),('563acf43-45df-450f-8842-58cecd2550ba','0b52746b-d4b9-42c9-855b-0f4812a8136a'),('563acf43-45df-450f-8842-58cecd2550ba','3c4b9863-edb1-4ce4-baf2-6bacb2a43b83'),('563acf43-45df-450f-8842-58cecd2550ba','5b23ea0f-0607-4aeb-86a8-f7581c63de92'),('563acf43-45df-450f-8842-58cecd2550ba','5e6ffd03-16a8-42c0-ab46-8461123b09c8'),('563acf43-45df-450f-8842-58cecd2550ba','af2e8e82-8248-4aa0-8b86-e2c9cc4ae102'),('563acf43-45df-450f-8842-58cecd2550ba','c4445745-87f7-47e8-9a02-5562ab03881a'),('563acf43-45df-450f-8842-58cecd2550ba','dfaa5343-5c73-4c75-8cac-d228a2f69613'),('5a66ea31-2b7a-4ac1-86cb-479d3218271f','7b3eb99d-572e-4964-867d-fe6bb30d4062'),('5a66ea31-2b7a-4ac1-86cb-479d3218271f','fa49cfe3-5887-49d6-b6aa-cc2c25922df0'),('5baa1626-6bca-45a7-8bda-7bfefe8a9298','5b23ea0f-0607-4aeb-86a8-f7581c63de92'),('5baa1626-6bca-45a7-8bda-7bfefe8a9298','5e6ffd03-16a8-42c0-ab46-8461123b09c8'),('5c8cceeb-482b-423a-921f-1fb744bf2496','dc62d5c8-fdf2-46b5-b73c-cd097c142cd7'),('5cc83723-b1eb-49ca-aadc-d48465ddff86','a15324ce-44ec-4878-9aaf-486f7d1e2461'),('5cc83723-b1eb-49ca-aadc-d48465ddff86','bd71a142-3ea3-4aa0-bc94-0997777be7fc'),('623385aa-0230-4564-bcc4-91fecad85ddf','026a58cc-7ae9-47cb-ab9d-cc22a0a26b75'),('623385aa-0230-4564-bcc4-91fecad85ddf','9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db'),('62444f8d-fa4f-4957-8ec8-e81417ac5b73','7d7411ef-7d70-4b64-b21b-9ef9783c69c5'),('62444f8d-fa4f-4957-8ec8-e81417ac5b73','ac5ea540-f1cb-4466-a773-2a8e3471bf1e'),('62befced-52d7-4cef-a00d-e8916bc0d68a','7c08b9f2-77f6-4448-845b-4fab9c56f2a9'),('62befced-52d7-4cef-a00d-e8916bc0d68a','ea8d0a21-1170-4154-82c6-45798083817c'),('63c64f60-4a65-4191-89de-833e05fea486','198b4c39-230f-4934-bb01-28301b8e8e7d'),('6468e080-697a-4707-896b-65458c2b98e8','46bf3c51-ffa5-410c-a93c-596b7dac3cca'),('6468e080-697a-4707-896b-65458c2b98e8','69c0bdcc-a663-4eec-b71b-033f8351c5a9'),('6468e080-697a-4707-896b-65458c2b98e8','6fb883c5-76c6-4b3c-8edb-ab59dba44fec'),('6468e080-697a-4707-896b-65458c2b98e8','c562ee56-e12b-4294-aa8a-5889729450e0'),('69c0bdcc-a663-4eec-b71b-033f8351c5a9','28a6b88d-ddac-4739-8018-a637476a1f9d'),('69c5ca3d-f123-4862-8173-6b68566c6dbe','2721bf67-b474-4b82-b9ee-77a9c58b5b0c'),('6a31ad4a-6fb9-4d33-8bdc-7096a1ee0627','b0cd6b63-56b3-41a2-81af-8abcbe3ff06b'),('6dab20a9-5026-4995-9b18-df607596f36f','02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3'),('6dab20a9-5026-4995-9b18-df607596f36f','1a3b48ab-262c-49cb-9d9e-fa673d5d549c'),('6dab20a9-5026-4995-9b18-df607596f36f','4aaf7b45-70f0-497a-9d3b-a783216266f1'),('6dab20a9-5026-4995-9b18-df607596f36f','5b57b239-eb7f-41a2-9cdb-706b813438a0'),('6dab20a9-5026-4995-9b18-df607596f36f','5c5edd41-e2e7-4d49-9788-28e8840cf305'),('6dab20a9-5026-4995-9b18-df607596f36f','77a06631-1e7f-4e45-9328-6619064516ac'),('6dab20a9-5026-4995-9b18-df607596f36f','e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2'),('6dab20a9-5026-4995-9b18-df607596f36f','e41eb562-3a52-4d1a-941d-0670856e4d74'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','0768dcfa-a5c1-4c52-ba23-465df373b127'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','12104974-39a9-476d-a360-b20ba7818826'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','1ac79bc7-8027-4e42-9d63-7ca021ba7816'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','3ad08e65-0028-498a-bdf5-460810463508'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','441f6500-ff6d-43b2-9298-7e339bf53a69'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','57b34279-f11d-4f33-b95d-aeea7f69df20'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','7b387bbe-6625-4fe0-8401-daea7161165f'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','8286bb88-c166-4725-8bb7-6da70ffc1098'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','83a09f7a-ad4d-462b-a346-caa0be97fdcd'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','88b8b33a-6508-43bd-99fb-3831e230a1f0'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','8c7977ef-5e50-495a-9c97-6dd313b5c9fd'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','ba5aa254-225e-4195-a6e4-7a5ca46e3006'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','bd6937a8-5d22-4db9-9cfd-b8e3f8e5b390'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','c2d958dc-af70-46c7-b638-188b7e05bcfd'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','e13cdf67-108f-4d6a-8697-1195734551e8'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','e517041c-436d-4037-b7b8-5f7c9b0ed979'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','eaa06f97-5c8d-4977-935c-433485a6a69c'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','fc7b04df-9bfd-4fa3-bce1-52b08c560a16'),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','6a31ad4a-6fb9-4d33-8bdc-7096a1ee0627'),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','7d796cef-ccce-48dc-8647-9c73c08954b3'),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','cae76351-b3fd-4f4d-a8f9-a38863aa8f5a'),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','dd538794-2c5c-4518-b8e3-357619732e0e'),('77e5467f-5446-43c9-9628-1dfcf45d6186','08fdf655-f027-4e04-a0ea-94e8184c0340'),('77e5467f-5446-43c9-9628-1dfcf45d6186','1f2a9c6c-b527-4216-ac5d-4415e3e876cc'),('77e5467f-5446-43c9-9628-1dfcf45d6186','2de3beac-faa3-439d-93c2-68212f86445c'),('77e5467f-5446-43c9-9628-1dfcf45d6186','3050c013-6753-41a6-9b8e-462548191508'),('77e5467f-5446-43c9-9628-1dfcf45d6186','676cde1e-5817-4d19-a6ac-22056ece2963'),('77e5467f-5446-43c9-9628-1dfcf45d6186','94aa7e81-2814-456d-ab87-a4f64345e23b'),('77e5467f-5446-43c9-9628-1dfcf45d6186','e73102b4-fc0d-45c9-b8c0-1c5be067d832'),('77e5467f-5446-43c9-9628-1dfcf45d6186','f25e8587-db5d-4404-bacf-33f8380876a4'),('7de2e517-be2f-4af5-9f95-1d6afcd02199','2086f23a-3e75-443f-93ed-1f9050e2c6da'),('7de2e517-be2f-4af5-9f95-1d6afcd02199','5051643f-2500-472d-977a-839a1d2b88ca'),('7de2e517-be2f-4af5-9f95-1d6afcd02199','8b68ee81-8d49-4d34-9df6-42bccc3d23ae'),('7de2e517-be2f-4af5-9f95-1d6afcd02199','c76d0f7f-95b0-457f-8e5f-6eb3220eed6a'),('7fdfb7ec-9d6c-4067-a44a-70dbc2863a42','0076d9d4-8fc2-41f3-aef0-20f45bbbd6b2'),('7fdfb7ec-9d6c-4067-a44a-70dbc2863a42','c0b9f084-497d-45a5-8b02-b30a4f880e01'),('81adbe36-01bb-4faa-8707-c218afbbabb5','e58549db-5f25-47e2-a9bf-5200565a9536'),('84ff1201-e008-4609-9e6e-14f9e1402474','451692c3-83de-4b4b-9323-d43bd5e5b0e8'),('84ff1201-e008-4609-9e6e-14f9e1402474','c0e3b2ca-644e-4818-aa2a-fda7198b7b5b'),('86da9323-f6e9-4e45-94c5-e9f14e9add86','4d49a00b-399a-4366-b38f-d17d87715e74'),('86da9323-f6e9-4e45-94c5-e9f14e9add86','b05629d2-1eff-4f6c-99ef-62e0b941e258'),('88054132-1593-4402-a348-d2cbced7b3a2','23656f71-afb0-40de-bbed-87f930ff39af'),('88054132-1593-4402-a348-d2cbced7b3a2','29c99c1f-3d21-48ee-8b36-01411cdcb82a'),('88054132-1593-4402-a348-d2cbced7b3a2','2c9e45ed-458a-4e9a-a8d7-747993e3b0d7'),('88054132-1593-4402-a348-d2cbced7b3a2','31d9c8d7-6fc1-4a85-a98a-b13e0b04160d'),('88054132-1593-4402-a348-d2cbced7b3a2','4ce87aca-ec39-43e7-89d9-8f7dbd1ccfd9'),('88054132-1593-4402-a348-d2cbced7b3a2','4d49a00b-399a-4366-b38f-d17d87715e74'),('88054132-1593-4402-a348-d2cbced7b3a2','5e3f7017-7375-4ddb-a9f5-d6f6c4e61518'),('88054132-1593-4402-a348-d2cbced7b3a2','67eb763b-b175-4abf-a97b-65df85e20c15'),('88054132-1593-4402-a348-d2cbced7b3a2','867218d6-f612-4f0f-a840-ab56238e15bf'),('88054132-1593-4402-a348-d2cbced7b3a2','86da9323-f6e9-4e45-94c5-e9f14e9add86'),('88054132-1593-4402-a348-d2cbced7b3a2','91fb95e2-7d50-4bcb-953c-43dca7126330'),('88054132-1593-4402-a348-d2cbced7b3a2','95dc691c-6cbd-43cc-a393-e857f3dfd7f6'),('88054132-1593-4402-a348-d2cbced7b3a2','b05629d2-1eff-4f6c-99ef-62e0b941e258'),('88054132-1593-4402-a348-d2cbced7b3a2','cdbad156-c93a-47a2-8800-ccfb88271758'),('88054132-1593-4402-a348-d2cbced7b3a2','cee25ba5-4534-4f29-ad47-bda3602a22d1'),('88054132-1593-4402-a348-d2cbced7b3a2','d12073f7-fbef-45f6-a2d1-cbf6c9ec7fc9'),('88054132-1593-4402-a348-d2cbced7b3a2','f649ad4b-45fc-4631-b0ac-dd34b60fd513'),('88054132-1593-4402-a348-d2cbced7b3a2','f7be4205-5cd6-458b-8cbc-ec48f6545c5c'),('88b8b33a-6508-43bd-99fb-3831e230a1f0','bd6937a8-5d22-4db9-9cfd-b8e3f8e5b390'),('88b8b33a-6508-43bd-99fb-3831e230a1f0','e517041c-436d-4037-b7b8-5f7c9b0ed979'),('935203ce-86a2-466f-a946-d292cc7a7313','950ad99b-32e2-4257-b0ec-19c6c820bd51'),('935203ce-86a2-466f-a946-d292cc7a7313','95a9a9ba-0584-4f47-adff-521019e5b671'),('95dc691c-6cbd-43cc-a393-e857f3dfd7f6','29c99c1f-3d21-48ee-8b36-01411cdcb82a'),('99a3f609-6874-4fe6-8ec2-aa5409b7afaf','02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3'),('99a3f609-6874-4fe6-8ec2-aa5409b7afaf','1a3b48ab-262c-49cb-9d9e-fa673d5d549c'),('99a3f609-6874-4fe6-8ec2-aa5409b7afaf','e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2'),('9a79594f-25f8-494c-9f22-97d5b66edacf','6117818b-e94a-427a-9565-53f6e7ce9b1c'),('9a79594f-25f8-494c-9f22-97d5b66edacf','a7cc3f57-6cd2-4206-99ad-72e3befc71b5'),('9a79594f-25f8-494c-9f22-97d5b66edacf','b72d0333-7283-45fd-9ff5-68d3e4793cdd'),('9a79594f-25f8-494c-9f22-97d5b66edacf','f11646af-28cc-4e20-8238-1059d9c56d09'),('a0fbba49-a06a-4271-a936-0665f51337bf','d58c0547-9edc-43a0-90a8-6ef23f870730'),('a0fbba49-a06a-4271-a936-0665f51337bf','fb4e200e-5ed5-44fb-8db9-4f7a242efeb0'),('a6af2db4-76e0-4c0a-945f-f2e29fab4257','407fe76e-fb6c-4baa-a818-b72f20ce8189'),('a6af2db4-76e0-4c0a-945f-f2e29fab4257','e2de53bc-34cf-4670-8561-1386c8bd5ffd'),('ade84f9c-dcad-4e90-8c74-e1242250f845','3d298263-3811-4faa-87a7-f02549d5d58c'),('ade84f9c-dcad-4e90-8c74-e1242250f845','41999579-9836-4f8a-b2f2-dd8b2b48d61a'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','026a58cc-7ae9-47cb-ab9d-cc22a0a26b75'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','27c9318d-0e2c-4b19-925f-31093d0effe0'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','4a958966-45bd-45fd-b287-a242bc3f2b07'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','98c245da-d0a5-4193-99ec-d9078261ba28'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','9a9d5fca-6755-4a61-9adf-6d1cd90490e5'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','a07848e4-1169-4bc5-8715-4378e63bbf8a'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','a1a1a34d-4c01-44cb-ab68-c693be6daec1'),('b2da97f1-55aa-44d6-b555-a6cd97792763','00e2739e-f08c-4d19-8746-1885f8c1a958'),('b2da97f1-55aa-44d6-b555-a6cd97792763','04e62b0b-b25d-4b1b-9ea6-c12cb222389b'),('b2da97f1-55aa-44d6-b555-a6cd97792763','0b9f0ffb-5c6b-44ca-9412-6109d3e2cd53'),('b2da97f1-55aa-44d6-b555-a6cd97792763','0cf09d98-60bc-483c-97e8-1b00834855bf'),('b2da97f1-55aa-44d6-b555-a6cd97792763','0d16f29b-78f3-4841-bab1-1ab32fd59447'),('b2da97f1-55aa-44d6-b555-a6cd97792763','0eed6274-184e-44b0-a067-035d247a1400'),('b2da97f1-55aa-44d6-b555-a6cd97792763','10e9ff59-ccd5-4ed9-9412-d36f8f78bd23'),('b2da97f1-55aa-44d6-b555-a6cd97792763','12916542-788e-4082-a17c-3b88bbf94298'),('b2da97f1-55aa-44d6-b555-a6cd97792763','1441bca1-e67c-44aa-86f0-66a2e29e59bd'),('b2da97f1-55aa-44d6-b555-a6cd97792763','1490c2b1-d4bc-4785-b4b5-a65f86a38ba0'),('b2da97f1-55aa-44d6-b555-a6cd97792763','18a381ff-1b5a-4393-876a-4c6fb89477fa'),('b2da97f1-55aa-44d6-b555-a6cd97792763','1979672f-1b71-4c45-859f-59bc5eda110c'),('b2da97f1-55aa-44d6-b555-a6cd97792763','197df48e-511f-4f0e-a3c2-e15cfb8b82b5'),('b2da97f1-55aa-44d6-b555-a6cd97792763','1a818a81-0d6e-45a1-98b4-44d3b9f2e527'),('b2da97f1-55aa-44d6-b555-a6cd97792763','1dfbf103-448d-4875-b152-dd4cecc876ed'),('b2da97f1-55aa-44d6-b555-a6cd97792763','1dff3aa5-b7b1-4dc5-8b83-ea6ca8b12fe9'),('b2da97f1-55aa-44d6-b555-a6cd97792763','220754aa-1542-4f3d-b9c3-192ca8405490'),('b2da97f1-55aa-44d6-b555-a6cd97792763','23984471-78b3-414f-b555-f1164b75f12f'),('b2da97f1-55aa-44d6-b555-a6cd97792763','251e460f-8a7a-489d-868b-529677bfeba2'),('b2da97f1-55aa-44d6-b555-a6cd97792763','28ebb6d2-3f06-4f13-a5f9-5bea9b3a0094'),('b2da97f1-55aa-44d6-b555-a6cd97792763','2eb684d9-e7d0-4cb4-b220-bdfa245e267e'),('b2da97f1-55aa-44d6-b555-a6cd97792763','334526d2-5805-4408-89e4-f36a63d246aa'),('b2da97f1-55aa-44d6-b555-a6cd97792763','353838f2-9618-4cd3-9c56-3bdf1d2e5307'),('b2da97f1-55aa-44d6-b555-a6cd97792763','3aafac2e-73af-4d53-a599-2dc2854e9eed'),('b2da97f1-55aa-44d6-b555-a6cd97792763','3d2f2f3d-2eed-4b75-8aad-d8067c610052'),('b2da97f1-55aa-44d6-b555-a6cd97792763','4196d6d2-c88a-4827-993b-810f1e7dfb2d'),('b2da97f1-55aa-44d6-b555-a6cd97792763','43ead944-5fc6-4d13-a50c-c44004bf5c76'),('b2da97f1-55aa-44d6-b555-a6cd97792763','451692c3-83de-4b4b-9323-d43bd5e5b0e8'),('b2da97f1-55aa-44d6-b555-a6cd97792763','468ad400-f12d-46d4-b187-66f4aad8afdd'),('b2da97f1-55aa-44d6-b555-a6cd97792763','4d32791f-a5a6-46ed-a798-efedecc8a752'),('b2da97f1-55aa-44d6-b555-a6cd97792763','4de64791-292b-41da-ba14-30f6b63b0478'),('b2da97f1-55aa-44d6-b555-a6cd97792763','510080b5-c271-413c-bf79-0c361cf775cb'),('b2da97f1-55aa-44d6-b555-a6cd97792763','52dc36d5-7eca-4ba9-87be-c07f7773107f'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5467189f-5661-4450-bcb2-00cdf553e36a'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5a66ea31-2b7a-4ac1-86cb-479d3218271f'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5c29fa37-a295-496c-9f6c-cef7b731c591'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5c35cbad-2254-43eb-a8ce-0bb868b69b68'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5c8cceeb-482b-423a-921f-1fb744bf2496'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5ed2dc21-5790-4133-b9f5-992c215b49f5'),('b2da97f1-55aa-44d6-b555-a6cd97792763','5f41d84a-dd99-45bc-b8d2-c56d5e363430'),('b2da97f1-55aa-44d6-b555-a6cd97792763','60001950-cadb-4c9f-95ce-f506115efb09'),('b2da97f1-55aa-44d6-b555-a6cd97792763','600dea73-77e5-41e8-811b-e590070165ac'),('b2da97f1-55aa-44d6-b555-a6cd97792763','645b3620-799f-4551-a4e1-dc0ee50f8221'),('b2da97f1-55aa-44d6-b555-a6cd97792763','64ca0850-86c8-4193-9de5-113b141f8c6b'),('b2da97f1-55aa-44d6-b555-a6cd97792763','6a8567cd-7f05-4713-8515-47cefce7bd04'),('b2da97f1-55aa-44d6-b555-a6cd97792763','6e295f77-1a77-43c1-994f-9eb81796f312'),('b2da97f1-55aa-44d6-b555-a6cd97792763','6e96b9ec-3595-433f-83c1-7140a70afd61'),('b2da97f1-55aa-44d6-b555-a6cd97792763','6f1c3949-18e2-4ca5-a483-8adeb64568de'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7246ee1c-d455-4efb-8975-d6d059e6da0c'),('b2da97f1-55aa-44d6-b555-a6cd97792763','75522ab6-c1d0-4ac1-9947-e00074446a06'),('b2da97f1-55aa-44d6-b555-a6cd97792763','770f32c1-24d6-4198-a608-56157a697086'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7b3eb99d-572e-4964-867d-fe6bb30d4062'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7b43b474-fb2f-436f-ba52-7a6fbb1a899b'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7b6d694a-a0b1-4660-9338-1d5cb4ce99dd'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7d79ab17-2845-4122-829b-da0fb949a6d3'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7f168260-7d4a-477b-bbe0-ab00dc187ba6'),('b2da97f1-55aa-44d6-b555-a6cd97792763','7f5f09a9-e9a6-4ce3-8f95-048e9d3b9000'),('b2da97f1-55aa-44d6-b555-a6cd97792763','84934eea-644e-43f0-9dec-9bfcea4b88ca'),('b2da97f1-55aa-44d6-b555-a6cd97792763','84bc282a-5f85-4feb-bb98-eb7608b1473b'),('b2da97f1-55aa-44d6-b555-a6cd97792763','84ff1201-e008-4609-9e6e-14f9e1402474'),('b2da97f1-55aa-44d6-b555-a6cd97792763','8638f082-d142-4ddc-a616-f946fc3e25a8'),('b2da97f1-55aa-44d6-b555-a6cd97792763','8ab94194-1923-41fc-aa33-7311ea52ff27'),('b2da97f1-55aa-44d6-b555-a6cd97792763','8ad61991-7d65-49f7-b483-7eb7d75e97a4'),('b2da97f1-55aa-44d6-b555-a6cd97792763','8ae767cb-ce03-47e1-a774-6139416f4f78'),('b2da97f1-55aa-44d6-b555-a6cd97792763','8df90829-cb39-4110-8656-0d6b5c32b0bf'),('b2da97f1-55aa-44d6-b555-a6cd97792763','8f68675d-9c49-4e4b-a0a2-f9830b3c0d3f'),('b2da97f1-55aa-44d6-b555-a6cd97792763','912895cc-78b2-44e7-8c54-647c667bb747'),('b2da97f1-55aa-44d6-b555-a6cd97792763','9a4e723a-804a-43fb-9b11-053a90fd2a07'),('b2da97f1-55aa-44d6-b555-a6cd97792763','9a5e2496-37e9-4730-89ab-2777ab963a24'),('b2da97f1-55aa-44d6-b555-a6cd97792763','9c69a647-9935-4e5b-b68b-a3cd4f4d9968'),('b2da97f1-55aa-44d6-b555-a6cd97792763','9c8510c8-d5ec-4b47-90b0-be0d7eb29fcc'),('b2da97f1-55aa-44d6-b555-a6cd97792763','9ce9206a-3865-4323-91ea-4f763199eeeb'),('b2da97f1-55aa-44d6-b555-a6cd97792763','a0a17f9b-ddd5-4933-a8c0-170875044bf4'),('b2da97f1-55aa-44d6-b555-a6cd97792763','a35cfc8a-534a-451b-a603-d4daac5a725a'),('b2da97f1-55aa-44d6-b555-a6cd97792763','a6b70c70-da73-4f6a-b801-d81d02241e0b'),('b2da97f1-55aa-44d6-b555-a6cd97792763','a81e442b-f260-44c7-9605-8fbd948ce8a1'),('b2da97f1-55aa-44d6-b555-a6cd97792763','af79132d-b2ce-4344-a014-3834b9d241f9'),('b2da97f1-55aa-44d6-b555-a6cd97792763','b0cbd130-db6a-4488-9c20-f9b121b17430'),('b2da97f1-55aa-44d6-b555-a6cd97792763','b3250121-96bd-4b16-84d3-69e7799f6b3f'),('b2da97f1-55aa-44d6-b555-a6cd97792763','b64c85af-29bd-4ebc-a4dc-a00a7d918629'),('b2da97f1-55aa-44d6-b555-a6cd97792763','ba857b63-f52f-4fde-8746-653b72f38628'),('b2da97f1-55aa-44d6-b555-a6cd97792763','bfafcdc2-8e81-423c-8e2e-009dfd45340d'),('b2da97f1-55aa-44d6-b555-a6cd97792763','bfbf94e9-8f06-4b71-b40e-635a30fd1952'),('b2da97f1-55aa-44d6-b555-a6cd97792763','c0e3b2ca-644e-4818-aa2a-fda7198b7b5b'),('b2da97f1-55aa-44d6-b555-a6cd97792763','c2210161-0d27-4bdb-a9ad-740ddd7bdc7d'),('b2da97f1-55aa-44d6-b555-a6cd97792763','c862080d-d95c-400b-b94b-2e77b52a4832'),('b2da97f1-55aa-44d6-b555-a6cd97792763','ce37ea09-1ee7-498d-a9de-af50a4018032'),('b2da97f1-55aa-44d6-b555-a6cd97792763','ce5dc6d1-4868-4d59-8aec-154ed79a88fd'),('b2da97f1-55aa-44d6-b555-a6cd97792763','cf46c1be-10bb-44de-9a8f-cc7c6fe1d0fd'),('b2da97f1-55aa-44d6-b555-a6cd97792763','d2ab1109-5b97-442e-a214-f9d347028bd9'),('b2da97f1-55aa-44d6-b555-a6cd97792763','d415ab46-523a-454d-b66e-879e854b3280'),('b2da97f1-55aa-44d6-b555-a6cd97792763','d70e9d95-a517-4e4a-9e5e-e7170659b977'),('b2da97f1-55aa-44d6-b555-a6cd97792763','da6cf4d1-fd1d-423a-bb74-7d4c1eba2bab'),('b2da97f1-55aa-44d6-b555-a6cd97792763','db03e061-14cc-49f6-aa48-2ce790b07d8d'),('b2da97f1-55aa-44d6-b555-a6cd97792763','dc189cbd-7228-4357-a19e-ffbfa6d00b3a'),('b2da97f1-55aa-44d6-b555-a6cd97792763','dc62d5c8-fdf2-46b5-b73c-cd097c142cd7'),('b2da97f1-55aa-44d6-b555-a6cd97792763','e03611ca-8e91-48ac-86a9-cf8b79f1ed22'),('b2da97f1-55aa-44d6-b555-a6cd97792763','e1636d70-44a3-463b-a20b-5f012a0c39bb'),('b2da97f1-55aa-44d6-b555-a6cd97792763','e27510a3-6ba2-415c-aa07-080ef9828ede'),('b2da97f1-55aa-44d6-b555-a6cd97792763','e7359ac9-3fce-4bb7-8c4c-33b1ff5ee505'),('b2da97f1-55aa-44d6-b555-a6cd97792763','e7c7bc26-f8b7-406c-b044-adf6a10d0eee'),('b2da97f1-55aa-44d6-b555-a6cd97792763','ea57c92a-88f3-45a4-bb64-250302f62efd'),('b2da97f1-55aa-44d6-b555-a6cd97792763','ecd19fac-a5a1-4031-8adf-f058aa75ad93'),('b2da97f1-55aa-44d6-b555-a6cd97792763','efa8e053-bb47-48a1-b425-babdd9fa45af'),('b2da97f1-55aa-44d6-b555-a6cd97792763','f3dd8816-5016-4453-896e-00bb9141e2e3'),('b2da97f1-55aa-44d6-b555-a6cd97792763','f4a110cc-a4cb-4f31-8988-c0e509ac483c'),('b2da97f1-55aa-44d6-b555-a6cd97792763','fa49cfe3-5887-49d6-b6aa-cc2c25922df0'),('b2da97f1-55aa-44d6-b555-a6cd97792763','fe8c3769-998d-4970-bdec-732cf15ad202'),('b2da97f1-55aa-44d6-b555-a6cd97792763','ffe3546d-707b-44c9-9440-576fe88927e9'),('b7e9267f-a442-49d9-a8c7-91988346aedd','5fe9a874-e775-4af5-bb2d-7c69dd763073'),('c0a56635-54ac-40f6-b4e7-fa2d76e8079a','02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3'),('c0a56635-54ac-40f6-b4e7-fa2d76e8079a','e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2'),('c22fde5d-66e0-4658-9431-270a47329a92','1d41b4c3-0280-4999-9013-866231ce8563'),('c2d958dc-af70-46c7-b638-188b7e05bcfd','fc7b04df-9bfd-4fa3-bce1-52b08c560a16'),('c76d0f7f-95b0-457f-8e5f-6eb3220eed6a','709b7dc1-592b-4bc3-93bb-2731cf41ae72'),('ce37ea09-1ee7-498d-a9de-af50a4018032','8f68675d-9c49-4e4b-a0a2-f9830b3c0d3f'),('cee5241b-12de-456a-abe3-7f9a0d250637','0336d57e-f2d1-48fd-87f9-a4ef7c51da4b'),('cee5241b-12de-456a-abe3-7f9a0d250637','0d1c5adb-cbd3-45b3-8bc1-b55610edaaa5'),('cee5241b-12de-456a-abe3-7f9a0d250637','0d69a258-36bf-41fd-b81c-1733bd6174cf'),('cee5241b-12de-456a-abe3-7f9a0d250637','296a2d57-edca-40cc-8b9b-c39c090dba74'),('cee5241b-12de-456a-abe3-7f9a0d250637','3266c8e2-a2ea-4a5c-9168-e77f0c6a49b0'),('cee5241b-12de-456a-abe3-7f9a0d250637','362d89f1-4de6-42af-bc16-d3ef6facae05'),('cee5241b-12de-456a-abe3-7f9a0d250637','490f28c4-8554-41e8-bf71-eea6b780f2f5'),('cee5241b-12de-456a-abe3-7f9a0d250637','505eac82-16d0-4073-bce0-c458a3b3b329'),('cee5241b-12de-456a-abe3-7f9a0d250637','78ad58cd-4472-43c3-88d4-7ba86a635a2f'),('cee5241b-12de-456a-abe3-7f9a0d250637','a0ef164d-68d3-409a-a712-7dbbbf917ab3'),('cee5241b-12de-456a-abe3-7f9a0d250637','ac8401c8-c574-4466-9cb5-206106e89e5a'),('cee5241b-12de-456a-abe3-7f9a0d250637','b1efd055-0ceb-4d72-84ab-27e669b9cd46'),('cee5241b-12de-456a-abe3-7f9a0d250637','be700476-27f7-4663-a566-bc9d90f40e15'),('cee5241b-12de-456a-abe3-7f9a0d250637','c6d638ab-29ed-41b7-bbe2-75fb84ab3621'),('cee5241b-12de-456a-abe3-7f9a0d250637','ca1d53e6-0573-4dc1-bf91-d64be8ad6712'),('cee5241b-12de-456a-abe3-7f9a0d250637','dc30e9ae-4199-40f7-8152-67871ee51dc0'),('cee5241b-12de-456a-abe3-7f9a0d250637','f718c202-ef37-49aa-9b4d-cbdee45db2c4'),('cee5241b-12de-456a-abe3-7f9a0d250637','f9908103-a92e-411e-87c1-809767c73e4a'),('dd1ec34a-e672-4eac-917e-610f672f133d','94aa7e81-2814-456d-ab87-a4f64345e23b'),('dd1ec34a-e672-4eac-917e-610f672f133d','e73102b4-fc0d-45c9-b8c0-1c5be067d832'),('dd1ec34a-e672-4eac-917e-610f672f133d','f25e8587-db5d-4404-bacf-33f8380876a4'),('e1636d70-44a3-463b-a20b-5f012a0c39bb','6e96b9ec-3595-433f-83c1-7140a70afd61'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','0699bc1a-0df7-4a90-b5de-8df939cb57ed'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','08d58f7a-6121-48da-a43d-53416c03dc5c'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','24111242-07c8-4c03-9a63-52ff741ea55e'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','3ae6f5d6-b475-4354-9fd3-1bc911ebbc9e'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','439775a0-9e52-4099-8222-7f36d0bc2aca'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','45e898db-4f86-49c2-bb3d-359302534c17'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','50e2ef11-f7fc-4c90-9350-34af76f3bfb0'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','5723ecbc-6089-4742-93af-415f650617d2'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','60354328-d8aa-41fa-bbe6-1840e5ef3be0'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','63c5fcf9-9b8c-4494-ad77-5f24205c272f'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','79cb074f-c349-4e26-98b3-7662b8423985'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','9b433460-3e63-436c-8347-f71ad7a5109c'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','9e8a751e-989b-40a2-a24d-6d7da15db3c5'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','cef7765e-29e4-46ed-b7b2-c8d33815aab3'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','e17ad94a-fee9-4ee6-9bfe-2a12076aa567'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','e6c2e5d4-7418-448b-a0b1-f617d85f069d'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','eb60a970-16dd-4626-acca-bbe85629929f'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','f2173286-a53f-4ba4-9be1-df279c0daf2e'),('e5483f14-5855-4976-bfac-8fecab1f610c','231682b1-9b0e-404c-9e48-cba06fc381a2'),('e5483f14-5855-4976-bfac-8fecab1f610c','26fd499f-e9d0-41b7-a6b4-2f4b4ef2999c'),('e5483f14-5855-4976-bfac-8fecab1f610c','407fe76e-fb6c-4baa-a818-b72f20ce8189'),('e5483f14-5855-4976-bfac-8fecab1f610c','7163527e-588a-4cc1-96a4-50827e83c5c2'),('e5483f14-5855-4976-bfac-8fecab1f610c','7b462ab2-8704-437a-b147-7d442149f85f'),('e5483f14-5855-4976-bfac-8fecab1f610c','89aa3f6f-c3ab-4d92-a0ba-e091efeec11f'),('e5483f14-5855-4976-bfac-8fecab1f610c','91d4988f-97e3-4bb7-bc63-c0cc1fe34f8b'),('e5483f14-5855-4976-bfac-8fecab1f610c','e2de53bc-34cf-4670-8561-1386c8bd5ffd'),('e7c7bc26-f8b7-406c-b044-adf6a10d0eee','a6b70c70-da73-4f6a-b801-d81d02241e0b'),('ebb9c273-6181-4af3-a58c-7630769fdffb','46fdfe03-94e2-436c-a5ae-a4fe9821895a'),('ebdf628f-b58b-45c4-ad3e-55ed1dafe24b','4f2929cc-7c6b-441c-920d-c5fee61543aa'),('ebdf628f-b58b-45c4-ad3e-55ed1dafe24b','cacb980f-9dbc-432a-b9e6-d9190db7f831'),('f11646af-28cc-4e20-8238-1059d9c56d09','08d4a53a-0806-4cec-a19e-da3ea8a75003'),('f58fae44-5e81-480e-9527-0a6e06968d26','407fe76e-fb6c-4baa-a818-b72f20ce8189'),('f58fae44-5e81-480e-9527-0a6e06968d26','89aa3f6f-c3ab-4d92-a0ba-e091efeec11f'),('f58fae44-5e81-480e-9527-0a6e06968d26','e2de53bc-34cf-4670-8561-1386c8bd5ffd'),('f718c202-ef37-49aa-9b4d-cbdee45db2c4','0d69a258-36bf-41fd-b81c-1733bd6174cf'),('f718c202-ef37-49aa-9b4d-cbdee45db2c4','c6d638ab-29ed-41b7-bbe2-75fb84ab3621'),('fdab3c8f-5944-409f-a311-4c49d4672888','5cae315f-957c-41d5-9155-9bb7b955bb98'),('fdab3c8f-5944-409f-a311-4c49d4672888','aba93f08-21e9-48dd-8d1b-908af9847081');
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
INSERT INTO `CREDENTIAL` VALUES ('22cf134c-8287-4f99-aa4f-888382ada7f6',NULL,'password','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814',1700534270586,NULL,'{\"value\":\"g5sETBPE8/d/39/NAP+lBhF3rEEfWCCwS6ObkTxBJ0ohgQ9aPTOhNuArTgOJ2A9hpZhXaWJQs0+ZECRarWjsSg==\",\"salt\":\"LfHrtB6FsaRc5fvYKc4SnA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('2aef7f2a-5b24-44ce-b535-8ac691533971',NULL,'password','633ad29a-5943-4f7d-8f98-c3983c0346b9',1700534157499,NULL,'{\"value\":\"XH2ICIdZZSVYkhTgigkfB72tNwzIbdn6uo9rLkYF+EJ9bNwo8bYEJbsbiuQpTPnAb32MAJJQELstzkGBZKpafA==\",\"salt\":\"lLPnj1NJ9IASwJE7SfQWcg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('7df3a24e-1c18-4c04-a3c3-cc151e1db635',NULL,'password','2bca6b04-7c55-4409-9dd3-eda27e0ed385',1700534332028,NULL,'{\"value\":\"FqIrbQDVyY6HWluQNMiUP1el85pvStgAmZy4A8gocWdXn1gwOxX36qq/SOK74TZcdgL6mCeBzaq7eVvrs6q2ow==\",\"salt\":\"59mRJbIWYDu8z3iSA4XZsg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('a051a1c1-a6b1-451a-96e9-ab312bf01fd6',NULL,'password','2c1da741-01aa-4dae-824d-3a5e986699fe',1700534300507,NULL,'{\"value\":\"0KduGdQsbwtpAITlF28Y61iMZ+0Fg3YJ1w9A7qJZQXXMXkXzwITSWi8pmzZf2bFYpeogUMNCrNrMnZvHl9LH6w==\",\"salt\":\"0wcfkGNd90YIiFYazqDeZg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('e38de2cf-2fbd-42a1-b686-6690becdf969',NULL,'password','dbaf8376-fb3d-49d8-8c25-3f29a12a3160',1700534201078,NULL,'{\"value\":\"XdFhOWAVQsKLpobARxLawvXCqn//MvS/XT6l4XH/VVMENyENC5iKrWStqFW0Qo/KrPYMTNhj7lafpTjL7iZYeQ==\",\"salt\":\"E9OA5uaoznFGkFhIG5I0kg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('fb941729-17ed-401d-8c78-065ca1168d30',NULL,'password','17985b46-8512-429d-a393-68ed7e707bf0',1700534237968,NULL,'{\"value\":\"zJ4cI2Vxt5Tu6eM3YxDB38RI+XiGZgzPRXsTIIptZviJo1yxNKwxeREOdS9r6FNBB0k+GhIMnHcx7hSfrg4EWQ==\",\"salt\":\"marHeLVizbvvTV9Uxb2GCA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2023-11-21 11:35:40',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2023-11-21 11:35:41',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2023-11-21 11:35:41',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2023-11-21 11:35:41',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2023-11-21 11:35:42',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2023-11-21 11:35:42',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2023-11-21 11:35:43',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2023-11-21 11:35:43',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2023-11-21 11:35:43',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2023-11-21 11:35:44',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2023-11-21 11:35:44',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2023-11-21 11:35:44',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2023-11-21 11:35:44',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-11-21 11:35:44',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-11-21 11:35:44',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-11-21 11:35:44',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2023-11-21 11:35:44',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2023-11-21 11:35:45',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2023-11-21 11:35:46',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2023-11-21 11:35:46',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2023-11-21 11:35:46',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2023-11-21 11:35:46',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2023-11-21 11:35:46',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2023-11-21 11:35:46',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2023-11-21 11:35:46',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2023-11-21 11:35:46',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2023-11-21 11:35:47',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2023-11-21 11:35:47',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2023-11-21 11:35:48',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2023-11-21 11:35:48',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2023-11-21 11:35:48',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2023-11-21 11:35:48',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-11-21 11:35:48',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-11-21 11:35:48',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-11-21 11:35:48',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2023-11-21 11:35:48',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2023-11-21 11:35:48',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'0534138042'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2023-11-21 11:35:48',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2023-11-21 11:35:48',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-11-21 11:35:48',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-11-21 11:35:48',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2023-11-21 11:35:48',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2023-11-21 11:35:49',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2023-11-21 11:35:49',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-11-21 11:35:49',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-11-21 11:35:49',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-11-21 11:35:49',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-11-21 11:35:49',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2023-11-21 11:35:49',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2023-11-21 11:35:50',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2023-11-21 11:35:50',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2023-11-21 11:35:50',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2023-11-21 11:35:50',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2023-11-21 11:35:50',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-11-21 11:35:50',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-11-21 11:35:50',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-11-21 11:35:50',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2023-11-21 11:35:51',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2023-11-21 11:35:51',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2023-11-21 11:35:51',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-11-21 11:35:51',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2023-11-21 11:35:51',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2023-11-21 11:35:52',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2023-11-21 11:35:52',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2023-11-21 11:35:52',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2023-11-21 11:35:52',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2023-11-21 11:35:52',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2023-11-21 11:35:52',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2023-11-21 11:35:52',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2023-11-21 11:35:52',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'0534138042'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2023-11-21 11:35:52',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'0534138042'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-11-21 11:35:52',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'0534138042'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-11-21 11:35:52',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'0534138042'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-11-21 11:35:52',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'0534138042'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-11-21 11:35:52',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2023-11-21 11:35:52',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-11-21 11:35:52',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-11-21 11:35:52',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-11-21 11:35:52',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2023-11-21 11:35:52',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-11-21 11:35:52',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-11-21 11:35:52',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-11-21 11:35:52',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-11-21 11:35:52',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'0534138042'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2023-11-21 11:35:52',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2023-11-21 11:35:52',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'0534138042'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-11-21 11:35:52',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2023-11-21 11:35:52',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'0534138042'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'0534138042'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'0534138042'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'0534138042'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'0534138042'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2023-11-21 11:35:52',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:52',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'0534138042'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:52',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'0534138042'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:52',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'0534138042'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:52',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'0534138042'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:52',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'0534138042'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:53',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2023-11-21 11:35:53',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'0534138042'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2023-11-21 11:35:53',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'0534138042'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2023-11-21 11:35:53',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2023-11-21 11:35:53',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'0534138042'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2023-11-21 11:35:53',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'0534138042'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-11-21 11:35:53',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-11-21 11:35:53',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'0534138042'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2023-11-21 11:35:53',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'0534138042');
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
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL),(1000,_binary '\0',NULL,NULL),(1001,_binary '\0',NULL,NULL);
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('a8877546-78d2-4601-8f66-d697f8ccfc92','17140d05-75ae-4874-b264-78c1232b4b92',_binary ''),('a8877546-78d2-4601-8f66-d697f8ccfc92','4c52212f-f10e-4388-9959-18e5adc977b9',_binary '\0'),('a8877546-78d2-4601-8f66-d697f8ccfc92','560885f6-a19a-4bd4-aa4f-cc1a52b5a74a',_binary ''),('a8877546-78d2-4601-8f66-d697f8ccfc92','5638f6bf-ef0e-4bf6-acca-f295f1062115',_binary '\0'),('a8877546-78d2-4601-8f66-d697f8ccfc92','687cfb52-cf70-422f-b7cc-ac0a45dfdd82',_binary '\0'),('a8877546-78d2-4601-8f66-d697f8ccfc92','6d77f32c-80d6-4cfb-b519-c43217a81d89',_binary ''),('a8877546-78d2-4601-8f66-d697f8ccfc92','b05e6963-67ad-41f3-b95e-9b8fdd56976f',_binary ''),('a8877546-78d2-4601-8f66-d697f8ccfc92','c68e5d0d-3495-43ed-91f1-a7b2f6a0665c',_binary '\0'),('a8877546-78d2-4601-8f66-d697f8ccfc92','f1521e13-3949-4dc3-8c63-42225e60cfae',_binary ''),('a8877546-78d2-4601-8f66-d697f8ccfc92','f4c48c1b-8b06-4ef5-8b30-5b30fb372782',_binary ''),('org1','174436e7-af29-4a38-a37a-ef53e148d2b0',_binary ''),('org1','251c113b-3b89-489a-b89b-1429c71de9bc',_binary ''),('org1','43f16c9f-5725-4ad5-81bd-7e470ffb1d50',_binary '\0'),('org1','52ee9e04-b3fd-4e78-a83d-c15bad81554c',_binary '\0'),('org1','6cdb1fc9-960a-4bc7-b40f-10d4150bd759',_binary ''),('org1','829a488c-718f-4531-a9f6-ab00f53640a4',_binary ''),('org1','c121e9f5-f608-4c14-bf94-7e8dd83c9236',_binary '\0'),('org1','c45016df-a2b9-4751-8d4e-74f15bec4d84',_binary ''),('org1','ec4f8801-dd3d-4cdd-86c9-a52b68beb937',_binary '\0'),('org1','fb055ca6-2889-47e6-852e-043b61aa5e34',_binary ''),('org2','6b55ca8c-1e26-4ba7-9a39-3186a1196fa3',_binary '\0'),('org2','6fab75d7-733e-4890-b096-50bcb0871ca3',_binary ''),('org2','74c2be43-8bae-49ae-8add-3ff653d5728e',_binary ''),('org2','9fb19211-f6ab-45db-87e0-448df52079b0',_binary '\0'),('org2','b7ff58ee-7277-4b7d-8410-232388a2586b',_binary ''),('org2','cfd62848-1628-41a1-b5bb-de6143bb9fd1',_binary '\0'),('org2','dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd',_binary ''),('org2','e5f98793-02a9-4400-ac0f-c67bab7fefc9',_binary ''),('org2','e74c9199-baae-4815-9b3e-03fe95e7bfc9',_binary ''),('org2','ec6ffefb-272f-41ed-bfd8-73ca499a94c5',_binary '\0'),('org3','04764dab-1f0f-4c51-9dbe-b45ed3c41708',_binary '\0'),('org3','14726c97-0fba-4f0b-bbe8-2162204cef20',_binary ''),('org3','259d2b38-9a5e-4952-99bd-e2e13e8b4507',_binary '\0'),('org3','2ccdf43b-2d02-4b47-b7ee-5176ac564332',_binary ''),('org3','2e6f4d09-2ffa-4b2f-bea7-83430d1b4300',_binary ''),('org3','437edba2-9f02-468b-99bc-f922d0ce6184',_binary ''),('org3','5c9ef9d5-84b8-424d-b011-6a2a1393b236',_binary '\0'),('org3','5f2eda65-04ac-427d-b470-a04b68000524',_binary ''),('org3','7910a755-d7b7-4ddc-9fc7-9a6614b11f69',_binary ''),('org3','cf0814c3-6aae-450b-a3fd-3f9f01b35367',_binary '\0'),('org4','06c629f6-4fb3-45db-b853-0e65886efde1',_binary ''),('org4','17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c',_binary ''),('org4','4261e717-255c-4894-be73-a2f32798f8a6',_binary ''),('org4','54408590-de3c-42af-ae1c-1e302e69b0ec',_binary '\0'),('org4','6d255c8d-b841-45bb-96db-c64cc243f1a4',_binary '\0'),('org4','7171466e-8552-4002-91bc-ddb718c7fcf2',_binary ''),('org4','77270adc-5c14-4f38-9fc5-14bd75497167',_binary '\0'),('org4','dcc31d94-c344-4665-a0d7-21f01609396e',_binary ''),('org4','f22c3424-be2d-4c40-94ba-cda83dc82abf',_binary ''),('org4','f6d1a25c-296c-427e-be91-2e8f52e18067',_binary '\0'),('org5','0ebd738b-ff8e-417a-ae0a-a8480513e50e',_binary ''),('org5','2801abd7-d1f8-4625-8dd2-cf5ae414c008',_binary ''),('org5','44e9c652-b923-4fbf-88eb-7332a1996218',_binary ''),('org5','459ead87-bce8-4925-9757-a2149d6d9a45',_binary '\0'),('org5','51b2fff3-e02b-4e5e-9cef-04f7bf22959a',_binary '\0'),('org5','66ef630d-2918-47c7-acb5-9d285cfc28b5',_binary ''),('org5','b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4',_binary ''),('org5','b33d9460-1543-441d-8ab1-d9474673f5a3',_binary ''),('org5','e5f2d392-4924-4785-b180-93e18ef56d38',_binary '\0'),('org5','ff8351da-6cf2-4d5c-b5e1-b0ab712fc283',_binary '\0');
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0076d9d4-8fc2-41f3-aef0-20f45bbbd6b2','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_ws3-admin','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('00e2739e-f08c-4d19-8746-1885f8c1a958','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_manage-realm}','manage-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('012ced1a-81d6-4321-a2e6-56ca0442284a','08eeb426-2b14-4f54-b965-d4abfa9479ea',_binary '','${role_read-token}','read-token','org4','08eeb426-2b14-4f54-b965-d4abfa9479ea',NULL),('019cb3d7-b7fd-45de-9c09-ec2fec16f7e2','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-ws-role-mt','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('02065d82-4871-4e8a-82b9-c75b4ef86b48','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_impersonation}','impersonation','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('026a58cc-7ae9-47cb-ab9d-cc22a0a26b75','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-usr-mt','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('02951132-f709-41df-8d00-8269ad7b79cc','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_view-realm}','view-realm','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('02da046e-c89c-4d1f-8901-5806992aa88c','8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',NULL,'_ws3-admin','org3','8e1aa514-01d1-4d71-b984-1f533b776280',NULL),('02f5ba10-8f95-4b71-ab6c-2752fd3c1ad3','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-ws-role-usr','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('0336d57e-f2d1-48fd-87f9-a4ef7c51da4b','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_query-clients}','query-clients','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('04e62b0b-b25d-4b1b-9ea6-c12cb222389b','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_view-realm}','view-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_realm-admin}','realm-admin','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('0699bc1a-0df7-4a90-b5de-8df939cb57ed','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_manage-users}','manage-users','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('0768dcfa-a5c1-4c52-ba23-465df373b127','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_view-events}','view-events','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('0784f974-32a7-4ad2-b360-da5426daee66','498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',NULL,'_ws1-admin','org1','498fc338-cab0-4248-86e6-bc4321b81af5',NULL),('08d4a53a-0806-4cec-a19e-da3ea8a75003','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_manage-account-links}','manage-account-links','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('08d58f7a-6121-48da-a43d-53416c03dc5c','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_impersonation}','impersonation','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('08fdf655-f027-4e04-a0ea-94e8184c0340','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-upd','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('097aa7e4-ea47-4873-a617-20e7ad393170','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_create-client}','create-client','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('0a7c3458-50a0-421f-a6e6-89759991bed5','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_ws3-admin','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('0b52746b-d4b9-42c9-855b-0f4812a8136a','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-role-usr','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('0b9f0ffb-5c6b-44ca-9412-6109d3e2cd53','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_view-users}','view-users','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('0cf09d98-60bc-483c-97e8-1b00834855bf','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_view-authorization}','view-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('0d16f29b-78f3-4841-bab1-1ab32fd59447','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_view-clients}','view-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('0d1c5adb-cbd3-45b3-8bc1-b55610edaaa5','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_view-realm}','view-realm','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('0d69a258-36bf-41fd-b81c-1733bd6174cf','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_query-groups}','query-groups','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('0d7fbd0b-a817-4d2e-b284-63703651cc9b','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_manage-authorization}','manage-authorization','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('0eed6274-184e-44b0-a067-035d247a1400','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_manage-users}','manage-users','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('10e9ff59-ccd5-4ed9-9412-d36f8f78bd23','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_create-client}','create-client','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('12104974-39a9-476d-a360-b20ba7818826','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_manage-identity-providers}','manage-identity-providers','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('12824a67-64b9-442b-b619-5f5f0508b87e','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',NULL,'_ws2-admin','org2','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',NULL),('12916542-788e-4082-a17c-3b88bbf94298','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_view-authorization}','view-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('12b2031f-2094-4c79-9d61-5bd2ef272c0e','org3',_binary '\0','${role_offline-access}','offline_access','org3',NULL,NULL),('1441bca1-e67c-44aa-86f0-66a2e29e59bd','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_view-clients}','view-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('1490c2b1-d4bc-4785-b4b5-a65f86a38ba0','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_manage-clients}','manage-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('1510f386-0f85-4ad8-8bcf-9d1339ab74ff','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_view-applications}','view-applications','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('15f93b96-e3ef-4df3-8da4-f3b1f94b9252','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'ws3','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('1833f8dc-3043-4e1d-826a-de0f28b85159','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'ws2','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('18a381ff-1b5a-4393-876a-4c6fb89477fa','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_impersonation}','impersonation','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('18f63a40-f31a-4d06-ac0c-331d3286c016','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_view-consent}','view-consent','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('190a21bc-0b1f-4b42-8443-02bc0f68b120','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_delete-account}','delete-account','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('1979672f-1b71-4c45-859f-59bc5eda110c','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_manage-identity-providers}','manage-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('197df48e-511f-4f0e-a3c2-e15cfb8b82b5','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_manage-identity-providers}','manage-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('198b4c39-230f-4934-bb01-28301b8e8e7d','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_view-consent}','view-consent','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('1a3b48ab-262c-49cb-9d9e-fa673d5d549c','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-ws-role-mt','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('1a818a81-0d6e-45a1-98b4-44d3b9f2e527','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_impersonation}','impersonation','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('1ac79bc7-8027-4e42-9d63-7ca021ba7816','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_view-identity-providers}','view-identity-providers','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('1b52e66a-90a1-4d55-b8ba-dfa317606d88','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',NULL,'_ws1-admin','org5','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',NULL),('1d41b4c3-0280-4999-9013-866231ce8563','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_view-consent}','view-consent','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('1dfbf103-448d-4875-b152-dd4cecc876ed','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_manage-authorization}','manage-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('1dff3aa5-b7b1-4dc5-8b83-ea6ca8b12fe9','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_manage-events}','manage-events','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('1ead6abe-3048-4602-ae4b-129d1b093988','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_view-authorization}','view-authorization','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('1f299531-d580-47f8-9e37-c7ea5f47c48b','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_view-groups}','view-groups','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('1f2a9c6c-b527-4216-ac5d-4415e3e876cc','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-own-mt','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('1f7ea097-dcd8-44c5-93d5-5ac9e4dd9565','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_delete-account}','delete-account','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('2086f23a-3e75-443f-93ed-1f9050e2c6da','org2',_binary '\0','${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('220754aa-1542-4f3d-b9c3-192ca8405490','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_view-users}','view-users','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('231682b1-9b0e-404c-9e48-cba06fc381a2','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-upd','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('23656f71-afb0-40de-bbed-87f930ff39af','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_view-identity-providers}','view-identity-providers','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('23984471-78b3-414f-b555-f1164b75f12f','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_impersonation}','impersonation','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('24111242-07c8-4c03-9a63-52ff741ea55e','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_query-groups}','query-groups','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('251e460f-8a7a-489d-868b-529677bfeba2','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_manage-realm}','manage-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('265620b2-0155-4dce-ac68-0624f684e3c9','org4',_binary '\0','${role_default-roles}','default-roles-org4','org4',NULL,NULL),('26fd499f-e9d0-41b7-a6b4-2f4b4ef2999c','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-own-mt','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('2721bf67-b474-4b82-b9ee-77a9c58b5b0c','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_manage-account-links}','manage-account-links','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('27c9318d-0e2c-4b19-925f-31093d0effe0','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-own-mt','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('2804e1d1-5bd2-4cb9-b642-0eb53efdbab7','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_delete-account}','delete-account','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('289763cb-54ac-4f73-9faa-ecf2db65e519','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_manage-realm}','manage-realm','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('28a6b88d-ddac-4739-8018-a637476a1f9d','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_manage-account-links}','manage-account-links','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('28ebb6d2-3f06-4f13-a5f9-5bea9b3a0094','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_manage-authorization}','manage-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('296a2d57-edca-40cc-8b9b-c39c090dba74','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_view-authorization}','view-authorization','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('29c99c1f-3d21-48ee-8b36-01411cdcb82a','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_query-clients}','query-clients','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('2adde449-8c70-4007-bfc3-f27625fdf84c','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_delete-account}','delete-account','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('2c9e45ed-458a-4e9a-a8d7-747993e3b0d7','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_impersonation}','impersonation','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('2de3beac-faa3-439d-93c2-68212f86445c','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-ws-mt','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('2eb684d9-e7d0-4cb4-b220-bdfa245e267e','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_view-events}','view-events','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('3050c013-6753-41a6-9b8e-462548191508','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-role-usr','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('31d9c8d7-6fc1-4a85-a98a-b13e0b04160d','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_query-realms}','query-realms','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('3266c8e2-a2ea-4a5c-9168-e77f0c6a49b0','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_view-identity-providers}','view-identity-providers','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('32842aba-644f-42fe-8255-c903bbbc3955','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_manage-consent}','manage-consent','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('334526d2-5805-4408-89e4-f36a63d246aa','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0','${role_create-realm}','create-realm','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,NULL),('353838f2-9618-4cd3-9c56-3bdf1d2e5307','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_manage-users}','manage-users','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('362d89f1-4de6-42af-bc16-d3ef6facae05','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_manage-identity-providers}','manage-identity-providers','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('3aafac2e-73af-4d53-a599-2dc2854e9eed','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_view-identity-providers}','view-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('3ad08e65-0028-498a-bdf5-460810463508','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_manage-realm}','manage-realm','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('3ae6f5d6-b475-4354-9fd3-1bc911ebbc9e','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_create-client}','create-client','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('3b884bb2-036e-4039-acce-8fcbf1e8edbe','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',NULL,'_organization-user-role-manager','org5','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',NULL),('3c4b9863-edb1-4ce4-baf2-6bacb2a43b83','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-ws-mt','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('3d155595-8318-4d12-9902-5eaed1d98f4d','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_manage-account}','manage-account','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('3d298263-3811-4faa-87a7-f02549d5d58c','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'ws3','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('3d2f2f3d-2eed-4b75-8aad-d8067c610052','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_manage-clients}','manage-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('3e215da0-382b-488d-9b6c-084b00c8dbf7','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_view-users}','view-users','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('3ff8024f-b25c-4d84-b1a1-57f1a62f5f5d','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_view-applications}','view-applications','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('403f22eb-837d-418d-9ae5-a640b6542a5a','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_query-realms}','query-realms','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('407fe76e-fb6c-4baa-a818-b72f20ce8189','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-ws-role-usr','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('4196d6d2-c88a-4827-993b-810f1e7dfb2d','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_create-client}','create-client','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('41999579-9836-4f8a-b2f2-dd8b2b48d61a','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_ws3-admin','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('42dbd305-c14b-4c2f-a9fa-12b89aba97b7','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_manage-consent}','manage-consent','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('439775a0-9e52-4099-8222-7f36d0bc2aca','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_view-clients}','view-clients','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('43ead944-5fc6-4d13-a50c-c44004bf5c76','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_query-groups}','query-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('441f6500-ff6d-43b2-9298-7e339bf53a69','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_view-authorization}','view-authorization','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('451692c3-83de-4b4b-9323-d43bd5e5b0e8','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_query-users}','query-users','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('45e898db-4f86-49c2-bb3d-359302534c17','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_manage-authorization}','manage-authorization','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('468ad400-f12d-46d4-b187-66f4aad8afdd','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_view-users}','view-users','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('46be0cf7-9cf7-49fd-b9b3-00697eb181d2','8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',NULL,'_ws2-admin','org3','8e1aa514-01d1-4d71-b984-1f533b776280',NULL),('46bf3c51-ffa5-410c-a93c-596b7dac3cca','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_view-profile}','view-profile','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('46fdfe03-94e2-436c-a5ae-a4fe9821895a','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_view-consent}','view-consent','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('47e859cd-8eb3-4031-8b2c-92b942aca2a0','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_view-profile}','view-profile','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('490f28c4-8554-41e8-bf71-eea6b780f2f5','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_manage-clients}','manage-clients','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('4a958966-45bd-45fd-b287-a242bc3f2b07','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-ws-role-mt','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('4aaf7b45-70f0-497a-9d3b-a783216266f1','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-usage','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('4ce87aca-ec39-43e7-89d9-8f7dbd1ccfd9','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_manage-realm}','manage-realm','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('4d32791f-a5a6-46ed-a798-efedecc8a752','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_view-realm}','view-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('4d49a00b-399a-4366-b38f-d17d87715e74','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_query-users}','query-users','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('4dce2b36-3a76-440b-914d-8f567abb2cb0','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',NULL,'_ws3-admin','org2','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',NULL),('4de64791-292b-41da-ba14-30f6b63b0478','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_view-users}','view-users','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('4de73f5b-566a-425d-82f0-babfa2ee56a3','576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',NULL,'_organization-user-role-manager','org4','576651bb-ff24-48e9-bfa7-4285938bf1da',NULL),('4f2929cc-7c6b-441c-920d-c5fee61543aa','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_ws2-admin','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('5051643f-2500-472d-977a-839a1d2b88ca','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_view-profile}','view-profile','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('505eac82-16d0-4073-bce0-c458a3b3b329','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_view-clients}','view-clients','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('50a9b38c-e47a-4d57-b07a-2dac0402eab0','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_view-groups}','view-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('50e2ef11-f7fc-4c90-9350-34af76f3bfb0','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_view-users}','view-users','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('510080b5-c271-413c-bf79-0c361cf775cb','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_create-client}','create-client','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','org3',_binary '\0','${role_default-roles}','default-roles-org3','org3',NULL,NULL),('52dc36d5-7eca-4ba9-87be-c07f7773107f','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_manage-events}','manage-events','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('5467189f-5661-4450-bcb2-00cdf553e36a','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_query-realms}','query-realms','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('54966569-c013-48bb-bd19-1ea8bb7a936a','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',NULL,'_organization-user-manager','org2','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',NULL),('55bfd3e9-dc9e-489c-bb02-ef749e908efc','org4',_binary '\0','${role_offline-access}','offline_access','org4',NULL,NULL),('563acf43-45df-450f-8842-58cecd2550ba','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',NULL,'_organization-manager','org5','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',NULL),('5723ecbc-6089-4742-93af-415f650617d2','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_query-realms}','query-realms','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('57b34279-f11d-4f33-b95d-aeea7f69df20','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_manage-users}','manage-users','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('57eda79f-4668-471a-94dc-d6b75e2ffe5e','org3',_binary '\0','${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('5a66ea31-2b7a-4ac1-86cb-479d3218271f','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_view-users}','view-users','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('5b23ea0f-0607-4aeb-86a8-f7581c63de92','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-usr-mt','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('5b57b239-eb7f-41a2-9cdb-706b813438a0','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-upd','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('5baa1626-6bca-45a7-8bda-7bfefe8a9298','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',NULL,'_organization-user-manager','org5','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',NULL),('5c29fa37-a295-496c-9f6c-cef7b731c591','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_query-users}','query-users','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('5c35cbad-2254-43eb-a8ce-0bb868b69b68','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_manage-users}','manage-users','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('5c5edd41-e2e7-4d49-9788-28e8840cf305','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-ws-mt','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('5c8cceeb-482b-423a-921f-1fb744bf2496','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_view-clients}','view-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('5cae315f-957c-41d5-9155-9bb7b955bb98','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'ws1','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('5cc83723-b1eb-49ca-aadc-d48465ddff86','498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',NULL,'_ws2-admin','org1','498fc338-cab0-4248-86e6-bc4321b81af5',NULL),('5e3f7017-7375-4ddb-a9f5-d6f6c4e61518','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_view-authorization}','view-authorization','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('5e6ffd03-16a8-42c0-ab46-8461123b09c8','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-ws-role-usr','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('5ed2dc21-5790-4133-b9f5-992c215b49f5','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_query-users}','query-users','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('5f41d84a-dd99-45bc-b8d2-c56d5e363430','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_manage-clients}','manage-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('5fe9a874-e775-4af5-bb2d-7c69dd763073','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_view-consent}','view-consent','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('60001950-cadb-4c9f-95ce-f506115efb09','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_view-events}','view-events','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('600dea73-77e5-41e8-811b-e590070165ac','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_query-realms}','query-realms','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('6028beb9-26c1-4707-98a5-2cd8419b903a','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_query-users}','query-users','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('60354328-d8aa-41fa-bbe6-1840e5ef3be0','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_manage-clients}','manage-clients','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('6117818b-e94a-427a-9565-53f6e7ce9b1c','org5',_binary '\0','${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('6201d062-3db5-486f-b5bd-e48f9f0f2333','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_view-applications}','view-applications','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('623385aa-0230-4564-bcc4-91fecad85ddf','576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',NULL,'_organization-user-manager','org4','576651bb-ff24-48e9-bfa7-4285938bf1da',NULL),('62444f8d-fa4f-4957-8ec8-e81417ac5b73','8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',NULL,'_ws1-admin','org3','8e1aa514-01d1-4d71-b984-1f533b776280',NULL),('62befced-52d7-4cef-a00d-e8916bc0d68a','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',NULL,'_ws1-admin','org2','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',NULL),('63c5fcf9-9b8c-4494-ad77-5f24205c272f','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_view-authorization}','view-authorization','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('63c64f60-4a65-4191-89de-833e05fea486','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_manage-consent}','manage-consent','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('645b3620-799f-4551-a4e1-dc0ee50f8221','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_view-events}','view-events','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('6468e080-697a-4707-896b-65458c2b98e8','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0','${role_default-roles}','default-roles-master','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,NULL),('64ca0850-86c8-4193-9de5-113b141f8c6b','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_create-client}','create-client','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('676cde1e-5817-4d19-a6ac-22056ece2963','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-usage','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('67eb763b-b175-4abf-a97b-65df85e20c15','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_manage-events}','manage-events','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('694ceae1-18dc-49db-8816-405166110947','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'ws2','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('69c0bdcc-a663-4eec-b71b-033f8351c5a9','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_manage-account}','manage-account','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('69c5ca3d-f123-4862-8173-6b68566c6dbe','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_manage-account}','manage-account','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('6a31ad4a-6fb9-4d33-8bdc-7096a1ee0627','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_manage-account}','manage-account','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('6a8567cd-7f05-4713-8515-47cefce7bd04','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_view-identity-providers}','view-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('6aad9a0d-d85d-4a49-8067-70bb3909fdfc','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_ws2-admin','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('6dab20a9-5026-4995-9b18-df607596f36f','8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',NULL,'_organization-manager','org3','8e1aa514-01d1-4d71-b984-1f533b776280',NULL),('6e295f77-1a77-43c1-994f-9eb81796f312','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_manage-realm}','manage-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('6e96b9ec-3595-433f-83c1-7140a70afd61','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_query-clients}','query-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('6f1c3949-18e2-4ca5-a483-8adeb64568de','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_view-realm}','view-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('6fb883c5-76c6-4b3c-8edb-ab59dba44fec','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0','${role_uma_authorization}','uma_authorization','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,NULL),('709b7dc1-592b-4bc3-93bb-2731cf41ae72','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_manage-account-links}','manage-account-links','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('7163527e-588a-4cc1-96a4-50827e83c5c2','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-ws-mt','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('7246ee1c-d455-4efb-8975-d6d059e6da0c','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_view-events}','view-events','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_realm-admin}','realm-admin','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('75522ab6-c1d0-4ac1-9947-e00074446a06','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_manage-identity-providers}','manage-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('770f32c1-24d6-4198-a608-56157a697086','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_view-events}','view-events','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','org1',_binary '\0','${role_default-roles}','default-roles-org1','org1',NULL,NULL),('7796b73c-1df5-43a9-97ab-24da090db75f','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_ws2-admin','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('77a06631-1e7f-4e45-9328-6619064516ac','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-role-usr','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('77e5467f-5446-43c9-9628-1dfcf45d6186','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',NULL,'_organization-manager','org2','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',NULL),('783bf7ed-1c5c-4a23-9ec6-82ef032f4bb7','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_manage-users}','manage-users','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('78ad58cd-4472-43c3-88d4-7ba86a635a2f','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_manage-events}','manage-events','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('79cb074f-c349-4e26-98b3-7662b8423985','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_view-identity-providers}','view-identity-providers','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('7b387bbe-6625-4fe0-8401-daea7161165f','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_impersonation}','impersonation','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('7b3eb99d-572e-4964-867d-fe6bb30d4062','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_query-groups}','query-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('7b43b474-fb2f-436f-ba52-7a6fbb1a899b','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_view-realm}','view-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('7b462ab2-8704-437a-b147-7d442149f85f','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-usage','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('7b6d694a-a0b1-4660-9338-1d5cb4ce99dd','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_view-identity-providers}','view-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('7c08b9f2-77f6-4448-845b-4fab9c56f2a9','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'ws1','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('7cac9019-3871-412a-80f0-bce226dcf36e','7ccf992d-cf94-4cca-a1f1-ad30db657e92',_binary '','${role_read-token}','read-token','org2','7ccf992d-cf94-4cca-a1f1-ad30db657e92',NULL),('7d71b1b9-a3ed-4c98-9bcd-22983a05e1ef','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_view-groups}','view-groups','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('7d7411ef-7d70-4b64-b21b-9ef9783c69c5','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'ws1','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('7d796cef-ccce-48dc-8647-9c73c08954b3','org1',_binary '\0','${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('7d79ab17-2845-4122-829b-da0fb949a6d3','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_manage-authorization}','manage-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('7de2e517-be2f-4af5-9f95-1d6afcd02199','org2',_binary '\0','${role_default-roles}','default-roles-org2','org2',NULL,NULL),('7e0a8edb-4556-44fd-8ea3-787780381c82','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'ws3','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('7f168260-7d4a-477b-bbe0-ab00dc187ba6','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_manage-identity-providers}','manage-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('7f5f09a9-e9a6-4ce3-8f95-048e9d3b9000','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_view-realm}','view-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('7fdfb7ec-9d6c-4067-a44a-70dbc2863a42','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',NULL,'_ws3-admin','org5','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',NULL),('81adbe36-01bb-4faa-8707-c218afbbabb5','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_view-clients}','view-clients','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('8286bb88-c166-4725-8bb7-6da70ffc1098','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_create-client}','create-client','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('83a09f7a-ad4d-462b-a346-caa0be97fdcd','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_view-realm}','view-realm','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('84934eea-644e-43f0-9dec-9bfcea4b88ca','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_view-realm}','view-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('84bc282a-5f85-4feb-bb98-eb7608b1473b','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_manage-events}','manage-events','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('84ff1201-e008-4609-9e6e-14f9e1402474','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_view-users}','view-users','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('8638f082-d142-4ddc-a616-f946fc3e25a8','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_view-authorization}','view-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('867218d6-f612-4f0f-a840-ab56238e15bf','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_manage-identity-providers}','manage-identity-providers','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('86da9323-f6e9-4e45-94c5-e9f14e9add86','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_view-users}','view-users','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('88054132-1593-4402-a348-d2cbced7b3a2','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_realm-admin}','realm-admin','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('88b8b33a-6508-43bd-99fb-3831e230a1f0','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_view-users}','view-users','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('89aa3f6f-c3ab-4d92-a0ba-e091efeec11f','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-ws-role-mt','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('89eba396-4deb-4773-b365-15363d1c3e4e','org4',_binary '\0','${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('8ab94194-1923-41fc-aa33-7311ea52ff27','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_view-authorization}','view-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('8ad61991-7d65-49f7-b483-7eb7d75e97a4','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_query-groups}','query-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('8ae767cb-ce03-47e1-a774-6139416f4f78','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_impersonation}','impersonation','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('8b68ee81-8d49-4d34-9df6-42bccc3d23ae','org2',_binary '\0','${role_offline-access}','offline_access','org2',NULL,NULL),('8c7977ef-5e50-495a-9c97-6dd313b5c9fd','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_query-realms}','query-realms','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('8ced8351-26c9-4c11-a13e-d89ee1ac62a1','6b499240-3de7-435a-818a-ee5874ceae98',_binary '','${role_read-token}','read-token','org5','6b499240-3de7-435a-818a-ee5874ceae98',NULL),('8df90829-cb39-4110-8656-0d6b5c32b0bf','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_view-events}','view-events','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('8f68675d-9c49-4e4b-a0a2-f9830b3c0d3f','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_query-clients}','query-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('912895cc-78b2-44e7-8c54-647c667bb747','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_view-authorization}','view-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('91d4988f-97e3-4bb7-bc63-c0cc1fe34f8b','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-role-usr','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('91fb95e2-7d50-4bcb-953c-43dca7126330','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_view-events}','view-events','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('935203ce-86a2-466f-a946-d292cc7a7313','498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',NULL,'_ws3-admin','org1','498fc338-cab0-4248-86e6-bc4321b81af5',NULL),('94aa7e81-2814-456d-ab87-a4f64345e23b','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-ws-role-usr','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('950ad99b-32e2-4257-b0ec-19c6c820bd51','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'ws3','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('95a9a9ba-0584-4f47-adff-521019e5b671','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_ws3-admin','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('95dc691c-6cbd-43cc-a393-e857f3dfd7f6','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_view-clients}','view-clients','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('98c245da-d0a5-4193-99ec-d9078261ba28','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-ws-mt','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('98f194b4-5e80-4f0a-a823-034710584e6a','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_view-profile}','view-profile','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('994e6757-2222-4daa-9bb3-6b2322c62765','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_manage-identity-providers}','manage-identity-providers','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('99a3f609-6874-4fe6-8ec2-aa5409b7afaf','8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',NULL,'_organization-user-role-manager','org3','8e1aa514-01d1-4d71-b984-1f533b776280',NULL),('9a4e723a-804a-43fb-9b11-053a90fd2a07','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_manage-identity-providers}','manage-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('9a5e2496-37e9-4730-89ab-2777ab963a24','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_query-realms}','query-realms','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('9a79594f-25f8-494c-9f22-97d5b66edacf','org5',_binary '\0','${role_default-roles}','default-roles-org5','org5',NULL,NULL),('9a9d5fca-6755-4a61-9adf-6d1cd90490e5','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-usage','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('9b1c1d96-a33d-4946-8fa4-b27441674097','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_view-consent}','view-consent','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('9b433460-3e63-436c-8347-f71ad7a5109c','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_query-clients}','query-clients','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('9c69a647-9935-4e5b-b68b-a3cd4f4d9968','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_manage-users}','manage-users','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('9c8510c8-d5ec-4b47-90b0-be0d7eb29fcc','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_manage-identity-providers}','manage-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('9ce9206a-3865-4323-91ea-4f763199eeeb','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_view-identity-providers}','view-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('9e8a751e-989b-40a2-a24d-6d7da15db3c5','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_view-realm}','view-realm','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('9f2f3cc9-3d9f-4b3b-84ac-fd51e4fc14db','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-ws-role-usr','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('9f4aae6a-fa2f-4b4e-a4ac-ef7ce1741b3a','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_manage-events}','manage-events','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('a07848e4-1169-4bc5-8715-4378e63bbf8a','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-role-usr','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('a0a17f9b-ddd5-4933-a8c0-170875044bf4','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_manage-realm}','manage-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('a0ef164d-68d3-409a-a712-7dbbbf917ab3','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_create-client}','create-client','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('a0fbba49-a06a-4271-a936-0665f51337bf','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',_binary '',NULL,'_ws2-admin','org5','2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1',NULL),('a15324ce-44ec-4878-9aaf-486f7d1e2461','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'ws2','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('a1a1a34d-4c01-44cb-ab68-c693be6daec1','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_og-upd','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('a2ede2d6-5c67-4ac5-b531-f9af1969e7d9','59d69c3f-3f78-44c0-9e4d-7be81cb108b7',_binary '','${role_read-token}','read-token','a8877546-78d2-4601-8f66-d697f8ccfc92','59d69c3f-3f78-44c0-9e4d-7be81cb108b7',NULL),('a35cfc8a-534a-451b-a603-d4daac5a725a','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_manage-events}','manage-events','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('a4207752-be71-4c0c-877e-25a5559f66fb','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_ws1-admin','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('a6af2db4-76e0-4c0a-945f-f2e29fab4257','498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',NULL,'_organization-user-manager','org1','498fc338-cab0-4248-86e6-bc4321b81af5',NULL),('a6b70c70-da73-4f6a-b801-d81d02241e0b','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_query-clients}','query-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('a7cc3f57-6cd2-4206-99ad-72e3befc71b5','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_view-profile}','view-profile','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('a81e442b-f260-44c7-9605-8fbd948ce8a1','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_create-client}','create-client','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('a84c1d5c-a414-4197-8b42-10ce56aea450','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_view-groups}','view-groups','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('a87a2845-d06c-4379-9be5-39f6fa35b5bc','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_ws1-admin','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('aba93f08-21e9-48dd-8d1b-908af9847081','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'_ws1-admin','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('ac5ea540-f1cb-4466-a773-2a8e3471bf1e','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_ws1-admin','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('ac8401c8-c574-4466-9cb5-206106e89e5a','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_manage-authorization}','manage-authorization','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('ac8436ca-2df7-44d5-8ca2-d9ecae834961','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_manage-clients}','manage-clients','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('ade84f9c-dcad-4e90-8c74-e1242250f845','576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',NULL,'_ws3-admin','org4','576651bb-ff24-48e9-bfa7-4285938bf1da',NULL),('af2e8e82-8248-4aa0-8b86-e2c9cc4ae102','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-usage','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('af79132d-b2ce-4344-a014-3834b9d241f9','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_impersonation}','impersonation','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('b05629d2-1eff-4f6c-99ef-62e0b941e258','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_query-groups}','query-groups','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('b0590f62-6f91-4171-a557-78798d4212a3','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_view-applications}','view-applications','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',NULL,'_organization-manager','org4','576651bb-ff24-48e9-bfa7-4285938bf1da',NULL),('b0cbd130-db6a-4488-9c20-f9b121b17430','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_manage-events}','manage-events','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('b0cd6b63-56b3-41a2-81af-8abcbe3ff06b','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_manage-account-links}','manage-account-links','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('b1efd055-0ceb-4d72-84ab-27e669b9cd46','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_query-realms}','query-realms','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('b2da97f1-55aa-44d6-b555-a6cd97792763','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0','${role_admin}','admin','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,NULL),('b3250121-96bd-4b16-84d3-69e7799f6b3f','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_query-groups}','query-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('b39861da-77f6-4542-98df-0c9645cda961','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_view-applications}','view-applications','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('b64c85af-29bd-4ebc-a4dc-a00a7d918629','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_manage-clients}','manage-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('b72d0333-7283-45fd-9ff5-68d3e4793cdd','org5',_binary '\0','${role_offline-access}','offline_access','org5',NULL,NULL),('b7e9267f-a442-49d9-a8c7-91988346aedd','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_manage-consent}','manage-consent','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('ba5aa254-225e-4195-a6e4-7a5ca46e3006','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_manage-clients}','manage-clients','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('ba857b63-f52f-4fde-8746-653b72f38628','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_query-clients}','query-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('bcb538bc-29c9-494d-9d8f-7b1a18252fa6','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_delete-account}','delete-account','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('bd6937a8-5d22-4db9-9cfd-b8e3f8e5b390','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_query-groups}','query-groups','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('bd71a142-3ea3-4aa0-bc94-0997777be7fc','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_ws2-admin','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('be700476-27f7-4663-a566-bc9d90f40e15','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_manage-realm}','manage-realm','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('befbeecf-f6a9-408c-97bd-f0097755f08e','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_view-events}','view-events','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('bfafcdc2-8e81-423c-8e2e-009dfd45340d','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_query-groups}','query-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('bfbf94e9-8f06-4b71-b40e-635a30fd1952','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_query-users}','query-users','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('c0a56635-54ac-40f6-b4e7-fa2d76e8079a','8e1aa514-01d1-4d71-b984-1f533b776280',_binary '',NULL,'_organization-user-manager','org3','8e1aa514-01d1-4d71-b984-1f533b776280',NULL),('c0b9f084-497d-45a5-8b02-b30a4f880e01','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'ws3','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('c0e3b2ca-644e-4818-aa2a-fda7198b7b5b','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_query-groups}','query-groups','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('c13dfe7d-995c-4b4d-a517-0157dca12f91','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_query-groups}','query-groups','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('c2210161-0d27-4bdb-a9ad-740ddd7bdc7d','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_manage-authorization}','manage-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('c22fde5d-66e0-4658-9431-270a47329a92','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_manage-consent}','manage-consent','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('c2d958dc-af70-46c7-b638-188b7e05bcfd','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_view-clients}','view-clients','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('c4445745-87f7-47e8-9a02-5562ab03881a','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-own-mt','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('c562ee56-e12b-4294-aa8a-5889729450e0','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0','${role_offline-access}','offline_access','a8877546-78d2-4601-8f66-d697f8ccfc92',NULL,NULL),('c6d638ab-29ed-41b7-bbe2-75fb84ab3621','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_query-users}','query-users','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('c76d0f7f-95b0-457f-8e5f-6eb3220eed6a','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_manage-account}','manage-account','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('c862080d-d95c-400b-b94b-2e77b52a4832','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_query-clients}','query-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('ca1d53e6-0573-4dc1-bf91-d64be8ad6712','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_impersonation}','impersonation','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('cacb980f-9dbc-432a-b9e6-d9190db7f831','e84e1e63-e0fe-4a05-ba92-a52078fe8291',_binary '',NULL,'ws2','org4','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('cae76351-b3fd-4f4d-a8f9-a38863aa8f5a','org1',_binary '\0','${role_offline-access}','offline_access','org1',NULL,NULL),('cdbad156-c93a-47a2-8800-ccfb88271758','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_manage-users}','manage-users','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('ce37ea09-1ee7-498d-a9de-af50a4018032','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_view-clients}','view-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('ce5dc6d1-4868-4d59-8aec-154ed79a88fd','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_manage-users}','manage-users','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('cee25ba5-4534-4f29-ad47-bda3602a22d1','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_manage-authorization}','manage-authorization','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('cee5241b-12de-456a-abe3-7f9a0d250637','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_realm-admin}','realm-admin','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('cef7765e-29e4-46ed-b7b2-c8d33815aab3','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_manage-realm}','manage-realm','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('cf46c1be-10bb-44de-9a8f-cc7c6fe1d0fd','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_view-identity-providers}','view-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('d091814e-3d69-4115-bd8f-890b2b8f9f38','2faaf180-4c53-45f1-9f28-4b99c13c31ef',_binary '','${role_read-token}','read-token','org1','2faaf180-4c53-45f1-9f28-4b99c13c31ef',NULL),('d12073f7-fbef-45f6-a2d1-cbf6c9ec7fc9','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_view-realm}','view-realm','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('d2ab1109-5b97-442e-a214-f9d347028bd9','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_impersonation}','impersonation','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('d415ab46-523a-454d-b66e-879e854b3280','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_manage-authorization}','manage-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('d58c0547-9edc-43a0-90a8-6ef23f870730','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_ws2-admin','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('d70e9d95-a517-4e4a-9e5e-e7170659b977','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_query-users}','query-users','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('da6cf4d1-fd1d-423a-bb74-7d4c1eba2bab','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_create-client}','create-client','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('db03e061-14cc-49f6-aa48-2ce790b07d8d','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_query-realms}','query-realms','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('dc189cbd-7228-4357-a19e-ffbfa6d00b3a','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_query-realms}','query-realms','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('dc30e9ae-4199-40f7-8152-67871ee51dc0','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_view-events}','view-events','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('dc62d5c8-fdf2-46b5-b73c-cd097c142cd7','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_query-clients}','query-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('dd1ec34a-e672-4eac-917e-610f672f133d','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',_binary '',NULL,'_organization-user-role-manager','org2','60799ffb-f3e9-4588-9f1f-08775cc0ee2d',NULL),('dd4230e0-ae9f-4e77-bc54-2ec1f08c1a7f','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'ws1','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('dd538794-2c5c-4518-b8e3-357619732e0e','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_view-profile}','view-profile','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('de087204-07f9-4e01-adde-0e8929220284','f00d57fe-94e2-4f9d-8ff3-3fd12b840258',_binary '','${role_read-token}','read-token','org3','f00d57fe-94e2-4f9d-8ff3-3fd12b840258',NULL),('de140f14-8532-4e58-a061-478f871dbebd','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',_binary '','${role_manage-account-links}','manage-account-links','org4','9112c067-7289-4b17-b9dc-6a3d6f7e80a7',NULL),('df59ead3-c445-49b9-9759-fd211e76f73d','90915a43-585e-46cc-b9d0-f3ad91c639e8',_binary '','${role_view-groups}','view-groups','org3','90915a43-585e-46cc-b9d0-f3ad91c639e8',NULL),('dfaa5343-5c73-4c75-8cac-d228a2f69613','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'_og-upd','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('e03611ca-8e91-48ac-86a9-cf8b79f1ed22','7a336edd-031b-4bf3-b3e4-11d97c9f279f',_binary '','${role_view-identity-providers}','view-identity-providers','a8877546-78d2-4601-8f66-d697f8ccfc92','7a336edd-031b-4bf3-b3e4-11d97c9f279f',NULL),('e0c1bfe3-a93e-425b-b2db-c2fc95e0c7c2','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-usr-mt','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('e0c81a2f-cc84-497c-bceb-b29c5efe5fd3','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_view-groups}','view-groups','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('e13cdf67-108f-4d6a-8697-1195734551e8','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_manage-events}','manage-events','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('e1636d70-44a3-463b-a20b-5f012a0c39bb','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_view-clients}','view-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('e17ad94a-fee9-4ee6-9bfe-2a12076aa567','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_manage-identity-providers}','manage-identity-providers','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('e27510a3-6ba2-415c-aa07-080ef9828ede','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_query-realms}','query-realms','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('e2de53bc-34cf-4670-8561-1386c8bd5ffd','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'_og-usr-mt','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('e41eb562-3a52-4d1a-941d-0670856e4d74','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_og-own-mt','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('e517041c-436d-4037-b7b8-5f7c9b0ed979','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_query-users}','query-users','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_realm-admin}','realm-admin','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('e5483f14-5855-4976-bfac-8fecab1f610c','498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',NULL,'_organization-manager','org1','498fc338-cab0-4248-86e6-bc4321b81af5',NULL),('e58549db-5f25-47e2-a9bf-5200565a9536','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_query-clients}','query-clients','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('e64e0e6e-45a7-4925-8e5d-2ab99c8c9264','938bd1fc-040b-4721-b954-063f4fa33739',_binary '',NULL,'_ws3-admin','org3','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('e68f4996-8017-4c04-b4f7-e02055c4ab4a','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',_binary '','${role_view-identity-providers}','view-identity-providers','org3','dee8bb53-aeda-49c9-b1e1-6b6369f92a01',NULL),('e6c2e5d4-7418-448b-a0b1-f617d85f069d','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_manage-events}','manage-events','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('e73102b4-fc0d-45c9-b8c0-1c5be067d832','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-ws-role-mt','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('e7359ac9-3fce-4bb7-8c4c-33b1ff5ee505','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_manage-realm}','manage-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL),('e7c7bc26-f8b7-406c-b044-adf6a10d0eee','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_view-clients}','view-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('ea57c92a-88f3-45a4-bb64-250302f62efd','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_manage-users}','manage-users','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('ea8d0a21-1170-4154-82c6-45798083817c','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_ws1-admin','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('eaa06f97-5c8d-4977-935c-433485a6a69c','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_manage-authorization}','manage-authorization','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('eb60a970-16dd-4626-acca-bbe85629929f','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_query-users}','query-users','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('ebb9c273-6181-4af3-a58c-7630769fdffb','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',_binary '','${role_manage-consent}','manage-consent','org2','84793b3e-0e65-4cba-b0eb-8dd33eeeef64',NULL),('ebdf628f-b58b-45c4-ad3e-55ed1dafe24b','576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',NULL,'_ws2-admin','org4','576651bb-ff24-48e9-bfa7-4285938bf1da',NULL),('ecd19fac-a5a1-4031-8adf-f058aa75ad93','c7558bbf-2654-4e6a-ae73-f65023330268',_binary '','${role_manage-realm}','manage-realm','a8877546-78d2-4601-8f66-d697f8ccfc92','c7558bbf-2654-4e6a-ae73-f65023330268',NULL),('efa8e053-bb47-48a1-b425-babdd9fa45af','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_manage-authorization}','manage-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('efc7c882-0fc6-4a76-ba75-13992ab94b1e','da53c749-9153-4bc2-8a6c-a5439f78164f',_binary '','${role_delete-account}','delete-account','org1','da53c749-9153-4bc2-8a6c-a5439f78164f',NULL),('f11646af-28cc-4e20-8238-1059d9c56d09','616c44d6-74e5-43f0-a01b-65d99c137f45',_binary '','${role_manage-account}','manage-account','org5','616c44d6-74e5-43f0-a01b-65d99c137f45',NULL),('f2173286-a53f-4ba4-9be1-df279c0daf2e','53aaf740-7deb-46f9-9b83-ae2827f90224',_binary '','${role_view-events}','view-events','org4','53aaf740-7deb-46f9-9b83-ae2827f90224',NULL),('f25e8587-db5d-4404-bacf-33f8380876a4','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',_binary '',NULL,'_og-usr-mt','org2','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('f38cc6dc-87c2-457d-9395-c9ac962b906c','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',_binary '',NULL,'ws1','org1','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('f3dd8816-5016-4453-896e-00bb9141e2e3','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',_binary '','${role_manage-clients}','manage-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',NULL),('f4a110cc-a4cb-4f31-8988-c0e509ac483c','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_view-authorization}','view-authorization','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('f58fae44-5e81-480e-9527-0a6e06968d26','498fc338-cab0-4248-86e6-bc4321b81af5',_binary '',NULL,'_organization-user-role-manager','org1','498fc338-cab0-4248-86e6-bc4321b81af5',NULL),('f649ad4b-45fc-4631-b0ac-dd34b60fd513','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_create-client}','create-client','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('f718c202-ef37-49aa-9b4d-cbdee45db2c4','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_view-users}','view-users','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('f7be4205-5cd6-458b-8cbc-ec48f6545c5c','82fa0823-5eec-43cb-bd64-332723030562',_binary '','${role_manage-clients}','manage-clients','org5','82fa0823-5eec-43cb-bd64-332723030562',NULL),('f9908103-a92e-411e-87c1-809767c73e4a','b132e832-a5b3-4182-8fb8-b565ad083bb1',_binary '','${role_manage-users}','manage-users','org1','b132e832-a5b3-4182-8fb8-b565ad083bb1',NULL),('f9e4e963-6e40-4842-b6ea-c4bfcc4e8cc3','54a7148b-b941-4113-9ce2-c0521889afc8',_binary '','${role_view-applications}','view-applications','a8877546-78d2-4601-8f66-d697f8ccfc92','54a7148b-b941-4113-9ce2-c0521889afc8',NULL),('fa49cfe3-5887-49d6-b6aa-cc2c25922df0','757fc947-d67d-4599-ba72-e818acf2dfc1',_binary '','${role_query-users}','query-users','a8877546-78d2-4601-8f66-d697f8ccfc92','757fc947-d67d-4599-ba72-e818acf2dfc1',NULL),('fb4e200e-5ed5-44fb-8db9-4f7a242efeb0','c2dd697e-cba2-4eea-8cbf-f415be94f49f',_binary '',NULL,'ws2','org5','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('fc7b04df-9bfd-4fa3-bce1-52b08c560a16','23e85250-5e60-44bf-8e59-318f8b913cfb',_binary '','${role_query-clients}','query-clients','org2','23e85250-5e60-44bf-8e59-318f8b913cfb',NULL),('fdab3c8f-5944-409f-a311-4c49d4672888','576651bb-ff24-48e9-bfa7-4285938bf1da',_binary '',NULL,'_ws1-admin','org4','576651bb-ff24-48e9-bfa7-4285938bf1da',NULL),('fe8c3769-998d-4970-bdec-732cf15ad202','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',_binary '','${role_manage-clients}','manage-clients','a8877546-78d2-4601-8f66-d697f8ccfc92','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',NULL),('ffe3546d-707b-44c9-9440-576fe88927e9','31f83365-eec7-46f2-9b8b-f03c9ca86cef',_binary '','${role_manage-events}','manage-events','a8877546-78d2-4601-8f66-d697f8ccfc92','31f83365-eec7-46f2-9b8b-f03c9ca86cef',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('whz8y','20.0.5',1700534153);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0156d749-82d8-43a5-b870-d9c90fcf5fe8','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('02414d82-96b3-4465-8048-6572937e305e','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'b7ff58ee-7277-4b7d-8410-232388a2586b'),('024d3015-31fb-4731-aae0-3ef03010adf0','address','openid-connect','oidc-address-mapper',NULL,'54408590-de3c-42af-ae1c-1e302e69b0ec'),('0638b9c2-782f-4a35-9c97-78e668e92343','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','a8f8eae8-605c-4796-8598-dd02e8ff03f3',NULL),('07c71a80-a7c3-42ae-a8eb-f78d1c56b2e1','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'0ebd738b-ff8e-417a-ae0a-a8480513e50e'),('085e6148-5be9-4cb4-a564-9739ff691f1f','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('088df8e8-f275-40c6-901f-a80e595841ab','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'ec6ffefb-272f-41ed-bfd8-73ca499a94c5'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ff8351da-6cf2-4d5c-b5e1-b0ab712fc283'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'f6d1a25c-296c-427e-be91-2e8f52e18067'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('0e8626c7-eaf8-476b-9184-610f0e648896','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('0fc5ce17-3e4a-47d0-9ec6-d19cfab4add2','full name','openid-connect','oidc-full-name-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('11a459a0-f334-4574-8968-192353459c76','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('14c8e87d-7519-4b10-8969-cdae45833e35','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'687cfb52-cf70-422f-b7cc-ac0a45dfdd82'),('155d7d77-40ea-4a34-941a-b22c398630f6','locale','openid-connect','oidc-usermodel-attribute-mapper','952f12d8-2acf-4c3e-bcc2-1b7be91dd83d',NULL),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','address','openid-connect','oidc-address-mapper',NULL,'4c52212f-f10e-4388-9959-18e5adc977b9'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('19520dcc-17de-4276-b52d-2cee6b048fa0','audience resolve','openid-connect','oidc-audience-resolve-mapper','9afada1b-e972-45be-b9bf-86b4eb758408',NULL),('1bf99d63-37c5-4887-94e7-204eb99cb7e2','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'5f2eda65-04ac-427d-b470-a04b68000524'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'5c9ef9d5-84b8-424d-b011-6a2a1393b236'),('1e59a732-d07d-4755-85f8-0d477c37913f','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'b7ff58ee-7277-4b7d-8410-232388a2586b'),('20d76b7b-5ff3-4d09-8ed1-e450a1aa6180','audience resolve','openid-connect','oidc-audience-resolve-mapper','d03f4768-32f0-44ae-aac8-e22bc7213192',NULL),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','a8f8eae8-605c-4796-8598-dd02e8ff03f3',NULL),('21c0b055-e275-4042-9052-cbc21031cc24','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('22098354-e312-410f-b2c7-4366ff644ad2','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'174436e7-af29-4a38-a37a-ef53e148d2b0'),('25331e21-07e9-43c5-a4b6-c312c06ec719','role list','saml','saml-role-list-mapper',NULL,'6cdb1fc9-960a-4bc7-b40f-10d4150bd759'),('280c2507-10af-40b6-a11e-38f70c472cb8','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('2846dae9-2842-4bca-8e1d-95f63ba46923','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('2939db0a-7345-463a-b2cf-74e0803ee59d','address','openid-connect','oidc-address-mapper',NULL,'04764dab-1f0f-4c51-9dbe-b45ed3c41708'),('298591b7-421e-4d37-bd3d-e4fdc563b692','acr loa level','openid-connect','oidc-acr-mapper',NULL,'17cbc0a3-9bb4-47bb-8e19-329b34bdfa9c'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','address','openid-connect','oidc-address-mapper',NULL,'e5f2d392-4924-4785-b180-93e18ef56d38'),('2b9dc598-87f6-4f50-945b-35df3f94504c','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'7171466e-8552-4002-91bc-ddb718c7fcf2'),('2f8c42da-4676-4cf8-8906-beb016861ecc','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'44e9c652-b923-4fbf-88eb-7332a1996218'),('310aec7c-dffb-4251-a676-443e70eefb3e','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('31f82a64-c67b-4faa-8229-a029a353343a','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','locale','openid-connect','oidc-usermodel-attribute-mapper','f0d24cf3-6681-43f9-a774-b5b0f152c960',NULL),('35b42d99-8797-4a81-9658-61a0b195157c','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('35f7ed3a-f23d-4254-8f84-5cb215c56091','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6d255c8d-b841-45bb-96db-c64cc243f1a4'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('38ce174a-254e-4340-ab71-9df2304b2821','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('3aa4c87a-ee97-4752-8f06-69be78743e39','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'f1521e13-3949-4dc3-8c63-42225e60cfae'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'43f16c9f-5725-4ad5-81bd-7e470ffb1d50'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('3c55726b-aede-48f0-a899-45f79f5d0bde','locale','openid-connect','oidc-usermodel-attribute-mapper','a0fc511d-0774-4443-9eb9-8e0f9ff4834d',NULL),('3cacdf7c-6de0-4508-8e96-6943f28e1a46','acr loa level','openid-connect','oidc-acr-mapper',NULL,'b28c40b9-25f5-4fc5-bcb9-b12127e9c1d4'),('3cda47b8-966a-4b79-bb02-bcfd17a994df','acr loa level','openid-connect','oidc-acr-mapper',NULL,'2e6f4d09-2ffa-4b2f-bea7-83430d1b4300'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('413d361a-0fbf-4d37-a19c-9788a2c02f2d','full name','openid-connect','oidc-full-name-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('426d06d7-c87c-4716-be55-719554f17779','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('430929a2-e78d-47eb-99b6-aea24bf6346a','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('43b96886-512f-4672-915f-34f8cc750b54','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','938bd1fc-040b-4721-b954-063f4fa33739',NULL),('45bdbacc-0578-46bf-b9c5-31070951b802','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'43f16c9f-5725-4ad5-81bd-7e470ffb1d50'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('4bb25443-dfd2-4f6d-8e44-24faa6716d7a','audience resolve','openid-connect','oidc-audience-resolve-mapper','b8ea01a9-5003-4757-ba31-db1ba938e9e5',NULL),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('4d2136eb-8bd9-4290-bac2-c821cd745545','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'c68e5d0d-3495-43ed-91f1-a7b2f6a0665c'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cfd62848-1628-41a1-b5bb-de6143bb9fd1'),('4f6ab11d-0764-4ac4-92f2-42f9d0f7ec79','full name','openid-connect','oidc-full-name-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('51aa9170-5f72-4104-989e-ce9f7c74381f','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','locale','openid-connect','oidc-usermodel-attribute-mapper','100c225a-cba1-4fd9-a795-02ba2f13ff0a',NULL),('523dcda7-4cf4-4343-b2fa-87e2a26fc42c','audience resolve','openid-connect','oidc-audience-resolve-mapper','0413273e-892c-44ea-898e-fd49d1201ba1',NULL),('52b07b5d-723d-4f11-bbf5-3c8a35341f4a','acr loa level','openid-connect','oidc-acr-mapper',NULL,'6d77f32c-80d6-4cfb-b519-c43217a81d89'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'687cfb52-cf70-422f-b7cc-ac0a45dfdd82'),('5620d262-3b57-45c2-8a95-256eb2066a70','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('56dde81a-28e9-4f75-b16e-58319efd28c1','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('5967e688-939d-4fa7-a97f-708c21328c5b','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'17140d05-75ae-4874-b264-78c1232b4b92'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('5de0f1cd-eb5c-43ed-9117-d9619c324240','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cfd62848-1628-41a1-b5bb-de6143bb9fd1'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('63294f00-88f5-48dd-8648-85a55c28e6b9','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('65a0daeb-301a-4fe9-8dc0-2b4889c72299','full name','openid-connect','oidc-full-name-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('669ab2a7-42a2-48be-8010-fde525ca3a47','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'f22c3424-be2d-4c40-94ba-cda83dc82abf'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('695063ce-4170-445d-9436-fa84f710d827','locale','openid-connect','oidc-usermodel-attribute-mapper','dc9ed70d-0033-4fd9-88bd-6515687ea7dc',NULL),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('6ac65973-cc8f-47f2-8e34-c578febddb87','audience resolve','openid-connect','oidc-audience-resolve-mapper','af2d5b42-919f-47d6-b8c3-b742f1e68abc',NULL),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','c2dd697e-cba2-4eea-8cbf-f415be94f49f',NULL),('7390334d-52b1-457c-b18e-2d7ec5aaf598','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('73d4c3b8-647c-4085-9139-e9fde5714d94','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('7d03f700-11eb-43e0-8dae-059d76b72fef','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('7e211462-ba2c-4783-a335-4311e5f7ecca','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',NULL),('839722ab-f396-457a-abae-79233bae0fc7','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'f22c3424-be2d-4c40-94ba-cda83dc82abf'),('841fb301-1620-440f-b9e6-b59f32fcd41d','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','e84e1e63-e0fe-4a05-ba92-a52078fe8291',NULL),('848bfceb-10b4-4621-99ec-6639b27109db','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('85732436-8ee6-4ea5-9e73-bf369b519d6b','acr loa level','openid-connect','oidc-acr-mapper',NULL,'fb055ca6-2889-47e6-852e-043b61aa5e34'),('8748adb9-0879-4cc3-9844-b06bb9d79833','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('87ea2a30-c611-4aaf-b88c-85461740e382','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('89038648-6160-4433-8703-8567d4605e60','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'17140d05-75ae-4874-b264-78c1232b4b92'),('8a2732a3-7acb-4ff6-8be6-cb1df687dc7c','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'17140d05-75ae-4874-b264-78c1232b4b92'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'b33d9460-1543-441d-8ab1-d9474673f5a3'),('8c352781-62f9-4bb4-aaf2-60af32a0c49b','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'2ccdf43b-2d02-4b47-b7ee-5176ac564332'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','username','openid-connect','oidc-usermodel-property-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('8cf1042a-ca4c-456c-b2d3-c103cfc48486','role list','saml','saml-role-list-mapper',NULL,'b05e6963-67ad-41f3-b95e-9b8fdd56976f'),('8d0f7dbc-9f9d-4ae2-a4f1-70f607238841','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'44e9c652-b923-4fbf-88eb-7332a1996218'),('8e35c021-f8f8-46cb-948f-227a54c94868','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'2ccdf43b-2d02-4b47-b7ee-5176ac564332'),('8f01f5f7-51c7-4770-849f-59662416661f','email','openid-connect','oidc-usermodel-property-mapper',NULL,'829a488c-718f-4531-a9f6-ab00f53640a4'),('8f94c720-f4ff-4963-88b6-ba1366eecd87','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'e5f98793-02a9-4400-ac0f-c67bab7fefc9'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'259d2b38-9a5e-4952-99bd-e2e13e8b4507'),('9192339e-cfd7-421e-82f4-6b445e180fcd','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6d255c8d-b841-45bb-96db-c64cc243f1a4'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','7716f2a9-f3f0-4de4-8b5f-44f748ab9282',NULL),('93823e6b-cc96-4be4-b609-3f79b150bc91','role list','saml','saml-role-list-mapper',NULL,'4261e717-255c-4894-be73-a2f32798f8a6'),('969b5598-ff0a-4540-a838-901f5da79d6f','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('979b1235-3a99-4397-97cb-b157f2d83237','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('9918f62f-52fc-4212-a576-7447112c9ce7','address','openid-connect','oidc-address-mapper',NULL,'9fb19211-f6ab-45db-87e0-448df52079b0'),('994f26ad-6927-459b-986c-bff932e37ed6','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('995c25c0-3cf8-48b1-bd92-55a3360c9cd1','acr loa level','openid-connect','oidc-acr-mapper',NULL,'dd5ffe2c-a47f-4bc9-8e79-8d48a7c084bd'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('9a1875b4-189a-4ac3-8cb4-acbd2a739e50','audience resolve','openid-connect','oidc-audience-resolve-mapper','0107e684-1e28-42bd-8a3b-9651db47bc37',NULL),('9a36f24f-34a9-42be-9231-e158c4d2dd51','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f6d1a25c-296c-427e-be91-2e8f52e18067'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'829a488c-718f-4531-a9f6-ab00f53640a4'),('9c26d8ad-4301-47a7-965b-db36df4f2573','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c121e9f5-f608-4c14-bf94-7e8dd83c9236'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('a82b5dd9-0ada-4d61-9f37-da6f541e7e46','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c45016df-a2b9-4751-8d4e-74f15bec4d84'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','email','openid-connect','oidc-usermodel-property-mapper',NULL,'437edba2-9f02-468b-99bc-f922d0ce6184'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('af68c77f-20b8-49b6-8c0f-7fb61e95425b','role list','saml','saml-role-list-mapper',NULL,'14726c97-0fba-4f0b-bbe8-2162204cef20'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'ec6ffefb-272f-41ed-bfd8-73ca499a94c5'),('b037a829-c28c-41f2-ba9f-6ff740d48151','address','openid-connect','oidc-address-mapper',NULL,'ec4f8801-dd3d-4cdd-86c9-a52b68beb937'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','email','openid-connect','oidc-usermodel-property-mapper',NULL,'b33d9460-1543-441d-8ab1-d9474673f5a3'),('b626d316-ffd5-472b-b1dc-6047ec002192','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'437edba2-9f02-468b-99bc-f922d0ce6184'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','email','openid-connect','oidc-usermodel-property-mapper',NULL,'7171466e-8552-4002-91bc-ddb718c7fcf2'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','a8f8eae8-605c-4796-8598-dd02e8ff03f3',NULL),('ba81aeb8-b691-407c-8327-b846c3530a0b','username','openid-connect','oidc-usermodel-property-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('bd372980-0083-4a3a-b218-5f32893bfe0c','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'174436e7-af29-4a38-a37a-ef53e148d2b0'),('bdc592bd-dc77-4370-86b4-71f56f30f516','username','openid-connect','oidc-usermodel-property-mapper',NULL,'251c113b-3b89-489a-b89b-1429c71de9bc'),('bde911d0-4116-4621-b7b4-8976c20e40f6','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','locale','openid-connect','oidc-usermodel-attribute-mapper','b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0',NULL),('bf84244d-8692-4fc1-80e8-84edcc97fc85','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'b7ff58ee-7277-4b7d-8410-232388a2586b'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('c2ad2ee5-a59e-48f6-90c4-4243dd856d52','role list','saml','saml-role-list-mapper',NULL,'66ef630d-2918-47c7-acb5-9d285cfc28b5'),('c5a83baa-8b9d-47a1-bcea-bafef052de6d','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'f4c48c1b-8b06-4ef5-8b30-5b30fb372782'),('c750ae00-982c-4318-ab26-5d66c5e40833','username','openid-connect','oidc-usermodel-property-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('c82627a0-619d-42fe-9442-bcb445c21ec1','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('cb1246ec-92a6-4622-b2f8-054e9291c891','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('cb4e70bb-f1ec-4e75-8e32-c6e85f9fffb9','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'44e9c652-b923-4fbf-88eb-7332a1996218'),('cb581f5c-3032-4611-85a2-995274baf754','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'259d2b38-9a5e-4952-99bd-e2e13e8b4507'),('d17f29c9-5341-4447-afae-73789e43dc0d','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'ff8351da-6cf2-4d5c-b5e1-b0ab712fc283'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51b2fff3-e02b-4e5e-9cef-04f7bf22959a'),('d40e34cb-9c52-4134-8447-270562d55872','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c121e9f5-f608-4c14-bf94-7e8dd83c9236'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('d8b0c492-b30c-4bc2-a6e4-f257e1a8ad0f','full name','openid-connect','oidc-full-name-mapper',NULL,'2801abd7-d1f8-4625-8dd2-cf5ae414c008'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','username','openid-connect','oidc-usermodel-property-mapper',NULL,'06c629f6-4fb3-45db-b853-0e65886efde1'),('dab28720-e801-4c54-ac92-36ae68b33fbd','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'5c9ef9d5-84b8-424d-b011-6a2a1393b236'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('de563fef-f268-4ead-9a0d-a7d2deb45659','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'2ccdf43b-2d02-4b47-b7ee-5176ac564332'),('e0c84ce1-5d84-4f3f-984b-a4548bf8680e','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'f22c3424-be2d-4c40-94ba-cda83dc82abf'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'e74c9199-baae-4815-9b3e-03fe95e7bfc9'),('e22216fb-5df0-46e8-a87a-3e01c9668c92','role list','saml','saml-role-list-mapper',NULL,'74c2be43-8bae-49ae-8add-3ff653d5728e'),('e2ee663c-7c94-4674-9745-b8355ed2effb','full name','openid-connect','oidc-full-name-mapper',NULL,'6fab75d7-733e-4890-b096-50bcb0871ca3'),('ed407c5d-e416-4448-9e4e-6470217e57a8','email','openid-connect','oidc-usermodel-property-mapper',NULL,'f1521e13-3949-4dc3-8c63-42225e60cfae'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','email','openid-connect','oidc-usermodel-property-mapper',NULL,'e74c9199-baae-4815-9b3e-03fe95e7bfc9'),('f0071257-0664-4190-8a23-7abe509da68f','username','openid-connect','oidc-usermodel-property-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('f114fa03-02d4-414d-ae83-38f562391ec3','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'51b2fff3-e02b-4e5e-9cef-04f7bf22959a'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7910a755-d7b7-4ddc-9fc7-9a6614b11f69'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c68e5d0d-3495-43ed-91f1-a7b2f6a0665c'),('f676a0a5-31ae-4b4f-9b76-33fb15f06a92','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'dcc31d94-c344-4665-a0d7-21f01609396e'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'560885f6-a19a-4bd4-aa4f-cc1a52b5a74a'),('fa5acde3-7c44-4183-ac4c-bb089e45a653','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'174436e7-af29-4a38-a37a-ef53e148d2b0');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0156d749-82d8-43a5-b870-d9c90fcf5fe8','true','access.token.claim'),('0156d749-82d8-43a5-b870-d9c90fcf5fe8','clientHost','claim.name'),('0156d749-82d8-43a5-b870-d9c90fcf5fe8','true','id.token.claim'),('0156d749-82d8-43a5-b870-d9c90fcf5fe8','String','jsonType.label'),('0156d749-82d8-43a5-b870-d9c90fcf5fe8','clientHost','user.session.note'),('0156d749-82d8-43a5-b870-d9c90fcf5fe8','true','userinfo.token.claim'),('02414d82-96b3-4465-8048-6572937e305e','true','access.token.claim'),('02414d82-96b3-4465-8048-6572937e305e','resource_access.${client_id}.roles','claim.name'),('02414d82-96b3-4465-8048-6572937e305e','String','jsonType.label'),('02414d82-96b3-4465-8048-6572937e305e','true','multivalued'),('02414d82-96b3-4465-8048-6572937e305e','foo','user.attribute'),('024d3015-31fb-4731-aae0-3ef03010adf0','true','access.token.claim'),('024d3015-31fb-4731-aae0-3ef03010adf0','true','id.token.claim'),('024d3015-31fb-4731-aae0-3ef03010adf0','country','user.attribute.country'),('024d3015-31fb-4731-aae0-3ef03010adf0','formatted','user.attribute.formatted'),('024d3015-31fb-4731-aae0-3ef03010adf0','locality','user.attribute.locality'),('024d3015-31fb-4731-aae0-3ef03010adf0','postal_code','user.attribute.postal_code'),('024d3015-31fb-4731-aae0-3ef03010adf0','region','user.attribute.region'),('024d3015-31fb-4731-aae0-3ef03010adf0','street','user.attribute.street'),('024d3015-31fb-4731-aae0-3ef03010adf0','true','userinfo.token.claim'),('0638b9c2-782f-4a35-9c97-78e668e92343','true','access.token.claim'),('0638b9c2-782f-4a35-9c97-78e668e92343','clientAddress','claim.name'),('0638b9c2-782f-4a35-9c97-78e668e92343','true','id.token.claim'),('0638b9c2-782f-4a35-9c97-78e668e92343','String','jsonType.label'),('0638b9c2-782f-4a35-9c97-78e668e92343','clientAddress','user.session.note'),('0638b9c2-782f-4a35-9c97-78e668e92343','true','userinfo.token.claim'),('085e6148-5be9-4cb4-a564-9739ff691f1f','true','access.token.claim'),('085e6148-5be9-4cb4-a564-9739ff691f1f','nickname','claim.name'),('085e6148-5be9-4cb4-a564-9739ff691f1f','true','id.token.claim'),('085e6148-5be9-4cb4-a564-9739ff691f1f','String','jsonType.label'),('085e6148-5be9-4cb4-a564-9739ff691f1f','nickname','user.attribute'),('085e6148-5be9-4cb4-a564-9739ff691f1f','true','userinfo.token.claim'),('088df8e8-f275-40c6-901f-a80e595841ab','true','access.token.claim'),('088df8e8-f275-40c6-901f-a80e595841ab','upn','claim.name'),('088df8e8-f275-40c6-901f-a80e595841ab','true','id.token.claim'),('088df8e8-f275-40c6-901f-a80e595841ab','String','jsonType.label'),('088df8e8-f275-40c6-901f-a80e595841ab','username','user.attribute'),('088df8e8-f275-40c6-901f-a80e595841ab','true','userinfo.token.claim'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','true','access.token.claim'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','groups','claim.name'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','true','id.token.claim'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','String','jsonType.label'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','true','multivalued'),('09672151-2fb8-48a8-bff8-ab9867fdc4f7','foo','user.attribute'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','true','access.token.claim'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','upn','claim.name'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','true','id.token.claim'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','String','jsonType.label'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','username','user.attribute'),('09f1e1d7-4edc-4c85-8922-ba537cc7f24d','true','userinfo.token.claim'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','true','access.token.claim'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','zoneinfo','claim.name'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','true','id.token.claim'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','String','jsonType.label'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','zoneinfo','user.attribute'),('0a91faec-b606-4d52-af14-3bdb0664d4a9','true','userinfo.token.claim'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','true','access.token.claim'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','clientHost','claim.name'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','true','id.token.claim'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','String','jsonType.label'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','clientHost','user.session.note'),('0b507710-ae5c-4bb6-9dc5-15ea7624af96','true','userinfo.token.claim'),('0e8626c7-eaf8-476b-9184-610f0e648896','true','access.token.claim'),('0e8626c7-eaf8-476b-9184-610f0e648896','birthdate','claim.name'),('0e8626c7-eaf8-476b-9184-610f0e648896','true','id.token.claim'),('0e8626c7-eaf8-476b-9184-610f0e648896','String','jsonType.label'),('0e8626c7-eaf8-476b-9184-610f0e648896','birthdate','user.attribute'),('0e8626c7-eaf8-476b-9184-610f0e648896','true','userinfo.token.claim'),('0fc5ce17-3e4a-47d0-9ec6-d19cfab4add2','true','access.token.claim'),('0fc5ce17-3e4a-47d0-9ec6-d19cfab4add2','true','id.token.claim'),('0fc5ce17-3e4a-47d0-9ec6-d19cfab4add2','true','userinfo.token.claim'),('11a459a0-f334-4574-8968-192353459c76','true','access.token.claim'),('11a459a0-f334-4574-8968-192353459c76','updated_at','claim.name'),('11a459a0-f334-4574-8968-192353459c76','true','id.token.claim'),('11a459a0-f334-4574-8968-192353459c76','long','jsonType.label'),('11a459a0-f334-4574-8968-192353459c76','updatedAt','user.attribute'),('11a459a0-f334-4574-8968-192353459c76','true','userinfo.token.claim'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','true','access.token.claim'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','given_name','claim.name'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','true','id.token.claim'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','String','jsonType.label'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','firstName','user.attribute'),('11d4ec75-fbde-4bd0-9dfa-a11de40c36da','true','userinfo.token.claim'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','true','access.token.claim'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','clientId','claim.name'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','true','id.token.claim'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','String','jsonType.label'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','clientId','user.session.note'),('1484d386-ac7a-4cf7-aa9b-3a7d9a7a6329','true','userinfo.token.claim'),('14c8e87d-7519-4b10-8969-cdae45833e35','true','access.token.claim'),('14c8e87d-7519-4b10-8969-cdae45833e35','phone_number_verified','claim.name'),('14c8e87d-7519-4b10-8969-cdae45833e35','true','id.token.claim'),('14c8e87d-7519-4b10-8969-cdae45833e35','boolean','jsonType.label'),('14c8e87d-7519-4b10-8969-cdae45833e35','phoneNumberVerified','user.attribute'),('14c8e87d-7519-4b10-8969-cdae45833e35','true','userinfo.token.claim'),('155d7d77-40ea-4a34-941a-b22c398630f6','true','access.token.claim'),('155d7d77-40ea-4a34-941a-b22c398630f6','locale','claim.name'),('155d7d77-40ea-4a34-941a-b22c398630f6','true','id.token.claim'),('155d7d77-40ea-4a34-941a-b22c398630f6','String','jsonType.label'),('155d7d77-40ea-4a34-941a-b22c398630f6','locale','user.attribute'),('155d7d77-40ea-4a34-941a-b22c398630f6','true','userinfo.token.claim'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','true','access.token.claim'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','true','id.token.claim'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','country','user.attribute.country'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','formatted','user.attribute.formatted'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','locality','user.attribute.locality'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','postal_code','user.attribute.postal_code'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','region','user.attribute.region'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','street','user.attribute.street'),('15a3854d-23c6-4e45-9629-f5ac5b4a27a3','true','userinfo.token.claim'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','true','access.token.claim'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','picture','claim.name'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','true','id.token.claim'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','String','jsonType.label'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','picture','user.attribute'),('16099241-eb4a-4f19-a2d8-be09b3e9c453','true','userinfo.token.claim'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','true','access.token.claim'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','clientHost','claim.name'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','true','id.token.claim'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','String','jsonType.label'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','clientHost','user.session.note'),('1d7c8b63-a45e-4f27-aad8-bde87d999d35','true','userinfo.token.claim'),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','true','access.token.claim'),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','upn','claim.name'),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','true','id.token.claim'),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','String','jsonType.label'),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','username','user.attribute'),('1dd05e31-42c7-4508-bc20-efd79f3aab6e','true','userinfo.token.claim'),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','true','access.token.claim'),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','clientId','claim.name'),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','true','id.token.claim'),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','String','jsonType.label'),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','clientId','user.session.note'),('21181970-1e83-44a6-a1f1-bb9ad37bad2d','true','userinfo.token.claim'),('21c0b055-e275-4042-9052-cbc21031cc24','true','access.token.claim'),('21c0b055-e275-4042-9052-cbc21031cc24','locale','claim.name'),('21c0b055-e275-4042-9052-cbc21031cc24','true','id.token.claim'),('21c0b055-e275-4042-9052-cbc21031cc24','String','jsonType.label'),('21c0b055-e275-4042-9052-cbc21031cc24','locale','user.attribute'),('21c0b055-e275-4042-9052-cbc21031cc24','true','userinfo.token.claim'),('22098354-e312-410f-b2c7-4366ff644ad2','true','access.token.claim'),('22098354-e312-410f-b2c7-4366ff644ad2','resource_access.${client_id}.roles','claim.name'),('22098354-e312-410f-b2c7-4366ff644ad2','String','jsonType.label'),('22098354-e312-410f-b2c7-4366ff644ad2','true','multivalued'),('22098354-e312-410f-b2c7-4366ff644ad2','foo','user.attribute'),('25331e21-07e9-43c5-a4b6-c312c06ec719','Role','attribute.name'),('25331e21-07e9-43c5-a4b6-c312c06ec719','Basic','attribute.nameformat'),('25331e21-07e9-43c5-a4b6-c312c06ec719','false','single'),('280c2507-10af-40b6-a11e-38f70c472cb8','true','access.token.claim'),('280c2507-10af-40b6-a11e-38f70c472cb8','clientAddress','claim.name'),('280c2507-10af-40b6-a11e-38f70c472cb8','true','id.token.claim'),('280c2507-10af-40b6-a11e-38f70c472cb8','String','jsonType.label'),('280c2507-10af-40b6-a11e-38f70c472cb8','clientAddress','user.session.note'),('280c2507-10af-40b6-a11e-38f70c472cb8','true','userinfo.token.claim'),('2846dae9-2842-4bca-8e1d-95f63ba46923','true','access.token.claim'),('2846dae9-2842-4bca-8e1d-95f63ba46923','clientId','claim.name'),('2846dae9-2842-4bca-8e1d-95f63ba46923','true','id.token.claim'),('2846dae9-2842-4bca-8e1d-95f63ba46923','String','jsonType.label'),('2846dae9-2842-4bca-8e1d-95f63ba46923','clientId','user.session.note'),('2846dae9-2842-4bca-8e1d-95f63ba46923','true','userinfo.token.claim'),('2939db0a-7345-463a-b2cf-74e0803ee59d','true','access.token.claim'),('2939db0a-7345-463a-b2cf-74e0803ee59d','true','id.token.claim'),('2939db0a-7345-463a-b2cf-74e0803ee59d','country','user.attribute.country'),('2939db0a-7345-463a-b2cf-74e0803ee59d','formatted','user.attribute.formatted'),('2939db0a-7345-463a-b2cf-74e0803ee59d','locality','user.attribute.locality'),('2939db0a-7345-463a-b2cf-74e0803ee59d','postal_code','user.attribute.postal_code'),('2939db0a-7345-463a-b2cf-74e0803ee59d','region','user.attribute.region'),('2939db0a-7345-463a-b2cf-74e0803ee59d','street','user.attribute.street'),('2939db0a-7345-463a-b2cf-74e0803ee59d','true','userinfo.token.claim'),('298591b7-421e-4d37-bd3d-e4fdc563b692','true','access.token.claim'),('298591b7-421e-4d37-bd3d-e4fdc563b692','true','id.token.claim'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','true','access.token.claim'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','true','id.token.claim'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','country','user.attribute.country'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','formatted','user.attribute.formatted'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','locality','user.attribute.locality'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','postal_code','user.attribute.postal_code'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','region','user.attribute.region'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','street','user.attribute.street'),('2a97da80-758c-4ffd-8fea-7f784c4ceafc','true','userinfo.token.claim'),('2b9dc598-87f6-4f50-945b-35df3f94504c','true','access.token.claim'),('2b9dc598-87f6-4f50-945b-35df3f94504c','email_verified','claim.name'),('2b9dc598-87f6-4f50-945b-35df3f94504c','true','id.token.claim'),('2b9dc598-87f6-4f50-945b-35df3f94504c','boolean','jsonType.label'),('2b9dc598-87f6-4f50-945b-35df3f94504c','emailVerified','user.attribute'),('2b9dc598-87f6-4f50-945b-35df3f94504c','true','userinfo.token.claim'),('2f8c42da-4676-4cf8-8906-beb016861ecc','true','access.token.claim'),('2f8c42da-4676-4cf8-8906-beb016861ecc','realm_access.roles','claim.name'),('2f8c42da-4676-4cf8-8906-beb016861ecc','String','jsonType.label'),('2f8c42da-4676-4cf8-8906-beb016861ecc','true','multivalued'),('2f8c42da-4676-4cf8-8906-beb016861ecc','foo','user.attribute'),('310aec7c-dffb-4251-a676-443e70eefb3e','true','access.token.claim'),('310aec7c-dffb-4251-a676-443e70eefb3e','locale','claim.name'),('310aec7c-dffb-4251-a676-443e70eefb3e','true','id.token.claim'),('310aec7c-dffb-4251-a676-443e70eefb3e','String','jsonType.label'),('310aec7c-dffb-4251-a676-443e70eefb3e','locale','user.attribute'),('310aec7c-dffb-4251-a676-443e70eefb3e','true','userinfo.token.claim'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','true','access.token.claim'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','gender','claim.name'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','true','id.token.claim'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','String','jsonType.label'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','gender','user.attribute'),('31f54807-ada6-45d9-b67e-a65a5c7415a6','true','userinfo.token.claim'),('31f82a64-c67b-4faa-8229-a029a353343a','true','access.token.claim'),('31f82a64-c67b-4faa-8229-a029a353343a','family_name','claim.name'),('31f82a64-c67b-4faa-8229-a029a353343a','true','id.token.claim'),('31f82a64-c67b-4faa-8229-a029a353343a','String','jsonType.label'),('31f82a64-c67b-4faa-8229-a029a353343a','lastName','user.attribute'),('31f82a64-c67b-4faa-8229-a029a353343a','true','userinfo.token.claim'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','true','access.token.claim'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','locale','claim.name'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','true','id.token.claim'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','String','jsonType.label'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','locale','user.attribute'),('33c2d10a-1bf1-439e-8a12-76f781ace21c','true','userinfo.token.claim'),('35b42d99-8797-4a81-9658-61a0b195157c','true','access.token.claim'),('35b42d99-8797-4a81-9658-61a0b195157c','clientHost','claim.name'),('35b42d99-8797-4a81-9658-61a0b195157c','true','id.token.claim'),('35b42d99-8797-4a81-9658-61a0b195157c','String','jsonType.label'),('35b42d99-8797-4a81-9658-61a0b195157c','clientHost','user.session.note'),('35b42d99-8797-4a81-9658-61a0b195157c','true','userinfo.token.claim'),('35f7ed3a-f23d-4254-8f84-5cb215c56091','true','access.token.claim'),('35f7ed3a-f23d-4254-8f84-5cb215c56091','family_name','claim.name'),('35f7ed3a-f23d-4254-8f84-5cb215c56091','true','id.token.claim'),('35f7ed3a-f23d-4254-8f84-5cb215c56091','String','jsonType.label'),('35f7ed3a-f23d-4254-8f84-5cb215c56091','lastName','user.attribute'),('35f7ed3a-f23d-4254-8f84-5cb215c56091','true','userinfo.token.claim'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','true','access.token.claim'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','phone_number','claim.name'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','true','id.token.claim'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','String','jsonType.label'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','phoneNumber','user.attribute'),('365a5d8e-2022-48f5-882a-48a97c4e3a9d','true','userinfo.token.claim'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','true','access.token.claim'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','updated_at','claim.name'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','true','id.token.claim'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','long','jsonType.label'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','updatedAt','user.attribute'),('37a27b9d-76b1-412f-96ed-ad383ab67e86','true','userinfo.token.claim'),('38ce174a-254e-4340-ab71-9df2304b2821','true','access.token.claim'),('38ce174a-254e-4340-ab71-9df2304b2821','gender','claim.name'),('38ce174a-254e-4340-ab71-9df2304b2821','true','id.token.claim'),('38ce174a-254e-4340-ab71-9df2304b2821','String','jsonType.label'),('38ce174a-254e-4340-ab71-9df2304b2821','gender','user.attribute'),('38ce174a-254e-4340-ab71-9df2304b2821','true','userinfo.token.claim'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','true','access.token.claim'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','profile','claim.name'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','true','id.token.claim'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','String','jsonType.label'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','profile','user.attribute'),('392bac8c-be07-4d7f-a91b-a0548ee1ae2f','true','userinfo.token.claim'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','true','access.token.claim'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','given_name','claim.name'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','true','id.token.claim'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','String','jsonType.label'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','firstName','user.attribute'),('3a790b53-111d-4d29-8f84-b9bb8480cdc1','true','userinfo.token.claim'),('3aa4c87a-ee97-4752-8f06-69be78743e39','true','access.token.claim'),('3aa4c87a-ee97-4752-8f06-69be78743e39','email_verified','claim.name'),('3aa4c87a-ee97-4752-8f06-69be78743e39','true','id.token.claim'),('3aa4c87a-ee97-4752-8f06-69be78743e39','boolean','jsonType.label'),('3aa4c87a-ee97-4752-8f06-69be78743e39','emailVerified','user.attribute'),('3aa4c87a-ee97-4752-8f06-69be78743e39','true','userinfo.token.claim'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','true','access.token.claim'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','upn','claim.name'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','true','id.token.claim'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','String','jsonType.label'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','username','user.attribute'),('3b16d416-ff71-4fb5-9604-2be9bb19eabe','true','userinfo.token.claim'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','true','access.token.claim'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','given_name','claim.name'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','true','id.token.claim'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','String','jsonType.label'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','firstName','user.attribute'),('3b2de97d-1a6e-4def-9d5d-880693fb4ca4','true','userinfo.token.claim'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','true','access.token.claim'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','picture','claim.name'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','true','id.token.claim'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','String','jsonType.label'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','picture','user.attribute'),('3be4cfd5-1542-43e3-960e-1b3ba7b902e3','true','userinfo.token.claim'),('3c55726b-aede-48f0-a899-45f79f5d0bde','true','access.token.claim'),('3c55726b-aede-48f0-a899-45f79f5d0bde','locale','claim.name'),('3c55726b-aede-48f0-a899-45f79f5d0bde','true','id.token.claim'),('3c55726b-aede-48f0-a899-45f79f5d0bde','String','jsonType.label'),('3c55726b-aede-48f0-a899-45f79f5d0bde','locale','user.attribute'),('3c55726b-aede-48f0-a899-45f79f5d0bde','true','userinfo.token.claim'),('3cacdf7c-6de0-4508-8e96-6943f28e1a46','true','access.token.claim'),('3cacdf7c-6de0-4508-8e96-6943f28e1a46','true','id.token.claim'),('3cda47b8-966a-4b79-bb02-bcfd17a994df','true','access.token.claim'),('3cda47b8-966a-4b79-bb02-bcfd17a994df','true','id.token.claim'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','true','access.token.claim'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','nickname','claim.name'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','true','id.token.claim'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','String','jsonType.label'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','nickname','user.attribute'),('3db5e9ef-266c-476d-99f9-6b0840a322ab','true','userinfo.token.claim'),('413d361a-0fbf-4d37-a19c-9788a2c02f2d','true','access.token.claim'),('413d361a-0fbf-4d37-a19c-9788a2c02f2d','true','id.token.claim'),('413d361a-0fbf-4d37-a19c-9788a2c02f2d','true','userinfo.token.claim'),('426d06d7-c87c-4716-be55-719554f17779','true','access.token.claim'),('426d06d7-c87c-4716-be55-719554f17779','family_name','claim.name'),('426d06d7-c87c-4716-be55-719554f17779','true','id.token.claim'),('426d06d7-c87c-4716-be55-719554f17779','String','jsonType.label'),('426d06d7-c87c-4716-be55-719554f17779','lastName','user.attribute'),('426d06d7-c87c-4716-be55-719554f17779','true','userinfo.token.claim'),('430929a2-e78d-47eb-99b6-aea24bf6346a','true','access.token.claim'),('430929a2-e78d-47eb-99b6-aea24bf6346a','website','claim.name'),('430929a2-e78d-47eb-99b6-aea24bf6346a','true','id.token.claim'),('430929a2-e78d-47eb-99b6-aea24bf6346a','String','jsonType.label'),('430929a2-e78d-47eb-99b6-aea24bf6346a','website','user.attribute'),('430929a2-e78d-47eb-99b6-aea24bf6346a','true','userinfo.token.claim'),('43b96886-512f-4672-915f-34f8cc750b54','true','access.token.claim'),('43b96886-512f-4672-915f-34f8cc750b54','clientAddress','claim.name'),('43b96886-512f-4672-915f-34f8cc750b54','true','id.token.claim'),('43b96886-512f-4672-915f-34f8cc750b54','String','jsonType.label'),('43b96886-512f-4672-915f-34f8cc750b54','clientAddress','user.session.note'),('43b96886-512f-4672-915f-34f8cc750b54','true','userinfo.token.claim'),('45bdbacc-0578-46bf-b9c5-31070951b802','true','access.token.claim'),('45bdbacc-0578-46bf-b9c5-31070951b802','groups','claim.name'),('45bdbacc-0578-46bf-b9c5-31070951b802','true','id.token.claim'),('45bdbacc-0578-46bf-b9c5-31070951b802','String','jsonType.label'),('45bdbacc-0578-46bf-b9c5-31070951b802','true','multivalued'),('45bdbacc-0578-46bf-b9c5-31070951b802','foo','user.attribute'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','true','access.token.claim'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','website','claim.name'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','true','id.token.claim'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','String','jsonType.label'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','website','user.attribute'),('497143d7-c160-4eb8-a7b6-8169cc5a0907','true','userinfo.token.claim'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','true','access.token.claim'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','given_name','claim.name'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','true','id.token.claim'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','String','jsonType.label'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','firstName','user.attribute'),('4ba5e6c9-dea4-4688-8846-17a5dbffe86f','true','userinfo.token.claim'),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','true','access.token.claim'),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','middle_name','claim.name'),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','true','id.token.claim'),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','String','jsonType.label'),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','middleName','user.attribute'),('4c032d4f-11b1-4598-90c0-9b0cdbf0ed0e','true','userinfo.token.claim'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','true','access.token.claim'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','updated_at','claim.name'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','true','id.token.claim'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','long','jsonType.label'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','updatedAt','user.attribute'),('4c0683dd-1e9b-4cd7-8db1-2a36c3db7614','true','userinfo.token.claim'),('4d2136eb-8bd9-4290-bac2-c821cd745545','true','access.token.claim'),('4d2136eb-8bd9-4290-bac2-c821cd745545','upn','claim.name'),('4d2136eb-8bd9-4290-bac2-c821cd745545','true','id.token.claim'),('4d2136eb-8bd9-4290-bac2-c821cd745545','String','jsonType.label'),('4d2136eb-8bd9-4290-bac2-c821cd745545','username','user.attribute'),('4d2136eb-8bd9-4290-bac2-c821cd745545','true','userinfo.token.claim'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','true','access.token.claim'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','phone_number','claim.name'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','true','id.token.claim'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','String','jsonType.label'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','phoneNumber','user.attribute'),('4d657afe-fe9f-4008-8be1-b2d146e2050d','true','userinfo.token.claim'),('4f6ab11d-0764-4ac4-92f2-42f9d0f7ec79','true','access.token.claim'),('4f6ab11d-0764-4ac4-92f2-42f9d0f7ec79','true','id.token.claim'),('4f6ab11d-0764-4ac4-92f2-42f9d0f7ec79','true','userinfo.token.claim'),('51aa9170-5f72-4104-989e-ce9f7c74381f','true','access.token.claim'),('51aa9170-5f72-4104-989e-ce9f7c74381f','birthdate','claim.name'),('51aa9170-5f72-4104-989e-ce9f7c74381f','true','id.token.claim'),('51aa9170-5f72-4104-989e-ce9f7c74381f','String','jsonType.label'),('51aa9170-5f72-4104-989e-ce9f7c74381f','birthdate','user.attribute'),('51aa9170-5f72-4104-989e-ce9f7c74381f','true','userinfo.token.claim'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','true','access.token.claim'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','locale','claim.name'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','true','id.token.claim'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','String','jsonType.label'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','locale','user.attribute'),('52350945-eb37-438b-b8c4-a8b0d5ba5537','true','userinfo.token.claim'),('52b07b5d-723d-4f11-bbf5-3c8a35341f4a','true','access.token.claim'),('52b07b5d-723d-4f11-bbf5-3c8a35341f4a','true','id.token.claim'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','true','access.token.claim'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','phone_number','claim.name'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','true','id.token.claim'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','String','jsonType.label'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','phoneNumber','user.attribute'),('55b97f17-6d16-4abb-97b1-f30c2e75b703','true','userinfo.token.claim'),('5620d262-3b57-45c2-8a95-256eb2066a70','true','access.token.claim'),('5620d262-3b57-45c2-8a95-256eb2066a70','given_name','claim.name'),('5620d262-3b57-45c2-8a95-256eb2066a70','true','id.token.claim'),('5620d262-3b57-45c2-8a95-256eb2066a70','String','jsonType.label'),('5620d262-3b57-45c2-8a95-256eb2066a70','firstName','user.attribute'),('5620d262-3b57-45c2-8a95-256eb2066a70','true','userinfo.token.claim'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','true','access.token.claim'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','profile','claim.name'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','true','id.token.claim'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','String','jsonType.label'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','profile','user.attribute'),('56807cc3-49e1-452d-8eb8-d3e2c53f919f','true','userinfo.token.claim'),('56dde81a-28e9-4f75-b16e-58319efd28c1','true','access.token.claim'),('56dde81a-28e9-4f75-b16e-58319efd28c1','gender','claim.name'),('56dde81a-28e9-4f75-b16e-58319efd28c1','true','id.token.claim'),('56dde81a-28e9-4f75-b16e-58319efd28c1','String','jsonType.label'),('56dde81a-28e9-4f75-b16e-58319efd28c1','gender','user.attribute'),('56dde81a-28e9-4f75-b16e-58319efd28c1','true','userinfo.token.claim'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','true','access.token.claim'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','locale','claim.name'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','true','id.token.claim'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','String','jsonType.label'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','locale','user.attribute'),('58d6057f-fe77-4c56-870a-d9cdc1f3520b','true','userinfo.token.claim'),('5967e688-939d-4fa7-a97f-708c21328c5b','true','access.token.claim'),('5967e688-939d-4fa7-a97f-708c21328c5b','realm_access.roles','claim.name'),('5967e688-939d-4fa7-a97f-708c21328c5b','String','jsonType.label'),('5967e688-939d-4fa7-a97f-708c21328c5b','true','multivalued'),('5967e688-939d-4fa7-a97f-708c21328c5b','foo','user.attribute'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','true','access.token.claim'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','clientHost','claim.name'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','true','id.token.claim'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','String','jsonType.label'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','clientHost','user.session.note'),('5d194e74-261f-46c6-b74c-cc62caaa3dfa','true','userinfo.token.claim'),('5de0f1cd-eb5c-43ed-9117-d9619c324240','true','access.token.claim'),('5de0f1cd-eb5c-43ed-9117-d9619c324240','zoneinfo','claim.name'),('5de0f1cd-eb5c-43ed-9117-d9619c324240','true','id.token.claim'),('5de0f1cd-eb5c-43ed-9117-d9619c324240','String','jsonType.label'),('5de0f1cd-eb5c-43ed-9117-d9619c324240','zoneinfo','user.attribute'),('5de0f1cd-eb5c-43ed-9117-d9619c324240','true','userinfo.token.claim'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','true','access.token.claim'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','given_name','claim.name'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','true','id.token.claim'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','String','jsonType.label'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','firstName','user.attribute'),('5f12e8ad-bd27-4820-a175-ff065f2dfc3c','true','userinfo.token.claim'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','true','access.token.claim'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','phone_number_verified','claim.name'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','true','id.token.claim'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','boolean','jsonType.label'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','phoneNumberVerified','user.attribute'),('5fa36947-ea0b-407a-8c2e-3c0f38578afe','true','userinfo.token.claim'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','true','access.token.claim'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','zoneinfo','claim.name'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','true','id.token.claim'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','String','jsonType.label'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','zoneinfo','user.attribute'),('5ffa040e-d7f2-428a-83ec-d6904aaf53a1','true','userinfo.token.claim'),('63294f00-88f5-48dd-8648-85a55c28e6b9','true','access.token.claim'),('63294f00-88f5-48dd-8648-85a55c28e6b9','birthdate','claim.name'),('63294f00-88f5-48dd-8648-85a55c28e6b9','true','id.token.claim'),('63294f00-88f5-48dd-8648-85a55c28e6b9','String','jsonType.label'),('63294f00-88f5-48dd-8648-85a55c28e6b9','birthdate','user.attribute'),('63294f00-88f5-48dd-8648-85a55c28e6b9','true','userinfo.token.claim'),('65a0daeb-301a-4fe9-8dc0-2b4889c72299','true','access.token.claim'),('65a0daeb-301a-4fe9-8dc0-2b4889c72299','true','id.token.claim'),('65a0daeb-301a-4fe9-8dc0-2b4889c72299','true','userinfo.token.claim'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','true','access.token.claim'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','middle_name','claim.name'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','true','id.token.claim'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','String','jsonType.label'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','middleName','user.attribute'),('6718d8b9-7b80-4a5d-b55f-54c9f9453e51','true','userinfo.token.claim'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','true','access.token.claim'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','gender','claim.name'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','true','id.token.claim'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','String','jsonType.label'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','gender','user.attribute'),('681a5a65-47b4-4da5-b333-0e64c4f233bf','true','userinfo.token.claim'),('695063ce-4170-445d-9436-fa84f710d827','true','access.token.claim'),('695063ce-4170-445d-9436-fa84f710d827','locale','claim.name'),('695063ce-4170-445d-9436-fa84f710d827','true','id.token.claim'),('695063ce-4170-445d-9436-fa84f710d827','String','jsonType.label'),('695063ce-4170-445d-9436-fa84f710d827','locale','user.attribute'),('695063ce-4170-445d-9436-fa84f710d827','true','userinfo.token.claim'),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','true','access.token.claim'),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','updated_at','claim.name'),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','true','id.token.claim'),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','long','jsonType.label'),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','updatedAt','user.attribute'),('6a931363-3d6e-4f30-a626-e3d710b5b4f8','true','userinfo.token.claim'),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','true','access.token.claim'),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','profile','claim.name'),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','true','id.token.claim'),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','String','jsonType.label'),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','profile','user.attribute'),('6e61e3b8-2897-41fe-a6cb-ef5669d9df21','true','userinfo.token.claim'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','true','access.token.claim'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','locale','claim.name'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','true','id.token.claim'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','String','jsonType.label'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','locale','user.attribute'),('7096dfd3-eb4e-4843-a00f-9ca0876c597f','true','userinfo.token.claim'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','true','access.token.claim'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','middle_name','claim.name'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','true','id.token.claim'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','String','jsonType.label'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','middleName','user.attribute'),('71e1e27a-efdc-4fe9-bde2-188585cfcdcd','true','userinfo.token.claim'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','true','access.token.claim'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','clientId','claim.name'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','true','id.token.claim'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','String','jsonType.label'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','clientId','user.session.note'),('72d86b38-1d63-4d4c-8060-c6a4f10e040e','true','userinfo.token.claim'),('7390334d-52b1-457c-b18e-2d7ec5aaf598','true','access.token.claim'),('7390334d-52b1-457c-b18e-2d7ec5aaf598','zoneinfo','claim.name'),('7390334d-52b1-457c-b18e-2d7ec5aaf598','true','id.token.claim'),('7390334d-52b1-457c-b18e-2d7ec5aaf598','String','jsonType.label'),('7390334d-52b1-457c-b18e-2d7ec5aaf598','zoneinfo','user.attribute'),('7390334d-52b1-457c-b18e-2d7ec5aaf598','true','userinfo.token.claim'),('73d4c3b8-647c-4085-9139-e9fde5714d94','true','access.token.claim'),('73d4c3b8-647c-4085-9139-e9fde5714d94','website','claim.name'),('73d4c3b8-647c-4085-9139-e9fde5714d94','true','id.token.claim'),('73d4c3b8-647c-4085-9139-e9fde5714d94','String','jsonType.label'),('73d4c3b8-647c-4085-9139-e9fde5714d94','website','user.attribute'),('73d4c3b8-647c-4085-9139-e9fde5714d94','true','userinfo.token.claim'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','true','access.token.claim'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','clientId','claim.name'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','true','id.token.claim'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','String','jsonType.label'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','clientId','user.session.note'),('78e663ae-0873-427c-b37d-df1e2b7efb4e','true','userinfo.token.claim'),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','true','access.token.claim'),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','picture','claim.name'),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','true','id.token.claim'),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','String','jsonType.label'),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','picture','user.attribute'),('7bd2cea2-9e9e-400f-81a7-f00966d1963a','true','userinfo.token.claim'),('7d03f700-11eb-43e0-8dae-059d76b72fef','true','access.token.claim'),('7d03f700-11eb-43e0-8dae-059d76b72fef','clientId','claim.name'),('7d03f700-11eb-43e0-8dae-059d76b72fef','true','id.token.claim'),('7d03f700-11eb-43e0-8dae-059d76b72fef','String','jsonType.label'),('7d03f700-11eb-43e0-8dae-059d76b72fef','clientId','user.session.note'),('7d03f700-11eb-43e0-8dae-059d76b72fef','true','userinfo.token.claim'),('7e211462-ba2c-4783-a335-4311e5f7ecca','true','access.token.claim'),('7e211462-ba2c-4783-a335-4311e5f7ecca','family_name','claim.name'),('7e211462-ba2c-4783-a335-4311e5f7ecca','true','id.token.claim'),('7e211462-ba2c-4783-a335-4311e5f7ecca','String','jsonType.label'),('7e211462-ba2c-4783-a335-4311e5f7ecca','lastName','user.attribute'),('7e211462-ba2c-4783-a335-4311e5f7ecca','true','userinfo.token.claim'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','true','access.token.claim'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','nickname','claim.name'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','true','id.token.claim'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','String','jsonType.label'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','nickname','user.attribute'),('8051ea98-7fa3-46d0-8acc-72b50a73ab32','true','userinfo.token.claim'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','true','access.token.claim'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','clientAddress','claim.name'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','true','id.token.claim'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','String','jsonType.label'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','clientAddress','user.session.note'),('80af2f57-14fc-4f6d-a029-3bc640f0b82c','true','userinfo.token.claim'),('839722ab-f396-457a-abae-79233bae0fc7','true','access.token.claim'),('839722ab-f396-457a-abae-79233bae0fc7','resource_access.${client_id}.roles','claim.name'),('839722ab-f396-457a-abae-79233bae0fc7','String','jsonType.label'),('839722ab-f396-457a-abae-79233bae0fc7','true','multivalued'),('839722ab-f396-457a-abae-79233bae0fc7','foo','user.attribute'),('841fb301-1620-440f-b9e6-b59f32fcd41d','true','access.token.claim'),('841fb301-1620-440f-b9e6-b59f32fcd41d','clientAddress','claim.name'),('841fb301-1620-440f-b9e6-b59f32fcd41d','true','id.token.claim'),('841fb301-1620-440f-b9e6-b59f32fcd41d','String','jsonType.label'),('841fb301-1620-440f-b9e6-b59f32fcd41d','clientAddress','user.session.note'),('841fb301-1620-440f-b9e6-b59f32fcd41d','true','userinfo.token.claim'),('848bfceb-10b4-4621-99ec-6639b27109db','true','access.token.claim'),('848bfceb-10b4-4621-99ec-6639b27109db','picture','claim.name'),('848bfceb-10b4-4621-99ec-6639b27109db','true','id.token.claim'),('848bfceb-10b4-4621-99ec-6639b27109db','String','jsonType.label'),('848bfceb-10b4-4621-99ec-6639b27109db','picture','user.attribute'),('848bfceb-10b4-4621-99ec-6639b27109db','true','userinfo.token.claim'),('85732436-8ee6-4ea5-9e73-bf369b519d6b','true','access.token.claim'),('85732436-8ee6-4ea5-9e73-bf369b519d6b','true','id.token.claim'),('8748adb9-0879-4cc3-9844-b06bb9d79833','true','access.token.claim'),('8748adb9-0879-4cc3-9844-b06bb9d79833','nickname','claim.name'),('8748adb9-0879-4cc3-9844-b06bb9d79833','true','id.token.claim'),('8748adb9-0879-4cc3-9844-b06bb9d79833','String','jsonType.label'),('8748adb9-0879-4cc3-9844-b06bb9d79833','nickname','user.attribute'),('8748adb9-0879-4cc3-9844-b06bb9d79833','true','userinfo.token.claim'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','true','access.token.claim'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','website','claim.name'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','true','id.token.claim'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','String','jsonType.label'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','website','user.attribute'),('87d70b79-f5c7-4ec8-ba41-94f33bb44a27','true','userinfo.token.claim'),('87ea2a30-c611-4aaf-b88c-85461740e382','true','access.token.claim'),('87ea2a30-c611-4aaf-b88c-85461740e382','updated_at','claim.name'),('87ea2a30-c611-4aaf-b88c-85461740e382','true','id.token.claim'),('87ea2a30-c611-4aaf-b88c-85461740e382','long','jsonType.label'),('87ea2a30-c611-4aaf-b88c-85461740e382','updatedAt','user.attribute'),('87ea2a30-c611-4aaf-b88c-85461740e382','true','userinfo.token.claim'),('89038648-6160-4433-8703-8567d4605e60','true','access.token.claim'),('89038648-6160-4433-8703-8567d4605e60','resource_access.${client_id}.roles','claim.name'),('89038648-6160-4433-8703-8567d4605e60','String','jsonType.label'),('89038648-6160-4433-8703-8567d4605e60','true','multivalued'),('89038648-6160-4433-8703-8567d4605e60','foo','user.attribute'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','true','access.token.claim'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','gender','claim.name'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','true','id.token.claim'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','String','jsonType.label'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','gender','user.attribute'),('8a587319-f2c0-4b74-85c7-5b8b5ba93e81','true','userinfo.token.claim'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','true','access.token.claim'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','email_verified','claim.name'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','true','id.token.claim'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','boolean','jsonType.label'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','emailVerified','user.attribute'),('8b913aff-2dc5-4199-88a5-f159e0486e6f','true','userinfo.token.claim'),('8c352781-62f9-4bb4-aaf2-60af32a0c49b','true','access.token.claim'),('8c352781-62f9-4bb4-aaf2-60af32a0c49b','resource_access.${client_id}.roles','claim.name'),('8c352781-62f9-4bb4-aaf2-60af32a0c49b','String','jsonType.label'),('8c352781-62f9-4bb4-aaf2-60af32a0c49b','true','multivalued'),('8c352781-62f9-4bb4-aaf2-60af32a0c49b','foo','user.attribute'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','true','access.token.claim'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','preferred_username','claim.name'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','true','id.token.claim'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','String','jsonType.label'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','username','user.attribute'),('8cc39d75-578c-4cf7-b905-6aeff2e16eaa','true','userinfo.token.claim'),('8cf1042a-ca4c-456c-b2d3-c103cfc48486','Role','attribute.name'),('8cf1042a-ca4c-456c-b2d3-c103cfc48486','Basic','attribute.nameformat'),('8cf1042a-ca4c-456c-b2d3-c103cfc48486','false','single'),('8d0f7dbc-9f9d-4ae2-a4f1-70f607238841','true','access.token.claim'),('8d0f7dbc-9f9d-4ae2-a4f1-70f607238841','resource_access.${client_id}.roles','claim.name'),('8d0f7dbc-9f9d-4ae2-a4f1-70f607238841','String','jsonType.label'),('8d0f7dbc-9f9d-4ae2-a4f1-70f607238841','true','multivalued'),('8d0f7dbc-9f9d-4ae2-a4f1-70f607238841','foo','user.attribute'),('8e35c021-f8f8-46cb-948f-227a54c94868','true','access.token.claim'),('8e35c021-f8f8-46cb-948f-227a54c94868','realm_access.roles','claim.name'),('8e35c021-f8f8-46cb-948f-227a54c94868','String','jsonType.label'),('8e35c021-f8f8-46cb-948f-227a54c94868','true','multivalued'),('8e35c021-f8f8-46cb-948f-227a54c94868','foo','user.attribute'),('8f01f5f7-51c7-4770-849f-59662416661f','true','access.token.claim'),('8f01f5f7-51c7-4770-849f-59662416661f','email','claim.name'),('8f01f5f7-51c7-4770-849f-59662416661f','true','id.token.claim'),('8f01f5f7-51c7-4770-849f-59662416661f','String','jsonType.label'),('8f01f5f7-51c7-4770-849f-59662416661f','email','user.attribute'),('8f01f5f7-51c7-4770-849f-59662416661f','true','userinfo.token.claim'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','true','access.token.claim'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','phone_number_verified','claim.name'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','true','id.token.claim'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','boolean','jsonType.label'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','phoneNumberVerified','user.attribute'),('8fc12bfe-1463-43c4-ad0e-5936eb0abf60','true','userinfo.token.claim'),('9192339e-cfd7-421e-82f4-6b445e180fcd','true','access.token.claim'),('9192339e-cfd7-421e-82f4-6b445e180fcd','phone_number_verified','claim.name'),('9192339e-cfd7-421e-82f4-6b445e180fcd','true','id.token.claim'),('9192339e-cfd7-421e-82f4-6b445e180fcd','boolean','jsonType.label'),('9192339e-cfd7-421e-82f4-6b445e180fcd','phoneNumberVerified','user.attribute'),('9192339e-cfd7-421e-82f4-6b445e180fcd','true','userinfo.token.claim'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','true','access.token.claim'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','clientAddress','claim.name'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','true','id.token.claim'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','String','jsonType.label'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','clientAddress','user.session.note'),('92aeaa2e-1763-4309-9cbf-dc49e037f9b6','true','userinfo.token.claim'),('93823e6b-cc96-4be4-b609-3f79b150bc91','Role','attribute.name'),('93823e6b-cc96-4be4-b609-3f79b150bc91','Basic','attribute.nameformat'),('93823e6b-cc96-4be4-b609-3f79b150bc91','false','single'),('969b5598-ff0a-4540-a838-901f5da79d6f','true','access.token.claim'),('969b5598-ff0a-4540-a838-901f5da79d6f','birthdate','claim.name'),('969b5598-ff0a-4540-a838-901f5da79d6f','true','id.token.claim'),('969b5598-ff0a-4540-a838-901f5da79d6f','String','jsonType.label'),('969b5598-ff0a-4540-a838-901f5da79d6f','birthdate','user.attribute'),('969b5598-ff0a-4540-a838-901f5da79d6f','true','userinfo.token.claim'),('979b1235-3a99-4397-97cb-b157f2d83237','true','access.token.claim'),('979b1235-3a99-4397-97cb-b157f2d83237','middle_name','claim.name'),('979b1235-3a99-4397-97cb-b157f2d83237','true','id.token.claim'),('979b1235-3a99-4397-97cb-b157f2d83237','String','jsonType.label'),('979b1235-3a99-4397-97cb-b157f2d83237','middleName','user.attribute'),('979b1235-3a99-4397-97cb-b157f2d83237','true','userinfo.token.claim'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','true','access.token.claim'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','birthdate','claim.name'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','true','id.token.claim'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','String','jsonType.label'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','birthdate','user.attribute'),('98ba3186-b89b-47a7-bb2c-ef360b095aeb','true','userinfo.token.claim'),('9918f62f-52fc-4212-a576-7447112c9ce7','true','access.token.claim'),('9918f62f-52fc-4212-a576-7447112c9ce7','true','id.token.claim'),('9918f62f-52fc-4212-a576-7447112c9ce7','country','user.attribute.country'),('9918f62f-52fc-4212-a576-7447112c9ce7','formatted','user.attribute.formatted'),('9918f62f-52fc-4212-a576-7447112c9ce7','locality','user.attribute.locality'),('9918f62f-52fc-4212-a576-7447112c9ce7','postal_code','user.attribute.postal_code'),('9918f62f-52fc-4212-a576-7447112c9ce7','region','user.attribute.region'),('9918f62f-52fc-4212-a576-7447112c9ce7','street','user.attribute.street'),('9918f62f-52fc-4212-a576-7447112c9ce7','true','userinfo.token.claim'),('994f26ad-6927-459b-986c-bff932e37ed6','true','access.token.claim'),('994f26ad-6927-459b-986c-bff932e37ed6','picture','claim.name'),('994f26ad-6927-459b-986c-bff932e37ed6','true','id.token.claim'),('994f26ad-6927-459b-986c-bff932e37ed6','String','jsonType.label'),('994f26ad-6927-459b-986c-bff932e37ed6','picture','user.attribute'),('994f26ad-6927-459b-986c-bff932e37ed6','true','userinfo.token.claim'),('995c25c0-3cf8-48b1-bd92-55a3360c9cd1','true','access.token.claim'),('995c25c0-3cf8-48b1-bd92-55a3360c9cd1','true','id.token.claim'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','true','access.token.claim'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','zoneinfo','claim.name'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','true','id.token.claim'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','String','jsonType.label'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','zoneinfo','user.attribute'),('996672b0-0f47-4c9a-a5c3-d9ecf2621a29','true','userinfo.token.claim'),('9a36f24f-34a9-42be-9231-e158c4d2dd51','true','access.token.claim'),('9a36f24f-34a9-42be-9231-e158c4d2dd51','groups','claim.name'),('9a36f24f-34a9-42be-9231-e158c4d2dd51','true','id.token.claim'),('9a36f24f-34a9-42be-9231-e158c4d2dd51','String','jsonType.label'),('9a36f24f-34a9-42be-9231-e158c4d2dd51','true','multivalued'),('9a36f24f-34a9-42be-9231-e158c4d2dd51','foo','user.attribute'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','true','access.token.claim'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','email_verified','claim.name'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','true','id.token.claim'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','boolean','jsonType.label'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','emailVerified','user.attribute'),('9b390a1a-f431-4d3e-8d56-99cb30e93b0b','true','userinfo.token.claim'),('9c26d8ad-4301-47a7-965b-db36df4f2573','true','access.token.claim'),('9c26d8ad-4301-47a7-965b-db36df4f2573','gender','claim.name'),('9c26d8ad-4301-47a7-965b-db36df4f2573','true','id.token.claim'),('9c26d8ad-4301-47a7-965b-db36df4f2573','String','jsonType.label'),('9c26d8ad-4301-47a7-965b-db36df4f2573','gender','user.attribute'),('9c26d8ad-4301-47a7-965b-db36df4f2573','true','userinfo.token.claim'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','true','access.token.claim'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','profile','claim.name'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','true','id.token.claim'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','String','jsonType.label'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','profile','user.attribute'),('9de21c59-5076-4a27-a3bf-f9b391493dfe','true','userinfo.token.claim'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','true','access.token.claim'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','locale','claim.name'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','true','id.token.claim'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','String','jsonType.label'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','locale','user.attribute'),('9dfe7f58-0a84-419b-8752-0ac848ce5ac2','true','userinfo.token.claim'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','true','access.token.claim'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','phone_number_verified','claim.name'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','true','id.token.claim'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','boolean','jsonType.label'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','phoneNumberVerified','user.attribute'),('9e7f3f75-bbe2-4bd4-843c-10f8a2bfb253','true','userinfo.token.claim'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','true','access.token.claim'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','locale','claim.name'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','true','id.token.claim'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','String','jsonType.label'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','locale','user.attribute'),('a0da7e4e-ef5b-4a7c-b145-194cd0db2f00','true','userinfo.token.claim'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','true','access.token.claim'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','middle_name','claim.name'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','true','id.token.claim'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','String','jsonType.label'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','middleName','user.attribute'),('a7cbdf2e-f7de-48e2-a1c4-a12e8698d094','true','userinfo.token.claim'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','true','access.token.claim'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','email','claim.name'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','true','id.token.claim'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','String','jsonType.label'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','email','user.attribute'),('aa0b3d12-235d-4663-9142-dbd9a4f4f9e6','true','userinfo.token.claim'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','true','access.token.claim'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','nickname','claim.name'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','true','id.token.claim'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','String','jsonType.label'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','nickname','user.attribute'),('ac5c381e-e565-4e54-87e6-1a0029ada93a','true','userinfo.token.claim'),('af68c77f-20b8-49b6-8c0f-7fb61e95425b','Role','attribute.name'),('af68c77f-20b8-49b6-8c0f-7fb61e95425b','Basic','attribute.nameformat'),('af68c77f-20b8-49b6-8c0f-7fb61e95425b','false','single'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','true','access.token.claim'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','groups','claim.name'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','true','id.token.claim'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','String','jsonType.label'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','true','multivalued'),('afddaa92-c0b1-46f5-a14c-ab4a56199bb5','foo','user.attribute'),('b037a829-c28c-41f2-ba9f-6ff740d48151','true','access.token.claim'),('b037a829-c28c-41f2-ba9f-6ff740d48151','true','id.token.claim'),('b037a829-c28c-41f2-ba9f-6ff740d48151','country','user.attribute.country'),('b037a829-c28c-41f2-ba9f-6ff740d48151','formatted','user.attribute.formatted'),('b037a829-c28c-41f2-ba9f-6ff740d48151','locality','user.attribute.locality'),('b037a829-c28c-41f2-ba9f-6ff740d48151','postal_code','user.attribute.postal_code'),('b037a829-c28c-41f2-ba9f-6ff740d48151','region','user.attribute.region'),('b037a829-c28c-41f2-ba9f-6ff740d48151','street','user.attribute.street'),('b037a829-c28c-41f2-ba9f-6ff740d48151','true','userinfo.token.claim'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','true','access.token.claim'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','email','claim.name'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','true','id.token.claim'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','String','jsonType.label'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','email','user.attribute'),('b49e8dea-673f-46dd-a7f5-80683a43ddab','true','userinfo.token.claim'),('b626d316-ffd5-472b-b1dc-6047ec002192','true','access.token.claim'),('b626d316-ffd5-472b-b1dc-6047ec002192','email_verified','claim.name'),('b626d316-ffd5-472b-b1dc-6047ec002192','true','id.token.claim'),('b626d316-ffd5-472b-b1dc-6047ec002192','boolean','jsonType.label'),('b626d316-ffd5-472b-b1dc-6047ec002192','emailVerified','user.attribute'),('b626d316-ffd5-472b-b1dc-6047ec002192','true','userinfo.token.claim'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','true','access.token.claim'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','email','claim.name'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','true','id.token.claim'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','String','jsonType.label'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','email','user.attribute'),('b8b9d1b2-03ac-418e-b84b-4f805312ad48','true','userinfo.token.claim'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','true','access.token.claim'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','clientHost','claim.name'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','true','id.token.claim'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','String','jsonType.label'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','clientHost','user.session.note'),('b9b442b3-6fe2-4635-8ab6-394c19941e3a','true','userinfo.token.claim'),('ba81aeb8-b691-407c-8327-b846c3530a0b','true','access.token.claim'),('ba81aeb8-b691-407c-8327-b846c3530a0b','preferred_username','claim.name'),('ba81aeb8-b691-407c-8327-b846c3530a0b','true','id.token.claim'),('ba81aeb8-b691-407c-8327-b846c3530a0b','String','jsonType.label'),('ba81aeb8-b691-407c-8327-b846c3530a0b','username','user.attribute'),('ba81aeb8-b691-407c-8327-b846c3530a0b','true','userinfo.token.claim'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','true','access.token.claim'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','updated_at','claim.name'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','true','id.token.claim'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','long','jsonType.label'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','updatedAt','user.attribute'),('bcccd04b-15a7-4d8d-aec9-07c82b730d54','true','userinfo.token.claim'),('bd372980-0083-4a3a-b218-5f32893bfe0c','true','access.token.claim'),('bd372980-0083-4a3a-b218-5f32893bfe0c','realm_access.roles','claim.name'),('bd372980-0083-4a3a-b218-5f32893bfe0c','String','jsonType.label'),('bd372980-0083-4a3a-b218-5f32893bfe0c','true','multivalued'),('bd372980-0083-4a3a-b218-5f32893bfe0c','foo','user.attribute'),('bdc592bd-dc77-4370-86b4-71f56f30f516','true','access.token.claim'),('bdc592bd-dc77-4370-86b4-71f56f30f516','preferred_username','claim.name'),('bdc592bd-dc77-4370-86b4-71f56f30f516','true','id.token.claim'),('bdc592bd-dc77-4370-86b4-71f56f30f516','String','jsonType.label'),('bdc592bd-dc77-4370-86b4-71f56f30f516','username','user.attribute'),('bdc592bd-dc77-4370-86b4-71f56f30f516','true','userinfo.token.claim'),('bde911d0-4116-4621-b7b4-8976c20e40f6','true','access.token.claim'),('bde911d0-4116-4621-b7b4-8976c20e40f6','website','claim.name'),('bde911d0-4116-4621-b7b4-8976c20e40f6','true','id.token.claim'),('bde911d0-4116-4621-b7b4-8976c20e40f6','String','jsonType.label'),('bde911d0-4116-4621-b7b4-8976c20e40f6','website','user.attribute'),('bde911d0-4116-4621-b7b4-8976c20e40f6','true','userinfo.token.claim'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','true','access.token.claim'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','zoneinfo','claim.name'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','true','id.token.claim'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','String','jsonType.label'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','zoneinfo','user.attribute'),('be6137ee-1300-4cf4-939a-a2c791dbf63c','true','userinfo.token.claim'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','true','access.token.claim'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','locale','claim.name'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','true','id.token.claim'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','String','jsonType.label'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','locale','user.attribute'),('be84aa33-c390-4abd-9de3-31dc0cbdca14','true','userinfo.token.claim'),('bf84244d-8692-4fc1-80e8-84edcc97fc85','true','access.token.claim'),('bf84244d-8692-4fc1-80e8-84edcc97fc85','realm_access.roles','claim.name'),('bf84244d-8692-4fc1-80e8-84edcc97fc85','String','jsonType.label'),('bf84244d-8692-4fc1-80e8-84edcc97fc85','true','multivalued'),('bf84244d-8692-4fc1-80e8-84edcc97fc85','foo','user.attribute'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','true','access.token.claim'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','birthdate','claim.name'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','true','id.token.claim'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','String','jsonType.label'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','birthdate','user.attribute'),('c0e6d3da-5a14-4fb2-afe8-fe941ff808c2','true','userinfo.token.claim'),('c2ad2ee5-a59e-48f6-90c4-4243dd856d52','Role','attribute.name'),('c2ad2ee5-a59e-48f6-90c4-4243dd856d52','Basic','attribute.nameformat'),('c2ad2ee5-a59e-48f6-90c4-4243dd856d52','false','single'),('c750ae00-982c-4318-ab26-5d66c5e40833','true','access.token.claim'),('c750ae00-982c-4318-ab26-5d66c5e40833','preferred_username','claim.name'),('c750ae00-982c-4318-ab26-5d66c5e40833','true','id.token.claim'),('c750ae00-982c-4318-ab26-5d66c5e40833','String','jsonType.label'),('c750ae00-982c-4318-ab26-5d66c5e40833','username','user.attribute'),('c750ae00-982c-4318-ab26-5d66c5e40833','true','userinfo.token.claim'),('c82627a0-619d-42fe-9442-bcb445c21ec1','true','access.token.claim'),('c82627a0-619d-42fe-9442-bcb445c21ec1','profile','claim.name'),('c82627a0-619d-42fe-9442-bcb445c21ec1','true','id.token.claim'),('c82627a0-619d-42fe-9442-bcb445c21ec1','String','jsonType.label'),('c82627a0-619d-42fe-9442-bcb445c21ec1','profile','user.attribute'),('c82627a0-619d-42fe-9442-bcb445c21ec1','true','userinfo.token.claim'),('cb1246ec-92a6-4622-b2f8-054e9291c891','true','access.token.claim'),('cb1246ec-92a6-4622-b2f8-054e9291c891','family_name','claim.name'),('cb1246ec-92a6-4622-b2f8-054e9291c891','true','id.token.claim'),('cb1246ec-92a6-4622-b2f8-054e9291c891','String','jsonType.label'),('cb1246ec-92a6-4622-b2f8-054e9291c891','lastName','user.attribute'),('cb1246ec-92a6-4622-b2f8-054e9291c891','true','userinfo.token.claim'),('cb581f5c-3032-4611-85a2-995274baf754','true','access.token.claim'),('cb581f5c-3032-4611-85a2-995274baf754','phone_number','claim.name'),('cb581f5c-3032-4611-85a2-995274baf754','true','id.token.claim'),('cb581f5c-3032-4611-85a2-995274baf754','String','jsonType.label'),('cb581f5c-3032-4611-85a2-995274baf754','phoneNumber','user.attribute'),('cb581f5c-3032-4611-85a2-995274baf754','true','userinfo.token.claim'),('d17f29c9-5341-4447-afae-73789e43dc0d','true','access.token.claim'),('d17f29c9-5341-4447-afae-73789e43dc0d','picture','claim.name'),('d17f29c9-5341-4447-afae-73789e43dc0d','true','id.token.claim'),('d17f29c9-5341-4447-afae-73789e43dc0d','String','jsonType.label'),('d17f29c9-5341-4447-afae-73789e43dc0d','picture','user.attribute'),('d17f29c9-5341-4447-afae-73789e43dc0d','true','userinfo.token.claim'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','true','access.token.claim'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','upn','claim.name'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','true','id.token.claim'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','String','jsonType.label'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','username','user.attribute'),('d263aa23-2a7d-4797-9a75-f91247bc3b78','true','userinfo.token.claim'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','true','access.token.claim'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','phone_number','claim.name'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','true','id.token.claim'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','String','jsonType.label'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','phoneNumber','user.attribute'),('d3f42e68-e1cd-4842-b507-8d9b01f05577','true','userinfo.token.claim'),('d40e34cb-9c52-4134-8447-270562d55872','true','access.token.claim'),('d40e34cb-9c52-4134-8447-270562d55872','nickname','claim.name'),('d40e34cb-9c52-4134-8447-270562d55872','true','id.token.claim'),('d40e34cb-9c52-4134-8447-270562d55872','String','jsonType.label'),('d40e34cb-9c52-4134-8447-270562d55872','nickname','user.attribute'),('d40e34cb-9c52-4134-8447-270562d55872','true','userinfo.token.claim'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','true','access.token.claim'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','phone_number','claim.name'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','true','id.token.claim'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','String','jsonType.label'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','phoneNumber','user.attribute'),('d446ec1f-dd98-4b83-84e1-01f66548ba36','true','userinfo.token.claim'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','true','access.token.claim'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','website','claim.name'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','true','id.token.claim'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','String','jsonType.label'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','website','user.attribute'),('d660a040-e1fd-481e-9fc7-1ce1c4929c05','true','userinfo.token.claim'),('d8b0c492-b30c-4bc2-a6e4-f257e1a8ad0f','true','access.token.claim'),('d8b0c492-b30c-4bc2-a6e4-f257e1a8ad0f','true','id.token.claim'),('d8b0c492-b30c-4bc2-a6e4-f257e1a8ad0f','true','userinfo.token.claim'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','true','access.token.claim'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','preferred_username','claim.name'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','true','id.token.claim'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','String','jsonType.label'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','username','user.attribute'),('da25b7e7-9ef0-4db1-931d-0a5f02f10b90','true','userinfo.token.claim'),('dab28720-e801-4c54-ac92-36ae68b33fbd','true','access.token.claim'),('dab28720-e801-4c54-ac92-36ae68b33fbd','groups','claim.name'),('dab28720-e801-4c54-ac92-36ae68b33fbd','true','id.token.claim'),('dab28720-e801-4c54-ac92-36ae68b33fbd','String','jsonType.label'),('dab28720-e801-4c54-ac92-36ae68b33fbd','true','multivalued'),('dab28720-e801-4c54-ac92-36ae68b33fbd','foo','user.attribute'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','true','access.token.claim'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','family_name','claim.name'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','true','id.token.claim'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','String','jsonType.label'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','lastName','user.attribute'),('dcd54b27-08e5-430f-b139-4738ab5ba7e7','true','userinfo.token.claim'),('e0c84ce1-5d84-4f3f-984b-a4548bf8680e','true','access.token.claim'),('e0c84ce1-5d84-4f3f-984b-a4548bf8680e','realm_access.roles','claim.name'),('e0c84ce1-5d84-4f3f-984b-a4548bf8680e','String','jsonType.label'),('e0c84ce1-5d84-4f3f-984b-a4548bf8680e','true','multivalued'),('e0c84ce1-5d84-4f3f-984b-a4548bf8680e','foo','user.attribute'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','true','access.token.claim'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','email_verified','claim.name'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','true','id.token.claim'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','boolean','jsonType.label'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','emailVerified','user.attribute'),('e14060a8-e238-4f27-ae1b-e8fc7965ba89','true','userinfo.token.claim'),('e22216fb-5df0-46e8-a87a-3e01c9668c92','Role','attribute.name'),('e22216fb-5df0-46e8-a87a-3e01c9668c92','Basic','attribute.nameformat'),('e22216fb-5df0-46e8-a87a-3e01c9668c92','false','single'),('e2ee663c-7c94-4674-9745-b8355ed2effb','true','access.token.claim'),('e2ee663c-7c94-4674-9745-b8355ed2effb','true','id.token.claim'),('e2ee663c-7c94-4674-9745-b8355ed2effb','true','userinfo.token.claim'),('ed407c5d-e416-4448-9e4e-6470217e57a8','true','access.token.claim'),('ed407c5d-e416-4448-9e4e-6470217e57a8','email','claim.name'),('ed407c5d-e416-4448-9e4e-6470217e57a8','true','id.token.claim'),('ed407c5d-e416-4448-9e4e-6470217e57a8','String','jsonType.label'),('ed407c5d-e416-4448-9e4e-6470217e57a8','email','user.attribute'),('ed407c5d-e416-4448-9e4e-6470217e57a8','true','userinfo.token.claim'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','true','access.token.claim'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','email','claim.name'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','true','id.token.claim'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','String','jsonType.label'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','email','user.attribute'),('edc0ec98-5f0d-4023-a940-fe51e1d7ed26','true','userinfo.token.claim'),('f0071257-0664-4190-8a23-7abe509da68f','true','access.token.claim'),('f0071257-0664-4190-8a23-7abe509da68f','preferred_username','claim.name'),('f0071257-0664-4190-8a23-7abe509da68f','true','id.token.claim'),('f0071257-0664-4190-8a23-7abe509da68f','String','jsonType.label'),('f0071257-0664-4190-8a23-7abe509da68f','username','user.attribute'),('f0071257-0664-4190-8a23-7abe509da68f','true','userinfo.token.claim'),('f114fa03-02d4-414d-ae83-38f562391ec3','true','access.token.claim'),('f114fa03-02d4-414d-ae83-38f562391ec3','phone_number_verified','claim.name'),('f114fa03-02d4-414d-ae83-38f562391ec3','true','id.token.claim'),('f114fa03-02d4-414d-ae83-38f562391ec3','boolean','jsonType.label'),('f114fa03-02d4-414d-ae83-38f562391ec3','phoneNumberVerified','user.attribute'),('f114fa03-02d4-414d-ae83-38f562391ec3','true','userinfo.token.claim'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','true','access.token.claim'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','profile','claim.name'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','true','id.token.claim'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','String','jsonType.label'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','profile','user.attribute'),('f4013ef0-79c5-40fe-a92a-b1894016cf01','true','userinfo.token.claim'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','true','access.token.claim'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','groups','claim.name'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','true','id.token.claim'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','String','jsonType.label'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','true','multivalued'),('f53d6270-ef5b-4771-8e58-327aed8cdaeb','foo','user.attribute'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','true','access.token.claim'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','middle_name','claim.name'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','true','id.token.claim'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','String','jsonType.label'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','middleName','user.attribute'),('f72aa1f2-1cf4-48e7-965c-25aaf0bfa211','true','userinfo.token.claim');
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
INSERT INTO `REALM` VALUES ('a8877546-78d2-4601-8f66-d697f8ccfc92',60,300,60,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'master',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','31f83365-eec7-46f2-9b8b-f03c9ca86cef',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','e5723d2b-c5e4-4796-a9d2-1bc6982380af','99dcc0c2-8a9c-4903-921f-f8bf2eab6dcb','895deb31-422c-43ea-9dd4-32bc5d6b2580','d082c940-4417-418f-994c-c07f76625a47','8432467c-defb-4a33-888d-826370c03377',31536000,_binary '\0',900,_binary '',_binary '\0','03551875-5296-4e9d-aef4-c6b0ef57eeea',0,_binary '\0',0,0,'6468e080-697a-4707-896b-65458c2b98e8'),('org1',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org1',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','757fc947-d67d-4599-ba72-e818acf2dfc1',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','5124f66b-ecd4-4baa-878d-8b8d4400f917','ba5d6ab3-f2b8-4511-aca5-3e30d07cbd51','437a964c-28f5-41e9-a0e6-e395ab788c0d','90fdaef3-cedf-4d77-a1ec-9183dc954842','af61eb67-da11-4721-9394-6041f0f9d3b8',31536000,_binary '\0',900,_binary '',_binary '\0','be8e2ee2-5cc0-4f3a-912b-005d5f80dff9',0,_binary '\0',0,0,'774ff92f-c133-4b8a-99c9-2ae9ec0e0742'),('org2',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org2',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','fd1fde1a-a19f-4b2f-aa74-ce5dc4f8e154',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','1a2f8750-0081-4ca3-936c-1d7e4f9415f3','e1e10c6f-4a43-48e7-9d40-83090d59b99e','b8508d95-2f48-42de-8706-f1d8ce839899','652fe730-4da3-46a3-b44a-aaa366be34d9','91f6c8cd-d0ca-4db4-b781-40a2aab081ba',31536000,_binary '\0',900,_binary '',_binary '\0','56585575-d8d6-4a30-82e7-da7996f8abe5',0,_binary '\0',0,0,'7de2e517-be2f-4af5-9f95-1d6afcd02199'),('org3',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org3',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','7a336edd-031b-4bf3-b3e4-11d97c9f279f',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','cc4d6866-e31b-46dd-a92c-177725fa77e0','63694787-6af7-4b0b-9cfd-7da74a01c905','3a489046-eea9-4d50-8c8f-b5bbbeb7b05c','b8b6f7b8-3f93-48cb-a539-6e1520b0677a','e996790a-3fab-43be-905e-2fcf128ddc4d',31536000,_binary '\0',900,_binary '',_binary '\0','7a78d3ed-0e83-46fd-9fe5-6b3b9abd2c0c',0,_binary '\0',0,0,'51fa3cc2-e960-458b-b4c3-03d9eb8051ba'),('org4',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org4',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','c7558bbf-2654-4e6a-ae73-f65023330268',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','a4828e43-aa62-477f-813d-8f9ef667bd8f','c352a557-e6af-4c38-8c1e-c202ce213ca9','1d8a3894-ca87-405f-bc60-742e65baef08','f477aa4e-777c-49b8-a19a-f1f9fd0b06d1','5ed25393-4bf0-4251-adb2-c907ce65e8cb',31536000,_binary '\0',900,_binary '',_binary '\0','a4dd9d9b-236e-49f7-af6a-216fb8f836f1',0,_binary '\0',0,0,'265620b2-0155-4dce-ac68-0624f684e3c9'),('org5',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org5',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','c8814dd3-da21-47a5-aaad-1d2160aa3d6e',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','2072f6f0-2206-450b-9564-60ac31836592','7b62e2d3-b82c-40bf-afdf-958125ddbfbd','83c190a0-fba5-441e-a3b9-aeeaf861a52d','48fc7826-e231-4395-90be-561bcb914096','1a28f11d-8f40-4b3b-80c5-4cd0d3c78566',31536000,_binary '\0',900,_binary '',_binary '\0','bf7e7b18-1fe6-4732-b28d-7381dd9cd5c7',0,_binary '\0',0,0,'9a79594f-25f8-494c-9f22-97d5b66edacf');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','a8877546-78d2-4601-8f66-d697f8ccfc92','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','a8877546-78d2-4601-8f66-d697f8ccfc92','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','a8877546-78d2-4601-8f66-d697f8ccfc92','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','a8877546-78d2-4601-8f66-d697f8ccfc92','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','a8877546-78d2-4601-8f66-d697f8ccfc92','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','a8877546-78d2-4601-8f66-d697f8ccfc92','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','a8877546-78d2-4601-8f66-d697f8ccfc92','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','a8877546-78d2-4601-8f66-d697f8ccfc92','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','a8877546-78d2-4601-8f66-d697f8ccfc92','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('maxDeltaTimeSeconds','a8877546-78d2-4601-8f66-d697f8ccfc92','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','a8877546-78d2-4601-8f66-d697f8ccfc92','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('minimumQuickLoginWaitSeconds','a8877546-78d2-4601-8f66-d697f8ccfc92','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','a8877546-78d2-4601-8f66-d697f8ccfc92','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','a8877546-78d2-4601-8f66-d697f8ccfc92','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','a8877546-78d2-4601-8f66-d697f8ccfc92','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','a8877546-78d2-4601-8f66-d697f8ccfc92','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','a8877546-78d2-4601-8f66-d697f8ccfc92','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','a8877546-78d2-4601-8f66-d697f8ccfc92','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','a8877546-78d2-4601-8f66-d697f8ccfc92','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','a8877546-78d2-4601-8f66-d697f8ccfc92','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','a8877546-78d2-4601-8f66-d697f8ccfc92','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','a8877546-78d2-4601-8f66-d697f8ccfc92','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','a8877546-78d2-4601-8f66-d697f8ccfc92','0'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','a8877546-78d2-4601-8f66-d697f8ccfc92','keycloak'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','a8877546-78d2-4601-8f66-d697f8ccfc92',''),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','a8877546-78d2-4601-8f66-d697f8ccfc92','ES256'),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','a8877546-78d2-4601-8f66-d697f8ccfc92','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','a8877546-78d2-4601-8f66-d697f8ccfc92','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','a8877546-78d2-4601-8f66-d697f8ccfc92',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.strictTransportSecurity','a8877546-78d2-4601-8f66-d697f8ccfc92','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','a8877546-78d2-4601-8f66-d697f8ccfc92','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','a8877546-78d2-4601-8f66-d697f8ccfc92','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','a8877546-78d2-4601-8f66-d697f8ccfc92','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','a8877546-78d2-4601-8f66-d697f8ccfc92','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('a8877546-78d2-4601-8f66-d697f8ccfc92','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',_binary '',_binary '','a8877546-78d2-4601-8f66-d697f8ccfc92'),('password','password',_binary '',_binary '','org1'),('password','password',_binary '',_binary '','org2'),('password','password',_binary '',_binary '','org3'),('password','password',_binary '',_binary '','org4'),('password','password',_binary '',_binary '','org5');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
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
INSERT INTO `REDIRECT_URIS` VALUES ('0107e684-1e28-42bd-8a3b-9651db47bc37','/realms/master/account/*'),('0413273e-892c-44ea-898e-fd49d1201ba1','/realms/org3/account/*'),('100c225a-cba1-4fd9-a795-02ba2f13ff0a','/admin/master/console/*'),('2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1','/*'),('498fc338-cab0-4248-86e6-bc4321b81af5','/*'),('54a7148b-b941-4113-9ce2-c0521889afc8','/realms/master/account/*'),('576651bb-ff24-48e9-bfa7-4285938bf1da','/*'),('60799ffb-f3e9-4588-9f1f-08775cc0ee2d','/*'),('616c44d6-74e5-43f0-a01b-65d99c137f45','/realms/org5/account/*'),('84793b3e-0e65-4cba-b0eb-8dd33eeeef64','/realms/org2/account/*'),('8e1aa514-01d1-4d71-b984-1f533b776280','/*'),('90915a43-585e-46cc-b9d0-f3ad91c639e8','/realms/org3/account/*'),('9112c067-7289-4b17-b9dc-6a3d6f7e80a7','/realms/org4/account/*'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','/admin/org3/console/*'),('9afada1b-e972-45be-b9bf-86b4eb758408','/realms/org2/account/*'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','/admin/org1/console/*'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','/realms/org1/account/*'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','/admin/org2/console/*'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','/realms/org4/account/*'),('d03f4768-32f0-44ae-aac8-e22bc7213192','/realms/org5/account/*'),('d4ea4ad6-8ab4-48bb-9fa7-d2be237d12d1','/*'),('da53c749-9153-4bc2-8a6c-a5439f78164f','/realms/org1/account/*'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','/admin/org4/console/*'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','/admin/org5/console/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('05df6a99-2bc1-4ff8-9a20-dbf23f3ca518','UPDATE_PASSWORD','Update Password','org1',_binary '',_binary '\0','UPDATE_PASSWORD',30),('065b624e-51e2-49fd-9673-b872c0a64f06','VERIFY_EMAIL','Verify Email','org4',_binary '',_binary '\0','VERIFY_EMAIL',50),('0818ab3a-933d-495d-8237-9fb2bdce70a4','UPDATE_PROFILE','Update Profile','org3',_binary '',_binary '\0','UPDATE_PROFILE',40),('0de9e17b-3e17-4668-a7ed-8a9f92603ded','webauthn-register','Webauthn Register','org5',_binary '',_binary '\0','webauthn-register',70),('10a0ff43-1ff4-4a57-9678-d66adf315566','delete_account','Delete Account','org2',_binary '\0',_binary '\0','delete_account',60),('19984777-f51c-445d-8e39-a89bf24c5d70','UPDATE_PROFILE','Update Profile','org4',_binary '',_binary '\0','UPDATE_PROFILE',40),('1afda2d8-d6a8-44ed-9a01-de6aaa85c9a6','VERIFY_EMAIL','Verify Email','org1',_binary '',_binary '\0','VERIFY_EMAIL',50),('1bbe527f-f201-4011-9789-89de851810b6','webauthn-register-passwordless','Webauthn Register Passwordless','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','webauthn-register-passwordless',80),('2186bd0d-84f6-4842-91b8-4d51c7714306','delete_account','Delete Account','org1',_binary '\0',_binary '\0','delete_account',60),('219a324c-f42d-443e-aaf8-f9c6d22179f6','CONFIGURE_TOTP','Configure OTP','org3',_binary '',_binary '\0','CONFIGURE_TOTP',10),('21a4ff5a-17c1-441c-9ce6-1aeaf4f8948d','webauthn-register','Webauthn Register','org2',_binary '',_binary '\0','webauthn-register',70),('23c32fea-eac2-4f0c-a7d3-831ff10b898d','CONFIGURE_TOTP','Configure OTP','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','CONFIGURE_TOTP',10),('2633f32c-065b-4617-8c1f-456e51cb65a0','update_user_locale','Update User Locale','org1',_binary '',_binary '\0','update_user_locale',1000),('340f54ac-060c-4bfa-aefd-bfe7b3ea0121','UPDATE_PROFILE','Update Profile','org2',_binary '',_binary '\0','UPDATE_PROFILE',40),('3c083d9e-fe4f-4d48-8849-073561c61a3e','webauthn-register-passwordless','Webauthn Register Passwordless','org1',_binary '',_binary '\0','webauthn-register-passwordless',80),('42e4df31-958f-442f-83ba-d9d1d65ddc25','webauthn-register','Webauthn Register','org4',_binary '',_binary '\0','webauthn-register',70),('5059bab7-1121-45c4-b13f-75f2e0f8cbe0','delete_account','Delete Account','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0',_binary '\0','delete_account',60),('66107da7-69c0-41ba-9072-ebc1b08b25a3','CONFIGURE_TOTP','Configure OTP','org2',_binary '',_binary '\0','CONFIGURE_TOTP',10),('67b55336-62b9-4eae-8095-63a6260765cd','update_user_locale','Update User Locale','org2',_binary '',_binary '\0','update_user_locale',1000),('6af0678d-6800-4263-b274-8383d7c7ec13','webauthn-register','Webauthn Register','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','webauthn-register',70),('6c567cbe-641b-464e-9e13-24d92293796c','webauthn-register-passwordless','Webauthn Register Passwordless','org2',_binary '',_binary '\0','webauthn-register-passwordless',80),('6e714c98-c6d2-4d8a-a37d-ba6c4c60fed6','delete_account','Delete Account','org5',_binary '\0',_binary '\0','delete_account',60),('73f191a1-d633-43ad-aadc-bbdf804bf08d','delete_account','Delete Account','org3',_binary '\0',_binary '\0','delete_account',60),('770c4d55-30fd-46a6-8716-4d4fbb40e2bd','UPDATE_PROFILE','Update Profile','org1',_binary '',_binary '\0','UPDATE_PROFILE',40),('7a582bb9-0f61-4ddb-80b2-91c6b1e9437e','VERIFY_EMAIL','Verify Email','org2',_binary '',_binary '\0','VERIFY_EMAIL',50),('7c27e2cd-3f80-4a86-816e-3a27149a16ff','CONFIGURE_TOTP','Configure OTP','org5',_binary '',_binary '\0','CONFIGURE_TOTP',10),('820d121f-9842-4d49-abd5-59330e42e6dc','update_user_locale','Update User Locale','org3',_binary '',_binary '\0','update_user_locale',1000),('846be1c6-8955-4cd3-9b43-d59150e361e1','terms_and_conditions','Terms and Conditions','org1',_binary '\0',_binary '\0','terms_and_conditions',20),('847ee066-90b4-4eb9-b039-a854d381f60a','UPDATE_PASSWORD','Update Password','org4',_binary '',_binary '\0','UPDATE_PASSWORD',30),('8748fbf9-11ce-453f-bb77-40ccd9d353ce','VERIFY_EMAIL','Verify Email','org3',_binary '',_binary '\0','VERIFY_EMAIL',50),('8d22c3d2-150a-4ae0-ac46-b06bf78103e8','webauthn-register','Webauthn Register','org1',_binary '',_binary '\0','webauthn-register',70),('8d9a9399-b538-4054-a8cc-d6687eb7ac5c','CONFIGURE_TOTP','Configure OTP','org4',_binary '',_binary '\0','CONFIGURE_TOTP',10),('97115463-2d9a-4869-bdb8-b43f4d25a9c1','terms_and_conditions','Terms and Conditions','org4',_binary '\0',_binary '\0','terms_and_conditions',20),('9d8a70e1-83aa-4629-a134-c42e98141e63','terms_and_conditions','Terms and Conditions','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '\0',_binary '\0','terms_and_conditions',20),('a019ec66-aeb0-4911-8874-e60ac92543db','UPDATE_PASSWORD','Update Password','org3',_binary '',_binary '\0','UPDATE_PASSWORD',30),('a80a8d87-7e36-4129-8398-08756feff65a','webauthn-register-passwordless','Webauthn Register Passwordless','org3',_binary '',_binary '\0','webauthn-register-passwordless',80),('aa92b26f-92a8-4f45-809b-d3d0136c1a38','UPDATE_PASSWORD','Update Password','org2',_binary '',_binary '\0','UPDATE_PASSWORD',30),('aa9b375d-47d6-4dc1-82e0-7b28b411f582','UPDATE_PROFILE','Update Profile','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','UPDATE_PROFILE',40),('acdab17b-fab1-48d7-9efb-048dd68910b8','webauthn-register','Webauthn Register','org3',_binary '',_binary '\0','webauthn-register',70),('b5a6e9a3-e266-4414-8d55-a4ad7ce10949','webauthn-register-passwordless','Webauthn Register Passwordless','org5',_binary '',_binary '\0','webauthn-register-passwordless',80),('bd9702f7-73f3-4326-95e2-77ad24d9ae87','CONFIGURE_TOTP','Configure OTP','org1',_binary '',_binary '\0','CONFIGURE_TOTP',10),('c7d07af2-f138-4d49-b0b9-990fffcbb796','delete_account','Delete Account','org4',_binary '\0',_binary '\0','delete_account',60),('c97d8ceb-b4e9-4b94-94c3-4cc350e401b0','VERIFY_EMAIL','Verify Email','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','VERIFY_EMAIL',50),('cb0670b5-e3d3-4fda-9c9b-66733b4708cd','UPDATE_PASSWORD','Update Password','org5',_binary '',_binary '\0','UPDATE_PASSWORD',30),('cfb7af04-04c9-4029-9d20-3ca07aec91b2','webauthn-register-passwordless','Webauthn Register Passwordless','org4',_binary '',_binary '\0','webauthn-register-passwordless',80),('d5a9de15-1fe3-48e8-845f-aeeabb14b311','terms_and_conditions','Terms and Conditions','org2',_binary '\0',_binary '\0','terms_and_conditions',20),('e2af707b-90f8-4ce3-a796-c6b4756bd1e2','update_user_locale','Update User Locale','org4',_binary '',_binary '\0','update_user_locale',1000),('e3d5179b-b53a-479e-b491-3fdbef1dd85e','terms_and_conditions','Terms and Conditions','org5',_binary '\0',_binary '\0','terms_and_conditions',20),('e8f2cd02-f411-45fa-8610-d5e54614df49','terms_and_conditions','Terms and Conditions','org3',_binary '\0',_binary '\0','terms_and_conditions',20),('ea8a0c85-e095-4e8a-a4f3-6ffc32a23fe8','update_user_locale','Update User Locale','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','update_user_locale',1000),('eb98855b-2940-471e-9a2f-577d13929ab3','UPDATE_PASSWORD','Update Password','a8877546-78d2-4601-8f66-d697f8ccfc92',_binary '',_binary '\0','UPDATE_PASSWORD',30),('f14dc3f9-0095-492c-baa9-a00d63bde04f','UPDATE_PROFILE','Update Profile','org5',_binary '',_binary '\0','UPDATE_PROFILE',40),('f9c3e7ed-0cc2-4a3f-85a6-99e52b955dea','VERIFY_EMAIL','Verify Email','org5',_binary '',_binary '\0','VERIFY_EMAIL',50),('fc6d9d5b-6333-412a-955b-01222b6fb61a','update_user_locale','Update User Locale','org5',_binary '',_binary '\0','update_user_locale',1000);
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('00b2cc19-8f08-4b1a-a98c-034b0657a617','99a3f609-6874-4fe6-8ec2-aa5409b7afaf','kind','organization'),('074c5153-918e-4719-9de3-583d35179de3','3b884bb2-036e-4039-acce-8fcbf1e8edbe','kind','organization'),('081b8fca-f860-4b31-bb91-ea3a7ffd4ed9','41999579-9836-4f8a-b2f2-dd8b2b48d61a','kind','workspace'),('0c9966fd-c273-4c6d-b09b-7ad2e716c9d9','46be0cf7-9cf7-49fd-b9b3-00697eb181d2','kind','workspace'),('136177e8-5422-4f2d-a834-31f6f34c247e','b080ee8b-14a9-42bf-af4f-f6abac6a92cf','kind','organization'),('1622b079-697d-4094-80e7-46910ed14e6d','950ad99b-32e2-4257-b0ec-19c6c820bd51','kind','workspace'),('19f02af4-5772-483f-a979-7af62a56e06f','7c08b9f2-77f6-4448-845b-4fab9c56f2a9','kind','workspace'),('29e28716-1a53-4e38-a7ef-e5000824cb9d','0076d9d4-8fc2-41f3-aef0-20f45bbbd6b2','kind','workspace'),('2e89e9df-04ce-4540-89fa-78f35d87e5f2','e5483f14-5855-4976-bfac-8fecab1f610c','kind','organization'),('33cf5034-8862-46a2-abd7-f41eb6a18574','5cae315f-957c-41d5-9155-9bb7b955bb98','kind','workspace'),('38a3d9de-25ea-42be-8af0-44d41aeb5fd2','d58c0547-9edc-43a0-90a8-6ef23f870730','kind','workspace'),('38a855f8-5d43-4aa1-8b01-57982663fc4f','ade84f9c-dcad-4e90-8c74-e1242250f845','kind','workspace'),('3ab60b70-f5d0-4620-aeac-beee41886d0f','95a9a9ba-0584-4f47-adff-521019e5b671','kind','workspace'),('46a236c2-656e-4d66-9534-4926a5f7e3c2','dd1ec34a-e672-4eac-917e-610f672f133d','kind','organization'),('4964c85c-6cb8-4e5b-96b0-5b376be84c05','4dce2b36-3a76-440b-914d-8f567abb2cb0','kind','workspace'),('4a302829-c4fb-4406-9c70-299855a5297d','e64e0e6e-45a7-4925-8e5d-2ab99c8c9264','kind','workspace'),('4cebecc6-9be5-43cb-8374-8b27a9d15e30','ea8d0a21-1170-4154-82c6-45798083817c','kind','workspace'),('4d2feac6-6db2-402f-a7d0-c274c693145f','623385aa-0230-4564-bcc4-91fecad85ddf','kind','organization'),('530f6b34-a633-497c-9740-d37a2f0c9e59','5baa1626-6bca-45a7-8bda-7bfefe8a9298','kind','organization'),('55539d87-2ed0-4293-96be-c6e250d45fbb','7fdfb7ec-9d6c-4067-a44a-70dbc2863a42','kind','workspace'),('5557dfca-3ba5-4d66-b24e-6d92620c38d2','62444f8d-fa4f-4957-8ec8-e81417ac5b73','kind','workspace'),('63d1b9e4-d46d-4b07-b223-2cb71458a67b','563acf43-45df-450f-8842-58cecd2550ba','kind','organization'),('6688e89e-b87a-4c5d-b403-9e395642d571','1833f8dc-3043-4e1d-826a-de0f28b85159','kind','workspace'),('6afd2e7e-bbf4-4fde-a93e-832f9905e0bf','ebdf628f-b58b-45c4-ad3e-55ed1dafe24b','kind','workspace'),('7002de73-58ca-4bd7-842c-aa0c7668a248','7796b73c-1df5-43a9-97ab-24da090db75f','kind','workspace'),('81e6db8c-c067-4632-bb87-fb50eda5f788','1b52e66a-90a1-4d55-b8ba-dfa317606d88','kind','workspace'),('852af181-a13c-4adc-8ef1-51c7754ff652','f38cc6dc-87c2-457d-9395-c9ac962b906c','kind','workspace'),('8a9b42d9-361b-4de0-aaf9-d3eb96e78fa6','aba93f08-21e9-48dd-8d1b-908af9847081','kind','workspace'),('8af9153f-1f41-4e13-bbe9-149c298b566d','7d7411ef-7d70-4b64-b21b-9ef9783c69c5','kind','workspace'),('8b701ecc-7813-41a1-8338-907111bb5e03','bd71a142-3ea3-4aa0-bc94-0997777be7fc','kind','workspace'),('8b8380fd-06d3-438c-8d5e-0a1e18c64f1b','dd4230e0-ae9f-4e77-bc54-2ec1f08c1a7f','kind','workspace'),('8c3dedea-c1b4-4724-a0b5-eb9e05c03f00','6aad9a0d-d85d-4a49-8067-70bb3909fdfc','kind','workspace'),('8ed63a2c-1ae9-4b11-8578-03b7e746c589','4f2929cc-7c6b-441c-920d-c5fee61543aa','kind','workspace'),('9223071c-ee5a-4824-b2ed-80a67e376965','0784f974-32a7-4ad2-b360-da5426daee66','kind','workspace'),('9b67db43-2e42-46c1-9fe4-5f4ca4301e82','694ceae1-18dc-49db-8816-405166110947','kind','workspace'),('a44c4a9e-204c-42b8-92b6-416efb10ce2a','c0b9f084-497d-45a5-8b02-b30a4f880e01','kind','workspace'),('a52765f3-2790-4d47-ba42-79b9be175e0c','3d298263-3811-4faa-87a7-f02549d5d58c','kind','workspace'),('a7a75216-7a03-46d7-83fd-99419c5c47ae','4de73f5b-566a-425d-82f0-babfa2ee56a3','kind','organization'),('b041df4f-b2a5-460e-8950-868525ee9825','935203ce-86a2-466f-a946-d292cc7a7313','kind','workspace'),('b1ff4d70-a34f-48db-ae6f-47b446633754','6dab20a9-5026-4995-9b18-df607596f36f','kind','organization'),('b2d013bf-b5ee-40b2-8bf4-2d4ae380e974','cacb980f-9dbc-432a-b9e6-d9190db7f831','kind','workspace'),('b49abdc9-049d-4dc4-8fa1-d6b8878a5592','5cc83723-b1eb-49ca-aadc-d48465ddff86','kind','workspace'),('c561d80b-7436-4a0b-aafd-e98bde637d8d','7e0a8edb-4556-44fd-8ea3-787780381c82','kind','workspace'),('cfcafc7e-eb6a-4951-8478-44854d01e303','c0a56635-54ac-40f6-b4e7-fa2d76e8079a','kind','organization'),('d012c736-662c-4679-bf10-73e0fbdcdb41','fdab3c8f-5944-409f-a311-4c49d4672888','kind','workspace'),('d12a5006-3cbd-43f8-9102-c3d6c17e3a24','a4207752-be71-4c0c-877e-25a5559f66fb','kind','workspace'),('dbac7a70-01ad-4f4c-92b9-28633dc1bf99','12824a67-64b9-442b-b619-5f5f0508b87e','kind','workspace'),('dc9d9ba8-2afb-409a-8f71-3284cc974e7c','fb4e200e-5ed5-44fb-8db9-4f7a242efeb0','kind','workspace'),('dcec7f20-4841-4747-b80f-0e58fa78beab','62befced-52d7-4cef-a00d-e8916bc0d68a','kind','workspace'),('e2d69648-bf58-4d08-81b9-2a06fb838cc0','a0fbba49-a06a-4271-a936-0665f51337bf','kind','workspace'),('e3511041-e6f8-4f26-a003-3b6bef9efe79','ac5ea540-f1cb-4466-a773-2a8e3471bf1e','kind','workspace'),('e5f21cc2-e9ac-4253-91be-20dda5c3758e','54966569-c013-48bb-bd19-1ea8bb7a936a','kind','organization'),('eeec91be-026e-483e-b4b5-09d89c444ecb','f58fae44-5e81-480e-9527-0a6e06968d26','kind','organization'),('ef9a9821-8ec5-4ae7-a5ba-96f179366912','15f93b96-e3ef-4df3-8da4-f3b1f94b9252','kind','workspace'),('f160fed5-1d44-4d69-a87d-3bbf02199deb','77e5467f-5446-43c9-9628-1dfcf45d6186','kind','organization'),('f1bb78b8-e635-47ac-9bf9-c88831db5792','a15324ce-44ec-4878-9aaf-486f7d1e2461','kind','workspace'),('f57942f9-dca9-438a-95b8-12ffd4c99a69','a87a2845-d06c-4379-9be5-39f6fa35b5bc','kind','workspace'),('f8cc81a2-dc9f-46ae-b59a-9331e4462f24','02da046e-c89c-4d1f-8901-5806992aa88c','kind','workspace'),('fb237bc0-b267-474d-9a16-dbc374a0daf4','a6af2db4-76e0-4c0a-945f-f2e29fab4257','kind','organization'),('fe79bd10-b5c4-4099-881a-6b7a56a62cfc','0a7c3458-50a0-421f-a6e6-89759991bed5','kind','workspace');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('0107e684-1e28-42bd-8a3b-9651db47bc37','50a9b38c-e47a-4d57-b07a-2dac0402eab0'),('0107e684-1e28-42bd-8a3b-9651db47bc37','69c0bdcc-a663-4eec-b71b-033f8351c5a9'),('0413273e-892c-44ea-898e-fd49d1201ba1','69c5ca3d-f123-4862-8173-6b68566c6dbe'),('0413273e-892c-44ea-898e-fd49d1201ba1','df59ead3-c445-49b9-9759-fd211e76f73d'),('9afada1b-e972-45be-b9bf-86b4eb758408','a84c1d5c-a414-4197-8b42-10ce56aea450'),('9afada1b-e972-45be-b9bf-86b4eb758408','c76d0f7f-95b0-457f-8e5f-6eb3220eed6a'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','6a31ad4a-6fb9-4d33-8bdc-7096a1ee0627'),('af2d5b42-919f-47d6-b8c3-b742f1e68abc','7d71b1b9-a3ed-4c98-9bcd-22983a05e1ef'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','1f299531-d580-47f8-9e37-c7ea5f47c48b'),('b8ea01a9-5003-4757-ba31-db1ba938e9e5','3d155595-8318-4d12-9902-5eaed1d98f4d'),('d03f4768-32f0-44ae-aac8-e22bc7213192','e0c81a2f-cc84-497c-bceb-b29c5efe5fd3'),('d03f4768-32f0-44ae-aac8-e22bc7213192','f11646af-28cc-4e20-8238-1059d9c56d09');
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
INSERT INTO `USER_ENTITY` VALUES ('0c7db272-75ef-47e0-acf3-2810ca6ddd47',NULL,'7d74216c-f5f7-4e1d-bd33-bfa4ea9c8126',_binary '\0',_binary '',NULL,NULL,NULL,'org1','service-account-org1-workspaces',1700534199079,'2e20a65f-d2b0-4ec5-ba1d-603797d78bd6',0),('10f1218e-f6ee-41d2-b78a-8c3614c699ad',NULL,'84ab58a1-048b-40ba-ac37-0c310388fbf9',_binary '\0',_binary '',NULL,NULL,NULL,'org4','service-account-org4-workspaces',1700534299008,'e84e1e63-e0fe-4a05-ba92-a52078fe8291',0),('17985b46-8512-429d-a393-68ed7e707bf0','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org2','admin',1700534237887,NULL,0),('1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org3','admin',1700534270492,NULL,0),('2bca6b04-7c55-4409-9dd3-eda27e0ed385','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org5','admin',1700534331926,NULL,0),('2c1da741-01aa-4dae-824d-3a5e986699fe','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org4','admin',1700534300412,NULL,0),('633ad29a-5943-4f7d-8f98-c3983c0346b9',NULL,'b7cdd65b-435a-4801-8740-6fa9baf6654f',_binary '\0',_binary '',NULL,NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','admin',1700534157043,NULL,0),('7be80e73-5862-4205-a35f-59078264ea6d',NULL,'01375733-fac9-41d5-9b87-77d955ed3987',_binary '\0',_binary '',NULL,NULL,NULL,'org3','service-account-org3-workspaces',1700534269294,'938bd1fc-040b-4721-b954-063f4fa33739',0),('9ca1940b-1b3e-4f96-a15e-f012535b4437',NULL,'614f4943-5cfd-4ad4-b58d-6ddb0b70fa33',_binary '\0',_binary '',NULL,NULL,NULL,'org2','service-account-org2-workspaces',1700534235910,'7716f2a9-f3f0-4de4-8b5f-44f748ab9282',0),('dbaf8376-fb3d-49d8-8c25-3f29a12a3160','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org1','admin',1700534201002,NULL,0),('f9913dd3-690d-4b66-8d01-a0863131b713',NULL,'8d2e43c7-06f3-4f1b-b352-1587f0b7a31b',_binary '\0',_binary '',NULL,NULL,NULL,'a8877546-78d2-4601-8f66-d697f8ccfc92','service-account-_platform',1700534160708,'a8f8eae8-605c-4796-8598-dd02e8ff03f3',0),('fe6fa754-db80-4589-8276-6e1ab8ffda4e',NULL,'c8d3f34c-0504-48b7-bc46-8d729475b093',_binary '\0',_binary '',NULL,NULL,NULL,'org5','service-account-org5-workspaces',1700534330626,'c2dd697e-cba2-4eea-8cbf-f415be94f49f',0);
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
INSERT INTO `USER_REQUIRED_ACTION` VALUES ('17985b46-8512-429d-a393-68ed7e707bf0','UPDATE_PROFILE'),('1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','UPDATE_PROFILE'),('2bca6b04-7c55-4409-9dd3-eda27e0ed385','UPDATE_PROFILE'),('2c1da741-01aa-4dae-824d-3a5e986699fe','UPDATE_PROFILE'),('dbaf8376-fb3d-49d8-8c25-3f29a12a3160','UPDATE_PROFILE');
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('02da046e-c89c-4d1f-8901-5806992aa88c','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('05fe66dc-390d-4dcb-bed1-91d5ee0bd05c','7be80e73-5862-4205-a35f-59078264ea6d'),('0784f974-32a7-4ad2-b360-da5426daee66','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('12824a67-64b9-442b-b619-5f5f0508b87e','17985b46-8512-429d-a393-68ed7e707bf0'),('1b52e66a-90a1-4d55-b8ba-dfa317606d88','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('265620b2-0155-4dce-ac68-0624f684e3c9','10f1218e-f6ee-41d2-b78a-8c3614c699ad'),('265620b2-0155-4dce-ac68-0624f684e3c9','2c1da741-01aa-4dae-824d-3a5e986699fe'),('46be0cf7-9cf7-49fd-b9b3-00697eb181d2','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('4dce2b36-3a76-440b-914d-8f567abb2cb0','17985b46-8512-429d-a393-68ed7e707bf0'),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('51fa3cc2-e960-458b-b4c3-03d9eb8051ba','7be80e73-5862-4205-a35f-59078264ea6d'),('563acf43-45df-450f-8842-58cecd2550ba','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('5cc83723-b1eb-49ca-aadc-d48465ddff86','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('62444f8d-fa4f-4957-8ec8-e81417ac5b73','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('62befced-52d7-4cef-a00d-e8916bc0d68a','17985b46-8512-429d-a393-68ed7e707bf0'),('6468e080-697a-4707-896b-65458c2b98e8','633ad29a-5943-4f7d-8f98-c3983c0346b9'),('6468e080-697a-4707-896b-65458c2b98e8','f9913dd3-690d-4b66-8d01-a0863131b713'),('6dab20a9-5026-4995-9b18-df607596f36f','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('744b41bc-4a5d-4c5c-9321-3aa74555ee22','9ca1940b-1b3e-4f96-a15e-f012535b4437'),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','0c7db272-75ef-47e0-acf3-2810ca6ddd47'),('774ff92f-c133-4b8a-99c9-2ae9ec0e0742','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('77e5467f-5446-43c9-9628-1dfcf45d6186','17985b46-8512-429d-a393-68ed7e707bf0'),('7de2e517-be2f-4af5-9f95-1d6afcd02199','17985b46-8512-429d-a393-68ed7e707bf0'),('7de2e517-be2f-4af5-9f95-1d6afcd02199','9ca1940b-1b3e-4f96-a15e-f012535b4437'),('7fdfb7ec-9d6c-4067-a44a-70dbc2863a42','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('88054132-1593-4402-a348-d2cbced7b3a2','fe6fa754-db80-4589-8276-6e1ab8ffda4e'),('935203ce-86a2-466f-a946-d292cc7a7313','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('9a79594f-25f8-494c-9f22-97d5b66edacf','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('9a79594f-25f8-494c-9f22-97d5b66edacf','fe6fa754-db80-4589-8276-6e1ab8ffda4e'),('a0fbba49-a06a-4271-a936-0665f51337bf','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('ade84f9c-dcad-4e90-8c74-e1242250f845','2c1da741-01aa-4dae-824d-3a5e986699fe'),('b080ee8b-14a9-42bf-af4f-f6abac6a92cf','2c1da741-01aa-4dae-824d-3a5e986699fe'),('b2da97f1-55aa-44d6-b555-a6cd97792763','633ad29a-5943-4f7d-8f98-c3983c0346b9'),('b2da97f1-55aa-44d6-b555-a6cd97792763','f9913dd3-690d-4b66-8d01-a0863131b713'),('cee5241b-12de-456a-abe3-7f9a0d250637','0c7db272-75ef-47e0-acf3-2810ca6ddd47'),('e53cd3df-d461-4d89-b66b-7b8f793c5e61','10f1218e-f6ee-41d2-b78a-8c3614c699ad'),('e5483f14-5855-4976-bfac-8fecab1f610c','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('ebdf628f-b58b-45c4-ad3e-55ed1dafe24b','2c1da741-01aa-4dae-824d-3a5e986699fe'),('fdab3c8f-5944-409f-a311-4c49d4672888','2c1da741-01aa-4dae-824d-3a5e986699fe');
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
INSERT INTO `WEB_ORIGINS` VALUES ('100c225a-cba1-4fd9-a795-02ba2f13ff0a','+'),('952f12d8-2acf-4c3e-bcc2-1b7be91dd83d','+'),('a0fc511d-0774-4443-9eb9-8e0f9ff4834d','+'),('b27fc26e-6f1d-4cdf-a57b-41ad2622b8b0','+'),('dc9ed70d-0033-4fd9-88bd-6515687ea7dc','+'),('f0d24cf3-6681-43f9-a774-b5b0f152c960','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2023-11-21 11:36:09','dummy','2023-11-21 11:36:09','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2023-11-21 11:36:01.000000',NULL),('2','DATA_UPDATE_STOP','0','2023-11-21 11:36:01.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2023-11-21 11:36:36','unittest-user01','2023-11-21 11:36:46','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2023-11-21 11:37:13','unittest-user01','2023-11-21 11:37:19','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2023-11-21 11:37:47','unittest-user01','2023-11-21 11:37:51','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2023-11-21 11:38:17','unittest-user01','2023-11-21 11:38:21','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2023-11-21 11:38:48','unittest-user01','2023-11-21 11:38:52','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_X0CJI8S662ZSYCTOY6OU','PF_ORG_X0CJI8S662ZSYCTOY6OU','AfEmj55JBNvumO6zX50Z7uGA1lz57TMa6PMYRUNUlUoA7jdbEUSJrvouobH/9BIU','2023-11-21 11:36:41','unittest-user01','2023-11-21 11:39:19','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_70BKAUERK9AO5D4XOPBQ','PF_ORG_70BKAUERK9AO5D4XOPBQ','uHJaSEaJ4wNtC+bnqwqigDi24uCz3ND/9KWq0HGj5Jih/n7eF54VH1KB6X13kwZw','2023-11-21 11:37:18','unittest-user01','2023-11-21 11:39:19','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_EAZU3FN1CUT3SFW3ZYS2','PF_ORG_EAZU3FN1CUT3SFW3ZYS2','+JeXWNw0xd89LJxJo5cD+sycytedzeeADpm+vs/yT9+U9Zpu4OKrPC9Wa1ESNDsO','2023-11-21 11:37:50','unittest-user01','2023-11-21 11:39:19','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_6J4ABT9C7W4J1927P9QA','PF_ORG_6J4ABT9C7W4J1927P9QA','oqByB1b1/lBes0ogUgIL0YH+zrX7rZOCAes6ymLmI4GAlff/Cd6CITsdq0wbCiYg','2023-11-21 11:38:20','unittest-user01','2023-11-21 11:39:19','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_FDFGS3LTJR33OUL4GNW7','PF_ORG_FDFGS3LTJR33OUL4GNW7','h70fBll5Z0zjZMVw1MR4rDMAklLfXSLRp+0n66ZBQAYXLjU0KTl1M37iyGI8wbUz','2023-11-21 11:38:52','unittest-user01','2023-11-21 11:39:19','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2023-11-21 11:35:59','system','2023-11-21 11:35:59','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2023-11-21 11:36:09','dummy','2023-11-21 11:36:09','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2023-11-21 11:35:59','system','2023-11-21 11:36:02','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2023-11-21 11:35:59','system','2023-11-21 11:36:02','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2023-11-21 11:35:59','system','2023-11-21 11:36:02','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2023-11-21 11:36:09','dummy','2023-11-21 11:36:09','dummy'),('_default','platform.roles',1000,'2023-11-21 11:35:59','system','2023-11-21 11:35:59','system'),('_default','platform.users',10000,'2023-11-21 11:35:59','system','2023-11-21 11:35:59','system'),('_default','platform.workspaces',100,'2023-11-21 11:35:59','system','2023-11-21 11:35:59','system');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2023-11-21 11:35:58','1.7.0','2023-11-21 11:35:58','1.7.0'),(2,'1.3.0','SUCCEED',NULL,'2023-11-21 11:36:01','1.7.0','2023-11-21 11:36:01','1.7.0'),(3,'1.5.0','START',NULL,'2023-11-21 11:36:01','1.7.0','2023-11-21 11:36:01','1.7.0'),(4,'1.5.0','SUCCEED',NULL,'2023-11-21 11:36:01','1.7.0','2023-11-21 11:36:01','1.7.0'),(5,'1.5.2','START',NULL,'2023-11-21 11:36:01','1.7.0','2023-11-21 11:36:01','1.7.0'),(6,'1.5.2','SUCCEED',NULL,'2023-11-21 11:36:01','1.7.0','2023-11-21 11:36:01','1.7.0'),(7,'1.6.0','START',NULL,'2023-11-21 11:36:01','1.7.0','2023-11-21 11:36:01','1.7.0'),(8,'1.6.0','SUCCEED',NULL,'2023-11-21 11:36:02','1.7.0','2023-11-21 11:36:02','1.7.0'),(9,'1.7.0','START',NULL,'2023-11-21 11:36:02','1.7.0','2023-11-21 11:36:02','1.7.0'),(10,'1.7.0','SUCCEED',NULL,'2023-11-21 11:36:02','1.7.0','2023-11-21 11:36:02','1.7.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"a8f8eae8-605c-4796-8598-dd02e8ff03f3\", \"TOKEN_CHECK_CLIENT_SECRET\": \"8BDOMnLsaE8XYuunAGAwym9VfIbZduwh\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"56298f08-af78-4b33-9491-4389ec26f209\"}','2023-11-21 11:36:01','system','2023-11-21 11:36:01','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.7.0','2023-11-21 11:35:09','system','2023-11-21 11:36:02','1.7.0');
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
-- Current Database: `PF_ORG_X0CJI8S662ZSYCTOY6OU`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_X0CJI8S662ZSYCTOY6OU` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_X0CJI8S662ZSYCTOY6OU`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL
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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"498fc338-cab0-4248-86e6-bc4321b81af5\", \"USER_TOKEN_CLIENT_SECRET\": \"5DGCk4lRA0p7rB3oevStVSOYU1TwCWWm\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"2e20a65f-d2b0-4ec5-ba1d-603797d78bd6\", \"INTERNAL_API_CLIENT_SECRET\": \"korsu1cqIUDtRwXJearQpxImA6tT5j4w\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"1de5b8f3-931d-4ce7-bda0-427432898190\", \"TOKEN_CHECK_CLIENT_SECRET\": \"5kKfX3f8qKDo3vsUw9dreO9YGBCxg2CB\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"84cdd591-bea5-4aea-ba75-13df79253868\"}','2023-11-21 11:36:41','unittest-user01','2023-11-21 11:36:41','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:36:46','dbaf8376-fb3d-49d8-8c25-3f29a12a3160','2023-11-21 11:36:46','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:36:55','dbaf8376-fb3d-49d8-8c25-3f29a12a3160','2023-11-21 11:36:55','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:37:04','dbaf8376-fb3d-49d8-8c25-3f29a12a3160','2023-11-21 11:37:04','dbaf8376-fb3d-49d8-8c25-3f29a12a3160');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_RO4TZ3QK559XI11D142C','PF_WS_RO4TZ3QK559XI11D142C','bMKF18/O5EWLzl35nSZ8eqdmcs2WY06rsQuqrp11JgJaz3JCoVE86M7Zq09ZW3i2','2023-11-21 11:36:46','dbaf8376-fb3d-49d8-8c25-3f29a12a3160','2023-11-21 11:39:19','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('org1','ws2','unittest-platform-db',3306,'PF_WS_TB21DPGV2J3O68O4VSSP','PF_WS_TB21DPGV2J3O68O4VSSP','JpXDT88MsU4hjj4wDL0UPIbXcNrfIVwOB0TOAjJRN/uwHr7IgnBmuvrRynZiDFSw','2023-11-21 11:36:55','dbaf8376-fb3d-49d8-8c25-3f29a12a3160','2023-11-21 11:39:19','dbaf8376-fb3d-49d8-8c25-3f29a12a3160'),('org1','ws3','unittest-platform-db',3306,'PF_WS_TPPNBQZRBCTD5ZAOEJPZ','PF_WS_TPPNBQZRBCTD5ZAOEJPZ','bsX+IzLxH7Fs+4OIXMG9OAFz4Es1Cr57F0AEt7FzlaJJUGWnFDftdRGt0TvvHvRP','2023-11-21 11:37:04','dbaf8376-fb3d-49d8-8c25-3f29a12a3160','2023-11-21 11:39:19','dbaf8376-fb3d-49d8-8c25-3f29a12a3160');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_RO4TZ3QK559XI11D142C`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_RO4TZ3QK559XI11D142C` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_RO4TZ3QK559XI11D142C`;

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
-- Current Database: `PF_WS_TB21DPGV2J3O68O4VSSP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_TB21DPGV2J3O68O4VSSP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_TB21DPGV2J3O68O4VSSP`;

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
-- Current Database: `PF_WS_TPPNBQZRBCTD5ZAOEJPZ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_TPPNBQZRBCTD5ZAOEJPZ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_TPPNBQZRBCTD5ZAOEJPZ`;

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
-- Current Database: `PF_ORG_70BKAUERK9AO5D4XOPBQ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_70BKAUERK9AO5D4XOPBQ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_70BKAUERK9AO5D4XOPBQ`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL
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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"60799ffb-f3e9-4588-9f1f-08775cc0ee2d\", \"USER_TOKEN_CLIENT_SECRET\": \"91PNgcbHrYMraztMx1GM8jGfTbHcWiw6\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"7716f2a9-f3f0-4de4-8b5f-44f748ab9282\", \"INTERNAL_API_CLIENT_SECRET\": \"8am6HztM2EA6fL1Ic5vxaJ8NNEyOvZP7\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"c7a3d742-da9e-420e-a8a7-eb2aa95aac83\", \"TOKEN_CHECK_CLIENT_SECRET\": \"7VGy9OFfePUSn0DeTkauCItOnds3VOte\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"0d322164-ad54-4855-b3d6-62113bded474\"}','2023-11-21 11:37:18','unittest-user01','2023-11-21 11:37:18','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:37:19','17985b46-8512-429d-a393-68ed7e707bf0','2023-11-21 11:37:19','17985b46-8512-429d-a393-68ed7e707bf0'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:37:28','17985b46-8512-429d-a393-68ed7e707bf0','2023-11-21 11:37:28','17985b46-8512-429d-a393-68ed7e707bf0'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:37:38','17985b46-8512-429d-a393-68ed7e707bf0','2023-11-21 11:37:38','17985b46-8512-429d-a393-68ed7e707bf0');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_C72V4WA6IF6CVSWHVRH6','PF_WS_C72V4WA6IF6CVSWHVRH6','HQ9P0H1pUehZi28yQDa+tO4mE9ARA+tP+dF8nHJOOmSKtFlPvXDveWTG8X9boY4+','2023-11-21 11:37:19','17985b46-8512-429d-a393-68ed7e707bf0','2023-11-21 11:39:19','17985b46-8512-429d-a393-68ed7e707bf0'),('org2','ws2','unittest-platform-db',3306,'PF_WS_5GUD3B5MAZS2A3CSVWNE','PF_WS_5GUD3B5MAZS2A3CSVWNE','9f3ax+eTd+wOyCqc07n0W66Gut3xIqSQjK2XBCYBi4OZ+px7ugU2b+AzxGwsvKCu','2023-11-21 11:37:28','17985b46-8512-429d-a393-68ed7e707bf0','2023-11-21 11:39:19','17985b46-8512-429d-a393-68ed7e707bf0'),('org2','ws3','unittest-platform-db',3306,'PF_WS_GPBXNULGNFBZPYSD2ZQP','PF_WS_GPBXNULGNFBZPYSD2ZQP','uoaZDyTxVk1UNLDx3aHLxGm8dBx96uepp0aI7YfhZh6gjoHQ8an2wN4RHXgfvNE5','2023-11-21 11:37:39','17985b46-8512-429d-a393-68ed7e707bf0','2023-11-21 11:39:19','17985b46-8512-429d-a393-68ed7e707bf0');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_C72V4WA6IF6CVSWHVRH6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_C72V4WA6IF6CVSWHVRH6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_C72V4WA6IF6CVSWHVRH6`;

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
-- Current Database: `PF_WS_5GUD3B5MAZS2A3CSVWNE`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_5GUD3B5MAZS2A3CSVWNE` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_5GUD3B5MAZS2A3CSVWNE`;

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
-- Current Database: `PF_WS_GPBXNULGNFBZPYSD2ZQP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_GPBXNULGNFBZPYSD2ZQP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_GPBXNULGNFBZPYSD2ZQP`;

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
-- Current Database: `PF_ORG_EAZU3FN1CUT3SFW3ZYS2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_EAZU3FN1CUT3SFW3ZYS2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_EAZU3FN1CUT3SFW3ZYS2`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL
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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"8e1aa514-01d1-4d71-b984-1f533b776280\", \"USER_TOKEN_CLIENT_SECRET\": \"FpAPNCZJULu228bUCybcxTRgETBP7kzH\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"938bd1fc-040b-4721-b954-063f4fa33739\", \"INTERNAL_API_CLIENT_SECRET\": \"nwefnBFgRVabf2C0IvbyYwSE1LQClxHn\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"9b54a677-f83d-4176-9bd1-6bc428f78077\", \"TOKEN_CHECK_CLIENT_SECRET\": \"oXhzkV3GGTpNdwwf1AMCNBKRPtFeQe7O\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"8116d826-05ea-4e90-ba26-011ab786de7e\"}','2023-11-21 11:37:50','unittest-user01','2023-11-21 11:37:50','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:37:51','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','2023-11-21 11:37:51','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:38:00','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','2023-11-21 11:38:00','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:38:08','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','2023-11-21 11:38:08','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_NP92Q0C467O7ULTV5I4A','PF_WS_NP92Q0C467O7ULTV5I4A','d1CObEdymP+ckeu+umsZLhusXAx/26PNSiNgEmzKOEVz+Qb0SACWOKZt1U1cN9j9','2023-11-21 11:37:51','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','2023-11-21 11:39:19','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('org3','ws2','unittest-platform-db',3306,'PF_WS_ODD3OELOBEBN0JBGP0L7','PF_WS_ODD3OELOBEBN0JBGP0L7','LIaQgVrPCKvBWtOOe/YEexUFQA70SSE/tTU/VeIl5vriLQ1ZBeZGXPuzioBvnLgH','2023-11-21 11:38:00','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','2023-11-21 11:39:19','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814'),('org3','ws3','unittest-platform-db',3306,'PF_WS_TUMJUNP6LACCVC2DVTUQ','PF_WS_TUMJUNP6LACCVC2DVTUQ','P2GqPBtUSbD94zcgL6Gwh+gbfijn2/7RwRaQO/eIJYka9q0rvqs2U2cUTf5NpK5e','2023-11-21 11:38:09','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814','2023-11-21 11:39:19','1b9e62db-6ab1-4e64-bfc6-f3b8c32f8814');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_NP92Q0C467O7ULTV5I4A`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_NP92Q0C467O7ULTV5I4A` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_NP92Q0C467O7ULTV5I4A`;

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
-- Current Database: `PF_WS_ODD3OELOBEBN0JBGP0L7`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_ODD3OELOBEBN0JBGP0L7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_ODD3OELOBEBN0JBGP0L7`;

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
-- Current Database: `PF_WS_TUMJUNP6LACCVC2DVTUQ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_TUMJUNP6LACCVC2DVTUQ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_TUMJUNP6LACCVC2DVTUQ`;

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
-- Current Database: `PF_ORG_6J4ABT9C7W4J1927P9QA`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_6J4ABT9C7W4J1927P9QA` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_6J4ABT9C7W4J1927P9QA`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL
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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"576651bb-ff24-48e9-bfa7-4285938bf1da\", \"USER_TOKEN_CLIENT_SECRET\": \"OCRxwXBms6vWumTJOSGZUFpqD3KM9BQJ\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"e84e1e63-e0fe-4a05-ba92-a52078fe8291\", \"INTERNAL_API_CLIENT_SECRET\": \"PogXPNtMwrpNBmscF0pvk725OrXyYS4n\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"a827a3f3-cd0d-4d6b-9b76-1ea7da0c8d1c\", \"TOKEN_CHECK_CLIENT_SECRET\": \"FI8kwXsWXLoFPu6jvfkrEfFAzDF4yBvn\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"91fd74c7-1fbb-410a-83c4-b19d280c4878\"}','2023-11-21 11:38:21','unittest-user01','2023-11-21 11:38:21','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:38:21','2c1da741-01aa-4dae-824d-3a5e986699fe','2023-11-21 11:38:21','2c1da741-01aa-4dae-824d-3a5e986699fe'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:38:30','2c1da741-01aa-4dae-824d-3a5e986699fe','2023-11-21 11:38:30','2c1da741-01aa-4dae-824d-3a5e986699fe'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:38:39','2c1da741-01aa-4dae-824d-3a5e986699fe','2023-11-21 11:38:39','2c1da741-01aa-4dae-824d-3a5e986699fe');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_A79WF2C23PCJFZXLKR9I','PF_WS_A79WF2C23PCJFZXLKR9I','ZtY2hqD9PSwW7zofAdMG7V+oZG3+4sWCZaiNSyRI6JJZQTNF7xhrMn2RXsySyN09','2023-11-21 11:38:22','2c1da741-01aa-4dae-824d-3a5e986699fe','2023-11-21 11:39:19','2c1da741-01aa-4dae-824d-3a5e986699fe'),('org4','ws2','unittest-platform-db',3306,'PF_WS_T70GOV80Q210W9TZN1A4','PF_WS_T70GOV80Q210W9TZN1A4','DzTKe9D/7Ga94L99fdqfuAcaOHebLP3AGB/cgmuLQZH8zlHXx95TdUzwoiwV6p1l','2023-11-21 11:38:30','2c1da741-01aa-4dae-824d-3a5e986699fe','2023-11-21 11:39:19','2c1da741-01aa-4dae-824d-3a5e986699fe'),('org4','ws3','unittest-platform-db',3306,'PF_WS_2FFBZWWD8IV5CE1ZXC60','PF_WS_2FFBZWWD8IV5CE1ZXC60','UynE6n8NJFi9FlDUjtRS4JYnWyoDeKAhEMLgZmGSW1dSan2WJtoalGoU/FajjV7m','2023-11-21 11:38:39','2c1da741-01aa-4dae-824d-3a5e986699fe','2023-11-21 11:39:19','2c1da741-01aa-4dae-824d-3a5e986699fe');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_A79WF2C23PCJFZXLKR9I`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_A79WF2C23PCJFZXLKR9I` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_A79WF2C23PCJFZXLKR9I`;

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
-- Current Database: `PF_WS_T70GOV80Q210W9TZN1A4`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_T70GOV80Q210W9TZN1A4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_T70GOV80Q210W9TZN1A4`;

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
-- Current Database: `PF_WS_2FFBZWWD8IV5CE1ZXC60`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_2FFBZWWD8IV5CE1ZXC60` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_2FFBZWWD8IV5CE1ZXC60`;

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
-- Current Database: `PF_ORG_FDFGS3LTJR33OUL4GNW7`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_FDFGS3LTJR33OUL4GNW7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_FDFGS3LTJR33OUL4GNW7`;

--
-- Table structure for table `M_SMTP_SERVER`
--

DROP TABLE IF EXISTS `M_SMTP_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `M_SMTP_SERVER` (
  `SMTP_PORT` int(11) DEFAULT NULL,
  `SEND_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SEND_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_TO` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `REPLAY_NAME` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `ENVELOPE_FROM` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `SSL_ENABLE` tinyint(1) DEFAULT 0,
  `START_TLS_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_ENABLE` tinyint(1) DEFAULT 0,
  `AUTHENTICATION_USER` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `AUTHENTICATION_PASSWORD` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `CREATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `LAST_UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LAST_UPDATE_USER` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL
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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"2e72fb14-04ca-46b7-a0ea-e5baa7f25bc1\", \"USER_TOKEN_CLIENT_SECRET\": \"yevqasCcGPUJCA85FAwtZtzzx0Yeg9zl\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"c2dd697e-cba2-4eea-8cbf-f415be94f49f\", \"INTERNAL_API_CLIENT_SECRET\": \"wT7a3OBtVJWumA30yej77q8Bfd2jgLSI\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"431e75fb-37ba-4b29-9bb0-1c8caad5690b\", \"TOKEN_CHECK_CLIENT_SECRET\": \"udoyTBgbajITKTfmCfggvmjeJQ3HjJFa\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"029c5bde-e604-419a-97d3-4ca2228de1be\"}','2023-11-21 11:38:52','unittest-user01','2023-11-21 11:38:52','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:38:53','2bca6b04-7c55-4409-9dd3-eda27e0ed385','2023-11-21 11:38:53','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:39:01','2bca6b04-7c55-4409-9dd3-eda27e0ed385','2023-11-21 11:39:01','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2023-11-21 11:39:10','2bca6b04-7c55-4409-9dd3-eda27e0ed385','2023-11-21 11:39:10','2bca6b04-7c55-4409-9dd3-eda27e0ed385');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_LMXY3N10HKENQL4Z0JOJ','PF_WS_LMXY3N10HKENQL4Z0JOJ','1i2OHir22cOTb50N5P0DyTBwFoTfj7xghyopJ393OWw2j+cYN9oyrpauKJje0I/g','2023-11-21 11:38:53','2bca6b04-7c55-4409-9dd3-eda27e0ed385','2023-11-21 11:39:19','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('org5','ws2','unittest-platform-db',3306,'PF_WS_VTHYTQA9MU5FZF15U7OK','PF_WS_VTHYTQA9MU5FZF15U7OK','me60Up1aBFjZMNkaStWTbh3IXaQFN6DJuCWtyOwIFvLFD5J9jOmSwncepl6LBgoI','2023-11-21 11:39:02','2bca6b04-7c55-4409-9dd3-eda27e0ed385','2023-11-21 11:39:19','2bca6b04-7c55-4409-9dd3-eda27e0ed385'),('org5','ws3','unittest-platform-db',3306,'PF_WS_703062DNM57OUBG09MOI','PF_WS_703062DNM57OUBG09MOI','YoeGAvuoscTF6cF+bcfbXqehXAF+/JoFrkWEiMY6DQpJkT1ItCyTG9M5tQioapov','2023-11-21 11:39:11','2bca6b04-7c55-4409-9dd3-eda27e0ed385','2023-11-21 11:39:19','2bca6b04-7c55-4409-9dd3-eda27e0ed385');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_LMXY3N10HKENQL4Z0JOJ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_LMXY3N10HKENQL4Z0JOJ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_LMXY3N10HKENQL4Z0JOJ`;

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
-- Current Database: `PF_WS_VTHYTQA9MU5FZF15U7OK`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_VTHYTQA9MU5FZF15U7OK` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_VTHYTQA9MU5FZF15U7OK`;

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
-- Current Database: `PF_WS_703062DNM57OUBG09MOI`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_703062DNM57OUBG09MOI` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_703062DNM57OUBG09MOI`;

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

-- Dump completed on 2023-11-21 11:39:20
