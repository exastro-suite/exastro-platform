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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('02bea317-63f8-410a-aa77-a353aa2f1625',1708393568278,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/986f246c-5589-407f-a009-33653f029a75','{\"id\":\"986f246c-5589-407f-a009-33653f029a75\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('02e42fc5-247f-42d1-ae4f-6a0746212b46',1708393593612,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-upd','{\"id\":\"fc412908-57e8-4c7d-b275-52afcb19b255\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('04694024-a5db-4e7d-98a6-e20270e8a143',1708393522234,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-usr-mt','{\"id\":\"fb400be2-c5b4-4ce5-a285-033259670d52\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0489e6a3-f735-4833-955d-f8b816981cff',1708393530823,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_ws2-admin','{\"id\":\"9f8b9623-3c08-49da-aae3-bd7876f1c90d\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('06ac7fcc-0f97-48de-abc3-7879365e1527',1708393593976,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_organization-manager/composites','[{\"id\":\"fc412908-57e8-4c7d-b275-52afcb19b255\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"ee2963e0-3292-4001-ab03-de53ee2ea8f9\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"633f3924-0292-4bc5-ae48-b0dc5ba66007\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"6d110fa3-feee-4970-9d00-986cb85a7198\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"aae5d537-aaac-4138-9aa8-49ee0737a4c4\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"1fd0db8e-a95c-4f84-9a20-3ba4843c642b\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"e7e29740-197a-4161-8573-67dcafc4a076\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"3c0a8a41-6580-41db-b5d6-b2857642a90d\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('0b342553-8207-4f29-9c0a-04c835a0eed8',1708393569183,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/3f94646f-2c12-4603-b953-023de2333b3f/role-mappings/clients/f75eef0e-f758-4c23-9fe4-1173c210d99e','[{\"id\":\"eb6a7efe-406e-4996-a10c-0da41e78b4dc\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f75eef0e-f758-4c23-9fe4-1173c210d99e\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('0c2c037e-0012-4b55-b00d-adb4e4a7b069',1708393570257,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/ws1','{\"id\":\"fb4f3945-4396-455b-8758-44c6a4901113\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0df4d9b9-8b69-4e1e-b7c3-bcf7aa41807a',1708393506540,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_ws2-admin','{\"id\":\"f6331ad1-dfdc-4b9d-9aec-811f92ade656\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0e5c36cd-29b5-4f5e-a0d4-6dc61a076710',1708393522280,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-ws-role-usr','{\"id\":\"34af2c96-e367-4a5a-b3ed-40f02f591b7b\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0fd26455-c48f-472d-9bca-185e9518de2e',1708393568225,'org4','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/client-secret','{\"type\":\"secret\",\"value\":\"j65iJv3YUQjIXOR3YgOwIXe7ApPYH2nH\"}',NULL,'CLIENT'),('12a9dfdf-c3df-4d79-be7e-2a3306f0a51d',1708393593668,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-role-usr','{\"id\":\"633f3924-0292-4bc5-ae48-b0dc5ba66007\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('139b7b71-f5f4-4358-9b0d-53562308c38e',1708393545005,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-own-mt','{\"id\":\"33807288-4c79-42ca-86cb-82e542e44194\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('154bdcab-9cd7-47b7-8885-8be1c74758fb',1708393500361,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/ws1','{\"id\":\"a5947e67-2cb7-48a7-a6be-00fcdf865e11\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('15c6d112-3c6e-4e75-a22d-cd2e5fb23be1',1708393521881,'org2','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/8d368537-c076-40fe-8ce8-ab46652ed3ed/client-secret','{\"type\":\"secret\",\"value\":\"v7NRGoYIdhiRh6RoXz5iVogH3Hq0EbPX\"}',NULL,'CLIENT'),('169076e6-b782-48d2-8c14-b30067e3c87d',1708393521835,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/8d368537-c076-40fe-8ce8-ab46652ed3ed','{\"id\":\"8d368537-c076-40fe-8ce8-ab46652ed3ed\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('18f1ad42-b88d-4e8e-8b14-3046d1f96175',1708393553079,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_ws2-admin/composites','[{\"id\":\"1101c16a-8ad8-46ba-8da4-c42b96bc84e8\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"fa4b1be1-ede9-44c9-b02d-fe2873d24d7c\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('1a477a53-59b9-4210-94c8-628d8932bebe',1708393522798,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/ee88cb07-b8b9-46d5-8653-05208fcfa227/role-mappings/clients/d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','[{\"id\":\"457029d5-2897-4a58-8b88-ec25a871a1f6\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d0f7138b-29ca-48ae-83c1-9cc5fb8c483f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('1aabbb6b-d4f7-4a85-a5d8-66b40f20c289',1708393496504,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/2e922cfd-aa4d-45bc-b3d4-569ff9782811/role-mappings/clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47','[{\"id\":\"b45bf05c-0f99-4b8c-82bb-9351b3d39d73\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6bd8b94-d06c-42b4-a108-d24ea63d8e47\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('1b222ed7-4443-4a5a-92b4-2684e455cebc',1708393584352,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_ws3-admin','{\"id\":\"b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1c5209c4-b788-4696-893d-87a5e4a2d7b4',1708393552984,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/ws2','{\"id\":\"1101c16a-8ad8-46ba-8da4-c42b96bc84e8\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1cae3d87-c582-4f93-8d95-0928b6a893f3',1708393545724,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/4150c151-d695-4938-8829-62d4db16df52/role-mappings/clients/d00ef4ab-386a-4f9c-8854-0d712ace428e','[{\"id\":\"f423f258-1396-48c6-88d6-828a5ce3d5d1\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d00ef4ab-386a-4f9c-8854-0d712ace428e\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('1e69b9b8-83f3-4093-9ae5-190bac67852d',1708393544916,'org3','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f62ac36e-bda7-4536-818a-02d882178d26/client-secret','{\"type\":\"secret\",\"value\":\"Cmspptl9PdOreHVRv0sjcVu0r1PQkPDn\"}',NULL,'CLIENT'),('1f25ce86-5d46-439e-849b-dca7bff37ab9',1708393593638,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-own-mt','{\"id\":\"ee2963e0-3292-4001-ab03-de53ee2ea8f9\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1f53dbb1-4565-4016-9cee-f61a2c31f869',1708393568114,'org4','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64/client-secret','{\"type\":\"secret\",\"value\":\"atL85x0OsI0P6dVaCRx7MtZcggggvNa9\"}',NULL,'CLIENT'),('2046e6b1-8b05-46c4-89c6-e3089a64d2b5',1708393603164,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_ws2-admin/composites','[{\"id\":\"27bd2191-8c79-4cf7-822d-c531cbf07e06\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"619c9b0f-4efc-4994-b3bc-4e937c933154\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('22d6e2b7-d0b9-4525-bc61-dbc42414bcd7',1708393512724,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_ws3-admin/composites','[{\"id\":\"95712aea-0717-4ccd-a567-620bd2eda7d4\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"17848707-df74-4e00-a74e-202f63155f9c\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('2321a2dd-6fea-4599-b6d4-40a5ec184d05',1708393495126,'org1','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/client-secret','{\"type\":\"secret\",\"value\":\"et5oK3A8gxiW7eExmxUKcapVSCATFgJe\"}',NULL,'CLIENT'),('25b7de93-7345-4cfb-9236-68441955c3fe',1708393545363,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_organization-user-role-manager','{\"id\":\"bcdc31ff-8d36-412d-9765-aab459c081a6\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('25dfb20f-21c2-4379-962e-2f2853bafba7',1708393544604,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/40cef467-9e76-4d78-860e-880e680a14a4','{\"id\":\"40cef467-9e76-4d78-860e-880e680a14a4\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2782e5ec-5bbe-414e-9a17-f6d6b8b08690',1708393544787,'org3','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/client-secret','{\"type\":\"secret\",\"value\":\"qNVxpvxic9WgyKgtdUSOTRyqol1cjZhX\"}',NULL,'CLIENT'),('2b4f20bc-6cfa-4ab3-a4ae-5c1dd52d495e',1708393495069,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','{\"id\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2cbbbef7-8816-421d-9060-24fd41051a6d',1708393594419,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/985fadcd-bad4-4287-9a7a-d116575291ba','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[]}',NULL,'USER'),('2d413192-bcab-4419-9842-7850f0868b8d',1708393523676,'org2','UPDATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2',NULL,'{\"enabled\":true}',NULL,'REALM'),('2db4fbd1-f881-4881-b15d-cda98a6a2975',1708393595541,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/ws1','{\"id\":\"f1a06f14-35c4-458c-b88e-3b96263f81ec\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2df3a80f-1db6-4728-bff5-d2c1c6b78469',1708393568790,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_organization-user-role-manager/composites','[{\"id\":\"6d2917dc-f1ed-4691-9a66-9a10b4faa39c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"dbc19751-54ed-4612-80ec-6319298cc13e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('2f16c0f4-961b-476b-a09e-c1183c99613e',1708393593741,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-ws-role-usr','{\"id\":\"e7e29740-197a-4161-8573-67dcafc4a076\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('31e6401b-52f3-48cb-ad2a-e435ab2adac2',1708393545074,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-usr-mt','{\"id\":\"9960137a-cd85-4e0a-a279-4f2e886ed293\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('32a463c7-cc02-4886-97c9-ed9d3e919b2c',1708393584320,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/ws3','{\"id\":\"a2039408-4697-493d-bde9-cfe999fdd45b\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('33f41295-4e69-4dad-af06-8bb996c4aac9',1708393594053,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_organization-user-role-manager/composites','[{\"id\":\"aae5d537-aaac-4138-9aa8-49ee0737a4c4\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"1fd0db8e-a95c-4f84-9a20-3ba4843c642b\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"e7e29740-197a-4161-8573-67dcafc4a076\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('3406061c-66df-4c30-864f-84a58ee95d9a',1708393544660,'org3','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/40cef467-9e76-4d78-860e-880e680a14a4/client-secret','{\"type\":\"secret\",\"value\":\"FNPHDJCLsECH0LLx2AcFngM9hiQnRmWr\"}',NULL,'CLIENT'),('3423d21a-ffb2-4a7c-b111-a47e27e25c21',1708393495576,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-role-usr','{\"id\":\"b0aecbe1-1bb6-4985-870c-ffe1724a5171\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3426cf63-aa35-4335-b3ea-c8ed318c054e',1708393522942,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/659ea158-11d7-4b87-9b83-dab5031d6d93','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[]}',NULL,'USER'),('35f0aa70-1edd-460d-a31a-a01fb87746e6',1708393495531,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-upd','{\"id\":\"4af03a2a-86a2-43d6-bb24-e60e597bcb8a\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('36ec776b-919f-4f17-83cb-1df85e7b29e5',1708393506520,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_ws2-admin','{\"id\":\"ae4ebb7d-c16a-4b41-9c18-87f889b4a5af\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('371839bb-42e6-47db-84d5-348d740b92da',1708393544851,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f62ac36e-bda7-4536-818a-02d882178d26','{\"id\":\"f62ac36e-bda7-4536-818a-02d882178d26\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('378c29af-3b85-4749-960d-a82c89ad025f',1708393559430,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/ws3','{\"id\":\"529531a5-c4b5-4955-ad0b-107a489d5e79\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('385d6263-e9e8-4ae6-a106-bc6bdf176e93',1708393496113,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_organization-user-manager/composites','[{\"id\":\"20a04a5e-a0bf-4f20-ac6a-953b070838f5\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"1e521a28-2bbb-4d94-802c-c74303b568df\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('39187362-d0a0-4970-9d07-9e1bef6b3180',1708393495669,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-ws-role-usr','{\"id\":\"1e521a28-2bbb-4d94-802c-c74303b568df\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('399341e9-61ea-4471-b1ed-ecb9f5a3da14',1708393576768,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_ws2-admin','{\"id\":\"f5b490b6-f463-4160-a462-ca39c0ad3ed5\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3a328641-8e08-4e57-a43c-d48f8e7c3f75',1708393594000,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_organization-user-role-manager','{\"id\":\"3010fd4c-2f89-44b0-9064-a7060ae3e650\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('3bd206c1-265f-4ed0-aecc-4e97ffcd8d71',1708393593270,'org5','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2/client-secret','{\"type\":\"secret\",\"value\":\"oPu1SChN2EXLZWLR2csmtWeF49MWRz8J\"}',NULL,'CLIENT'),('3c25f185-59c1-49cf-90d1-bbd37c8367c9',1708393594259,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/7d712a99-ce6f-497d-a13e-0dc1e7f449a3/role-mappings/clients/8b5fd640-da2b-4f34-82e2-195738502ea6','[{\"id\":\"59b5a35b-44e0-4488-8f77-f0935dec0b9e\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"8b5fd640-da2b-4f34-82e2-195738502ea6\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('3d5008c7-3410-4c81-b3d6-2d03bb724c67',1708393553024,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_ws2-admin','{\"id\":\"a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('3e03676e-9309-46a7-a8a0-7c77b1e678e4',1708393568331,'org4','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/986f246c-5589-407f-a009-33653f029a75/client-secret','{\"type\":\"secret\",\"value\":\"maGz51dSSzSsUmrZh5728TqTvWmqHhkV\"}',NULL,'CLIENT'),('3f5e81d9-72c1-46f6-bd8d-9fb6cc25f688',1708393521783,'org2','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/client-secret','{\"type\":\"secret\",\"value\":\"3MkuQnWR9BjI8u1VUYou2Iq1dzdKM7ZV\"}',NULL,'CLIENT'),('3f637288-c3c5-4636-973e-8caa34b65afe',1708393495295,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47','{\"id\":\"f6bd8b94-d06c-42b4-a108-d24ea63d8e47\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('3f8aa559-1e07-468a-84a7-b2b17f785fe7',1708393545425,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_organization-user-manager','{\"id\":\"3bf734a5-b1c3-4113-8978-1ad0e6b24511\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('4021cd31-078a-4103-a0a6-db8c98472f79',1708393546563,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/ws1','{\"id\":\"7e5c2316-f982-4876-8b8e-ac8060e424ab\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('40e7894d-88bc-4ca4-b404-0c5cff1581a5',1708393500401,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_ws1-admin','{\"id\":\"fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('41043b75-72e1-4aa9-b332-72b8c3344f40',1708393568506,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-ws-role-usr','{\"id\":\"7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('44823f43-90c7-4871-bfbc-8ded4e0e5776',1708393496066,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_organization-user-manager','{\"id\":\"a2a4f120-32ab-4f47-b1e3-e46dcc7ee170\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('44b9abc8-f736-4f11-8624-376d90a70be7',1708393593771,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-ws-mt','{\"id\":\"3c0a8a41-6580-41db-b5d6-b2857642a90d\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('45d04380-ac48-4b2a-8dcd-827f0adf2d83',1708393553109,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','users/4150c151-d695-4938-8829-62d4db16df52/role-mappings/clients/d00ef4ab-386a-4f9c-8854-0d712ace428e','[{\"id\":\"a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d00ef4ab-386a-4f9c-8854-0d712ace428e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('47e8b404-3411-439c-b5aa-5cdf27db9ae0',1708393523927,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/ws1','{\"id\":\"07b4313b-6906-4d53-bdac-f4309d4e8f45\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4a5d746b-6593-4c68-8d81-1d49fd1f003c',1708393568407,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-upd','{\"id\":\"9b549f86-3b52-4eac-a6a5-067d6e63cade\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('4dd1455b-b9f4-442d-accb-fc30cebab252',1708393495961,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_organization-user-role-manager','{\"id\":\"ff3743b8-4e8d-409f-9124-90a3bfcf3b42\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('4e39759f-944d-4ff5-a033-6ee82449fe4d',1708393595587,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_ws1-admin','{\"id\":\"bec9750c-b218-4dcf-b59a-2af80de6f1d5\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4e586589-fcd7-4c58-baf0-972d34ead913',1708393522561,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_organization-user-role-manager','{\"id\":\"85a4f8f0-6658-4326-a3e6-b84248e751d5\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('501d1613-94b2-45f1-9c1a-0b98232ee40f',1708393609707,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_ws3-admin','{\"id\":\"29507e5d-d253-4b7a-8606-a66dbc172f22\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('505003be-d049-436b-b360-c40f35e980ad',1708393603087,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_ws2-admin','{\"id\":\"2033d29f-23c0-4aa5-8840-5187aef4055a\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5104c05b-6bbc-408b-9bb0-2facc98a1336',1708393522187,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-role-usr','{\"id\":\"0f953449-d2dd-4ce5-aee1-9a126d766f68\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5af47ccf-d8f9-4066-a2a9-105d0867e397',1708393569093,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/3f94646f-2c12-4603-b953-023de2333b3f','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[]}',NULL,'USER'),('5db319f0-a3f6-4d86-bbf1-a3facd4ce9f7',1708393568422,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-own-mt','{\"id\":\"e20652c4-cc0b-45b7-9ea9-0a5849fe1cf3\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('622dd7db-1d2e-4b11-a38b-9d29f3fb2de1',1708393500490,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','users/2e922cfd-aa4d-45bc-b3d4-569ff9782811/role-mappings/clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47','[{\"id\":\"fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6bd8b94-d06c-42b4-a108-d24ea63d8e47\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('62939702-a42b-472c-ae0a-bcb2b5f93498',1708393522069,'org2','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/499248ed-2241-4568-9081-3d5eb5e00d33/client-secret','{\"type\":\"secret\",\"value\":\"R8I0T2D3FbnX7y9PE2KNdIs44W0Ev9DK\"}',NULL,'CLIENT'),('62d3961a-8050-4890-944d-7938964ea6b0',1708393570341,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_ws1-admin/composites','[{\"id\":\"fb4f3945-4396-455b-8758-44c6a4901113\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"15995e9d-cfb9-4f48-b4ff-bbac9180e1a8\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('62ebdf73-873c-4f40-8fdc-cd6321d85906',1708393545463,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_organization-user-manager/composites','[{\"id\":\"9960137a-cd85-4e0a-a279-4f2e886ed293\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"f4e3dd49-3293-413a-8d1a-f5e771305973\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('661078b6-0e30-4f85-9c49-c2f185d040db',1708393595565,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_ws1-admin','{\"id\":\"d160169c-1c11-4c19-930c-914cc77271c7\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('66c4fefb-0591-43d0-9a92-bd3dc955c4de',1708393545028,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-role-usr','{\"id\":\"78922e8e-71e8-466f-ac22-88fcd7682077\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('68eb47fc-a6fe-432c-b700-cafe04cf0de5',1708393609651,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/ws3','{\"id\":\"d34838b9-4827-413f-a80b-f017cb5fb2af\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6be1c4e4-290c-4631-b3b1-3cad6c885a81',1708393512673,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_ws3-admin','{\"id\":\"442614df-362f-4170-a379-b07551c43cce\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('6c114430-be66-4d0e-91ca-273c01e6b2ab',1708393593231,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','{\"id\":\"4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('6cd2904c-2532-4eeb-8824-b45ae3cf2376',1708393496042,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_organization-user-role-manager/composites','[{\"id\":\"20a04a5e-a0bf-4f20-ac6a-953b070838f5\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"a7567ba9-3386-4f55-9c95-85f3a8c75311\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"1e521a28-2bbb-4d94-802c-c74303b568df\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('6d5253a8-4291-4bc5-9e07-ddb5af8b1e04',1708393537042,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_ws3-admin/composites','[{\"id\":\"c961b42b-f995-46ee-8362-40ef602980c0\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"05936ef4-f33a-48a3-a3ef-afc163e1b8a8\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('6e590d67-0881-4f0a-8312-129e38255abd',1708393544733,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e','{\"id\":\"d00ef4ab-386a-4f9c-8854-0d712ace428e\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('72e282ce-40a4-4449-b050-f2c18ffbbd03',1708393603035,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/ws2','{\"id\":\"27bd2191-8c79-4cf7-822d-c531cbf07e06\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('731d9e17-cd82-4872-8dce-67440257ea91',1708393609769,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_ws3-admin/composites','[{\"id\":\"d34838b9-4827-413f-a80b-f017cb5fb2af\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"a7b360f9-4610-4b6d-add4-6b631f64f18a\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('743bb205-108e-42b0-ae43-15809ea8a88e',1708393545184,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_organization-manager','{\"id\":\"f423f258-1396-48c6-88d6-828a5ce3d5d1\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('756644f1-9d6f-4638-a47d-8dc8b5649760',1708393576746,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/ws2','{\"id\":\"9bff6e17-1d5f-48b2-ae72-25ed1ea9fc60\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('76db1283-3b04-47ab-b203-b181ec43c9ad',1708393530802,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_ws2-admin','{\"id\":\"71e455a0-756c-49f5-b040-9512d76ed84d\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('77d940ad-34f0-4a5b-8927-c44de06e2e99',1708393545344,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_organization-manager/composites','[{\"id\":\"9b8dbdcb-f267-4d5f-8f70-0e50905f54a4\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"33807288-4c79-42ca-86cb-82e542e44194\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"78922e8e-71e8-466f-ac22-88fcd7682077\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"119b4a3c-ce42-4456-975a-38934a6d35ec\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"9960137a-cd85-4e0a-a279-4f2e886ed293\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"115ddd9b-58ad-46ce-8d78-314db33063a4\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"f4e3dd49-3293-413a-8d1a-f5e771305973\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"836009c3-a5ec-4aa1-8640-a191ce3cc036\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('77dc3eea-dd98-406e-8a08-a2594269585f',1708393593180,'org5','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/client-secret','{\"type\":\"secret\",\"value\":\"EC5j3FwWgpbs7lFxnjCIsBdM5EQv12Uj\"}',NULL,'CLIENT'),('7843f693-a90e-4659-85b3-0353e5b04d8d',1708393593470,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6263c078-77c7-4417-a293-56702d014298','{\"id\":\"6263c078-77c7-4417-a293-56702d014298\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('784b4e33-c841-4042-a6bb-75335ed3d2fc',1708393544981,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-upd','{\"id\":\"9b8dbdcb-f267-4d5f-8f70-0e50905f54a4\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7a5422f8-d5de-4b1a-baec-b06c53a228b7',1708393568457,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-usage','{\"id\":\"1822f841-6491-4cde-8561-0ad1671a66db\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7b929ee3-d95a-4413-a95c-0b049a11171a',1708393545408,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_organization-user-role-manager/composites','[{\"id\":\"9960137a-cd85-4e0a-a279-4f2e886ed293\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"115ddd9b-58ad-46ce-8d78-314db33063a4\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}},{\"id\":\"f4e3dd49-3293-413a-8d1a-f5e771305973\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('7bdf6e1b-b88a-443c-a059-48f6e66a4002',1708393559469,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_ws3-admin','{\"id\":\"fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7bf07da5-c788-4c22-9656-19471e5bd2f5',1708393545097,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-ws-role-mt','{\"id\":\"115ddd9b-58ad-46ce-8d78-314db33063a4\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7ff59d1a-add1-420e-97df-d1ff81b4741e',1708393495932,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_organization-manager/composites','[{\"id\":\"4af03a2a-86a2-43d6-bb24-e60e597bcb8a\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"decc040a-f6e3-4b9f-8f65-adbd28806b0b\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"b0aecbe1-1bb6-4985-870c-ffe1724a5171\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"e996dfa3-fe1b-4af0-b110-319616eb5f06\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"20a04a5e-a0bf-4f20-ac6a-953b070838f5\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"a7567ba9-3386-4f55-9c95-85f3a8c75311\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"1e521a28-2bbb-4d94-802c-c74303b568df\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}},{\"id\":\"32ed92fb-e34d-4ee2-9ba9-f4bbfcf80b24\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('805d24bb-a147-45f7-bb62-646b6b883135',1708393546321,'org3','UPDATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2',NULL,'{\"enabled\":true}',NULL,'REALM'),('84921fb7-cc9d-402c-8444-511af7b28eec',1708393522209,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-usage','{\"id\":\"3326524f-80e7-4b1f-8a49-88180e7c3386\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('84ea8cd5-2120-4eda-99a8-947ac94ab356',1708393506656,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','users/2e922cfd-aa4d-45bc-b3d4-569ff9782811/role-mappings/clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47','[{\"id\":\"f6331ad1-dfdc-4b9d-9aec-811f92ade656\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6bd8b94-d06c-42b4-a108-d24ea63d8e47\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('85a19ba4-51c3-4e64-8b2d-815d9c76a04f',1708393522147,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-upd','{\"id\":\"186114e8-5cc5-4c66-a735-cceea4aa35fe\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('87088b78-01d1-40a5-b7f6-85e50ecf233d',1708393522169,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-own-mt','{\"id\":\"77d1bfd9-0aaf-407b-9993-2ef0e009c753\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('87efd9f6-3d09-4d86-85a3-eef41b75f1c7',1708393568524,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-ws-mt','{\"id\":\"e58a6a65-811e-4953-bc12-7ea1dfc67ee9\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('88ce475c-cb4a-4f70-9a3d-68f7088715ec',1708393522540,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_organization-manager/composites','[{\"id\":\"186114e8-5cc5-4c66-a735-cceea4aa35fe\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"77d1bfd9-0aaf-407b-9993-2ef0e009c753\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"0f953449-d2dd-4ce5-aee1-9a126d766f68\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"3326524f-80e7-4b1f-8a49-88180e7c3386\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"fb400be2-c5b4-4ce5-a285-033259670d52\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"ea09a2e5-3f29-40a1-a8e2-6933cd2e1236\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"34af2c96-e367-4a5a-b3ed-40f02f591b7b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"b0e6f7ff-b689-456d-8f59-bdf25d2d71f1\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('89a2b49c-0a33-4bdd-a74a-29e329cb6513',1708393546691,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_ws1-admin/composites','[{\"id\":\"7e5c2316-f982-4876-8b8e-ac8060e424ab\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"43f6e3ce-1a54-46d9-be14-1f98f85d3725\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('8a447d54-0a48-4040-bdaa-b9e868bb42d0',1708393522348,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_organization-manager','{\"id\":\"f59e154c-5584-4bd7-9b66-253241cd27fb\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('8ac303c3-b3c6-4751-9233-06ce23ad7490',1708393603217,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','users/985fadcd-bad4-4287-9a7a-d116575291ba/role-mappings/clients/eb21f87d-406d-4f0d-aba8-d431ad07f140','[{\"id\":\"2033d29f-23c0-4aa5-8840-5187aef4055a\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"eb21f87d-406d-4f0d-aba8-d431ad07f140\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('8bab9d32-288b-48ec-b9cf-fd5c848fc7b3',1708393545050,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-usage','{\"id\":\"119b4a3c-ce42-4456-975a-38934a6d35ec\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8c0876fe-f4f0-4ab7-adc8-11e7a64c5c21',1708393609682,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_ws3-admin','{\"id\":\"a7b360f9-4610-4b6d-add4-6b631f64f18a\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8c0a57b2-3aae-493c-907d-9eefb65a28a7',1708393521720,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc','{\"id\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('8c0e44fe-aae4-46db-a61d-757a87639720',1708393609818,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','users/985fadcd-bad4-4287-9a7a-d116575291ba/role-mappings/clients/eb21f87d-406d-4f0d-aba8-d431ad07f140','[{\"id\":\"29507e5d-d253-4b7a-8606-a66dbc172f22\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"eb21f87d-406d-4f0d-aba8-d431ad07f140\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('8e6c4ef6-a41b-489a-aac5-0558a0fae6c7',1708393593401,'org5','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/client-secret','{\"type\":\"secret\",\"value\":\"GnBejOs5L5wEXuUE0Mm8qp3vyyH1hA9r\"}',NULL,'CLIENT'),('8e9ab2a3-5803-4f2b-9db2-00a96ee38ec3',1708393524065,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_ws1-admin/composites','[{\"id\":\"07b4313b-6906-4d53-bdac-f4309d4e8f45\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"328f053b-14f8-47d0-bee5-3d79b0559f27\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('91e33f93-a251-4815-a0f7-a8e75760db68',1708393546582,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_ws1-admin','{\"id\":\"43f6e3ce-1a54-46d9-be14-1f98f85d3725\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('93e19458-dd65-4780-b1ba-ff6e3b5b3c9d',1708393536950,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/ws3','{\"id\":\"c961b42b-f995-46ee-8362-40ef602980c0\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('945ef560-534f-474c-b452-1869d65bed1e',1708393512638,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/ws3','{\"id\":\"95712aea-0717-4ccd-a567-620bd2eda7d4\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('96299dce-780d-443d-9cb8-4cbc98847c09',1708393570291,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_ws1-admin','{\"id\":\"9bbc2ed6-fc5e-4814-9bd6-c90ce4069398\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('999e0244-b92c-41c0-bd5c-76c5c773a0d8',1708393512766,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','users/2e922cfd-aa4d-45bc-b3d4-569ff9782811/role-mappings/clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47','[{\"id\":\"442614df-362f-4170-a379-b07551c43cce\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f6bd8b94-d06c-42b4-a108-d24ea63d8e47\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('9ac2a7b5-607a-4661-a459-86db684fe6cf',1708393568053,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','{\"id\":\"8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('9d8343ae-59df-4305-ab68-41927294d022',1708393537074,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','users/659ea158-11d7-4b87-9b83-dab5031d6d93/role-mappings/clients/dba012d2-d051-4938-ab35-1b5e65905028','[{\"id\":\"1100e27e-2195-4894-a4c8-a70485b3a473\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"dba012d2-d051-4938-ab35-1b5e65905028\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('9e0078b2-eb59-4180-b632-23dcd8247bbd',1708393576902,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','users/3f94646f-2c12-4603-b953-023de2333b3f/role-mappings/clients/f75eef0e-f758-4c23-9fe4-1173c210d99e','[{\"id\":\"021545f0-0b93-4033-bbd4-d67649176c98\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f75eef0e-f758-4c23-9fe4-1173c210d99e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('9f8b1e36-fb3f-432b-a617-bf7ea6f60c59',1708393506498,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/ws2','{\"id\":\"cda22e09-66b3-4289-84aa-33b6c16b5ed3\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a023bff7-a4b3-457f-bb48-826b3e2653d4',1708393544485,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2','{\"id\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('a2d5a1ed-76c4-473f-94d2-0559d985b0ee',1708393545657,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/4150c151-d695-4938-8829-62d4db16df52','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[]}',NULL,'USER'),('a359e9ae-753e-4d19-be66-8f77afef2f63',1708393584338,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_ws3-admin','{\"id\":\"1133e6a6-1c5a-49b4-8011-28c25003a768\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a3d10eb8-e15c-4503-a5ff-03aa1d7f83e1',1708393568491,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-ws-role-mt','{\"id\":\"dbc19751-54ed-4612-80ec-6319298cc13e\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a59bdf01-2668-4005-a6ab-4ceb059b194c',1708393593686,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-usage','{\"id\":\"6d110fa3-feee-4970-9d00-986cb85a7198\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a6530174-8a47-4d2f-976c-7bba86ce2a18',1708393603061,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_ws2-admin','{\"id\":\"619c9b0f-4efc-4994-b3bc-4e937c933154\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a8cd6cdd-c219-4488-8a34-fa8322a5cc4e',1708393553005,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_ws2-admin','{\"id\":\"fa4b1be1-ede9-44c9-b02d-fe2873d24d7c\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('aa71dbaf-69b7-490f-8f76-444158f203d0',1708393495739,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_organization-manager','{\"id\":\"b45bf05c-0f99-4b8c-82bb-9351b3d39d73\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ad715402-7c4b-40cc-84d8-8ba3673e2c32',1708393570380,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','users/3f94646f-2c12-4603-b953-023de2333b3f/role-mappings/clients/f75eef0e-f758-4c23-9fe4-1173c210d99e','[{\"id\":\"9bbc2ed6-fc5e-4814-9bd6-c90ce4069398\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f75eef0e-f758-4c23-9fe4-1173c210d99e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('aeee6184-6ec9-47c8-808d-0a09126c2197',1708393567922,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49','{\"id\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('afeca101-1c7e-498e-b275-74329b174cb4',1708393559450,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_ws3-admin','{\"id\":\"34418a5b-12ad-4495-b04c-c2e0924a3178\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b07fe060-d654-4987-88aa-9efd8dada51c',1708393500454,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_ws1-admin/composites','[{\"id\":\"a5947e67-2cb7-48a7-a6be-00fcdf865e11\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"c6ee3848-11c6-4763-a6e7-17412e91d160\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b2c09ac2-ece8-4aa4-a442-a46b327f8bfc',1708393495406,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/fcc78a04-fc35-4ca1-b7a5-8af24bf24444','{\"id\":\"fcc78a04-fc35-4ca1-b7a5-8af24bf24444\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('b2c6fa5d-1c5d-4334-9c0a-5e1a1e7480db',1708393522632,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_organization-user-manager','{\"id\":\"a5d81936-b774-4aeb-a529-847b9721b727\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b3cd24c9-00f6-4666-a838-aa723ffc6542',1708393594533,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/985fadcd-bad4-4287-9a7a-d116575291ba/role-mappings/clients/eb21f87d-406d-4f0d-aba8-d431ad07f140','[{\"id\":\"b16502d6-e5d9-4a6f-b4b0-bcff65b1830e\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"eb21f87d-406d-4f0d-aba8-d431ad07f140\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b489d326-c606-4f45-aef6-b20119ebd54c',1708393576850,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_ws2-admin/composites','[{\"id\":\"9bff6e17-1d5f-48b2-ae72-25ed1ea9fc60\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"f5b490b6-f463-4160-a462-ca39c0ad3ed5\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('b56dbef0-60bf-4e50-a8c7-ee24eaed584f',1708393546741,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','users/4150c151-d695-4938-8829-62d4db16df52/role-mappings/clients/d00ef4ab-386a-4f9c-8854-0d712ace428e','[{\"id\":\"4764cac3-c558-48a9-b62e-032dfa81d8c6\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d00ef4ab-386a-4f9c-8854-0d712ace428e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('b601e52b-d486-49ad-86e7-5891e0f3d8a8',1708393496366,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/2e922cfd-aa4d-45bc-b3d4-569ff9782811','{\"username\":\"admin\",\"enabled\":true,\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"credentials\":[{\"type\":\"password\",\"value\":\"password\",\"temporary\":false}],\"requiredActions\":[]}',NULL,'USER'),('b780c9e4-95d1-4548-a79e-89e6f9c66e26',1708393567983,'org4','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/client-secret','{\"type\":\"secret\",\"value\":\"xz6Rb0GdMzzUZ2Irq5mQanbPIKkGQi1T\"}',NULL,'CLIENT'),('b82d3ac9-08ed-4fbf-a4d3-da380b8a7162',1708393595335,'org5','UPDATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2',NULL,'{\"enabled\":true}',NULL,'REALM'),('b8ee1465-29d3-4abd-9225-3eb17d010b7c',1708393568969,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/7b37d1bb-aa76-47ed-8a53-1803016d9fb6/role-mappings/clients/991e662f-1bb8-4563-b3c1-7e974c7be2b2','[{\"id\":\"ca2d38e9-a65c-49c8-b941-9fb935db0f30\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"991e662f-1bb8-4563-b3c1-7e974c7be2b2\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('bb91e559-e288-46d2-9997-45734804d7c3',1708393530925,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','users/659ea158-11d7-4b87-9b83-dab5031d6d93/role-mappings/clients/dba012d2-d051-4938-ab35-1b5e65905028','[{\"id\":\"9f8b9623-3c08-49da-aae3-bd7876f1c90d\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"dba012d2-d051-4938-ab35-1b5e65905028\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('c1bff4d6-2cd7-4a4a-8024-5b293ce44d19',1708393496248,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/d97b85e9-b38e-4f42-9a08-33ca70854068/role-mappings/clients/e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','[{\"id\":\"d37101a8-04f7-438d-8bf1-bd53678c4c37\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('c3aaf9df-d1ff-460a-9ca2-f107cd55fb6f',1708393530782,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/ws2','{\"id\":\"86758c97-abb2-4550-b393-655eaf3c8c12\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c3b26b17-e5de-4578-b604-a6a862b12b57',1708393593702,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-usr-mt','{\"id\":\"aae5d537-aaac-4138-9aa8-49ee0737a4c4\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c71412c0-c9c0-4c6f-83ec-cd218c6d38c5',1708393500133,'org1','UPDATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2',NULL,'{\"enabled\":true}',NULL,'REALM'),('c7c4487e-b9ab-40a2-9f86-59b69a2f12c7',1708393495550,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-own-mt','{\"id\":\"decc040a-f6e3-4b9f-8f65-adbd28806b0b\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('c8da8991-07c7-4d52-9227-b4a622677d23',1708393594070,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_organization-user-manager','{\"id\":\"4944cf01-d0fe-42b5-90c6-d24b27a4f951\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('c9f8fef0-e705-41ec-b4f6-0d8aaa820e37',1708393495182,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6aeeb599-3b15-4f3b-aaca-e0919bface4d','{\"id\":\"6aeeb599-3b15-4f3b-aaca-e0919bface4d\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('ca3f9cc6-cb0e-44a8-a8a6-babd0f7719b6',1708393523059,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/659ea158-11d7-4b87-9b83-dab5031d6d93/role-mappings/clients/dba012d2-d051-4938-ab35-1b5e65905028','[{\"id\":\"f59e154c-5584-4bd7-9b66-253241cd27fb\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"dba012d2-d051-4938-ab35-1b5e65905028\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('caf4f3f9-284b-4893-918f-667cfa043a1c',1708393568475,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-usr-mt','{\"id\":\"6d2917dc-f1ed-4691-9a66-9a10b4faa39c\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ccc3d17f-923a-4730-9438-c10057f79fab',1708393593136,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9','{\"id\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('cde8a10a-7212-4873-bd13-68bea5e80fbe',1708393495688,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-ws-mt','{\"id\":\"32ed92fb-e34d-4ee2-9ba9-f4bbfcf80b24\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ce617779-faae-44ce-b1e2-421783b59559',1708393536985,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_ws3-admin','{\"id\":\"1100e27e-2195-4894-a4c8-a70485b3a473\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ceec1521-dd15-4739-aa9e-563298b1f926',1708393559563,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','users/4150c151-d695-4938-8829-62d4db16df52/role-mappings/clients/d00ef4ab-386a-4f9c-8854-0d712ace428e','[{\"id\":\"fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d00ef4ab-386a-4f9c-8854-0d712ace428e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('d1afa656-904b-4ee8-af14-ae09e0a4dc3e',1708393545553,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','users/4685e44e-f405-4b30-860f-9030295ae63e/role-mappings/clients/bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','[{\"id\":\"ef95106e-4d28-4084-ada0-1ee297454fcc\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bc6b45df-8ae9-4c62-94d0-5090e08d7a3d\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('d2931648-cd2e-4dcd-9ada-0c19ab5fa271',1708393495647,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-ws-role-mt','{\"id\":\"a7567ba9-3386-4f55-9c95-85f3a8c75311\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d330129d-cdd2-4b0e-8445-ee7e3663e9b8',1708393545118,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-ws-role-usr','{\"id\":\"f4e3dd49-3293-413a-8d1a-f5e771305973\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d33c63ca-4533-4312-8fe0-177af4576948',1708393495454,'org1','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/fcc78a04-fc35-4ca1-b7a5-8af24bf24444/client-secret','{\"type\":\"secret\",\"value\":\"rfW2gtV62NUn48zk60jzOzSj0q6Y8niE\"}',NULL,'CLIENT'),('d3dff21c-2f32-436d-9ea3-4b7854dd8aaa',1708393495233,'org1','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6aeeb599-3b15-4f3b-aaca-e0919bface4d/client-secret','{\"type\":\"secret\",\"value\":\"2rMwBtB2LSVsqgDakhzvlvVyuRKkqIND\"}',NULL,'CLIENT'),('d41737ba-8727-40c8-8856-6623f3e66eb1',1708393495609,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-usage','{\"id\":\"e996dfa3-fe1b-4af0-b110-319616eb5f06\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('d564e239-c24a-4e45-a8ce-00668b983795',1708393512655,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_ws3-admin','{\"id\":\"17848707-df74-4e00-a74e-202f63155f9c\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d77a0fa5-37d4-4c61-87b7-79673f4c25e1',1708393536966,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_ws3-admin','{\"id\":\"05936ef4-f33a-48a3-a3ef-afc163e1b8a8\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d7887a80-44dc-4997-9ba7-f93d0e905165',1708393593823,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_organization-manager','{\"id\":\"b16502d6-e5d9-4a6f-b4b0-bcff65b1830e\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('d79e8fa1-af5f-4173-a06e-f369654a05ff',1708393568809,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_organization-user-manager','{\"id\":\"1d8000f8-c681-40c1-8907-ac7214032c9c\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('d8bcc110-b4eb-462c-8f61-7d509dd10a33',1708393521928,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028','{\"id\":\"dba012d2-d051-4938-ab35-1b5e65905028\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('dcd127c2-0ba5-4693-917b-d5f324373946',1708393500382,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_ws1-admin','{\"id\":\"c6ee3848-11c6-4763-a6e7-17412e91d160\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('de079a49-9b06-4587-970a-f5779ea36416',1708393593721,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6e197034-e229-47d2-b43e-d1adea8b3cc9/roles/_og-ws-role-mt','{\"id\":\"1fd0db8e-a95c-4f84-9a20-3ba4843c642b\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('de556c0f-4a69-4530-ba03-62b7c63924f7',1708393530882,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_ws2-admin/composites','[{\"id\":\"86758c97-abb2-4550-b393-655eaf3c8c12\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"71e455a0-756c-49f5-b040-9512d76ed84d\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('df346225-3e6f-41cd-94af-f7eb79adb734',1708393594117,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_organization-user-manager/composites','[{\"id\":\"aae5d537-aaac-4138-9aa8-49ee0737a4c4\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}},{\"id\":\"e7e29740-197a-4161-8573-67dcafc4a076\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('dfc81cc2-6603-4828-8275-8c9dd5be3111',1708393495345,'org1','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/client-secret','{\"type\":\"secret\",\"value\":\"FviH4HOpUyyBVlqh2y4UEquerxoIbqDc\"}',NULL,'CLIENT'),('e02d314b-30e3-4fc8-8dab-d9bf3ffa7f2b',1708393568180,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e','{\"id\":\"f75eef0e-f758-4c23-9fe4-1173c210d99e\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('e124e647-a4f4-4e37-a653-31c930e00ced',1708393522020,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/499248ed-2241-4568-9081-3d5eb5e00d33','{\"id\":\"499248ed-2241-4568-9081-3d5eb5e00d33\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('e1f420ed-fca5-4560-9c2f-40475328e803',1708393522301,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-ws-mt','{\"id\":\"b0e6f7ff-b689-456d-8f59-bdf25d2d71f1\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e31946ca-651d-4f69-bcbd-8715e28ad781',1708393568563,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_organization-manager','{\"id\":\"eb6a7efe-406e-4996-a10c-0da41e78b4dc\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e591bd64-6e53-497a-b290-eb319f555de2',1708393544547,'org3','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/client-secret','{\"type\":\"secret\",\"value\":\"sxi6umF6tQIFLZbR9a2KNm4bEDaW6lox\"}',NULL,'CLIENT'),('e62f1826-600f-44fc-bcf7-6cf488f678b8',1708393584403,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_ws3-admin/composites','[{\"id\":\"a2039408-4697-493d-bde9-cfe999fdd45b\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"1133e6a6-1c5a-49b4-8011-28c25003a768\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('e712602e-81bd-4a63-ba03-10e56a5e5f41',1708393559525,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_ws3-admin/composites','[{\"id\":\"529531a5-c4b5-4955-ad0b-107a489d5e79\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"34418a5b-12ad-4495-b04c-c2e0924a3178\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('e7286e16-37eb-4622-ab22-d9cad5d13378',1708393546616,'org3','CREATE','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2','4685e44e-f405-4b30-860f-9030295ae63e','172.18.0.2','clients/d00ef4ab-386a-4f9c-8854-0d712ace428e/roles/_ws1-admin','{\"id\":\"4764cac3-c558-48a9-b62e-032dfa81d8c6\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e99d1247-2f6f-40e5-9dbb-3f17e21d3e1b',1708393570271,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_ws1-admin','{\"id\":\"15995e9d-cfb9-4f48-b4ff-bbac9180e1a8\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e9e027e2-cbda-466c-beea-6e0a98d83058',1708393570040,'org4','UPDATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2',NULL,'{\"enabled\":true}',NULL,'REALM'),('eb35736e-686b-4aca-80d5-9cbf3f6c98cf',1708393568718,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_organization-manager/composites','[{\"id\":\"9b549f86-3b52-4eac-a6a5-067d6e63cade\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"e20652c4-cc0b-45b7-9ea9-0a5849fe1cf3\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"4f1c50ff-cb8c-44c8-bdb3-030af3c4e98f\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"1822f841-6491-4cde-8561-0ad1671a66db\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"6d2917dc-f1ed-4691-9a66-9a10b4faa39c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"dbc19751-54ed-4612-80ec-6319298cc13e\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"e58a6a65-811e-4953-bc12-7ea1dfc67ee9\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('eb8c2c61-d85e-4cda-b041-7f0eb05dd477',1708393523978,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_ws1-admin','{\"id\":\"a6d22921-f778-404d-9506-e1551c12b97b\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('ecf57ba4-6d04-412e-896f-a58de37d76c4',1708393568854,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_organization-user-manager/composites','[{\"id\":\"6d2917dc-f1ed-4691-9a66-9a10b4faa39c\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}},{\"id\":\"7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"45ef982c-3f19-4396-877f-29ccc7b04a49\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('ed030eb7-25bc-44a6-b857-c56170654cfd',1708393521968,'org2','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/client-secret','{\"type\":\"secret\",\"value\":\"VJEQ0bPDxsHnVX5GFYh32dAFmpwTzQ0i\"}',NULL,'CLIENT'),('ed7b7ca7-308f-42da-b370-e6a545ee5af3',1708393593346,'org5','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140','{\"id\":\"eb21f87d-406d-4f0d-aba8-d431ad07f140\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('edfc5b9a-9e43-4c49-89c4-2901a4c73b54',1708393595673,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','users/985fadcd-bad4-4287-9a7a-d116575291ba/role-mappings/clients/eb21f87d-406d-4f0d-aba8-d431ad07f140','[{\"id\":\"bec9750c-b218-4dcf-b59a-2af80de6f1d5\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"eb21f87d-406d-4f0d-aba8-d431ad07f140\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f05da0de-62b1-4ac4-a1a3-0e25e56af0f6',1708393523946,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_ws1-admin','{\"id\":\"328f053b-14f8-47d0-bee5-3d79b0559f27\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f06753a1-f8e9-4277-946c-a8d778363e0c',1708393506605,'org1','CREATE','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d97b85e9-b38e-4f42-9a08-33ca70854068','172.18.0.2','clients/f6bd8b94-d06c-42b4-a108-d24ea63d8e47/roles/_ws2-admin/composites','[{\"id\":\"cda22e09-66b3-4289-84aa-33b6c16b5ed3\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"ae4ebb7d-c16a-4b41-9c18-87f889b4a5af\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('f0b1a6bf-41fa-47b4-b561-88fb5f65bb39',1708393545139,'org3','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/125c23c8-f5a1-43ff-b35c-e6ace698b7c2/roles/_og-ws-mt','{\"id\":\"836009c3-a5ec-4aa1-8640-a191ce3cc036\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f64fcd80-c3ba-49ef-8c8d-8c2d858b8a1b',1708393522258,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/5d8ac026-28f4-40be-85eb-ea19055e07bc/roles/_og-ws-role-mt','{\"id\":\"ea09a2e5-3f29-40a1-a8e2-6933cd2e1236\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f7170041-2dc0-4818-906c-fab322731cd6',1708393576797,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_ws2-admin','{\"id\":\"021545f0-0b93-4033-bbd4-d67649176c98\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f8769fab-6546-4007-b261-947206174c20',1708393522668,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_organization-user-manager/composites','[{\"id\":\"fb400be2-c5b4-4ce5-a285-033259670d52\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"34af2c96-e367-4a5a-b3ed-40f02f591b7b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('f97fd5b5-7511-4c00-8b98-990e6b45b107',1708393584448,'org4','CREATE','org4','45ef982c-3f19-4396-877f-29ccc7b04a49','7b37d1bb-aa76-47ed-8a53-1803016d9fb6','172.18.0.2','users/3f94646f-2c12-4603-b953-023de2333b3f/role-mappings/clients/f75eef0e-f758-4c23-9fe4-1173c210d99e','[{\"id\":\"b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"f75eef0e-f758-4c23-9fe4-1173c210d99e\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f9a324a6-3774-42f5-b503-4dad4d3ef53c',1708393568439,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/45ef982c-3f19-4396-877f-29ccc7b04a49/roles/_og-role-usr','{\"id\":\"4f1c50ff-cb8c-44c8-bdb3-030af3c4e98f\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fc36c00f-77be-4947-9a53-74b11ad1880a',1708393522616,'org2','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/dba012d2-d051-4938-ab35-1b5e65905028/roles/_organization-user-role-manager/composites','[{\"id\":\"fb400be2-c5b4-4ce5-a285-033259670d52\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"ea09a2e5-3f29-40a1-a8e2-6933cd2e1236\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}},{\"id\":\"34af2c96-e367-4a5a-b3ed-40f02f591b7b\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"5d8ac026-28f4-40be-85eb-ea19055e07bc\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('fcbeed89-1f2f-4877-bcbf-81f32649a0ba',1708393568737,'org4','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/f75eef0e-f758-4c23-9fe4-1173c210d99e/roles/_organization-user-role-manager','{\"id\":\"053f23c0-1e84-4bf4-b3dd-ebbbb1a369de\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('fd83da89-5d16-435f-ba13-08f6bef183dc',1708393495628,'org1','CREATE','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd/roles/_og-usr-mt','{\"id\":\"20a04a5e-a0bf-4f20-ac6a-953b070838f5\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fde2704b-d262-4a6e-a40d-52470c78ab27',1708393524129,'org2','CREATE','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc','ee88cb07-b8b9-46d5-8653-05208fcfa227','172.18.0.2','users/659ea158-11d7-4b87-9b83-dab5031d6d93/role-mappings/clients/dba012d2-d051-4938-ab35-1b5e65905028','[{\"id\":\"a6d22921-f778-404d-9506-e1551c12b97b\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"dba012d2-d051-4938-ab35-1b5e65905028\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fea59b9d-7a34-4ee4-bc8a-ef5d2638b19a',1708393593521,'org5','ACTION','a70d8574-d800-4bf9-b056-6e5e23c893a0','77a2f4d9-fa77-4d35-88c9-851bf579503f','7cc5c22a-94d7-4cde-a3bb-217e093067c0','172.18.0.2','clients/6263c078-77c7-4417-a293-56702d014298/client-secret','{\"type\":\"secret\",\"value\":\"05f8QZOCbwBdikn51IScEA60YF2XoHJH\"}',NULL,'CLIENT'),('fedddaaa-404c-4629-b474-ea0488aeb4fc',1708393595639,'org5','CREATE','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9','7d712a99-ce6f-497d-a13e-0dc1e7f449a3','172.18.0.2','clients/eb21f87d-406d-4f0d-aba8-d431ad07f140/roles/_ws1-admin/composites','[{\"id\":\"f1a06f14-35c4-458c-b88e-3b96263f81ec\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"d160169c-1c11-4c19-930c-914cc77271c7\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e197034-e229-47d2-b43e-d1adea8b3cc9\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('02a5d933-2505-4527-baa5-363cb62fa6ca',NULL,'http-basic-authenticator','org2','c8b7071e-ab02-4608-917e-5673311c481e',0,10,_binary '\0',NULL,NULL),('03644c94-ec6a-487b-aa8b-5f5fea1538cc',NULL,'client-x509','org5','a32d5f31-6afd-4cb9-ae68-00869ad3d853',2,40,_binary '\0',NULL,NULL),('0421e5e6-3669-405a-aab7-79826a1ed81f',NULL,'reset-credential-email','org4','19c274d5-b6ca-4fcc-91d1-baf3bff15978',0,20,_binary '\0',NULL,NULL),('055cd183-198b-47a2-b5b9-57004f1e8a87',NULL,NULL,'org5','62fbb3ad-a843-46ca-8e0c-be301e2d85f6',0,20,_binary '','4793c249-ae92-4eac-bd86-541c29328f66',NULL),('05b8e4b4-355e-4225-9b77-53caf67a2fae',NULL,'idp-review-profile','org1','fb742a84-f43f-4820-84ee-c736b5226907',0,10,_binary '\0',NULL,'fbbb224c-2d00-4804-9d7a-88289d3c15c6'),('063b5a60-e7ad-405d-a5c2-d06cf0c48494',NULL,'direct-grant-validate-username','org2','f53ad29b-c4aa-4426-bedb-8593a4a030ea',0,10,_binary '\0',NULL,NULL),('0673dfbf-6905-4c89-8a66-652d68310ede',NULL,'registration-profile-action','org3','a10147db-24cc-4c5d-b33d-12aeb96c4a3b',0,40,_binary '\0',NULL,NULL),('071b64bb-2e57-4fa0-9a3b-3e5ce2a403aa',NULL,'reset-credentials-choose-user','a70d8574-d800-4bf9-b056-6e5e23c893a0','8c18e9a2-b114-4bc0-abda-be1d022172b5',0,10,_binary '\0',NULL,NULL),('077990e4-c33f-42ee-ad8b-898b19be13c0',NULL,'auth-spnego','a70d8574-d800-4bf9-b056-6e5e23c893a0','7b694ee7-ccd8-4ed6-9e2c-3a2147d07c33',3,20,_binary '\0',NULL,NULL),('077e0700-1dc4-4e07-9d02-4dfca03a994a',NULL,'direct-grant-validate-password','org1','dc473ca7-7fdd-4657-a22c-82d40c7d78a2',0,20,_binary '\0',NULL,NULL),('08bf11ab-7d18-4628-a319-c4905c76e6b4',NULL,'conditional-user-configured','org1','80492698-8ba2-4951-8786-097294c8cb59',0,10,_binary '\0',NULL,NULL),('08e3effd-b10a-4352-b9a8-124eea5f26c0',NULL,'registration-password-action','org4','b0ea51f5-ddfe-4818-b146-5bd8f3700e56',0,50,_binary '\0',NULL,NULL),('09315118-e663-4c49-b5c2-d9be83a72583',NULL,'conditional-user-configured','org5','9cb86500-6a16-4d28-88d1-9d17097e0250',0,10,_binary '\0',NULL,NULL),('0978a06e-7948-4a5c-8b13-3afebe3b4d31',NULL,NULL,'org3','df44602f-2848-4d16-ba98-e1763143c437',1,30,_binary '','9a2debe8-77fa-42bc-88c7-f012fcf9d766',NULL),('0a08a482-9578-4a73-b8ca-bcf73a8ce09b',NULL,NULL,'org2','47edb96a-7b36-464a-8168-be91a9861b61',0,20,_binary '','0d6e78a4-5dc8-4aee-9837-50c5960d26ef',NULL),('0b1fea4b-60aa-4d2c-aef4-acc1645f5610',NULL,'auth-otp-form','org2','be9fce79-d7d8-49c3-b209-8b8853be33df',0,20,_binary '\0',NULL,NULL),('0e7cac93-28fa-4623-97f3-ce2dc9559287',NULL,'registration-page-form','org1','f59dac93-4f68-4224-b69d-aac3852c2e87',0,10,_binary '','dd0f6bd3-57a4-4f92-96af-0af4f8a5923c',NULL),('0f4c2a91-a1e1-40aa-bc53-c3b79a012df7',NULL,'auth-username-password-form','org2','2cfa4749-506a-43ec-b835-7d5ca912f6d8',0,10,_binary '\0',NULL,NULL),('114389b5-ea0e-4fb6-b697-f60b497e4b44',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','2a0dcba6-7337-4ba5-9549-1d29e1911b41',0,20,_binary '','bbd46cda-4e7d-42a0-a5d9-563b4718c82e',NULL),('11e210f1-cb3b-4cb7-9815-47ff148ba910',NULL,'registration-page-form','org5','af64db54-046b-47dd-9c6c-1cc7f6f7fcf3',0,10,_binary '','e19c7eff-ecdb-4b91-bb84-3673b7237f2e',NULL),('12df127b-9573-4bc8-9604-1a6849587299',NULL,'auth-spnego','a70d8574-d800-4bf9-b056-6e5e23c893a0','bbd46cda-4e7d-42a0-a5d9-563b4718c82e',3,30,_binary '\0',NULL,NULL),('146e4e31-715c-432a-b4d8-253d02a3a5d3',NULL,'registration-profile-action','org5','e19c7eff-ecdb-4b91-bb84-3673b7237f2e',0,40,_binary '\0',NULL,NULL),('14df916a-4aad-4033-a4ce-806ef073c3d7',NULL,'idp-username-password-form','org5','9382a27b-0470-4f45-8185-2a84c9fa39be',0,10,_binary '\0',NULL,NULL),('16658d9e-c48f-46b9-a648-ecf0f2006cc0',NULL,'direct-grant-validate-username','a70d8574-d800-4bf9-b056-6e5e23c893a0','7aecc7a9-7a1d-4694-be4f-ad36aaa69d18',0,10,_binary '\0',NULL,NULL),('16f4d4bd-36fc-48d4-88d0-ddd73cf04704',NULL,'idp-confirm-link','org4','965335a8-324c-4575-ba36-5773a1200f65',0,10,_binary '\0',NULL,NULL),('180f966f-0da5-47dd-a391-e680e96e4571',NULL,'docker-http-basic-authenticator','org4','4daf52bb-c22c-41df-a7ea-6b68d7afb073',0,10,_binary '\0',NULL,NULL),('18454976-5e32-47ba-9974-212bf3bc6de6',NULL,'basic-auth-otp','org2','2fd94a23-59a3-4feb-b4aa-addd864430a4',3,20,_binary '\0',NULL,NULL),('18780f0c-aeb9-4a9b-a318-ce03b8e4a4de',NULL,'conditional-user-configured','a70d8574-d800-4bf9-b056-6e5e23c893a0','5482d908-21a0-475c-afde-94346c6210a6',0,10,_binary '\0',NULL,NULL),('189994af-7cf1-459e-adc7-7a6b15f1fe92',NULL,'conditional-user-configured','org1','e5262d3d-4f33-408a-a507-310949a68758',0,10,_binary '\0',NULL,NULL),('18b9bd08-ee50-4985-ab29-70985098dddb',NULL,'conditional-user-configured','org1','6359ce0c-95ac-4bee-8138-ca5ce09c5815',0,10,_binary '\0',NULL,NULL),('1a4a98ea-bdc5-4b3f-a996-c973d4d1d155',NULL,'identity-provider-redirector','org1','57e780c4-e36e-40cb-9fd7-6f0c48e05ad3',2,25,_binary '\0',NULL,NULL),('1a4e20c8-b1ab-4bf4-b22e-8a3dea698305',NULL,'conditional-user-configured','org3','cad9fb41-03ca-47fa-9d30-5ead05cb878b',0,10,_binary '\0',NULL,NULL),('1a8c3e7b-4cdd-4d62-88fd-41ec58916b4c',NULL,'idp-confirm-link','a70d8574-d800-4bf9-b056-6e5e23c893a0','786f856e-d055-4c7b-9488-652a16f4ad58',0,10,_binary '\0',NULL,NULL),('1ab371ab-acbb-4c60-b053-1b268cea3e65',NULL,NULL,'org2','2cfa4749-506a-43ec-b835-7d5ca912f6d8',1,20,_binary '','bc8f711b-1135-4e0e-a89e-34a113505aad',NULL),('1b443a8b-61f7-4d33-bd7d-c9b4ce1271d5',NULL,'registration-password-action','org5','e19c7eff-ecdb-4b91-bb84-3673b7237f2e',0,50,_binary '\0',NULL,NULL),('1d61e950-0202-4c27-ab1d-f0afdcd1cb37',NULL,'idp-review-profile','org3','eaacff6c-1cf9-4509-b8ef-5e1fc2cdcff4',0,10,_binary '\0',NULL,'c18166c0-7c28-47a2-885d-19ea0a1ba0c4'),('1e15663f-7967-4565-9805-e4e149e19e70',NULL,'basic-auth-otp','a70d8574-d800-4bf9-b056-6e5e23c893a0','bbd46cda-4e7d-42a0-a5d9-563b4718c82e',3,20,_binary '\0',NULL,NULL),('1e630d88-e304-46ca-bc59-4c05001f366c',NULL,'idp-create-user-if-unique','org5','4793c249-ae92-4eac-bd86-541c29328f66',2,10,_binary '\0',NULL,'1cb7845f-cf85-4343-9f14-3e0588dbc4af'),('1e769329-0316-4861-a34e-132b0453faad',NULL,'reset-credentials-choose-user','org3','beda39ab-d54e-4d38-9b62-3445c618ecb3',0,10,_binary '\0',NULL,NULL),('1fac8f95-d2d9-4ab3-900f-ea088217f951',NULL,'auth-cookie','org2','a0c05b46-2460-43e6-bd87-43ab5a3e1f62',2,10,_binary '\0',NULL,NULL),('1fe54fb5-5042-4f8a-87ae-89f5e09e34fd',NULL,'auth-otp-form','a70d8574-d800-4bf9-b056-6e5e23c893a0','c058b317-b1f2-45d6-b86b-8f7764f1c8db',0,20,_binary '\0',NULL,NULL),('1ff1d96c-7a68-47d9-a87a-18297504f24d',NULL,'conditional-user-configured','a70d8574-d800-4bf9-b056-6e5e23c893a0','39f70dd7-5547-4ae8-83f2-7832d54309b2',0,10,_binary '\0',NULL,NULL),('2243cbf5-67d6-45dc-a6ae-d86ec881eaa7',NULL,NULL,'org2','4c3cd542-fb95-4a0e-8176-9e34bc39a526',1,20,_binary '','be9fce79-d7d8-49c3-b209-8b8853be33df',NULL),('2339e53c-b57b-4116-ad40-827c24a9ce13',NULL,NULL,'org3','c88f7a67-dbc0-4783-a5d1-0e4522de66f7',2,20,_binary '','d25b1ea3-1ac1-409d-921f-59db0d81d5f4',NULL),('25978aeb-8be6-4cbe-803f-ead530faa9d3',NULL,NULL,'org2','0d6e78a4-5dc8-4aee-9837-50c5960d26ef',2,20,_binary '','4c3cd542-fb95-4a0e-8176-9e34bc39a526',NULL),('2649790f-0378-452c-bb2d-94d5e22771b8',NULL,'registration-profile-action','org2','23be9755-8c69-4f76-8aac-b070ab928c84',0,40,_binary '\0',NULL,NULL),('26507c83-7c38-4cc0-abbd-5f30e798e81d',NULL,NULL,'org5','4332b1a4-4863-4bd4-bd8e-f883b89a40b0',2,20,_binary '','9382a27b-0470-4f45-8185-2a84c9fa39be',NULL),('26ed5a2d-cf7c-4708-b397-2813d757682c',NULL,'reset-credentials-choose-user','org5','1393396e-fb0a-40d6-9811-517ced90ea4b',0,10,_binary '\0',NULL,NULL),('27d40b44-5705-4a90-be5b-9b25c749f729',NULL,'direct-grant-validate-password','org3','df44602f-2848-4d16-ba98-e1763143c437',0,20,_binary '\0',NULL,NULL),('28372d3c-6ad2-42f7-9298-c93a3d4b37ad',NULL,'direct-grant-validate-password','org4','eb8428ff-517b-4f7a-bdd5-f0eb35901d39',0,20,_binary '\0',NULL,NULL),('28c15e36-dbf5-447f-9032-e2e1599205be',NULL,'http-basic-authenticator','org3','d90e6cc7-d6b1-4262-aa3d-06864c1bd963',0,10,_binary '\0',NULL,NULL),('28dd256c-8a64-40ad-b91f-1804f35fb1d6',NULL,NULL,'org3','d25b1ea3-1ac1-409d-921f-59db0d81d5f4',0,20,_binary '','7083ae1c-4496-4412-94f0-309d8ff71a0e',NULL),('2a2128dc-3a2b-4c87-88eb-03060c6ea36a',NULL,'direct-grant-validate-otp','org3','9a2debe8-77fa-42bc-88c7-f012fcf9d766',0,20,_binary '\0',NULL,NULL),('2a5b02db-2f1c-4868-82cd-eab05e6190b9',NULL,'basic-auth','org5','a1c4d5f4-5bf7-4507-8b41-57b947a3137a',0,10,_binary '\0',NULL,NULL),('2b914838-de68-4729-b098-cd1aca287ac3',NULL,NULL,'org2','f53ad29b-c4aa-4426-bedb-8593a4a030ea',1,30,_binary '','694adba8-c9fd-462c-b454-3a2fcb2e0b50',NULL),('2bbe8706-6624-4d35-a63b-7c6f4f00aca9',NULL,'auth-cookie','org3','182ee3ad-42e8-4b51-a24b-6f9bb51e698a',2,10,_binary '\0',NULL,NULL),('2ccf24d7-53ba-4e9a-86f2-c350a174ac49',NULL,'idp-email-verification','org1','bd6d0c8a-11dd-4401-a64e-ea3553a5e355',2,10,_binary '\0',NULL,NULL),('2d2354ec-3f3e-4f81-b61e-43c13ecbf70c',NULL,'auth-cookie','org4','151cd01c-2ce1-410b-b6c4-d4831933ff96',2,10,_binary '\0',NULL,NULL),('2d9b67a5-df2e-40f5-915b-b519487dc900',NULL,NULL,'org5','62a9ba74-fa82-4c6e-8120-169fcd24c31b',2,30,_binary '','cbe059c9-73c5-4f15-9326-0eeac5fe4121',NULL),('2e4918bf-c454-48f9-933e-7d1e769c1606',NULL,'reset-credential-email','org2','b62f96ae-e81a-4f27-a05c-590cb5e76114',0,20,_binary '\0',NULL,NULL),('2e6f01c6-c1c2-4a12-b2c6-caa21bdbb098',NULL,'conditional-user-configured','org5','db80c073-7810-4512-9b43-291652bbb00d',0,10,_binary '\0',NULL,NULL),('2ef14e09-baa9-4371-97c6-98bfe679e3cc',NULL,'reset-credential-email','org5','1393396e-fb0a-40d6-9811-517ced90ea4b',0,20,_binary '\0',NULL,NULL),('310fc261-ff50-4a8b-ba02-8487191fe155',NULL,'direct-grant-validate-otp','org2','694adba8-c9fd-462c-b454-3a2fcb2e0b50',0,20,_binary '\0',NULL,NULL),('31c64c51-454d-4ad5-8921-26cbe19f9642',NULL,NULL,'org1','d4c89445-0875-4e46-9d3c-fcd011c9890d',0,20,_binary '','d0335d15-1df2-4f87-b7b3-36caaa52e93d',NULL),('31c8e029-d489-45e3-b92e-f487968c6ffd',NULL,'auth-username-password-form','org1','c5c7501f-c0f0-4bf4-a3bc-4f8e19c4418a',0,10,_binary '\0',NULL,NULL),('31dfb977-f57e-431e-8fd5-4a6d956f4a2f',NULL,'client-jwt','a70d8574-d800-4bf9-b056-6e5e23c893a0','bfabe1d4-5b15-4677-afa0-d6eb2fde1464',2,20,_binary '\0',NULL,NULL),('32cf9d53-5fe5-4c13-b161-47ab364453dd',NULL,'http-basic-authenticator','org1','b12664f2-8014-4690-9b41-697f6119d580',0,10,_binary '\0',NULL,NULL),('330aec66-7a5d-4067-8fe0-5605cb712356',NULL,'idp-username-password-form','org3','1e267aeb-4856-40bf-a6ce-d0f16b611502',0,10,_binary '\0',NULL,NULL),('3376387c-1d05-4f29-ba3c-f37e980d6d70',NULL,'conditional-user-configured','org5','dc0ec6bf-f790-46b2-8701-d8fd2c6605af',0,10,_binary '\0',NULL,NULL),('34715bf2-1467-4fb0-a3fd-7a7df9f14f5b',NULL,'conditional-user-configured','org5','70abcbde-e169-4d06-b35d-49225a2f177e',0,10,_binary '\0',NULL,NULL),('34db3936-93f4-4a1b-9681-2a1281c76aba',NULL,'client-secret-jwt','org4','9a009150-b71a-4bd7-b9ab-05a392b1d166',2,30,_binary '\0',NULL,NULL),('36d6b1c9-c803-4b1d-a704-de2339acfa53',NULL,'client-secret','org5','a32d5f31-6afd-4cb9-ae68-00869ad3d853',2,10,_binary '\0',NULL,NULL),('37171815-347f-4096-8871-6403cd639432',NULL,'client-jwt','org5','a32d5f31-6afd-4cb9-ae68-00869ad3d853',2,20,_binary '\0',NULL,NULL),('37cea9ee-d67a-4638-a342-c623f863f82e',NULL,'auth-spnego','org2','2fd94a23-59a3-4feb-b4aa-addd864430a4',3,30,_binary '\0',NULL,NULL),('386f1e2e-74b4-475d-a5ce-f5131a0ca44d',NULL,'reset-otp','org5','9cb86500-6a16-4d28-88d1-9d17097e0250',0,20,_binary '\0',NULL,NULL),('38c6a2f1-2cf8-4bf2-ac09-911148d7d1a5',NULL,'client-x509','org2','6da34705-b1f7-4163-9e33-48299150473f',2,40,_binary '\0',NULL,NULL),('395751b4-7724-4ddf-93f2-2c27ca8425bb',NULL,'client-secret-jwt','org2','6da34705-b1f7-4163-9e33-48299150473f',2,30,_binary '\0',NULL,NULL),('39b230b4-fc12-4abe-b1ff-d45d9a0a3fe4',NULL,'registration-user-creation','org3','a10147db-24cc-4c5d-b33d-12aeb96c4a3b',0,20,_binary '\0',NULL,NULL),('39fe1fdf-6038-4672-94eb-c9db9d0d4d10',NULL,'registration-user-creation','org2','23be9755-8c69-4f76-8aac-b070ab928c84',0,20,_binary '\0',NULL,NULL),('3a66d60b-b5d3-438e-b6ee-db6bca0c24f8',NULL,'reset-password','org3','beda39ab-d54e-4d38-9b62-3445c618ecb3',0,30,_binary '\0',NULL,NULL),('3cac91be-a73b-443f-9556-f32ea54a8825',NULL,'client-x509','org4','9a009150-b71a-4bd7-b9ab-05a392b1d166',2,40,_binary '\0',NULL,NULL),('3dc95e9f-3865-4143-a5c6-34b511e18488',NULL,'registration-recaptcha-action','org5','e19c7eff-ecdb-4b91-bb84-3673b7237f2e',3,60,_binary '\0',NULL,NULL),('3efcb43f-c5da-45a9-a137-6216cf9b235c',NULL,'reset-password','org4','19c274d5-b6ca-4fcc-91d1-baf3bff15978',0,30,_binary '\0',NULL,NULL),('3f72e4a7-7e0b-46aa-876c-1c7e2a05ba3c',NULL,'conditional-user-configured','a70d8574-d800-4bf9-b056-6e5e23c893a0','f581172e-9fb5-4031-98ef-154a0062f7ff',0,10,_binary '\0',NULL,NULL),('4005adc6-b216-46a6-80a8-e0f48f0b0afd',NULL,'identity-provider-redirector','org3','182ee3ad-42e8-4b51-a24b-6f9bb51e698a',2,25,_binary '\0',NULL,NULL),('40114971-d68b-4d39-8dfc-5557528ea99b',NULL,'reset-password','org2','b62f96ae-e81a-4f27-a05c-590cb5e76114',0,30,_binary '\0',NULL,NULL),('40499fed-f61c-4e1f-9adf-00a046757b54',NULL,NULL,'org1','6ad86f33-5f3b-4e8f-be57-26ad7c484495',0,20,_binary '','bd6d0c8a-11dd-4401-a64e-ea3553a5e355',NULL),('40cca235-4249-456a-af00-d5576f1e17b2',NULL,'auth-otp-form','a70d8574-d800-4bf9-b056-6e5e23c893a0','5482d908-21a0-475c-afde-94346c6210a6',0,20,_binary '\0',NULL,NULL),('40f97e4a-bbd5-40d3-a2f4-7e20686d97e4',NULL,NULL,'org1','bee57192-de9b-4f17-a98a-88dd4387bc2d',2,20,_binary '','6ad86f33-5f3b-4e8f-be57-26ad7c484495',NULL),('4594bbac-9b22-4c3f-8742-d795f2c4c79c',NULL,'no-cookie-redirect','a70d8574-d800-4bf9-b056-6e5e23c893a0','2a0dcba6-7337-4ba5-9549-1d29e1911b41',0,10,_binary '\0',NULL,NULL),('45baf0a0-ef1b-48fe-8030-e41e15311b25',NULL,NULL,'org1','dc473ca7-7fdd-4657-a22c-82d40c7d78a2',1,30,_binary '','e5262d3d-4f33-408a-a507-310949a68758',NULL),('45e1f1a8-c724-4dd9-a9ec-7522ba594760',NULL,'direct-grant-validate-password','org5','320abf40-dc41-4379-8ae8-6a59b6f154e0',0,20,_binary '\0',NULL,NULL),('46175775-440a-4b57-be7b-52cf5c9a2eb4',NULL,'idp-username-password-form','org2','4c3cd542-fb95-4a0e-8176-9e34bc39a526',0,10,_binary '\0',NULL,NULL),('464292d7-e30c-44af-a517-d75ee72da046',NULL,'registration-user-creation','org4','b0ea51f5-ddfe-4818-b146-5bd8f3700e56',0,20,_binary '\0',NULL,NULL),('474bc1c1-966d-4174-9f5c-4a82cca8ea93',NULL,'basic-auth','org3','916ef643-c19d-47b5-ae29-fd1fb9e79150',0,10,_binary '\0',NULL,NULL),('47cd02b6-f698-4f6b-a8e1-41fc29831168',NULL,'basic-auth-otp','org4','92f7c19c-e357-417e-b676-e3508d3f23f6',3,20,_binary '\0',NULL,NULL),('47db30ab-e58d-49fe-94e2-152bef64cb8b',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','5047fcc7-12c3-4cf8-bc82-c06f6bd92c63',2,20,_binary '','054c373a-1650-47bc-b003-d3415179cdd1',NULL),('47f5ca04-bda3-4182-87f5-912455def434',NULL,'auth-otp-form','org1','b1aa1664-c7fd-4308-b289-afc613298093',0,20,_binary '\0',NULL,NULL),('4a878386-60ed-4031-8fd7-ded46952b3b5',NULL,'conditional-user-configured','org2','afe17517-5434-4cb7-ad1b-0c201e649e07',0,10,_binary '\0',NULL,NULL),('4ae81472-e1eb-40cf-aa26-7ef7ea684f48',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','7aecc7a9-7a1d-4694-be4f-ad36aaa69d18',1,30,_binary '','f581172e-9fb5-4031-98ef-154a0062f7ff',NULL),('4c598e86-1eae-4a01-a970-1df774194293',NULL,'idp-review-profile','org4','3d005974-a4cf-4f8c-a9d5-efa7c1f68dbd',0,10,_binary '\0',NULL,'6d9140f3-fe64-43a9-bb51-910cd4884584'),('4e505a8f-4cde-4861-9b1f-70d365cc364c',NULL,'basic-auth-otp','org1','d0335d15-1df2-4f87-b7b3-36caaa52e93d',3,20,_binary '\0',NULL,NULL),('4e55e63f-9fe4-4141-a0db-67fa88f9d78e',NULL,'auth-otp-form','org5','db80c073-7810-4512-9b43-291652bbb00d',0,20,_binary '\0',NULL,NULL),('4ec489d1-9ab7-4747-b9c8-1d8f64a3b750',NULL,NULL,'org2','fac7f825-6646-4860-a8ef-780cafc35106',0,20,_binary '','2fd94a23-59a3-4feb-b4aa-addd864430a4',NULL),('4f92dc5e-8a94-45b6-b7d6-ac26c099ea8e',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','2aa08cc4-1d79-4de8-aeff-131f2caa2f0e',2,20,_binary '','786f856e-d055-4c7b-9488-652a16f4ad58',NULL),('503c6f3f-ebcf-4ab0-bb43-c874fda7de46',NULL,'client-secret','org3','3ef6758d-fa51-4b1d-8570-7b07c80bbffd',2,10,_binary '\0',NULL,NULL),('50b53317-dd62-48c0-8e53-a9c6874e99dc',NULL,'conditional-user-configured','a70d8574-d800-4bf9-b056-6e5e23c893a0','c058b317-b1f2-45d6-b86b-8f7764f1c8db',0,10,_binary '\0',NULL,NULL),('51ccbb75-f5aa-43fa-bb26-bbcfcc1af094',NULL,'basic-auth','org1','d0335d15-1df2-4f87-b7b3-36caaa52e93d',0,10,_binary '\0',NULL,NULL),('520d956a-7a69-407b-aba3-805d21b4eb1f',NULL,'registration-user-creation','org1','dd0f6bd3-57a4-4f92-96af-0af4f8a5923c',0,20,_binary '\0',NULL,NULL),('53efbe15-db7b-4742-8487-aa1c3413b2a1',NULL,'conditional-user-configured','org3','ff72a74c-354e-42c2-9d90-c6c737edc47c',0,10,_binary '\0',NULL,NULL),('540b0874-b27d-4604-bf5c-d045bc885ce4',NULL,NULL,'org3','eaacff6c-1cf9-4509-b8ef-5e1fc2cdcff4',0,20,_binary '','c88f7a67-dbc0-4783-a5d1-0e4522de66f7',NULL),('548a3e0d-91f4-495c-acf1-9b4b32a74cd5',NULL,'reset-otp','org4','05abf91f-d084-49a7-807d-f90b18929a7d',0,20,_binary '\0',NULL,NULL),('568d4231-32b1-466a-a0a2-27a706be709b',NULL,'idp-confirm-link','org5','da49807b-3b37-44c0-b0d9-a698ea9e246d',0,10,_binary '\0',NULL,NULL),('56937045-74dd-4cf3-9617-30a5e04b29f9',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','054c373a-1650-47bc-b003-d3415179cdd1',1,20,_binary '','5482d908-21a0-475c-afde-94346c6210a6',NULL),('59806632-a456-4085-b3a2-a071b9743e74',NULL,'docker-http-basic-authenticator','a70d8574-d800-4bf9-b056-6e5e23c893a0','271ffd99-482f-44d7-934f-647f0c1ac855',0,10,_binary '\0',NULL,NULL),('5a589403-9690-46db-baf1-a62e0b25eb54',NULL,'direct-grant-validate-otp','a70d8574-d800-4bf9-b056-6e5e23c893a0','f581172e-9fb5-4031-98ef-154a0062f7ff',0,20,_binary '\0',NULL,NULL),('5b3265a8-9a78-4029-9505-f5f34da86183',NULL,'idp-create-user-if-unique','org3','c88f7a67-dbc0-4783-a5d1-0e4522de66f7',2,10,_binary '\0',NULL,'61f1104f-6be1-4c27-8b78-2fab7c0a7701'),('5f896fa8-18ff-4ffa-b49b-1ff0c2a15d1a',NULL,'registration-page-form','org4','13f91901-df24-4773-b1f8-d4cb20e0125c',0,10,_binary '','b0ea51f5-ddfe-4818-b146-5bd8f3700e56',NULL),('600695f1-35c1-435a-97ec-017cf7c96588',NULL,'http-basic-authenticator','org5','3954fb13-deb8-4697-9888-3a1cd152e878',0,10,_binary '\0',NULL,NULL),('61632f9e-6d15-4ef3-ade4-026492833f1f',NULL,NULL,'org5','425449c0-a287-4d8e-9b67-d1cf887dccb8',0,20,_binary '','a1c4d5f4-5bf7-4507-8b41-57b947a3137a',NULL),('629fc6c6-8add-466b-86ab-5f62955dc03a',NULL,'conditional-user-configured','org4','05abf91f-d084-49a7-807d-f90b18929a7d',0,10,_binary '\0',NULL,NULL),('650917d8-c911-43df-b00e-a113420840c7',NULL,'idp-email-verification','a70d8574-d800-4bf9-b056-6e5e23c893a0','5047fcc7-12c3-4cf8-bc82-c06f6bd92c63',2,10,_binary '\0',NULL,NULL),('65ba8091-95c2-4b1f-8156-23953465ccb8',NULL,'auth-spnego','org3','182ee3ad-42e8-4b51-a24b-6f9bb51e698a',3,20,_binary '\0',NULL,NULL),('65c7667e-cd43-4e26-8d33-14eb5d181bcd',NULL,'identity-provider-redirector','org4','151cd01c-2ce1-410b-b6c4-d4831933ff96',2,25,_binary '\0',NULL,NULL),('68487f12-361b-4e24-9f96-6352c7bbb9af',NULL,'idp-username-password-form','org1','0e020a95-544f-4f7f-badf-41706f23af2a',0,10,_binary '\0',NULL,NULL),('68d8ddd8-3e05-4470-b20d-ecccf6f36d51',NULL,'no-cookie-redirect','org4','b739cf14-7d64-460f-8edd-5e0ad4f3bcba',0,10,_binary '\0',NULL,NULL),('69469405-15b1-4318-aeab-d75c9085d856',NULL,'reset-credential-email','org3','beda39ab-d54e-4d38-9b62-3445c618ecb3',0,20,_binary '\0',NULL,NULL),('6980238d-635f-442e-abc3-acdcb02e02b7',NULL,'reset-otp','org2','afe17517-5434-4cb7-ad1b-0c201e649e07',0,20,_binary '\0',NULL,NULL),('6a1f0215-3dee-48f4-ad24-afa75038da1b',NULL,'client-secret-jwt','a70d8574-d800-4bf9-b056-6e5e23c893a0','bfabe1d4-5b15-4677-afa0-d6eb2fde1464',2,30,_binary '\0',NULL,NULL),('6c25d61f-61fb-46bc-a04b-fbf591f5435e',NULL,NULL,'org4','3d005974-a4cf-4f8c-a9d5-efa7c1f68dbd',0,20,_binary '','8b941ff5-15ee-4483-91e2-e0159f1b6381',NULL),('6c99b804-3a73-4918-ab1f-5f037fad1958',NULL,'reset-password','a70d8574-d800-4bf9-b056-6e5e23c893a0','8c18e9a2-b114-4bc0-abda-be1d022172b5',0,30,_binary '\0',NULL,NULL),('6d5356b7-13b0-4ab4-9581-aa7829410d42',NULL,'reset-otp','a70d8574-d800-4bf9-b056-6e5e23c893a0','39f70dd7-5547-4ae8-83f2-7832d54309b2',0,20,_binary '\0',NULL,NULL),('6df80eb6-6710-4faf-a120-5609aa3f79e1',NULL,'auth-otp-form','org3','ff72a74c-354e-42c2-9d90-c6c737edc47c',0,20,_binary '\0',NULL,NULL),('6f4d1135-1ad9-430c-a77a-e1f8d2e9288d',NULL,'basic-auth-otp','org3','916ef643-c19d-47b5-ae29-fd1fb9e79150',3,20,_binary '\0',NULL,NULL),('71454433-9e45-4945-bd3d-2b24481e5145',NULL,'auth-spnego','org4','151cd01c-2ce1-410b-b6c4-d4831933ff96',3,20,_binary '\0',NULL,NULL),('717d9f6b-3176-4b8f-8b4f-99f0bec6a155',NULL,'client-secret-jwt','org5','a32d5f31-6afd-4cb9-ae68-00869ad3d853',2,30,_binary '\0',NULL,NULL),('719a7084-42fb-4d74-998c-45f5e34eb973',NULL,'basic-auth','a70d8574-d800-4bf9-b056-6e5e23c893a0','bbd46cda-4e7d-42a0-a5d9-563b4718c82e',0,10,_binary '\0',NULL,NULL),('7244c0fe-2dc5-4bf2-8b32-46293e71dfc4',NULL,NULL,'org1','0e020a95-544f-4f7f-badf-41706f23af2a',1,20,_binary '','b1aa1664-c7fd-4308-b289-afc613298093',NULL),('729e18c1-e79a-47d2-9fc6-51f30bb2c508',NULL,'auth-cookie','org5','62a9ba74-fa82-4c6e-8120-169fcd24c31b',2,10,_binary '\0',NULL,NULL),('73d8f831-bcdb-4489-ac92-955f7b6d8043',NULL,NULL,'org1','372b78d4-a473-4791-852f-11cf96f5a969',1,40,_binary '','80492698-8ba2-4951-8786-097294c8cb59',NULL),('74e785fb-7c5f-494e-9ac2-eed86eb063dd',NULL,NULL,'org5','320abf40-dc41-4379-8ae8-6a59b6f154e0',1,30,_binary '','dc0ec6bf-f790-46b2-8701-d8fd2c6605af',NULL),('75973ba2-b8dd-4673-a3bb-0bef1fc2c338',NULL,'registration-page-form','org2','d419de07-b646-4711-96b3-a7ed0b8c5a22',0,10,_binary '','23be9755-8c69-4f76-8aac-b070ab928c84',NULL),('771736cb-06cc-43c8-baf6-9b82a532d582',NULL,'reset-credentials-choose-user','org4','19c274d5-b6ca-4fcc-91d1-baf3bff15978',0,10,_binary '\0',NULL,NULL),('786fd7c6-55b2-4188-b618-02a4d6a06fe8',NULL,'auth-spnego','org1','57e780c4-e36e-40cb-9fd7-6f0c48e05ad3',3,20,_binary '\0',NULL,NULL),('79760cf8-a276-4438-ac94-d80c46794591',NULL,'auth-spnego','org3','916ef643-c19d-47b5-ae29-fd1fb9e79150',3,30,_binary '\0',NULL,NULL),('79c6237e-7cd3-4fbf-98b2-94ff12a45146',NULL,'client-secret-jwt','org1','630db855-5c53-4f51-b446-62f6b004efa6',2,30,_binary '\0',NULL,NULL),('7aec54c4-b120-4199-8ae7-5b891e290c25',NULL,NULL,'org1','57e780c4-e36e-40cb-9fd7-6f0c48e05ad3',2,30,_binary '','c5c7501f-c0f0-4bf4-a3bc-4f8e19c4418a',NULL),('7d8bbd04-c53c-4999-a44b-08cb21c56fb5',NULL,NULL,'org4','151cd01c-2ce1-410b-b6c4-d4831933ff96',2,30,_binary '','2e7f9085-e0d6-4819-8bea-b828ec646c54',NULL),('7e062017-f6e4-4fef-b9a3-86db835c6a8b',NULL,'basic-auth','org4','92f7c19c-e357-417e-b676-e3508d3f23f6',0,10,_binary '\0',NULL,NULL),('7e93024e-f75c-4cf7-9a28-14337b4ad3d1',NULL,'registration-user-creation','org5','e19c7eff-ecdb-4b91-bb84-3673b7237f2e',0,20,_binary '\0',NULL,NULL),('7f41bcf2-2cb7-42e9-a3ce-29c404443388',NULL,'auth-spnego','org4','92f7c19c-e357-417e-b676-e3508d3f23f6',3,30,_binary '\0',NULL,NULL),('7f577120-73d5-49c9-b3e7-69e00fb7a4d1',NULL,NULL,'org3','b4b91eec-4a39-44cb-955d-d088769ff5f9',1,20,_binary '','cad9fb41-03ca-47fa-9d30-5ead05cb878b',NULL),('7f8bd769-41bd-4866-8806-a6ffe82e3615',NULL,'idp-create-user-if-unique','a70d8574-d800-4bf9-b056-6e5e23c893a0','2aa08cc4-1d79-4de8-aeff-131f2caa2f0e',2,10,_binary '\0',NULL,'d50a9b4b-8055-45a0-aa99-e8b60221cccf'),('82fe6d3e-a335-43e2-8673-b6554e2e18f0',NULL,'conditional-user-configured','org2','be9fce79-d7d8-49c3-b209-8b8853be33df',0,10,_binary '\0',NULL,NULL),('83163690-925c-4544-b2b6-47bdf4e37ae6',NULL,'reset-otp','org3','a364a470-6d74-4a56-b009-c45056d7cf0e',0,20,_binary '\0',NULL,NULL),('841e9a7d-b324-4f43-bc02-fd146c97da93',NULL,'idp-create-user-if-unique','org4','8b941ff5-15ee-4483-91e2-e0159f1b6381',2,10,_binary '\0',NULL,'b32ca8e6-21bf-42be-8908-e8ac13f7cfe6'),('84229dca-733f-4164-ad61-3d51a94dbcae',NULL,'direct-grant-validate-password','a70d8574-d800-4bf9-b056-6e5e23c893a0','7aecc7a9-7a1d-4694-be4f-ad36aaa69d18',0,20,_binary '\0',NULL,NULL),('84664dd7-bbc6-4927-b5b3-b1a7b97fb5c4',NULL,'docker-http-basic-authenticator','org5','a3aeb95b-88b8-4e0a-92d0-61870ceeda73',0,10,_binary '\0',NULL,NULL),('85c5dc6b-c564-4d2c-ae5f-4d41d1c9bd3e',NULL,'auth-otp-form','org2','bc8f711b-1135-4e0e-a89e-34a113505aad',0,20,_binary '\0',NULL,NULL),('85fe3800-01a2-4a10-980f-3e5f7432d04a',NULL,'idp-create-user-if-unique','org2','de64e9f0-3c2f-41bf-a09b-5a0615d775a0',2,10,_binary '\0',NULL,'f6d3c223-c113-4a0b-9e64-8235fd8d371c'),('85ffea56-2308-4ca3-ad50-97d175cc3e48',NULL,'client-x509','a70d8574-d800-4bf9-b056-6e5e23c893a0','bfabe1d4-5b15-4677-afa0-d6eb2fde1464',2,40,_binary '\0',NULL,NULL),('8a156d1b-86a6-4b4f-af0e-eb8cb98b0ca6',NULL,NULL,'org2','b62f96ae-e81a-4f27-a05c-590cb5e76114',1,40,_binary '','afe17517-5434-4cb7-ad1b-0c201e649e07',NULL),('8c8687b5-ddc2-44a4-b6f2-c06f1165bbde',NULL,NULL,'org1','bd6d0c8a-11dd-4401-a64e-ea3553a5e355',2,20,_binary '','0e020a95-544f-4f7f-badf-41706f23af2a',NULL),('8c900e84-2c6f-41dd-8d9d-5c2271b4e6c0',NULL,'conditional-user-configured','org3','9a2debe8-77fa-42bc-88c7-f012fcf9d766',0,10,_binary '\0',NULL,NULL),('8ca30a45-aa07-48cf-a433-0ba5fa128848',NULL,NULL,'org3','182ee3ad-42e8-4b51-a24b-6f9bb51e698a',2,30,_binary '','b4b91eec-4a39-44cb-955d-d088769ff5f9',NULL),('8e0f617a-ca9f-4b27-b055-b98ac260a17b',NULL,NULL,'org4','19c274d5-b6ca-4fcc-91d1-baf3bff15978',1,40,_binary '','05abf91f-d084-49a7-807d-f90b18929a7d',NULL),('907a49f5-09f6-4893-bfe9-d2ec1a381bee',NULL,'conditional-user-configured','org4','d839288b-f414-40d3-afe4-131075facca5',0,10,_binary '\0',NULL,NULL),('90b6df10-91d2-4494-b86e-19a95b89d22e',NULL,NULL,'org4','48d5bd2b-abfa-4512-97ad-ed7f8c2c4f53',2,20,_binary '','c38c2eb8-b4ad-4197-8ef6-5f47cd0ee228',NULL),('91207670-1dbe-4c8a-a82a-c53a4138646d',NULL,'client-secret','org1','630db855-5c53-4f51-b446-62f6b004efa6',2,10,_binary '\0',NULL,NULL),('92d95405-1479-43ab-9ba7-72e64e1ccce8',NULL,NULL,'org3','7083ae1c-4496-4412-94f0-309d8ff71a0e',2,20,_binary '','1e267aeb-4856-40bf-a6ce-d0f16b611502',NULL),('93ddcb66-1134-4aa1-8a6e-490ee32b6961',NULL,'reset-credential-email','org1','372b78d4-a473-4791-852f-11cf96f5a969',0,20,_binary '\0',NULL,NULL),('949abbb2-97ec-4a30-bd8b-5e2ab7f206be',NULL,'registration-recaptcha-action','org1','dd0f6bd3-57a4-4f92-96af-0af4f8a5923c',3,60,_binary '\0',NULL,NULL),('94cb196d-79d6-4fff-9553-33e49abd5c5a',NULL,'registration-recaptcha-action','org3','a10147db-24cc-4c5d-b33d-12aeb96c4a3b',3,60,_binary '\0',NULL,NULL),('987fdb09-5a4f-421e-b82f-b27e66e51498',NULL,'idp-confirm-link','org1','6ad86f33-5f3b-4e8f-be57-26ad7c484495',0,10,_binary '\0',NULL,NULL),('9887a5cb-bd65-4638-a794-052cfa278ec3',NULL,'idp-review-profile','org5','62fbb3ad-a843-46ca-8e0c-be301e2d85f6',0,10,_binary '\0',NULL,'6bcb63cc-f20d-4ea7-9579-b3a314f1bf27'),('9994c1c8-42a6-40c1-963a-1150f5314f90',NULL,'client-secret','org2','6da34705-b1f7-4163-9e33-48299150473f',2,10,_binary '\0',NULL,NULL),('9a0c095c-82b2-44e6-a200-0a36a97cca2c',NULL,NULL,'org5','9382a27b-0470-4f45-8185-2a84c9fa39be',1,20,_binary '','db80c073-7810-4512-9b43-291652bbb00d',NULL),('9aa031ca-d2a4-4053-a579-b56559c4fe52',NULL,'reset-otp','org1','80492698-8ba2-4951-8786-097294c8cb59',0,20,_binary '\0',NULL,NULL),('9bb78e4a-3758-4551-b4a5-7dd4c269051f',NULL,'idp-review-profile','org2','278ce04d-0b46-4192-adfd-da139f715660',0,10,_binary '\0',NULL,'07742e2d-f433-4879-9352-c5309b1db86b'),('9cba24cd-318f-4dac-a56f-4e4f36d63ea5',NULL,'registration-user-creation','a70d8574-d800-4bf9-b056-6e5e23c893a0','51295dcd-9d75-4f36-8bd0-97194c5a3e14',0,20,_binary '\0',NULL,NULL),('9cd7f762-4ebb-4242-91a7-77fe9d5d175d',NULL,NULL,'org2','a0c05b46-2460-43e6-bd87-43ab5a3e1f62',2,30,_binary '','2cfa4749-506a-43ec-b835-7d5ca912f6d8',NULL),('9e2cbb6c-13d0-48fa-965f-773de9cd1e8e',NULL,'registration-recaptcha-action','a70d8574-d800-4bf9-b056-6e5e23c893a0','51295dcd-9d75-4f36-8bd0-97194c5a3e14',3,60,_binary '\0',NULL,NULL),('9e69fc66-4ccd-4620-bafd-311502bbf0ea',NULL,'client-secret-jwt','org3','3ef6758d-fa51-4b1d-8570-7b07c80bbffd',2,30,_binary '\0',NULL,NULL),('a04d45c8-95d7-4e2e-8be9-4da126894d0a',NULL,'client-x509','org3','3ef6758d-fa51-4b1d-8570-7b07c80bbffd',2,40,_binary '\0',NULL,NULL),('a06c12b0-440b-4a90-981e-9980507fb717',NULL,'client-jwt','org4','9a009150-b71a-4bd7-b9ab-05a392b1d166',2,20,_binary '\0',NULL,NULL),('a115efe5-a28c-4cd9-b7ac-2c08a4c144ea',NULL,'docker-http-basic-authenticator','org2','ed12923a-1593-4e2a-8bd4-335bf647c8b5',0,10,_binary '\0',NULL,NULL),('a2820bdd-bfcd-43b6-9b3a-a02128590def',NULL,'direct-grant-validate-username','org1','dc473ca7-7fdd-4657-a22c-82d40c7d78a2',0,10,_binary '\0',NULL,NULL),('a332526b-0bfc-4a4d-ba28-71713f64adf8',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','786f856e-d055-4c7b-9488-652a16f4ad58',0,20,_binary '','5047fcc7-12c3-4cf8-bc82-c06f6bd92c63',NULL),('a5a49d61-9816-46d3-82d8-54623bebfe3c',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','9fbef564-5cfc-47c4-9f09-048352d310df',1,20,_binary '','c058b317-b1f2-45d6-b86b-8f7764f1c8db',NULL),('a63ac1f3-815e-4fe2-bf38-a9ae9dcc0606',NULL,'direct-grant-validate-otp','org1','e5262d3d-4f33-408a-a507-310949a68758',0,20,_binary '\0',NULL,NULL),('a7978764-ab2a-4d0e-b958-416ce7763018',NULL,'idp-confirm-link','org3','d25b1ea3-1ac1-409d-921f-59db0d81d5f4',0,10,_binary '\0',NULL,NULL),('a910a704-96ce-45c9-b5f9-5afa6064069c',NULL,'client-secret','a70d8574-d800-4bf9-b056-6e5e23c893a0','bfabe1d4-5b15-4677-afa0-d6eb2fde1464',2,10,_binary '\0',NULL,NULL),('a9263c05-b636-4853-98cf-109f8ac9a7cb',NULL,'no-cookie-redirect','org2','fac7f825-6646-4860-a8ef-780cafc35106',0,10,_binary '\0',NULL,NULL),('a945844a-ce57-4abd-9fb4-7711806ae833',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','67a372ba-cd2b-4bf1-8e30-9b7e54071c36',0,20,_binary '','2aa08cc4-1d79-4de8-aeff-131f2caa2f0e',NULL),('ab265b0e-6599-450f-985d-b2cec6bc70c6',NULL,NULL,'org4','965335a8-324c-4575-ba36-5773a1200f65',0,20,_binary '','48d5bd2b-abfa-4512-97ad-ed7f8c2c4f53',NULL),('ab3ef7ca-ba13-4509-9806-7c293c4633ee',NULL,'auth-cookie','org1','57e780c4-e36e-40cb-9fd7-6f0c48e05ad3',2,10,_binary '\0',NULL,NULL),('ad2dd19c-1573-44da-9a6f-e6d0a48d1c9d',NULL,NULL,'org1','fb742a84-f43f-4820-84ee-c736b5226907',0,20,_binary '','bee57192-de9b-4f17-a98a-88dd4387bc2d',NULL),('ae3bc0a4-9203-42bb-bb79-82fcb0eee298',NULL,'auth-spnego','org2','a0c05b46-2460-43e6-bd87-43ab5a3e1f62',3,20,_binary '\0',NULL,NULL),('aef33f0e-c0d7-4e09-985e-d75019580a78',NULL,'conditional-user-configured','org1','b1aa1664-c7fd-4308-b289-afc613298093',0,10,_binary '\0',NULL,NULL),('afbf639f-4eaf-40e3-93ac-ac82bbbfba1f',NULL,'registration-profile-action','org1','dd0f6bd3-57a4-4f92-96af-0af4f8a5923c',0,40,_binary '\0',NULL,NULL),('affc779d-e3fc-45fa-93ef-526427026e74',NULL,'conditional-user-configured','org4','da4b0c4a-5891-4b90-aa55-4d4693e6e536',0,10,_binary '\0',NULL,NULL),('b0910b54-a42c-4521-9634-8168f0e5c985',NULL,'idp-email-verification','org2','0d6e78a4-5dc8-4aee-9837-50c5960d26ef',2,10,_binary '\0',NULL,NULL),('b1587fd0-e30a-4cb3-9f7b-0448084b9162',NULL,'idp-username-password-form','org4','c38c2eb8-b4ad-4197-8ef6-5f47cd0ee228',0,10,_binary '\0',NULL,NULL),('b27d6698-877e-4570-a1b5-d0ee15781d71',NULL,'client-x509','org1','630db855-5c53-4f51-b446-62f6b004efa6',2,40,_binary '\0',NULL,NULL),('b3648f3b-bf9a-40ab-a982-ff6cc16629e0',NULL,NULL,'org5','1393396e-fb0a-40d6-9811-517ced90ea4b',1,40,_binary '','9cb86500-6a16-4d28-88d1-9d17097e0250',NULL),('b41ff151-061e-471d-969e-ee8f868ac407',NULL,NULL,'org4','eb8428ff-517b-4f7a-bdd5-f0eb35901d39',1,30,_binary '','da4b0c4a-5891-4b90-aa55-4d4693e6e536',NULL),('b4d9bb37-6e83-4078-bbc2-16d834686f43',NULL,'direct-grant-validate-otp','org4','da4b0c4a-5891-4b90-aa55-4d4693e6e536',0,20,_binary '\0',NULL,NULL),('b551d7a5-983d-45b4-8bf3-f0833c81bc6b',NULL,'auth-otp-form','org5','70abcbde-e169-4d06-b35d-49225a2f177e',0,20,_binary '\0',NULL,NULL),('b5c24901-00ce-432f-8ad2-0db2dc847301',NULL,'registration-recaptcha-action','org4','b0ea51f5-ddfe-4818-b146-5bd8f3700e56',3,60,_binary '\0',NULL,NULL),('b7f1e5fa-8252-4704-a628-d27e369dc84f',NULL,'idp-email-verification','org4','48d5bd2b-abfa-4512-97ad-ed7f8c2c4f53',2,10,_binary '\0',NULL,NULL),('bae17349-61c5-40c9-97eb-d2dbc3111758',NULL,NULL,'org2','278ce04d-0b46-4192-adfd-da139f715660',0,20,_binary '','de64e9f0-3c2f-41bf-a09b-5a0615d775a0',NULL),('bb8441e0-6030-468b-aaa4-ad3668519237',NULL,'http-basic-authenticator','a70d8574-d800-4bf9-b056-6e5e23c893a0','70fc142e-9209-4ab0-8105-3c1eb94e2bfb',0,10,_binary '\0',NULL,NULL),('bb8c5a50-cc6d-40d9-a0d4-c95229a9cdbc',NULL,'auth-username-password-form','org5','cbe059c9-73c5-4f15-9326-0eeac5fe4121',0,10,_binary '\0',NULL,NULL),('bb99922d-8cc2-4542-a9a5-ee391e36e3b4',NULL,'http-basic-authenticator','org4','92c7d096-298d-4e98-ba1d-a69ba89e8af3',0,10,_binary '\0',NULL,NULL),('bc45840c-24fd-413b-80e4-c63b12d31f34',NULL,'idp-email-verification','org3','7083ae1c-4496-4412-94f0-309d8ff71a0e',2,10,_binary '\0',NULL,NULL),('bc9b3b62-7e7a-41e9-8581-4900bdd3c71e',NULL,NULL,'org5','cbe059c9-73c5-4f15-9326-0eeac5fe4121',1,20,_binary '','70abcbde-e169-4d06-b35d-49225a2f177e',NULL),('bd97ed88-a567-4192-a38d-041b59700e10',NULL,'auth-username-password-form','org4','2e7f9085-e0d6-4819-8bea-b828ec646c54',0,10,_binary '\0',NULL,NULL),('c00ffed8-922b-4b94-8445-a4cac3c3c3c5',NULL,'registration-page-form','org3','521fd7ef-d138-497b-a587-3476ab9f2764',0,10,_binary '','a10147db-24cc-4c5d-b33d-12aeb96c4a3b',NULL),('c14f631b-02f2-4e66-80be-044676ef491e',NULL,'auth-otp-form','org4','d839288b-f414-40d3-afe4-131075facca5',0,20,_binary '\0',NULL,NULL),('c206787a-67c3-4d19-ba25-0430e4f43ddd',NULL,'identity-provider-redirector','a70d8574-d800-4bf9-b056-6e5e23c893a0','7b694ee7-ccd8-4ed6-9e2c-3a2147d07c33',2,25,_binary '\0',NULL,NULL),('c22b6445-3b44-4fa9-8a36-db703bfca366',NULL,'reset-credential-email','a70d8574-d800-4bf9-b056-6e5e23c893a0','8c18e9a2-b114-4bc0-abda-be1d022172b5',0,20,_binary '\0',NULL,NULL),('c3b4d28f-f5fb-45a7-ac65-4b9fd9e8956f',NULL,NULL,'org1','c5c7501f-c0f0-4bf4-a3bc-4f8e19c4418a',1,20,_binary '','6359ce0c-95ac-4bee-8138-ca5ce09c5815',NULL),('c4281d42-c38b-491a-a638-3c2fb0690a00',NULL,'registration-page-form','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e52095f-5cd9-460f-b44f-241be2477e02',0,10,_binary '','51295dcd-9d75-4f36-8bd0-97194c5a3e14',NULL),('c492275e-2ca6-4d02-bf79-63135e512d66',NULL,'conditional-user-configured','org4','a7bfcb76-755c-4bd1-9dc2-5711d73e71aa',0,10,_binary '\0',NULL,NULL),('c5b111aa-6b99-4326-b78f-4cba25d00992',NULL,'idp-email-verification','org5','4332b1a4-4863-4bd4-bd8e-f883b89a40b0',2,10,_binary '\0',NULL,NULL),('c6635123-79a2-4040-b584-69b3e5613df5',NULL,NULL,'org4','b739cf14-7d64-460f-8edd-5e0ad4f3bcba',0,20,_binary '','92f7c19c-e357-417e-b676-e3508d3f23f6',NULL),('c6e5794a-29f6-45bf-adb2-89046d9bc821',NULL,'registration-password-action','org3','a10147db-24cc-4c5d-b33d-12aeb96c4a3b',0,50,_binary '\0',NULL,NULL),('ca5d2831-ad41-472c-a3d8-77e2e87f023f',NULL,'registration-password-action','org2','23be9755-8c69-4f76-8aac-b070ab928c84',0,50,_binary '\0',NULL,NULL),('cc2d39f9-210a-4e87-95cc-9b1844064b06',NULL,NULL,'org5','4793c249-ae92-4eac-bd86-541c29328f66',2,20,_binary '','da49807b-3b37-44c0-b0d9-a698ea9e246d',NULL),('cc79c7c3-f7b2-46e6-8ff3-7be7c39cf03f',NULL,'docker-http-basic-authenticator','org1','5fd2156d-8ee6-42c9-98fd-012087a5a8c9',0,10,_binary '\0',NULL,NULL),('cd03c038-eb57-422d-9cba-30fd0806aa80',NULL,'auth-cookie','a70d8574-d800-4bf9-b056-6e5e23c893a0','7b694ee7-ccd8-4ed6-9e2c-3a2147d07c33',2,10,_binary '\0',NULL,NULL),('cdd7151f-e698-4cb1-ac2c-9f04d36b5994',NULL,'client-jwt','org1','630db855-5c53-4f51-b446-62f6b004efa6',2,20,_binary '\0',NULL,NULL),('ce324bd7-b8ce-4cc0-9edb-073e7780f65d',NULL,'no-cookie-redirect','org5','425449c0-a287-4d8e-9b67-d1cf887dccb8',0,10,_binary '\0',NULL,NULL),('cfa9db99-6616-4236-be61-8a79e9d85111',NULL,NULL,'org4','2e7f9085-e0d6-4819-8bea-b828ec646c54',1,20,_binary '','a7bfcb76-755c-4bd1-9dc2-5711d73e71aa',NULL),('d0724928-88a5-4915-aa85-cb7924c95fb5',NULL,NULL,'org5','da49807b-3b37-44c0-b0d9-a698ea9e246d',0,20,_binary '','4332b1a4-4863-4bd4-bd8e-f883b89a40b0',NULL),('d125a73d-e1f8-4d8d-8a70-90a722a488d9',NULL,'registration-recaptcha-action','org2','23be9755-8c69-4f76-8aac-b070ab928c84',3,60,_binary '\0',NULL,NULL),('d19b1153-3e84-4eac-93f5-6845ca0d72ad',NULL,'client-jwt','org3','3ef6758d-fa51-4b1d-8570-7b07c80bbffd',2,20,_binary '\0',NULL,NULL),('d2525c8d-b643-432b-ab5b-af8159a6a53a',NULL,'idp-review-profile','a70d8574-d800-4bf9-b056-6e5e23c893a0','67a372ba-cd2b-4bf1-8e30-9b7e54071c36',0,10,_binary '\0',NULL,'a252d419-2191-4a64-b7c3-70e2a3e69175'),('d334070b-4ce1-4d98-bcab-4890ecd0d650',NULL,NULL,'org3','1e267aeb-4856-40bf-a6ce-d0f16b611502',1,20,_binary '','ff72a74c-354e-42c2-9d90-c6c737edc47c',NULL),('d4383d14-a613-491d-9e6d-8797ac52e884',NULL,'no-cookie-redirect','org1','d4c89445-0875-4e46-9d3c-fcd011c9890d',0,10,_binary '\0',NULL,NULL),('d4a5c353-fc8c-42f3-8706-edd6eeed5f9b',NULL,'reset-credentials-choose-user','org2','b62f96ae-e81a-4f27-a05c-590cb5e76114',0,10,_binary '\0',NULL,NULL),('d5117517-1369-44d0-b4fa-be7c72337570',NULL,NULL,'org3','beda39ab-d54e-4d38-9b62-3445c618ecb3',1,40,_binary '','a364a470-6d74-4a56-b009-c45056d7cf0e',NULL),('d91402ba-e5c4-4f84-94ff-a47421b04d68',NULL,'conditional-user-configured','org2','694adba8-c9fd-462c-b454-3a2fcb2e0b50',0,10,_binary '\0',NULL,NULL),('da08f1c9-9caa-4e81-9924-6098d352a725',NULL,'reset-password','org5','1393396e-fb0a-40d6-9811-517ced90ea4b',0,30,_binary '\0',NULL,NULL),('da31c576-0b16-4d58-93f0-b8db7fe58a91',NULL,'registration-password-action','org1','dd0f6bd3-57a4-4f92-96af-0af4f8a5923c',0,50,_binary '\0',NULL,NULL),('dab7fcf1-0547-4f2e-9418-8d6fe933cb52',NULL,'auth-username-password-form','a70d8574-d800-4bf9-b056-6e5e23c893a0','9fbef564-5cfc-47c4-9f09-048352d310df',0,10,_binary '\0',NULL,NULL),('db1b1e02-efa5-4630-9136-6276717e0198',NULL,'basic-auth-otp','org5','a1c4d5f4-5bf7-4507-8b41-57b947a3137a',3,20,_binary '\0',NULL,NULL),('db707ad3-0283-431a-a055-2202c9edefc9',NULL,'idp-username-password-form','a70d8574-d800-4bf9-b056-6e5e23c893a0','054c373a-1650-47bc-b003-d3415179cdd1',0,10,_binary '\0',NULL,NULL),('dbfc6671-d1f3-458a-9b6f-d009c22ba8a2',NULL,'auth-otp-form','org4','a7bfcb76-755c-4bd1-9dc2-5711d73e71aa',0,20,_binary '\0',NULL,NULL),('dcbfb0bd-d7a0-4129-ac55-11ea4f93cff7',NULL,'idp-confirm-link','org2','47edb96a-7b36-464a-8168-be91a9861b61',0,10,_binary '\0',NULL,NULL),('de76000f-87ce-4c72-87be-2a1700b9506a',NULL,'auth-spnego','org5','a1c4d5f4-5bf7-4507-8b41-57b947a3137a',3,30,_binary '\0',NULL,NULL),('deae37a5-1dd8-48a6-8cfb-131709bc398c',NULL,'auth-spnego','org5','62a9ba74-fa82-4c6e-8120-169fcd24c31b',3,20,_binary '\0',NULL,NULL),('df1f5f3c-0666-487a-8fc9-986b4e2611d1',NULL,'auth-otp-form','org1','6359ce0c-95ac-4bee-8138-ca5ce09c5815',0,20,_binary '\0',NULL,NULL),('e0c266b0-a4ed-4bd4-ac1d-e34a150d97c4',NULL,'auth-otp-form','org3','cad9fb41-03ca-47fa-9d30-5ead05cb878b',0,20,_binary '\0',NULL,NULL),('e13f0607-9a93-46ac-a3ef-1daf5eb4fe27',NULL,'direct-grant-validate-username','org5','320abf40-dc41-4379-8ae8-6a59b6f154e0',0,10,_binary '\0',NULL,NULL),('e1a0d519-7006-448a-aeda-b5ba479f99ea',NULL,'identity-provider-redirector','org2','a0c05b46-2460-43e6-bd87-43ab5a3e1f62',2,25,_binary '\0',NULL,NULL),('e3a0692b-a48d-4d3c-9a09-267d32852851',NULL,'basic-auth','org2','2fd94a23-59a3-4feb-b4aa-addd864430a4',0,10,_binary '\0',NULL,NULL),('e48ac3f8-638b-453c-9f3f-7c53f3a2bfb7',NULL,'direct-grant-validate-username','org3','df44602f-2848-4d16-ba98-e1763143c437',0,10,_binary '\0',NULL,NULL),('e5d1afd3-7674-4742-9e34-4f3499576d09',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','7b694ee7-ccd8-4ed6-9e2c-3a2147d07c33',2,30,_binary '','9fbef564-5cfc-47c4-9f09-048352d310df',NULL),('e65a7590-83b4-49c2-a02e-a5aacfc4309a',NULL,NULL,'org2','de64e9f0-3c2f-41bf-a09b-5a0615d775a0',2,20,_binary '','47edb96a-7b36-464a-8168-be91a9861b61',NULL),('e6ff061f-67e0-4c7e-9035-799de5d96284',NULL,'auth-username-password-form','org3','b4b91eec-4a39-44cb-955d-d088769ff5f9',0,10,_binary '\0',NULL,NULL),('e8c7b406-c97d-4917-a59c-5a892bd164fa',NULL,NULL,'org4','8b941ff5-15ee-4483-91e2-e0159f1b6381',2,20,_binary '','965335a8-324c-4575-ba36-5773a1200f65',NULL),('ea00cab6-c2bd-4a5a-9bb2-a21b44eeaac6',NULL,'direct-grant-validate-password','org2','f53ad29b-c4aa-4426-bedb-8593a4a030ea',0,20,_binary '\0',NULL,NULL),('eb50c8a8-3480-4a2a-8028-e360d2a9a7d8',NULL,'auth-spnego','org1','d0335d15-1df2-4f87-b7b3-36caaa52e93d',3,30,_binary '\0',NULL,NULL),('ebf6dd35-d38a-492d-b799-385199473561',NULL,'direct-grant-validate-username','org4','eb8428ff-517b-4f7a-bdd5-f0eb35901d39',0,10,_binary '\0',NULL,NULL),('ec2d2148-e3cb-42db-a558-56fb5f2f3f39',NULL,'reset-credentials-choose-user','org1','372b78d4-a473-4791-852f-11cf96f5a969',0,10,_binary '\0',NULL,NULL),('ed715dd6-b8a8-4f81-8233-825a7b2eed2f',NULL,'conditional-user-configured','org3','a364a470-6d74-4a56-b009-c45056d7cf0e',0,10,_binary '\0',NULL,NULL),('ee2afd19-d30c-44b0-b890-aebff47e34d8',NULL,'client-jwt','org2','6da34705-b1f7-4163-9e33-48299150473f',2,20,_binary '\0',NULL,NULL),('ee91513a-5391-4086-bc83-e8c1177d4d80',NULL,'reset-password','org1','372b78d4-a473-4791-852f-11cf96f5a969',0,30,_binary '\0',NULL,NULL),('f093b435-4bcd-4ce6-bdef-7db27a26e4ba',NULL,'client-secret','org4','9a009150-b71a-4bd7-b9ab-05a392b1d166',2,10,_binary '\0',NULL,NULL),('f3a9727a-2548-4eae-bd2f-8c97bde863d5',NULL,NULL,'org3','32d5493c-8550-4eb9-9a1b-82196d079be4',0,20,_binary '','916ef643-c19d-47b5-ae29-fd1fb9e79150',NULL),('f4e9a795-5a1b-4683-98a8-63bd388227b6',NULL,NULL,'org4','c38c2eb8-b4ad-4197-8ef6-5f47cd0ee228',1,20,_binary '','d839288b-f414-40d3-afe4-131075facca5',NULL),('f6f57ef1-d620-4fce-b09e-0092ac8f85de',NULL,'docker-http-basic-authenticator','org3','da84bb4a-f2a6-487b-96ec-58543e0a589e',0,10,_binary '\0',NULL,NULL),('f801775f-49a9-45d1-9a35-df6a4bdfc33e',NULL,'identity-provider-redirector','org5','62a9ba74-fa82-4c6e-8120-169fcd24c31b',2,25,_binary '\0',NULL,NULL),('f91fa08e-0434-4a0b-80cf-2f89d686db47',NULL,'registration-profile-action','a70d8574-d800-4bf9-b056-6e5e23c893a0','51295dcd-9d75-4f36-8bd0-97194c5a3e14',0,40,_binary '\0',NULL,NULL),('fadd74a3-cb25-4eea-9431-d42328915149',NULL,'conditional-user-configured','org2','bc8f711b-1135-4e0e-a89e-34a113505aad',0,10,_binary '\0',NULL,NULL),('fb1f2aa7-4712-4801-9797-94f1dd0a9dd1',NULL,'direct-grant-validate-otp','org5','dc0ec6bf-f790-46b2-8701-d8fd2c6605af',0,20,_binary '\0',NULL,NULL),('fc4ae644-3c3a-4f2e-83a3-4e937b3bbc5e',NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','8c18e9a2-b114-4bc0-abda-be1d022172b5',1,40,_binary '','39f70dd7-5547-4ae8-83f2-7832d54309b2',NULL),('fc87619d-d1b8-4880-9367-cbf3d30f41cf',NULL,'registration-profile-action','org4','b0ea51f5-ddfe-4818-b146-5bd8f3700e56',0,40,_binary '\0',NULL,NULL),('fd01fb14-390a-4faa-bf2f-9d200ddbfda0',NULL,'registration-password-action','a70d8574-d800-4bf9-b056-6e5e23c893a0','51295dcd-9d75-4f36-8bd0-97194c5a3e14',0,50,_binary '\0',NULL,NULL),('fe942cf1-507f-4746-ae01-7c139144aa6a',NULL,'idp-create-user-if-unique','org1','bee57192-de9b-4f17-a98a-88dd4387bc2d',2,10,_binary '\0',NULL,'0b4f301d-d137-4c3b-bbd0-9a307c734d6b'),('ffe0f5d1-69d0-48b8-a261-20219ecdaf09',NULL,'no-cookie-redirect','org3','32d5493c-8550-4eb9-9a1b-82196d079be4',0,10,_binary '\0',NULL,NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('054c373a-1650-47bc-b003-d3415179cdd1','Verify Existing Account by Re-authentication','Reauthentication of existing account','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('05abf91f-d084-49a7-807d-f90b18929a7d','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',_binary '\0',_binary ''),('0d6e78a4-5dc8-4aee-9837-50c5960d26ef','Account verification options','Method with which to verity the existing account','org2','basic-flow',_binary '\0',_binary ''),('0e020a95-544f-4f7f-badf-41706f23af2a','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',_binary '\0',_binary ''),('0e52095f-5cd9-460f-b44f-241be2477e02','registration','registration flow','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('1393396e-fb0a-40d6-9811-517ced90ea4b','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',_binary '',_binary ''),('13f91901-df24-4773-b1f8-d4cb20e0125c','registration','registration flow','org4','basic-flow',_binary '',_binary ''),('151cd01c-2ce1-410b-b6c4-d4831933ff96','browser','browser based authentication','org4','basic-flow',_binary '',_binary ''),('182ee3ad-42e8-4b51-a24b-6f9bb51e698a','browser','browser based authentication','org3','basic-flow',_binary '',_binary ''),('19c274d5-b6ca-4fcc-91d1-baf3bff15978','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',_binary '',_binary ''),('1e267aeb-4856-40bf-a6ce-d0f16b611502','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',_binary '\0',_binary ''),('23be9755-8c69-4f76-8aac-b070ab928c84','registration form','registration form','org2','form-flow',_binary '\0',_binary ''),('271ffd99-482f-44d7-934f-647f0c1ac855','docker auth','Used by Docker clients to authenticate against the IDP','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('278ce04d-0b46-4192-adfd-da139f715660','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',_binary '',_binary ''),('2a0dcba6-7337-4ba5-9549-1d29e1911b41','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('2aa08cc4-1d79-4de8-aeff-131f2caa2f0e','User creation or linking','Flow for the existing/non-existing user alternatives','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('2cfa4749-506a-43ec-b835-7d5ca912f6d8','forms','Username, password, otp and other auth forms.','org2','basic-flow',_binary '\0',_binary ''),('2e7f9085-e0d6-4819-8bea-b828ec646c54','forms','Username, password, otp and other auth forms.','org4','basic-flow',_binary '\0',_binary ''),('2fd94a23-59a3-4feb-b4aa-addd864430a4','Authentication Options','Authentication options.','org2','basic-flow',_binary '\0',_binary ''),('320abf40-dc41-4379-8ae8-6a59b6f154e0','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',_binary '',_binary ''),('32d5493c-8550-4eb9-9a1b-82196d079be4','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org3','basic-flow',_binary '',_binary ''),('372b78d4-a473-4791-852f-11cf96f5a969','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',_binary '',_binary ''),('3954fb13-deb8-4697-9888-3a1cd152e878','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',_binary '',_binary ''),('39f70dd7-5547-4ae8-83f2-7832d54309b2','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('3d005974-a4cf-4f8c-a9d5-efa7c1f68dbd','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',_binary '',_binary ''),('3ef6758d-fa51-4b1d-8570-7b07c80bbffd','clients','Base authentication for clients','org3','client-flow',_binary '',_binary ''),('425449c0-a287-4d8e-9b67-d1cf887dccb8','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org5','basic-flow',_binary '',_binary ''),('4332b1a4-4863-4bd4-bd8e-f883b89a40b0','Account verification options','Method with which to verity the existing account','org5','basic-flow',_binary '\0',_binary ''),('4793c249-ae92-4eac-bd86-541c29328f66','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',_binary '\0',_binary ''),('47edb96a-7b36-464a-8168-be91a9861b61','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',_binary '\0',_binary ''),('48d5bd2b-abfa-4512-97ad-ed7f8c2c4f53','Account verification options','Method with which to verity the existing account','org4','basic-flow',_binary '\0',_binary ''),('4c3cd542-fb95-4a0e-8176-9e34bc39a526','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',_binary '\0',_binary ''),('4daf52bb-c22c-41df-a7ea-6b68d7afb073','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',_binary '',_binary ''),('5047fcc7-12c3-4cf8-bc82-c06f6bd92c63','Account verification options','Method with which to verity the existing account','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('51295dcd-9d75-4f36-8bd0-97194c5a3e14','registration form','registration form','a70d8574-d800-4bf9-b056-6e5e23c893a0','form-flow',_binary '\0',_binary ''),('521fd7ef-d138-497b-a587-3476ab9f2764','registration','registration flow','org3','basic-flow',_binary '',_binary ''),('5482d908-21a0-475c-afde-94346c6210a6','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('57e780c4-e36e-40cb-9fd7-6f0c48e05ad3','browser','browser based authentication','org1','basic-flow',_binary '',_binary ''),('5fd2156d-8ee6-42c9-98fd-012087a5a8c9','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',_binary '',_binary ''),('62a9ba74-fa82-4c6e-8120-169fcd24c31b','browser','browser based authentication','org5','basic-flow',_binary '',_binary ''),('62fbb3ad-a843-46ca-8e0c-be301e2d85f6','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',_binary '',_binary ''),('630db855-5c53-4f51-b446-62f6b004efa6','clients','Base authentication for clients','org1','client-flow',_binary '',_binary ''),('6359ce0c-95ac-4bee-8138-ca5ce09c5815','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',_binary '\0',_binary ''),('67a372ba-cd2b-4bf1-8e30-9b7e54071c36','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('694adba8-c9fd-462c-b454-3a2fcb2e0b50','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',_binary '\0',_binary ''),('6ad86f33-5f3b-4e8f-be57-26ad7c484495','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',_binary '\0',_binary ''),('6da34705-b1f7-4163-9e33-48299150473f','clients','Base authentication for clients','org2','client-flow',_binary '',_binary ''),('7083ae1c-4496-4412-94f0-309d8ff71a0e','Account verification options','Method with which to verity the existing account','org3','basic-flow',_binary '\0',_binary ''),('70abcbde-e169-4d06-b35d-49225a2f177e','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',_binary '\0',_binary ''),('70fc142e-9209-4ab0-8105-3c1eb94e2bfb','saml ecp','SAML ECP Profile Authentication Flow','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('786f856e-d055-4c7b-9488-652a16f4ad58','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('7aecc7a9-7a1d-4694-be4f-ad36aaa69d18','direct grant','OpenID Connect Resource Owner Grant','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('7b694ee7-ccd8-4ed6-9e2c-3a2147d07c33','browser','browser based authentication','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('80492698-8ba2-4951-8786-097294c8cb59','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',_binary '\0',_binary ''),('8b941ff5-15ee-4483-91e2-e0159f1b6381','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',_binary '\0',_binary ''),('8c18e9a2-b114-4bc0-abda-be1d022172b5','reset credentials','Reset credentials for a user if they forgot their password or something','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '',_binary ''),('916ef643-c19d-47b5-ae29-fd1fb9e79150','Authentication Options','Authentication options.','org3','basic-flow',_binary '\0',_binary ''),('92c7d096-298d-4e98-ba1d-a69ba89e8af3','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',_binary '',_binary ''),('92f7c19c-e357-417e-b676-e3508d3f23f6','Authentication Options','Authentication options.','org4','basic-flow',_binary '\0',_binary ''),('9382a27b-0470-4f45-8185-2a84c9fa39be','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',_binary '\0',_binary ''),('965335a8-324c-4575-ba36-5773a1200f65','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',_binary '\0',_binary ''),('9a009150-b71a-4bd7-b9ab-05a392b1d166','clients','Base authentication for clients','org4','client-flow',_binary '',_binary ''),('9a2debe8-77fa-42bc-88c7-f012fcf9d766','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',_binary '\0',_binary ''),('9cb86500-6a16-4d28-88d1-9d17097e0250','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',_binary '\0',_binary ''),('9fbef564-5cfc-47c4-9f09-048352d310df','forms','Username, password, otp and other auth forms.','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('a0c05b46-2460-43e6-bd87-43ab5a3e1f62','browser','browser based authentication','org2','basic-flow',_binary '',_binary ''),('a10147db-24cc-4c5d-b33d-12aeb96c4a3b','registration form','registration form','org3','form-flow',_binary '\0',_binary ''),('a1c4d5f4-5bf7-4507-8b41-57b947a3137a','Authentication Options','Authentication options.','org5','basic-flow',_binary '\0',_binary ''),('a32d5f31-6afd-4cb9-ae68-00869ad3d853','clients','Base authentication for clients','org5','client-flow',_binary '',_binary ''),('a364a470-6d74-4a56-b009-c45056d7cf0e','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',_binary '\0',_binary ''),('a3aeb95b-88b8-4e0a-92d0-61870ceeda73','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',_binary '',_binary ''),('a7bfcb76-755c-4bd1-9dc2-5711d73e71aa','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',_binary '\0',_binary ''),('af64db54-046b-47dd-9c6c-1cc7f6f7fcf3','registration','registration flow','org5','basic-flow',_binary '',_binary ''),('afe17517-5434-4cb7-ad1b-0c201e649e07','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',_binary '\0',_binary ''),('b0ea51f5-ddfe-4818-b146-5bd8f3700e56','registration form','registration form','org4','form-flow',_binary '\0',_binary ''),('b12664f2-8014-4690-9b41-697f6119d580','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',_binary '',_binary ''),('b1aa1664-c7fd-4308-b289-afc613298093','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',_binary '\0',_binary ''),('b4b91eec-4a39-44cb-955d-d088769ff5f9','forms','Username, password, otp and other auth forms.','org3','basic-flow',_binary '\0',_binary ''),('b62f96ae-e81a-4f27-a05c-590cb5e76114','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',_binary '',_binary ''),('b739cf14-7d64-460f-8edd-5e0ad4f3bcba','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org4','basic-flow',_binary '',_binary ''),('bbd46cda-4e7d-42a0-a5d9-563b4718c82e','Authentication Options','Authentication options.','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('bc8f711b-1135-4e0e-a89e-34a113505aad','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',_binary '\0',_binary ''),('bd6d0c8a-11dd-4401-a64e-ea3553a5e355','Account verification options','Method with which to verity the existing account','org1','basic-flow',_binary '\0',_binary ''),('be9fce79-d7d8-49c3-b209-8b8853be33df','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',_binary '\0',_binary ''),('beda39ab-d54e-4d38-9b62-3445c618ecb3','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',_binary '',_binary ''),('bee57192-de9b-4f17-a98a-88dd4387bc2d','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',_binary '\0',_binary ''),('bfabe1d4-5b15-4677-afa0-d6eb2fde1464','clients','Base authentication for clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','client-flow',_binary '',_binary ''),('c058b317-b1f2-45d6-b86b-8f7764f1c8db','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('c38c2eb8-b4ad-4197-8ef6-5f47cd0ee228','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',_binary '\0',_binary ''),('c5c7501f-c0f0-4bf4-a3bc-4f8e19c4418a','forms','Username, password, otp and other auth forms.','org1','basic-flow',_binary '\0',_binary ''),('c88f7a67-dbc0-4783-a5d1-0e4522de66f7','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',_binary '\0',_binary ''),('c8b7071e-ab02-4608-917e-5673311c481e','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',_binary '',_binary ''),('cad9fb41-03ca-47fa-9d30-5ead05cb878b','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',_binary '\0',_binary ''),('cbe059c9-73c5-4f15-9326-0eeac5fe4121','forms','Username, password, otp and other auth forms.','org5','basic-flow',_binary '\0',_binary ''),('d0335d15-1df2-4f87-b7b3-36caaa52e93d','Authentication Options','Authentication options.','org1','basic-flow',_binary '\0',_binary ''),('d25b1ea3-1ac1-409d-921f-59db0d81d5f4','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',_binary '\0',_binary ''),('d419de07-b646-4711-96b3-a7ed0b8c5a22','registration','registration flow','org2','basic-flow',_binary '',_binary ''),('d4c89445-0875-4e46-9d3c-fcd011c9890d','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org1','basic-flow',_binary '',_binary ''),('d839288b-f414-40d3-afe4-131075facca5','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',_binary '\0',_binary ''),('d90e6cc7-d6b1-4262-aa3d-06864c1bd963','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',_binary '',_binary ''),('da49807b-3b37-44c0-b0d9-a698ea9e246d','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',_binary '\0',_binary ''),('da4b0c4a-5891-4b90-aa55-4d4693e6e536','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',_binary '\0',_binary ''),('da84bb4a-f2a6-487b-96ec-58543e0a589e','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',_binary '',_binary ''),('db80c073-7810-4512-9b43-291652bbb00d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',_binary '\0',_binary ''),('dc0ec6bf-f790-46b2-8701-d8fd2c6605af','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',_binary '\0',_binary ''),('dc473ca7-7fdd-4657-a22c-82d40c7d78a2','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',_binary '',_binary ''),('dd0f6bd3-57a4-4f92-96af-0af4f8a5923c','registration form','registration form','org1','form-flow',_binary '\0',_binary ''),('de64e9f0-3c2f-41bf-a09b-5a0615d775a0','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',_binary '\0',_binary ''),('df44602f-2848-4d16-ba98-e1763143c437','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',_binary '',_binary ''),('e19c7eff-ecdb-4b91-bb84-3673b7237f2e','registration form','registration form','org5','form-flow',_binary '\0',_binary ''),('e5262d3d-4f33-408a-a507-310949a68758','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',_binary '\0',_binary ''),('eaacff6c-1cf9-4509-b8ef-5e1fc2cdcff4','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',_binary '',_binary ''),('eb8428ff-517b-4f7a-bdd5-f0eb35901d39','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',_binary '',_binary ''),('ed12923a-1593-4e2a-8bd4-335bf647c8b5','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',_binary '',_binary ''),('f53ad29b-c4aa-4426-bedb-8593a4a030ea','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',_binary '',_binary ''),('f581172e-9fb5-4031-98ef-154a0062f7ff','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','a70d8574-d800-4bf9-b056-6e5e23c893a0','basic-flow',_binary '\0',_binary ''),('f59dac93-4f68-4224-b69d-aac3852c2e87','registration','registration flow','org1','basic-flow',_binary '',_binary ''),('fac7f825-6646-4860-a8ef-780cafc35106','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','org2','basic-flow',_binary '',_binary ''),('fb742a84-f43f-4820-84ee-c736b5226907','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',_binary '',_binary ''),('ff72a74c-354e-42c2-9d90-c6c737edc47c','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',_binary '\0',_binary '');
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('07742e2d-f433-4879-9352-c5309b1db86b','review profile config','org2'),('0b4f301d-d137-4c3b-bbd0-9a307c734d6b','create unique user config','org1'),('1cb7845f-cf85-4343-9f14-3e0588dbc4af','create unique user config','org5'),('61f1104f-6be1-4c27-8b78-2fab7c0a7701','create unique user config','org3'),('6bcb63cc-f20d-4ea7-9579-b3a314f1bf27','review profile config','org5'),('6d9140f3-fe64-43a9-bb51-910cd4884584','review profile config','org4'),('a252d419-2191-4a64-b7c3-70e2a3e69175','review profile config','a70d8574-d800-4bf9-b056-6e5e23c893a0'),('b32ca8e6-21bf-42be-8908-e8ac13f7cfe6','create unique user config','org4'),('c18166c0-7c28-47a2-885d-19ea0a1ba0c4','review profile config','org3'),('d50a9b4b-8055-45a0-aa99-e8b60221cccf','create unique user config','a70d8574-d800-4bf9-b056-6e5e23c893a0'),('f6d3c223-c113-4a0b-9e64-8235fd8d371c','create unique user config','org2'),('fbbb224c-2d00-4804-9d7a-88289d3c15c6','review profile config','org1');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('07742e2d-f433-4879-9352-c5309b1db86b','missing','update.profile.on.first.login'),('0b4f301d-d137-4c3b-bbd0-9a307c734d6b','false','require.password.update.after.registration'),('1cb7845f-cf85-4343-9f14-3e0588dbc4af','false','require.password.update.after.registration'),('61f1104f-6be1-4c27-8b78-2fab7c0a7701','false','require.password.update.after.registration'),('6bcb63cc-f20d-4ea7-9579-b3a314f1bf27','missing','update.profile.on.first.login'),('6d9140f3-fe64-43a9-bb51-910cd4884584','missing','update.profile.on.first.login'),('a252d419-2191-4a64-b7c3-70e2a3e69175','missing','update.profile.on.first.login'),('b32ca8e6-21bf-42be-8908-e8ac13f7cfe6','false','require.password.update.after.registration'),('c18166c0-7c28-47a2-885d-19ea0a1ba0c4','missing','update.profile.on.first.login'),('d50a9b4b-8055-45a0-aa99-e8b60221cccf','false','require.password.update.after.registration'),('f6d3c223-c113-4a0b-9e64-8235fd8d371c','false','require.password.update.after.registration'),('fbbb224c-2d00-4804-9d7a-88289d3c15c6','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('05d0c822-5888-4974-b356-5c38d70b8e13',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org3/account/',_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '',_binary '\0','org3-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,0,_binary '\0',_binary '\0','org3 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '',_binary '\0','master-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,0,_binary '\0',_binary '\0','master Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('1245c362-051d-45c4-a292-b6ae0a21a518',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org1/account/',_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',_binary '','org3-workspaces',0,_binary '\0','sxi6umF6tQIFLZbR9a2KNm4bEDaW6lox',NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '',_binary '\0','org2-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,0,_binary '\0',_binary '\0','org2 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('2524a4a9-2675-4551-9d41-5021bff05172',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org1/console/',_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org5/account/',_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org2/account/',_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org5/account/',_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('325bcf95-3a2b-4b58-bb11-d1581575907a',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('37a991ab-ee73-42a1-a49c-f5c883c3adde',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org3/account/',_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('40cef467-9e76-4d78-860e-880e680a14a4',_binary '',_binary '','system-org3-auth',0,_binary '\0','FNPHDJCLsECH0LLx2AcFngM9hiQnRmWr',NULL,_binary '',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',_binary '','org4-workspaces',0,_binary '\0','xz6Rb0GdMzzUZ2Irq5mQanbPIKkGQi1T',NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('499248ed-2241-4568-9081-3d5eb5e00d33',_binary '',_binary '','_org2-api',0,_binary '','R8I0T2D3FbnX7y9PE2KNdIs44W0Ev9DK',NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2',_binary '',_binary '','system-org5-auth',0,_binary '\0','oPu1SChN2EXLZWLR2csmtWeF49MWRz8J',NULL,_binary '',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('5163e980-4bbb-4faa-a252-4908f080c6eb',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org2/account/',_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',_binary '','org2-workspaces',0,_binary '\0','3MkuQnWR9BjI8u1VUYou2Iq1dzdKM7ZV',NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('6263c078-77c7-4417-a293-56702d014298',_binary '',_binary '','_org5-api',0,_binary '','05f8QZOCbwBdikn51IScEA60YF2XoHJH',NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('635bba3f-9906-46d4-bba8-fa9b7d37323c',_binary '',_binary '','_platform-api',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d',_binary '',_binary '','system-org1-auth',0,_binary '\0','2rMwBtB2LSVsqgDakhzvlvVyuRKkqIND',NULL,_binary '',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',_binary '','org5-workspaces',0,_binary '\0','EC5j3FwWgpbs7lFxnjCIsBdM5EQv12Uj',NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('70c5f08b-6633-44de-9dca-01057fdc100e',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('72f2d224-1a41-4693-a948-e9bef9e5fa8e',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('77a2f4d9-fa77-4d35-88c9-851bf579503f',_binary '',_binary '','_platform',0,_binary '\0','8qLdYPLARSoHgKwTgFLy1uriZQOQutbk',NULL,_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('7be799a5-f05e-4603-9ff8-114d01d5e090',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('7e194037-1868-43db-8bad-6575ce155ad0',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64',_binary '',_binary '','system-org4-auth',0,_binary '\0','atL85x0OsI0P6dVaCRx7MtZcggggvNa9',NULL,_binary '',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('8d368537-c076-40fe-8ce8-ab46652ed3ed',_binary '',_binary '','system-org2-auth',0,_binary '\0','v7NRGoYIdhiRh6RoXz5iVogH3Hq0EbPX',NULL,_binary '',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/org4/account/',_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('928cb134-c673-4f50-8bd9-05eeee264c64',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org4/console/',_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('986f246c-5589-407f-a009-33653f029a75',_binary '',_binary '','_org4-api',0,_binary '','maGz51dSSzSsUmrZh5728TqTvWmqHhkV',NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('99d7091c-603b-4697-827d-3655cee59820',_binary '',_binary '\0','account',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',0,_binary '\0',_binary '\0','${client_account}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988',_binary '',_binary '\0','_platform-console',0,_binary '','FhgOBW9qYB6JNiqewn9aM8KgICOZlWB6',NULL,_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('a8ca9807-b040-4a34-9edd-7ed183e10e3a',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '',_binary '\0','org4-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,0,_binary '\0',_binary '\0','org4 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org3/console/',_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org1/account/',_binary '\0',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c369f888-d2e8-4885-8438-7ab970694b27',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org2/console/',_binary '\0',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/master/console/',_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c4161da8-b3b9-4470-9d03-514ebf126bc1',_binary '',_binary '\0','security-admin-console',0,_binary '',NULL,'/admin/org5/console/',_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_security-admin-console}',_binary '\0','client-secret','${authAdminUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',_binary '','org1-workspaces',0,_binary '\0','et5oK3A8gxiW7eExmxUKcapVSCATFgJe',NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('c9dd6a78-7259-4510-9dd1-54264192883f',_binary '',_binary '\0','org1-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,0,_binary '\0',_binary '\0','org1 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('cfbd7349-5fc5-40a8-a506-c479f3bf947e',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',_binary '','org3',0,_binary '','qNVxpvxic9WgyKgtdUSOTRyqol1cjZhX',NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('db0af77b-75fa-44fd-8de6-38bc3292ab86',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org5','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('dba012d2-d051-4938-ab35-1b5e65905028',_binary '',_binary '','org2',0,_binary '','VJEQ0bPDxsHnVX5GFYh32dAFmpwTzQ0i',NULL,_binary '\0',NULL,_binary '\0','org2','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('dc643bd7-fe8a-46c6-909f-f247504d314e',_binary '',_binary '\0','broker',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org2','openid-connect',0,_binary '\0',_binary '\0','${client_broker}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '',_binary '\0','realm-management',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','org1','openid-connect',0,_binary '\0',_binary '\0','${client_realm-management}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/master/account/',_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '',_binary '\0','org5-realm',0,_binary '\0',NULL,NULL,_binary '',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,0,_binary '\0',_binary '\0','org5 Realm',_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',_binary '','org5',0,_binary '','GnBejOs5L5wEXuUE0Mm8qp3vyyH1hA9r',NULL,_binary '\0',NULL,_binary '\0','org5','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355',_binary '',_binary '\0','account-console',0,_binary '',NULL,'/realms/org4/account/',_binary '\0',NULL,_binary '\0','org4','openid-connect',0,_binary '\0',_binary '\0','${client_account-console}',_binary '\0','client-secret','${authBaseUrl}',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '\0'),('f038e599-1b5d-4c74-9076-24b602fbe002',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('f5377f64-d9ca-457b-9fbe-60311425a8ae',_binary '',_binary '\0','admin-cli',0,_binary '',NULL,NULL,_binary '\0',NULL,_binary '\0','a70d8574-d800-4bf9-b056-6e5e23c893a0','openid-connect',0,_binary '\0',_binary '\0','${client_admin-cli}',_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('f62ac36e-bda7-4536-818a-02d882178d26',_binary '',_binary '','_org3-api',0,_binary '','Cmspptl9PdOreHVRv0sjcVu0r1PQkPDn',NULL,_binary '\0',NULL,_binary '\0','org3','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',_binary '','org1',0,_binary '','FviH4HOpUyyBVlqh2y4UEquerxoIbqDc',NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',_binary '','org4',0,_binary '','j65iJv3YUQjIXOR3YgOwIXe7ApPYH2nH',NULL,_binary '\0',NULL,_binary '\0','org4','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '',_binary '\0',_binary '',_binary '\0'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444',_binary '',_binary '','_org1-api',0,_binary '','rfW2gtV62NUn48zk60jzOzSj0q6Y8niE',NULL,_binary '\0',NULL,_binary '\0','org1','openid-connect',-1,_binary '\0',_binary '\0',NULL,_binary '\0','client-secret',NULL,NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '\0');
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('05d0c822-5888-4974-b356-5c38d70b8e13','post.logout.redirect.uris','+'),('1245c362-051d-45c4-a292-b6ae0a21a518','post.logout.redirect.uris','+'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','backchannel.logout.revoke.offline.tokens','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','backchannel.logout.session.required','true'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','client.secret.creation.time','1708393544'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','client_credentials.use_refresh_token','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','display.on.consent.screen','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','exclude.session.state.from.auth.response','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','id.token.as.detached.signature','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','oauth2.device.authorization.grant.enabled','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','oidc.ciba.grant.enabled','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','require.pushed.authorization.requests','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.artifact.binding','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.assertion.signature','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.authnstatement','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.client.signature','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.encrypt','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.force.post.binding','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.multivalued.roles','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.onetimeuse.condition','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.server.signature','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml.server.signature.keyinfo.ext','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','saml_force_name_id_format','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','tls.client.certificate.bound.access.tokens','false'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','use.refresh.tokens','true'),('2524a4a9-2675-4551-9d41-5021bff05172','pkce.code.challenge.method','S256'),('2524a4a9-2675-4551-9d41-5021bff05172','post.logout.redirect.uris','+'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','post.logout.redirect.uris','+'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','pkce.code.challenge.method','S256'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','post.logout.redirect.uris','+'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','pkce.code.challenge.method','S256'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','post.logout.redirect.uris','+'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','pkce.code.challenge.method','S256'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','post.logout.redirect.uris','+'),('40cef467-9e76-4d78-860e-880e680a14a4','backchannel.logout.revoke.offline.tokens','false'),('40cef467-9e76-4d78-860e-880e680a14a4','backchannel.logout.session.required','true'),('40cef467-9e76-4d78-860e-880e680a14a4','client.secret.creation.time','1708393544'),('40cef467-9e76-4d78-860e-880e680a14a4','client_credentials.use_refresh_token','false'),('40cef467-9e76-4d78-860e-880e680a14a4','display.on.consent.screen','false'),('40cef467-9e76-4d78-860e-880e680a14a4','exclude.session.state.from.auth.response','false'),('40cef467-9e76-4d78-860e-880e680a14a4','id.token.as.detached.signature','false'),('40cef467-9e76-4d78-860e-880e680a14a4','oauth2.device.authorization.grant.enabled','false'),('40cef467-9e76-4d78-860e-880e680a14a4','oidc.ciba.grant.enabled','false'),('40cef467-9e76-4d78-860e-880e680a14a4','require.pushed.authorization.requests','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.artifact.binding','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.assertion.signature','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.authnstatement','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.client.signature','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.encrypt','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.force.post.binding','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.multivalued.roles','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.onetimeuse.condition','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.server.signature','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml.server.signature.keyinfo.ext','false'),('40cef467-9e76-4d78-860e-880e680a14a4','saml_force_name_id_format','false'),('40cef467-9e76-4d78-860e-880e680a14a4','tls.client.certificate.bound.access.tokens','false'),('40cef467-9e76-4d78-860e-880e680a14a4','use.refresh.tokens','true'),('45ef982c-3f19-4396-877f-29ccc7b04a49','backchannel.logout.revoke.offline.tokens','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','backchannel.logout.session.required','true'),('45ef982c-3f19-4396-877f-29ccc7b04a49','client.secret.creation.time','1708393567'),('45ef982c-3f19-4396-877f-29ccc7b04a49','client_credentials.use_refresh_token','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','display.on.consent.screen','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','exclude.session.state.from.auth.response','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','id.token.as.detached.signature','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','oauth2.device.authorization.grant.enabled','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','oidc.ciba.grant.enabled','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','require.pushed.authorization.requests','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.artifact.binding','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.assertion.signature','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.authnstatement','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.client.signature','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.encrypt','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.force.post.binding','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.multivalued.roles','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.onetimeuse.condition','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.server.signature','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml.server.signature.keyinfo.ext','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','saml_force_name_id_format','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','tls.client.certificate.bound.access.tokens','false'),('45ef982c-3f19-4396-877f-29ccc7b04a49','use.refresh.tokens','true'),('499248ed-2241-4568-9081-3d5eb5e00d33','access.token.lifespan','86400'),('499248ed-2241-4568-9081-3d5eb5e00d33','acr.loa.map','{}'),('499248ed-2241-4568-9081-3d5eb5e00d33','backchannel.logout.revoke.offline.tokens','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','backchannel.logout.session.required','true'),('499248ed-2241-4568-9081-3d5eb5e00d33','client.secret.creation.time','1708393522'),('499248ed-2241-4568-9081-3d5eb5e00d33','client.session.idle.timeout','86400'),('499248ed-2241-4568-9081-3d5eb5e00d33','client.session.max.lifespan','86400'),('499248ed-2241-4568-9081-3d5eb5e00d33','client_credentials.use_refresh_token','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','display.on.consent.screen','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','exclude.session.state.from.auth.response','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','frontchannel.logout.session.required','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','id.token.as.detached.signature','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','oauth2.device.authorization.grant.enabled','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','oidc.ciba.grant.enabled','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','require.pushed.authorization.requests','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.allow.ecp.flow','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.artifact.binding','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.assertion.signature','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.authnstatement','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.client.signature','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.encrypt','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.force.post.binding','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.multivalued.roles','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.onetimeuse.condition','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.server.signature','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml.server.signature.keyinfo.ext','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','saml_force_name_id_format','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','tls.client.certificate.bound.access.tokens','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','token.response.type.bearer.lower-case','false'),('499248ed-2241-4568-9081-3d5eb5e00d33','use.refresh.tokens','true'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','backchannel.logout.revoke.offline.tokens','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','backchannel.logout.session.required','true'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','client.secret.creation.time','1708393593'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','client_credentials.use_refresh_token','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','display.on.consent.screen','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','exclude.session.state.from.auth.response','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','id.token.as.detached.signature','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','oauth2.device.authorization.grant.enabled','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','oidc.ciba.grant.enabled','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','require.pushed.authorization.requests','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.artifact.binding','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.assertion.signature','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.authnstatement','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.client.signature','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.encrypt','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.force.post.binding','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.multivalued.roles','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.onetimeuse.condition','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.server.signature','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml.server.signature.keyinfo.ext','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','saml_force_name_id_format','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','tls.client.certificate.bound.access.tokens','false'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','use.refresh.tokens','true'),('55816dcb-1e22-47bd-b6b8-0869a0aede67','post.logout.redirect.uris','+'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','backchannel.logout.revoke.offline.tokens','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','backchannel.logout.session.required','true'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','client.secret.creation.time','1708393521'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','client_credentials.use_refresh_token','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','display.on.consent.screen','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','exclude.session.state.from.auth.response','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','id.token.as.detached.signature','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','oauth2.device.authorization.grant.enabled','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','oidc.ciba.grant.enabled','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','require.pushed.authorization.requests','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.artifact.binding','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.assertion.signature','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.authnstatement','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.client.signature','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.encrypt','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.force.post.binding','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.multivalued.roles','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.onetimeuse.condition','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.server.signature','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml.server.signature.keyinfo.ext','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','saml_force_name_id_format','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','tls.client.certificate.bound.access.tokens','false'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','use.refresh.tokens','true'),('6263c078-77c7-4417-a293-56702d014298','access.token.lifespan','86400'),('6263c078-77c7-4417-a293-56702d014298','acr.loa.map','{}'),('6263c078-77c7-4417-a293-56702d014298','backchannel.logout.revoke.offline.tokens','false'),('6263c078-77c7-4417-a293-56702d014298','backchannel.logout.session.required','true'),('6263c078-77c7-4417-a293-56702d014298','client.secret.creation.time','1708393593'),('6263c078-77c7-4417-a293-56702d014298','client.session.idle.timeout','86400'),('6263c078-77c7-4417-a293-56702d014298','client.session.max.lifespan','86400'),('6263c078-77c7-4417-a293-56702d014298','client_credentials.use_refresh_token','false'),('6263c078-77c7-4417-a293-56702d014298','display.on.consent.screen','false'),('6263c078-77c7-4417-a293-56702d014298','exclude.session.state.from.auth.response','false'),('6263c078-77c7-4417-a293-56702d014298','frontchannel.logout.session.required','false'),('6263c078-77c7-4417-a293-56702d014298','id.token.as.detached.signature','false'),('6263c078-77c7-4417-a293-56702d014298','oauth2.device.authorization.grant.enabled','false'),('6263c078-77c7-4417-a293-56702d014298','oidc.ciba.grant.enabled','false'),('6263c078-77c7-4417-a293-56702d014298','require.pushed.authorization.requests','false'),('6263c078-77c7-4417-a293-56702d014298','saml.allow.ecp.flow','false'),('6263c078-77c7-4417-a293-56702d014298','saml.artifact.binding','false'),('6263c078-77c7-4417-a293-56702d014298','saml.assertion.signature','false'),('6263c078-77c7-4417-a293-56702d014298','saml.authnstatement','false'),('6263c078-77c7-4417-a293-56702d014298','saml.client.signature','false'),('6263c078-77c7-4417-a293-56702d014298','saml.encrypt','false'),('6263c078-77c7-4417-a293-56702d014298','saml.force.post.binding','false'),('6263c078-77c7-4417-a293-56702d014298','saml.multivalued.roles','false'),('6263c078-77c7-4417-a293-56702d014298','saml.onetimeuse.condition','false'),('6263c078-77c7-4417-a293-56702d014298','saml.server.signature','false'),('6263c078-77c7-4417-a293-56702d014298','saml.server.signature.keyinfo.ext','false'),('6263c078-77c7-4417-a293-56702d014298','saml_force_name_id_format','false'),('6263c078-77c7-4417-a293-56702d014298','tls.client.certificate.bound.access.tokens','false'),('6263c078-77c7-4417-a293-56702d014298','token.response.type.bearer.lower-case','false'),('6263c078-77c7-4417-a293-56702d014298','use.refresh.tokens','true'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','access.token.lifespan','86400'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','acr.loa.map','{}'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','backchannel.logout.revoke.offline.tokens','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','backchannel.logout.session.required','true'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','client.session.idle.timeout','86400'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','client.session.max.lifespan','86400'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','client_credentials.use_refresh_token','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','display.on.consent.screen','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','exclude.session.state.from.auth.response','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','frontchannel.logout.session.required','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','id.token.as.detached.signature','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','oauth2.device.authorization.grant.enabled','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','oidc.ciba.grant.enabled','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','require.pushed.authorization.requests','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.allow.ecp.flow','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.artifact.binding','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.assertion.signature','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.authnstatement','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.client.signature','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.encrypt','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.force.post.binding','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.multivalued.roles','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.onetimeuse.condition','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.server.signature','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml.server.signature.keyinfo.ext','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','saml_force_name_id_format','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','tls.client.certificate.bound.access.tokens','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','token.response.type.bearer.lower-case','false'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','use.refresh.tokens','true'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','backchannel.logout.revoke.offline.tokens','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','backchannel.logout.session.required','true'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','client.secret.creation.time','1708393495'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','client_credentials.use_refresh_token','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','display.on.consent.screen','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','exclude.session.state.from.auth.response','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','id.token.as.detached.signature','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','oauth2.device.authorization.grant.enabled','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','oidc.ciba.grant.enabled','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','require.pushed.authorization.requests','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.artifact.binding','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.assertion.signature','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.authnstatement','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.client.signature','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.encrypt','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.force.post.binding','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.multivalued.roles','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.onetimeuse.condition','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.server.signature','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml.server.signature.keyinfo.ext','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','saml_force_name_id_format','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','tls.client.certificate.bound.access.tokens','false'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','use.refresh.tokens','true'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','backchannel.logout.revoke.offline.tokens','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','backchannel.logout.session.required','true'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','client.secret.creation.time','1708393593'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','client_credentials.use_refresh_token','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','display.on.consent.screen','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','exclude.session.state.from.auth.response','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','id.token.as.detached.signature','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','oauth2.device.authorization.grant.enabled','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','oidc.ciba.grant.enabled','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','require.pushed.authorization.requests','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.artifact.binding','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.assertion.signature','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.authnstatement','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.client.signature','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.encrypt','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.force.post.binding','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.multivalued.roles','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.onetimeuse.condition','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.server.signature','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml.server.signature.keyinfo.ext','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','saml_force_name_id_format','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','tls.client.certificate.bound.access.tokens','false'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','use.refresh.tokens','true'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','backchannel.logout.revoke.offline.tokens','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','backchannel.logout.session.required','true'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','client.secret.creation.time','1708393109'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','client_credentials.use_refresh_token','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','display.on.consent.screen','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','exclude.session.state.from.auth.response','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','id.token.as.detached.signature','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','oauth2.device.authorization.grant.enabled','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','oidc.ciba.grant.enabled','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','require.pushed.authorization.requests','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.artifact.binding','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.assertion.signature','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.authnstatement','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.client.signature','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.encrypt','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.force.post.binding','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.multivalued.roles','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.onetimeuse.condition','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.server.signature','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml.server.signature.keyinfo.ext','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','saml_force_name_id_format','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','tls.client.certificate.bound.access.tokens','false'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','use.refresh.tokens','true'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','backchannel.logout.revoke.offline.tokens','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','backchannel.logout.session.required','true'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','client.secret.creation.time','1708393568'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','client_credentials.use_refresh_token','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','display.on.consent.screen','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','exclude.session.state.from.auth.response','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','id.token.as.detached.signature','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','oauth2.device.authorization.grant.enabled','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','oidc.ciba.grant.enabled','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','require.pushed.authorization.requests','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.artifact.binding','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.assertion.signature','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.authnstatement','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.client.signature','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.encrypt','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.force.post.binding','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.multivalued.roles','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.onetimeuse.condition','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.server.signature','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml.server.signature.keyinfo.ext','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','saml_force_name_id_format','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','tls.client.certificate.bound.access.tokens','false'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','use.refresh.tokens','true'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','backchannel.logout.revoke.offline.tokens','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','backchannel.logout.session.required','true'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','client.secret.creation.time','1708393521'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','client_credentials.use_refresh_token','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','display.on.consent.screen','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','exclude.session.state.from.auth.response','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','id.token.as.detached.signature','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','oauth2.device.authorization.grant.enabled','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','oidc.ciba.grant.enabled','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','require.pushed.authorization.requests','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.artifact.binding','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.assertion.signature','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.authnstatement','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.client.signature','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.encrypt','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.force.post.binding','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.multivalued.roles','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.onetimeuse.condition','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.server.signature','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml.server.signature.keyinfo.ext','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','saml_force_name_id_format','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','tls.client.certificate.bound.access.tokens','false'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','use.refresh.tokens','true'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','post.logout.redirect.uris','+'),('928cb134-c673-4f50-8bd9-05eeee264c64','pkce.code.challenge.method','S256'),('928cb134-c673-4f50-8bd9-05eeee264c64','post.logout.redirect.uris','+'),('986f246c-5589-407f-a009-33653f029a75','access.token.lifespan','86400'),('986f246c-5589-407f-a009-33653f029a75','acr.loa.map','{}'),('986f246c-5589-407f-a009-33653f029a75','backchannel.logout.revoke.offline.tokens','false'),('986f246c-5589-407f-a009-33653f029a75','backchannel.logout.session.required','true'),('986f246c-5589-407f-a009-33653f029a75','client.secret.creation.time','1708393568'),('986f246c-5589-407f-a009-33653f029a75','client.session.idle.timeout','86400'),('986f246c-5589-407f-a009-33653f029a75','client.session.max.lifespan','86400'),('986f246c-5589-407f-a009-33653f029a75','client_credentials.use_refresh_token','false'),('986f246c-5589-407f-a009-33653f029a75','display.on.consent.screen','false'),('986f246c-5589-407f-a009-33653f029a75','exclude.session.state.from.auth.response','false'),('986f246c-5589-407f-a009-33653f029a75','frontchannel.logout.session.required','false'),('986f246c-5589-407f-a009-33653f029a75','id.token.as.detached.signature','false'),('986f246c-5589-407f-a009-33653f029a75','oauth2.device.authorization.grant.enabled','false'),('986f246c-5589-407f-a009-33653f029a75','oidc.ciba.grant.enabled','false'),('986f246c-5589-407f-a009-33653f029a75','require.pushed.authorization.requests','false'),('986f246c-5589-407f-a009-33653f029a75','saml.allow.ecp.flow','false'),('986f246c-5589-407f-a009-33653f029a75','saml.artifact.binding','false'),('986f246c-5589-407f-a009-33653f029a75','saml.assertion.signature','false'),('986f246c-5589-407f-a009-33653f029a75','saml.authnstatement','false'),('986f246c-5589-407f-a009-33653f029a75','saml.client.signature','false'),('986f246c-5589-407f-a009-33653f029a75','saml.encrypt','false'),('986f246c-5589-407f-a009-33653f029a75','saml.force.post.binding','false'),('986f246c-5589-407f-a009-33653f029a75','saml.multivalued.roles','false'),('986f246c-5589-407f-a009-33653f029a75','saml.onetimeuse.condition','false'),('986f246c-5589-407f-a009-33653f029a75','saml.server.signature','false'),('986f246c-5589-407f-a009-33653f029a75','saml.server.signature.keyinfo.ext','false'),('986f246c-5589-407f-a009-33653f029a75','saml_force_name_id_format','false'),('986f246c-5589-407f-a009-33653f029a75','tls.client.certificate.bound.access.tokens','false'),('986f246c-5589-407f-a009-33653f029a75','token.response.type.bearer.lower-case','false'),('986f246c-5589-407f-a009-33653f029a75','use.refresh.tokens','true'),('99d7091c-603b-4697-827d-3655cee59820','post.logout.redirect.uris','+'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','backchannel.logout.revoke.offline.tokens','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','backchannel.logout.session.required','true'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','client.secret.creation.time','1708393111'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','client_credentials.use_refresh_token','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','display.on.consent.screen','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','exclude.session.state.from.auth.response','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','id.token.as.detached.signature','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','oauth2.device.authorization.grant.enabled','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','oidc.ciba.grant.enabled','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','post.logout.redirect.uris','/*'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','require.pushed.authorization.requests','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.artifact.binding','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.assertion.signature','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.authnstatement','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.client.signature','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.encrypt','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.force.post.binding','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.multivalued.roles','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.onetimeuse.condition','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.server.signature','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml.server.signature.keyinfo.ext','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','saml_force_name_id_format','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','tls.client.certificate.bound.access.tokens','false'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','use.refresh.tokens','true'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','pkce.code.challenge.method','S256'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','post.logout.redirect.uris','+'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','pkce.code.challenge.method','S256'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','post.logout.redirect.uris','+'),('c369f888-d2e8-4885-8438-7ab970694b27','pkce.code.challenge.method','S256'),('c369f888-d2e8-4885-8438-7ab970694b27','post.logout.redirect.uris','+'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','pkce.code.challenge.method','S256'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','post.logout.redirect.uris','+'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','pkce.code.challenge.method','S256'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','post.logout.redirect.uris','+'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','backchannel.logout.revoke.offline.tokens','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','backchannel.logout.session.required','true'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','client.secret.creation.time','1708393495'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','client_credentials.use_refresh_token','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','display.on.consent.screen','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','exclude.session.state.from.auth.response','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','id.token.as.detached.signature','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','oauth2.device.authorization.grant.enabled','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','oidc.ciba.grant.enabled','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','require.pushed.authorization.requests','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.artifact.binding','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.assertion.signature','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.authnstatement','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.client.signature','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.encrypt','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.force.post.binding','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.multivalued.roles','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.onetimeuse.condition','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.server.signature','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml.server.signature.keyinfo.ext','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','saml_force_name_id_format','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','tls.client.certificate.bound.access.tokens','false'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','use.refresh.tokens','true'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','backchannel.logout.revoke.offline.tokens','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','backchannel.logout.session.required','true'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','client.secret.creation.time','1708393544'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','client_credentials.use_refresh_token','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','display.on.consent.screen','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','exclude.session.state.from.auth.response','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','id.token.as.detached.signature','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','oauth2.device.authorization.grant.enabled','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','oidc.ciba.grant.enabled','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','post.logout.redirect.uris','/*'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','require.pushed.authorization.requests','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.artifact.binding','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.assertion.signature','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.authnstatement','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.client.signature','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.encrypt','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.force.post.binding','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.multivalued.roles','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.onetimeuse.condition','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.server.signature','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml.server.signature.keyinfo.ext','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','saml_force_name_id_format','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','tls.client.certificate.bound.access.tokens','false'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','use.refresh.tokens','true'),('dba012d2-d051-4938-ab35-1b5e65905028','backchannel.logout.revoke.offline.tokens','false'),('dba012d2-d051-4938-ab35-1b5e65905028','backchannel.logout.session.required','true'),('dba012d2-d051-4938-ab35-1b5e65905028','client.secret.creation.time','1708393521'),('dba012d2-d051-4938-ab35-1b5e65905028','client_credentials.use_refresh_token','false'),('dba012d2-d051-4938-ab35-1b5e65905028','display.on.consent.screen','false'),('dba012d2-d051-4938-ab35-1b5e65905028','exclude.session.state.from.auth.response','false'),('dba012d2-d051-4938-ab35-1b5e65905028','id.token.as.detached.signature','false'),('dba012d2-d051-4938-ab35-1b5e65905028','oauth2.device.authorization.grant.enabled','false'),('dba012d2-d051-4938-ab35-1b5e65905028','oidc.ciba.grant.enabled','false'),('dba012d2-d051-4938-ab35-1b5e65905028','post.logout.redirect.uris','/*'),('dba012d2-d051-4938-ab35-1b5e65905028','require.pushed.authorization.requests','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.artifact.binding','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.assertion.signature','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.authnstatement','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.client.signature','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.encrypt','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.force.post.binding','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.multivalued.roles','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.onetimeuse.condition','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.server.signature','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml.server.signature.keyinfo.ext','false'),('dba012d2-d051-4938-ab35-1b5e65905028','saml_force_name_id_format','false'),('dba012d2-d051-4938-ab35-1b5e65905028','tls.client.certificate.bound.access.tokens','false'),('dba012d2-d051-4938-ab35-1b5e65905028','use.refresh.tokens','true'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','pkce.code.challenge.method','S256'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','post.logout.redirect.uris','+'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','backchannel.logout.revoke.offline.tokens','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','backchannel.logout.session.required','true'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','client.secret.creation.time','1708393593'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','client_credentials.use_refresh_token','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','display.on.consent.screen','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','exclude.session.state.from.auth.response','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','id.token.as.detached.signature','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','oauth2.device.authorization.grant.enabled','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','oidc.ciba.grant.enabled','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','post.logout.redirect.uris','/*'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','require.pushed.authorization.requests','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.artifact.binding','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.assertion.signature','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.authnstatement','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.client.signature','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.encrypt','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.force.post.binding','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.multivalued.roles','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.onetimeuse.condition','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.server.signature','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml.server.signature.keyinfo.ext','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','saml_force_name_id_format','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','tls.client.certificate.bound.access.tokens','false'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','use.refresh.tokens','true'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','pkce.code.challenge.method','S256'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','post.logout.redirect.uris','+'),('f62ac36e-bda7-4536-818a-02d882178d26','access.token.lifespan','86400'),('f62ac36e-bda7-4536-818a-02d882178d26','acr.loa.map','{}'),('f62ac36e-bda7-4536-818a-02d882178d26','backchannel.logout.revoke.offline.tokens','false'),('f62ac36e-bda7-4536-818a-02d882178d26','backchannel.logout.session.required','true'),('f62ac36e-bda7-4536-818a-02d882178d26','client.secret.creation.time','1708393544'),('f62ac36e-bda7-4536-818a-02d882178d26','client.session.idle.timeout','86400'),('f62ac36e-bda7-4536-818a-02d882178d26','client.session.max.lifespan','86400'),('f62ac36e-bda7-4536-818a-02d882178d26','client_credentials.use_refresh_token','false'),('f62ac36e-bda7-4536-818a-02d882178d26','display.on.consent.screen','false'),('f62ac36e-bda7-4536-818a-02d882178d26','exclude.session.state.from.auth.response','false'),('f62ac36e-bda7-4536-818a-02d882178d26','frontchannel.logout.session.required','false'),('f62ac36e-bda7-4536-818a-02d882178d26','id.token.as.detached.signature','false'),('f62ac36e-bda7-4536-818a-02d882178d26','oauth2.device.authorization.grant.enabled','false'),('f62ac36e-bda7-4536-818a-02d882178d26','oidc.ciba.grant.enabled','false'),('f62ac36e-bda7-4536-818a-02d882178d26','require.pushed.authorization.requests','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.allow.ecp.flow','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.artifact.binding','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.assertion.signature','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.authnstatement','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.client.signature','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.encrypt','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.force.post.binding','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.multivalued.roles','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.onetimeuse.condition','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.server.signature','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml.server.signature.keyinfo.ext','false'),('f62ac36e-bda7-4536-818a-02d882178d26','saml_force_name_id_format','false'),('f62ac36e-bda7-4536-818a-02d882178d26','tls.client.certificate.bound.access.tokens','false'),('f62ac36e-bda7-4536-818a-02d882178d26','token.response.type.bearer.lower-case','false'),('f62ac36e-bda7-4536-818a-02d882178d26','use.refresh.tokens','true'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','backchannel.logout.revoke.offline.tokens','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','backchannel.logout.session.required','true'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','client.secret.creation.time','1708393495'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','client_credentials.use_refresh_token','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','display.on.consent.screen','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','exclude.session.state.from.auth.response','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','id.token.as.detached.signature','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','oauth2.device.authorization.grant.enabled','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','oidc.ciba.grant.enabled','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','post.logout.redirect.uris','/*'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','require.pushed.authorization.requests','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.artifact.binding','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.assertion.signature','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.authnstatement','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.client.signature','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.encrypt','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.force.post.binding','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.multivalued.roles','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.onetimeuse.condition','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.server.signature','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml.server.signature.keyinfo.ext','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','saml_force_name_id_format','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','tls.client.certificate.bound.access.tokens','false'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','use.refresh.tokens','true'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','backchannel.logout.revoke.offline.tokens','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','backchannel.logout.session.required','true'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','client.secret.creation.time','1708393568'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','client_credentials.use_refresh_token','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','display.on.consent.screen','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','exclude.session.state.from.auth.response','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','id.token.as.detached.signature','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','oauth2.device.authorization.grant.enabled','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','oidc.ciba.grant.enabled','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','post.logout.redirect.uris','/*'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','require.pushed.authorization.requests','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.artifact.binding','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.assertion.signature','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.authnstatement','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.client.signature','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.encrypt','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.force.post.binding','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.multivalued.roles','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.onetimeuse.condition','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.server.signature','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml.server.signature.keyinfo.ext','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','saml_force_name_id_format','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','tls.client.certificate.bound.access.tokens','false'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','use.refresh.tokens','true'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','access.token.lifespan','86400'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','acr.loa.map','{}'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','backchannel.logout.revoke.offline.tokens','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','backchannel.logout.session.required','true'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','client.secret.creation.time','1708393495'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','client.session.idle.timeout','86400'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','client.session.max.lifespan','86400'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','client_credentials.use_refresh_token','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','display.on.consent.screen','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','exclude.session.state.from.auth.response','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','frontchannel.logout.session.required','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','id.token.as.detached.signature','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','oauth2.device.authorization.grant.enabled','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','oidc.ciba.grant.enabled','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','require.pushed.authorization.requests','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.allow.ecp.flow','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.artifact.binding','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.assertion.signature','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.authnstatement','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.client.signature','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.encrypt','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.force.post.binding','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.multivalued.roles','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.onetimeuse.condition','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.server.signature','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml.server.signature.keyinfo.ext','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','saml_force_name_id_format','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','tls.client.certificate.bound.access.tokens','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','token.response.type.bearer.lower-case','false'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','use.refresh.tokens','true');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('02c77bb9-dc7a-4b69-b184-033779babc69','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('0fa7e9ad-e2f0-4f1b-8514-d9e63331db32','roles','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect scope for add user roles to the access token','openid-connect'),('11770d66-6a8f-4949-9a37-bbf4af84a032','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('13b9d4bc-a336-4163-bcae-f19eda4a62a1','address','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect built-in scope: address','openid-connect'),('1a577a40-5094-48f6-957e-89d2b5e9f9e7','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('1f8b5a99-1f79-436d-9c94-3bebc42e81bc','role_list','org5','SAML role list','saml'),('206bac63-87bc-4564-8f26-0b3e8be53ab5','offline_access','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect built-in scope: offline_access','openid-connect'),('2d356d40-6a2c-4457-89ff-1f1e617fcde5','role_list','org3','SAML role list','saml'),('34a94317-ae1c-49cd-a77d-5bc6cb1787f6','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('3a83ab02-90c9-4f6d-82dc-6c839da88a46','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect'),('3e8ad8d8-1515-4856-8366-55694e7f6bf2','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('3f93a4b3-6109-487c-adaf-b282b6bb1afa','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('4f00de62-1158-4023-83b1-0147d7be9c68','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('576d8337-1132-4382-9d79-f647f0caf3a7','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('5cb3ac0b-1eca-4dd0-a219-5f53bc718a69','phone','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect built-in scope: phone','openid-connect'),('621897db-a9ad-4a35-9fc4-cd1cb69705d0','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('66c40941-9494-4655-a4d1-b39747628fe1','web-origins','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('6d3e0f6a-4683-44c2-813b-2882465957fc','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('6da609f5-cd9e-4472-afb9-5d478fa1d70c','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('71437e46-4708-4c50-adfa-74f6bf31881d','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('79e4708a-b6c6-44e0-8aae-3c95960a0afc','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('7c73a29f-e1d1-483b-90d7-5d852b2936d9','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('7e655cc8-3479-4b27-8023-e8a06129d636','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('8685de15-f034-483e-a395-fa9a8d596b2b','email','org2','OpenID Connect built-in scope: email','openid-connect'),('8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('90302b33-324d-4142-92df-e1e10647b96e','role_list','org2','SAML role list','saml'),('93d470ca-4e8b-47c1-a8fb-2ff7738e4904','role_list','a70d8574-d800-4bf9-b056-6e5e23c893a0','SAML role list','saml'),('94b26221-2526-4259-aaf6-ecc51bf41dc1','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('950dc59f-2d62-44a4-8193-1dce8ddda3d9','microprofile-jwt','a70d8574-d800-4bf9-b056-6e5e23c893a0','Microprofile - JWT built-in scope','openid-connect'),('97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('987be8ba-1f5c-4ba4-973c-aafe724432cb','profile','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect built-in scope: profile','openid-connect'),('9a6dad5a-9059-4e7c-92bc-132a8613d62b','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('a9903e1c-e3a5-475c-9475-f6251361641b','email','org4','OpenID Connect built-in scope: email','openid-connect'),('b134adf0-02e5-4df7-b0a7-482507645fbe','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('b413fa37-7ed0-4913-bb5e-c088d11a99cc','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('b5b05161-1c23-4445-bfdc-bbebcf8e5c8a','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('c33de27d-ddf1-4e39-a650-f6b26a39c94d','address','org3','OpenID Connect built-in scope: address','openid-connect'),('ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('cb1b0c2e-4add-489d-8517-bb88ef50c24e','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('cbebef4f-8d02-451d-97b5-3e5bb76f7ad3','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('cfde5547-09bf-450f-b5cf-a678ba2aa3e8','address','org1','OpenID Connect built-in scope: address','openid-connect'),('d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d7b2d83f-c615-4e9d-9497-629559cc4f99','email','org1','OpenID Connect built-in scope: email','openid-connect'),('d9d8aace-cb83-4e3b-9f16-3965847e9621','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('daa41647-fc41-48ea-a9f2-6967459da29c','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('e252f14e-a73f-4662-aeab-f50b4c87e2a7','acr','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('ea43c59a-cdde-4a84-8791-1708e9a479be','email','a70d8574-d800-4bf9-b056-6e5e23c893a0','OpenID Connect built-in scope: email','openid-connect'),('eb802de4-bbe0-49fc-a498-4c0339472151','role_list','org1','SAML role list','saml'),('ed029170-1b1d-42ce-acd2-6b201c69d739','address','org4','OpenID Connect built-in scope: address','openid-connect'),('edc82ef9-2950-4118-aa58-8380b891a9e2','address','org5','OpenID Connect built-in scope: address','openid-connect'),('eebab16d-7773-4c8a-896c-8db6747d91c3','email','org5','OpenID Connect built-in scope: email','openid-connect'),('f2201541-c2b3-4ca5-ae21-5d1f163e746d','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('f265e752-3d01-414e-85c1-e3e870588982','email','org3','OpenID Connect built-in scope: email','openid-connect'),('fb76d52b-d65a-455e-842a-6acb6c346f72','address','org2','OpenID Connect built-in scope: address','openid-connect'),('fc36343d-c158-480c-bd20-497043c0fe34','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('fdd1c112-22eb-481a-a2f4-9d320c13bb28','role_list','org4','SAML role list','saml'),('fe6c9b31-8f14-4daa-9515-a8815a0860fd','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('02c77bb9-dc7a-4b69-b184-033779babc69','false','display.on.consent.screen'),('02c77bb9-dc7a-4b69-b184-033779babc69','true','include.in.token.scope'),('0fa7e9ad-e2f0-4f1b-8514-d9e63331db32','${rolesScopeConsentText}','consent.screen.text'),('0fa7e9ad-e2f0-4f1b-8514-d9e63331db32','true','display.on.consent.screen'),('0fa7e9ad-e2f0-4f1b-8514-d9e63331db32','false','include.in.token.scope'),('11770d66-6a8f-4949-9a37-bbf4af84a032','${rolesScopeConsentText}','consent.screen.text'),('11770d66-6a8f-4949-9a37-bbf4af84a032','true','display.on.consent.screen'),('11770d66-6a8f-4949-9a37-bbf4af84a032','false','include.in.token.scope'),('13b9d4bc-a336-4163-bcae-f19eda4a62a1','${addressScopeConsentText}','consent.screen.text'),('13b9d4bc-a336-4163-bcae-f19eda4a62a1','true','display.on.consent.screen'),('13b9d4bc-a336-4163-bcae-f19eda4a62a1','true','include.in.token.scope'),('1a577a40-5094-48f6-957e-89d2b5e9f9e7','${phoneScopeConsentText}','consent.screen.text'),('1a577a40-5094-48f6-957e-89d2b5e9f9e7','true','display.on.consent.screen'),('1a577a40-5094-48f6-957e-89d2b5e9f9e7','true','include.in.token.scope'),('1f8b5a99-1f79-436d-9c94-3bebc42e81bc','${samlRoleListScopeConsentText}','consent.screen.text'),('1f8b5a99-1f79-436d-9c94-3bebc42e81bc','true','display.on.consent.screen'),('206bac63-87bc-4564-8f26-0b3e8be53ab5','${offlineAccessScopeConsentText}','consent.screen.text'),('206bac63-87bc-4564-8f26-0b3e8be53ab5','true','display.on.consent.screen'),('2d356d40-6a2c-4457-89ff-1f1e617fcde5','${samlRoleListScopeConsentText}','consent.screen.text'),('2d356d40-6a2c-4457-89ff-1f1e617fcde5','true','display.on.consent.screen'),('34a94317-ae1c-49cd-a77d-5bc6cb1787f6','${phoneScopeConsentText}','consent.screen.text'),('34a94317-ae1c-49cd-a77d-5bc6cb1787f6','true','display.on.consent.screen'),('34a94317-ae1c-49cd-a77d-5bc6cb1787f6','true','include.in.token.scope'),('3a83ab02-90c9-4f6d-82dc-6c839da88a46','${offlineAccessScopeConsentText}','consent.screen.text'),('3a83ab02-90c9-4f6d-82dc-6c839da88a46','true','display.on.consent.screen'),('3e8ad8d8-1515-4856-8366-55694e7f6bf2','${offlineAccessScopeConsentText}','consent.screen.text'),('3e8ad8d8-1515-4856-8366-55694e7f6bf2','true','display.on.consent.screen'),('3f93a4b3-6109-487c-adaf-b282b6bb1afa','${profileScopeConsentText}','consent.screen.text'),('3f93a4b3-6109-487c-adaf-b282b6bb1afa','true','display.on.consent.screen'),('3f93a4b3-6109-487c-adaf-b282b6bb1afa','true','include.in.token.scope'),('4f00de62-1158-4023-83b1-0147d7be9c68','${offlineAccessScopeConsentText}','consent.screen.text'),('4f00de62-1158-4023-83b1-0147d7be9c68','true','display.on.consent.screen'),('576d8337-1132-4382-9d79-f647f0caf3a7','${rolesScopeConsentText}','consent.screen.text'),('576d8337-1132-4382-9d79-f647f0caf3a7','true','display.on.consent.screen'),('576d8337-1132-4382-9d79-f647f0caf3a7','false','include.in.token.scope'),('5cb3ac0b-1eca-4dd0-a219-5f53bc718a69','${phoneScopeConsentText}','consent.screen.text'),('5cb3ac0b-1eca-4dd0-a219-5f53bc718a69','true','display.on.consent.screen'),('5cb3ac0b-1eca-4dd0-a219-5f53bc718a69','true','include.in.token.scope'),('621897db-a9ad-4a35-9fc4-cd1cb69705d0','','consent.screen.text'),('621897db-a9ad-4a35-9fc4-cd1cb69705d0','false','display.on.consent.screen'),('621897db-a9ad-4a35-9fc4-cd1cb69705d0','false','include.in.token.scope'),('66c40941-9494-4655-a4d1-b39747628fe1','','consent.screen.text'),('66c40941-9494-4655-a4d1-b39747628fe1','false','display.on.consent.screen'),('66c40941-9494-4655-a4d1-b39747628fe1','false','include.in.token.scope'),('6d3e0f6a-4683-44c2-813b-2882465957fc','${rolesScopeConsentText}','consent.screen.text'),('6d3e0f6a-4683-44c2-813b-2882465957fc','true','display.on.consent.screen'),('6d3e0f6a-4683-44c2-813b-2882465957fc','false','include.in.token.scope'),('6da609f5-cd9e-4472-afb9-5d478fa1d70c','${profileScopeConsentText}','consent.screen.text'),('6da609f5-cd9e-4472-afb9-5d478fa1d70c','true','display.on.consent.screen'),('6da609f5-cd9e-4472-afb9-5d478fa1d70c','true','include.in.token.scope'),('71437e46-4708-4c50-adfa-74f6bf31881d','${offlineAccessScopeConsentText}','consent.screen.text'),('71437e46-4708-4c50-adfa-74f6bf31881d','true','display.on.consent.screen'),('79e4708a-b6c6-44e0-8aae-3c95960a0afc','${phoneScopeConsentText}','consent.screen.text'),('79e4708a-b6c6-44e0-8aae-3c95960a0afc','true','display.on.consent.screen'),('79e4708a-b6c6-44e0-8aae-3c95960a0afc','true','include.in.token.scope'),('7c73a29f-e1d1-483b-90d7-5d852b2936d9','false','display.on.consent.screen'),('7c73a29f-e1d1-483b-90d7-5d852b2936d9','true','include.in.token.scope'),('7e655cc8-3479-4b27-8023-e8a06129d636','false','display.on.consent.screen'),('7e655cc8-3479-4b27-8023-e8a06129d636','false','include.in.token.scope'),('8685de15-f034-483e-a395-fa9a8d596b2b','${emailScopeConsentText}','consent.screen.text'),('8685de15-f034-483e-a395-fa9a8d596b2b','true','display.on.consent.screen'),('8685de15-f034-483e-a395-fa9a8d596b2b','true','include.in.token.scope'),('8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7','false','display.on.consent.screen'),('8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7','true','include.in.token.scope'),('90302b33-324d-4142-92df-e1e10647b96e','${samlRoleListScopeConsentText}','consent.screen.text'),('90302b33-324d-4142-92df-e1e10647b96e','true','display.on.consent.screen'),('93d470ca-4e8b-47c1-a8fb-2ff7738e4904','${samlRoleListScopeConsentText}','consent.screen.text'),('93d470ca-4e8b-47c1-a8fb-2ff7738e4904','true','display.on.consent.screen'),('94b26221-2526-4259-aaf6-ecc51bf41dc1','false','display.on.consent.screen'),('94b26221-2526-4259-aaf6-ecc51bf41dc1','false','include.in.token.scope'),('950dc59f-2d62-44a4-8193-1dce8ddda3d9','false','display.on.consent.screen'),('950dc59f-2d62-44a4-8193-1dce8ddda3d9','true','include.in.token.scope'),('97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4','${profileScopeConsentText}','consent.screen.text'),('97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4','true','display.on.consent.screen'),('97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4','true','include.in.token.scope'),('987be8ba-1f5c-4ba4-973c-aafe724432cb','${profileScopeConsentText}','consent.screen.text'),('987be8ba-1f5c-4ba4-973c-aafe724432cb','true','display.on.consent.screen'),('987be8ba-1f5c-4ba4-973c-aafe724432cb','true','include.in.token.scope'),('9a6dad5a-9059-4e7c-92bc-132a8613d62b','${profileScopeConsentText}','consent.screen.text'),('9a6dad5a-9059-4e7c-92bc-132a8613d62b','true','display.on.consent.screen'),('9a6dad5a-9059-4e7c-92bc-132a8613d62b','true','include.in.token.scope'),('a9903e1c-e3a5-475c-9475-f6251361641b','${emailScopeConsentText}','consent.screen.text'),('a9903e1c-e3a5-475c-9475-f6251361641b','true','display.on.consent.screen'),('a9903e1c-e3a5-475c-9475-f6251361641b','true','include.in.token.scope'),('b134adf0-02e5-4df7-b0a7-482507645fbe','false','display.on.consent.screen'),('b134adf0-02e5-4df7-b0a7-482507645fbe','false','include.in.token.scope'),('b413fa37-7ed0-4913-bb5e-c088d11a99cc','','consent.screen.text'),('b413fa37-7ed0-4913-bb5e-c088d11a99cc','false','display.on.consent.screen'),('b413fa37-7ed0-4913-bb5e-c088d11a99cc','false','include.in.token.scope'),('b5b05161-1c23-4445-bfdc-bbebcf8e5c8a','false','display.on.consent.screen'),('b5b05161-1c23-4445-bfdc-bbebcf8e5c8a','false','include.in.token.scope'),('c33de27d-ddf1-4e39-a650-f6b26a39c94d','${addressScopeConsentText}','consent.screen.text'),('c33de27d-ddf1-4e39-a650-f6b26a39c94d','true','display.on.consent.screen'),('c33de27d-ddf1-4e39-a650-f6b26a39c94d','true','include.in.token.scope'),('ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f','false','display.on.consent.screen'),('ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f','false','include.in.token.scope'),('cb1b0c2e-4add-489d-8517-bb88ef50c24e','${rolesScopeConsentText}','consent.screen.text'),('cb1b0c2e-4add-489d-8517-bb88ef50c24e','true','display.on.consent.screen'),('cb1b0c2e-4add-489d-8517-bb88ef50c24e','false','include.in.token.scope'),('cbebef4f-8d02-451d-97b5-3e5bb76f7ad3','${phoneScopeConsentText}','consent.screen.text'),('cbebef4f-8d02-451d-97b5-3e5bb76f7ad3','true','display.on.consent.screen'),('cbebef4f-8d02-451d-97b5-3e5bb76f7ad3','true','include.in.token.scope'),('cfde5547-09bf-450f-b5cf-a678ba2aa3e8','${addressScopeConsentText}','consent.screen.text'),('cfde5547-09bf-450f-b5cf-a678ba2aa3e8','true','display.on.consent.screen'),('cfde5547-09bf-450f-b5cf-a678ba2aa3e8','true','include.in.token.scope'),('d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6','','consent.screen.text'),('d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6','false','display.on.consent.screen'),('d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6','false','include.in.token.scope'),('d7b2d83f-c615-4e9d-9497-629559cc4f99','${emailScopeConsentText}','consent.screen.text'),('d7b2d83f-c615-4e9d-9497-629559cc4f99','true','display.on.consent.screen'),('d7b2d83f-c615-4e9d-9497-629559cc4f99','true','include.in.token.scope'),('d9d8aace-cb83-4e3b-9f16-3965847e9621','${phoneScopeConsentText}','consent.screen.text'),('d9d8aace-cb83-4e3b-9f16-3965847e9621','true','display.on.consent.screen'),('d9d8aace-cb83-4e3b-9f16-3965847e9621','true','include.in.token.scope'),('daa41647-fc41-48ea-a9f2-6967459da29c','','consent.screen.text'),('daa41647-fc41-48ea-a9f2-6967459da29c','false','display.on.consent.screen'),('daa41647-fc41-48ea-a9f2-6967459da29c','false','include.in.token.scope'),('dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509','${profileScopeConsentText}','consent.screen.text'),('dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509','true','display.on.consent.screen'),('dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509','true','include.in.token.scope'),('dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c','${offlineAccessScopeConsentText}','consent.screen.text'),('dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c','true','display.on.consent.screen'),('e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1','false','display.on.consent.screen'),('e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1','true','include.in.token.scope'),('e252f14e-a73f-4662-aeab-f50b4c87e2a7','false','display.on.consent.screen'),('e252f14e-a73f-4662-aeab-f50b4c87e2a7','false','include.in.token.scope'),('ea43c59a-cdde-4a84-8791-1708e9a479be','${emailScopeConsentText}','consent.screen.text'),('ea43c59a-cdde-4a84-8791-1708e9a479be','true','display.on.consent.screen'),('ea43c59a-cdde-4a84-8791-1708e9a479be','true','include.in.token.scope'),('eb802de4-bbe0-49fc-a498-4c0339472151','${samlRoleListScopeConsentText}','consent.screen.text'),('eb802de4-bbe0-49fc-a498-4c0339472151','true','display.on.consent.screen'),('ed029170-1b1d-42ce-acd2-6b201c69d739','${addressScopeConsentText}','consent.screen.text'),('ed029170-1b1d-42ce-acd2-6b201c69d739','true','display.on.consent.screen'),('ed029170-1b1d-42ce-acd2-6b201c69d739','true','include.in.token.scope'),('edc82ef9-2950-4118-aa58-8380b891a9e2','${addressScopeConsentText}','consent.screen.text'),('edc82ef9-2950-4118-aa58-8380b891a9e2','true','display.on.consent.screen'),('edc82ef9-2950-4118-aa58-8380b891a9e2','true','include.in.token.scope'),('eebab16d-7773-4c8a-896c-8db6747d91c3','${emailScopeConsentText}','consent.screen.text'),('eebab16d-7773-4c8a-896c-8db6747d91c3','true','display.on.consent.screen'),('eebab16d-7773-4c8a-896c-8db6747d91c3','true','include.in.token.scope'),('f2201541-c2b3-4ca5-ae21-5d1f163e746d','','consent.screen.text'),('f2201541-c2b3-4ca5-ae21-5d1f163e746d','false','display.on.consent.screen'),('f2201541-c2b3-4ca5-ae21-5d1f163e746d','false','include.in.token.scope'),('f265e752-3d01-414e-85c1-e3e870588982','${emailScopeConsentText}','consent.screen.text'),('f265e752-3d01-414e-85c1-e3e870588982','true','display.on.consent.screen'),('f265e752-3d01-414e-85c1-e3e870588982','true','include.in.token.scope'),('fb76d52b-d65a-455e-842a-6acb6c346f72','${addressScopeConsentText}','consent.screen.text'),('fb76d52b-d65a-455e-842a-6acb6c346f72','true','display.on.consent.screen'),('fb76d52b-d65a-455e-842a-6acb6c346f72','true','include.in.token.scope'),('fc36343d-c158-480c-bd20-497043c0fe34','${rolesScopeConsentText}','consent.screen.text'),('fc36343d-c158-480c-bd20-497043c0fe34','true','display.on.consent.screen'),('fc36343d-c158-480c-bd20-497043c0fe34','false','include.in.token.scope'),('fdd1c112-22eb-481a-a2f4-9d320c13bb28','${samlRoleListScopeConsentText}','consent.screen.text'),('fdd1c112-22eb-481a-a2f4-9d320c13bb28','true','display.on.consent.screen'),('fe6c9b31-8f14-4daa-9515-a8815a0860fd','false','display.on.consent.screen'),('fe6c9b31-8f14-4daa-9515-a8815a0860fd','true','include.in.token.scope');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('05d0c822-5888-4974-b356-5c38d70b8e13','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('05d0c822-5888-4974-b356-5c38d70b8e13','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('05d0c822-5888-4974-b356-5c38d70b8e13','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('05d0c822-5888-4974-b356-5c38d70b8e13','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('05d0c822-5888-4974-b356-5c38d70b8e13','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('05d0c822-5888-4974-b356-5c38d70b8e13','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('05d0c822-5888-4974-b356-5c38d70b8e13','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('05d0c822-5888-4974-b356-5c38d70b8e13','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('05d0c822-5888-4974-b356-5c38d70b8e13','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('0e41b39b-8388-4341-8602-905f9ff86f7c','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('0e41b39b-8388-4341-8602-905f9ff86f7c','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('0e41b39b-8388-4341-8602-905f9ff86f7c','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('0e41b39b-8388-4341-8602-905f9ff86f7c','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('0e41b39b-8388-4341-8602-905f9ff86f7c','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('0e41b39b-8388-4341-8602-905f9ff86f7c','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('0e41b39b-8388-4341-8602-905f9ff86f7c','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('0e41b39b-8388-4341-8602-905f9ff86f7c','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('0e41b39b-8388-4341-8602-905f9ff86f7c','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('1245c362-051d-45c4-a292-b6ae0a21a518','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('1245c362-051d-45c4-a292-b6ae0a21a518','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('1245c362-051d-45c4-a292-b6ae0a21a518','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('1245c362-051d-45c4-a292-b6ae0a21a518','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('1245c362-051d-45c4-a292-b6ae0a21a518','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('1245c362-051d-45c4-a292-b6ae0a21a518','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('1245c362-051d-45c4-a292-b6ae0a21a518','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('1245c362-051d-45c4-a292-b6ae0a21a518','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('1245c362-051d-45c4-a292-b6ae0a21a518','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('125c23c8-f5a1-43ff-b35c-e6ace698b7c2','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('2524a4a9-2675-4551-9d41-5021bff05172','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('2524a4a9-2675-4551-9d41-5021bff05172','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('2524a4a9-2675-4551-9d41-5021bff05172','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('2524a4a9-2675-4551-9d41-5021bff05172','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('2524a4a9-2675-4551-9d41-5021bff05172','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('2524a4a9-2675-4551-9d41-5021bff05172','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('2524a4a9-2675-4551-9d41-5021bff05172','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('2524a4a9-2675-4551-9d41-5021bff05172','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('2524a4a9-2675-4551-9d41-5021bff05172','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('26ef7671-c4b3-4fc0-9997-da8a917fc546','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('26ef7671-c4b3-4fc0-9997-da8a917fc546','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('26ef7671-c4b3-4fc0-9997-da8a917fc546','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('26ef7671-c4b3-4fc0-9997-da8a917fc546','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('325bcf95-3a2b-4b58-bb11-d1581575907a','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('325bcf95-3a2b-4b58-bb11-d1581575907a','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('325bcf95-3a2b-4b58-bb11-d1581575907a','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('325bcf95-3a2b-4b58-bb11-d1581575907a','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('325bcf95-3a2b-4b58-bb11-d1581575907a','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('325bcf95-3a2b-4b58-bb11-d1581575907a','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('325bcf95-3a2b-4b58-bb11-d1581575907a','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('325bcf95-3a2b-4b58-bb11-d1581575907a','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('325bcf95-3a2b-4b58-bb11-d1581575907a','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('37a991ab-ee73-42a1-a49c-f5c883c3adde','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('37a991ab-ee73-42a1-a49c-f5c883c3adde','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('37a991ab-ee73-42a1-a49c-f5c883c3adde','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('37a991ab-ee73-42a1-a49c-f5c883c3adde','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('40cef467-9e76-4d78-860e-880e680a14a4','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('40cef467-9e76-4d78-860e-880e680a14a4','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('40cef467-9e76-4d78-860e-880e680a14a4','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('40cef467-9e76-4d78-860e-880e680a14a4','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('40cef467-9e76-4d78-860e-880e680a14a4','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('40cef467-9e76-4d78-860e-880e680a14a4','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('40cef467-9e76-4d78-860e-880e680a14a4','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('40cef467-9e76-4d78-860e-880e680a14a4','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('45ef982c-3f19-4396-877f-29ccc7b04a49','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('45ef982c-3f19-4396-877f-29ccc7b04a49','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('45ef982c-3f19-4396-877f-29ccc7b04a49','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('45ef982c-3f19-4396-877f-29ccc7b04a49','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('45ef982c-3f19-4396-877f-29ccc7b04a49','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('45ef982c-3f19-4396-877f-29ccc7b04a49','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('45ef982c-3f19-4396-877f-29ccc7b04a49','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('45ef982c-3f19-4396-877f-29ccc7b04a49','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('499248ed-2241-4568-9081-3d5eb5e00d33','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('499248ed-2241-4568-9081-3d5eb5e00d33','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('499248ed-2241-4568-9081-3d5eb5e00d33','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('499248ed-2241-4568-9081-3d5eb5e00d33','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('499248ed-2241-4568-9081-3d5eb5e00d33','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('499248ed-2241-4568-9081-3d5eb5e00d33','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('499248ed-2241-4568-9081-3d5eb5e00d33','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('499248ed-2241-4568-9081-3d5eb5e00d33','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('499248ed-2241-4568-9081-3d5eb5e00d33','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('5163e980-4bbb-4faa-a252-4908f080c6eb','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('5163e980-4bbb-4faa-a252-4908f080c6eb','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('5163e980-4bbb-4faa-a252-4908f080c6eb','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('5163e980-4bbb-4faa-a252-4908f080c6eb','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('5163e980-4bbb-4faa-a252-4908f080c6eb','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('5163e980-4bbb-4faa-a252-4908f080c6eb','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('5163e980-4bbb-4faa-a252-4908f080c6eb','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('5163e980-4bbb-4faa-a252-4908f080c6eb','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('5163e980-4bbb-4faa-a252-4908f080c6eb','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('55816dcb-1e22-47bd-b6b8-0869a0aede67','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('55816dcb-1e22-47bd-b6b8-0869a0aede67','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('55816dcb-1e22-47bd-b6b8-0869a0aede67','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('55816dcb-1e22-47bd-b6b8-0869a0aede67','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('55816dcb-1e22-47bd-b6b8-0869a0aede67','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('55816dcb-1e22-47bd-b6b8-0869a0aede67','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('55816dcb-1e22-47bd-b6b8-0869a0aede67','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('55816dcb-1e22-47bd-b6b8-0869a0aede67','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('55816dcb-1e22-47bd-b6b8-0869a0aede67','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('5d8ac026-28f4-40be-85eb-ea19055e07bc','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('5d8ac026-28f4-40be-85eb-ea19055e07bc','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('5d8ac026-28f4-40be-85eb-ea19055e07bc','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('5d8ac026-28f4-40be-85eb-ea19055e07bc','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('5d8ac026-28f4-40be-85eb-ea19055e07bc','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('6263c078-77c7-4417-a293-56702d014298','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('6263c078-77c7-4417-a293-56702d014298','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('6263c078-77c7-4417-a293-56702d014298','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('6263c078-77c7-4417-a293-56702d014298','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('6263c078-77c7-4417-a293-56702d014298','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('6263c078-77c7-4417-a293-56702d014298','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('6263c078-77c7-4417-a293-56702d014298','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('6263c078-77c7-4417-a293-56702d014298','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('6263c078-77c7-4417-a293-56702d014298','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('635bba3f-9906-46d4-bba8-fa9b7d37323c','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('635bba3f-9906-46d4-bba8-fa9b7d37323c','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('635bba3f-9906-46d4-bba8-fa9b7d37323c','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('635bba3f-9906-46d4-bba8-fa9b7d37323c','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('635bba3f-9906-46d4-bba8-fa9b7d37323c','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('635bba3f-9906-46d4-bba8-fa9b7d37323c','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('6aeeb599-3b15-4f3b-aaca-e0919bface4d','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('6e197034-e229-47d2-b43e-d1adea8b3cc9','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('6e197034-e229-47d2-b43e-d1adea8b3cc9','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('6e197034-e229-47d2-b43e-d1adea8b3cc9','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('6e197034-e229-47d2-b43e-d1adea8b3cc9','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('70c5f08b-6633-44de-9dca-01057fdc100e','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('70c5f08b-6633-44de-9dca-01057fdc100e','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('70c5f08b-6633-44de-9dca-01057fdc100e','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('70c5f08b-6633-44de-9dca-01057fdc100e','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('70c5f08b-6633-44de-9dca-01057fdc100e','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('70c5f08b-6633-44de-9dca-01057fdc100e','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('70c5f08b-6633-44de-9dca-01057fdc100e','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('70c5f08b-6633-44de-9dca-01057fdc100e','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('70c5f08b-6633-44de-9dca-01057fdc100e','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('72f2d224-1a41-4693-a948-e9bef9e5fa8e','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('77a2f4d9-fa77-4d35-88c9-851bf579503f','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('77a2f4d9-fa77-4d35-88c9-851bf579503f','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('77a2f4d9-fa77-4d35-88c9-851bf579503f','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('77a2f4d9-fa77-4d35-88c9-851bf579503f','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('7be799a5-f05e-4603-9ff8-114d01d5e090','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('7be799a5-f05e-4603-9ff8-114d01d5e090','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('7be799a5-f05e-4603-9ff8-114d01d5e090','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('7be799a5-f05e-4603-9ff8-114d01d5e090','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('7be799a5-f05e-4603-9ff8-114d01d5e090','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('7be799a5-f05e-4603-9ff8-114d01d5e090','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('7be799a5-f05e-4603-9ff8-114d01d5e090','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('7be799a5-f05e-4603-9ff8-114d01d5e090','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('7be799a5-f05e-4603-9ff8-114d01d5e090','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('7e194037-1868-43db-8bad-6575ce155ad0','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('7e194037-1868-43db-8bad-6575ce155ad0','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('7e194037-1868-43db-8bad-6575ce155ad0','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('7e194037-1868-43db-8bad-6575ce155ad0','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('7e194037-1868-43db-8bad-6575ce155ad0','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('7e194037-1868-43db-8bad-6575ce155ad0','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('7e194037-1868-43db-8bad-6575ce155ad0','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('7e194037-1868-43db-8bad-6575ce155ad0','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('7e194037-1868-43db-8bad-6575ce155ad0','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('8b5fd640-da2b-4f34-82e2-195738502ea6','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('8b5fd640-da2b-4f34-82e2-195738502ea6','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('8b5fd640-da2b-4f34-82e2-195738502ea6','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('8b5fd640-da2b-4f34-82e2-195738502ea6','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('8b5fd640-da2b-4f34-82e2-195738502ea6','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('8b5fd640-da2b-4f34-82e2-195738502ea6','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('8b5fd640-da2b-4f34-82e2-195738502ea6','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('8b5fd640-da2b-4f34-82e2-195738502ea6','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('8b5fd640-da2b-4f34-82e2-195738502ea6','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('8d368537-c076-40fe-8ce8-ab46652ed3ed','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('8d368537-c076-40fe-8ce8-ab46652ed3ed','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('8d368537-c076-40fe-8ce8-ab46652ed3ed','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('8d368537-c076-40fe-8ce8-ab46652ed3ed','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('8d368537-c076-40fe-8ce8-ab46652ed3ed','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('8d368537-c076-40fe-8ce8-ab46652ed3ed','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('928cb134-c673-4f50-8bd9-05eeee264c64','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('928cb134-c673-4f50-8bd9-05eeee264c64','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('928cb134-c673-4f50-8bd9-05eeee264c64','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('928cb134-c673-4f50-8bd9-05eeee264c64','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('928cb134-c673-4f50-8bd9-05eeee264c64','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('928cb134-c673-4f50-8bd9-05eeee264c64','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('928cb134-c673-4f50-8bd9-05eeee264c64','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('928cb134-c673-4f50-8bd9-05eeee264c64','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('928cb134-c673-4f50-8bd9-05eeee264c64','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('986f246c-5589-407f-a009-33653f029a75','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('986f246c-5589-407f-a009-33653f029a75','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('986f246c-5589-407f-a009-33653f029a75','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('986f246c-5589-407f-a009-33653f029a75','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('986f246c-5589-407f-a009-33653f029a75','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('986f246c-5589-407f-a009-33653f029a75','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('986f246c-5589-407f-a009-33653f029a75','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('986f246c-5589-407f-a009-33653f029a75','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('986f246c-5589-407f-a009-33653f029a75','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('991e662f-1bb8-4563-b3c1-7e974c7be2b2','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('99d7091c-603b-4697-827d-3655cee59820','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('99d7091c-603b-4697-827d-3655cee59820','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('99d7091c-603b-4697-827d-3655cee59820','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('99d7091c-603b-4697-827d-3655cee59820','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('99d7091c-603b-4697-827d-3655cee59820','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('99d7091c-603b-4697-827d-3655cee59820','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('99d7091c-603b-4697-827d-3655cee59820','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('99d7091c-603b-4697-827d-3655cee59820','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('99d7091c-603b-4697-827d-3655cee59820','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('a8ca9807-b040-4a34-9edd-7ed183e10e3a','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('bc6b45df-8ae9-4c62-94d0-5090e08d7a3d','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('c369f888-d2e8-4885-8438-7ab970694b27','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('c369f888-d2e8-4885-8438-7ab970694b27','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('c369f888-d2e8-4885-8438-7ab970694b27','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('c369f888-d2e8-4885-8438-7ab970694b27','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('c369f888-d2e8-4885-8438-7ab970694b27','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('c369f888-d2e8-4885-8438-7ab970694b27','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('c369f888-d2e8-4885-8438-7ab970694b27','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('c369f888-d2e8-4885-8438-7ab970694b27','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('c369f888-d2e8-4885-8438-7ab970694b27','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('c4161da8-b3b9-4470-9d03-514ebf126bc1','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('c4161da8-b3b9-4470-9d03-514ebf126bc1','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('c4161da8-b3b9-4470-9d03-514ebf126bc1','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('c4161da8-b3b9-4470-9d03-514ebf126bc1','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('c4161da8-b3b9-4470-9d03-514ebf126bc1','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('cfbd7349-5fc5-40a8-a506-c479f3bf947e','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('d00ef4ab-386a-4f9c-8854-0d712ace428e','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('d00ef4ab-386a-4f9c-8854-0d712ace428e','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('d00ef4ab-386a-4f9c-8854-0d712ace428e','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('d00ef4ab-386a-4f9c-8854-0d712ace428e','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('d0f7138b-29ca-48ae-83c1-9cc5fb8c483f','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('db0af77b-75fa-44fd-8de6-38bc3292ab86','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('db0af77b-75fa-44fd-8de6-38bc3292ab86','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('db0af77b-75fa-44fd-8de6-38bc3292ab86','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('db0af77b-75fa-44fd-8de6-38bc3292ab86','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('db0af77b-75fa-44fd-8de6-38bc3292ab86','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('db0af77b-75fa-44fd-8de6-38bc3292ab86','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('db0af77b-75fa-44fd-8de6-38bc3292ab86','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('db0af77b-75fa-44fd-8de6-38bc3292ab86','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('db0af77b-75fa-44fd-8de6-38bc3292ab86','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('dba012d2-d051-4938-ab35-1b5e65905028','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('dba012d2-d051-4938-ab35-1b5e65905028','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('dba012d2-d051-4938-ab35-1b5e65905028','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('dba012d2-d051-4938-ab35-1b5e65905028','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('dba012d2-d051-4938-ab35-1b5e65905028','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('dba012d2-d051-4938-ab35-1b5e65905028','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('dba012d2-d051-4938-ab35-1b5e65905028','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('dba012d2-d051-4938-ab35-1b5e65905028','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('dc643bd7-fe8a-46c6-909f-f247504d314e','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('dc643bd7-fe8a-46c6-909f-f247504d314e','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('dc643bd7-fe8a-46c6-909f-f247504d314e','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('dc643bd7-fe8a-46c6-909f-f247504d314e','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('dc643bd7-fe8a-46c6-909f-f247504d314e','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('dc643bd7-fe8a-46c6-909f-f247504d314e','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('dc643bd7-fe8a-46c6-909f-f247504d314e','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('dc643bd7-fe8a-46c6-909f-f247504d314e','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('dc643bd7-fe8a-46c6-909f-f247504d314e','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('eb21f87d-406d-4f0d-aba8-d431ad07f140','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('eb21f87d-406d-4f0d-aba8-d431ad07f140','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('eb21f87d-406d-4f0d-aba8-d431ad07f140','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('eb21f87d-406d-4f0d-aba8-d431ad07f140','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary ''),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('f038e599-1b5d-4c74-9076-24b602fbe002','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('f038e599-1b5d-4c74-9076-24b602fbe002','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('f038e599-1b5d-4c74-9076-24b602fbe002','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('f038e599-1b5d-4c74-9076-24b602fbe002','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('f038e599-1b5d-4c74-9076-24b602fbe002','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('f038e599-1b5d-4c74-9076-24b602fbe002','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('f038e599-1b5d-4c74-9076-24b602fbe002','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('f038e599-1b5d-4c74-9076-24b602fbe002','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('f038e599-1b5d-4c74-9076-24b602fbe002','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('f5377f64-d9ca-457b-9fbe-60311425a8ae','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('f5377f64-d9ca-457b-9fbe-60311425a8ae','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('f5377f64-d9ca-457b-9fbe-60311425a8ae','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('f5377f64-d9ca-457b-9fbe-60311425a8ae','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('f5377f64-d9ca-457b-9fbe-60311425a8ae','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('f5377f64-d9ca-457b-9fbe-60311425a8ae','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('f5377f64-d9ca-457b-9fbe-60311425a8ae','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('f5377f64-d9ca-457b-9fbe-60311425a8ae','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('f5377f64-d9ca-457b-9fbe-60311425a8ae','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('f62ac36e-bda7-4536-818a-02d882178d26','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('f62ac36e-bda7-4536-818a-02d882178d26','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('f62ac36e-bda7-4536-818a-02d882178d26','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('f62ac36e-bda7-4536-818a-02d882178d26','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('f62ac36e-bda7-4536-818a-02d882178d26','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('f62ac36e-bda7-4536-818a-02d882178d26','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('f62ac36e-bda7-4536-818a-02d882178d26','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('f62ac36e-bda7-4536-818a-02d882178d26','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('f62ac36e-bda7-4536-818a-02d882178d26','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('f75eef0e-f758-4c23-9fe4-1173c210d99e','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('f75eef0e-f758-4c23-9fe4-1173c210d99e','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('f75eef0e-f758-4c23-9fe4-1173c210d99e','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('f75eef0e-f758-4c23-9fe4-1173c210d99e','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('fcc78a04-fc35-4ca1-b7a5-8af24bf24444','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0');
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('206bac63-87bc-4564-8f26-0b3e8be53ab5','3a14b4ef-34b0-4d8f-8e91-de5d1c67c98b'),('3a83ab02-90c9-4f6d-82dc-6c839da88a46','9c27b3e5-0264-47a1-842f-48bcaf18b136'),('3e8ad8d8-1515-4856-8366-55694e7f6bf2','680fc72d-ab07-4422-8c43-33d14dce61d3'),('4f00de62-1158-4023-83b1-0147d7be9c68','4f68d1f5-0304-4fca-8c97-2da3d9338774'),('71437e46-4708-4c50-adfa-74f6bf31881d','7012f138-b3f9-4b83-a6ea-2b5a4ce8c846'),('dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c','7e60abfe-3ee7-44a7-8781-454cbbd30214');
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
INSERT INTO `COMPONENT` VALUES ('06de8ddc-4a99-4703-ac93-3cc15fea5606','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('09aad6f3-f810-47f4-8b97-d1a973f195d1','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('0b13cfb2-9930-49bc-8522-d0827d28d53e','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('12136b77-cd27-4876-be9d-79a7bbc3ebd6','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('122ead89-0a8a-43d0-a01c-b14e17d177a8','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('15417af5-0963-49ea-81f1-faf1ef5c7388','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('196210dc-0c06-4782-832b-000a46629d51','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('1b57d717-35ca-4aeb-83f8-cd6a5e4f0c06','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('1d4633bd-42c3-4c0b-a097-52abfbbe3f01','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('1dc192fa-7626-44f4-bfb4-6f938c9bf38e','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('204d7e18-7db5-4f9b-99dc-b30c03270953','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('21574aed-d564-4f77-b447-30c0fb936a9d',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('225fa69c-c7dc-43c4-a0fc-3646c180c33e','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('258e329e-59ec-4153-8cd3-e358f964baae','Full Scope Disabled','a70d8574-d800-4bf9-b056-6e5e23c893a0','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','anonymous'),('26653248-1eac-41a4-9859-24ad4e501223','Consent Required','a70d8574-d800-4bf9-b056-6e5e23c893a0','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','anonymous'),('2a4d944b-eb2e-40fb-9996-2b2c55484710','Allowed Client Scopes','a70d8574-d800-4bf9-b056-6e5e23c893a0','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','authenticated'),('2e008a81-6bfb-4fad-bfb6-1a3e1b5e29b3','rsa-generated','a70d8574-d800-4bf9-b056-6e5e23c893a0','rsa-generated','org.keycloak.keys.KeyProvider','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL),('2f1d1232-fae6-445d-b37f-d7749eebe4cc','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('35586cb0-17a5-4535-aece-335d0ca5c411','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','Allowed Protocol Mapper Types','a70d8574-d800-4bf9-b056-6e5e23c893a0','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','anonymous'),('362140e3-5a8c-4230-b28a-f6804e0532d1','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('36676d66-eaea-498b-8201-80cd9baa6c12','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('3e491195-8c50-43e6-99f4-2bf3840160da','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('4299cd5d-2c9c-4cda-9c90-651d4068412f','hmac-generated','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('450a5139-1fc2-4578-87d3-599257366bf3','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('488b6677-4f91-43cb-a8f0-ca0841d04da8','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('497d7aa5-28cf-4696-99ae-f1c6257b092b','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('4d12d338-107e-44a3-a9dd-17dfcae1042e','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('517f580d-2fae-455b-b8bc-cb2a72aa0628','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('536869a9-9ab2-4ccb-bae7-acb4150b28b6','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('53e76897-db25-47f9-8cca-53da69add4c5','hmac-generated','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('5607f0c4-dd87-471f-9e67-d546ddba68f5','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('56fd0747-1ea1-4c4e-9ba3-c12e1f52951b','Trusted Hosts','a70d8574-d800-4bf9-b056-6e5e23c893a0','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','anonymous'),('576b1836-2bdc-4912-97ff-88a0fa639a24','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('5af6b7d2-8ea9-4e97-99b7-357b92960222','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('5f309c2e-4aef-4915-bb66-631b6ef56c0d','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('61f82846-5925-4098-81ea-a7eb7a45af79','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('62dc015f-b510-4b1e-b611-5e68b45e7e32','aes-generated','a70d8574-d800-4bf9-b056-6e5e23c893a0','aes-generated','org.keycloak.keys.KeyProvider','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL),('65f2c2e7-17a8-4b5b-a25d-6ed7234e27e3','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('6655f08c-11c7-4c9b-afbc-6aad077697f6','Allowed Client Scopes','a70d8574-d800-4bf9-b056-6e5e23c893a0','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','anonymous'),('6b9fc65b-6324-48c5-a674-627b6f2e1596','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('6fd174af-7e6d-41e6-b90d-1e422bebd3db','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('715d8f69-e039-40dd-8a98-29d58b1a593e','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('73e5ce20-7b1c-4849-a901-4e744b11f0b8','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('77699f9f-d39e-480a-944c-e9e7db4f2bc7',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('7d694ec9-b1f9-4d3f-8286-3288049c63f5','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('7ed06059-4602-4d33-a6dd-98cb2dc0dd8e','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('89298158-af1a-466a-9ec5-41097451fcc9','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('907dede9-a295-44ea-ae3c-180945b78a7d','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('957a1030-37db-4b5d-87bf-dbb7e543090f','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('97d91240-7f11-48c0-9d82-5146f14d7ae5','Allowed Protocol Mapper Types','a70d8574-d800-4bf9-b056-6e5e23c893a0','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','authenticated'),('9ddacb96-e296-466e-95f9-2e8beceddd1d','hmac-generated','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('acfff946-e312-41c2-bf0a-48dd49ec57af','hmac-generated','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('ad80e4b2-7336-410f-8d61-d249cf0cf1fc','rsa-enc-generated','a70d8574-d800-4bf9-b056-6e5e23c893a0','rsa-enc-generated','org.keycloak.keys.KeyProvider','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL),('ae4bdba6-2b5a-4c57-b175-1c66e522fb58',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('af343e3e-5590-46fd-ae47-b639382927ac','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('b80fee37-7c81-4ce0-9de0-8a64ea61a949',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('b89ef885-0c57-48b1-b0e5-1f86e6fc283c','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('b9a3fe47-3d7e-424a-bbef-829ae38cec51','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('bbdbb4c6-dd9a-41a8-bc93-3171e7f4bc62','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('bc22d69d-2878-4957-96a8-5c3141dd0bf8',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('ca16ab1d-a061-41ff-bf56-2aadfa446535','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('cc836314-fcbe-4560-8050-74a864875905','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('cd043d76-8349-4a13-9900-d5467630fd3c','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('d84acada-3757-4b92-93a2-a531e2cf6400','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('e360ccf8-8a57-4f63-957f-af0039b2bf47','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('e6c6017a-8adc-4e40-9dbd-272fc6b55424','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('e7c49ab0-c75f-4833-a2c4-8469c4aadb49','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('e7f104dd-b8ae-427a-9993-9d8459bea81a','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('eb9491a3-95f4-41b2-b8ac-e9b940f08c27','Max Clients Limit','a70d8574-d800-4bf9-b056-6e5e23c893a0','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','anonymous'),('f2a439cf-b2eb-415d-b381-b8d51e798ed7','hmac-generated','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('f2ec47a8-2fc9-4da6-a390-e252a47fd096','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('f4e50cf5-b078-4969-96c1-f706a2232db3','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('fa239d6b-e870-48f0-afc4-400eba7bbbb9','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('fa713497-1f09-4538-b054-6958eee9839d','hmac-generated','a70d8574-d800-4bf9-b056-6e5e23c893a0','hmac-generated','org.keycloak.keys.KeyProvider','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL),('ff3ef064-b8a7-4f02-9091-581a8243b85c','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('01940d3a-7b3b-4a42-83cc-5a12f5445304','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','oidc-address-mapper'),('01d0600e-e9ea-49c3-8210-c75aa19f54ec','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('0285c1e2-5391-463c-9352-fb5caa6cbedd','957a1030-37db-4b5d-87bf-dbb7e543090f','certificate','MIIClzCCAX8CBgGNxDEVOjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDIyMDAxNDQyN1oXDTM0MDIyMDAxNDYwN1owDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALv5WntVVs4SCyWTLjwbJ0kEYH/OrevCkNnWVG8HOpQHzljP9ul3666Fb8NvAlFO8r0tHG/4TiJwrS3y/WFVYcHS5Mtggau75xKjvWdwxBNoMiDaHtAtIF9QczKXi6xJAa+MRX7dOfnq/63Wi1xnGxXwuFlyNtMdpEbF05bxtxld0T9E6K0gIzRaM6WHCVAUvjJFf2LQgeqrxuc5kiJOl+/evlLqhGCXQgCPdF4162obo5uKkjjfvHOVTTfyGRUN0ZIjVH88GI9A3YLR96MNrCStcP7Hvj0uYBGEKhmnp8VV3knLvHhtxfQiOPNeFwltb64xjeiNyVhFuse5n+Har8sCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAcxbV1YL/vtQ/4hxzqKwis8VxE9CeP/HaxkakoXqWFehSAmahCRLe8HusGjOr3Sb4JGW5k0ucaN6sno5CW3f8/k7mj9bprOAUkJ8joLcb6iiHfNnLLysiTu4fquvxR9NiHoFlegqnKX+KDWirUmCpBLkHuqkL4LSy00u2XOwdI3lYF0Src/3iaDb+TCTDyJ8uzVkf3ctuvYkTjJ+//rXTvY4l9fkvogicT53BQTlXyuMnbkpZFA2v13vM2cKpQB5z2j6tCIvFXWUE8UZT455FfsuO4gs3Bd6YYtZpoMTGyZpvQIw9vxkSZhq2qiiUmYHnMCJirIqdQ0c+52pB4e1QnA=='),('03d2c162-8558-4c55-b94f-f7fb7bf6a170','15417af5-0963-49ea-81f1-faf1ef5c7388','allow-default-scopes','true'),('0581edde-19cf-4080-b5c9-b15138187bb5','576b1836-2bdc-4912-97ff-88a0fa639a24','privateKey','MIIEowIBAAKCAQEAs/VlAy5VKGkX08w6d+8XQSi7kCnmMRXgIVHry4IpSKjGqKeEx3VLOkoA8UtkGVa9X5Stirq/v+te5PFYi8X9PEC0WB2kSsHvju3qpFVGdcfdK6QWGEK+o5F4JA9BYNhhtZo4B26fTn3abadEmzUzuripUwas6DeG8uN3Ix1viv4gWJCdhBa0UDJ/91VNo1gemTBoF34ZHBRz+sixYCdA3mACKHCtEFoNdpP1ndeV41eioRbr6SkdF3hh+z2IXCKn/K9uEiussHlZgHKOIjeWf3inxzqLmklShWpgmwPLGir9Oqc3s9N+XuElE14+PfImw7KZrEMhJfzqlm1eXdBAeQIDAQABAoIBAA+Dim30xfvSDrwAJJ/UQv5a1mVkoOb+ymMOkecdO68U31NvMmyThj6D9+k7vs+XmunGtazhBPwBllB8WE4GB04oPqPeCLZp86hjU4TpPEX8SrfWN6vNwGuPdEdl8HshDFAm95X3ozb8Du/z3JLYykxAwSNam8T4WUm1JfJabK3gFFTJ4ipqgzE0TY5Erf1QRbBqpEDAncjAif4hagvV1DtA5mDquR6c3v7p9jOlJKoT8G45/OgOIVd08NbDXL1knwYypMkt7eTwXOnZQutgIY53eWU0qc9l36ZPLsQYiJxPeUiz9j6l8PT6ckbebVlXD8Ooir9lLbr6On40v+qwF/UCgYEA4D4wLpD7v7Mda5drrzNLr71hi3LYNfp9Yo3oNDC+aUsWrF1mlbkb+lOXRIt9TkA52lUAmCqsU1rqILMxa+LFV3zVQdJ9ZjWOaHH0RN298zcFnfLqnZeLQrzlznyzt6RHpOuwFNkl9wYxstLAJ6tiknqH6ZJZOeqRnKgmxMoNrLsCgYEAzXGzNdELtmCyNkl2tz3N93ozlfnSNGA5EVKM+zPtnpHnLiUazONayJv4ZBQPES5ZTrp7oNEU4VXUxfLFdQYFkFCnIohvvgkaJQTlwrfj0H6okP+ePsCzruY7R+LE6TgiSq4La3ziTp7Kd6zsz7BdvbjdCsf3iUka5EgCJ/Y67lsCgYBnjHAFYM/Pou9n+oEwYxiFK4d6tGqg6m2x7+OVDhkvWAw9RdgUNWl0+9qzPVJ8qu3MI0pl+fafezD4LqcYsZv9HVkAzyk25G5BTrXEgzyure67FCxA33TgOYhJBI6cs5Cd2HPz/J4qZsLWV7mB2ANprolKU1k+hFH/LCrS3pbX9wKBgQCemRTRCeVx0KojMIleIm87inICaI528oV7su+1CTx6OoZuYCSVYTp3Pbj+gWG0UMSO+3VvC5mD7z/H5Ie8tH5dD3ZHOW6SFPLC+0noDQ/op6636S2foiHUdlXzQ8Phiv0mC8AzJYCLUxhYVP2nw65KRUkXBpI4wF/rNQ+9C+AomwKBgAGIIY0xmEAB/icFILdpOBIF12c05+Zbn6AaCxPf7B0irxXsVg8KumnRNuhPORibs1mErbmIJNtqOQUeGTUDJHC6d/bQjR0cS7M3op0SU8keTiAyDBTys48b0bDjVrBaoCOgu/pzC5RJeQBqSIbqdXRj44uDdTdH5TSr9/+gEeA2'),('059c72bd-fe94-426a-b0ce-4ba1be5f3d88','196210dc-0c06-4782-832b-000a46629d51','privateKey','MIIEpAIBAAKCAQEAnGhTk8G/su5Rc7nEGDxqDFV4GY4JIyZM85G3Zdq978egFash0Gm43xVZFkfB+99lAlLHH5+TNrW6wWI/WTSPGMYhwx6xHxjgEySBNqbixcliQvNW564YIuNyVmD6nOZab84b2KoNkH4mN76xWVfuCAJbvRWHPRVz2gjVaE5+CqUOux3syP9648sYuIfujGq6bMaX1PswZXd9uSQ4W7AF6QCpplhcR5b5/YvxtFzQVAtWyk77vGkvNgDOVwZMLiCibOuxtvPfK11PUcMZmcqlmNqC0EwCCL7ctiDounjCyR1Z212nKLJFdESQ6l5r0wFJ6WzX/9jjLs0DCKa1619I2wIDAQABAoIBABWCDS2DllfF3kKNOEeNlexgm8rb1YAqu1M/5a87z3mtLbjnwcHLVVusBQZY03ajkjF/GO3Nf6zQJxXXwQFZ28GwNqKtJ6CF8a5Vi0VCLsC8aubtAorfzbw3zcMjbo3BPuIivtaND/TKPCQsn25l9pAjDuLSFo5SUw5CamJVGjpeoDsjAU1a58CewwwL7Kql2wff2YcDyQTfOnmZAnq314Dg5fSxi4BB6wy32pcjQYTEqoALsgdZZlluKqfOisQ6de5EwP73EJTy2fk2d9Ub+Hf+oXfl+1QaKeHMcgysqMIiCJ2IQKEl1A6R3QkAPal5t6BxcZpmETRYv2TKEZJlt/UCgYEAzL+5bm5wjPutdvfNMtk2TppAIZz8xbCZKsjMCyeKXADVmozz2rqeDW4Pn9NQJHK92LNbAK5PCh54xwC22lpG5hsj6AR41isMcql1Mu7BkMpW2Tc4jBXu+BUFLVQGg30+Trpc9pgAmo6qw1cCqI6bUHXcyDbIxAN11r9KGLr5hAUCgYEAw47kyVXhL3jL+olhjRVpziXo64Bs0hhmo7PBOYQXb3lh98QITJt/5p6oPbOarGtLRO0LOWQQyfcl5I83Wq7iEXqfgV1McqqmXcjlrFpgm4hmj8HRAgCJg0hriwpLvqkoay/TLvEZwD81vWDpM4f8BsTwdznK0Uq2LMcj26LPD18CgYEAqD/MQuDiABg4nRBYQLaZl9HNbVGxrUnHM485jNj7K0tMO+oj4NOFWYfdsvpUWv8m3lHUMCUMskYD/ZOqrpeMtz4KLXivS16opfh2ZFoqGa8L2wczonnLm3S6glsP1zEt6EfgaIrTxC4ESOzRNG2rV1zjBmtuYxRs2wDqBJRwwXkCgYEAo07MPlpKcANXjER3w4LTVcUQysH3nkekRybQwMBPddcO+gKpz5e36pYp90TqcPw04j12Nxoabx7GdSUoW8FZprEZTMXmFoft4LnpGtJqhNgWlgyMBzj9nTW4IWeas4C98S0CFdxf3cyrixfIBzGTRO/nxBjuB3N1yNUQW9WNRs8CgYAvRcuqOAPpbgeNxjS1VRC41YThA+vuCpzeiVEjWHXMBCqFM/iKNCiwrVb+tFW62g98PDtLrbXrHDJxlge8351S1AagITgqxW8P/0/mZkpUpc7d+0rvycXOAFVkSLpYRcPU1u7mNrO+5OKAK7Gk51XxYqEBBwRARHyE+yjwELRjpg=='),('060b1cf2-adc3-40a0-a9fb-970b8276e5b3','1b57d717-35ca-4aeb-83f8-cd6a5e4f0c06','priority','100'),('07f3e1e3-0af3-4fd1-8087-c3d2a65c9e4d','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('09f649eb-fc45-4f9d-99b6-af741a9839e3','196210dc-0c06-4782-832b-000a46629d51','certificate','MIIClzCCAX8CBgGNxDC51zANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDIyMDAxNDQwNFoXDTM0MDIyMDAxNDU0NFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJxoU5PBv7LuUXO5xBg8agxVeBmOCSMmTPORt2Xave/HoBWrIdBpuN8VWRZHwfvfZQJSxx+fkza1usFiP1k0jxjGIcMesR8Y4BMkgTam4sXJYkLzVueuGCLjclZg+pzmWm/OG9iqDZB+Jje+sVlX7ggCW70Vhz0Vc9oI1WhOfgqlDrsd7Mj/euPLGLiH7oxqumzGl9T7MGV3fbkkOFuwBekAqaZYXEeW+f2L8bRc0FQLVspO+7xpLzYAzlcGTC4gomzrsbbz3ytdT1HDGZnKpZjagtBMAgi+3LYg6Lp4wskdWdtdpyiyRXREkOpea9MBSels1//Y4y7NAwimtetfSNsCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAD7zXSE1HRI6XM1EfV1knHjO86tZiTxA/ZRDtsSutaC1xgjGOHvd65inlcUrhNJ6Ez5aC/scMsi8Vdcft5UugJR1v3NRhIj23NyAsxFd/otdI7P6+BJZuvYu2PLCIeUPrufX5PXAwV4JJXqUpSPuxujCbq4IH6IL/ooMJ9Aj9bNEXY51txDRkSAteVkx6UpEiaPUxYm/hmUJ+TkxgqCTtP+BqCR7CYMM5RruatNNb4P4mbzkUtgfJDrn1mCy4kEhfHf+LkDEEy1iOFtT7ryQmiV9rV1QyS8nV+/eqvSdbgvF5nS6b/zUamkvSqO6bc2uc5ntUVV7tjfoGZPeMC8SKaQ=='),('0c579cf4-6ab2-4431-a739-b0db8c8679ed','576b1836-2bdc-4912-97ff-88a0fa639a24','algorithm','RSA-OAEP'),('0cc23693-af36-4f9b-bb89-626d4b6fab7d','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('117722b0-8961-4026-8e91-6bce2d19e611','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','oidc-address-mapper'),('12d1ed54-b2eb-437b-83de-c71d0c911afa','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('14e335a4-d415-470a-80ce-d6dad9a45844','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('15348cba-cf05-47d9-8ea5-e25d2f6fae13','450a5139-1fc2-4578-87d3-599257366bf3','allow-default-scopes','true'),('168d9c62-705e-436f-aef4-e0a0804b6568','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','saml-user-property-mapper'),('1807796b-ed00-4fd7-b3e4-9e209e3c4c49','362140e3-5a8c-4230-b28a-f6804e0532d1','host-sending-registration-request-must-match','true'),('189172c5-67ff-41d2-8a2b-4fb9f4af71b5','f4e50cf5-b078-4969-96c1-f706a2232db3','max-clients','200'),('19c953e1-08b5-4da1-bca8-c1937fabdded','d84acada-3757-4b92-93a2-a531e2cf6400','priority','100'),('19e2f1b5-9a54-429c-b5b6-92739b475dbf','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','saml-user-property-mapper'),('19f07593-5792-437a-9d36-cddb69a9d7bd','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('1afe1295-b3e6-40ad-845d-1bbd90ca1531','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('1d44ae58-1ffb-4082-8123-abdc8d81b070','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','oidc-full-name-mapper'),('1db9f6b5-81eb-4906-a37c-fe19f1870535','b89ef885-0c57-48b1-b0e5-1f86e6fc283c','certificate','MIIClzCCAX8CBgGNxC/3VzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDIyMDAxNDMxNFoXDTM0MDIyMDAxNDQ1NFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK0ovPMLpZ5RxjoPAmcrlO/k3zqfJT0kRRM9oz3B+ih0qdWCsYBj0T3vKkIU7qL+GxDwiidPHXIrYxgxaWPubOHBmbK33EyfKHDvfXYa2FSVgqnf7fETVoiVEQ9IXgD9Skb/Oa0M0MNYlVt74PQcoskOaDmYwjPPozJx9AkybkFOIwfBxRN/8XuJhCEldsflg0fXrumudq2AgeyehOwKoYdz7B5yz6a6YVR5xwYhqy9rpJ3zy8qywXBEwCehPKQr0qxeZyVxwQUWTE+tcS4Qx0EeARZXclTXtMZ3ZJQRIYgFH5hqOwaTw+zJbD3gDI3SajBKBgy3o3DrUCEQFMe5yp8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAVfnWYYQA6HtaN9zU00O+fgwqTVFIbFqpDf0ezeWA3dPLzvK8Zo/kIEfjOJ+qpjeG9u5/kGhHTmokunHG3ATNzh146yfHiI3XuesbhL1J56FstqMu6kUruUg1M6UDqCkTDtZ53wq7tlfltdnVqNVQNbQNa5gNdz0FlcIdfVygCuoNxr65JkyJQmzJk59PVaW/EjE196rYA4xXNRwnAHi09dKXhf0oWVwi5UB2RZjR//of0ZGgoj6nctEVPSVEZCRtm9f4fF2PsvT4XJe/Yd9a0guY2PzdM9C0VUMphegBHNnXg6NSW28W2trqnt8lS3ulbdIFz5cDE4p6k2WJKMrj8w=='),('1de1ab5a-cb0c-4439-9e71-157e3e186bf5','53e76897-db25-47f9-8cca-53da69add4c5','priority','100'),('21144b52-d37a-4ab0-a8f6-dc75f2f7a118','6fd174af-7e6d-41e6-b90d-1e422bebd3db','keyUse','ENC'),('216276fd-079c-43f0-992a-6de2759b0535','576b1836-2bdc-4912-97ff-88a0fa639a24','priority','100'),('232d7d1d-9f81-4a2c-981c-739c48cb5d11','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('2330ebe6-e1a0-40b7-8a53-97c75ed901ef','f2a439cf-b2eb-415d-b381-b8d51e798ed7','kid','7cd35368-3e4e-4de2-ae51-aa6798966d1d'),('23e32545-8d4b-4af1-adac-dbdacaacedf1','6b9fc65b-6324-48c5-a674-627b6f2e1596','secret','L5RfPKZxnpIz2rufBkrd4Q'),('23ea9798-6e77-452a-ad14-f8eef1e5800d','b89ef885-0c57-48b1-b0e5-1f86e6fc283c','keyUse','SIG'),('2510bc62-a93f-49ae-809b-81b52e288f86','6b9fc65b-6324-48c5-a674-627b6f2e1596','priority','100'),('256533f6-7a35-4a45-b071-0084d46a0cb3','517f580d-2fae-455b-b8bc-cb2a72aa0628','keyUse','SIG'),('25c73cc4-f265-4f73-b125-931c0026bde7','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','oidc-full-name-mapper'),('28335d50-2d6b-4365-a3f8-bec836fb528b','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','saml-role-list-mapper'),('29b3ca6f-56d1-477e-9b8c-5d44d84a748f','eb9491a3-95f4-41b2-b8ac-e9b940f08c27','max-clients','200'),('2ae25a56-3e7c-440c-8edb-d3caaa1174bc','225fa69c-c7dc-43c4-a0fc-3646c180c33e','max-clients','200'),('2bdd324a-ea7c-454e-b379-863b4e4f123d','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','saml-role-list-mapper'),('2c25e1c9-f5a0-43da-9150-255f04c3ab6a','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('2c508f5f-ea91-4cb0-8f9f-91d8e6579135','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('2fe1c14f-63fb-41da-85ce-c2921a83441c','9ddacb96-e296-466e-95f9-2e8beceddd1d','algorithm','HS256'),('3193e295-a35c-4133-bda1-2e23203cf5f0','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('32f83861-6915-4c17-b554-80e1aa4b8e4a','ad80e4b2-7336-410f-8d61-d249cf0cf1fc','certificate','MIICmzCCAYMCBgGNxCoH8zANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwMjIwMDEzNjQ1WhcNMzQwMjIwMDEzODI1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCgsmNiA290nMbQNMhRUuUeyQ5Ayk3kHuQLZk+65YgZB3kOcWnwNGlf8E31ki7nvF8rW9G7AaD3hiiZBpvsrDq8D7TSqWRWQ1KFyvqXAWgYOoUKhQxmlagwFaArtiRjXAoo9i6FjtnNOrG2YGCpq+/4PRq6hpJa4F8aEbNZRYNQnJGY48HIx4NZnzpLZld81/zTigmkBo80YaEI7jglESxRbu5XgsSmXfk3somqPK8AM9uSEWktGKpW5bSTwd+ENtzMvsXEmCbUlK5pvad4XWX/Kzt6QsPDJn3JQP9X1ByS2rfK3KI6FrPn6uNFMcXRqQTLPNTRNsMWB3STN5qVWMrVAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHWi974Zq8lvDUCJCqSXqRMGj7IGgG/WKxzZ5VtQYMy8qaUSxu0mCPyGIyUr9IUFc+klYquR+mXhpwJp9U6Au4MwGGHyUdDFmUWtCZ7DGKlGGkqE7zRP6gUkGM08LMiOGXvh2dPuRML+Icmg5j/Po2vTQhTnTNO74P2j9qftxAtH705PQq6t7Ixcin5/gSVqUoQ1mAvrDI/fXdeWS3VjDbFicWrFyEWM/G1fMomgW4dWOR8RayCVCPqLhZccPXDYrD9rX9rPAjacO3Fz72i2ZaulOhdY4u2umXUYczzWNk+LdknlaUZ9RHbgpN2r2YNO6tfRQ+Ff9grVmfIbqxgUNeo='),('333e1bfc-957d-42c1-b584-3fadaae6c698','f2a439cf-b2eb-415d-b381-b8d51e798ed7','priority','100'),('335d18c4-4cb9-4b5c-935a-8fdb81764b76','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('336685b9-dfaf-4fb2-b32f-36de7ff274fc','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('37910fb6-11f0-46da-9532-af0a64551be1','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('393b59d3-01c5-4897-bc66-1fec273129b1','4299cd5d-2c9c-4cda-9c90-651d4068412f','priority','100'),('3caa696f-c70d-4116-88e7-2db1a656d082','f2a439cf-b2eb-415d-b381-b8d51e798ed7','secret','xDjs1E_4RQWsj3ApSvRFPomM-zI5PJqlbZKoieqzKOu4K_elnsUwEtyahvE2QfXdQuamI0MDYNVemuGA6BCfFQ'),('3dfe86ce-d07d-442e-9506-783ded046a8e','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('427227f2-bf9d-4299-93bc-eb6316d6b429','196210dc-0c06-4782-832b-000a46629d51','algorithm','RSA-OAEP'),('4281fe47-f96b-46df-b93d-d57d81599d22','5f309c2e-4aef-4915-bb66-631b6ef56c0d','priority','100'),('42d3c21c-0028-4b7a-ab34-40c05ef12212','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','saml-user-property-mapper'),('43153b89-5a1a-4603-9090-320ce9ecc89c','0b13cfb2-9930-49bc-8522-d0827d28d53e','allow-default-scopes','true'),('43434714-9e46-4af9-acfd-d9096e9e4582','cd043d76-8349-4a13-9900-d5467630fd3c','max-clients','200'),('44d75a36-7d5e-429d-be77-03c80f779de9','5f309c2e-4aef-4915-bb66-631b6ef56c0d','secret','UvRrQdREQiRns1mPIMiq8Q'),('4684d5ff-8610-492c-a716-e9c0d1957424','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('46f0fee2-7f84-4975-9816-38728aa36d72','acfff946-e312-41c2-bf0a-48dd49ec57af','secret','2jZWXQ7n-2zmouWAhRLm_eyJN_6lrxiRufvp_E8tVkT2L5PI7DSTLrjPjGhUM9EqC0Lh-imIAc0bTIl9laIW2A'),('49098c25-58a9-4649-a0bf-0efe3d3b860a','36676d66-eaea-498b-8201-80cd9baa6c12','client-uris-must-match','true'),('492cecfe-6d99-49c3-9d1b-4eafed618d91','ad80e4b2-7336-410f-8d61-d249cf0cf1fc','algorithm','RSA-OAEP'),('4a0fe749-de2f-41a2-8cfe-8119a08e6ca3','2a4d944b-eb2e-40fb-9996-2b2c55484710','allow-default-scopes','true'),('4a119f60-3649-4fbd-a849-becaeaf6ed90','cc836314-fcbe-4560-8050-74a864875905','allow-default-scopes','true'),('4affc8b0-e1e8-4b87-92ee-7a1dc4b2b8fe','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','saml-user-property-mapper'),('4c4894b5-1b6e-4882-9b6a-a9d4a71343b6','497d7aa5-28cf-4696-99ae-f1c6257b092b','host-sending-registration-request-must-match','true'),('4c59554c-60ca-4b7c-8a9e-c5ba46b25a92','907dede9-a295-44ea-ae3c-180945b78a7d','host-sending-registration-request-must-match','true'),('4eb939ca-9734-4eb7-8da3-a25889710706','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4f02096c-df68-4aad-bac3-e5f09df37a1d','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('50d92604-9e8d-4b85-bfd9-c7a28348dd81','e7c49ab0-c75f-4833-a2c4-8469c4aadb49','allow-default-scopes','true'),('517e8cdc-f79e-4980-96e3-27a3f1809890','2f1d1232-fae6-445d-b37f-d7749eebe4cc','certificate','MIIClzCCAX8CBgGNxDETxzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDIyMDAxNDQyN1oXDTM0MDIyMDAxNDYwN1owDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJA/t7I63Yea3YrvGOQYRJNcjPb0EoY2YXmLWUgEbMgCDmtc1RWPTuRgUbk4SaHbnSgrnYlZ2w64uRcklfhkW6e40QFvxtiNeEWi8cuJLxiKf+ZkbedYW8dz48G8WjNnyGzm8NKZ0wRXfFkiormV/91m9AlTRh0uIQAujU3MjLZZS1zdsyBSI0vvZ1gbDzZFTn0ppawxzqqQaAWDG4nzPmRdsqAwYXqc1l4prRv9s5BmgljwYntKnnmp2duucd7aA9iZgqzCxS5q7TVVXYgZuPuc74h49Js8NpUwUnzcs2UzP3YNTg83UvK4naX6/9rWA7hNb7J27i7eEIn4qanO0K0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAjUw48e2QRcWL91WIwtbbF0xyOvWNGH1TuIRtdCNWRoH80lncqrNtK4Hc9RASJCDTkgBQPphPWGodEHmLRo9TEP/h09cqtlA5Hkbb+BIRRo0uX18qCON21sVVvYjnDV2VZbH2EwxW25BvdsKPFxtfwO0fQPPAX0t+a4kwSgXwS9VPMegWCsNTkuY3fJ7jqG+8J2fdO1Z2sgaMZD6GD+4NFTqSFxOUoxLkjq01Cv5tAPecBUKe9bY5m9fK2CG9cOSZ+oKPpIrPxFixI6eddKU/eobE2Htw/YwVBxEpEIh5DcrYRA0nrUPeTE9CFYbE1/2WhD4xfTHvxb6baAp749zwVA=='),('52710050-6168-4f1f-b065-c4d41db213da','576b1836-2bdc-4912-97ff-88a0fa639a24','keyUse','ENC'),('52cd4e1d-e647-4ead-8e03-91b8d19629a7','1d4633bd-42c3-4c0b-a097-52abfbbe3f01','priority','100'),('53a6a20d-9b84-43b9-8584-d2489e81a58f','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','oidc-address-mapper'),('5484ada2-30c6-4c03-ae48-3cb2ee3ab9c8','957a1030-37db-4b5d-87bf-dbb7e543090f','algorithm','RSA-OAEP'),('548558a6-18fd-4b97-aeae-fb433ccf1726','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','oidc-address-mapper'),('568b0661-4503-474d-a294-3cc0041050fc','fa713497-1f09-4538-b054-6958eee9839d','priority','100'),('570642a7-12bb-4a8d-80e0-7baa40ddbe44','1dc192fa-7626-44f4-bfb4-6f938c9bf38e','keyUse','ENC'),('5732afe7-073e-462b-a17a-d3a5566495a1','1dc192fa-7626-44f4-bfb4-6f938c9bf38e','certificate','MIIClzCCAX8CBgGNxDBgtTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDIyMDAxNDM0MVoXDTM0MDIyMDAxNDUyMVowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALdNN/xU+1csPKZqsjifcTsBlHqnRDQkiaCQXqoGoRbXG0zcNStjJUOjvLdqfzRyQWvKCRYuwBLPir8v1psoTnnbSpq2GCzrtnUI8jKqlJb4I3ZtCk0A0FhlTp74BqiHaMnm228PASKhbk1gOvqtusqOo6sO8yaYcWtqCfOp7N8Py/PXftemONvmjecMyeZM05Z1lQv4dYrFar+6VfZ6MPTVo09gfq0ywq9X2kHE14+xrfigRn3CB/phf0DL1OityV6Se4vtNMFAJwIMO08+mIqBQMRa7rWVROuHZ22xljHkll3rjF49ZouD/oz86B9aSUmEbXlVfTuphKOVYvFK8BMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAsGbee9z9QiXLdS8/BElnFywZ6C31fsW0MDn3E9yNeOEYUVrD0ZxaYfIkwD6ZptiWVp3JqPU0gNYyyTU1nBRN+Qb5PIHX3YSF+NlM9d9ub78KcjRGPL3ZXHRSWbunoSg+ptN8me+ANcC+L0daXQZqeQVUbUvvv53MPUo/LSUaTxXhdhYgyH8wH1dCerPMc6syJFhiFQ0yOCva4a0jf1PDCJ5fVXGzQwoLp9y6AuZkXrVGv2GfdYjq9bUMy5k5YNrqWFoJTDZJ6j5xsYYgL5bQdxrrQiRv3Hn6xpF3e+W6JFGM+vFXYI3Lbip1QZTTmsJXGgP6wpOPiedDwHcw7XJE2A=='),('59ce4afb-88bd-4bb2-8314-9f07b5c6db0a','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','oidc-full-name-mapper'),('59f70e6f-779e-4565-b56a-9ec3fad6a139','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','saml-user-property-mapper'),('5b1e5ae6-01b0-41ee-ae53-0250422ae050','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('5c5a07f1-0de9-4cd5-8dcc-9c56d7012522','f2a439cf-b2eb-415d-b381-b8d51e798ed7','algorithm','HS256'),('5ee771f8-a579-47e0-8231-bff4f85d4997','9ddacb96-e296-466e-95f9-2e8beceddd1d','kid','cd8a53eb-ea48-4af0-b165-723917463335'),('6014928c-8365-4ada-ae26-2c3975e206d8','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('627dcbc4-71df-41b1-8d85-f04f0d84e2f2','ad80e4b2-7336-410f-8d61-d249cf0cf1fc','keyUse','ENC'),('638fc732-048c-4512-8312-40f32fbe8830','5af6b7d2-8ea9-4e97-99b7-357b92960222','allow-default-scopes','true'),('65c38c4f-8d2a-4c5b-8a04-127c42f5feb4','53e76897-db25-47f9-8cca-53da69add4c5','secret','9T2IJ69cKc3LzP9-Z1UDne7O5FmB1Ut1hWqwURJeO8SACyRluZmMl8YLR-cFPYMYJIYRCPGkoAIlSV5coEq7vA'),('691efdac-b971-420c-8ac6-db7796ef4107','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','oidc-full-name-mapper'),('699a7901-4457-4fdd-9667-c511a34bd328','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','saml-user-property-mapper'),('6a18a72d-8020-4738-9f41-f979d3c79e41','ad80e4b2-7336-410f-8d61-d249cf0cf1fc','priority','100'),('6a685089-9293-4a1b-a094-1b861356f499','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('6cbed020-73b8-4f68-99f0-d69bd110eb03','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','oidc-address-mapper'),('6e4aa058-824f-47f8-abcb-797b3c5c4bee','ca16ab1d-a061-41ff-bf56-2aadfa446535','kid','714dcdc9-4a6a-416f-8f1a-f852e2d2d07e'),('6e6a82c8-f35b-4016-8905-19e22ad2f703','6fd174af-7e6d-41e6-b90d-1e422bebd3db','algorithm','RSA-OAEP'),('6eb1168b-5b48-4e9b-9b68-97d6dacc0a77','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','saml-user-property-mapper'),('6eed1531-eb9c-4e82-ae40-eb018843e388','fa713497-1f09-4538-b054-6958eee9839d','secret','kTQxDuitKDPy5Uh4M94mWa5ZHAhl_dwZGS6eypRzhEpNH4LlX1YM-e4T4_clqfGJm61sUSiirkpASsKUP2QMJg'),('703bef45-5925-4dad-8da7-c26761f41a0e','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','oidc-address-mapper'),('71226762-de07-4e04-ab75-2791e5a44256','acfff946-e312-41c2-bf0a-48dd49ec57af','algorithm','HS256'),('7128f467-3644-4c65-a34f-83050b495f15','2f1d1232-fae6-445d-b37f-d7749eebe4cc','priority','100'),('71923d68-bb38-4f3f-aa75-f3c339d3a138','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','oidc-address-mapper'),('732352c3-5131-41b3-accf-2ddcf7bc3c95','e6c6017a-8adc-4e40-9dbd-272fc6b55424','priority','100'),('73dabb55-e33b-4f8f-a80d-0af74bf23174','ca16ab1d-a061-41ff-bf56-2aadfa446535','priority','100'),('743548ad-df13-43ed-9695-4d07e06511d4','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','oidc-full-name-mapper'),('768e1273-d0c1-4153-b718-994801955c61','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('78252578-ee4d-45bb-b601-3d51fe9fc950','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('7a4f3ec3-6a91-430e-a302-e6a966fa3a77','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7b717b31-c787-423f-85bd-c2852e48d1a5','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('7b808379-feec-4950-9ae4-4c53931520b2','5f309c2e-4aef-4915-bb66-631b6ef56c0d','kid','a08e9e80-f18b-40f4-97b4-eb461f5dd138'),('7b8ee5c4-3418-4727-8795-f94c0d838d8b','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('7ba620f3-f3a1-4e0e-bf1b-b55c01b57c79','6b9fc65b-6324-48c5-a674-627b6f2e1596','kid','4a9b1580-a032-43a0-8c7e-495d8cbe1648'),('7bca85af-bd82-4ef8-8d14-9f684c04b569','56fd0747-1ea1-4c4e-9ba3-c12e1f52951b','host-sending-registration-request-must-match','true'),('7bea18ae-e53f-4da0-8d0e-2cfcafc145d9','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','saml-role-list-mapper'),('7c22452d-24e4-49d6-bc04-c757a22d5009','9ddacb96-e296-466e-95f9-2e8beceddd1d','priority','100'),('7c6a0210-1459-4f2d-9aab-829d66559fe0','362140e3-5a8c-4230-b28a-f6804e0532d1','client-uris-must-match','true'),('7ca7166c-2710-4c10-857f-28da270a5da3','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7d683d95-cde9-4a12-94a5-ba97446ecebf','1dc192fa-7626-44f4-bfb4-6f938c9bf38e','privateKey','MIIEpAIBAAKCAQEAt003/FT7Vyw8pmqyOJ9xOwGUeqdENCSJoJBeqgahFtcbTNw1K2MlQ6O8t2p/NHJBa8oJFi7AEs+Kvy/WmyhOedtKmrYYLOu2dQjyMqqUlvgjdm0KTQDQWGVOnvgGqIdoyebbbw8BIqFuTWA6+q26yo6jqw7zJphxa2oJ86ns3w/L89d+16Y42+aN5wzJ5kzTlnWVC/h1isVqv7pV9now9NWjT2B+rTLCr1faQcTXj7Gt+KBGfcIH+mF/QMvU6K3JXpJ7i+00wUAnAgw7Tz6YioFAxFrutZVE64dnbbGWMeSWXeuMXj1mi4P+jPzoH1pJSYRteVV9O6mEo5Vi8UrwEwIDAQABAoIBACRNd0aSwBqCKNreq8BaF49Tn0fxY6keCWHS5eSvnmzLGl2NCTy4DJPKVGBRB7Nn43wJDeamSKURFI4L1+lvwKcSnsJoSP5winjAVlNhhD8oEsHsE4uvmxO+sKT8QzlSZBcEkTX8F0H4DcPmSJgIG0Ptnw2MTuy4aVIYNLNc1oxQmtQtKxsZBdio5dDbwp3TXqvOR8pWkZRpv79PSgS0lLmBK7U5QjDHZFu+XmtVWq2nM7vz06JMQjlQ5WOyGJu5WHG67lR7Tajt/B5q4+xp28VmklePKcXczQ02dOV9i+yFsM4ZomIBYEieFT9+ubXv/4c5mxsd8TPrjPUB6HD9CCUCgYEA8E44VoMJ3dj6Vrf2it/4jJzyo1KF7D1Ta2p5yXh98yGWGIKDB6zlaZDiznLewbGZSLmQ5u+5VgIRoIVOqIAb0kQnrCdH5a630aWixrnaxvr9le5Yak3pEOS3Ay861NIvS8BLt3nPr/vX3+BQQpQNW0KGrrS5/307V0zZ4KHseRUCgYEAw0XsfMpvlaAzxcd1ZvuPfKsNf9HCYNmkho449Wu4L/AvPJHGQIjETBvUWzXtsEWqT76o0db0GoCoVdmgacgK0S72LK/FAu94qYhV9kJMq2aKw1HsC7J7a0gPFI13ld9dnUzlync5jILTPm17KprbsEJRCl0J75wd04v9AvA0PocCgYEAjtNu2Lx5mMnlwLUGa/RCnhCKhlf+ETNB6Y4XZI+hDGjh9R9dEarJj7z1kQ7lJuqP2JGydg/1cBE6uNWCstOxtX+ctM2EBheaWZjA7qx4Q9vZ7MsE8enspIXL4LCpnuRuB+/7EMntjwN4gy+nhGrKpXsc4am5AwlDw9eBh+m1yyECgYBsgGriAB22VvjNeYG7giX9UJJEponKBMTNWzM88ui6AkxM7HbrHtNrsr7xG2sB2gPDIZ5uUnD6VOi0IyNmA5g3GVACDnx6oBM8qBuTpM0zI9wQoXF2Ims/dh+i/OQoq585qyO3tz2L3JmCA5U/XCKbso2TI5VExUsxY4RnYI62+wKBgQDWfr2pQAt/55v+YnAOc4hlDybdD9w2P/0d/rQ7VXFnychAAGS77ByJC1jlU/Tk/TNlA3hLLrhdGMgrIexqXrQI9J8EB3L+GKr+dh2PPgyzKgz63sJzvE3sMx70pyPkOfszi/eAMY6UwbYESl2R6h6Bb3EfarrqddShhgk/IQZSJg=='),('7de18dad-7196-41e3-8007-838ddfc63a66','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7f402496-bf6c-416a-9cf2-cb1389add89e','517f580d-2fae-455b-b8bc-cb2a72aa0628','priority','100'),('80034933-c023-4851-a2d3-f360cc8f5123','196210dc-0c06-4782-832b-000a46629d51','priority','100'),('85f48ca3-6568-4c53-b28b-c797ae9346e0','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','oidc-address-mapper'),('8675708b-6f72-4834-b0f9-561771063bbb','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('87c743f4-e4da-43d7-adf1-e483e2d1ee25','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','saml-role-list-mapper'),('894faf92-60c1-4472-aabe-cb99acc29a72','2e008a81-6bfb-4fad-bfb6-1a3e1b5e29b3','privateKey','MIIEpAIBAAKCAQEAvjuAKCh+Dsg3DrSGVN7WqGp6vtb81YzepbWhVj9zhvP/ZNA7xHGgpjgoNxVdwkvJWooRr6ZrFoCFlRza2aST2jR5zE6Shgd8wbafifeYiTiDJVq/j9+lDkS/S7/0C2OsDqP97Xcg3VdKMs3rHkBMqKdmDjiGVQwFpQ/yYOBBzkg7jodfgGVRCla2xrcbPPX9WukPzvLDCDtvPUc0x06sP/mH/IkXqzb2DZzZybmnpumq/zfcvWNjuhC5dZDn8syV5SwaZz0BbleGy5rIMDdg5Q9SnSqAl5wB3tNAOwLO24fuCca0GaiOBHGGF2AqNABf7208t3mCTypBgiB8/HgdawIDAQABAoIBAC9/0+QzGCbAv16gnNocOiUbUULNk5wO7Jkb3QkYFtSfoCmgBQxsAtz+MKxwXVTib4h36SqetyaLOM+ewNaPTYuyhqcJB3UH8ZK88uEUPbYlsjlli2d1RFVnvQxBBcLCRHfzYrgkgsRBw3kkCY0oKPwDsGvkmUYrFk28yZx+4m+LE3I2ij2DReI3hS2ICHcbx28pZHbunxoWWsCb4g2N6n0iL3cG610LGmtu+FMl2h7IB5BYdRsG/prshtNzWSa21Aqb7VvJvh0Hyh+Zih69MlhmNGhR3BnAxbVFHPnTMFLv5/bDJ9JF8rI3cpwWIFxImkqtDI8p6x7ZFy0oQi1UBOECgYEA44dSbgMhme2yqOMRzeiHBrjda6RJvmJLSRZ7zZdbqv6lkD+0V0Vkg8KWVScRAltguHs4IURoHSWCw3fbWUwfYUjIEG+ZYENEJlXd6hYJavvwjJNQEWMOVKm5DIGMj13ZO0JqtABqedQgvP6/uWx2bPfQJ0xyqMT3hOexFzxxtCcCgYEA1gltsWkHVqiKKDeqtwjmYcfEH0/YS0ktVend0kurytQfJNYTGlISaG3L00LB+CLjpXpsp7TdlsXw3eZFiTy8LkSov5GHULbXcR1imwQZy0VpaiMJPCYlrt1zhqegA/KSTk1JX/F6kzdaaMxlrKCZ7ajXGpvMLhGMMHWmKYbbwx0CgYEAt5VFVkyifP/Eiu6EPB7la/AXgDXT5pCK7FL+25jHtwW2cthj25K7EnEcOWLHH565QMDzPixi0Tml86+uxbNdEnLWMiTJnVlJEKFx5+GWAcN8iQCHty+0rW0wST3yOu9fSqhBTjGTt+8H51apPaSdPTkKs9rEHRaoHI2RXw0/NTsCgYEAs9EaAgld6/UOlPkniDyG6LEe2LuI2L8ywlIHVQzT2ERboePkCqHW6zsLGYKlWSVeoYB31nGCFJBZauNxmfmXkzuFlePajfn+h/6K//bzAK5hAJVMxea6k+1iiEc9jPN27SfLNDq4owPHBfJqnRwUFfFaPfWUFUQSxgehQJQW/xUCgYAfTHeMCQFkaYBmU24exm74l1iz9K/Nmvl+wpHkE/s4c23nX4qDLGIGLEJqC6u1zJAs/o25n577+gGaAWsScqIQkDd7Roy6Vkh2kVEoiIerupM7aykehc9SI7LP/j+JYaUv86xNu0AyvvjtTYC5loXZlZZURQ2GQwcfxO1+Tna14Q=='),('8a8019e1-4e77-461d-936a-bc3344fda1dc','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','saml-user-property-mapper'),('8ce87824-dc42-4bf5-8d2b-a087ba51d51e','d84acada-3757-4b92-93a2-a531e2cf6400','privateKey','MIIEogIBAAKCAQEA0e6ySygZ8xrpRKCLTN34gAjasQpEskwXfYmbWoioKo8B2xNrLtK2xDUOq5EroB/1IQZa90HrasearcgGsgedv4a6AHc47j5k2gsjWq8aVKRRBO/DTGSLKd7IuFblaLEJm0ohGAKA4jokiMkJGRu+v/nh04HYGCkVq+7MTWlivKiz3iJRB8RXVCjMbZSj2PufdlpXjmUYldDsBywlxEo3gUi2rE16LEWxU6shjBhKy19bjj2BD8x6w9llksFENO6wvS3Ut3ffPd+WA+7eenBp/+S6A39qvUM6FleqmS04OoMQaYpcw1favd6n3ceyTgmd2TzvekmZcWiT7nwSMcrAxwIDAQABAoIBADd9e51IFUvgIiaktQ11Ytkc/glr6GqkmFTziZ/tnV3afSgWQu+WfP7x81XAQqLJr7ayAlt3Di4kYqtqwvJN9xGIICQ9X0wCLBBCf27Z+ADFijDe22WW8f34SGAJgAwjN6HXf1XkW4Lw0XVihkgfwFToTRvmJ2ODgJn4vgH8SEALcSaQd8EBaFKaKcQIHXwO11z0B3klh0WmGnWN8VE2IPtCxjZm4Q48XziiU3sUf3v0ZdmznUOCvH02BJKL4+7rbUBMg5XmcNhVpkXGLBETS6LbbjBs/EUzJ+plVZAwWsvQWS9uHyEqQLicfgWT1A19rU+TsSYds88DpqtybXnedDkCgYEA6xYN6iP8s/6SzDe/+sZl/x+LOkW7218l97t+JSd3pbBCkLCOvM0A8uHRTprJi5FMgabeLYqUx9AE/gttxU23DOaw+QdtC1nUx8yI+PpQvHw16eWQ2iyzRsAi52BHqqXtYkHoYyg1uBPw9OGVZWkY7ACoD3ZqzVG4ZLzZYATOeGUCgYEA5JvH4GNISnG7HimYo6G4QoQvxXDIj/fL5Jd0nwQhFR0XF3+QWD6LK1gR4+MToGDeJAszxp/r5wfzLOzjh7p+YUROi6TH8jBoZpJddehoMqmLEG7eX1ngk+vrMrb/uaVim35Q8FI2fIfzXVShaDqczX3yoYlRdhcYayWemobHI7sCgYAzIykDtbBStx3XrojkVCP7yzDODD1BCwGHUhGuo1czg5P3RXDHQRDjxJtzLdiJs6Gg0luiLHMQw/9SA8ptEOqws73rbeIahf/zNlrVTh4h4iMYLgfEbdTRnxn4msj8JfvtU8jpSOXmlO/lVOzaknIJZFsqgefZod0qjKn8aQ9AwQKBgFD+TDNYmX0ejC/khtq6aiDO2mn2SmiPX2KOslfAS8RCOTMvE8Hf7sidfEEj64kvqKRWf7KIaDjDHUm2Z+pnjW0CmV1qNRi+Q87LXmduvrPsU4Ov9AMOQb3GoN6n7TQlvyjd+OkcB4fZVsSjPkhCM9muHK9UilLvXcxgWK/gvl8PAoGASyVHYhKbHfaOYMAK2Q4xnkgn/1AKSEF0BNqCXjIEzH5Xhzo300CrK6cMYKKDB7PB/drTHEbzALktCyxpGUttMo7ptS/4jdh4cfk8cNw5r+Dq7QJcMidlkfJYudOn1vpw3iTZj9thkWTNPcXSlCNQ6qko7KpQdOX7PsfCg1hHTY0='),('8d8acf56-ede3-4708-8614-a8027d9faac4','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','saml-role-list-mapper'),('8e475fcc-bb1f-4a27-b3fd-c654ef8801e3','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','saml-role-list-mapper'),('8ec7ac7f-366b-4a87-8849-fca12f5dc43b','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','oidc-full-name-mapper'),('8f268e6e-d34d-444b-9dd2-02a040a87230','53e76897-db25-47f9-8cca-53da69add4c5','algorithm','HS256'),('8fbc6c6b-591e-4703-95b4-dac886206870','4299cd5d-2c9c-4cda-9c90-651d4068412f','secret','AQs6GPFpKu_8Ct3QSGMCNQgdFzD8Xw2eVnesjNjSATdGXdxxe6I2MTVHB20DQ8kzf0sBJKyHpV30VU58vdUI2A'),('914f0619-8a94-4f6d-aeba-30f2987354cd','1d4633bd-42c3-4c0b-a097-52abfbbe3f01','secret','mUbKIsk39LkqJnZJEH07Uw'),('9167bdd0-055b-4245-b6b5-b2a0b2f34ccd','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('9228cb63-41be-424a-8ce1-bc8e14edc591','b89ef885-0c57-48b1-b0e5-1f86e6fc283c','privateKey','MIIEowIBAAKCAQEArSi88wulnlHGOg8CZyuU7+TfOp8lPSRFEz2jPcH6KHSp1YKxgGPRPe8qQhTuov4bEPCKJ08dcitjGDFpY+5s4cGZsrfcTJ8ocO99dhrYVJWCqd/t8RNWiJURD0heAP1KRv85rQzQw1iVW3vg9ByiyQ5oOZjCM8+jMnH0CTJuQU4jB8HFE3/xe4mEISV2x+WDR9eu6a52rYCB7J6E7Aqhh3PsHnLPprphVHnHBiGrL2uknfPLyrLBcETAJ6E8pCvSrF5nJXHBBRZMT61xLhDHQR4BFldyVNe0xndklBEhiAUfmGo7BpPD7MlsPeAMjdJqMEoGDLejcOtQIRAUx7nKnwIDAQABAoIBAAz4hhLaAVQh1wHxWYzl4wMHTMDE5r1fkqcK0R1mrY5LPY+R+dQ0EJqdkuJJVB40f6LeCdNA+2PaeSf48jvl7RUKHgZuUbERo64LWoVheb6i8Rs4Jsg4r8eNDFlDN/twqG2MtRglOMbGmMWLZYHpBTlJ/CetrYUZCCYBYDYyJ2J6etwl+imp1Q6pmFs6c60yCMv4Fql68nhXcNhx67kjboxIuXU17D0ztzsvCq6cudkAUEOm+1qMEJO0XxRXQfWP0ELjpCEK9gPku+dZAtCxMeQVbN2wXQ+eky+UqGpQtpC8sEez28d/YA7+ebl7dYvpod7SuSRoMUUUq1O20GIfN/UCgYEA1ib0MRdjmWRpFDRQN3zEsVytIgwlrbQpz1sfZSQp9+mb0tI+DaWSv8iRJrU2mjB68HyuWNGBfB0TUzUo6Q4cTFYiSnXyrKn+W0Pi2mvnOFx4LAcG7PlXTehWH83YUGF6aWHhIHUaoB8u1+r9og8H/ZpiDoWS4yzZQu8ZqIGxa0UCgYEAzv8XfUjhbGkjSXVSP9ePBm5Juj9SgJQSuylGYQpDAuzOnN5qhAMfEtv3elPRNBILOV5DHGGYf6nvJhx97OZsQIBA1tDdsqXiybbJdZCUEJYh1SQKMiYGrIu6WO4/PMJagmSXgY7d0Om+hgmgDpee9Apl/dBFfYd07X7j08xOipMCgYEAnqUA5ZU0HaB7D5KpklGFzPag88YX65S6HHiey2h9BsEyxH0npyhvjE/i58/7AULE8H8NEZMy32USueN5yRzA7fQpNwwlmK/eVHH4DmM9SU2HYOZbxRX6DSb/FlSB2Ro9evAdvNPDw7cWFrJo7rM/8il6VtOxO0YwNRu34FMjwhkCgYBoZZVWNZSjlZ8bZFVYJ4JV7ve2PEuC16tew6FgPcmwRvipey9jZyOb4l69TlqblWIdy+GzBbHg6TbZFNOZ0FjWaxjIfszhVfK8YzjV11Yly2JC2gteYXlKOqqAQaCZJzh4vP0Adap/u/PALEiSM3wSftATo5/4gIHDahTDdC5EiwKBgD/vpFJu3ZviMZ17xXANwEsewT+svziRHjdZpGnrUfy0HcgTguYSLX0z6H9QvqixEwTyQte2lsHXBB7PngU1SWIT6dQ4JreeKrBud2bR8P8lzmjF0Q78CeO/fjxLfp9GdgLXlpvZECdlxZTvHaX5L3TiXtbCKYnH6nh9HhUSF0Q9'),('9455c811-600d-40b5-b11b-78fcb87d7fb6','e6c6017a-8adc-4e40-9dbd-272fc6b55424','secret','-oSxFrG1CqirfGXkZHQW5w'),('94999623-4cf6-4fc4-ba95-c07f578cd522','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','saml-role-list-mapper'),('97c7e900-3925-4810-b65f-4d855891713a','7ed06059-4602-4d33-a6dd-98cb2dc0dd8e','max-clients','200'),('9978f356-79e8-43cc-951a-add3354c01b1','af343e3e-5590-46fd-ae47-b639382927ac','allow-default-scopes','true'),('9e91f823-007e-4c09-a0e0-c3d26ab54d08','fa713497-1f09-4538-b054-6958eee9839d','kid','cde359e8-ac3d-4aee-9e41-1e07f0c73730'),('a2162c1e-c99c-48d6-82ab-7351cf6a19ae','517f580d-2fae-455b-b8bc-cb2a72aa0628','certificate','MIIClzCCAX8CBgGNxDC5WTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDIyMDAxNDQwNFoXDTM0MDIyMDAxNDU0NFowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKw+X0/OiHeVFQlbYcj+mBiY/kGymrbtFvdrcJIILsXeZkbmHfMYJalju3Igr3KWTGWtyxipbWgr0ZZ57WfozGde96Ki9Y58ZFBIdr5L+MmVq1R5yUkDMtc7W8Dwc7DiHW6TWgly2RGkfxQBAiLM7iniXKAhoSSuIpGS56rlDMRVNx/OJ9WMRk5bWRhervN2958BiEC53+FRrAiqu74EkziCKUrbJSPU+GzZqU3saWid2yszdsVoepGa58hQVCrgFMPS83cAq1wjda9hre5v6wrf2kxNhmUaGVlyFoqt6N0xXM4GhXj8Mc8vWTYKzZ5U4nJuvwiiuRdtIAQgWr3w8EMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAHVXdVxQCGv0raAzrqtWf4gquZB4LbN3E5D9/ywSy3t5SMogE3gGSKManUosU2aS6aB4WmuO7LSDnf086DRv7XQHqd+IRuikFL2AEdNNXkr5bwYSAyafu2mJH+VrcLpGFB25/vrcWTtDckf39KZWuWpdPHRQTlTMsLfrPKqN8qrKo1l9bvaPgTcDHBfmiQyincc4d0DvSmdYJctZQslbZvdTqkS3Pg/QYEtpp/rIKzSV375NVVR2yL+MGhFJk1HoHw70xL8Ac8Ro65zo09fEot3BMVglH/DPsA2grLIFN7B1rtFpx9DctvSElF42yHOeVLZzeFJybqhnh+muYXzo6ZA=='),('a327d19e-ce31-4483-b5c1-ff48615df82f','56fd0747-1ea1-4c4e-9ba3-c12e1f52951b','client-uris-must-match','true'),('a35d6dfc-1ab2-4e24-b880-e82dc932d074','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','saml-role-list-mapper'),('a388c623-5281-4013-9125-a1fa5a588249','957a1030-37db-4b5d-87bf-dbb7e543090f','priority','100'),('a462697b-7dca-4068-a30d-fbc07b337f3e','acfff946-e312-41c2-bf0a-48dd49ec57af','priority','100'),('a4ac0ab9-878b-45c6-9e74-aabbb007535b','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','saml-user-property-mapper'),('a54a69fd-fd4e-46b9-bea2-fd1d711534ff','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('a58b32a1-0ee2-4262-a731-c17ec9635c31','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','oidc-address-mapper'),('a6c7408d-3f81-4e83-a260-b60a8d564a80','1dc192fa-7626-44f4-bfb4-6f938c9bf38e','priority','100'),('a7545fa0-9c6b-4687-b423-db66288f2519','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','oidc-full-name-mapper'),('abee007f-1bda-49b6-bc3a-37a968ea1ed2','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ac752779-fbf7-4826-89d1-8e6cd4dc127c','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','oidc-address-mapper'),('ad98e530-23d8-46e3-84cb-9d4c8982993e','2e008a81-6bfb-4fad-bfb6-1a3e1b5e29b3','priority','100'),('ada41ace-8eb8-41db-a31d-182e7d56cc79','d84acada-3757-4b92-93a2-a531e2cf6400','certificate','MIIClzCCAX8CBgGNxDBfRTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDIyMDAxNDM0MFoXDTM0MDIyMDAxNDUyMFowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANHusksoGfMa6USgi0zd+IAI2rEKRLJMF32Jm1qIqCqPAdsTay7StsQ1DquRK6Af9SEGWvdB62rHmq3IBrIHnb+GugB3OO4+ZNoLI1qvGlSkUQTvw0xkiyneyLhW5WixCZtKIRgCgOI6JIjJCRkbvr/54dOB2BgpFavuzE1pYryos94iUQfEV1QozG2Uo9j7n3ZaV45lGJXQ7AcsJcRKN4FItqxNeixFsVOrIYwYSstfW449gQ/MesPZZZLBRDTusL0t1Ld33z3flgPu3npwaf/kugN/ar1DOhZXqpktODqDEGmKXMNX2r3ep93Hsk4Jndk873pJmXFok+58EjHKwMcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEArJaTaMYhpBueyaiLUzRtfO1mEVwbgOokwXtthaRV7xo7+T4f3/IcVvjDKNP3PhmicZV5doWWN/TRrH6wJ9eXkUmuI1DP8UwyNL8MfbFoMNHAWYzM2VACM1NTfjCKsmn7rjd4zZmypxf2aUXQiwiT+XWM5h8NRVnkgKe203tUaJ1DsS1CnKcYQl9Uox4GlLZcRMUNEqUTSlMr0AHxcRZwZng7rjn2xvCNQn7GQ1zC95WJsN++UliQw+4UfQ5TgJ0FYL8aPlifrXQkHtpat2eMK9el3hNBiuo3ko57M3FHElIsjHqJreANKSlJWs60o9jqfRe0++ebq4W3Hq25+04uyg=='),('ae36cbe9-bdb0-418b-93c0-6e4ab0ee57e7','62dc015f-b510-4b1e-b611-5e68b45e7e32','priority','100'),('aefd28b3-5ee0-4c25-9027-f604593e7ec5','576b1836-2bdc-4912-97ff-88a0fa639a24','certificate','MIIClzCCAX8CBgGNxDF3+TANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDIyMDAxNDQ1MloXDTM0MDIyMDAxNDYzMlowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALP1ZQMuVShpF9PMOnfvF0Eou5Ap5jEV4CFR68uCKUioxqinhMd1SzpKAPFLZBlWvV+UrYq6v7/rXuTxWIvF/TxAtFgdpErB747t6qRVRnXH3SukFhhCvqOReCQPQWDYYbWaOAdun0592m2nRJs1M7q4qVMGrOg3hvLjdyMdb4r+IFiQnYQWtFAyf/dVTaNYHpkwaBd+GRwUc/rIsWAnQN5gAihwrRBaDXaT9Z3XleNXoqEW6+kpHRd4Yfs9iFwip/yvbhIrrLB5WYByjiI3ln94p8c6i5pJUoVqYJsDyxoq/TqnN7PTfl7hJRNePj3yJsOymaxDISX86pZtXl3QQHkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAnGgCa4ehDnHDuJLbSUnWFN4gqH4ztbJ4TnRmj+yxZAKeetCUenx7ELT43rZEPwgZXnNnmmB3HlGufkrwEeZccXt5A4Bgpjd5D2Feig9gOqZc7xwTznrKX2re+YBDMK6vcnjwVbL0CFi6/IOplBDnoB4qfClumtgZQecdQsieB94xnVk07mx7BCvWcqrPZ3SpCuNSif9cTHXsqY0res+ui014KROIEEJLYeldD0/QT48y9tsY7QswcMTWF3B4EoFYTuyOzi1BZSqHXeLr5046pv2zHQMp9qNviBnJkWdAWPk80JQVEHNCgP+/lsC08ZrpeL2UJzUCmrvn8n+L1AkQCA=='),('b0144ce9-7b99-4f68-8673-8f85531db658','4299cd5d-2c9c-4cda-9c90-651d4068412f','algorithm','HS256'),('b1b2ffae-bb8a-4095-9053-7ea0e20826b6','497d7aa5-28cf-4696-99ae-f1c6257b092b','client-uris-must-match','true'),('b4ab1fda-5d8c-4aba-a86b-3629894c45cf','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b575a8b2-6748-4cd1-8afa-67105afd218c','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','saml-role-list-mapper'),('b77f7790-4542-41a0-b4e6-71f3978024be','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b8dd1059-4f03-4873-80f8-e48eb360df3b','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b8e6316b-ef1a-4198-9c1c-23f8fc36b6d0','36676d66-eaea-498b-8201-80cd9baa6c12','host-sending-registration-request-must-match','true'),('bc40f3f7-bf20-449d-83ec-fed787ddca33','f2ec47a8-2fc9-4da6-a390-e252a47fd096','allow-default-scopes','true'),('bceabf43-fa68-4567-add1-30a83ddb7396','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('bd158a07-bdbe-40de-b805-9d4783f8f664','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('bf23a517-54aa-4b11-ba48-2810e33f433c','4299cd5d-2c9c-4cda-9c90-651d4068412f','kid','28c784aa-556a-4b2e-a0e1-6cc6ea073fc6'),('c1d68fed-c75d-4e1a-9403-fa6b993c024e','6fd174af-7e6d-41e6-b90d-1e422bebd3db','privateKey','MIIEowIBAAKCAQEAssqu/379xcyaB3ql26VlKxUN+yoC57Kqnl7zpcI00GQ2rqk/2YWwKE9Et+JCdXgJ23cyKjL0l3Y8mJyji9+Czjcky4N1eXSzcYZG6iNDkr50WlpqC3LWkfjLSR5xyRJGNBQeRy847NIQIUzs4G0F/KB7C+xNghGIxFzTGpKcPuoBnRNGnFLdhvThCSlcVrw3+KY+v1oZVok24ixaEqcWD/25BF1EpG3FwgpDiOvpUs5xHJ/el7oZzEY7rzt80gdanZixq+mTZjEZHoa3ySkRqSp7wjQZe9Re7pTx7j1JZoizF3ZMdsvugTDNbUtfE6RgZJ9cTdG82JU6UPbr4YlphwIDAQABAoIBAB3euM/con8aSJ15Qx5oCnfhI53TjfqxocmlqWUHBhXOuEgD5LPtntmNLLjf5ySC8nqk9k+QhcaMLWF9weELbWoQUmhhxQ2OjrAns89IJvDsOrohotfYzrpCa4wCtxXVpL7soYZZAFSoX6OAm45/CGIFWalLSEOztDrCG060McBcxhkJTJQQaIRidhw1TRrgvdeztswo/iWuWRoLHKOvMRRy6gzST7DOAmy6fwuY5BHPH7cRbpVMbda3ePabDf9oMmLOW4cIR6ILFB/iAc5srSpKYNBN+fBHbZpbHvqFQ3pCjtgojKQu99fvQ/t3IiQCgfclKQeuJlqhANvYRtv3oHkCgYEA7Z4ful5xn7gaezm5GXWjN5UCiYs5myZKNLc+w5zZNuWoquDsO34yFQNYVF2Kqk/jxoGw3vKgs4NjaxP4zwVY/zvviRlgSfLsIxMIcZ6SE3AoPBrRTGHyLCF8dTK1Zq/3HmiYCjG3e8CBzODEuw+xDN1NMYA63CYBsjFXEkQ6fyMCgYEAwJ+MDG6VQzbCZaeEbo0RyIV1frqA0OUoYW/Hz622YRROrxOylZ7XDXsIK020cal0uEFbZtUHvlunXTgB1DQ1S1eK8ThcGVkE5JSA7GVny9BRmg1/CjaiQPmkpjgTkIQoeux34KjtKtWnZ7x0XaiD3nenFVfKgKEyHVJzqqjS5E0CgYBRidZHZMtGzK1BpdAvvV9x3k9NlZoB9IS4TD1ccMFVBj/3y1ElJSvYbBpucN75jIqT/sML7mRY1XhTMTpLCAG/K/kJqcyR86s2afyWyJxF0VHtNiKmPGIW5LLJoMoA39dD9w5dSSw2ahvgiyzXKA5QZMxtdRw9mUkxtZ60ZPdR0wKBgQCWwUf+wt2XSVhD7yO60jXE1o7qrFT9KRy9hZrAc5h1ykr6w1PVvgdZyZzPJ3W+L33mZ2B9zuTMmzcVwivMRUAgw1c/C3kpbX5i18c/PO5LmbMD+uQevjum1ruCTAkj5gs4ibIY5p0YFTd7/Qal9qmeh88A6UDYA1ERmeJlAtRrUQKBgB0M0oNIlxkPAWpuBBOtGIVa1hx/exTdfdXe7G3sjZiP7SkaSCe6YuVr2zrIfQgZREJupJo+rdbTNGRQICBZ1Fym6lKr0NMHZ6tcXaK66PONL7BgeFi0TsCjN+FiAIy/DbbxhZHS9igf5rqk/FL1SxF5TqRXHOauJ9c1k7n1EGdK'),('c2074dd1-a73d-414a-b72f-530ed783bd14','62dc015f-b510-4b1e-b611-5e68b45e7e32','kid','a5e95cb5-ecf2-4433-8121-359053f89e0c'),('c2a6e9a6-2720-488d-88da-7b9620f7b5dc','35586cb0-17a5-4535-aece-335d0ca5c411','allowed-protocol-mapper-types','saml-role-list-mapper'),('c47a27e8-a821-4c0f-bc72-13c1bbf135bf','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','oidc-full-name-mapper'),('c5fdb860-c8ed-41eb-a1cc-1eb60b43f454','6655f08c-11c7-4c9b-afbc-6aad077697f6','allow-default-scopes','true'),('c6027629-3bed-4c65-96be-5067ab0786e0','97d91240-7f11-48c0-9d82-5146f14d7ae5','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('c715d111-937e-4dcd-8d1f-56b1f7d91093','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','saml-role-list-mapper'),('c75e9714-f5f7-4d6c-9a29-b305093432f4','1dc192fa-7626-44f4-bfb4-6f938c9bf38e','algorithm','RSA-OAEP'),('c9c7b4ef-6fef-4ab8-8808-fe8424da7c35','3e491195-8c50-43e6-99f4-2bf3840160da','allowed-protocol-mapper-types','saml-user-property-mapper'),('cacdc7fe-9fee-4359-97dc-27beb4604fb3','957a1030-37db-4b5d-87bf-dbb7e543090f','privateKey','MIIEogIBAAKCAQEAu/lae1VWzhILJZMuPBsnSQRgf86t68KQ2dZUbwc6lAfOWM/26XfrroVvw28CUU7yvS0cb/hOInCtLfL9YVVhwdLky2CBq7vnEqO9Z3DEE2gyINoe0C0gX1BzMpeLrEkBr4xFft05+er/rdaLXGcbFfC4WXI20x2kRsXTlvG3GV3RP0TorSAjNFozpYcJUBS+MkV/YtCB6qvG5zmSIk6X796+UuqEYJdCAI90XjXrahujm4qSON+8c5VNN/IZFQ3RkiNUfzwYj0DdgtH3ow2sJK1w/se+PS5gEYQqGaenxVXeScu8eG3F9CI4814XCW1vrjGN6I3JWEW6x7mf4dqvywIDAQABAoIBAD5JPeYoPP9Dk1X8ExHvnXDgdmljPtYkPoMwNgIkTxDGFWXwY0yxY/MMXCBSJF503pI45Hdlu95Fn9zd63/ZHu9uxkltzQnu1X6jqxsfjpkvqYyhOhyZF2T9724QMUQBXQGiZVTIUXGyoM4ljUAtGhiHD070PZ5u8ARTgO0/YwCQNuY7GznsYJ6thCwPJf/39AcOzk0pxYUYgXc5xR1+A5ZEHWixKJUkSsB4YamSUZYcb0w5A773dYuGG0S/Wr5qUGwXiBwQwexZghYpJUKcLlCKxRibAxcjIyNjr9Qt/Ji/EXTuHdDzM/xIVrCJLzheF7Q6QJUtPxJYfEyjko1ZpeECgYEA/VsLqebD2QHJHrq4GHhbdK6mdMQQKABkdDo9vhXHt5TYcU9SymvefCaeg1WWlIR5xdr9Ni+rDaQVj7dZAnz0SO0EAsYXgMZ9AjlhKAk9Cbwcp08wKjSVizCdI4xDLDik5D8r7PQiBWHGrN1Bj0DKYwX6yMeDJIonqL3ZrmB0x38CgYEAve+cfNFOEQK6KqMAJT3KHwo2iCUXvlHaOaPYRSIiPJX4iSBHgIrNncLkm/HMzlVdJV8gw4oiea4GDLANJAMgks1MWV3vwb0HxuuQ1eAOxdAOYyIItGc1i5I3SozaN6mZzE1OJ4R49klP3XbTfdDfmDTB6ZYCb567lNS7ySFv3bUCgYBrkCvzhjW//DIXCc7/FJo/f6bMDDGPyhrb/Z4ZBcY0+sypzrOnnQRoUT0bJUs44sWQatj2GGbW88LzsTPpCoPsMjRxuQhhc+O+/f1xsfpoF6VSoxwfzxNudMVCQlqCe8oF3YwYnc2T218uJQGggDFsuS0v8QSMjtsnmPLCRdFOoQKBgAH9tAc+7nGRNMBjqwm45xiCM+YjdWdCVmZKSGcZH4DBFbTiSL2ZNuSTeXAFDd+P14UfxSknlort/xQ8+DZLbhj72/QH3w6J274DFCaZza3XK39wiOTTPCV1Z+z5IwR4W6tfmBUj91ylkhfBOiBUgzOGQg4fy3C+GjtKK5nFJvYNAoGAU0WBOn54FO9QAQh1XAGQlgAEZkHi/HMPSPZg4EnfRAwXu3qmUDZgq6pFPyQgqX8vj3wHM4sepiE5EPQhewu7O+sWxSOT/LUDQj772Xv/vP24Aj2sJoWuudnG63InokHmmDnlfKKF5xuulLs8UDh9gjZN4VqUJtUL9E6urcdamHE='),('cb2defbd-242f-43f4-8ba0-094058f31c25','b89ef885-0c57-48b1-b0e5-1f86e6fc283c','priority','100'),('cbeb1498-e784-42d5-a6a1-eac502c2652d','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','oidc-address-mapper'),('cef8a90d-c542-4423-bda3-20639d86ebfe','6fd174af-7e6d-41e6-b90d-1e422bebd3db','priority','100'),('cf5a19fb-7b56-46c6-aa21-b818f16189f4','9ddacb96-e296-466e-95f9-2e8beceddd1d','secret','LQAKG22cFjzVSt7Pb5APa0XoQ3pXa_s7O3fdN7dVAumZFbC58-mnZJCCxZjMWV0v7-f5aeWomQfqEBYQHj73dA'),('cfb23e58-328b-49ff-80d7-5f246b8a48b8','ad80e4b2-7336-410f-8d61-d249cf0cf1fc','privateKey','MIIEoAIBAAKCAQEAoLJjYgNvdJzG0DTIUVLlHskOQMpN5B7kC2ZPuuWIGQd5DnFp8DRpX/BN9ZIu57xfK1vRuwGg94YomQab7Kw6vA+00qlkVkNShcr6lwFoGDqFCoUMZpWoMBWgK7YkY1wKKPYuhY7ZzTqxtmBgqavv+D0auoaSWuBfGhGzWUWDUJyRmOPByMeDWZ86S2ZXfNf804oJpAaPNGGhCO44JREsUW7uV4LEpl35N7KJqjyvADPbkhFpLRiqVuW0k8HfhDbczL7FxJgm1JSuab2neF1l/ys7ekLDwyZ9yUD/V9Qcktq3ytyiOhaz5+rjRTHF0akEyzzU0TbDFgd0kzealVjK1QIDAQABAoH/Sysm0fJJcILlfP8ztNbR1lS2FhiL1umcQrjZEtPLlemo9tiWdYYOxJHj5bs7taqn2eBZeuCIK0DWPL6asVrfHpk6PFCAXtmfAHayQXCnAK5fDUyvQE1BHzz+b3QEEXY8Smzd1hu8RgPunSD4FmYXGkd6+UV5sIjD863T9y5M/qeAl1tbALCrJ0nn188N/u2CZ1Pks5I3oDD+7o63zmbGdLOz021HGMJBTKtmJUwPzaFqogTIQ+d+APvPgQtLkpd+peh8X0gUSwSnz24ipXj2i1Akuo9Ag0BWuXlun4NbBmEHUHXIg0/W5FS8nx/bwOYlxvcpyz5CycLjWF5kBb7ZAoGBANHG47fNs0JY1REbgyn3F/pW7UPiTSo1odStMlMC0qwD+1L5L4gcWCDgli9Omfk0gGjLxhkkR2FbzhF0Ov2cH0Zf09SZC6gmlfLDkHzlwIWk94xU3EF19ThDm+tElz+PBMU9JHd0P06xjahkr5zl1vZzmB9Wa5oSR6LN2B0qJ7+ZAoGBAMQa/GlpnLTHKSqCRKp3W4XJYvOoJYbHXKpsuOcHRDS3UiH9UFe+2t8p2A3K6mrCNFCKkxwe3Y+5aDNzNhNcTwauU/Ea8ZvqLd/S4v6VlsN03k5SZPJhfoyntuouE8GtSc7d6SCtDbCrCy84dE6X5YHwybaHSSwngoQMcJ9SUNqdAoGAGeUtUxEnYbdJhfUZeeKwqQx1+X1D/UPlmDVREwI0M1vCeHmeLnUhQ921bF2NkD+04jrVV2EtFo2YoHrylT/idHN72LCTycwJkpAlk+VgoJ6+mCoZjlMbVDi0VJSA/y2ObzKe/8fv0K0GSZU0QG/22zFlw+iNG9XJ1gUG+oKrqXECgYBFnM69HKBkC86xKEz3tibm9vYJSEcJ8PsUBEQevpWXoPum1SUQAM/xKAlp2/4ap5WqgYZ3FP3RZx92JA+uD7Z9yKRDkizyC879BP9PIArEl1fStazf3XvushpcRr78oWbx6BQ5ZTTW4eC2gnPG8mSmG7N+98chxWSvOzs/UxkggQKBgBId4NkiN5vzLibPIgpEYDHrjzvvJSi9E1nlrcagt+VMt8aiq06KOPy3xKHqyA7CRfH4q9LnRskFIFF2RQ4JsuvA+uA+0qETZYTG1q0PX6wzRjXln6/b0wmRB9aFUwY+km3z279l5xhLULxvEi9LwDdlT5vCA/2lm1Jj6xn3gyZ1'),('cfc737c3-207b-4c6a-8564-0db3dcbdb0bb','4d12d338-107e-44a3-a9dd-17dfcae1042e','host-sending-registration-request-must-match','true'),('d0e7ca97-50cc-41a1-9267-a9aa5293024b','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d17e3028-74af-415b-8eaf-fd7334d1ecff','ff3ef064-b8a7-4f02-9091-581a8243b85c','allowed-protocol-mapper-types','saml-user-property-mapper'),('d20eb0b8-10e1-4efd-b3e2-0e4d5c2bacb5','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('d21f540d-d7ec-4c37-8e40-e98ebe6d6c00','acfff946-e312-41c2-bf0a-48dd49ec57af','kid','93557c69-8acf-45f4-98eb-8d69f063ed1b'),('d43f64d5-4fed-4b89-a77f-f57ceffb3fc3','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('d575b602-817d-43f6-86c4-b4f2f7e65ce8','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('d5b5a1ab-6181-4939-9134-f6fbe4c9aa1a','62dc015f-b510-4b1e-b611-5e68b45e7e32','secret','R-TZRbYNCD1zlhziZjV5VA'),('d5d99ff5-fdf4-4209-8a98-97d2b7867e88','1b57d717-35ca-4aeb-83f8-cd6a5e4f0c06','privateKey','MIIEpAIBAAKCAQEAn1+nynE/BFNK9VW2hhdH20Fgz7Bsg+XGi9NNKTpi/wVh9/DpEuO6dVvU7wBJP7OEBFR3uqgRg7dHDKyQ8HUlrfWWaWtUvg2CSdg4VDtBHAFqO4Axe1J3PEpnTJszUXAqemwhxEs6ns2Pxf7mfcGYQADGBW3ad6u+NkisrnS0S5ahNAiWdR4vvhf6PSEY0ZWaQV40yDr5Rh+TgOHG3DosqEVmXJ4Yz2F+wAhS4A+5ROAceopsUDyQ3MKAAcGuRier/ILoF5VnK62DPAhSwq+hjWUOHLv33PKYxYxaeh7qvBKDZnBh9zyLdxtg8ZaKx9VtzN2BnYbs2A0kvGPszvuzkQIDAQABAoIBAAD+TyTvZMWpoT97O8qFLaD7vNc+kcaWsZCgjgwSPZi6V1x8x28jNT/TBTZCKbK4czu1rRNgRc+s3kgBcVvWVxhI/hmFHj+bBPNh4iQARI0goyFg0K4kmvKowhETrJO238TolKNNFr3zqRBCYPxqrwDDIHjbMO/rBaH//PePaapI8Q5ispchPdRJVB6sLVJugAqP2jwybaKJ/uL61/k7IolSRrFXc1+V31in3PSPaB/WD4VSSm5iwMqhil2L7GXzLOdhh+1ck+4gvICTfwB535uuZ97VtouxoYcdh63Oex+IKRZ5/HvXKOhKxNPo5Hg0zHurYu/sPCA5wVwPnMd6oKECgYEAz/urJrfLDXw6gQnLcytvDCB0ryCAUHbj6S21SuWMacLRtebJmt6qe4QhQ0Csi1TWhsXG7lAlWDGasAJ25Fck1AUegnBhUdUrv17/GYkBU/iacZ0ezs3dR8bZPGTEyJzN52645vlCmtJHNIlfcsnbq6ft85EyHyD6wjKlDWh2K5kCgYEAxCsLq2HvNBmok9V1nH53ukVTjwZBgGiwRmJiGEYzE8QKtgbROUu+QyNUqTVASGtgyIqUpV7q7dpDE0+jz/ds2D6Pwif7z/Xksw98K8Th854u2SLP/yEleKKKgxTwRJToGTfnworj2czTeMAgS6GvYLcI3mIUOYeEs37L0d6XArkCgYEArWn2Bs5wa8oNLdJw5JJugPn+0JaU5oJ6/c2yv8QuE3DxUm4f4xWNqHc/FMg0FeijBrSZbdM9kA+sHt2vLCzM9EtgaPoy6vyHAYW/xhbKGK3MeLa9HUnhGxvdvdF3kp3LwRA887kZo+V4oYF5KEjO9I2Mhe2mkPX6nzmDDW7wOOECgYBjr9xGQ4ZjW4anWZpi5IHDTuefjvZKYujxW52t6D6clMs8pUo9a5hMVe/37O+13ZtZTdMsFogcRwY/EgGU9Y+CdIhpihgVHkgSFpRrSanpO0FjZqV8aUO5giARbNqMf39TEW3dFuejDsuIWVoQFSIia+E94WmVsqBk9tJs3EixQQKBgQC70Z5kc9yDzOggWugIFIjY9FWf4FFhhISkvLQ1MeQ15m2ruWy6fWnikEsqUxHUgICxg6YH6BjyENNXhLdjHQ4BhIB749XRc4J6ULA+DZ5CbnD9xDNXYGcjIBjpvvGpzvU5mZD4uknV2NeXrheFeYvr6+lzUsxd34Ld+ndqYr/JwQ=='),('d614ba71-c5d6-4ef3-a3aa-8576f8b20ee6','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('d8a28a48-6765-4a53-8ff4-477bd9c82b32','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','oidc-address-mapper'),('d9a83132-91e2-4016-b62c-030d62ba5131','3f3742b0-0f97-4c74-9ae5-d1e6d316b5cc','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('da5af909-13e3-4b70-8f65-6631d1416df4','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','saml-user-property-mapper'),('dbb86192-1d58-47df-823b-5549a14d81f6','89298158-af1a-466a-9ec5-41097451fcc9','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('dcd29097-c0f5-43d3-b040-dc0e363222ce','4d12d338-107e-44a3-a9dd-17dfcae1042e','client-uris-must-match','true'),('ddcf532f-b410-4fce-b3f4-b6aaa3c9255b','5607f0c4-dd87-471f-9e67-d546ddba68f5','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('df0677df-20a0-45e3-a451-45fdae75fe90','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e0ea0fe0-2a90-4666-a99c-77e00677e27d','61f82846-5925-4098-81ea-a7eb7a45af79','allow-default-scopes','true'),('e292c0c4-0e81-4cbb-a007-5c6ccaac351b','957a1030-37db-4b5d-87bf-dbb7e543090f','keyUse','ENC'),('e57e0c39-85a1-4c11-9e39-cb6f237d7d98','2f1d1232-fae6-445d-b37f-d7749eebe4cc','privateKey','MIIEpQIBAAKCAQEAkD+3sjrdh5rdiu8Y5BhEk1yM9vQShjZheYtZSARsyAIOa1zVFY9O5GBRuThJodudKCudiVnbDri5FySV+GRbp7jRAW/G2I14RaLxy4kvGIp/5mRt51hbx3PjwbxaM2fIbObw0pnTBFd8WSKiuZX/3Wb0CVNGHS4hAC6NTcyMtllLXN2zIFIjS+9nWBsPNkVOfSmlrDHOqpBoBYMbifM+ZF2yoDBhepzWXimtG/2zkGaCWPBie0qeeanZ265x3toD2JmCrMLFLmrtNVVdiBm4+5zviHj0mzw2lTBSfNyzZTM/dg1ODzdS8ridpfr/2tYDuE1vsnbuLt4Qifipqc7QrQIDAQABAoIBAAdJ6O7NEaeJ+DrOdQwFe+WUTh0mXQ9CDS/WjjbY3mRG0lKzeKLjwGFCyq5YvUO79Jd0iLvJegum4tdcBmXsMENrz8fKTZpgn5ypLJ2Tu3j6epb6KSGA8fZEkVQXP9mMG3EBRFbn5eU4xHQ+j0lgXnLiAl+8QPU1gP5g28v8E3odOohrGBlX1jaInY2EEimKhzkf9+X6tCuZxT9mzNWr/0ExT/7dSLZOT4u4SS9HfjeFeDRcCYIt6DIHxir6iQA/7vzlKB7DeozIhwZWzjRk89ah6edJNSnK6rO85WC7fZ2iV4gsJFPiL1SikM1VJ2w5BiDA0uxvnCkNqfwR0nT8hVMCgYEAxGGh2KhtklVooPjaJ/TQgZvH5oh/3kdKBfKrenKpsyfL3wLG7Ez7oGKYpp/TYl0RiXsRre1wi93f6oDBsdTxlrCpuYzVBXnz3h5YL1J4dG9XsAaYspSfltyzqZJrqYvWcAgS5O7KMRHyXqMpnSqvgpjam2xoEP+tGMtGGSsMCXMCgYEAvAp0DcQVTbdrSSoOo/Or3FRwAgNzTy41bROSsUAKbc6OuEX+2KohPd2Vq8y0bOAFGOJ9WR9jOU4jDctZ6IZ0GcF0tnYeHk7DOHWCVlrNWmFid5PhOmk/n/DMC2TnrUPa9h7Nkq1HCtrKip/eggG2ddp001Nt8YDXIoQTWZVztV8CgYEAkfD8lkaVJ2rRls9ZUNhfG/LpXCmU3VudZ04woY8VDk9E8zbdHj8XwNmFGE8uiKshnUoYmWkbetYo0d1eFQprf9FKUNqYdLlswmVKo+BmJCGayPYeBJjvAO6DlkF6QUXq1tcpM3lCSbVMqYgYJPTT+foee+LUc82Olh56ubmD+IECgYEAqfBYichX6HCHSQv1Rz6EZw74Wxl7MGf2aKlzvTS/OBWg7fB0LKM0f5CuHyFVPcAHW0H1PoIbTkLLcz//9SDt9AjdzbhZ59IOpAuuyxQs2i2Aq8i9l+heU9Fu1i1PI0tbq2qTJqfquGia+0UX9i5OE5xmUEXp6oQh6VOrmR5z/8kCgYEAgTxpIADV2y2AL+LFMm6UWIBTNGLgkb0wYa77QL+aRkHZ9eBJdG9n6EpL+aQHWXo63jJQXBs89XhJ8MfrQWESFJEGZxtBReADzuxVtmkZwchYgdP3aTP8N73Gagp5ibeb4vL7NahFZPX1/73XD1MSTvBwA2jBWzrJEDMG3m9zP5k='),('e5cff044-b408-4b7a-b3f0-a0058773286e','2f1d1232-fae6-445d-b37f-d7749eebe4cc','keyUse','SIG'),('e866471b-0e26-4b35-9cf6-da0f02f0ce9e','b9a3fe47-3d7e-424a-bbef-829ae38cec51','max-clients','200'),('ea2c0a15-b4fa-4407-9f4c-8033e79b6aff','ca16ab1d-a061-41ff-bf56-2aadfa446535','secret','g-c4mq-swbondwDEFDyCVw'),('ea48eaf4-fc2e-41ea-9cfe-c68226dde06f','2e008a81-6bfb-4fad-bfb6-1a3e1b5e29b3','keyUse','SIG'),('eac50ed2-5b16-4c3b-a081-83ab36e601a7','fa239d6b-e870-48f0-afc4-400eba7bbbb9','allow-default-scopes','true'),('ed5e506a-abff-40c7-aad7-d8815085e19a','2e008a81-6bfb-4fad-bfb6-1a3e1b5e29b3','certificate','MIICmzCCAYMCBgGNxCoGGjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwMjIwMDEzNjQ0WhcNMzQwMjIwMDEzODI0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+O4AoKH4OyDcOtIZU3taoanq+1vzVjN6ltaFWP3OG8/9k0DvEcaCmOCg3FV3CS8laihGvpmsWgIWVHNrZpJPaNHnMTpKGB3zBtp+J95iJOIMlWr+P36UORL9Lv/QLY6wOo/3tdyDdV0oyzeseQEyop2YOOIZVDAWlD/Jg4EHOSDuOh1+AZVEKVrbGtxs89f1a6Q/O8sMIO289RzTHTqw/+Yf8iRerNvYNnNnJuaem6ar/N9y9Y2O6ELl1kOfyzJXlLBpnPQFuV4bLmsgwN2DlD1KdKoCXnAHe00A7As7bh+4JxrQZqI4EcYYXYCo0AF/vbTy3eYJPKkGCIHz8eB1rAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJLBcc7VldSO2Nkr0uIli4ZiW5599AxFrhyIC9JvUe0+MII3e0m87KbpSRGFKDIYBlPKLkArsb/3HnoFkUVyC7vNyHQkGEf+ed7ImsmMmHlpUX5SWrcWk8TfmR5qpGHFeDNQNgLEm+mU633amH3geRWolJfMllkiWNx2kGnr3TjotW++wpZPW+bvKg0nt+42UDUc6TJ3DxKyRz2Z33lJCxJlR7MA70lZO6xYBRYf4CvG49GLtZrvgrCHeQCeYVf9SMl2/7VocJDmjlug5PJtD7ixt+AuH1tKHo+UIDkeGCd7cixoIzf9J9Vp/HtqcYCm28UIYXYXAVpXVVukh2eGVkg='),('edc82a59-0c21-4858-b4fb-bcd800fd4a09','1b57d717-35ca-4aeb-83f8-cd6a5e4f0c06','keyUse','SIG'),('eef1ba1f-2b25-4aa0-bc2b-6a73b63090e5','09aad6f3-f810-47f4-8b97-d1a973f195d1','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('eef7b77e-cfdb-4f0e-9e0a-8dc02c716371','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','saml-role-list-mapper'),('ef3a96af-83b7-4147-a61a-906104bc30f1','196210dc-0c06-4782-832b-000a46629d51','keyUse','ENC'),('ef511e7b-b4ba-4ff1-aa7b-3664668f1419','53e76897-db25-47f9-8cca-53da69add4c5','kid','75231f52-d476-4fd1-aad2-477ffeaab3c8'),('ef9c5fd7-d54b-4955-bc43-c220050d0869','536869a9-9ab2-4ccb-bae7-acb4150b28b6','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f212647e-a6af-4e8a-a8ca-423b1513afb0','6fd174af-7e6d-41e6-b90d-1e422bebd3db','certificate','MIIClzCCAX8CBgGNxC/4kjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDIyMDAxNDMxNFoXDTM0MDIyMDAxNDQ1NFowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALLKrv9+/cXMmgd6pdulZSsVDfsqAueyqp5e86XCNNBkNq6pP9mFsChPRLfiQnV4Cdt3Mioy9Jd2PJico4vfgs43JMuDdXl0s3GGRuojQ5K+dFpaagty1pH4y0kecckSRjQUHkcvOOzSECFM7OBtBfygewvsTYIRiMRc0xqSnD7qAZ0TRpxS3Yb04QkpXFa8N/imPr9aGVaJNuIsWhKnFg/9uQRdRKRtxcIKQ4jr6VLOcRyf3pe6GcxGO687fNIHWp2Ysavpk2YxGR6Gt8kpEakqe8I0GXvUXu6U8e49SWaIsxd2THbL7oEwzW1LXxOkYGSfXE3RvNiVOlD26+GJaYcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAPRgN2iiwLnDv9TkelxA29LJsd+TQiLaLgB5OjBx8gk2KLCmPJc5t/3Y/v80GNOAu+V/yjYDuGUh40j/5hrQIgT/10Tz3DGZn7nlNvgWht4XfC1kjoHsMs/Infl7ybAaSVkAWzAAjFEiD7X+jSz77doRbQTzWCmCkSbrKQyn3B0TpMzWt6qx/FOc2TWrwvGlnyo7mkCe3iS0t8aPG+4JApAe7QxOplZwkHYPkkXV7ci1BIbA+3ws6MxYDqp9hraVbn3IDCWmBjAUxqqepHzJ7c1SdrJdmYptdLCjdwquq/GxnbaSDgJEGzSvIxNftCgbQe/XmcjtnYI+yOmiE7ZLixg=='),('f35a1119-6fe3-423f-a85d-3c7addcd070f','907dede9-a295-44ea-ae3c-180945b78a7d','client-uris-must-match','true'),('f436bd44-a786-46e0-a50e-51855ae04e1a','35d94c2f-b4e1-4ad1-b15d-ca0a8e1c36e0','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('f5459941-ebde-421d-9f28-299312e72c79','715d8f69-e039-40dd-8a98-29d58b1a593e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f5557410-8d04-4a4b-bc7a-18bcfcfb2485','1d4633bd-42c3-4c0b-a097-52abfbbe3f01','kid','6711c77e-8795-4821-a67c-7628e77dcb4f'),('f5e5ecce-c314-42a2-8fd1-ca5fbfdede16','e7f104dd-b8ae-427a-9993-9d8459bea81a','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f7833ecc-9910-4afb-a647-5f1ed9c21821','fa713497-1f09-4538-b054-6958eee9839d','algorithm','HS256'),('f7f5569e-2804-4fb6-afb5-c4b4c24204b7','e6c6017a-8adc-4e40-9dbd-272fc6b55424','kid','b2218812-2db5-43f8-8e17-9bea038109e9'),('f8aa014b-8455-485a-be1a-a6321f6ceeb1','1b57d717-35ca-4aeb-83f8-cd6a5e4f0c06','certificate','MIIClzCCAX8CBgGNxDF2qDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDIyMDAxNDQ1MloXDTM0MDIyMDAxNDYzMlowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ9fp8pxPwRTSvVVtoYXR9tBYM+wbIPlxovTTSk6Yv8FYffw6RLjunVb1O8AST+zhARUd7qoEYO3RwyskPB1Ja31lmlrVL4NgknYOFQ7QRwBajuAMXtSdzxKZ0ybM1FwKnpsIcRLOp7Nj8X+5n3BmEAAxgVt2nervjZIrK50tEuWoTQIlnUeL74X+j0hGNGVmkFeNMg6+UYfk4Dhxtw6LKhFZlyeGM9hfsAIUuAPuUTgHHqKbFA8kNzCgAHBrkYnq/yC6BeVZyutgzwIUsKvoY1lDhy799zymMWMWnoe6rwSg2ZwYfc8i3cbYPGWisfVbczdgZ2G7NgNJLxj7M77s5ECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAZQDxCj31+g+bwbAWaZVICGRy9ydfZ5auDRRDDecvPSjFE8I/mn03cmuST4wKIx5LPtcuKwES4PDcNN3kas6NAS06k9+/Wq7mnEWDGVrh7AHUUulLy54zNgrcjxZlInvgxLHnvsBVYZwMYME055lvtnniRYx/URgYLvqPazvCU47j6suyEorMsvwKg5ywa8f+w2Vv6umbLxoz764R3G0ap2DD1YxCYuAvkdjlo0x/LdESeZ5ZKKl+MtZ8gtQXZ8PoAWNpATkdw0K8mgXJhLbFGKDWparP7u7ptIPPiSmdWGhJvVvngTRMDOiBmKEAZ9k6ArHb9BpHlv26rKi8pey2aQ=='),('f9d23005-9e2d-4344-8389-0f20c9d8fe26','d84acada-3757-4b92-93a2-a531e2cf6400','keyUse','SIG'),('ff7ffd73-0ae7-44e8-a71b-6817a50eea6c','517f580d-2fae-455b-b8bc-cb2a72aa0628','privateKey','MIIEpAIBAAKCAQEArD5fT86Id5UVCVthyP6YGJj+QbKatu0W92twkgguxd5mRuYd8xglqWO7ciCvcpZMZa3LGKltaCvRlnntZ+jMZ173oqL1jnxkUEh2vkv4yZWrVHnJSQMy1ztbwPBzsOIdbpNaCXLZEaR/FAECIszuKeJcoCGhJK4ikZLnquUMxFU3H84n1YxGTltZGF6u83b3nwGIQLnf4VGsCKq7vgSTOIIpStslI9T4bNmpTexpaJ3bKzN2xWh6kZrnyFBUKuAUw9LzdwCrXCN1r2Gt7m/rCt/aTE2GZRoZWXIWiq3o3TFczgaFePwxzy9ZNgrNnlTicm6/CKK5F20gBCBavfDwQwIDAQABAoIBAFAQrj1qxATSR/URhWLo9cp5U7c2TrS5gPOB/dHj+9n+h4xta36Uuu0Cbx+eEfAx7VFWeBH+r9y8gbBw/OpQTLPAcVwoY/zX1cl75baPmhYafInIEsjds8RY003cd+rBMO01kaTSvhR1Ypzp2xRSLmNJ1cSZ3U4vo+IHZ6kIz+Zy8uM28TBQiigfkUWsWuqF6ByBhkRgghwC0NYt3AOk0Zv8Vsza2q7obRv+GmpNrdtaSJOGnuSUADUik4i7aEqn7svFnvkdg7zfLkEVWgRCVkPP0ldaOaN77DICKnYQdP77SVloorJZCRgbYVOV6ehE6rKheUToIS6Chiy1i+Cr8AECgYEA14ELlUD05DtXMqGsHAkG8zQCEHZCbV43WdijNn30ITT5mn33QeD0PYQQ4R5bv7jnyQmQ2Jh97yJLzn4mBGiccez7t8pV/d/lhCwGJfWGeK6+8zob64cuyr8/QBLXoVcgbb5neaFGtsJmK7wNIg3ql8hHPwuTkk03Qr/6Rf+mDQsCgYEAzJxB3QHA12EvxM5hoLTrBTRUJof9Twuqnc87zfokKnpF+tLtPHTeV+oI3NIvpzC364/Cdo1LlIA6DRgF3bDq851kUbxK+Rhz5nxV7N3IasdfGl9Dv3UiCEzmxD9ovbaaAbXshjzaoNJlMv9xUk1VKFDGUwb/PBy74BifJtejfKkCgYA/2TruUJ191VsDZEUS1VXazojiCbeqoaRymS3aIj0nbYOaU0HjodubMjqyCAWU6xq5RH1Gvv9oz1d4aYWn/rqDQnxdurP5kNF2dHip3HGn5dYrSAcnpBin9zutJyf95Et2WFhd//tsgHI2+PNHKKpdp/f75NknGnuJ6kkjXhf7ewKBgQCNS4asIQ7TbRi4trBycx0s/eLyrMw/btYGnlo1Nn0NHF0BBfGv4yC74zD1lOw1b45CzIbEqXQ8+4ObETDT092cF990FixL8hfvXYNUzB8fpchGBO1a5H947eoaMZOaFuQpNEE+vf1YO5KI8h+Gb0LUUVtzcIyHLWyMJ1SYVSdf6QKBgQDBJkxcmAJ13yCJm+gazC8Pjd+G+LnBT714X2tdpwRJPlWiP7veCDeCJo1zfSdHctOkMtc9nL/e1YouPDkjB71hOLaPxUVIWpDhxDzXdiP2/Yf6D4SRzr7/ePckLK/Zxs7ay6nqG/5X2B2mSSqZA3NxbnbIgcykrJfn+VgZVMSyHQ==');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('021545f0-0b93-4033-bbd4-d67649176c98','9bff6e17-1d5f-48b2-ae72-25ed1ea9fc60'),('021545f0-0b93-4033-bbd4-d67649176c98','f5b490b6-f463-4160-a462-ca39c0ad3ed5'),('053f23c0-1e84-4bf4-b3dd-ebbbb1a369de','6d2917dc-f1ed-4691-9a66-9a10b4faa39c'),('053f23c0-1e84-4bf4-b3dd-ebbbb1a369de','7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef'),('053f23c0-1e84-4bf4-b3dd-ebbbb1a369de','dbc19751-54ed-4612-80ec-6319298cc13e'),('05879285-92dc-4247-a20e-2f6b2c36caef','0e403976-e23d-4c9f-b7d7-64a26aa3f95c'),('1100e27e-2195-4894-a4c8-a70485b3a473','05936ef4-f33a-48a3-a3ef-afc163e1b8a8'),('1100e27e-2195-4894-a4c8-a70485b3a473','c961b42b-f995-46ee-8362-40ef602980c0'),('12b906dd-7360-4383-ba22-79f4f525470e','e4e4bd98-35d4-4378-a60a-4fa8e7beed4c'),('1325cacd-320d-4249-be8f-b35936702e73','3faf0a0d-aa21-4950-9a30-35a8380c6c2b'),('1325cacd-320d-4249-be8f-b35936702e73','680fc72d-ab07-4422-8c43-33d14dce61d3'),('1325cacd-320d-4249-be8f-b35936702e73','a8b7cb5e-2854-48dd-8778-ea0ead879bca'),('1325cacd-320d-4249-be8f-b35936702e73','a9a05bce-34a2-4391-af8f-02ca40f38917'),('13d758eb-571d-46ec-b69d-62f9e4954c3f','b2707b19-e83d-42bd-817d-25e89d832a0c'),('1d8000f8-c681-40c1-8907-ac7214032c9c','6d2917dc-f1ed-4691-9a66-9a10b4faa39c'),('1d8000f8-c681-40c1-8907-ac7214032c9c','7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef'),('2033d29f-23c0-4aa5-8840-5187aef4055a','27bd2191-8c79-4cf7-822d-c531cbf07e06'),('2033d29f-23c0-4aa5-8840-5187aef4055a','619c9b0f-4efc-4994-b3bc-4e937c933154'),('29041bd5-27d5-4c2d-8bd1-588f81f7e393','99d30446-ac06-414b-b156-17ec86ddc2f5'),('29041bd5-27d5-4c2d-8bd1-588f81f7e393','d137f1e3-2916-42cf-8f34-873faed7eb3b'),('29507e5d-d253-4b7a-8606-a66dbc172f22','a7b360f9-4610-4b6d-add4-6b631f64f18a'),('29507e5d-d253-4b7a-8606-a66dbc172f22','d34838b9-4827-413f-a80b-f017cb5fb2af'),('3010fd4c-2f89-44b0-9064-a7060ae3e650','1fd0db8e-a95c-4f84-9a20-3ba4843c642b'),('3010fd4c-2f89-44b0-9064-a7060ae3e650','aae5d537-aaac-4138-9aa8-49ee0737a4c4'),('3010fd4c-2f89-44b0-9064-a7060ae3e650','e7e29740-197a-4161-8573-67dcafc4a076'),('3a3d8684-2c7f-4f77-b1f4-f0fda8380c7a','2c877d68-2d45-4f79-85ba-09b386a7f7ee'),('3bf734a5-b1c3-4113-8978-1ad0e6b24511','9960137a-cd85-4e0a-a279-4f2e886ed293'),('3bf734a5-b1c3-4113-8978-1ad0e6b24511','f4e3dd49-3293-413a-8d1a-f5e771305973'),('442614df-362f-4170-a379-b07551c43cce','17848707-df74-4e00-a74e-202f63155f9c'),('442614df-362f-4170-a379-b07551c43cce','95712aea-0717-4ccd-a567-620bd2eda7d4'),('457029d5-2897-4a58-8b88-ec25a871a1f6','029123b4-9c3b-40e2-9e86-55707fdbc1a7'),('457029d5-2897-4a58-8b88-ec25a871a1f6','0cf59a17-944c-4ae3-bacd-a2c81692c291'),('457029d5-2897-4a58-8b88-ec25a871a1f6','0ef5fa95-5eb2-4d58-b701-265df023cf10'),('457029d5-2897-4a58-8b88-ec25a871a1f6','304aa6e3-a3aa-4ca8-a73b-2298e532a45e'),('457029d5-2897-4a58-8b88-ec25a871a1f6','317616dd-07f6-4a16-b7ca-864b23ef7200'),('457029d5-2897-4a58-8b88-ec25a871a1f6','3b0b8802-da21-478a-a7db-79db1a660ad7'),('457029d5-2897-4a58-8b88-ec25a871a1f6','42739639-b61c-47e7-a825-e30099a7376e'),('457029d5-2897-4a58-8b88-ec25a871a1f6','4dbe1e9d-83b4-4184-a1c8-5c57016a7eb6'),('457029d5-2897-4a58-8b88-ec25a871a1f6','5812a5b0-5b3f-4add-b059-8197110a4431'),('457029d5-2897-4a58-8b88-ec25a871a1f6','5cbf9bb4-1cc7-43bb-a511-e5c1757f8724'),('457029d5-2897-4a58-8b88-ec25a871a1f6','64fbd5ba-5d3a-48ba-ae90-15a9bf2a83d9'),('457029d5-2897-4a58-8b88-ec25a871a1f6','667e714a-c466-4218-9f7a-49a32b0bdcb8'),('457029d5-2897-4a58-8b88-ec25a871a1f6','67f6af5b-ec42-4cbb-a7ea-95412ffe53d8'),('457029d5-2897-4a58-8b88-ec25a871a1f6','8819e0da-b589-493d-866f-44936f30fa31'),('457029d5-2897-4a58-8b88-ec25a871a1f6','8b2c5807-3c13-410c-8c70-d686343fb799'),('457029d5-2897-4a58-8b88-ec25a871a1f6','93e2ef7d-d112-4a90-a218-fb081ff470bd'),('457029d5-2897-4a58-8b88-ec25a871a1f6','96f7ff77-b40e-47b9-8d5f-3a5f9da70ffd'),('457029d5-2897-4a58-8b88-ec25a871a1f6','c656d506-cba8-4231-865b-d4f9c97ad529'),('4764cac3-c558-48a9-b62e-032dfa81d8c6','43f6e3ce-1a54-46d9-be14-1f98f85d3725'),('4764cac3-c558-48a9-b62e-032dfa81d8c6','7e5c2316-f982-4876-8b8e-ac8060e424ab'),('47fac22b-bfa5-496f-ae65-dc2430d266c2','c7084020-6cad-4520-824b-a241b1013073'),('4944cf01-d0fe-42b5-90c6-d24b27a4f951','aae5d537-aaac-4138-9aa8-49ee0737a4c4'),('4944cf01-d0fe-42b5-90c6-d24b27a4f951','e7e29740-197a-4161-8573-67dcafc4a076'),('573cee1b-de01-4d38-8df3-ca769aa8bac3','15bd44ae-1878-426d-b5da-9a615b3064e3'),('573cee1b-de01-4d38-8df3-ca769aa8bac3','e4a6448d-81b4-47ac-b9ad-56bc90198d79'),('57afdbc0-659a-4b08-9570-f1f0068002ff','66f61e23-df3f-42df-918a-ceef7f58ee89'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','207b8a06-759b-41a8-8f27-e7cd4c484ed8'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','2fb5a846-eeef-4b9c-bc9f-4c6d96050f0c'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','6957c2ff-5fff-4e1a-8281-28834cefe43a'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','6aeded6c-6812-4aa2-86dc-9d40a0dfae33'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','7027476c-3d1b-4987-99a1-5901001860ec'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','7e80136d-3a16-44c4-9f4c-b99a7692677b'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','8009dcaa-dc92-4a82-83c7-f1f2242b4e43'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','876e0441-a205-41c5-b5bc-efb6244ddfc4'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','956ea49f-1c2b-4be4-9936-1e3683155246'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','98a29abf-d04e-40ea-b0cc-c27fa89e800c'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','9d878224-d6b1-44b2-bb0f-c8c1454e64fa'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','9f9ecd06-ae26-4f7e-bde7-b1b9b7b8e9ae'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','ad3c6bfa-ea80-46cf-b02e-6621007cc40f'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','b684cccc-e47a-4fea-8e98-13ee733abbb9'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','cefedff9-bcd6-4525-a763-1800e7e74987'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','dc35603a-6080-4463-8f66-79bb1fd2597e'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','f516de01-a793-4147-80fa-f9972d2f7448'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','f5e9ef38-b85b-4b5a-b798-8ca02ee4c2ce'),('5b57741e-cf81-45cd-835e-fb6aba34a177','9335183d-ed9f-4c69-90ca-e46312ad1ad9'),('5b57741e-cf81-45cd-835e-fb6aba34a177','a6030605-ded8-450b-947b-76e70809a1eb'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','005d1ab6-c74a-4e9d-8321-f804d02623f3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','01125568-2d83-4e28-9bfe-4a830cdb902b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','01242c4e-325f-4cd4-9670-c572acadd993'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','0295f69a-8a55-4691-b174-e15c91011e55'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','02c1a0c0-632b-426e-9d34-88168bd677c3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','0302167a-adf7-46b2-a19e-8b39f4c1c6b6'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','0610a875-8315-4220-865a-6571a59d9b93'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','0a01292f-e2d9-4799-be1e-af7268be5e61'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','0fceb9d4-5626-43a6-9b60-69e4bf929ba5'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','14e58d93-4349-42c1-9667-207607c0b8f0'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','15711b4e-c00d-4701-b2c1-d6b12b768ee0'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','1836cc40-0670-4a41-be49-44e3d9ca0818'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','183ba49b-e28f-4e1a-a92f-524f20f50cbf'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','23e8012b-6a77-4080-aac6-819aa7ae6278'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','25cc5be6-3b57-43ab-bcf1-e2dc6ffbe364'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','29041bd5-27d5-4c2d-8bd1-588f81f7e393'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3480b3b3-d359-40f3-a200-5b1a04e0149a'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3960adb0-09a5-426a-aeb6-effd40d8322f'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3a83ba4b-0f55-41ff-929e-a22c763c02b4'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3af17d1d-4354-4c45-a807-bf3570bae00d'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3c4591c7-53c4-48c1-80f9-516cbd25f250'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3c68f530-a066-41bd-8492-f7cfeded4d4b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3df42d2e-8ec2-40c7-a6c5-13e8e495c3c5'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','3fec3054-04e5-4502-b5cb-8178743bdcb1'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','463e0f95-16bf-410c-8c10-85c076dbbaea'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','46b8b0d8-7370-4466-a6bd-36330c6140cf'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','47fac22b-bfa5-496f-ae65-dc2430d266c2'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','48aeed94-acf6-480b-92ab-0977c3580ee1'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','490c0f53-b6ec-448b-acab-2668e9b15ad5'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','4a9ec044-268c-47d2-85a3-c839b2096290'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','4add2f1c-ca8a-4513-a7df-2ae50a21c0a3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','4b4e0e86-c8d0-4072-934f-70ea19edf095'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','4d310ccd-f211-462c-8ff3-482a9e54e693'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','4e7105cb-a8ea-4f8e-9887-dbe81bb4d69b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','50c1e3d6-6588-49c6-88a0-599b775923fc'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','57fdd497-0c19-4686-8694-ac2516da78c1'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','5b57741e-cf81-45cd-835e-fb6aba34a177'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','5ebf1768-daf3-4c26-a70d-803ade23006c'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','5f4f5eca-eada-40c7-81b1-ca59df9b91ea'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','612bcb15-44ac-4aaa-9311-0f85c4f283be'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','616f56ac-0694-4adb-abd2-4432a5357284'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','61ead677-7a37-4783-bfdf-77f80d6c05a1'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','661fb165-61a7-4855-b4ae-e50420ba13c7'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','6a4d29a6-3c98-44f1-aac0-0004a6ce6bd1'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','6cad8210-9fe6-4f31-97f0-4dd33b40774f'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','6dad41b6-9036-491d-b53f-348ef85e4953'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','6e07c301-560b-4e61-8d38-0d4284060f50'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','6e65454e-d568-4658-9261-e7977149cecf'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','6ef00898-fb4e-46f0-ae1d-c1d434d83b53'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','70af20ac-482c-424c-a1fb-d1da02245caa'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','70bb1639-fd22-4351-a76f-ee3074712a74'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','71f70341-d4e7-4c43-b655-f357e6919807'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','76f92048-29ff-44f8-a679-fbc8a0eddbd3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','7d03b875-425a-49b1-972e-65a49c78aba7'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','7d2849cd-61d2-4fc5-91f0-43ecf6bf2c36'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','81b88217-93c0-4b9a-b7d6-98d69def314b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','826e2452-2cdf-4263-b26b-19ef77952711'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','828cf8c7-4dae-4756-9c2e-711c86f4017e'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','83175b25-653f-4837-be23-3514f6fb635c'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','83bcf752-a359-43bb-a5cc-5f6eed3666bc'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','86255410-c9ef-490c-a2d3-db2b922bd97c'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','8a7c8b86-b6cb-42db-b200-1efa48d8c7fe'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','8cf69528-68ba-485e-a3bb-68a57af8f41f'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','8d73f8a6-c0f6-4930-a276-ae708f949d5d'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','8f708f54-9d16-4452-8ba9-8eea248e86f0'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','91554470-8af8-4f4e-9839-b2cda59c0469'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','9335183d-ed9f-4c69-90ca-e46312ad1ad9'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','9510563c-cdaa-40f3-bbdc-9afcbd5d31b7'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','95b4e333-f4e5-42d0-84e2-10985085dbed'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','99931a95-d84a-486d-9893-f2e104c1684b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','99d30446-ac06-414b-b156-17ec86ddc2f5'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','9ba7d463-d032-420e-87d7-5ce0bd73cbec'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','a1b22de5-c633-4fd7-b359-040f184ac8d8'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','a305fdd7-6a8e-4fd7-b3ba-8ebe96869f12'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','a6030605-ded8-450b-947b-76e70809a1eb'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','a9ae74c4-55c4-4bd4-b303-90bbef9b442b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','b0fac1b2-536b-4c5c-8c54-e737480e58d9'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','b58ecca0-9438-4153-88eb-686ce18c24a0'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','b876ea95-4d29-4c28-a215-0343d8dd76ee'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','bb620d5e-299b-4af6-8781-7cf2acd56ce3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','bc422f70-d03b-45d3-8bb5-76dade2d9389'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','bed9694a-ced5-49fd-bea1-939dcca395ae'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','c01bc485-f60d-4997-bd85-8f85b98f60f3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','c056f701-c206-4064-abd8-2ea804c110a2'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','c27839e3-894a-4156-aa3d-638a57e0b276'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','c2994e1b-74bc-49a0-a54f-9d11d8941406'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','c7084020-6cad-4520-824b-a241b1013073'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','cac1e0ef-3867-4860-a55d-4ff16e8599ab'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','cd3bf325-0022-485f-8fcc-1c3deb5bd602'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','ce1ea752-873a-49af-9b34-e7c38899b037'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','d137f1e3-2916-42cf-8f34-873faed7eb3b'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','d34c9f77-78d5-4bd7-b304-fe391e51b305'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','d472843b-f198-4054-9568-6adb23fe7b64'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','d5c081d1-bcb2-4271-9d90-2ef46aca18cd'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','d67a40c1-632e-4925-b5e7-3d953486a933'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','e08f924e-6c34-4a74-a3fc-562cdf94b293'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','e329f2a5-8af9-49bf-9a82-00cd3b1701c7'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','e7a38682-15d4-4de7-ad91-ecb015f867e7'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','e819d914-d128-4037-a314-702dca83650d'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','e819f53f-797e-41bc-9642-677f1236bee3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','e920b1ed-6145-43a5-b986-dad8af79f4ef'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','eb96e5bd-2d76-4b49-b571-9c124ae7e0b3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','ec56fbea-5b9e-4666-8f3b-db0099862da9'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','ece8903c-ee43-4d49-ac55-e4884378a880'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','efa4727c-193d-4e60-be48-f5f199ae86f5'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','f108e259-07ea-4a3c-8cc5-6b7488c93b9e'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','f6597277-9c49-4b12-a6dd-e4c1507c204e'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','f95fcc7c-f5ae-4aa7-832f-bf0e32b3b771'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','fa2a733e-2e1d-4e77-9f0d-6301843564f9'),('5cde97f6-0343-43a6-b002-2fd8f98295d1','9e7d47d3-4697-4bdd-85fe-175180a1aca2'),('6077efe1-1e01-4be3-84e5-f243f34f6feb','a38cc62f-1acf-41e2-8094-046551f91baa'),('616f56ac-0694-4adb-abd2-4432a5357284','3df42d2e-8ec2-40c7-a6c5-13e8e495c3c5'),('616f56ac-0694-4adb-abd2-4432a5357284','c27839e3-894a-4156-aa3d-638a57e0b276'),('64fbd5ba-5d3a-48ba-ae90-15a9bf2a83d9','93e2ef7d-d112-4a90-a218-fb081ff470bd'),('64fbd5ba-5d3a-48ba-ae90-15a9bf2a83d9','96f7ff77-b40e-47b9-8d5f-3a5f9da70ffd'),('661fb165-61a7-4855-b4ae-e50420ba13c7','4b4e0e86-c8d0-4072-934f-70ea19edf095'),('661fb165-61a7-4855-b4ae-e50420ba13c7','a305fdd7-6a8e-4fd7-b3ba-8ebe96869f12'),('71f70341-d4e7-4c43-b655-f357e6919807','6e07c301-560b-4e61-8d38-0d4284060f50'),('8100cea0-2d93-4715-842b-c044a287f496','68350ff4-f68f-46aa-adaa-6e79b5a981a5'),('85a4f8f0-6658-4326-a3e6-b84248e751d5','34af2c96-e367-4a5a-b3ed-40f02f591b7b'),('85a4f8f0-6658-4326-a3e6-b84248e751d5','ea09a2e5-3f29-40a1-a8e2-6933cd2e1236'),('85a4f8f0-6658-4326-a3e6-b84248e751d5','fb400be2-c5b4-4ce5-a285-033259670d52'),('8a7c8b86-b6cb-42db-b200-1efa48d8c7fe','83175b25-653f-4837-be23-3514f6fb635c'),('8b2c5807-3c13-410c-8c70-d686343fb799','67f6af5b-ec42-4cbb-a7ea-95412ffe53d8'),('956ea49f-1c2b-4be4-9936-1e3683155246','9d878224-d6b1-44b2-bb0f-c8c1454e64fa'),('96300188-8ba6-45fb-a7d1-71425c161f67','cc560bd9-348c-410e-be0f-27d974167769'),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','3a14b4ef-34b0-4d8f-8e91-de5d1c67c98b'),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','882278ec-aa75-47f6-a6f1-cfe498099be6'),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','d865455a-6934-41b7-8f91-7786ed837836'),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','eda0a210-e934-41ae-ab89-6a9458f0eb5f'),('9bbc2ed6-fc5e-4814-9bd6-c90ce4069398','15995e9d-cfb9-4f48-b4ff-bbac9180e1a8'),('9bbc2ed6-fc5e-4814-9bd6-c90ce4069398','fb4f3945-4396-455b-8758-44c6a4901113'),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','4f68d1f5-0304-4fca-8c97-2da3d9338774'),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','6077efe1-1e01-4be3-84e5-f243f34f6feb'),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','bdcf389c-cb05-4eef-b44a-eb1e2698b8db'),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','e9dbb0eb-18ff-40f4-a15f-dc0074202e98'),('9f8b9623-3c08-49da-aae3-bd7876f1c90d','71e455a0-756c-49f5-b040-9512d76ed84d'),('9f8b9623-3c08-49da-aae3-bd7876f1c90d','86758c97-abb2-4550-b393-655eaf3c8c12'),('a2a4f120-32ab-4f47-b1e3-e46dcc7ee170','1e521a28-2bbb-4d94-802c-c74303b568df'),('a2a4f120-32ab-4f47-b1e3-e46dcc7ee170','20a04a5e-a0bf-4f20-ac6a-953b070838f5'),('a5d81936-b774-4aeb-a529-847b9721b727','34af2c96-e367-4a5a-b3ed-40f02f591b7b'),('a5d81936-b774-4aeb-a529-847b9721b727','fb400be2-c5b4-4ce5-a285-033259670d52'),('a6d22921-f778-404d-9506-e1551c12b97b','07b4313b-6906-4d53-bdac-f4309d4e8f45'),('a6d22921-f778-404d-9506-e1551c12b97b','328f053b-14f8-47d0-bee5-3d79b0559f27'),('a9a05bce-34a2-4391-af8f-02ca40f38917','0d57cf5e-67fd-4204-81cb-fe8678cbff1e'),('a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0','1101c16a-8ad8-46ba-8da4-c42b96bc84e8'),('a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0','fa4b1be1-ede9-44c9-b02d-fe2873d24d7c'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','1fd0db8e-a95c-4f84-9a20-3ba4843c642b'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','3c0a8a41-6580-41db-b5d6-b2857642a90d'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','633f3924-0292-4bc5-ae48-b0dc5ba66007'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','6d110fa3-feee-4970-9d00-986cb85a7198'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','aae5d537-aaac-4138-9aa8-49ee0737a4c4'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','e7e29740-197a-4161-8573-67dcafc4a076'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','ee2963e0-3292-4001-ab03-de53ee2ea8f9'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','fc412908-57e8-4c7d-b275-52afcb19b255'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','1e521a28-2bbb-4d94-802c-c74303b568df'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','20a04a5e-a0bf-4f20-ac6a-953b070838f5'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','32ed92fb-e34d-4ee2-9ba9-f4bbfcf80b24'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','4af03a2a-86a2-43d6-bb24-e60e597bcb8a'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','a7567ba9-3386-4f55-9c95-85f3a8c75311'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','b0aecbe1-1bb6-4985-870c-ffe1724a5171'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','decc040a-f6e3-4b9f-8f65-adbd28806b0b'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','e996dfa3-fe1b-4af0-b110-319616eb5f06'),('b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d','1133e6a6-1c5a-49b4-8011-28c25003a768'),('b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d','a2039408-4697-493d-bde9-cfe999fdd45b'),('bb620d5e-299b-4af6-8781-7cf2acd56ce3','1836cc40-0670-4a41-be49-44e3d9ca0818'),('bcdc31ff-8d36-412d-9765-aab459c081a6','115ddd9b-58ad-46ce-8d78-314db33063a4'),('bcdc31ff-8d36-412d-9765-aab459c081a6','9960137a-cd85-4e0a-a279-4f2e886ed293'),('bcdc31ff-8d36-412d-9765-aab459c081a6','f4e3dd49-3293-413a-8d1a-f5e771305973'),('bec9750c-b218-4dcf-b59a-2af80de6f1d5','d160169c-1c11-4c19-930c-914cc77271c7'),('bec9750c-b218-4dcf-b59a-2af80de6f1d5','f1a06f14-35c4-458c-b88e-3b96263f81ec'),('c2994e1b-74bc-49a0-a54f-9d11d8941406','3480b3b3-d359-40f3-a200-5b1a04e0149a'),('c2994e1b-74bc-49a0-a54f-9d11d8941406','9510563c-cdaa-40f3-bbdc-9afcbd5d31b7'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','02712e6f-d329-4f1e-aff3-c330963e1ba1'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','1c8578f9-4975-4211-9793-969c876d7021'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','2cd76087-d1fe-4284-9cad-fe40e1f50fb4'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','3b03c7e0-0b51-4519-9a93-59b5f1f0f0cc'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','46d70921-9cdf-4600-b13b-4a5b2d9386fb'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','4970cfd3-d86a-4cbb-a74c-a2fc8c08e8eb'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','4d088a3b-c09d-4360-af13-36063ae71427'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','665ce16e-9df0-45ad-b558-34493ee6f698'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','712ebf39-e76c-4f9c-997d-636ac16aa3ad'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','a8036019-e713-46c7-b59c-3cebb60e42b5'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','c32d46c2-6cba-4f2e-b76e-a02c1513a819'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','cc637b16-ffa7-4108-86f4-d08a23e5370f'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','da54d79f-0962-4280-8ca4-d267f6e2fc3a'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','da92e6ef-e748-4d32-94f2-ccc7cdd793df'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','dc13a5ed-8c63-4158-a347-1b35128118cd'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','ea6ed27f-4cc2-46cf-ae14-5165a3f332e2'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','f537ed8f-b43d-4417-8627-3ec294e0ac74'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','fe249970-6620-40b9-b550-98235e3a8cc0'),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','05b1fb06-8879-4d5c-ab49-2656015f530b'),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','7886bd0a-0163-4b56-8160-e999ecade091'),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','9c27b3e5-0264-47a1-842f-48bcaf18b136'),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','dfae5736-7129-45e4-8a3e-1de9949d8e1a'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','1594cef3-3645-4d27-a97f-f0195cff9e1f'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','1ebd50ff-5ac5-41bb-96de-5311836a66c8'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','53492915-cecb-41e9-a84c-5c141643bdae'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','65abb1ea-5c85-4557-a18f-84060206c2fc'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','74efc8e1-21cd-4e06-8442-d57684edcff0'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','86d1bb57-0fab-4837-88ef-8bda55d716ee'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','8ceef58b-5a30-4751-9ac8-d998bda1f469'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','934063eb-9737-4c22-8b6f-c9eaa178d56b'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','96300188-8ba6-45fb-a7d1-71425c161f67'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','afd54e81-3432-425a-a64a-3a11d891e3e5'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','b933e9c9-eb74-4940-aa40-a866e39f9d8a'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','cc560bd9-348c-410e-be0f-27d974167769'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','cdc95c8d-0e44-449a-b362-37db6ed585bb'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','dc557801-6b54-4e6d-aa7f-2e03d1ce0418'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','ddc3d7e1-8475-4c48-8e98-43b912344225'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','ed303b38-7d5b-4d94-ba60-145f43df83f9'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','fad33368-250f-4ad4-99a4-3da659ce2861'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','fcfac635-a87b-43a9-b6b8-854d5d335cc1'),('d67a40c1-632e-4925-b5e7-3d953486a933','86255410-c9ef-490c-a2d3-db2b922bd97c'),('dc35603a-6080-4463-8f66-79bb1fd2597e','7027476c-3d1b-4987-99a1-5901001860ec'),('dc35603a-6080-4463-8f66-79bb1fd2597e','7e80136d-3a16-44c4-9f4c-b99a7692677b'),('ddc3d7e1-8475-4c48-8e98-43b912344225','1ebd50ff-5ac5-41bb-96de-5311836a66c8'),('ddc3d7e1-8475-4c48-8e98-43b912344225','53492915-cecb-41e9-a84c-5c141643bdae'),('dfae5736-7129-45e4-8a3e-1de9949d8e1a','21d29a08-1e92-40a6-97ff-c221e085d375'),('e3213199-21fd-44ac-84c1-c2ebeec53289','0a44696f-fa99-4fd5-a15c-5cb79858c174'),('e3213199-21fd-44ac-84c1-c2ebeec53289','19f9fc14-b030-4b44-85e5-af30c878ea2f'),('e3213199-21fd-44ac-84c1-c2ebeec53289','7012f138-b3f9-4b83-a6ea-2b5a4ce8c846'),('e3213199-21fd-44ac-84c1-c2ebeec53289','f841763c-9c9c-4ddf-a6eb-0c69a3482978'),('ea6ed27f-4cc2-46cf-ae14-5165a3f332e2','4970cfd3-d86a-4cbb-a74c-a2fc8c08e8eb'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','1822f841-6491-4cde-8561-0ad1671a66db'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','4f1c50ff-cb8c-44c8-bdb3-030af3c4e98f'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','6d2917dc-f1ed-4691-9a66-9a10b4faa39c'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','9b549f86-3b52-4eac-a6a5-067d6e63cade'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','dbc19751-54ed-4612-80ec-6319298cc13e'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','e20652c4-cc0b-45b7-9ea9-0a5849fe1cf3'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','e58a6a65-811e-4953-bc12-7ea1dfc67ee9'),('eb96e5bd-2d76-4b49-b571-9c124ae7e0b3','3fec3054-04e5-4502-b5cb-8178743bdcb1'),('eb96e5bd-2d76-4b49-b571-9c124ae7e0b3','50c1e3d6-6588-49c6-88a0-599b775923fc'),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','7e60abfe-3ee7-44a7-8781-454cbbd30214'),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','c37f34d9-6b44-4f92-8095-fa91a695460d'),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','f2ce77c3-2c83-4710-88c5-cc29d4168feb'),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','ffeab898-fc4e-4622-af81-9d6c307e3f8a'),('eda0a210-e934-41ae-ab89-6a9458f0eb5f','56c27a05-9313-485d-a264-b836fbb539a5'),('ef95106e-4d28-4084-ada0-1ee297454fcc','13d758eb-571d-46ec-b69d-62f9e4954c3f'),('ef95106e-4d28-4084-ada0-1ee297454fcc','15bd44ae-1878-426d-b5da-9a615b3064e3'),('ef95106e-4d28-4084-ada0-1ee297454fcc','28797caa-a53e-412b-a509-c92fc8538388'),('ef95106e-4d28-4084-ada0-1ee297454fcc','3b3f8455-b342-47ae-b173-0c75aae68a1f'),('ef95106e-4d28-4084-ada0-1ee297454fcc','44a58663-d07d-43ee-b323-0142e9c33edb'),('ef95106e-4d28-4084-ada0-1ee297454fcc','5641b7b3-c744-42ea-9242-1fce8af07d7e'),('ef95106e-4d28-4084-ada0-1ee297454fcc','573cee1b-de01-4d38-8df3-ca769aa8bac3'),('ef95106e-4d28-4084-ada0-1ee297454fcc','671a747b-0091-4774-b6b7-2121cf56c4a0'),('ef95106e-4d28-4084-ada0-1ee297454fcc','6a3ea47d-d244-4579-91b4-c82b444407cc'),('ef95106e-4d28-4084-ada0-1ee297454fcc','71c9b13e-4745-4e86-9414-0e25beb6f2de'),('ef95106e-4d28-4084-ada0-1ee297454fcc','75d4df98-656d-4108-8646-65fa94c1cc00'),('ef95106e-4d28-4084-ada0-1ee297454fcc','770d6db4-1714-4c58-a4b2-c6552f62e327'),('ef95106e-4d28-4084-ada0-1ee297454fcc','7cefb986-18db-4989-b32b-ee83cf364d88'),('ef95106e-4d28-4084-ada0-1ee297454fcc','9cf53417-b175-4dde-83f1-544bbd3ddbc6'),('ef95106e-4d28-4084-ada0-1ee297454fcc','b2707b19-e83d-42bd-817d-25e89d832a0c'),('ef95106e-4d28-4084-ada0-1ee297454fcc','b5e04d73-1054-4c1c-ad9c-655aece12d3a'),('ef95106e-4d28-4084-ada0-1ee297454fcc','c42853a5-ea2f-4141-8d79-be68ce6d90b2'),('ef95106e-4d28-4084-ada0-1ee297454fcc','e4a6448d-81b4-47ac-b9ad-56bc90198d79'),('f2ce77c3-2c83-4710-88c5-cc29d4168feb','dbe2fc38-41fc-480e-b903-112cc5be103b'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','115ddd9b-58ad-46ce-8d78-314db33063a4'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','119b4a3c-ce42-4456-975a-38934a6d35ec'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','33807288-4c79-42ca-86cb-82e542e44194'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','78922e8e-71e8-466f-ac22-88fcd7682077'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','836009c3-a5ec-4aa1-8640-a191ce3cc036'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','9960137a-cd85-4e0a-a279-4f2e886ed293'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','9b8dbdcb-f267-4d5f-8f70-0e50905f54a4'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','f4e3dd49-3293-413a-8d1a-f5e771305973'),('f59e154c-5584-4bd7-9b66-253241cd27fb','0f953449-d2dd-4ce5-aee1-9a126d766f68'),('f59e154c-5584-4bd7-9b66-253241cd27fb','186114e8-5cc5-4c66-a735-cceea4aa35fe'),('f59e154c-5584-4bd7-9b66-253241cd27fb','3326524f-80e7-4b1f-8a49-88180e7c3386'),('f59e154c-5584-4bd7-9b66-253241cd27fb','34af2c96-e367-4a5a-b3ed-40f02f591b7b'),('f59e154c-5584-4bd7-9b66-253241cd27fb','77d1bfd9-0aaf-407b-9993-2ef0e009c753'),('f59e154c-5584-4bd7-9b66-253241cd27fb','b0e6f7ff-b689-456d-8f59-bdf25d2d71f1'),('f59e154c-5584-4bd7-9b66-253241cd27fb','ea09a2e5-3f29-40a1-a8e2-6933cd2e1236'),('f59e154c-5584-4bd7-9b66-253241cd27fb','fb400be2-c5b4-4ce5-a285-033259670d52'),('f6331ad1-dfdc-4b9d-9aec-811f92ade656','ae4ebb7d-c16a-4b41-9c18-87f889b4a5af'),('f6331ad1-dfdc-4b9d-9aec-811f92ade656','cda22e09-66b3-4289-84aa-33b6c16b5ed3'),('f841763c-9c9c-4ddf-a6eb-0c69a3482978','00c0fbcc-3ad8-43d0-a23f-a13b757f2328'),('f95fcc7c-f5ae-4aa7-832f-bf0e32b3b771','95b4e333-f4e5-42d0-84e2-10985085dbed'),('fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4','a5947e67-2cb7-48a7-a6be-00fcdf865e11'),('fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4','c6ee3848-11c6-4763-a6e7-17412e91d160'),('fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96','34418a5b-12ad-4495-b04c-c2e0924a3178'),('fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96','529531a5-c4b5-4955-ad0b-107a489d5e79'),('fe249970-6620-40b9-b550-98235e3a8cc0','02712e6f-d329-4f1e-aff3-c330963e1ba1'),('fe249970-6620-40b9-b550-98235e3a8cc0','4d088a3b-c09d-4360-af13-36063ae71427'),('ff3743b8-4e8d-409f-9124-90a3bfcf3b42','1e521a28-2bbb-4d94-802c-c74303b568df'),('ff3743b8-4e8d-409f-9124-90a3bfcf3b42','20a04a5e-a0bf-4f20-ac6a-953b070838f5'),('ff3743b8-4e8d-409f-9124-90a3bfcf3b42','a7567ba9-3386-4f55-9c95-85f3a8c75311');
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
INSERT INTO `CREDENTIAL` VALUES ('136b7f7b-a22c-4aab-a0bc-3386f60218af',NULL,'password','4150c151-d695-4938-8829-62d4db16df52',1708393545655,NULL,'{\"value\":\"wwRCzx3u7pM7yBqAcePIPaCMgZwlCOnfnrjxewFRsYmkr1gBfXw7LehO2nwJLY4kSqRmnueGRJarcuEUtK5Cdg==\",\"salt\":\"GR1S9W+1YHmdIIlyMMFaeA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('2a2e24f1-5169-4c8b-9236-bfb7c37bc348',NULL,'password','2e922cfd-aa4d-45bc-b3d4-569ff9782811',1708393496361,NULL,'{\"value\":\"utF7GwdCD3StGk61UvMYwvYfw1bqfebJTvh9DcAMmDVMKGERMPLlJzZPQOolE+qAWIlykYgQnsiGhuUo9lhGaQ==\",\"salt\":\"MkdxZRXVBCXgJc3oa+Todw==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('3012b7ad-16a8-4d89-8d35-838174cfb049',NULL,'password','985fadcd-bad4-4287-9a7a-d116575291ba',1708393594415,NULL,'{\"value\":\"Uyi2nJbmrNu695K71yQCRDdljZjRgeDSp23unkesiND8yGsapnpyNaMz9oDLfuq3qb5AwGhl59OhT/3AdzTkzg==\",\"salt\":\"fQDMblhzXvEUDIPrpDgsLQ==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('91923f9c-2752-438b-b9f0-b5a0a89c6e78',NULL,'password','659ea158-11d7-4b87-9b83-dab5031d6d93',1708393522939,NULL,'{\"value\":\"r7COEVU/vfB5xodU4BPm4GQ3UX+2P/mC0OAKUiWy1jz3WXtI0d/AqiMtghpRPdZgWP8abW7bPy16vcZpSRdlVQ==\",\"salt\":\"FR/nOR94xX3vuuczE5BKRg==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('9b2c2174-1e5a-4113-922b-e7d8f476cbfd',NULL,'password','c8a150cc-812d-4fcd-beff-6408855070bc',1708393106576,NULL,'{\"value\":\"RJLRooyiR+JlKZJ0HQBehISKbLg02G6br6ARPGnaFNPT4+H685diQkYzHnch690TgjDooFpPppSZ6fmJsUsvIw==\",\"salt\":\"+gkXQBfG0NWzF4wqElEKgA==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10),('9fb85474-02bb-4a3c-b1f7-dd2e3621d233',NULL,'password','3f94646f-2c12-4603-b953-023de2333b3f',1708393569091,NULL,'{\"value\":\"8pDNrfG2yHijGmLVKaWLZIqttPLeBoHY0Ea2JMum7Duk+Rfr7omLgfPCr6645noytq42NmUcY7oeRvuvVun0DQ==\",\"salt\":\"NGPRgmbJabORKNAToewXHQ==\",\"additionalParameters\":{}}','{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-02-20 10:38:09',1,'EXECUTED','8:bda77d94bf90182a1e30c24f1c155ec7','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-02-20 10:38:09',2,'MARK_RAN','8:1ecb330f30986693d1cba9ab579fa219','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-02-20 10:38:09',3,'EXECUTED','8:cb7ace19bc6d959f305605d255d4c843','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-02-20 10:38:09',4,'EXECUTED','8:80230013e961310e6872e871be424a63','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-02-20 10:38:10',5,'EXECUTED','8:67f4c20929126adc0c8e9bf48279d244','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-02-20 10:38:10',6,'MARK_RAN','8:7311018b0b8179ce14628ab412bb6783','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-02-20 10:38:11',7,'EXECUTED','8:037ba1216c3640f8785ee6b8e7c8e3c1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-02-20 10:38:11',8,'MARK_RAN','8:7fe6ffe4af4df289b3157de32c624263','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-02-20 10:38:11',9,'EXECUTED','8:9c136bc3187083a98745c7d03bc8a303','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-02-20 10:38:12',10,'EXECUTED','8:b5f09474dca81fb56a97cf5b6553d331','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-02-20 10:38:13',11,'EXECUTED','8:ca924f31bd2a3b219fdcfe78c82dacf4','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-02-20 10:38:13',12,'MARK_RAN','8:8acad7483e106416bcfa6f3b824a16cd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-02-20 10:38:13',13,'EXECUTED','8:9b1266d17f4f87c78226f5055408fd5e','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-02-20 10:38:13',14,'EXECUTED','8:d80ec4ab6dbfe573550ff72396c7e910','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-02-20 10:38:13',15,'MARK_RAN','8:d86eb172171e7c20b9c849b584d147b2','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-02-20 10:38:13',16,'MARK_RAN','8:5735f46f0fa60689deb0ecdc2a0dea22','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-02-20 10:38:13',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-02-20 10:38:13',18,'EXECUTED','8:5c1a8fd2014ac7fc43b90a700f117b23','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-02-20 10:38:14',19,'EXECUTED','8:1f6c2c2dfc362aff4ed75b3f0ef6b331','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-02-20 10:38:14',20,'EXECUTED','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-02-20 10:38:14',21,'MARK_RAN','8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-02-20 10:38:14',22,'MARK_RAN','8:dee9246280915712591f83a127665107','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-02-20 10:38:14',23,'EXECUTED','8:d9fa18ffa355320395b86270680dd4fe','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-02-20 10:38:14',24,'EXECUTED','8:90cff506fedb06141ffc1c71c4a1214c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-02-20 10:38:14',25,'MARK_RAN','8:11a788aed4961d6d29c427c063af828c','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-02-20 10:38:14',26,'EXECUTED','8:a4218e51e1faf380518cce2af5d39b43','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-02-20 10:38:15',27,'EXECUTED','8:d9e9a1bfaa644da9952456050f07bbdc','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-02-20 10:38:15',28,'EXECUTED','8:d1bf991a6163c0acbfe664b615314505','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-02-20 10:38:16',29,'EXECUTED','8:88a743a1e87ec5e30bf603da68058a8c','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-02-20 10:38:16',30,'EXECUTED','8:c5517863c875d325dea463d00ec26d7a','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-02-20 10:38:16',31,'EXECUTED','8:ada8b4833b74a498f376d7136bc7d327','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-02-20 10:38:16',32,'EXECUTED','8:b9b73c8ea7299457f99fcbb825c263ba','customChange','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-02-20 10:38:16',33,'EXECUTED','8:07724333e625ccfcfc5adc63d57314f3','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-02-20 10:38:16',34,'MARK_RAN','8:8b6fd445958882efe55deb26fc541a7b','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-02-20 10:38:16',35,'EXECUTED','8:29b29cfebfd12600897680147277a9d7','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-02-20 10:38:16',36,'EXECUTED','8:73ad77ca8fd0410c7f9f15a471fa52bc','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-02-20 10:38:16',37,'EXECUTED','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8393086101'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-02-20 10:38:16',38,'EXECUTED','8:27180251182e6c31846c2ddab4bc5781','addColumn tableName=FED_USER_CONSENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-02-20 10:38:16',39,'EXECUTED','8:d56f201bfcfa7a1413eb3e9bc02978f9','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-02-20 10:38:16',40,'MARK_RAN','8:91f5522bf6afdc2077dfab57fbd3455c','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-02-20 10:38:16',41,'MARK_RAN','8:0f01b554f256c22caeb7d8aee3a1cdc8','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-02-20 10:38:16',42,'EXECUTED','8:ab91cf9cee415867ade0e2df9651a947','customChange','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-02-20 10:38:17',43,'EXECUTED','8:ceac9b1889e97d602caf373eadb0d4b7','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-02-20 10:38:17',44,'EXECUTED','8:84b986e628fe8f7fd8fd3c275c5259f2','addColumn tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-02-20 10:38:17',45,'EXECUTED','8:a164ae073c56ffdbc98a615493609a52','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-02-20 10:38:17',46,'EXECUTED','8:70a2b4f1f4bd4dbf487114bdb1810e64','customChange','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-02-20 10:38:17',47,'MARK_RAN','8:7be68b71d2f5b94b8df2e824f2860fa2','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-02-20 10:38:18',48,'EXECUTED','8:bab7c631093c3861d6cf6144cd944982','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-02-20 10:38:18',49,'EXECUTED','8:fa809ac11877d74d76fe40869916daad','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-02-20 10:38:18',50,'EXECUTED','8:fac23540a40208f5f5e326f6ceb4d291','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-02-20 10:38:19',51,'EXECUTED','8:2612d1b8a97e2b5588c346e817307593','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-02-20 10:38:19',52,'EXECUTED','8:9842f155c5db2206c88bcb5d1046e941','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-02-20 10:38:19',53,'EXECUTED','8:2e12e06e45498406db72d5b3da5bbc76','update tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-02-20 10:38:19',54,'EXECUTED','8:33560e7c7989250c40da3abdabdc75a4','update tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-02-20 10:38:19',55,'EXECUTED','8:87a8d8542046817a9107c7eb9cbad1cd','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-02-20 10:38:19',56,'EXECUTED','8:3ea08490a70215ed0088c273d776311e','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-02-20 10:38:19',57,'EXECUTED','8:2d56697c8723d4592ab608ce14b6ed68','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-02-20 10:38:20',58,'EXECUTED','8:3e423e249f6068ea2bbe48bf907f9d86','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-02-20 10:38:20',59,'EXECUTED','8:15cabee5e5df0ff099510a0fc03e4103','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-02-20 10:38:21',60,'EXECUTED','8:4b80200af916ac54d2ffbfc47918ab0e','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-02-20 10:38:21',61,'EXECUTED','8:66564cd5e168045d52252c5027485bbb','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-02-20 10:38:21',62,'EXECUTED','8:1c7064fafb030222be2bd16ccf690f6f','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-02-20 10:38:21',63,'EXECUTED','8:2de18a0dce10cdda5c7e65c9b719b6e5','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-02-20 10:38:21',64,'EXECUTED','8:03e413dd182dcbd5c57e41c34d0ef682','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-02-20 10:38:21',65,'EXECUTED','8:d27b42bb2571c18fbe3fe4e4fb7582a7','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-02-20 10:38:21',66,'EXECUTED','8:698baf84d9fd0027e9192717c2154fb8','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-02-20 10:38:21',67,'EXECUTED','8:ced8822edf0f75ef26eb51582f9a821a','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-02-20 10:38:21',68,'EXECUTED','8:f0abba004cf429e8afc43056df06487d','addColumn tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-02-20 10:38:21',69,'EXECUTED','8:6662f8b0b611caa359fcf13bf63b4e24','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-02-20 10:38:21',70,'EXECUTED','8:9e6b8009560f684250bdbdf97670d39e','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.8.0',NULL,NULL,'8393086101'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-02-20 10:38:21',71,'EXECUTED','8:4223f561f3b8dc655846562b57bb502e','addColumn tableName=RESOURCE_SERVER','',NULL,'4.8.0',NULL,NULL,'8393086101'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-02-20 10:38:21',72,'EXECUTED','8:215a31c398b363ce383a2b301202f29e','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8393086101'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-02-20 10:38:21',73,'EXECUTED','8:83f7a671792ca98b3cbd3a1a34862d3d','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8393086101'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-02-20 10:38:21',74,'MARK_RAN','8:f58ad148698cf30707a6efbdf8061aa7','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.8.0',NULL,NULL,'8393086101'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-02-20 10:38:21',75,'EXECUTED','8:79e4fd6c6442980e58d52ffc3ee7b19c','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-02-20 10:38:21',76,'EXECUTED','8:87af6a1e6d241ca4b15801d1f86a297d','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-02-20 10:38:21',77,'EXECUTED','8:b44f8d9b7b6ea455305a6d72a200ed15','addColumn tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-02-20 10:38:21',78,'MARK_RAN','8:2d8ed5aaaeffd0cb004c046b4a903ac5','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-02-20 10:38:21',79,'EXECUTED','8:e290c01fcbc275326c511633f6e2acde','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-02-20 10:38:21',80,'MARK_RAN','8:c9db8784c33cea210872ac2d805439f8','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-02-20 10:38:21',81,'EXECUTED','8:95b676ce8fc546a1fcfb4c92fae4add5','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-02-20 10:38:21',82,'MARK_RAN','8:38a6b2a41f5651018b1aca93a41401e5','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-02-20 10:38:21',83,'EXECUTED','8:3fb99bcad86a0229783123ac52f7609c','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-02-20 10:38:21',84,'MARK_RAN','8:64f27a6fdcad57f6f9153210f2ec1bdb','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.8.0',NULL,NULL,'8393086101'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-02-20 10:38:21',85,'EXECUTED','8:ab4f863f39adafd4c862f7ec01890abc','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-02-20 10:38:21',86,'EXECUTED','8:13c419a0eb336e91ee3a3bf8fda6e2a7','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.8.0',NULL,NULL,'8393086101'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-02-20 10:38:21',87,'EXECUTED','8:e3fb1e698e0471487f51af1ed80fe3ac','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-02-20 10:38:22',88,'EXECUTED','8:babadb686aab7b56562817e60bf0abd0','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.8.0',NULL,NULL,'8393086101'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',89,'EXECUTED','8:72d03345fda8e2f17093d08801947773','addColumn tableName=REALM; customChange','',NULL,'4.8.0',NULL,NULL,'8393086101'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',90,'EXECUTED','8:61c9233951bd96ffecd9ba75f7d978a4','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.8.0',NULL,NULL,'8393086101'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',91,'EXECUTED','8:ea82e6ad945cec250af6372767b25525','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8393086101'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',92,'EXECUTED','8:d3f4a33f41d960ddacd7e2ef30d126b3','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',93,'MARK_RAN','8:1284a27fbd049d65831cb6fc07c8a783','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',94,'EXECUTED','8:9d11b619db2ae27c25853b8a37cd0dea','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.8.0',NULL,NULL,'8393086101'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',95,'MARK_RAN','8:3002bb3997451bb9e8bac5c5cd8d6327','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-02-20 10:38:22',96,'EXECUTED','8:dfbee0d6237a23ef4ccbb7a4e063c163','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',97,'EXECUTED','8:75f3e372df18d38c62734eebb986b960','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.8.0',NULL,NULL,'8393086101'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',98,'MARK_RAN','8:7fee73eddf84a6035691512c85637eef','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8393086101'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',99,'MARK_RAN','8:7a11134ab12820f999fbf3bb13c3adc8','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8393086101'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',100,'EXECUTED','8:f43dfba07ba249d5d932dc489fd2b886','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8393086101'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',101,'MARK_RAN','8:18186f0008b86e0f0f49b0c4d0e842ac','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8393086101'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',102,'EXECUTED','8:09c2780bcb23b310a7019d217dc7b433','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-02-20 10:38:22',103,'EXECUTED','8:276a44955eab693c970a42880197fff2','customChange','',NULL,'4.8.0',NULL,NULL,'8393086101'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-02-20 10:38:22',104,'EXECUTED','8:ba8ee3b694d043f2bfc1a1079d0760d7','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.8.0',NULL,NULL,'8393086101'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-02-20 10:38:22',105,'EXECUTED','8:5e06b1d75f5d17685485e610c2851b17','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-02-20 10:38:22',106,'EXECUTED','8:4b80546c1dc550ac552ee7b24a4ab7c0','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.8.0',NULL,NULL,'8393086101'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-02-20 10:38:22',107,'EXECUTED','8:af510cd1bb2ab6339c45372f3e491696','customChange','',NULL,'4.8.0',NULL,NULL,'8393086101'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-02-20 10:38:22',108,'EXECUTED','8:d00f99ed899c4d2ae9117e282badbef5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-02-20 10:38:22',109,'MARK_RAN','8:314e803baf2f1ec315b3464e398b8247','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.8.0',NULL,NULL,'8393086101'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-02-20 10:38:22',110,'EXECUTED','8:56e4677e7e12556f70b604c573840100','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.8.0',NULL,NULL,'8393086101');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('a70d8574-d800-4bf9-b056-6e5e23c893a0','0fa7e9ad-e2f0-4f1b-8514-d9e63331db32',_binary ''),('a70d8574-d800-4bf9-b056-6e5e23c893a0','13b9d4bc-a336-4163-bcae-f19eda4a62a1',_binary '\0'),('a70d8574-d800-4bf9-b056-6e5e23c893a0','206bac63-87bc-4564-8f26-0b3e8be53ab5',_binary '\0'),('a70d8574-d800-4bf9-b056-6e5e23c893a0','5cb3ac0b-1eca-4dd0-a219-5f53bc718a69',_binary '\0'),('a70d8574-d800-4bf9-b056-6e5e23c893a0','66c40941-9494-4655-a4d1-b39747628fe1',_binary ''),('a70d8574-d800-4bf9-b056-6e5e23c893a0','93d470ca-4e8b-47c1-a8fb-2ff7738e4904',_binary ''),('a70d8574-d800-4bf9-b056-6e5e23c893a0','950dc59f-2d62-44a4-8193-1dce8ddda3d9',_binary '\0'),('a70d8574-d800-4bf9-b056-6e5e23c893a0','987be8ba-1f5c-4ba4-973c-aafe724432cb',_binary ''),('a70d8574-d800-4bf9-b056-6e5e23c893a0','e252f14e-a73f-4662-aeab-f50b4c87e2a7',_binary ''),('a70d8574-d800-4bf9-b056-6e5e23c893a0','ea43c59a-cdde-4a84-8791-1708e9a479be',_binary ''),('org1','6da609f5-cd9e-4472-afb9-5d478fa1d70c',_binary ''),('org1','8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7',_binary '\0'),('org1','b413fa37-7ed0-4913-bb5e-c088d11a99cc',_binary ''),('org1','b5b05161-1c23-4445-bfdc-bbebcf8e5c8a',_binary ''),('org1','cb1b0c2e-4add-489d-8517-bb88ef50c24e',_binary ''),('org1','cfde5547-09bf-450f-b5cf-a678ba2aa3e8',_binary '\0'),('org1','d7b2d83f-c615-4e9d-9497-629559cc4f99',_binary ''),('org1','d9d8aace-cb83-4e3b-9f16-3965847e9621',_binary '\0'),('org1','dd30a119-1d1f-440e-8ee2-ffaf7bd50a3c',_binary '\0'),('org1','eb802de4-bbe0-49fc-a498-4c0339472151',_binary ''),('org2','1a577a40-5094-48f6-957e-89d2b5e9f9e7',_binary '\0'),('org2','3a83ab02-90c9-4f6d-82dc-6c839da88a46',_binary '\0'),('org2','621897db-a9ad-4a35-9fc4-cd1cb69705d0',_binary ''),('org2','7e655cc8-3479-4b27-8023-e8a06129d636',_binary ''),('org2','8685de15-f034-483e-a395-fa9a8d596b2b',_binary ''),('org2','90302b33-324d-4142-92df-e1e10647b96e',_binary ''),('org2','9a6dad5a-9059-4e7c-92bc-132a8613d62b',_binary ''),('org2','fb76d52b-d65a-455e-842a-6acb6c346f72',_binary '\0'),('org2','fc36343d-c158-480c-bd20-497043c0fe34',_binary ''),('org2','fe6c9b31-8f14-4daa-9515-a8815a0860fd',_binary '\0'),('org3','02c77bb9-dc7a-4b69-b184-033779babc69',_binary '\0'),('org3','2d356d40-6a2c-4457-89ff-1f1e617fcde5',_binary ''),('org3','3e8ad8d8-1515-4856-8366-55694e7f6bf2',_binary '\0'),('org3','6d3e0f6a-4683-44c2-813b-2882465957fc',_binary ''),('org3','79e4708a-b6c6-44e0-8aae-3c95960a0afc',_binary '\0'),('org3','94b26221-2526-4259-aaf6-ecc51bf41dc1',_binary ''),('org3','97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4',_binary ''),('org3','c33de27d-ddf1-4e39-a650-f6b26a39c94d',_binary '\0'),('org3','daa41647-fc41-48ea-a9f2-6967459da29c',_binary ''),('org3','f265e752-3d01-414e-85c1-e3e870588982',_binary ''),('org4','11770d66-6a8f-4949-9a37-bbf4af84a032',_binary ''),('org4','4f00de62-1158-4023-83b1-0147d7be9c68',_binary '\0'),('org4','7c73a29f-e1d1-483b-90d7-5d852b2936d9',_binary '\0'),('org4','a9903e1c-e3a5-475c-9475-f6251361641b',_binary ''),('org4','ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f',_binary ''),('org4','cbebef4f-8d02-451d-97b5-3e5bb76f7ad3',_binary '\0'),('org4','d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6',_binary ''),('org4','dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509',_binary ''),('org4','ed029170-1b1d-42ce-acd2-6b201c69d739',_binary '\0'),('org4','fdd1c112-22eb-481a-a2f4-9d320c13bb28',_binary ''),('org5','1f8b5a99-1f79-436d-9c94-3bebc42e81bc',_binary ''),('org5','34a94317-ae1c-49cd-a77d-5bc6cb1787f6',_binary '\0'),('org5','3f93a4b3-6109-487c-adaf-b282b6bb1afa',_binary ''),('org5','576d8337-1132-4382-9d79-f647f0caf3a7',_binary ''),('org5','71437e46-4708-4c50-adfa-74f6bf31881d',_binary '\0'),('org5','b134adf0-02e5-4df7-b0a7-482507645fbe',_binary ''),('org5','e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1',_binary '\0'),('org5','edc82ef9-2950-4118-aa58-8380b891a9e2',_binary '\0'),('org5','eebab16d-7773-4c8a-896c-8db6747d91c3',_binary ''),('org5','f2201541-c2b3-4ca5-ae21-5d1f163e746d',_binary '');
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('005d1ab6-c74a-4e9d-8321-f804d02623f3','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_view-events}','view-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('00c0fbcc-3ad8-43d0-a23f-a13b757f2328','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_manage-account-links}','manage-account-links','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('01125568-2d83-4e28-9bfe-4a830cdb902b','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_create-client}','create-client','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('01242c4e-325f-4cd4-9670-c572acadd993','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_manage-users}','manage-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('021545f0-0b93-4033-bbd4-d67649176c98','f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',NULL,'_ws2-admin','org4','f75eef0e-f758-4c23-9fe4-1173c210d99e',NULL),('02712e6f-d329-4f1e-aff3-c330963e1ba1','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_query-groups}','query-groups','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('029123b4-9c3b-40e2-9e86-55707fdbc1a7','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_query-realms}','query-realms','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('0295f69a-8a55-4691-b174-e15c91011e55','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_manage-realm}','manage-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('02c1a0c0-632b-426e-9d34-88168bd677c3','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_manage-clients}','manage-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('0302167a-adf7-46b2-a19e-8b39f4c1c6b6','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_create-client}','create-client','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('053f23c0-1e84-4bf4-b3dd-ebbbb1a369de','f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',NULL,'_organization-user-role-manager','org4','f75eef0e-f758-4c23-9fe4-1173c210d99e',NULL),('05879285-92dc-4247-a20e-2f6b2c36caef','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_manage-consent}','manage-consent','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('05936ef4-f33a-48a3-a3ef-afc163e1b8a8','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_ws3-admin','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('05b1fb06-8879-4d5c-ab49-2656015f530b','org2',_binary '\0','${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('0610a875-8315-4220-865a-6571a59d9b93','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_manage-identity-providers}','manage-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('07b4313b-6906-4d53-bdac-f4309d4e8f45','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'ws1','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('0a01292f-e2d9-4799-be1e-af7268be5e61','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_manage-users}','manage-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('0a44696f-fa99-4fd5-a15c-5cb79858c174','org5',_binary '\0','${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('0cf59a17-944c-4ae3-bacd-a2c81692c291','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_manage-events}','manage-events','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('0d57cf5e-67fd-4204-81cb-fe8678cbff1e','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_manage-account-links}','manage-account-links','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('0e403976-e23d-4c9f-b7d7-64a26aa3f95c','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_view-consent}','view-consent','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('0ef5fa95-5eb2-4d58-b701-265df023cf10','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_view-identity-providers}','view-identity-providers','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('0f953449-d2dd-4ce5-aee1-9a126d766f68','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-role-usr','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('0fceb9d4-5626-43a6-9b60-69e4bf929ba5','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_view-realm}','view-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('1100e27e-2195-4894-a4c8-a70485b3a473','dba012d2-d051-4938-ab35-1b5e65905028',_binary '',NULL,'_ws3-admin','org2','dba012d2-d051-4938-ab35-1b5e65905028',NULL),('1101c16a-8ad8-46ba-8da4-c42b96bc84e8','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'ws2','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('1133e6a6-1c5a-49b4-8011-28c25003a768','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_ws3-admin','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('115ddd9b-58ad-46ce-8d78-314db33063a4','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-ws-role-mt','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('119b4a3c-ce42-4456-975a-38934a6d35ec','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-usage','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('124ba0ff-ac09-4ac9-860f-dbf22ecbe554','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_delete-account}','delete-account','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('12b906dd-7360-4383-ba22-79f4f525470e','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_manage-consent}','manage-consent','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('1325cacd-320d-4249-be8f-b35936702e73','org3',_binary '\0','${role_default-roles}','default-roles-org3','org3',NULL,NULL),('13d758eb-571d-46ec-b69d-62f9e4954c3f','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_view-clients}','view-clients','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('14e58d93-4349-42c1-9667-207607c0b8f0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_manage-authorization}','manage-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('15711b4e-c00d-4701-b2c1-d6b12b768ee0','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_view-authorization}','view-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('1594cef3-3645-4d27-a97f-f0195cff9e1f','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_view-identity-providers}','view-identity-providers','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('15995e9d-cfb9-4f48-b4ff-bbac9180e1a8','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_ws1-admin','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('15bd44ae-1878-426d-b5da-9a615b3064e3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_query-groups}','query-groups','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('17848707-df74-4e00-a74e-202f63155f9c','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_ws3-admin','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('1822f841-6491-4cde-8561-0ad1671a66db','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-usage','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('1836cc40-0670-4a41-be49-44e3d9ca0818','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_query-clients}','query-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('183ba49b-e28f-4e1a-a92f-524f20f50cbf','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_manage-clients}','manage-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('186114e8-5cc5-4c66-a735-cceea4aa35fe','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-upd','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('189c0b3d-1581-4733-8a09-c4318d09452d','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_view-applications}','view-applications','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('19f9fc14-b030-4b44-85e5-af30c878ea2f','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_view-profile}','view-profile','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('1c8578f9-4975-4211-9793-969c876d7021','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_view-identity-providers}','view-identity-providers','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('1d8000f8-c681-40c1-8907-ac7214032c9c','f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',NULL,'_organization-user-manager','org4','f75eef0e-f758-4c23-9fe4-1173c210d99e',NULL),('1e521a28-2bbb-4d94-802c-c74303b568df','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-ws-role-usr','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('1ebd50ff-5ac5-41bb-96de-5311836a66c8','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_query-users}','query-users','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('1fd0db8e-a95c-4f84-9a20-3ba4843c642b','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-ws-role-mt','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('2033d29f-23c0-4aa5-8840-5187aef4055a','eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',NULL,'_ws2-admin','org5','eb21f87d-406d-4f0d-aba8-d431ad07f140',NULL),('207b8a06-759b-41a8-8f27-e7cd4c484ed8','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_query-realms}','query-realms','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('20a04a5e-a0bf-4f20-ac6a-953b070838f5','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-usr-mt','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('21d29a08-1e92-40a6-97ff-c221e085d375','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_manage-account-links}','manage-account-links','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('23e8012b-6a77-4080-aac6-819aa7ae6278','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_manage-identity-providers}','manage-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('25cc5be6-3b57-43ab-bcf1-e2dc6ffbe364','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_manage-realm}','manage-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('2673bd5c-40f8-41c6-9ba5-804ba8d845e9','7e194037-1868-43db-8bad-6575ce155ad0',_binary '','${role_read-token}','read-token','org3','7e194037-1868-43db-8bad-6575ce155ad0',NULL),('27bd2191-8c79-4cf7-822d-c531cbf07e06','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'ws2','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('28797caa-a53e-412b-a509-c92fc8538388','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_manage-events}','manage-events','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('29041bd5-27d5-4c2d-8bd1-588f81f7e393','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_view-users}','view-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('29507e5d-d253-4b7a-8606-a66dbc172f22','eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',NULL,'_ws3-admin','org5','eb21f87d-406d-4f0d-aba8-d431ad07f140',NULL),('2c877d68-2d45-4f79-85ba-09b386a7f7ee','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_view-consent}','view-consent','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('2cd76087-d1fe-4284-9cad-fe40e1f50fb4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_manage-events}','manage-events','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('2ed4e09e-fd9a-406e-b1f8-54f599ce9e5f','70c5f08b-6633-44de-9dca-01057fdc100e',_binary '','${role_read-token}','read-token','a70d8574-d800-4bf9-b056-6e5e23c893a0','70c5f08b-6633-44de-9dca-01057fdc100e',NULL),('2fb5a846-eeef-4b9c-bc9f-4c6d96050f0c','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_view-events}','view-events','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('3010fd4c-2f89-44b0-9064-a7060ae3e650','eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',NULL,'_organization-user-role-manager','org5','eb21f87d-406d-4f0d-aba8-d431ad07f140',NULL),('304aa6e3-a3aa-4ca8-a73b-2298e532a45e','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_manage-realm}','manage-realm','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('31516bc0-36a0-4918-8fc6-9d4e6c5dc041','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_delete-account}','delete-account','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('317616dd-07f6-4a16-b7ca-864b23ef7200','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_view-authorization}','view-authorization','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('328f053b-14f8-47d0-bee5-3d79b0559f27','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_ws1-admin','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('32ed92fb-e34d-4ee2-9ba9-f4bbfcf80b24','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-ws-mt','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('3326524f-80e7-4b1f-8a49-88180e7c3386','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-usage','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('33807288-4c79-42ca-86cb-82e542e44194','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-own-mt','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('34418a5b-12ad-4495-b04c-c2e0924a3178','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_ws3-admin','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('3480b3b3-d359-40f3-a200-5b1a04e0149a','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_query-groups}','query-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('34af2c96-e367-4a5a-b3ed-40f02f591b7b','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-ws-role-usr','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('3960adb0-09a5-426a-aeb6-effd40d8322f','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_query-realms}','query-realms','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('399474fa-762d-4782-84a7-a85c7d7ff783','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_delete-account}','delete-account','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('3a14b4ef-34b0-4d8f-8e91-de5d1c67c98b','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0','${role_offline-access}','offline_access','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,NULL),('3a3d8684-2c7f-4f77-b1f4-f0fda8380c7a','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_manage-consent}','manage-consent','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('3a83ba4b-0f55-41ff-929e-a22c763c02b4','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_create-client}','create-client','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('3af17d1d-4354-4c45-a807-bf3570bae00d','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_manage-events}','manage-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('3b03c7e0-0b51-4519-9a93-59b5f1f0f0cc','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_manage-clients}','manage-clients','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('3b0b8802-da21-478a-a7db-79db1a660ad7','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_manage-identity-providers}','manage-identity-providers','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('3b3f8455-b342-47ae-b173-0c75aae68a1f','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_manage-users}','manage-users','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('3bf734a5-b1c3-4113-8978-1ad0e6b24511','d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',NULL,'_organization-user-manager','org3','d00ef4ab-386a-4f9c-8854-0d712ace428e',NULL),('3c0a8a41-6580-41db-b5d6-b2857642a90d','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-ws-mt','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('3c4591c7-53c4-48c1-80f9-516cbd25f250','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_manage-identity-providers}','manage-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('3c68f530-a066-41bd-8492-f7cfeded4d4b','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_impersonation}','impersonation','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('3df42d2e-8ec2-40c7-a6c5-13e8e495c3c5','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_query-groups}','query-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('3faf0a0d-aa21-4950-9a30-35a8380c6c2b','org3',_binary '\0','${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('3fec3054-04e5-4502-b5cb-8178743bdcb1','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_query-groups}','query-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('42739639-b61c-47e7-a825-e30099a7376e','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_manage-clients}','manage-clients','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('43f6e3ce-1a54-46d9-be14-1f98f85d3725','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_ws1-admin','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('442614df-362f-4170-a379-b07551c43cce','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',NULL,'_ws3-admin','org1','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',NULL),('44a58663-d07d-43ee-b323-0142e9c33edb','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_manage-realm}','manage-realm','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('457029d5-2897-4a58-8b88-ec25a871a1f6','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_realm-admin}','realm-admin','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('463e0f95-16bf-410c-8c10-85c076dbbaea','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_view-identity-providers}','view-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('46b8b0d8-7370-4466-a6bd-36330c6140cf','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_view-events}','view-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('46d70921-9cdf-4600-b13b-4a5b2d9386fb','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_manage-realm}','manage-realm','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('4764cac3-c558-48a9-b62e-032dfa81d8c6','d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',NULL,'_ws1-admin','org3','d00ef4ab-386a-4f9c-8854-0d712ace428e',NULL),('47fac22b-bfa5-496f-ae65-dc2430d266c2','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_view-clients}','view-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('48aeed94-acf6-480b-92ab-0977c3580ee1','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_view-events}','view-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('490c0f53-b6ec-448b-acab-2668e9b15ad5','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_manage-events}','manage-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('4944cf01-d0fe-42b5-90c6-d24b27a4f951','eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',NULL,'_organization-user-manager','org5','eb21f87d-406d-4f0d-aba8-d431ad07f140',NULL),('4970cfd3-d86a-4cbb-a74c-a2fc8c08e8eb','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_query-clients}','query-clients','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('4a9ec044-268c-47d2-85a3-c839b2096290','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_impersonation}','impersonation','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('4add2f1c-ca8a-4513-a7df-2ae50a21c0a3','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_manage-identity-providers}','manage-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('4af03a2a-86a2-43d6-bb24-e60e597bcb8a','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-upd','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('4b4e0e86-c8d0-4072-934f-70ea19edf095','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_query-groups}','query-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('4d088a3b-c09d-4360-af13-36063ae71427','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_query-users}','query-users','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('4d310ccd-f211-462c-8ff3-482a9e54e693','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_manage-users}','manage-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('4dbe1e9d-83b4-4184-a1c8-5c57016a7eb6','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_view-realm}','view-realm','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('4e7105cb-a8ea-4f8e-9887-dbe81bb4d69b','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_manage-clients}','manage-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('4f1c50ff-cb8c-44c8-bdb3-030af3c4e98f','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-role-usr','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('4f68d1f5-0304-4fca-8c97-2da3d9338774','org4',_binary '\0','${role_offline-access}','offline_access','org4',NULL,NULL),('50c1e3d6-6588-49c6-88a0-599b775923fc','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_query-users}','query-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('529531a5-c4b5-4955-ad0b-107a489d5e79','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'ws3','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('53492915-cecb-41e9-a84c-5c141643bdae','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_query-groups}','query-groups','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('540c802f-0cc4-4c4f-91f9-626a9f6a346d','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_view-applications}','view-applications','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('5641b7b3-c744-42ea-9242-1fce8af07d7e','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_view-authorization}','view-authorization','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('56c27a05-9313-485d-a264-b836fbb539a5','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_manage-account-links}','manage-account-links','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('573cee1b-de01-4d38-8df3-ca769aa8bac3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_view-users}','view-users','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('57afdbc0-659a-4b08-9570-f1f0068002ff','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_manage-consent}','manage-consent','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('57bf1978-193c-445a-820c-56c8ddf5ec1f','5163e980-4bbb-4faa-a252-4908f080c6eb',_binary '','${role_read-token}','read-token','org4','5163e980-4bbb-4faa-a252-4908f080c6eb',NULL),('57fdd497-0c19-4686-8694-ac2516da78c1','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_impersonation}','impersonation','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('5812a5b0-5b3f-4add-b059-8197110a4431','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_impersonation}','impersonation','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_realm-admin}','realm-admin','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('5b57741e-cf81-45cd-835e-fb6aba34a177','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_view-users}','view-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0','${role_admin}','admin','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,NULL),('5cbf9bb4-1cc7-43bb-a511-e5c1757f8724','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_view-events}','view-events','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('5cde97f6-0343-43a6-b002-2fd8f98295d1','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_manage-consent}','manage-consent','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('5ebf1768-daf3-4c26-a70d-803ade23006c','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_manage-clients}','manage-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('5f4f5eca-eada-40c7-81b1-ca59df9b91ea','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_view-realm}','view-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('6077efe1-1e01-4be3-84e5-f243f34f6feb','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_manage-account}','manage-account','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('612bcb15-44ac-4aaa-9311-0f85c4f283be','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_manage-authorization}','manage-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('616f56ac-0694-4adb-abd2-4432a5357284','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_view-users}','view-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('619c9b0f-4efc-4994-b3bc-4e937c933154','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_ws2-admin','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('61ead677-7a37-4783-bfdf-77f80d6c05a1','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_manage-events}','manage-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('633f3924-0292-4bc5-ae48-b0dc5ba66007','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-role-usr','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('64f69771-43f0-4219-b2ed-90045dd03a9d','dc643bd7-fe8a-46c6-909f-f247504d314e',_binary '','${role_read-token}','read-token','org2','dc643bd7-fe8a-46c6-909f-f247504d314e',NULL),('64fbd5ba-5d3a-48ba-ae90-15a9bf2a83d9','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_view-users}','view-users','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('65abb1ea-5c85-4557-a18f-84060206c2fc','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_manage-clients}','manage-clients','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('661fb165-61a7-4855-b4ae-e50420ba13c7','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_view-users}','view-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('665ce16e-9df0-45ad-b558-34493ee6f698','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_manage-users}','manage-users','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('667e714a-c466-4218-9f7a-49a32b0bdcb8','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_manage-users}','manage-users','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('66f61e23-df3f-42df-918a-ceef7f58ee89','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_view-consent}','view-consent','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('671a747b-0091-4774-b6b7-2121cf56c4a0','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_impersonation}','impersonation','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('67f6af5b-ec42-4cbb-a7ea-95412ffe53d8','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_query-clients}','query-clients','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('680fc72d-ab07-4422-8c43-33d14dce61d3','org3',_binary '\0','${role_offline-access}','offline_access','org3',NULL,NULL),('68350ff4-f68f-46aa-adaa-6e79b5a981a5','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_view-consent}','view-consent','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('6957c2ff-5fff-4e1a-8281-28834cefe43a','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_manage-authorization}','manage-authorization','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('6a3ea47d-d244-4579-91b4-c82b444407cc','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_manage-identity-providers}','manage-identity-providers','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('6a4d29a6-3c98-44f1-aac0-0004a6ce6bd1','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_query-realms}','query-realms','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('6aeded6c-6812-4aa2-86dc-9d40a0dfae33','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_manage-clients}','manage-clients','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('6cad8210-9fe6-4f31-97f0-4dd33b40774f','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_manage-authorization}','manage-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('6d110fa3-feee-4970-9d00-986cb85a7198','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-usage','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('6d2917dc-f1ed-4691-9a66-9a10b4faa39c','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-usr-mt','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('6dad41b6-9036-491d-b53f-348ef85e4953','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_create-client}','create-client','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('6e07c301-560b-4e61-8d38-0d4284060f50','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_query-clients}','query-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('6e65454e-d568-4658-9261-e7977149cecf','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_query-realms}','query-realms','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('6ef00898-fb4e-46f0-ae1d-c1d434d83b53','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_query-realms}','query-realms','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('7012f138-b3f9-4b83-a6ea-2b5a4ce8c846','org5',_binary '\0','${role_offline-access}','offline_access','org5',NULL,NULL),('7027476c-3d1b-4987-99a1-5901001860ec','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_query-groups}','query-groups','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('70af20ac-482c-424c-a1fb-d1da02245caa','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_manage-events}','manage-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('70bb1639-fd22-4351-a76f-ee3074712a74','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_manage-identity-providers}','manage-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('712ebf39-e76c-4f9c-997d-636ac16aa3ad','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_query-realms}','query-realms','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('71c9b13e-4745-4e86-9414-0e25beb6f2de','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_query-realms}','query-realms','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('71e455a0-756c-49f5-b040-9512d76ed84d','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_ws2-admin','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('71f70341-d4e7-4c43-b655-f357e6919807','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_view-clients}','view-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('73a42418-b95f-4926-a906-9184e53aa1b0','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_view-applications}','view-applications','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('74efc8e1-21cd-4e06-8442-d57684edcff0','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_query-realms}','query-realms','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('75d4df98-656d-4108-8646-65fa94c1cc00','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_create-client}','create-client','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('76f92048-29ff-44f8-a679-fbc8a0eddbd3','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_manage-authorization}','manage-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('770d6db4-1714-4c58-a4b2-c6552f62e327','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_manage-authorization}','manage-authorization','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('7732f366-951c-4370-8752-37225af5f1fe','db0af77b-75fa-44fd-8de6-38bc3292ab86',_binary '','${role_read-token}','read-token','org5','db0af77b-75fa-44fd-8de6-38bc3292ab86',NULL),('77d1bfd9-0aaf-407b-9993-2ef0e009c753','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-own-mt','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('7886bd0a-0163-4b56-8160-e999ecade091','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_view-profile}','view-profile','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('78922e8e-71e8-466f-ac22-88fcd7682077','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-role-usr','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('7bf8324f-8f1a-44f0-b53d-c8d6b244e3ef','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-ws-role-usr','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('7bfb1d52-3da1-4fed-bd82-c168e3f2df2b','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_view-applications}','view-applications','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('7cefb986-18db-4989-b32b-ee83cf364d88','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_manage-clients}','manage-clients','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('7d03b875-425a-49b1-972e-65a49c78aba7','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_view-authorization}','view-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('7d2849cd-61d2-4fc5-91f0-43ecf6bf2c36','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_manage-authorization}','manage-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('7e5c2316-f982-4876-8b8e-ac8060e424ab','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'ws1','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('7e60abfe-3ee7-44a7-8781-454cbbd30214','org1',_binary '\0','${role_offline-access}','offline_access','org1',NULL,NULL),('7e80136d-3a16-44c4-9f4c-b99a7692677b','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_query-users}','query-users','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('8009dcaa-dc92-4a82-83c7-f1f2242b4e43','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_impersonation}','impersonation','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('8100cea0-2d93-4715-842b-c044a287f496','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_manage-consent}','manage-consent','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('81b88217-93c0-4b9a-b7d6-98d69def314b','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_manage-clients}','manage-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('826e2452-2cdf-4263-b26b-19ef77952711','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_view-events}','view-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('828cf8c7-4dae-4756-9c2e-711c86f4017e','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_query-realms}','query-realms','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('83175b25-653f-4837-be23-3514f6fb635c','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_query-clients}','query-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('833a2a5f-2f1c-4619-b82a-de5259ef8466','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_delete-account}','delete-account','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('836009c3-a5ec-4aa1-8640-a191ce3cc036','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-ws-mt','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('83bcf752-a359-43bb-a5cc-5f6eed3666bc','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_view-realm}','view-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('841a718f-509b-431e-95a1-77bc4eebf918','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_delete-account}','delete-account','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('85a4f8f0-6658-4326-a3e6-b84248e751d5','dba012d2-d051-4938-ab35-1b5e65905028',_binary '',NULL,'_organization-user-role-manager','org2','dba012d2-d051-4938-ab35-1b5e65905028',NULL),('86255410-c9ef-490c-a2d3-db2b922bd97c','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_query-clients}','query-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('86758c97-abb2-4550-b393-655eaf3c8c12','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'ws2','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('86d1bb57-0fab-4837-88ef-8bda55d716ee','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_view-realm}','view-realm','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('876e0441-a205-41c5-b5bc-efb6244ddfc4','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_manage-events}','manage-events','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('8819e0da-b589-493d-866f-44936f30fa31','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_manage-authorization}','manage-authorization','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('882278ec-aa75-47f6-a6f1-cfe498099be6','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_view-profile}','view-profile','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('8a7c8b86-b6cb-42db-b200-1efa48d8c7fe','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_view-clients}','view-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('8b2c5807-3c13-410c-8c70-d686343fb799','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_view-clients}','view-clients','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('8c78cc3f-8c01-416f-9359-65a79a6e4fe9','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_view-applications}','view-applications','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('8ceef58b-5a30-4751-9ac8-d998bda1f469','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_manage-realm}','manage-realm','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('8cf69528-68ba-485e-a3bb-68a57af8f41f','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0','${role_create-realm}','create-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,NULL),('8d73f8a6-c0f6-4930-a276-ae708f949d5d','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_manage-users}','manage-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('8f708f54-9d16-4452-8ba9-8eea248e86f0','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_impersonation}','impersonation','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('91554470-8af8-4f4e-9839-b2cda59c0469','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_view-realm}','view-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('9335183d-ed9f-4c69-90ca-e46312ad1ad9','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_query-groups}','query-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('934063eb-9737-4c22-8b6f-c9eaa178d56b','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_manage-events}','manage-events','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('93e2ef7d-d112-4a90-a218-fb081ff470bd','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_query-users}','query-users','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('9510563c-cdaa-40f3-bbdc-9afcbd5d31b7','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_query-users}','query-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('956ea49f-1c2b-4be4-9936-1e3683155246','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_view-clients}','view-clients','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('95712aea-0717-4ccd-a567-620bd2eda7d4','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'ws3','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('95b4e333-f4e5-42d0-84e2-10985085dbed','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_query-clients}','query-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('96300188-8ba6-45fb-a7d1-71425c161f67','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_view-clients}','view-clients','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('96f7ff77-b40e-47b9-8d5f-3a5f9da70ffd','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_query-groups}','query-groups','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('9880268c-b0b5-4719-8cd3-a00031487f87','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_view-groups}','view-groups','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('98a29abf-d04e-40ea-b0cc-c27fa89e800c','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_view-realm}','view-realm','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('9960137a-cd85-4e0a-a279-4f2e886ed293','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-usr-mt','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('99931a95-d84a-486d-9893-f2e104c1684b','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_manage-events}','manage-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('99d30446-ac06-414b-b156-17ec86ddc2f5','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_query-users}','query-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0','${role_default-roles}','default-roles-master','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,NULL),('9b549f86-3b52-4eac-a6a5-067d6e63cade','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-upd','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('9b8dbdcb-f267-4d5f-8f70-0e50905f54a4','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-upd','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('9ba7d463-d032-420e-87d7-5ce0bd73cbec','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_manage-authorization}','manage-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('9bbc2ed6-fc5e-4814-9bd6-c90ce4069398','f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',NULL,'_ws1-admin','org4','f75eef0e-f758-4c23-9fe4-1173c210d99e',NULL),('9bff6e17-1d5f-48b2-ae72-25ed1ea9fc60','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'ws2','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('9c27b3e5-0264-47a1-842f-48bcaf18b136','org2',_binary '\0','${role_offline-access}','offline_access','org2',NULL,NULL),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','org4',_binary '\0','${role_default-roles}','default-roles-org4','org4',NULL,NULL),('9cf53417-b175-4dde-83f1-544bbd3ddbc6','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_view-events}','view-events','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('9d878224-d6b1-44b2-bb0f-c8c1454e64fa','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_query-clients}','query-clients','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('9e7d47d3-4697-4bdd-85fe-175180a1aca2','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_view-consent}','view-consent','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('9f8b9623-3c08-49da-aae3-bd7876f1c90d','dba012d2-d051-4938-ab35-1b5e65905028',_binary '',NULL,'_ws2-admin','org2','dba012d2-d051-4938-ab35-1b5e65905028',NULL),('9f9ecd06-ae26-4f7e-bde7-b1b9b7b8e9ae','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_manage-identity-providers}','manage-identity-providers','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('a1b22de5-c633-4fd7-b359-040f184ac8d8','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_create-client}','create-client','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('a2039408-4697-493d-bde9-cfe999fdd45b','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'ws3','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('a2a4f120-32ab-4f47-b1e3-e46dcc7ee170','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',NULL,'_organization-user-manager','org1','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',NULL),('a305fdd7-6a8e-4fd7-b3ba-8ebe96869f12','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_query-users}','query-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('a38cc62f-1acf-41e2-8094-046551f91baa','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_manage-account-links}','manage-account-links','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('a5947e67-2cb7-48a7-a6be-00fcdf865e11','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'ws1','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('a5d81936-b774-4aeb-a529-847b9721b727','dba012d2-d051-4938-ab35-1b5e65905028',_binary '',NULL,'_organization-user-manager','org2','dba012d2-d051-4938-ab35-1b5e65905028',NULL),('a6030605-ded8-450b-947b-76e70809a1eb','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_query-users}','query-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('a6d22921-f778-404d-9506-e1551c12b97b','dba012d2-d051-4938-ab35-1b5e65905028',_binary '',NULL,'_ws1-admin','org2','dba012d2-d051-4938-ab35-1b5e65905028',NULL),('a7567ba9-3386-4f55-9c95-85f3a8c75311','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-ws-role-mt','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('a7b360f9-4610-4b6d-add4-6b631f64f18a','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_ws3-admin','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('a8036019-e713-46c7-b59c-3cebb60e42b5','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_view-realm}','view-realm','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('a80545fd-fa0b-4ce7-9f28-70f4023c2d3e','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_view-groups}','view-groups','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('a8b7cb5e-2854-48dd-8778-ea0ead879bca','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_view-profile}','view-profile','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('a9a05bce-34a2-4391-af8f-02ca40f38917','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_manage-account}','manage-account','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('a9ae74c4-55c4-4bd4-b303-90bbef9b442b','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_view-identity-providers}','view-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0','d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',NULL,'_ws2-admin','org3','d00ef4ab-386a-4f9c-8854-0d712ace428e',NULL),('a9f00ef3-e149-4748-95a9-3f75100eac30','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_delete-account}','delete-account','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('aae5d537-aaac-4138-9aa8-49ee0737a4c4','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-usr-mt','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('ad3c6bfa-ea80-46cf-b02e-6621007cc40f','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_manage-realm}','manage-realm','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('ae4ebb7d-c16a-4b41-9c18-87f889b4a5af','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_ws2-admin','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('afd54e81-3432-425a-a64a-3a11d891e3e5','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_manage-users}','manage-users','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('b0aecbe1-1bb6-4985-870c-ffe1724a5171','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-role-usr','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('b0e6f7ff-b689-456d-8f59-bdf25d2d71f1','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-ws-mt','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('b0fac1b2-536b-4c5c-8c54-e737480e58d9','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_manage-realm}','manage-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',NULL,'_organization-manager','org5','eb21f87d-406d-4f0d-aba8-d431ad07f140',NULL),('b2707b19-e83d-42bd-817d-25e89d832a0c','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_query-clients}','query-clients','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',NULL,'_organization-manager','org1','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',NULL),('b58ecca0-9438-4153-88eb-686ce18c24a0','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_query-realms}','query-realms','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('b5e04d73-1054-4c1c-ad9c-655aece12d3a','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_view-realm}','view-realm','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('b684cccc-e47a-4fea-8e98-13ee733abbb9','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_view-authorization}','view-authorization','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('b6edce90-962d-4358-b9dc-106ac8cb4d7c','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_view-groups}','view-groups','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('b876ea95-4d29-4c28-a215-0343d8dd76ee','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_view-authorization}','view-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('b933e9c9-eb74-4940-aa40-a866e39f9d8a','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_manage-authorization}','manage-authorization','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d','f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',NULL,'_ws3-admin','org4','f75eef0e-f758-4c23-9fe4-1173c210d99e',NULL),('bb620d5e-299b-4af6-8781-7cf2acd56ce3','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_view-clients}','view-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('bc422f70-d03b-45d3-8bb5-76dade2d9389','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_manage-users}','manage-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('bcdc31ff-8d36-412d-9765-aab459c081a6','d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',NULL,'_organization-user-role-manager','org3','d00ef4ab-386a-4f9c-8854-0d712ace428e',NULL),('bdcf389c-cb05-4eef-b44a-eb1e2698b8db','org4',_binary '\0','${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('bec9750c-b218-4dcf-b59a-2af80de6f1d5','eb21f87d-406d-4f0d-aba8-d431ad07f140',_binary '',NULL,'_ws1-admin','org5','eb21f87d-406d-4f0d-aba8-d431ad07f140',NULL),('bed9694a-ced5-49fd-bea1-939dcca395ae','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_manage-realm}','manage-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('c01bc485-f60d-4997-bd85-8f85b98f60f3','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_create-client}','create-client','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('c056f701-c206-4064-abd8-2ea804c110a2','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_manage-users}','manage-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('c0a65c6d-86ae-4691-8ecf-a905ecb24dd3','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_view-groups}','view-groups','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('c27839e3-894a-4156-aa3d-638a57e0b276','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_query-users}','query-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('c2994e1b-74bc-49a0-a54f-9d11d8941406','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_view-users}','view-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('c32d46c2-6cba-4f2e-b76e-a02c1513a819','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_impersonation}','impersonation','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('c37f34d9-6b44-4f92-8095-fa91a695460d','org1',_binary '\0','${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('c42853a5-ea2f-4141-8d79-be68ce6d90b2','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_view-identity-providers}','view-identity-providers','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('c656d506-cba8-4231-865b-d4f9c97ad529','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',_binary '','${role_create-client}','create-client','org2','d0f7138b-29ca-48ae-83c1-9cc5fb8c483f',NULL),('c6ee3848-11c6-4763-a6e7-17412e91d160','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_ws1-admin','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('c7084020-6cad-4520-824b-a241b1013073','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_query-clients}','query-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('c961b42b-f995-46ee-8362-40ef602980c0','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'ws3','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_realm-admin}','realm-admin','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('cac1e0ef-3867-4860-a55d-4ff16e8599ab','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_view-authorization}','view-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','org2',_binary '\0','${role_default-roles}','default-roles-org2','org2',NULL,NULL),('cc560bd9-348c-410e-be0f-27d974167769','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_query-clients}','query-clients','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('cc637b16-ffa7-4108-86f4-d08a23e5370f','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_view-authorization}','view-authorization','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('cd3bf325-0022-485f-8fcc-1c3deb5bd602','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_view-authorization}','view-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('cda22e09-66b3-4289-84aa-33b6c16b5ed3','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'ws2','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('cdc95c8d-0e44-449a-b362-37db6ed585bb','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_view-events}','view-events','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('ce1ea752-873a-49af-9b34-e7c38899b037','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_view-events}','view-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('cefedff9-bcd6-4525-a763-1800e7e74987','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_view-identity-providers}','view-identity-providers','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('d137f1e3-2916-42cf-8f34-873faed7eb3b','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_query-groups}','query-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('d160169c-1c11-4c19-930c-914cc77271c7','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_ws1-admin','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('d34838b9-4827-413f-a80b-f017cb5fb2af','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'ws3','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('d34c9f77-78d5-4bd7-b304-fe391e51b305','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_manage-events}','manage-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('d37101a8-04f7-438d-8bf1-bd53678c4c37','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_realm-admin}','realm-admin','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('d472843b-f198-4054-9568-6adb23fe7b64','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_manage-realm}','manage-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('d4a28e63-e44c-43c9-b16d-cb057e0e4947','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_view-applications}','view-applications','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('d5c081d1-bcb2-4271-9d90-2ef46aca18cd','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_view-identity-providers}','view-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('d67a40c1-632e-4925-b5e7-3d953486a933','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_view-clients}','view-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('d865455a-6934-41b7-8f91-7786ed837836','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0','${role_uma_authorization}','uma_authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0',NULL,NULL),('da54d79f-0962-4280-8ca4-d267f6e2fc3a','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_manage-identity-providers}','manage-identity-providers','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('da92e6ef-e748-4d32-94f2-ccc7cdd793df','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_manage-authorization}','manage-authorization','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('dbc19751-54ed-4612-80ec-6319298cc13e','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-ws-role-mt','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('dbe2fc38-41fc-480e-b903-112cc5be103b','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_manage-account-links}','manage-account-links','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('dc13a5ed-8c63-4158-a347-1b35128118cd','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_create-client}','create-client','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('dc35603a-6080-4463-8f66-79bb1fd2597e','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_view-users}','view-users','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('dc3be331-d70c-49ef-808f-19d94e2972f9','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_view-groups}','view-groups','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('dc557801-6b54-4e6d-aa7f-2e03d1ce0418','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_impersonation}','impersonation','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('ddc3d7e1-8475-4c48-8e98-43b912344225','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_view-users}','view-users','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('decc040a-f6e3-4b9f-8f65-adbd28806b0b','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-own-mt','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('dfae5736-7129-45e4-8a3e-1de9949d8e1a','55816dcb-1e22-47bd-b6b8-0869a0aede67',_binary '','${role_manage-account}','manage-account','org2','55816dcb-1e22-47bd-b6b8-0869a0aede67',NULL),('e08f924e-6c34-4a74-a3fc-562cdf94b293','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_view-realm}','view-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('e20652c4-cc0b-45b7-9ea9-0a5849fe1cf3','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-own-mt','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('e3213199-21fd-44ac-84c1-c2ebeec53289','org5',_binary '\0','${role_default-roles}','default-roles-org5','org5',NULL,NULL),('e329f2a5-8af9-49bf-9a82-00cd3b1701c7','b24bff5f-30f0-42eb-9698-38107a426fe8',_binary '','${role_manage-identity-providers}','manage-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','b24bff5f-30f0-42eb-9698-38107a426fe8',NULL),('e4a6448d-81b4-47ac-b9ad-56bc90198d79','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_query-users}','query-users','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('e4e4bd98-35d4-4378-a60a-4fa8e7beed4c','05d0c822-5888-4974-b356-5c38d70b8e13',_binary '','${role_view-consent}','view-consent','org3','05d0c822-5888-4974-b356-5c38d70b8e13',NULL),('e58a6a65-811e-4953-bc12-7ea1dfc67ee9','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_og-ws-mt','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('e7a38682-15d4-4de7-ad91-ecb015f867e7','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_view-identity-providers}','view-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('e7e29740-197a-4161-8573-67dcafc4a076','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-ws-role-usr','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('e819d914-d128-4037-a314-702dca83650d','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_manage-clients}','manage-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('e819f53f-797e-41bc-9642-677f1236bee3','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_manage-realm}','manage-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('e920b1ed-6145-43a5-b986-dad8af79f4ef','e5af73e9-a20e-4b67-89b9-8d940db55f8f',_binary '','${role_impersonation}','impersonation','a70d8574-d800-4bf9-b056-6e5e23c893a0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',NULL),('e996dfa3-fe1b-4af0-b110-319616eb5f06','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',_binary '',NULL,'_og-usage','org1','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('e9dbb0eb-18ff-40f4-a15f-dc0074202e98','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',_binary '','${role_view-profile}','view-profile','org4','8fc45615-b03a-46c3-bbb4-cb1efb37f1b9',NULL),('ea09a2e5-3f29-40a1-a8e2-6933cd2e1236','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-ws-role-mt','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('ea6ed27f-4cc2-46cf-ae14-5165a3f332e2','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_view-clients}','view-clients','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','f75eef0e-f758-4c23-9fe4-1173c210d99e',_binary '',NULL,'_organization-manager','org4','f75eef0e-f758-4c23-9fe4-1173c210d99e',NULL),('eb96e5bd-2d76-4b49-b571-9c124ae7e0b3','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_view-users}','view-users','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('ec14730e-7792-49aa-8d8f-73e814655391','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_view-groups}','view-groups','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('ec56fbea-5b9e-4666-8f3b-db0099862da9','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_impersonation}','impersonation','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','org1',_binary '\0','${role_default-roles}','default-roles-org1','org1',NULL,NULL),('ece8903c-ee43-4d49-ac55-e4884378a880','18d50652-8e5a-4296-b818-38a67b2e7c19',_binary '','${role_view-authorization}','view-authorization','a70d8574-d800-4bf9-b056-6e5e23c893a0','18d50652-8e5a-4296-b818-38a67b2e7c19',NULL),('ed303b38-7d5b-4d94-ba60-145f43df83f9','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_view-authorization}','view-authorization','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('eda0a210-e934-41ae-ab89-6a9458f0eb5f','99d7091c-603b-4697-827d-3655cee59820',_binary '','${role_manage-account}','manage-account','a70d8574-d800-4bf9-b056-6e5e23c893a0','99d7091c-603b-4697-827d-3655cee59820',NULL),('ee2963e0-3292-4001-ab03-de53ee2ea8f9','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-own-mt','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('ef95106e-4d28-4084-ada0-1ee297454fcc','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',_binary '','${role_realm-admin}','realm-admin','org3','bc6b45df-8ae9-4c62-94d0-5090e08d7a3d',NULL),('efa4727c-193d-4e60-be48-f5f199ae86f5','0e41b39b-8388-4341-8602-905f9ff86f7c',_binary '','${role_view-realm}','view-realm','a70d8574-d800-4bf9-b056-6e5e23c893a0','0e41b39b-8388-4341-8602-905f9ff86f7c',NULL),('f108e259-07ea-4a3c-8cc5-6b7488c93b9e','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_view-events}','view-events','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('f1a06f14-35c4-458c-b88e-3b96263f81ec','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'ws1','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('f2ce77c3-2c83-4710-88c5-cc29d4168feb','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_manage-account}','manage-account','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL),('f423f258-1396-48c6-88d6-828a5ce3d5d1','d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',NULL,'_organization-manager','org3','d00ef4ab-386a-4f9c-8854-0d712ace428e',NULL),('f4e3dd49-3293-413a-8d1a-f5e771305973','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_og-ws-role-usr','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('f516de01-a793-4147-80fa-f9972d2f7448','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_manage-users}','manage-users','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('f537ed8f-b43d-4417-8627-3ec294e0ac74','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_view-events}','view-events','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('f58c1714-3786-4c56-8a27-26de4a24db35','7be799a5-f05e-4603-9ff8-114d01d5e090',_binary '','${role_read-token}','read-token','org1','7be799a5-f05e-4603-9ff8-114d01d5e090',NULL),('f59e154c-5584-4bd7-9b66-253241cd27fb','dba012d2-d051-4938-ab35-1b5e65905028',_binary '',NULL,'_organization-manager','org2','dba012d2-d051-4938-ab35-1b5e65905028',NULL),('f5b490b6-f463-4160-a462-ca39c0ad3ed5','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'_ws2-admin','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('f5e9ef38-b85b-4b5a-b798-8ca02ee4c2ce','8b5fd640-da2b-4f34-82e2-195738502ea6',_binary '','${role_create-client}','create-client','org5','8b5fd640-da2b-4f34-82e2-195738502ea6',NULL),('f6331ad1-dfdc-4b9d-9aec-811f92ade656','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',NULL,'_ws2-admin','org1','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',NULL),('f6597277-9c49-4b12-a6dd-e4c1507c204e','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_view-identity-providers}','view-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('f841763c-9c9c-4ddf-a6eb-0c69a3482978','26ef7671-c4b3-4fc0-9997-da8a917fc546',_binary '','${role_manage-account}','manage-account','org5','26ef7671-c4b3-4fc0-9997-da8a917fc546',NULL),('f95fcc7c-f5ae-4aa7-832f-bf0e32b3b771','0c4e6686-9776-4c58-a39a-acd001be8b5b',_binary '','${role_view-clients}','view-clients','a70d8574-d800-4bf9-b056-6e5e23c893a0','0c4e6686-9776-4c58-a39a-acd001be8b5b',NULL),('fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',NULL,'_ws1-admin','org1','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',NULL),('fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96','d00ef4ab-386a-4f9c-8854-0d712ace428e',_binary '',NULL,'_ws3-admin','org3','d00ef4ab-386a-4f9c-8854-0d712ace428e',NULL),('fa2a733e-2e1d-4e77-9f0d-6301843564f9','c9dd6a78-7259-4510-9dd1-54264192883f',_binary '','${role_view-identity-providers}','view-identity-providers','a70d8574-d800-4bf9-b056-6e5e23c893a0','c9dd6a78-7259-4510-9dd1-54264192883f',NULL),('fa4b1be1-ede9-44c9-b02d-fe2873d24d7c','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',_binary '',NULL,'_ws2-admin','org3','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('fad33368-250f-4ad4-99a4-3da659ce2861','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_create-client}','create-client','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('fb400be2-c5b4-4ce5-a285-033259670d52','5d8ac026-28f4-40be-85eb-ea19055e07bc',_binary '',NULL,'_og-usr-mt','org2','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('fb4f3945-4396-455b-8758-44c6a4901113','45ef982c-3f19-4396-877f-29ccc7b04a49',_binary '',NULL,'ws1','org4','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('fc412908-57e8-4c7d-b275-52afcb19b255','6e197034-e229-47d2-b43e-d1adea8b3cc9',_binary '',NULL,'_og-upd','org5','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('fcfac635-a87b-43a9-b6b8-854d5d335cc1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',_binary '','${role_manage-identity-providers}','manage-identity-providers','org1','e13d30e3-a86a-4ff4-b89e-74feaa1ecb4f',NULL),('fe249970-6620-40b9-b550-98235e3a8cc0','991e662f-1bb8-4563-b3c1-7e974c7be2b2',_binary '','${role_view-users}','view-users','org4','991e662f-1bb8-4563-b3c1-7e974c7be2b2',NULL),('ff3743b8-4e8d-409f-9124-90a3bfcf3b42','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',_binary '',NULL,'_organization-user-role-manager','org1','f6bd8b94-d06c-42b4-a108-d24ea63d8e47',NULL),('ffeab898-fc4e-4622-af81-9d6c307e3f8a','1245c362-051d-45c4-a292-b6ae0a21a518',_binary '','${role_view-profile}','view-profile','org1','1245c362-051d-45c4-a292-b6ae0a21a518',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('wpufy','20.0.5',1708393102);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('038aeb40-eb78-4b78-b868-be62af7703c0','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'02c77bb9-dc7a-4b69-b184-033779babc69'),('042c5361-0584-48ca-866b-f121d0c29f4b','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('05d753da-b0f8-49d8-9e08-539132c7f406','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'0fa7e9ad-e2f0-4f1b-8514-d9e63331db32'),('06149b83-847d-4948-a339-e7abea3c510e','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('07ad709c-9ff0-4de6-a501-a7404cae25de','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('0bc73499-d11d-495d-bcb8-6996404dd48b','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('0e07e8a1-dc0a-4f07-84af-55b5b7524615','audience resolve','openid-connect','oidc-audience-resolve-mapper','2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f',NULL),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'eebab16d-7773-4c8a-896c-8db6747d91c3'),('0f43d63c-6e72-451e-807a-04878906ad3b','full name','openid-connect','oidc-full-name-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('0feef0e2-0b36-4a8e-a20a-76fb009080d5','acr loa level','openid-connect','oidc-acr-mapper',NULL,'e252f14e-a73f-4662-aeab-f50b4c87e2a7'),('13c65d95-4328-4147-86db-5eadcbc90844','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('168cd302-ec0e-4a59-aea7-25be945de2cd','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1'),('183dff76-ea81-4ba0-bd92-72438f936111','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'7c73a29f-e1d1-483b-90d7-5d852b2936d9'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'950dc59f-2d62-44a4-8193-1dce8ddda3d9'),('234d7338-7464-4a06-ad92-a07a91215be7','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('261be6d3-d848-4f13-9014-6121a85056b6','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('29aabd7f-4866-46f5-8560-daf98fa4011a','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'6d3e0f6a-4683-44c2-813b-2882465957fc'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('2d20e453-b5cd-422c-81f2-4a554bd72988','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('2f1be9f1-3030-468e-960b-1764a32c5755','locale','openid-connect','oidc-usermodel-attribute-mapper','c369f888-d2e8-4885-8438-7ab970694b27',NULL),('33d1eeff-b5bb-45d7-8e32-6509b53f2b45','full name','openid-connect','oidc-full-name-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('34df40ce-760d-4c63-b810-0f5066aef236','role list','saml','saml-role-list-mapper',NULL,'93d470ca-4e8b-47c1-a8fb-2ff7738e4904'),('3514b528-084d-48fb-9167-4e6f5f24970b','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('39da1bc4-2514-4c10-971c-d86450c9e6aa','role list','saml','saml-role-list-mapper',NULL,'1f8b5a99-1f79-436d-9c94-3bebc42e81bc'),('3a35ec14-670d-4dfa-937a-0750b37aa412','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('3e5228c8-227a-46f3-b005-11083c3f16da','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','locale','openid-connect','oidc-usermodel-attribute-mapper','c4161da8-b3b9-4470-9d03-514ebf126bc1',NULL),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','email','openid-connect','oidc-usermodel-property-mapper',NULL,'d7b2d83f-c615-4e9d-9497-629559cc4f99'),('40048202-350d-4b91-a457-f0917aae2824','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('42ae604f-304c-4256-aab9-e4a5114d2486','audience resolve','openid-connect','oidc-audience-resolve-mapper','e1dcdcdf-36c7-4084-9dfd-22f9d32e4041',NULL),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('44d9ec13-6f24-499d-90b9-ce42d7b7bbe0','acr loa level','openid-connect','oidc-acr-mapper',NULL,'b5b05161-1c23-4445-bfdc-bbebcf8e5c8a'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'a9903e1c-e3a5-475c-9475-f6251361641b'),('46dbc972-fe29-4083-812c-77a50ababebc','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'66c40941-9494-4655-a4d1-b39747628fe1'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','address','openid-connect','oidc-address-mapper',NULL,'13b9d4bc-a336-4163-bcae-f19eda4a62a1'),('497d3664-f26f-4538-a7de-e82f003558d7','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'f265e752-3d01-414e-85c1-e3e870588982'),('4a12ab58-9347-4052-a85d-318eff7035ca','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5cb3ac0b-1eca-4dd0-a219-5f53bc718a69'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'fe6c9b31-8f14-4daa-9515-a8815a0860fd'),('50d27435-778e-4361-8510-a8a468678417','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('526376d8-c450-4b61-9c53-e8bd98a2770b','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'cb1b0c2e-4add-489d-8517-bb88ef50c24e'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('52fa5a72-3c83-42fd-8fad-dce73462b028','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'79e4708a-b6c6-44e0-8aae-3c95960a0afc'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','address','openid-connect','oidc-address-mapper',NULL,'edc82ef9-2950-4118-aa58-8380b891a9e2'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('54767aa0-a063-460f-9a9d-93acf61dba91','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('56289c83-2db8-4399-8e04-953671ee793d','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'fc36343d-c158-480c-bd20-497043c0fe34'),('56b1d158-018d-4013-b212-b2c2f203da6b','audience resolve','openid-connect','oidc-audience-resolve-mapper','37a991ab-ee73-42a1-a49c-f5c883c3adde',NULL),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('5897cc30-9230-48b3-97be-3c09a9e1ffb1','role list','saml','saml-role-list-mapper',NULL,'eb802de4-bbe0-49fc-a498-4c0339472151'),('59ecec78-f39a-4b6d-a58c-8668652f1116','role list','saml','saml-role-list-mapper',NULL,'90302b33-324d-4142-92df-e1e10647b96e'),('5cb65dae-63f0-410a-8730-bc0855767fa8','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'950dc59f-2d62-44a4-8193-1dce8ddda3d9'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('61b617d4-4de3-4560-b5e7-eba438d9412b','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7'),('6251ea44-f79d-4ae5-8836-8a68484da137','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('6370ec8e-9304-4208-815f-b14d0e1a31ef','full name','openid-connect','oidc-full-name-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('649cf782-831b-4ef0-bbde-3dc85e22f182','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7c73a29f-e1d1-483b-90d7-5d852b2936d9'),('64a222b7-1af1-400a-b83f-30a4ca64f475','username','openid-connect','oidc-usermodel-property-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','email','openid-connect','oidc-usermodel-property-mapper',NULL,'eebab16d-7773-4c8a-896c-8db6747d91c3'),('65ba7653-f2e2-4c2e-a722-1160d07a404e','full name','openid-connect','oidc-full-name-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('66e99a42-3e23-4b41-98df-5b155e96a19c','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('671b6864-b40d-4291-a4a0-bc04efe1e136','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('6728c5fe-a703-47d1-8937-d426f8da51f8','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('67fb3f29-002f-471d-aa1a-96e718761d3e','address','openid-connect','oidc-address-mapper',NULL,'c33de27d-ddf1-4e39-a650-f6b26a39c94d'),('681c2018-038b-4548-bde9-1eb1624fe7f6','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'34a94317-ae1c-49cd-a77d-5bc6cb1787f6'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','77a2f4d9-fa77-4d35-88c9-851bf579503f',NULL),('6a0cab39-2de2-4bff-a592-9c59982f5aab','email','openid-connect','oidc-usermodel-property-mapper',NULL,'a9903e1c-e3a5-475c-9475-f6251361641b'),('6b2f171a-3e80-4cce-ab15-a54d82648dae','acr loa level','openid-connect','oidc-acr-mapper',NULL,'94b26221-2526-4259-aaf6-ecc51bf41dc1'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('6b911826-e741-4609-b2b4-21f07a22ec1c','email','openid-connect','oidc-usermodel-property-mapper',NULL,'f265e752-3d01-414e-85c1-e3e870588982'),('6bd63c06-97bc-4d17-b653-9b45f178d679','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('6c2899a6-6429-416d-9205-94c59d06fa00','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'11770d66-6a8f-4949-9a37-bbf4af84a032'),('73af09d5-c514-4ae8-b515-b51d470ac66b','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('76387b88-87cd-4640-8b99-3c93debb2da4','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('79b78485-08e4-4a32-95d1-23de4c94bb30','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d9d8aace-cb83-4e3b-9f16-3965847e9621'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','address','openid-connect','oidc-address-mapper',NULL,'fb76d52b-d65a-455e-842a-6acb6c346f72'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('7e74d7e8-3365-45db-a276-e03dc9b44207','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('7eb1fe7e-ff95-400f-96fd-8a55dffb1072','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'11770d66-6a8f-4949-9a37-bbf4af84a032'),('80920288-1076-48b8-bd5e-6f51b9d0ef8e','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'fc36343d-c158-480c-bd20-497043c0fe34'),('82e894f0-ef17-4da1-95bb-a555df420bb4','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0fa7e9ad-e2f0-4f1b-8514-d9e63331db32'),('85ccf30e-d1df-41f5-a660-647b290c68f1','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'6d3e0f6a-4683-44c2-813b-2882465957fc'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('88d2cced-86fd-4f49-893b-3590ff2f5e2c','audience resolve','openid-connect','oidc-audience-resolve-mapper','2f24c361-fa2a-45ed-8a99-bbbe8b81a079',NULL),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e0f60f3f-a5ca-4d9b-a4e7-2ed7c3080bb1'),('8c405c48-ae6c-4d91-a557-e913bc91adc6','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'576d8337-1132-4382-9d79-f647f0caf3a7'),('8d439225-957d-4b65-8e42-7981210cfc7b','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'8685de15-f034-483e-a395-fa9a8d596b2b'),('9312b575-bcd9-4b99-809d-90eac27377ce','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('93f991f4-5529-409e-80ca-acf668d1c49c','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','username','openid-connect','oidc-usermodel-property-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('960c6f6f-2c4e-404a-8306-41c5e005be49','acr loa level','openid-connect','oidc-acr-mapper',NULL,'ca1c4b7e-24a0-47cb-87a5-dbe20ee0109f'),('97846bc9-183c-46fa-8c0e-53810a7a3c7c','acr loa level','openid-connect','oidc-acr-mapper',NULL,'b134adf0-02e5-4df7-b0a7-482507645fbe'),('9834c86e-b7b7-4edf-8f59-24269c82131c','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cbebef4f-8d02-451d-97b5-3e5bb76f7ad3'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('9ad39c76-2c15-4407-a940-e73066ebe631','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'fe6c9b31-8f14-4daa-9515-a8815a0860fd'),('9c13952c-2665-44a1-975c-a4eba4f997f5','role list','saml','saml-role-list-mapper',NULL,'2d356d40-6a2c-4457-89ff-1f1e617fcde5'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('9e6058f1-0609-407f-a069-a4a2bf47a94c','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'0fa7e9ad-e2f0-4f1b-8514-d9e63331db32'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('9fc0fb43-d4c1-4e73-83e9-ef0684ad49d4','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'daa41647-fc41-48ea-a9f2-6967459da29c'),('a022c269-a6f3-4863-bd94-2fcf5452239d','audience resolve','openid-connect','oidc-audience-resolve-mapper','b7f53c4f-76b1-46de-8fa1-6008ad4815f6',NULL),('a1f7efe4-e7f8-4f43-a578-17888cef80b7','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'11770d66-6a8f-4949-9a37-bbf4af84a032'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','username','openid-connect','oidc-usermodel-property-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'5cb3ac0b-1eca-4dd0-a219-5f53bc718a69'),('a6f1a5b1-5608-4cf8-866e-a726d54bf630','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'576d8337-1132-4382-9d79-f647f0caf3a7'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'79e4708a-b6c6-44e0-8aae-3c95960a0afc'),('a8dca746-d4fe-489c-b82a-16a547e4da06','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('ab53dfa0-de96-4e1c-b550-85a9a461a199','acr loa level','openid-connect','oidc-acr-mapper',NULL,'7e655cc8-3479-4b27-8023-e8a06129d636'),('abda67ee-b019-4377-bf84-3e56fdb104d5','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'b413fa37-7ed0-4913-bb5e-c088d11a99cc'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('ae5e5345-9fe3-40d5-a3bf-2d6a93a5e58c','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'cb1b0c2e-4add-489d-8517-bb88ef50c24e'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1a577a40-5094-48f6-957e-89d2b5e9f9e7'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','address','openid-connect','oidc-address-mapper',NULL,'cfde5547-09bf-450f-b5cf-a678ba2aa3e8'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','username','openid-connect','oidc-usermodel-property-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('ba435ead-f364-4452-be8c-b51f12eed58b','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('baf021f2-f994-40a8-b1c9-b83c0353323b','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('bb113c19-2446-4253-b28c-abb2a10644af','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('bb2f0b83-bd08-4eb5-85ee-f19487cb6cad','audience resolve','openid-connect','oidc-audience-resolve-mapper','ee920bf0-4d00-49cb-abfc-a47f48f0c355',NULL),('bb8b72ad-75b2-46b1-ae42-f57675705009','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','125c23c8-f5a1-43ff-b35c-e6ace698b7c2',NULL),('bd4250e9-3641-48b5-81a6-10a23f958425','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'34a94317-ae1c-49cd-a77d-5bc6cb1787f6'),('bdba35d2-1c09-4d73-8768-47e5064286b7','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('c17d52d5-ad08-4034-be1c-9fab7bc24484','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'576d8337-1132-4382-9d79-f647f0caf3a7'),('c2b354ce-da97-4e41-bc56-f1ca60be6c8a','full name','openid-connect','oidc-full-name-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('c3c067aa-adef-400c-97c5-99c5b1171031','locale','openid-connect','oidc-usermodel-attribute-mapper','928cb134-c673-4f50-8bd9-05eeee264c64',NULL),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('c6d3ac77-3a48-4efb-8e85-363c71fdb907','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'d7a516ee-1e13-4b1c-a2d3-8b9c54870bd6'),('c70b95c4-2257-444c-a9ac-ff56695cc8a8','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'fc36343d-c158-480c-bd20-497043c0fe34'),('c89276ca-5d59-4e25-bfd4-496767ed8105','locale','openid-connect','oidc-usermodel-attribute-mapper','2524a4a9-2675-4551-9d41-5021bff05172',NULL),('c89509a6-8720-4b6c-969a-5363e1625b54','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','username','openid-connect','oidc-usermodel-property-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('caf0b5ee-6887-483e-a9bf-4905ba270c06','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'621897db-a9ad-4a35-9fc4-cd1cb69705d0'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('cb5d8b02-988d-447f-8226-1ce698c2c842','address','openid-connect','oidc-address-mapper',NULL,'ed029170-1b1d-42ce-acd2-6b201c69d739'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('cd5e273e-a928-4406-a8c7-9750cc060dc3','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','6e197034-e229-47d2-b43e-d1adea8b3cc9',NULL),('cf419212-dd3e-403b-a1a5-54a16d3c2997','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','45ef982c-3f19-4396-877f-29ccc7b04a49',NULL),('cf6080af-26cc-4848-9fab-27df5f5f73a1','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d9d8aace-cb83-4e3b-9f16-3965847e9621'),('d3fd017d-a402-491e-8616-22a14cefcf65','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('d42f0904-6a3f-4538-8011-a8f08e5afabc','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1a577a40-5094-48f6-957e-89d2b5e9f9e7'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','locale','openid-connect','oidc-usermodel-attribute-mapper','c3afc1a1-ea2f-4d68-81ef-1de7d2edd827',NULL),('d6e40de8-8677-4ab5-91c1-bd341d79eade','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('d932b754-b768-4132-93ce-4be28c577f46','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','email','openid-connect','oidc-usermodel-property-mapper',NULL,'ea43c59a-cdde-4a84-8791-1708e9a479be'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'d7b2d83f-c615-4e9d-9497-629559cc4f99'),('e195412f-e75b-48ac-b403-b6bd4263489b','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','77a2f4d9-fa77-4d35-88c9-851bf579503f',NULL),('e3c6ecf8-d118-4856-9eea-9d4598958738','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'02c77bb9-dc7a-4b69-b184-033779babc69'),('e658e861-51f4-45ab-aa2a-311e3498ab99','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'987be8ba-1f5c-4ba4-973c-aafe724432cb'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',NULL),('e7719ff3-7b3e-488d-98b2-5566f07c517b','role list','saml','saml-role-list-mapper',NULL,'fdd1c112-22eb-481a-a2f4-9d320c13bb28'),('e8c407ff-74ad-4964-a33b-4640b795be9b','full name','openid-connect','oidc-full-name-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','email','openid-connect','oidc-usermodel-property-mapper',NULL,'8685de15-f034-483e-a395-fa9a8d596b2b'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'97dab674-3bce-4ab2-8b4c-3d5dac9a5ca4'),('ecb90939-cb3f-41cb-838d-17939d150c00','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f93a4b3-6109-487c-adaf-b282b6bb1afa'),('edd65c5c-5505-4369-af78-dac52e27195c','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'f2201541-c2b3-4ca5-ae21-5d1f163e746d'),('f21455d2-1570-4e12-9fca-460995e05b94','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'cbebef4f-8d02-451d-97b5-3e5bb76f7ad3'),('f4ade729-0545-4aff-8712-d1d875495508','locale','openid-connect','oidc-usermodel-attribute-mapper','b72bdc9c-039d-4c76-96ef-b7a8c37e6cee',NULL),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','5d8ac026-28f4-40be-85eb-ea19055e07bc',NULL),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'ea43c59a-cdde-4a84-8791-1708e9a479be'),('f7b96da1-ce97-49a6-84e7-5b0a71fe0af2','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'cb1b0c2e-4add-489d-8517-bb88ef50c24e'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'dbcfe0cd-fcbf-4d12-bd4f-a74b759f1509'),('f99339ee-0802-482b-a180-de1adee5cca9','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','77a2f4d9-fa77-4d35-88c9-851bf579503f',NULL),('fbb3a9ee-728f-418d-bdba-87379d4e000b','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'6d3e0f6a-4683-44c2-813b-2882465957fc'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','username','openid-connect','oidc-usermodel-property-mapper',NULL,'9a6dad5a-9059-4e7c-92bc-132a8613d62b'),('fd8759aa-d502-4a16-81a2-d1843227a7df','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'8712bdd9-6b76-4aeb-9a5a-8925aa92d4b7'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6da609f5-cd9e-4472-afb9-5d478fa1d70c');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','true','access.token.claim'),('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','gender','claim.name'),('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','true','id.token.claim'),('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','String','jsonType.label'),('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','gender','user.attribute'),('0099eb0d-d9de-4b44-9fd4-73c52afe51e2','true','userinfo.token.claim'),('038aeb40-eb78-4b78-b868-be62af7703c0','true','access.token.claim'),('038aeb40-eb78-4b78-b868-be62af7703c0','groups','claim.name'),('038aeb40-eb78-4b78-b868-be62af7703c0','true','id.token.claim'),('038aeb40-eb78-4b78-b868-be62af7703c0','String','jsonType.label'),('038aeb40-eb78-4b78-b868-be62af7703c0','true','multivalued'),('038aeb40-eb78-4b78-b868-be62af7703c0','foo','user.attribute'),('042c5361-0584-48ca-866b-f121d0c29f4b','true','access.token.claim'),('042c5361-0584-48ca-866b-f121d0c29f4b','middle_name','claim.name'),('042c5361-0584-48ca-866b-f121d0c29f4b','true','id.token.claim'),('042c5361-0584-48ca-866b-f121d0c29f4b','String','jsonType.label'),('042c5361-0584-48ca-866b-f121d0c29f4b','middleName','user.attribute'),('042c5361-0584-48ca-866b-f121d0c29f4b','true','userinfo.token.claim'),('05d753da-b0f8-49d8-9e08-539132c7f406','true','access.token.claim'),('05d753da-b0f8-49d8-9e08-539132c7f406','resource_access.${client_id}.roles','claim.name'),('05d753da-b0f8-49d8-9e08-539132c7f406','String','jsonType.label'),('05d753da-b0f8-49d8-9e08-539132c7f406','true','multivalued'),('05d753da-b0f8-49d8-9e08-539132c7f406','foo','user.attribute'),('06149b83-847d-4948-a339-e7abea3c510e','true','access.token.claim'),('06149b83-847d-4948-a339-e7abea3c510e','nickname','claim.name'),('06149b83-847d-4948-a339-e7abea3c510e','true','id.token.claim'),('06149b83-847d-4948-a339-e7abea3c510e','String','jsonType.label'),('06149b83-847d-4948-a339-e7abea3c510e','nickname','user.attribute'),('06149b83-847d-4948-a339-e7abea3c510e','true','userinfo.token.claim'),('07ad709c-9ff0-4de6-a501-a7404cae25de','true','access.token.claim'),('07ad709c-9ff0-4de6-a501-a7404cae25de','given_name','claim.name'),('07ad709c-9ff0-4de6-a501-a7404cae25de','true','id.token.claim'),('07ad709c-9ff0-4de6-a501-a7404cae25de','String','jsonType.label'),('07ad709c-9ff0-4de6-a501-a7404cae25de','firstName','user.attribute'),('07ad709c-9ff0-4de6-a501-a7404cae25de','true','userinfo.token.claim'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','true','access.token.claim'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','clientId','claim.name'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','true','id.token.claim'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','String','jsonType.label'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','clientId','user.session.note'),('0a27f5f7-a87c-40b7-aa93-42cde88d9caf','true','userinfo.token.claim'),('0bc73499-d11d-495d-bcb8-6996404dd48b','true','access.token.claim'),('0bc73499-d11d-495d-bcb8-6996404dd48b','updated_at','claim.name'),('0bc73499-d11d-495d-bcb8-6996404dd48b','true','id.token.claim'),('0bc73499-d11d-495d-bcb8-6996404dd48b','long','jsonType.label'),('0bc73499-d11d-495d-bcb8-6996404dd48b','updatedAt','user.attribute'),('0bc73499-d11d-495d-bcb8-6996404dd48b','true','userinfo.token.claim'),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','true','access.token.claim'),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','email_verified','claim.name'),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','true','id.token.claim'),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','boolean','jsonType.label'),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','emailVerified','user.attribute'),('0e161e04-8edd-4fb6-a8c7-48054c9eebb1','true','userinfo.token.claim'),('0f43d63c-6e72-451e-807a-04878906ad3b','true','access.token.claim'),('0f43d63c-6e72-451e-807a-04878906ad3b','true','id.token.claim'),('0f43d63c-6e72-451e-807a-04878906ad3b','true','userinfo.token.claim'),('0feef0e2-0b36-4a8e-a20a-76fb009080d5','true','access.token.claim'),('0feef0e2-0b36-4a8e-a20a-76fb009080d5','true','id.token.claim'),('13c65d95-4328-4147-86db-5eadcbc90844','true','access.token.claim'),('13c65d95-4328-4147-86db-5eadcbc90844','family_name','claim.name'),('13c65d95-4328-4147-86db-5eadcbc90844','true','id.token.claim'),('13c65d95-4328-4147-86db-5eadcbc90844','String','jsonType.label'),('13c65d95-4328-4147-86db-5eadcbc90844','lastName','user.attribute'),('13c65d95-4328-4147-86db-5eadcbc90844','true','userinfo.token.claim'),('168cd302-ec0e-4a59-aea7-25be945de2cd','true','access.token.claim'),('168cd302-ec0e-4a59-aea7-25be945de2cd','upn','claim.name'),('168cd302-ec0e-4a59-aea7-25be945de2cd','true','id.token.claim'),('168cd302-ec0e-4a59-aea7-25be945de2cd','String','jsonType.label'),('168cd302-ec0e-4a59-aea7-25be945de2cd','username','user.attribute'),('168cd302-ec0e-4a59-aea7-25be945de2cd','true','userinfo.token.claim'),('183dff76-ea81-4ba0-bd92-72438f936111','true','access.token.claim'),('183dff76-ea81-4ba0-bd92-72438f936111','upn','claim.name'),('183dff76-ea81-4ba0-bd92-72438f936111','true','id.token.claim'),('183dff76-ea81-4ba0-bd92-72438f936111','String','jsonType.label'),('183dff76-ea81-4ba0-bd92-72438f936111','username','user.attribute'),('183dff76-ea81-4ba0-bd92-72438f936111','true','userinfo.token.claim'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','true','access.token.claim'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','given_name','claim.name'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','true','id.token.claim'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','String','jsonType.label'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','firstName','user.attribute'),('1df8d47c-b3ce-4156-b833-3381d1923ef5','true','userinfo.token.claim'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','true','access.token.claim'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','upn','claim.name'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','true','id.token.claim'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','String','jsonType.label'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','username','user.attribute'),('1fd32e2f-72ac-433e-b757-bf2ef5fdef8b','true','userinfo.token.claim'),('234d7338-7464-4a06-ad92-a07a91215be7','true','access.token.claim'),('234d7338-7464-4a06-ad92-a07a91215be7','website','claim.name'),('234d7338-7464-4a06-ad92-a07a91215be7','true','id.token.claim'),('234d7338-7464-4a06-ad92-a07a91215be7','String','jsonType.label'),('234d7338-7464-4a06-ad92-a07a91215be7','website','user.attribute'),('234d7338-7464-4a06-ad92-a07a91215be7','true','userinfo.token.claim'),('261be6d3-d848-4f13-9014-6121a85056b6','true','access.token.claim'),('261be6d3-d848-4f13-9014-6121a85056b6','nickname','claim.name'),('261be6d3-d848-4f13-9014-6121a85056b6','true','id.token.claim'),('261be6d3-d848-4f13-9014-6121a85056b6','String','jsonType.label'),('261be6d3-d848-4f13-9014-6121a85056b6','nickname','user.attribute'),('261be6d3-d848-4f13-9014-6121a85056b6','true','userinfo.token.claim'),('29aabd7f-4866-46f5-8560-daf98fa4011a','true','access.token.claim'),('29aabd7f-4866-46f5-8560-daf98fa4011a','resource_access.${client_id}.roles','claim.name'),('29aabd7f-4866-46f5-8560-daf98fa4011a','String','jsonType.label'),('29aabd7f-4866-46f5-8560-daf98fa4011a','true','multivalued'),('29aabd7f-4866-46f5-8560-daf98fa4011a','foo','user.attribute'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','true','access.token.claim'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','profile','claim.name'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','true','id.token.claim'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','String','jsonType.label'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','profile','user.attribute'),('2a9f9a3a-ccbf-4924-a63d-82ad2e1a5ef6','true','userinfo.token.claim'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','true','access.token.claim'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','birthdate','claim.name'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','true','id.token.claim'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','String','jsonType.label'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','birthdate','user.attribute'),('2bd28df4-5ea6-4ad5-b414-0bb20f7ab929','true','userinfo.token.claim'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','true','access.token.claim'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','nickname','claim.name'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','true','id.token.claim'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','String','jsonType.label'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','nickname','user.attribute'),('2d14698f-e6ce-495f-88ad-4a67891dad7e','true','userinfo.token.claim'),('2d20e453-b5cd-422c-81f2-4a554bd72988','true','access.token.claim'),('2d20e453-b5cd-422c-81f2-4a554bd72988','zoneinfo','claim.name'),('2d20e453-b5cd-422c-81f2-4a554bd72988','true','id.token.claim'),('2d20e453-b5cd-422c-81f2-4a554bd72988','String','jsonType.label'),('2d20e453-b5cd-422c-81f2-4a554bd72988','zoneinfo','user.attribute'),('2d20e453-b5cd-422c-81f2-4a554bd72988','true','userinfo.token.claim'),('2f1be9f1-3030-468e-960b-1764a32c5755','true','access.token.claim'),('2f1be9f1-3030-468e-960b-1764a32c5755','locale','claim.name'),('2f1be9f1-3030-468e-960b-1764a32c5755','true','id.token.claim'),('2f1be9f1-3030-468e-960b-1764a32c5755','String','jsonType.label'),('2f1be9f1-3030-468e-960b-1764a32c5755','locale','user.attribute'),('2f1be9f1-3030-468e-960b-1764a32c5755','true','userinfo.token.claim'),('33d1eeff-b5bb-45d7-8e32-6509b53f2b45','true','access.token.claim'),('33d1eeff-b5bb-45d7-8e32-6509b53f2b45','true','id.token.claim'),('33d1eeff-b5bb-45d7-8e32-6509b53f2b45','true','userinfo.token.claim'),('34df40ce-760d-4c63-b810-0f5066aef236','Role','attribute.name'),('34df40ce-760d-4c63-b810-0f5066aef236','Basic','attribute.nameformat'),('34df40ce-760d-4c63-b810-0f5066aef236','false','single'),('3514b528-084d-48fb-9167-4e6f5f24970b','true','access.token.claim'),('3514b528-084d-48fb-9167-4e6f5f24970b','nickname','claim.name'),('3514b528-084d-48fb-9167-4e6f5f24970b','true','id.token.claim'),('3514b528-084d-48fb-9167-4e6f5f24970b','String','jsonType.label'),('3514b528-084d-48fb-9167-4e6f5f24970b','nickname','user.attribute'),('3514b528-084d-48fb-9167-4e6f5f24970b','true','userinfo.token.claim'),('39da1bc4-2514-4c10-971c-d86450c9e6aa','Role','attribute.name'),('39da1bc4-2514-4c10-971c-d86450c9e6aa','Basic','attribute.nameformat'),('39da1bc4-2514-4c10-971c-d86450c9e6aa','false','single'),('3a35ec14-670d-4dfa-937a-0750b37aa412','true','access.token.claim'),('3a35ec14-670d-4dfa-937a-0750b37aa412','clientAddress','claim.name'),('3a35ec14-670d-4dfa-937a-0750b37aa412','true','id.token.claim'),('3a35ec14-670d-4dfa-937a-0750b37aa412','String','jsonType.label'),('3a35ec14-670d-4dfa-937a-0750b37aa412','clientAddress','user.session.note'),('3a35ec14-670d-4dfa-937a-0750b37aa412','true','userinfo.token.claim'),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','true','access.token.claim'),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','family_name','claim.name'),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','true','id.token.claim'),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','String','jsonType.label'),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','lastName','user.attribute'),('3aac110e-0103-44ec-9a12-4c2531d1e6d9','true','userinfo.token.claim'),('3e5228c8-227a-46f3-b005-11083c3f16da','true','access.token.claim'),('3e5228c8-227a-46f3-b005-11083c3f16da','clientHost','claim.name'),('3e5228c8-227a-46f3-b005-11083c3f16da','true','id.token.claim'),('3e5228c8-227a-46f3-b005-11083c3f16da','String','jsonType.label'),('3e5228c8-227a-46f3-b005-11083c3f16da','clientHost','user.session.note'),('3e5228c8-227a-46f3-b005-11083c3f16da','true','userinfo.token.claim'),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','true','access.token.claim'),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','locale','claim.name'),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','true','id.token.claim'),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','String','jsonType.label'),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','locale','user.attribute'),('3eb3f6a8-3640-481d-929d-c5a5f96563f0','true','userinfo.token.claim'),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','true','access.token.claim'),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','email','claim.name'),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','true','id.token.claim'),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','String','jsonType.label'),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','email','user.attribute'),('3f0d9bc0-e50f-4d66-85d4-9b4936fdbf9c','true','userinfo.token.claim'),('40048202-350d-4b91-a457-f0917aae2824','true','access.token.claim'),('40048202-350d-4b91-a457-f0917aae2824','clientAddress','claim.name'),('40048202-350d-4b91-a457-f0917aae2824','true','id.token.claim'),('40048202-350d-4b91-a457-f0917aae2824','String','jsonType.label'),('40048202-350d-4b91-a457-f0917aae2824','clientAddress','user.session.note'),('40048202-350d-4b91-a457-f0917aae2824','true','userinfo.token.claim'),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','true','access.token.claim'),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','zoneinfo','claim.name'),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','true','id.token.claim'),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','String','jsonType.label'),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','zoneinfo','user.attribute'),('4327a1f8-59a7-4cfc-b10c-9828f2d009e3','true','userinfo.token.claim'),('44d9ec13-6f24-499d-90b9-ce42d7b7bbe0','true','access.token.claim'),('44d9ec13-6f24-499d-90b9-ce42d7b7bbe0','true','id.token.claim'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','true','access.token.claim'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','email_verified','claim.name'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','true','id.token.claim'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','boolean','jsonType.label'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','emailVerified','user.attribute'),('451da6a5-954d-4b9e-a3d3-f3dbca1c065d','true','userinfo.token.claim'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','true','access.token.claim'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','true','id.token.claim'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','country','user.attribute.country'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','formatted','user.attribute.formatted'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','locality','user.attribute.locality'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','postal_code','user.attribute.postal_code'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','region','user.attribute.region'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','street','user.attribute.street'),('474f6db3-214a-4f09-89bf-db9ffd5e5c0c','true','userinfo.token.claim'),('497d3664-f26f-4538-a7de-e82f003558d7','true','access.token.claim'),('497d3664-f26f-4538-a7de-e82f003558d7','email_verified','claim.name'),('497d3664-f26f-4538-a7de-e82f003558d7','true','id.token.claim'),('497d3664-f26f-4538-a7de-e82f003558d7','boolean','jsonType.label'),('497d3664-f26f-4538-a7de-e82f003558d7','emailVerified','user.attribute'),('497d3664-f26f-4538-a7de-e82f003558d7','true','userinfo.token.claim'),('4a12ab58-9347-4052-a85d-318eff7035ca','true','access.token.claim'),('4a12ab58-9347-4052-a85d-318eff7035ca','phone_number','claim.name'),('4a12ab58-9347-4052-a85d-318eff7035ca','true','id.token.claim'),('4a12ab58-9347-4052-a85d-318eff7035ca','String','jsonType.label'),('4a12ab58-9347-4052-a85d-318eff7035ca','phoneNumber','user.attribute'),('4a12ab58-9347-4052-a85d-318eff7035ca','true','userinfo.token.claim'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','true','access.token.claim'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','given_name','claim.name'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','true','id.token.claim'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','String','jsonType.label'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','firstName','user.attribute'),('4b76b2f9-fb1e-40e0-8442-59eb2ced9f77','true','userinfo.token.claim'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','true','access.token.claim'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','upn','claim.name'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','true','id.token.claim'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','String','jsonType.label'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','username','user.attribute'),('4fced7e4-82f7-4ad6-a3b6-84715b16c5db','true','userinfo.token.claim'),('50d27435-778e-4361-8510-a8a468678417','true','access.token.claim'),('50d27435-778e-4361-8510-a8a468678417','picture','claim.name'),('50d27435-778e-4361-8510-a8a468678417','true','id.token.claim'),('50d27435-778e-4361-8510-a8a468678417','String','jsonType.label'),('50d27435-778e-4361-8510-a8a468678417','picture','user.attribute'),('50d27435-778e-4361-8510-a8a468678417','true','userinfo.token.claim'),('526376d8-c450-4b61-9c53-e8bd98a2770b','true','access.token.claim'),('526376d8-c450-4b61-9c53-e8bd98a2770b','realm_access.roles','claim.name'),('526376d8-c450-4b61-9c53-e8bd98a2770b','String','jsonType.label'),('526376d8-c450-4b61-9c53-e8bd98a2770b','true','multivalued'),('526376d8-c450-4b61-9c53-e8bd98a2770b','foo','user.attribute'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','true','access.token.claim'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','picture','claim.name'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','true','id.token.claim'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','String','jsonType.label'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','picture','user.attribute'),('52e0385c-e2bd-461c-842b-c7a8a567e7be','true','userinfo.token.claim'),('52fa5a72-3c83-42fd-8fad-dce73462b028','true','access.token.claim'),('52fa5a72-3c83-42fd-8fad-dce73462b028','phone_number_verified','claim.name'),('52fa5a72-3c83-42fd-8fad-dce73462b028','true','id.token.claim'),('52fa5a72-3c83-42fd-8fad-dce73462b028','boolean','jsonType.label'),('52fa5a72-3c83-42fd-8fad-dce73462b028','phoneNumberVerified','user.attribute'),('52fa5a72-3c83-42fd-8fad-dce73462b028','true','userinfo.token.claim'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','true','access.token.claim'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','true','id.token.claim'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','country','user.attribute.country'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','formatted','user.attribute.formatted'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','locality','user.attribute.locality'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','postal_code','user.attribute.postal_code'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','region','user.attribute.region'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','street','user.attribute.street'),('5370707f-fd4a-4ab5-bfff-8a4382cc58db','true','userinfo.token.claim'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','true','access.token.claim'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','website','claim.name'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','true','id.token.claim'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','String','jsonType.label'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','website','user.attribute'),('53a0ed4a-f920-4137-b9f7-16d5931eed6d','true','userinfo.token.claim'),('54767aa0-a063-460f-9a9d-93acf61dba91','true','access.token.claim'),('54767aa0-a063-460f-9a9d-93acf61dba91','middle_name','claim.name'),('54767aa0-a063-460f-9a9d-93acf61dba91','true','id.token.claim'),('54767aa0-a063-460f-9a9d-93acf61dba91','String','jsonType.label'),('54767aa0-a063-460f-9a9d-93acf61dba91','middleName','user.attribute'),('54767aa0-a063-460f-9a9d-93acf61dba91','true','userinfo.token.claim'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','true','access.token.claim'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','profile','claim.name'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','true','id.token.claim'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','String','jsonType.label'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','profile','user.attribute'),('54963cf9-cc2a-4999-bd14-72b87526ab5f','true','userinfo.token.claim'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','true','access.token.claim'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','family_name','claim.name'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','true','id.token.claim'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','String','jsonType.label'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','lastName','user.attribute'),('55a415e4-67a1-41b5-ac7b-0550f45e42b6','true','userinfo.token.claim'),('56289c83-2db8-4399-8e04-953671ee793d','true','access.token.claim'),('56289c83-2db8-4399-8e04-953671ee793d','realm_access.roles','claim.name'),('56289c83-2db8-4399-8e04-953671ee793d','String','jsonType.label'),('56289c83-2db8-4399-8e04-953671ee793d','true','multivalued'),('56289c83-2db8-4399-8e04-953671ee793d','foo','user.attribute'),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','true','access.token.claim'),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','profile','claim.name'),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','true','id.token.claim'),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','String','jsonType.label'),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','profile','user.attribute'),('56b2fb78-4689-4ea2-9cd6-fa33e9fead13','true','userinfo.token.claim'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','true','access.token.claim'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','profile','claim.name'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','true','id.token.claim'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','String','jsonType.label'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','profile','user.attribute'),('5853012b-9fc3-4374-9056-57b33a5d6ba4','true','userinfo.token.claim'),('5897cc30-9230-48b3-97be-3c09a9e1ffb1','Role','attribute.name'),('5897cc30-9230-48b3-97be-3c09a9e1ffb1','Basic','attribute.nameformat'),('5897cc30-9230-48b3-97be-3c09a9e1ffb1','false','single'),('59ecec78-f39a-4b6d-a58c-8668652f1116','Role','attribute.name'),('59ecec78-f39a-4b6d-a58c-8668652f1116','Basic','attribute.nameformat'),('59ecec78-f39a-4b6d-a58c-8668652f1116','false','single'),('5cb65dae-63f0-410a-8730-bc0855767fa8','true','access.token.claim'),('5cb65dae-63f0-410a-8730-bc0855767fa8','groups','claim.name'),('5cb65dae-63f0-410a-8730-bc0855767fa8','true','id.token.claim'),('5cb65dae-63f0-410a-8730-bc0855767fa8','String','jsonType.label'),('5cb65dae-63f0-410a-8730-bc0855767fa8','true','multivalued'),('5cb65dae-63f0-410a-8730-bc0855767fa8','foo','user.attribute'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','true','access.token.claim'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','nickname','claim.name'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','true','id.token.claim'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','String','jsonType.label'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','nickname','user.attribute'),('5ec843e9-38fe-41cb-9841-e2a41fb9ce4e','true','userinfo.token.claim'),('61b617d4-4de3-4560-b5e7-eba438d9412b','true','access.token.claim'),('61b617d4-4de3-4560-b5e7-eba438d9412b','upn','claim.name'),('61b617d4-4de3-4560-b5e7-eba438d9412b','true','id.token.claim'),('61b617d4-4de3-4560-b5e7-eba438d9412b','String','jsonType.label'),('61b617d4-4de3-4560-b5e7-eba438d9412b','username','user.attribute'),('61b617d4-4de3-4560-b5e7-eba438d9412b','true','userinfo.token.claim'),('6251ea44-f79d-4ae5-8836-8a68484da137','true','access.token.claim'),('6251ea44-f79d-4ae5-8836-8a68484da137','birthdate','claim.name'),('6251ea44-f79d-4ae5-8836-8a68484da137','true','id.token.claim'),('6251ea44-f79d-4ae5-8836-8a68484da137','String','jsonType.label'),('6251ea44-f79d-4ae5-8836-8a68484da137','birthdate','user.attribute'),('6251ea44-f79d-4ae5-8836-8a68484da137','true','userinfo.token.claim'),('6370ec8e-9304-4208-815f-b14d0e1a31ef','true','access.token.claim'),('6370ec8e-9304-4208-815f-b14d0e1a31ef','true','id.token.claim'),('6370ec8e-9304-4208-815f-b14d0e1a31ef','true','userinfo.token.claim'),('649cf782-831b-4ef0-bbde-3dc85e22f182','true','access.token.claim'),('649cf782-831b-4ef0-bbde-3dc85e22f182','groups','claim.name'),('649cf782-831b-4ef0-bbde-3dc85e22f182','true','id.token.claim'),('649cf782-831b-4ef0-bbde-3dc85e22f182','String','jsonType.label'),('649cf782-831b-4ef0-bbde-3dc85e22f182','true','multivalued'),('649cf782-831b-4ef0-bbde-3dc85e22f182','foo','user.attribute'),('64a222b7-1af1-400a-b83f-30a4ca64f475','true','access.token.claim'),('64a222b7-1af1-400a-b83f-30a4ca64f475','preferred_username','claim.name'),('64a222b7-1af1-400a-b83f-30a4ca64f475','true','id.token.claim'),('64a222b7-1af1-400a-b83f-30a4ca64f475','String','jsonType.label'),('64a222b7-1af1-400a-b83f-30a4ca64f475','username','user.attribute'),('64a222b7-1af1-400a-b83f-30a4ca64f475','true','userinfo.token.claim'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','true','access.token.claim'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','picture','claim.name'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','true','id.token.claim'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','String','jsonType.label'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','picture','user.attribute'),('64f541d2-bd0e-465e-8a14-b8b3f72c69eb','true','userinfo.token.claim'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','true','access.token.claim'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','email','claim.name'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','true','id.token.claim'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','String','jsonType.label'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','email','user.attribute'),('65a61e6f-e00c-4185-aa29-36b1daba39f2','true','userinfo.token.claim'),('65ba7653-f2e2-4c2e-a722-1160d07a404e','true','access.token.claim'),('65ba7653-f2e2-4c2e-a722-1160d07a404e','true','id.token.claim'),('65ba7653-f2e2-4c2e-a722-1160d07a404e','true','userinfo.token.claim'),('66e99a42-3e23-4b41-98df-5b155e96a19c','true','access.token.claim'),('66e99a42-3e23-4b41-98df-5b155e96a19c','birthdate','claim.name'),('66e99a42-3e23-4b41-98df-5b155e96a19c','true','id.token.claim'),('66e99a42-3e23-4b41-98df-5b155e96a19c','String','jsonType.label'),('66e99a42-3e23-4b41-98df-5b155e96a19c','birthdate','user.attribute'),('66e99a42-3e23-4b41-98df-5b155e96a19c','true','userinfo.token.claim'),('671b6864-b40d-4291-a4a0-bc04efe1e136','true','access.token.claim'),('671b6864-b40d-4291-a4a0-bc04efe1e136','locale','claim.name'),('671b6864-b40d-4291-a4a0-bc04efe1e136','true','id.token.claim'),('671b6864-b40d-4291-a4a0-bc04efe1e136','String','jsonType.label'),('671b6864-b40d-4291-a4a0-bc04efe1e136','locale','user.attribute'),('671b6864-b40d-4291-a4a0-bc04efe1e136','true','userinfo.token.claim'),('6728c5fe-a703-47d1-8937-d426f8da51f8','true','access.token.claim'),('6728c5fe-a703-47d1-8937-d426f8da51f8','profile','claim.name'),('6728c5fe-a703-47d1-8937-d426f8da51f8','true','id.token.claim'),('6728c5fe-a703-47d1-8937-d426f8da51f8','String','jsonType.label'),('6728c5fe-a703-47d1-8937-d426f8da51f8','profile','user.attribute'),('6728c5fe-a703-47d1-8937-d426f8da51f8','true','userinfo.token.claim'),('67fb3f29-002f-471d-aa1a-96e718761d3e','true','access.token.claim'),('67fb3f29-002f-471d-aa1a-96e718761d3e','true','id.token.claim'),('67fb3f29-002f-471d-aa1a-96e718761d3e','country','user.attribute.country'),('67fb3f29-002f-471d-aa1a-96e718761d3e','formatted','user.attribute.formatted'),('67fb3f29-002f-471d-aa1a-96e718761d3e','locality','user.attribute.locality'),('67fb3f29-002f-471d-aa1a-96e718761d3e','postal_code','user.attribute.postal_code'),('67fb3f29-002f-471d-aa1a-96e718761d3e','region','user.attribute.region'),('67fb3f29-002f-471d-aa1a-96e718761d3e','street','user.attribute.street'),('67fb3f29-002f-471d-aa1a-96e718761d3e','true','userinfo.token.claim'),('681c2018-038b-4548-bde9-1eb1624fe7f6','true','access.token.claim'),('681c2018-038b-4548-bde9-1eb1624fe7f6','phone_number','claim.name'),('681c2018-038b-4548-bde9-1eb1624fe7f6','true','id.token.claim'),('681c2018-038b-4548-bde9-1eb1624fe7f6','String','jsonType.label'),('681c2018-038b-4548-bde9-1eb1624fe7f6','phoneNumber','user.attribute'),('681c2018-038b-4548-bde9-1eb1624fe7f6','true','userinfo.token.claim'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','true','access.token.claim'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','updated_at','claim.name'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','true','id.token.claim'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','long','jsonType.label'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','updatedAt','user.attribute'),('6839225a-8e91-4409-a6fd-18f4e2e25f77','true','userinfo.token.claim'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','true','access.token.claim'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','clientId','claim.name'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','true','id.token.claim'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','String','jsonType.label'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','clientId','user.session.note'),('69e639f9-1f92-4f80-aa8f-3b4856968f45','true','userinfo.token.claim'),('6a0cab39-2de2-4bff-a592-9c59982f5aab','true','access.token.claim'),('6a0cab39-2de2-4bff-a592-9c59982f5aab','email','claim.name'),('6a0cab39-2de2-4bff-a592-9c59982f5aab','true','id.token.claim'),('6a0cab39-2de2-4bff-a592-9c59982f5aab','String','jsonType.label'),('6a0cab39-2de2-4bff-a592-9c59982f5aab','email','user.attribute'),('6a0cab39-2de2-4bff-a592-9c59982f5aab','true','userinfo.token.claim'),('6b2f171a-3e80-4cce-ab15-a54d82648dae','true','access.token.claim'),('6b2f171a-3e80-4cce-ab15-a54d82648dae','true','id.token.claim'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','true','access.token.claim'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','clientId','claim.name'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','true','id.token.claim'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','String','jsonType.label'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','clientId','user.session.note'),('6b35724b-c05f-4cfe-98b6-def20d77a24f','true','userinfo.token.claim'),('6b911826-e741-4609-b2b4-21f07a22ec1c','true','access.token.claim'),('6b911826-e741-4609-b2b4-21f07a22ec1c','email','claim.name'),('6b911826-e741-4609-b2b4-21f07a22ec1c','true','id.token.claim'),('6b911826-e741-4609-b2b4-21f07a22ec1c','String','jsonType.label'),('6b911826-e741-4609-b2b4-21f07a22ec1c','email','user.attribute'),('6b911826-e741-4609-b2b4-21f07a22ec1c','true','userinfo.token.claim'),('6bd63c06-97bc-4d17-b653-9b45f178d679','true','access.token.claim'),('6bd63c06-97bc-4d17-b653-9b45f178d679','zoneinfo','claim.name'),('6bd63c06-97bc-4d17-b653-9b45f178d679','true','id.token.claim'),('6bd63c06-97bc-4d17-b653-9b45f178d679','String','jsonType.label'),('6bd63c06-97bc-4d17-b653-9b45f178d679','zoneinfo','user.attribute'),('6bd63c06-97bc-4d17-b653-9b45f178d679','true','userinfo.token.claim'),('6c2899a6-6429-416d-9205-94c59d06fa00','true','access.token.claim'),('6c2899a6-6429-416d-9205-94c59d06fa00','realm_access.roles','claim.name'),('6c2899a6-6429-416d-9205-94c59d06fa00','String','jsonType.label'),('6c2899a6-6429-416d-9205-94c59d06fa00','true','multivalued'),('6c2899a6-6429-416d-9205-94c59d06fa00','foo','user.attribute'),('73af09d5-c514-4ae8-b515-b51d470ac66b','true','access.token.claim'),('73af09d5-c514-4ae8-b515-b51d470ac66b','birthdate','claim.name'),('73af09d5-c514-4ae8-b515-b51d470ac66b','true','id.token.claim'),('73af09d5-c514-4ae8-b515-b51d470ac66b','String','jsonType.label'),('73af09d5-c514-4ae8-b515-b51d470ac66b','birthdate','user.attribute'),('73af09d5-c514-4ae8-b515-b51d470ac66b','true','userinfo.token.claim'),('76387b88-87cd-4640-8b99-3c93debb2da4','true','access.token.claim'),('76387b88-87cd-4640-8b99-3c93debb2da4','birthdate','claim.name'),('76387b88-87cd-4640-8b99-3c93debb2da4','true','id.token.claim'),('76387b88-87cd-4640-8b99-3c93debb2da4','String','jsonType.label'),('76387b88-87cd-4640-8b99-3c93debb2da4','birthdate','user.attribute'),('76387b88-87cd-4640-8b99-3c93debb2da4','true','userinfo.token.claim'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','true','access.token.claim'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','given_name','claim.name'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','true','id.token.claim'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','String','jsonType.label'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','firstName','user.attribute'),('789ee616-cb5b-4b3f-a8ed-4a2ba5714850','true','userinfo.token.claim'),('79b78485-08e4-4a32-95d1-23de4c94bb30','true','access.token.claim'),('79b78485-08e4-4a32-95d1-23de4c94bb30','phone_number_verified','claim.name'),('79b78485-08e4-4a32-95d1-23de4c94bb30','true','id.token.claim'),('79b78485-08e4-4a32-95d1-23de4c94bb30','boolean','jsonType.label'),('79b78485-08e4-4a32-95d1-23de4c94bb30','phoneNumberVerified','user.attribute'),('79b78485-08e4-4a32-95d1-23de4c94bb30','true','userinfo.token.claim'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','true','access.token.claim'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','true','id.token.claim'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','country','user.attribute.country'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','formatted','user.attribute.formatted'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','locality','user.attribute.locality'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','postal_code','user.attribute.postal_code'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','region','user.attribute.region'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','street','user.attribute.street'),('7a0119fe-05ef-4f3e-bb3c-bc8d7135552d','true','userinfo.token.claim'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','true','access.token.claim'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','locale','claim.name'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','true','id.token.claim'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','String','jsonType.label'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','locale','user.attribute'),('7ad2ee99-27c0-46aa-9fde-d977f92e29c8','true','userinfo.token.claim'),('7e74d7e8-3365-45db-a276-e03dc9b44207','true','access.token.claim'),('7e74d7e8-3365-45db-a276-e03dc9b44207','updated_at','claim.name'),('7e74d7e8-3365-45db-a276-e03dc9b44207','true','id.token.claim'),('7e74d7e8-3365-45db-a276-e03dc9b44207','long','jsonType.label'),('7e74d7e8-3365-45db-a276-e03dc9b44207','updatedAt','user.attribute'),('7e74d7e8-3365-45db-a276-e03dc9b44207','true','userinfo.token.claim'),('7eb1fe7e-ff95-400f-96fd-8a55dffb1072','true','access.token.claim'),('7eb1fe7e-ff95-400f-96fd-8a55dffb1072','resource_access.${client_id}.roles','claim.name'),('7eb1fe7e-ff95-400f-96fd-8a55dffb1072','String','jsonType.label'),('7eb1fe7e-ff95-400f-96fd-8a55dffb1072','true','multivalued'),('7eb1fe7e-ff95-400f-96fd-8a55dffb1072','foo','user.attribute'),('82e894f0-ef17-4da1-95bb-a555df420bb4','true','access.token.claim'),('82e894f0-ef17-4da1-95bb-a555df420bb4','realm_access.roles','claim.name'),('82e894f0-ef17-4da1-95bb-a555df420bb4','String','jsonType.label'),('82e894f0-ef17-4da1-95bb-a555df420bb4','true','multivalued'),('82e894f0-ef17-4da1-95bb-a555df420bb4','foo','user.attribute'),('85ccf30e-d1df-41f5-a660-647b290c68f1','true','access.token.claim'),('85ccf30e-d1df-41f5-a660-647b290c68f1','realm_access.roles','claim.name'),('85ccf30e-d1df-41f5-a660-647b290c68f1','String','jsonType.label'),('85ccf30e-d1df-41f5-a660-647b290c68f1','true','multivalued'),('85ccf30e-d1df-41f5-a660-647b290c68f1','foo','user.attribute'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','true','access.token.claim'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','middle_name','claim.name'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','true','id.token.claim'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','String','jsonType.label'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','middleName','user.attribute'),('88645e27-b136-4cf0-b9d4-5247cf7998e1','true','userinfo.token.claim'),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','true','access.token.claim'),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','groups','claim.name'),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','true','id.token.claim'),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','String','jsonType.label'),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','true','multivalued'),('8b02ae3a-fc59-41dc-bcbe-3e95a5015d49','foo','user.attribute'),('8d439225-957d-4b65-8e42-7981210cfc7b','true','access.token.claim'),('8d439225-957d-4b65-8e42-7981210cfc7b','email_verified','claim.name'),('8d439225-957d-4b65-8e42-7981210cfc7b','true','id.token.claim'),('8d439225-957d-4b65-8e42-7981210cfc7b','boolean','jsonType.label'),('8d439225-957d-4b65-8e42-7981210cfc7b','emailVerified','user.attribute'),('8d439225-957d-4b65-8e42-7981210cfc7b','true','userinfo.token.claim'),('9312b575-bcd9-4b99-809d-90eac27377ce','true','access.token.claim'),('9312b575-bcd9-4b99-809d-90eac27377ce','clientId','claim.name'),('9312b575-bcd9-4b99-809d-90eac27377ce','true','id.token.claim'),('9312b575-bcd9-4b99-809d-90eac27377ce','String','jsonType.label'),('9312b575-bcd9-4b99-809d-90eac27377ce','clientId','user.session.note'),('9312b575-bcd9-4b99-809d-90eac27377ce','true','userinfo.token.claim'),('93f991f4-5529-409e-80ca-acf668d1c49c','true','access.token.claim'),('93f991f4-5529-409e-80ca-acf668d1c49c','picture','claim.name'),('93f991f4-5529-409e-80ca-acf668d1c49c','true','id.token.claim'),('93f991f4-5529-409e-80ca-acf668d1c49c','String','jsonType.label'),('93f991f4-5529-409e-80ca-acf668d1c49c','picture','user.attribute'),('93f991f4-5529-409e-80ca-acf668d1c49c','true','userinfo.token.claim'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','true','access.token.claim'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','preferred_username','claim.name'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','true','id.token.claim'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','String','jsonType.label'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','username','user.attribute'),('94951403-d943-4ccf-81d3-d9fb985b5f9c','true','userinfo.token.claim'),('960c6f6f-2c4e-404a-8306-41c5e005be49','true','access.token.claim'),('960c6f6f-2c4e-404a-8306-41c5e005be49','true','id.token.claim'),('97846bc9-183c-46fa-8c0e-53810a7a3c7c','true','access.token.claim'),('97846bc9-183c-46fa-8c0e-53810a7a3c7c','true','id.token.claim'),('9834c86e-b7b7-4edf-8f59-24269c82131c','true','access.token.claim'),('9834c86e-b7b7-4edf-8f59-24269c82131c','family_name','claim.name'),('9834c86e-b7b7-4edf-8f59-24269c82131c','true','id.token.claim'),('9834c86e-b7b7-4edf-8f59-24269c82131c','String','jsonType.label'),('9834c86e-b7b7-4edf-8f59-24269c82131c','lastName','user.attribute'),('9834c86e-b7b7-4edf-8f59-24269c82131c','true','userinfo.token.claim'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','true','access.token.claim'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','phone_number_verified','claim.name'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','true','id.token.claim'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','boolean','jsonType.label'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','phoneNumberVerified','user.attribute'),('98d8ab30-15e2-4b34-9f00-54c21ed0bb3e','true','userinfo.token.claim'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','true','access.token.claim'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','clientId','claim.name'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','true','id.token.claim'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','String','jsonType.label'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','clientId','user.session.note'),('999a3968-ee82-4d9e-977c-79cb1c9d92b5','true','userinfo.token.claim'),('9ad39c76-2c15-4407-a940-e73066ebe631','true','access.token.claim'),('9ad39c76-2c15-4407-a940-e73066ebe631','groups','claim.name'),('9ad39c76-2c15-4407-a940-e73066ebe631','true','id.token.claim'),('9ad39c76-2c15-4407-a940-e73066ebe631','String','jsonType.label'),('9ad39c76-2c15-4407-a940-e73066ebe631','true','multivalued'),('9ad39c76-2c15-4407-a940-e73066ebe631','foo','user.attribute'),('9c13952c-2665-44a1-975c-a4eba4f997f5','Role','attribute.name'),('9c13952c-2665-44a1-975c-a4eba4f997f5','Basic','attribute.nameformat'),('9c13952c-2665-44a1-975c-a4eba4f997f5','false','single'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','true','access.token.claim'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','website','claim.name'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','true','id.token.claim'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','String','jsonType.label'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','website','user.attribute'),('9cc5f3f5-329c-4c13-ae87-290440e99d08','true','userinfo.token.claim'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','true','access.token.claim'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','zoneinfo','claim.name'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','true','id.token.claim'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','String','jsonType.label'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','zoneinfo','user.attribute'),('9e9a9737-ab39-475f-bb71-70e5c8f6098b','true','userinfo.token.claim'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','true','access.token.claim'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','preferred_username','claim.name'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','true','id.token.claim'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','String','jsonType.label'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','username','user.attribute'),('a24f3385-903b-4a46-8dd0-74dd609ef8e8','true','userinfo.token.claim'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','true','access.token.claim'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','phone_number_verified','claim.name'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','true','id.token.claim'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','boolean','jsonType.label'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','phoneNumberVerified','user.attribute'),('a25c00d6-ff3c-42cd-b997-499ffe7a1e7e','true','userinfo.token.claim'),('a6f1a5b1-5608-4cf8-866e-a726d54bf630','true','access.token.claim'),('a6f1a5b1-5608-4cf8-866e-a726d54bf630','resource_access.${client_id}.roles','claim.name'),('a6f1a5b1-5608-4cf8-866e-a726d54bf630','String','jsonType.label'),('a6f1a5b1-5608-4cf8-866e-a726d54bf630','true','multivalued'),('a6f1a5b1-5608-4cf8-866e-a726d54bf630','foo','user.attribute'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','true','access.token.claim'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','phone_number','claim.name'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','true','id.token.claim'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','String','jsonType.label'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','phoneNumber','user.attribute'),('a86b32b4-bf5b-49f3-b5cc-594699aaf85d','true','userinfo.token.claim'),('a8dca746-d4fe-489c-b82a-16a547e4da06','true','access.token.claim'),('a8dca746-d4fe-489c-b82a-16a547e4da06','zoneinfo','claim.name'),('a8dca746-d4fe-489c-b82a-16a547e4da06','true','id.token.claim'),('a8dca746-d4fe-489c-b82a-16a547e4da06','String','jsonType.label'),('a8dca746-d4fe-489c-b82a-16a547e4da06','zoneinfo','user.attribute'),('a8dca746-d4fe-489c-b82a-16a547e4da06','true','userinfo.token.claim'),('ab53dfa0-de96-4e1c-b550-85a9a461a199','true','access.token.claim'),('ab53dfa0-de96-4e1c-b550-85a9a461a199','true','id.token.claim'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','true','access.token.claim'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','website','claim.name'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','true','id.token.claim'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','String','jsonType.label'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','website','user.attribute'),('accbfbb9-39c0-4bb7-9742-189a96abdb28','true','userinfo.token.claim'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','true','access.token.claim'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','updated_at','claim.name'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','true','id.token.claim'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','long','jsonType.label'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','updatedAt','user.attribute'),('ae380beb-3bb9-4e56-af92-fe91ac26d114','true','userinfo.token.claim'),('ae5e5345-9fe3-40d5-a3bf-2d6a93a5e58c','true','access.token.claim'),('ae5e5345-9fe3-40d5-a3bf-2d6a93a5e58c','resource_access.${client_id}.roles','claim.name'),('ae5e5345-9fe3-40d5-a3bf-2d6a93a5e58c','String','jsonType.label'),('ae5e5345-9fe3-40d5-a3bf-2d6a93a5e58c','true','multivalued'),('ae5e5345-9fe3-40d5-a3bf-2d6a93a5e58c','foo','user.attribute'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','true','access.token.claim'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','phone_number','claim.name'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','true','id.token.claim'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','String','jsonType.label'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','phoneNumber','user.attribute'),('b03669eb-c7d2-4765-adfa-7acbe1d2e513','true','userinfo.token.claim'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','true','access.token.claim'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','true','id.token.claim'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','country','user.attribute.country'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','formatted','user.attribute.formatted'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','locality','user.attribute.locality'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','postal_code','user.attribute.postal_code'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','region','user.attribute.region'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','street','user.attribute.street'),('b75fb6ed-572a-4af3-bb5c-33cb2d79f60a','true','userinfo.token.claim'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','true','access.token.claim'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','preferred_username','claim.name'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','true','id.token.claim'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','String','jsonType.label'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','username','user.attribute'),('b8bd2110-c76f-4fc4-be91-b6fd6ad9f1db','true','userinfo.token.claim'),('ba435ead-f364-4452-be8c-b51f12eed58b','true','access.token.claim'),('ba435ead-f364-4452-be8c-b51f12eed58b','birthdate','claim.name'),('ba435ead-f364-4452-be8c-b51f12eed58b','true','id.token.claim'),('ba435ead-f364-4452-be8c-b51f12eed58b','String','jsonType.label'),('ba435ead-f364-4452-be8c-b51f12eed58b','birthdate','user.attribute'),('ba435ead-f364-4452-be8c-b51f12eed58b','true','userinfo.token.claim'),('baf021f2-f994-40a8-b1c9-b83c0353323b','true','access.token.claim'),('baf021f2-f994-40a8-b1c9-b83c0353323b','picture','claim.name'),('baf021f2-f994-40a8-b1c9-b83c0353323b','true','id.token.claim'),('baf021f2-f994-40a8-b1c9-b83c0353323b','String','jsonType.label'),('baf021f2-f994-40a8-b1c9-b83c0353323b','picture','user.attribute'),('baf021f2-f994-40a8-b1c9-b83c0353323b','true','userinfo.token.claim'),('bb113c19-2446-4253-b28c-abb2a10644af','true','access.token.claim'),('bb113c19-2446-4253-b28c-abb2a10644af','middle_name','claim.name'),('bb113c19-2446-4253-b28c-abb2a10644af','true','id.token.claim'),('bb113c19-2446-4253-b28c-abb2a10644af','String','jsonType.label'),('bb113c19-2446-4253-b28c-abb2a10644af','middleName','user.attribute'),('bb113c19-2446-4253-b28c-abb2a10644af','true','userinfo.token.claim'),('bb8b72ad-75b2-46b1-ae42-f57675705009','true','access.token.claim'),('bb8b72ad-75b2-46b1-ae42-f57675705009','clientHost','claim.name'),('bb8b72ad-75b2-46b1-ae42-f57675705009','true','id.token.claim'),('bb8b72ad-75b2-46b1-ae42-f57675705009','String','jsonType.label'),('bb8b72ad-75b2-46b1-ae42-f57675705009','clientHost','user.session.note'),('bb8b72ad-75b2-46b1-ae42-f57675705009','true','userinfo.token.claim'),('bd4250e9-3641-48b5-81a6-10a23f958425','true','access.token.claim'),('bd4250e9-3641-48b5-81a6-10a23f958425','phone_number_verified','claim.name'),('bd4250e9-3641-48b5-81a6-10a23f958425','true','id.token.claim'),('bd4250e9-3641-48b5-81a6-10a23f958425','boolean','jsonType.label'),('bd4250e9-3641-48b5-81a6-10a23f958425','phoneNumberVerified','user.attribute'),('bd4250e9-3641-48b5-81a6-10a23f958425','true','userinfo.token.claim'),('bdba35d2-1c09-4d73-8768-47e5064286b7','true','access.token.claim'),('bdba35d2-1c09-4d73-8768-47e5064286b7','locale','claim.name'),('bdba35d2-1c09-4d73-8768-47e5064286b7','true','id.token.claim'),('bdba35d2-1c09-4d73-8768-47e5064286b7','String','jsonType.label'),('bdba35d2-1c09-4d73-8768-47e5064286b7','locale','user.attribute'),('bdba35d2-1c09-4d73-8768-47e5064286b7','true','userinfo.token.claim'),('c17d52d5-ad08-4034-be1c-9fab7bc24484','true','access.token.claim'),('c17d52d5-ad08-4034-be1c-9fab7bc24484','realm_access.roles','claim.name'),('c17d52d5-ad08-4034-be1c-9fab7bc24484','String','jsonType.label'),('c17d52d5-ad08-4034-be1c-9fab7bc24484','true','multivalued'),('c17d52d5-ad08-4034-be1c-9fab7bc24484','foo','user.attribute'),('c2b354ce-da97-4e41-bc56-f1ca60be6c8a','true','access.token.claim'),('c2b354ce-da97-4e41-bc56-f1ca60be6c8a','true','id.token.claim'),('c2b354ce-da97-4e41-bc56-f1ca60be6c8a','true','userinfo.token.claim'),('c3c067aa-adef-400c-97c5-99c5b1171031','true','access.token.claim'),('c3c067aa-adef-400c-97c5-99c5b1171031','locale','claim.name'),('c3c067aa-adef-400c-97c5-99c5b1171031','true','id.token.claim'),('c3c067aa-adef-400c-97c5-99c5b1171031','String','jsonType.label'),('c3c067aa-adef-400c-97c5-99c5b1171031','locale','user.attribute'),('c3c067aa-adef-400c-97c5-99c5b1171031','true','userinfo.token.claim'),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','true','access.token.claim'),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','updated_at','claim.name'),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','true','id.token.claim'),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','long','jsonType.label'),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','updatedAt','user.attribute'),('c52f3f32-cdc0-4cb8-ae55-a78b5f9e3569','true','userinfo.token.claim'),('c70b95c4-2257-444c-a9ac-ff56695cc8a8','true','access.token.claim'),('c70b95c4-2257-444c-a9ac-ff56695cc8a8','resource_access.${client_id}.roles','claim.name'),('c70b95c4-2257-444c-a9ac-ff56695cc8a8','String','jsonType.label'),('c70b95c4-2257-444c-a9ac-ff56695cc8a8','true','multivalued'),('c70b95c4-2257-444c-a9ac-ff56695cc8a8','foo','user.attribute'),('c89276ca-5d59-4e25-bfd4-496767ed8105','true','access.token.claim'),('c89276ca-5d59-4e25-bfd4-496767ed8105','locale','claim.name'),('c89276ca-5d59-4e25-bfd4-496767ed8105','true','id.token.claim'),('c89276ca-5d59-4e25-bfd4-496767ed8105','String','jsonType.label'),('c89276ca-5d59-4e25-bfd4-496767ed8105','locale','user.attribute'),('c89276ca-5d59-4e25-bfd4-496767ed8105','true','userinfo.token.claim'),('c89509a6-8720-4b6c-969a-5363e1625b54','true','access.token.claim'),('c89509a6-8720-4b6c-969a-5363e1625b54','website','claim.name'),('c89509a6-8720-4b6c-969a-5363e1625b54','true','id.token.claim'),('c89509a6-8720-4b6c-969a-5363e1625b54','String','jsonType.label'),('c89509a6-8720-4b6c-969a-5363e1625b54','website','user.attribute'),('c89509a6-8720-4b6c-969a-5363e1625b54','true','userinfo.token.claim'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','true','access.token.claim'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','gender','claim.name'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','true','id.token.claim'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','String','jsonType.label'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','gender','user.attribute'),('cab81b62-b673-45f7-9af4-57ee2ea7704c','true','userinfo.token.claim'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','true','access.token.claim'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','preferred_username','claim.name'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','true','id.token.claim'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','String','jsonType.label'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','username','user.attribute'),('cada6a6f-1886-43ed-9128-c7a41c071fb6','true','userinfo.token.claim'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','true','access.token.claim'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','locale','claim.name'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','true','id.token.claim'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','String','jsonType.label'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','locale','user.attribute'),('caf09b34-bf86-41ef-95d6-edd4ab096c6f','true','userinfo.token.claim'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','true','access.token.claim'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','clientHost','claim.name'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','true','id.token.claim'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','String','jsonType.label'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','clientHost','user.session.note'),('cb0a1d3b-6123-435b-b4a9-a977161f41ea','true','userinfo.token.claim'),('cb5d8b02-988d-447f-8226-1ce698c2c842','true','access.token.claim'),('cb5d8b02-988d-447f-8226-1ce698c2c842','true','id.token.claim'),('cb5d8b02-988d-447f-8226-1ce698c2c842','country','user.attribute.country'),('cb5d8b02-988d-447f-8226-1ce698c2c842','formatted','user.attribute.formatted'),('cb5d8b02-988d-447f-8226-1ce698c2c842','locality','user.attribute.locality'),('cb5d8b02-988d-447f-8226-1ce698c2c842','postal_code','user.attribute.postal_code'),('cb5d8b02-988d-447f-8226-1ce698c2c842','region','user.attribute.region'),('cb5d8b02-988d-447f-8226-1ce698c2c842','street','user.attribute.street'),('cb5d8b02-988d-447f-8226-1ce698c2c842','true','userinfo.token.claim'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','true','access.token.claim'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','clientId','claim.name'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','true','id.token.claim'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','String','jsonType.label'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','clientId','user.session.note'),('cc5660b6-6a7e-454b-9a23-e4d66919977c','true','userinfo.token.claim'),('cd5e273e-a928-4406-a8c7-9750cc060dc3','true','access.token.claim'),('cd5e273e-a928-4406-a8c7-9750cc060dc3','given_name','claim.name'),('cd5e273e-a928-4406-a8c7-9750cc060dc3','true','id.token.claim'),('cd5e273e-a928-4406-a8c7-9750cc060dc3','String','jsonType.label'),('cd5e273e-a928-4406-a8c7-9750cc060dc3','firstName','user.attribute'),('cd5e273e-a928-4406-a8c7-9750cc060dc3','true','userinfo.token.claim'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','true','access.token.claim'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','clientAddress','claim.name'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','true','id.token.claim'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','String','jsonType.label'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','clientAddress','user.session.note'),('cf0cc0ec-c6e3-410a-8f27-b5d2faccb045','true','userinfo.token.claim'),('cf419212-dd3e-403b-a1a5-54a16d3c2997','true','access.token.claim'),('cf419212-dd3e-403b-a1a5-54a16d3c2997','clientHost','claim.name'),('cf419212-dd3e-403b-a1a5-54a16d3c2997','true','id.token.claim'),('cf419212-dd3e-403b-a1a5-54a16d3c2997','String','jsonType.label'),('cf419212-dd3e-403b-a1a5-54a16d3c2997','clientHost','user.session.note'),('cf419212-dd3e-403b-a1a5-54a16d3c2997','true','userinfo.token.claim'),('cf6080af-26cc-4848-9fab-27df5f5f73a1','true','access.token.claim'),('cf6080af-26cc-4848-9fab-27df5f5f73a1','updated_at','claim.name'),('cf6080af-26cc-4848-9fab-27df5f5f73a1','true','id.token.claim'),('cf6080af-26cc-4848-9fab-27df5f5f73a1','long','jsonType.label'),('cf6080af-26cc-4848-9fab-27df5f5f73a1','updatedAt','user.attribute'),('cf6080af-26cc-4848-9fab-27df5f5f73a1','true','userinfo.token.claim'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','true','access.token.claim'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','picture','claim.name'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','true','id.token.claim'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','String','jsonType.label'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','picture','user.attribute'),('d1fc90fc-b5b2-4a65-834e-fbe472dba849','true','userinfo.token.claim'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','true','access.token.claim'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','phone_number','claim.name'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','true','id.token.claim'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','String','jsonType.label'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','phoneNumber','user.attribute'),('d3e25a27-0dac-44b8-9a01-cef0bd81e638','true','userinfo.token.claim'),('d3fd017d-a402-491e-8616-22a14cefcf65','true','access.token.claim'),('d3fd017d-a402-491e-8616-22a14cefcf65','clientAddress','claim.name'),('d3fd017d-a402-491e-8616-22a14cefcf65','true','id.token.claim'),('d3fd017d-a402-491e-8616-22a14cefcf65','String','jsonType.label'),('d3fd017d-a402-491e-8616-22a14cefcf65','clientAddress','user.session.note'),('d3fd017d-a402-491e-8616-22a14cefcf65','true','userinfo.token.claim'),('d42f0904-6a3f-4538-8011-a8f08e5afabc','true','access.token.claim'),('d42f0904-6a3f-4538-8011-a8f08e5afabc','phone_number_verified','claim.name'),('d42f0904-6a3f-4538-8011-a8f08e5afabc','true','id.token.claim'),('d42f0904-6a3f-4538-8011-a8f08e5afabc','boolean','jsonType.label'),('d42f0904-6a3f-4538-8011-a8f08e5afabc','phoneNumberVerified','user.attribute'),('d42f0904-6a3f-4538-8011-a8f08e5afabc','true','userinfo.token.claim'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','true','access.token.claim'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','profile','claim.name'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','true','id.token.claim'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','String','jsonType.label'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','profile','user.attribute'),('d4f3888b-7c59-4610-9c82-7f604752d2ee','true','userinfo.token.claim'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','true','access.token.claim'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','family_name','claim.name'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','true','id.token.claim'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','String','jsonType.label'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','lastName','user.attribute'),('d5ac349f-64e9-4336-999f-6cdf3913b7e5','true','userinfo.token.claim'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','true','access.token.claim'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','middle_name','claim.name'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','true','id.token.claim'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','String','jsonType.label'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','middleName','user.attribute'),('d5ad7850-e570-46c3-8b87-537fe0e89b99','true','userinfo.token.claim'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','true','access.token.claim'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','locale','claim.name'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','true','id.token.claim'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','String','jsonType.label'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','locale','user.attribute'),('d5d41b59-dcac-45e4-a598-b2daa3a8f92c','true','userinfo.token.claim'),('d6e40de8-8677-4ab5-91c1-bd341d79eade','true','access.token.claim'),('d6e40de8-8677-4ab5-91c1-bd341d79eade','website','claim.name'),('d6e40de8-8677-4ab5-91c1-bd341d79eade','true','id.token.claim'),('d6e40de8-8677-4ab5-91c1-bd341d79eade','String','jsonType.label'),('d6e40de8-8677-4ab5-91c1-bd341d79eade','website','user.attribute'),('d6e40de8-8677-4ab5-91c1-bd341d79eade','true','userinfo.token.claim'),('d932b754-b768-4132-93ce-4be28c577f46','true','access.token.claim'),('d932b754-b768-4132-93ce-4be28c577f46','gender','claim.name'),('d932b754-b768-4132-93ce-4be28c577f46','true','id.token.claim'),('d932b754-b768-4132-93ce-4be28c577f46','String','jsonType.label'),('d932b754-b768-4132-93ce-4be28c577f46','gender','user.attribute'),('d932b754-b768-4132-93ce-4be28c577f46','true','userinfo.token.claim'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','true','access.token.claim'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','email','claim.name'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','true','id.token.claim'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','String','jsonType.label'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','email','user.attribute'),('dac77cfc-c974-47ee-87ad-e170b381b1bd','true','userinfo.token.claim'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','true','access.token.claim'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','email_verified','claim.name'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','true','id.token.claim'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','boolean','jsonType.label'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','emailVerified','user.attribute'),('dfb24508-f4e1-47cf-b2bb-dbeecd3c1107','true','userinfo.token.claim'),('e195412f-e75b-48ac-b403-b6bd4263489b','true','access.token.claim'),('e195412f-e75b-48ac-b403-b6bd4263489b','clientAddress','claim.name'),('e195412f-e75b-48ac-b403-b6bd4263489b','true','id.token.claim'),('e195412f-e75b-48ac-b403-b6bd4263489b','String','jsonType.label'),('e195412f-e75b-48ac-b403-b6bd4263489b','clientAddress','user.session.note'),('e195412f-e75b-48ac-b403-b6bd4263489b','true','userinfo.token.claim'),('e3c6ecf8-d118-4856-9eea-9d4598958738','true','access.token.claim'),('e3c6ecf8-d118-4856-9eea-9d4598958738','locale','claim.name'),('e3c6ecf8-d118-4856-9eea-9d4598958738','true','id.token.claim'),('e3c6ecf8-d118-4856-9eea-9d4598958738','String','jsonType.label'),('e3c6ecf8-d118-4856-9eea-9d4598958738','locale','user.attribute'),('e3c6ecf8-d118-4856-9eea-9d4598958738','true','userinfo.token.claim'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','true','access.token.claim'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','upn','claim.name'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','true','id.token.claim'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','String','jsonType.label'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','username','user.attribute'),('e5da9f5e-e2f1-4bab-b1a3-93a94ec48511','true','userinfo.token.claim'),('e658e861-51f4-45ab-aa2a-311e3498ab99','true','access.token.claim'),('e658e861-51f4-45ab-aa2a-311e3498ab99','gender','claim.name'),('e658e861-51f4-45ab-aa2a-311e3498ab99','true','id.token.claim'),('e658e861-51f4-45ab-aa2a-311e3498ab99','String','jsonType.label'),('e658e861-51f4-45ab-aa2a-311e3498ab99','gender','user.attribute'),('e658e861-51f4-45ab-aa2a-311e3498ab99','true','userinfo.token.claim'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','true','access.token.claim'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','clientHost','claim.name'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','true','id.token.claim'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','String','jsonType.label'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','clientHost','user.session.note'),('e6b798c5-5435-4c5e-85df-c107defaf4d2','true','userinfo.token.claim'),('e7719ff3-7b3e-488d-98b2-5566f07c517b','Role','attribute.name'),('e7719ff3-7b3e-488d-98b2-5566f07c517b','Basic','attribute.nameformat'),('e7719ff3-7b3e-488d-98b2-5566f07c517b','false','single'),('e8c407ff-74ad-4964-a33b-4640b795be9b','true','access.token.claim'),('e8c407ff-74ad-4964-a33b-4640b795be9b','true','id.token.claim'),('e8c407ff-74ad-4964-a33b-4640b795be9b','true','userinfo.token.claim'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','true','access.token.claim'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','email','claim.name'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','true','id.token.claim'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','String','jsonType.label'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','email','user.attribute'),('ebcbee67-dd95-453a-b9d0-f2c7c3a17529','true','userinfo.token.claim'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','true','access.token.claim'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','nickname','claim.name'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','true','id.token.claim'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','String','jsonType.label'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','nickname','user.attribute'),('eca128ae-ff95-4d43-9c51-03fb91a8a7d4','true','userinfo.token.claim'),('ecb90939-cb3f-41cb-838d-17939d150c00','true','access.token.claim'),('ecb90939-cb3f-41cb-838d-17939d150c00','gender','claim.name'),('ecb90939-cb3f-41cb-838d-17939d150c00','true','id.token.claim'),('ecb90939-cb3f-41cb-838d-17939d150c00','String','jsonType.label'),('ecb90939-cb3f-41cb-838d-17939d150c00','gender','user.attribute'),('ecb90939-cb3f-41cb-838d-17939d150c00','true','userinfo.token.claim'),('f21455d2-1570-4e12-9fca-460995e05b94','true','access.token.claim'),('f21455d2-1570-4e12-9fca-460995e05b94','phone_number','claim.name'),('f21455d2-1570-4e12-9fca-460995e05b94','true','id.token.claim'),('f21455d2-1570-4e12-9fca-460995e05b94','String','jsonType.label'),('f21455d2-1570-4e12-9fca-460995e05b94','phoneNumber','user.attribute'),('f21455d2-1570-4e12-9fca-460995e05b94','true','userinfo.token.claim'),('f4ade729-0545-4aff-8712-d1d875495508','true','access.token.claim'),('f4ade729-0545-4aff-8712-d1d875495508','locale','claim.name'),('f4ade729-0545-4aff-8712-d1d875495508','true','id.token.claim'),('f4ade729-0545-4aff-8712-d1d875495508','String','jsonType.label'),('f4ade729-0545-4aff-8712-d1d875495508','locale','user.attribute'),('f4ade729-0545-4aff-8712-d1d875495508','true','userinfo.token.claim'),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','true','access.token.claim'),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','given_name','claim.name'),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','true','id.token.claim'),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','String','jsonType.label'),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','firstName','user.attribute'),('f534a9c3-fe7e-4623-8b08-40c58dcbb37a','true','userinfo.token.claim'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','true','access.token.claim'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','clientAddress','claim.name'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','true','id.token.claim'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','String','jsonType.label'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','clientAddress','user.session.note'),('f554280d-c4f5-4cd2-95be-aafb8ce59051','true','userinfo.token.claim'),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','true','access.token.claim'),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','email_verified','claim.name'),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','true','id.token.claim'),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','boolean','jsonType.label'),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','emailVerified','user.attribute'),('f61d7f89-18f5-468f-9ab6-f21ba2c0de59','true','userinfo.token.claim'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','true','access.token.claim'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','zoneinfo','claim.name'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','true','id.token.claim'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','String','jsonType.label'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','zoneinfo','user.attribute'),('f8c3a3b7-0e27-4c8e-8ec3-cceab6537517','true','userinfo.token.claim'),('f99339ee-0802-482b-a180-de1adee5cca9','true','access.token.claim'),('f99339ee-0802-482b-a180-de1adee5cca9','gender','claim.name'),('f99339ee-0802-482b-a180-de1adee5cca9','true','id.token.claim'),('f99339ee-0802-482b-a180-de1adee5cca9','String','jsonType.label'),('f99339ee-0802-482b-a180-de1adee5cca9','gender','user.attribute'),('f99339ee-0802-482b-a180-de1adee5cca9','true','userinfo.token.claim'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','true','access.token.claim'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','clientHost','claim.name'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','true','id.token.claim'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','String','jsonType.label'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','clientHost','user.session.note'),('f9d78a4b-41dd-4e17-b0a8-2a9aa22c19a6','true','userinfo.token.claim'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','true','access.token.claim'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','locale','claim.name'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','true','id.token.claim'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','String','jsonType.label'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','locale','user.attribute'),('fc8bd12e-f155-4b65-85c2-62ed2160ae21','true','userinfo.token.claim'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','true','access.token.claim'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','preferred_username','claim.name'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','true','id.token.claim'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','String','jsonType.label'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','username','user.attribute'),('fd03e07e-f9b3-40a7-a623-d6a0a757cbd5','true','userinfo.token.claim'),('fd8759aa-d502-4a16-81a2-d1843227a7df','true','access.token.claim'),('fd8759aa-d502-4a16-81a2-d1843227a7df','groups','claim.name'),('fd8759aa-d502-4a16-81a2-d1843227a7df','true','id.token.claim'),('fd8759aa-d502-4a16-81a2-d1843227a7df','String','jsonType.label'),('fd8759aa-d502-4a16-81a2-d1843227a7df','true','multivalued'),('fd8759aa-d502-4a16-81a2-d1843227a7df','foo','user.attribute'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','true','access.token.claim'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','family_name','claim.name'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','true','id.token.claim'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','String','jsonType.label'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','lastName','user.attribute'),('fe3c5f80-ae7d-4a8f-beb0-f5b2c255080b','true','userinfo.token.claim'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','true','access.token.claim'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','middle_name','claim.name'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','true','id.token.claim'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','String','jsonType.label'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','middleName','user.attribute'),('fffe2e36-c3bb-461c-b276-3d27daf31e5f','true','userinfo.token.claim');
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
INSERT INTO `REALM` VALUES ('a70d8574-d800-4bf9-b056-6e5e23c893a0',60,300,60,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'master',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','0e41b39b-8388-4341-8602-905f9ff86f7c',1800,_binary '\0',NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',0,1,30,6,'HmacSHA1','totp','7b694ee7-ccd8-4ed6-9e2c-3a2147d07c33','0e52095f-5cd9-460f-b44f-241be2477e02','7aecc7a9-7a1d-4694-be4f-ad36aaa69d18','8c18e9a2-b114-4bc0-abda-be1d022172b5','bfabe1d4-5b15-4677-afa0-d6eb2fde1464',31536000,_binary '\0',900,_binary '',_binary '\0','271ffd99-482f-44d7-934f-647f0c1ac855',0,_binary '\0',0,0,'9a6f67b6-6261-4ef5-8499-b788346f3ca4'),('org1',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org1',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','c9dd6a78-7259-4510-9dd1-54264192883f',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','57e780c4-e36e-40cb-9fd7-6f0c48e05ad3','f59dac93-4f68-4224-b69d-aac3852c2e87','dc473ca7-7fdd-4657-a22c-82d40c7d78a2','372b78d4-a473-4791-852f-11cf96f5a969','630db855-5c53-4f51-b446-62f6b004efa6',31536000,_binary '\0',900,_binary '',_binary '\0','5fd2156d-8ee6-42c9-98fd-012087a5a8c9',0,_binary '\0',0,0,'ec98ce6e-c86b-4d9d-9550-6c3395f64450'),('org2',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org2',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','18d50652-8e5a-4296-b818-38a67b2e7c19',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','a0c05b46-2460-43e6-bd87-43ab5a3e1f62','d419de07-b646-4711-96b3-a7ed0b8c5a22','f53ad29b-c4aa-4426-bedb-8593a4a030ea','b62f96ae-e81a-4f27-a05c-590cb5e76114','6da34705-b1f7-4163-9e33-48299150473f',31536000,_binary '\0',900,_binary '',_binary '\0','ed12923a-1593-4e2a-8bd4-335bf647c8b5',0,_binary '\0',0,0,'cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b'),('org3',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org3',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','0c4e6686-9776-4c58-a39a-acd001be8b5b',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','182ee3ad-42e8-4b51-a24b-6f9bb51e698a','521fd7ef-d138-497b-a587-3476ab9f2764','df44602f-2848-4d16-ba98-e1763143c437','beda39ab-d54e-4d38-9b62-3445c618ecb3','3ef6758d-fa51-4b1d-8570-7b07c80bbffd',31536000,_binary '\0',900,_binary '',_binary '\0','da84bb4a-f2a6-487b-96ec-58543e0a589e',0,_binary '\0',0,0,'1325cacd-320d-4249-be8f-b35936702e73'),('org4',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org4',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','b24bff5f-30f0-42eb-9698-38107a426fe8',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','151cd01c-2ce1-410b-b6c4-d4831933ff96','13f91901-df24-4773-b1f8-d4cb20e0125c','eb8428ff-517b-4f7a-bdd5-f0eb35901d39','19c274d5-b6ca-4fcc-91d1-baf3bff15978','9a009150-b71a-4bd7-b9ab-05a392b1d166',31536000,_binary '\0',900,_binary '',_binary '\0','4daf52bb-c22c-41df-a7ea-6b68d7afb073',0,_binary '\0',0,0,'9cdf1400-edbb-4f8d-9e1c-c84eaa918df1'),('org5',60,300,300,NULL,NULL,NULL,_binary '',_binary '\0',0,NULL,'org5',0,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0','NONE',1800,36000,_binary '\0',_binary '\0','e5af73e9-a20e-4b67-89b9-8d940db55f8f',1800,_binary '','ja',_binary '\0',_binary '',_binary '',_binary '\0',0,1,30,6,'HmacSHA1','totp','62a9ba74-fa82-4c6e-8120-169fcd24c31b','af64db54-046b-47dd-9c6c-1cc7f6f7fcf3','320abf40-dc41-4379-8ae8-6a59b6f154e0','1393396e-fb0a-40d6-9811-517ced90ea4b','a32d5f31-6afd-4cb9-ae68-00869ad3d853',31536000,_binary '\0',900,_binary '',_binary '\0','a3aeb95b-88b8-4e0a-92d0-61870ceeda73',0,_binary '\0',0,0,'e3213199-21fd-44ac-84c1-c2ebeec53289');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','a70d8574-d800-4bf9-b056-6e5e23c893a0','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','a70d8574-d800-4bf9-b056-6e5e23c893a0','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','a70d8574-d800-4bf9-b056-6e5e23c893a0','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','a70d8574-d800-4bf9-b056-6e5e23c893a0','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','a70d8574-d800-4bf9-b056-6e5e23c893a0','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','a70d8574-d800-4bf9-b056-6e5e23c893a0','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','a70d8574-d800-4bf9-b056-6e5e23c893a0','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','a70d8574-d800-4bf9-b056-6e5e23c893a0','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','a70d8574-d800-4bf9-b056-6e5e23c893a0','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('maxDeltaTimeSeconds','a70d8574-d800-4bf9-b056-6e5e23c893a0','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','a70d8574-d800-4bf9-b056-6e5e23c893a0','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('minimumQuickLoginWaitSeconds','a70d8574-d800-4bf9-b056-6e5e23c893a0','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','a70d8574-d800-4bf9-b056-6e5e23c893a0','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','a70d8574-d800-4bf9-b056-6e5e23c893a0','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','a70d8574-d800-4bf9-b056-6e5e23c893a0','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','a70d8574-d800-4bf9-b056-6e5e23c893a0','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','a70d8574-d800-4bf9-b056-6e5e23c893a0','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','a70d8574-d800-4bf9-b056-6e5e23c893a0','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','a70d8574-d800-4bf9-b056-6e5e23c893a0','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','a70d8574-d800-4bf9-b056-6e5e23c893a0','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','a70d8574-d800-4bf9-b056-6e5e23c893a0','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','a70d8574-d800-4bf9-b056-6e5e23c893a0','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','a70d8574-d800-4bf9-b056-6e5e23c893a0','0'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','a70d8574-d800-4bf9-b056-6e5e23c893a0','keycloak'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','a70d8574-d800-4bf9-b056-6e5e23c893a0',''),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','a70d8574-d800-4bf9-b056-6e5e23c893a0','ES256'),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','a70d8574-d800-4bf9-b056-6e5e23c893a0','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','a70d8574-d800-4bf9-b056-6e5e23c893a0','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','a70d8574-d800-4bf9-b056-6e5e23c893a0',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.strictTransportSecurity','a70d8574-d800-4bf9-b056-6e5e23c893a0','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','a70d8574-d800-4bf9-b056-6e5e23c893a0','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','a70d8574-d800-4bf9-b056-6e5e23c893a0','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','a70d8574-d800-4bf9-b056-6e5e23c893a0','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','a70d8574-d800-4bf9-b056-6e5e23c893a0','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('a70d8574-d800-4bf9-b056-6e5e23c893a0','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',_binary '',_binary '','a70d8574-d800-4bf9-b056-6e5e23c893a0'),('password','password',_binary '',_binary '','org1'),('password','password',_binary '',_binary '','org2'),('password','password',_binary '',_binary '','org3'),('password','password',_binary '',_binary '','org4'),('password','password',_binary '',_binary '','org5');
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
INSERT INTO `REDIRECT_URIS` VALUES ('05d0c822-5888-4974-b356-5c38d70b8e13','/realms/org3/account/*'),('1245c362-051d-45c4-a292-b6ae0a21a518','/realms/org1/account/*'),('2524a4a9-2675-4551-9d41-5021bff05172','/admin/org1/console/*'),('26ef7671-c4b3-4fc0-9997-da8a917fc546','/realms/org5/account/*'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','/realms/org2/account/*'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','/realms/org5/account/*'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','/realms/org3/account/*'),('55816dcb-1e22-47bd-b6b8-0869a0aede67','/realms/org2/account/*'),('8fc45615-b03a-46c3-bbb4-cb1efb37f1b9','/realms/org4/account/*'),('928cb134-c673-4f50-8bd9-05eeee264c64','/admin/org4/console/*'),('99d7091c-603b-4697-827d-3655cee59820','/realms/master/account/*'),('a847464f-52a5-4cb0-b0dd-f1beb92b3988','/*'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','/admin/org3/console/*'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','/realms/org1/account/*'),('c369f888-d2e8-4885-8438-7ab970694b27','/admin/org2/console/*'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','/admin/master/console/*'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','/admin/org5/console/*'),('d00ef4ab-386a-4f9c-8854-0d712ace428e','/*'),('dba012d2-d051-4938-ab35-1b5e65905028','/*'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','/realms/master/account/*'),('eb21f87d-406d-4f0d-aba8-d431ad07f140','/*'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','/realms/org4/account/*'),('f6bd8b94-d06c-42b4-a108-d24ea63d8e47','/*'),('f75eef0e-f758-4c23-9fe4-1173c210d99e','/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('007b3c54-784a-4437-b802-96d06a30a3ef','UPDATE_PASSWORD','Update Password','org2',_binary '',_binary '\0','UPDATE_PASSWORD',30),('014efc21-fd87-4928-bfe2-a4a6a767f3e1','update_user_locale','Update User Locale','org5',_binary '',_binary '\0','update_user_locale',1000),('027ea0ce-a481-4e80-9e2e-836c8165d742','update_user_locale','Update User Locale','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','update_user_locale',1000),('0f1c57bd-6374-47fd-af15-bbc71c08b3ae','terms_and_conditions','Terms and Conditions','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0',_binary '\0','terms_and_conditions',20),('0f4b9a7e-2cce-46b8-8d9f-d2430ae2b5b9','UPDATE_PROFILE','Update Profile','org5',_binary '',_binary '\0','UPDATE_PROFILE',40),('15d6600b-f9ce-424d-ba04-353781eeebce','CONFIGURE_TOTP','Configure OTP','org4',_binary '',_binary '\0','CONFIGURE_TOTP',10),('1676a409-cf62-459e-bf45-30075cd6fa37','UPDATE_PASSWORD','Update Password','org1',_binary '',_binary '\0','UPDATE_PASSWORD',30),('1b77309e-0d13-4f20-acd7-6215959d2a2a','CONFIGURE_TOTP','Configure OTP','org2',_binary '',_binary '\0','CONFIGURE_TOTP',10),('1f4e3d4f-1df7-4dfd-8131-46a858311005','UPDATE_PROFILE','Update Profile','org3',_binary '',_binary '\0','UPDATE_PROFILE',40),('2404bcf0-07e8-4d25-8aaa-070f7458f7f1','webauthn-register','Webauthn Register','org4',_binary '',_binary '\0','webauthn-register',70),('2b20f5b0-933a-4a58-9e2b-1a486265c485','terms_and_conditions','Terms and Conditions','org3',_binary '\0',_binary '\0','terms_and_conditions',20),('3490de03-ebc3-4b54-ba2c-fd035c7dfc61','CONFIGURE_TOTP','Configure OTP','org5',_binary '',_binary '\0','CONFIGURE_TOTP',10),('3f926010-548c-4bfd-a1a4-aedec5501327','webauthn-register','Webauthn Register','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','webauthn-register',70),('4ab54325-91d5-41df-afb9-351ede4cb2e0','update_user_locale','Update User Locale','org3',_binary '',_binary '\0','update_user_locale',1000),('4b92acbd-567d-4955-b42b-8bd97c076fc7','update_user_locale','Update User Locale','org4',_binary '',_binary '\0','update_user_locale',1000),('56b13049-76d9-4ba5-b46e-53b9edc5297b','UPDATE_PROFILE','Update Profile','org2',_binary '',_binary '\0','UPDATE_PROFILE',40),('59e1ff3f-8040-43b8-939f-e5bbb3268618','VERIFY_EMAIL','Verify Email','org5',_binary '',_binary '\0','VERIFY_EMAIL',50),('625b7531-4d36-4ef1-b577-94dd98e5962d','webauthn-register-passwordless','Webauthn Register Passwordless','org3',_binary '',_binary '\0','webauthn-register-passwordless',80),('64279167-c8b8-47d2-808f-6a79bc5738db','delete_account','Delete Account','org5',_binary '\0',_binary '\0','delete_account',60),('7a95d353-210c-4fc9-82ee-93663e24b9cc','webauthn-register','Webauthn Register','org3',_binary '',_binary '\0','webauthn-register',70),('7cf77c5e-5830-4449-ad0c-7680ff2d6bfe','UPDATE_PASSWORD','Update Password','org5',_binary '',_binary '\0','UPDATE_PASSWORD',30),('7e14ef5b-9f61-48ce-801e-16c3d2e515fe','delete_account','Delete Account','org4',_binary '\0',_binary '\0','delete_account',60),('81442247-bbc1-48d3-9a0a-93c62c5535a3','webauthn-register-passwordless','Webauthn Register Passwordless','org4',_binary '',_binary '\0','webauthn-register-passwordless',80),('8563736d-08a8-4130-84b2-86c5864e0088','VERIFY_EMAIL','Verify Email','org4',_binary '',_binary '\0','VERIFY_EMAIL',50),('88434d0f-e8a3-4f66-968c-8049baa63419','delete_account','Delete Account','org3',_binary '\0',_binary '\0','delete_account',60),('8b2542d4-3366-4a3c-a517-4df0c5c3e44a','UPDATE_PROFILE','Update Profile','org4',_binary '',_binary '\0','UPDATE_PROFILE',40),('8c0847ab-093e-4586-a7bc-aa5678b36eb7','update_user_locale','Update User Locale','org1',_binary '',_binary '\0','update_user_locale',1000),('8cf0c411-cc75-4909-a606-325d1ddf0f61','VERIFY_EMAIL','Verify Email','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','VERIFY_EMAIL',50),('91b4a2ab-6c76-4c63-a979-bd97dd3d4165','update_user_locale','Update User Locale','org2',_binary '',_binary '\0','update_user_locale',1000),('935add1c-870b-4cca-a5fc-540da1b3339f','webauthn-register','Webauthn Register','org5',_binary '',_binary '\0','webauthn-register',70),('939c6841-198a-41db-be9c-85cec36d7132','VERIFY_EMAIL','Verify Email','org2',_binary '',_binary '\0','VERIFY_EMAIL',50),('93f82397-b49c-4ecc-b580-0189c4758ea2','UPDATE_PROFILE','Update Profile','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','UPDATE_PROFILE',40),('9a9f3264-2896-4ce6-982a-b04f72a03e45','terms_and_conditions','Terms and Conditions','org2',_binary '\0',_binary '\0','terms_and_conditions',20),('9befb8ed-304f-4ba2-86b8-ab2db1ae6d56','CONFIGURE_TOTP','Configure OTP','org3',_binary '',_binary '\0','CONFIGURE_TOTP',10),('9c132d65-d667-4cd1-a27a-60c2dd7286dc','UPDATE_PASSWORD','Update Password','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','UPDATE_PASSWORD',30),('aca7e3c5-756f-4e23-acf0-6b99af7c9ec2','CONFIGURE_TOTP','Configure OTP','org1',_binary '',_binary '\0','CONFIGURE_TOTP',10),('af7102a0-4883-4ef2-a403-e03c01ac1d67','UPDATE_PASSWORD','Update Password','org4',_binary '',_binary '\0','UPDATE_PASSWORD',30),('b1cdf2ef-6fdf-435b-b95d-f2d213421411','delete_account','Delete Account','org2',_binary '\0',_binary '\0','delete_account',60),('b8ed6616-0066-4e71-94e8-4dfd1e1bd1bb','CONFIGURE_TOTP','Configure OTP','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','CONFIGURE_TOTP',10),('c1f3d0ac-a8a4-4ca8-b6ef-572a9020ffb6','UPDATE_PASSWORD','Update Password','org3',_binary '',_binary '\0','UPDATE_PASSWORD',30),('cd6be860-fbb0-4728-b4e4-7f533539e1a6','webauthn-register-passwordless','Webauthn Register Passwordless','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '',_binary '\0','webauthn-register-passwordless',80),('cd909b72-c930-4d14-b733-c188abb4fed7','webauthn-register-passwordless','Webauthn Register Passwordless','org1',_binary '',_binary '\0','webauthn-register-passwordless',80),('d581d5a3-5983-47bf-ac3a-996824d09fb8','delete_account','Delete Account','a70d8574-d800-4bf9-b056-6e5e23c893a0',_binary '\0',_binary '\0','delete_account',60),('db257487-8bce-4e80-8ef3-7b3fe73cbf13','webauthn-register','Webauthn Register','org2',_binary '',_binary '\0','webauthn-register',70),('e08dfc9c-64fc-4fe6-8500-a2b1f48c596b','terms_and_conditions','Terms and Conditions','org4',_binary '\0',_binary '\0','terms_and_conditions',20),('e0eac65e-f123-4a06-8da1-bd947e28d26d','UPDATE_PROFILE','Update Profile','org1',_binary '',_binary '\0','UPDATE_PROFILE',40),('e337bdaa-00f3-4331-8e5c-9f04b14a9506','webauthn-register','Webauthn Register','org1',_binary '',_binary '\0','webauthn-register',70),('e5f83e46-0f65-449c-a11f-207a8f5bfbe2','delete_account','Delete Account','org1',_binary '\0',_binary '\0','delete_account',60),('e6f92435-c986-46d9-9ad3-88e7747dcde9','terms_and_conditions','Terms and Conditions','org5',_binary '\0',_binary '\0','terms_and_conditions',20),('ec3a5798-fb33-4d2c-a21b-557569c2f988','VERIFY_EMAIL','Verify Email','org3',_binary '',_binary '\0','VERIFY_EMAIL',50),('f1fb97ab-fc30-48c7-af75-e030d46a8c34','terms_and_conditions','Terms and Conditions','org1',_binary '\0',_binary '\0','terms_and_conditions',20),('f7c8fa0c-d1e7-4107-a7ba-7a5f5b07f5d0','webauthn-register-passwordless','Webauthn Register Passwordless','org5',_binary '',_binary '\0','webauthn-register-passwordless',80),('fc0facb6-6bc2-4973-b3ea-dc684911a2b6','webauthn-register-passwordless','Webauthn Register Passwordless','org2',_binary '',_binary '\0','webauthn-register-passwordless',80),('fce31043-19a1-4a13-b922-6397751669ce','VERIFY_EMAIL','Verify Email','org1',_binary '',_binary '\0','VERIFY_EMAIL',50);
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('001ff1f0-0357-4058-ba4a-7b334be0a33e','cda22e09-66b3-4289-84aa-33b6c16b5ed3','kind','workspace'),('03489d11-a958-424b-ba1b-5e043b02ddb7','fb4f3945-4396-455b-8758-44c6a4901113','kind','workspace'),('03fd3a54-99e6-4eff-912f-e9e4303bb87c','17848707-df74-4e00-a74e-202f63155f9c','kind','workspace'),('0f2df7c8-feee-45dd-a5b2-6aa4a605c037','529531a5-c4b5-4955-ad0b-107a489d5e79','kind','workspace'),('15c78256-ba38-48c3-a030-6a891a309725','053f23c0-1e84-4bf4-b3dd-ebbbb1a369de','kind','organization'),('1ae6e15c-dc41-41f1-887e-886c7f5e65b9','2033d29f-23c0-4aa5-8840-5187aef4055a','kind','workspace'),('1c94faa1-a169-4918-8b20-09f0f43f33ad','9bbc2ed6-fc5e-4814-9bd6-c90ce4069398','kind','workspace'),('1f5ffa1d-6033-46f8-9430-6048e8ab0b2c','07b4313b-6906-4d53-bdac-f4309d4e8f45','kind','workspace'),('25858a01-7b39-4afd-81e8-03c5cf0eb413','a6d22921-f778-404d-9506-e1551c12b97b','kind','workspace'),('2a2378a8-dd97-471f-b596-c461484aeb44','a7b360f9-4610-4b6d-add4-6b631f64f18a','kind','workspace'),('2d865cb0-31fa-4fb6-9f96-6e8f7351b23d','fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96','kind','workspace'),('318e52d0-7d91-4abf-9e39-24f0d631d309','a5d81936-b774-4aeb-a529-847b9721b727','kind','organization'),('32a8aaeb-a597-4678-89cd-023e3403ed4b','05936ef4-f33a-48a3-a3ef-afc163e1b8a8','kind','workspace'),('363a502f-b355-431a-a3bb-75d80193da77','f423f258-1396-48c6-88d6-828a5ce3d5d1','kind','organization'),('3bda752b-cd71-4328-8b48-cae65d9677d5','b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d','kind','workspace'),('4515421d-e4c6-488f-a406-7ee210af387a','71e455a0-756c-49f5-b040-9512d76ed84d','kind','workspace'),('4ef0fbf4-d26c-4b60-883c-56b964b4bb23','29507e5d-d253-4b7a-8606-a66dbc172f22','kind','workspace'),('529ff4fc-cb65-4929-a2fe-5d7d065ba56b','ae4ebb7d-c16a-4b41-9c18-87f889b4a5af','kind','workspace'),('562bec3c-690d-4c64-9be6-725ae68e6e69','3010fd4c-2f89-44b0-9064-a7060ae3e650','kind','organization'),('56760de5-cf18-4a65-81cf-57ae193ee622','021545f0-0b93-4033-bbd4-d67649176c98','kind','workspace'),('5752246c-4471-43ed-ba0a-f1fbb5ee39d7','fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4','kind','workspace'),('5ded0769-a515-4a8e-be10-a4f99beaa81c','bec9750c-b218-4dcf-b59a-2af80de6f1d5','kind','workspace'),('5e2f6370-b695-4b04-bf18-84bc0b97b76d','34418a5b-12ad-4495-b04c-c2e0924a3178','kind','workspace'),('6364c5d0-9b18-4096-a1c7-2f276b27ccc5','c961b42b-f995-46ee-8362-40ef602980c0','kind','workspace'),('636bb82d-79d0-4ddc-abe5-4ccfd3bcecec','86758c97-abb2-4550-b393-655eaf3c8c12','kind','workspace'),('6a9d307e-ae00-4630-b431-2ce37f9c4b00','a2a4f120-32ab-4f47-b1e3-e46dcc7ee170','kind','organization'),('6b81ef3f-b6b3-40bc-aff6-7f6395cfd61c','1133e6a6-1c5a-49b4-8011-28c25003a768','kind','workspace'),('6c8b551f-60ce-44e5-86b6-8e8e33940f07','f6331ad1-dfdc-4b9d-9aec-811f92ade656','kind','workspace'),('6fc7579c-eb60-4e37-851b-19281cb829ce','f59e154c-5584-4bd7-9b66-253241cd27fb','kind','organization'),('7689968f-5971-4cce-b1c6-b5d70667a635','a5947e67-2cb7-48a7-a6be-00fcdf865e11','kind','workspace'),('78ec7187-fa5e-4a74-b8d7-c9ed6d62b874','328f053b-14f8-47d0-bee5-3d79b0559f27','kind','workspace'),('7de13425-ee33-4331-80d2-e0e9d5d8fafc','27bd2191-8c79-4cf7-822d-c531cbf07e06','kind','workspace'),('815ddc64-7ce0-4995-b0f9-c1989763a7cd','a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0','kind','workspace'),('828b48b7-ae7d-4ef3-967a-4ec72b7aa48e','1100e27e-2195-4894-a4c8-a70485b3a473','kind','workspace'),('8affb763-7ae6-45da-9c4b-7213cc0fa6f3','85a4f8f0-6658-4326-a3e6-b84248e751d5','kind','organization'),('8f7af5e7-0977-455e-8d10-d07dc38d5fbd','a2039408-4697-493d-bde9-cfe999fdd45b','kind','workspace'),('9082ce68-b5e5-4b10-967d-7bfc44dcf8c0','1d8000f8-c681-40c1-8907-ac7214032c9c','kind','organization'),('93ac9b6f-0d76-4b06-bd23-fe2e24846e01','3bf734a5-b1c3-4113-8978-1ad0e6b24511','kind','organization'),('96297f4c-c4ba-44cd-9808-ac1bfd7c231b','442614df-362f-4170-a379-b07551c43cce','kind','workspace'),('a82902f2-db09-4f39-b15c-b2632a300460','fa4b1be1-ede9-44c9-b02d-fe2873d24d7c','kind','workspace'),('ab7da425-b7b2-4396-98bb-3cb2b85a25a9','bcdc31ff-8d36-412d-9765-aab459c081a6','kind','organization'),('ad225005-01aa-4a82-818c-9b9ac9c01702','9f8b9623-3c08-49da-aae3-bd7876f1c90d','kind','workspace'),('b12014a4-b3b3-4427-a47c-c4740b746a7a','f5b490b6-f463-4160-a462-ca39c0ad3ed5','kind','workspace'),('b57abb73-9aaa-486d-924c-75851db22501','95712aea-0717-4ccd-a567-620bd2eda7d4','kind','workspace'),('c3256572-c79e-4232-b0e9-d43d5ec62b47','9bff6e17-1d5f-48b2-ae72-25ed1ea9fc60','kind','workspace'),('c44eea72-fd66-4d8d-b8a8-8f1b22238f57','4764cac3-c558-48a9-b62e-032dfa81d8c6','kind','workspace'),('c8a2c087-97d4-427c-9763-653399c22cf0','d160169c-1c11-4c19-930c-914cc77271c7','kind','workspace'),('c96ee36b-5134-462f-b9c5-fe754851fd82','619c9b0f-4efc-4994-b3bc-4e937c933154','kind','workspace'),('cecf5a60-fb62-49bf-8697-200364e46901','1101c16a-8ad8-46ba-8da4-c42b96bc84e8','kind','workspace'),('d4a55545-5daf-42aa-b9cd-1aba6b98cadc','43f6e3ce-1a54-46d9-be14-1f98f85d3725','kind','workspace'),('d5342292-804b-4b1d-b728-d86ded3a7ff8','f1a06f14-35c4-458c-b88e-3b96263f81ec','kind','workspace'),('e453ca4d-3251-439b-84c0-7e9ab593cf24','eb6a7efe-406e-4996-a10c-0da41e78b4dc','kind','organization'),('e5063262-6f17-4732-98da-21c90223e547','7e5c2316-f982-4876-8b8e-ac8060e424ab','kind','workspace'),('e5ce7eff-042d-41f5-abf0-1f663b72eeed','ff3743b8-4e8d-409f-9124-90a3bfcf3b42','kind','organization'),('e6a748dd-0204-480a-a431-948cc3d2e699','4944cf01-d0fe-42b5-90c6-d24b27a4f951','kind','organization'),('f26d0837-b380-4f11-8516-d8aa2cbe012e','c6ee3848-11c6-4763-a6e7-17412e91d160','kind','workspace'),('f5ee605e-9064-4b48-a194-7035d59bd783','15995e9d-cfb9-4f48-b4ff-bbac9180e1a8','kind','workspace'),('f776afe2-9971-4549-8832-02a1b236c7ad','d34838b9-4827-413f-a80b-f017cb5fb2af','kind','workspace'),('fcc2ae08-8646-413a-80d4-9303804184b6','b45bf05c-0f99-4b8c-82bb-9351b3d39d73','kind','organization'),('fe497ff7-c241-4452-b027-a52cb28f8f56','b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','kind','organization');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','c0a65c6d-86ae-4691-8ecf-a905ecb24dd3'),('2f24c361-fa2a-45ed-8a99-bbbe8b81a079','dfae5736-7129-45e4-8a3e-1de9949d8e1a'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','dc3be331-d70c-49ef-808f-19d94e2972f9'),('2f46c8bd-1a9c-4b72-95a2-c47fdc1e671f','f841763c-9c9c-4ddf-a6eb-0c69a3482978'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','a80545fd-fa0b-4ce7-9f28-70f4023c2d3e'),('37a991ab-ee73-42a1-a49c-f5c883c3adde','a9a05bce-34a2-4391-af8f-02ca40f38917'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','9880268c-b0b5-4719-8cd3-a00031487f87'),('b7f53c4f-76b1-46de-8fa1-6008ad4815f6','f2ce77c3-2c83-4710-88c5-cc29d4168feb'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','ec14730e-7792-49aa-8d8f-73e814655391'),('e1dcdcdf-36c7-4084-9dfd-22f9d32e4041','eda0a210-e934-41ae-ab89-6a9458f0eb5f'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','6077efe1-1e01-4be3-84e5-f243f34f6feb'),('ee920bf0-4d00-49cb-abfc-a47f48f0c355','b6edce90-962d-4358-b9dc-106ac8cb4d7c');
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
INSERT INTO `USER_ENTITY` VALUES ('2e922cfd-aa4d-45bc-b3d4-569ff9782811','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org1','admin',1708393496293,NULL,0),('3f94646f-2c12-4603-b953-023de2333b3f','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org4','admin',1708393569010,NULL,0),('4150c151-d695-4938-8829-62d4db16df52','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org3','admin',1708393545587,NULL,0),('4685e44e-f405-4b30-860f-9030295ae63e',NULL,'7f465ce8-400a-453c-99b1-17b8f5fbfa05',_binary '\0',_binary '',NULL,NULL,NULL,'org3','service-account-org3-workspaces',1708393544479,'125c23c8-f5a1-43ff-b35c-e6ace698b7c2',0),('659ea158-11d7-4b87-9b83-dab5031d6d93','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org2','admin',1708393522846,NULL,0),('7b37d1bb-aa76-47ed-8a53-1803016d9fb6',NULL,'a60cab88-f2ac-401a-9d72-053ea3532af9',_binary '\0',_binary '',NULL,NULL,NULL,'org4','service-account-org4-workspaces',1708393567913,'45ef982c-3f19-4396-877f-29ccc7b04a49',0),('7cc5c22a-94d7-4cde-a3bb-217e093067c0',NULL,'3a01c692-ab8b-444d-b45c-ca2074860d91',_binary '\0',_binary '',NULL,NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','service-account-_platform',1708393110003,'77a2f4d9-fa77-4d35-88c9-851bf579503f',0),('7d712a99-ce6f-497d-a13e-0dc1e7f449a3',NULL,'9b6286c7-9371-42f4-aee5-b34560db77a7',_binary '\0',_binary '',NULL,NULL,NULL,'org5','service-account-org5-workspaces',1708393593131,'6e197034-e229-47d2-b43e-d1adea8b3cc9',0),('985fadcd-bad4-4287-9a7a-d116575291ba','admin@example.com','admin@example.com',_binary '\0',_binary '',NULL,'admin','admin','org5','admin',1708393594327,NULL,0),('c8a150cc-812d-4fcd-beff-6408855070bc',NULL,'5999b9e8-0ec6-4a36-9486-840473e98701',_binary '\0',_binary '',NULL,NULL,NULL,'a70d8574-d800-4bf9-b056-6e5e23c893a0','admin',1708393106195,NULL,0),('d97b85e9-b38e-4f42-9a08-33ca70854068',NULL,'cfa7e8f5-770f-4865-9464-5f74f5554579',_binary '\0',_binary '',NULL,NULL,NULL,'org1','service-account-org1-workspaces',1708393495065,'c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd',0),('ee88cb07-b8b9-46d5-8653-05208fcfa227',NULL,'0a8f42b9-847d-40e1-8c9f-604fa8ffde67',_binary '\0',_binary '',NULL,NULL,NULL,'org2','service-account-org2-workspaces',1708393521713,'5d8ac026-28f4-40be-85eb-ea19055e07bc',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('021545f0-0b93-4033-bbd4-d67649176c98','3f94646f-2c12-4603-b953-023de2333b3f'),('1100e27e-2195-4894-a4c8-a70485b3a473','659ea158-11d7-4b87-9b83-dab5031d6d93'),('1325cacd-320d-4249-be8f-b35936702e73','4150c151-d695-4938-8829-62d4db16df52'),('1325cacd-320d-4249-be8f-b35936702e73','4685e44e-f405-4b30-860f-9030295ae63e'),('2033d29f-23c0-4aa5-8840-5187aef4055a','985fadcd-bad4-4287-9a7a-d116575291ba'),('29507e5d-d253-4b7a-8606-a66dbc172f22','985fadcd-bad4-4287-9a7a-d116575291ba'),('442614df-362f-4170-a379-b07551c43cce','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('457029d5-2897-4a58-8b88-ec25a871a1f6','ee88cb07-b8b9-46d5-8653-05208fcfa227'),('4764cac3-c558-48a9-b62e-032dfa81d8c6','4150c151-d695-4938-8829-62d4db16df52'),('59b5a35b-44e0-4488-8f77-f0935dec0b9e','7d712a99-ce6f-497d-a13e-0dc1e7f449a3'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','7cc5c22a-94d7-4cde-a3bb-217e093067c0'),('5b9c74c6-af3c-48ee-b6d4-f831c86cf4e5','c8a150cc-812d-4fcd-beff-6408855070bc'),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','7cc5c22a-94d7-4cde-a3bb-217e093067c0'),('9a6f67b6-6261-4ef5-8499-b788346f3ca4','c8a150cc-812d-4fcd-beff-6408855070bc'),('9bbc2ed6-fc5e-4814-9bd6-c90ce4069398','3f94646f-2c12-4603-b953-023de2333b3f'),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','3f94646f-2c12-4603-b953-023de2333b3f'),('9cdf1400-edbb-4f8d-9e1c-c84eaa918df1','7b37d1bb-aa76-47ed-8a53-1803016d9fb6'),('9f8b9623-3c08-49da-aae3-bd7876f1c90d','659ea158-11d7-4b87-9b83-dab5031d6d93'),('a6d22921-f778-404d-9506-e1551c12b97b','659ea158-11d7-4b87-9b83-dab5031d6d93'),('a9c591f2-f21d-4a66-a8fa-b52b3c9cfba0','4150c151-d695-4938-8829-62d4db16df52'),('b16502d6-e5d9-4a6f-b4b0-bcff65b1830e','985fadcd-bad4-4287-9a7a-d116575291ba'),('b45bf05c-0f99-4b8c-82bb-9351b3d39d73','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('b9f9c4ad-6c43-42ef-8e0c-7bc9f13bf30d','3f94646f-2c12-4603-b953-023de2333b3f'),('bec9750c-b218-4dcf-b59a-2af80de6f1d5','985fadcd-bad4-4287-9a7a-d116575291ba'),('ca2d38e9-a65c-49c8-b941-9fb935db0f30','7b37d1bb-aa76-47ed-8a53-1803016d9fb6'),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','659ea158-11d7-4b87-9b83-dab5031d6d93'),('cb1a9fcb-a9fc-4ee5-b4c9-1aa88263ff5b','ee88cb07-b8b9-46d5-8653-05208fcfa227'),('d37101a8-04f7-438d-8bf1-bd53678c4c37','d97b85e9-b38e-4f42-9a08-33ca70854068'),('e3213199-21fd-44ac-84c1-c2ebeec53289','7d712a99-ce6f-497d-a13e-0dc1e7f449a3'),('e3213199-21fd-44ac-84c1-c2ebeec53289','985fadcd-bad4-4287-9a7a-d116575291ba'),('eb6a7efe-406e-4996-a10c-0da41e78b4dc','3f94646f-2c12-4603-b953-023de2333b3f'),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('ec98ce6e-c86b-4d9d-9550-6c3395f64450','d97b85e9-b38e-4f42-9a08-33ca70854068'),('ef95106e-4d28-4084-ada0-1ee297454fcc','4685e44e-f405-4b30-860f-9030295ae63e'),('f423f258-1396-48c6-88d6-828a5ce3d5d1','4150c151-d695-4938-8829-62d4db16df52'),('f59e154c-5584-4bd7-9b66-253241cd27fb','659ea158-11d7-4b87-9b83-dab5031d6d93'),('f6331ad1-dfdc-4b9d-9aec-811f92ade656','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('fa1242a4-a5d9-4c14-8741-af0c5c6d5ed4','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('fa1d7f4d-eb36-4080-8d8a-c9f797ca4f96','4150c151-d695-4938-8829-62d4db16df52');
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
INSERT INTO `WEB_ORIGINS` VALUES ('2524a4a9-2675-4551-9d41-5021bff05172','+'),('928cb134-c673-4f50-8bd9-05eeee264c64','+'),('b72bdc9c-039d-4c76-96ef-b7a8c37e6cee','+'),('c369f888-d2e8-4885-8438-7ab970694b27','+'),('c3afc1a1-ea2f-4d68-81ef-1de7d2edd827','+'),('c4161da8-b3b9-4470-9d03-514ebf126bc1','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-02-20 10:38:38','dummy','2024-02-20 10:38:38','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-02-20 10:38:30.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-02-20 10:38:30.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2024-02-20 10:44:53','unittest-user01','2024-02-20 10:45:00','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2024-02-20 10:45:19','unittest-user01','2024-02-20 10:45:23','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2024-02-20 10:45:42','unittest-user01','2024-02-20 10:45:46','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2024-02-20 10:46:06','unittest-user01','2024-02-20 10:46:10','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {}}}','2024-02-20 10:46:31','unittest-user01','2024-02-20 10:46:35','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_2L7J3097DNG2SQ3RCOCM','PF_ORG_2L7J3097DNG2SQ3RCOCM','reveWQSuENMpwgn4Tq5M8dHiZI2FbdhtqKYIAk2coF3pNYR4tIGi3PQWHc7JLWYT','2024-02-20 10:44:56','unittest-user01','2024-02-20 10:46:56','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_1YYIH9WO1JHDN5IQJ8JP','PF_ORG_1YYIH9WO1JHDN5IQJ8JP','lm4C/Dk/iWVwEHxjwIPKp9/aq41zrD9/107UhwfGIOU749vzHyaIL+zpnOmR7QA0','2024-02-20 10:45:23','unittest-user01','2024-02-20 10:46:56','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_6R7N845GTLM0CB7RKEFN','PF_ORG_6R7N845GTLM0CB7RKEFN','FpRoORuGL+Wk7m149EWKPhLhK4j7gan6ps/x3bAzvtlLw6srce8c+HrZLKiQ4wC2','2024-02-20 10:45:45','unittest-user01','2024-02-20 10:46:56','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_FZCX6PPMS0H7FFLKTNXU','PF_ORG_FZCX6PPMS0H7FFLKTNXU','OSGqly/8b4q6Y+2pAB+hXBHPGXO5yyiv013P1M9Wi74X85LldpWvjkY3Is5Ayegl','2024-02-20 10:46:09','unittest-user01','2024-02-20 10:46:56','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_1KLQH91SABBQHLYCB2M5','PF_ORG_1KLQH91SABBQHLYCB2M5','9bwv458GpVU5x3bOojLyIyudX7sCXqd4Ce9J9scmaobZJZBZum7u6z6pewQwWyIc','2024-02-20 10:46:34','unittest-user01','2024-02-20 10:46:56','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-02-20 10:38:29','system','2024-02-20 10:38:29','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-02-20 10:38:38','dummy','2024-02-20 10:38:38','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-02-20 10:38:29','system','2024-02-20 10:38:31','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-02-20 10:38:29','system','2024-02-20 10:38:31','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-02-20 10:38:29','system','2024-02-20 10:38:31','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-02-20 10:38:38','dummy','2024-02-20 10:38:38','dummy'),('_default','platform.roles',1000,'2024-02-20 10:38:29','system','2024-02-20 10:38:29','system'),('_default','platform.users',10000,'2024-02-20 10:38:29','system','2024-02-20 10:38:29','system'),('_default','platform.workspaces',100,'2024-02-20 10:38:29','system','2024-02-20 10:38:29','system');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-02-20 10:38:28','1.8.0','2024-02-20 10:38:28','1.8.0'),(2,'1.3.0','SUCCEED',NULL,'2024-02-20 10:38:30','1.8.0','2024-02-20 10:38:30','1.8.0'),(3,'1.5.0','START',NULL,'2024-02-20 10:38:30','1.8.0','2024-02-20 10:38:30','1.8.0'),(4,'1.5.0','SUCCEED',NULL,'2024-02-20 10:38:30','1.8.0','2024-02-20 10:38:30','1.8.0'),(5,'1.5.2','START',NULL,'2024-02-20 10:38:30','1.8.0','2024-02-20 10:38:30','1.8.0'),(6,'1.5.2','SUCCEED',NULL,'2024-02-20 10:38:30','1.8.0','2024-02-20 10:38:30','1.8.0'),(7,'1.6.0','START',NULL,'2024-02-20 10:38:30','1.8.0','2024-02-20 10:38:30','1.8.0'),(8,'1.6.0','SUCCEED',NULL,'2024-02-20 10:38:31','1.8.0','2024-02-20 10:38:31','1.8.0'),(9,'1.7.0','START',NULL,'2024-02-20 10:38:31','1.8.0','2024-02-20 10:38:31','1.8.0'),(10,'1.7.0','SUCCEED',NULL,'2024-02-20 10:38:31','1.8.0','2024-02-20 10:38:31','1.8.0'),(11,'1.8.0','START',NULL,'2024-02-20 10:38:31','1.8.0','2024-02-20 10:38:31','1.8.0'),(12,'1.8.0','SUCCEED',NULL,'2024-02-20 10:38:31','1.8.0','2024-02-20 10:38:31','1.8.0');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"77a2f4d9-fa77-4d35-88c9-851bf579503f\", \"TOKEN_CHECK_CLIENT_SECRET\": \"8qLdYPLARSoHgKwTgFLy1uriZQOQutbk\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"635bba3f-9906-46d4-bba8-fa9b7d37323c\"}','2024-02-20 10:38:30','system','2024-02-20 10:38:30','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.8.0','2024-02-20 10:37:39','system','2024-02-20 10:38:31','1.8.0');
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
-- Current Database: `PF_ORG_2L7J3097DNG2SQ3RCOCM`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_2L7J3097DNG2SQ3RCOCM` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_2L7J3097DNG2SQ3RCOCM`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"f6bd8b94-d06c-42b4-a108-d24ea63d8e47\", \"USER_TOKEN_CLIENT_SECRET\": \"FviH4HOpUyyBVlqh2y4UEquerxoIbqDc\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"c5dd60fc-fd4a-4ecd-ad89-32b4a5f34fdd\", \"INTERNAL_API_CLIENT_SECRET\": \"et5oK3A8gxiW7eExmxUKcapVSCATFgJe\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"6aeeb599-3b15-4f3b-aaca-e0919bface4d\", \"TOKEN_CHECK_CLIENT_SECRET\": \"2rMwBtB2LSVsqgDakhzvlvVyuRKkqIND\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"fcc78a04-fc35-4ca1-b7a5-8af24bf24444\"}','2024-02-20 10:44:56','unittest-user01','2024-02-20 10:44:56','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:00','2e922cfd-aa4d-45bc-b3d4-569ff9782811','2024-02-20 10:45:00','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:06','2e922cfd-aa4d-45bc-b3d4-569ff9782811','2024-02-20 10:45:06','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:12','2e922cfd-aa4d-45bc-b3d4-569ff9782811','2024-02-20 10:45:12','2e922cfd-aa4d-45bc-b3d4-569ff9782811');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_MMDI0MYD4MGCAF5HB0P5','PF_WS_MMDI0MYD4MGCAF5HB0P5','d7RhxpDhVoCAneVFWvLeDrZu3N8es1Ags60ldwHr5HKgye3A8hnXXiVCl65cQhn0','2024-02-20 10:45:00','2e922cfd-aa4d-45bc-b3d4-569ff9782811','2024-02-20 10:46:56','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('org1','ws2','unittest-platform-db',3306,'PF_WS_NM6D8FF582BEWCMTMIVY','PF_WS_NM6D8FF582BEWCMTMIVY','sKlmIeOxbZzUAyNqwE2zWyJR3D1y3rwva9cFhudGEleOq9vphlQ/oskCC1vOUtQt','2024-02-20 10:45:06','2e922cfd-aa4d-45bc-b3d4-569ff9782811','2024-02-20 10:46:56','2e922cfd-aa4d-45bc-b3d4-569ff9782811'),('org1','ws3','unittest-platform-db',3306,'PF_WS_NA48SOQPMXK72M1DC0FT','PF_WS_NA48SOQPMXK72M1DC0FT','IG1FIBifc1z3IOLTFt6GZZMsUu4nNxibse+V5L20rpW5dT+6Ex50rv3GGJac5obw','2024-02-20 10:45:12','2e922cfd-aa4d-45bc-b3d4-569ff9782811','2024-02-20 10:46:56','2e922cfd-aa4d-45bc-b3d4-569ff9782811');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_MMDI0MYD4MGCAF5HB0P5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_MMDI0MYD4MGCAF5HB0P5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_MMDI0MYD4MGCAF5HB0P5`;

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
-- Current Database: `PF_WS_NM6D8FF582BEWCMTMIVY`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_NM6D8FF582BEWCMTMIVY` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_NM6D8FF582BEWCMTMIVY`;

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
-- Current Database: `PF_WS_NA48SOQPMXK72M1DC0FT`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_NA48SOQPMXK72M1DC0FT` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_NA48SOQPMXK72M1DC0FT`;

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
-- Current Database: `PF_ORG_1YYIH9WO1JHDN5IQJ8JP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_1YYIH9WO1JHDN5IQJ8JP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_1YYIH9WO1JHDN5IQJ8JP`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"dba012d2-d051-4938-ab35-1b5e65905028\", \"USER_TOKEN_CLIENT_SECRET\": \"VJEQ0bPDxsHnVX5GFYh32dAFmpwTzQ0i\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"5d8ac026-28f4-40be-85eb-ea19055e07bc\", \"INTERNAL_API_CLIENT_SECRET\": \"3MkuQnWR9BjI8u1VUYou2Iq1dzdKM7ZV\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"8d368537-c076-40fe-8ce8-ab46652ed3ed\", \"TOKEN_CHECK_CLIENT_SECRET\": \"v7NRGoYIdhiRh6RoXz5iVogH3Hq0EbPX\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"499248ed-2241-4568-9081-3d5eb5e00d33\"}','2024-02-20 10:45:23','unittest-user01','2024-02-20 10:45:23','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:23','659ea158-11d7-4b87-9b83-dab5031d6d93','2024-02-20 10:45:23','659ea158-11d7-4b87-9b83-dab5031d6d93'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:30','659ea158-11d7-4b87-9b83-dab5031d6d93','2024-02-20 10:45:30','659ea158-11d7-4b87-9b83-dab5031d6d93'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:36','659ea158-11d7-4b87-9b83-dab5031d6d93','2024-02-20 10:45:36','659ea158-11d7-4b87-9b83-dab5031d6d93');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_JV3DYXYQL56F2UPXCA29','PF_WS_JV3DYXYQL56F2UPXCA29','8jQLjVrQu4dh25hfpYoAL9HC3mb1t9uEBBjIcllfW8qqZ8ycFnp9HIEDMJWnphzF','2024-02-20 10:45:24','659ea158-11d7-4b87-9b83-dab5031d6d93','2024-02-20 10:46:56','659ea158-11d7-4b87-9b83-dab5031d6d93'),('org2','ws2','unittest-platform-db',3306,'PF_WS_HDCXB6M8PVAFMLBI6WR4','PF_WS_HDCXB6M8PVAFMLBI6WR4','+Vbjh6Edu2MfaIMEFbgXqlV06mTpbhpXmxLJKAAL2G10gOuhNphwxcuTTiCQ4C8a','2024-02-20 10:45:30','659ea158-11d7-4b87-9b83-dab5031d6d93','2024-02-20 10:46:56','659ea158-11d7-4b87-9b83-dab5031d6d93'),('org2','ws3','unittest-platform-db',3306,'PF_WS_58FLHG0TT9CE4AHZC18Q','PF_WS_58FLHG0TT9CE4AHZC18Q','PEBGDpZEtJiiXfl6U69bKiVU7IyVdIZQaGwvKCpUTD+MX5afhcucCXuzBoeaiOpO','2024-02-20 10:45:37','659ea158-11d7-4b87-9b83-dab5031d6d93','2024-02-20 10:46:56','659ea158-11d7-4b87-9b83-dab5031d6d93');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_JV3DYXYQL56F2UPXCA29`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_JV3DYXYQL56F2UPXCA29` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_JV3DYXYQL56F2UPXCA29`;

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
-- Current Database: `PF_WS_HDCXB6M8PVAFMLBI6WR4`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_HDCXB6M8PVAFMLBI6WR4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_HDCXB6M8PVAFMLBI6WR4`;

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
-- Current Database: `PF_WS_58FLHG0TT9CE4AHZC18Q`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_58FLHG0TT9CE4AHZC18Q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_58FLHG0TT9CE4AHZC18Q`;

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
-- Current Database: `PF_ORG_6R7N845GTLM0CB7RKEFN`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_6R7N845GTLM0CB7RKEFN` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_6R7N845GTLM0CB7RKEFN`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"d00ef4ab-386a-4f9c-8854-0d712ace428e\", \"USER_TOKEN_CLIENT_SECRET\": \"qNVxpvxic9WgyKgtdUSOTRyqol1cjZhX\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"125c23c8-f5a1-43ff-b35c-e6ace698b7c2\", \"INTERNAL_API_CLIENT_SECRET\": \"sxi6umF6tQIFLZbR9a2KNm4bEDaW6lox\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"40cef467-9e76-4d78-860e-880e680a14a4\", \"TOKEN_CHECK_CLIENT_SECRET\": \"FNPHDJCLsECH0LLx2AcFngM9hiQnRmWr\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"f62ac36e-bda7-4536-818a-02d882178d26\"}','2024-02-20 10:45:45','unittest-user01','2024-02-20 10:45:45','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:46','4150c151-d695-4938-8829-62d4db16df52','2024-02-20 10:45:46','4150c151-d695-4938-8829-62d4db16df52'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:52','4150c151-d695-4938-8829-62d4db16df52','2024-02-20 10:45:52','4150c151-d695-4938-8829-62d4db16df52'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:45:59','4150c151-d695-4938-8829-62d4db16df52','2024-02-20 10:45:59','4150c151-d695-4938-8829-62d4db16df52');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_NBHR6VC0W3HFJZ6UPG3C','PF_WS_NBHR6VC0W3HFJZ6UPG3C','ZBAexY4AZsrUVRworj5gYVqnLiH7IrPV1ibnZl6ZyQyPSpDMIMuT7C9wmSajgKEb','2024-02-20 10:45:46','4150c151-d695-4938-8829-62d4db16df52','2024-02-20 10:46:56','4150c151-d695-4938-8829-62d4db16df52'),('org3','ws2','unittest-platform-db',3306,'PF_WS_RR4LSITKXY9A91Q8XEQ7','PF_WS_RR4LSITKXY9A91Q8XEQ7','8aXaj1MfgIUlsSc421waYEMYnaVVcggSTNV2ICfGt/3p/MMq+cPY9BEwVKiHNZDm','2024-02-20 10:45:53','4150c151-d695-4938-8829-62d4db16df52','2024-02-20 10:46:56','4150c151-d695-4938-8829-62d4db16df52'),('org3','ws3','unittest-platform-db',3306,'PF_WS_SX6IYYU3I6KV3N6AX2YF','PF_WS_SX6IYYU3I6KV3N6AX2YF','ZWmBIpWHzVXTmy82WACAP9cA1LMtJRd/VJkWlMiO9tXnsPvPE8nwIvbr47q5Xe3k','2024-02-20 10:45:59','4150c151-d695-4938-8829-62d4db16df52','2024-02-20 10:46:56','4150c151-d695-4938-8829-62d4db16df52');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_NBHR6VC0W3HFJZ6UPG3C`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_NBHR6VC0W3HFJZ6UPG3C` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_NBHR6VC0W3HFJZ6UPG3C`;

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
-- Current Database: `PF_WS_RR4LSITKXY9A91Q8XEQ7`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_RR4LSITKXY9A91Q8XEQ7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_RR4LSITKXY9A91Q8XEQ7`;

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
-- Current Database: `PF_WS_SX6IYYU3I6KV3N6AX2YF`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_SX6IYYU3I6KV3N6AX2YF` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_SX6IYYU3I6KV3N6AX2YF`;

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
-- Current Database: `PF_ORG_FZCX6PPMS0H7FFLKTNXU`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_FZCX6PPMS0H7FFLKTNXU` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_FZCX6PPMS0H7FFLKTNXU`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"f75eef0e-f758-4c23-9fe4-1173c210d99e\", \"USER_TOKEN_CLIENT_SECRET\": \"j65iJv3YUQjIXOR3YgOwIXe7ApPYH2nH\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"45ef982c-3f19-4396-877f-29ccc7b04a49\", \"INTERNAL_API_CLIENT_SECRET\": \"xz6Rb0GdMzzUZ2Irq5mQanbPIKkGQi1T\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"8a1d0f51-0cd8-4e1a-86a7-6a7d13303b64\", \"TOKEN_CHECK_CLIENT_SECRET\": \"atL85x0OsI0P6dVaCRx7MtZcggggvNa9\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"986f246c-5589-407f-a009-33653f029a75\"}','2024-02-20 10:46:09','unittest-user01','2024-02-20 10:46:09','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:46:10','3f94646f-2c12-4603-b953-023de2333b3f','2024-02-20 10:46:10','3f94646f-2c12-4603-b953-023de2333b3f'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:46:16','3f94646f-2c12-4603-b953-023de2333b3f','2024-02-20 10:46:16','3f94646f-2c12-4603-b953-023de2333b3f'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:46:24','3f94646f-2c12-4603-b953-023de2333b3f','2024-02-20 10:46:24','3f94646f-2c12-4603-b953-023de2333b3f');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_JWBEBVDTKH6XAGDAAT3O','PF_WS_JWBEBVDTKH6XAGDAAT3O','x91XiSBwBwYwWB5VulEitewnQSm+v8AwBrnh/5t4QCNqd2mEHdv0C0yrQzIjztLH','2024-02-20 10:46:10','3f94646f-2c12-4603-b953-023de2333b3f','2024-02-20 10:46:56','3f94646f-2c12-4603-b953-023de2333b3f'),('org4','ws2','unittest-platform-db',3306,'PF_WS_O422LRLMKIMMGWQESCGB','PF_WS_O422LRLMKIMMGWQESCGB','ulLtucS+k03hvZeXJ1GRXr2+1W3Q1E9aWkHdIsnApIYeV1V8/810DnNwKh+Z7JFz','2024-02-20 10:46:16','3f94646f-2c12-4603-b953-023de2333b3f','2024-02-20 10:46:56','3f94646f-2c12-4603-b953-023de2333b3f'),('org4','ws3','unittest-platform-db',3306,'PF_WS_8270QAUO5FYK0G0E9CPJ','PF_WS_8270QAUO5FYK0G0E9CPJ','IZlrVP2QpsTO0f495af2AziUURqzWtMgVUK0IopuDGruLX509ZYacZgANv7oaVho','2024-02-20 10:46:24','3f94646f-2c12-4603-b953-023de2333b3f','2024-02-20 10:46:56','3f94646f-2c12-4603-b953-023de2333b3f');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_JWBEBVDTKH6XAGDAAT3O`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_JWBEBVDTKH6XAGDAAT3O` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_JWBEBVDTKH6XAGDAAT3O`;

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
-- Current Database: `PF_WS_O422LRLMKIMMGWQESCGB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_O422LRLMKIMMGWQESCGB` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_O422LRLMKIMMGWQESCGB`;

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
-- Current Database: `PF_WS_8270QAUO5FYK0G0E9CPJ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_8270QAUO5FYK0G0E9CPJ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_8270QAUO5FYK0G0E9CPJ`;

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
-- Current Database: `PF_ORG_1KLQH91SABBQHLYCB2M5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_1KLQH91SABBQHLYCB2M5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_1KLQH91SABBQHLYCB2M5`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"eb21f87d-406d-4f0d-aba8-d431ad07f140\", \"USER_TOKEN_CLIENT_SECRET\": \"GnBejOs5L5wEXuUE0Mm8qp3vyyH1hA9r\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"6e197034-e229-47d2-b43e-d1adea8b3cc9\", \"INTERNAL_API_CLIENT_SECRET\": \"EC5j3FwWgpbs7lFxnjCIsBdM5EQv12Uj\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"4bdaa4bf-9c52-477a-9d35-fc6bd6a2bfd2\", \"TOKEN_CHECK_CLIENT_SECRET\": \"oPu1SChN2EXLZWLR2csmtWeF49MWRz8J\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"6263c078-77c7-4417-a293-56702d014298\"}','2024-02-20 10:46:34','unittest-user01','2024-02-20 10:46:34','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:46:35','985fadcd-bad4-4287-9a7a-d116575291ba','2024-02-20 10:46:35','985fadcd-bad4-4287-9a7a-d116575291ba'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:46:42','985fadcd-bad4-4287-9a7a-d116575291ba','2024-02-20 10:46:42','985fadcd-bad4-4287-9a7a-d116575291ba'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-02-20 10:46:49','985fadcd-bad4-4287-9a7a-d116575291ba','2024-02-20 10:46:49','985fadcd-bad4-4287-9a7a-d116575291ba');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_W2URAML6BRZSJTKP81Z8','PF_WS_W2URAML6BRZSJTKP81Z8','3U24Rp7FZZ0QKINjpWK48JW8NR99Ai3m4duBXz+O3M4WAS38qE4+MkILIA72IGqA','2024-02-20 10:46:35','985fadcd-bad4-4287-9a7a-d116575291ba','2024-02-20 10:46:56','985fadcd-bad4-4287-9a7a-d116575291ba'),('org5','ws2','unittest-platform-db',3306,'PF_WS_XEO4JTOEZF9GXNOXTEE8','PF_WS_XEO4JTOEZF9GXNOXTEE8','mgWOuROKX56iMmawGuQ+DBOLcELpgw8GlMrudY0XAQ3sJeWuPMurt/3Z2WFgIIUK','2024-02-20 10:46:43','985fadcd-bad4-4287-9a7a-d116575291ba','2024-02-20 10:46:56','985fadcd-bad4-4287-9a7a-d116575291ba'),('org5','ws3','unittest-platform-db',3306,'PF_WS_V1NE7G0TUX2YNX01EEPP','PF_WS_V1NE7G0TUX2YNX01EEPP','HJfAFxJUC19jtAVGl9ExaEOajs6ZaQL+vEAgX2iur+QSeTho8UaXSbqImFNNhDdl','2024-02-20 10:46:49','985fadcd-bad4-4287-9a7a-d116575291ba','2024-02-20 10:46:56','985fadcd-bad4-4287-9a7a-d116575291ba');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_W2URAML6BRZSJTKP81Z8`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_W2URAML6BRZSJTKP81Z8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_W2URAML6BRZSJTKP81Z8`;

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
-- Current Database: `PF_WS_XEO4JTOEZF9GXNOXTEE8`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_XEO4JTOEZF9GXNOXTEE8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_XEO4JTOEZF9GXNOXTEE8`;

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
-- Current Database: `PF_WS_V1NE7G0TUX2YNX01EEPP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_V1NE7G0TUX2YNX01EEPP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_V1NE7G0TUX2YNX01EEPP`;

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

-- Dump completed on 2024-02-20 10:46:56