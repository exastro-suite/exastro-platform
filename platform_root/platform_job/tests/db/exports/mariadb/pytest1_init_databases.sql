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
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES ('000a109a-6cd2-4f8a-bdab-2cdb8e24a7ad',1718092368568,'org1','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/629de169-8395-43bf-9455-c08bd198dbde/client-secret','{\"type\":\"secret\",\"value\":\"nVYZYPVwgREKtzIwevRGoubSqpqg3ZFS\"}',NULL,'CLIENT'),('00bdcc96-f95a-41d4-a318-dff5a29a182f',1718092370241,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_organization-manager/composites','[{\"id\":\"7373b7f3-8ae0-4dfa-9d5a-a59fc326c20b\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"72891c5d-469d-47ab-8a07-1ccb981f7805\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"2438e27c-322b-4e80-b6a2-7e7ae8defd5e\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"4781a401-602f-422a-8220-87d9bb29dee0\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"84d1d505-326d-410a-bfa3-f4638d066339\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"464e34d5-477c-42f8-9e55-38f01e6d8bff\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"51040531-cc48-415e-bdcc-29e8bfa4d65f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"1022fa0e-cde8-40f5-bcc1-51ef08b7e904\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"d21a3988-f921-4979-b095-5499b0993ed4\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"1557e141-c371-4c4c-9a56-b2f500248caa\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e\",\"attributes\":{}},{\"id\":\"e837c920-ece7-45fc-a6e9-ae4f19e520fd\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e\",\"attributes\":{}},{\"id\":\"21a9f74b-d6af-42ec-8373-93eec341908f\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('03a046c9-f7ca-44ef-91a4-c2ac1c282125',1718092460132,'org3','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9',NULL,'{\"enabled\":true}',NULL,'REALM'),('071a0b00-0087-4d65-9a32-af78fc780392',1718092507432,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_ws2-admin','{\"id\":\"6716b438-3f81-43bc-b301-36d43b4fb199\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0731ff06-93f7-4098-a152-bbc2a7c127ac',1718092493087,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-ws-mt','{\"id\":\"6dcbc367-b505-44d2-9993-9edb3d45c3b0\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('07f1eae9-3fb1-4a4e-b0d1-5bac016f2ae1',1718092494724,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/11a46a7a-643a-4634-bfc3-a87a266bcaa9','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('0aadea4b-e5c8-4f8a-8f60-5a25c56e41e6',1718092479338,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_ws3-admin','{\"id\":\"b8dac5b9-2635-4455-9272-5613e7045db6\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('0b664fb1-66e5-4da1-90ff-47bc653fb724',1718092493000,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-usage','{\"id\":\"7434e99b-ef5a-4c65-92e9-1456b503d767\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('0bae3b03-a9cc-4d4a-9a21-3339d9f57a12',1718092492088,'org4','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/client-secret','{\"type\":\"secret\",\"value\":\"XC4LUX68vK30U34IVtsDTgNLA4gMwXVp\"}',NULL,'CLIENT'),('0ef68392-4e27-46a6-9a18-6e67714966d6',1718092553356,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','users/33341728-0658-4dda-8fc7-7b346e5714e7/role-mappings/clients/bf8007e6-1073-4601-a0c9-08cade1429a7','[{\"id\":\"56fe696a-5d7e-4782-93a1-4b0e74c0ceb7\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bf8007e6-1073-4601-a0c9-08cade1429a7\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('0f1a2ab9-27d2-4fee-bb92-76e104b4992c',1718092458205,'org3','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('0f3a75b6-fd98-4d3f-a8f0-f92581a102c4',1718092479421,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_ws3-admin/composites','[{\"id\":\"4cccba60-db70-4ee5-8dc3-ac267c20078f\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"b8dac5b9-2635-4455-9272-5613e7045db6\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('12b2f9d9-475c-461d-b489-31e32eda2313',1718092418214,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-role-usr','{\"id\":\"5f7305c6-d9ca-49c3-8824-1066c6b8a0a1\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('12d376df-0a99-4445-b16e-a0dc52b3d8b1',1718092456306,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4','{\"id\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"clientId\":\"org3-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('155c7200-c39b-4359-a4db-6b051213b929',1718092456495,'org3','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/client-secret','{\"type\":\"secret\",\"value\":\"GpMuwHrKDkpkCKs6EextHLZhJ61B5tAZ\"}',NULL,'CLIENT'),('169f3ef6-3403-4a23-a522-d9d8658096b7',1718092457177,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-upd','{\"id\":\"b2b646b6-8706-471d-9dc4-170589af64f7\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('1755b5e0-3ea3-480f-b9b2-cac7eb33edc9',1718092420217,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/cea41291-4b60-4594-b58d-65280e5ca389/role-mappings/clients/90437d83-845f-4150-8d81-4ba1d37a7624','[{\"id\":\"255a2b74-ef2e-46b6-aca4-a7d6eb2cc564\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"90437d83-845f-4150-8d81-4ba1d37a7624\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('1865a6f7-2c60-4570-9b36-0ce9c647dffd',1718092496786,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','users/11a46a7a-643a-4634-bfc3-a87a266bcaa9/role-mappings/clients/4a3136c6-14f2-4a86-bc94-4054f607b4be','[{\"id\":\"73c81309-ffbc-440a-8a8d-5d96296c4b91\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"4a3136c6-14f2-4a86-bc94-4054f607b4be\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('198bc81d-0b0f-49a8-b680-3189748b56ae',1718092470025,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_ws2-admin','{\"id\":\"8fe75922-4d78-47e6-96f4-03bae30d28f8\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1a8a2651-a67e-42bc-b8e8-cdf0e128afce',1718092531124,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/91fbba5b-6336-42f8-882f-23786d9a50b1/role-mappings/clients/d6f36bd8-f053-4c49-b385-c4dee7ca4879','[{\"id\":\"34f4733d-e807-4c2e-b859-5f010d03e734\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"d6f36bd8-f053-4c49-b385-c4dee7ca4879\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('1ea70e5c-c32f-4bf9-927d-7d11740fbdcd',1718092507383,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_ws2-admin','{\"id\":\"46a8fa55-7d31-4661-9036-39042691c8dd\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('1fe11922-c7a6-444c-b938-f57fb72ff51a',1718092492910,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-upd','{\"id\":\"a5a8538e-2e00-4f4c-bd2a-9bc838fd546d\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2027a333-8b26-44dc-b820-c2eda0cb228d',1718092456915,'org3','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/client-secret','{\"type\":\"secret\",\"value\":\"LxIyXXyusLq1dFX5Rofl6sKB1yzuTGzT\"}',NULL,'CLIENT'),('20b06239-0cd2-4f31-8445-9cb973c5235a',1718092517325,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_ws3-admin','{\"id\":\"04fbe393-a4ec-48da-9919-cda7f2759e62\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('2161266a-5317-43e0-8874-fb9fd15b6152',1718092530150,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-upd','{\"id\":\"af69b3e5-1835-4c58-8278-f10f23e13e78\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('21de90d4-3a5f-46b6-a60e-798bed5c3ff4',1718092369494,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-usr-mt','{\"id\":\"84d1d505-326d-410a-bfa3-f4638d066339\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2227e6b8-efe6-448d-b69d-f60de048b58f',1718092368780,'org1','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/client-secret','{\"type\":\"secret\",\"value\":\"Oe5PnoNUWH9EiIuvoZxQ6X4V1L8lEnng\"}',NULL,'CLIENT'),('227d3c82-028a-416c-b415-b1cf9b305457',1718092494135,'org4','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('22d124a2-57db-4a15-97c5-ad60e1438ede',1718092432471,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/ws2','{\"id\":\"8cdc9af1-3d5d-41b2-817b-8bda51ddfb88\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('251a2ab7-9f21-44db-970e-e7d4807e1eda',1718092493543,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_organization-manager/composites','[{\"id\":\"a5a8538e-2e00-4f4c-bd2a-9bc838fd546d\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"a1cb438c-d4eb-4404-bf20-760972d0517f\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"b4398f8f-8592-4a57-882a-a615c39a5d3e\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"7434e99b-ef5a-4c65-92e9-1456b503d767\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"6daa393e-8bd0-4262-9827-68a9bd450eb6\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"8b69162b-ee4b-463a-8c2f-9955a8fb511b\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"37dda41b-d445-49f2-a806-df159be87fab\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"6dcbc367-b505-44d2-9993-9edb3d45c3b0\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"4593f877-2829-4507-b709-baf276daa4e8\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"741a5de9-96a4-4a63-b5d5-300f9226e757\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0ea7620f-ec2c-42d3-afdd-50a344c16891\",\"attributes\":{}},{\"id\":\"0f627bfb-6ddf-41d1-ad48-597df4058f78\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0ea7620f-ec2c-42d3-afdd-50a344c16891\",\"attributes\":{}},{\"id\":\"94830865-cc75-4f8f-aa66-d810fb75e1d9\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"0ea7620f-ec2c-42d3-afdd-50a344c16891\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('26092659-c51d-449c-9898-7b710b6bf05f',1718092493812,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_organization-user-manager/composites','[{\"id\":\"6daa393e-8bd0-4262-9827-68a9bd450eb6\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"37dda41b-d445-49f2-a806-df159be87fab\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('26d92ccd-53e5-45a0-a9b9-808611219008',1718092457232,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-role-usr','{\"id\":\"3e8bb9af-f4bc-4ac2-8c66-ac73b6983694\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('272f3380-d16d-43f5-a2bc-3303c43bbd33',1718092517299,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_ws3-admin','{\"id\":\"3e104eaf-d97f-484c-a3be-f92976dc7edf\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('28843ebb-63a9-4f61-90d4-9e8033912377',1718092369633,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-ws-mt','{\"id\":\"1022fa0e-cde8-40f5-bcc1-51ef08b7e904\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2998b393-9b2e-4a4e-ae22-842861518040',1718092493697,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_organization-user-role-manager/composites','[{\"id\":\"6daa393e-8bd0-4262-9827-68a9bd450eb6\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"8b69162b-ee4b-463a-8c2f-9955a8fb511b\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}},{\"id\":\"37dda41b-d445-49f2-a806-df159be87fab\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('2c7b15ad-87b5-4265-bfda-4bb4182224cf',1718092417990,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/d1208074-d243-4b06-b130-e8903e23c164','{\"id\":\"d1208074-d243-4b06-b130-e8903e23c164\",\"clientId\":\"_org2-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('2d87191d-01bf-496b-a7b0-6b2a18e7fced',1718092368247,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50','{\"id\":\"75799957-807f-4039-915e-f274934b3f50\",\"clientId\":\"org1-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('2db46c86-fda3-4aa2-af1c-d7ba772ce30b',1718092369333,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-own-mt','{\"id\":\"72891c5d-469d-47ab-8a07-1ccb981f7805\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('2f8ad46c-755d-435b-aa19-4b66f6445a87',1718092419252,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/d04e402c-1ddd-471d-8e87-d6d3185c8755/role-mappings/clients/128c1c6c-31a7-441f-adeb-1eeea294d721','[{\"id\":\"93c290a1-2519-475a-91dc-24d43bf42a85\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"128c1c6c-31a7-441f-adeb-1eeea294d721\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('2fc19c5e-6032-4237-b88f-7ea47dee7968',1718092553083,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_ws3-admin','{\"id\":\"56fe696a-5d7e-4782-93a1-4b0e74c0ceb7\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('30555800-4d07-453a-a22b-2edc71a0eb53',1718092530072,'org5','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c2f880e9-65b0-4432-a364-bd6ad75e57b4/client-secret','{\"type\":\"secret\",\"value\":\"3PkN8BNRBoNszzUmbGbPxYSlvc2H13xa\"}',NULL,'CLIENT'),('30b9f2aa-00f3-4703-861d-a87f3d9bd4aa',1718092390512,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','users/8c9ee063-5b65-4d8e-9661-ecc6d294daa4/role-mappings/clients/14038227-ac31-459b-a41c-96afd45ed7c2','[{\"id\":\"f9e2ff77-aa9a-4be2-b30e-248f4d0df460\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"14038227-ac31-459b-a41c-96afd45ed7c2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('32bb8777-ab04-4c0a-b8b3-f8fa148535af',1718092458816,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('34944bb3-5c2d-43ee-a9af-96305d291c77',1718092418284,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-ws-role-mt','{\"id\":\"627b61e9-3cca-4e35-b9de-dadc0ee4e726\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('34ceb517-0e61-445a-bbc2-bc9dc804336d',1718092390284,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_ws2-admin','{\"id\":\"567c6767-75a3-4aef-b0dc-adbcd58d3301\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('35c1e9f9-3f15-4a4c-a7e8-7a5a4ebb2d69',1718092530902,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_organization-user-manager','{\"id\":\"50de228a-2834-4b24-9e00-a3a29b833e0a\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('366175cd-1015-4a13-9f46-2e229f69f5d4',1718092417340,'org2','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/client-secret','{\"type\":\"secret\",\"value\":\"i3hnuLYZ2zNWc5vwBXBmSTyl4AYCQhCE\"}',NULL,'CLIENT'),('39e34928-22e2-423b-942e-4474135693a0',1718092443512,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_ws3-admin/composites','[{\"id\":\"28479fc7-b1ce-4bf3-b03b-88d963814a08\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"3dff97c9-eff7-460f-a1ed-54b8ffe9e170\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('3b6fe9e2-30ba-4b4f-9f50-f2bd8e3c2b52',1718092530244,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-usr-mt','{\"id\":\"6bbc27ce-a3e1-4ec4-82d6-ef812299991e\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('3d1bbdf5-4df3-4e17-96fb-336710d38e89',1718092457898,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_organization-user-manager','{\"id\":\"caf2899b-84e5-482c-aecb-2b57983255d2\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('3e288d9b-6381-49f4-9d55-689f13f00d95',1718092419016,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_organization-user-manager','{\"id\":\"4a70a4d2-3d44-46f6-881d-0f80fae3081f\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('3eb3e76c-e130-4e5c-aa17-a25333f5190a',1718092460497,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_ws1-admin/composites','[{\"id\":\"eb845f74-1eaa-4793-90dc-3f25d9490585\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"f59b0858-36dd-40d1-929f-e4cbe9b0c485\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('3ed1f4eb-ece6-4a01-96a1-cfe6cf9e7bbe',1718092553046,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_ws3-admin','{\"id\":\"1c9e8042-9356-4e23-9d50-524d93e97774\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('41d0d4a4-169b-446b-80d0-8e96411192b2',1718092417849,'org2','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/client-secret','{\"type\":\"secret\",\"value\":\"9aIfu5EqbBDdUGL1xuPyTUx8SOrjNdxC\"}',NULL,'CLIENT'),('436bf454-3624-4714-8de9-e85555ce9c99',1718092517447,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','users/11a46a7a-643a-4634-bfc3-a87a266bcaa9/role-mappings/clients/4a3136c6-14f2-4a86-bc94-4054f607b4be','[{\"id\":\"04fbe393-a4ec-48da-9919-cda7f2759e62\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"4a3136c6-14f2-4a86-bc94-4054f607b4be\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('43ec86d3-1d65-47aa-9ad8-f241cee8d9ea',1718092419344,'org2','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('46dd66a1-2faa-4ebd-8ce6-b1d1b977a0a8',1718092371536,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/8c9ee063-5b65-4d8e-9661-ecc6d294daa4','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('474bffeb-ed67-4a9e-aa90-b9d385bae542',1718092422019,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','users/cea41291-4b60-4594-b58d-65280e5ca389/role-mappings/clients/90437d83-845f-4150-8d81-4ba1d37a7624','[{\"id\":\"b0ff0e93-badb-4cf3-b6d5-c7d774fefe05\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"90437d83-845f-4150-8d81-4ba1d37a7624\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('4845ac30-fdab-4134-8893-e62811eda916',1718092458940,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/4cd7f7a1-254d-4680-a1ed-06fd496a7fb2/role-mappings/clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c','[{\"id\":\"e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"c9341f2f-91c3-40b2-ac4b-6a1465761c3c\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('4860045e-4c0c-47b4-ab73-2048ee5e4d4b',1718092402491,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/ws3','{\"id\":\"bee2a686-d0d3-43bb-b7af-f7c4476e9e3c\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('4ea7407b-a120-4fa9-a2bf-e07bcdbee1b8',1718092496726,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_ws1-admin/composites','[{\"id\":\"03e8a3e3-a1d1-4fe5-9ade-1f795e544025\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"83405647-5d8b-4c67-ad81-fddb727991b7\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('54a0184d-ff91-46e1-a7fa-dbe9095b845b',1718092378710,'org1','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9',NULL,'{\"enabled\":true}',NULL,'REALM'),('573b622a-0fe5-4837-9b97-aff89e2b4982',1718092492478,'org4','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/client-secret','{\"type\":\"secret\",\"value\":\"txDJiqHiJCRPl5yKlsmCvs3xbyFGgiBA\"}',NULL,'CLIENT'),('57ac5172-4e45-42e4-809c-447e9c4c3b63',1718092370542,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_organization-user-manager/composites','[{\"id\":\"84d1d505-326d-410a-bfa3-f4638d066339\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"51040531-cc48-415e-bdcc-29e8bfa4d65f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('581e9ea7-5fd9-4284-a247-87cd45a8a2cb',1718092432562,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_ws2-admin','{\"id\":\"6a9a06bb-daec-4c34-b783-939e744be9ee\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('58abe970-e632-4626-b727-a8ab7a4e2b9a',1718092479359,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_ws3-admin','{\"id\":\"87daeb5c-c932-45e4-9d0d-2adfd04df822\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('5a513754-beae-47b2-967c-665db726d067',1718092457786,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_organization-user-role-manager','{\"id\":\"674ace4b-22b8-4b66-951d-978cdfc8b65b\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('5a754c21-b4ed-4d3f-8f9d-6ee5a3e7249d',1718092493111,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-audit-log','{\"id\":\"4593f877-2829-4507-b709-baf276daa4e8\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5c5591b8-ef9b-4477-a3f1-5b74afbec51e',1718092457363,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-ws-mt','{\"id\":\"e8a9ddb2-2752-4ce5-8bc4-73d07275de45\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('5f0541a4-61a6-44d3-958e-60a9cd0dac52',1718092421950,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_ws1-admin/composites','[{\"id\":\"276429fd-071d-4ccd-b174-7c762ad7bbf3\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"f730b904-7f32-4fdd-b710-007981b46952\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('611aa1e0-2ba0-467c-a0a3-9073fc4868f1',1718092432520,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_ws2-admin','{\"id\":\"795ffef6-c616-4ca9-ba78-b8e6a5ec9ebb\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('621e3a49-1e58-43bb-ba15-1b6e3642851b',1718092418878,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_organization-user-role-manager','{\"id\":\"5c5f13eb-8af4-4242-9cbe-06a906fc0954\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('633fed04-b632-4102-96e4-79f63264bdf4',1718092470112,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_ws2-admin/composites','[{\"id\":\"fca66cb0-9aef-49ef-94e7-fd2fdc2fd937\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"34c0e69b-62a6-4a7d-9668-7bcf7169d77e\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('639621a5-c453-40cc-8de9-c5f6f83238d8',1718092507607,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','users/11a46a7a-643a-4634-bfc3-a87a266bcaa9/role-mappings/clients/4a3136c6-14f2-4a86-bc94-4054f607b4be','[{\"id\":\"6716b438-3f81-43bc-b301-36d43b4fb199\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"4a3136c6-14f2-4a86-bc94-4054f607b4be\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('64320b97-0bd4-45ee-9c7a-1889fcdd1920',1718092379644,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_ws1-admin','{\"id\":\"04100756-1e7d-44d4-b962-ba6a56fe6767\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('652627cc-9e3f-4a6b-823c-7e841f087862',1718092492275,'org4','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7/client-secret','{\"type\":\"secret\",\"value\":\"BgGEsqIwmFrV692K9JbKKkU8X8LK8ZXo\"}',NULL,'CLIENT'),('678dadf7-b50e-4ed5-9692-8514e7055c9e',1718092457463,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_organization-manager','{\"id\":\"e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('6ace721a-7dda-4156-abb8-cf7d3bd0851d',1718092493030,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-usr-mt','{\"id\":\"6daa393e-8bd0-4262-9827-68a9bd450eb6\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6dabb0b4-3d35-4de1-81ba-08071ee61a2e',1718092457305,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-ws-role-mt','{\"id\":\"b89d6931-8374-45f0-b46d-04298a20dd2a\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('6f695058-f816-4789-bfe3-fafeb91aaca2',1718092494007,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/8a4b670a-202a-42fe-b0d7-4afa0f4e3c19/role-mappings/clients/0ea7620f-ec2c-42d3-afdd-50a344c16891','[{\"id\":\"ac7e6a92-7dac-472e-b18b-26c631651fe6\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"0ea7620f-ec2c-42d3-afdd-50a344c16891\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('70bbcf55-6f20-4c7e-993a-61f0f2744760',1718092390258,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/ws2','{\"id\":\"25120deb-75c0-4c2f-985f-c3986bff28a8\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7293ff75-f733-4f55-8c0b-a48367715fed',1718092402563,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_ws3-admin','{\"id\":\"163d20da-927d-45c1-8421-117463e8c6d3\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('73ab18e6-5837-48db-a05a-dadf5110bbd2',1718092370861,'org1','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('74ff6937-11bf-4270-aa83-3dac4b89f1a0',1718092457948,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_organization-user-manager/composites','[{\"id\":\"37e62de2-ec35-4078-871e-4ac71f5adbef\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"ff7a8bd0-a77a-4e92-a147-6157e695186d\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('75172556-7852-4a43-bada-070e6e44ac64',1718092443414,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_ws3-admin','{\"id\":\"eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('757b8564-acbe-4d23-a767-fa85bd09f820',1718092420026,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/cea41291-4b60-4594-b58d-65280e5ca389','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('7608ec23-cdb8-4d02-92ca-47fe877ff36c',1718092368697,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2','{\"id\":\"14038227-ac31-459b-a41c-96afd45ed7c2\",\"clientId\":\"org1\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('763d35ab-e18f-43a3-aced-aa4dfd1a2794',1718092417260,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','{\"id\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"clientId\":\"org2-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('774e3b11-d95d-48f0-9f0a-560a2d7bd9d6',1718092418429,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_organization-manager','{\"id\":\"255a2b74-ef2e-46b6-aca4-a7d6eb2cc564\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('797505c6-d34b-40c0-a5da-b7fc021f61b4',1718092517396,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_ws3-admin/composites','[{\"id\":\"3fb6d514-9b93-4051-9103-fd7854d46c3f\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"3e104eaf-d97f-484c-a3be-f92976dc7edf\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7aa3a996-861a-420b-a45d-d4b809f72cdf',1718092507541,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_ws2-admin/composites','[{\"id\":\"9caedc92-aa3c-4647-a65d-4f1a5a1c09f4\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"46a8fa55-7d31-4661-9036-39042691c8dd\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7b4efed0-6a3c-4aec-9ba1-93f2c5677b24',1718092417766,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624','{\"id\":\"90437d83-845f-4150-8d81-4ba1d37a7624\",\"clientId\":\"org2\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('7baf0453-0cbb-4416-bcf6-c9c672867a32',1718092496619,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_ws1-admin','{\"id\":\"73c81309-ffbc-440a-8a8d-5d96296c4b91\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('7c1747fc-67cb-4350-8b6d-9a520a17c24f',1718092492935,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-own-mt','{\"id\":\"a1cb438c-d4eb-4404-bf20-760972d0517f\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('7d387061-d275-46ef-bf4a-7541a95e32b9',1718092432671,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_ws2-admin/composites','[{\"id\":\"8cdc9af1-3d5d-41b2-817b-8bda51ddfb88\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"795ffef6-c616-4ca9-ba78-b8e6a5ec9ebb\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('7dc385f2-c0b8-4acf-861d-86d8134bfe7b',1718092531202,'org5','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE'),('7fad58d1-c82f-470e-b501-720d5a318c3a',1718092529888,'org5','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/client-secret','{\"type\":\"secret\",\"value\":\"ptMJul0cifIouoCCy7avLn5bT1X4eD9x\"}',NULL,'CLIENT'),('7ffe18f6-bdc3-424f-8865-cddc12935fee',1718092417603,'org2','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/33604388-f0ec-44ed-901c-747a43154e6c/client-secret','{\"type\":\"secret\",\"value\":\"bj4OZ1JW6xdYc6cXoYcfleACIX0tG9rh\"}',NULL,'CLIENT'),('81bd9424-4e46-4750-b5e5-92e44607b55b',1718092432750,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','users/cea41291-4b60-4594-b58d-65280e5ca389/role-mappings/clients/90437d83-845f-4150-8d81-4ba1d37a7624','[{\"id\":\"6a9a06bb-daec-4c34-b783-939e744be9ee\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"90437d83-845f-4150-8d81-4ba1d37a7624\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('81e83e82-0c5e-447e-8371-4b554f046a25',1718092530414,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_organization-manager','{\"id\":\"0f32299b-229b-481c-ae28-7c29856c2243\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('82147c2b-9bac-45cd-a49c-f86d52a5314e',1718092402951,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','users/8c9ee063-5b65-4d8e-9661-ecc6d294daa4/role-mappings/clients/14038227-ac31-459b-a41c-96afd45ed7c2','[{\"id\":\"91b17ae5-78ce-49c6-81ec-dd904cf17ede\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"14038227-ac31-459b-a41c-96afd45ed7c2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('83785201-0226-4109-b1ca-cfdec4b1210c',1718092543280,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/ws2','{\"id\":\"87d602d7-af8c-4153-81f4-4ba1f9fc4b9d\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('83fca8f6-5459-4688-99fc-28a607798974',1718092543355,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_ws2-admin','{\"id\":\"ca336d5c-e351-4e7c-bf73-f4136c7c6559\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('88025493-2655-44d0-bebc-df614f4226c5',1718092543437,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_ws2-admin/composites','[{\"id\":\"87d602d7-af8c-4153-81f4-4ba1f9fc4b9d\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"cec4a30c-a82e-4b2d-bdbd-befdc1a7e640\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('899f351a-8a34-4b9c-bc38-40741a42e9f0',1718092493595,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_organization-user-role-manager','{\"id\":\"111e6d2b-79b3-4c23-99a6-8edb1c9b2711\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('8a14f6bc-5ae7-4eb3-866a-04818863fdc6',1718092533186,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/ws1','{\"id\":\"d8e96ecc-e720-4374-9fca-644d2c6be4b4\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8b257880-c6da-456f-8364-ceb1939086dc',1718092496558,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/ws1','{\"id\":\"03e8a3e3-a1d1-4fe5-9ade-1f795e544025\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('8bff4a0a-e2f0-4677-bdaf-37b18485c2d6',1718092457256,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-usage','{\"id\":\"6b0fd2af-9c37-4e9a-a6f9-d76fd796b69e\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8c97b047-83ba-4e2d-9649-360a2357f181',1718092418241,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-usage','{\"id\":\"1eb18b09-68c8-4e45-872b-9e922265fb56\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('8d686c4c-692f-4a8e-8054-cb6a626678f1',1718092443576,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','users/cea41291-4b60-4594-b58d-65280e5ca389/role-mappings/clients/90437d83-845f-4150-8d81-4ba1d37a7624','[{\"id\":\"eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"90437d83-845f-4150-8d81-4ba1d37a7624\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('8db06900-b081-4910-91cd-6462a05d06f5',1718092493207,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_organization-manager','{\"id\":\"aee67f07-ab58-4812-a562-434e55c65fc1\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('8eb65f90-8971-4601-ac17-651faada6637',1718092418194,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-own-mt','{\"id\":\"df20f52d-e3e6-47ac-971f-f95628abdd64\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9029cab3-e697-4173-86b7-ab70f01dd374',1718092530223,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-usage','{\"id\":\"81d10a65-d20f-4ea7-b230-1c3cb50b9457\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('902ba27b-c4d7-4451-848c-ad88c4434f91',1718092457012,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/76323179-e351-444c-97bc-583ca726a733','{\"id\":\"76323179-e351-444c-97bc-583ca726a733\",\"clientId\":\"_org3-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('9038cd40-2705-45ce-8d12-1f9434cc7e6e',1718092390410,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_ws2-admin/composites','[{\"id\":\"25120deb-75c0-4c2f-985f-c3986bff28a8\",\"name\":\"ws2\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"567c6767-75a3-4aef-b0dc-adbcd58d3301\",\"name\":\"_ws2-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('918255b3-953c-48ca-a55b-558f14cced10',1718092530781,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_organization-user-role-manager','{\"id\":\"0cfdad65-878f-47b0-978f-0c0be8862f58\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('92063d3f-a5fd-49e6-b4cf-9d39923d80ad',1718092532881,'org5','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9',NULL,'{\"enabled\":true}',NULL,'REALM'),('92f91752-23e1-47be-a0ef-426e7cbbb431',1718092533258,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_ws1-admin','{\"id\":\"43df02bc-cc74-478e-8284-f01211b6a567\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('93275598-ab70-444e-b2bb-990214ef4057',1718092492212,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','{\"id\":\"901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7\",\"clientId\":\"system-org4-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('93d1aca9-2b25-473f-9147-19ffe7d968fc',1718092470001,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_ws2-admin','{\"id\":\"34c0e69b-62a6-4a7d-9668-7bcf7169d77e\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('95b45922-9e77-4cef-9627-d1940e987429',1718092418305,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-ws-role-usr','{\"id\":\"e0f755fa-23bb-4d23-8a41-a6ad95988d69\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('96a77199-2db2-4c4f-82fa-40318248fe60',1718092530024,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c2f880e9-65b0-4432-a364-bd6ad75e57b4','{\"id\":\"c2f880e9-65b0-4432-a364-bd6ad75e57b4\",\"clientId\":\"_org5-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('96d30969-6c8a-4953-8efa-15fa0788d70b',1718092390311,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_ws2-admin','{\"id\":\"f9e2ff77-aa9a-4be2-b30e-248f4d0df460\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('96ed1503-8bc3-4d4d-b193-a9777e7824c0',1718092492399,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be','{\"id\":\"4a3136c6-14f2-4a86-bc94-4054f607b4be\",\"clientId\":\"org4\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('97ab8fe9-9725-42e0-8385-02c6d3189b63',1718092517264,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/ws3','{\"id\":\"3fb6d514-9b93-4051-9103-fd7854d46c3f\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('97f81b38-a943-4541-81ad-2386e1472562',1718092402639,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_ws3-admin','{\"id\":\"91b17ae5-78ce-49c6-81ec-dd904cf17ede\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('98d22f69-1a99-4afe-bb57-e0c6bc5cc3d0',1718092370404,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_organization-user-role-manager/composites','[{\"id\":\"84d1d505-326d-410a-bfa3-f4638d066339\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"464e34d5-477c-42f8-9e55-38f01e6d8bff\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}},{\"id\":\"51040531-cc48-415e-bdcc-29e8bfa4d65f\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('9cd5d7cb-b439-414e-a69e-50e8aed27d5e',1718092530988,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_organization-user-manager/composites','[{\"id\":\"6bbc27ce-a3e1-4ec4-82d6-ef812299991e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"1c3deba3-8ab6-45e4-b99b-1fecacb0c50d\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('9e66429a-e820-4c67-a8fd-8d60a57f04be',1718092369283,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-upd','{\"id\":\"7373b7f3-8ae0-4dfa-9d5a-a59fc326c20b\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE'),('9e6f1fed-18b5-4644-b635-6a00658012dc',1718092543321,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_ws2-admin','{\"id\":\"cec4a30c-a82e-4b2d-bdbd-befdc1a7e640\",\"name\":\"_ws2-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('9f3b8d8c-a675-4c06-9fd8-fabd39efad2b',1718092418324,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-ws-mt','{\"id\":\"29d6c04a-1419-4397-9b12-1f5412a14e44\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('a10bfff8-8b94-4ff8-a59a-dd6fbc0ae5e3',1718092443351,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/ws3','{\"id\":\"28479fc7-b1ce-4bf3-b03b-88d963814a08\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a27cc7a2-c029-4752-9add-c1dd96bb5ab3',1718092418969,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_organization-user-role-manager/composites','[{\"id\":\"e84bc76b-e9ff-4d9f-8a26-f369e456862e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"627b61e9-3cca-4e35-b9de-dadc0ee4e726\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"e0f755fa-23bb-4d23-8a41-a6ad95988d69\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('a45c9329-4e3d-4049-bca0-1e7e98a37847',1718092443387,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_ws3-admin','{\"id\":\"3dff97c9-eff7-460f-a1ed-54b8ffe9e170\",\"name\":\"_ws3-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('a701d628-2671-496b-bcfb-b3a2e68441bc',1718092418074,'org2','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/d1208074-d243-4b06-b130-e8903e23c164/client-secret','{\"type\":\"secret\",\"value\":\"RIH7EH9YR8LZ638Lyxcge1qkIotN0HW5\"}',NULL,'CLIENT'),('a77f3d5c-2dce-47f5-acfa-b1b54745df3a',1718092418778,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_organization-manager/composites','[{\"id\":\"e68aff40-cc4d-4292-b7a2-89f66518bb18\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"df20f52d-e3e6-47ac-971f-f95628abdd64\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"5f7305c6-d9ca-49c3-8824-1066c6b8a0a1\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"1eb18b09-68c8-4e45-872b-9e922265fb56\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"e84bc76b-e9ff-4d9f-8a26-f369e456862e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"627b61e9-3cca-4e35-b9de-dadc0ee4e726\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"e0f755fa-23bb-4d23-8a41-a6ad95988d69\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"29d6c04a-1419-4397-9b12-1f5412a14e44\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"a0c43aaa-6269-477b-b563-78ddb3fed51d\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"7638790d-780f-4a05-b4b0-f4b3a09e8fa7\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"128c1c6c-31a7-441f-adeb-1eeea294d721\",\"attributes\":{}},{\"id\":\"027cb66e-c694-4300-9559-d797ea637713\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"128c1c6c-31a7-441f-adeb-1eeea294d721\",\"attributes\":{}},{\"id\":\"84589d2b-1e09-466e-a0d3-a0db739d97be\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"128c1c6c-31a7-441f-adeb-1eeea294d721\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('a80da677-0736-4455-ab46-bdcecc2e2ce5',1718092479472,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','users/4cd7f7a1-254d-4680-a1ed-06fd496a7fb2/role-mappings/clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c','[{\"id\":\"87daeb5c-c932-45e4-9d0d-2adfd04df822\",\"name\":\"_ws3-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"c9341f2f-91c3-40b2-ac4b-6a1465761c3c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('a888a073-a2b0-4624-9f38-3d56b6303acc',1718092543558,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','users/33341728-0658-4dda-8fc7-7b346e5714e7/role-mappings/clients/bf8007e6-1073-4601-a0c9-08cade1429a7','[{\"id\":\"ca336d5c-e351-4e7c-bf73-f4136c7c6559\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bf8007e6-1073-4601-a0c9-08cade1429a7\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('a8d01d8d-2abe-47c4-b655-28efddff1a7a',1718092494883,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/11a46a7a-643a-4634-bfc3-a87a266bcaa9/role-mappings/clients/4a3136c6-14f2-4a86-bc94-4054f607b4be','[{\"id\":\"aee67f07-ab58-4812-a562-434e55c65fc1\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"4a3136c6-14f2-4a86-bc94-4054f607b4be\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('aa0c42a1-9647-41b6-9066-b3c59b177e50',1718092458088,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/4ab8d178-a767-43b9-9ec4-c20124c869d2/role-mappings/clients/6e5e9267-7e2e-4032-a789-225985c0bb4f','[{\"id\":\"d945b46e-7619-4b77-8219-5537add38b0d\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"6e5e9267-7e2e-4032-a789-225985c0bb4f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('aa796b60-1554-4843-9d30-84283704f93b',1718092379906,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','users/8c9ee063-5b65-4d8e-9661-ecc6d294daa4/role-mappings/clients/14038227-ac31-459b-a41c-96afd45ed7c2','[{\"id\":\"04100756-1e7d-44d4-b962-ba6a56fe6767\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"14038227-ac31-459b-a41c-96afd45ed7c2\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('ae8b6e52-6bc7-41c0-a67d-dd9f7ee15c52',1718092457749,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_organization-manager/composites','[{\"id\":\"b2b646b6-8706-471d-9dc4-170589af64f7\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"755df3fd-379f-44ce-aa2a-8489aaaed940\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"3e8bb9af-f4bc-4ac2-8c66-ac73b6983694\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"6b0fd2af-9c37-4e9a-a6f9-d76fd796b69e\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"37e62de2-ec35-4078-871e-4ac71f5adbef\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"b89d6931-8374-45f0-b46d-04298a20dd2a\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"ff7a8bd0-a77a-4e92-a147-6157e695186d\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"e8a9ddb2-2752-4ce5-8bc4-73d07275de45\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"872a26b8-b5ed-4044-aca3-689ed5cd3c2b\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"d4f0cf7f-7932-43f8-a05d-499a454c3c22\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e5e9267-7e2e-4032-a789-225985c0bb4f\",\"attributes\":{}},{\"id\":\"cff3ed73-73f1-422e-9d85-537d4ec40684\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e5e9267-7e2e-4032-a789-225985c0bb4f\",\"attributes\":{}},{\"id\":\"59692eaa-9979-4dab-8095-d64431b04ad7\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"6e5e9267-7e2e-4032-a789-225985c0bb4f\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('aea8aa3a-2ec9-4324-b2fe-d8c5e8b8539a',1718092421817,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/ws1','{\"id\":\"276429fd-071d-4ccd-b174-7c762ad7bbf3\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b24d23f7-78d7-4d51-8e4a-25df42df7a4e',1718092417515,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/33604388-f0ec-44ed-901c-747a43154e6c','{\"id\":\"33604388-f0ec-44ed-901c-747a43154e6c\",\"clientId\":\"system-org2-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('b2d111d1-0f57-4d12-a744-88a84b9e72ac',1718092369391,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-role-usr','{\"id\":\"2438e27c-322b-4e80-b6a2-7e7ae8defd5e\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b3113921-a3a9-4efb-88f6-7bf9f2b020e6',1718092457211,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-own-mt','{\"id\":\"755df3fd-379f-44ce-aa2a-8489aaaed940\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b420d33c-2e0d-42c5-886d-a16e312e7c01',1718092421879,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_ws1-admin','{\"id\":\"b0ff0e93-badb-4cf3-b6d5-c7d774fefe05\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('b434f552-a3e3-40bf-a6b5-0479f5ecd061',1718092493739,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/4a3136c6-14f2-4a86-bc94-4054f607b4be/roles/_organization-user-manager','{\"id\":\"fc23e83e-723b-4a0b-a1e0-e63d3763fca2\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b4fa5dad-c469-49be-b991-4f59bd3be012',1718092369797,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_organization-manager','{\"id\":\"d0a07957-e9f8-458e-af12-83c4fa187b7f\",\"name\":\"_organization-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('b57bf63d-022a-4d98-9ffb-b38327bd7579',1718092457278,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-usr-mt','{\"id\":\"37e62de2-ec35-4078-871e-4ac71f5adbef\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('b6d138c8-8d96-4e30-9b26-e43f594009f4',1718092529549,'org5','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/client-secret','{\"type\":\"secret\",\"value\":\"vXvGJpBWJizLS93wXbVd4WdbwdaPZzlg\"}',NULL,'CLIENT'),('b9f74088-9a1a-490e-876c-46b430ee412b',1718092460405,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_ws1-admin','{\"id\":\"f59b0858-36dd-40d1-929f-e4cbe9b0c485\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('bb0df4b2-94c7-47d3-803a-8c354ac6e63b',1718092460385,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/ws1','{\"id\":\"eb845f74-1eaa-4793-90dc-3f25d9490585\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('bb16443e-5999-4521-a553-f954b9ebbe12',1718092457330,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-ws-role-usr','{\"id\":\"ff7a8bd0-a77a-4e92-a147-6157e695186d\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bb65bc3e-2769-4f59-bb7b-b67a90b19958',1718092460433,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_ws1-admin','{\"id\":\"d275e6bb-b38c-4fef-bd01-354188808cef\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('bb736260-e59f-4c1e-9e58-f4684c6c6100',1718092370756,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/d7f9dae2-b8f8-4113-92a8-febc659810d4/role-mappings/clients/da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','[{\"id\":\"e89caf85-564d-44d5-9866-b508c09d845a\",\"name\":\"realm-admin\",\"description\":\"${role_realm-admin}\",\"composite\":true,\"clientRole\":true,\"containerId\":\"da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e\",\"attributes\":{}}]',NULL,'CLIENT_ROLE_MAPPING'),('bbbd888e-c6cc-4b16-88aa-bf744851fbca',1718092379527,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/ws1','{\"id\":\"df3bccbd-b3fe-4a46-8427-00a067460f50\",\"name\":\"ws1\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('bc6787f1-7555-4f32-afa3-f2f79259956f',1718092530308,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-ws-mt','{\"id\":\"17e67e8a-bc75-4f04-bdc2-a5335020fdc3\",\"name\":\"_og-ws-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bc7969f2-dd14-4125-96df-a9fd42e1b2c2',1718092457064,'org3','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/76323179-e351-444c-97bc-583ca726a733/client-secret','{\"type\":\"secret\",\"value\":\"EunpuvdWtOet4JwR1yaeljvMeu5i6KmD\"}',NULL,'CLIENT'),('bcc47936-bf9b-4321-8483-2200aeac065f',1718092379807,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_ws1-admin/composites','[{\"id\":\"df3bccbd-b3fe-4a46-8427-00a067460f50\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"1e57afd7-234b-4ee2-803c-a70a653d345a\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('bce65964-1344-44b0-8585-f953bb45c06f',1718092369064,'org1','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/71003c68-7412-47b5-9631-296e81eb93c1/client-secret','{\"type\":\"secret\",\"value\":\"SVkN0pGKofEuej6IRj4f002Jh6k8Sl0j\"}',NULL,'CLIENT'),('bde27e60-a39e-4969-a1f1-9efabffe828f',1718092529699,'org5','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/380ba5aa-d8fd-4378-bfdd-cc930b2830d6/client-secret','{\"type\":\"secret\",\"value\":\"mJmaL5ZEbbnCL6J9TRVWDAyL7KgMt07Q\"}',NULL,'CLIENT'),('be3f00a5-2a4f-4ff0-8eba-f5c5484a23e7',1718092369538,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-ws-role-mt','{\"id\":\"464e34d5-477c-42f8-9e55-38f01e6d8bff\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('be49eb83-3049-4300-9fab-742dcd57bcbe',1718092456743,'org3','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/844d8f45-2003-4fc5-a82d-7e00eae35b87/client-secret','{\"type\":\"secret\",\"value\":\"hLBMmJUbJyuknDQLEQLSadMxdOyDR5eF\"}',NULL,'CLIENT'),('bf1401eb-d28f-4433-ab7a-b78f354999ec',1718092531729,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/33341728-0658-4dda-8fc7-7b346e5714e7','{\"username\":\"admin\",\"firstName\":\"admin\",\"lastName\":\"admin\",\"email\":\"admin@example.com\",\"enabled\":true,\"requiredActions\":[]}',NULL,'USER'),('bf5aed6d-5501-462b-82e8-d0c1575b8a13',1718092531850,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/33341728-0658-4dda-8fc7-7b346e5714e7/role-mappings/clients/bf8007e6-1073-4601-a0c9-08cade1429a7','[{\"id\":\"0f32299b-229b-481c-ae28-7c29856c2243\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bf8007e6-1073-4601-a0c9-08cade1429a7\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('bf5f822b-5155-413e-ae5d-ee0f00efa066',1718092369668,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-audit-log','{\"id\":\"d21a3988-f921-4979-b095-5499b0993ed4\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('bf9f7555-f349-4272-bc7e-e42413e3d20b',1718092469960,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/ws2','{\"id\":\"fca66cb0-9aef-49ef-94e7-fd2fdc2fd937\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('c307f818-dec3-4776-bb34-57d7e80ce522',1718092529472,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076','{\"id\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"clientId\":\"org5-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('c4e32467-7f8b-421d-bac7-2c06b26a48a4',1718092456844,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c','{\"id\":\"c9341f2f-91c3-40b2-ac4b-6a1465761c3c\",\"clientId\":\"org3\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('c54de209-bcea-4854-b087-883adf799954',1718092533362,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_ws1-admin/composites','[{\"id\":\"d8e96ecc-e720-4374-9fca-644d2c6be4b4\",\"name\":\"ws1\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"5f3482b1-ebfe-439a-986a-0f040d65c59e\",\"name\":\"_ws1-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('c58f9b38-7223-481e-8db6-811ffb50af62',1718092418342,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-audit-log','{\"id\":\"a0c43aaa-6269-477b-b563-78ddb3fed51d\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('caa59a3f-ea2f-4331-b0e3-9f88e202900d',1718092379572,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_ws1-admin','{\"id\":\"1e57afd7-234b-4ee2-803c-a70a653d345a\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('cb42ad84-b60d-45a2-bc93-60e6bcd81b65',1718092368474,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/629de169-8395-43bf-9455-c08bd198dbde','{\"id\":\"629de169-8395-43bf-9455-c08bd198dbde\",\"clientId\":\"system-org1-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('cb8ac405-ce6f-4789-bcaf-da476fdf995c',1718092530283,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-ws-role-usr','{\"id\":\"1c3deba3-8ab6-45e4-b99b-1fecacb0c50d\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('cc72256a-e2d5-4ba6-8340-121677054844',1718092492833,'org4','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/07381026-d956-456b-acc1-30a424f8030e/client-secret','{\"type\":\"secret\",\"value\":\"WoPnh0vgMG5Q9FdbNXvfYfnqXg6UYthS\"}',NULL,'CLIENT'),('d1ed0ad0-2c2f-4331-81fd-1d4531cbf672',1718092530857,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_organization-user-role-manager/composites','[{\"id\":\"6bbc27ce-a3e1-4ec4-82d6-ef812299991e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"44c543f5-14e8-407c-914d-5ddeacacad78\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"1c3deba3-8ab6-45e4-b99b-1fecacb0c50d\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('d37070ce-dfca-4405-9473-2976c2bc9d21',1718092553222,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_ws3-admin/composites','[{\"id\":\"4154885f-309f-4cac-819c-5e628120ab02\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"1c9e8042-9356-4e23-9d50-524d93e97774\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('d43a88af-6d6f-444f-a79f-48c787d166b5',1718092368344,'org1','ACTION','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/client-secret','{\"type\":\"secret\",\"value\":\"yJyGT00ZQz9MSYl7xgeUsjZsaXPHReGc\"}',NULL,'CLIENT'),('d5a934f5-d3e9-4e38-99b6-31996e4344df',1718092533226,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_ws1-admin','{\"id\":\"5f3482b1-ebfe-439a-986a-0f040d65c59e\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d63c7fe4-7d65-443d-a1c4-bfe741d20c7e',1718092529634,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/380ba5aa-d8fd-4378-bfdd-cc930b2830d6','{\"id\":\"380ba5aa-d8fd-4378-bfdd-cc930b2830d6\",\"clientId\":\"system-org5-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('d644a9c0-faf0-439b-8aba-10e36b249f50',1718092530745,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7/roles/_organization-manager/composites','[{\"id\":\"af69b3e5-1835-4c58-8278-f10f23e13e78\",\"name\":\"_og-upd\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"b5a2b1d4-dba4-4d05-9d2a-ebd3e35310cb\",\"name\":\"_og-own-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"2810bc5c-41c9-4446-aacf-0cca89e636cb\",\"name\":\"_og-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"81d10a65-d20f-4ea7-b230-1c3cb50b9457\",\"name\":\"_og-usage\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"6bbc27ce-a3e1-4ec4-82d6-ef812299991e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"44c543f5-14e8-407c-914d-5ddeacacad78\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"1c3deba3-8ab6-45e4-b99b-1fecacb0c50d\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"17e67e8a-bc75-4f04-bdc2-a5335020fdc3\",\"name\":\"_og-ws-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"5926846a-42d7-45c3-bc4b-602ab3f198f5\",\"name\":\"_og-audit-log\",\"composite\":false,\"clientRole\":true,\"containerId\":\"48aa244c-1748-48f0-b78d-628e5aa21076\",\"attributes\":{}},{\"id\":\"3a00008e-1aef-4af3-8b39-6e88638c3f30\",\"name\":\"manage-identity-providers\",\"description\":\"${role_manage-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d6f36bd8-f053-4c49-b385-c4dee7ca4879\",\"attributes\":{}},{\"id\":\"dc4518a8-e2d7-43b4-8799-7795b548cf70\",\"name\":\"view-identity-providers\",\"description\":\"${role_view-identity-providers}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d6f36bd8-f053-4c49-b385-c4dee7ca4879\",\"attributes\":{}},{\"id\":\"e058afcb-3d88-4d36-96b1-08f377907450\",\"name\":\"view-realm\",\"description\":\"${role_view-realm}\",\"composite\":false,\"clientRole\":true,\"containerId\":\"d6f36bd8-f053-4c49-b385-c4dee7ca4879\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('d70ec524-4cf4-4037-b4d7-9f32226a32d6',1718092529818,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/bf8007e6-1073-4601-a0c9-08cade1429a7','{\"id\":\"bf8007e6-1073-4601-a0c9-08cade1429a7\",\"clientId\":\"org5\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[\"/*\"],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"post.logout.redirect.uris\":\"/*\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('d8cedb0c-fff7-4208-a078-30d737ae48f3',1718092507350,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/ws2','{\"id\":\"9caedc92-aa3c-4647-a65d-4f1a5a1c09f4\",\"name\":\"ws2\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('d9dcfa06-95f9-4aa9-97ab-9d1bae45529f',1718092402848,'org1','CREATE','org1','75799957-807f-4039-915e-f274934b3f50','d7f9dae2-b8f8-4113-92a8-febc659810d4','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_ws3-admin/composites','[{\"id\":\"bee2a686-d0d3-43bb-b7af-f7c4476e9e3c\",\"name\":\"ws3\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{\"kind\":[\"workspace\"]}},{\"id\":\"163d20da-927d-45c1-8421-117463e8c6d3\",\"name\":\"_ws3-admin\",\"composite\":false,\"clientRole\":true,\"containerId\":\"75799957-807f-4039-915e-f274934b3f50\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE'),('dac9bb50-befa-472e-809e-050659c4497b',1718092470158,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','users/4cd7f7a1-254d-4680-a1ed-06fd496a7fb2/role-mappings/clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c','[{\"id\":\"8fe75922-4d78-47e6-96f4-03bae30d28f8\",\"name\":\"_ws2-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"c9341f2f-91c3-40b2-ac4b-6a1465761c3c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('dd085c37-1025-404b-9ca5-d1b9efce25ee',1718092553017,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/ws3','{\"id\":\"4154885f-309f-4cac-819c-5e628120ab02\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('dd3ad938-bcc9-4b33-9a9b-637dc77e78b0',1718092421851,'org2','CREATE','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','d04e402c-1ddd-471d-8e87-d6d3185c8755','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_ws1-admin','{\"id\":\"f730b904-7f32-4fdd-b710-007981b46952\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('dd8932c3-a73b-4339-8d0b-3100dd69958f',1718092371731,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','users/8c9ee063-5b65-4d8e-9661-ecc6d294daa4/role-mappings/clients/14038227-ac31-459b-a41c-96afd45ed7c2','[{\"id\":\"d0a07957-e9f8-458e-af12-83c4fa187b7f\",\"name\":\"_organization-manager\",\"composite\":true,\"clientRole\":true,\"containerId\":\"14038227-ac31-459b-a41c-96afd45ed7c2\",\"attributes\":{\"kind\":[\"organization\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('de6369d0-3cf4-48a9-909c-5e2c04ffe69b',1718092456660,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/844d8f45-2003-4fc5-a82d-7e00eae35b87','{\"id\":\"844d8f45-2003-4fc5-a82d-7e00eae35b87\",\"clientId\":\"system-org3-auth\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":true,\"consentRequired\":false,\"standardFlowEnabled\":true,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('df4c775b-c80d-4163-a068-e2e52d4dd3b0',1718092479308,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/ws3','{\"id\":\"4cccba60-db70-4ee5-8dc3-ac267c20078f\",\"name\":\"ws3\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('e01919b8-a866-4e24-a306-544f05a4f88f',1718092368929,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/71003c68-7412-47b5-9631-296e81eb93c1','{\"id\":\"71003c68-7412-47b5-9631-296e81eb93c1\",\"clientId\":\"_org1-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('e106bbe5-746c-409f-ba60-0d9f7c37fd5a',1718092530327,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-audit-log','{\"id\":\"5926846a-42d7-45c3-bc4b-602ab3f198f5\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e6a1e7b6-f787-47ce-801e-18224aeb354d',1718092370465,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_organization-user-manager','{\"id\":\"01d071b7-96f2-4b75-b8e3-015c77ab8992\",\"name\":\"_organization-user-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('e7513845-ab31-406b-9c8b-22582ab4f231',1718092496182,'org4','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9',NULL,'{\"enabled\":true}',NULL,'REALM'),('e77c1b59-0b3f-40a1-b6d4-c9ebf6e01164',1718092530183,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-own-mt','{\"id\":\"b5a2b1d4-dba4-4d05-9d2a-ebd3e35310cb\",\"name\":\"_og-own-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('e967c98a-a338-4b70-adb6-e0ca431ec004',1718092492745,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/07381026-d956-456b-acc1-30a424f8030e','{\"id\":\"07381026-d956-456b-acc1-30a424f8030e\",\"clientId\":\"_org4-api\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":false,\"publicClient\":true,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"access.token.lifespan\":\"86400\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"frontchannel.logout.session.required\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"oidc.ciba.grant.enabled\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"client.session.max.lifespan\":\"86400\",\"saml.allow.ecp.flow\":\"false\",\"client.session.idle.timeout\":\"86400\",\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.encrypt\":\"false\",\"saml.server.signature\":\"false\",\"exclude.session.state.from.auth.response\":\"false\",\"saml.artifact.binding\":\"false\",\"saml_force_name_id_format\":\"false\",\"acr.loa.map\":\"{}\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"token.response.type.bearer.lower-case\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"defaultClientScopes\":[\"web-origins\",\"acr\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"]}',NULL,'CLIENT'),('e9d3165e-ab6c-46e5-a782-66753aa3cc5a',1718092369445,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-usage','{\"id\":\"4781a401-602f-422a-8220-87d9bb29dee0\",\"name\":\"_og-usage\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ea2c8257-060d-4688-96ee-24894ee28fbc',1718092419096,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/90437d83-845f-4150-8d81-4ba1d37a7624/roles/_organization-user-manager/composites','[{\"id\":\"e84bc76b-e9ff-4d9f-8a26-f369e456862e\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}},{\"id\":\"e0f755fa-23bb-4d23-8a41-a6ad95988d69\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('ea39b42e-117a-4c55-816f-1549d715d23f',1718092493067,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-ws-role-usr','{\"id\":\"37dda41b-d445-49f2-a806-df159be87fab\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('eae67902-ed48-43ba-948b-ddbfbd71f870',1718092493048,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-ws-role-mt','{\"id\":\"8b69162b-ee4b-463a-8c2f-9955a8fb511b\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('ecd56900-45df-4d8d-a210-8d421334635a',1718092421497,'org2','UPDATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9',NULL,'{\"enabled\":true}',NULL,'REALM'),('f0367ce1-d62b-4b74-9e09-112d6800e36b',1718092418264,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-usr-mt','{\"id\":\"e84bc76b-e9ff-4d9f-8a26-f369e456862e\",\"name\":\"_og-usr-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f05086eb-8b7a-4073-9a24-13b0c7201bbc',1718092530262,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-ws-role-mt','{\"id\":\"44c543f5-14e8-407c-914d-5ddeacacad78\",\"name\":\"_og-ws-role-mt\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f1076d8a-d465-44d4-abe7-875ca9f11d94',1718092492964,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_og-role-usr','{\"id\":\"b4398f8f-8592-4a57-882a-a615c39a5d3e\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f10d19a3-eef8-4127-941e-af8cdfcef338',1718092369584,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/75799957-807f-4039-915e-f274934b3f50/roles/_og-ws-role-usr','{\"id\":\"51040531-cc48-415e-bdcc-29e8bfa4d65f\",\"name\":\"_og-ws-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f3bea4fe-e259-46b9-a106-dc2f9a6f7c3e',1718092530204,'org5','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/48aa244c-1748-48f0-b78d-628e5aa21076/roles/_og-role-usr','{\"id\":\"2810bc5c-41c9-4446-aacf-0cca89e636cb\",\"name\":\"_og-role-usr\",\"composite\":false}',NULL,'CLIENT_ROLE'),('f56d1ac7-e1ca-4720-bccc-3e96999bcd22',1718092492005,'org4','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864','{\"id\":\"87a260f4-ece5-4eea-94de-ba31720af864\",\"clientId\":\"org4-workspaces\",\"surrogateAuthRequired\":false,\"enabled\":true,\"alwaysDisplayInConsole\":false,\"clientAuthenticatorType\":\"client-secret\",\"redirectUris\":[],\"webOrigins\":[],\"notBefore\":0,\"bearerOnly\":false,\"consentRequired\":false,\"standardFlowEnabled\":false,\"implicitFlowEnabled\":false,\"directAccessGrantsEnabled\":true,\"serviceAccountsEnabled\":true,\"publicClient\":false,\"frontchannelLogout\":false,\"protocol\":\"openid-connect\",\"attributes\":{\"id.token.as.detached.signature\":\"false\",\"saml.assertion.signature\":\"false\",\"saml.force.post.binding\":\"false\",\"saml.multivalued.roles\":\"false\",\"saml.encrypt\":\"false\",\"oauth2.device.authorization.grant.enabled\":\"false\",\"backchannel.logout.revoke.offline.tokens\":\"false\",\"saml.server.signature\":\"false\",\"saml.server.signature.keyinfo.ext\":\"false\",\"use.refresh.tokens\":\"true\",\"exclude.session.state.from.auth.response\":\"false\",\"oidc.ciba.grant.enabled\":\"false\",\"saml.artifact.binding\":\"false\",\"backchannel.logout.session.required\":\"true\",\"client_credentials.use_refresh_token\":\"false\",\"saml_force_name_id_format\":\"false\",\"require.pushed.authorization.requests\":\"false\",\"saml.client.signature\":\"false\",\"tls.client.certificate.bound.access.tokens\":\"false\",\"saml.authnstatement\":\"false\",\"display.on.consent.screen\":\"false\",\"saml.onetimeuse.condition\":\"false\"},\"authenticationFlowBindingOverrides\":{},\"fullScopeAllowed\":true,\"nodeReRegistrationTimeout\":-1,\"protocolMappers\":[{\"name\":\"Client Host\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientHost\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientHost\",\"jsonType.label\":\"String\"}},{\"name\":\"Client IP Address\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientAddress\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientAddress\",\"jsonType.label\":\"String\"}},{\"name\":\"Client ID\",\"protocol\":\"openid-connect\",\"protocolMapper\":\"oidc-usersessionmodel-note-mapper\",\"consentRequired\":false,\"config\":{\"user.session.note\":\"clientId\",\"userinfo.token.claim\":\"true\",\"id.token.claim\":\"true\",\"access.token.claim\":\"true\",\"claim.name\":\"clientId\",\"jsonType.label\":\"String\"}}],\"defaultClientScopes\":[\"web-origins\",\"profile\",\"roles\",\"email\"],\"optionalClientScopes\":[\"address\",\"phone\",\"offline_access\",\"microprofile-jwt\"],\"access\":{\"view\":true,\"configure\":true,\"manage\":true}}',NULL,'CLIENT'),('f711670b-6ecd-4da6-a06b-a86fa7269092',1718092496589,'org4','CREATE','org4','87a260f4-ece5-4eea-94de-ba31720af864','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19','172.28.0.9','clients/87a260f4-ece5-4eea-94de-ba31720af864/roles/_ws1-admin','{\"id\":\"83405647-5d8b-4c67-ad81-fddb727991b7\",\"name\":\"_ws1-admin\",\"composite\":false,\"attributes\":{\"kind\":[\"workspace\"]}}',NULL,'CLIENT_ROLE'),('f8852bd2-9a5e-4bd2-9702-e4da9554e49b',1718092460538,'org3','CREATE','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4','4ab8d178-a767-43b9-9ec4-c20124c869d2','172.28.0.9','users/4cd7f7a1-254d-4680-a1ed-06fd496a7fb2/role-mappings/clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c','[{\"id\":\"d275e6bb-b38c-4fef-bd01-354188808cef\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"c9341f2f-91c3-40b2-ac4b-6a1465761c3c\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('f9f3358f-1438-4cf4-a944-0e4e7818b017',1718092457393,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/04787d7f-e0b5-4795-85b0-5eec4a7b36b4/roles/_og-audit-log','{\"id\":\"872a26b8-b5ed-4044-aca3-689ed5cd3c2b\",\"name\":\"_og-audit-log\",\"composite\":false}',NULL,'CLIENT_ROLE'),('fa0bf5bc-94ab-45ba-84d1-053f128d02f7',1718092533408,'org5','CREATE','org5','48aa244c-1748-48f0-b78d-628e5aa21076','91fbba5b-6336-42f8-882f-23786d9a50b1','172.28.0.9','users/33341728-0658-4dda-8fc7-7b346e5714e7/role-mappings/clients/bf8007e6-1073-4601-a0c9-08cade1429a7','[{\"id\":\"43df02bc-cc74-478e-8284-f01211b6a567\",\"name\":\"_ws1-admin\",\"composite\":true,\"clientRole\":true,\"containerId\":\"bf8007e6-1073-4601-a0c9-08cade1429a7\",\"attributes\":{\"kind\":[\"workspace\"]}}]',NULL,'CLIENT_ROLE_MAPPING'),('fbec291b-5977-4db5-a3a0-0ffb56c13849',1718092370297,'org1','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/14038227-ac31-459b-a41c-96afd45ed7c2/roles/_organization-user-role-manager','{\"id\":\"b464a95d-811a-4219-8dc6-5f2b591a52b0\",\"name\":\"_organization-user-role-manager\",\"composite\":false,\"attributes\":{\"kind\":[\"organization\"]}}',NULL,'CLIENT_ROLE'),('ffbac68b-2673-4599-8e0c-68f4737da59f',1718092457859,'org3','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/c9341f2f-91c3-40b2-ac4b-6a1465761c3c/roles/_organization-user-role-manager/composites','[{\"id\":\"37e62de2-ec35-4078-871e-4ac71f5adbef\",\"name\":\"_og-usr-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"b89d6931-8374-45f0-b46d-04298a20dd2a\",\"name\":\"_og-ws-role-mt\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}},{\"id\":\"ff7a8bd0-a77a-4e92-a147-6157e695186d\",\"name\":\"_og-ws-role-usr\",\"composite\":false,\"clientRole\":true,\"containerId\":\"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\",\"attributes\":{}}]',NULL,'CLIENT_ROLE'),('fff1dba2-8836-4b6b-a03e-059d1071958a',1718092418167,'org2','CREATE','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e0462c55-5a6f-4483-a3e0-f29f62c49372','23c294c1-8cd4-43ac-8509-e202ce9ebd0a','172.28.0.9','clients/a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe/roles/_og-upd','{\"id\":\"e68aff40-cc4d-4292-b7a2-89f66518bb18\",\"name\":\"_og-upd\",\"composite\":false}',NULL,'CLIENT_ROLE');
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
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('0072b906-5341-4afd-8469-2b2bd9332be4',NULL,NULL,'org4','52447238-80c8-49d7-910d-a66fde6a02df',2,30,1,'24d9bb51-4296-4a60-9ca4-b487577dd333',NULL),('009b5b81-72f0-4ada-a610-163f73961431',NULL,'auth-username-password-form','org2','f8da8f18-611e-4c14-b05a-447c8e066688',0,10,0,NULL,NULL),('0144c27c-2cc2-431d-8913-0fd9a6427d36',NULL,'identity-provider-redirector','org2','5f98ba6f-906f-488a-bd43-5e78e4bb3112',2,25,0,NULL,NULL),('018f9296-0d29-4056-8541-75fda1184d8c',NULL,'direct-grant-validate-password','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','0a9dd6c5-fd6d-4cc5-b6e3-c9a286d9c18a',0,20,0,NULL,NULL),('02ac6398-2b4c-46c4-bd88-0ab29afa433c',NULL,NULL,'org4','875321a0-23d3-4ee2-9a03-933b31bec99c',2,20,1,'067d5c05-5881-4de2-8a01-c668bd259093',NULL),('03182f23-bd67-493a-80f8-38d776373f07',NULL,'registration-page-form','org5','5aa36cff-3bde-4b4b-a784-a9be8706cd6d',0,10,1,'469cae20-8265-4d59-8a1a-5efcf10da28f',NULL),('045a6d9e-5603-4e00-84a5-929dffae6daf',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3ec99d59-e8f4-4acc-ab64-503d678be5d2',2,30,1,'17761185-68bd-4801-8fc9-f94d10deaf1e',NULL),('06a18371-28db-4634-b866-0fdb17552ab2',NULL,NULL,'org1','72550ec0-6df6-4fd3-bd8a-f00b7f07eca0',0,20,1,'d230b678-10a9-48e7-af48-8cb2f9c0701d',NULL),('07fda3bf-1307-4d3f-bc82-cb8c559da15c',NULL,'reset-credentials-choose-user','org4','1d3a66e8-e68d-401c-b6d3-85d23f405a43',0,10,0,NULL,NULL),('086ac495-cc58-48cd-a9fc-55ccc7006720',NULL,'idp-email-verification','org4','22703aab-9f32-4145-8a88-41b13feb1b7f',2,10,0,NULL,NULL),('0aa07fc1-d2cd-4cab-a0da-03182938b7b9',NULL,'auth-spnego','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3ec99d59-e8f4-4acc-ab64-503d678be5d2',3,20,0,NULL,NULL),('0efc7821-c085-41e4-a16d-e08cdda17838',NULL,'client-x509','org1','3c2f5c72-5d33-438c-9c84-b699485433b7',2,40,0,NULL,NULL),('0f37dd76-d0d8-41a1-b344-fb60fbef12f5',NULL,'direct-grant-validate-username','org2','f1cec3c7-595b-41ac-9db4-28309f61a6ab',0,10,0,NULL,NULL),('1040b0a0-ccb6-44eb-8f66-d0d184e82dfa',NULL,NULL,'org1','53cc862d-d531-410a-bf4d-a020b8e8cd47',0,20,1,'8d0bc9c8-ee18-44ac-8bc7-5a5a9371f9ec',NULL),('1081eca8-759f-4836-ac42-dd724919846d',NULL,'registration-password-action','org4','f43b077f-682c-48c5-b7f8-1231f203c148',0,50,0,NULL,NULL),('132c2aa3-52a4-4e5e-9ffc-e42b75f5a76b',NULL,'reset-otp','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','93663b94-e67b-49cd-9a58-ef4e1306f613',0,20,0,NULL,NULL),('14ef3c16-4ab8-4b5c-ba53-63338d3a53cd',NULL,'registration-terms-and-conditions','org5','469cae20-8265-4d59-8a1a-5efcf10da28f',3,70,0,NULL,NULL),('151b2551-ce08-440d-80dd-5f7c5913329e',NULL,'auth-cookie','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3ec99d59-e8f4-4acc-ab64-503d678be5d2',2,10,0,NULL,NULL),('17620a40-f5f4-48a1-a89f-37199e3d0b43',NULL,'auth-otp-form','org3','ef93e01e-a7de-4577-b61a-d3bddf7cced5',0,20,0,NULL,NULL),('1772105e-82d6-4061-988e-3219a52fa81a',NULL,'reset-credential-email','org3','7fc2c77f-9f46-4c6e-9727-2dddcd9ce019',0,20,0,NULL,NULL),('1848f931-300e-4ec0-9ef6-f57ba9bcb846',NULL,'docker-http-basic-authenticator','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','881aab24-0061-4b2d-9264-5062bab7bb7d',0,10,0,NULL,NULL),('18517a76-8169-46de-9524-d4aecf6a3caa',NULL,'registration-password-action','org5','469cae20-8265-4d59-8a1a-5efcf10da28f',0,50,0,NULL,NULL),('1874c854-b5ec-459f-af82-59334b68d20f',NULL,NULL,'org5','dcf59ae0-3650-4f00-b0c1-092f31b4a9ef',0,20,1,'3090b8a4-6d1b-4646-a09d-1730c90db4cc',NULL),('1aa57640-31fa-49da-bec0-e40180698401',NULL,'registration-terms-and-conditions','org2','9fd1bf32-e8ed-4661-acef-9ca2be903f5f',3,70,0,NULL,NULL),('1b582df0-9197-41b5-ae5f-d547c807a1a0',NULL,'direct-grant-validate-password','org2','f1cec3c7-595b-41ac-9db4-28309f61a6ab',0,20,0,NULL,NULL),('1cee98e2-03cd-4540-932a-b5374a060b09',NULL,'auth-otp-form','org5','8cbd90ad-6948-42b5-9c60-bd8db27ff0dc',0,20,0,NULL,NULL),('1d1bef83-9797-452e-8a32-b1b3993479b0',NULL,'client-jwt','org3','d405b699-5d76-4199-9210-7e5ca58d33ca',2,20,0,NULL,NULL),('1d910d0d-eaff-4229-a8f6-feb047af5feb',NULL,'conditional-user-configured','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','93663b94-e67b-49cd-9a58-ef4e1306f613',0,10,0,NULL,NULL),('20bc1e40-932b-43a3-b140-fa02ed0899c1',NULL,'conditional-user-configured','org5','adc4bf3c-877b-4ae6-9e6d-728157776066',0,10,0,NULL,NULL),('2126e50d-1fd8-4e6c-b00e-64b6109c6b11',NULL,'registration-page-form','org2','4d564552-f84d-49fb-8bfb-86cb07e84423',0,10,1,'9fd1bf32-e8ed-4661-acef-9ca2be903f5f',NULL),('22d281a2-a8b1-4715-aead-549fc323da25',NULL,'idp-username-password-form','org5','dfcef623-1f9d-4a1a-ab5a-a09936f49f88',0,10,0,NULL,NULL),('22ff4fc9-5414-4ef5-af5c-64045ec46984',NULL,'idp-email-verification','org1','d230b678-10a9-48e7-af48-8cb2f9c0701d',2,10,0,NULL,NULL),('248fbbb8-0364-4735-9c57-20ad77da0d77',NULL,NULL,'org2','6881ba54-e195-4682-ba3c-8914cbb4b9c6',2,20,1,'cb3166c3-60a2-4ae3-ac63-9e7058cb4790',NULL),('2535d72f-f834-4b70-8d6d-c3988b23b501',NULL,'registration-terms-and-conditions','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','a60ec163-2223-4304-8edd-facaf4db43cf',3,70,0,NULL,NULL),('261f345a-d503-434a-b743-c70f5f90a541',NULL,'direct-grant-validate-password','org5','a8787147-2568-445c-a394-6365f4927fce',0,20,0,NULL,NULL),('2667c635-781e-4668-b829-a6d77002bdf9',NULL,'identity-provider-redirector','org3','8dbf3f04-d54d-4217-a4e3-c754759e0305',2,25,0,NULL,NULL),('273cc424-15e4-49d6-9d44-485854e37650',NULL,'auth-cookie','org5','0a20b921-1a4c-411d-b7fd-eeaf9fea329b',2,10,0,NULL,NULL),('279248da-5569-4ab7-b616-cf726822f77b',NULL,'client-jwt','org1','3c2f5c72-5d33-438c-9c84-b699485433b7',2,20,0,NULL,NULL),('27afcb7e-4699-4847-87cc-546624846b61',NULL,'client-jwt','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','671424c1-8c91-48da-b96d-f7b17fd86851',2,20,0,NULL,NULL),('28009e47-4d9b-4e47-b445-de2d771111d0',NULL,NULL,'org1','8d0bc9c8-ee18-44ac-8bc7-5a5a9371f9ec',2,20,1,'72550ec0-6df6-4fd3-bd8a-f00b7f07eca0',NULL),('2805a5cc-13b2-4174-90a3-e374dcf1475f',NULL,'reset-credentials-choose-user','org2','66a901be-2ff5-4651-bef8-e80351d03adf',0,10,0,NULL,NULL),('28b4680f-b15c-4724-a3d2-78c1c4630edd',NULL,'reset-otp','org3','88d4e1e9-a7e9-43d8-9c84-8584ee12c803',0,20,0,NULL,NULL),('296723e1-1d03-4ec8-9cf6-b9b884c9c475',NULL,'auth-cookie','org1','21a788cf-6c78-471b-a36b-9f49b672e687',2,10,0,NULL,NULL),('2b3510ef-c2ec-4e28-acb8-4036aed1a743',NULL,'reset-credentials-choose-user','org5','95ba2efd-918c-4674-b99c-694a093a8809',0,10,0,NULL,NULL),('2c48d842-cdb6-4eca-ae21-38e210bcd6b1',NULL,NULL,'org3','58f0a1d0-5fc0-456e-a85d-25ac1ce8012f',1,20,1,'db0be78c-8c9a-4276-83a1-733c016ce83b',NULL),('2ff28f35-6bb8-44df-8e6f-0000b3eebc54',NULL,'registration-recaptcha-action','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','a60ec163-2223-4304-8edd-facaf4db43cf',3,60,0,NULL,NULL),('339484b6-1707-46cf-8eed-6b837d9daae6',NULL,'idp-create-user-if-unique','org5','4bcdb329-ad38-437a-8247-049f9fad88ee',2,10,0,NULL,'293688b1-b042-4e06-98d6-cfc4e5f7a8f9'),('35a4195e-2921-451e-9b4f-28decd4df1d3',NULL,'conditional-user-configured','org5','8cbd90ad-6948-42b5-9c60-bd8db27ff0dc',0,10,0,NULL,NULL),('36a0d98e-162f-4d77-8fca-296589d9e19d',NULL,'client-secret-jwt','org5','36ea7431-3092-4902-8058-ee515c191bce',2,30,0,NULL,NULL),('38b107eb-00ec-409e-9e2c-9db9bf0d3147',NULL,'registration-password-action','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','a60ec163-2223-4304-8edd-facaf4db43cf',0,50,0,NULL,NULL),('39620ce3-1012-4dff-ae82-2f267e25f710',NULL,'conditional-user-configured','org5','6c925729-de7a-4846-826f-27ab7c878786',0,10,0,NULL,NULL),('3d5518ac-5571-4e32-9b8b-220c03042d18',NULL,'auth-otp-form','org2','db2a2091-11dc-48ea-8b3e-2608df74e9f8',0,20,0,NULL,NULL),('3d623e75-988f-44d0-a9c1-baa72054ed3c',NULL,'reset-credentials-choose-user','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','36d6bc61-984e-4d89-9907-db435f135785',0,10,0,NULL,NULL),('3d811ea2-88aa-4595-8f1b-6c4fe5060c36',NULL,NULL,'org4','51f529f9-b771-440b-8254-62aad1e6f483',1,20,1,'1b422e66-3366-497c-8e62-bbf7d57ed76d',NULL),('3f7829a7-f077-4105-9a72-018c61b5080c',NULL,'registration-recaptcha-action','org3','1d755771-93dc-4240-8c10-cf12da340c97',3,60,0,NULL,NULL),('3f974715-8050-4f4d-a30e-d7f993d0ab52',NULL,'auth-otp-form','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','45cd9773-f249-4112-b721-7d7224d78460',0,20,0,NULL,NULL),('424c2153-c59b-4b48-9334-ff4a236d87c2',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','f25c86e1-98b9-4e9c-b1bd-f01cf3ecd4f8',1,20,1,'b86517f2-5d64-45fe-9499-89d20fc6b8c2',NULL),('43546b84-d0d1-4e91-8784-82903867a26b',NULL,'idp-username-password-form','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','f25c86e1-98b9-4e9c-b1bd-f01cf3ecd4f8',0,10,0,NULL,NULL),('44727be1-b122-48c8-ae17-195e9fbf21e2',NULL,'client-secret','org5','36ea7431-3092-4902-8058-ee515c191bce',2,10,0,NULL,NULL),('454a6840-90f6-42f4-bfdf-3257402d4e71',NULL,'idp-review-profile','org1','53cc862d-d531-410a-bf4d-a020b8e8cd47',0,10,0,NULL,'4e491ba9-c083-4fb6-8756-505c18770291'),('45f27449-9eba-4268-b4ce-986ca33223ae',NULL,'reset-password','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','36d6bc61-984e-4d89-9907-db435f135785',0,30,0,NULL,NULL),('470c200c-da30-4f8f-bcde-2c47235bfc6d',NULL,'client-secret','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','671424c1-8c91-48da-b96d-f7b17fd86851',2,10,0,NULL,NULL),('47649aef-3000-4225-aedd-19c6624d93ea',NULL,'auth-cookie','org3','8dbf3f04-d54d-4217-a4e3-c754759e0305',2,10,0,NULL,NULL),('4871442a-2b35-45af-9cd8-2bc831ce6a66',NULL,'auth-spnego','org5','0a20b921-1a4c-411d-b7fd-eeaf9fea329b',3,20,0,NULL,NULL),('4874ac62-4cab-4385-80c6-b4760d8939e0',NULL,'conditional-user-configured','org3','db0be78c-8c9a-4276-83a1-733c016ce83b',0,10,0,NULL,NULL),('49763a27-0e62-4281-97cc-358a31680282',NULL,'direct-grant-validate-username','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','0a9dd6c5-fd6d-4cc5-b6e3-c9a286d9c18a',0,10,0,NULL,NULL),('4a0c4050-b2b0-4215-ad2a-6a13a0d7edd1',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','0a9dd6c5-fd6d-4cc5-b6e3-c9a286d9c18a',1,30,1,'5c05afc0-8434-42c4-b566-e059d1149ba9',NULL),('4a80237c-3fab-422d-9897-3e3b8953cd8f',NULL,'docker-http-basic-authenticator','org4','949c4ab0-5fce-4fc8-a2e1-08567f34b40e',0,10,0,NULL,NULL),('4ad99670-bb78-47df-9c32-ae50b8624ab4',NULL,'registration-page-form','org4','ce17255d-78b0-45ca-ae77-e4dcfa941b99',0,10,1,'f43b077f-682c-48c5-b7f8-1231f203c148',NULL),('4c61eb2a-abe9-496b-a9e8-a6410da96b3d',NULL,'conditional-user-configured','org3','c503a01f-35ee-43d4-abf7-e35fc660f28f',0,10,0,NULL,NULL),('4d28d086-2590-438f-9ee5-02a0d44a0c60',NULL,'direct-grant-validate-otp','org5','6c925729-de7a-4846-826f-27ab7c878786',0,20,0,NULL,NULL),('4d7c1d20-56d9-4f21-bf45-fb1d407858cb',NULL,'reset-credential-email','org4','1d3a66e8-e68d-401c-b6d3-85d23f405a43',0,20,0,NULL,NULL),('4e64f32f-9641-4847-89a4-0c1e8b0b774e',NULL,'client-x509','org4','4978c9aa-de75-4666-894d-31739ec824fb',2,40,0,NULL,NULL),('4f913acf-f72b-4f67-a950-855b45d080ae',NULL,'idp-create-user-if-unique','org4','875321a0-23d3-4ee2-9a03-933b31bec99c',2,10,0,NULL,'cd392fcd-c687-4395-a44b-8556ea37a3cd'),('4fb48ee5-50ad-4d0c-b39a-197a6030334f',NULL,'reset-credentials-choose-user','org1','2e98a9b5-3b5f-4d8b-8a51-e2cb8c486fae',0,10,0,NULL,NULL),('53844f4c-94f9-4143-a100-9eaf1e7bba5c',NULL,'identity-provider-redirector','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3ec99d59-e8f4-4acc-ab64-503d678be5d2',2,25,0,NULL,NULL),('53991f86-07ec-475a-9957-2993f723e368',NULL,NULL,'org4','067d5c05-5881-4de2-8a01-c668bd259093',0,20,1,'22703aab-9f32-4145-8a88-41b13feb1b7f',NULL),('56014a0d-2b1c-4267-9f95-257c189f6120',NULL,NULL,'org2','f8da8f18-611e-4c14-b05a-447c8e066688',1,20,1,'db2a2091-11dc-48ea-8b3e-2608df74e9f8',NULL),('561ddd89-55ee-4150-a802-e5f8ffc1c333',NULL,'direct-grant-validate-username','org1','f3442a01-582f-4623-adb8-9bdb56a9e304',0,10,0,NULL,NULL),('5642fb1e-4f1e-47d8-b2c4-eeeaaa59c776',NULL,'reset-password','org5','95ba2efd-918c-4674-b99c-694a093a8809',0,30,0,NULL,NULL),('5746cc1a-b189-4b14-a4dd-d3a5e6a670a7',NULL,'client-x509','org2','37ccde8f-661d-4811-b204-6e56e33d1a14',2,40,0,NULL,NULL),('5760ef37-5193-4ff6-8a0c-370d821cd1eb',NULL,'docker-http-basic-authenticator','org1','811df48d-02f1-40fa-83bc-07168159efb9',0,10,0,NULL,NULL),('5811ff4f-cc2e-47b3-808f-fd1e976dbe3b',NULL,'conditional-user-configured','org4','7d4b71dc-c32f-4338-8116-ca39e2b5a582',0,10,0,NULL,NULL),('5813aecb-3ee6-4f3d-9c27-0a67aff15f6c',NULL,'reset-otp','org1','cdc2492c-818f-48ff-8f1f-c78c2391ecab',0,20,0,NULL,NULL),('58fcbef6-e756-47cf-8766-63b5ab20ba33',NULL,NULL,'org5','3090b8a4-6d1b-4646-a09d-1730c90db4cc',2,20,1,'dfcef623-1f9d-4a1a-ab5a-a09936f49f88',NULL),('5bd4d6c8-1102-4b90-997e-c25b1d80de05',NULL,'idp-review-profile','org2','411588db-31c8-4a3b-9147-afb48bc3babb',0,10,0,NULL,'7edc8337-a76b-4d8d-b13f-fd703baadd9a'),('5d22aca0-080d-4859-aea6-802e83a29390',NULL,'reset-credential-email','org1','2e98a9b5-3b5f-4d8b-8a51-e2cb8c486fae',0,20,0,NULL,NULL),('5d436ae2-7359-417a-aea8-30801f548100',NULL,'idp-username-password-form','org4','51f529f9-b771-440b-8254-62aad1e6f483',0,10,0,NULL,NULL),('5d56298c-c251-4d1a-be4c-8faaf808283f',NULL,'registration-recaptcha-action','org2','9fd1bf32-e8ed-4661-acef-9ca2be903f5f',3,60,0,NULL,NULL),('5ec828ec-39bc-449a-a8ee-4703c07cb10b',NULL,'direct-grant-validate-password','org3','9ce84238-861f-4995-90c6-5fd7a33ed6b9',0,20,0,NULL,NULL),('5f861b10-c201-4936-9218-5104190c77fc',NULL,'conditional-user-configured','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','5c05afc0-8434-42c4-b566-e059d1149ba9',0,10,0,NULL,NULL),('5fbb5d34-2668-4e3b-ab0f-3aee476488b4',NULL,'docker-http-basic-authenticator','org2','663dc236-9203-4d86-b4a2-3d3a3af2c66b',0,10,0,NULL,NULL),('61bb4239-b680-40b5-9023-830acf1e8a2c',NULL,'conditional-user-configured','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','45cd9773-f249-4112-b721-7d7224d78460',0,10,0,NULL,NULL),('61dc6aab-69ed-4b80-aed0-e7224725c5e1',NULL,NULL,'org2','f1cec3c7-595b-41ac-9db4-28309f61a6ab',1,30,1,'37008195-d670-49f1-8c9c-c628a24dc726',NULL),('6364b524-9bd9-4418-bc9e-100763069580',NULL,'auth-username-password-form','org5','d92dc94f-509c-41d3-8983-0f4446dcecdb',0,10,0,NULL,NULL),('659ea7fc-026a-4e3b-b792-67d589451b79',NULL,'registration-user-creation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','a60ec163-2223-4304-8edd-facaf4db43cf',0,20,0,NULL,NULL),('66024516-654f-4ec1-a2fc-3ac0196a1787',NULL,'identity-provider-redirector','org5','0a20b921-1a4c-411d-b7fd-eeaf9fea329b',2,25,0,NULL,NULL),('670a0a27-4517-4efd-ac9b-0b700f2437cf',NULL,'auth-spnego','org1','21a788cf-6c78-471b-a36b-9f49b672e687',3,20,0,NULL,NULL),('682e7002-0c62-48b0-ab60-855410420024',NULL,'http-basic-authenticator','org3','b6e86185-67ab-4ade-a520-a5999fcd2ace',0,10,0,NULL,NULL),('6961f7a2-e58b-4567-8961-2372fa60013a',NULL,NULL,'org3','fd6fd174-4ae0-4644-8492-17a12b575a58',2,20,1,'58f0a1d0-5fc0-456e-a85d-25ac1ce8012f',NULL),('6a36fcb2-be2e-4c6d-be66-167bd8c6c9f8',NULL,'conditional-user-configured','org4','1b422e66-3366-497c-8e62-bbf7d57ed76d',0,10,0,NULL,NULL),('6b979086-1671-4ff6-a330-b62708cc92ac',NULL,'identity-provider-redirector','org1','21a788cf-6c78-471b-a36b-9f49b672e687',2,25,0,NULL,NULL),('6ccba655-e870-411c-a2e8-a48fdcb56a58',NULL,'direct-grant-validate-username','org3','9ce84238-861f-4995-90c6-5fd7a33ed6b9',0,10,0,NULL,NULL),('6cf0c45f-7a06-4cc0-8ded-7ce40b71a35e',NULL,'direct-grant-validate-otp','org1','14131e24-58d1-4bab-a612-a631698b01be',0,20,0,NULL,NULL),('6d11b361-f75d-4205-b859-08212cb59f57',NULL,NULL,'org4','e3a72a56-4036-453e-ae54-27a0d3ba6eb7',0,20,1,'875321a0-23d3-4ee2-9a03-933b31bec99c',NULL),('6dd4dbd1-ca8c-4e95-a31f-8d6e065aa844',NULL,'registration-page-form','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','70515358-b5ba-4454-87f0-130d43503dc9',0,10,1,'a60ec163-2223-4304-8edd-facaf4db43cf',NULL),('6e5b54f5-db4c-47de-82cf-3cbc4f3cbc0b',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','123ea239-aee6-485b-8b9c-80728d775dbf',2,20,1,'f25c86e1-98b9-4e9c-b1bd-f01cf3ecd4f8',NULL),('6e67df81-a63c-43a5-9bb7-6db1b2cb36e6',NULL,'registration-recaptcha-action','org1','3b041867-e11b-49ff-a397-482495a36b6a',3,60,0,NULL,NULL),('6f66636a-3fdb-45ba-8800-8122587471d4',NULL,'conditional-user-configured','org1','cdc2492c-818f-48ff-8f1f-c78c2391ecab',0,10,0,NULL,NULL),('70d775f1-723b-4dc8-8dc0-7c18bd15b226',NULL,NULL,'org5','a8787147-2568-445c-a394-6365f4927fce',1,30,1,'6c925729-de7a-4846-826f-27ab7c878786',NULL),('75931767-fe1f-4ecb-8629-206b78401915',NULL,'registration-terms-and-conditions','org1','3b041867-e11b-49ff-a397-482495a36b6a',3,70,0,NULL,NULL),('75e69fcc-1de0-4088-97c1-edfeb366f43d',NULL,'direct-grant-validate-otp','org3','c503a01f-35ee-43d4-abf7-e35fc660f28f',0,20,0,NULL,NULL),('76247148-94a0-478c-8878-d8a1858ec5f3',NULL,NULL,'org1','d230b678-10a9-48e7-af48-8cb2f9c0701d',2,20,1,'971d8a77-44ab-4c87-bbac-926be27d8cfb',NULL),('76b2049d-a52d-44d3-a98e-e0e7764af00c',NULL,NULL,'org3','7408f300-0122-4e77-b794-2b8d6371adb5',0,20,1,'97632a57-d441-4a7c-8a87-6ba859ae437b',NULL),('78923f0e-d1f7-4612-bb1c-914137672460',NULL,'client-x509','org5','36ea7431-3092-4902-8058-ee515c191bce',2,40,0,NULL,NULL),('79337e8f-4540-4a09-a4e5-5e30aa848f41',NULL,'idp-username-password-form','org1','971d8a77-44ab-4c87-bbac-926be27d8cfb',0,10,0,NULL,NULL),('7a94bc68-121f-4b9a-8fc7-509233605b07',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','dd549d04-c2ef-4081-9715-7269839a128f',0,20,1,'123ea239-aee6-485b-8b9c-80728d775dbf',NULL),('7bd9c7cf-2969-438c-be6b-58824a65fc02',NULL,'direct-grant-validate-username','org5','a8787147-2568-445c-a394-6365f4927fce',0,10,0,NULL,NULL),('7cdd8104-9947-4fa1-9e83-a6e488502134',NULL,'idp-review-profile','org5','67af835e-0320-4612-9c40-017f1979fbc4',0,10,0,NULL,'fc5ce68a-6430-4c96-8a64-e359eba99f82'),('7d4bd409-7e8a-4660-9827-d9a901f47423',NULL,'idp-create-user-if-unique','org1','8d0bc9c8-ee18-44ac-8bc7-5a5a9371f9ec',2,10,0,NULL,'0bcb24f2-6e50-48c5-872d-03a32f5d47a7'),('7de0c6dc-4a84-4bf2-ae61-668a30de60e2',NULL,'direct-grant-validate-otp','org2','37008195-d670-49f1-8c9c-c628a24dc726',0,20,0,NULL,NULL),('8330bf3a-9e17-42c0-80d7-c90bd6e1da53',NULL,'registration-password-action','org1','3b041867-e11b-49ff-a397-482495a36b6a',0,50,0,NULL,NULL),('83b6b30e-d791-4ff7-8733-cd9b2addbbd7',NULL,'reset-credential-email','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','36d6bc61-984e-4d89-9907-db435f135785',0,20,0,NULL,NULL),('86aeb76e-5bc0-4c52-8200-0c192d8813ad',NULL,'registration-password-action','org2','9fd1bf32-e8ed-4661-acef-9ca2be903f5f',0,50,0,NULL,NULL),('86c1f078-2c9b-412a-b168-989e4535f6f0',NULL,NULL,'org5','67af835e-0320-4612-9c40-017f1979fbc4',0,20,1,'4bcdb329-ad38-437a-8247-049f9fad88ee',NULL),('8747b13c-5c01-422c-ae7c-a5f56bd85827',NULL,'reset-credential-email','org2','66a901be-2ff5-4651-bef8-e80351d03adf',0,20,0,NULL,NULL),('89465f1b-d1bd-4e82-90df-47cb6cd5d6cb',NULL,'auth-spnego','org2','5f98ba6f-906f-488a-bd43-5e78e4bb3112',3,20,0,NULL,NULL),('8a45e975-f075-43c5-82fc-0ccb695f611c',NULL,'reset-password','org3','7fc2c77f-9f46-4c6e-9727-2dddcd9ce019',0,30,0,NULL,NULL),('8ac42c9b-bf95-4510-b5d0-90745c529bc4',NULL,'registration-page-form','org3','811cabcb-f114-4327-b167-989b1b22bc71',0,10,1,'1d755771-93dc-4240-8c10-cf12da340c97',NULL),('8c5ec13f-8282-419a-a23f-e041fd9cf610',NULL,'direct-grant-validate-otp','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','5c05afc0-8434-42c4-b566-e059d1149ba9',0,20,0,NULL,NULL),('8c64c3ea-1e23-4b99-a62f-d7cb3864808c',NULL,'client-x509','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','671424c1-8c91-48da-b96d-f7b17fd86851',2,40,0,NULL,NULL),('8d4b91ab-8ee2-42fc-bf34-498143bf4517',NULL,NULL,'org1','2e98a9b5-3b5f-4d8b-8a51-e2cb8c486fae',1,40,1,'cdc2492c-818f-48ff-8f1f-c78c2391ecab',NULL),('8e208a18-c1eb-40ff-beed-8218d55d2ee6',NULL,NULL,'org5','dfcef623-1f9d-4a1a-ab5a-a09936f49f88',1,20,1,'8cbd90ad-6948-42b5-9c60-bd8db27ff0dc',NULL),('8e9d7ead-67d9-48f9-8d8b-74c0e5c7cb12',NULL,NULL,'org3','7fc2c77f-9f46-4c6e-9727-2dddcd9ce019',1,40,1,'88d4e1e9-a7e9-43d8-9c84-8584ee12c803',NULL),('8efb8e8b-4f7a-4a18-8ee4-b11e4b70640c',NULL,'reset-otp','org5','adc4bf3c-877b-4ae6-9e6d-728157776066',0,20,0,NULL,NULL),('9210777f-2def-4628-904f-aa612ce18097',NULL,'reset-credential-email','org5','95ba2efd-918c-4674-b99c-694a093a8809',0,20,0,NULL,NULL),('923ce9fd-e3fe-4246-8dad-a5a2b85bc276',NULL,NULL,'org3','8dbf3f04-d54d-4217-a4e3-c754759e0305',2,30,1,'b7bc42dc-5dba-4c97-abe1-bbc309529077',NULL),('94d0880b-7628-4bdd-aa46-5d6362f7b07f',NULL,'client-secret-jwt','org3','d405b699-5d76-4199-9210-7e5ca58d33ca',2,30,0,NULL,NULL),('94e3dc9e-9752-4ceb-b9aa-bc2676b8652d',NULL,'registration-user-creation','org1','3b041867-e11b-49ff-a397-482495a36b6a',0,20,0,NULL,NULL),('9642661f-c3f9-4e33-b870-818dbcef0213',NULL,'conditional-user-configured','org3','88d4e1e9-a7e9-43d8-9c84-8584ee12c803',0,10,0,NULL,NULL),('9660fb69-2897-4cda-9a30-de7744d00dfe',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','36d6bc61-984e-4d89-9907-db435f135785',1,40,1,'93663b94-e67b-49cd-9a58-ef4e1306f613',NULL),('9740f65e-3212-4d2b-93a6-d7ee4feccd76',NULL,'direct-grant-validate-username','org4','4b387c39-2e15-464c-a8a2-6d00f636b3af',0,10,0,NULL,NULL),('986987cd-a768-43ee-8534-a830a2cf4fbd',NULL,'client-secret-jwt','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','671424c1-8c91-48da-b96d-f7b17fd86851',2,30,0,NULL,NULL),('98ab0d5b-65d9-4349-9276-9604b283b9db',NULL,'auth-username-password-form','org4','24d9bb51-4296-4a60-9ca4-b487577dd333',0,10,0,NULL,NULL),('99dee4e3-e3c3-4b6a-8912-603205b33ce2',NULL,'auth-username-password-form','org3','b7bc42dc-5dba-4c97-abe1-bbc309529077',0,10,0,NULL,NULL),('9ac0ba24-615e-4a98-8129-23982af9c8e9',NULL,'http-basic-authenticator','org4','efa08586-4531-4be5-b0f6-c4cff1251d01',0,10,0,NULL,NULL),('9d2f76ca-09db-4b03-b586-e5cd873d633c',NULL,'idp-review-profile','org4','e3a72a56-4036-453e-ae54-27a0d3ba6eb7',0,10,0,NULL,'cd870f84-5db9-4772-8be9-032fb048eef0'),('9df7539e-c558-429a-b6c2-dad7ebb54782',NULL,NULL,'org2','4baaa218-3e9f-40a9-9dcc-0232e438f96e',1,20,1,'c3614a73-07b1-4ac5-b477-6a2cc97d3f64',NULL),('9e0b05e3-6efe-45cf-8d8d-12dad8c87739',NULL,'client-jwt','org2','37ccde8f-661d-4811-b204-6e56e33d1a14',2,20,0,NULL,NULL),('9e7426c8-e024-4a01-8be5-31914badb0b3',NULL,'auth-otp-form','org5','669eb122-3464-4383-ac90-eb8e127e82f0',0,20,0,NULL,NULL),('a179d5c0-0bd8-4a34-8486-aa946ade9ec8',NULL,'reset-password','org2','66a901be-2ff5-4651-bef8-e80351d03adf',0,30,0,NULL,NULL),('a181c1dd-5b82-4b3d-ae93-dc678e745529',NULL,NULL,'org5','0a20b921-1a4c-411d-b7fd-eeaf9fea329b',2,30,1,'d92dc94f-509c-41d3-8983-0f4446dcecdb',NULL),('a2131e23-9e24-4b94-8386-e8249a52a80d',NULL,NULL,'org3','b7bc42dc-5dba-4c97-abe1-bbc309529077',1,20,1,'ef93e01e-a7de-4577-b61a-d3bddf7cced5',NULL),('a33e0d5b-a7ef-4cce-aea0-bfbe01d93ae7',NULL,NULL,'org1','971d8a77-44ab-4c87-bbac-926be27d8cfb',1,20,1,'3982901d-092f-4bc0-b921-4c877f865c01',NULL),('a38ef381-8c51-4b68-899f-94339638e354',NULL,'conditional-user-configured','org3','ef93e01e-a7de-4577-b61a-d3bddf7cced5',0,10,0,NULL,NULL),('a655f404-9584-40f3-8d48-217472ecae99',NULL,'conditional-user-configured','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b86517f2-5d64-45fe-9499-89d20fc6b8c2',0,10,0,NULL,NULL),('a84f7673-1d01-4365-b076-ebe6872da8c5',NULL,'client-secret-jwt','org1','3c2f5c72-5d33-438c-9c84-b699485433b7',2,30,0,NULL,NULL),('a8e5e595-d1f0-42a2-9109-3310763b6fcb',NULL,'conditional-user-configured','org1','29bad2ef-66a4-45db-a93d-076b948d41c6',0,10,0,NULL,NULL),('a9025b72-bce6-442c-b809-ec5b4146bb78',NULL,NULL,'org1','a3fa8f80-a3ab-4dba-8363-4afd484fa437',1,20,1,'29bad2ef-66a4-45db-a93d-076b948d41c6',NULL),('a9812775-0d1f-44fc-a816-eb8d5b15b2e1',NULL,'auth-spnego','org3','8dbf3f04-d54d-4217-a4e3-c754759e0305',3,20,0,NULL,NULL),('ab43890e-9abe-4cf3-b80a-f042447aba15',NULL,NULL,'org4','4b387c39-2e15-464c-a8a2-6d00f636b3af',1,30,1,'7d4b71dc-c32f-4338-8116-ca39e2b5a582',NULL),('ad0e20ea-45c6-445c-b4bb-12724af0e6a3',NULL,NULL,'org1','f3442a01-582f-4623-adb8-9bdb56a9e304',1,30,1,'14131e24-58d1-4bab-a612-a631698b01be',NULL),('ae206cd2-ccde-49bd-bc39-dc69cc46b268',NULL,NULL,'org3','ff088d04-6c7b-4a1c-a46c-03cc484b8185',0,20,1,'fd6fd174-4ae0-4644-8492-17a12b575a58',NULL),('afbe7221-6716-4b99-ad2f-2163068b2f70',NULL,'auth-username-password-form','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','17761185-68bd-4801-8fc9-f94d10deaf1e',0,10,0,NULL,NULL),('b0f92650-0aab-4dd4-af81-164a0cde5625',NULL,'idp-create-user-if-unique','org3','97632a57-d441-4a7c-8a87-6ba859ae437b',2,10,0,NULL,'3618d698-6a36-404e-ab00-5318e3a15922'),('b11900c1-f7cc-4126-8475-0570b13a7a4f',NULL,'client-jwt','org4','4978c9aa-de75-4666-894d-31739ec824fb',2,20,0,NULL,NULL),('b2343819-fe94-48e4-82fa-9ab3e5678027',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','2bf765e1-35ad-485d-91f0-7732c0baf755',2,20,1,'dd549d04-c2ef-4081-9715-7269839a128f',NULL),('b5c85546-68f0-4a81-9b7b-83907600ed72',NULL,'docker-http-basic-authenticator','org5','6f8e5f9a-6f48-4d77-b7ca-5628c3b48c61',0,10,0,NULL,NULL),('b7bedc11-ebe9-4e51-955a-c731c2230e1d',NULL,'idp-review-profile','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','819086c5-e9f9-4cbf-9f38-214ce37cb856',0,10,0,NULL,'361b2a6a-a90e-476f-98c8-d59e96cd8cb4'),('b945637a-77ab-434e-b601-3d846a6a763d',NULL,'auth-otp-form','org1','3982901d-092f-4bc0-b921-4c877f865c01',0,20,0,NULL,NULL),('bb04edc0-7be9-4350-9876-cbd5fbf65c2c',NULL,'registration-terms-and-conditions','org3','1d755771-93dc-4240-8c10-cf12da340c97',3,70,0,NULL,NULL),('bd5dcf27-5e84-479a-8c90-0e645d1ca6cb',NULL,'idp-review-profile','org3','7408f300-0122-4e77-b794-2b8d6371adb5',0,10,0,NULL,'cde475a3-1246-4169-99f4-4eabd31e13a1'),('be7421f6-5778-4450-91d0-3bc4abb729c4',NULL,'idp-username-password-form','org2','4baaa218-3e9f-40a9-9dcc-0232e438f96e',0,10,0,NULL,NULL),('bf226480-7255-4420-895c-b15abcec7701',NULL,'direct-grant-validate-otp','org4','7d4b71dc-c32f-4338-8116-ca39e2b5a582',0,20,0,NULL,NULL),('bf2ec15b-3fb6-49f5-8421-2ddbd6342ba3',NULL,'idp-email-verification','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','123ea239-aee6-485b-8b9c-80728d775dbf',2,10,0,NULL,NULL),('bfb8a5f5-98c9-493b-8286-a7b3395415a1',NULL,'auth-spnego','org4','52447238-80c8-49d7-910d-a66fde6a02df',3,20,0,NULL,NULL),('c0580fd3-0f8d-4e91-9470-e2e91dd6be6a',NULL,'auth-cookie','org4','52447238-80c8-49d7-910d-a66fde6a02df',2,10,0,NULL,NULL),('c0ed06ea-2b2f-4558-9ef4-dcc39ed180fd',NULL,'auth-otp-form','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b86517f2-5d64-45fe-9499-89d20fc6b8c2',0,20,0,NULL,NULL),('c0f099de-bb30-4710-abd8-68a04ff343e3',NULL,'idp-confirm-link','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','dd549d04-c2ef-4081-9715-7269839a128f',0,10,0,NULL,NULL),('c161c548-c1cc-4bfe-8f87-81d3ee368144',NULL,'direct-grant-validate-password','org4','4b387c39-2e15-464c-a8a2-6d00f636b3af',0,20,0,NULL,NULL),('c208a289-9609-4c62-a389-d454af4cc339',NULL,'http-basic-authenticator','org1','464f96d3-af33-4829-94cc-8949fa4a801d',0,10,0,NULL,NULL),('c2a4692d-d1f7-4002-a07f-c99c132e5436',NULL,'registration-recaptcha-action','org5','469cae20-8265-4d59-8a1a-5efcf10da28f',3,60,0,NULL,NULL),('c2c133dd-ec02-436c-8053-a573b0b23752',NULL,'idp-confirm-link','org5','dcf59ae0-3650-4f00-b0c1-092f31b4a9ef',0,10,0,NULL,NULL),('c2eb1def-e98d-4e51-9a1f-744c04f00d2b',NULL,'idp-email-verification','org3','fd6fd174-4ae0-4644-8492-17a12b575a58',2,10,0,NULL,NULL),('c3042237-8e17-4293-aeaf-aa0bbe81105a',NULL,'http-basic-authenticator','org5','5bbe0782-1ff2-4ee5-aa7b-34ee944eb1e8',0,10,0,NULL,NULL),('c3ed785f-7025-446c-bbe6-6665cf97eaae',NULL,'reset-otp','org2','5658fe89-9033-49ff-bae0-b2e30d8f0dbd',0,20,0,NULL,NULL),('c5b2be66-dc64-4f11-ae2b-459697f5f536',NULL,'conditional-user-configured','org2','37008195-d670-49f1-8c9c-c628a24dc726',0,10,0,NULL,NULL),('c5c6c54b-9dd2-43fe-811d-fa8482c6ca0d',NULL,'client-secret','org4','4978c9aa-de75-4666-894d-31739ec824fb',2,10,0,NULL,NULL),('c61b1459-f25a-4207-9f3a-6bc12dd41ff9',NULL,'reset-password','org1','2e98a9b5-3b5f-4d8b-8a51-e2cb8c486fae',0,30,0,NULL,NULL),('c844c814-8d3b-4a3a-a594-2417ac56c6ba',NULL,NULL,'org2','8ee2daab-ae17-40ef-8254-c481c48a5a97',2,20,1,'4baaa218-3e9f-40a9-9dcc-0232e438f96e',NULL),('c9d88d07-5611-4c23-b8c3-23ca460b4102',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','819086c5-e9f9-4cbf-9f38-214ce37cb856',0,20,1,'2bf765e1-35ad-485d-91f0-7732c0baf755',NULL),('cbefbb7b-a1d9-4099-9050-34fd58191dd6',NULL,'reset-password','org4','1d3a66e8-e68d-401c-b6d3-85d23f405a43',0,30,0,NULL,NULL),('cc853d83-a4db-4ccd-8e56-f338251e5283',NULL,'idp-username-password-form','org3','58f0a1d0-5fc0-456e-a85d-25ac1ce8012f',0,10,0,NULL,NULL),('ccbff621-a5b2-4ab7-87f4-8f5f089f2082',NULL,NULL,'org4','24d9bb51-4296-4a60-9ca4-b487577dd333',1,20,1,'50f41776-379a-4e2c-9ab3-4d275005fa7c',NULL),('ce2ef8da-a365-4d58-8b18-8fde59f3dfce',NULL,'idp-email-verification','org2','8ee2daab-ae17-40ef-8254-c481c48a5a97',2,10,0,NULL,NULL),('ce4ea897-8517-4514-9cd0-7fa978f3e280',NULL,'client-jwt','org5','36ea7431-3092-4902-8058-ee515c191bce',2,20,0,NULL,NULL),('cea632ac-7be2-4bc0-ab87-7f8bf61579b0',NULL,NULL,'org3','97632a57-d441-4a7c-8a87-6ba859ae437b',2,20,1,'ff088d04-6c7b-4a1c-a46c-03cc484b8185',NULL),('cfad6101-f1dc-4a51-8250-37a60b4d122b',NULL,'conditional-user-configured','org4','60a08560-f179-4cb2-8c15-f2d816ef84c6',0,10,0,NULL,NULL),('d1526150-e891-4fdc-a955-c022d60c679d',NULL,'http-basic-authenticator','org2','a902ef6d-98cc-4a8c-a603-bc00415772e2',0,10,0,NULL,NULL),('d1697269-5b95-4d66-9114-6781f034c156',NULL,'conditional-user-configured','org2','c3614a73-07b1-4ac5-b477-6a2cc97d3f64',0,10,0,NULL,NULL),('d326b7ed-bb83-4051-80bb-e36af75f6a4b',NULL,NULL,'org2','cb3166c3-60a2-4ae3-ac63-9e7058cb4790',0,20,1,'8ee2daab-ae17-40ef-8254-c481c48a5a97',NULL),('d6902dc5-df7e-41e8-8054-565ecaebbd9c',NULL,'registration-password-action','org3','1d755771-93dc-4240-8c10-cf12da340c97',0,50,0,NULL,NULL),('d7216c93-e7f7-4640-821b-d332ae74989d',NULL,NULL,'org1','21a788cf-6c78-471b-a36b-9f49b672e687',2,30,1,'a3fa8f80-a3ab-4dba-8363-4afd484fa437',NULL),('d939f547-db52-470d-b144-1e5dd8c0ec82',NULL,'reset-credentials-choose-user','org3','7fc2c77f-9f46-4c6e-9727-2dddcd9ce019',0,10,0,NULL,NULL),('d97fc95e-2976-4562-b3ab-d8c487436bde',NULL,'client-secret','org1','3c2f5c72-5d33-438c-9c84-b699485433b7',2,10,0,NULL,NULL),('d9c67e10-7ba4-46e4-82f8-3ea3d337133e',NULL,'idp-confirm-link','org3','ff088d04-6c7b-4a1c-a46c-03cc484b8185',0,10,0,NULL,NULL),('da025fec-d304-457f-ad34-2c84981ce1c7',NULL,'auth-otp-form','org4','1b422e66-3366-497c-8e62-bbf7d57ed76d',0,20,0,NULL,NULL),('da02f50e-b805-4c62-9cc7-8a302991660e',NULL,'auth-otp-form','org2','c3614a73-07b1-4ac5-b477-6a2cc97d3f64',0,20,0,NULL,NULL),('da851946-a1c5-40df-8f9d-6e5b450f5c4b',NULL,'client-secret-jwt','org4','4978c9aa-de75-4666-894d-31739ec824fb',2,30,0,NULL,NULL),('db5bfdb2-541c-454e-8da8-90b40bbc44de',NULL,'identity-provider-redirector','org4','52447238-80c8-49d7-910d-a66fde6a02df',2,25,0,NULL,NULL),('de5e36a2-0120-427a-be7b-d5d27abf3690',NULL,'auth-otp-form','org4','50f41776-379a-4e2c-9ab3-4d275005fa7c',0,20,0,NULL,NULL),('dea078b5-001a-48c4-8b70-e387d66e75ef',NULL,NULL,'org5','95ba2efd-918c-4674-b99c-694a093a8809',1,40,1,'adc4bf3c-877b-4ae6-9e6d-728157776066',NULL),('e0a71f91-188a-45c0-9e84-b773fadce329',NULL,NULL,'org2','5f98ba6f-906f-488a-bd43-5e78e4bb3112',2,30,1,'f8da8f18-611e-4c14-b05a-447c8e066688',NULL),('e139e6fc-d872-4d93-a8bf-384bbcf85f78',NULL,NULL,'org2','66a901be-2ff5-4651-bef8-e80351d03adf',1,40,1,'5658fe89-9033-49ff-bae0-b2e30d8f0dbd',NULL),('e19994cb-059b-48c2-94ab-528992be810a',NULL,'idp-confirm-link','org2','cb3166c3-60a2-4ae3-ac63-9e7058cb4790',0,10,0,NULL,NULL),('e1b8cd4e-ad76-4d78-b579-2373efa4a392',NULL,'conditional-user-configured','org1','3982901d-092f-4bc0-b921-4c877f865c01',0,10,0,NULL,NULL),('e30bfaa7-02e2-4763-ad5f-8f54171fddc2',NULL,'registration-user-creation','org5','469cae20-8265-4d59-8a1a-5efcf10da28f',0,20,0,NULL,NULL),('e337cd9a-11cf-40c1-b2b2-81d43de644e7',NULL,NULL,'org2','411588db-31c8-4a3b-9147-afb48bc3babb',0,20,1,'6881ba54-e195-4682-ba3c-8914cbb4b9c6',NULL),('e3654718-c1d9-412e-846e-f8433f621d02',NULL,'registration-terms-and-conditions','org4','f43b077f-682c-48c5-b7f8-1231f203c148',3,70,0,NULL,NULL),('e4473d24-32ea-4787-9ba4-56333ff38071',NULL,'idp-email-verification','org5','3090b8a4-6d1b-4646-a09d-1730c90db4cc',2,10,0,NULL,NULL),('e52af8f0-0835-48ae-93bf-e5a999998843',NULL,NULL,'org5','d92dc94f-509c-41d3-8983-0f4446dcecdb',1,20,1,'669eb122-3464-4383-ac90-eb8e127e82f0',NULL),('e5767473-8c9c-49e7-a75a-5b68a1c4b737',NULL,'client-secret','org3','d405b699-5d76-4199-9210-7e5ca58d33ca',2,10,0,NULL,NULL),('e5bbfca7-994b-48a7-8e5c-c5936c825915',NULL,'auth-cookie','org2','5f98ba6f-906f-488a-bd43-5e78e4bb3112',2,10,0,NULL,NULL),('e6db771d-d97b-435f-b796-81629f6c35e2',NULL,'docker-http-basic-authenticator','org3','32061ed3-ab09-4955-b6f6-1e727b2b25fd',0,10,0,NULL,NULL),('e7a59dfc-bee0-4397-b126-a6034ab89918',NULL,'direct-grant-validate-password','org1','f3442a01-582f-4623-adb8-9bdb56a9e304',0,20,0,NULL,NULL),('e7b911d8-3f1d-4b12-8795-36952a2fdd60',NULL,'conditional-user-configured','org5','669eb122-3464-4383-ac90-eb8e127e82f0',0,10,0,NULL,NULL),('e8ee1117-7a8f-4907-ba28-54f97275b003',NULL,'reset-otp','org4','60a08560-f179-4cb2-8c15-f2d816ef84c6',0,20,0,NULL,NULL),('e9cf1729-1160-4d81-a46a-9fc4b630902b',NULL,'registration-user-creation','org3','1d755771-93dc-4240-8c10-cf12da340c97',0,20,0,NULL,NULL),('ec169925-18cf-4119-a876-45ca30068aff',NULL,'conditional-user-configured','org1','14131e24-58d1-4bab-a612-a631698b01be',0,10,0,NULL,NULL),('ec712939-cc83-4140-9b1d-ab30dcd3a5a2',NULL,'client-secret-jwt','org2','37ccde8f-661d-4811-b204-6e56e33d1a14',2,30,0,NULL,NULL),('eee176fc-305f-473e-a80f-a8732481c27a',NULL,'conditional-user-configured','org2','db2a2091-11dc-48ea-8b3e-2608df74e9f8',0,10,0,NULL,NULL),('ef91c861-e63b-4bf1-91e0-0b93890e5e3c',NULL,'registration-user-creation','org2','9fd1bf32-e8ed-4661-acef-9ca2be903f5f',0,20,0,NULL,NULL),('f009af09-b813-4ad1-9309-2f7328bb91a7',NULL,'client-x509','org3','d405b699-5d76-4199-9210-7e5ca58d33ca',2,40,0,NULL,NULL),('f04d54f8-7c71-4b54-a8ec-95cf559503fe',NULL,NULL,'org3','9ce84238-861f-4995-90c6-5fd7a33ed6b9',1,30,1,'c503a01f-35ee-43d4-abf7-e35fc660f28f',NULL),('f05dbdc5-b2a8-434b-bb2c-1620298b09fb',NULL,'auth-otp-form','org3','db0be78c-8c9a-4276-83a1-733c016ce83b',0,20,0,NULL,NULL),('f0ff31a4-9fc4-4e89-9ecc-c9c0cb0606d8',NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','17761185-68bd-4801-8fc9-f94d10deaf1e',1,20,1,'45cd9773-f249-4112-b721-7d7224d78460',NULL),('f118b2f1-8d92-4edc-b42c-7fa7f2bab346',NULL,NULL,'org4','1d3a66e8-e68d-401c-b6d3-85d23f405a43',1,40,1,'60a08560-f179-4cb2-8c15-f2d816ef84c6',NULL),('f18366dd-c233-4940-bd51-a2baacfe5799',NULL,'http-basic-authenticator','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','8c4370e3-2163-42f7-b903-e1f694ac5427',0,10,0,NULL,NULL),('f249adca-a6c2-4c54-81c1-72085717952e',NULL,'idp-create-user-if-unique','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','2bf765e1-35ad-485d-91f0-7732c0baf755',2,10,0,NULL,'7a77472a-ecfe-4d92-b8ad-f5e6b6904adb'),('f383fba6-6bc1-4301-9229-dc74798effec',NULL,'conditional-user-configured','org2','5658fe89-9033-49ff-bae0-b2e30d8f0dbd',0,10,0,NULL,NULL),('f421283c-0067-4ec0-8889-5d6c0dc18abb',NULL,'idp-confirm-link','org4','067d5c05-5881-4de2-8a01-c668bd259093',0,10,0,NULL,NULL),('f556d605-5e89-4ea3-81fc-557853010a75',NULL,'client-secret','org2','37ccde8f-661d-4811-b204-6e56e33d1a14',2,10,0,NULL,NULL),('f644e651-92fc-496f-8fe6-fef618ac3eb0',NULL,'auth-username-password-form','org1','a3fa8f80-a3ab-4dba-8363-4afd484fa437',0,10,0,NULL,NULL),('f65f45c5-b26b-446a-983f-60d5ab59624b',NULL,'registration-recaptcha-action','org4','f43b077f-682c-48c5-b7f8-1231f203c148',3,60,0,NULL,NULL),('f6bafd4b-db56-4e98-97f0-f10a0313e45b',NULL,NULL,'org5','4bcdb329-ad38-437a-8247-049f9fad88ee',2,20,1,'dcf59ae0-3650-4f00-b0c1-092f31b4a9ef',NULL),('f77212fc-282a-4c4a-9b69-18e7504cfcd9',NULL,NULL,'org4','22703aab-9f32-4145-8a88-41b13feb1b7f',2,20,1,'51f529f9-b771-440b-8254-62aad1e6f483',NULL),('f791f4c8-1584-4044-9edd-f246b7d60315',NULL,'registration-page-form','org1','d0e5e64b-d257-4dc9-a43b-3a5a31f8a8bd',0,10,1,'3b041867-e11b-49ff-a397-482495a36b6a',NULL),('f7fe4d97-1647-4d3b-8f78-430af8e42cb1',NULL,'conditional-user-configured','org4','50f41776-379a-4e2c-9ab3-4d275005fa7c',0,10,0,NULL,NULL),('f8f3ff9e-bb69-461d-8575-520ae21cea81',NULL,'auth-otp-form','org1','29bad2ef-66a4-45db-a93d-076b948d41c6',0,20,0,NULL,NULL),('fb02bef8-fe88-4817-b2de-e6f71df4b266',NULL,'idp-confirm-link','org1','72550ec0-6df6-4fd3-bd8a-f00b7f07eca0',0,10,0,NULL,NULL),('fe815a21-92ea-4518-a948-b010beaae61f',NULL,'idp-create-user-if-unique','org2','6881ba54-e195-4682-ba3c-8914cbb4b9c6',2,10,0,NULL,'8a377f4e-73b0-4f72-be9f-186efc34275f'),('feb72d8a-b3e7-4a4e-87dc-df5f3acb22e9',NULL,'registration-user-creation','org4','f43b077f-682c-48c5-b7f8-1231f203c148',0,20,0,NULL,NULL);
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
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('067d5c05-5881-4de2-8a01-c668bd259093','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org4','basic-flow',0,1),('0a20b921-1a4c-411d-b7fd-eeaf9fea329b','browser','browser based authentication','org5','basic-flow',1,1),('0a9dd6c5-fd6d-4cc5-b6e3-c9a286d9c18a','direct grant','OpenID Connect Resource Owner Grant','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('123ea239-aee6-485b-8b9c-80728d775dbf','Account verification options','Method with which to verity the existing account','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('14131e24-58d1-4bab-a612-a631698b01be','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('17761185-68bd-4801-8fc9-f94d10deaf1e','forms','Username, password, otp and other auth forms.','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('1b422e66-3366-497c-8e62-bbf7d57ed76d','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('1d3a66e8-e68d-401c-b6d3-85d23f405a43','reset credentials','Reset credentials for a user if they forgot their password or something','org4','basic-flow',1,1),('1d755771-93dc-4240-8c10-cf12da340c97','registration form','registration form','org3','form-flow',0,1),('21a788cf-6c78-471b-a36b-9f49b672e687','browser','browser based authentication','org1','basic-flow',1,1),('22703aab-9f32-4145-8a88-41b13feb1b7f','Account verification options','Method with which to verity the existing account','org4','basic-flow',0,1),('24d9bb51-4296-4a60-9ca4-b487577dd333','forms','Username, password, otp and other auth forms.','org4','basic-flow',0,1),('29bad2ef-66a4-45db-a93d-076b948d41c6','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('2bf765e1-35ad-485d-91f0-7732c0baf755','User creation or linking','Flow for the existing/non-existing user alternatives','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('2e98a9b5-3b5f-4d8b-8a51-e2cb8c486fae','reset credentials','Reset credentials for a user if they forgot their password or something','org1','basic-flow',1,1),('3090b8a4-6d1b-4646-a09d-1730c90db4cc','Account verification options','Method with which to verity the existing account','org5','basic-flow',0,1),('32061ed3-ab09-4955-b6f6-1e727b2b25fd','docker auth','Used by Docker clients to authenticate against the IDP','org3','basic-flow',1,1),('36d6bc61-984e-4d89-9907-db435f135785','reset credentials','Reset credentials for a user if they forgot their password or something','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('36ea7431-3092-4902-8058-ee515c191bce','clients','Base authentication for clients','org5','client-flow',1,1),('37008195-d670-49f1-8c9c-c628a24dc726','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('37ccde8f-661d-4811-b204-6e56e33d1a14','clients','Base authentication for clients','org2','client-flow',1,1),('3982901d-092f-4bc0-b921-4c877f865c01','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org1','basic-flow',0,1),('3b041867-e11b-49ff-a397-482495a36b6a','registration form','registration form','org1','form-flow',0,1),('3c2f5c72-5d33-438c-9c84-b699485433b7','clients','Base authentication for clients','org1','client-flow',1,1),('3ec99d59-e8f4-4acc-ab64-503d678be5d2','browser','browser based authentication','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('411588db-31c8-4a3b-9147-afb48bc3babb','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org2','basic-flow',1,1),('45cd9773-f249-4112-b721-7d7224d78460','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('464f96d3-af33-4829-94cc-8949fa4a801d','saml ecp','SAML ECP Profile Authentication Flow','org1','basic-flow',1,1),('469cae20-8265-4d59-8a1a-5efcf10da28f','registration form','registration form','org5','form-flow',0,1),('4978c9aa-de75-4666-894d-31739ec824fb','clients','Base authentication for clients','org4','client-flow',1,1),('4b387c39-2e15-464c-a8a2-6d00f636b3af','direct grant','OpenID Connect Resource Owner Grant','org4','basic-flow',1,1),('4baaa218-3e9f-40a9-9dcc-0232e438f96e','Verify Existing Account by Re-authentication','Reauthentication of existing account','org2','basic-flow',0,1),('4bcdb329-ad38-437a-8247-049f9fad88ee','User creation or linking','Flow for the existing/non-existing user alternatives','org5','basic-flow',0,1),('4d564552-f84d-49fb-8bfb-86cb07e84423','registration','registration flow','org2','basic-flow',1,1),('50f41776-379a-4e2c-9ab3-4d275005fa7c','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('51f529f9-b771-440b-8254-62aad1e6f483','Verify Existing Account by Re-authentication','Reauthentication of existing account','org4','basic-flow',0,1),('52447238-80c8-49d7-910d-a66fde6a02df','browser','browser based authentication','org4','basic-flow',1,1),('53cc862d-d531-410a-bf4d-a020b8e8cd47','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org1','basic-flow',1,1),('5658fe89-9033-49ff-bae0-b2e30d8f0dbd','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org2','basic-flow',0,1),('58f0a1d0-5fc0-456e-a85d-25ac1ce8012f','Verify Existing Account by Re-authentication','Reauthentication of existing account','org3','basic-flow',0,1),('5aa36cff-3bde-4b4b-a784-a9be8706cd6d','registration','registration flow','org5','basic-flow',1,1),('5bbe0782-1ff2-4ee5-aa7b-34ee944eb1e8','saml ecp','SAML ECP Profile Authentication Flow','org5','basic-flow',1,1),('5c05afc0-8434-42c4-b566-e059d1149ba9','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('5f98ba6f-906f-488a-bd43-5e78e4bb3112','browser','browser based authentication','org2','basic-flow',1,1),('60a08560-f179-4cb2-8c15-f2d816ef84c6','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org4','basic-flow',0,1),('663dc236-9203-4d86-b4a2-3d3a3af2c66b','docker auth','Used by Docker clients to authenticate against the IDP','org2','basic-flow',1,1),('669eb122-3464-4383-ac90-eb8e127e82f0','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('66a901be-2ff5-4651-bef8-e80351d03adf','reset credentials','Reset credentials for a user if they forgot their password or something','org2','basic-flow',1,1),('671424c1-8c91-48da-b96d-f7b17fd86851','clients','Base authentication for clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','client-flow',1,1),('67af835e-0320-4612-9c40-017f1979fbc4','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org5','basic-flow',1,1),('6881ba54-e195-4682-ba3c-8914cbb4b9c6','User creation or linking','Flow for the existing/non-existing user alternatives','org2','basic-flow',0,1),('6c925729-de7a-4846-826f-27ab7c878786','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('6f8e5f9a-6f48-4d77-b7ca-5628c3b48c61','docker auth','Used by Docker clients to authenticate against the IDP','org5','basic-flow',1,1),('70515358-b5ba-4454-87f0-130d43503dc9','registration','registration flow','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('72550ec0-6df6-4fd3-bd8a-f00b7f07eca0','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org1','basic-flow',0,1),('7408f300-0122-4e77-b794-2b8d6371adb5','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org3','basic-flow',1,1),('7d4b71dc-c32f-4338-8116-ca39e2b5a582','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org4','basic-flow',0,1),('7fc2c77f-9f46-4c6e-9727-2dddcd9ce019','reset credentials','Reset credentials for a user if they forgot their password or something','org3','basic-flow',1,1),('811cabcb-f114-4327-b167-989b1b22bc71','registration','registration flow','org3','basic-flow',1,1),('811df48d-02f1-40fa-83bc-07168159efb9','docker auth','Used by Docker clients to authenticate against the IDP','org1','basic-flow',1,1),('819086c5-e9f9-4cbf-9f38-214ce37cb856','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('875321a0-23d3-4ee2-9a03-933b31bec99c','User creation or linking','Flow for the existing/non-existing user alternatives','org4','basic-flow',0,1),('881aab24-0061-4b2d-9264-5062bab7bb7d','docker auth','Used by Docker clients to authenticate against the IDP','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('88d4e1e9-a7e9-43d8-9c84-8584ee12c803','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org3','basic-flow',0,1),('8c4370e3-2163-42f7-b903-e1f694ac5427','saml ecp','SAML ECP Profile Authentication Flow','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',1,1),('8cbd90ad-6948-42b5-9c60-bd8db27ff0dc','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org5','basic-flow',0,1),('8d0bc9c8-ee18-44ac-8bc7-5a5a9371f9ec','User creation or linking','Flow for the existing/non-existing user alternatives','org1','basic-flow',0,1),('8dbf3f04-d54d-4217-a4e3-c754759e0305','browser','browser based authentication','org3','basic-flow',1,1),('8ee2daab-ae17-40ef-8254-c481c48a5a97','Account verification options','Method with which to verity the existing account','org2','basic-flow',0,1),('93663b94-e67b-49cd-9a58-ef4e1306f613','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('949c4ab0-5fce-4fc8-a2e1-08567f34b40e','docker auth','Used by Docker clients to authenticate against the IDP','org4','basic-flow',1,1),('95ba2efd-918c-4674-b99c-694a093a8809','reset credentials','Reset credentials for a user if they forgot their password or something','org5','basic-flow',1,1),('971d8a77-44ab-4c87-bbac-926be27d8cfb','Verify Existing Account by Re-authentication','Reauthentication of existing account','org1','basic-flow',0,1),('97632a57-d441-4a7c-8a87-6ba859ae437b','User creation or linking','Flow for the existing/non-existing user alternatives','org3','basic-flow',0,1),('9ce84238-861f-4995-90c6-5fd7a33ed6b9','direct grant','OpenID Connect Resource Owner Grant','org3','basic-flow',1,1),('9fd1bf32-e8ed-4661-acef-9ca2be903f5f','registration form','registration form','org2','form-flow',0,1),('a3fa8f80-a3ab-4dba-8363-4afd484fa437','forms','Username, password, otp and other auth forms.','org1','basic-flow',0,1),('a60ec163-2223-4304-8edd-facaf4db43cf','registration form','registration form','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','form-flow',0,1),('a8787147-2568-445c-a394-6365f4927fce','direct grant','OpenID Connect Resource Owner Grant','org5','basic-flow',1,1),('a902ef6d-98cc-4a8c-a603-bc00415772e2','saml ecp','SAML ECP Profile Authentication Flow','org2','basic-flow',1,1),('adc4bf3c-877b-4ae6-9e6d-728157776066','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org5','basic-flow',0,1),('b6e86185-67ab-4ade-a520-a5999fcd2ace','saml ecp','SAML ECP Profile Authentication Flow','org3','basic-flow',1,1),('b7bc42dc-5dba-4c97-abe1-bbc309529077','forms','Username, password, otp and other auth forms.','org3','basic-flow',0,1),('b86517f2-5d64-45fe-9499-89d20fc6b8c2','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('c3614a73-07b1-4ac5-b477-6a2cc97d3f64','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('c503a01f-35ee-43d4-abf7-e35fc660f28f','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('cb3166c3-60a2-4ae3-ac63-9e7058cb4790','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org2','basic-flow',0,1),('cdc2492c-818f-48ff-8f1f-c78c2391ecab','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','org1','basic-flow',0,1),('ce17255d-78b0-45ca-ae77-e4dcfa941b99','registration','registration flow','org4','basic-flow',1,1),('d0e5e64b-d257-4dc9-a43b-3a5a31f8a8bd','registration','registration flow','org1','basic-flow',1,1),('d230b678-10a9-48e7-af48-8cb2f9c0701d','Account verification options','Method with which to verity the existing account','org1','basic-flow',0,1),('d405b699-5d76-4199-9210-7e5ca58d33ca','clients','Base authentication for clients','org3','client-flow',1,1),('d92dc94f-509c-41d3-8983-0f4446dcecdb','forms','Username, password, otp and other auth forms.','org5','basic-flow',0,1),('db0be78c-8c9a-4276-83a1-733c016ce83b','First broker login - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('db2a2091-11dc-48ea-8b3e-2608df74e9f8','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org2','basic-flow',0,1),('dcf59ae0-3650-4f00-b0c1-092f31b4a9ef','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org5','basic-flow',0,1),('dd549d04-c2ef-4081-9715-7269839a128f','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('dfcef623-1f9d-4a1a-ab5a-a09936f49f88','Verify Existing Account by Re-authentication','Reauthentication of existing account','org5','basic-flow',0,1),('e3a72a56-4036-453e-ae54-27a0d3ba6eb7','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','org4','basic-flow',1,1),('ef93e01e-a7de-4577-b61a-d3bddf7cced5','Browser - Conditional OTP','Flow to determine if the OTP is required for the authentication','org3','basic-flow',0,1),('efa08586-4531-4be5-b0f6-c4cff1251d01','saml ecp','SAML ECP Profile Authentication Flow','org4','basic-flow',1,1),('f1cec3c7-595b-41ac-9db4-28309f61a6ab','direct grant','OpenID Connect Resource Owner Grant','org2','basic-flow',1,1),('f25c86e1-98b9-4e9c-b1bd-f01cf3ecd4f8','Verify Existing Account by Re-authentication','Reauthentication of existing account','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','basic-flow',0,1),('f3442a01-582f-4623-adb8-9bdb56a9e304','direct grant','OpenID Connect Resource Owner Grant','org1','basic-flow',1,1),('f43b077f-682c-48c5-b7f8-1231f203c148','registration form','registration form','org4','form-flow',0,1),('f8da8f18-611e-4c14-b05a-447c8e066688','forms','Username, password, otp and other auth forms.','org2','basic-flow',0,1),('fd6fd174-4ae0-4644-8492-17a12b575a58','Account verification options','Method with which to verity the existing account','org3','basic-flow',0,1),('ff088d04-6c7b-4a1c-a46c-03cc484b8185','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','org3','basic-flow',0,1);
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
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('0bcb24f2-6e50-48c5-872d-03a32f5d47a7','create unique user config','org1'),('293688b1-b042-4e06-98d6-cfc4e5f7a8f9','create unique user config','org5'),('3618d698-6a36-404e-ab00-5318e3a15922','create unique user config','org3'),('361b2a6a-a90e-476f-98c8-d59e96cd8cb4','review profile config','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89'),('4e491ba9-c083-4fb6-8756-505c18770291','review profile config','org1'),('7a77472a-ecfe-4d92-b8ad-f5e6b6904adb','create unique user config','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89'),('7edc8337-a76b-4d8d-b13f-fd703baadd9a','review profile config','org2'),('8a377f4e-73b0-4f72-be9f-186efc34275f','create unique user config','org2'),('cd392fcd-c687-4395-a44b-8556ea37a3cd','create unique user config','org4'),('cd870f84-5db9-4772-8be9-032fb048eef0','review profile config','org4'),('cde475a3-1246-4169-99f4-4eabd31e13a1','review profile config','org3'),('fc5ce68a-6430-4c96-8a64-e359eba99f82','review profile config','org5');
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
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('0bcb24f2-6e50-48c5-872d-03a32f5d47a7','false','require.password.update.after.registration'),('293688b1-b042-4e06-98d6-cfc4e5f7a8f9','false','require.password.update.after.registration'),('3618d698-6a36-404e-ab00-5318e3a15922','false','require.password.update.after.registration'),('361b2a6a-a90e-476f-98c8-d59e96cd8cb4','missing','update.profile.on.first.login'),('4e491ba9-c083-4fb6-8756-505c18770291','missing','update.profile.on.first.login'),('7a77472a-ecfe-4d92-b8ad-f5e6b6904adb','false','require.password.update.after.registration'),('7edc8337-a76b-4d8d-b13f-fd703baadd9a','missing','update.profile.on.first.login'),('8a377f4e-73b0-4f72-be9f-186efc34275f','false','require.password.update.after.registration'),('cd392fcd-c687-4395-a44b-8556ea37a3cd','false','require.password.update.after.registration'),('cd870f84-5db9-4772-8be9-032fb048eef0','missing','update.profile.on.first.login'),('cde475a3-1246-4169-99f4-4eabd31e13a1','missing','update.profile.on.first.login'),('fc5ce68a-6430-4c96-8a64-e359eba99f82','missing','update.profile.on.first.login');
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
INSERT INTO `CLIENT` VALUES ('01103599-34e5-49a6-bc69-221206c33e45',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org1','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('03dd2c35-cefc-4eca-8ac6-4d575758ba33',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,1,'org3-workspaces',0,0,'GpMuwHrKDkpkCKs6EextHLZhJ61B5tAZ',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('06a57e63-21df-40a5-962a-05f14882f954',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('07381026-d956-456b-acc1-30a424f8030e',1,1,'_org4-api',0,1,'WoPnh0vgMG5Q9FdbNXvfYfnqXg6UYthS',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('0ea7620f-ec2c-42d3-afdd-50a344c16891',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('10f7c620-c6e1-4100-b70a-5d8812e091a8',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('128c1c6c-31a7-441f-adeb-1eeea294d721',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('134ce669-a77a-44d8-82aa-deab11e2b408',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org4','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('14038227-ac31-459b-a41c-96afd45ed7c2',1,1,'org1',0,1,'Oe5PnoNUWH9EiIuvoZxQ6X4V1L8lEnng',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('178c0867-4708-4b1b-8a6e-ee2498d519cf',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('1fc28088-5430-49fe-b074-0e675272dc2f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('25896459-9af1-4f23-81b3-e5ad98e44547',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org2','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811',1,0,'security-admin-console',0,1,NULL,'/admin/org1/console/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('33604388-f0ec-44ed-901c-747a43154e6c',1,1,'system-org2-auth',0,0,'bj4OZ1JW6xdYc6cXoYcfleACIX0tG9rh',NULL,1,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org5','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6',1,1,'system-org5-auth',0,0,'mJmaL5ZEbbnCL6J9TRVWDAyL7KgMt07Q',NULL,1,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('3894c5a6-d196-4876-80b0-fe257f155db3',1,0,'org4-realm',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,0,0,0,'org4 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('3f908ff7-2e94-4039-9ae0-86aaabf71328',1,0,'account-console',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('43cf22f8-90af-4532-ad1c-fc2934a264e3',1,0,'org2-realm',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,0,0,0,'org2 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('48aa244c-1748-48f0-b78d-628e5aa21076',1,1,'org5-workspaces',0,0,'vXvGJpBWJizLS93wXbVd4WdbwdaPZzlg',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('4a3136c6-14f2-4a86-bc94-4054f607b4be',1,1,'org4',0,1,'txDJiqHiJCRPl5yKlsmCvs3xbyFGgiBA',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('4ea8fc86-7833-4bf8-9080-436026851e62',1,0,'_platform-console',0,1,'p49dJdIWYDlFKm31tI6GG3biNBtjxmXe',NULL,0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('53a487d5-3473-4eac-9726-7cb05343825f',1,0,'account-console',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('5426ce24-799e-4e20-a9bd-be6fcadb0577',1,0,'account-console',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('55235526-77b3-45a6-8fc0-03fb5772b81f',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org4','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('5f239fef-3cf1-4583-85e3-904920ced19b',1,0,'security-admin-console',0,1,NULL,'/admin/org4/console/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('629de169-8395-43bf-9455-c08bd198dbde',1,1,'system-org1-auth',0,0,'nVYZYPVwgREKtzIwevRGoubSqpqg3ZFS',NULL,1,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('68067b8f-f178-4db3-ba80-73f114099679',1,0,'org5-realm',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,0,0,0,'org5 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('6e5e9267-7e2e-4032-a789-225985c0bb4f',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org3','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('71003c68-7412-47b5-9631-296e81eb93c1',1,1,'_org1-api',0,1,'SVkN0pGKofEuej6IRj4f002Jh6k8Sl0j',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('75799957-807f-4039-915e-f274934b3f50',1,1,'org1-workspaces',0,0,'yJyGT00ZQz9MSYl7xgeUsjZsaXPHReGc',NULL,0,NULL,0,'org1','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('76323179-e351-444c-97bc-583ca726a733',1,1,'_org3-api',0,1,'EunpuvdWtOet4JwR1yaeljvMeu5i6KmD',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('7c0d7aca-f937-4a45-9828-76f05a36c281',1,0,'account',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('844d8f45-2003-4fc5-a82d-7e00eae35b87',1,1,'system-org3-auth',0,0,'hLBMmJUbJyuknDQLEQLSadMxdOyDR5eF',NULL,1,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('87a260f4-ece5-4eea-94de-ba31720af864',1,1,'org4-workspaces',0,0,'XC4LUX68vK30U34IVtsDTgNLA4gMwXVp',NULL,0,NULL,0,'org4','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7',1,1,'system-org4-auth',0,0,'BgGEsqIwmFrV692K9JbKKkU8X8LK8ZXo',NULL,1,NULL,0,'org4','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('90437d83-845f-4150-8d81-4ba1d37a7624',1,1,'org2',0,1,'9aIfu5EqbBDdUGL1xuPyTUx8SOrjNdxC',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('9409a340-9f41-469d-8ecf-37785793e86e',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('978959fd-add2-4968-ac7a-da91ea64477a',1,0,'account',0,1,NULL,'/realms/org1/account/',0,NULL,0,'org1','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,0,'account',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('9c738697-99e7-4b1f-8702-6b499e071ce3',1,0,'account',0,1,NULL,'/realms/org5/account/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6',1,0,'security-admin-console',0,1,NULL,'/admin/org3/console/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,1,'org2-workspaces',0,0,'i3hnuLYZ2zNWc5vwBXBmSTyl4AYCQhCE',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('acd18a4f-f89a-4ffb-941b-7d4bd8033261',1,0,'account-console',0,1,NULL,'/realms/org2/account/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('b04fc239-de8c-43f6-9432-cae3227487db',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('bf8007e6-1073-4601-a0c9-08cade1429a7',1,1,'org5',0,1,'ptMJul0cifIouoCCy7avLn5bT1X4eD9x',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('c0ba0103-6eb6-43d5-a844-8d44e6254694',1,0,'org3-realm',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,0,0,0,'org3 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('c2f880e9-65b0-4432-a364-bd6ad75e57b4',1,1,'_org5-api',0,1,'3PkN8BNRBoNszzUmbGbPxYSlvc2H13xa',NULL,0,NULL,0,'org5','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('c6babb0a-496d-4e92-85c6-611beae756a7',1,0,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,1,'org3',0,1,'LxIyXXyusLq1dFX5Rofl6sKB1yzuTGzT',NULL,0,NULL,0,'org3','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0),('d1208074-d243-4b06-b130-e8903e23c164',1,1,'_org2-api',0,1,'RIH7EH9YR8LZ638Lyxcge1qkIotN0HW5',NULL,0,NULL,0,'org2','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0),('d3b91fcf-5c12-4d48-80de-4063a307d7dc',1,0,'security-admin-console',0,1,NULL,'/admin/org5/console/',0,NULL,0,'org5','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org5','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,0,'realm-management',0,0,NULL,NULL,1,NULL,0,'org1','openid-connect',0,0,0,'${client_realm-management}',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('dad4e868-b37f-487c-a2ce-4167b11eee94',1,0,'account-console',0,1,NULL,'/realms/org3/account/',0,NULL,0,'org3','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('dcca95f8-0e75-443c-b2dd-c906cb8db88b',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('e0462c55-5a6f-4483-a3e0-f29f62c49372',1,1,'_platform',0,0,'XdMABqEi1HOkav2jX6lohhCxHxtGD1im',NULL,0,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org2','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0),('ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,0,'org1-realm',0,0,NULL,NULL,1,NULL,0,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,0,0,0,'org1 Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef',1,0,'security-admin-console',0,1,NULL,'/admin/org2/console/',0,NULL,0,'org2','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0),('f1d6454e-446c-46d9-851d-96c5b7dc2028',1,0,'account',0,1,NULL,'/realms/org4/account/',0,NULL,0,'org4','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0),('f26e6d8b-2215-493f-944c-011fac9735ca',1,0,'admin-cli',0,1,NULL,NULL,0,NULL,0,'org3','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0);
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
INSERT INTO `CLIENT_ATTRIBUTES` VALUES ('03dd2c35-cefc-4eca-8ac6-4d575758ba33','pkce.code.challenge.method','S256'),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','post.logout.redirect.uris','+'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','backchannel.logout.revoke.offline.tokens','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','backchannel.logout.session.required','true'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','client.secret.creation.time','1718092456'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','client_credentials.use_refresh_token','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','display.on.consent.screen','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','exclude.session.state.from.auth.response','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','id.token.as.detached.signature','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','oauth2.device.authorization.grant.enabled','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','oidc.ciba.grant.enabled','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','require.pushed.authorization.requests','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.artifact.binding','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.assertion.signature','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.authnstatement','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.client.signature','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.encrypt','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.force.post.binding','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.multivalued.roles','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.onetimeuse.condition','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.server.signature','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml.server.signature.keyinfo.ext','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','saml_force_name_id_format','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','tls.client.certificate.bound.access.tokens','false'),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','use.refresh.tokens','true'),('07381026-d956-456b-acc1-30a424f8030e','access.token.lifespan','86400'),('07381026-d956-456b-acc1-30a424f8030e','acr.loa.map','{}'),('07381026-d956-456b-acc1-30a424f8030e','backchannel.logout.revoke.offline.tokens','false'),('07381026-d956-456b-acc1-30a424f8030e','backchannel.logout.session.required','true'),('07381026-d956-456b-acc1-30a424f8030e','client.secret.creation.time','1718092492'),('07381026-d956-456b-acc1-30a424f8030e','client.session.idle.timeout','86400'),('07381026-d956-456b-acc1-30a424f8030e','client.session.max.lifespan','86400'),('07381026-d956-456b-acc1-30a424f8030e','client_credentials.use_refresh_token','false'),('07381026-d956-456b-acc1-30a424f8030e','display.on.consent.screen','false'),('07381026-d956-456b-acc1-30a424f8030e','exclude.session.state.from.auth.response','false'),('07381026-d956-456b-acc1-30a424f8030e','frontchannel.logout.session.required','false'),('07381026-d956-456b-acc1-30a424f8030e','id.token.as.detached.signature','false'),('07381026-d956-456b-acc1-30a424f8030e','oauth2.device.authorization.grant.enabled','false'),('07381026-d956-456b-acc1-30a424f8030e','oidc.ciba.grant.enabled','false'),('07381026-d956-456b-acc1-30a424f8030e','require.pushed.authorization.requests','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.allow.ecp.flow','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.artifact.binding','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.assertion.signature','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.authnstatement','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.client.signature','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.encrypt','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.force.post.binding','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.multivalued.roles','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.onetimeuse.condition','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.server.signature','false'),('07381026-d956-456b-acc1-30a424f8030e','saml.server.signature.keyinfo.ext','false'),('07381026-d956-456b-acc1-30a424f8030e','saml_force_name_id_format','false'),('07381026-d956-456b-acc1-30a424f8030e','tls.client.certificate.bound.access.tokens','false'),('07381026-d956-456b-acc1-30a424f8030e','token.response.type.bearer.lower-case','false'),('07381026-d956-456b-acc1-30a424f8030e','use.refresh.tokens','true'),('14038227-ac31-459b-a41c-96afd45ed7c2','backchannel.logout.revoke.offline.tokens','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','backchannel.logout.session.required','true'),('14038227-ac31-459b-a41c-96afd45ed7c2','client.secret.creation.time','1718092368'),('14038227-ac31-459b-a41c-96afd45ed7c2','client_credentials.use_refresh_token','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','display.on.consent.screen','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','exclude.session.state.from.auth.response','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','id.token.as.detached.signature','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','oauth2.device.authorization.grant.enabled','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','oidc.ciba.grant.enabled','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','post.logout.redirect.uris','/*'),('14038227-ac31-459b-a41c-96afd45ed7c2','require.pushed.authorization.requests','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.artifact.binding','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.assertion.signature','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.authnstatement','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.client.signature','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.encrypt','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.force.post.binding','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.multivalued.roles','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.onetimeuse.condition','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.server.signature','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml.server.signature.keyinfo.ext','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','saml_force_name_id_format','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','tls.client.certificate.bound.access.tokens','false'),('14038227-ac31-459b-a41c-96afd45ed7c2','use.refresh.tokens','true'),('25896459-9af1-4f23-81b3-e5ad98e44547','access.token.lifespan','86400'),('25896459-9af1-4f23-81b3-e5ad98e44547','acr.loa.map','{}'),('25896459-9af1-4f23-81b3-e5ad98e44547','backchannel.logout.revoke.offline.tokens','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','backchannel.logout.session.required','true'),('25896459-9af1-4f23-81b3-e5ad98e44547','client.session.idle.timeout','86400'),('25896459-9af1-4f23-81b3-e5ad98e44547','client.session.max.lifespan','86400'),('25896459-9af1-4f23-81b3-e5ad98e44547','client_credentials.use_refresh_token','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','display.on.consent.screen','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','exclude.session.state.from.auth.response','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','frontchannel.logout.session.required','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','id.token.as.detached.signature','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','oauth2.device.authorization.grant.enabled','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','oidc.ciba.grant.enabled','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','require.pushed.authorization.requests','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.allow.ecp.flow','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.artifact.binding','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.assertion.signature','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.authnstatement','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.client.signature','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.encrypt','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.force.post.binding','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.multivalued.roles','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.onetimeuse.condition','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.server.signature','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml.server.signature.keyinfo.ext','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','saml_force_name_id_format','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','tls.client.certificate.bound.access.tokens','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','token.response.type.bearer.lower-case','false'),('25896459-9af1-4f23-81b3-e5ad98e44547','use.refresh.tokens','true'),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','pkce.code.challenge.method','S256'),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','post.logout.redirect.uris','+'),('33604388-f0ec-44ed-901c-747a43154e6c','backchannel.logout.revoke.offline.tokens','false'),('33604388-f0ec-44ed-901c-747a43154e6c','backchannel.logout.session.required','true'),('33604388-f0ec-44ed-901c-747a43154e6c','client.secret.creation.time','1718092417'),('33604388-f0ec-44ed-901c-747a43154e6c','client_credentials.use_refresh_token','false'),('33604388-f0ec-44ed-901c-747a43154e6c','display.on.consent.screen','false'),('33604388-f0ec-44ed-901c-747a43154e6c','exclude.session.state.from.auth.response','false'),('33604388-f0ec-44ed-901c-747a43154e6c','id.token.as.detached.signature','false'),('33604388-f0ec-44ed-901c-747a43154e6c','oauth2.device.authorization.grant.enabled','false'),('33604388-f0ec-44ed-901c-747a43154e6c','oidc.ciba.grant.enabled','false'),('33604388-f0ec-44ed-901c-747a43154e6c','require.pushed.authorization.requests','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.artifact.binding','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.assertion.signature','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.authnstatement','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.client.signature','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.encrypt','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.force.post.binding','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.multivalued.roles','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.onetimeuse.condition','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.server.signature','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml.server.signature.keyinfo.ext','false'),('33604388-f0ec-44ed-901c-747a43154e6c','saml_force_name_id_format','false'),('33604388-f0ec-44ed-901c-747a43154e6c','tls.client.certificate.bound.access.tokens','false'),('33604388-f0ec-44ed-901c-747a43154e6c','use.refresh.tokens','true'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','backchannel.logout.revoke.offline.tokens','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','backchannel.logout.session.required','true'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','client.secret.creation.time','1718092529'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','client_credentials.use_refresh_token','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','display.on.consent.screen','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','exclude.session.state.from.auth.response','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','id.token.as.detached.signature','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','oauth2.device.authorization.grant.enabled','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','oidc.ciba.grant.enabled','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','require.pushed.authorization.requests','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.artifact.binding','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.assertion.signature','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.authnstatement','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.client.signature','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.encrypt','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.force.post.binding','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.multivalued.roles','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.onetimeuse.condition','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.server.signature','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml.server.signature.keyinfo.ext','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','saml_force_name_id_format','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','tls.client.certificate.bound.access.tokens','false'),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','use.refresh.tokens','true'),('3f908ff7-2e94-4039-9ae0-86aaabf71328','pkce.code.challenge.method','S256'),('3f908ff7-2e94-4039-9ae0-86aaabf71328','post.logout.redirect.uris','+'),('48aa244c-1748-48f0-b78d-628e5aa21076','backchannel.logout.revoke.offline.tokens','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','backchannel.logout.session.required','true'),('48aa244c-1748-48f0-b78d-628e5aa21076','client.secret.creation.time','1718092529'),('48aa244c-1748-48f0-b78d-628e5aa21076','client_credentials.use_refresh_token','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','display.on.consent.screen','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','exclude.session.state.from.auth.response','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','id.token.as.detached.signature','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','oauth2.device.authorization.grant.enabled','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','oidc.ciba.grant.enabled','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','require.pushed.authorization.requests','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.artifact.binding','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.assertion.signature','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.authnstatement','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.client.signature','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.encrypt','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.force.post.binding','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.multivalued.roles','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.onetimeuse.condition','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.server.signature','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml.server.signature.keyinfo.ext','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','saml_force_name_id_format','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','tls.client.certificate.bound.access.tokens','false'),('48aa244c-1748-48f0-b78d-628e5aa21076','use.refresh.tokens','true'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','backchannel.logout.revoke.offline.tokens','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','backchannel.logout.session.required','true'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','client.secret.creation.time','1718092492'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','client_credentials.use_refresh_token','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','display.on.consent.screen','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','exclude.session.state.from.auth.response','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','id.token.as.detached.signature','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','oauth2.device.authorization.grant.enabled','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','oidc.ciba.grant.enabled','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','post.logout.redirect.uris','/*'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','require.pushed.authorization.requests','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.artifact.binding','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.assertion.signature','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.authnstatement','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.client.signature','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.encrypt','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.force.post.binding','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.multivalued.roles','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.onetimeuse.condition','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.server.signature','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml.server.signature.keyinfo.ext','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','saml_force_name_id_format','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','tls.client.certificate.bound.access.tokens','false'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','use.refresh.tokens','true'),('4ea8fc86-7833-4bf8-9080-436026851e62','backchannel.logout.revoke.offline.tokens','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','backchannel.logout.session.required','true'),('4ea8fc86-7833-4bf8-9080-436026851e62','client.secret.creation.time','1718092299'),('4ea8fc86-7833-4bf8-9080-436026851e62','client_credentials.use_refresh_token','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','display.on.consent.screen','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','exclude.session.state.from.auth.response','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','id.token.as.detached.signature','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','oauth2.device.authorization.grant.enabled','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','oidc.ciba.grant.enabled','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','post.logout.redirect.uris','/*'),('4ea8fc86-7833-4bf8-9080-436026851e62','require.pushed.authorization.requests','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.artifact.binding','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.assertion.signature','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.authnstatement','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.client.signature','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.encrypt','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.force.post.binding','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.multivalued.roles','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.onetimeuse.condition','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.server.signature','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml.server.signature.keyinfo.ext','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','saml_force_name_id_format','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','tls.client.certificate.bound.access.tokens','false'),('4ea8fc86-7833-4bf8-9080-436026851e62','use.refresh.tokens','true'),('53a487d5-3473-4eac-9726-7cb05343825f','pkce.code.challenge.method','S256'),('53a487d5-3473-4eac-9726-7cb05343825f','post.logout.redirect.uris','+'),('5426ce24-799e-4e20-a9bd-be6fcadb0577','pkce.code.challenge.method','S256'),('5426ce24-799e-4e20-a9bd-be6fcadb0577','post.logout.redirect.uris','+'),('5f239fef-3cf1-4583-85e3-904920ced19b','pkce.code.challenge.method','S256'),('5f239fef-3cf1-4583-85e3-904920ced19b','post.logout.redirect.uris','+'),('629de169-8395-43bf-9455-c08bd198dbde','backchannel.logout.revoke.offline.tokens','false'),('629de169-8395-43bf-9455-c08bd198dbde','backchannel.logout.session.required','true'),('629de169-8395-43bf-9455-c08bd198dbde','client.secret.creation.time','1718092368'),('629de169-8395-43bf-9455-c08bd198dbde','client_credentials.use_refresh_token','false'),('629de169-8395-43bf-9455-c08bd198dbde','display.on.consent.screen','false'),('629de169-8395-43bf-9455-c08bd198dbde','exclude.session.state.from.auth.response','false'),('629de169-8395-43bf-9455-c08bd198dbde','id.token.as.detached.signature','false'),('629de169-8395-43bf-9455-c08bd198dbde','oauth2.device.authorization.grant.enabled','false'),('629de169-8395-43bf-9455-c08bd198dbde','oidc.ciba.grant.enabled','false'),('629de169-8395-43bf-9455-c08bd198dbde','require.pushed.authorization.requests','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.artifact.binding','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.assertion.signature','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.authnstatement','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.client.signature','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.encrypt','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.force.post.binding','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.multivalued.roles','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.onetimeuse.condition','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.server.signature','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml.server.signature.keyinfo.ext','false'),('629de169-8395-43bf-9455-c08bd198dbde','saml_force_name_id_format','false'),('629de169-8395-43bf-9455-c08bd198dbde','tls.client.certificate.bound.access.tokens','false'),('629de169-8395-43bf-9455-c08bd198dbde','use.refresh.tokens','true'),('71003c68-7412-47b5-9631-296e81eb93c1','access.token.lifespan','86400'),('71003c68-7412-47b5-9631-296e81eb93c1','acr.loa.map','{}'),('71003c68-7412-47b5-9631-296e81eb93c1','backchannel.logout.revoke.offline.tokens','false'),('71003c68-7412-47b5-9631-296e81eb93c1','backchannel.logout.session.required','true'),('71003c68-7412-47b5-9631-296e81eb93c1','client.secret.creation.time','1718092369'),('71003c68-7412-47b5-9631-296e81eb93c1','client.session.idle.timeout','86400'),('71003c68-7412-47b5-9631-296e81eb93c1','client.session.max.lifespan','86400'),('71003c68-7412-47b5-9631-296e81eb93c1','client_credentials.use_refresh_token','false'),('71003c68-7412-47b5-9631-296e81eb93c1','display.on.consent.screen','false'),('71003c68-7412-47b5-9631-296e81eb93c1','exclude.session.state.from.auth.response','false'),('71003c68-7412-47b5-9631-296e81eb93c1','frontchannel.logout.session.required','false'),('71003c68-7412-47b5-9631-296e81eb93c1','id.token.as.detached.signature','false'),('71003c68-7412-47b5-9631-296e81eb93c1','oauth2.device.authorization.grant.enabled','false'),('71003c68-7412-47b5-9631-296e81eb93c1','oidc.ciba.grant.enabled','false'),('71003c68-7412-47b5-9631-296e81eb93c1','require.pushed.authorization.requests','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.allow.ecp.flow','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.artifact.binding','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.assertion.signature','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.authnstatement','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.client.signature','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.encrypt','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.force.post.binding','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.multivalued.roles','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.onetimeuse.condition','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.server.signature','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml.server.signature.keyinfo.ext','false'),('71003c68-7412-47b5-9631-296e81eb93c1','saml_force_name_id_format','false'),('71003c68-7412-47b5-9631-296e81eb93c1','tls.client.certificate.bound.access.tokens','false'),('71003c68-7412-47b5-9631-296e81eb93c1','token.response.type.bearer.lower-case','false'),('71003c68-7412-47b5-9631-296e81eb93c1','use.refresh.tokens','true'),('75799957-807f-4039-915e-f274934b3f50','backchannel.logout.revoke.offline.tokens','false'),('75799957-807f-4039-915e-f274934b3f50','backchannel.logout.session.required','true'),('75799957-807f-4039-915e-f274934b3f50','client.secret.creation.time','1718092368'),('75799957-807f-4039-915e-f274934b3f50','client_credentials.use_refresh_token','false'),('75799957-807f-4039-915e-f274934b3f50','display.on.consent.screen','false'),('75799957-807f-4039-915e-f274934b3f50','exclude.session.state.from.auth.response','false'),('75799957-807f-4039-915e-f274934b3f50','id.token.as.detached.signature','false'),('75799957-807f-4039-915e-f274934b3f50','oauth2.device.authorization.grant.enabled','false'),('75799957-807f-4039-915e-f274934b3f50','oidc.ciba.grant.enabled','false'),('75799957-807f-4039-915e-f274934b3f50','require.pushed.authorization.requests','false'),('75799957-807f-4039-915e-f274934b3f50','saml.artifact.binding','false'),('75799957-807f-4039-915e-f274934b3f50','saml.assertion.signature','false'),('75799957-807f-4039-915e-f274934b3f50','saml.authnstatement','false'),('75799957-807f-4039-915e-f274934b3f50','saml.client.signature','false'),('75799957-807f-4039-915e-f274934b3f50','saml.encrypt','false'),('75799957-807f-4039-915e-f274934b3f50','saml.force.post.binding','false'),('75799957-807f-4039-915e-f274934b3f50','saml.multivalued.roles','false'),('75799957-807f-4039-915e-f274934b3f50','saml.onetimeuse.condition','false'),('75799957-807f-4039-915e-f274934b3f50','saml.server.signature','false'),('75799957-807f-4039-915e-f274934b3f50','saml.server.signature.keyinfo.ext','false'),('75799957-807f-4039-915e-f274934b3f50','saml_force_name_id_format','false'),('75799957-807f-4039-915e-f274934b3f50','tls.client.certificate.bound.access.tokens','false'),('75799957-807f-4039-915e-f274934b3f50','use.refresh.tokens','true'),('76323179-e351-444c-97bc-583ca726a733','access.token.lifespan','86400'),('76323179-e351-444c-97bc-583ca726a733','acr.loa.map','{}'),('76323179-e351-444c-97bc-583ca726a733','backchannel.logout.revoke.offline.tokens','false'),('76323179-e351-444c-97bc-583ca726a733','backchannel.logout.session.required','true'),('76323179-e351-444c-97bc-583ca726a733','client.secret.creation.time','1718092457'),('76323179-e351-444c-97bc-583ca726a733','client.session.idle.timeout','86400'),('76323179-e351-444c-97bc-583ca726a733','client.session.max.lifespan','86400'),('76323179-e351-444c-97bc-583ca726a733','client_credentials.use_refresh_token','false'),('76323179-e351-444c-97bc-583ca726a733','display.on.consent.screen','false'),('76323179-e351-444c-97bc-583ca726a733','exclude.session.state.from.auth.response','false'),('76323179-e351-444c-97bc-583ca726a733','frontchannel.logout.session.required','false'),('76323179-e351-444c-97bc-583ca726a733','id.token.as.detached.signature','false'),('76323179-e351-444c-97bc-583ca726a733','oauth2.device.authorization.grant.enabled','false'),('76323179-e351-444c-97bc-583ca726a733','oidc.ciba.grant.enabled','false'),('76323179-e351-444c-97bc-583ca726a733','require.pushed.authorization.requests','false'),('76323179-e351-444c-97bc-583ca726a733','saml.allow.ecp.flow','false'),('76323179-e351-444c-97bc-583ca726a733','saml.artifact.binding','false'),('76323179-e351-444c-97bc-583ca726a733','saml.assertion.signature','false'),('76323179-e351-444c-97bc-583ca726a733','saml.authnstatement','false'),('76323179-e351-444c-97bc-583ca726a733','saml.client.signature','false'),('76323179-e351-444c-97bc-583ca726a733','saml.encrypt','false'),('76323179-e351-444c-97bc-583ca726a733','saml.force.post.binding','false'),('76323179-e351-444c-97bc-583ca726a733','saml.multivalued.roles','false'),('76323179-e351-444c-97bc-583ca726a733','saml.onetimeuse.condition','false'),('76323179-e351-444c-97bc-583ca726a733','saml.server.signature','false'),('76323179-e351-444c-97bc-583ca726a733','saml.server.signature.keyinfo.ext','false'),('76323179-e351-444c-97bc-583ca726a733','saml_force_name_id_format','false'),('76323179-e351-444c-97bc-583ca726a733','tls.client.certificate.bound.access.tokens','false'),('76323179-e351-444c-97bc-583ca726a733','token.response.type.bearer.lower-case','false'),('76323179-e351-444c-97bc-583ca726a733','use.refresh.tokens','true'),('7c0d7aca-f937-4a45-9828-76f05a36c281','post.logout.redirect.uris','+'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','backchannel.logout.revoke.offline.tokens','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','backchannel.logout.session.required','true'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','client.secret.creation.time','1718092456'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','client_credentials.use_refresh_token','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','display.on.consent.screen','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','exclude.session.state.from.auth.response','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','id.token.as.detached.signature','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','oauth2.device.authorization.grant.enabled','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','oidc.ciba.grant.enabled','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','require.pushed.authorization.requests','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.artifact.binding','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.assertion.signature','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.authnstatement','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.client.signature','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.encrypt','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.force.post.binding','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.multivalued.roles','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.onetimeuse.condition','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.server.signature','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml.server.signature.keyinfo.ext','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','saml_force_name_id_format','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','tls.client.certificate.bound.access.tokens','false'),('844d8f45-2003-4fc5-a82d-7e00eae35b87','use.refresh.tokens','true'),('87a260f4-ece5-4eea-94de-ba31720af864','backchannel.logout.revoke.offline.tokens','false'),('87a260f4-ece5-4eea-94de-ba31720af864','backchannel.logout.session.required','true'),('87a260f4-ece5-4eea-94de-ba31720af864','client.secret.creation.time','1718092492'),('87a260f4-ece5-4eea-94de-ba31720af864','client_credentials.use_refresh_token','false'),('87a260f4-ece5-4eea-94de-ba31720af864','display.on.consent.screen','false'),('87a260f4-ece5-4eea-94de-ba31720af864','exclude.session.state.from.auth.response','false'),('87a260f4-ece5-4eea-94de-ba31720af864','id.token.as.detached.signature','false'),('87a260f4-ece5-4eea-94de-ba31720af864','oauth2.device.authorization.grant.enabled','false'),('87a260f4-ece5-4eea-94de-ba31720af864','oidc.ciba.grant.enabled','false'),('87a260f4-ece5-4eea-94de-ba31720af864','require.pushed.authorization.requests','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.artifact.binding','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.assertion.signature','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.authnstatement','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.client.signature','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.encrypt','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.force.post.binding','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.multivalued.roles','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.onetimeuse.condition','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.server.signature','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml.server.signature.keyinfo.ext','false'),('87a260f4-ece5-4eea-94de-ba31720af864','saml_force_name_id_format','false'),('87a260f4-ece5-4eea-94de-ba31720af864','tls.client.certificate.bound.access.tokens','false'),('87a260f4-ece5-4eea-94de-ba31720af864','use.refresh.tokens','true'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','backchannel.logout.revoke.offline.tokens','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','backchannel.logout.session.required','true'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','client.secret.creation.time','1718092492'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','client_credentials.use_refresh_token','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','display.on.consent.screen','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','exclude.session.state.from.auth.response','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','id.token.as.detached.signature','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','oauth2.device.authorization.grant.enabled','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','oidc.ciba.grant.enabled','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','require.pushed.authorization.requests','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.artifact.binding','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.assertion.signature','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.authnstatement','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.client.signature','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.encrypt','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.force.post.binding','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.multivalued.roles','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.onetimeuse.condition','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.server.signature','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml.server.signature.keyinfo.ext','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','saml_force_name_id_format','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','tls.client.certificate.bound.access.tokens','false'),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','use.refresh.tokens','true'),('90437d83-845f-4150-8d81-4ba1d37a7624','backchannel.logout.revoke.offline.tokens','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','backchannel.logout.session.required','true'),('90437d83-845f-4150-8d81-4ba1d37a7624','client.secret.creation.time','1718092417'),('90437d83-845f-4150-8d81-4ba1d37a7624','client_credentials.use_refresh_token','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','display.on.consent.screen','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','exclude.session.state.from.auth.response','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','id.token.as.detached.signature','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','oauth2.device.authorization.grant.enabled','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','oidc.ciba.grant.enabled','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','post.logout.redirect.uris','/*'),('90437d83-845f-4150-8d81-4ba1d37a7624','require.pushed.authorization.requests','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.artifact.binding','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.assertion.signature','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.authnstatement','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.client.signature','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.encrypt','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.force.post.binding','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.multivalued.roles','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.onetimeuse.condition','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.server.signature','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml.server.signature.keyinfo.ext','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','saml_force_name_id_format','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','tls.client.certificate.bound.access.tokens','false'),('90437d83-845f-4150-8d81-4ba1d37a7624','use.refresh.tokens','true'),('978959fd-add2-4968-ac7a-da91ea64477a','post.logout.redirect.uris','+'),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','post.logout.redirect.uris','+'),('9c738697-99e7-4b1f-8702-6b499e071ce3','post.logout.redirect.uris','+'),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','pkce.code.challenge.method','S256'),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','post.logout.redirect.uris','+'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','backchannel.logout.revoke.offline.tokens','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','backchannel.logout.session.required','true'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','client.secret.creation.time','1718092417'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','client_credentials.use_refresh_token','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','display.on.consent.screen','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','exclude.session.state.from.auth.response','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','id.token.as.detached.signature','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','oauth2.device.authorization.grant.enabled','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','oidc.ciba.grant.enabled','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','require.pushed.authorization.requests','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.artifact.binding','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.assertion.signature','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.authnstatement','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.client.signature','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.encrypt','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.force.post.binding','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.multivalued.roles','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.onetimeuse.condition','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.server.signature','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml.server.signature.keyinfo.ext','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','saml_force_name_id_format','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','tls.client.certificate.bound.access.tokens','false'),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','use.refresh.tokens','true'),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','pkce.code.challenge.method','S256'),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','post.logout.redirect.uris','+'),('b04fc239-de8c-43f6-9432-cae3227487db','post.logout.redirect.uris','+'),('bf8007e6-1073-4601-a0c9-08cade1429a7','backchannel.logout.revoke.offline.tokens','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','backchannel.logout.session.required','true'),('bf8007e6-1073-4601-a0c9-08cade1429a7','client.secret.creation.time','1718092529'),('bf8007e6-1073-4601-a0c9-08cade1429a7','client_credentials.use_refresh_token','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','display.on.consent.screen','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','exclude.session.state.from.auth.response','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','id.token.as.detached.signature','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','oauth2.device.authorization.grant.enabled','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','oidc.ciba.grant.enabled','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','post.logout.redirect.uris','/*'),('bf8007e6-1073-4601-a0c9-08cade1429a7','require.pushed.authorization.requests','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.artifact.binding','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.assertion.signature','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.authnstatement','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.client.signature','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.encrypt','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.force.post.binding','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.multivalued.roles','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.onetimeuse.condition','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.server.signature','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml.server.signature.keyinfo.ext','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','saml_force_name_id_format','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','tls.client.certificate.bound.access.tokens','false'),('bf8007e6-1073-4601-a0c9-08cade1429a7','use.refresh.tokens','true'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','access.token.lifespan','86400'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','acr.loa.map','{}'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','backchannel.logout.revoke.offline.tokens','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','backchannel.logout.session.required','true'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','client.secret.creation.time','1718092530'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','client.session.idle.timeout','86400'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','client.session.max.lifespan','86400'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','client_credentials.use_refresh_token','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','display.on.consent.screen','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','exclude.session.state.from.auth.response','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','frontchannel.logout.session.required','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','id.token.as.detached.signature','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','oauth2.device.authorization.grant.enabled','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','oidc.ciba.grant.enabled','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','require.pushed.authorization.requests','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.allow.ecp.flow','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.artifact.binding','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.assertion.signature','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.authnstatement','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.client.signature','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.encrypt','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.force.post.binding','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.multivalued.roles','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.onetimeuse.condition','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.server.signature','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml.server.signature.keyinfo.ext','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','saml_force_name_id_format','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','tls.client.certificate.bound.access.tokens','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','token.response.type.bearer.lower-case','false'),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','use.refresh.tokens','true'),('c6babb0a-496d-4e92-85c6-611beae756a7','pkce.code.challenge.method','S256'),('c6babb0a-496d-4e92-85c6-611beae756a7','post.logout.redirect.uris','+'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','backchannel.logout.revoke.offline.tokens','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','backchannel.logout.session.required','true'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','client.secret.creation.time','1718092456'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','client_credentials.use_refresh_token','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','display.on.consent.screen','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','exclude.session.state.from.auth.response','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','id.token.as.detached.signature','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','oauth2.device.authorization.grant.enabled','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','oidc.ciba.grant.enabled','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','post.logout.redirect.uris','/*'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','require.pushed.authorization.requests','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.artifact.binding','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.assertion.signature','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.authnstatement','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.client.signature','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.encrypt','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.force.post.binding','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.multivalued.roles','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.onetimeuse.condition','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.server.signature','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml.server.signature.keyinfo.ext','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','saml_force_name_id_format','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','tls.client.certificate.bound.access.tokens','false'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','use.refresh.tokens','true'),('d1208074-d243-4b06-b130-e8903e23c164','access.token.lifespan','86400'),('d1208074-d243-4b06-b130-e8903e23c164','acr.loa.map','{}'),('d1208074-d243-4b06-b130-e8903e23c164','backchannel.logout.revoke.offline.tokens','false'),('d1208074-d243-4b06-b130-e8903e23c164','backchannel.logout.session.required','true'),('d1208074-d243-4b06-b130-e8903e23c164','client.secret.creation.time','1718092418'),('d1208074-d243-4b06-b130-e8903e23c164','client.session.idle.timeout','86400'),('d1208074-d243-4b06-b130-e8903e23c164','client.session.max.lifespan','86400'),('d1208074-d243-4b06-b130-e8903e23c164','client_credentials.use_refresh_token','false'),('d1208074-d243-4b06-b130-e8903e23c164','display.on.consent.screen','false'),('d1208074-d243-4b06-b130-e8903e23c164','exclude.session.state.from.auth.response','false'),('d1208074-d243-4b06-b130-e8903e23c164','frontchannel.logout.session.required','false'),('d1208074-d243-4b06-b130-e8903e23c164','id.token.as.detached.signature','false'),('d1208074-d243-4b06-b130-e8903e23c164','oauth2.device.authorization.grant.enabled','false'),('d1208074-d243-4b06-b130-e8903e23c164','oidc.ciba.grant.enabled','false'),('d1208074-d243-4b06-b130-e8903e23c164','require.pushed.authorization.requests','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.allow.ecp.flow','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.artifact.binding','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.assertion.signature','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.authnstatement','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.client.signature','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.encrypt','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.force.post.binding','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.multivalued.roles','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.onetimeuse.condition','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.server.signature','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml.server.signature.keyinfo.ext','false'),('d1208074-d243-4b06-b130-e8903e23c164','saml_force_name_id_format','false'),('d1208074-d243-4b06-b130-e8903e23c164','tls.client.certificate.bound.access.tokens','false'),('d1208074-d243-4b06-b130-e8903e23c164','token.response.type.bearer.lower-case','false'),('d1208074-d243-4b06-b130-e8903e23c164','use.refresh.tokens','true'),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','pkce.code.challenge.method','S256'),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','post.logout.redirect.uris','+'),('dad4e868-b37f-487c-a2ce-4167b11eee94','pkce.code.challenge.method','S256'),('dad4e868-b37f-487c-a2ce-4167b11eee94','post.logout.redirect.uris','+'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','backchannel.logout.revoke.offline.tokens','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','backchannel.logout.session.required','true'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','client.secret.creation.time','1718092296'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','client_credentials.use_refresh_token','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','display.on.consent.screen','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','exclude.session.state.from.auth.response','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','id.token.as.detached.signature','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','oauth2.device.authorization.grant.enabled','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','oidc.ciba.grant.enabled','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','require.pushed.authorization.requests','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.artifact.binding','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.assertion.signature','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.authnstatement','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.client.signature','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.encrypt','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.force.post.binding','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.multivalued.roles','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.onetimeuse.condition','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.server.signature','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml.server.signature.keyinfo.ext','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','saml_force_name_id_format','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','tls.client.certificate.bound.access.tokens','false'),('e0462c55-5a6f-4483-a3e0-f29f62c49372','use.refresh.tokens','true'),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','pkce.code.challenge.method','S256'),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','post.logout.redirect.uris','+'),('f1d6454e-446c-46d9-851d-96c5b7dc2028','post.logout.redirect.uris','+');
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
INSERT INTO `CLIENT_SCOPE` VALUES ('0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851','roles','org4','OpenID Connect scope for add user roles to the access token','openid-connect'),('0b94892e-9e58-47b2-8447-f213bc03f6e4','web-origins','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('0b99a66e-5c55-43f1-92f2-f5f4b702e9f2','roles','org2','OpenID Connect scope for add user roles to the access token','openid-connect'),('0baaae03-bfe0-4148-bc23-4ad0f3d80635','web-origins','org4','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6','acr','org1','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('0be19014-1c0d-4152-b37b-c808886cdb6a','roles','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect scope for add user roles to the access token','openid-connect'),('154c6e3c-583a-436a-bea3-868ad9529231','profile','org3','OpenID Connect built-in scope: profile','openid-connect'),('1913575d-0713-4f7f-93b9-6bbefbbeb7c2','microprofile-jwt','org2','Microprofile - JWT built-in scope','openid-connect'),('20755911-e07f-4675-ba9d-22857f0dadba','acr','org5','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('20f406c0-99dc-441e-b7a2-97b06b0e1298','role_list','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','SAML role list','saml'),('2d9f35af-d7ae-4006-9cec-342aab5e52b6','profile','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect built-in scope: profile','openid-connect'),('2da90022-c8c9-4a29-b12b-3d3c53890415','role_list','org5','SAML role list','saml'),('305f90dc-c040-4876-be8d-927e6480871c','profile','org2','OpenID Connect built-in scope: profile','openid-connect'),('30725276-fb09-4156-9798-2e7c61f7e716','phone','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect built-in scope: phone','openid-connect'),('323fbaa1-c399-4104-a5a7-e54d12a7dbdb','email','org1','OpenID Connect built-in scope: email','openid-connect'),('33d22077-670d-45df-b02a-ce07348bffe1','email','org2','OpenID Connect built-in scope: email','openid-connect'),('3e871eb6-f47d-44c7-aa49-a26c36e95e14','phone','org1','OpenID Connect built-in scope: phone','openid-connect'),('45fcd8a9-a88c-40cf-bedf-40a1addb0eda','offline_access','org5','OpenID Connect built-in scope: offline_access','openid-connect'),('485647c0-dd59-4165-9bcd-70f4f528e535','profile','org4','OpenID Connect built-in scope: profile','openid-connect'),('53fdf9ba-8810-41f4-a6ce-798b6ccffe82','web-origins','org5','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('57f7535d-04f4-406d-bfc4-b7c07338e7c2','microprofile-jwt','org1','Microprofile - JWT built-in scope','openid-connect'),('6511f452-404a-42ff-b80b-1609a3071a2f','roles','org3','OpenID Connect scope for add user roles to the access token','openid-connect'),('673cb4c8-23d5-454c-baf0-b7c16e5c0be4','microprofile-jwt','org3','Microprofile - JWT built-in scope','openid-connect'),('71f0460a-c62c-487d-b4bc-fc8e5b251875','email','org4','OpenID Connect built-in scope: email','openid-connect'),('72602d07-9227-45cc-ad33-184c3b5d6842','web-origins','org1','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('77829d29-fedd-432c-acc8-97ce6929a235','phone','org5','OpenID Connect built-in scope: phone','openid-connect'),('804d9042-2fbe-42be-adb1-0f40db9b2cdb','role_list','org3','SAML role list','saml'),('82d4a4e1-4b4a-4f93-a7b5-899c13458029','roles','org1','OpenID Connect scope for add user roles to the access token','openid-connect'),('8d65bac4-f301-4a92-90ab-d416c017c483','role_list','org1','SAML role list','saml'),('8fd7c839-cb22-48ee-9885-f193a762d6a3','offline_access','org3','OpenID Connect built-in scope: offline_access','openid-connect'),('8ffe7b02-43f3-4fa1-8855-90c875498ea3','address','org3','OpenID Connect built-in scope: address','openid-connect'),('90343a88-d2b0-4ddd-86b0-9c579ef91e94','acr','org3','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('9227aa9e-4d64-4182-b56b-2daace9c0c62','address','org5','OpenID Connect built-in scope: address','openid-connect'),('9267389c-23df-48f9-a249-6af9f4299a93','profile','org5','OpenID Connect built-in scope: profile','openid-connect'),('99ab913f-21c5-424a-ad97-3b37a3a33e4f','microprofile-jwt','org4','Microprofile - JWT built-in scope','openid-connect'),('9b7c4bc2-ca16-4013-9009-a0b11e3ca335','phone','org3','OpenID Connect built-in scope: phone','openid-connect'),('a0344685-3ee2-4615-8e41-2ecbc175ce1d','roles','org5','OpenID Connect scope for add user roles to the access token','openid-connect'),('a8cf93aa-c8a3-4f03-be5b-37393ac0b596','acr','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('aa23872e-f763-4c18-a29c-3e1212b0f8cb','microprofile-jwt','org5','Microprofile - JWT built-in scope','openid-connect'),('ad565ca3-41c9-4fdf-ba00-530746bc63b5','offline_access','org4','OpenID Connect built-in scope: offline_access','openid-connect'),('b0a5c4c8-aaef-4281-b4d7-2dce2682649f','email','org5','OpenID Connect built-in scope: email','openid-connect'),('b658a21c-e30b-4466-b69a-6d66f6653096','address','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect built-in scope: address','openid-connect'),('b778a33b-f425-484d-9af8-37cc97260c97','profile','org1','OpenID Connect built-in scope: profile','openid-connect'),('b95e4dae-da52-4cf7-932d-8cecf3ebc3ee','offline_access','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect built-in scope: offline_access','openid-connect'),('b9a83b54-a758-41f1-b6c2-61a6303e5d9c','address','org2','OpenID Connect built-in scope: address','openid-connect'),('bc9bf6ac-1e5d-4df8-8499-6235e5141475','offline_access','org1','OpenID Connect built-in scope: offline_access','openid-connect'),('bdeb9b62-44a6-4246-9d40-fd6d93961580','web-origins','org3','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('bfb2a3ba-0b3a-447b-ad73-49baa1254abd','email','org3','OpenID Connect built-in scope: email','openid-connect'),('bfba3540-465d-4d04-8cfb-9bffeaa35d9c','phone','org2','OpenID Connect built-in scope: phone','openid-connect'),('c139e392-3e2d-4018-b891-5e39cd4fa0be','web-origins','org2','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('c874efb6-2c51-4346-ae9a-db573bd14a78','email','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','OpenID Connect built-in scope: email','openid-connect'),('d2980a26-3bbf-4a8b-95af-6590b9db5dd5','phone','org4','OpenID Connect built-in scope: phone','openid-connect'),('da627770-e761-427c-9aa4-be4a9dc4dd03','acr','org4','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('db1118d3-c8ff-426d-8125-ac28a3d4b7e7','acr','org2','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('e1acb0b8-445e-4689-a20e-e8cb12bebb50','microprofile-jwt','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','Microprofile - JWT built-in scope','openid-connect'),('ed0e40a7-1857-4290-abea-5b880cf8b330','role_list','org4','SAML role list','saml'),('f15a0d16-2882-4b13-b3a4-0d97cf581402','address','org4','OpenID Connect built-in scope: address','openid-connect'),('f594cb59-0851-4d36-b086-b94cd84d5bb8','address','org1','OpenID Connect built-in scope: address','openid-connect'),('ff95bdda-b020-4379-9e71-6985bf18c2eb','role_list','org2','SAML role list','saml'),('ffde2b1e-eb79-4407-b7d1-655dfe7df51e','offline_access','org2','OpenID Connect built-in scope: offline_access','openid-connect');
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
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851','${rolesScopeConsentText}','consent.screen.text'),('0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851','true','display.on.consent.screen'),('0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851','false','include.in.token.scope'),('0b94892e-9e58-47b2-8447-f213bc03f6e4','','consent.screen.text'),('0b94892e-9e58-47b2-8447-f213bc03f6e4','false','display.on.consent.screen'),('0b94892e-9e58-47b2-8447-f213bc03f6e4','false','include.in.token.scope'),('0b99a66e-5c55-43f1-92f2-f5f4b702e9f2','${rolesScopeConsentText}','consent.screen.text'),('0b99a66e-5c55-43f1-92f2-f5f4b702e9f2','true','display.on.consent.screen'),('0b99a66e-5c55-43f1-92f2-f5f4b702e9f2','false','include.in.token.scope'),('0baaae03-bfe0-4148-bc23-4ad0f3d80635','','consent.screen.text'),('0baaae03-bfe0-4148-bc23-4ad0f3d80635','false','display.on.consent.screen'),('0baaae03-bfe0-4148-bc23-4ad0f3d80635','false','include.in.token.scope'),('0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6','false','display.on.consent.screen'),('0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6','false','include.in.token.scope'),('0be19014-1c0d-4152-b37b-c808886cdb6a','${rolesScopeConsentText}','consent.screen.text'),('0be19014-1c0d-4152-b37b-c808886cdb6a','true','display.on.consent.screen'),('0be19014-1c0d-4152-b37b-c808886cdb6a','false','include.in.token.scope'),('154c6e3c-583a-436a-bea3-868ad9529231','${profileScopeConsentText}','consent.screen.text'),('154c6e3c-583a-436a-bea3-868ad9529231','true','display.on.consent.screen'),('154c6e3c-583a-436a-bea3-868ad9529231','true','include.in.token.scope'),('1913575d-0713-4f7f-93b9-6bbefbbeb7c2','false','display.on.consent.screen'),('1913575d-0713-4f7f-93b9-6bbefbbeb7c2','true','include.in.token.scope'),('20755911-e07f-4675-ba9d-22857f0dadba','false','display.on.consent.screen'),('20755911-e07f-4675-ba9d-22857f0dadba','false','include.in.token.scope'),('20f406c0-99dc-441e-b7a2-97b06b0e1298','${samlRoleListScopeConsentText}','consent.screen.text'),('20f406c0-99dc-441e-b7a2-97b06b0e1298','true','display.on.consent.screen'),('2d9f35af-d7ae-4006-9cec-342aab5e52b6','${profileScopeConsentText}','consent.screen.text'),('2d9f35af-d7ae-4006-9cec-342aab5e52b6','true','display.on.consent.screen'),('2d9f35af-d7ae-4006-9cec-342aab5e52b6','true','include.in.token.scope'),('2da90022-c8c9-4a29-b12b-3d3c53890415','${samlRoleListScopeConsentText}','consent.screen.text'),('2da90022-c8c9-4a29-b12b-3d3c53890415','true','display.on.consent.screen'),('305f90dc-c040-4876-be8d-927e6480871c','${profileScopeConsentText}','consent.screen.text'),('305f90dc-c040-4876-be8d-927e6480871c','true','display.on.consent.screen'),('305f90dc-c040-4876-be8d-927e6480871c','true','include.in.token.scope'),('30725276-fb09-4156-9798-2e7c61f7e716','${phoneScopeConsentText}','consent.screen.text'),('30725276-fb09-4156-9798-2e7c61f7e716','true','display.on.consent.screen'),('30725276-fb09-4156-9798-2e7c61f7e716','true','include.in.token.scope'),('323fbaa1-c399-4104-a5a7-e54d12a7dbdb','${emailScopeConsentText}','consent.screen.text'),('323fbaa1-c399-4104-a5a7-e54d12a7dbdb','true','display.on.consent.screen'),('323fbaa1-c399-4104-a5a7-e54d12a7dbdb','true','include.in.token.scope'),('33d22077-670d-45df-b02a-ce07348bffe1','${emailScopeConsentText}','consent.screen.text'),('33d22077-670d-45df-b02a-ce07348bffe1','true','display.on.consent.screen'),('33d22077-670d-45df-b02a-ce07348bffe1','true','include.in.token.scope'),('3e871eb6-f47d-44c7-aa49-a26c36e95e14','${phoneScopeConsentText}','consent.screen.text'),('3e871eb6-f47d-44c7-aa49-a26c36e95e14','true','display.on.consent.screen'),('3e871eb6-f47d-44c7-aa49-a26c36e95e14','true','include.in.token.scope'),('45fcd8a9-a88c-40cf-bedf-40a1addb0eda','${offlineAccessScopeConsentText}','consent.screen.text'),('45fcd8a9-a88c-40cf-bedf-40a1addb0eda','true','display.on.consent.screen'),('485647c0-dd59-4165-9bcd-70f4f528e535','${profileScopeConsentText}','consent.screen.text'),('485647c0-dd59-4165-9bcd-70f4f528e535','true','display.on.consent.screen'),('485647c0-dd59-4165-9bcd-70f4f528e535','true','include.in.token.scope'),('53fdf9ba-8810-41f4-a6ce-798b6ccffe82','','consent.screen.text'),('53fdf9ba-8810-41f4-a6ce-798b6ccffe82','false','display.on.consent.screen'),('53fdf9ba-8810-41f4-a6ce-798b6ccffe82','false','include.in.token.scope'),('57f7535d-04f4-406d-bfc4-b7c07338e7c2','false','display.on.consent.screen'),('57f7535d-04f4-406d-bfc4-b7c07338e7c2','true','include.in.token.scope'),('6511f452-404a-42ff-b80b-1609a3071a2f','${rolesScopeConsentText}','consent.screen.text'),('6511f452-404a-42ff-b80b-1609a3071a2f','true','display.on.consent.screen'),('6511f452-404a-42ff-b80b-1609a3071a2f','false','include.in.token.scope'),('673cb4c8-23d5-454c-baf0-b7c16e5c0be4','false','display.on.consent.screen'),('673cb4c8-23d5-454c-baf0-b7c16e5c0be4','true','include.in.token.scope'),('71f0460a-c62c-487d-b4bc-fc8e5b251875','${emailScopeConsentText}','consent.screen.text'),('71f0460a-c62c-487d-b4bc-fc8e5b251875','true','display.on.consent.screen'),('71f0460a-c62c-487d-b4bc-fc8e5b251875','true','include.in.token.scope'),('72602d07-9227-45cc-ad33-184c3b5d6842','','consent.screen.text'),('72602d07-9227-45cc-ad33-184c3b5d6842','false','display.on.consent.screen'),('72602d07-9227-45cc-ad33-184c3b5d6842','false','include.in.token.scope'),('77829d29-fedd-432c-acc8-97ce6929a235','${phoneScopeConsentText}','consent.screen.text'),('77829d29-fedd-432c-acc8-97ce6929a235','true','display.on.consent.screen'),('77829d29-fedd-432c-acc8-97ce6929a235','true','include.in.token.scope'),('804d9042-2fbe-42be-adb1-0f40db9b2cdb','${samlRoleListScopeConsentText}','consent.screen.text'),('804d9042-2fbe-42be-adb1-0f40db9b2cdb','true','display.on.consent.screen'),('82d4a4e1-4b4a-4f93-a7b5-899c13458029','${rolesScopeConsentText}','consent.screen.text'),('82d4a4e1-4b4a-4f93-a7b5-899c13458029','true','display.on.consent.screen'),('82d4a4e1-4b4a-4f93-a7b5-899c13458029','false','include.in.token.scope'),('8d65bac4-f301-4a92-90ab-d416c017c483','${samlRoleListScopeConsentText}','consent.screen.text'),('8d65bac4-f301-4a92-90ab-d416c017c483','true','display.on.consent.screen'),('8fd7c839-cb22-48ee-9885-f193a762d6a3','${offlineAccessScopeConsentText}','consent.screen.text'),('8fd7c839-cb22-48ee-9885-f193a762d6a3','true','display.on.consent.screen'),('8ffe7b02-43f3-4fa1-8855-90c875498ea3','${addressScopeConsentText}','consent.screen.text'),('8ffe7b02-43f3-4fa1-8855-90c875498ea3','true','display.on.consent.screen'),('8ffe7b02-43f3-4fa1-8855-90c875498ea3','true','include.in.token.scope'),('90343a88-d2b0-4ddd-86b0-9c579ef91e94','false','display.on.consent.screen'),('90343a88-d2b0-4ddd-86b0-9c579ef91e94','false','include.in.token.scope'),('9227aa9e-4d64-4182-b56b-2daace9c0c62','${addressScopeConsentText}','consent.screen.text'),('9227aa9e-4d64-4182-b56b-2daace9c0c62','true','display.on.consent.screen'),('9227aa9e-4d64-4182-b56b-2daace9c0c62','true','include.in.token.scope'),('9267389c-23df-48f9-a249-6af9f4299a93','${profileScopeConsentText}','consent.screen.text'),('9267389c-23df-48f9-a249-6af9f4299a93','true','display.on.consent.screen'),('9267389c-23df-48f9-a249-6af9f4299a93','true','include.in.token.scope'),('99ab913f-21c5-424a-ad97-3b37a3a33e4f','false','display.on.consent.screen'),('99ab913f-21c5-424a-ad97-3b37a3a33e4f','true','include.in.token.scope'),('9b7c4bc2-ca16-4013-9009-a0b11e3ca335','${phoneScopeConsentText}','consent.screen.text'),('9b7c4bc2-ca16-4013-9009-a0b11e3ca335','true','display.on.consent.screen'),('9b7c4bc2-ca16-4013-9009-a0b11e3ca335','true','include.in.token.scope'),('a0344685-3ee2-4615-8e41-2ecbc175ce1d','${rolesScopeConsentText}','consent.screen.text'),('a0344685-3ee2-4615-8e41-2ecbc175ce1d','true','display.on.consent.screen'),('a0344685-3ee2-4615-8e41-2ecbc175ce1d','false','include.in.token.scope'),('a8cf93aa-c8a3-4f03-be5b-37393ac0b596','false','display.on.consent.screen'),('a8cf93aa-c8a3-4f03-be5b-37393ac0b596','false','include.in.token.scope'),('aa23872e-f763-4c18-a29c-3e1212b0f8cb','false','display.on.consent.screen'),('aa23872e-f763-4c18-a29c-3e1212b0f8cb','true','include.in.token.scope'),('ad565ca3-41c9-4fdf-ba00-530746bc63b5','${offlineAccessScopeConsentText}','consent.screen.text'),('ad565ca3-41c9-4fdf-ba00-530746bc63b5','true','display.on.consent.screen'),('b0a5c4c8-aaef-4281-b4d7-2dce2682649f','${emailScopeConsentText}','consent.screen.text'),('b0a5c4c8-aaef-4281-b4d7-2dce2682649f','true','display.on.consent.screen'),('b0a5c4c8-aaef-4281-b4d7-2dce2682649f','true','include.in.token.scope'),('b658a21c-e30b-4466-b69a-6d66f6653096','${addressScopeConsentText}','consent.screen.text'),('b658a21c-e30b-4466-b69a-6d66f6653096','true','display.on.consent.screen'),('b658a21c-e30b-4466-b69a-6d66f6653096','true','include.in.token.scope'),('b778a33b-f425-484d-9af8-37cc97260c97','${profileScopeConsentText}','consent.screen.text'),('b778a33b-f425-484d-9af8-37cc97260c97','true','display.on.consent.screen'),('b778a33b-f425-484d-9af8-37cc97260c97','true','include.in.token.scope'),('b95e4dae-da52-4cf7-932d-8cecf3ebc3ee','${offlineAccessScopeConsentText}','consent.screen.text'),('b95e4dae-da52-4cf7-932d-8cecf3ebc3ee','true','display.on.consent.screen'),('b9a83b54-a758-41f1-b6c2-61a6303e5d9c','${addressScopeConsentText}','consent.screen.text'),('b9a83b54-a758-41f1-b6c2-61a6303e5d9c','true','display.on.consent.screen'),('b9a83b54-a758-41f1-b6c2-61a6303e5d9c','true','include.in.token.scope'),('bc9bf6ac-1e5d-4df8-8499-6235e5141475','${offlineAccessScopeConsentText}','consent.screen.text'),('bc9bf6ac-1e5d-4df8-8499-6235e5141475','true','display.on.consent.screen'),('bdeb9b62-44a6-4246-9d40-fd6d93961580','','consent.screen.text'),('bdeb9b62-44a6-4246-9d40-fd6d93961580','false','display.on.consent.screen'),('bdeb9b62-44a6-4246-9d40-fd6d93961580','false','include.in.token.scope'),('bfb2a3ba-0b3a-447b-ad73-49baa1254abd','${emailScopeConsentText}','consent.screen.text'),('bfb2a3ba-0b3a-447b-ad73-49baa1254abd','true','display.on.consent.screen'),('bfb2a3ba-0b3a-447b-ad73-49baa1254abd','true','include.in.token.scope'),('bfba3540-465d-4d04-8cfb-9bffeaa35d9c','${phoneScopeConsentText}','consent.screen.text'),('bfba3540-465d-4d04-8cfb-9bffeaa35d9c','true','display.on.consent.screen'),('bfba3540-465d-4d04-8cfb-9bffeaa35d9c','true','include.in.token.scope'),('c139e392-3e2d-4018-b891-5e39cd4fa0be','','consent.screen.text'),('c139e392-3e2d-4018-b891-5e39cd4fa0be','false','display.on.consent.screen'),('c139e392-3e2d-4018-b891-5e39cd4fa0be','false','include.in.token.scope'),('c874efb6-2c51-4346-ae9a-db573bd14a78','${emailScopeConsentText}','consent.screen.text'),('c874efb6-2c51-4346-ae9a-db573bd14a78','true','display.on.consent.screen'),('c874efb6-2c51-4346-ae9a-db573bd14a78','true','include.in.token.scope'),('d2980a26-3bbf-4a8b-95af-6590b9db5dd5','${phoneScopeConsentText}','consent.screen.text'),('d2980a26-3bbf-4a8b-95af-6590b9db5dd5','true','display.on.consent.screen'),('d2980a26-3bbf-4a8b-95af-6590b9db5dd5','true','include.in.token.scope'),('da627770-e761-427c-9aa4-be4a9dc4dd03','false','display.on.consent.screen'),('da627770-e761-427c-9aa4-be4a9dc4dd03','false','include.in.token.scope'),('db1118d3-c8ff-426d-8125-ac28a3d4b7e7','false','display.on.consent.screen'),('db1118d3-c8ff-426d-8125-ac28a3d4b7e7','false','include.in.token.scope'),('e1acb0b8-445e-4689-a20e-e8cb12bebb50','false','display.on.consent.screen'),('e1acb0b8-445e-4689-a20e-e8cb12bebb50','true','include.in.token.scope'),('ed0e40a7-1857-4290-abea-5b880cf8b330','${samlRoleListScopeConsentText}','consent.screen.text'),('ed0e40a7-1857-4290-abea-5b880cf8b330','true','display.on.consent.screen'),('f15a0d16-2882-4b13-b3a4-0d97cf581402','${addressScopeConsentText}','consent.screen.text'),('f15a0d16-2882-4b13-b3a4-0d97cf581402','true','display.on.consent.screen'),('f15a0d16-2882-4b13-b3a4-0d97cf581402','true','include.in.token.scope'),('f594cb59-0851-4d36-b086-b94cd84d5bb8','${addressScopeConsentText}','consent.screen.text'),('f594cb59-0851-4d36-b086-b94cd84d5bb8','true','display.on.consent.screen'),('f594cb59-0851-4d36-b086-b94cd84d5bb8','true','include.in.token.scope'),('ff95bdda-b020-4379-9e71-6985bf18c2eb','${samlRoleListScopeConsentText}','consent.screen.text'),('ff95bdda-b020-4379-9e71-6985bf18c2eb','true','display.on.consent.screen'),('ffde2b1e-eb79-4407-b7d1-655dfe7df51e','${offlineAccessScopeConsentText}','consent.screen.text'),('ffde2b1e-eb79-4407-b7d1-655dfe7df51e','true','display.on.consent.screen');
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
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('01103599-34e5-49a6-bc69-221206c33e45','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('01103599-34e5-49a6-bc69-221206c33e45','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('01103599-34e5-49a6-bc69-221206c33e45','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('01103599-34e5-49a6-bc69-221206c33e45','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('01103599-34e5-49a6-bc69-221206c33e45','72602d07-9227-45cc-ad33-184c3b5d6842',1),('01103599-34e5-49a6-bc69-221206c33e45','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('01103599-34e5-49a6-bc69-221206c33e45','b778a33b-f425-484d-9af8-37cc97260c97',1),('01103599-34e5-49a6-bc69-221206c33e45','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('01103599-34e5-49a6-bc69-221206c33e45','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','30725276-fb09-4156-9798-2e7c61f7e716',0),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','b658a21c-e30b-4466-b69a-6d66f6653096',0),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','154c6e3c-583a-436a-bea3-868ad9529231',1),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','6511f452-404a-42ff-b80b-1609a3071a2f',1),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('04787d7f-e0b5-4795-85b0-5eec4a7b36b4','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('06a57e63-21df-40a5-962a-05f14882f954','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('06a57e63-21df-40a5-962a-05f14882f954','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('06a57e63-21df-40a5-962a-05f14882f954','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('06a57e63-21df-40a5-962a-05f14882f954','30725276-fb09-4156-9798-2e7c61f7e716',0),('06a57e63-21df-40a5-962a-05f14882f954','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('06a57e63-21df-40a5-962a-05f14882f954','b658a21c-e30b-4466-b69a-6d66f6653096',0),('06a57e63-21df-40a5-962a-05f14882f954','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('06a57e63-21df-40a5-962a-05f14882f954','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('06a57e63-21df-40a5-962a-05f14882f954','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('07381026-d956-456b-acc1-30a424f8030e','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('07381026-d956-456b-acc1-30a424f8030e','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('07381026-d956-456b-acc1-30a424f8030e','485647c0-dd59-4165-9bcd-70f4f528e535',1),('07381026-d956-456b-acc1-30a424f8030e','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('07381026-d956-456b-acc1-30a424f8030e','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('07381026-d956-456b-acc1-30a424f8030e','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('07381026-d956-456b-acc1-30a424f8030e','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('07381026-d956-456b-acc1-30a424f8030e','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('07381026-d956-456b-acc1-30a424f8030e','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('0ea7620f-ec2c-42d3-afdd-50a344c16891','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('0ea7620f-ec2c-42d3-afdd-50a344c16891','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('0ea7620f-ec2c-42d3-afdd-50a344c16891','485647c0-dd59-4165-9bcd-70f4f528e535',1),('0ea7620f-ec2c-42d3-afdd-50a344c16891','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('0ea7620f-ec2c-42d3-afdd-50a344c16891','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('0ea7620f-ec2c-42d3-afdd-50a344c16891','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('0ea7620f-ec2c-42d3-afdd-50a344c16891','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('0ea7620f-ec2c-42d3-afdd-50a344c16891','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('0ea7620f-ec2c-42d3-afdd-50a344c16891','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('10f7c620-c6e1-4100-b70a-5d8812e091a8','154c6e3c-583a-436a-bea3-868ad9529231',1),('10f7c620-c6e1-4100-b70a-5d8812e091a8','6511f452-404a-42ff-b80b-1609a3071a2f',1),('10f7c620-c6e1-4100-b70a-5d8812e091a8','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('10f7c620-c6e1-4100-b70a-5d8812e091a8','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('10f7c620-c6e1-4100-b70a-5d8812e091a8','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('10f7c620-c6e1-4100-b70a-5d8812e091a8','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('10f7c620-c6e1-4100-b70a-5d8812e091a8','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('10f7c620-c6e1-4100-b70a-5d8812e091a8','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('10f7c620-c6e1-4100-b70a-5d8812e091a8','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('128c1c6c-31a7-441f-adeb-1eeea294d721','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('128c1c6c-31a7-441f-adeb-1eeea294d721','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('128c1c6c-31a7-441f-adeb-1eeea294d721','305f90dc-c040-4876-be8d-927e6480871c',1),('128c1c6c-31a7-441f-adeb-1eeea294d721','33d22077-670d-45df-b02a-ce07348bffe1',1),('128c1c6c-31a7-441f-adeb-1eeea294d721','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('128c1c6c-31a7-441f-adeb-1eeea294d721','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('128c1c6c-31a7-441f-adeb-1eeea294d721','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('128c1c6c-31a7-441f-adeb-1eeea294d721','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('128c1c6c-31a7-441f-adeb-1eeea294d721','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('134ce669-a77a-44d8-82aa-deab11e2b408','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('134ce669-a77a-44d8-82aa-deab11e2b408','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('134ce669-a77a-44d8-82aa-deab11e2b408','485647c0-dd59-4165-9bcd-70f4f528e535',1),('134ce669-a77a-44d8-82aa-deab11e2b408','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('134ce669-a77a-44d8-82aa-deab11e2b408','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('134ce669-a77a-44d8-82aa-deab11e2b408','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('134ce669-a77a-44d8-82aa-deab11e2b408','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('134ce669-a77a-44d8-82aa-deab11e2b408','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('134ce669-a77a-44d8-82aa-deab11e2b408','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('14038227-ac31-459b-a41c-96afd45ed7c2','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('14038227-ac31-459b-a41c-96afd45ed7c2','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('14038227-ac31-459b-a41c-96afd45ed7c2','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('14038227-ac31-459b-a41c-96afd45ed7c2','72602d07-9227-45cc-ad33-184c3b5d6842',1),('14038227-ac31-459b-a41c-96afd45ed7c2','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('14038227-ac31-459b-a41c-96afd45ed7c2','b778a33b-f425-484d-9af8-37cc97260c97',1),('14038227-ac31-459b-a41c-96afd45ed7c2','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('14038227-ac31-459b-a41c-96afd45ed7c2','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('178c0867-4708-4b1b-8a6e-ee2498d519cf','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('178c0867-4708-4b1b-8a6e-ee2498d519cf','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('178c0867-4708-4b1b-8a6e-ee2498d519cf','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('178c0867-4708-4b1b-8a6e-ee2498d519cf','30725276-fb09-4156-9798-2e7c61f7e716',0),('178c0867-4708-4b1b-8a6e-ee2498d519cf','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('178c0867-4708-4b1b-8a6e-ee2498d519cf','b658a21c-e30b-4466-b69a-6d66f6653096',0),('178c0867-4708-4b1b-8a6e-ee2498d519cf','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('178c0867-4708-4b1b-8a6e-ee2498d519cf','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('178c0867-4708-4b1b-8a6e-ee2498d519cf','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('1fc28088-5430-49fe-b074-0e675272dc2f','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('1fc28088-5430-49fe-b074-0e675272dc2f','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('1fc28088-5430-49fe-b074-0e675272dc2f','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('1fc28088-5430-49fe-b074-0e675272dc2f','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('1fc28088-5430-49fe-b074-0e675272dc2f','72602d07-9227-45cc-ad33-184c3b5d6842',1),('1fc28088-5430-49fe-b074-0e675272dc2f','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('1fc28088-5430-49fe-b074-0e675272dc2f','b778a33b-f425-484d-9af8-37cc97260c97',1),('1fc28088-5430-49fe-b074-0e675272dc2f','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('1fc28088-5430-49fe-b074-0e675272dc2f','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('25896459-9af1-4f23-81b3-e5ad98e44547','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('25896459-9af1-4f23-81b3-e5ad98e44547','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('25896459-9af1-4f23-81b3-e5ad98e44547','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('25896459-9af1-4f23-81b3-e5ad98e44547','30725276-fb09-4156-9798-2e7c61f7e716',0),('25896459-9af1-4f23-81b3-e5ad98e44547','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('25896459-9af1-4f23-81b3-e5ad98e44547','b658a21c-e30b-4466-b69a-6d66f6653096',0),('25896459-9af1-4f23-81b3-e5ad98e44547','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('25896459-9af1-4f23-81b3-e5ad98e44547','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('25896459-9af1-4f23-81b3-e5ad98e44547','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','305f90dc-c040-4876-be8d-927e6480871c',1),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','33d22077-670d-45df-b02a-ce07348bffe1',1),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('25d0f35e-cf72-47bb-8999-6285c9b9e2bd','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','72602d07-9227-45cc-ad33-184c3b5d6842',1),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','b778a33b-f425-484d-9af8-37cc97260c97',1),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('33604388-f0ec-44ed-901c-747a43154e6c','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('33604388-f0ec-44ed-901c-747a43154e6c','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('33604388-f0ec-44ed-901c-747a43154e6c','305f90dc-c040-4876-be8d-927e6480871c',1),('33604388-f0ec-44ed-901c-747a43154e6c','33d22077-670d-45df-b02a-ce07348bffe1',1),('33604388-f0ec-44ed-901c-747a43154e6c','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('33604388-f0ec-44ed-901c-747a43154e6c','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('33604388-f0ec-44ed-901c-747a43154e6c','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('33604388-f0ec-44ed-901c-747a43154e6c','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','20755911-e07f-4675-ba9d-22857f0dadba',1),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','77829d29-fedd-432c-acc8-97ce6929a235',0),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','9267389c-23df-48f9-a249-6af9f4299a93',1),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('37cb7a70-29c6-49e7-ba0f-cf6e626d9dcd','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','77829d29-fedd-432c-acc8-97ce6929a235',0),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','9267389c-23df-48f9-a249-6af9f4299a93',1),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('380ba5aa-d8fd-4378-bfdd-cc930b2830d6','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('3f908ff7-2e94-4039-9ae0-86aaabf71328','20755911-e07f-4675-ba9d-22857f0dadba',1),('3f908ff7-2e94-4039-9ae0-86aaabf71328','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('3f908ff7-2e94-4039-9ae0-86aaabf71328','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('3f908ff7-2e94-4039-9ae0-86aaabf71328','77829d29-fedd-432c-acc8-97ce6929a235',0),('3f908ff7-2e94-4039-9ae0-86aaabf71328','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('3f908ff7-2e94-4039-9ae0-86aaabf71328','9267389c-23df-48f9-a249-6af9f4299a93',1),('3f908ff7-2e94-4039-9ae0-86aaabf71328','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('3f908ff7-2e94-4039-9ae0-86aaabf71328','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('3f908ff7-2e94-4039-9ae0-86aaabf71328','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('48aa244c-1748-48f0-b78d-628e5aa21076','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('48aa244c-1748-48f0-b78d-628e5aa21076','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('48aa244c-1748-48f0-b78d-628e5aa21076','77829d29-fedd-432c-acc8-97ce6929a235',0),('48aa244c-1748-48f0-b78d-628e5aa21076','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('48aa244c-1748-48f0-b78d-628e5aa21076','9267389c-23df-48f9-a249-6af9f4299a93',1),('48aa244c-1748-48f0-b78d-628e5aa21076','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('48aa244c-1748-48f0-b78d-628e5aa21076','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('48aa244c-1748-48f0-b78d-628e5aa21076','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('4a3136c6-14f2-4a86-bc94-4054f607b4be','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('4a3136c6-14f2-4a86-bc94-4054f607b4be','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('4a3136c6-14f2-4a86-bc94-4054f607b4be','485647c0-dd59-4165-9bcd-70f4f528e535',1),('4a3136c6-14f2-4a86-bc94-4054f607b4be','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('4a3136c6-14f2-4a86-bc94-4054f607b4be','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('4a3136c6-14f2-4a86-bc94-4054f607b4be','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('4a3136c6-14f2-4a86-bc94-4054f607b4be','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('4a3136c6-14f2-4a86-bc94-4054f607b4be','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('4ea8fc86-7833-4bf8-9080-436026851e62','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('4ea8fc86-7833-4bf8-9080-436026851e62','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('4ea8fc86-7833-4bf8-9080-436026851e62','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('4ea8fc86-7833-4bf8-9080-436026851e62','30725276-fb09-4156-9798-2e7c61f7e716',0),('4ea8fc86-7833-4bf8-9080-436026851e62','b658a21c-e30b-4466-b69a-6d66f6653096',0),('4ea8fc86-7833-4bf8-9080-436026851e62','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('4ea8fc86-7833-4bf8-9080-436026851e62','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('4ea8fc86-7833-4bf8-9080-436026851e62','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('53a487d5-3473-4eac-9726-7cb05343825f','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('53a487d5-3473-4eac-9726-7cb05343825f','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('53a487d5-3473-4eac-9726-7cb05343825f','485647c0-dd59-4165-9bcd-70f4f528e535',1),('53a487d5-3473-4eac-9726-7cb05343825f','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('53a487d5-3473-4eac-9726-7cb05343825f','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('53a487d5-3473-4eac-9726-7cb05343825f','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('53a487d5-3473-4eac-9726-7cb05343825f','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('53a487d5-3473-4eac-9726-7cb05343825f','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('53a487d5-3473-4eac-9726-7cb05343825f','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('5426ce24-799e-4e20-a9bd-be6fcadb0577','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('5426ce24-799e-4e20-a9bd-be6fcadb0577','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('5426ce24-799e-4e20-a9bd-be6fcadb0577','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('5426ce24-799e-4e20-a9bd-be6fcadb0577','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('5426ce24-799e-4e20-a9bd-be6fcadb0577','72602d07-9227-45cc-ad33-184c3b5d6842',1),('5426ce24-799e-4e20-a9bd-be6fcadb0577','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('5426ce24-799e-4e20-a9bd-be6fcadb0577','b778a33b-f425-484d-9af8-37cc97260c97',1),('5426ce24-799e-4e20-a9bd-be6fcadb0577','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('5426ce24-799e-4e20-a9bd-be6fcadb0577','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('55235526-77b3-45a6-8fc0-03fb5772b81f','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('55235526-77b3-45a6-8fc0-03fb5772b81f','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('55235526-77b3-45a6-8fc0-03fb5772b81f','485647c0-dd59-4165-9bcd-70f4f528e535',1),('55235526-77b3-45a6-8fc0-03fb5772b81f','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('55235526-77b3-45a6-8fc0-03fb5772b81f','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('55235526-77b3-45a6-8fc0-03fb5772b81f','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('55235526-77b3-45a6-8fc0-03fb5772b81f','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('55235526-77b3-45a6-8fc0-03fb5772b81f','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('55235526-77b3-45a6-8fc0-03fb5772b81f','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('5f239fef-3cf1-4583-85e3-904920ced19b','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('5f239fef-3cf1-4583-85e3-904920ced19b','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('5f239fef-3cf1-4583-85e3-904920ced19b','485647c0-dd59-4165-9bcd-70f4f528e535',1),('5f239fef-3cf1-4583-85e3-904920ced19b','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('5f239fef-3cf1-4583-85e3-904920ced19b','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('5f239fef-3cf1-4583-85e3-904920ced19b','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('5f239fef-3cf1-4583-85e3-904920ced19b','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('5f239fef-3cf1-4583-85e3-904920ced19b','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('5f239fef-3cf1-4583-85e3-904920ced19b','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('629de169-8395-43bf-9455-c08bd198dbde','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('629de169-8395-43bf-9455-c08bd198dbde','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('629de169-8395-43bf-9455-c08bd198dbde','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('629de169-8395-43bf-9455-c08bd198dbde','72602d07-9227-45cc-ad33-184c3b5d6842',1),('629de169-8395-43bf-9455-c08bd198dbde','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('629de169-8395-43bf-9455-c08bd198dbde','b778a33b-f425-484d-9af8-37cc97260c97',1),('629de169-8395-43bf-9455-c08bd198dbde','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('629de169-8395-43bf-9455-c08bd198dbde','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('6e5e9267-7e2e-4032-a789-225985c0bb4f','154c6e3c-583a-436a-bea3-868ad9529231',1),('6e5e9267-7e2e-4032-a789-225985c0bb4f','6511f452-404a-42ff-b80b-1609a3071a2f',1),('6e5e9267-7e2e-4032-a789-225985c0bb4f','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('6e5e9267-7e2e-4032-a789-225985c0bb4f','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('6e5e9267-7e2e-4032-a789-225985c0bb4f','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('6e5e9267-7e2e-4032-a789-225985c0bb4f','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('6e5e9267-7e2e-4032-a789-225985c0bb4f','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('6e5e9267-7e2e-4032-a789-225985c0bb4f','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('6e5e9267-7e2e-4032-a789-225985c0bb4f','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('71003c68-7412-47b5-9631-296e81eb93c1','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('71003c68-7412-47b5-9631-296e81eb93c1','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('71003c68-7412-47b5-9631-296e81eb93c1','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('71003c68-7412-47b5-9631-296e81eb93c1','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('71003c68-7412-47b5-9631-296e81eb93c1','72602d07-9227-45cc-ad33-184c3b5d6842',1),('71003c68-7412-47b5-9631-296e81eb93c1','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('71003c68-7412-47b5-9631-296e81eb93c1','b778a33b-f425-484d-9af8-37cc97260c97',1),('71003c68-7412-47b5-9631-296e81eb93c1','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('71003c68-7412-47b5-9631-296e81eb93c1','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('75799957-807f-4039-915e-f274934b3f50','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('75799957-807f-4039-915e-f274934b3f50','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('75799957-807f-4039-915e-f274934b3f50','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('75799957-807f-4039-915e-f274934b3f50','72602d07-9227-45cc-ad33-184c3b5d6842',1),('75799957-807f-4039-915e-f274934b3f50','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('75799957-807f-4039-915e-f274934b3f50','b778a33b-f425-484d-9af8-37cc97260c97',1),('75799957-807f-4039-915e-f274934b3f50','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('75799957-807f-4039-915e-f274934b3f50','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('76323179-e351-444c-97bc-583ca726a733','154c6e3c-583a-436a-bea3-868ad9529231',1),('76323179-e351-444c-97bc-583ca726a733','6511f452-404a-42ff-b80b-1609a3071a2f',1),('76323179-e351-444c-97bc-583ca726a733','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('76323179-e351-444c-97bc-583ca726a733','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('76323179-e351-444c-97bc-583ca726a733','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('76323179-e351-444c-97bc-583ca726a733','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('76323179-e351-444c-97bc-583ca726a733','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('76323179-e351-444c-97bc-583ca726a733','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('76323179-e351-444c-97bc-583ca726a733','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('7c0d7aca-f937-4a45-9828-76f05a36c281','154c6e3c-583a-436a-bea3-868ad9529231',1),('7c0d7aca-f937-4a45-9828-76f05a36c281','6511f452-404a-42ff-b80b-1609a3071a2f',1),('7c0d7aca-f937-4a45-9828-76f05a36c281','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('7c0d7aca-f937-4a45-9828-76f05a36c281','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('7c0d7aca-f937-4a45-9828-76f05a36c281','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('7c0d7aca-f937-4a45-9828-76f05a36c281','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('7c0d7aca-f937-4a45-9828-76f05a36c281','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('7c0d7aca-f937-4a45-9828-76f05a36c281','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('7c0d7aca-f937-4a45-9828-76f05a36c281','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('844d8f45-2003-4fc5-a82d-7e00eae35b87','154c6e3c-583a-436a-bea3-868ad9529231',1),('844d8f45-2003-4fc5-a82d-7e00eae35b87','6511f452-404a-42ff-b80b-1609a3071a2f',1),('844d8f45-2003-4fc5-a82d-7e00eae35b87','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('844d8f45-2003-4fc5-a82d-7e00eae35b87','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('844d8f45-2003-4fc5-a82d-7e00eae35b87','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('844d8f45-2003-4fc5-a82d-7e00eae35b87','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('844d8f45-2003-4fc5-a82d-7e00eae35b87','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('844d8f45-2003-4fc5-a82d-7e00eae35b87','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('87a260f4-ece5-4eea-94de-ba31720af864','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('87a260f4-ece5-4eea-94de-ba31720af864','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('87a260f4-ece5-4eea-94de-ba31720af864','485647c0-dd59-4165-9bcd-70f4f528e535',1),('87a260f4-ece5-4eea-94de-ba31720af864','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('87a260f4-ece5-4eea-94de-ba31720af864','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('87a260f4-ece5-4eea-94de-ba31720af864','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('87a260f4-ece5-4eea-94de-ba31720af864','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('87a260f4-ece5-4eea-94de-ba31720af864','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','485647c0-dd59-4165-9bcd-70f4f528e535',1),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('90437d83-845f-4150-8d81-4ba1d37a7624','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('90437d83-845f-4150-8d81-4ba1d37a7624','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('90437d83-845f-4150-8d81-4ba1d37a7624','305f90dc-c040-4876-be8d-927e6480871c',1),('90437d83-845f-4150-8d81-4ba1d37a7624','33d22077-670d-45df-b02a-ce07348bffe1',1),('90437d83-845f-4150-8d81-4ba1d37a7624','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('90437d83-845f-4150-8d81-4ba1d37a7624','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('90437d83-845f-4150-8d81-4ba1d37a7624','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('90437d83-845f-4150-8d81-4ba1d37a7624','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('9409a340-9f41-469d-8ecf-37785793e86e','20755911-e07f-4675-ba9d-22857f0dadba',1),('9409a340-9f41-469d-8ecf-37785793e86e','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('9409a340-9f41-469d-8ecf-37785793e86e','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('9409a340-9f41-469d-8ecf-37785793e86e','77829d29-fedd-432c-acc8-97ce6929a235',0),('9409a340-9f41-469d-8ecf-37785793e86e','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('9409a340-9f41-469d-8ecf-37785793e86e','9267389c-23df-48f9-a249-6af9f4299a93',1),('9409a340-9f41-469d-8ecf-37785793e86e','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('9409a340-9f41-469d-8ecf-37785793e86e','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('9409a340-9f41-469d-8ecf-37785793e86e','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('978959fd-add2-4968-ac7a-da91ea64477a','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('978959fd-add2-4968-ac7a-da91ea64477a','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('978959fd-add2-4968-ac7a-da91ea64477a','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('978959fd-add2-4968-ac7a-da91ea64477a','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('978959fd-add2-4968-ac7a-da91ea64477a','72602d07-9227-45cc-ad33-184c3b5d6842',1),('978959fd-add2-4968-ac7a-da91ea64477a','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('978959fd-add2-4968-ac7a-da91ea64477a','b778a33b-f425-484d-9af8-37cc97260c97',1),('978959fd-add2-4968-ac7a-da91ea64477a','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('978959fd-add2-4968-ac7a-da91ea64477a','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','305f90dc-c040-4876-be8d-927e6480871c',1),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','33d22077-670d-45df-b02a-ce07348bffe1',1),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('9c738697-99e7-4b1f-8702-6b499e071ce3','20755911-e07f-4675-ba9d-22857f0dadba',1),('9c738697-99e7-4b1f-8702-6b499e071ce3','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('9c738697-99e7-4b1f-8702-6b499e071ce3','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('9c738697-99e7-4b1f-8702-6b499e071ce3','77829d29-fedd-432c-acc8-97ce6929a235',0),('9c738697-99e7-4b1f-8702-6b499e071ce3','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('9c738697-99e7-4b1f-8702-6b499e071ce3','9267389c-23df-48f9-a249-6af9f4299a93',1),('9c738697-99e7-4b1f-8702-6b499e071ce3','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('9c738697-99e7-4b1f-8702-6b499e071ce3','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('9c738697-99e7-4b1f-8702-6b499e071ce3','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','154c6e3c-583a-436a-bea3-868ad9529231',1),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','6511f452-404a-42ff-b80b-1609a3071a2f',1),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','305f90dc-c040-4876-be8d-927e6480871c',1),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','33d22077-670d-45df-b02a-ce07348bffe1',1),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','305f90dc-c040-4876-be8d-927e6480871c',1),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','33d22077-670d-45df-b02a-ce07348bffe1',1),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('b04fc239-de8c-43f6-9432-cae3227487db','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('b04fc239-de8c-43f6-9432-cae3227487db','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('b04fc239-de8c-43f6-9432-cae3227487db','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('b04fc239-de8c-43f6-9432-cae3227487db','30725276-fb09-4156-9798-2e7c61f7e716',0),('b04fc239-de8c-43f6-9432-cae3227487db','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('b04fc239-de8c-43f6-9432-cae3227487db','b658a21c-e30b-4466-b69a-6d66f6653096',0),('b04fc239-de8c-43f6-9432-cae3227487db','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('b04fc239-de8c-43f6-9432-cae3227487db','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('b04fc239-de8c-43f6-9432-cae3227487db','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('bf8007e6-1073-4601-a0c9-08cade1429a7','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('bf8007e6-1073-4601-a0c9-08cade1429a7','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('bf8007e6-1073-4601-a0c9-08cade1429a7','77829d29-fedd-432c-acc8-97ce6929a235',0),('bf8007e6-1073-4601-a0c9-08cade1429a7','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('bf8007e6-1073-4601-a0c9-08cade1429a7','9267389c-23df-48f9-a249-6af9f4299a93',1),('bf8007e6-1073-4601-a0c9-08cade1429a7','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('bf8007e6-1073-4601-a0c9-08cade1429a7','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('bf8007e6-1073-4601-a0c9-08cade1429a7','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','20755911-e07f-4675-ba9d-22857f0dadba',1),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','77829d29-fedd-432c-acc8-97ce6929a235',0),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','9267389c-23df-48f9-a249-6af9f4299a93',1),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('c2f880e9-65b0-4432-a364-bd6ad75e57b4','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('c6babb0a-496d-4e92-85c6-611beae756a7','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('c6babb0a-496d-4e92-85c6-611beae756a7','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('c6babb0a-496d-4e92-85c6-611beae756a7','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('c6babb0a-496d-4e92-85c6-611beae756a7','30725276-fb09-4156-9798-2e7c61f7e716',0),('c6babb0a-496d-4e92-85c6-611beae756a7','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('c6babb0a-496d-4e92-85c6-611beae756a7','b658a21c-e30b-4466-b69a-6d66f6653096',0),('c6babb0a-496d-4e92-85c6-611beae756a7','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('c6babb0a-496d-4e92-85c6-611beae756a7','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('c6babb0a-496d-4e92-85c6-611beae756a7','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','154c6e3c-583a-436a-bea3-868ad9529231',1),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','6511f452-404a-42ff-b80b-1609a3071a2f',1),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('d1208074-d243-4b06-b130-e8903e23c164','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('d1208074-d243-4b06-b130-e8903e23c164','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('d1208074-d243-4b06-b130-e8903e23c164','305f90dc-c040-4876-be8d-927e6480871c',1),('d1208074-d243-4b06-b130-e8903e23c164','33d22077-670d-45df-b02a-ce07348bffe1',1),('d1208074-d243-4b06-b130-e8903e23c164','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('d1208074-d243-4b06-b130-e8903e23c164','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('d1208074-d243-4b06-b130-e8903e23c164','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('d1208074-d243-4b06-b130-e8903e23c164','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('d1208074-d243-4b06-b130-e8903e23c164','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','20755911-e07f-4675-ba9d-22857f0dadba',1),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','77829d29-fedd-432c-acc8-97ce6929a235',0),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','9267389c-23df-48f9-a249-6af9f4299a93',1),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','20755911-e07f-4675-ba9d-22857f0dadba',1),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','77829d29-fedd-432c-acc8-97ce6929a235',0),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','9267389c-23df-48f9-a249-6af9f4299a93',1),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('d6f36bd8-f053-4c49-b385-c4dee7ca4879','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','72602d07-9227-45cc-ad33-184c3b5d6842',1),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','b778a33b-f425-484d-9af8-37cc97260c97',1),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('dad4e868-b37f-487c-a2ce-4167b11eee94','154c6e3c-583a-436a-bea3-868ad9529231',1),('dad4e868-b37f-487c-a2ce-4167b11eee94','6511f452-404a-42ff-b80b-1609a3071a2f',1),('dad4e868-b37f-487c-a2ce-4167b11eee94','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('dad4e868-b37f-487c-a2ce-4167b11eee94','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('dad4e868-b37f-487c-a2ce-4167b11eee94','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('dad4e868-b37f-487c-a2ce-4167b11eee94','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('dad4e868-b37f-487c-a2ce-4167b11eee94','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('dad4e868-b37f-487c-a2ce-4167b11eee94','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('dad4e868-b37f-487c-a2ce-4167b11eee94','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','30725276-fb09-4156-9798-2e7c61f7e716',0),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','b658a21c-e30b-4466-b69a-6d66f6653096',0),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('dcca95f8-0e75-443c-b2dd-c906cb8db88b','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('e0462c55-5a6f-4483-a3e0-f29f62c49372','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('e0462c55-5a6f-4483-a3e0-f29f62c49372','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('e0462c55-5a6f-4483-a3e0-f29f62c49372','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('e0462c55-5a6f-4483-a3e0-f29f62c49372','30725276-fb09-4156-9798-2e7c61f7e716',0),('e0462c55-5a6f-4483-a3e0-f29f62c49372','b658a21c-e30b-4466-b69a-6d66f6653096',0),('e0462c55-5a6f-4483-a3e0-f29f62c49372','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('e0462c55-5a6f-4483-a3e0-f29f62c49372','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('e0462c55-5a6f-4483-a3e0-f29f62c49372','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','305f90dc-c040-4876-be8d-927e6480871c',1),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','33d22077-670d-45df-b02a-ce07348bffe1',1),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('e22b3d84-f0d4-477d-9d44-2bcd15bd32ad','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','305f90dc-c040-4876-be8d-927e6480871c',1),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','33d22077-670d-45df-b02a-ce07348bffe1',1),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('f1d6454e-446c-46d9-851d-96c5b7dc2028','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('f1d6454e-446c-46d9-851d-96c5b7dc2028','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('f1d6454e-446c-46d9-851d-96c5b7dc2028','485647c0-dd59-4165-9bcd-70f4f528e535',1),('f1d6454e-446c-46d9-851d-96c5b7dc2028','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('f1d6454e-446c-46d9-851d-96c5b7dc2028','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('f1d6454e-446c-46d9-851d-96c5b7dc2028','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('f1d6454e-446c-46d9-851d-96c5b7dc2028','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('f1d6454e-446c-46d9-851d-96c5b7dc2028','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('f1d6454e-446c-46d9-851d-96c5b7dc2028','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('f26e6d8b-2215-493f-944c-011fac9735ca','154c6e3c-583a-436a-bea3-868ad9529231',1),('f26e6d8b-2215-493f-944c-011fac9735ca','6511f452-404a-42ff-b80b-1609a3071a2f',1),('f26e6d8b-2215-493f-944c-011fac9735ca','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('f26e6d8b-2215-493f-944c-011fac9735ca','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('f26e6d8b-2215-493f-944c-011fac9735ca','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('f26e6d8b-2215-493f-944c-011fac9735ca','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('f26e6d8b-2215-493f-944c-011fac9735ca','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('f26e6d8b-2215-493f-944c-011fac9735ca','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('f26e6d8b-2215-493f-944c-011fac9735ca','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1);
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
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('45fcd8a9-a88c-40cf-bedf-40a1addb0eda','cb567335-e70a-4deb-8430-6bc98bcdbe03'),('8fd7c839-cb22-48ee-9885-f193a762d6a3','554d97ad-9687-45df-b708-5b993cf6f346'),('ad565ca3-41c9-4fdf-ba00-530746bc63b5','c65e336d-b35d-47ec-8cf7-d67366966797'),('b95e4dae-da52-4cf7-932d-8cecf3ebc3ee','7562e402-9370-4ff7-a9e0-8be61ba5a151'),('bc9bf6ac-1e5d-4df8-8499-6235e5141475','14bfd4cb-e01e-49ce-bad8-921ec3279d9f'),('ffde2b1e-eb79-4407-b7d1-655dfe7df51e','9796895b-7c1f-4da5-8d57-73de8835a0b0');
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
INSERT INTO `COMPONENT` VALUES ('043a03f3-433f-4487-9da4-aaa54f71f92d','Consent Required','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','anonymous'),('088653d0-fe56-42e9-9459-a2b69710fe5c','rsa-generated','org3','rsa-generated','org.keycloak.keys.KeyProvider','org3',NULL),('08d45bed-a861-44bb-9186-7e0c480b157e','Consent Required','org4','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('09655314-72b4-4591-a3dd-bc7c9fb49b41','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('0a4ca895-9eaa-470a-9bc7-946a000f4889','hmac-generated-hs512','org2','hmac-generated','org.keycloak.keys.KeyProvider','org2',NULL),('0e4bcf5c-376b-4b9a-bd14-bd492e28f6d2','aes-generated','org2','aes-generated','org.keycloak.keys.KeyProvider','org2',NULL),('110df292-3ba0-4754-b33c-349331f4ca72',NULL,'org5','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org5',NULL),('117de5e5-2a23-4239-b827-3b8c7ba56f86','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('16cc489a-591b-406a-bec6-3528cd6f7866','hmac-generated-hs512','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','hmac-generated','org.keycloak.keys.KeyProvider','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL),('1752ecea-ca55-4f0d-848b-2686c25d0617','Trusted Hosts','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','anonymous'),('17641685-8a2d-4274-a094-17302bd6d44e','Max Clients Limit','org2','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('17bf9c06-8db9-4e5f-89f9-d037cc51e599','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('1875f6db-9f27-4e33-beab-5c6f507e16b7','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('24d3f3ff-f16a-41f0-bc31-83e6bc2450a1','rsa-generated','org4','rsa-generated','org.keycloak.keys.KeyProvider','org4',NULL),('2795bcd0-7980-4e3f-8edd-81b6ed4e513d','aes-generated','org1','aes-generated','org.keycloak.keys.KeyProvider','org1',NULL),('2b991f40-5559-4558-b7d5-21ac312e9e85','aes-generated','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','aes-generated','org.keycloak.keys.KeyProvider','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL),('2c765bc4-a6d4-4ca4-9e1a-e210f2d334d5','rsa-generated','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','rsa-generated','org.keycloak.keys.KeyProvider','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL),('2f3610c9-477e-4b51-ba69-b904829492a8','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('2fcb28f4-a593-4ff4-9dc0-d0dce2efb5dd','Max Clients Limit','org5','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('372bd837-ec63-43c7-ac85-482e4320ffa7','Allowed Protocol Mapper Types','org3','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','authenticated'),('39ebdaeb-d7c5-4429-a228-33918375cec3','Allowed Client Scopes','org5','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('3d17f478-16c9-4df8-954e-a81f8c7fafa7','hmac-generated-hs512','org5','hmac-generated','org.keycloak.keys.KeyProvider','org5',NULL),('41402f4b-41ec-4e4c-a497-d9fd2ea897cc','Full Scope Disabled','org3','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('431ab8e7-ee3a-4292-8c7f-695186ad8515','Full Scope Disabled','org2','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('4b99c82c-6596-46c5-af00-0aa4e3516757','rsa-enc-generated','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','rsa-enc-generated','org.keycloak.keys.KeyProvider','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL),('524762b9-dbc3-4c78-af1c-12a19f6e5e04','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('55a47da3-316a-461c-b838-ad7c4c17c443','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('59171422-eb43-4c9a-82e1-67e6340320d2','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('5ad24642-fb21-4201-8f39-27ec3db5b386','Full Scope Disabled','org1','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('5c879f41-724a-4f44-aac8-781083caf3e3','Allowed Client Scopes','org3','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('5e41e8a7-3d83-423c-a479-63f32f6852c5','hmac-generated-hs512','org4','hmac-generated','org.keycloak.keys.KeyProvider','org4',NULL),('60a8839e-1958-4dc6-a20f-8bc009fa0389','Max Clients Limit','org1','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('60f3ce8c-75be-4fed-8772-62875ac4b223','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','authenticated'),('629c5a66-8733-427a-ad6d-dc08050aada4','Consent Required','org2','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('640f3089-1f0f-4a02-97d3-acbad8555dfa','Full Scope Disabled','org4','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('6535aad8-4362-4178-ae53-4ac5b8e5abb8','Allowed Client Scopes','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','authenticated'),('659e7262-e789-4774-ab9e-278f111ebb2c','rsa-enc-generated','org4','rsa-enc-generated','org.keycloak.keys.KeyProvider','org4',NULL),('6c34eb89-e5df-485b-b65d-d785e26b2321',NULL,'org2','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org2',NULL),('6f6139a6-3e94-462c-8b6c-a575bbc45658','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('72121961-62f9-49e1-bd3e-94c8883abd85','Allowed Client Scopes','org2','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('73d11da6-0a2b-455f-98ed-295407103571','Max Clients Limit','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','anonymous'),('7bc87b25-846d-4db7-99cd-37a47d6318fc','Trusted Hosts','org1','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('7e902ade-9a6f-4f79-a2c7-563742c9951b','Consent Required','org3','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('8286e49f-1520-4a69-b726-b350c0925601','aes-generated','org3','aes-generated','org.keycloak.keys.KeyProvider','org3',NULL),('8674fca3-eea4-4701-a614-1cdb3ebeb668','Trusted Hosts','org2','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','anonymous'),('869f7f5f-a915-4bee-96b4-ee5ccb18096b','Trusted Hosts','org3','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('8abeef2a-ad7f-4028-8fba-d6d2866b998a','Trusted Hosts','org4','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('8aff88e2-e442-4fe5-8df6-10b458c2012a','Allowed Protocol Mapper Types','org4','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('96db99eb-dff5-499c-bb43-8c85b585f001','hmac-generated-hs512','org3','hmac-generated','org.keycloak.keys.KeyProvider','org3',NULL),('a76f591e-0b0c-4375-b24a-ede20b86a22b','Allowed Protocol Mapper Types','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','anonymous'),('abb4b0d2-1b39-45b9-97c4-1773d468cbfb','rsa-enc-generated','org1','rsa-enc-generated','org.keycloak.keys.KeyProvider','org1',NULL),('ade2f7a5-4edc-409e-971c-8dfb642ec8ee','hmac-generated-hs512','org1','hmac-generated','org.keycloak.keys.KeyProvider','org1',NULL),('b8e29bcd-ddfc-457a-a3b1-41e519a32b37','aes-generated','org5','aes-generated','org.keycloak.keys.KeyProvider','org5',NULL),('bce1acf1-99ae-4e0a-8529-38a3ca85926f','rsa-generated','org2','rsa-generated','org.keycloak.keys.KeyProvider','org2',NULL),('bf354e38-15e6-4988-add5-ae606c46f1f1','Allowed Client Scopes','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','anonymous'),('bf5b2681-5e87-4cbf-8dac-b00852a5d825','Allowed Protocol Mapper Types','org5','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('c37a9548-d529-44d3-b0b2-aac0ae7780d6','aes-generated','org4','aes-generated','org.keycloak.keys.KeyProvider','org4',NULL),('c4dc2fec-eb35-4220-a05c-c95ccadb5915','Allowed Client Scopes','org4','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','authenticated'),('c52d9d5f-8fdd-47f7-9ad2-e222d2e2f127',NULL,'org3','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org3',NULL),('c8239cc1-3ced-4dab-a37b-16db05616d94','rsa-generated','org1','rsa-generated','org.keycloak.keys.KeyProvider','org1',NULL),('c8fb2794-adca-4521-a1bc-2b54b26a4014',NULL,'org4','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org4',NULL),('cb217a02-6795-457c-87d0-a1cb03797123','rsa-enc-generated','org2','rsa-enc-generated','org.keycloak.keys.KeyProvider','org2',NULL),('cd9579a6-d9fd-4042-a211-08839512be71','Trusted Hosts','org5','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('d48ad2af-7086-4770-bd3a-1bcfe097b1e0','rsa-generated','org5','rsa-generated','org.keycloak.keys.KeyProvider','org5',NULL),('d83dc8cf-e7e4-41db-8a12-547bd8c551d5','Allowed Protocol Mapper Types','org2','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org2','authenticated'),('d90d3974-e349-4e40-b837-72d67b5f0eb3',NULL,'org1','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','org1',NULL),('db102350-c593-4fa6-8022-d2b4ac57d7fa','rsa-enc-generated','org5','rsa-enc-generated','org.keycloak.keys.KeyProvider','org5',NULL),('db9d059d-0b87-4f55-b849-183591b7b3cb','Allowed Protocol Mapper Types','org1','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('e16704ff-b303-41c3-8a09-7d82da323e40','Max Clients Limit','org4','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org4','anonymous'),('e1dda544-6570-4d26-9a9f-73cad369dd9f','Consent Required','org1','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','anonymous'),('e2159d78-b463-4911-8c58-ad086a49a520','Full Scope Disabled','org5','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous'),('e9aaf358-1c8a-4df3-ba1d-4b339068881f',NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL),('f12dec9d-a5e4-4ce9-bb27-a2a9bcf3d979','Allowed Client Scopes','org1','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org1','authenticated'),('f1377458-d367-40e5-9dd1-c496827d3009','Full Scope Disabled','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','anonymous'),('f379de91-dc33-43c7-873d-2d5daf06e92c','Allowed Protocol Mapper Types','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','authenticated'),('f7200bbb-c88a-412a-8cf3-388a9d371194','Max Clients Limit','org3','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org3','anonymous'),('fa5568ad-3449-4b60-8fb7-56b6b78e47a9','rsa-enc-generated','org3','rsa-enc-generated','org.keycloak.keys.KeyProvider','org3',NULL),('faf50acf-5e31-40ce-88b9-cfa3bc14f1de','Consent Required','org5','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','org5','anonymous');
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
INSERT INTO `COMPONENT_CONFIG` VALUES ('0285ed69-a97e-49ee-a060-425c604e817d','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','saml-user-property-mapper'),('02cd32e9-626c-454e-9f70-0c9d463a51be','6c34eb89-e5df-485b-b65d-d785e26b2321','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('03816d2e-44d6-41eb-b550-cbf060afbdd5','088653d0-fe56-42e9-9459-a2b69710fe5c','certificate','MIIClzCCAX8CBgGQBkpdyTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDYxMTA3NTIzNVoXDTM0MDYxMTA3NTQxNVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMg/eC+ibyGJReQLG9x5epyH+uPje1vhnwgSdxsPfCqtYzaHVAkNNcH8wmivaG2X5bItcH/bn9qw8xzzneBGUQVS6qBV/YVb753AWc6qfY/pCiT9rUjWsrMPjHc+ZAdsNmFTrxeQb3D+7SlfilHQ65T2QXdvFQoD+nLW7n0EA2ULOBPHr/Db5oSVQDAEJ/lJVtkSxgLYnkCYR5/rLIYQJSw/g5F+gP0w/YjbGhkIZUTsbSA6+mi9HhJJC/umrMSzCEOBuE4Y18a0/BPQfXFNoiI2+T1aO2pEfLvooxkKYpOKDuv8/Lp9Ykt0sCX2maSndsrRyRcr4j3zCxG2okC0KMECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAp8xGPeT9cnvAIVR8CLZIUscO6DOjPHZ1fBunduJpG/ZAJaHo22VcUAcVRsIGFmo4k2QGkWoOh2pgOMBLq3BQQ3/ZYR3KYMexJ//ROP4//RBtFj+T7M6CfvpWkuPZjHYE/OnJSHO6/Ig5NMYhGcXa5gDCyaDNSsc+wnbswAY8ntdH2lKRS/gF7usp4sze0r8GYIUhe25lx2EXMRYxYwS3MrrXDY+E/mbuOFJmmFkcdlOctrTaiowkQ5nrrL9GIBMVu6kn27fVb2GY/HrgzLKNUU7BVjG2cvCVn+UjU3fH16wTeWE+fpOBY3L3uUf2P/rOsVKeqtMSa3/B9wQwdsFHqw=='),('07a92188-542c-4d38-b209-2ac9026acea9','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','saml-role-list-mapper'),('0841c859-4a96-4fe8-a054-b16f493f5fd5','60a8839e-1958-4dc6-a20f-8bc009fa0389','max-clients','200'),('087b91a9-d3d3-455e-a107-34dbca958114','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('098a690d-8c56-4714-96bf-b60e42fc044d','abb4b0d2-1b39-45b9-97c4-1773d468cbfb','keyUse','ENC'),('0a4780b3-8487-4c98-8e5e-d25e25348271','2795bcd0-7980-4e3f-8edd-81b6ed4e513d','secret','1UD9lmNPx12WGc3t_SBhJg'),('0f0709a8-2d55-45cc-ac67-16f4adb20807','16cc489a-591b-406a-bec6-3528cd6f7866','algorithm','HS512'),('1026aea2-5184-44a6-be14-38d5d0563a95','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','oidc-address-mapper'),('1224ff84-09b9-4381-bf04-c7818f060389','16cc489a-591b-406a-bec6-3528cd6f7866','kid','ec7d218a-100a-4c72-81f3-c42807f12aaf'),('123599a5-d48d-41e0-a49d-436083349f10','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('168e6fcc-1e1b-4484-b388-42eede5fb222','f12dec9d-a5e4-4ce9-bb27-a2a9bcf3d979','allow-default-scopes','true'),('1906cf0c-ddae-4a55-8950-092602f55e93','0e4bcf5c-376b-4b9a-bd14-bd492e28f6d2','priority','100'),('1911a189-57cd-49f0-8ba7-7277becccbfb','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','saml-user-property-mapper'),('19d0574e-7a59-470a-9720-8038f619fcd9','659e7262-e789-4774-ab9e-278f111ebb2c','priority','100'),('1ad57ea7-1c30-4c0e-bc78-4a91dd4dd6db','4b99c82c-6596-46c5-af00-0aa4e3516757','keyUse','ENC'),('1b4c3664-5018-40c2-b930-cfaf60b70564','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','saml-role-list-mapper'),('1bd09219-1bb4-4b53-98ed-55009239e3d3','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','saml-user-property-mapper'),('1cadadd2-4779-4743-9f82-70e0a71c76ac','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('1cf3dc07-e4de-47fa-8097-9893874df88f','e9aaf358-1c8a-4df3-ba1d-4b339068881f','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('1d8d01c2-0291-416c-8760-84ad2fb16905','869f7f5f-a915-4bee-96b4-ee5ccb18096b','host-sending-registration-request-must-match','true'),('1f3cd1c2-e500-48df-a8e3-4e67c2394bf2','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('217ad6be-49fe-47b5-88ab-4cf351089673','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('21c201b7-8077-465c-9131-689ce16d3821','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','oidc-full-name-mapper'),('21ee0122-5ff1-4577-afb0-e85ec8b25044','ade2f7a5-4edc-409e-971c-8dfb642ec8ee','kid','a324d1c8-2491-4d63-8931-fae6ecc91095'),('228c621d-b933-490f-a30f-24d6759d3889','fa5568ad-3449-4b60-8fb7-56b6b78e47a9','certificate','MIIClzCCAX8CBgGQBkpfGDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmczMB4XDTI0MDYxMTA3NTIzNVoXDTM0MDYxMTA3NTQxNVowDzENMAsGA1UEAwwEb3JnMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK/SixKkN6D0pQer0NDAaV8ilx+hgapYbMbqTa1DUx3kGWfvX/0mf3HoE+CW8V+3MqGBok155TnwW0DCWfCubQUqHDvazAtqoro7LUo+z0MUDwLHs+y3HztcrQLJ6+IqSTxGpmIbl3jnEl7y96F5WFcVl7iok8kugI6eedPXSdJ2J0vyfsYz3PXBhyWCd84H4RQQUJVzmU47z6zAjMvjuR7DdGKtqsd1h3aOiXpIqHr4c/JeIr9RPMqhecgsIKUhdKBPKew1e5YpvIdDv5eFeeHahLYunevJnCLqAX570kqU1XLccA/eWxX/sHxgvJdQiHiBujZAN8/8saAK1v5aNQsCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAerfHuc4yFeKVSu2ISXd5xuqJr5o2Expn/XnpDFBNnqWpJwMeCe9CvfTJU+Zl87XXJrKekOcGvhmFbCMmOBU+uAbK3tgoxrn2z/mYOnD2cXSV4H5HMy+yMxuxNGywkbu+B0Sz5IQKpgLLTYMHFIOEStiRAQOCdIQM2fSEABIWOUzsfBugpCPG0pYtWWQe5hY3WD7NEnt+NV8BD1wg78JJWjcxmSmfYHcwzDQk7+cYgD/LZeUq0KQWl72gM7UCPr+6VkOw9lA1fvrfO+7ANd119j4bUm95PW9kfTSYudDPkgYfPGXqTHXxDOgqjyBOubIG2TvksEHHNk8u8PT3tZSIFA=='),('22a0bb00-d012-4656-ab04-da13dcaa1390','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('23daf5df-5426-459e-bf10-03d673b77bbe','b8e29bcd-ddfc-457a-a3b1-41e519a32b37','secret','VYu3ZVWvogHG1sCyArM18g'),('25130220-4194-43da-9935-24930c924744','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('25e38437-7703-437d-90fe-217f5c7a7a8b','16cc489a-591b-406a-bec6-3528cd6f7866','priority','100'),('2616cf16-0203-4b57-8866-69faa2439173','72121961-62f9-49e1-bd3e-94c8883abd85','allow-default-scopes','true'),('262e7186-c165-4996-8f1e-b4b0f3047caf','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','saml-role-list-mapper'),('26816302-bf4a-4afb-a731-9656a6e858f2','96db99eb-dff5-499c-bb43-8c85b585f001','algorithm','HS512'),('29c8a9ec-6d97-4968-b7a2-1e4da048721f','ade2f7a5-4edc-409e-971c-8dfb642ec8ee','secret','Z40wDlP6RAsiLdiJUG-fCec14m8lJ-Ogsv0vaNU-DlBZtdt7Uk38ckX3QP1LdMho5FYI98yXOF_RQD_fNSEAGmWa7qcWK08RAnKeDekJUDNH04XdTvsIrEFNwmcFXiqqfXxDYV183xv4F4ND3J3m-c9qfPkb8i0SKk0rFZxFrno'),('2ba6b007-7793-4b29-be56-68b56468718b','8286e49f-1520-4a69-b726-b350c0925601','priority','100'),('2bbe18db-f20b-4c59-b117-84dce6552988','16cc489a-591b-406a-bec6-3528cd6f7866','secret','_jASf-_rwyHCTwSIjvUjVrtp5Nwid1C9ea1xKiJ9sdsux-r3qnopOLDQfHVgyD4Qo7pD_R_zcZau-vaoJaxfOrvGVrrGVe0S-IA-rYtTfsfDAnqbiRUNjtPmVOdiNjNbDFGKLtN1kS0h3g3baHL_JQuglDdACjC6RRepPC3kKKY'),('2bd5939f-0045-4870-a9d9-b652f9685fee','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','saml-user-property-mapper'),('2bf52135-0e98-4c76-bc2a-49ea585fc66d','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','oidc-full-name-mapper'),('2cc3e2d9-661c-43ed-bca8-a5a0d0288259','abb4b0d2-1b39-45b9-97c4-1773d468cbfb','algorithm','RSA-OAEP'),('2e5791c9-1892-4cb3-a9bf-dc4f7a54a3a9','117de5e5-2a23-4239-b827-3b8c7ba56f86','allow-default-scopes','true'),('2e6ccd30-3db9-42cc-a477-72376cd61384','db102350-c593-4fa6-8022-d2b4ac57d7fa','privateKey','MIIEowIBAAKCAQEAszWJ6eLGXfLWuJLz48QH40++pubegmBCp7Op2XFYFf76efqb+nvl29qtENq3NkQjdl23oVF19yQwFhFa/Ru0rYErWf4W16xfYoYVXrdY28UD7DWO6Rk5dD2ZICzfe1zcq0SJO72VaBW7ne8g37r4rIM+RX2uvDhx+kBs2QyCBhK3G33U3nMp5NMoIZfGT/ulYfLkJwHq8OMFL0ehLnF0z1QZPS9KFcnxbT1ZLMa57ZQZsWZ4PyDVbKtMU9tbzaa452y+s2LRoQkXZDiNq50IRr4Dr5ESe0sNoKtqO3CUc32Y5Ci2ixEPMhsbPqAR77aqTEDfsNMF4xO1v8BHuc4t0QIDAQABAoIBAD2JAz+v0kx9L5S2RQ+vBsRbZAw8VygudITQMODMxiHbaVeMIZYLiByLhIS2jVWRZRnmSUEXzylbIDXbpMInis1O/rtKf75z3lbe0qSw0U65YkTwCQ/qTOuooRVGw0BBXTZj9LlyOkTAvakX7NJWCcB22mGTK/ZObXiwOY/39wetPlyCXFUkGYTsg48zV7ZaZuxSC5hdfKdf7GTiRmF+WdfCLwVEjLfPUhfpxwwkHkjVWb3zRDRvVfWZJozSN4wDRdybuMDWieB4fNkEL1wRpbAh/QnRJmVEcxhvOo5cqs4R6El3kojbMiEOl4Qd8AwcunvYB5geXQ3xj+ajwdvJO0cCgYEA8OsR++ELdNKFwRzopm1vmmCYeQLWKX07YPndtJnD3nlrX+qihRUdnuwsm7z4uRs4vgZTP3Sq2JDu687L0K6S8CykwqUijueKFdZl7sRCpIcrugM4Dm4O52lJByxfAPajvoJ4A0eiQ6sH042v1cIfnn3o2/RPaJTHnYIFwdeYDjMCgYEAvm2GZTRv8/3u6GUruhoA99h2ZhXu01eVa3HOnDTK8eTmRl/HhWalsPB+rxHcF967gGXhYzFRDRBwjG51kKLac1Bv8/MX2cIQVLlUdN3R5bo3jnXiCCAQYyiwQvL0vG1gkE1uYMs5v7X1ghlRyzmiUwfH93LX9EiHPYYRHIqTR+sCgYBK4aW7Vl2LOAwe0+90Gzu/DhsWMc2DI8ua/s7sXYbF1ZOMQo+1MbT9Ooc6+OeOEWn3llu1s3uOyK2aWbJ78Gb3g8jKPy2YoVsIIpWYOyRDo0fyDyITSh4Ty2PJeP8me4K1qjPHQTKsObK7DKUEmcveJWCFTVCJPwU0bb+AWpSGhQKBgQCoCi5WkHdab/Kq0NxNVTUVgMa6PxCJHviT39HathuAaeVqpIqEhZghE5g3FSOLTNlY7I5/4b0MMj2fLro/7/WlXI3uT830MvQGT6Tfm/7lIfZ0mEHluaW8WuNvsMWWoU5dCHcmoy9KpV8Idx9ennVHn84t5gH7ZyUwfWYMMZzWEQKBgB3sKR6FGVmipydzayAyaDl2cWJWAY5lF+dWb/itgKwYL7PJ8zXJeN7Jku2jG2lQPd2NBU0J74n0C5otV46YwP3vkZEL8AJmkQuLw6pIu2/tepO0VCMevZrns3aYTiI71fHV5qIHoo0yjXHJijB1Usm1/cLvbmT5sJNvXvaPMHI+'),('2f2532d8-80b0-4c7c-8aca-cd3523cb6f3f','5e41e8a7-3d83-423c-a479-63f32f6852c5','secret','IwH3CsZTe2o99wkNbcBGw0PvE9zj7Xy9cibsyukrbRVX2v78kWMHjlLmmPdbFsE3gjnh8SnSs0UlCmmCEllZDEtxRjfMntuLE0upsCdYWQ4B1NDbzmSFGXYxjya_F1nhpZboA8BW8r5fKzAlynt_LnOfzbJ8aKyu0bOOED1WH_A'),('2f70d6bd-5bdc-4aeb-ac58-2434d866b0ad','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','oidc-full-name-mapper'),('31e6537b-c332-4cb9-884c-73cbb602cebc','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('320e6a1c-ab13-43ad-9835-74078975d847','4b99c82c-6596-46c5-af00-0aa4e3516757','privateKey','MIIEowIBAAKCAQEAj+VdFGyf/TDveynk29WW8ZB4x+VKEHKzxAHzrlR3SqFMl5YPPlb76pFKYzNWaI4fshvRO+TqkM45Y3w+wQpv1j5M2IjH/ttnaFWSofTxdQecW41fkp1jtZFdtDGH9AhFJc3xduwqMUa81lDn8ZmuICQP9TJR4Spb+aNF7zcFmmoa4zJcBR0XE8X/EvZQvOzk6hxQkK/gIMZ1UGYo6VmdwgRDkZNhfUjjdjYg3QD3h7r0PXVT/V6UamQ9YKW0PrZHXYJdUTeKl94N2fbZjHa/vlkrlA671FBWB0E6Jxua7zg5jcELmPXPUgfMcAoVraRLXhI4b6cQPG4OC/EFgkcN2wIDAQABAoIBAAim5VhXia0bFqMkqzaOmqNOqPx37GKdyvJDncfDG2MY3LaWlrcMWtxJPRxG13C07vHyGzwLMRFg3PF+5HUN8BiFKXCxlLjdr1OGJaloRWZgfUXB89eob/jYUzaE7eQ95Q53Wgfo/kZ1NuB5/+A2edJD6NO44VR1DA+wAgH2oHceyAdVmWcYtjqhXFRsTr5ZuNbfRM9MeXN2rbiT43iTXzLZv7CKpwgjvx7y0QvVTtG07jrX78SZtFKF6MNgfKWm4XhLNwDiHQ5UaUNZtERKYg9eXHSlgYvLANQYCMSIsHy8DrYSsRYcHuSS56tBChxcu0DsS1TAm4Ib2Z6PbBtt4NECgYEAwT7+VnPS1OGoYzrqPRZxt0P28XhWkNf84C8YzrT4qmIZ2WGnmMaNLoisWF0IeaC1fvdXq4SuvAHR4FlqRGOB4HX8GzG4Sd1ze1iDWegdFjVB+qnT5C7+hPdnHkMI+v9CK0Pl20y63BrRyFy75MPOSxL0h68ij5e4AvcqU5HDXCsCgYEAvp/G9dU8yhVMGETCbTI53/FvWzmofMwbyRYnPxVeEwgFBBLb3M1KfGT7oxoc5UNSgyis3oVjvgRxiWoHn+wgarnfofl78YmxkxLId43UZLhC5HL0Pm+GNEJfTIvZ6GE6JONpGOw6oAN6eYY3qBFxdUmvAPMyAsHK8pg7n6k/TRECgYEAvWswxK8NVqvGcVW7apuIZZoSAUjymVGNRnYDvAH5yJEWQ1UMgZ0FoDpJrOesOgREQyrRXYdV+2VRQraCinx7PviHYGSQ/p455wqw3by+XhlgDgLPdth1lQIoqqoMsHLqehw4v4frlXoYbWwwpKElocL3u9P4bYXK0eVSMM4tDzcCgYA8JeA6m4El5phvI+sRV4LJdb4EU+olDqZJyfKyRgS8DpC+m1DCmAhDvf1klo29jYOQnRoG0KILSA2nJUyomnIUGvhEfJsuOJtOY+PbTWZSLY311YvZ04jOHo9BcPNeDqexEgyMb6WD7fUMOVyAbJiXQJu2ugXytsFZ0M0ncNjncQKBgH5kgam9tMD2RqIKHyfIrPp/GBe42Ky2Ithdcd2bjFY216BWko3FOtnFfkcg7T7eiNDSEAiKIsaIJqaFFZK4L9iwp/qJ7/vA+oJiw+pAa9o1OHKABYo+7ssT2C46CgpmoPhSmTez/Bs/y5eElCWdTCRbDMouY01zNjl7hsz37Pm2'),('357ac364-cc3a-49ad-9e70-9c9fd2cf9f54','b8e29bcd-ddfc-457a-a3b1-41e519a32b37','priority','100'),('380f2caa-2500-49b9-ae65-006f9f72e342','fa5568ad-3449-4b60-8fb7-56b6b78e47a9','privateKey','MIIEpAIBAAKCAQEAr9KLEqQ3oPSlB6vQ0MBpXyKXH6GBqlhsxupNrUNTHeQZZ+9f/SZ/cegT4JbxX7cyoYGiTXnlOfBbQMJZ8K5tBSocO9rMC2qiujstSj7PQxQPAsez7LcfO1ytAsnr4ipJPEamYhuXeOcSXvL3oXlYVxWXuKiTyS6Ajp5509dJ0nYnS/J+xjPc9cGHJYJ3zgfhFBBQlXOZTjvPrMCMy+O5HsN0Yq2qx3WHdo6Jekioevhz8l4iv1E8yqF5yCwgpSF0oE8p7DV7lim8h0O/l4V54dqEti6d68mcIuoBfnvSSpTVctxwD95bFf+wfGC8l1CIeIG6NkA3z/yxoArW/lo1CwIDAQABAoIBABPP/N3v5Vjc2I/hu5kaZYVT54Wn9G2Wo0NS+cfRc1dF8dr1bXKgWPIj/cFsIOzxPuJWMkzatIrv28iTXgEyFpTjZuUTxbRvosCrlHHuW/qqEvr0OAEvrXRKADD1QgBtVW1WZL9fbpUwLLDIXkEy5FKD22HylRyxgckQcJf/hZESkXHVDAhJc+dBMNyF2Nltc0LJLOeY3punMRa7o45/TlvSunca9ZuOqeogvf1TqwVPw/Du6tls7MAyjb8K8288g61R7vql9lNkKO6mcbbnAq7TqNz4BFSct+Ggyvrar06whEwfti4O26a0P+xOieD3yizVqfLOezNvPcWsXZdZp9kCgYEA471i5sdVYNVan3YNyHTHaJteIWZw5DwJw+xg/CSvWgxldD4QsCsjlQsmYyrAgRO7M3iChZoCeSOUyG0D/LmuZ+Hd6w43knUtR57f5fRe389lyYYsFv2UBwAHV/yO1elsn2qnap7RvGZ+x0Ogh6m7RaADhBkYBScIitRYfOBR878CgYEAxaPlvZhq59cm3//sTOzyzCTuPA1b27RLmlSk9D2V43yuabzqdwFBON2jsybQAItv0bKTEV14+t6Sd2kRYjS7klkYhx+LjVvUi9PsuqKJTpzBxGvYd904yg64xBKyo6i/APAdXonMdx0MRtUJ5dcHGHasopk+CVemN7/wxjZS4bUCgYEAtFZr0sNV4HASauNY1rtijHs7dsdf7dt9ACBWTFPgZzYZwIrFPDts2cESjMR128B8JK3w7UqfWr3KO0vYNG/0o15AFLoVV2xihqxQMA/qcOASgho1H599cG2dYxcjJFDLKxGRsORCwSWIjtIGdGb7XI7xOdGFK89U/FpaF8iqHJECgYEAlebQunOfKgbSknT+mf3hzZp5Iw0Szdm6uexXTHRleiw38TT7NJW8DVB198yJWNBpWEg0KaiWuNgViQIk0DKkzcRLyTjQ1L+AvylW1NuwfvKAOOV/QrKEfySZWQXBfkXf0OtNq0Wi0fkzNYohvrTPyetA1vaZyeYzyPcIvJ25UT0CgYBQKAEOqC/l/A4MZgPjP3HNXvHbgb96M15z1df0npbvwqEZMdpwYzVB0pJcOlrt9AOORqbO0eajl/JsMj9RUZVxuREOfk9ruj+B2rO5JNJD6o4dPgmxBTUg1IiZOSeYG5docMFhHcPYd0wqgHkqC5woo57Qurqqlc9sXsjCqMrg9g=='),('3882a021-b27d-43e1-a3c9-2316d0f98d70','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('393526ca-9a48-4ce1-bed0-ed1959e7ad54','39ebdaeb-d7c5-4429-a228-33918375cec3','allow-default-scopes','true'),('3a0dc061-f3d5-474b-a074-892f7780a4d1','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','oidc-full-name-mapper'),('3d6716d1-c138-495c-892b-cce3065cebdf','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','saml-role-list-mapper'),('3d6ee1bc-99db-4b3f-bb59-54c274985747','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','saml-role-list-mapper'),('3e53e29a-c459-4b4d-9f54-f1045e326513','bce1acf1-99ae-4e0a-8529-38a3ca85926f','priority','100'),('42715965-a7e5-4a82-a1af-50a209f789ec','4b99c82c-6596-46c5-af00-0aa4e3516757','algorithm','RSA-OAEP'),('44c89bf4-edbb-4804-9a3e-eee3ec40a8d9','17bf9c06-8db9-4e5f-89f9-d037cc51e599','allow-default-scopes','true'),('45f0b4c1-c74e-439e-b431-adb65dbaeb39','2c765bc4-a6d4-4ca4-9e1a-e210f2d334d5','keyUse','SIG'),('48f2a07f-f062-4b22-ae8b-1aee25844e24','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','oidc-address-mapper'),('4ae1e2e4-a4b0-43e9-912d-ed191567e4e6','abb4b0d2-1b39-45b9-97c4-1773d468cbfb','priority','100'),('4b52f3a8-b4fc-4cac-8e5b-e3874fb2524d','73d11da6-0a2b-455f-98ed-295407103571','max-clients','200'),('4dc962f7-892c-4a2b-842b-eebe5d7c6eb3','cb217a02-6795-457c-87d0-a1cb03797123','certificate','MIIClzCCAX8CBgGQBknGYzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDYxMTA3NTE1NloXDTM0MDYxMTA3NTMzNlowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK0rAYvNiyCVKthGK9xe8i/jz01q4gT0VkEUG79kM5Ajl5CN4cSF6NhbR8L27AyhWVRa0u1Z71dbpybaHDHoLXk8lXDS7Vh18496hI6MVtTx9HhsZbgoBmO/7kADhZ000nnfeifHrnpY7YTrthqlVtjQZgJQ0qRN/gc/+SnCTZUPZ4zQnkNiKjb48K2B+hlKtXks8etAqiTGoX9FeAQUZTO6vZyjgxzrAWttLaQKkDyepaY6Fcl6Y19hCL4QYveuKVCAcP45zwfLLRLSEfugFfsI3TjZnP1gTSfcCNMRBoyJqgPMqkK1RTDTHLmHCEHMeTjps32V5Ao3MuClnss8FzkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAqw8XDJbNA5GOmV++13NYRMhwWlEOgmEYWfpinMiSyaSjvPx1s3Wa/4xo60MMs7Afvzup0wtSe0FatLB351T+Qe17vIjR+IffiTaTZDRp8HmV3/GH2sPuen2/0FsqewyS+oC1e8pIV/WoeRE1n6ul3YSr3GgO8aeNgolcAHLHSa7TOP0bxEfIngNkGM+6F73BvdJt9cB4zuNWfzc3JPRjhrU5LGynobBvbgtnw2EA7w74Kz1jRHs57enGp6Q9xCyYY3VBmActprOGbudHEB1SaAoqnzJ0+2tDjvWQdZKtBIHCdTiQ0Sw5ihSyN0fGlM5ZZxVwyBeg2onLhwlXp8G4Yg=='),('50e0b373-88dd-4a07-942c-89b5824c6467','d48ad2af-7086-4770-bd3a-1bcfe097b1e0','keyUse','SIG'),('50e68415-6b8e-4880-bae6-291dad55173f','c4dc2fec-eb35-4220-a05c-c95ccadb5915','allow-default-scopes','true'),('510adb7d-243b-4623-89c5-b9e00fcdaf7e','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','saml-role-list-mapper'),('510de684-ac42-4906-afc7-6278e7826471','cb217a02-6795-457c-87d0-a1cb03797123','keyUse','ENC'),('5674ad48-f509-4205-a5a3-b0359378f4ac','088653d0-fe56-42e9-9459-a2b69710fe5c','priority','100'),('570603f8-2f79-4e05-8e92-2e5a7e70591e','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('57586f44-3198-424c-8e62-0bad51ef7902','2795bcd0-7980-4e3f-8edd-81b6ed4e513d','kid','d9cfc263-05b0-4b3a-acd2-001b56657d29'),('5a1ade54-461e-40ba-929a-d3aeec40a733','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','saml-user-property-mapper'),('5c6d8e50-ca79-4aec-aedc-e6a59a0d4e67','110df292-3ba0-4754-b33c-349331f4ca72','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('5cfacd91-1e82-4ac7-a4e6-34c07e9c9c42','ade2f7a5-4edc-409e-971c-8dfb642ec8ee','priority','100'),('5f10ea9f-86fc-4776-888d-7fe97794827e','db102350-c593-4fa6-8022-d2b4ac57d7fa','algorithm','RSA-OAEP'),('60390518-5367-45b5-a562-46112f57426d','2f3610c9-477e-4b51-ba69-b904829492a8','allow-default-scopes','true'),('604c2b9b-76aa-44d4-a905-6ee095cf20ab','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','saml-user-property-mapper'),('60791e99-8509-4f80-a86e-1844f70d8e66','8286e49f-1520-4a69-b726-b350c0925601','secret','ZWVUlfddSmTMixCnkZwcmQ'),('62996000-2bc1-4814-9bed-f0805d793e27','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('63ea665d-b630-4b5f-a6ef-b5791f545e71','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','saml-role-list-mapper'),('645cad78-8e91-46ca-85e5-e17b9b834dd5','7bc87b25-846d-4db7-99cd-37a47d6318fc','host-sending-registration-request-must-match','true'),('64c5c152-4218-45d8-9828-004ed88a4061','2b991f40-5559-4558-b7d5-21ac312e9e85','secret','iGqUlPsL2O4jmCTvtS0TSA'),('64cd5912-e5a1-440d-b0e5-fe9599444372','3d17f478-16c9-4df8-954e-a81f8c7fafa7','priority','100'),('662d88ed-6282-48d5-9498-67cd9582ccbf','2c765bc4-a6d4-4ca4-9e1a-e210f2d334d5','priority','100'),('69d97195-54fa-4403-8252-7487bc564e6e','bf354e38-15e6-4988-add5-ae606c46f1f1','allow-default-scopes','true'),('6a635eaa-5ab5-4164-a8df-c785b7686bd7','c8fb2794-adca-4521-a1bc-2b54b26a4014','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('6ac785e6-9fdb-400f-a355-7396a61b1c88','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('6c9c336c-a683-4848-9b04-450a57c72ecc','09655314-72b4-4591-a3dd-bc7c9fb49b41','allow-default-scopes','true'),('6d93ef2d-e8d2-43d7-a196-4a3ec078d5ec','8674fca3-eea4-4701-a614-1cdb3ebeb668','client-uris-must-match','true'),('6e7c66c9-cb26-4092-91ea-37b426c38cc7','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('711e7b9a-618f-430e-9490-7c21247a68d0','659e7262-e789-4774-ab9e-278f111ebb2c','algorithm','RSA-OAEP'),('7156f498-b7cc-46e9-ba6b-0b03d6495042','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('71c41f55-e857-4ed9-8df8-3aa3154fd094','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','saml-user-property-mapper'),('72675c01-809f-4ca5-a8d8-5c84f5b1d62d','0a4ca895-9eaa-470a-9bc7-946a000f4889','algorithm','HS512'),('734d3bb5-1d02-4e87-bc5c-08035932ae84','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('74aa7f53-800a-4d22-b236-5eb712db4124','5e41e8a7-3d83-423c-a479-63f32f6852c5','algorithm','HS512'),('7513b543-a73e-46fc-9966-53bae93df813','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','oidc-full-name-mapper'),('7569c5ba-90b9-482b-8382-fd61ad23d6b5','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('793c90dc-a21b-4e23-aa3a-9cef99bda270','24d3f3ff-f16a-41f0-bc31-83e6bc2450a1','keyUse','SIG'),('7a737d15-75f5-4ab4-a67d-873105ec290c','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('7adc50e5-1099-428f-b4c9-7cefe50d68ad','8abeef2a-ad7f-4028-8fba-d6d2866b998a','host-sending-registration-request-must-match','true'),('7bc2eb5c-c932-4003-8225-2b0af61d6d16','4b99c82c-6596-46c5-af00-0aa4e3516757','priority','100'),('7d2cfaae-44c6-4b04-bea9-4ca58709b715','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7dba6093-4a1f-4e32-8a47-ba68f7b7a8ca','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('7ddd39cb-fe3e-4805-ac6d-b66d77c4415d','cd9579a6-d9fd-4042-a211-08839512be71','host-sending-registration-request-must-match','true'),('7e68386f-6d9e-416a-b247-11939dae44d5','088653d0-fe56-42e9-9459-a2b69710fe5c','keyUse','SIG'),('7e8e0fd1-d05f-487b-ad72-b73c02d9f95d','cb217a02-6795-457c-87d0-a1cb03797123','privateKey','MIIEowIBAAKCAQEArSsBi82LIJUq2EYr3F7yL+PPTWriBPRWQRQbv2QzkCOXkI3hxIXo2FtHwvbsDKFZVFrS7VnvV1unJtocMegteTyVcNLtWHXzj3qEjoxW1PH0eGxluCgGY7/uQAOFnTTSed96J8eueljthOu2GqVW2NBmAlDSpE3+Bz/5KcJNlQ9njNCeQ2IqNvjwrYH6GUq1eSzx60CqJMahf0V4BBRlM7q9nKODHOsBa20tpAqQPJ6lpjoVyXpjX2EIvhBi964pUIBw/jnPB8stEtIR+6AV+wjdONmc/WBNJ9wI0xEGjImqA8yqQrVFMNMcuYcIQcx5OOmzfZXkCjcy4KWeyzwXOQIDAQABAoIBAAxSPHUtKL/RVUqCWFcWVgmkc4jY43WXnraD3tiOoYuZOLd4nO6IhPw1/Hm/FiXCP5KnYWLcLLyMwSyGxY2jLUR3KX6XsiXCmL6l/fNi7BURP9mSBD0m8z4a4dx3U6+579rrlNZqmGZ3WDPGY2nrHJjnNRw853ajilZg4yfpPcTEBTDvXG+IzstJgsvwuM4L6qHL8bS7/AiJZfWlVS7x5J8g3rHJ7nXFznYvCG57YD07xAIE44Cbseq2XbIv71955422+Y9MOFA+YtqR3pZj6UUC9J7xQJp0TB0cgLO2SrvD5+crmz3y6a3ozLC+Zegf8vnzFFLt90y3nfBt/PbHGz0CgYEA48l9QB27IhHGgtr9U3wZe0kl8qtlBYFZfLKvRwafyOEEOwasTZAD2spFaaLH062rqJIKKgCdlcJkWw9Enz4uLxXQWC85DJGzlRETX6kF/6nbGqCPGRU+LsMUsYy0aiFLujUKMTXJ7DYQ5kjHO9rHSeRr/3RBtdsXn0WbcJB9eNUCgYEAwp2xow+Clo2uWbRU6V2xlMmFhq0cYKh9b3EFf/q/XbkWPJuhtUo0NkpCWnurU2zAT/vp5VMxfj0OzzR9zeLHMaXrGmiZtSCZMk7rytNU6OyYb5jqaC4wsyz/yaL30s6oK99ZDqqTuKRk4N0f7ZHKRuawerBmH90Ut1syJNrDVtUCgYEAk97JIEYspQFFDM18hiWZpR7nM5FwExLVNM4KWuFB+PWZ+Xdrgy5qUi3cwaaach/bv6KOVpXvtrhqzXIr6fRDpu1SQuzk6/Pp0Gs1WHQxILbzNWXlfzL7GwAo/tmIhRz4O/kSlL+GRYETl2rHa2Oq250dPsgJoDSKMSrOrVQfH8ECgYByYahjw9vmjILqahh1yAF1BzQZQWkqThzbALxQyZjrhrrRCE90c5ZYSjDRaVn6gDJPUCnaBJlULqKjmaBO/3g/b9rL/KpKUEx5yvS+kpKXC2dUP7WVYYBx7oKvib7KAXfJwU1gV1TW8pfvqUb4o/UU0sTqdv6uv4tLcKf6DTE9uQKBgHWGKnyUsEPzS5byIiUdMJE5AHlMIKlw4UWa34rGditGJ29JBrNXPesKVpicT19O2802wYYp5+gB1QXyErq+3yHplBmK2pYFWDp/fMI9Pm0HWUYUY1SVfsSk5TPyeMtEfIeFfOcFpnH19TF4zfmlepo3WXWHeqByw1gIvTHym2uB'),('80072ad0-290d-4e36-93fd-c83e682a0619','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','saml-user-property-mapper'),('804268d3-8707-4da2-8d53-aa963d3313cf','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('81426a9d-cdcf-4c89-98aa-af3f2a0dffd7','fa5568ad-3449-4b60-8fb7-56b6b78e47a9','priority','100'),('8180a5a1-7487-44b1-a480-7fb9e6abdbdb','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','oidc-full-name-mapper'),('81ac1d0c-d680-4e63-9821-4264f4a82785','2fcb28f4-a593-4ff4-9dc0-d0dce2efb5dd','max-clients','200'),('825e2f5a-ee80-466e-8895-10bc869ec741','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('82e64f9b-6f93-4828-bbf8-e7f135de6ce0','c8239cc1-3ced-4dab-a37b-16db05616d94','keyUse','SIG'),('83ee44a2-0b23-4402-8874-3cc0cc5a5cc8','1752ecea-ca55-4f0d-848b-2686c25d0617','client-uris-must-match','true'),('84cfdc5c-6e8e-4632-9ea2-2c240c2b0121','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('85c363f4-36dd-4acf-a360-1e5235f91c6b','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','saml-role-list-mapper'),('86a895cd-8685-437f-811e-c38fefd805f2','5c879f41-724a-4f44-aac8-781083caf3e3','allow-default-scopes','true'),('86b8be43-7c48-4664-bad5-859d84e903c3','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('897d23b9-e495-4002-ad78-ebddc8c29c63','abb4b0d2-1b39-45b9-97c4-1773d468cbfb','privateKey','MIIEowIBAAKCAQEArpe9ZZbkj2HKu7iq9lZ8/WX30ki+Lu0Md/JecqbSjDC26nZ9ZUjLwkCHMDxCzrsgP5v9hO0aBi97DYZOK+yOtAsGjSYLO1NW8FED169od9NE9/P/PgKpgEjCs4HaNgAZEhx/yOyCyxHZ4rjisSt2XfZzwDfIIVq/EVXfb/UlpyCtSX7YUPSUahLVA1cJ1/0GY2gP4U6Cq9EVXe7vHvui/TNjLljrBRUWxpKnIt/63CKIwAGlSOtv/08mWlXRNXc8E4jUPNmr1rIuqHusMLS1ATWjq0prR8um6apOcAgpCdoSHqgTmGH1wBzElKtUXQivKeXQIvGHyceoDjP96l4quQIDAQABAoIBAAtVrt0WjOPT1Hjg4ZUUQuzH+lqqa7+Qci4RC/T11jJRMQgCTrfD6WMgXQsJV6RtFCy/S/N5It2HFHUOLc+aNLDyw3CMcnQ5ZHMZUaeLK+CoL+vtDbpaK1IUC8WZEB4Gy+MFjTSEAJN+JwysWrD6JvAbAX7FTgj/vn05xLFTnJV2iX408Fo1V2O2s6IN+s5GOXmJ0ywDz0g4BaU69d4S3GuAYf0gcBcaAxc/qVyN9AjrxLa8R59oFFd/dSHMFyVbwspw4sxe5xNeujryh+xu4g3fHQgasRP9JEmkuZfs8jGVMGvG5IdnU6J+ygnYpWRjba5MOFvlX9hOkGSCeDrNzDUCgYEA8jOlQcOigxAl12+IFvccT/AHd6dlXQSezFVcVjgYi1+3ucq5rQF880Iydzxfp5JNAWtrxpZxILlxd32UH1FvftGC+XF7fxjso2JfSGFczICfn61H1PjO5X+nuI6ol0tFAt+7f24g5x61xf5psqaiICI9akLnmCasDYkR9MzPod8CgYEAuIoPnsTiF67POq4o5FY0Y0t55DYn1VxarwnTVS83qNcaHbuqew+umId8KcRz5SloD5/1tsxrdF7qrz4Nj+/wzCixtRrXvW4laHJ+ylkQS6YnzR0veqZ1jHqMDm12/lWFqi6Ofbrqpx3s+8fsSix85yIWGxq8g8YrimHA56UxNmcCgYBL5rdxRpfVLuhM/VzOpZ4vxu7wJntzjREew9luA6Jdex+ej9NkTkUUDri1+SuY3hZXzYw27cqCENtoMOiMb/7a5VmARnoHOI5gHWHy0uA8Dkr3xVvveBGOhlTPV5Wp5CK6ZdbidmbFRzB73eDN5b6FB3XrqQ/e9K+ShlQkPVMMTQKBgBwC+PQEtr0Zj+M8ZICkhTc9UbdOcSV1613+g9G+ZRh/7jrtLaeYbcxBZJuCcoUqj90vTsD8rqLvdXg8VxquNUMIOlFfTbg3a/46wvw8ILka85ezAm3/roAwaeoWu6VHng6DGqYDJXNQm5RseHWZ4yvChNCAcnUeM6XByOJgtOOpAoGBAJP6Y6ertcvMKSsZ1ZAQK9o6SQe+U74lddmzMV47Qod2JfLB5N6sDozdugS5xHu20EhFC7ptTv+kinv1Sm+a+GTeAqgvpRW0xbrwOCPa5zXCWUPQirzX4eYrJEIz7uvoEQfmLo5AdDglItQVHN0LBodFlQ62ggrN2cE/OhVLyJe+'),('89b3b0ca-f1f5-4a18-a24f-8d45e36758b7','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('8bb98210-8ebd-423e-9b5c-651a667fbeed','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','saml-user-property-mapper'),('8dc995cd-66e6-45c2-84f5-e8cce35de144','088653d0-fe56-42e9-9459-a2b69710fe5c','privateKey','MIIEpQIBAAKCAQEAyD94L6JvIYlF5Asb3Hl6nIf64+N7W+GfCBJ3Gw98Kq1jNodUCQ01wfzCaK9obZflsi1wf9uf2rDzHPOd4EZRBVLqoFX9hVvvncBZzqp9j+kKJP2tSNaysw+Mdz5kB2w2YVOvF5BvcP7tKV+KUdDrlPZBd28VCgP6ctbufQQDZQs4E8ev8NvmhJVAMAQn+UlW2RLGAtieQJhHn+sshhAlLD+DkX6A/TD9iNsaGQhlROxtIDr6aL0eEkkL+6asxLMIQ4G4ThjXxrT8E9B9cU2iIjb5PVo7akR8u+ijGQpik4oO6/z8un1iS3SwJfaZpKd2ytHJFyviPfMLEbaiQLQowQIDAQABAoIBAB1O7NBL/efyp4ARACrsvL1cSaRBDzULeLM9wKD9SzcT2YmJlQseG9ggnnOj+KzRppTFgcm041imvW5nWZwRrpoQ4LZG36w9IHz+Qia1XVtKyGlRl6MpiU4b4HszboCHng3wqZfRU/490YhUq3H+GfzbbgmFAJdOrcFRI+a4R6bqEsj2ETZ4/kL6VrUS9PU1PatCxm/PwtKp0Z+8vBDbJy8AUqZIaxJAHiFI3s+UXpNW9fG0Y0tYg4ZF59uefkUTWq+xE9+7PBkpuGIjVunegT500MRWhfnm35um1+6rUetvMoG6N6zUVYoeBdROmR+Y8BVd/R/yEnHDqVc4pF9phoECgYEA/EFNNEKsAaaWDbY9uiRm04Y9pwnCggSD3bSLbbJ1lJOyGq+p1W+P/XWQCz8PqBdJAQEiplWDA/VBPE5SuRk5RqYM8Xzuux7/iAuyqtVobIBMVKClxLs37Gfd2zZcfrp4vNEvIsrcKpxpvvTzqFCCCiPF6wNshtCOuCG2tmybS8UCgYEAyziDmyivBTcD2XUIkDPWsW25Gw+NmzWM7uU52jhm5OAXgeZyNI5l2Pci6lQ6jLgPNhXaEC+FtxOZDHyw/glgkX5lhaytiFxlxbQbci0m40xZsIm4rAzdVmY7XZ+Mx7KbFyaieJmw9EFqmLxQ8WB5jm67F/5q9NbqwNGg0BISTM0CgYEAl5o7ZwwmyfsvNWBwap2T+s4z4V7ZOkCya50lKrFVPw0gvi8Sl8art/1eq5Ojujb8VhEznNnJmqhcI31C9CF3rcEACGY4J9dyZXX6U/dcAdF9jmLaHYkTDA5EZImgPz2ccIYbmQJoHWfRmcUnZuGztZpYSWzOXZucGoeQgsR09K0CgYEAmJVzQzGVz+2Rx1m3N0ak4Y2H2YihAzN/APQ9rtqAb0LOg6s6frmYQQK2RYk+eN/OFAbuNw7ncCGX3adV4Te7OSLVKTwRA3yUsY/ct6qtMyblhMazUQNLwQ57bn1YX6x8BDLu9Gw5T/w6BDoI8GNGgaokcgyF1BX2JxZ+jxuyf9UCgYEAymDbdcL495T/y20R5G02xfnXwlZpJ03wbwspTyE69ytLvHXRdmvR8L7ok2P7jMrJoVbOlp62VBCqhKY2xSWVRudidqTTG8Mw+kiS4OFcvrUE4t4ZwZJHEF5om24wU9MH850kUkPzSo7LKfmH2PiYBCzN1Wm7bvZ0Dd88tnPfMgE='),('8de7fa42-31e5-4ff2-bc2a-e0b789bf9994','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','oidc-full-name-mapper'),('8e83d6da-6065-4e92-aaa4-7f54b242838e','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','oidc-address-mapper'),('8f097cdc-4563-497f-a809-991e91eb8cc7','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('8fa38da2-353d-451c-aab7-02363bce4640','b8e29bcd-ddfc-457a-a3b1-41e519a32b37','kid','79ebcf30-9a89-46a0-bc43-c54b4bcf2613'),('8fad30e5-be16-4a36-812f-85ebb12df0f6','659e7262-e789-4774-ab9e-278f111ebb2c','keyUse','ENC'),('906e58cc-e069-41fb-8d36-18c22fb010b4','5e41e8a7-3d83-423c-a479-63f32f6852c5','kid','6dd4f8b3-93bd-4009-a8d0-0edd5522f762'),('917b74b7-4c6a-4288-b897-06266735751e','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','oidc-address-mapper'),('920d9bd1-92d7-47af-97a6-6aebf4fd82f8','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('92566b55-bec8-4617-a776-5613dcaad6e8','db102350-c593-4fa6-8022-d2b4ac57d7fa','keyUse','ENC'),('9281e885-0f3b-4824-8731-d17620564c68','3d17f478-16c9-4df8-954e-a81f8c7fafa7','algorithm','HS512'),('940ba355-7747-4a13-a0cc-fe7510394cb8','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('94dc3d78-4eb0-4392-9853-46c969823f1a','c52d9d5f-8fdd-47f7-9ad2-e222d2e2f127','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('960471cf-9121-4358-883b-6c857861f161','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('969e5903-d418-43a8-9031-0c0aa9a7e419','cd9579a6-d9fd-4042-a211-08839512be71','client-uris-must-match','true'),('96cd8f89-6b84-4da9-9219-76f292d23c6f','bce1acf1-99ae-4e0a-8529-38a3ca85926f','keyUse','SIG'),('9875a6d8-4f9d-4ebc-b9e5-88f2efa2407e','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','oidc-full-name-mapper'),('9883c816-e273-401a-8feb-c7c52e81569f','24d3f3ff-f16a-41f0-bc31-83e6bc2450a1','privateKey','MIIEogIBAAKCAQEA6OWahHdNLYhOT5d4XEuPwWskOm0Tbzt2W4bC8fTOqV/xO85tKt54agBoB/lnY7beIx3pR/HbVZETphMLrCHGo4epOYusXN6oygBoavSKnknA3QVWccUBqw3Pj2qzgwNKQ6PqaZoR666/FtKnqvtcpJTE9vbiOTHPPBrP7MX8p2ZjYFcx7MV6HVuZG2D2ajWFtdiL+4eIgRm5pkXZx0A8hU9evI8/fa7OBxE3lK1RK4VQGMzXQdx1TTBPImfLnpMoz9sCMTTtuLUjrozeaBfkN/ob8QD19a87VePmbFT6l/3kqHzBlVsqWAXjxB6Td3rVaD/weCSmlVjAVkmrpkgmzwIDAQABAoIBAC5eSD1HY15FXRILnjMB+EUSB8x6GvxyYkYmtnllvB+MsoKtvp5iXKb+Hbg4t5Tqu59SPTfNt1V55OeTsyc6MkosoEyMumxjCEfvfNqOhWquVG+suGE+T+62eTSckdDrvsVoxSrxOdAqonDwz+EC2pcJ540j6jZo7FGTJQKHCJ5rKu7pM6xXytZuP1MCGeA7sRGJZ4LCPvuh/pGMCUxWK2mEJ4QdcYrt0m0IdCo0QvXvl3aaU6VhfvQshfBTKzME98V5ceUehI0CSSexBbVJSv1XVPuTx1uAyx0A/8L8JCPGvDSRZIXRpxb8oIjIZ+Ricunmb245KRv32+8NpNuskwECgYEA+M0X2VNzljKk1R2QTcbZ4a75RYSGxm6TEZohc+EG7JDqzgoOPnZfJ+z1AUgOSU1LM1wMBeZVr+WCgdrbVTDPGYtyLNPTdKsUQqkeLKbWKo6hkbADTxhQW8s+Y556+uYHejQIHglXyYg7CzCe1XcBCZMfDuowjCXQh5f6616MWzECgYEA76K0izAW48t1M2hcuiv1v7S78F6jzeLKk5LDBxa8EGR4UmEaFb1lXG6nkXC2oVSuUBkquJBSGtYcGkBOjTkubEvDQREXMtLKqoSGwpUrvt4yCh5JuCTw30VY0k3afKLWjbSy7h4tgPnI0J9Aoae/f++gxsez64+wj+B+Y844If8CgYAifGsd2I9g9kwaripeXX295n7uv9vejV0dR3vzj/FhwQSK4qHuzoGKCzI6pz4zst8Fk3CnMLIX23wne6qDOGy8YbPFuubIeR4pzz87eTSeWX7Trs4GnJwm3Rkcvc7WECRhL+0gHLNqX9OvTWH2vLQMG7RmYNex1Vv+L3a8QTK7QQKBgHGIutU/IXknig2jIluqPDJppKlLjXwcOTIV1ITlRpDVqRQOoVcvdniGjKmhp0VkY3nbkpwC9IN2cbYWRaEvOEli081eFYmkyRRk2ZwTJLi3eSnGE9NE3UJLDrwE2sE2PUTCGgwrDBARSA1fhjWQznAEzj2fnCS83UAtcnRC3eFtAoGAflKG6J3UZfZBwCFYm3hJ9qGyKnnxCeK+sr0ZQSsfclWtKay73WVH1hdUU4FLrbX4SwP1NWnT69qWgCQjGK1quXF/ThMh8t7lzMuryCGJSYr1MvSFLbdiLiU/lepRKenxSNcfN4CRQSF5pSQQ9ilmoUR3UkmAcY5XfLdrdVj9soA='),('995b688d-ac26-4b39-9d44-67f6d0b102c6','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('9a141439-0b15-42f4-beeb-796ecb4fc9ee','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('9ab2812d-8c54-4f34-8172-068588d095bc','bce1acf1-99ae-4e0a-8529-38a3ca85926f','certificate','MIIClzCCAX8CBgGQBknFCDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcyMB4XDTI0MDYxMTA3NTE1NloXDTM0MDYxMTA3NTMzNlowDzENMAsGA1UEAwwEb3JnMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKCEYKJT46+UVtVeqtHNi9YzqTK1j0QNnNNDK/xxEbRRHP8xUjtWwpjpnbZaajzIlpBwTqttiSy0LrX9/wXEyzgOl2rFDRPwPfcSDEkdbbN3RByv/PQS78/5fS/i0CBmGlVZFHihlNplqLqCIJzy0DNxZuK2giJoCEGeBSt9Jc98PjeqJ/cp7TyJok2YLmrkRSGnoeKeZV+nlANHT0JWSLBimhpYr6aPPSA11u+5yRNkeivMuBC9t/cpHKfsa25OhJG/ZNPqRZ4pjCKiAJUHMXLZb22IMuLuGiUTPlq6J3KVKdlzdgNr3WQuEzoKWAM1d7p5g6nsgFjDSvaOTXPF41sCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAhDU/Vz0eg5UeEnoXz7e6EFM3GOgI9CccSXvELG8qM5yS+J5DPn+B18OtKsebXnptsJ7N/XQNH5Q0vux42K0jGLHmHBuSwkw+IufRJW8MfXJs1IghqIs/3JsUO1z2aTT202rcThLAwwA0sacmidPJm5o/n78AZJeP495kdn4IyWYJueM76IbRNuJ9v/vCx+Z9kMiT3Q2yjra5w/EdXMpjBWJDduTXueR2vly2b0AXDhmrK+I04pCjm1BmfUYkHYl6feoy+6ZU3pWSmrKIfzKZv0Q68LLLRddLaYCjY4U0Otd2dKpwy5ttcYslGlmrdmlCHJ4sriWp1SioBRy71RmFsQ=='),('9b50eefe-98a3-412e-84de-06a0aee695c8','3d17f478-16c9-4df8-954e-a81f8c7fafa7','kid','c36b925c-3b1a-4dbb-bce9-3a8000e6170d'),('9ba13cd7-59c8-4021-8820-44179fcdca10','c37a9548-d529-44d3-b0b2-aac0ae7780d6','kid','7d38968c-ef49-4f97-b6eb-8339dfbac80c'),('9c5de4f6-c6ab-4da5-864f-47ea200dc838','3d17f478-16c9-4df8-954e-a81f8c7fafa7','secret','8IyGPP9HDbMXQruY85CpWmPQeN3ljvwB-KRAARfxf--3BQZIzemYbK5jqrs-G8W_1uEKeRcLx-HMlcrYXrGi5gRV2RASWlpoMEsW6XQDLy-DWI9Bb5RX0LlN6Br-dnyU8MvZqj66RUy0j-cDexnKOr-OLSTKPtl74a0RxXN7XzM'),('9d0f9820-ac75-473c-8269-2e5a2f420511','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('9f37e3aa-c209-4709-a465-cc0363dc9ed4','1752ecea-ca55-4f0d-848b-2686c25d0617','host-sending-registration-request-must-match','true'),('9f62c930-8fd5-40ef-b66f-1cdd1e1712f1','659e7262-e789-4774-ab9e-278f111ebb2c','certificate','MIIClzCCAX8CBgGQBkrq7DANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDYxMTA3NTMxMVoXDTM0MDYxMTA3NTQ1MVowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOmIQEaPX2z0Bz6wSC9QVsgsMdW719lbfml8OPCGqIGxeQEEIsn+HlKzoqIlnNtXa4EGbSteGseIBSjS+AOIlt1LvTFrHtTgr5YAblO86EFeZ7tMbyOjpmG/+TIXFUqOO3Rff2Rod0Y9GTQoOyhor4cN/LJ8CJih0WAAcHR0EhIVgwNm/nRX/b9XShxMczb0zJCe8icjdEjJjdIUtAZo5UXEC2TJjO9HGfG9EZLxze3Hc3J7JkSRzHN8TSbjUdnUjhm3NAhvglvyEgwWi6MBGJ+oWWWcwAzxDVYC3D5Bdlpdj+Tr6NS+CMgUnZaRAVAkKL8hHw/pytmiwjkpvUmvq2ECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEARWPOIxnfDxQwVudQoOz+0dz8H43/aW2J1huwzhP+OtBX8MsARDOBjTrqpmqpd7Qtod56EFQE4csJ9eoYXDRBYLhjdPcwcz1vjMvZHRSOOWGdZPnd28QbJyfW7rDdGxeBbyKMg/x/9DpLZ/zc3dInXupxMOq2OjnOdKuI2gW4KZLIGEAcr11jmypWIqEDhzWvkSngpBzJN3jzFHzmVyCWiFkO+U7ccWwgCsquJ2hxcHmXutqwej0pJhY70+vUFMgscWPQcU6iTQ1gnovsQLh+N5nOW1O0oGzD6iOvkZ+y7PUbYJtSqnv75gKW8MGzveBhu/e1wpa2gW1UF0P7LL8wDA=='),('9fe2b034-ef25-4c6e-bf80-62ad3b92456b','ade2f7a5-4edc-409e-971c-8dfb642ec8ee','algorithm','HS512'),('9fef7c40-50fe-46a3-a40f-8933ceeb9b91','869f7f5f-a915-4bee-96b4-ee5ccb18096b','client-uris-must-match','true'),('a00bd37f-05c0-4e2e-bac8-541caeedcb41','c8239cc1-3ced-4dab-a37b-16db05616d94','privateKey','MIIEowIBAAKCAQEA17K+j3W7Dl9HcnySRxiepKzRSlL18lQxB5I7jB4hLQ4VA3+xzBE3Yonblfm6/DTs3AhUQtJzdPoSst3/nmNum2B7Hn3UzSrYWh8gGEHqRATq+zwoV5bMRGuIP3vIH09hTiXJ6QJPctslbQ15n+Ic55ocKKlz8kEriiQlAnz4Is2Uh6Ez88PXzPY9fsj0DDNY/WwMjLfthRjHmnQ3vChCIQ0K1xvcQqMqEkEpfILjiN8r7HPAK1eROv48T5vOdoKr4q++PNHzSRXO5W9YfblPjEE0LK++ZF1LApKTJsjHAIcextnrgl3AP1Fa6TXqA7FmOyq8tH+JICLwRo4eYftw0wIDAQABAoIBADPZPhBLCwNZ6Nk+04SuiNfpyMdWaNNu5Hg+8Pxt86iaZXe5VrpIeyk/HR8QcB+W80ay49pKL0GzqRIA5iSjHx/PUdkTAzesMGR9beAW3CKskfWBUOs5DvH1bUNhVEoecTPxRncxvHpN7lGn9w/1MOCFPXaSwRG/E6G5rYHLG3R1yAq7sFHdHWAm7z3g0p3twFeU0RBuckmttYa2fuu1DduVC4qgPULJL2/VVZ5SzaJmbIvNXRYhtZ7VHR/RS/JDBM0sLPVgSXT07JEbEGVVRzqMUMBX8PfnuPOrajgWi1Kvv0NKJyWP0CaJ7kjqYdwZlDiyxK+R7DOZTbMaX1GV8/UCgYEA/dor3G6dA6TdRdts8FP+4RdjouokoFpVATRKcWq/cnud8AO37BZAEr08ySRXhpUCZte6UL/+Ulmp1XSHNDfFOW5t+T6Yq2husqvu3lAXRBoReQP0sl6t7+dskd2ExDtX/tqn4Bh5sheAKp4CixbU86prE1p+HITgbg++421frUcCgYEA2YXvCjl1ZTP2n7oLO+zqRd/jPNIXXVFgKkRUX3EbLIoHg87zEKY5mbExXcIO2Cro1iwzEBYxIrnMAU70dpEEIpaxGTvsIHVWXKHmcKpTyDBKYHaZZ1XgnPAgt6O4EG7cbW2ZM/BEBLEuGlmi6rozngnrbPWyzwjYEF+tj5Jg9hUCgYEAmYfbYT2RP0P2BCsa7xuOGus/eqfsMQORR+ItZ/0s/vue4SwOj/5BEFRdsDWHrkDvK+4rpG0KTxolqpEIuN9GLF8KqmVehsTptqxgExsThz/Q84Ud+MdkoaUxN+NnShuuM9hhEhsbd0fZX20jkqXjc9/NVO41OeBvsIFbbUeYRz8CgYAGrLhwDOFQUK7hqdjMZvGtYThc1mmHIIcd5Ojd4N+fl0Cxx7jnquIbmDdWlCzWb0Kjx8ltVfD+Cst6wsx3ku2Yjh0zFAaj3FXhE8q5bFCT1P+DREBizlzNFAU8/VYZkv1KklFgKaA8sJ8kidmY8EvDLrS9rDBnb/MJVZZC0JAPHQKBgHlECPgPwLqIP2NCBqGRpoiaArxZaZSJlZfFhD/ld5MFmbGbdE9662HgudPw+Aibyj0TjHnJKJrLtLq7KHYfxsz3ATtOeJiSqz5MvXwgwn/KpHU1EEylPUvgdLKdHjHj3p1xmMg9hp9rBtGWnR4SU9UTwZqcvzELL8hK2Ta1oxwK'),('a124ab51-e88a-45c7-b672-a4e1a11d368a','5e41e8a7-3d83-423c-a479-63f32f6852c5','priority','100'),('a1f2b104-90ee-4bc2-9b9b-a150833669b0','c37a9548-d529-44d3-b0b2-aac0ae7780d6','secret','pBWgZZ5xh-gWlACnTufaEQ'),('a54b6655-0936-4fd9-81a2-07a13aa23587','d48ad2af-7086-4770-bd3a-1bcfe097b1e0','privateKey','MIIEowIBAAKCAQEAt3oMPCh9ZY6dpEb6teEy0azL2pTw3eUMLdlrn5WUuPPV9ZzjRfEyfvG7SzAGn46H12l/WTu+kVzwrwxeKmREyhPr3fVswkdB2EkwQC2tlOjRePss6cMol51f9VHx3GVuyEqGBw7nMeSWMw+GRyH+2mgSzKJu/1jQdg/yEy2rNe05olbxb9s0Pvq4SBlCjmHtF3dfmeijyvnTAwoPgC+J+MB19k82RCfK34qhf9wGs7rk/ADNQ1W6xWGjtEJm5OZ1UnyOIFDZQ32TFqoD1w4RGjxNQ696rh94trLAds5aSNagV7eO7fqBgQ4+QqmlZeQJROpMSbIsQ/OkkfijgI3uhQIDAQABAoIBABvy4wSSSbvGfvFZ1fIOb8kshdHHqMNcaJUJZCa8ne7onI9GtVY1A4ipNmsh0eMh+UO78H1oJ5jewVPLp1fUy1JvDhnTEMdYHHR1KFJLwv/b0UuZE205NdNBUq881YIfD2zs8UAHqfnZ2h7FaXfSJWTMFWUHr1narnKgQ4i0BxB2eX3sFZTPtLYuzYzrq09pNsovRxxO3Ccnyi+wRhOHN/tjBQ72ZLOzU1i587KhMQppWmOxPyIiYyNVhHjjdeEr8y2990Pkp4+FPnwceIf8ufvYaPpF1C1RaOVmiTCTKolyy1CgvoWFT2V00r4yugYMic+CtjsWM+9prJygOS8VT2cCgYEA6eOkmWA2SkKcTqJgyHJ3eGxmcUnlqnk7hG+qxUhlMuQ0fTrS71bTMThP1RkY7GtCCIxdGI/xE3i9X+Aj3w1HJTUq6BmcRYbp0DGr2lFP0xrsTMXiSjV4obeoW7iRFudeK5hoo2grmMKoWef7d5lDtmuItjKOt93CahSgQfPrwWcCgYEAyNJfHncHsw6GFumYwk9B0jVjTmh52ANBYbtO5sL/5DEgQ18ciLmbhPqvrpOJtXoneYrENooYJhCh9kgjo7roBhG5ej+Vf673NsM4zwmOIudJnw42MfNX70FZ7poq1woqBiEC8auVvn57J1RQKCV/5sU/GCUV9z/AGUc/JP5jATMCgYAMnaHQQBdNlCA4QZv00+/LyBUSgUjpFBb4wsk0UP5ca2DFbHnaPRWxLvdnaC4m+nYaXe/bllALm9SjKkTlECNJR3/j+xWpzmgoObWqVf53RZl/XqEhHZc/Kdfj8qWo1ZwHv/XM8p5/Y+iOyOuQfOzhFxXNthZqpoSJEkm+pPiPewKBgQCpupPGDdgmD9potxny8EWzQogiFs8UMPwre8Hd62WXGaYpCtP1Atpcc/vT0sKK7Sk74nqflet/EIOywZnNogTETGq01dSmy9wJHsp+wZauDUj982b+pKrnfhZiQU5/3QlTkMcKNnkjPYcc4He21qrZAlCnOYDtLaZQNxU5UP+gXQKBgHUYtjiSpATl50SjOtklftd5k9+y2L0W7aWGC5d3X1ZEzntModvoDOj7KXCdpd4IRh+/J4dnNzk4W9gybv6CJbPqF5ZnNavuf1A3puWqoeXIwmeqWbwHuqOBfbBVkUArAYcLVx2bqZcR+yIkxKWxJGZAkcbwt0l309QrGnKAkptx'),('a59078cb-40b0-423a-b853-d4f4a52c85c3','abb4b0d2-1b39-45b9-97c4-1773d468cbfb','certificate','MIIClzCCAX8CBgGQBkkFWTANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDYxMTA3NTEwN1oXDTM0MDYxMTA3NTI0N1owDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK6XvWWW5I9hyru4qvZWfP1l99JIvi7tDHfyXnKm0owwtup2fWVIy8JAhzA8Qs67ID+b/YTtGgYvew2GTivsjrQLBo0mCztTVvBRA9evaHfTRPfz/z4CqYBIwrOB2jYAGRIcf8jsgssR2eK44rErdl32c8A3yCFavxFV32/1JacgrUl+2FD0lGoS1QNXCdf9BmNoD+FOgqvRFV3u7x77ov0zYy5Y6wUVFsaSpyLf+twiiMABpUjrb/9PJlpV0TV3PBOI1DzZq9ayLqh7rDC0tQE1o6tKa0fLpumqTnAIKQnaEh6oE5hh9cAcxJSrVF0Irynl0CLxh8nHqA4z/epeKrkCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEACzbRVB30ZcoznvxrcH6lko1i2Ykv+NE4t0Ln/ieBfTNq/lc8gx/c+XhqYEVrsWvsfISiabI2NI1vGjqFQTUZO6wX5qy9S1bIqcgXGVA2/bBL0HbRFxBlUyIPJwiJFjj+QQ7qc9Wpo8qHvdwyKSTzjdKa56lQIR45TITIsa64RyXl0SxfYjxJelkMMiXeLIB18q+ddYZ/YhT7rBsdwNc+U+Idns9qnIQsuLcKXEBC6CLGi5TLGAT8l2cfcF2ZrQmMdsXkuDf6mKy+whbYEOSVTc3SlQunXSqTgTz/7mcoBPFdo5Gacv0GxS4yrZ40NsRq6TU+W4+D4d8oNKwkz5cFHg=='),('a83d7490-12ff-402b-98ea-49e5523e0795','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','saml-role-list-mapper'),('a84362c9-1b1f-4561-8864-e34ed9de3b6d','fa5568ad-3449-4b60-8fb7-56b6b78e47a9','keyUse','ENC'),('aa59cce3-8b3c-4ea3-b44c-4100906e35f6','6535aad8-4362-4178-ae53-4ac5b8e5abb8','allow-default-scopes','true'),('adbac717-0df9-49af-94cd-e85ce89943c6','2b991f40-5559-4558-b7d5-21ac312e9e85','priority','100'),('ae343f4b-bfc7-4004-930c-6d1368485d8c','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b2379284-6f2e-4d3c-88b1-cf8048da58d3','c8239cc1-3ced-4dab-a37b-16db05616d94','certificate','MIIClzCCAX8CBgGQBkkEBzANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmcxMB4XDTI0MDYxMTA3NTEwNloXDTM0MDYxMTA3NTI0NlowDzENMAsGA1UEAwwEb3JnMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANeyvo91uw5fR3J8kkcYnqSs0UpS9fJUMQeSO4weIS0OFQN/scwRN2KJ25X5uvw07NwIVELSc3T6ErLd/55jbptgex591M0q2FofIBhB6kQE6vs8KFeWzERriD97yB9PYU4lyekCT3LbJW0NeZ/iHOeaHCipc/JBK4okJQJ8+CLNlIehM/PD18z2PX7I9AwzWP1sDIy37YUYx5p0N7woQiENCtcb3EKjKhJBKXyC44jfK+xzwCtXkTr+PE+bznaCq+KvvjzR80kVzuVvWH25T4xBNCyvvmRdSwKSkybIxwCHHsbZ64JdwD9RWuk16gOxZjsqvLR/iSAi8EaOHmH7cNMCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAIgSWR/S1ykZNQOtSo34/BJ38+O6aAKK9j4RIsTUe+4wUVX13a/FzONKPqljQDEVR7LNg1z07YVwwZ7hDhko+2a/q5SiWA1SMKpzPbfWzOWxbCTfMGrAki5GfnBQB/ponp+4b0YblahHKEOeQ8TXwo4g7098eR5R4EohvjTNZ5Mu9MWlzEyvrxsJhaFre+KhjE2eJmQWt1kyuvKUbq6F5dUw9MiIq+WPS9mTAD15A/KHBMe030HPVXzD0yHM9NQq8XrXdqOsXtvx2sSwesR/UmKlUOOU2oWhQgb3PUWuxfNyUq5rUnGTrRXaOv1koAnbodgoWXfGuy3a8PkLwfHmzzw=='),('b26f6d1b-16a4-4266-967e-864f4b351fa1','bce1acf1-99ae-4e0a-8529-38a3ca85926f','privateKey','MIIEowIBAAKCAQEAoIRgolPjr5RW1V6q0c2L1jOpMrWPRA2c00Mr/HERtFEc/zFSO1bCmOmdtlpqPMiWkHBOq22JLLQutf3/BcTLOA6XasUNE/A99xIMSR1ts3dEHK/89BLvz/l9L+LQIGYaVVkUeKGU2mWouoIgnPLQM3Fm4raCImgIQZ4FK30lz3w+N6on9yntPImiTZguauRFIaeh4p5lX6eUA0dPQlZIsGKaGlivpo89IDXW77nJE2R6K8y4EL239ykcp+xrbk6Ekb9k0+pFnimMIqIAlQcxctlvbYgy4u4aJRM+WroncpUp2XN2A2vdZC4TOgpYAzV3unmDqeyAWMNK9o5Nc8XjWwIDAQABAoIBAAaa8UJiHa7xIDz0gdFTWitCLKFpEOWrLRERJQ4PdbvhUJunDcFiWcH4GboncKgNVbYeNlEzQd9POigutQqpj/aVEcxeInfNEt0IEZhaon6C7GXFJNgYWrpIrnWaKZgDtkFdLTdPkt6v1eh4MrEIBDhHCjBPHqjIINAubqZc+9bUryGxmIXaOHDOB7huhjxqdDTUzWixrdsKAJog7XBSjfQlfy2syHa2+WcD7Yk8SkSIkofGwd4xjdUN51yfJlifHf6H+uztCPeKaNR5tOQ5O83VEyVGpuGKLiId4xvV7nODQONlLrTmDvIYJQ3P0oYhHpTJs2mk7c5JYTVP2X/sUi0CgYEA1nLS7sWGT21ZZTdS0I2wks0DB9ZyIqgS2ow2GKL7BhLlbGiHW8pXFaPrFPmrlkQj98v/q6Jbysyn4XSrQsUccfjF/k0MaLF3za0pFm9ZsngBgikBn6UcAGPsQuL7ubrmHRTwPCKujVgNzbtFRrBc2TWKsvXN/W7NCYAOW4f0/hcCgYEAv55r55gOojiTNmoFIhkRBWlR+jVEfmOdzuPhpiMRMQzz6oSe5I89eYzXUpTaDVSbVOtAdw3BTxaAHaz/B64Sa2skpLpqUP8K6GEzve8dbVlWj3aSLEKTt7sbUQ3doc49r5FTKv+Y1A8vzzipqllh6O8xFhfu6SEAYbQqJk9xM10CgYEAzhM1g+IouTb5ivxpBqTCI7AC04tNzuP4ii/m5DHqS+Houg6Q1LJSkSceBuAN9a6xabSNkl/JGc8lHNDCqr1EInnPuhpMbGbuG6XlL/v9FDWiLXQ+bS17BR0Asx3wjICAFT5DxWYGmykcyrDFV7Ku5sQ+7s6rDnlla1W1dlvmIC0CgYBjgbBFTyhiQ4DnI/1QbLXzGnNQvLK5858ynhJDBTjbQP+1jHM6+8uPwHzczKHDhGk5mwUaDhGRsXyMbJbvdQzprXUU+h1VvGv8quWEv5SHgXo6+/cCdvxg0BBqcgnjCcfs0UngLWU+0jggoyswZEQ9A2F5OKp/c/zPwBCXXm/JnQKBgHmZTS+85gBk9h0A4YKX3tlJNRvSB+y5PDUS9FGu/fIp+JeBq1IyZTICKJRj5qsMecGhXrcoJA2Qb7G8qhnXq4xrmBIEB77mm0eRS8Ycv9XqhH1QvVT9/2wfxdhx+cg1supzM8CFwkQJ380gxsbfYDFKh9/So3vXusd0+Ny5PgFL'),('b30208f3-65e4-4ea9-979e-07d33b110702','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','oidc-full-name-mapper'),('b3f3f6af-d582-4172-944e-d0c79bf7882e','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','oidc-address-mapper'),('b4bd52cb-d318-4445-b630-4de5fe9559f0','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','saml-user-property-mapper'),('b4f821ba-66d8-466d-9875-f3d0b4e297c2','659e7262-e789-4774-ab9e-278f111ebb2c','privateKey','MIIEowIBAAKCAQEA6YhARo9fbPQHPrBIL1BWyCwx1bvX2Vt+aXw48IaogbF5AQQiyf4eUrOioiWc21drgQZtK14ax4gFKNL4A4iW3Uu9MWse1OCvlgBuU7zoQV5nu0xvI6OmYb/5MhcVSo47dF9/ZGh3Rj0ZNCg7KGivhw38snwImKHRYABwdHQSEhWDA2b+dFf9v1dKHExzNvTMkJ7yJyN0SMmN0hS0BmjlRcQLZMmM70cZ8b0RkvHN7cdzcnsmRJHMc3xNJuNR2dSOGbc0CG+CW/ISDBaLowEYn6hZZZzADPENVgLcPkF2Wl2P5Ovo1L4IyBSdlpEBUCQovyEfD+nK2aLCOSm9Sa+rYQIDAQABAoIBAAUP1MeOY4HeuWeRYY+HtQOoItk2Nejne9r9J74pR5dubd9aSfAdxB/+djJF3JLGFG0E6PtFXb+jwJomW/P8MyRjlTi1+Xys49Cx074BUlbOwBtwT4dkQM1IA2UjnonRxzAtCIz4FSh8+grDWdbpOimrcuAWhTWiR171IUxTzRoyy0Ad5Lc94AzkFlCU3tYXZ3pypmFVYard+N4pk8oqnmRfTEMJ/RzHBcJLTALifN1DPJvCl4In7wjqF+af5zA+MdmVVs/NWNVkjzzGWf1JrA2UkOxtUVrLy97MohVGD0tYGcbfIc0Eo+vp23uzmPGORQLinEtq0QubdRIggVYmYV0CgYEA9myz/vrMl33bc25q8zEjjNFwRJxVuY1dliWWZSFAjgNbPhXkzoNYL5nznfWDvbvhW/27uzCM52LVfW9mIbmg9IQJaPVGXKBSf0p8eZN0R00+LNKf4MGeEzShbtpdXoxlYloLtGCNe4zzDO8zAJ1Vw28F6ISqMFesltPkD0+NqyUCgYEA8ptNMbS4fq4lK9Iwhd/Sg6tq3jg/Gu0pHUkwMHoLU/KRg8GnW3jnqdJvEmOJMrjztXXd3PZgPN6cTVUmvi3Fgzh7TouPn+AtWs3/ADkVzlCvcQ+z1IWw1ttBddP1ja261W84kcdCUV+XQY+3PZJEgsAPPL+IJZ+BEB9yDUqOSI0CgYEAo5QlJ+10QlvZgRabCDRmVOPykpj0jue4aCMrYpZgM+UmfGAsMqodr/uSLBj+CsTdJCOaqvffkPmanlmEgn6myamcVX/75SDHopffaRTo6yvrSfXHC3t7Y2RchSmPMWQhKNh9TI+LW6iE7uEaCh5nAASC94aZMt4AQ18E1OUKNcECgYAUx0JUSIMormeWmjj3rlTMXCkaAT0+ZCOKU5NiA4Hm3baizzozNma4/8HtlELS6k5NM1weKafSbsp6QRnBXhA1jefZsVBKxBt+VHhLn5gDhJuSFmMzh4O+0yaHHfFBAiknUJBKxAMlDwfYYKO0DUv62tIzRMA3YLLgG6FcDA+lnQKBgDvHsXU1z+Bs6P06UbYcpUxqb2KugO7MVci0bNM4u6CbiA7nebogC7ayfYIZpcj4J1bJbvni/yGiwxxNwaTUdVnaQEuc7gyo/6GdBs5jiamyHLEsEx5OXphaA71QhP4rVP6e0eOgLWXJKFTqAtlTFS2q+e/lprV0gb+GSS2wzP/m'),('b56889f5-c3c1-4aab-bb52-cfb387e50986','d90d3974-e349-4e40-b837-72d67b5f0eb3','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"required\":{\"roles\":[\"user\"]},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"affiliation\",\"displayName\":\"所属 / Affiliation\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"description\",\"displayName\":\"説明 / Description\",\"validations\":{\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('b5fcde59-9fdc-4842-b11a-0be90381e54b','524762b9-dbc3-4c78-af1c-12a19f6e5e04','allow-default-scopes','true'),('b629a8fc-0f73-4639-9661-a873c0c8f453','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('b8c6c6d5-6201-490d-ad22-8abf062e9821','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('b8f4aa6f-2a8b-4505-8cda-950c0c1192b2','cb217a02-6795-457c-87d0-a1cb03797123','algorithm','RSA-OAEP'),('bbd9093b-4721-4d26-a5e3-d26a769f2812','8286e49f-1520-4a69-b726-b350c0925601','kid','d3368b65-4e33-4edd-8668-25c859709f17'),('be265813-3198-42d0-8539-cb749b9553ce','372bd837-ec63-43c7-ac85-482e4320ffa7','allowed-protocol-mapper-types','oidc-address-mapper'),('bfe69215-47dc-4687-b916-8a3cb4452414','f7200bbb-c88a-412a-8cf3-388a9d371194','max-clients','200'),('c1e84652-9c7d-47d5-a84d-4d4fc6734335','c8239cc1-3ced-4dab-a37b-16db05616d94','priority','100'),('c364f513-abc6-455a-a47f-20517416c4db','96db99eb-dff5-499c-bb43-8c85b585f001','secret','QvwGDnm_JL2fHmeMzAt5JKXmtjQsJu8a8dU7A1Cv5UgoTDybLWICd1-ry1hssD56-DHmqoXUQr_3UuZ8qwc7N9gwshWT-vLOsgcLR2NxQjMlYlDJAUy2R6nVLJFXBAX3PfqyCi85P7MvcpfWDw_0HS5o4QTNrCNfVfpYRbpKs88'),('c395a77f-174a-48fc-bca5-57313ae5721d','4b99c82c-6596-46c5-af00-0aa4e3516757','certificate','MIICmzCCAYMCBgGQBkfN2TANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjExMDc0OTQ3WhcNMzQwNjExMDc1MTI3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCP5V0UbJ/9MO97KeTb1ZbxkHjH5UoQcrPEAfOuVHdKoUyXlg8+VvvqkUpjM1Zojh+yG9E75OqQzjljfD7BCm/WPkzYiMf+22doVZKh9PF1B5xbjV+SnWO1kV20MYf0CEUlzfF27CoxRrzWUOfxma4gJA/1MlHhKlv5o0XvNwWaahrjMlwFHRcTxf8S9lC87OTqHFCQr+AgxnVQZijpWZ3CBEORk2F9SON2NiDdAPeHuvQ9dVP9XpRqZD1gpbQ+tkddgl1RN4qX3g3Z9tmMdr++WSuUDrvUUFYHQTonG5rvODmNwQuY9c9SB8xwChWtpEteEjhvpxA8bg4L8QWCRw3bAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHiCSkp8NQYg01r7PwMof9Taq816GVID/Jm6oJbtV2RjxGQT6QCVE49bLxYeF7FyC0mTcvBX1TCPsck4NGYQFgjhm9qEdgLYvI9CUeMgqm4GirJAmb8rVse2fKQ7wzBwwUCVSbgBzmb0HaPeZc8zesHB/HVgWGbWgNPrpaPM/TttEZkILRqXtE7ugxKzxplV8zk44DNCTkK9xrLoB0oYfijEZTIt8rI02VE5g5SaB+ergu27TZjlikngiiAcTptoZ5dB9ASGCH1IsOBjyf49BkrezNHKTNA+GDVaslbL/RDhdP5/G8sZAg10wbXoZaJRn9pRZajd8hnKB8tpcEWPUKA='),('c4508d9f-ff37-4435-a1b0-069bc638c4c3','e16704ff-b303-41c3-8a09-7d82da323e40','max-clients','200'),('c7055d36-9568-4e33-bac0-92b716735f9b','cb217a02-6795-457c-87d0-a1cb03797123','priority','100'),('c765621a-fc19-4f68-aaa7-dd728628133e','96db99eb-dff5-499c-bb43-8c85b585f001','kid','bdb77ea8-6bd3-4619-8610-929b4eb4a402'),('c7de9eaa-0467-4ba3-929c-091b4ab743a3','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','oidc-address-mapper'),('c8d82c16-f6cd-44e2-baf4-03abd897a067','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('ca14f412-c363-4bcf-a444-7eaf22fc3d48','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('cacb55ed-cdb8-47b1-8119-ee0526c5e955','2c765bc4-a6d4-4ca4-9e1a-e210f2d334d5','privateKey','MIIEowIBAAKCAQEA13c2GiRbz+Mhq9S1rAbL7B9feFgUHfJ3NvglCKbGZPGa0WIvsaZzSFdSkQSVA4S3dfqlaLegIlBs12GRDDLodaZtXDImzufDqpLaqdAW1y7DjuNXHvpMkD7nt3JTytdzfVSdsKtQaldRKtcxcXgvHp1AB3NF3MVEY0GFr3YbwfLe22W4/D7qj+rx/ttSmjU3DZjIK8/5agE/fQ6SOl/pvIW2k83oWQE1HvpUwnMT0NIbxXHybprTmw7Q6h1bfUeujGnKl/Nqv8Eg+9eEw0vCCHNMvUj5x5odqxr+qrMUxRNv9RhrsECNM5wvfI3wiaAccfsp11oLvYDzosNnyH/D9QIDAQABAoIBAC0LchcTBNK4NEDdDkHxhc5OXMIm/8Wm+/9U70EYxJ8z117wvPHRz4YPI2bH43NB2qzigpQa13J1B9wbPJylQ+3cpj5BCdX1o/VUEDyyESRZVW7Y3kzOnRUG4aB7WUMtuao492KI3h3tNT3UkTScoJUw4MLt+WwHHZ32g8FD2te30VUPPa2ra5p6e8SBbooI2wX5TTTc0hO+jjbQzIZxaPkw+ggszAigV+74InXkLOuTw67igubyn0zcC2PefwBy6siA4YWf5q77Hdq+1CPsyQZD4x+4Th2sP78+HO4jSpn4fmDGdT383jwPs+hEY9rE18hiuVF55MYWD1JbtPAT4F0CgYEA87FQLJr5HeiYHIkuxV0usx/3SfXyL+xf08JY5tircpgQSD3uEMyMn2JFYkWINYoMRKrzjs5fD3dhRvopAxe1+lRqthLr9rO4wc0lxo27RQUQ++HrR4oZfS9BjUxina8CYOeKi3aKOqidRYj0X+LR7quxPyCGCPOBYABBEVI4fm8CgYEA4lj0G4aQy4QGw3doceTTcuQTrBjd+Zy1zoI+eRPnHK2f4O0hekj6SFuQPgetZh6M5yQ+V32s72d/RUqFjArf85IoHIalk6Uoea4TBJ44HD5t98Z36f759TqMeiB7drUln8x/NUBhbvHzMvjh0Rel+kGi19uFZj+adz6tBuM7ldsCgYEA1lnK+dE++s3SrpcEKtox76FYdRf+9aRnDe7PIA7Jj7yt5b2DoAcsUi2wdiZPDzjkXao5Hg3sk8AgMrxsQqoiiZSjYI/4OkIPa3i1l5aneKhiLgykVYLltLVSZaUgwS5lWzOPK+kS4VHbNISo34a1vcgL2kkTXOBDllvi4AeAZcUCgYA5WIggISu2JDECfNI9aNgZl6dURsiWYRm+xEjHrD81iNekyO9eZ/bhNjGJRbCs2rigJxKUYAbccMBR8dt765VpxHHdKE/y5Dko+u1ekidtIHQD/oiLBEqX0smcd3ZQUPzDS7A+8Zy92xbepyevLeqjSNXVEoztpteftoVn5VJHWQKBgGfQc+wDYkrey+cz6fOBtRMgrgzdJeB2mbPk45krNRP/0DyEYfXFsSIL6UCUABEpAQkE/dQpDJtpRjA1I3OK1bdChaJzhYs+Zk3NTbH15YqwfA4G/oUqcsFUwfXRvDm9fK8RimlebY9WLF1C1tYYbUKqq1dwOfXRoRHSfYartpv4'),('cb98ac03-645c-4848-9dd1-97753a86ca02','db102350-c593-4fa6-8022-d2b4ac57d7fa','certificate','MIIClzCCAX8CBgGQBkt9UjANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDYxMTA3NTM0OFoXDTM0MDYxMTA3NTUyOFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALM1ienixl3y1riS8+PEB+NPvqbm3oJgQqezqdlxWBX++nn6m/p75dvarRDatzZEI3Zdt6FRdfckMBYRWv0btK2BK1n+FtesX2KGFV63WNvFA+w1jukZOXQ9mSAs33tc3KtEiTu9lWgVu53vIN+6+KyDPkV9rrw4cfpAbNkMggYStxt91N5zKeTTKCGXxk/7pWHy5CcB6vDjBS9HoS5xdM9UGT0vShXJ8W09WSzGue2UGbFmeD8g1WyrTFPbW82muOdsvrNi0aEJF2Q4jaudCEa+A6+REntLDaCrajtwlHN9mOQotosRDzIbGz6gEe+2qkxA37DTBeMTtb/AR7nOLdECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAEFJbgoAEVgjdJCuMtWU9hCjwCt6nC9OR6GXaPxpweuIxpoRsUO1vkppjz+EeJ9ILY/0jwl46C++gB3yOnqh+85TwALg9XB+j2SdUU2ZBI4J+UfBIRiagwaK+5VhDKJWbVuxc1xDwp1m8Hkw+zsqAeljjsQdbU/sUmxq7MeRLUqfL91izW5TgpRIPEo812MjUJFBPlLTVw2obdUwbSdiqooK5MPAemIxQsBP2WuvB2QCvuKRNdzojLpgEojI+voPH4ybqnzGibCx1X+lVSoXZXgJWrSSv/2hI8yu1tgS7X0bzXN82HzTxn7EK6ESox2mjxf0nGKZQzIpzW1QzQNGY2A=='),('cddfe61f-2185-44fd-8f36-ca52c3cd59fa','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('ced98a2a-a067-43bd-a1c8-42808d4d3d0c','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','saml-user-property-mapper'),('cf7ba8eb-ace3-4809-9d9b-a33e456e8f44','c37a9548-d529-44d3-b0b2-aac0ae7780d6','priority','100'),('cfc68dec-6c40-41d9-be28-d00e98d2cf68','db102350-c593-4fa6-8022-d2b4ac57d7fa','priority','100'),('d0f0b8c5-d211-42a5-bc16-b7b6f8ea6d52','2c765bc4-a6d4-4ca4-9e1a-e210f2d334d5','certificate','MIICmzCCAYMCBgGQBkfLHzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwNjExMDc0OTQ2WhcNMzQwNjExMDc1MTI2WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDXdzYaJFvP4yGr1LWsBsvsH194WBQd8nc2+CUIpsZk8ZrRYi+xpnNIV1KRBJUDhLd1+qVot6AiUGzXYZEMMuh1pm1cMibO58Oqktqp0BbXLsOO41ce+kyQPue3clPK13N9VJ2wq1BqV1Eq1zFxeC8enUAHc0XcxURjQYWvdhvB8t7bZbj8PuqP6vH+21KaNTcNmMgrz/lqAT99DpI6X+m8hbaTzehZATUe+lTCcxPQ0hvFcfJumtObDtDqHVt9R66MacqX82q/wSD714TDS8IIc0y9SPnHmh2rGv6qsxTFE2/1GGuwQI0znC98jfCJoBxx+ynXWgu9gPOiw2fIf8P1AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJAKH/TT03DvMcf2pOiApxEVOi0Bp4mnLIi0lWMNqQnTirORxRe8iBtCgDiUIAqbXL9RQlrStWPW9IFmekJV9RGb7KiWPkFEZF9P1obu/seA9/a/Dza/aWUc8nHiQlc0lOB+T/EgWGGHRV6kOtN/HkjSgts44PNRyvDsuJVe+RSbr9qybDLITdjkVn6Gg6JO9pplEcx64y96ktTLMEGUUWnh2WEYuceZSAXE/2jJ+y8Z4BXWoYUchi/hUny+G34sm2aCNYzuI8fTP+l8jP2RUtJV87jK0bpUqyfF46lt9dKk0rdhWkC/giDh2ueTWn+a8vUHPmEHqltT18Dli6xWNmw='),('d16e27c6-4542-4158-9bdc-c66765b807ad','96db99eb-dff5-499c-bb43-8c85b585f001','priority','100'),('d5742546-b082-4788-b6d2-fc7824c8c545','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','oidc-full-name-mapper'),('d7ce4ad1-3c12-4b7e-924b-ecb2efd8db6e','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','saml-role-list-mapper'),('db736346-9f12-4421-8ae8-9b96facb3636','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','saml-role-list-mapper'),('dbbeaaca-bf0b-4d81-b193-14b7d32214f5','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','oidc-full-name-mapper'),('dd77da97-f94a-43d3-9166-37b3c36d6d08','2b991f40-5559-4558-b7d5-21ac312e9e85','kid','22a55d5c-6bad-4d86-8fad-8224404c4a7c'),('df6aec41-4e80-48a8-82e0-d83c53694bac','d48ad2af-7086-4770-bd3a-1bcfe097b1e0','certificate','MIIClzCCAX8CBgGQBkt8hDANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc1MB4XDTI0MDYxMTA3NTM0OFoXDTM0MDYxMTA3NTUyOFowDzENMAsGA1UEAwwEb3JnNTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALd6DDwofWWOnaRG+rXhMtGsy9qU8N3lDC3Za5+VlLjz1fWc40XxMn7xu0swBp+Oh9dpf1k7vpFc8K8MXipkRMoT6931bMJHQdhJMEAtrZTo0Xj7LOnDKJedX/VR8dxlbshKhgcO5zHkljMPhkch/tpoEsyibv9Y0HYP8hMtqzXtOaJW8W/bND76uEgZQo5h7Rd3X5noo8r50wMKD4AvifjAdfZPNkQnyt+KoX/cBrO65PwAzUNVusVho7RCZuTmdVJ8jiBQ2UN9kxaqA9cOERo8TUOveq4feLaywHbOWkjWoFe3ju36gYEOPkKppWXkCUTqTEmyLEPzpJH4o4CN7oUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAtOkf5YpeK7gXJm9yWkt+m98ypYkZJn9BfVG6kFRbsHaoEfEqxHVnEvloQpZj2sF5bKXQVG7ivNvwK86U9bFzlaaYNMH2E6XaFkmhitTg9GcCLJjzg7sAgoXdLgIOVsCffsZEWhBY7aj37/NKpiHammPCOL2fZQ35kH9vHxEccuWtPQuXVmsivAv/yMDyyPi7Pn5p9rAddTK/y62jvxyQ1yzEI2YF0SMCGyr7YmPmWFRyONCLZDGJ9joOESwXmqsmItfVOLK3t6X7wtPMyGNNsQhD628jm9m2iuFHsUoPkHPk9v9Typm+3e0XgSW5khUtmolIeLMUy3dMRHiS3AbzvA=='),('dfe44da4-e7ad-4a84-9600-7b46923aa953','0e4bcf5c-376b-4b9a-bd14-bd492e28f6d2','secret','hjLgxzptiEwWDT5rUy3Fsw'),('e03ca2e2-3b26-4aeb-93d7-d45f2a22e4dc','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','saml-user-property-mapper'),('e08545af-e94d-4d0f-b755-0c5e7194759e','55a47da3-316a-461c-b838-ad7c4c17c443','allowed-protocol-mapper-types','oidc-address-mapper'),('e08635df-df65-467e-b010-9abdcf829825','7bc87b25-846d-4db7-99cd-37a47d6318fc','client-uris-must-match','true'),('e0ecbaa2-ec1d-4b9e-bd2d-82ca0f63b556','1875f6db-9f27-4e33-beab-5c6f507e16b7','allowed-protocol-mapper-types','oidc-address-mapper'),('e10b42fc-b3be-4fbe-be17-9b47e7f859eb','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','oidc-address-mapper'),('e14cecb5-300a-4184-9116-34151283f6eb','0e4bcf5c-376b-4b9a-bd14-bd492e28f6d2','kid','d8163721-cc89-4044-bd6f-8c26b8786f51'),('e237a6ff-eeee-45a7-a684-4db436b5b6e3','db9d059d-0b87-4f55-b849-183591b7b3cb','allowed-protocol-mapper-types','oidc-address-mapper'),('e4032490-e3aa-466d-b297-346346966a93','a76f591e-0b0c-4375-b24a-ede20b86a22b','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('e4a4dd42-e73d-4a53-a50d-bfc6a0e73e2a','8674fca3-eea4-4701-a614-1cdb3ebeb668','host-sending-registration-request-must-match','true'),('e9ab1c4c-1d39-4ec1-a6b5-b7aa94434546','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('eac79537-60fa-4d79-b38a-4527d412d527','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','saml-role-list-mapper'),('eafbb5c7-43f9-43c2-ba5f-fd823f0929d3','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('eb1932b4-169a-4e91-bf23-136450cdb727','8aff88e2-e442-4fe5-8df6-10b458c2012a','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ebd1c60c-6627-4d27-a811-2402ecab1acd','60f3ce8c-75be-4fed-8772-62875ac4b223','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('eccbe6de-f3fd-4778-be65-cbc946c57e58','0a4ca895-9eaa-470a-9bc7-946a000f4889','kid','e36b329f-80a4-4ccf-8c17-4d0f65178f55'),('f0bbe307-24e5-44db-8835-4a034b419146','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f20f9206-a615-4ef0-ba42-35cd2e1be010','bf5b2681-5e87-4cbf-8dac-b00852a5d825','allowed-protocol-mapper-types','oidc-address-mapper'),('f38c8bb5-a406-43d5-9970-7d3d19279a6b','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('f453fe7c-412c-406b-b613-3bb1eab406bc','d83dc8cf-e7e4-41db-8a12-547bd8c551d5','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('f455e65a-96f3-4d74-b879-36ec239ed8c6','6f6139a6-3e94-462c-8b6c-a575bbc45658','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('f4e22c73-c6de-45a3-8465-85385c60270c','24d3f3ff-f16a-41f0-bc31-83e6bc2450a1','priority','100'),('f5862a93-8f2e-4773-a9c9-0c89c74370af','f379de91-dc33-43c7-873d-2d5daf06e92c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('f7763387-b654-4fec-bd76-32421b2f7b94','2795bcd0-7980-4e3f-8edd-81b6ed4e513d','priority','100'),('f85d6e59-e40d-450e-8332-3e6a62eedd1b','8abeef2a-ad7f-4028-8fba-d6d2866b998a','client-uris-must-match','true'),('f875d9ca-fb69-4d66-a7cd-181cf4aac995','fa5568ad-3449-4b60-8fb7-56b6b78e47a9','algorithm','RSA-OAEP'),('f8ce3d35-b202-4763-bf37-b5079c870a41','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('f8d226ea-9947-4fcb-8624-649647837344','d48ad2af-7086-4770-bd3a-1bcfe097b1e0','priority','100'),('f9995d2f-ef38-4a2d-ab11-5f3d028ef5a7','0a4ca895-9eaa-470a-9bc7-946a000f4889','priority','100'),('fc69b427-ad60-4724-9f7b-93a0d7bd330a','0a4ca895-9eaa-470a-9bc7-946a000f4889','secret','-ReFqsddvREIvzgosrqQWWS6sYZ-z2-U6mQVxrCnBCUeETjFEnD8SvFxwY0ZLlFsArJsjy8cPUy3yEw2ZkSjQVYdhL0jaRwlgxv_4-fY8VPTRYgF4Or9u7XyY2kVH71BiVYh9J1rE3uBnmST-3fE_LzgPm4gORYlods7ZkT8h1g'),('fc7273c4-a137-49d0-aac5-9b5ffe23123b','59171422-eb43-4c9a-82e1-67e6340320d2','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('fd6570aa-a3e4-45ee-b04f-28c3f1491e87','17641685-8a2d-4274-a094-17302bd6d44e','max-clients','200'),('ff58c999-6043-4901-a643-3026af2cd6bc','24d3f3ff-f16a-41f0-bc31-83e6bc2450a1','certificate','MIIClzCCAX8CBgGQBkrp4DANBgkqhkiG9w0BAQsFADAPMQ0wCwYDVQQDDARvcmc0MB4XDTI0MDYxMTA3NTMxMVoXDTM0MDYxMTA3NTQ1MVowDzENMAsGA1UEAwwEb3JnNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOjlmoR3TS2ITk+XeFxLj8FrJDptE287dluGwvH0zqlf8TvObSreeGoAaAf5Z2O23iMd6Ufx21WRE6YTC6whxqOHqTmLrFzeqMoAaGr0ip5JwN0FVnHFAasNz49qs4MDSkOj6mmaEeuuvxbSp6r7XKSUxPb24jkxzzwaz+zF/KdmY2BXMezFeh1bmRtg9mo1hbXYi/uHiIEZuaZF2cdAPIVPXryPP32uzgcRN5StUSuFUBjM10HcdU0wTyJny56TKM/bAjE07bi1I66M3mgX5Df6G/EA9fWvO1Xj5mxU+pf95Kh8wZVbKlgF48Qek3d61Wg/8HgkppVYwFZJq6ZIJs8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAlGLQB06KGEZGsS/Bz6SwBL/q95e1Stkfhl9Pk/qQDxo1WsKWfUizVRECK1S/zbpRvhPQIjHflWuCo/cQrmJJU4pfs4hh5yiA91Kx9IxOrQkU8lbfrl1CuQ4FbgsEgVm7DmD6gEK52waaptxpMbRqDwUoAj/m1ziTaHJp4W2UwyA3zBiD2qfJobskNCqG+ND+OQw9O/PSpQgsy1Q9gBHofTN2h1v+U+cKFmMkaE/WQ0tcjaw3fU38OnHnxKrzZmJcC6P0QIuo9/Yv5EjTsPlSCE+vfNqLJ6ZahPfGmMGLdeNKNAUS6sEE8XbMzbEDJtU3W3Fy7Ksw6wkYSH/mAVPqmQ==');
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
INSERT INTO `COMPOSITE_ROLE` VALUES ('01d071b7-96f2-4b75-b8e3-015c77ab8992','51040531-cc48-415e-bdcc-29e8bfa4d65f'),('01d071b7-96f2-4b75-b8e3-015c77ab8992','84d1d505-326d-410a-bfa3-f4638d066339'),('04100756-1e7d-44d4-b962-ba6a56fe6767','1e57afd7-234b-4ee2-803c-a70a653d345a'),('04100756-1e7d-44d4-b962-ba6a56fe6767','df3bccbd-b3fe-4a46-8427-00a067460f50'),('04fbe393-a4ec-48da-9919-cda7f2759e62','3e104eaf-d97f-484c-a3be-f92976dc7edf'),('04fbe393-a4ec-48da-9919-cda7f2759e62','3fb6d514-9b93-4051-9103-fd7854d46c3f'),('0cfdad65-878f-47b0-978f-0c0be8862f58','1c3deba3-8ab6-45e4-b99b-1fecacb0c50d'),('0cfdad65-878f-47b0-978f-0c0be8862f58','44c543f5-14e8-407c-914d-5ddeacacad78'),('0cfdad65-878f-47b0-978f-0c0be8862f58','6bbc27ce-a3e1-4ec4-82d6-ef812299991e'),('0f32299b-229b-481c-ae28-7c29856c2243','17e67e8a-bc75-4f04-bdc2-a5335020fdc3'),('0f32299b-229b-481c-ae28-7c29856c2243','1c3deba3-8ab6-45e4-b99b-1fecacb0c50d'),('0f32299b-229b-481c-ae28-7c29856c2243','2810bc5c-41c9-4446-aacf-0cca89e636cb'),('0f32299b-229b-481c-ae28-7c29856c2243','3a00008e-1aef-4af3-8b39-6e88638c3f30'),('0f32299b-229b-481c-ae28-7c29856c2243','44c543f5-14e8-407c-914d-5ddeacacad78'),('0f32299b-229b-481c-ae28-7c29856c2243','5926846a-42d7-45c3-bc4b-602ab3f198f5'),('0f32299b-229b-481c-ae28-7c29856c2243','6bbc27ce-a3e1-4ec4-82d6-ef812299991e'),('0f32299b-229b-481c-ae28-7c29856c2243','81d10a65-d20f-4ea7-b230-1c3cb50b9457'),('0f32299b-229b-481c-ae28-7c29856c2243','af69b3e5-1835-4c58-8278-f10f23e13e78'),('0f32299b-229b-481c-ae28-7c29856c2243','b5a2b1d4-dba4-4d05-9d2a-ebd3e35310cb'),('0f32299b-229b-481c-ae28-7c29856c2243','dc4518a8-e2d7-43b4-8799-7795b548cf70'),('0f32299b-229b-481c-ae28-7c29856c2243','e058afcb-3d88-4d36-96b1-08f377907450'),('0f9d5ea0-1d58-49b5-bfce-0aac6e054445','b6ad5799-db19-48da-8d28-3656fe26f3d5'),('10fb6bc2-27f9-4bc1-b744-8df9b17bf593','f92f036c-303a-400a-8466-3bc003adac11'),('111e6d2b-79b3-4c23-99a6-8edb1c9b2711','37dda41b-d445-49f2-a806-df159be87fab'),('111e6d2b-79b3-4c23-99a6-8edb1c9b2711','6daa393e-8bd0-4262-9827-68a9bd450eb6'),('111e6d2b-79b3-4c23-99a6-8edb1c9b2711','8b69162b-ee4b-463a-8c2f-9955a8fb511b'),('14853a62-53de-4d29-8be5-5d0c052a9c08','f72619c7-09ae-482c-8c7f-07bbdf9dfb13'),('15c54e4f-f110-41c1-a0f8-26d8150ff43a','07c89f6a-e275-4dd3-9c4e-1ef8607be971'),('1769fa6e-62ad-4e17-bb59-bac8dd05ad42','87a01a65-8801-4f13-a172-8214a8f42429'),('1b2854bc-9ad1-433a-b97a-39b91efb7f3a','b5d2c9d2-5d2d-4bc4-a463-48b7c97a3ca9'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','027cb66e-c694-4300-9559-d797ea637713'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','1eb18b09-68c8-4e45-872b-9e922265fb56'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','29d6c04a-1419-4397-9b12-1f5412a14e44'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','5f7305c6-d9ca-49c3-8824-1066c6b8a0a1'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','627b61e9-3cca-4e35-b9de-dadc0ee4e726'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','7638790d-780f-4a05-b4b0-f4b3a09e8fa7'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','84589d2b-1e09-466e-a0d3-a0db739d97be'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','a0c43aaa-6269-477b-b563-78ddb3fed51d'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','df20f52d-e3e6-47ac-971f-f95628abdd64'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','e0f755fa-23bb-4d23-8a41-a6ad95988d69'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','e68aff40-cc4d-4292-b7a2-89f66518bb18'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','e84bc76b-e9ff-4d9f-8a26-f369e456862e'),('2c857ab0-2609-4f46-b8cd-52aec223368f','246e2505-c030-449f-ab31-c82b047e582e'),('3311a7b8-3f95-4aea-aee4-832fe3425678','5323ad7a-161f-40c4-b569-02221bf71aef'),('3311a7b8-3f95-4aea-aee4-832fe3425678','cb567335-e70a-4deb-8430-6bc98bcdbe03'),('3311a7b8-3f95-4aea-aee4-832fe3425678','e38b8d1d-f5c0-43ea-a70f-5e50a078ac97'),('3311a7b8-3f95-4aea-aee4-832fe3425678','f68e8d47-d4b8-4898-801c-0a5834980dd5'),('34f4733d-e807-4c2e-b859-5f010d03e734','02f44a07-8f1d-4213-b87d-af3e43a22fcf'),('34f4733d-e807-4c2e-b859-5f010d03e734','031b28fa-b20e-49ff-85fa-765698d02d99'),('34f4733d-e807-4c2e-b859-5f010d03e734','08223b91-6854-4c4e-98d0-85a1e0253de3'),('34f4733d-e807-4c2e-b859-5f010d03e734','0e61b1fe-3ef2-4608-9943-18c0710f0690'),('34f4733d-e807-4c2e-b859-5f010d03e734','0ebb370e-1b2f-450b-8d73-03e9bc180d02'),('34f4733d-e807-4c2e-b859-5f010d03e734','31f16fbc-c8cf-47af-bbdc-88c9af8c112e'),('34f4733d-e807-4c2e-b859-5f010d03e734','3a00008e-1aef-4af3-8b39-6e88638c3f30'),('34f4733d-e807-4c2e-b859-5f010d03e734','43e82126-4bf6-496c-91ab-5999975626ef'),('34f4733d-e807-4c2e-b859-5f010d03e734','4d093ee5-073c-4f79-981b-5d1e7ada68a6'),('34f4733d-e807-4c2e-b859-5f010d03e734','54f50885-0be7-481e-98cd-c870f81b4e5f'),('34f4733d-e807-4c2e-b859-5f010d03e734','883a8346-02d9-48c1-b6cf-33e5e593fafd'),('34f4733d-e807-4c2e-b859-5f010d03e734','8b13eb91-9bb5-41db-ba19-117a124c91ad'),('34f4733d-e807-4c2e-b859-5f010d03e734','95316ab1-df9c-4a73-8606-b189825decfb'),('34f4733d-e807-4c2e-b859-5f010d03e734','9d0f8f3e-b435-4f7f-836b-68588fefa126'),('34f4733d-e807-4c2e-b859-5f010d03e734','bcb1c60f-ee15-417b-8a9d-e8311709ae67'),('34f4733d-e807-4c2e-b859-5f010d03e734','dc4518a8-e2d7-43b4-8799-7795b548cf70'),('34f4733d-e807-4c2e-b859-5f010d03e734','e058afcb-3d88-4d36-96b1-08f377907450'),('34f4733d-e807-4c2e-b859-5f010d03e734','fb37e5c5-2837-48c2-b781-568da2dd4e84'),('3506eaed-2486-47ec-93bf-47bd5d8722b9','a9818a02-25a0-4a64-98d7-e1bee39ddcee'),('3c19ec89-201e-41c7-9ca2-6d438e629a16','2388fcd0-72e6-4fa5-8ad1-b342702754e7'),('3c19ec89-201e-41c7-9ca2-6d438e629a16','a65ef61d-5749-4b1a-85f5-dd5d9722c2ce'),('43ac4853-0117-4bf0-9254-afa80cdae91e','34497a3c-0a5a-4885-ab94-d412b9d53180'),('43ac4853-0117-4bf0-9254-afa80cdae91e','35a4cdde-1842-48cf-bfda-f0185f2c46ad'),('43df02bc-cc74-478e-8284-f01211b6a567','5f3482b1-ebfe-439a-986a-0f040d65c59e'),('43df02bc-cc74-478e-8284-f01211b6a567','d8e96ecc-e720-4374-9fca-644d2c6be4b4'),('43e82126-4bf6-496c-91ab-5999975626ef','031b28fa-b20e-49ff-85fa-765698d02d99'),('43e82126-4bf6-496c-91ab-5999975626ef','31f16fbc-c8cf-47af-bbdc-88c9af8c112e'),('4a70a4d2-3d44-46f6-881d-0f80fae3081f','e0f755fa-23bb-4d23-8a41-a6ad95988d69'),('4a70a4d2-3d44-46f6-881d-0f80fae3081f','e84bc76b-e9ff-4d9f-8a26-f369e456862e'),('4b08033c-d1ac-439b-bcd2-8cba741c5987','4ade8c15-5108-4c07-ac73-e1fc48d534c4'),('50de228a-2834-4b24-9e00-a3a29b833e0a','1c3deba3-8ab6-45e4-b99b-1fecacb0c50d'),('50de228a-2834-4b24-9e00-a3a29b833e0a','6bbc27ce-a3e1-4ec4-82d6-ef812299991e'),('56fe696a-5d7e-4782-93a1-4b0e74c0ceb7','1c9e8042-9356-4e23-9d50-524d93e97774'),('56fe696a-5d7e-4782-93a1-4b0e74c0ceb7','4154885f-309f-4cac-819c-5e628120ab02'),('5c5f13eb-8af4-4242-9cbe-06a906fc0954','627b61e9-3cca-4e35-b9de-dadc0ee4e726'),('5c5f13eb-8af4-4242-9cbe-06a906fc0954','e0f755fa-23bb-4d23-8a41-a6ad95988d69'),('5c5f13eb-8af4-4242-9cbe-06a906fc0954','e84bc76b-e9ff-4d9f-8a26-f369e456862e'),('5e43bc02-1f81-4311-ab5f-bbbe8bc85443','8ef54882-2f3a-42cf-ae37-fb1499f58190'),('62fab8ee-5a84-4381-860d-4a6055214f50','7fbc560c-35be-400d-81d4-4536302a2d93'),('62fab8ee-5a84-4381-860d-4a6055214f50','aef2eee4-9fa5-4ff6-9bd0-0240c5dfd5ca'),('66ec0f70-30ea-43ff-a2f6-79b18643d858','7cf5b30a-ed86-4968-8c93-4d8f9243b508'),('66ec0f70-30ea-43ff-a2f6-79b18643d858','8d2178a0-6c3a-40c9-85ea-80f88dba8ee7'),('66ec0f70-30ea-43ff-a2f6-79b18643d858','c65e336d-b35d-47ec-8cf7-d67366966797'),('66ec0f70-30ea-43ff-a2f6-79b18643d858','d386cdb8-1cd4-4e4c-ba57-0ca1720de59b'),('6716b438-3f81-43bc-b301-36d43b4fb199','46a8fa55-7d31-4661-9036-39042691c8dd'),('6716b438-3f81-43bc-b301-36d43b4fb199','9caedc92-aa3c-4647-a65d-4f1a5a1c09f4'),('674ace4b-22b8-4b66-951d-978cdfc8b65b','37e62de2-ec35-4078-871e-4ac71f5adbef'),('674ace4b-22b8-4b66-951d-978cdfc8b65b','b89d6931-8374-45f0-b46d-04298a20dd2a'),('674ace4b-22b8-4b66-951d-978cdfc8b65b','ff7a8bd0-a77a-4e92-a147-6157e695186d'),('6a9a06bb-daec-4c34-b783-939e744be9ee','795ffef6-c616-4ca9-ba78-b8e6a5ec9ebb'),('6a9a06bb-daec-4c34-b783-939e744be9ee','8cdc9af1-3d5d-41b2-817b-8bda51ddfb88'),('6c660eaf-5c32-4168-91b1-7f1762f45380','0f1e4dd8-6c4e-4e80-b95e-f42f68ae9edf'),('6c660eaf-5c32-4168-91b1-7f1762f45380','a266ad13-d343-4f3f-87d0-077fd9027127'),('6c964d68-d862-4ca2-86af-79d2e5bb24ac','3fb6b853-da4c-4625-8fa4-5472b3a68ee0'),('73c81309-ffbc-440a-8a8d-5d96296c4b91','03e8a3e3-a1d1-4fe5-9ade-1f795e544025'),('73c81309-ffbc-440a-8a8d-5d96296c4b91','83405647-5d8b-4c67-ad81-fddb727991b7'),('75a43a99-b9b0-4a1f-b1ef-a7d145ac9852','a6280309-5e2f-4afe-b833-97619e1f3b08'),('8300c9ca-7fa4-4182-ae75-6566136a534a','3ca0f12a-34f5-41ad-9548-e5a7da25920e'),('8300c9ca-7fa4-4182-ae75-6566136a534a','3f477947-9329-4ecc-b7ea-398460d9e43d'),('8300c9ca-7fa4-4182-ae75-6566136a534a','7562e402-9370-4ff7-a9e0-8be61ba5a151'),('8300c9ca-7fa4-4182-ae75-6566136a534a','f22eb848-4b57-4548-b5d4-5bbfb1eb5a35'),('87daeb5c-c932-45e4-9d0d-2adfd04df822','4cccba60-db70-4ee5-8dc3-ac267c20078f'),('87daeb5c-c932-45e4-9d0d-2adfd04df822','b8dac5b9-2635-4455-9272-5613e7045db6'),('8b0ca5ff-a8a4-43e5-aeaa-85dadd275851','32d8d1d9-bb52-451c-b746-bfe78319c8bc'),('8b0ca5ff-a8a4-43e5-aeaa-85dadd275851','6d53de39-7615-4099-b0f8-0d29979f4b3b'),('8d2178a0-6c3a-40c9-85ea-80f88dba8ee7','3c6b840e-771a-4daa-99d5-18871392af3a'),('8fe75922-4d78-47e6-96f4-03bae30d28f8','34c0e69b-62a6-4a7d-9668-7bcf7169d77e'),('8fe75922-4d78-47e6-96f4-03bae30d28f8','fca66cb0-9aef-49ef-94e7-fd2fdc2fd937'),('9019c1ff-cac9-4b92-a558-a5ae2a8fcb19','28f3deb4-f309-41a4-9b5b-911ca2f3c08f'),('91b17ae5-78ce-49c6-81ec-dd904cf17ede','163d20da-927d-45c1-8421-117463e8c6d3'),('91b17ae5-78ce-49c6-81ec-dd904cf17ede','bee2a686-d0d3-43bb-b7af-f7c4476e9e3c'),('939bae22-c2fe-441c-9141-8dff595cea84','a7d3d7a8-513c-484c-8771-8e610a837684'),('93c290a1-2519-475a-91dc-24d43bf42a85','027cb66e-c694-4300-9559-d797ea637713'),('93c290a1-2519-475a-91dc-24d43bf42a85','0b127d18-bd2f-414e-b592-582c42b8360e'),('93c290a1-2519-475a-91dc-24d43bf42a85','0ba16987-db3e-4d10-920a-0ce052dd615c'),('93c290a1-2519-475a-91dc-24d43bf42a85','0f1e4dd8-6c4e-4e80-b95e-f42f68ae9edf'),('93c290a1-2519-475a-91dc-24d43bf42a85','3d106091-433c-4668-9978-4497c7ec0628'),('93c290a1-2519-475a-91dc-24d43bf42a85','56e620df-1891-4c36-b058-1cca1b687d68'),('93c290a1-2519-475a-91dc-24d43bf42a85','5e43bc02-1f81-4311-ab5f-bbbe8bc85443'),('93c290a1-2519-475a-91dc-24d43bf42a85','6c660eaf-5c32-4168-91b1-7f1762f45380'),('93c290a1-2519-475a-91dc-24d43bf42a85','7638790d-780f-4a05-b4b0-f4b3a09e8fa7'),('93c290a1-2519-475a-91dc-24d43bf42a85','80239db1-9ee9-445f-92a8-9b7b9aba1f19'),('93c290a1-2519-475a-91dc-24d43bf42a85','84589d2b-1e09-466e-a0d3-a0db739d97be'),('93c290a1-2519-475a-91dc-24d43bf42a85','8ef54882-2f3a-42cf-ae37-fb1499f58190'),('93c290a1-2519-475a-91dc-24d43bf42a85','a266ad13-d343-4f3f-87d0-077fd9027127'),('93c290a1-2519-475a-91dc-24d43bf42a85','abe816ad-eafc-43c0-b06a-c07fea1d2d9d'),('93c290a1-2519-475a-91dc-24d43bf42a85','be63804b-79a5-44dc-b38d-289446687b45'),('93c290a1-2519-475a-91dc-24d43bf42a85','cadf2429-a755-4f4f-b5b6-bcce9551da12'),('93c290a1-2519-475a-91dc-24d43bf42a85','cf625438-6332-4a9a-baba-6deaef522009'),('93c290a1-2519-475a-91dc-24d43bf42a85','e223cf61-d420-43ab-b3d6-4e7fdc3b71c0'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','022ac1b7-9a89-4797-b000-360fd9822607'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','075cec97-da2c-4810-a677-1a991e169ce6'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','0b121a73-ab8f-44b9-80c9-cd9ac2965fb4'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','0db750c2-34d7-4f3e-a274-6bd616c1ff98'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','0e395ea5-311d-47fe-9d8a-7149c33af8e1'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','0f9d5ea0-1d58-49b5-bfce-0aac6e054445'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','1079a02e-fd69-4a9d-adc3-c812e18110e3'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','17547ac4-c953-4ef3-92f3-3a9a7d26d249'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','1769fa6e-62ad-4e17-bb59-bac8dd05ad42'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','1e849bfb-bb6a-493d-8132-3274566ab8bc'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','1f2bf497-bea3-48f9-af28-28767de6861c'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','2388fcd0-72e6-4fa5-8ad1-b342702754e7'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','27012f1f-907e-46c5-b247-9c4eab682fb2'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','27c8af72-6828-499b-8c81-5a566a049385'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','2d8ee34d-839a-42f1-8bf5-803e0affedaa'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','2e2006cb-3a44-40b3-984e-832b4d6a737c'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','3118d21b-f01e-43f8-bd6a-5139b5c3306a'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','32d8d1d9-bb52-451c-b746-bfe78319c8bc'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','34497a3c-0a5a-4885-ab94-d412b9d53180'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','34faefd2-5c9c-4851-8fad-e99fcc410867'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','35820569-9467-4a7a-85bd-a42d11f264bb'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','35a4cdde-1842-48cf-bfda-f0185f2c46ad'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','3a016e6f-3de4-4299-894c-16f13facfe1e'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','3c19ec89-201e-41c7-9ca2-6d438e629a16'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','3ec376e8-29ee-45a0-a30e-016e576aa8f8'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','41991a70-07a3-4e9c-b11d-af32fa816145'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','43ac4853-0117-4bf0-9254-afa80cdae91e'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','495a18c7-4c09-40ec-8d8f-36ec65469b57'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','4ade8c15-5108-4c07-ac73-e1fc48d534c4'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','4b08033c-d1ac-439b-bcd2-8cba741c5987'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','4d7cc313-7aaa-45ea-99d3-bdc61c557420'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','4e8d47a5-5ba9-4eab-84cf-3a03bc38bf7c'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','4fe58f16-e844-4b5b-ae13-57dc55390cda'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','52140e9a-8cb3-4e88-8ae7-5b2d73c8adab'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','5245aa30-0aca-4f9b-878e-9859b09abdc0'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','52d26256-2343-49eb-871d-343b2833a1bb'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','571f6290-e87e-43ad-b750-0c8a723982ad'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','59d06916-9a09-473d-aa45-34191803a8fa'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','5c101215-9a43-4dba-9618-b4bcafbf1fbe'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','5cc55460-6928-4a9e-b2db-add38bb0f2b9'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','5e7fe425-cdf0-430f-ad38-e6207d1e71e3'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','605c047b-a4c8-405a-9820-222b0d1989a0'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','6319625a-4b97-4cc2-9576-97bba3e858df'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','68a4ca8c-c163-4119-8a37-3e2e84a1b942'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','6d53de39-7615-4099-b0f8-0d29979f4b3b'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','6f71e58d-38f1-4296-80cd-caf16a5a943c'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','72e84678-70d4-4875-8185-55e0e1fe3294'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','757c06a8-1eb6-4473-aac0-a7946f0acb83'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','75a43a99-b9b0-4a1f-b1ef-a7d145ac9852'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','782de68d-12ec-4dfa-8727-8bb504aebbd0'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','7e49f395-b313-4336-ba7f-290a84e06359'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8008fec8-667d-4347-83d9-8f6cd19f7cc7'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','80fd9e9c-6da2-4f7a-809f-67dbe6b88586'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8589b063-3399-4be7-89e1-4902c6de3b04'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8656a29d-0524-441a-96ef-382dec93111a'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','87a01a65-8801-4f13-a172-8214a8f42429'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','894598b6-1117-4d74-a67e-431ba79f949e'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8a571b0b-09dc-4a78-9809-a762f185aa4b'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8a602907-8f50-4707-9e1f-c795e5cb2399'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8b0ca5ff-a8a4-43e5-aeaa-85dadd275851'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8b207999-03cc-456a-a8cb-d751f3c85851'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8bffe167-d7bb-4ca8-a2ce-7fb4a1c1cc31'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','8da9833c-0d58-4254-b9c1-23a36c569a09'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','91100ac1-e1e1-4b96-b96b-597ef72f3fdd'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','932bcff0-f62f-42ae-8635-f6ae19d3128f'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','93318639-570c-4831-9347-3fdbcda16692'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','94ee0560-ab00-444e-b6f7-f7b23323f345'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','9662527d-2d8f-44e6-af67-2a897a7523c4'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','96c522bb-8538-4d15-bff6-2ea3feea6fc6'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','9714506a-a41c-449f-b9ef-cde5c1e6ddf9'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','9d512f3d-1be8-4aa2-b007-156c29d7c4a7'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','9ddb7f39-271d-4036-99ea-e58f2551c8cc'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','9e6d2ccc-a439-4865-9a67-b7b789081bf7'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','9f782251-dcdd-4872-8ec8-f9e3a9287de1'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','a06aebfb-dde3-45ab-a1e0-3f006b4e2250'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','a3ed9d20-924a-425f-956b-5a132e9e8576'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','a475303d-eade-4da9-a6be-51b290d4a3d4'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','a6280309-5e2f-4afe-b833-97619e1f3b08'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','a65ef61d-5749-4b1a-85f5-dd5d9722c2ce'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','a95ba168-6192-4299-b27b-e729d9915198'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','abd1a043-9e43-433a-bb94-9ae00d5a1904'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','ad199983-b4a7-48aa-ae61-ee1910b39d17'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','af1388ad-71a9-43c4-aadc-3d2e97f7a1eb'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b0122047-f68d-4086-b88b-3bea7b935838'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b18440d4-b9a5-433d-b234-40133b4d9744'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b2dd9a15-64be-46b3-a320-3bc56a31432f'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b2f2cd40-2357-40e5-aa32-3e9b6fb05a41'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b3f6ba22-9baf-47e6-a66a-42505155f3b1'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b6ad5799-db19-48da-8d28-3656fe26f3d5'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','b8406ca0-8b14-4c1a-91d0-d685511db8ea'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','ba88294f-28fe-4a6d-8e01-8325755c49d2'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','bd77e290-63fb-419c-807d-fa91fe37ea1a'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','c2b484ef-e018-4426-8f3f-6d098bd745ba'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','c62cb76f-06b8-400f-b71a-449ce8c95116'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','c66a8982-82a6-4040-b693-facd444d12c4'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','cae7f432-0d54-4419-bdaa-cc2621271d47'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','cc7e0171-0d89-425d-8b96-3dae17b20d09'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','d50d93ac-d24a-4b51-98fa-89c5b346511c'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','dbf2582a-5ec8-4961-9a7f-99d60d5b8b52'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','e2c4279a-7486-4a21-895b-ae7a7f4d6adf'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','e3be17b6-ce99-40a9-bba8-0b134ecb875d'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','e85c5ceb-0d04-4975-a55a-946c84a3ec52'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','ed1b8f12-8e02-4e1b-b0f4-469fa40b7916'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','ef9f3e65-b4dd-4765-9522-be13d6ae68bf'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','efe5ffdc-d562-4528-81bf-32f530e1c002'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','f114195d-ddcb-429a-92b2-f7aa572db8db'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','f66aa5fb-b118-4dce-b3c1-05968982c0c3'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','f68fce5a-5b51-40fd-80a7-5d97b092bb16'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','f87e4ff2-a61f-412c-9beb-e12d9591c98f'),('9d512f3d-1be8-4aa2-b007-156c29d7c4a7','9ddb7f39-271d-4036-99ea-e58f2551c8cc'),('9d512f3d-1be8-4aa2-b007-156c29d7c4a7','e2c4279a-7486-4a21-895b-ae7a7f4d6adf'),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','05f5df12-4fbd-4f07-8ae1-845682feb471'),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','554d97ad-9687-45df-b708-5b993cf6f346'),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','a98147db-2c60-4fd0-b2d0-154ba0ef37a8'),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','aaa47242-610e-47b6-be42-d83567cf8742'),('a475303d-eade-4da9-a6be-51b290d4a3d4','93318639-570c-4831-9347-3fdbcda16692'),('a9bb088a-6377-4eb2-8f14-15a151658fc8','39eb32a0-3428-4ae7-8ca4-ac9a9bcf2131'),('aaa47242-610e-47b6-be42-d83567cf8742','8ea951d0-03c6-4b25-8dd5-87a23dbc32ff'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','0f627bfb-6ddf-41d1-ad48-597df4058f78'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','10fb6bc2-27f9-4bc1-b744-8df9b17bf593'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','139a602c-79bf-45ac-a0a0-796b05f1b071'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','1e30e879-b19c-42eb-ac3a-18a0015a9928'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','20066d7a-a16e-461c-a11d-af428828fe3e'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','265412b5-d9a0-4826-9d3e-4bcc3fcbe2ab'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','3d9e984d-2e3e-4790-a300-b1657d35f143'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','4cf67935-a2dd-4fdf-844e-5c376fe4ae12'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','62c438da-0bf9-423e-9d93-b5ec68231ce2'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','6e4fa731-45b0-41c6-ba1e-69a33bec461a'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','741a5de9-96a4-4a63-b5d5-300f9226e757'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','78d37472-1b38-4387-ae31-f154d0ee6598'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','94830865-cc75-4f8f-aa66-d810fb75e1d9'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','ab7a1313-03e2-4d55-aee1-ed281079b3a1'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','d9a835d5-81a7-4ea0-ae6d-4f7c9192c7c7'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','e4e29c65-3bab-4c37-9ab1-3a12b29f2dee'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','f82745df-1bec-4990-8adb-bee98b4acb7a'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','f92f036c-303a-400a-8466-3bc003adac11'),('aee67f07-ab58-4812-a562-434e55c65fc1','0f627bfb-6ddf-41d1-ad48-597df4058f78'),('aee67f07-ab58-4812-a562-434e55c65fc1','37dda41b-d445-49f2-a806-df159be87fab'),('aee67f07-ab58-4812-a562-434e55c65fc1','4593f877-2829-4507-b709-baf276daa4e8'),('aee67f07-ab58-4812-a562-434e55c65fc1','6daa393e-8bd0-4262-9827-68a9bd450eb6'),('aee67f07-ab58-4812-a562-434e55c65fc1','6dcbc367-b505-44d2-9993-9edb3d45c3b0'),('aee67f07-ab58-4812-a562-434e55c65fc1','741a5de9-96a4-4a63-b5d5-300f9226e757'),('aee67f07-ab58-4812-a562-434e55c65fc1','7434e99b-ef5a-4c65-92e9-1456b503d767'),('aee67f07-ab58-4812-a562-434e55c65fc1','8b69162b-ee4b-463a-8c2f-9955a8fb511b'),('aee67f07-ab58-4812-a562-434e55c65fc1','94830865-cc75-4f8f-aa66-d810fb75e1d9'),('aee67f07-ab58-4812-a562-434e55c65fc1','a1cb438c-d4eb-4404-bf20-760972d0517f'),('aee67f07-ab58-4812-a562-434e55c65fc1','a5a8538e-2e00-4f4c-bd2a-9bc838fd546d'),('aee67f07-ab58-4812-a562-434e55c65fc1','b4398f8f-8592-4a57-882a-a615c39a5d3e'),('b0ff0e93-badb-4cf3-b6d5-c7d774fefe05','276429fd-071d-4ccd-b174-7c762ad7bbf3'),('b0ff0e93-badb-4cf3-b6d5-c7d774fefe05','f730b904-7f32-4fdd-b710-007981b46952'),('b18440d4-b9a5-433d-b234-40133b4d9744','80fd9e9c-6da2-4f7a-809f-67dbe6b88586'),('b2dd9a15-64be-46b3-a320-3bc56a31432f','a3ed9d20-924a-425f-956b-5a132e9e8576'),('b2dd9a15-64be-46b3-a320-3bc56a31432f','a95ba168-6192-4299-b27b-e729d9915198'),('b464a95d-811a-4219-8dc6-5f2b591a52b0','464e34d5-477c-42f8-9e55-38f01e6d8bff'),('b464a95d-811a-4219-8dc6-5f2b591a52b0','51040531-cc48-415e-bdcc-29e8bfa4d65f'),('b464a95d-811a-4219-8dc6-5f2b591a52b0','84d1d505-326d-410a-bfa3-f4638d066339'),('bcb1c60f-ee15-417b-8a9d-e8311709ae67','08223b91-6854-4c4e-98d0-85a1e0253de3'),('c62cb76f-06b8-400f-b71a-449ce8c95116','3a016e6f-3de4-4299-894c-16f13facfe1e'),('c62cb76f-06b8-400f-b71a-449ce8c95116','932bcff0-f62f-42ae-8635-f6ae19d3128f'),('ca336d5c-e351-4e7c-bf73-f4136c7c6559','87d602d7-af8c-4153-81f4-4ba1f9fc4b9d'),('ca336d5c-e351-4e7c-bf73-f4136c7c6559','cec4a30c-a82e-4b2d-bdbd-befdc1a7e640'),('caf2899b-84e5-482c-aecb-2b57983255d2','37e62de2-ec35-4078-871e-4ac71f5adbef'),('caf2899b-84e5-482c-aecb-2b57983255d2','ff7a8bd0-a77a-4e92-a147-6157e695186d'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','1022fa0e-cde8-40f5-bcc1-51ef08b7e904'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','1557e141-c371-4c4c-9a56-b2f500248caa'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','21a9f74b-d6af-42ec-8373-93eec341908f'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','2438e27c-322b-4e80-b6a2-7e7ae8defd5e'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','464e34d5-477c-42f8-9e55-38f01e6d8bff'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','4781a401-602f-422a-8220-87d9bb29dee0'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','51040531-cc48-415e-bdcc-29e8bfa4d65f'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','72891c5d-469d-47ab-8a07-1ccb981f7805'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','7373b7f3-8ae0-4dfa-9d5a-a59fc326c20b'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','84d1d505-326d-410a-bfa3-f4638d066339'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','d21a3988-f921-4979-b095-5499b0993ed4'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','e837c920-ece7-45fc-a6e9-ae4f19e520fd'),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','14853a62-53de-4d29-8be5-5d0c052a9c08'),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','9796895b-7c1f-4da5-8d57-73de8835a0b0'),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','d04a7168-5509-46c9-be29-91560931fd91'),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','f9b97290-745e-4ab9-8836-ef4972f247a0'),('d275e6bb-b38c-4fef-bd01-354188808cef','eb845f74-1eaa-4793-90dc-3f25d9490585'),('d275e6bb-b38c-4fef-bd01-354188808cef','f59b0858-36dd-40d1-929f-e4cbe9b0c485'),('d945b46e-7619-4b77-8219-5537add38b0d','0fc832f5-71f7-4728-bafd-c0fa153ec12e'),('d945b46e-7619-4b77-8219-5537add38b0d','1e650dd1-c04d-4b21-b94d-d5739204c631'),('d945b46e-7619-4b77-8219-5537add38b0d','59692eaa-9979-4dab-8095-d64431b04ad7'),('d945b46e-7619-4b77-8219-5537add38b0d','61dd4aeb-29b8-407d-bd25-7b2dfe0f1dfb'),('d945b46e-7619-4b77-8219-5537add38b0d','61eac3ff-b7c2-46fe-8f96-2c0408e865f7'),('d945b46e-7619-4b77-8219-5537add38b0d','62fab8ee-5a84-4381-860d-4a6055214f50'),('d945b46e-7619-4b77-8219-5537add38b0d','79d60bb7-6d86-411f-894d-192762e276eb'),('d945b46e-7619-4b77-8219-5537add38b0d','7fbc560c-35be-400d-81d4-4536302a2d93'),('d945b46e-7619-4b77-8219-5537add38b0d','8c31b02d-3ce1-40e7-b1ed-5319ea09595b'),('d945b46e-7619-4b77-8219-5537add38b0d','aa8fa8da-572f-459a-be42-cb01fb8063fa'),('d945b46e-7619-4b77-8219-5537add38b0d','aef2eee4-9fa5-4ff6-9bd0-0240c5dfd5ca'),('d945b46e-7619-4b77-8219-5537add38b0d','cff3ed73-73f1-422e-9d85-537d4ec40684'),('d945b46e-7619-4b77-8219-5537add38b0d','d2803987-24a9-4ea2-9464-09b60cc08318'),('d945b46e-7619-4b77-8219-5537add38b0d','d4f0cf7f-7932-43f8-a05d-499a454c3c22'),('d945b46e-7619-4b77-8219-5537add38b0d','d9cd8d1a-3592-4736-ba4c-fa4f9a96d929'),('d945b46e-7619-4b77-8219-5537add38b0d','e80a03d5-c9bf-419b-8b4e-28f6a438361c'),('d945b46e-7619-4b77-8219-5537add38b0d','e8be6773-7370-4c3c-b19d-5c3b3e41d446'),('d945b46e-7619-4b77-8219-5537add38b0d','fe01fc5a-7211-476a-9369-3956b1f55688'),('d9a835d5-81a7-4ea0-ae6d-4f7c9192c7c7','20066d7a-a16e-461c-a11d-af428828fe3e'),('d9a835d5-81a7-4ea0-ae6d-4f7c9192c7c7','3d9e984d-2e3e-4790-a300-b1657d35f143'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','37e62de2-ec35-4078-871e-4ac71f5adbef'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','3e8bb9af-f4bc-4ac2-8c66-ac73b6983694'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','59692eaa-9979-4dab-8095-d64431b04ad7'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','6b0fd2af-9c37-4e9a-a6f9-d76fd796b69e'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','755df3fd-379f-44ce-aa2a-8489aaaed940'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','872a26b8-b5ed-4044-aca3-689ed5cd3c2b'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','b2b646b6-8706-471d-9dc4-170589af64f7'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','b89d6931-8374-45f0-b46d-04298a20dd2a'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','cff3ed73-73f1-422e-9d85-537d4ec40684'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','d4f0cf7f-7932-43f8-a05d-499a454c3c22'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','e8a9ddb2-2752-4ce5-8bc4-73d07275de45'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','ff7a8bd0-a77a-4e92-a147-6157e695186d'),('e89caf85-564d-44d5-9866-b508c09d845a','026c03d5-3e80-4597-9690-e6840510a7ec'),('e89caf85-564d-44d5-9866-b508c09d845a','0a5eb334-669b-407d-bdd9-c429a677c815'),('e89caf85-564d-44d5-9866-b508c09d845a','0d954a91-5607-4195-b454-6d95642111dc'),('e89caf85-564d-44d5-9866-b508c09d845a','1557e141-c371-4c4c-9a56-b2f500248caa'),('e89caf85-564d-44d5-9866-b508c09d845a','21a9f74b-d6af-42ec-8373-93eec341908f'),('e89caf85-564d-44d5-9866-b508c09d845a','252d5a73-42e9-43fd-b1d9-012658167e4d'),('e89caf85-564d-44d5-9866-b508c09d845a','2821f1da-6e04-4bd4-9d89-421854a623de'),('e89caf85-564d-44d5-9866-b508c09d845a','31920fab-e98a-4b5a-9822-99e4707a67bc'),('e89caf85-564d-44d5-9866-b508c09d845a','3fb6b853-da4c-4625-8fa4-5472b3a68ee0'),('e89caf85-564d-44d5-9866-b508c09d845a','5626641f-77f2-4959-80c2-18faa5b6bf38'),('e89caf85-564d-44d5-9866-b508c09d845a','6c964d68-d862-4ca2-86af-79d2e5bb24ac'),('e89caf85-564d-44d5-9866-b508c09d845a','88057ad9-6806-4b38-978f-b9c7acbf19cc'),('e89caf85-564d-44d5-9866-b508c09d845a','881458f9-4e40-4389-b058-f63b9f9adb5b'),('e89caf85-564d-44d5-9866-b508c09d845a','97fe6009-4072-4e97-a134-e5fa14cad61d'),('e89caf85-564d-44d5-9866-b508c09d845a','9a3a88f5-fe21-4473-b00b-8fcd4ac63e27'),('e89caf85-564d-44d5-9866-b508c09d845a','e837c920-ece7-45fc-a6e9-ae4f19e520fd'),('e89caf85-564d-44d5-9866-b508c09d845a','ecb0d27a-7711-44ba-b132-b9d203f5d4f8'),('e89caf85-564d-44d5-9866-b508c09d845a','fffe3f6f-84f5-40ad-8c55-015b83741715'),('e8be6773-7370-4c3c-b19d-5c3b3e41d446','e80a03d5-c9bf-419b-8b4e-28f6a438361c'),('e9891926-bd5d-4586-b440-8ba27ef6f84d','14bfd4cb-e01e-49ce-bad8-921ec3279d9f'),('e9891926-bd5d-4586-b440-8ba27ef6f84d','8bb156c7-8786-4b9a-b3e5-c62e0ad1806a'),('e9891926-bd5d-4586-b440-8ba27ef6f84d','9019c1ff-cac9-4b92-a558-a5ae2a8fcb19'),('e9891926-bd5d-4586-b440-8ba27ef6f84d','928a5522-048c-47c7-a26b-ea8d7d484bdf'),('eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c','28479fc7-b1ce-4bf3-b03b-88d963814a08'),('eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c','3dff97c9-eff7-460f-a1ed-54b8ffe9e170'),('f22eb848-4b57-4548-b5d4-5bbfb1eb5a35','01896bc8-d94b-4480-8fb1-f659e66bad98'),('f68e8d47-d4b8-4898-801c-0a5834980dd5','c122c2d1-96e0-4c02-87eb-41a19eaa6ef7'),('f9e2ff77-aa9a-4be2-b30e-248f4d0df460','25120deb-75c0-4c2f-985f-c3986bff28a8'),('f9e2ff77-aa9a-4be2-b30e-248f4d0df460','567c6767-75a3-4aef-b0dc-adbcd58d3301'),('fc23e83e-723b-4a0b-a1e0-e63d3763fca2','37dda41b-d445-49f2-a806-df159be87fab'),('fc23e83e-723b-4a0b-a1e0-e63d3763fca2','6daa393e-8bd0-4262-9827-68a9bd450eb6'),('fffe3f6f-84f5-40ad-8c55-015b83741715','026c03d5-3e80-4597-9690-e6840510a7ec'),('fffe3f6f-84f5-40ad-8c55-015b83741715','31920fab-e98a-4b5a-9822-99e4707a67bc');
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
INSERT INTO `CREDENTIAL` VALUES ('559cf534-586d-4b30-b45b-f8b4bdd28f1a',NULL,'password','8c9ee063-5b65-4d8e-9661-ecc6d294daa4',1718092371529,NULL,'{\"value\":\"7U8G4MXbq8GMNOXOlpM5vZW5jQNNTAtxvO2ajUoB54cazkHAYxUCQbbloCs0+8ZfmMVl870/zNM+TYrOYxYxwA==\",\"salt\":\"GyunqapOXsT4jd+SLI0mVQ==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('584c43cd-3748-4b4a-a74b-d5b0ab8b66cf',NULL,'password','11a46a7a-643a-4634-bfc3-a87a266bcaa9',1718092494720,NULL,'{\"value\":\"t3kIE0wy6NcjNoFBYeTk1gQ0h6iiMesdiAQzyi9AA+2EIF42bx2/DJ+26E4KossQgKfo0aLvBTx/mw3nAV8CUg==\",\"salt\":\"yoo+iLZNt7h9d4muRFNKqg==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('685230a2-3062-4925-928d-550f997750ac',NULL,'password','cea41291-4b60-4594-b58d-65280e5ca389',1718092420022,NULL,'{\"value\":\"jOo+2m/799PVI0vuh7nR5sNVL33D/BC+9X/pRIBQz8lAy4Zv6JV9OtJj5cnMcvcbpdPqpy8gVk5LvAAldAJ3RA==\",\"salt\":\"ORn1Ed4VZvmw3YiBj1aZtw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('b3b72f4e-9709-4315-9cfa-bc37ad03b1b1',NULL,'password','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2',1718092458812,NULL,'{\"value\":\"Q5gqd0iqTwE+EYUihD51C3kJ6FCoxcpkKTCx7j5hiK039dOTWx03a3vQW0LLaC2+SPyAu4a0S34mXEPbQ1IwPw==\",\"salt\":\"U2oR7PFjEnKdfhfdZYBpXw==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('e977735b-f950-49a4-b5c2-697c64f8b2f3',NULL,'password','5b8bcf0c-19a5-42a9-bf39-5a8bacef879a',1718092289054,NULL,'{\"value\":\"A/6jdAu4nyR909R6AUJfjY+Cm3uS0GDFLFKE4jOm7jB+w/EVCW35VJhnq5sRPMTNvFDM/ffOBmgBOeL/od7Rbw==\",\"salt\":\"3QSYxSQ9jzHCbDoi9dYDzA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10),('f6562915-096e-4a16-8516-0c5da57853ba',NULL,'password','33341728-0658-4dda-8fc7-7b346e5714e7',1718092531726,NULL,'{\"value\":\"6DayAVs96e+xIOOJ6IYyLHuhFe11MhqLE2VlU8l+n6XoOrrkWkGDEeTMlb3xryuDwKJvVBXfo0WJql4U4a4nzg==\",\"salt\":\"oCPf4+mzN3V8B9v+TLEHDA==\",\"additionalParameters\":{}}','{\"hashIterations\":210000,\"algorithm\":\"pbkdf2-sha512\",\"additionalParameters\":{}}',10);
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
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2024-06-11 16:50:56',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2024-06-11 16:50:56',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2024-06-11 16:50:57',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2024-06-11 16:50:57',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2024-06-11 16:50:59',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2024-06-11 16:50:59',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2024-06-11 16:51:01',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2024-06-11 16:51:01',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2024-06-11 16:51:01',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2024-06-11 16:51:03',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2024-06-11 16:51:04',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2024-06-11 16:51:04',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2024-06-11 16:51:04',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-11 16:51:04',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-11 16:51:04',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-11 16:51:04',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2024-06-11 16:51:04',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2024-06-11 16:51:05',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2024-06-11 16:51:06',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2024-06-11 16:51:07',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-11 16:51:07',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2024-06-11 16:51:07',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2024-06-11 16:51:07',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2024-06-11 16:51:07',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2024-06-11 16:51:07',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2024-06-11 16:51:07',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2024-06-11 16:51:09',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2024-06-11 16:51:09',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2024-06-11 16:51:10',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2024-06-11 16:51:10',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2024-06-11 16:51:11',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2024-06-11 16:51:11',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-11 16:51:11',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-11 16:51:11',34,'MARK_RAN','9:3a32bace77c84d7678d035a7f5a8084e','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-11 16:51:11',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2024-06-11 16:51:11',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2024-06-11 16:51:11',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8092251503'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2024-06-11 16:51:11',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2024-06-11 16:51:11',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-11 16:51:11',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-11 16:51:11',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2024-06-11 16:51:11',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2024-06-11 16:51:13',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2024-06-11 16:51:13',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-11 16:51:13',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-11 16:51:13',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-11 16:51:13',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-11 16:51:14',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2024-06-11 16:51:14',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2024-06-11 16:51:15',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2024-06-11 16:51:16',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2024-06-11 16:51:16',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2024-06-11 16:51:16',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2024-06-11 16:51:16',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-11 16:51:16',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-11 16:51:16',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-11 16:51:16',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2024-06-11 16:51:18',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2024-06-11 16:51:19',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2024-06-11 16:51:19',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-11 16:51:19',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2024-06-11 16:51:19',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2024-06-11 16:51:19',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2024-06-11 16:51:19',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-11 16:51:19',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2024-06-11 16:51:19',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2024-06-11 16:51:19',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2024-06-11 16:51:20',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2024-06-11 16:51:20',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2024-06-11 16:51:20',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.25.1',NULL,NULL,'8092251503'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2024-06-11 16:51:20',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8092251503'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-11 16:51:20',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8092251503'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-11 16:51:20',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8092251503'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-11 16:51:20',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.25.1',NULL,NULL,'8092251503'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-11 16:51:20',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2024-06-11 16:51:20',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-11 16:51:20',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-11 16:51:20',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-11 16:51:21',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2024-06-11 16:51:21',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-11 16:51:21',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-11 16:51:21',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-11 16:51:21',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-11 16:51:21',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.25.1',NULL,NULL,'8092251503'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2024-06-11 16:51:21',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2024-06-11 16:51:21',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.25.1',NULL,NULL,'8092251503'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-11 16:51:21',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2024-06-11 16:51:21',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.25.1',NULL,NULL,'8092251503'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8092251503'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.25.1',NULL,NULL,'8092251503'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2024-06-11 16:51:21',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.25.1',NULL,NULL,'8092251503'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2024-06-11 16:51:21',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2024-06-11 16:51:21',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2024-06-11 16:51:21',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2024-06-11 16:51:21',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2024-06-11 16:51:21',107,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-11 16:51:21',108,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-11 16:51:21',109,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.25.1',NULL,NULL,'8092251503'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2024-06-11 16:51:21',110,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2024-06-11 16:51:21',111,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-11 16:51:22',112,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.25.1',NULL,NULL,'8092251503'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2024-06-11 16:51:22',113,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-11 16:51:22',114,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2024-06-11 16:51:22',115,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-11 16:51:22',116,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.25.1',NULL,NULL,'8092251503'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2024-06-11 16:51:22',117,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-11 16:51:22',118,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-11 16:51:22',119,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-11 16:51:22',120,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2024-06-11 16:51:22',121,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-11 16:51:22',122,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-11 16:51:22',123,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2024-06-11 16:51:22',124,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.25.1',NULL,NULL,'8092251503');
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
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','0b94892e-9e58-47b2-8447-f213bc03f6e4',1),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','0be19014-1c0d-4152-b37b-c808886cdb6a',1),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','20f406c0-99dc-441e-b7a2-97b06b0e1298',1),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','2d9f35af-d7ae-4006-9cec-342aab5e52b6',1),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','30725276-fb09-4156-9798-2e7c61f7e716',0),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','a8cf93aa-c8a3-4f03-be5b-37393ac0b596',1),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b658a21c-e30b-4466-b69a-6d66f6653096',0),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b95e4dae-da52-4cf7-932d-8cecf3ebc3ee',0),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c874efb6-2c51-4346-ae9a-db573bd14a78',1),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','e1acb0b8-445e-4689-a20e-e8cb12bebb50',0),('org1','0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6',1),('org1','323fbaa1-c399-4104-a5a7-e54d12a7dbdb',1),('org1','3e871eb6-f47d-44c7-aa49-a26c36e95e14',0),('org1','57f7535d-04f4-406d-bfc4-b7c07338e7c2',0),('org1','72602d07-9227-45cc-ad33-184c3b5d6842',1),('org1','82d4a4e1-4b4a-4f93-a7b5-899c13458029',1),('org1','8d65bac4-f301-4a92-90ab-d416c017c483',1),('org1','b778a33b-f425-484d-9af8-37cc97260c97',1),('org1','bc9bf6ac-1e5d-4df8-8499-6235e5141475',0),('org1','f594cb59-0851-4d36-b086-b94cd84d5bb8',0),('org2','0b99a66e-5c55-43f1-92f2-f5f4b702e9f2',1),('org2','1913575d-0713-4f7f-93b9-6bbefbbeb7c2',0),('org2','305f90dc-c040-4876-be8d-927e6480871c',1),('org2','33d22077-670d-45df-b02a-ce07348bffe1',1),('org2','b9a83b54-a758-41f1-b6c2-61a6303e5d9c',0),('org2','bfba3540-465d-4d04-8cfb-9bffeaa35d9c',0),('org2','c139e392-3e2d-4018-b891-5e39cd4fa0be',1),('org2','db1118d3-c8ff-426d-8125-ac28a3d4b7e7',1),('org2','ff95bdda-b020-4379-9e71-6985bf18c2eb',1),('org2','ffde2b1e-eb79-4407-b7d1-655dfe7df51e',0),('org3','154c6e3c-583a-436a-bea3-868ad9529231',1),('org3','6511f452-404a-42ff-b80b-1609a3071a2f',1),('org3','673cb4c8-23d5-454c-baf0-b7c16e5c0be4',0),('org3','804d9042-2fbe-42be-adb1-0f40db9b2cdb',1),('org3','8fd7c839-cb22-48ee-9885-f193a762d6a3',0),('org3','8ffe7b02-43f3-4fa1-8855-90c875498ea3',0),('org3','90343a88-d2b0-4ddd-86b0-9c579ef91e94',1),('org3','9b7c4bc2-ca16-4013-9009-a0b11e3ca335',0),('org3','bdeb9b62-44a6-4246-9d40-fd6d93961580',1),('org3','bfb2a3ba-0b3a-447b-ad73-49baa1254abd',1),('org4','0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851',1),('org4','0baaae03-bfe0-4148-bc23-4ad0f3d80635',1),('org4','485647c0-dd59-4165-9bcd-70f4f528e535',1),('org4','71f0460a-c62c-487d-b4bc-fc8e5b251875',1),('org4','99ab913f-21c5-424a-ad97-3b37a3a33e4f',0),('org4','ad565ca3-41c9-4fdf-ba00-530746bc63b5',0),('org4','d2980a26-3bbf-4a8b-95af-6590b9db5dd5',0),('org4','da627770-e761-427c-9aa4-be4a9dc4dd03',1),('org4','ed0e40a7-1857-4290-abea-5b880cf8b330',1),('org4','f15a0d16-2882-4b13-b3a4-0d97cf581402',0),('org5','20755911-e07f-4675-ba9d-22857f0dadba',1),('org5','2da90022-c8c9-4a29-b12b-3d3c53890415',1),('org5','45fcd8a9-a88c-40cf-bedf-40a1addb0eda',0),('org5','53fdf9ba-8810-41f4-a6ce-798b6ccffe82',1),('org5','77829d29-fedd-432c-acc8-97ce6929a235',0),('org5','9227aa9e-4d64-4182-b56b-2daace9c0c62',0),('org5','9267389c-23df-48f9-a249-6af9f4299a93',1),('org5','a0344685-3ee2-4615-8e41-2ecbc175ce1d',1),('org5','aa23872e-f763-4c18-a29c-3e1212b0f8cb',0),('org5','b0a5c4c8-aaef-4281-b4d7-2dce2682649f',1);
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
INSERT INTO `KEYCLOAK_ROLE` VALUES ('01896bc8-d94b-4480-8fb1-f659e66bad98','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_manage-account-links}','manage-account-links','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('01d071b7-96f2-4b75-b8e3-015c77ab8992','14038227-ac31-459b-a41c-96afd45ed7c2',1,NULL,'_organization-user-manager','org1','14038227-ac31-459b-a41c-96afd45ed7c2',NULL),('01d61cc3-4d9e-4e78-af82-331043bd1a83','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_view-applications}','view-applications','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('022ac1b7-9a89-4797-b000-360fd9822607','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_query-realms}','query-realms','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('026c03d5-3e80-4597-9690-e6840510a7ec','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_query-groups}','query-groups','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('027cb66e-c694-4300-9559-d797ea637713','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_view-identity-providers}','view-identity-providers','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('02f44a07-8f1d-4213-b87d-af3e43a22fcf','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_view-authorization}','view-authorization','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('031b28fa-b20e-49ff-85fa-765698d02d99','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_query-users}','query-users','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('03e8a3e3-a1d1-4fe5-9ade-1f795e544025','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'ws1','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('04100756-1e7d-44d4-b962-ba6a56fe6767','14038227-ac31-459b-a41c-96afd45ed7c2',1,NULL,'_ws1-admin','org1','14038227-ac31-459b-a41c-96afd45ed7c2',NULL),('04fbe393-a4ec-48da-9919-cda7f2759e62','4a3136c6-14f2-4a86-bc94-4054f607b4be',1,NULL,'_ws3-admin','org4','4a3136c6-14f2-4a86-bc94-4054f607b4be',NULL),('05f5df12-4fbd-4f07-8ae1-845682feb471','org3',0,'${role_uma_authorization}','uma_authorization','org3',NULL,NULL),('075cec97-da2c-4810-a677-1a991e169ce6','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_create-client}','create-client','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('07c89f6a-e275-4dd3-9c4e-1ef8607be971','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_view-consent}','view-consent','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('08223b91-6854-4c4e-98d0-85a1e0253de3','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_query-clients}','query-clients','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('0a5eb334-669b-407d-bdd9-c429a677c815','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_create-client}','create-client','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('0b121a73-ab8f-44b9-80c9-cd9ac2965fb4','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_create-client}','create-client','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('0b127d18-bd2f-414e-b592-582c42b8360e','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_manage-users}','manage-users','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('0ba16987-db3e-4d10-920a-0ce052dd615c','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_manage-authorization}','manage-authorization','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('0c531c8a-a7eb-400b-9d4c-a0dff0df3247','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_view-applications}','view-applications','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('0cfdad65-878f-47b0-978f-0c0be8862f58','bf8007e6-1073-4601-a0c9-08cade1429a7',1,NULL,'_organization-user-role-manager','org5','bf8007e6-1073-4601-a0c9-08cade1429a7',NULL),('0d954a91-5607-4195-b454-6d95642111dc','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_view-authorization}','view-authorization','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('0db750c2-34d7-4f3e-a274-6bd616c1ff98','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_view-events}','view-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('0df8b758-16b7-46b0-929d-261fcd4ae0b2','10f7c620-c6e1-4100-b70a-5d8812e091a8',1,'${role_read-token}','read-token','org3','10f7c620-c6e1-4100-b70a-5d8812e091a8',NULL),('0e395ea5-311d-47fe-9d8a-7149c33af8e1','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_manage-realm}','manage-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('0e61b1fe-3ef2-4608-9943-18c0710f0690','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_query-realms}','query-realms','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('0ebb370e-1b2f-450b-8d73-03e9bc180d02','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_manage-realm}','manage-realm','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('0f1e4dd8-6c4e-4e80-b95e-f42f68ae9edf','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_query-users}','query-users','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('0f32299b-229b-481c-ae28-7c29856c2243','bf8007e6-1073-4601-a0c9-08cade1429a7',1,NULL,'_organization-manager','org5','bf8007e6-1073-4601-a0c9-08cade1429a7',NULL),('0f627bfb-6ddf-41d1-ad48-597df4058f78','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_view-identity-providers}','view-identity-providers','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('0f9d5ea0-1d58-49b5-bfce-0aac6e054445','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_view-clients}','view-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('0fc832f5-71f7-4728-bafd-c0fa153ec12e','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_manage-users}','manage-users','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('1022fa0e-cde8-40f5-bcc1-51ef08b7e904','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-ws-mt','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('1079a02e-fd69-4a9d-adc3-c812e18110e3','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_query-realms}','query-realms','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('10fb6bc2-27f9-4bc1-b744-8df9b17bf593','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_view-clients}','view-clients','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('111e6d2b-79b3-4c23-99a6-8edb1c9b2711','4a3136c6-14f2-4a86-bc94-4054f607b4be',1,NULL,'_organization-user-role-manager','org4','4a3136c6-14f2-4a86-bc94-4054f607b4be',NULL),('139a602c-79bf-45ac-a0a0-796b05f1b071','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_view-events}','view-events','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('146c1a8f-9093-43fd-b720-e61c60f7c4d0','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_view-groups}','view-groups','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('14853a62-53de-4d29-8be5-5d0c052a9c08','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_manage-account}','manage-account','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('14bfd4cb-e01e-49ce-bad8-921ec3279d9f','org1',0,'${role_offline-access}','offline_access','org1',NULL,NULL),('1557e141-c371-4c4c-9a56-b2f500248caa','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_manage-identity-providers}','manage-identity-providers','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('15c54e4f-f110-41c1-a0f8-26d8150ff43a','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_manage-consent}','manage-consent','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('163d20da-927d-45c1-8421-117463e8c6d3','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_ws3-admin','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('17547ac4-c953-4ef3-92f3-3a9a7d26d249','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_view-realm}','view-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('1769fa6e-62ad-4e17-bb59-bac8dd05ad42','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_view-clients}','view-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('17e67e8a-bc75-4f04-bdc2-a5335020fdc3','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-ws-mt','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('1b2854bc-9ad1-433a-b97a-39b91efb7f3a','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_manage-consent}','manage-consent','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('1c3deba3-8ab6-45e4-b99b-1fecacb0c50d','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-ws-role-usr','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('1c9e8042-9356-4e23-9d50-524d93e97774','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_ws3-admin','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('1e30e879-b19c-42eb-ac3a-18a0015a9928','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_view-authorization}','view-authorization','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('1e57afd7-234b-4ee2-803c-a70a653d345a','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_ws1-admin','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('1e650dd1-c04d-4b21-b94d-d5739204c631','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_impersonation}','impersonation','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('1e849bfb-bb6a-493d-8132-3274566ab8bc','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_view-events}','view-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('1eb18b09-68c8-4e45-872b-9e922265fb56','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-usage','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('1f2bf497-bea3-48f9-af28-28767de6861c','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_view-authorization}','view-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('1f6e765a-f981-4419-b948-3c877f0518c6','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_view-groups}','view-groups','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('20066d7a-a16e-461c-a11d-af428828fe3e','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_query-groups}','query-groups','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('21a9f74b-d6af-42ec-8373-93eec341908f','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_view-realm}','view-realm','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('2388fcd0-72e6-4fa5-8ad1-b342702754e7','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_query-groups}','query-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('2438e27c-322b-4e80-b6a2-7e7ae8defd5e','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-role-usr','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('246e2505-c030-449f-ab31-c82b047e582e','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_view-consent}','view-consent','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('25120deb-75c0-4c2f-985f-c3986bff28a8','75799957-807f-4039-915e-f274934b3f50',1,NULL,'ws2','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('252d5a73-42e9-43fd-b1d9-012658167e4d','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_view-events}','view-events','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','90437d83-845f-4150-8d81-4ba1d37a7624',1,NULL,'_organization-manager','org2','90437d83-845f-4150-8d81-4ba1d37a7624',NULL),('265412b5-d9a0-4826-9d3e-4bcc3fcbe2ab','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_query-realms}','query-realms','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('27012f1f-907e-46c5-b247-9c4eab682fb2','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_view-identity-providers}','view-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('276429fd-071d-4ccd-b174-7c762ad7bbf3','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'ws1','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('27c8af72-6828-499b-8c81-5a566a049385','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_view-authorization}','view-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('2810bc5c-41c9-4446-aacf-0cca89e636cb','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-role-usr','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('2821f1da-6e04-4bd4-9d89-421854a623de','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_manage-events}','manage-events','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('28479fc7-b1ce-4bf3-b03b-88d963814a08','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'ws3','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('2862e20f-64ed-40c0-ac1d-93e971d08f3b','25d0f35e-cf72-47bb-8999-6285c9b9e2bd',1,'${role_read-token}','read-token','org2','25d0f35e-cf72-47bb-8999-6285c9b9e2bd',NULL),('28f3deb4-f309-41a4-9b5b-911ca2f3c08f','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_manage-account-links}','manage-account-links','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('29d6c04a-1419-4397-9b12-1f5412a14e44','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-ws-mt','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('2c857ab0-2609-4f46-b8cd-52aec223368f','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_manage-consent}','manage-consent','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('2d8ee34d-839a-42f1-8bf5-803e0affedaa','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_manage-identity-providers}','manage-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('2e2006cb-3a44-40b3-984e-832b4d6a737c','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_manage-users}','manage-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('2e402197-8511-45bb-a818-2d4ae95b6c8d','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_delete-account}','delete-account','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('3118d21b-f01e-43f8-bd6a-5139b5c3306a','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_impersonation}','impersonation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('31920fab-e98a-4b5a-9822-99e4707a67bc','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_query-users}','query-users','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('31f16fbc-c8cf-47af-bbdc-88c9af8c112e','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_query-groups}','query-groups','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('32d8d1d9-bb52-451c-b746-bfe78319c8bc','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_query-users}','query-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('3311a7b8-3f95-4aea-aee4-832fe3425678','org5',0,'${role_default-roles}','default-roles-org5','org5',NULL,NULL),('34497a3c-0a5a-4885-ab94-d412b9d53180','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_query-users}','query-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('3454081f-fee8-47a2-872d-7fd717da25b2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_delete-account}','delete-account','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('34c0e69b-62a6-4a7d-9668-7bcf7169d77e','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_ws2-admin','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('34f4733d-e807-4c2e-b859-5f010d03e734','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_realm-admin}','realm-admin','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('34faefd2-5c9c-4851-8fad-e99fcc410867','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_manage-realm}','manage-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('3506eaed-2486-47ec-93bf-47bd5d8722b9','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_manage-consent}','manage-consent','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('35198cf8-6ad6-4abe-ab79-1efafc73e08c','9409a340-9f41-469d-8ecf-37785793e86e',1,'${role_read-token}','read-token','org5','9409a340-9f41-469d-8ecf-37785793e86e',NULL),('35820569-9467-4a7a-85bd-a42d11f264bb','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_impersonation}','impersonation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('35a4cdde-1842-48cf-bfda-f0185f2c46ad','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_query-groups}','query-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('3624663b-3a98-4364-9c64-96a5a965de6b','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_view-groups}','view-groups','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('37dda41b-d445-49f2-a806-df159be87fab','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-ws-role-usr','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('37e62de2-ec35-4078-871e-4ac71f5adbef','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-usr-mt','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('39eb32a0-3428-4ae7-8ca4-ac9a9bcf2131','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_view-consent}','view-consent','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('3a00008e-1aef-4af3-8b39-6e88638c3f30','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_manage-identity-providers}','manage-identity-providers','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('3a016e6f-3de4-4299-894c-16f13facfe1e','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_query-users}','query-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('3c19ec89-201e-41c7-9ca2-6d438e629a16','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_view-users}','view-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('3c6b840e-771a-4daa-99d5-18871392af3a','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_manage-account-links}','manage-account-links','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('3ca0f12a-34f5-41ad-9548-e5a7da25920e','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,'${role_uma_authorization}','uma_authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,NULL),('3d106091-433c-4668-9978-4497c7ec0628','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_view-events}','view-events','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('3d9e984d-2e3e-4790-a300-b1657d35f143','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_query-users}','query-users','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('3dff97c9-eff7-460f-a1ed-54b8ffe9e170','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_ws3-admin','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('3e104eaf-d97f-484c-a3be-f92976dc7edf','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_ws3-admin','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('3e8bb9af-f4bc-4ac2-8c66-ac73b6983694','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-role-usr','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('3ec376e8-29ee-45a0-a30e-016e576aa8f8','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_manage-realm}','manage-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('3f477947-9329-4ecc-b7ea-398460d9e43d','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_view-profile}','view-profile','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('3fb6b853-da4c-4625-8fa4-5472b3a68ee0','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_query-clients}','query-clients','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('3fb6d514-9b93-4051-9103-fd7854d46c3f','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'ws3','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('4154885f-309f-4cac-819c-5e628120ab02','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'ws3','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('41991a70-07a3-4e9c-b11d-af32fa816145','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_manage-authorization}','manage-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('43ac4853-0117-4bf0-9254-afa80cdae91e','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_view-users}','view-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('43df02bc-cc74-478e-8284-f01211b6a567','bf8007e6-1073-4601-a0c9-08cade1429a7',1,NULL,'_ws1-admin','org5','bf8007e6-1073-4601-a0c9-08cade1429a7',NULL),('43e82126-4bf6-496c-91ab-5999975626ef','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_view-users}','view-users','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('44c543f5-14e8-407c-914d-5ddeacacad78','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-ws-role-mt','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('4593f877-2829-4507-b709-baf276daa4e8','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-audit-log','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('464e34d5-477c-42f8-9e55-38f01e6d8bff','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-ws-role-mt','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('46a8fa55-7d31-4661-9036-39042691c8dd','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_ws2-admin','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('4781a401-602f-422a-8220-87d9bb29dee0','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-usage','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('495a18c7-4c09-40ec-8d8f-36ec65469b57','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_manage-events}','manage-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('4a70a4d2-3d44-46f6-881d-0f80fae3081f','90437d83-845f-4150-8d81-4ba1d37a7624',1,NULL,'_organization-user-manager','org2','90437d83-845f-4150-8d81-4ba1d37a7624',NULL),('4ade8c15-5108-4c07-ac73-e1fc48d534c4','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_query-clients}','query-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('4b077008-4e82-4890-bf99-5decbc4011d8','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_delete-account}','delete-account','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('4b08033c-d1ac-439b-bcd2-8cba741c5987','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_view-clients}','view-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('4c99cb45-cf9c-402d-9d53-4a868909ceca','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_delete-account}','delete-account','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('4cccba60-db70-4ee5-8dc3-ac267c20078f','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'ws3','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('4cf67935-a2dd-4fdf-844e-5c376fe4ae12','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_manage-realm}','manage-realm','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('4d093ee5-073c-4f79-981b-5d1e7ada68a6','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_impersonation}','impersonation','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('4d7cc313-7aaa-45ea-99d3-bdc61c557420','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_manage-events}','manage-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('4e8d47a5-5ba9-4eab-84cf-3a03bc38bf7c','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_manage-events}','manage-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('4fe58f16-e844-4b5b-ae13-57dc55390cda','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_manage-users}','manage-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('50de228a-2834-4b24-9e00-a3a29b833e0a','bf8007e6-1073-4601-a0c9-08cade1429a7',1,NULL,'_organization-user-manager','org5','bf8007e6-1073-4601-a0c9-08cade1429a7',NULL),('51040531-cc48-415e-bdcc-29e8bfa4d65f','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-ws-role-usr','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('52140e9a-8cb3-4e88-8ae7-5b2d73c8adab','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_manage-users}','manage-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('5245aa30-0aca-4f9b-878e-9859b09abdc0','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_view-identity-providers}','view-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('52d26256-2343-49eb-871d-343b2833a1bb','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_view-realm}','view-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('5323ad7a-161f-40c4-b569-02221bf71aef','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_view-profile}','view-profile','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('54f50885-0be7-481e-98cd-c870f81b4e5f','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_manage-users}','manage-users','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('554d97ad-9687-45df-b708-5b993cf6f346','org3',0,'${role_offline-access}','offline_access','org3',NULL,NULL),('5626641f-77f2-4959-80c2-18faa5b6bf38','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_manage-authorization}','manage-authorization','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('567c6767-75a3-4aef-b0dc-adbcd58d3301','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_ws2-admin','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('56e620df-1891-4c36-b058-1cca1b687d68','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_create-client}','create-client','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('56fe696a-5d7e-4782-93a1-4b0e74c0ceb7','bf8007e6-1073-4601-a0c9-08cade1429a7',1,NULL,'_ws3-admin','org5','bf8007e6-1073-4601-a0c9-08cade1429a7',NULL),('571f6290-e87e-43ad-b750-0c8a723982ad','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_manage-authorization}','manage-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('5926846a-42d7-45c3-bc4b-602ab3f198f5','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-audit-log','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('59692eaa-9979-4dab-8095-d64431b04ad7','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_view-realm}','view-realm','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('59d06916-9a09-473d-aa45-34191803a8fa','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_view-realm}','view-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('5c101215-9a43-4dba-9618-b4bcafbf1fbe','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_query-realms}','query-realms','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('5c5f13eb-8af4-4242-9cbe-06a906fc0954','90437d83-845f-4150-8d81-4ba1d37a7624',1,NULL,'_organization-user-role-manager','org2','90437d83-845f-4150-8d81-4ba1d37a7624',NULL),('5cc55460-6928-4a9e-b2db-add38bb0f2b9','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_manage-realm}','manage-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('5e43bc02-1f81-4311-ab5f-bbbe8bc85443','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_view-clients}','view-clients','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('5e7fe425-cdf0-430f-ad38-e6207d1e71e3','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_manage-clients}','manage-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('5f3482b1-ebfe-439a-986a-0f040d65c59e','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_ws1-admin','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('5f7305c6-d9ca-49c3-8824-1066c6b8a0a1','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-role-usr','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('605c047b-a4c8-405a-9820-222b0d1989a0','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_create-client}','create-client','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('61dd4aeb-29b8-407d-bd25-7b2dfe0f1dfb','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_view-events}','view-events','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('61eac3ff-b7c2-46fe-8f96-2c0408e865f7','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_manage-events}','manage-events','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('627b61e9-3cca-4e35-b9de-dadc0ee4e726','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-ws-role-mt','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('62c438da-0bf9-423e-9d93-b5ec68231ce2','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_manage-users}','manage-users','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('62fab8ee-5a84-4381-860d-4a6055214f50','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_view-users}','view-users','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('6319625a-4b97-4cc2-9576-97bba3e858df','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_view-events}','view-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('66ec0f70-30ea-43ff-a2f6-79b18643d858','org4',0,'${role_default-roles}','default-roles-org4','org4',NULL,NULL),('6716b438-3f81-43bc-b301-36d43b4fb199','4a3136c6-14f2-4a86-bc94-4054f607b4be',1,NULL,'_ws2-admin','org4','4a3136c6-14f2-4a86-bc94-4054f607b4be',NULL),('674ace4b-22b8-4b66-951d-978cdfc8b65b','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,NULL,'_organization-user-role-manager','org3','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',NULL),('68a4ca8c-c163-4119-8a37-3e2e84a1b942','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_view-identity-providers}','view-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('6a9a06bb-daec-4c34-b783-939e744be9ee','90437d83-845f-4150-8d81-4ba1d37a7624',1,NULL,'_ws2-admin','org2','90437d83-845f-4150-8d81-4ba1d37a7624',NULL),('6b0fd2af-9c37-4e9a-a6f9-d76fd796b69e','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-usage','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('6bbc27ce-a3e1-4ec4-82d6-ef812299991e','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-usr-mt','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('6c660eaf-5c32-4168-91b1-7f1762f45380','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_view-users}','view-users','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('6c964d68-d862-4ca2-86af-79d2e5bb24ac','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_view-clients}','view-clients','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('6ccea877-fb8f-4e4a-9aa9-a424f138226d','1fc28088-5430-49fe-b074-0e675272dc2f',1,'${role_read-token}','read-token','org1','1fc28088-5430-49fe-b074-0e675272dc2f',NULL),('6d53de39-7615-4099-b0f8-0d29979f4b3b','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_query-groups}','query-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('6daa393e-8bd0-4262-9827-68a9bd450eb6','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-usr-mt','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('6dcbc367-b505-44d2-9993-9edb3d45c3b0','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-ws-mt','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('6e4fa731-45b0-41c6-ba1e-69a33bec461a','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_impersonation}','impersonation','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('6f71e58d-38f1-4296-80cd-caf16a5a943c','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_manage-clients}','manage-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('72891c5d-469d-47ab-8a07-1ccb981f7805','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-own-mt','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('72e84678-70d4-4875-8185-55e0e1fe3294','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_create-client}','create-client','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('7373b7f3-8ae0-4dfa-9d5a-a59fc326c20b','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-upd','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('73c81309-ffbc-440a-8a8d-5d96296c4b91','4a3136c6-14f2-4a86-bc94-4054f607b4be',1,NULL,'_ws1-admin','org4','4a3136c6-14f2-4a86-bc94-4054f607b4be',NULL),('741a5de9-96a4-4a63-b5d5-300f9226e757','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_manage-identity-providers}','manage-identity-providers','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('7434e99b-ef5a-4c65-92e9-1456b503d767','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-usage','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('755df3fd-379f-44ce-aa2a-8489aaaed940','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-own-mt','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('7562e402-9370-4ff7-a9e0-8be61ba5a151','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,'${role_offline-access}','offline_access','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,NULL),('757c06a8-1eb6-4473-aac0-a7946f0acb83','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_manage-clients}','manage-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('75a43a99-b9b0-4a1f-b1ef-a7d145ac9852','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_view-clients}','view-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('7638790d-780f-4a05-b4b0-f4b3a09e8fa7','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_manage-identity-providers}','manage-identity-providers','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('782de68d-12ec-4dfa-8727-8bb504aebbd0','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_create-client}','create-client','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('78d37472-1b38-4387-ae31-f154d0ee6598','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_manage-authorization}','manage-authorization','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('795ffef6-c616-4ca9-ba78-b8e6a5ec9ebb','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_ws2-admin','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('79d60bb7-6d86-411f-894d-192762e276eb','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_manage-clients}','manage-clients','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('7cf5b30a-ed86-4968-8c93-4d8f9243b508','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_view-profile}','view-profile','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('7e49f395-b313-4336-ba7f-290a84e06359','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_view-identity-providers}','view-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('7fbc560c-35be-400d-81d4-4536302a2d93','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_query-groups}','query-groups','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('8008fec8-667d-4347-83d9-8f6cd19f7cc7','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_impersonation}','impersonation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('80239db1-9ee9-445f-92a8-9b7b9aba1f19','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_view-authorization}','view-authorization','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('80fd9e9c-6da2-4f7a-809f-67dbe6b88586','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_query-clients}','query-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('81d10a65-d20f-4ea7-b230-1c3cb50b9457','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-usage','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('8300c9ca-7fa4-4182-ae75-6566136a534a','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,'${role_default-roles}','default-roles-master','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,NULL),('833b7582-1f35-4d38-9d9a-09fd57e3fac3','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_delete-account}','delete-account','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('83405647-5d8b-4c67-ad81-fddb727991b7','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_ws1-admin','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('84589d2b-1e09-466e-a0d3-a0db739d97be','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_view-realm}','view-realm','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('84d1d505-326d-410a-bfa3-f4638d066339','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-usr-mt','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('8589b063-3399-4be7-89e1-4902c6de3b04','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_impersonation}','impersonation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('8656a29d-0524-441a-96ef-382dec93111a','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_view-authorization}','view-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('872a26b8-b5ed-4044-aca3-689ed5cd3c2b','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-audit-log','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('87a01a65-8801-4f13-a172-8214a8f42429','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_query-clients}','query-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('87d602d7-af8c-4153-81f4-4ba1f9fc4b9d','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'ws2','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('87daeb5c-c932-45e4-9d0d-2adfd04df822','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,NULL,'_ws3-admin','org3','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',NULL),('88057ad9-6806-4b38-978f-b9c7acbf19cc','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_manage-realm}','manage-realm','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('881458f9-4e40-4389-b058-f63b9f9adb5b','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_query-realms}','query-realms','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('883a8346-02d9-48c1-b6cf-33e5e593fafd','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_create-client}','create-client','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('894598b6-1117-4d74-a67e-431ba79f949e','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_manage-identity-providers}','manage-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('8a571b0b-09dc-4a78-9809-a762f185aa4b','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_manage-identity-providers}','manage-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('8a602907-8f50-4707-9e1f-c795e5cb2399','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_view-events}','view-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('8b0ca5ff-a8a4-43e5-aeaa-85dadd275851','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_view-users}','view-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('8b13eb91-9bb5-41db-ba19-117a124c91ad','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_manage-clients}','manage-clients','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('8b207999-03cc-456a-a8cb-d751f3c85851','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_impersonation}','impersonation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('8b69162b-ee4b-463a-8c2f-9955a8fb511b','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-ws-role-mt','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('8bb156c7-8786-4b9a-b3e5-c62e0ad1806a','org1',0,'${role_uma_authorization}','uma_authorization','org1',NULL,NULL),('8bffe167-d7bb-4ca8-a2ce-7fb4a1c1cc31','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_view-authorization}','view-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('8c31b02d-3ce1-40e7-b1ed-5319ea09595b','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_view-authorization}','view-authorization','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('8cdc9af1-3d5d-41b2-817b-8bda51ddfb88','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'ws2','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('8d2178a0-6c3a-40c9-85ea-80f88dba8ee7','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_manage-account}','manage-account','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('8da9833c-0d58-4254-b9c1-23a36c569a09','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_view-realm}','view-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('8ea951d0-03c6-4b25-8dd5-87a23dbc32ff','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_manage-account-links}','manage-account-links','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('8ef54882-2f3a-42cf-ae37-fb1499f58190','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_query-clients}','query-clients','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('8fe75922-4d78-47e6-96f4-03bae30d28f8','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,NULL,'_ws2-admin','org3','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',NULL),('9019c1ff-cac9-4b92-a558-a5ae2a8fcb19','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_manage-account}','manage-account','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('91100ac1-e1e1-4b96-b96b-597ef72f3fdd','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_view-identity-providers}','view-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('91b17ae5-78ce-49c6-81ec-dd904cf17ede','14038227-ac31-459b-a41c-96afd45ed7c2',1,NULL,'_ws3-admin','org1','14038227-ac31-459b-a41c-96afd45ed7c2',NULL),('928a5522-048c-47c7-a26b-ea8d7d484bdf','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_view-profile}','view-profile','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('932bcff0-f62f-42ae-8635-f6ae19d3128f','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_query-groups}','query-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('93318639-570c-4831-9347-3fdbcda16692','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_query-clients}','query-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('939bae22-c2fe-441c-9141-8dff595cea84','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_manage-consent}','manage-consent','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('93c290a1-2519-475a-91dc-24d43bf42a85','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_realm-admin}','realm-admin','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('94830865-cc75-4f8f-aa66-d810fb75e1d9','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_view-realm}','view-realm','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('94ee0560-ab00-444e-b6f7-f7b23323f345','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_manage-identity-providers}','manage-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('95316ab1-df9c-4a73-8606-b189825decfb','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_view-events}','view-events','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('9662527d-2d8f-44e6-af67-2a897a7523c4','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_manage-authorization}','manage-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,'${role_admin}','admin','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,NULL),('96c522bb-8538-4d15-bff6-2ea3feea6fc6','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_query-realms}','query-realms','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('9714506a-a41c-449f-b9ef-cde5c1e6ddf9','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_create-client}','create-client','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('9796895b-7c1f-4da5-8d57-73de8835a0b0','org2',0,'${role_offline-access}','offline_access','org2',NULL,NULL),('97fe6009-4072-4e97-a134-e5fa14cad61d','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_impersonation}','impersonation','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('9a3a88f5-fe21-4473-b00b-8fcd4ac63e27','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_manage-users}','manage-users','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('9caedc92-aa3c-4647-a65d-4f1a5a1c09f4','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'ws2','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('9d0f8f3e-b435-4f7f-836b-68588fefa126','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_manage-authorization}','manage-authorization','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('9d512f3d-1be8-4aa2-b007-156c29d7c4a7','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_view-users}','view-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('9ddb7f39-271d-4036-99ea-e58f2551c8cc','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_query-groups}','query-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('9e6d2ccc-a439-4865-9a67-b7b789081bf7','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_view-events}','view-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('9f782251-dcdd-4872-8ec8-f9e3a9287de1','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_query-realms}','query-realms','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('a06aebfb-dde3-45ab-a1e0-3f006b4e2250','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_view-realm}','view-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('a0c43aaa-6269-477b-b563-78ddb3fed51d','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-audit-log','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('a1cb438c-d4eb-4404-bf20-760972d0517f','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-own-mt','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','org3',0,'${role_default-roles}','default-roles-org3','org3',NULL,NULL),('a2369cea-77df-42ce-8f11-61cbf2306d5a','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_delete-account}','delete-account','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('a266ad13-d343-4f3f-87d0-077fd9027127','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_query-groups}','query-groups','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('a3ed9d20-924a-425f-956b-5a132e9e8576','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_query-groups}','query-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('a475303d-eade-4da9-a6be-51b290d4a3d4','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_view-clients}','view-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('a5a8538e-2e00-4f4c-bd2a-9bc838fd546d','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-upd','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('a6280309-5e2f-4afe-b833-97619e1f3b08','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_query-clients}','query-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('a65ef61d-5749-4b1a-85f5-dd5d9722c2ce','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_query-users}','query-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('a7d3d7a8-513c-484c-8771-8e610a837684','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_view-consent}','view-consent','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('a95ba168-6192-4299-b27b-e729d9915198','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_query-users}','query-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('a98147db-2c60-4fd0-b2d0-154ba0ef37a8','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_view-profile}','view-profile','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('a9818a02-25a0-4a64-98d7-e1bee39ddcee','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_view-consent}','view-consent','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('a9bb088a-6377-4eb2-8f14-15a151658fc8','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_manage-consent}','manage-consent','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('aa0a9963-65eb-456d-9d00-dee67fd3ca35','178c0867-4708-4b1b-8a6e-ee2498d519cf',1,'${role_read-token}','read-token','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','178c0867-4708-4b1b-8a6e-ee2498d519cf',NULL),('aa8fa8da-572f-459a-be42-cb01fb8063fa','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_manage-realm}','manage-realm','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('aaa47242-610e-47b6-be42-d83567cf8742','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_manage-account}','manage-account','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('ab7a1313-03e2-4d55-aee1-ed281079b3a1','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_create-client}','create-client','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('abd1a043-9e43-433a-bb94-9ae00d5a1904','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_query-realms}','query-realms','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('abe816ad-eafc-43c0-b06a-c07fea1d2d9d','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_manage-realm}','manage-realm','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('ac7e6a92-7dac-472e-b18b-26c631651fe6','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_realm-admin}','realm-admin','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('ad199983-b4a7-48aa-ae61-ee1910b39d17','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_view-identity-providers}','view-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('aee67f07-ab58-4812-a562-434e55c65fc1','4a3136c6-14f2-4a86-bc94-4054f607b4be',1,NULL,'_organization-manager','org4','4a3136c6-14f2-4a86-bc94-4054f607b4be',NULL),('aef2eee4-9fa5-4ff6-9bd0-0240c5dfd5ca','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_query-users}','query-users','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('af1388ad-71a9-43c4-aadc-3d2e97f7a1eb','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_manage-authorization}','manage-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('af69b3e5-1835-4c58-8278-f10f23e13e78','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-upd','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('b0122047-f68d-4086-b88b-3bea7b935838','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_manage-users}','manage-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('b0ff0e93-badb-4cf3-b6d5-c7d774fefe05','90437d83-845f-4150-8d81-4ba1d37a7624',1,NULL,'_ws1-admin','org2','90437d83-845f-4150-8d81-4ba1d37a7624',NULL),('b18440d4-b9a5-433d-b234-40133b4d9744','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_view-clients}','view-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('b2b646b6-8706-471d-9dc4-170589af64f7','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-upd','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('b2dd9a15-64be-46b3-a320-3bc56a31432f','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_view-users}','view-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('b2f2cd40-2357-40e5-aa32-3e9b6fb05a41','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_manage-authorization}','manage-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('b3740a7f-5878-4db6-be40-c69021e44bc0','55235526-77b3-45a6-8fc0-03fb5772b81f',1,'${role_read-token}','read-token','org4','55235526-77b3-45a6-8fc0-03fb5772b81f',NULL),('b3f6ba22-9baf-47e6-a66a-42505155f3b1','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_manage-users}','manage-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('b4398f8f-8592-4a57-882a-a615c39a5d3e','87a260f4-ece5-4eea-94de-ba31720af864',1,NULL,'_og-role-usr','org4','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('b464a95d-811a-4219-8dc6-5f2b591a52b0','14038227-ac31-459b-a41c-96afd45ed7c2',1,NULL,'_organization-user-role-manager','org1','14038227-ac31-459b-a41c-96afd45ed7c2',NULL),('b5a2b1d4-dba4-4d05-9d2a-ebd3e35310cb','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_og-own-mt','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('b5d2c9d2-5d2d-4bc4-a463-48b7c97a3ca9','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_view-consent}','view-consent','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('b6ad5799-db19-48da-8d28-3656fe26f3d5','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_query-clients}','query-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('b8406ca0-8b14-4c1a-91d0-d685511db8ea','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_manage-events}','manage-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('b89d6931-8374-45f0-b46d-04298a20dd2a','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-ws-role-mt','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('b8dac5b9-2635-4455-9272-5613e7045db6','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_ws3-admin','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('ba88294f-28fe-4a6d-8e01-8325755c49d2','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_manage-realm}','manage-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('bcb1c60f-ee15-417b-8a9d-e8311709ae67','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_view-clients}','view-clients','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('bd77e290-63fb-419c-807d-fa91fe37ea1a','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_manage-identity-providers}','manage-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('be63804b-79a5-44dc-b38d-289446687b45','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_query-realms}','query-realms','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('bed06666-f56e-4e6d-ae08-0fa1a8b56605','978959fd-add2-4968-ac7a-da91ea64477a',1,'${role_view-groups}','view-groups','org1','978959fd-add2-4968-ac7a-da91ea64477a',NULL),('bee2a686-d0d3-43bb-b7af-f7c4476e9e3c','75799957-807f-4039-915e-f274934b3f50',1,NULL,'ws3','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('c122c2d1-96e0-4c02-87eb-41a19eaa6ef7','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_manage-account-links}','manage-account-links','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('c1d206ec-08ff-48fe-a84f-ac2f35a8ccba','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_view-applications}','view-applications','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('c2b484ef-e018-4426-8f3f-6d098bd745ba','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_impersonation}','impersonation','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('c62cb76f-06b8-400f-b71a-449ce8c95116','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_view-users}','view-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('c65e336d-b35d-47ec-8cf7-d67366966797','org4',0,'${role_offline-access}','offline_access','org4',NULL,NULL),('c66a8982-82a6-4040-b693-facd444d12c4','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_manage-realm}','manage-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('c7645be6-116a-4652-bb7e-bc800403be26','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_view-applications}','view-applications','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('ca336d5c-e351-4e7c-bf73-f4136c7c6559','bf8007e6-1073-4601-a0c9-08cade1429a7',1,NULL,'_ws2-admin','org5','bf8007e6-1073-4601-a0c9-08cade1429a7',NULL),('cadf2429-a755-4f4f-b5b6-bcce9551da12','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_manage-events}','manage-events','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('cae7f432-0d54-4419-bdaa-cc2621271d47','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_manage-events}','manage-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('caf2899b-84e5-482c-aecb-2b57983255d2','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,NULL,'_organization-user-manager','org3','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',NULL),('cb567335-e70a-4deb-8430-6bc98bcdbe03','org5',0,'${role_offline-access}','offline_access','org5',NULL,NULL),('cc7e0171-0d89-425d-8b96-3dae17b20d09','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_view-authorization}','view-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('cec4a30c-a82e-4b2d-bdbd-befdc1a7e640','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'_ws2-admin','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('cf625438-6332-4a9a-baba-6deaef522009','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_manage-clients}','manage-clients','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('cff3ed73-73f1-422e-9d85-537d4ec40684','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_view-identity-providers}','view-identity-providers','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('d04a7168-5509-46c9-be29-91560931fd91','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_view-profile}','view-profile','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('d0a07957-e9f8-458e-af12-83c4fa187b7f','14038227-ac31-459b-a41c-96afd45ed7c2',1,NULL,'_organization-manager','org1','14038227-ac31-459b-a41c-96afd45ed7c2',NULL),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','org2',0,'${role_default-roles}','default-roles-org2','org2',NULL,NULL),('d21a3988-f921-4979-b095-5499b0993ed4','75799957-807f-4039-915e-f274934b3f50',1,NULL,'_og-audit-log','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('d275e6bb-b38c-4fef-bd01-354188808cef','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,NULL,'_ws1-admin','org3','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',NULL),('d2803987-24a9-4ea2-9464-09b60cc08318','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_manage-authorization}','manage-authorization','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('d3334f5e-5a35-4aee-bd82-40e3a4731106','7c0d7aca-f937-4a45-9828-76f05a36c281',1,'${role_view-groups}','view-groups','org3','7c0d7aca-f937-4a45-9828-76f05a36c281',NULL),('d386cdb8-1cd4-4e4c-ba57-0ca1720de59b','org4',0,'${role_uma_authorization}','uma_authorization','org4',NULL,NULL),('d4f0cf7f-7932-43f8-a05d-499a454c3c22','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_manage-identity-providers}','manage-identity-providers','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('d50d93ac-d24a-4b51-98fa-89c5b346511c','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_manage-events}','manage-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('d50dda6f-986f-4082-a06f-d51f3e027b43','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_view-applications}','view-applications','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('d8e96ecc-e720-4374-9fca-644d2c6be4b4','48aa244c-1748-48f0-b78d-628e5aa21076',1,NULL,'ws1','org5','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('d945b46e-7619-4b77-8219-5537add38b0d','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_realm-admin}','realm-admin','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('d9a835d5-81a7-4ea0-ae6d-4f7c9192c7c7','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_view-users}','view-users','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('d9cd8d1a-3592-4736-ba4c-fa4f9a96d929','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_create-client}','create-client','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('dbf2582a-5ec8-4961-9a7f-99d60d5b8b52','43cf22f8-90af-4532-ad1c-fc2934a264e3',1,'${role_view-authorization}','view-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43cf22f8-90af-4532-ad1c-fc2934a264e3',NULL),('dc2c9567-6c85-412e-bc40-b249c5f1738a','f1d6454e-446c-46d9-851d-96c5b7dc2028',1,'${role_view-applications}','view-applications','org4','f1d6454e-446c-46d9-851d-96c5b7dc2028',NULL),('dc4518a8-e2d7-43b4-8799-7795b548cf70','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_view-identity-providers}','view-identity-providers','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('dd0394d8-2cce-403d-a894-5e9a154eca58','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_view-groups}','view-groups','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('df20f52d-e3e6-47ac-971f-f95628abdd64','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-own-mt','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('df3bccbd-b3fe-4a46-8427-00a067460f50','75799957-807f-4039-915e-f274934b3f50',1,NULL,'ws1','org1','75799957-807f-4039-915e-f274934b3f50',NULL),('e058afcb-3d88-4d36-96b1-08f377907450','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_view-realm}','view-realm','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('e0f755fa-23bb-4d23-8a41-a6ad95988d69','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-ws-role-usr','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('e223cf61-d420-43ab-b3d6-4e7fdc3b71c0','128c1c6c-31a7-441f-adeb-1eeea294d721',1,'${role_impersonation}','impersonation','org2','128c1c6c-31a7-441f-adeb-1eeea294d721',NULL),('e2c4279a-7486-4a21-895b-ae7a7f4d6adf','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_query-users}','query-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('e38b8d1d-f5c0-43ea-a70f-5e50a078ac97','org5',0,'${role_uma_authorization}','uma_authorization','org5',NULL,NULL),('e3be17b6-ce99-40a9-bba8-0b134ecb875d','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_manage-users}','manage-users','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('e4e29c65-3bab-4c37-9ab1-3a12b29f2dee','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_manage-events}','manage-events','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',1,NULL,'_organization-manager','org3','c9341f2f-91c3-40b2-ac4b-6a1465761c3c',NULL),('e68aff40-cc4d-4292-b7a2-89f66518bb18','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-upd','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('e80a03d5-c9bf-419b-8b4e-28f6a438361c','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_query-clients}','query-clients','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('e837c920-ece7-45fc-a6e9-ae4f19e520fd','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_view-identity-providers}','view-identity-providers','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('e84bc76b-e9ff-4d9f-8a26-f369e456862e','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_og-usr-mt','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('e85c5ceb-0d04-4975-a55a-946c84a3ec52','68067b8f-f178-4db3-ba80-73f114099679',1,'${role_manage-clients}','manage-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','68067b8f-f178-4db3-ba80-73f114099679',NULL),('e89caf85-564d-44d5-9866-b508c09d845a','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_realm-admin}','realm-admin','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('e8a9ddb2-2752-4ce5-8bc4-73d07275de45','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-ws-mt','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('e8be6773-7370-4c3c-b19d-5c3b3e41d446','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_view-clients}','view-clients','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('e9891926-bd5d-4586-b440-8ba27ef6f84d','org1',0,'${role_default-roles}','default-roles-org1','org1',NULL,NULL),('eb845f74-1eaa-4793-90dc-3f25d9490585','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'ws1','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('ecb0d27a-7711-44ba-b132-b9d203f5d4f8','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_manage-clients}','manage-clients','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL),('ed1b8f12-8e02-4e1b-b0f4-469fa40b7916','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,'${role_create-realm}','create-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',NULL,NULL),('eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c','90437d83-845f-4150-8d81-4ba1d37a7624',1,NULL,'_ws3-admin','org2','90437d83-845f-4150-8d81-4ba1d37a7624',NULL),('ef9f3e65-b4dd-4765-9522-be13d6ae68bf','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1,'${role_manage-authorization}','manage-authorization','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ea5cac83-e5ea-432d-b95b-01fe29e8ea98',NULL),('efe5ffdc-d562-4528-81bf-32f530e1c002','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_manage-clients}','manage-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('f114195d-ddcb-429a-92b2-f7aa572db8db','c0ba0103-6eb6-43d5-a844-8d44e6254694',1,'${role_view-realm}','view-realm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','c0ba0103-6eb6-43d5-a844-8d44e6254694',NULL),('f22eb848-4b57-4548-b5d4-5bbfb1eb5a35','b04fc239-de8c-43f6-9432-cae3227487db',1,'${role_manage-account}','manage-account','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','b04fc239-de8c-43f6-9432-cae3227487db',NULL),('f59b0858-36dd-40d1-929f-e4cbe9b0c485','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_ws1-admin','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('f66aa5fb-b118-4dce-b3c1-05968982c0c3','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_manage-identity-providers}','manage-identity-providers','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('f68e8d47-d4b8-4898-801c-0a5834980dd5','9c738697-99e7-4b1f-8702-6b499e071ce3',1,'${role_manage-account}','manage-account','org5','9c738697-99e7-4b1f-8702-6b499e071ce3',NULL),('f68fce5a-5b51-40fd-80a7-5d97b092bb16','3894c5a6-d196-4876-80b0-fe257f155db3',1,'${role_view-events}','view-events','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','3894c5a6-d196-4876-80b0-fe257f155db3',NULL),('f72619c7-09ae-482c-8c7f-07bbdf9dfb13','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',1,'${role_manage-account-links}','manage-account-links','org2','9bd19d36-d8d3-4cd2-a4c0-a406e34c8155',NULL),('f730b904-7f32-4fdd-b710-007981b46952','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',1,NULL,'_ws1-admin','org2','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('f82745df-1bec-4990-8adb-bee98b4acb7a','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_manage-clients}','manage-clients','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('f87e4ff2-a61f-412c-9beb-e12d9591c98f','06a57e63-21df-40a5-962a-05f14882f954',1,'${role_manage-clients}','manage-clients','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','06a57e63-21df-40a5-962a-05f14882f954',NULL),('f92f036c-303a-400a-8466-3bc003adac11','0ea7620f-ec2c-42d3-afdd-50a344c16891',1,'${role_query-clients}','query-clients','org4','0ea7620f-ec2c-42d3-afdd-50a344c16891',NULL),('f9b97290-745e-4ab9-8836-ef4972f247a0','org2',0,'${role_uma_authorization}','uma_authorization','org2',NULL,NULL),('f9e2ff77-aa9a-4be2-b30e-248f4d0df460','14038227-ac31-459b-a41c-96afd45ed7c2',1,NULL,'_ws2-admin','org1','14038227-ac31-459b-a41c-96afd45ed7c2',NULL),('fb37e5c5-2837-48c2-b781-568da2dd4e84','d6f36bd8-f053-4c49-b385-c4dee7ca4879',1,'${role_manage-events}','manage-events','org5','d6f36bd8-f053-4c49-b385-c4dee7ca4879',NULL),('fc23e83e-723b-4a0b-a1e0-e63d3763fca2','4a3136c6-14f2-4a86-bc94-4054f607b4be',1,NULL,'_organization-user-manager','org4','4a3136c6-14f2-4a86-bc94-4054f607b4be',NULL),('fca66cb0-9aef-49ef-94e7-fd2fdc2fd937','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'ws2','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('fe01fc5a-7211-476a-9369-3956b1f55688','6e5e9267-7e2e-4032-a789-225985c0bb4f',1,'${role_query-realms}','query-realms','org3','6e5e9267-7e2e-4032-a789-225985c0bb4f',NULL),('ff7a8bd0-a77a-4e92-a147-6157e695186d','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',1,NULL,'_og-ws-role-usr','org3','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('fffe3f6f-84f5-40ad-8c55-015b83741715','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',1,'${role_view-users}','view-users','org1','da2a9eca-d9ba-4674-8e5a-a34cafa7ad3e',NULL);
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
INSERT INTO `MIGRATION_MODEL` VALUES ('hep10','24.0.5',1718092283);
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
INSERT INTO `PROTOCOL_MAPPER` VALUES ('00dd82df-af59-419e-ac7e-850572f524f3','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'c874efb6-2c51-4346-ae9a-db573bd14a78'),('021b81de-ca25-481c-8b95-ce2170e2c02b','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('097fee83-a940-473b-b5cb-7d11d49ca177','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('0a80b928-52ea-4193-a713-53cf5e5eac65','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'1913575d-0713-4f7f-93b9-6bbefbbeb7c2'),('0ca8fbf9-20e8-42f3-af31-a72032d16ef5','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'82d4a4e1-4b4a-4f93-a7b5-899c13458029'),('0e33954f-7c22-4223-a302-cd313d339b6f','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','e0462c55-5a6f-4483-a3e0-f29f62c49372',NULL),('11e55472-2e01-4cc4-ae96-abf62c41751d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('14a6208d-283c-4600-89ec-2bfe785c5638','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('14fa6ff0-eff3-4afa-9b2a-077945697390','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('17ac078c-8bf4-43ab-b10c-078153196ec5','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d2980a26-3bbf-4a8b-95af-6590b9db5dd5'),('197306a4-f418-42be-af01-b314a8266802','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'71f0460a-c62c-487d-b4bc-fc8e5b251875'),('1999f7e2-bf95-40aa-80f9-5d94806f0329','role list','saml','saml-role-list-mapper',NULL,'20f406c0-99dc-441e-b7a2-97b06b0e1298'),('1a021b46-c836-4712-b944-cc48838ad81a','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'673cb4c8-23d5-454c-baf0-b7c16e5c0be4'),('1e100553-2a6b-400a-889a-211a72198d2e','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('209a265d-b100-4c71-8b56-9fe16d46a577','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'0be19014-1c0d-4152-b37b-c808886cdb6a'),('20f6be40-0974-46ae-9305-a1423fa1055b','role list','saml','saml-role-list-mapper',NULL,'8d65bac4-f301-4a92-90ab-d416c017c483'),('22cec09e-f43c-47d0-9d3d-312b7cc8ff45','acr loa level','openid-connect','oidc-acr-mapper',NULL,'0bc1c1b2-742b-40e0-bd34-9af5e4ef02a6'),('2371728e-4549-466a-866f-ef4bbc1f2893','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('25e010db-726c-4509-9f26-f475737bd511','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('27ed8462-cab8-4354-9898-376c31a9d3ad','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('29241eb5-97ab-4133-bf34-fb964d889002','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('29326904-f451-4bca-a95c-adafb768961b','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bfba3540-465d-4d04-8cfb-9bffeaa35d9c'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('2c2b420c-218a-401a-85e4-0fa968888c91','locale','openid-connect','oidc-usermodel-attribute-mapper','32dba29e-9a85-4dcf-9428-1e0b1a4d2811',NULL),('2c64586b-ddb0-42c0-8812-b015329a3a29','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'57f7535d-04f4-406d-bfc4-b7c07338e7c2'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('2f23a579-54bb-4eec-ac93-527f0c90287d','locale','openid-connect','oidc-usermodel-attribute-mapper','a52b1b6d-48b2-4b0f-b008-a87b04d84df6',NULL),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'1913575d-0713-4f7f-93b9-6bbefbbeb7c2'),('360d50a2-1d2c-4f81-8ad3-762088c79d93','audience resolve','openid-connect','oidc-audience-resolve-mapper','5426ce24-799e-4e20-a9bd-be6fcadb0577',NULL),('37dd1508-f879-454b-a044-6d0c10f4b6c6','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'82d4a4e1-4b4a-4f93-a7b5-899c13458029'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bfba3540-465d-4d04-8cfb-9bffeaa35d9c'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9b7c4bc2-ca16-4013-9009-a0b11e3ca335'),('3e214a36-c767-41ac-8ddd-d479633d091d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('3e915823-fc9e-43d3-aefb-5b0b96858324','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d2980a26-3bbf-4a8b-95af-6590b9db5dd5'),('40c2291b-6eda-4978-b723-9aec654d10de','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('41421731-1342-4602-8374-b3e1bf7fdd70','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('45621866-ec3a-4dc2-b637-1166eebe406a','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('47c27410-f8a3-43b4-9ba7-308b650088c9','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'6511f452-404a-42ff-b80b-1609a3071a2f'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','75799957-807f-4039-915e-f274934b3f50',NULL),('4b49a009-cd63-496d-943f-a2969964a775','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3e871eb6-f47d-44c7-aa49-a26c36e95e14'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('4c92788e-aa83-47d8-945f-9677c3a392e4','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('4d4dfbed-85b9-4425-abe1-7448934f8c32','full name','openid-connect','oidc-full-name-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('4f85173f-cdfc-4618-b352-8c169f6f6031','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('55be02f8-02a2-4892-9018-59e3b51b71f1','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'bfb2a3ba-0b3a-447b-ad73-49baa1254abd'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','address','openid-connect','oidc-address-mapper',NULL,'b9a83b54-a758-41f1-b6c2-61a6303e5d9c'),('55e92131-a26f-4ca4-9812-c0364117ab26','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('599d7906-ca47-4728-afb7-8f2ce118da58','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'99ab913f-21c5-424a-ad97-3b37a3a33e4f'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('5a5e55f9-3102-46d6-8542-5c1587435c39','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0a9b67c4-c5a5-4d48-a1d6-e30ee9e19851'),('5ab38933-358e-4fb6-9796-2e37e2063a80','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'b0a5c4c8-aaef-4281-b4d7-2dce2682649f'),('5be97c0f-d725-40d9-85d9-d606d0980700','acr loa level','openid-connect','oidc-acr-mapper',NULL,'90343a88-d2b0-4ddd-86b0-9c579ef91e94'),('5cfb618e-7e26-4f06-b14d-7becc1910be0','role list','saml','saml-role-list-mapper',NULL,'ed0e40a7-1857-4290-abea-5b880cf8b330'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('5f2cf77c-1412-4683-b514-d9ddc219baa7','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'0baaae03-bfe0-4148-bc23-4ad0f3d80635'),('66842b54-e829-4e7f-865c-2737ab8db174','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('67293f62-a307-4124-9e5f-ec7e513dc714','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('68feae1f-919a-4201-8c39-e6047b67ad07','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'77829d29-fedd-432c-acc8-97ce6929a235'),('6990e800-07e9-46aa-af04-7c090083b0a0','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('6b72487a-ed85-4175-a210-97d35de892d5','audience resolve','openid-connect','oidc-audience-resolve-mapper','3f908ff7-2e94-4039-9ae0-86aaabf71328',NULL),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('6d3007e0-17ce-493e-8645-57ace78541fc','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('6d8b4aa6-e29d-407f-a92c-bec6d4eee9a4','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'a0344685-3ee2-4615-8e41-2ecbc175ce1d'),('6ebd14b0-3a58-4975-8327-253ac774d76e','role list','saml','saml-role-list-mapper',NULL,'2da90022-c8c9-4a29-b12b-3d3c53890415'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'6511f452-404a-42ff-b80b-1609a3071a2f'),('71c27346-f0ab-454d-a273-0ddd7be910c1','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','75799957-807f-4039-915e-f274934b3f50',NULL),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'99ab913f-21c5-424a-ad97-3b37a3a33e4f'),('7412060e-fe95-40c4-badb-a076768a2952','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'0b99a66e-5c55-43f1-92f2-f5f4b702e9f2'),('74768f05-8609-437a-89fc-46b97a9be618','address','openid-connect','oidc-address-mapper',NULL,'f15a0d16-2882-4b13-b3a4-0d97cf581402'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('753b56f5-78fe-4c87-9471-342d86f94816','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'673cb4c8-23d5-454c-baf0-b7c16e5c0be4'),('77275f8a-ae6d-457f-9181-ef0cba74d623','locale','openid-connect','oidc-usermodel-attribute-mapper','5f239fef-3cf1-4583-85e3-904920ced19b',NULL),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','e0462c55-5a6f-4483-a3e0-f29f62c49372',NULL),('77f32e25-03bc-4357-ba93-6259ea541d0b','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('78d1237e-40bf-4e10-8e79-2863de39919d','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('7933e17c-49e3-4332-90f1-c9bccf3827bd','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','48aa244c-1748-48f0-b78d-628e5aa21076',NULL),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'0b99a66e-5c55-43f1-92f2-f5f4b702e9f2'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','address','openid-connect','oidc-address-mapper',NULL,'8ffe7b02-43f3-4fa1-8855-90c875498ea3'),('7c6f6416-0ee0-4b13-8964-9478076a3325','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('81fa0ee2-86df-49ed-92da-4450115b2fda','full name','openid-connect','oidc-full-name-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('8599b65a-e063-403f-b4ce-e4156517f24c','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('892cd903-7557-4fcc-9e12-65cef5bba849','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'323fbaa1-c399-4104-a5a7-e54d12a7dbdb'),('892e9589-5987-44af-8dbc-508a8f48b8ed','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('92098398-aee1-4466-b8fc-fccaf38619b9','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a0344685-3ee2-4615-8e41-2ecbc175ce1d'),('93a0663f-ad63-4686-bef4-31c87cc45218','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'71f0460a-c62c-487d-b4bc-fc8e5b251875'),('93d90975-66db-4f95-bbec-b2938a3dd466','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'30725276-fb09-4156-9798-2e7c61f7e716'),('949941c2-1d29-4682-95cd-2cfc747034e6','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'33d22077-670d-45df-b02a-ce07348bffe1'),('9c2b803a-9041-45c4-a7f0-3d152bd29dc5','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c139e392-3e2d-4018-b891-5e39cd4fa0be'),('9cc1afd1-4947-4402-bada-dad3e423cc76','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','locale','openid-connect','oidc-usermodel-attribute-mapper','d3b91fcf-5c12-4d48-80de-4063a307d7dc',NULL),('9dba5353-749c-4d47-bf1b-57e770c29e46','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'82d4a4e1-4b4a-4f93-a7b5-899c13458029'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','address','openid-connect','oidc-address-mapper',NULL,'b658a21c-e30b-4466-b69a-6d66f6653096'),('a0139587-4091-4cb0-84ad-64aae07caaca','full name','openid-connect','oidc-full-name-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('a02b5226-5edc-4801-a9eb-18bf17f4d3fe','acr loa level','openid-connect','oidc-acr-mapper',NULL,'a8cf93aa-c8a3-4f03-be5b-37393ac0b596'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b0a5c4c8-aaef-4281-b4d7-2dce2682649f'),('a49a4885-df00-4c2e-b715-612e769c6b8a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('a604f966-4ede-4911-b7a8-876593b752b4','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('a661d63d-44f8-40a3-8326-19614c73a0e4','audience resolve','openid-connect','oidc-audience-resolve-mapper','acd18a4f-f89a-4ffb-941b-7d4bd8033261',NULL),('a6956724-591a-4585-a312-5ae8b62b0ca0','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('a94f44a7-7f35-4dd1-9007-e06e7eef193b','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'0be19014-1c0d-4152-b37b-c808886cdb6a'),('a9d6f94b-939a-4926-918e-e683e05c4d58','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'6511f452-404a-42ff-b80b-1609a3071a2f'),('aaa8e825-1797-493d-9734-8c9f69191254','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0b99a66e-5c55-43f1-92f2-f5f4b702e9f2'),('abd7f086-dde7-43c0-833e-daa94d47d4da','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'323fbaa1-c399-4104-a5a7-e54d12a7dbdb'),('ac2146df-f47d-4139-9b4a-af3e84e63d0b','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'72602d07-9227-45cc-ad33-184c3b5d6842'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('add10127-24f4-4e33-a181-96bc6a3331fb','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','04787d7f-e0b5-4795-85b0-5eec4a7b36b4',NULL),('ae8aa5f4-0599-42b2-a279-66a35261b90b','locale','openid-connect','oidc-usermodel-attribute-mapper','c6babb0a-496d-4e92-85c6-611beae756a7',NULL),('affaf70b-233b-462c-8ece-7ab0a56df2c3','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('b018bb65-07a3-41bc-8c38-238e08a74097','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'53fdf9ba-8810-41f4-a6ce-798b6ccffe82'),('b23bd153-ed5a-424a-a04e-034eb4df5341','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'0be19014-1c0d-4152-b37b-c808886cdb6a'),('b2b5b2f6-d4a4-4b3a-aec5-053e2d95cb6c','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'bdeb9b62-44a6-4246-9d40-fd6d93961580'),('b4c6298f-a22f-4a3a-a74b-2d3270431251','full name','openid-connect','oidc-full-name-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('b50ab329-e324-497f-bade-2f3869154ef2','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('b69c694b-9eb7-4533-a11e-3fd08eba1d56','role list','saml','saml-role-list-mapper',NULL,'ff95bdda-b020-4379-9e71-6985bf18c2eb'),('b6f26f98-506f-417e-9a43-841815bc22b0','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','locale','openid-connect','oidc-usermodel-attribute-mapper','ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef',NULL),('b9929c2e-28ee-4c21-812d-ef30857cd23e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','e0462c55-5a6f-4483-a3e0-f29f62c49372',NULL),('bb6a427c-655e-48a2-a945-67a28b8f3197','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'77829d29-fedd-432c-acc8-97ce6929a235'),('bc8378c2-84de-4111-84ec-9faaca590081','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','75799957-807f-4039-915e-f274934b3f50',NULL),('bc9312ed-2a47-4971-9693-778e24408ae4','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('bd3ed935-eb5e-4583-868d-bb360b28d819','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('be414481-5b60-47bf-b6b2-c23776dedec5','role list','saml','saml-role-list-mapper',NULL,'804d9042-2fbe-42be-adb1-0f40db9b2cdb'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','87a260f4-ece5-4eea-94de-ba31720af864',NULL),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'a0344685-3ee2-4615-8e41-2ecbc175ce1d'),('c1442040-ce6c-406a-a8ea-b87ade99bf77','full name','openid-connect','oidc-full-name-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('c43ea434-b9f9-48c0-b712-4f0090b31124','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('c6434ac1-1381-49c0-932d-a5e39c113372','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('c659ddad-966a-4480-a04d-223f10a41b3f','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'aa23872e-f763-4c18-a29c-3e1212b0f8cb'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('c9717deb-ea64-474d-a101-72ebbce40472','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('cd32ed21-fcb3-4453-8868-7207910329d3','acr loa level','openid-connect','oidc-acr-mapper',NULL,'20755911-e07f-4675-ba9d-22857f0dadba'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'bfb2a3ba-0b3a-447b-ad73-49baa1254abd'),('d302c9eb-f316-453f-b598-96ac6729bea3','acr loa level','openid-connect','oidc-acr-mapper',NULL,'db1118d3-c8ff-426d-8125-ac28a3d4b7e7'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'485647c0-dd59-4165-9bcd-70f4f528e535'),('d564886c-324f-42e4-9089-6854e60f13a2','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c874efb6-2c51-4346-ae9a-db573bd14a78'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'33d22077-670d-45df-b02a-ce07348bffe1'),('d93148b7-dfc3-450a-9f0d-48b1146c1c57','full name','openid-connect','oidc-full-name-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('d9fb681e-6eba-43b4-b785-42ce9dca2b6f','audience resolve','openid-connect','oidc-audience-resolve-mapper','03dd2c35-cefc-4eca-8ac6-4d575758ba33',NULL),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9b7c4bc2-ca16-4013-9009-a0b11e3ca335'),('dc79d678-f405-45c9-af53-42e6c2853f0e','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',NULL),('dd3eea53-3a48-4113-91bf-bb24663a04b1','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('de264414-2763-4d98-a27b-c06b45c09192','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('df12cc21-7860-4028-801a-c21819c24778','address','openid-connect','oidc-address-mapper',NULL,'9227aa9e-4d64-4182-b56b-2daace9c0c62'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'e1acb0b8-445e-4689-a20e-e8cb12bebb50'),('e0238ecb-2b19-41b7-a10e-01cc5ff51a5e','audience resolve','openid-connect','oidc-audience-resolve-mapper','dad4e868-b37f-487c-a2ce-4167b11eee94',NULL),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('e51727c2-110e-40df-9a79-af253a5ebfdc','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'305f90dc-c040-4876-be8d-927e6480871c'),('e593431d-4207-4672-b159-d04eff4a95c8','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'aa23872e-f763-4c18-a29c-3e1212b0f8cb'),('e9277ff2-9bdc-465b-bcbd-38679041332e','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'0b94892e-9e58-47b2-8447-f213bc03f6e4'),('ec2afa8e-1efe-454e-9615-81f4df80d251','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'154c6e3c-583a-436a-bea3-868ad9529231'),('ef43de4d-29d3-4441-934d-7306edc811f1','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'57f7535d-04f4-406d-bfc4-b7c07338e7c2'),('ef484d55-5c98-4fdc-9c81-3c39da4fdee1','acr loa level','openid-connect','oidc-acr-mapper',NULL,'da627770-e761-427c-9aa4-be4a9dc4dd03'),('f10122bb-1859-46d1-9f14-b567bf9917d2','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'e1acb0b8-445e-4689-a20e-e8cb12bebb50'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('f601800f-d854-4db3-8b6e-ef19374626d7','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'30725276-fb09-4156-9798-2e7c61f7e716'),('f9955e5d-a86d-4ee2-ab05-31d025282987','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'b778a33b-f425-484d-9af8-37cc97260c97'),('fa2cd792-8c61-42fa-a479-79af36aa7103','audience resolve','openid-connect','oidc-audience-resolve-mapper','53a487d5-3473-4eac-9726-7cb05343825f',NULL),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2d9f35af-d7ae-4006-9cec-342aab5e52b6'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9267389c-23df-48f9-a249-6af9f4299a93'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3e871eb6-f47d-44c7-aa49-a26c36e95e14'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','address','openid-connect','oidc-address-mapper',NULL,'f594cb59-0851-4d36-b086-b94cd84d5bb8');
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
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('00dd82df-af59-419e-ac7e-850572f524f3','true','access.token.claim'),('00dd82df-af59-419e-ac7e-850572f524f3','email_verified','claim.name'),('00dd82df-af59-419e-ac7e-850572f524f3','true','id.token.claim'),('00dd82df-af59-419e-ac7e-850572f524f3','true','introspection.token.claim'),('00dd82df-af59-419e-ac7e-850572f524f3','boolean','jsonType.label'),('00dd82df-af59-419e-ac7e-850572f524f3','emailVerified','user.attribute'),('00dd82df-af59-419e-ac7e-850572f524f3','true','userinfo.token.claim'),('021b81de-ca25-481c-8b95-ce2170e2c02b','true','access.token.claim'),('021b81de-ca25-481c-8b95-ce2170e2c02b','profile','claim.name'),('021b81de-ca25-481c-8b95-ce2170e2c02b','true','id.token.claim'),('021b81de-ca25-481c-8b95-ce2170e2c02b','true','introspection.token.claim'),('021b81de-ca25-481c-8b95-ce2170e2c02b','String','jsonType.label'),('021b81de-ca25-481c-8b95-ce2170e2c02b','profile','user.attribute'),('021b81de-ca25-481c-8b95-ce2170e2c02b','true','userinfo.token.claim'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','true','access.token.claim'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','preferred_username','claim.name'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','true','id.token.claim'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','true','introspection.token.claim'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','String','jsonType.label'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','username','user.attribute'),('06c9c34a-3083-4f0c-8a46-1b9381a4c9ff','true','userinfo.token.claim'),('097fee83-a940-473b-b5cb-7d11d49ca177','true','access.token.claim'),('097fee83-a940-473b-b5cb-7d11d49ca177','website','claim.name'),('097fee83-a940-473b-b5cb-7d11d49ca177','true','id.token.claim'),('097fee83-a940-473b-b5cb-7d11d49ca177','true','introspection.token.claim'),('097fee83-a940-473b-b5cb-7d11d49ca177','String','jsonType.label'),('097fee83-a940-473b-b5cb-7d11d49ca177','website','user.attribute'),('097fee83-a940-473b-b5cb-7d11d49ca177','true','userinfo.token.claim'),('0a80b928-52ea-4193-a713-53cf5e5eac65','true','access.token.claim'),('0a80b928-52ea-4193-a713-53cf5e5eac65','upn','claim.name'),('0a80b928-52ea-4193-a713-53cf5e5eac65','true','id.token.claim'),('0a80b928-52ea-4193-a713-53cf5e5eac65','true','introspection.token.claim'),('0a80b928-52ea-4193-a713-53cf5e5eac65','String','jsonType.label'),('0a80b928-52ea-4193-a713-53cf5e5eac65','username','user.attribute'),('0a80b928-52ea-4193-a713-53cf5e5eac65','true','userinfo.token.claim'),('0ca8fbf9-20e8-42f3-af31-a72032d16ef5','true','access.token.claim'),('0ca8fbf9-20e8-42f3-af31-a72032d16ef5','true','introspection.token.claim'),('0e33954f-7c22-4223-a302-cd313d339b6f','true','access.token.claim'),('0e33954f-7c22-4223-a302-cd313d339b6f','picture','claim.name'),('0e33954f-7c22-4223-a302-cd313d339b6f','true','id.token.claim'),('0e33954f-7c22-4223-a302-cd313d339b6f','true','introspection.token.claim'),('0e33954f-7c22-4223-a302-cd313d339b6f','String','jsonType.label'),('0e33954f-7c22-4223-a302-cd313d339b6f','picture','user.attribute'),('0e33954f-7c22-4223-a302-cd313d339b6f','true','userinfo.token.claim'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','true','access.token.claim'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','clientHost','claim.name'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','true','id.token.claim'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','String','jsonType.label'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','clientHost','user.session.note'),('1059f803-b29e-4c9e-b864-6e4a3a7ea560','true','userinfo.token.claim'),('11e55472-2e01-4cc4-ae96-abf62c41751d','true','access.token.claim'),('11e55472-2e01-4cc4-ae96-abf62c41751d','locale','claim.name'),('11e55472-2e01-4cc4-ae96-abf62c41751d','true','id.token.claim'),('11e55472-2e01-4cc4-ae96-abf62c41751d','true','introspection.token.claim'),('11e55472-2e01-4cc4-ae96-abf62c41751d','String','jsonType.label'),('11e55472-2e01-4cc4-ae96-abf62c41751d','locale','user.attribute'),('11e55472-2e01-4cc4-ae96-abf62c41751d','true','userinfo.token.claim'),('14a6208d-283c-4600-89ec-2bfe785c5638','true','access.token.claim'),('14a6208d-283c-4600-89ec-2bfe785c5638','clientHost','claim.name'),('14a6208d-283c-4600-89ec-2bfe785c5638','true','id.token.claim'),('14a6208d-283c-4600-89ec-2bfe785c5638','String','jsonType.label'),('14a6208d-283c-4600-89ec-2bfe785c5638','clientHost','user.session.note'),('14a6208d-283c-4600-89ec-2bfe785c5638','true','userinfo.token.claim'),('14fa6ff0-eff3-4afa-9b2a-077945697390','true','access.token.claim'),('14fa6ff0-eff3-4afa-9b2a-077945697390','given_name','claim.name'),('14fa6ff0-eff3-4afa-9b2a-077945697390','true','id.token.claim'),('14fa6ff0-eff3-4afa-9b2a-077945697390','true','introspection.token.claim'),('14fa6ff0-eff3-4afa-9b2a-077945697390','String','jsonType.label'),('14fa6ff0-eff3-4afa-9b2a-077945697390','firstName','user.attribute'),('14fa6ff0-eff3-4afa-9b2a-077945697390','true','userinfo.token.claim'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','true','access.token.claim'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','nickname','claim.name'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','true','id.token.claim'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','true','introspection.token.claim'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','String','jsonType.label'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','nickname','user.attribute'),('16746cbb-04d4-4784-8a10-105c67e1c3dc','true','userinfo.token.claim'),('17ac078c-8bf4-43ab-b10c-078153196ec5','true','access.token.claim'),('17ac078c-8bf4-43ab-b10c-078153196ec5','phone_number','claim.name'),('17ac078c-8bf4-43ab-b10c-078153196ec5','true','id.token.claim'),('17ac078c-8bf4-43ab-b10c-078153196ec5','true','introspection.token.claim'),('17ac078c-8bf4-43ab-b10c-078153196ec5','String','jsonType.label'),('17ac078c-8bf4-43ab-b10c-078153196ec5','phoneNumber','user.attribute'),('17ac078c-8bf4-43ab-b10c-078153196ec5','true','userinfo.token.claim'),('197306a4-f418-42be-af01-b314a8266802','true','access.token.claim'),('197306a4-f418-42be-af01-b314a8266802','email_verified','claim.name'),('197306a4-f418-42be-af01-b314a8266802','true','id.token.claim'),('197306a4-f418-42be-af01-b314a8266802','true','introspection.token.claim'),('197306a4-f418-42be-af01-b314a8266802','boolean','jsonType.label'),('197306a4-f418-42be-af01-b314a8266802','emailVerified','user.attribute'),('197306a4-f418-42be-af01-b314a8266802','true','userinfo.token.claim'),('1999f7e2-bf95-40aa-80f9-5d94806f0329','Role','attribute.name'),('1999f7e2-bf95-40aa-80f9-5d94806f0329','Basic','attribute.nameformat'),('1999f7e2-bf95-40aa-80f9-5d94806f0329','false','single'),('1a021b46-c836-4712-b944-cc48838ad81a','true','access.token.claim'),('1a021b46-c836-4712-b944-cc48838ad81a','clientHost','claim.name'),('1a021b46-c836-4712-b944-cc48838ad81a','true','id.token.claim'),('1a021b46-c836-4712-b944-cc48838ad81a','String','jsonType.label'),('1a021b46-c836-4712-b944-cc48838ad81a','clientHost','user.session.note'),('1a021b46-c836-4712-b944-cc48838ad81a','true','userinfo.token.claim'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','true','access.token.claim'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','upn','claim.name'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','true','id.token.claim'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','true','introspection.token.claim'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','String','jsonType.label'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','username','user.attribute'),('1bf5d1b6-7970-49b2-aad7-d749fc2ec689','true','userinfo.token.claim'),('1e100553-2a6b-400a-889a-211a72198d2e','true','access.token.claim'),('1e100553-2a6b-400a-889a-211a72198d2e','middle_name','claim.name'),('1e100553-2a6b-400a-889a-211a72198d2e','true','id.token.claim'),('1e100553-2a6b-400a-889a-211a72198d2e','true','introspection.token.claim'),('1e100553-2a6b-400a-889a-211a72198d2e','String','jsonType.label'),('1e100553-2a6b-400a-889a-211a72198d2e','middleName','user.attribute'),('1e100553-2a6b-400a-889a-211a72198d2e','true','userinfo.token.claim'),('209a265d-b100-4c71-8b56-9fe16d46a577','true','access.token.claim'),('209a265d-b100-4c71-8b56-9fe16d46a577','resource_access.${client_id}.roles','claim.name'),('209a265d-b100-4c71-8b56-9fe16d46a577','true','introspection.token.claim'),('209a265d-b100-4c71-8b56-9fe16d46a577','String','jsonType.label'),('209a265d-b100-4c71-8b56-9fe16d46a577','true','multivalued'),('209a265d-b100-4c71-8b56-9fe16d46a577','foo','user.attribute'),('20f6be40-0974-46ae-9305-a1423fa1055b','Role','attribute.name'),('20f6be40-0974-46ae-9305-a1423fa1055b','Basic','attribute.nameformat'),('20f6be40-0974-46ae-9305-a1423fa1055b','false','single'),('22cec09e-f43c-47d0-9d3d-312b7cc8ff45','true','access.token.claim'),('22cec09e-f43c-47d0-9d3d-312b7cc8ff45','true','id.token.claim'),('22cec09e-f43c-47d0-9d3d-312b7cc8ff45','true','introspection.token.claim'),('2371728e-4549-466a-866f-ef4bbc1f2893','true','access.token.claim'),('2371728e-4549-466a-866f-ef4bbc1f2893','family_name','claim.name'),('2371728e-4549-466a-866f-ef4bbc1f2893','true','id.token.claim'),('2371728e-4549-466a-866f-ef4bbc1f2893','true','introspection.token.claim'),('2371728e-4549-466a-866f-ef4bbc1f2893','String','jsonType.label'),('2371728e-4549-466a-866f-ef4bbc1f2893','lastName','user.attribute'),('2371728e-4549-466a-866f-ef4bbc1f2893','true','userinfo.token.claim'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','true','access.token.claim'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','zoneinfo','claim.name'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','true','id.token.claim'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','true','introspection.token.claim'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','String','jsonType.label'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','zoneinfo','user.attribute'),('2455d25e-40aa-4e9d-81c3-383c8e6f1bae','true','userinfo.token.claim'),('25e010db-726c-4509-9f26-f475737bd511','true','access.token.claim'),('25e010db-726c-4509-9f26-f475737bd511','website','claim.name'),('25e010db-726c-4509-9f26-f475737bd511','true','id.token.claim'),('25e010db-726c-4509-9f26-f475737bd511','true','introspection.token.claim'),('25e010db-726c-4509-9f26-f475737bd511','String','jsonType.label'),('25e010db-726c-4509-9f26-f475737bd511','website','user.attribute'),('25e010db-726c-4509-9f26-f475737bd511','true','userinfo.token.claim'),('27ed8462-cab8-4354-9898-376c31a9d3ad','true','access.token.claim'),('27ed8462-cab8-4354-9898-376c31a9d3ad','family_name','claim.name'),('27ed8462-cab8-4354-9898-376c31a9d3ad','true','id.token.claim'),('27ed8462-cab8-4354-9898-376c31a9d3ad','true','introspection.token.claim'),('27ed8462-cab8-4354-9898-376c31a9d3ad','String','jsonType.label'),('27ed8462-cab8-4354-9898-376c31a9d3ad','lastName','user.attribute'),('27ed8462-cab8-4354-9898-376c31a9d3ad','true','userinfo.token.claim'),('29241eb5-97ab-4133-bf34-fb964d889002','true','access.token.claim'),('29241eb5-97ab-4133-bf34-fb964d889002','clientAddress','claim.name'),('29241eb5-97ab-4133-bf34-fb964d889002','true','id.token.claim'),('29241eb5-97ab-4133-bf34-fb964d889002','String','jsonType.label'),('29241eb5-97ab-4133-bf34-fb964d889002','clientAddress','user.session.note'),('29241eb5-97ab-4133-bf34-fb964d889002','true','userinfo.token.claim'),('29326904-f451-4bca-a95c-adafb768961b','true','access.token.claim'),('29326904-f451-4bca-a95c-adafb768961b','true','introspection.token.claim'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','true','access.token.claim'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','clientId','claim.name'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','true','id.token.claim'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','String','jsonType.label'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','clientId','user.session.note'),('29ea84e7-4c67-46ab-83ff-43dca28c7420','true','userinfo.token.claim'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','true','access.token.claim'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','phone_number_verified','claim.name'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','true','id.token.claim'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','true','introspection.token.claim'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','boolean','jsonType.label'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','phoneNumberVerified','user.attribute'),('2a19a6cf-26a1-46b9-8efc-a85da3cb1658','true','userinfo.token.claim'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','true','access.token.claim'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','profile','claim.name'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','true','id.token.claim'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','true','introspection.token.claim'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','String','jsonType.label'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','profile','user.attribute'),('2ae4844d-26ea-4ac1-a0e6-25e3d5aa8979','true','userinfo.token.claim'),('2c2b420c-218a-401a-85e4-0fa968888c91','true','access.token.claim'),('2c2b420c-218a-401a-85e4-0fa968888c91','locale','claim.name'),('2c2b420c-218a-401a-85e4-0fa968888c91','true','id.token.claim'),('2c2b420c-218a-401a-85e4-0fa968888c91','true','introspection.token.claim'),('2c2b420c-218a-401a-85e4-0fa968888c91','String','jsonType.label'),('2c2b420c-218a-401a-85e4-0fa968888c91','locale','user.attribute'),('2c2b420c-218a-401a-85e4-0fa968888c91','true','userinfo.token.claim'),('2c64586b-ddb0-42c0-8812-b015329a3a29','true','access.token.claim'),('2c64586b-ddb0-42c0-8812-b015329a3a29','upn','claim.name'),('2c64586b-ddb0-42c0-8812-b015329a3a29','true','id.token.claim'),('2c64586b-ddb0-42c0-8812-b015329a3a29','true','introspection.token.claim'),('2c64586b-ddb0-42c0-8812-b015329a3a29','String','jsonType.label'),('2c64586b-ddb0-42c0-8812-b015329a3a29','username','user.attribute'),('2c64586b-ddb0-42c0-8812-b015329a3a29','true','userinfo.token.claim'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','true','access.token.claim'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','locale','claim.name'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','true','id.token.claim'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','true','introspection.token.claim'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','String','jsonType.label'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','locale','user.attribute'),('2df4335f-7b4b-4637-bb92-28b8e93841b3','true','userinfo.token.claim'),('2f23a579-54bb-4eec-ac93-527f0c90287d','true','access.token.claim'),('2f23a579-54bb-4eec-ac93-527f0c90287d','locale','claim.name'),('2f23a579-54bb-4eec-ac93-527f0c90287d','true','id.token.claim'),('2f23a579-54bb-4eec-ac93-527f0c90287d','true','introspection.token.claim'),('2f23a579-54bb-4eec-ac93-527f0c90287d','String','jsonType.label'),('2f23a579-54bb-4eec-ac93-527f0c90287d','locale','user.attribute'),('2f23a579-54bb-4eec-ac93-527f0c90287d','true','userinfo.token.claim'),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','true','access.token.claim'),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','resource_access.${client_id}.roles','claim.name'),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','true','introspection.token.claim'),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','String','jsonType.label'),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','true','multivalued'),('32ff4209-5eb4-48cf-9ad9-5b9c136bfe26','foo','user.attribute'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','true','access.token.claim'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','groups','claim.name'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','true','id.token.claim'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','true','introspection.token.claim'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','String','jsonType.label'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','true','multivalued'),('3604cfc4-a1e8-4d15-984c-36c435a6b9b9','foo','user.attribute'),('37dd1508-f879-454b-a044-6d0c10f4b6c6','true','access.token.claim'),('37dd1508-f879-454b-a044-6d0c10f4b6c6','resource_access.${client_id}.roles','claim.name'),('37dd1508-f879-454b-a044-6d0c10f4b6c6','true','introspection.token.claim'),('37dd1508-f879-454b-a044-6d0c10f4b6c6','String','jsonType.label'),('37dd1508-f879-454b-a044-6d0c10f4b6c6','true','multivalued'),('37dd1508-f879-454b-a044-6d0c10f4b6c6','foo','user.attribute'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','true','access.token.claim'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','phone_number','claim.name'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','true','id.token.claim'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','true','introspection.token.claim'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','String','jsonType.label'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','phoneNumber','user.attribute'),('3803d601-e9a0-4382-8dd4-aea2e5c0bc0a','true','userinfo.token.claim'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','true','access.token.claim'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','nickname','claim.name'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','true','id.token.claim'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','true','introspection.token.claim'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','String','jsonType.label'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','nickname','user.attribute'),('3d2ffa5c-d9a0-4909-9d09-d4cd5ffbd935','true','userinfo.token.claim'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','true','access.token.claim'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','phone_number','claim.name'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','true','id.token.claim'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','true','introspection.token.claim'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','String','jsonType.label'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','phoneNumber','user.attribute'),('3dbcf0a8-25f4-4fa6-b525-cc14c5d6ecae','true','userinfo.token.claim'),('3e214a36-c767-41ac-8ddd-d479633d091d','true','access.token.claim'),('3e214a36-c767-41ac-8ddd-d479633d091d','updated_at','claim.name'),('3e214a36-c767-41ac-8ddd-d479633d091d','true','id.token.claim'),('3e214a36-c767-41ac-8ddd-d479633d091d','true','introspection.token.claim'),('3e214a36-c767-41ac-8ddd-d479633d091d','long','jsonType.label'),('3e214a36-c767-41ac-8ddd-d479633d091d','updatedAt','user.attribute'),('3e214a36-c767-41ac-8ddd-d479633d091d','true','userinfo.token.claim'),('3e915823-fc9e-43d3-aefb-5b0b96858324','true','access.token.claim'),('3e915823-fc9e-43d3-aefb-5b0b96858324','gender','claim.name'),('3e915823-fc9e-43d3-aefb-5b0b96858324','true','id.token.claim'),('3e915823-fc9e-43d3-aefb-5b0b96858324','true','introspection.token.claim'),('3e915823-fc9e-43d3-aefb-5b0b96858324','String','jsonType.label'),('3e915823-fc9e-43d3-aefb-5b0b96858324','gender','user.attribute'),('3e915823-fc9e-43d3-aefb-5b0b96858324','true','userinfo.token.claim'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','true','access.token.claim'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','picture','claim.name'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','true','id.token.claim'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','true','introspection.token.claim'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','String','jsonType.label'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','picture','user.attribute'),('3f74d24d-306b-4360-8979-e7fdd63efcdf','true','userinfo.token.claim'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','true','access.token.claim'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','phone_number_verified','claim.name'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','true','id.token.claim'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','true','introspection.token.claim'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','boolean','jsonType.label'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','phoneNumberVerified','user.attribute'),('3fbdc48b-051a-4c42-ab45-ccaa635b70b1','true','userinfo.token.claim'),('40c2291b-6eda-4978-b723-9aec654d10de','true','access.token.claim'),('40c2291b-6eda-4978-b723-9aec654d10de','gender','claim.name'),('40c2291b-6eda-4978-b723-9aec654d10de','true','id.token.claim'),('40c2291b-6eda-4978-b723-9aec654d10de','true','introspection.token.claim'),('40c2291b-6eda-4978-b723-9aec654d10de','String','jsonType.label'),('40c2291b-6eda-4978-b723-9aec654d10de','gender','user.attribute'),('40c2291b-6eda-4978-b723-9aec654d10de','true','userinfo.token.claim'),('41421731-1342-4602-8374-b3e1bf7fdd70','true','access.token.claim'),('41421731-1342-4602-8374-b3e1bf7fdd70','updated_at','claim.name'),('41421731-1342-4602-8374-b3e1bf7fdd70','true','id.token.claim'),('41421731-1342-4602-8374-b3e1bf7fdd70','true','introspection.token.claim'),('41421731-1342-4602-8374-b3e1bf7fdd70','long','jsonType.label'),('41421731-1342-4602-8374-b3e1bf7fdd70','updatedAt','user.attribute'),('41421731-1342-4602-8374-b3e1bf7fdd70','true','userinfo.token.claim'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','true','access.token.claim'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','middle_name','claim.name'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','true','id.token.claim'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','true','introspection.token.claim'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','String','jsonType.label'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','middleName','user.attribute'),('4205ff67-5403-4ddd-9324-36e4b9d0a50a','true','userinfo.token.claim'),('45621866-ec3a-4dc2-b637-1166eebe406a','true','access.token.claim'),('45621866-ec3a-4dc2-b637-1166eebe406a','preferred_username','claim.name'),('45621866-ec3a-4dc2-b637-1166eebe406a','true','id.token.claim'),('45621866-ec3a-4dc2-b637-1166eebe406a','true','introspection.token.claim'),('45621866-ec3a-4dc2-b637-1166eebe406a','String','jsonType.label'),('45621866-ec3a-4dc2-b637-1166eebe406a','username','user.attribute'),('45621866-ec3a-4dc2-b637-1166eebe406a','true','userinfo.token.claim'),('47c27410-f8a3-43b4-9ba7-308b650088c9','true','access.token.claim'),('47c27410-f8a3-43b4-9ba7-308b650088c9','true','introspection.token.claim'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','true','access.token.claim'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','clientAddress','claim.name'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','true','id.token.claim'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','String','jsonType.label'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','clientAddress','user.session.note'),('4b24df68-4977-43c0-85ec-42cf5dcc5172','true','userinfo.token.claim'),('4b49a009-cd63-496d-943f-a2969964a775','true','access.token.claim'),('4b49a009-cd63-496d-943f-a2969964a775','profile','claim.name'),('4b49a009-cd63-496d-943f-a2969964a775','true','id.token.claim'),('4b49a009-cd63-496d-943f-a2969964a775','true','introspection.token.claim'),('4b49a009-cd63-496d-943f-a2969964a775','String','jsonType.label'),('4b49a009-cd63-496d-943f-a2969964a775','profile','user.attribute'),('4b49a009-cd63-496d-943f-a2969964a775','true','userinfo.token.claim'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','true','access.token.claim'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','phone_number','claim.name'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','true','id.token.claim'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','true','introspection.token.claim'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','String','jsonType.label'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','phoneNumber','user.attribute'),('4b78b5b6-e5b3-4939-95f4-9bd249919666','true','userinfo.token.claim'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','true','access.token.claim'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','family_name','claim.name'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','true','id.token.claim'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','true','introspection.token.claim'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','String','jsonType.label'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','lastName','user.attribute'),('4c42192f-2735-48b7-97f1-2dfd23e01d0b','true','userinfo.token.claim'),('4c92788e-aa83-47d8-945f-9677c3a392e4','true','access.token.claim'),('4c92788e-aa83-47d8-945f-9677c3a392e4','updated_at','claim.name'),('4c92788e-aa83-47d8-945f-9677c3a392e4','true','id.token.claim'),('4c92788e-aa83-47d8-945f-9677c3a392e4','true','introspection.token.claim'),('4c92788e-aa83-47d8-945f-9677c3a392e4','long','jsonType.label'),('4c92788e-aa83-47d8-945f-9677c3a392e4','updatedAt','user.attribute'),('4c92788e-aa83-47d8-945f-9677c3a392e4','true','userinfo.token.claim'),('4d4dfbed-85b9-4425-abe1-7448934f8c32','true','access.token.claim'),('4d4dfbed-85b9-4425-abe1-7448934f8c32','true','id.token.claim'),('4d4dfbed-85b9-4425-abe1-7448934f8c32','true','introspection.token.claim'),('4d4dfbed-85b9-4425-abe1-7448934f8c32','true','userinfo.token.claim'),('4f85173f-cdfc-4618-b352-8c169f6f6031','true','access.token.claim'),('4f85173f-cdfc-4618-b352-8c169f6f6031','birthdate','claim.name'),('4f85173f-cdfc-4618-b352-8c169f6f6031','true','id.token.claim'),('4f85173f-cdfc-4618-b352-8c169f6f6031','true','introspection.token.claim'),('4f85173f-cdfc-4618-b352-8c169f6f6031','String','jsonType.label'),('4f85173f-cdfc-4618-b352-8c169f6f6031','birthdate','user.attribute'),('4f85173f-cdfc-4618-b352-8c169f6f6031','true','userinfo.token.claim'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','true','access.token.claim'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','nickname','claim.name'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','true','id.token.claim'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','true','introspection.token.claim'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','String','jsonType.label'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','nickname','user.attribute'),('54ac8fa0-5084-4362-906b-6b38261b1c4a','true','userinfo.token.claim'),('55be02f8-02a2-4892-9018-59e3b51b71f1','true','access.token.claim'),('55be02f8-02a2-4892-9018-59e3b51b71f1','email','claim.name'),('55be02f8-02a2-4892-9018-59e3b51b71f1','true','id.token.claim'),('55be02f8-02a2-4892-9018-59e3b51b71f1','true','introspection.token.claim'),('55be02f8-02a2-4892-9018-59e3b51b71f1','String','jsonType.label'),('55be02f8-02a2-4892-9018-59e3b51b71f1','email','user.attribute'),('55be02f8-02a2-4892-9018-59e3b51b71f1','true','userinfo.token.claim'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','true','access.token.claim'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','true','id.token.claim'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','true','introspection.token.claim'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','country','user.attribute.country'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','formatted','user.attribute.formatted'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','locality','user.attribute.locality'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','postal_code','user.attribute.postal_code'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','region','user.attribute.region'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','street','user.attribute.street'),('55c9a7c4-15c0-444f-a84e-b7d65a4cb39c','true','userinfo.token.claim'),('55e92131-a26f-4ca4-9812-c0364117ab26','true','access.token.claim'),('55e92131-a26f-4ca4-9812-c0364117ab26','clientHost','claim.name'),('55e92131-a26f-4ca4-9812-c0364117ab26','true','id.token.claim'),('55e92131-a26f-4ca4-9812-c0364117ab26','String','jsonType.label'),('55e92131-a26f-4ca4-9812-c0364117ab26','clientHost','user.session.note'),('55e92131-a26f-4ca4-9812-c0364117ab26','true','userinfo.token.claim'),('599d7906-ca47-4728-afb7-8f2ce118da58','true','access.token.claim'),('599d7906-ca47-4728-afb7-8f2ce118da58','upn','claim.name'),('599d7906-ca47-4728-afb7-8f2ce118da58','true','id.token.claim'),('599d7906-ca47-4728-afb7-8f2ce118da58','true','introspection.token.claim'),('599d7906-ca47-4728-afb7-8f2ce118da58','String','jsonType.label'),('599d7906-ca47-4728-afb7-8f2ce118da58','username','user.attribute'),('599d7906-ca47-4728-afb7-8f2ce118da58','true','userinfo.token.claim'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','true','access.token.claim'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','preferred_username','claim.name'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','true','id.token.claim'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','true','introspection.token.claim'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','String','jsonType.label'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','username','user.attribute'),('59a23aed-e58b-4a39-b614-35c8a33d12e8','true','userinfo.token.claim'),('5a5e55f9-3102-46d6-8542-5c1587435c39','true','access.token.claim'),('5a5e55f9-3102-46d6-8542-5c1587435c39','realm_access.roles','claim.name'),('5a5e55f9-3102-46d6-8542-5c1587435c39','true','introspection.token.claim'),('5a5e55f9-3102-46d6-8542-5c1587435c39','String','jsonType.label'),('5a5e55f9-3102-46d6-8542-5c1587435c39','true','multivalued'),('5a5e55f9-3102-46d6-8542-5c1587435c39','foo','user.attribute'),('5ab38933-358e-4fb6-9796-2e37e2063a80','true','access.token.claim'),('5ab38933-358e-4fb6-9796-2e37e2063a80','email_verified','claim.name'),('5ab38933-358e-4fb6-9796-2e37e2063a80','true','id.token.claim'),('5ab38933-358e-4fb6-9796-2e37e2063a80','true','introspection.token.claim'),('5ab38933-358e-4fb6-9796-2e37e2063a80','boolean','jsonType.label'),('5ab38933-358e-4fb6-9796-2e37e2063a80','emailVerified','user.attribute'),('5ab38933-358e-4fb6-9796-2e37e2063a80','true','userinfo.token.claim'),('5be97c0f-d725-40d9-85d9-d606d0980700','true','access.token.claim'),('5be97c0f-d725-40d9-85d9-d606d0980700','true','id.token.claim'),('5be97c0f-d725-40d9-85d9-d606d0980700','true','introspection.token.claim'),('5cfb618e-7e26-4f06-b14d-7becc1910be0','Role','attribute.name'),('5cfb618e-7e26-4f06-b14d-7becc1910be0','Basic','attribute.nameformat'),('5cfb618e-7e26-4f06-b14d-7becc1910be0','false','single'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','true','access.token.claim'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','birthdate','claim.name'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','true','id.token.claim'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','true','introspection.token.claim'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','String','jsonType.label'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','birthdate','user.attribute'),('5efef777-b8ce-48a0-b350-fb8f0b1d4217','true','userinfo.token.claim'),('5f2cf77c-1412-4683-b514-d9ddc219baa7','true','access.token.claim'),('5f2cf77c-1412-4683-b514-d9ddc219baa7','true','introspection.token.claim'),('66842b54-e829-4e7f-865c-2737ab8db174','true','access.token.claim'),('66842b54-e829-4e7f-865c-2737ab8db174','birthdate','claim.name'),('66842b54-e829-4e7f-865c-2737ab8db174','true','id.token.claim'),('66842b54-e829-4e7f-865c-2737ab8db174','true','introspection.token.claim'),('66842b54-e829-4e7f-865c-2737ab8db174','String','jsonType.label'),('66842b54-e829-4e7f-865c-2737ab8db174','birthdate','user.attribute'),('66842b54-e829-4e7f-865c-2737ab8db174','true','userinfo.token.claim'),('67293f62-a307-4124-9e5f-ec7e513dc714','true','access.token.claim'),('67293f62-a307-4124-9e5f-ec7e513dc714','website','claim.name'),('67293f62-a307-4124-9e5f-ec7e513dc714','true','id.token.claim'),('67293f62-a307-4124-9e5f-ec7e513dc714','true','introspection.token.claim'),('67293f62-a307-4124-9e5f-ec7e513dc714','String','jsonType.label'),('67293f62-a307-4124-9e5f-ec7e513dc714','website','user.attribute'),('67293f62-a307-4124-9e5f-ec7e513dc714','true','userinfo.token.claim'),('68feae1f-919a-4201-8c39-e6047b67ad07','true','access.token.claim'),('68feae1f-919a-4201-8c39-e6047b67ad07','phone_number','claim.name'),('68feae1f-919a-4201-8c39-e6047b67ad07','true','id.token.claim'),('68feae1f-919a-4201-8c39-e6047b67ad07','true','introspection.token.claim'),('68feae1f-919a-4201-8c39-e6047b67ad07','String','jsonType.label'),('68feae1f-919a-4201-8c39-e6047b67ad07','phoneNumber','user.attribute'),('68feae1f-919a-4201-8c39-e6047b67ad07','true','userinfo.token.claim'),('6990e800-07e9-46aa-af04-7c090083b0a0','true','access.token.claim'),('6990e800-07e9-46aa-af04-7c090083b0a0','preferred_username','claim.name'),('6990e800-07e9-46aa-af04-7c090083b0a0','true','id.token.claim'),('6990e800-07e9-46aa-af04-7c090083b0a0','true','introspection.token.claim'),('6990e800-07e9-46aa-af04-7c090083b0a0','String','jsonType.label'),('6990e800-07e9-46aa-af04-7c090083b0a0','username','user.attribute'),('6990e800-07e9-46aa-af04-7c090083b0a0','true','userinfo.token.claim'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','true','access.token.claim'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','nickname','claim.name'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','true','id.token.claim'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','true','introspection.token.claim'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','String','jsonType.label'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','nickname','user.attribute'),('6bf8bdf6-e802-4694-acde-05eb73bbd58f','true','userinfo.token.claim'),('6d3007e0-17ce-493e-8645-57ace78541fc','true','access.token.claim'),('6d3007e0-17ce-493e-8645-57ace78541fc','clientHost','claim.name'),('6d3007e0-17ce-493e-8645-57ace78541fc','true','id.token.claim'),('6d3007e0-17ce-493e-8645-57ace78541fc','String','jsonType.label'),('6d3007e0-17ce-493e-8645-57ace78541fc','clientHost','user.session.note'),('6d3007e0-17ce-493e-8645-57ace78541fc','true','userinfo.token.claim'),('6d8b4aa6-e29d-407f-a92c-bec6d4eee9a4','true','access.token.claim'),('6d8b4aa6-e29d-407f-a92c-bec6d4eee9a4','true','introspection.token.claim'),('6ebd14b0-3a58-4975-8327-253ac774d76e','Role','attribute.name'),('6ebd14b0-3a58-4975-8327-253ac774d76e','Basic','attribute.nameformat'),('6ebd14b0-3a58-4975-8327-253ac774d76e','false','single'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','true','access.token.claim'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','realm_access.roles','claim.name'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','true','introspection.token.claim'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','String','jsonType.label'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','true','multivalued'),('7115b950-5bf1-4b6c-9542-d2ab66e28050','foo','user.attribute'),('71c27346-f0ab-454d-a273-0ddd7be910c1','true','access.token.claim'),('71c27346-f0ab-454d-a273-0ddd7be910c1','clientHost','claim.name'),('71c27346-f0ab-454d-a273-0ddd7be910c1','true','id.token.claim'),('71c27346-f0ab-454d-a273-0ddd7be910c1','String','jsonType.label'),('71c27346-f0ab-454d-a273-0ddd7be910c1','clientHost','user.session.note'),('71c27346-f0ab-454d-a273-0ddd7be910c1','true','userinfo.token.claim'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','true','access.token.claim'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','groups','claim.name'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','true','id.token.claim'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','true','introspection.token.claim'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','String','jsonType.label'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','true','multivalued'),('73b368f9-1ffe-416e-b3c3-e871e2a3fcb1','foo','user.attribute'),('7412060e-fe95-40c4-badb-a076768a2952','true','access.token.claim'),('7412060e-fe95-40c4-badb-a076768a2952','true','introspection.token.claim'),('74768f05-8609-437a-89fc-46b97a9be618','true','access.token.claim'),('74768f05-8609-437a-89fc-46b97a9be618','true','id.token.claim'),('74768f05-8609-437a-89fc-46b97a9be618','true','introspection.token.claim'),('74768f05-8609-437a-89fc-46b97a9be618','country','user.attribute.country'),('74768f05-8609-437a-89fc-46b97a9be618','formatted','user.attribute.formatted'),('74768f05-8609-437a-89fc-46b97a9be618','locality','user.attribute.locality'),('74768f05-8609-437a-89fc-46b97a9be618','postal_code','user.attribute.postal_code'),('74768f05-8609-437a-89fc-46b97a9be618','region','user.attribute.region'),('74768f05-8609-437a-89fc-46b97a9be618','street','user.attribute.street'),('74768f05-8609-437a-89fc-46b97a9be618','true','userinfo.token.claim'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','true','access.token.claim'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','updated_at','claim.name'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','true','id.token.claim'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','true','introspection.token.claim'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','long','jsonType.label'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','updatedAt','user.attribute'),('74b7606f-6e5f-4283-9dfb-39a1ade5e16f','true','userinfo.token.claim'),('753b56f5-78fe-4c87-9471-342d86f94816','true','access.token.claim'),('753b56f5-78fe-4c87-9471-342d86f94816','groups','claim.name'),('753b56f5-78fe-4c87-9471-342d86f94816','true','id.token.claim'),('753b56f5-78fe-4c87-9471-342d86f94816','true','introspection.token.claim'),('753b56f5-78fe-4c87-9471-342d86f94816','String','jsonType.label'),('753b56f5-78fe-4c87-9471-342d86f94816','true','multivalued'),('753b56f5-78fe-4c87-9471-342d86f94816','foo','user.attribute'),('77275f8a-ae6d-457f-9181-ef0cba74d623','true','access.token.claim'),('77275f8a-ae6d-457f-9181-ef0cba74d623','locale','claim.name'),('77275f8a-ae6d-457f-9181-ef0cba74d623','true','id.token.claim'),('77275f8a-ae6d-457f-9181-ef0cba74d623','true','introspection.token.claim'),('77275f8a-ae6d-457f-9181-ef0cba74d623','String','jsonType.label'),('77275f8a-ae6d-457f-9181-ef0cba74d623','locale','user.attribute'),('77275f8a-ae6d-457f-9181-ef0cba74d623','true','userinfo.token.claim'),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','true','access.token.claim'),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','clientAddress','claim.name'),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','true','id.token.claim'),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','String','jsonType.label'),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','clientAddress','user.session.note'),('77e08da7-bfc0-44e0-a71f-cc4d8d49b524','true','userinfo.token.claim'),('77f32e25-03bc-4357-ba93-6259ea541d0b','true','access.token.claim'),('77f32e25-03bc-4357-ba93-6259ea541d0b','clientId','claim.name'),('77f32e25-03bc-4357-ba93-6259ea541d0b','true','id.token.claim'),('77f32e25-03bc-4357-ba93-6259ea541d0b','String','jsonType.label'),('77f32e25-03bc-4357-ba93-6259ea541d0b','clientId','user.session.note'),('77f32e25-03bc-4357-ba93-6259ea541d0b','true','userinfo.token.claim'),('78d1237e-40bf-4e10-8e79-2863de39919d','true','access.token.claim'),('78d1237e-40bf-4e10-8e79-2863de39919d','clientId','claim.name'),('78d1237e-40bf-4e10-8e79-2863de39919d','true','id.token.claim'),('78d1237e-40bf-4e10-8e79-2863de39919d','String','jsonType.label'),('78d1237e-40bf-4e10-8e79-2863de39919d','clientId','user.session.note'),('78d1237e-40bf-4e10-8e79-2863de39919d','true','userinfo.token.claim'),('7933e17c-49e3-4332-90f1-c9bccf3827bd','true','access.token.claim'),('7933e17c-49e3-4332-90f1-c9bccf3827bd','clientAddress','claim.name'),('7933e17c-49e3-4332-90f1-c9bccf3827bd','true','id.token.claim'),('7933e17c-49e3-4332-90f1-c9bccf3827bd','String','jsonType.label'),('7933e17c-49e3-4332-90f1-c9bccf3827bd','clientAddress','user.session.note'),('7933e17c-49e3-4332-90f1-c9bccf3827bd','true','userinfo.token.claim'),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','true','access.token.claim'),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','resource_access.${client_id}.roles','claim.name'),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','true','introspection.token.claim'),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','String','jsonType.label'),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','true','multivalued'),('7a8ea08d-bb10-409e-90e1-a9ad9020cdbc','foo','user.attribute'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','true','access.token.claim'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','true','id.token.claim'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','true','introspection.token.claim'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','country','user.attribute.country'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','formatted','user.attribute.formatted'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','locality','user.attribute.locality'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','postal_code','user.attribute.postal_code'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','region','user.attribute.region'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','street','user.attribute.street'),('7c138e37-0fb4-4640-8f70-d70f9560fdc9','true','userinfo.token.claim'),('7c6f6416-0ee0-4b13-8964-9478076a3325','true','access.token.claim'),('7c6f6416-0ee0-4b13-8964-9478076a3325','website','claim.name'),('7c6f6416-0ee0-4b13-8964-9478076a3325','true','id.token.claim'),('7c6f6416-0ee0-4b13-8964-9478076a3325','true','introspection.token.claim'),('7c6f6416-0ee0-4b13-8964-9478076a3325','String','jsonType.label'),('7c6f6416-0ee0-4b13-8964-9478076a3325','website','user.attribute'),('7c6f6416-0ee0-4b13-8964-9478076a3325','true','userinfo.token.claim'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','true','access.token.claim'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','birthdate','claim.name'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','true','id.token.claim'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','true','introspection.token.claim'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','String','jsonType.label'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','birthdate','user.attribute'),('7e345047-0361-4cf7-8b8c-f8cf2e3e4b04','true','userinfo.token.claim'),('81fa0ee2-86df-49ed-92da-4450115b2fda','true','access.token.claim'),('81fa0ee2-86df-49ed-92da-4450115b2fda','true','id.token.claim'),('81fa0ee2-86df-49ed-92da-4450115b2fda','true','introspection.token.claim'),('81fa0ee2-86df-49ed-92da-4450115b2fda','true','userinfo.token.claim'),('8599b65a-e063-403f-b4ce-e4156517f24c','true','access.token.claim'),('8599b65a-e063-403f-b4ce-e4156517f24c','nickname','claim.name'),('8599b65a-e063-403f-b4ce-e4156517f24c','true','id.token.claim'),('8599b65a-e063-403f-b4ce-e4156517f24c','true','introspection.token.claim'),('8599b65a-e063-403f-b4ce-e4156517f24c','String','jsonType.label'),('8599b65a-e063-403f-b4ce-e4156517f24c','nickname','user.attribute'),('8599b65a-e063-403f-b4ce-e4156517f24c','true','userinfo.token.claim'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','true','access.token.claim'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','given_name','claim.name'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','true','id.token.claim'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','true','introspection.token.claim'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','String','jsonType.label'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','firstName','user.attribute'),('878d8ee2-f46c-4c72-b147-d7d1b6fdf307','true','userinfo.token.claim'),('892cd903-7557-4fcc-9e12-65cef5bba849','true','access.token.claim'),('892cd903-7557-4fcc-9e12-65cef5bba849','email','claim.name'),('892cd903-7557-4fcc-9e12-65cef5bba849','true','id.token.claim'),('892cd903-7557-4fcc-9e12-65cef5bba849','true','introspection.token.claim'),('892cd903-7557-4fcc-9e12-65cef5bba849','String','jsonType.label'),('892cd903-7557-4fcc-9e12-65cef5bba849','email','user.attribute'),('892cd903-7557-4fcc-9e12-65cef5bba849','true','userinfo.token.claim'),('892e9589-5987-44af-8dbc-508a8f48b8ed','true','access.token.claim'),('892e9589-5987-44af-8dbc-508a8f48b8ed','zoneinfo','claim.name'),('892e9589-5987-44af-8dbc-508a8f48b8ed','true','id.token.claim'),('892e9589-5987-44af-8dbc-508a8f48b8ed','true','introspection.token.claim'),('892e9589-5987-44af-8dbc-508a8f48b8ed','String','jsonType.label'),('892e9589-5987-44af-8dbc-508a8f48b8ed','zoneinfo','user.attribute'),('892e9589-5987-44af-8dbc-508a8f48b8ed','true','userinfo.token.claim'),('92098398-aee1-4466-b8fc-fccaf38619b9','true','access.token.claim'),('92098398-aee1-4466-b8fc-fccaf38619b9','website','claim.name'),('92098398-aee1-4466-b8fc-fccaf38619b9','true','id.token.claim'),('92098398-aee1-4466-b8fc-fccaf38619b9','true','introspection.token.claim'),('92098398-aee1-4466-b8fc-fccaf38619b9','String','jsonType.label'),('92098398-aee1-4466-b8fc-fccaf38619b9','website','user.attribute'),('92098398-aee1-4466-b8fc-fccaf38619b9','true','userinfo.token.claim'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','true','access.token.claim'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','realm_access.roles','claim.name'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','true','introspection.token.claim'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','String','jsonType.label'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','true','multivalued'),('92a52b0e-76b5-4e54-b42b-9e5bd4647ede','foo','user.attribute'),('93a0663f-ad63-4686-bef4-31c87cc45218','true','access.token.claim'),('93a0663f-ad63-4686-bef4-31c87cc45218','email','claim.name'),('93a0663f-ad63-4686-bef4-31c87cc45218','true','id.token.claim'),('93a0663f-ad63-4686-bef4-31c87cc45218','true','introspection.token.claim'),('93a0663f-ad63-4686-bef4-31c87cc45218','String','jsonType.label'),('93a0663f-ad63-4686-bef4-31c87cc45218','email','user.attribute'),('93a0663f-ad63-4686-bef4-31c87cc45218','true','userinfo.token.claim'),('93d90975-66db-4f95-bbec-b2938a3dd466','true','access.token.claim'),('93d90975-66db-4f95-bbec-b2938a3dd466','phone_number','claim.name'),('93d90975-66db-4f95-bbec-b2938a3dd466','true','id.token.claim'),('93d90975-66db-4f95-bbec-b2938a3dd466','true','introspection.token.claim'),('93d90975-66db-4f95-bbec-b2938a3dd466','String','jsonType.label'),('93d90975-66db-4f95-bbec-b2938a3dd466','phoneNumber','user.attribute'),('93d90975-66db-4f95-bbec-b2938a3dd466','true','userinfo.token.claim'),('949941c2-1d29-4682-95cd-2cfc747034e6','true','access.token.claim'),('949941c2-1d29-4682-95cd-2cfc747034e6','given_name','claim.name'),('949941c2-1d29-4682-95cd-2cfc747034e6','true','id.token.claim'),('949941c2-1d29-4682-95cd-2cfc747034e6','true','introspection.token.claim'),('949941c2-1d29-4682-95cd-2cfc747034e6','String','jsonType.label'),('949941c2-1d29-4682-95cd-2cfc747034e6','firstName','user.attribute'),('949941c2-1d29-4682-95cd-2cfc747034e6','true','userinfo.token.claim'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','true','access.token.claim'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','picture','claim.name'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','true','id.token.claim'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','true','introspection.token.claim'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','String','jsonType.label'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','picture','user.attribute'),('955aa3af-03d8-4699-8a3d-935aa44fbe84','true','userinfo.token.claim'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','true','access.token.claim'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','email_verified','claim.name'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','true','id.token.claim'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','true','introspection.token.claim'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','boolean','jsonType.label'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','emailVerified','user.attribute'),('9a895237-aef2-4d7c-b830-f5dffa196a2b','true','userinfo.token.claim'),('9c2b803a-9041-45c4-a7f0-3d152bd29dc5','true','access.token.claim'),('9c2b803a-9041-45c4-a7f0-3d152bd29dc5','true','introspection.token.claim'),('9cc1afd1-4947-4402-bada-dad3e423cc76','true','access.token.claim'),('9cc1afd1-4947-4402-bada-dad3e423cc76','zoneinfo','claim.name'),('9cc1afd1-4947-4402-bada-dad3e423cc76','true','id.token.claim'),('9cc1afd1-4947-4402-bada-dad3e423cc76','true','introspection.token.claim'),('9cc1afd1-4947-4402-bada-dad3e423cc76','String','jsonType.label'),('9cc1afd1-4947-4402-bada-dad3e423cc76','zoneinfo','user.attribute'),('9cc1afd1-4947-4402-bada-dad3e423cc76','true','userinfo.token.claim'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','true','access.token.claim'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','locale','claim.name'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','true','id.token.claim'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','true','introspection.token.claim'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','String','jsonType.label'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','locale','user.attribute'),('9d8b97d0-3759-477e-a990-265fe4bf8e39','true','userinfo.token.claim'),('9dba5353-749c-4d47-bf1b-57e770c29e46','true','access.token.claim'),('9dba5353-749c-4d47-bf1b-57e770c29e46','birthdate','claim.name'),('9dba5353-749c-4d47-bf1b-57e770c29e46','true','id.token.claim'),('9dba5353-749c-4d47-bf1b-57e770c29e46','true','introspection.token.claim'),('9dba5353-749c-4d47-bf1b-57e770c29e46','String','jsonType.label'),('9dba5353-749c-4d47-bf1b-57e770c29e46','birthdate','user.attribute'),('9dba5353-749c-4d47-bf1b-57e770c29e46','true','userinfo.token.claim'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','true','access.token.claim'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','realm_access.roles','claim.name'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','true','introspection.token.claim'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','String','jsonType.label'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','true','multivalued'),('9e16a8d6-e7bc-4a7f-abc3-eb349deb45c4','foo','user.attribute'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','true','access.token.claim'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','true','id.token.claim'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','true','introspection.token.claim'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','country','user.attribute.country'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','formatted','user.attribute.formatted'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','locality','user.attribute.locality'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','postal_code','user.attribute.postal_code'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','region','user.attribute.region'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','street','user.attribute.street'),('9eb9db15-1718-403e-9f7f-25e56dd4501b','true','userinfo.token.claim'),('a0139587-4091-4cb0-84ad-64aae07caaca','true','access.token.claim'),('a0139587-4091-4cb0-84ad-64aae07caaca','true','id.token.claim'),('a0139587-4091-4cb0-84ad-64aae07caaca','true','introspection.token.claim'),('a0139587-4091-4cb0-84ad-64aae07caaca','true','userinfo.token.claim'),('a02b5226-5edc-4801-a9eb-18bf17f4d3fe','true','access.token.claim'),('a02b5226-5edc-4801-a9eb-18bf17f4d3fe','true','id.token.claim'),('a02b5226-5edc-4801-a9eb-18bf17f4d3fe','true','introspection.token.claim'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','true','access.token.claim'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','email','claim.name'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','true','id.token.claim'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','true','introspection.token.claim'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','String','jsonType.label'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','email','user.attribute'),('a1bc069a-4b03-4333-856b-8ea10ce2018a','true','userinfo.token.claim'),('a49a4885-df00-4c2e-b715-612e769c6b8a','true','access.token.claim'),('a49a4885-df00-4c2e-b715-612e769c6b8a','middle_name','claim.name'),('a49a4885-df00-4c2e-b715-612e769c6b8a','true','id.token.claim'),('a49a4885-df00-4c2e-b715-612e769c6b8a','true','introspection.token.claim'),('a49a4885-df00-4c2e-b715-612e769c6b8a','String','jsonType.label'),('a49a4885-df00-4c2e-b715-612e769c6b8a','middleName','user.attribute'),('a49a4885-df00-4c2e-b715-612e769c6b8a','true','userinfo.token.claim'),('a604f966-4ede-4911-b7a8-876593b752b4','true','access.token.claim'),('a604f966-4ede-4911-b7a8-876593b752b4','gender','claim.name'),('a604f966-4ede-4911-b7a8-876593b752b4','true','id.token.claim'),('a604f966-4ede-4911-b7a8-876593b752b4','true','introspection.token.claim'),('a604f966-4ede-4911-b7a8-876593b752b4','String','jsonType.label'),('a604f966-4ede-4911-b7a8-876593b752b4','gender','user.attribute'),('a604f966-4ede-4911-b7a8-876593b752b4','true','userinfo.token.claim'),('a6956724-591a-4585-a312-5ae8b62b0ca0','true','access.token.claim'),('a6956724-591a-4585-a312-5ae8b62b0ca0','preferred_username','claim.name'),('a6956724-591a-4585-a312-5ae8b62b0ca0','true','id.token.claim'),('a6956724-591a-4585-a312-5ae8b62b0ca0','true','introspection.token.claim'),('a6956724-591a-4585-a312-5ae8b62b0ca0','String','jsonType.label'),('a6956724-591a-4585-a312-5ae8b62b0ca0','username','user.attribute'),('a6956724-591a-4585-a312-5ae8b62b0ca0','true','userinfo.token.claim'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','true','access.token.claim'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','picture','claim.name'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','true','id.token.claim'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','true','introspection.token.claim'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','String','jsonType.label'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','picture','user.attribute'),('a6c1c147-7614-45e2-b55d-8dcf73421d60','true','userinfo.token.claim'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','true','access.token.claim'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','middle_name','claim.name'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','true','id.token.claim'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','true','introspection.token.claim'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','String','jsonType.label'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','middleName','user.attribute'),('a7c88858-c71d-4c89-8f4a-a38793d836fa','true','userinfo.token.claim'),('a94f44a7-7f35-4dd1-9007-e06e7eef193b','true','access.token.claim'),('a94f44a7-7f35-4dd1-9007-e06e7eef193b','true','introspection.token.claim'),('a9d6f94b-939a-4926-918e-e683e05c4d58','true','access.token.claim'),('a9d6f94b-939a-4926-918e-e683e05c4d58','resource_access.${client_id}.roles','claim.name'),('a9d6f94b-939a-4926-918e-e683e05c4d58','true','introspection.token.claim'),('a9d6f94b-939a-4926-918e-e683e05c4d58','String','jsonType.label'),('a9d6f94b-939a-4926-918e-e683e05c4d58','true','multivalued'),('a9d6f94b-939a-4926-918e-e683e05c4d58','foo','user.attribute'),('aaa8e825-1797-493d-9734-8c9f69191254','true','access.token.claim'),('aaa8e825-1797-493d-9734-8c9f69191254','realm_access.roles','claim.name'),('aaa8e825-1797-493d-9734-8c9f69191254','true','introspection.token.claim'),('aaa8e825-1797-493d-9734-8c9f69191254','String','jsonType.label'),('aaa8e825-1797-493d-9734-8c9f69191254','true','multivalued'),('aaa8e825-1797-493d-9734-8c9f69191254','foo','user.attribute'),('abd7f086-dde7-43c0-833e-daa94d47d4da','true','access.token.claim'),('abd7f086-dde7-43c0-833e-daa94d47d4da','email_verified','claim.name'),('abd7f086-dde7-43c0-833e-daa94d47d4da','true','id.token.claim'),('abd7f086-dde7-43c0-833e-daa94d47d4da','true','introspection.token.claim'),('abd7f086-dde7-43c0-833e-daa94d47d4da','boolean','jsonType.label'),('abd7f086-dde7-43c0-833e-daa94d47d4da','emailVerified','user.attribute'),('abd7f086-dde7-43c0-833e-daa94d47d4da','true','userinfo.token.claim'),('ac2146df-f47d-4139-9b4a-af3e84e63d0b','true','access.token.claim'),('ac2146df-f47d-4139-9b4a-af3e84e63d0b','true','introspection.token.claim'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','true','access.token.claim'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','preferred_username','claim.name'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','true','id.token.claim'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','true','introspection.token.claim'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','String','jsonType.label'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','username','user.attribute'),('ac579b0e-ec0c-4c07-b43e-69aa102b6fae','true','userinfo.token.claim'),('add10127-24f4-4e33-a181-96bc6a3331fb','true','access.token.claim'),('add10127-24f4-4e33-a181-96bc6a3331fb','clientAddress','claim.name'),('add10127-24f4-4e33-a181-96bc6a3331fb','true','id.token.claim'),('add10127-24f4-4e33-a181-96bc6a3331fb','String','jsonType.label'),('add10127-24f4-4e33-a181-96bc6a3331fb','clientAddress','user.session.note'),('add10127-24f4-4e33-a181-96bc6a3331fb','true','userinfo.token.claim'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','true','access.token.claim'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','locale','claim.name'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','true','id.token.claim'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','true','introspection.token.claim'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','String','jsonType.label'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','locale','user.attribute'),('ae8aa5f4-0599-42b2-a279-66a35261b90b','true','userinfo.token.claim'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','true','access.token.claim'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','given_name','claim.name'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','true','id.token.claim'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','true','introspection.token.claim'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','String','jsonType.label'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','firstName','user.attribute'),('affaf70b-233b-462c-8ece-7ab0a56df2c3','true','userinfo.token.claim'),('b018bb65-07a3-41bc-8c38-238e08a74097','true','access.token.claim'),('b018bb65-07a3-41bc-8c38-238e08a74097','true','introspection.token.claim'),('b23bd153-ed5a-424a-a04e-034eb4df5341','true','access.token.claim'),('b23bd153-ed5a-424a-a04e-034eb4df5341','realm_access.roles','claim.name'),('b23bd153-ed5a-424a-a04e-034eb4df5341','true','introspection.token.claim'),('b23bd153-ed5a-424a-a04e-034eb4df5341','String','jsonType.label'),('b23bd153-ed5a-424a-a04e-034eb4df5341','true','multivalued'),('b23bd153-ed5a-424a-a04e-034eb4df5341','foo','user.attribute'),('b2b5b2f6-d4a4-4b3a-aec5-053e2d95cb6c','true','access.token.claim'),('b2b5b2f6-d4a4-4b3a-aec5-053e2d95cb6c','true','introspection.token.claim'),('b4c6298f-a22f-4a3a-a74b-2d3270431251','true','access.token.claim'),('b4c6298f-a22f-4a3a-a74b-2d3270431251','true','id.token.claim'),('b4c6298f-a22f-4a3a-a74b-2d3270431251','true','introspection.token.claim'),('b4c6298f-a22f-4a3a-a74b-2d3270431251','true','userinfo.token.claim'),('b50ab329-e324-497f-bade-2f3869154ef2','true','access.token.claim'),('b50ab329-e324-497f-bade-2f3869154ef2','picture','claim.name'),('b50ab329-e324-497f-bade-2f3869154ef2','true','id.token.claim'),('b50ab329-e324-497f-bade-2f3869154ef2','true','introspection.token.claim'),('b50ab329-e324-497f-bade-2f3869154ef2','String','jsonType.label'),('b50ab329-e324-497f-bade-2f3869154ef2','picture','user.attribute'),('b50ab329-e324-497f-bade-2f3869154ef2','true','userinfo.token.claim'),('b69c694b-9eb7-4533-a11e-3fd08eba1d56','Role','attribute.name'),('b69c694b-9eb7-4533-a11e-3fd08eba1d56','Basic','attribute.nameformat'),('b69c694b-9eb7-4533-a11e-3fd08eba1d56','false','single'),('b6f26f98-506f-417e-9a43-841815bc22b0','true','access.token.claim'),('b6f26f98-506f-417e-9a43-841815bc22b0','zoneinfo','claim.name'),('b6f26f98-506f-417e-9a43-841815bc22b0','true','id.token.claim'),('b6f26f98-506f-417e-9a43-841815bc22b0','true','introspection.token.claim'),('b6f26f98-506f-417e-9a43-841815bc22b0','String','jsonType.label'),('b6f26f98-506f-417e-9a43-841815bc22b0','zoneinfo','user.attribute'),('b6f26f98-506f-417e-9a43-841815bc22b0','true','userinfo.token.claim'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','true','access.token.claim'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','locale','claim.name'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','true','id.token.claim'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','true','introspection.token.claim'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','String','jsonType.label'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','locale','user.attribute'),('b7058a58-fa35-429c-b71c-c6598fab9dc5','true','userinfo.token.claim'),('b9929c2e-28ee-4c21-812d-ef30857cd23e','true','access.token.claim'),('b9929c2e-28ee-4c21-812d-ef30857cd23e','clientId','claim.name'),('b9929c2e-28ee-4c21-812d-ef30857cd23e','true','id.token.claim'),('b9929c2e-28ee-4c21-812d-ef30857cd23e','String','jsonType.label'),('b9929c2e-28ee-4c21-812d-ef30857cd23e','clientId','user.session.note'),('b9929c2e-28ee-4c21-812d-ef30857cd23e','true','userinfo.token.claim'),('bb6a427c-655e-48a2-a945-67a28b8f3197','true','access.token.claim'),('bb6a427c-655e-48a2-a945-67a28b8f3197','family_name','claim.name'),('bb6a427c-655e-48a2-a945-67a28b8f3197','true','id.token.claim'),('bb6a427c-655e-48a2-a945-67a28b8f3197','true','introspection.token.claim'),('bb6a427c-655e-48a2-a945-67a28b8f3197','String','jsonType.label'),('bb6a427c-655e-48a2-a945-67a28b8f3197','lastName','user.attribute'),('bb6a427c-655e-48a2-a945-67a28b8f3197','true','userinfo.token.claim'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','true','access.token.claim'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','phone_number_verified','claim.name'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','true','id.token.claim'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','true','introspection.token.claim'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','boolean','jsonType.label'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','phoneNumberVerified','user.attribute'),('bc0fea80-d7f9-4887-a512-aac00b78b0be','true','userinfo.token.claim'),('bc8378c2-84de-4111-84ec-9faaca590081','true','access.token.claim'),('bc8378c2-84de-4111-84ec-9faaca590081','zoneinfo','claim.name'),('bc8378c2-84de-4111-84ec-9faaca590081','true','id.token.claim'),('bc8378c2-84de-4111-84ec-9faaca590081','true','introspection.token.claim'),('bc8378c2-84de-4111-84ec-9faaca590081','String','jsonType.label'),('bc8378c2-84de-4111-84ec-9faaca590081','zoneinfo','user.attribute'),('bc8378c2-84de-4111-84ec-9faaca590081','true','userinfo.token.claim'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','true','access.token.claim'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','clientId','claim.name'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','true','id.token.claim'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','String','jsonType.label'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','clientId','user.session.note'),('bc85eb3d-5938-440f-a25f-21c1d593b8a7','true','userinfo.token.claim'),('bc9312ed-2a47-4971-9693-778e24408ae4','true','access.token.claim'),('bc9312ed-2a47-4971-9693-778e24408ae4','picture','claim.name'),('bc9312ed-2a47-4971-9693-778e24408ae4','true','id.token.claim'),('bc9312ed-2a47-4971-9693-778e24408ae4','true','introspection.token.claim'),('bc9312ed-2a47-4971-9693-778e24408ae4','String','jsonType.label'),('bc9312ed-2a47-4971-9693-778e24408ae4','picture','user.attribute'),('bc9312ed-2a47-4971-9693-778e24408ae4','true','userinfo.token.claim'),('bd3ed935-eb5e-4583-868d-bb360b28d819','true','access.token.claim'),('bd3ed935-eb5e-4583-868d-bb360b28d819','updated_at','claim.name'),('bd3ed935-eb5e-4583-868d-bb360b28d819','true','id.token.claim'),('bd3ed935-eb5e-4583-868d-bb360b28d819','true','introspection.token.claim'),('bd3ed935-eb5e-4583-868d-bb360b28d819','long','jsonType.label'),('bd3ed935-eb5e-4583-868d-bb360b28d819','updatedAt','user.attribute'),('bd3ed935-eb5e-4583-868d-bb360b28d819','true','userinfo.token.claim'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','true','access.token.claim'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','given_name','claim.name'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','true','id.token.claim'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','true','introspection.token.claim'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','String','jsonType.label'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','firstName','user.attribute'),('bd92b19f-a98d-4015-b07b-5eedc8b00a38','true','userinfo.token.claim'),('be414481-5b60-47bf-b6b2-c23776dedec5','Role','attribute.name'),('be414481-5b60-47bf-b6b2-c23776dedec5','Basic','attribute.nameformat'),('be414481-5b60-47bf-b6b2-c23776dedec5','false','single'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','true','access.token.claim'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','clientId','claim.name'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','true','id.token.claim'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','String','jsonType.label'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','clientId','user.session.note'),('bf13a057-00d2-43bf-81a5-43f9e4f8782e','true','userinfo.token.claim'),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','true','access.token.claim'),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','resource_access.${client_id}.roles','claim.name'),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','true','introspection.token.claim'),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','String','jsonType.label'),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','true','multivalued'),('bf1e978e-7f36-49d0-a1a1-eb99ea449bdf','foo','user.attribute'),('c1442040-ce6c-406a-a8ea-b87ade99bf77','true','access.token.claim'),('c1442040-ce6c-406a-a8ea-b87ade99bf77','true','id.token.claim'),('c1442040-ce6c-406a-a8ea-b87ade99bf77','true','introspection.token.claim'),('c1442040-ce6c-406a-a8ea-b87ade99bf77','true','userinfo.token.claim'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','true','access.token.claim'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','locale','claim.name'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','true','id.token.claim'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','true','introspection.token.claim'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','String','jsonType.label'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','locale','user.attribute'),('c3655b0e-248c-4a71-a290-4fa5bc6dc7ec','true','userinfo.token.claim'),('c43ea434-b9f9-48c0-b712-4f0090b31124','true','access.token.claim'),('c43ea434-b9f9-48c0-b712-4f0090b31124','updated_at','claim.name'),('c43ea434-b9f9-48c0-b712-4f0090b31124','true','id.token.claim'),('c43ea434-b9f9-48c0-b712-4f0090b31124','true','introspection.token.claim'),('c43ea434-b9f9-48c0-b712-4f0090b31124','long','jsonType.label'),('c43ea434-b9f9-48c0-b712-4f0090b31124','updatedAt','user.attribute'),('c43ea434-b9f9-48c0-b712-4f0090b31124','true','userinfo.token.claim'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','true','access.token.claim'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','middle_name','claim.name'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','true','id.token.claim'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','true','introspection.token.claim'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','String','jsonType.label'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','middleName','user.attribute'),('c46f7bcc-c9ab-480a-8c50-0c505d8a01f9','true','userinfo.token.claim'),('c6434ac1-1381-49c0-932d-a5e39c113372','true','access.token.claim'),('c6434ac1-1381-49c0-932d-a5e39c113372','profile','claim.name'),('c6434ac1-1381-49c0-932d-a5e39c113372','true','id.token.claim'),('c6434ac1-1381-49c0-932d-a5e39c113372','true','introspection.token.claim'),('c6434ac1-1381-49c0-932d-a5e39c113372','String','jsonType.label'),('c6434ac1-1381-49c0-932d-a5e39c113372','profile','user.attribute'),('c6434ac1-1381-49c0-932d-a5e39c113372','true','userinfo.token.claim'),('c659ddad-966a-4480-a04d-223f10a41b3f','true','access.token.claim'),('c659ddad-966a-4480-a04d-223f10a41b3f','groups','claim.name'),('c659ddad-966a-4480-a04d-223f10a41b3f','true','id.token.claim'),('c659ddad-966a-4480-a04d-223f10a41b3f','true','introspection.token.claim'),('c659ddad-966a-4480-a04d-223f10a41b3f','String','jsonType.label'),('c659ddad-966a-4480-a04d-223f10a41b3f','true','multivalued'),('c659ddad-966a-4480-a04d-223f10a41b3f','foo','user.attribute'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','true','access.token.claim'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','nickname','claim.name'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','true','id.token.claim'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','true','introspection.token.claim'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','String','jsonType.label'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','nickname','user.attribute'),('c8d7ebdf-5ffa-4592-94fa-a7bad15572ff','true','userinfo.token.claim'),('c9717deb-ea64-474d-a101-72ebbce40472','true','access.token.claim'),('c9717deb-ea64-474d-a101-72ebbce40472','family_name','claim.name'),('c9717deb-ea64-474d-a101-72ebbce40472','true','id.token.claim'),('c9717deb-ea64-474d-a101-72ebbce40472','true','introspection.token.claim'),('c9717deb-ea64-474d-a101-72ebbce40472','String','jsonType.label'),('c9717deb-ea64-474d-a101-72ebbce40472','lastName','user.attribute'),('c9717deb-ea64-474d-a101-72ebbce40472','true','userinfo.token.claim'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','true','access.token.claim'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','gender','claim.name'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','true','id.token.claim'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','true','introspection.token.claim'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','String','jsonType.label'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','gender','user.attribute'),('ca1ce6d2-74f7-4b07-ac6d-f2e04244117b','true','userinfo.token.claim'),('cd32ed21-fcb3-4453-8868-7207910329d3','true','access.token.claim'),('cd32ed21-fcb3-4453-8868-7207910329d3','true','id.token.claim'),('cd32ed21-fcb3-4453-8868-7207910329d3','true','introspection.token.claim'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','true','access.token.claim'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','email_verified','claim.name'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','true','id.token.claim'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','true','introspection.token.claim'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','boolean','jsonType.label'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','emailVerified','user.attribute'),('d151ee7c-9c08-487d-90dc-3c16b9a00c35','true','userinfo.token.claim'),('d302c9eb-f316-453f-b598-96ac6729bea3','true','access.token.claim'),('d302c9eb-f316-453f-b598-96ac6729bea3','true','id.token.claim'),('d302c9eb-f316-453f-b598-96ac6729bea3','true','introspection.token.claim'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','true','access.token.claim'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','given_name','claim.name'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','true','id.token.claim'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','true','introspection.token.claim'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','String','jsonType.label'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','firstName','user.attribute'),('d3607474-6fb7-48fa-bf37-fe19eb230cf7','true','userinfo.token.claim'),('d564886c-324f-42e4-9089-6854e60f13a2','true','access.token.claim'),('d564886c-324f-42e4-9089-6854e60f13a2','gender','claim.name'),('d564886c-324f-42e4-9089-6854e60f13a2','true','id.token.claim'),('d564886c-324f-42e4-9089-6854e60f13a2','true','introspection.token.claim'),('d564886c-324f-42e4-9089-6854e60f13a2','String','jsonType.label'),('d564886c-324f-42e4-9089-6854e60f13a2','gender','user.attribute'),('d564886c-324f-42e4-9089-6854e60f13a2','true','userinfo.token.claim'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','true','access.token.claim'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','email','claim.name'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','true','id.token.claim'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','true','introspection.token.claim'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','String','jsonType.label'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','email','user.attribute'),('d5938767-e1fe-4eff-a5bb-aa1675b7ed9a','true','userinfo.token.claim'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','true','access.token.claim'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','email','claim.name'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','true','id.token.claim'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','true','introspection.token.claim'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','String','jsonType.label'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','email','user.attribute'),('d69d47be-9044-4417-ae24-47ffd47ac8ed','true','userinfo.token.claim'),('d93148b7-dfc3-450a-9f0d-48b1146c1c57','true','access.token.claim'),('d93148b7-dfc3-450a-9f0d-48b1146c1c57','true','id.token.claim'),('d93148b7-dfc3-450a-9f0d-48b1146c1c57','true','introspection.token.claim'),('d93148b7-dfc3-450a-9f0d-48b1146c1c57','true','userinfo.token.claim'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','true','access.token.claim'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','locale','claim.name'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','true','id.token.claim'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','true','introspection.token.claim'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','String','jsonType.label'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','locale','user.attribute'),('da1edc66-2b5e-4ea1-be91-4cab4b29a0e6','true','userinfo.token.claim'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','true','access.token.claim'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','phone_number_verified','claim.name'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','true','id.token.claim'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','true','introspection.token.claim'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','boolean','jsonType.label'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','phoneNumberVerified','user.attribute'),('db992756-7e55-4c3f-bc22-16a0ad3f9f06','true','userinfo.token.claim'),('dc79d678-f405-45c9-af53-42e6c2853f0e','true','access.token.claim'),('dc79d678-f405-45c9-af53-42e6c2853f0e','clientAddress','claim.name'),('dc79d678-f405-45c9-af53-42e6c2853f0e','true','id.token.claim'),('dc79d678-f405-45c9-af53-42e6c2853f0e','String','jsonType.label'),('dc79d678-f405-45c9-af53-42e6c2853f0e','clientAddress','user.session.note'),('dc79d678-f405-45c9-af53-42e6c2853f0e','true','userinfo.token.claim'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','true','access.token.claim'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','gender','claim.name'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','true','id.token.claim'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','true','introspection.token.claim'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','String','jsonType.label'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','gender','user.attribute'),('dd3eea53-3a48-4113-91bf-bb24663a04b1','true','userinfo.token.claim'),('de264414-2763-4d98-a27b-c06b45c09192','true','access.token.claim'),('de264414-2763-4d98-a27b-c06b45c09192','locale','claim.name'),('de264414-2763-4d98-a27b-c06b45c09192','true','id.token.claim'),('de264414-2763-4d98-a27b-c06b45c09192','true','introspection.token.claim'),('de264414-2763-4d98-a27b-c06b45c09192','String','jsonType.label'),('de264414-2763-4d98-a27b-c06b45c09192','locale','user.attribute'),('de264414-2763-4d98-a27b-c06b45c09192','true','userinfo.token.claim'),('df12cc21-7860-4028-801a-c21819c24778','true','access.token.claim'),('df12cc21-7860-4028-801a-c21819c24778','true','id.token.claim'),('df12cc21-7860-4028-801a-c21819c24778','true','introspection.token.claim'),('df12cc21-7860-4028-801a-c21819c24778','country','user.attribute.country'),('df12cc21-7860-4028-801a-c21819c24778','formatted','user.attribute.formatted'),('df12cc21-7860-4028-801a-c21819c24778','locality','user.attribute.locality'),('df12cc21-7860-4028-801a-c21819c24778','postal_code','user.attribute.postal_code'),('df12cc21-7860-4028-801a-c21819c24778','region','user.attribute.region'),('df12cc21-7860-4028-801a-c21819c24778','street','user.attribute.street'),('df12cc21-7860-4028-801a-c21819c24778','true','userinfo.token.claim'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','true','access.token.claim'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','upn','claim.name'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','true','id.token.claim'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','true','introspection.token.claim'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','String','jsonType.label'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','username','user.attribute'),('dfcd9471-21e5-4169-9b85-2d30487ed0ea','true','userinfo.token.claim'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','true','access.token.claim'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','birthdate','claim.name'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','true','id.token.claim'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','true','introspection.token.claim'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','String','jsonType.label'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','birthdate','user.attribute'),('e487d7a0-25ee-4209-92b8-faa0e32c01e1','true','userinfo.token.claim'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','true','access.token.claim'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','middle_name','claim.name'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','true','id.token.claim'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','true','introspection.token.claim'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','String','jsonType.label'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','middleName','user.attribute'),('e4a4f609-3b1d-402e-8c4a-fc7fe2bd369a','true','userinfo.token.claim'),('e51727c2-110e-40df-9a79-af253a5ebfdc','true','access.token.claim'),('e51727c2-110e-40df-9a79-af253a5ebfdc','family_name','claim.name'),('e51727c2-110e-40df-9a79-af253a5ebfdc','true','id.token.claim'),('e51727c2-110e-40df-9a79-af253a5ebfdc','true','introspection.token.claim'),('e51727c2-110e-40df-9a79-af253a5ebfdc','String','jsonType.label'),('e51727c2-110e-40df-9a79-af253a5ebfdc','lastName','user.attribute'),('e51727c2-110e-40df-9a79-af253a5ebfdc','true','userinfo.token.claim'),('e593431d-4207-4672-b159-d04eff4a95c8','true','access.token.claim'),('e593431d-4207-4672-b159-d04eff4a95c8','upn','claim.name'),('e593431d-4207-4672-b159-d04eff4a95c8','true','id.token.claim'),('e593431d-4207-4672-b159-d04eff4a95c8','true','introspection.token.claim'),('e593431d-4207-4672-b159-d04eff4a95c8','String','jsonType.label'),('e593431d-4207-4672-b159-d04eff4a95c8','username','user.attribute'),('e593431d-4207-4672-b159-d04eff4a95c8','true','userinfo.token.claim'),('e9277ff2-9bdc-465b-bcbd-38679041332e','true','access.token.claim'),('e9277ff2-9bdc-465b-bcbd-38679041332e','true','introspection.token.claim'),('ec2afa8e-1efe-454e-9615-81f4df80d251','true','access.token.claim'),('ec2afa8e-1efe-454e-9615-81f4df80d251','profile','claim.name'),('ec2afa8e-1efe-454e-9615-81f4df80d251','true','id.token.claim'),('ec2afa8e-1efe-454e-9615-81f4df80d251','true','introspection.token.claim'),('ec2afa8e-1efe-454e-9615-81f4df80d251','String','jsonType.label'),('ec2afa8e-1efe-454e-9615-81f4df80d251','profile','user.attribute'),('ec2afa8e-1efe-454e-9615-81f4df80d251','true','userinfo.token.claim'),('ef43de4d-29d3-4441-934d-7306edc811f1','true','access.token.claim'),('ef43de4d-29d3-4441-934d-7306edc811f1','groups','claim.name'),('ef43de4d-29d3-4441-934d-7306edc811f1','true','id.token.claim'),('ef43de4d-29d3-4441-934d-7306edc811f1','true','introspection.token.claim'),('ef43de4d-29d3-4441-934d-7306edc811f1','String','jsonType.label'),('ef43de4d-29d3-4441-934d-7306edc811f1','true','multivalued'),('ef43de4d-29d3-4441-934d-7306edc811f1','foo','user.attribute'),('ef484d55-5c98-4fdc-9c81-3c39da4fdee1','true','access.token.claim'),('ef484d55-5c98-4fdc-9c81-3c39da4fdee1','true','id.token.claim'),('ef484d55-5c98-4fdc-9c81-3c39da4fdee1','true','introspection.token.claim'),('f10122bb-1859-46d1-9f14-b567bf9917d2','true','access.token.claim'),('f10122bb-1859-46d1-9f14-b567bf9917d2','groups','claim.name'),('f10122bb-1859-46d1-9f14-b567bf9917d2','true','id.token.claim'),('f10122bb-1859-46d1-9f14-b567bf9917d2','true','introspection.token.claim'),('f10122bb-1859-46d1-9f14-b567bf9917d2','String','jsonType.label'),('f10122bb-1859-46d1-9f14-b567bf9917d2','true','multivalued'),('f10122bb-1859-46d1-9f14-b567bf9917d2','foo','user.attribute'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','true','access.token.claim'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','website','claim.name'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','true','id.token.claim'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','true','introspection.token.claim'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','String','jsonType.label'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','website','user.attribute'),('f2ea827a-3cac-401d-ba5b-87e30ee59c4f','true','userinfo.token.claim'),('f601800f-d854-4db3-8b6e-ef19374626d7','true','access.token.claim'),('f601800f-d854-4db3-8b6e-ef19374626d7','phone_number_verified','claim.name'),('f601800f-d854-4db3-8b6e-ef19374626d7','true','id.token.claim'),('f601800f-d854-4db3-8b6e-ef19374626d7','true','introspection.token.claim'),('f601800f-d854-4db3-8b6e-ef19374626d7','boolean','jsonType.label'),('f601800f-d854-4db3-8b6e-ef19374626d7','phoneNumberVerified','user.attribute'),('f601800f-d854-4db3-8b6e-ef19374626d7','true','userinfo.token.claim'),('f9955e5d-a86d-4ee2-ab05-31d025282987','true','access.token.claim'),('f9955e5d-a86d-4ee2-ab05-31d025282987','zoneinfo','claim.name'),('f9955e5d-a86d-4ee2-ab05-31d025282987','true','id.token.claim'),('f9955e5d-a86d-4ee2-ab05-31d025282987','true','introspection.token.claim'),('f9955e5d-a86d-4ee2-ab05-31d025282987','String','jsonType.label'),('f9955e5d-a86d-4ee2-ab05-31d025282987','zoneinfo','user.attribute'),('f9955e5d-a86d-4ee2-ab05-31d025282987','true','userinfo.token.claim'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','true','access.token.claim'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','profile','claim.name'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','true','id.token.claim'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','true','introspection.token.claim'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','String','jsonType.label'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','profile','user.attribute'),('fba57648-50b0-4f81-8dd8-d3b4e6696ee8','true','userinfo.token.claim'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','true','access.token.claim'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','locale','claim.name'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','true','id.token.claim'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','true','introspection.token.claim'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','String','jsonType.label'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','locale','user.attribute'),('fcdbfe6a-a543-4b36-8e2e-50dc72756741','true','userinfo.token.claim'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','true','access.token.claim'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','phone_number_verified','claim.name'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','true','id.token.claim'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','true','introspection.token.claim'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','boolean','jsonType.label'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','phoneNumberVerified','user.attribute'),('fdadc468-57c4-4e81-9b06-dfb506bb4a40','true','userinfo.token.claim'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','true','access.token.claim'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','true','id.token.claim'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','true','introspection.token.claim'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','country','user.attribute.country'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','formatted','user.attribute.formatted'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','locality','user.attribute.locality'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','postal_code','user.attribute.postal_code'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','region','user.attribute.region'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','street','user.attribute.street'),('fe7beb86-4494-46fb-908f-9f1ae15d4705','true','userinfo.token.claim');
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
INSERT INTO `REALM` VALUES ('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'06a57e63-21df-40a5-962a-05f14882f954',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','3ec99d59-e8f4-4acc-ab64-503d678be5d2','70515358-b5ba-4454-87f0-130d43503dc9','0a9dd6c5-fd6d-4cc5-b6e3-c9a286d9c18a','36d6bc61-984e-4d89-9907-db435f135785','671424c1-8c91-48da-b96d-f7b17fd86851',31536000,0,900,1,0,'881aab24-0061-4b2d-9264-5062bab7bb7d',0,0,0,0,'8300c9ca-7fa4-4182-ae75-6566136a534a'),('org1',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org1',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'ea5cac83-e5ea-432d-b95b-01fe29e8ea98',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','21a788cf-6c78-471b-a36b-9f49b672e687','d0e5e64b-d257-4dc9-a43b-3a5a31f8a8bd','f3442a01-582f-4623-adb8-9bdb56a9e304','2e98a9b5-3b5f-4d8b-8a51-e2cb8c486fae','3c2f5c72-5d33-438c-9c84-b699485433b7',31536000,0,900,1,0,'811df48d-02f1-40fa-83bc-07168159efb9',0,0,0,0,'e9891926-bd5d-4586-b440-8ba27ef6f84d'),('org2',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org2',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'43cf22f8-90af-4532-ad1c-fc2934a264e3',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','5f98ba6f-906f-488a-bd43-5e78e4bb3112','4d564552-f84d-49fb-8bfb-86cb07e84423','f1cec3c7-595b-41ac-9db4-28309f61a6ab','66a901be-2ff5-4651-bef8-e80351d03adf','37ccde8f-661d-4811-b204-6e56e33d1a14',31536000,0,900,1,0,'663dc236-9203-4d86-b4a2-3d3a3af2c66b',0,0,0,0,'d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4'),('org3',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org3',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'c0ba0103-6eb6-43d5-a844-8d44e6254694',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','8dbf3f04-d54d-4217-a4e3-c754759e0305','811cabcb-f114-4327-b167-989b1b22bc71','9ce84238-861f-4995-90c6-5fd7a33ed6b9','7fc2c77f-9f46-4c6e-9727-2dddcd9ce019','d405b699-5d76-4199-9210-7e5ca58d33ca',31536000,0,900,1,0,'32061ed3-ab09-4955-b6f6-1e727b2b25fd',0,0,0,0,'a1d3c397-ba0b-4be8-9c32-57a89efc84ef'),('org4',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org4',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'3894c5a6-d196-4876-80b0-fe257f155db3',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','52447238-80c8-49d7-910d-a66fde6a02df','ce17255d-78b0-45ca-ae77-e4dcfa941b99','4b387c39-2e15-464c-a8a2-6d00f636b3af','1d3a66e8-e68d-401c-b6d3-85d23f405a43','4978c9aa-de75-4666-894d-31739ec824fb',31536000,0,900,1,0,'949c4ab0-5fce-4fc8-a2e1-08567f34b40e',0,0,0,0,'66ec0f70-30ea-43ff-a2f6-79b18643d858'),('org5',60,300,300,NULL,NULL,NULL,1,0,0,'exastro','org5',0,NULL,0,0,0,0,'NONE',1800,36000,0,0,'68067b8f-f178-4db3-ba80-73f114099679',1800,1,'ja',0,1,1,0,0,1,30,6,'HmacSHA1','totp','0a20b921-1a4c-411d-b7fd-eeaf9fea329b','5aa36cff-3bde-4b4b-a784-a9be8706cd6d','a8787147-2568-445c-a394-6365f4927fce','95ba2efd-918c-4674-b99c-694a093a8809','36ea7431-3092-4902-8058-ee515c191bce',31536000,0,900,1,0,'6f8e5f9a-6f48-4d77-b7ca-5628c3b48c61',0,0,0,0,'3311a7b8-3f95-4aea-aee4-832fe3425678');
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
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','org1','43200'),('actionTokenGeneratedByAdminLifespan','org2','43200'),('actionTokenGeneratedByAdminLifespan','org3','43200'),('actionTokenGeneratedByAdminLifespan','org4','43200'),('actionTokenGeneratedByAdminLifespan','org5','43200'),('actionTokenGeneratedByUserLifespan','org1','300'),('actionTokenGeneratedByUserLifespan','org2','300'),('actionTokenGeneratedByUserLifespan','org3','300'),('actionTokenGeneratedByUserLifespan','org4','300'),('actionTokenGeneratedByUserLifespan','org5','300'),('bruteForceProtected','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','false'),('bruteForceProtected','org1','false'),('bruteForceProtected','org2','false'),('bruteForceProtected','org3','false'),('bruteForceProtected','org4','false'),('bruteForceProtected','org5','false'),('cibaAuthRequestedUserHint','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','login_hint'),('cibaAuthRequestedUserHint','org1','login_hint'),('cibaAuthRequestedUserHint','org2','login_hint'),('cibaAuthRequestedUserHint','org3','login_hint'),('cibaAuthRequestedUserHint','org4','login_hint'),('cibaAuthRequestedUserHint','org5','login_hint'),('cibaBackchannelTokenDeliveryMode','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','poll'),('cibaBackchannelTokenDeliveryMode','org1','poll'),('cibaBackchannelTokenDeliveryMode','org2','poll'),('cibaBackchannelTokenDeliveryMode','org3','poll'),('cibaBackchannelTokenDeliveryMode','org4','poll'),('cibaBackchannelTokenDeliveryMode','org5','poll'),('cibaExpiresIn','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','120'),('cibaExpiresIn','org1','120'),('cibaExpiresIn','org2','120'),('cibaExpiresIn','org3','120'),('cibaExpiresIn','org4','120'),('cibaExpiresIn','org5','120'),('cibaInterval','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','5'),('cibaInterval','org1','5'),('cibaInterval','org2','5'),('cibaInterval','org3','5'),('cibaInterval','org4','5'),('cibaInterval','org5','5'),('defaultSignatureAlgorithm','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','RS256'),('defaultSignatureAlgorithm','org1','RS256'),('defaultSignatureAlgorithm','org2','RS256'),('defaultSignatureAlgorithm','org3','RS256'),('defaultSignatureAlgorithm','org4','RS256'),('defaultSignatureAlgorithm','org5','RS256'),('displayName','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','Keycloak'),('displayName','org1','name of organization'),('displayName','org2','name of organization'),('displayName','org3','name of organization'),('displayName','org4','name of organization'),('displayName','org5','name of organization'),('displayNameHtml','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','30'),('failureFactor','org1','30'),('failureFactor','org2','30'),('failureFactor','org3','30'),('failureFactor','org4','30'),('failureFactor','org5','30'),('firstBrokerLoginFlowId','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','819086c5-e9f9-4cbf-9f38-214ce37cb856'),('firstBrokerLoginFlowId','org1','53cc862d-d531-410a-bf4d-a020b8e8cd47'),('firstBrokerLoginFlowId','org2','411588db-31c8-4a3b-9147-afb48bc3babb'),('firstBrokerLoginFlowId','org3','7408f300-0122-4e77-b794-2b8d6371adb5'),('firstBrokerLoginFlowId','org4','e3a72a56-4036-453e-ae54-27a0d3ba6eb7'),('firstBrokerLoginFlowId','org5','67af835e-0320-4612-9c40-017f1979fbc4'),('maxDeltaTimeSeconds','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','43200'),('maxDeltaTimeSeconds','org1','43200'),('maxDeltaTimeSeconds','org2','43200'),('maxDeltaTimeSeconds','org3','43200'),('maxDeltaTimeSeconds','org4','43200'),('maxDeltaTimeSeconds','org5','43200'),('maxFailureWaitSeconds','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','900'),('maxFailureWaitSeconds','org1','900'),('maxFailureWaitSeconds','org2','900'),('maxFailureWaitSeconds','org3','900'),('maxFailureWaitSeconds','org4','900'),('maxFailureWaitSeconds','org5','900'),('maxTemporaryLockouts','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','0'),('maxTemporaryLockouts','org1','0'),('maxTemporaryLockouts','org2','0'),('maxTemporaryLockouts','org3','0'),('maxTemporaryLockouts','org4','0'),('maxTemporaryLockouts','org5','0'),('minimumQuickLoginWaitSeconds','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','60'),('minimumQuickLoginWaitSeconds','org1','60'),('minimumQuickLoginWaitSeconds','org2','60'),('minimumQuickLoginWaitSeconds','org3','60'),('minimumQuickLoginWaitSeconds','org4','60'),('minimumQuickLoginWaitSeconds','org5','60'),('oauth2DeviceCodeLifespan','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','600'),('oauth2DeviceCodeLifespan','org1','600'),('oauth2DeviceCodeLifespan','org2','600'),('oauth2DeviceCodeLifespan','org3','600'),('oauth2DeviceCodeLifespan','org4','600'),('oauth2DeviceCodeLifespan','org5','600'),('oauth2DevicePollingInterval','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','5'),('oauth2DevicePollingInterval','org1','5'),('oauth2DevicePollingInterval','org2','5'),('oauth2DevicePollingInterval','org3','5'),('oauth2DevicePollingInterval','org4','5'),('oauth2DevicePollingInterval','org5','5'),('offlineSessionMaxLifespan','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','31536000'),('offlineSessionMaxLifespan','org1','31536000'),('offlineSessionMaxLifespan','org2','31536000'),('offlineSessionMaxLifespan','org3','31536000'),('offlineSessionMaxLifespan','org4','31536000'),('offlineSessionMaxLifespan','org5','31536000'),('offlineSessionMaxLifespanEnabled','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','true'),('offlineSessionMaxLifespanEnabled','org1','true'),('offlineSessionMaxLifespanEnabled','org2','true'),('offlineSessionMaxLifespanEnabled','org3','true'),('offlineSessionMaxLifespanEnabled','org4','true'),('offlineSessionMaxLifespanEnabled','org5','true'),('parRequestUriLifespan','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','60'),('parRequestUriLifespan','org1','60'),('parRequestUriLifespan','org2','60'),('parRequestUriLifespan','org3','60'),('parRequestUriLifespan','org4','60'),('parRequestUriLifespan','org5','60'),('permanentLockout','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','false'),('permanentLockout','org1','false'),('permanentLockout','org2','false'),('permanentLockout','org3','false'),('permanentLockout','org4','false'),('permanentLockout','org5','false'),('quickLoginCheckMilliSeconds','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','1000'),('quickLoginCheckMilliSeconds','org1','1000'),('quickLoginCheckMilliSeconds','org2','1000'),('quickLoginCheckMilliSeconds','org3','1000'),('quickLoginCheckMilliSeconds','org4','1000'),('quickLoginCheckMilliSeconds','org5','1000'),('realmReusableOtpCode','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','false'),('realmReusableOtpCode','org1','false'),('realmReusableOtpCode','org2','false'),('realmReusableOtpCode','org3','false'),('realmReusableOtpCode','org4','false'),('realmReusableOtpCode','org5','false'),('waitIncrementSeconds','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','60'),('waitIncrementSeconds','org1','60'),('waitIncrementSeconds','org2','60'),('waitIncrementSeconds','org3','60'),('waitIncrementSeconds','org4','60'),('waitIncrementSeconds','org5','60'),('webAuthnPolicyAttestationConveyancePreference','org1','not specified'),('webAuthnPolicyAttestationConveyancePreference','org2','not specified'),('webAuthnPolicyAttestationConveyancePreference','org3','not specified'),('webAuthnPolicyAttestationConveyancePreference','org4','not specified'),('webAuthnPolicyAttestationConveyancePreference','org5','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org1','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org2','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org3','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org4','not specified'),('webAuthnPolicyAttestationConveyancePreferencePasswordless','org5','not specified'),('webAuthnPolicyAuthenticatorAttachment','org1','not specified'),('webAuthnPolicyAuthenticatorAttachment','org2','not specified'),('webAuthnPolicyAuthenticatorAttachment','org3','not specified'),('webAuthnPolicyAuthenticatorAttachment','org4','not specified'),('webAuthnPolicyAuthenticatorAttachment','org5','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org1','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org2','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org3','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org4','not specified'),('webAuthnPolicyAuthenticatorAttachmentPasswordless','org5','not specified'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegister','org5','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org1','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org2','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org3','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org4','false'),('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless','org5','false'),('webAuthnPolicyCreateTimeout','org1','0'),('webAuthnPolicyCreateTimeout','org2','0'),('webAuthnPolicyCreateTimeout','org3','0'),('webAuthnPolicyCreateTimeout','org4','0'),('webAuthnPolicyCreateTimeout','org5','0'),('webAuthnPolicyCreateTimeoutPasswordless','org1','0'),('webAuthnPolicyCreateTimeoutPasswordless','org2','0'),('webAuthnPolicyCreateTimeoutPasswordless','org3','0'),('webAuthnPolicyCreateTimeoutPasswordless','org4','0'),('webAuthnPolicyCreateTimeoutPasswordless','org5','0'),('webAuthnPolicyRequireResidentKey','org1','not specified'),('webAuthnPolicyRequireResidentKey','org2','not specified'),('webAuthnPolicyRequireResidentKey','org3','not specified'),('webAuthnPolicyRequireResidentKey','org4','not specified'),('webAuthnPolicyRequireResidentKey','org5','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org1','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org2','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org3','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org4','not specified'),('webAuthnPolicyRequireResidentKeyPasswordless','org5','not specified'),('webAuthnPolicyRpEntityName','org1','keycloak'),('webAuthnPolicyRpEntityName','org2','keycloak'),('webAuthnPolicyRpEntityName','org3','keycloak'),('webAuthnPolicyRpEntityName','org4','keycloak'),('webAuthnPolicyRpEntityName','org5','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org1','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org2','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org3','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org4','keycloak'),('webAuthnPolicyRpEntityNamePasswordless','org5','keycloak'),('webAuthnPolicyRpId','org1',''),('webAuthnPolicyRpId','org2',''),('webAuthnPolicyRpId','org3',''),('webAuthnPolicyRpId','org4',''),('webAuthnPolicyRpId','org5',''),('webAuthnPolicyRpIdPasswordless','org1',''),('webAuthnPolicyRpIdPasswordless','org2',''),('webAuthnPolicyRpIdPasswordless','org3',''),('webAuthnPolicyRpIdPasswordless','org4',''),('webAuthnPolicyRpIdPasswordless','org5',''),('webAuthnPolicySignatureAlgorithms','org1','ES256'),('webAuthnPolicySignatureAlgorithms','org2','ES256'),('webAuthnPolicySignatureAlgorithms','org3','ES256'),('webAuthnPolicySignatureAlgorithms','org4','ES256'),('webAuthnPolicySignatureAlgorithms','org5','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org1','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org2','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org3','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org4','ES256'),('webAuthnPolicySignatureAlgorithmsPasswordless','org5','ES256'),('webAuthnPolicyUserVerificationRequirement','org1','not specified'),('webAuthnPolicyUserVerificationRequirement','org2','not specified'),('webAuthnPolicyUserVerificationRequirement','org3','not specified'),('webAuthnPolicyUserVerificationRequirement','org4','not specified'),('webAuthnPolicyUserVerificationRequirement','org5','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org1','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org2','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org3','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org4','not specified'),('webAuthnPolicyUserVerificationRequirementPasswordless','org5','not specified'),('_browser_header.contentSecurityPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org1','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org2','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org3','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org4','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicy','org5','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',''),('_browser_header.contentSecurityPolicyReportOnly','org1',''),('_browser_header.contentSecurityPolicyReportOnly','org2',''),('_browser_header.contentSecurityPolicyReportOnly','org3',''),('_browser_header.contentSecurityPolicyReportOnly','org4',''),('_browser_header.contentSecurityPolicyReportOnly','org5',''),('_browser_header.referrerPolicy','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','no-referrer'),('_browser_header.referrerPolicy','org1','no-referrer'),('_browser_header.referrerPolicy','org2','no-referrer'),('_browser_header.referrerPolicy','org3','no-referrer'),('_browser_header.referrerPolicy','org4','no-referrer'),('_browser_header.referrerPolicy','org5','no-referrer'),('_browser_header.strictTransportSecurity','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org1','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org2','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org3','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org4','max-age=31536000; includeSubDomains'),('_browser_header.strictTransportSecurity','org5','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','nosniff'),('_browser_header.xContentTypeOptions','org1','nosniff'),('_browser_header.xContentTypeOptions','org2','nosniff'),('_browser_header.xContentTypeOptions','org3','nosniff'),('_browser_header.xContentTypeOptions','org4','nosniff'),('_browser_header.xContentTypeOptions','org5','nosniff'),('_browser_header.xFrameOptions','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','SAMEORIGIN'),('_browser_header.xFrameOptions','org1','SAMEORIGIN'),('_browser_header.xFrameOptions','org2','SAMEORIGIN'),('_browser_header.xFrameOptions','org3','SAMEORIGIN'),('_browser_header.xFrameOptions','org4','SAMEORIGIN'),('_browser_header.xFrameOptions','org5','SAMEORIGIN'),('_browser_header.xRobotsTag','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','none'),('_browser_header.xRobotsTag','org1','none'),('_browser_header.xRobotsTag','org2','none'),('_browser_header.xRobotsTag','org3','none'),('_browser_header.xRobotsTag','org4','none'),('_browser_header.xRobotsTag','org5','none'),('_browser_header.xXSSProtection','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','1; mode=block'),('_browser_header.xXSSProtection','org1','1; mode=block'),('_browser_header.xXSSProtection','org2','1; mode=block'),('_browser_header.xXSSProtection','org3','1; mode=block'),('_browser_header.xXSSProtection','org4','1; mode=block'),('_browser_header.xXSSProtection','org5','1; mode=block');
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
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','jboss-logging'),('org1','jboss-logging'),('org2','jboss-logging'),('org3','jboss-logging'),('org4','jboss-logging'),('org5','jboss-logging');
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
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password',1,1,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89'),('password','password',1,1,'org1'),('password','password',1,1,'org2'),('password','password',1,1,'org3'),('password','password',1,1,'org4'),('password','password',1,1,'org5');
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
INSERT INTO `REALM_SUPPORTED_LOCALES` VALUES ('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','en'),('e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','ja'),('org1','en'),('org1','ja'),('org2','en'),('org2','ja'),('org3','en'),('org3','ja'),('org4','en'),('org4','ja'),('org5','en'),('org5','ja');
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
INSERT INTO `REDIRECT_URIS` VALUES ('03dd2c35-cefc-4eca-8ac6-4d575758ba33','/realms/master/account/*'),('14038227-ac31-459b-a41c-96afd45ed7c2','/*'),('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','/admin/org1/console/*'),('3f908ff7-2e94-4039-9ae0-86aaabf71328','/realms/org5/account/*'),('4a3136c6-14f2-4a86-bc94-4054f607b4be','/*'),('4ea8fc86-7833-4bf8-9080-436026851e62','/*'),('53a487d5-3473-4eac-9726-7cb05343825f','/realms/org4/account/*'),('5426ce24-799e-4e20-a9bd-be6fcadb0577','/realms/org1/account/*'),('5f239fef-3cf1-4583-85e3-904920ced19b','/admin/org4/console/*'),('7c0d7aca-f937-4a45-9828-76f05a36c281','/realms/org3/account/*'),('90437d83-845f-4150-8d81-4ba1d37a7624','/*'),('978959fd-add2-4968-ac7a-da91ea64477a','/realms/org1/account/*'),('9bd19d36-d8d3-4cd2-a4c0-a406e34c8155','/realms/org2/account/*'),('9c738697-99e7-4b1f-8702-6b499e071ce3','/realms/org5/account/*'),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','/admin/org3/console/*'),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','/realms/org2/account/*'),('b04fc239-de8c-43f6-9432-cae3227487db','/realms/master/account/*'),('bf8007e6-1073-4601-a0c9-08cade1429a7','/*'),('c6babb0a-496d-4e92-85c6-611beae756a7','/admin/master/console/*'),('c9341f2f-91c3-40b2-ac4b-6a1465761c3c','/*'),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','/admin/org5/console/*'),('dad4e868-b37f-487c-a2ce-4167b11eee94','/realms/org3/account/*'),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','/admin/org2/console/*'),('f1d6454e-446c-46d9-851d-96c5b7dc2028','/realms/org4/account/*');
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
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('02c79dde-a0c1-4faf-89a1-6149951f1dbf','VERIFY_EMAIL','Verify Email','org1',1,0,'VERIFY_EMAIL',50),('18aaf7b9-61a2-453c-a750-9196f3956024','update_user_locale','Update User Locale','org1',1,0,'update_user_locale',1000),('19aa83b1-8890-474d-995d-36d836fd0bd0','delete_credential','Delete Credential','org5',1,0,'delete_credential',100),('1b37209d-b6f7-4332-b4ee-3248af8c4612','CONFIGURE_TOTP','Configure OTP','org2',1,0,'CONFIGURE_TOTP',10),('1c5b5e01-f241-4258-acba-3fe42b45871f','UPDATE_PROFILE','Update Profile','org3',1,0,'UPDATE_PROFILE',40),('20ff8485-1b0a-4b95-8c65-a7b90e3ef241','webauthn-register-passwordless','Webauthn Register Passwordless','org1',1,0,'webauthn-register-passwordless',80),('267c3dd2-e912-44a2-ab51-aabd7a82474e','VERIFY_PROFILE','Verify Profile','org4',1,0,'VERIFY_PROFILE',90),('26985426-a134-4b10-a324-df35531f3b10','VERIFY_PROFILE','Verify Profile','org5',1,0,'VERIFY_PROFILE',90),('2a49a4e4-a3a7-49ed-b7a5-983a13e25b76','UPDATE_PROFILE','Update Profile','org5',1,0,'UPDATE_PROFILE',40),('2c6e9e08-7963-4e13-bc55-7c2e4a6e342d','webauthn-register','Webauthn Register','org4',1,0,'webauthn-register',70),('2d63fb93-07a6-4070-8e32-88736599cd5b','delete_credential','Delete Credential','org1',1,0,'delete_credential',100),('2dee5c68-3654-432d-917e-b95374f1b4cd','UPDATE_PROFILE','Update Profile','org1',1,0,'UPDATE_PROFILE',40),('2f8e6a39-5219-45aa-aa1f-501963fc44d4','webauthn-register-passwordless','Webauthn Register Passwordless','org4',1,0,'webauthn-register-passwordless',80),('3e755d13-1405-46f7-b16c-e8467907899c','UPDATE_PASSWORD','Update Password','org3',1,0,'UPDATE_PASSWORD',30),('3ff14ae5-dcdb-4fb2-8674-cc756ac0c3f4','delete_credential','Delete Credential','org4',1,0,'delete_credential',100),('4011d98f-3989-4ec1-8b91-11aa66d8d810','VERIFY_PROFILE','Verify Profile','org2',1,0,'VERIFY_PROFILE',90),('46c593c3-c29f-49ed-b4ed-f2cca71fb52e','delete_credential','Delete Credential','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'delete_credential',100),('46fa0058-12c5-4db5-b306-79e27d557d51','delete_credential','Delete Credential','org3',1,0,'delete_credential',100),('4a6c1727-83f1-4ee8-801a-d5187ae17445','CONFIGURE_TOTP','Configure OTP','org5',1,0,'CONFIGURE_TOTP',10),('4aa0594a-c200-40e8-bb44-1918af4c2f51','delete_account','Delete Account','org4',0,0,'delete_account',60),('4b622d1d-e5f4-4ef6-ab8c-c8ebabec5e32','delete_account','Delete Account','org3',0,0,'delete_account',60),('5224d59b-14c4-41f6-8598-1ae38cc232f8','webauthn-register-passwordless','Webauthn Register Passwordless','org2',1,0,'webauthn-register-passwordless',80),('5a31c3f0-5789-4742-9526-39a1d06d5076','UPDATE_PROFILE','Update Profile','org4',1,0,'UPDATE_PROFILE',40),('61ee0794-f9af-4620-ab6f-0a2e391b2de5','CONFIGURE_TOTP','Configure OTP','org4',1,0,'CONFIGURE_TOTP',10),('64cee32a-ed8f-4a6d-8a12-699d7d176eba','VERIFY_EMAIL','Verify Email','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'VERIFY_EMAIL',50),('66fed2f5-c217-4e79-a8e5-d730a9324b03','webauthn-register-passwordless','Webauthn Register Passwordless','org5',1,0,'webauthn-register-passwordless',80),('6ca25250-af8a-40ca-964d-befdaaf08d0f','delete_account','Delete Account','org2',0,0,'delete_account',60),('6d9f0b94-4dd6-48e2-a3c9-a471988fbd08','webauthn-register','Webauthn Register','org1',1,0,'webauthn-register',70),('70d09a6b-c098-41d9-bb2b-0d4d4326c30b','UPDATE_PASSWORD','Update Password','org4',1,0,'UPDATE_PASSWORD',30),('74f7da3c-f7e4-4b06-945d-88f2ff0b4ad8','UPDATE_PASSWORD','Update Password','org2',1,0,'UPDATE_PASSWORD',30),('79d721ec-2d5d-4bb9-b8ee-9f1bc7e9bf84','VERIFY_EMAIL','Verify Email','org5',1,0,'VERIFY_EMAIL',50),('7ac77e09-14c0-4e38-94a5-52de8c095059','UPDATE_PROFILE','Update Profile','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'UPDATE_PROFILE',40),('7f1b7ad8-77aa-4e61-a9ab-862e77df729f','update_user_locale','Update User Locale','org2',1,0,'update_user_locale',1000),('803c014d-01bc-457c-b604-a51dce3acf9f','webauthn-register','Webauthn Register','org3',1,0,'webauthn-register',70),('85279446-33cc-419d-a27e-b6e476fa66a8','TERMS_AND_CONDITIONS','Terms and Conditions','org4',0,0,'TERMS_AND_CONDITIONS',20),('87f3be65-87ee-48ea-b98f-61028f38d173','delete_credential','Delete Credential','org2',1,0,'delete_credential',100),('88d54925-0a63-45a2-afb3-0f1a601b5f2b','VERIFY_EMAIL','Verify Email','org3',1,0,'VERIFY_EMAIL',50),('92528870-5af1-4f1b-8fbe-ad1675acc4a0','CONFIGURE_TOTP','Configure OTP','org1',1,0,'CONFIGURE_TOTP',10),('97594b79-166c-4ade-a7ea-f35d2efe1dde','webauthn-register','Webauthn Register','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'webauthn-register',70),('98a59d1b-3963-41c0-bc3c-3373b1990f7e','TERMS_AND_CONDITIONS','Terms and Conditions','org3',0,0,'TERMS_AND_CONDITIONS',20),('9faa2d2c-87ba-4ee6-aa7e-ae7d78aef561','update_user_locale','Update User Locale','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'update_user_locale',1000),('abb51c72-4092-41e7-b70b-4f3d2b6325c7','UPDATE_PROFILE','Update Profile','org2',1,0,'UPDATE_PROFILE',40),('b354bf34-4cd3-4651-b849-a981aa9dd255','UPDATE_PASSWORD','Update Password','org1',1,0,'UPDATE_PASSWORD',30),('b5632fe4-8c3d-49a0-abcc-05e312baa480','delete_account','Delete Account','org5',0,0,'delete_account',60),('b91ba4f1-974b-482d-8bc0-6dab7fb5dc2c','update_user_locale','Update User Locale','org4',1,0,'update_user_locale',1000),('be5d3067-7123-4efc-884b-ed2be35287c5','VERIFY_EMAIL','Verify Email','org2',1,0,'VERIFY_EMAIL',50),('becaad65-8f90-431a-81bd-b531521ca45a','webauthn-register-passwordless','Webauthn Register Passwordless','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'webauthn-register-passwordless',80),('bf6a93c1-4cd6-4d04-bee2-2b9af4c31166','webauthn-register','Webauthn Register','org2',1,0,'webauthn-register',70),('c46b71ba-6cc5-47f3-884d-238b69bc17cc','VERIFY_PROFILE','Verify Profile','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'VERIFY_PROFILE',90),('c4b37c7d-3c2f-465a-857d-e9ca741ee338','VERIFY_EMAIL','Verify Email','org4',1,0,'VERIFY_EMAIL',50),('ce290c1f-9f34-452c-b53f-f345b72e4fa4','CONFIGURE_TOTP','Configure OTP','org3',1,0,'CONFIGURE_TOTP',10),('d08c546f-efd0-4eb1-9571-f44d5aca5af0','UPDATE_PASSWORD','Update Password','org5',1,0,'UPDATE_PASSWORD',30),('d0e556be-0a23-405b-8110-b6736c402274','update_user_locale','Update User Locale','org5',1,0,'update_user_locale',1000),('d8974514-468e-4de4-bdaf-88796399c757','CONFIGURE_TOTP','Configure OTP','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'CONFIGURE_TOTP',10),('d93649bc-7729-4d4c-8e83-c9a8755fe27c','webauthn-register','Webauthn Register','org5',1,0,'webauthn-register',70),('d9f4089d-e040-408c-ab51-b45fe74e2a8c','update_user_locale','Update User Locale','org3',1,0,'update_user_locale',1000),('dc96604f-9d80-43c2-9d3d-204c8bcc9d04','delete_account','Delete Account','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,0,'delete_account',60),('dd9effd6-052e-4271-9792-f95943b29b6e','TERMS_AND_CONDITIONS','Terms and Conditions','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',0,0,'TERMS_AND_CONDITIONS',20),('e28a1509-0d86-4de8-bd83-e74db334e262','UPDATE_PASSWORD','Update Password','e443a826-d3e3-4f80-b3ab-0dbcee3cfe89',1,0,'UPDATE_PASSWORD',30),('e2dc727a-1e28-4ed1-9c4e-93d0ca3d690b','webauthn-register-passwordless','Webauthn Register Passwordless','org3',1,0,'webauthn-register-passwordless',80),('e51649c6-cdc6-4fa1-a4ce-dd2051f48c6a','VERIFY_PROFILE','Verify Profile','org1',1,0,'VERIFY_PROFILE',90),('ea1e90ba-b272-4347-b33f-59638b7fde69','VERIFY_PROFILE','Verify Profile','org3',1,0,'VERIFY_PROFILE',90),('eb54f377-5dc8-4e47-acfb-9a4046d16e04','TERMS_AND_CONDITIONS','Terms and Conditions','org5',0,0,'TERMS_AND_CONDITIONS',20),('ee717032-c7dc-4042-a349-bc4c94eb53ed','TERMS_AND_CONDITIONS','Terms and Conditions','org2',0,0,'TERMS_AND_CONDITIONS',20),('f49fc6b2-a411-45c3-9da5-c0d7cb2af74a','TERMS_AND_CONDITIONS','Terms and Conditions','org1',0,0,'TERMS_AND_CONDITIONS',20),('f85136c7-0354-4d3b-a1e7-eb9f678bbc08','delete_account','Delete Account','org1',0,0,'delete_account',60);
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
INSERT INTO `ROLE_ATTRIBUTE` VALUES ('09439eab-4a36-4fa5-a25b-25b0c40022e1','43df02bc-cc74-478e-8284-f01211b6a567','kind','workspace'),('0bee40ed-1c3d-43e6-badb-57e3b5c2b630','3e104eaf-d97f-484c-a3be-f92976dc7edf','kind','workspace'),('0df40923-35e6-4d48-906b-bf15886067e7','df3bccbd-b3fe-4a46-8427-00a067460f50','kind','workspace'),('0f72b805-b320-4c58-862d-5435bcaf9139','04100756-1e7d-44d4-b962-ba6a56fe6767','kind','workspace'),('0fa79387-a8c3-4b0d-9be9-4474260a37cb','34c0e69b-62a6-4a7d-9668-7bcf7169d77e','kind','workspace'),('1dcfa488-6e3d-4046-af97-47d97844dbb6','bee2a686-d0d3-43bb-b7af-f7c4476e9e3c','kind','workspace'),('24f96694-3c89-497a-bfdf-d8ba8488f42c','8cdc9af1-3d5d-41b2-817b-8bda51ddfb88','kind','workspace'),('280f63d2-675a-420c-8a59-55c0bd979686','3dff97c9-eff7-460f-a1ed-54b8ffe9e170','kind','workspace'),('2bf8ddb7-a73c-4d3d-91d6-6f9db26a7311','87d602d7-af8c-4153-81f4-4ba1f9fc4b9d','kind','workspace'),('2d10c19b-a492-4510-935d-ff12a79951ad','aee67f07-ab58-4812-a562-434e55c65fc1','kind','organization'),('2db295a3-e943-4a04-9b17-e8b124c1dfcc','8fe75922-4d78-47e6-96f4-03bae30d28f8','kind','workspace'),('2e77c800-4d68-46fb-8e12-c688aa123dc5','6a9a06bb-daec-4c34-b783-939e744be9ee','kind','workspace'),('37dcdf5a-588b-4ff6-a803-da20c9bb9c73','f730b904-7f32-4fdd-b710-007981b46952','kind','workspace'),('3a874364-b057-442c-b897-359cdc9c3550','eb845f74-1eaa-4793-90dc-3f25d9490585','kind','workspace'),('3f70d3fa-ea7d-479d-81cd-734b5daec8da','b464a95d-811a-4219-8dc6-5f2b591a52b0','kind','organization'),('43d1f5c5-a018-4b47-ac28-34bec9168781','50de228a-2834-4b24-9e00-a3a29b833e0a','kind','organization'),('4510ed07-0333-4d33-89cc-50cd2018f47a','d275e6bb-b38c-4fef-bd01-354188808cef','kind','workspace'),('4d43c547-c506-4294-bd3a-47b60880aa34','f59b0858-36dd-40d1-929f-e4cbe9b0c485','kind','workspace'),('568925d7-e17d-46cc-9858-72d8eeb8742a','fc23e83e-723b-4a0b-a1e0-e63d3763fca2','kind','organization'),('5719b680-9801-4487-949e-81e4e2462804','e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','kind','organization'),('58785e9f-7fdf-49cc-9b9f-bdfd5ba8d78c','9caedc92-aa3c-4647-a65d-4f1a5a1c09f4','kind','workspace'),('5c6c97e0-ce62-4491-a09a-078442807ab9','111e6d2b-79b3-4c23-99a6-8edb1c9b2711','kind','organization'),('6083b643-323d-4b5e-a228-2f0fc8cda4a4','ca336d5c-e351-4e7c-bf73-f4136c7c6559','kind','workspace'),('63398a91-2448-447d-a538-8a4627e52dae','25120deb-75c0-4c2f-985f-c3986bff28a8','kind','workspace'),('6f34a01d-13d1-42df-891a-d867dbf9ecfb','28479fc7-b1ce-4bf3-b03b-88d963814a08','kind','workspace'),('7058426e-015e-433b-82c9-23801b68fcbf','163d20da-927d-45c1-8421-117463e8c6d3','kind','workspace'),('730bbac2-f4a1-4081-8a6f-2b38a2eed870','04fbe393-a4ec-48da-9919-cda7f2759e62','kind','workspace'),('7b15739e-5302-4e71-a747-221c57321000','255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','kind','organization'),('7bcee797-7f84-474a-93b0-943d41cc76b7','f9e2ff77-aa9a-4be2-b30e-248f4d0df460','kind','workspace'),('7d15f096-0d73-4ca2-a9cb-5736d11a1d67','cec4a30c-a82e-4b2d-bdbd-befdc1a7e640','kind','workspace'),('7f7682fe-dde1-4cab-a532-ec546fb02070','1c9e8042-9356-4e23-9d50-524d93e97774','kind','workspace'),('838751dd-8fe4-4460-a997-6b69d1ac2c01','fca66cb0-9aef-49ef-94e7-fd2fdc2fd937','kind','workspace'),('88175c3d-9cac-4ad3-9d7a-49eef3a1d5c6','4cccba60-db70-4ee5-8dc3-ac267c20078f','kind','workspace'),('8bd47e3c-460c-4365-a3a7-ca2554fd0b3b','4a70a4d2-3d44-46f6-881d-0f80fae3081f','kind','organization'),('8d306b3e-7eac-4777-b3e6-f186bf3543f2','b8dac5b9-2635-4455-9272-5613e7045db6','kind','workspace'),('8d71e97c-4585-43d3-8d20-f49cfefafc0c','87daeb5c-c932-45e4-9d0d-2adfd04df822','kind','workspace'),('90c8be48-5e8e-4c8a-915f-c7276d3eab7d','276429fd-071d-4ccd-b174-7c762ad7bbf3','kind','workspace'),('956456bb-d3be-44a9-a98c-dd30a092a744','01d071b7-96f2-4b75-b8e3-015c77ab8992','kind','organization'),('977c59f8-4eb4-4cc1-86ef-0bbb42bfc73e','eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c','kind','workspace'),('9acba66b-dd4d-497e-9b5d-3d0c9c3c5843','4154885f-309f-4cac-819c-5e628120ab02','kind','workspace'),('a5a0b6c7-959b-4922-8cde-310abf8d72ae','0f32299b-229b-481c-ae28-7c29856c2243','kind','organization'),('a88f29c5-5cb4-495d-b3ee-a9dd09c4b11e','03e8a3e3-a1d1-4fe5-9ade-1f795e544025','kind','workspace'),('ad70375e-f1c2-4525-ab1d-a0edcb3c11f7','73c81309-ffbc-440a-8a8d-5d96296c4b91','kind','workspace'),('b1651acd-adba-4967-bb42-a163f5e6c50d','1e57afd7-234b-4ee2-803c-a70a653d345a','kind','workspace'),('b76b8213-3424-425b-82f0-3baed86a92f1','674ace4b-22b8-4b66-951d-978cdfc8b65b','kind','organization'),('bab28824-4b8d-4522-85da-6d16e7d2ba9e','567c6767-75a3-4aef-b0dc-adbcd58d3301','kind','workspace'),('bfde94c8-577b-48b7-abc8-a9f3855b0b62','795ffef6-c616-4ca9-ba78-b8e6a5ec9ebb','kind','workspace'),('c1f10819-1866-4193-9348-e8b236988cf7','b0ff0e93-badb-4cf3-b6d5-c7d774fefe05','kind','workspace'),('c4403bc2-0957-46d1-a10b-fa03da50b837','83405647-5d8b-4c67-ad81-fddb727991b7','kind','workspace'),('c4fb9b61-c74e-4129-8c78-c9b97522a854','d8e96ecc-e720-4374-9fca-644d2c6be4b4','kind','workspace'),('d19194a1-25cf-4210-a050-68ae7864c078','5f3482b1-ebfe-439a-986a-0f040d65c59e','kind','workspace'),('da9756fb-e0bc-4607-8046-ccc007e0c6f5','6716b438-3f81-43bc-b301-36d43b4fb199','kind','workspace'),('dc57e5e0-20bf-4a1e-b034-282cc24a5578','d0a07957-e9f8-458e-af12-83c4fa187b7f','kind','organization'),('e18f83e2-8441-427d-a1f0-f379828549ac','56fe696a-5d7e-4782-93a1-4b0e74c0ceb7','kind','workspace'),('e7404b8a-1536-4666-88f6-6d3a0d667b1d','46a8fa55-7d31-4661-9036-39042691c8dd','kind','workspace'),('f200c8f0-1bba-4642-ac62-25bf25fc78d2','5c5f13eb-8af4-4242-9cbe-06a906fc0954','kind','organization'),('f384346e-645d-4115-aceb-657f7e58a3bb','caf2899b-84e5-482c-aecb-2b57983255d2','kind','organization'),('f443fcee-ea3d-43bd-8c5c-844c62a9bb0c','0cfdad65-878f-47b0-978f-0c0be8862f58','kind','organization'),('fb85c6bc-76d7-4442-9935-22ffe2876b46','91b17ae5-78ce-49c6-81ec-dd904cf17ede','kind','workspace'),('fd337141-30cc-46c7-b11b-8fd7fa9035e0','3fb6d514-9b93-4051-9103-fd7854d46c3f','kind','workspace');
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
INSERT INTO `SCOPE_MAPPING` VALUES ('03dd2c35-cefc-4eca-8ac6-4d575758ba33','dd0394d8-2cce-403d-a894-5e9a154eca58'),('03dd2c35-cefc-4eca-8ac6-4d575758ba33','f22eb848-4b57-4548-b5d4-5bbfb1eb5a35'),('3f908ff7-2e94-4039-9ae0-86aaabf71328','146c1a8f-9093-43fd-b720-e61c60f7c4d0'),('3f908ff7-2e94-4039-9ae0-86aaabf71328','f68e8d47-d4b8-4898-801c-0a5834980dd5'),('53a487d5-3473-4eac-9726-7cb05343825f','3624663b-3a98-4364-9c64-96a5a965de6b'),('53a487d5-3473-4eac-9726-7cb05343825f','8d2178a0-6c3a-40c9-85ea-80f88dba8ee7'),('5426ce24-799e-4e20-a9bd-be6fcadb0577','9019c1ff-cac9-4b92-a558-a5ae2a8fcb19'),('5426ce24-799e-4e20-a9bd-be6fcadb0577','bed06666-f56e-4e6d-ae08-0fa1a8b56605'),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','14853a62-53de-4d29-8be5-5d0c052a9c08'),('acd18a4f-f89a-4ffb-941b-7d4bd8033261','1f6e765a-f981-4419-b948-3c877f0518c6'),('dad4e868-b37f-487c-a2ce-4167b11eee94','aaa47242-610e-47b6-be42-d83567cf8742'),('dad4e868-b37f-487c-a2ce-4167b11eee94','d3334f5e-5a35-4aee-bd82-40e3a4731106');
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
INSERT INTO `USER_ENTITY` VALUES ('11a46a7a-643a-4634-bfc3-a87a266bcaa9','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org4','admin',1718092494260,NULL,0),('23c294c1-8cd4-43ac-8509-e202ce9ebd0a',NULL,'88e7cfff-33da-4ef7-a824-7141db91c93d',0,1,NULL,NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','service-account-_platform',1718092296748,'e0462c55-5a6f-4483-a3e0-f29f62c49372',0),('33341728-0658-4dda-8fc7-7b346e5714e7','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org5','admin',1718092531262,NULL,0),('4ab8d178-a767-43b9-9ec4-c20124c869d2',NULL,'d421569b-6797-4861-ba18-c07b067f0cc6',0,1,NULL,NULL,NULL,'org3','service-account-org3-workspaces',1718092456288,'04787d7f-e0b5-4795-85b0-5eec4a7b36b4',0),('4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org3','admin',1718092458319,NULL,0),('5b8bcf0c-19a5-42a9-bf39-5a8bacef879a',NULL,'a8443ec0-93fc-4b16-970e-7762678ce013',0,1,NULL,NULL,NULL,'e443a826-d3e3-4f80-b3ab-0dbcee3cfe89','admin',1718092288267,NULL,0),('8a4b670a-202a-42fe-b0d7-4afa0f4e3c19',NULL,'e636c73c-85f0-4db7-9f6c-8a9de63ad45f',0,1,NULL,NULL,NULL,'org4','service-account-org4-workspaces',1718092491996,'87a260f4-ece5-4eea-94de-ba31720af864',0),('8c9ee063-5b65-4d8e-9661-ecc6d294daa4','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org1','admin',1718092371012,NULL,0),('91fbba5b-6336-42f8-882f-23786d9a50b1',NULL,'606ced2e-8214-44f8-84d4-0f2ba816faf9',0,1,NULL,NULL,NULL,'org5','service-account-org5-workspaces',1718092529458,'48aa244c-1748-48f0-b78d-628e5aa21076',0),('cea41291-4b60-4594-b58d-65280e5ca389','admin@example.com','admin@example.com',0,1,NULL,'admin','admin','org2','admin',1718092419508,NULL,0),('d04e402c-1ddd-471d-8e87-d6d3185c8755',NULL,'0c86b5da-a72b-4e22-90e3-40ca680a6b66',0,1,NULL,NULL,NULL,'org2','service-account-org2-workspaces',1718092417249,'a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe',0),('d7f9dae2-b8f8-4113-92a8-febc659810d4',NULL,'faba49e9-72e9-4eaa-9c8a-28f853cfc8d7',0,1,NULL,NULL,NULL,'org1','service-account-org1-workspaces',1718092368235,'75799957-807f-4039-915e-f274934b3f50',0);
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
INSERT INTO `USER_ROLE_MAPPING` VALUES ('04100756-1e7d-44d4-b962-ba6a56fe6767','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('04fbe393-a4ec-48da-9919-cda7f2759e62','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('0f32299b-229b-481c-ae28-7c29856c2243','33341728-0658-4dda-8fc7-7b346e5714e7'),('255a2b74-ef2e-46b6-aca4-a7d6eb2cc564','cea41291-4b60-4594-b58d-65280e5ca389'),('3311a7b8-3f95-4aea-aee4-832fe3425678','33341728-0658-4dda-8fc7-7b346e5714e7'),('3311a7b8-3f95-4aea-aee4-832fe3425678','91fbba5b-6336-42f8-882f-23786d9a50b1'),('34f4733d-e807-4c2e-b859-5f010d03e734','91fbba5b-6336-42f8-882f-23786d9a50b1'),('43df02bc-cc74-478e-8284-f01211b6a567','33341728-0658-4dda-8fc7-7b346e5714e7'),('56fe696a-5d7e-4782-93a1-4b0e74c0ceb7','33341728-0658-4dda-8fc7-7b346e5714e7'),('66ec0f70-30ea-43ff-a2f6-79b18643d858','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('66ec0f70-30ea-43ff-a2f6-79b18643d858','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19'),('6716b438-3f81-43bc-b301-36d43b4fb199','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('6a9a06bb-daec-4c34-b783-939e744be9ee','cea41291-4b60-4594-b58d-65280e5ca389'),('73c81309-ffbc-440a-8a8d-5d96296c4b91','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('8300c9ca-7fa4-4182-ae75-6566136a534a','23c294c1-8cd4-43ac-8509-e202ce9ebd0a'),('8300c9ca-7fa4-4182-ae75-6566136a534a','5b8bcf0c-19a5-42a9-bf39-5a8bacef879a'),('87daeb5c-c932-45e4-9d0d-2adfd04df822','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('8fe75922-4d78-47e6-96f4-03bae30d28f8','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('91b17ae5-78ce-49c6-81ec-dd904cf17ede','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('93c290a1-2519-475a-91dc-24d43bf42a85','d04e402c-1ddd-471d-8e87-d6d3185c8755'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','23c294c1-8cd4-43ac-8509-e202ce9ebd0a'),('9679ade1-06b9-405c-bd3b-e13db2f5a11a','5b8bcf0c-19a5-42a9-bf39-5a8bacef879a'),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','4ab8d178-a767-43b9-9ec4-c20124c869d2'),('a1d3c397-ba0b-4be8-9c32-57a89efc84ef','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('ac7e6a92-7dac-472e-b18b-26c631651fe6','8a4b670a-202a-42fe-b0d7-4afa0f4e3c19'),('aee67f07-ab58-4812-a562-434e55c65fc1','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('b0ff0e93-badb-4cf3-b6d5-c7d774fefe05','cea41291-4b60-4594-b58d-65280e5ca389'),('ca336d5c-e351-4e7c-bf73-f4136c7c6559','33341728-0658-4dda-8fc7-7b346e5714e7'),('d0a07957-e9f8-458e-af12-83c4fa187b7f','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','cea41291-4b60-4594-b58d-65280e5ca389'),('d1c1cecf-f33f-44b8-b528-f8a2a5bd35d4','d04e402c-1ddd-471d-8e87-d6d3185c8755'),('d275e6bb-b38c-4fef-bd01-354188808cef','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('d945b46e-7619-4b77-8219-5537add38b0d','4ab8d178-a767-43b9-9ec4-c20124c869d2'),('e60ccc6e-d7f0-45f6-8ba6-541c3b3ed13d','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('e89caf85-564d-44d5-9866-b508c09d845a','d7f9dae2-b8f8-4113-92a8-febc659810d4'),('e9891926-bd5d-4586-b440-8ba27ef6f84d','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('e9891926-bd5d-4586-b440-8ba27ef6f84d','d7f9dae2-b8f8-4113-92a8-febc659810d4'),('eda68ff1-b6f1-43ec-a3da-c2b3ab0be34c','cea41291-4b60-4594-b58d-65280e5ca389'),('f9e2ff77-aa9a-4be2-b30e-248f4d0df460','8c9ee063-5b65-4d8e-9661-ecc6d294daa4');
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
INSERT INTO `WEB_ORIGINS` VALUES ('32dba29e-9a85-4dcf-9428-1e0b1a4d2811','+'),('5f239fef-3cf1-4583-85e3-904920ced19b','+'),('a52b1b6d-48b2-4b0f-b008-a87b04d84df6','+'),('c6babb0a-496d-4e92-85c6-611beae756a7','+'),('d3b91fcf-5c12-4d48-80de-4063a307d7dc','+'),('ebd36dcf-d7c2-4e66-9099-a0ca5de7c0ef','+');
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
INSERT INTO `M_SYSTEM_CONFIG` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2024-06-11 16:51:50','dummy','2024-06-11 16:51:50','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2024-06-11 16:51:40','dummy','2024-06-11 16:51:40','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2024-06-11 16:51:40','dummy','2024-06-11 16:51:40','dummy');
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
INSERT INTO `T_MAINTENANCE_MODE` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2024-06-11 16:51:38.000000',NULL),('2','DATA_UPDATE_STOP','0','2024-06-11 16:51:38.000000',NULL);
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
INSERT INTO `T_ORGANIZATION` VALUES ('org1','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-11 16:52:44','unittest-user01','2024-06-11 16:52:58','unittest-user01'),('org2','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-11 16:53:33','unittest-user01','2024-06-11 16:53:41','unittest-user01'),('org3','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-11 16:54:13','unittest-user01','2024-06-11 16:54:20','unittest-user01'),('org4','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-11 16:54:49','unittest-user01','2024-06-11 16:54:56','unittest-user01'),('org5','name of organization','{\"status\": \"Organization Create Complete\", \"options\": {}, \"ext_options\": {\"options_ita\": {\"drivers\": {\"terraform_cloud_ep\": false, \"terraform_cli\": false, \"ci_cd\": false, \"oase\": false}}}}','2024-06-11 16:55:27','unittest-user01','2024-06-11 16:55:32','unittest-user01');
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
INSERT INTO `T_ORGANIZATION_DB` VALUES ('org1','unittest-platform-db',3306,'PF_ORG_VI21FVSHA4X1VLNYH0J7','PF_ORG_VI21FVSHA4X1VLNYH0J7','Uh6X3v+jmN/JrfJgGxJT3kau8nKeS4Y0Sg7TB4+zjeJ6QwMN6zw+pJAbMVos3L5c','2024-06-11 16:52:52','unittest-user01','2024-06-11 16:56:03','unittest-user01'),('org2','unittest-platform-db',3306,'PF_ORG_HVGK7HH1JNMAQ3YEVIZ8','PF_ORG_HVGK7HH1JNMAQ3YEVIZ8','7GFDZ6pZFwH1m71AO1/WhHbnzvDpa0YLIgI5a+LZ3ws1N+tAUeABwjz49oCzXv1Z','2024-06-11 16:53:40','unittest-user01','2024-06-11 16:56:03','unittest-user01'),('org3','unittest-platform-db',3306,'PF_ORG_CNCKG6LO69KLBX8XV6HW','PF_ORG_CNCKG6LO69KLBX8XV6HW','4GmbJzekiBkTiTKIjXGvnmVCoxzxEVj8NRyKhbcwjDjwEAJlNmkODqOEcvSXSQxt','2024-06-11 16:54:19','unittest-user01','2024-06-11 16:56:03','unittest-user01'),('org4','unittest-platform-db',3306,'PF_ORG_UORX2JNX4VLZ1SXXRDQ5','PF_ORG_UORX2JNX4VLZ1SXXRDQ5','W4FnB0I2x6WDO1WaKFdIE+9zPaBmGTHco1C9tlAqphwtuUpbnIz2nH96qRyNAH2X','2024-06-11 16:54:55','unittest-user01','2024-06-11 16:56:03','unittest-user01'),('org5','unittest-platform-db',3306,'PF_ORG_6IS32WB50ZQ24TZ1OKZV','PF_ORG_6IS32WB50ZQ24TZ1OKZV','P3XtGizgQWavG4gvj2HDh/4AuHD9LgM2WKxCAoMtBsqWvju0nfmIM4baQQJotl7j','2024-06-11 16:55:32','unittest-user01','2024-06-11 16:56:03','unittest-user01');
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
INSERT INTO `T_PLAN` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2024-06-11 16:51:35','system','2024-06-11 16:51:35','system');
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
INSERT INTO `T_PLAN_ITEM` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2024-06-11 16:51:50','dummy','2024-06-11 16:51:50','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2024-06-11 16:51:35','system','2024-06-11 16:51:39','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2024-06-11 16:51:35','system','2024-06-11 16:51:39','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2024-06-11 16:51:35','system','2024-06-11 16:51:39','system');
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
INSERT INTO `T_PLAN_LIMIT` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2024-06-11 16:51:50','dummy','2024-06-11 16:51:50','dummy'),('_default','platform.roles',1000,'2024-06-11 16:51:35','system','2024-06-11 16:51:35','system'),('_default','platform.users',10000,'2024-06-11 16:51:35','system','2024-06-11 16:51:35','system'),('_default','platform.workspaces',100,'2024-06-11 16:51:35','system','2024-06-11 16:51:35','system');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PLATFORM_MIGRATION_HISTORY`
--

LOCK TABLES `T_PLATFORM_MIGRATION_HISTORY` WRITE;
/*!40000 ALTER TABLE `T_PLATFORM_MIGRATION_HISTORY` DISABLE KEYS */;
INSERT INTO `T_PLATFORM_MIGRATION_HISTORY` VALUES (1,'1.3.0','START',NULL,'2024-06-11 16:51:34','1.8.2','2024-06-11 16:51:34','1.8.2'),(2,'1.3.0','SUCCEED',NULL,'2024-06-11 16:51:37','1.8.2','2024-06-11 16:51:37','1.8.2'),(3,'1.5.0','START',NULL,'2024-06-11 16:51:37','1.8.2','2024-06-11 16:51:37','1.8.2'),(4,'1.5.0','SUCCEED',NULL,'2024-06-11 16:51:38','1.8.2','2024-06-11 16:51:38','1.8.2'),(5,'1.5.2','START',NULL,'2024-06-11 16:51:38','1.8.2','2024-06-11 16:51:38','1.8.2'),(6,'1.5.2','SUCCEED',NULL,'2024-06-11 16:51:38','1.8.2','2024-06-11 16:51:38','1.8.2'),(7,'1.6.0','START',NULL,'2024-06-11 16:51:38','1.8.2','2024-06-11 16:51:38','1.8.2'),(8,'1.6.0','SUCCEED',NULL,'2024-06-11 16:51:39','1.8.2','2024-06-11 16:51:39','1.8.2'),(9,'1.7.0','START',NULL,'2024-06-11 16:51:39','1.8.2','2024-06-11 16:51:39','1.8.2'),(10,'1.7.0','SUCCEED',NULL,'2024-06-11 16:51:39','1.8.2','2024-06-11 16:51:39','1.8.2'),(11,'1.8.0','START',NULL,'2024-06-11 16:51:39','1.8.2','2024-06-11 16:51:39','1.8.2'),(12,'1.8.0','SUCCEED',NULL,'2024-06-11 16:51:39','1.8.2','2024-06-11 16:51:39','1.8.2'),(13,'1.8.1','START',NULL,'2024-06-11 16:51:39','1.8.2','2024-06-11 16:51:39','1.8.2'),(14,'1.8.1','SUCCEED',NULL,'2024-06-11 16:51:40','1.8.2','2024-06-11 16:51:40','1.8.2'),(15,'1.8.2','START',NULL,'2024-06-11 16:51:40','1.8.2','2024-06-11 16:51:40','1.8.2'),(16,'1.8.2','SUCCEED',NULL,'2024-06-11 16:51:40','1.8.2','2024-06-11 16:51:40','1.8.2');
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
INSERT INTO `T_PLATFORM_PRIVATE` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"e0462c55-5a6f-4483-a3e0-f29f62c49372\", \"TOKEN_CHECK_CLIENT_SECRET\": \"XdMABqEi1HOkav2jX6lohhCxHxtGD1im\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"25896459-9af1-4f23-81b3-e5ad98e44547\"}','2024-06-11 16:51:37','system','2024-06-11 16:51:37','system');
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
INSERT INTO `T_PLATFORM_VERSION` VALUES (1,'1.8.2','2024-06-11 16:50:09','system','2024-06-11 16:51:40','1.8.2');
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
-- Current Database: `PF_ORG_VI21FVSHA4X1VLNYH0J7`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_VI21FVSHA4X1VLNYH0J7` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_VI21FVSHA4X1VLNYH0J7`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org1\", \"USER_TOKEN_CLIENT_ID\": \"14038227-ac31-459b-a41c-96afd45ed7c2\", \"USER_TOKEN_CLIENT_SECRET\": \"Oe5PnoNUWH9EiIuvoZxQ6X4V1L8lEnng\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org1-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"75799957-807f-4039-915e-f274934b3f50\", \"INTERNAL_API_CLIENT_SECRET\": \"yJyGT00ZQz9MSYl7xgeUsjZsaXPHReGc\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org1-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"629de169-8395-43bf-9455-c08bd198dbde\", \"TOKEN_CHECK_CLIENT_SECRET\": \"nVYZYPVwgREKtzIwevRGoubSqpqg3ZFS\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org1-api\", \"API_TOKEN_CLIENT_ID\": \"71003c68-7412-47b5-9631-296e81eb93c1\"}','2024-06-11 16:52:52','unittest-user01','2024-06-11 16:52:52','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:52:59','8c9ee063-5b65-4d8e-9661-ecc6d294daa4','2024-06-11 16:52:59','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:53:10','8c9ee063-5b65-4d8e-9661-ecc6d294daa4','2024-06-11 16:53:10','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:53:22','8c9ee063-5b65-4d8e-9661-ecc6d294daa4','2024-06-11 16:53:22','8c9ee063-5b65-4d8e-9661-ecc6d294daa4');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org1','ws1','unittest-platform-db',3306,'PF_WS_UOAZ8FE1L7QUU1EML500','PF_WS_UOAZ8FE1L7QUU1EML500','AEQR3knW9aJgf/LpmkzdbMCfwRRw1esNBO9MQuyANDnh0t3ZRHfhXvNG97jmStIR','2024-06-11 16:53:00','8c9ee063-5b65-4d8e-9661-ecc6d294daa4','2024-06-11 16:56:03','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('org1','ws2','unittest-platform-db',3306,'PF_WS_13X8PDM9P8Q5GO2V73J9','PF_WS_13X8PDM9P8Q5GO2V73J9','0Kx0JUAlLSwah8X7VNRewtsyS6Na/DgjGSaW1/D/PIbGjNChJWV2q6APr7q3h1fX','2024-06-11 16:53:10','8c9ee063-5b65-4d8e-9661-ecc6d294daa4','2024-06-11 16:56:03','8c9ee063-5b65-4d8e-9661-ecc6d294daa4'),('org1','ws3','unittest-platform-db',3306,'PF_WS_F5SC8KKC0UHY1TZ2WLNO','PF_WS_F5SC8KKC0UHY1TZ2WLNO','Q3wtxnh7DzjVXZse9maIsXnTTwQ3psCYDc8vc3MFBhzgpB2aqeXv7jI+mT3MZCgI','2024-06-11 16:53:23','8c9ee063-5b65-4d8e-9661-ecc6d294daa4','2024-06-11 16:56:03','8c9ee063-5b65-4d8e-9661-ecc6d294daa4');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_UOAZ8FE1L7QUU1EML500`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_UOAZ8FE1L7QUU1EML500` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_UOAZ8FE1L7QUU1EML500`;

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
-- Current Database: `PF_WS_13X8PDM9P8Q5GO2V73J9`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_13X8PDM9P8Q5GO2V73J9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_13X8PDM9P8Q5GO2V73J9`;

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
-- Current Database: `PF_WS_F5SC8KKC0UHY1TZ2WLNO`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_F5SC8KKC0UHY1TZ2WLNO` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_F5SC8KKC0UHY1TZ2WLNO`;

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
-- Current Database: `PF_ORG_HVGK7HH1JNMAQ3YEVIZ8`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_HVGK7HH1JNMAQ3YEVIZ8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_HVGK7HH1JNMAQ3YEVIZ8`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org2\", \"USER_TOKEN_CLIENT_ID\": \"90437d83-845f-4150-8d81-4ba1d37a7624\", \"USER_TOKEN_CLIENT_SECRET\": \"9aIfu5EqbBDdUGL1xuPyTUx8SOrjNdxC\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org2-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"a86d24fe-eea4-4a5d-9e6c-4c1e01a800fe\", \"INTERNAL_API_CLIENT_SECRET\": \"i3hnuLYZ2zNWc5vwBXBmSTyl4AYCQhCE\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org2-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"33604388-f0ec-44ed-901c-747a43154e6c\", \"TOKEN_CHECK_CLIENT_SECRET\": \"bj4OZ1JW6xdYc6cXoYcfleACIX0tG9rh\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org2-api\", \"API_TOKEN_CLIENT_ID\": \"d1208074-d243-4b06-b130-e8903e23c164\"}','2024-06-11 16:53:40','unittest-user01','2024-06-11 16:53:40','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:53:41','cea41291-4b60-4594-b58d-65280e5ca389','2024-06-11 16:53:41','cea41291-4b60-4594-b58d-65280e5ca389'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:53:52','cea41291-4b60-4594-b58d-65280e5ca389','2024-06-11 16:53:52','cea41291-4b60-4594-b58d-65280e5ca389'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:54:03','cea41291-4b60-4594-b58d-65280e5ca389','2024-06-11 16:54:03','cea41291-4b60-4594-b58d-65280e5ca389');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org2','ws1','unittest-platform-db',3306,'PF_WS_WSC9VZCU09PZEB7A9AMI','PF_WS_WSC9VZCU09PZEB7A9AMI','SOcOlpKBt0NT7SULRRDhvqDFWEjgPKD463WAFeIfLpxfVTTgvNBv/ked1AhvPhNx','2024-06-11 16:53:42','cea41291-4b60-4594-b58d-65280e5ca389','2024-06-11 16:56:03','cea41291-4b60-4594-b58d-65280e5ca389'),('org2','ws2','unittest-platform-db',3306,'PF_WS_Y5EQJMTV4SEWLR12YZND','PF_WS_Y5EQJMTV4SEWLR12YZND','jGBzqf41BMHSq008p4Qq3Lj1V+IQNJOGg9D7dFtcrkYB6YY/aEMrKBow3tW+N/hk','2024-06-11 16:53:52','cea41291-4b60-4594-b58d-65280e5ca389','2024-06-11 16:56:03','cea41291-4b60-4594-b58d-65280e5ca389'),('org2','ws3','unittest-platform-db',3306,'PF_WS_BLGQK36KYE192UZH7EX5','PF_WS_BLGQK36KYE192UZH7EX5','KkghjSKODfNwB71PoesGIzoCt8zYxcEvjdzhK2WvasjrKF1ZktN4LUgFVDI9NPjo','2024-06-11 16:54:03','cea41291-4b60-4594-b58d-65280e5ca389','2024-06-11 16:56:03','cea41291-4b60-4594-b58d-65280e5ca389');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_WSC9VZCU09PZEB7A9AMI`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_WSC9VZCU09PZEB7A9AMI` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_WSC9VZCU09PZEB7A9AMI`;

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
-- Current Database: `PF_WS_Y5EQJMTV4SEWLR12YZND`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_Y5EQJMTV4SEWLR12YZND` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_Y5EQJMTV4SEWLR12YZND`;

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
-- Current Database: `PF_WS_BLGQK36KYE192UZH7EX5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_BLGQK36KYE192UZH7EX5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_BLGQK36KYE192UZH7EX5`;

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
-- Current Database: `PF_ORG_CNCKG6LO69KLBX8XV6HW`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_CNCKG6LO69KLBX8XV6HW` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_CNCKG6LO69KLBX8XV6HW`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org3\", \"USER_TOKEN_CLIENT_ID\": \"c9341f2f-91c3-40b2-ac4b-6a1465761c3c\", \"USER_TOKEN_CLIENT_SECRET\": \"LxIyXXyusLq1dFX5Rofl6sKB1yzuTGzT\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org3-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"04787d7f-e0b5-4795-85b0-5eec4a7b36b4\", \"INTERNAL_API_CLIENT_SECRET\": \"GpMuwHrKDkpkCKs6EextHLZhJ61B5tAZ\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org3-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"844d8f45-2003-4fc5-a82d-7e00eae35b87\", \"TOKEN_CHECK_CLIENT_SECRET\": \"hLBMmJUbJyuknDQLEQLSadMxdOyDR5eF\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org3-api\", \"API_TOKEN_CLIENT_ID\": \"76323179-e351-444c-97bc-583ca726a733\"}','2024-06-11 16:54:19','unittest-user01','2024-06-11 16:54:19','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:54:20','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','2024-06-11 16:54:20','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:54:29','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','2024-06-11 16:54:29','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:54:39','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','2024-06-11 16:54:39','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org3','ws1','unittest-platform-db',3306,'PF_WS_Y71SF08XO2QACL5S5AXW','PF_WS_Y71SF08XO2QACL5S5AXW','VhZQ2sVWeIuYK+q7yrBEqV+KxquqDN0JnwfIZ7FvkqcsL0jaOOGf0/WmVQjMHTSa','2024-06-11 16:54:20','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','2024-06-11 16:56:03','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('org3','ws2','unittest-platform-db',3306,'PF_WS_3IG1H0PIQ60QTM1V7YPO','PF_WS_3IG1H0PIQ60QTM1V7YPO','RS6TuKPfT1Dd7cY/Rerim4HVM9yp35CCI+i/29WeMsDvVpSmvA9zvA+eeFvhgq9R','2024-06-11 16:54:30','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','2024-06-11 16:56:03','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2'),('org3','ws3','unittest-platform-db',3306,'PF_WS_904ZCN78OYA2I3WVTLI5','PF_WS_904ZCN78OYA2I3WVTLI5','BQ2ySxww6/y0f3RvHZHIf+0AXjACTom4N2/oWrI7KS2oFEGAnDkdF6GUGI4+cAPT','2024-06-11 16:54:39','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2','2024-06-11 16:56:03','4cd7f7a1-254d-4680-a1ed-06fd496a7fb2');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_Y71SF08XO2QACL5S5AXW`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_Y71SF08XO2QACL5S5AXW` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_Y71SF08XO2QACL5S5AXW`;

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
-- Current Database: `PF_WS_3IG1H0PIQ60QTM1V7YPO`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_3IG1H0PIQ60QTM1V7YPO` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_3IG1H0PIQ60QTM1V7YPO`;

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
-- Current Database: `PF_WS_904ZCN78OYA2I3WVTLI5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_904ZCN78OYA2I3WVTLI5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_904ZCN78OYA2I3WVTLI5`;

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
-- Current Database: `PF_ORG_UORX2JNX4VLZ1SXXRDQ5`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_UORX2JNX4VLZ1SXXRDQ5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_UORX2JNX4VLZ1SXXRDQ5`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org4\", \"USER_TOKEN_CLIENT_ID\": \"4a3136c6-14f2-4a86-bc94-4054f607b4be\", \"USER_TOKEN_CLIENT_SECRET\": \"txDJiqHiJCRPl5yKlsmCvs3xbyFGgiBA\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org4-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"87a260f4-ece5-4eea-94de-ba31720af864\", \"INTERNAL_API_CLIENT_SECRET\": \"XC4LUX68vK30U34IVtsDTgNLA4gMwXVp\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org4-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"901d1c6d-b1b1-4473-b6c8-ff4a4af7c2c7\", \"TOKEN_CHECK_CLIENT_SECRET\": \"BgGEsqIwmFrV692K9JbKKkU8X8LK8ZXo\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org4-api\", \"API_TOKEN_CLIENT_ID\": \"07381026-d956-456b-acc1-30a424f8030e\"}','2024-06-11 16:54:55','unittest-user01','2024-06-11 16:54:55','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:54:56','11a46a7a-643a-4634-bfc3-a87a266bcaa9','2024-06-11 16:54:56','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:55:07','11a46a7a-643a-4634-bfc3-a87a266bcaa9','2024-06-11 16:55:07','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:55:17','11a46a7a-643a-4634-bfc3-a87a266bcaa9','2024-06-11 16:55:17','11a46a7a-643a-4634-bfc3-a87a266bcaa9');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org4','ws1','unittest-platform-db',3306,'PF_WS_HOJGSG8XQ2OO8ORATJYA','PF_WS_HOJGSG8XQ2OO8ORATJYA','yuzguySun2iuRClS1lBDendNZ5sR329VPVLzeBjFlrYmilw9qOOS7LLWzqJD+l77','2024-06-11 16:54:56','11a46a7a-643a-4634-bfc3-a87a266bcaa9','2024-06-11 16:56:03','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('org4','ws2','unittest-platform-db',3306,'PF_WS_P756VMP6TAVITZRL9SRS','PF_WS_P756VMP6TAVITZRL9SRS','gwGVofMOA4Av9IFF6IR2wYb3WFTd+H5MHNYuJXt3frf9Xbv7vVYFwvcsTVSTCpC7','2024-06-11 16:55:07','11a46a7a-643a-4634-bfc3-a87a266bcaa9','2024-06-11 16:56:03','11a46a7a-643a-4634-bfc3-a87a266bcaa9'),('org4','ws3','unittest-platform-db',3306,'PF_WS_LESZC8F2GD0ZW9NYKFGP','PF_WS_LESZC8F2GD0ZW9NYKFGP','Bhu96HaxSwH+XNlko864GlIvX5413y7GObuDpL5N6IXcyK3tFf4328CHsXA2B8Vs','2024-06-11 16:55:17','11a46a7a-643a-4634-bfc3-a87a266bcaa9','2024-06-11 16:56:03','11a46a7a-643a-4634-bfc3-a87a266bcaa9');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_HOJGSG8XQ2OO8ORATJYA`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_HOJGSG8XQ2OO8ORATJYA` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_HOJGSG8XQ2OO8ORATJYA`;

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
-- Current Database: `PF_WS_P756VMP6TAVITZRL9SRS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_P756VMP6TAVITZRL9SRS` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_P756VMP6TAVITZRL9SRS`;

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
-- Current Database: `PF_WS_LESZC8F2GD0ZW9NYKFGP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_LESZC8F2GD0ZW9NYKFGP` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_LESZC8F2GD0ZW9NYKFGP`;

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
-- Current Database: `PF_ORG_6IS32WB50ZQ24TZ1OKZV`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_ORG_6IS32WB50ZQ24TZ1OKZV` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_ORG_6IS32WB50ZQ24TZ1OKZV`;

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
INSERT INTO `T_ORGANIZATION_PRIVATE` VALUES (1,'{\"USER_TOKEN_CLIENT_CLIENTID\": \"org5\", \"USER_TOKEN_CLIENT_ID\": \"bf8007e6-1073-4601-a0c9-08cade1429a7\", \"USER_TOKEN_CLIENT_SECRET\": \"ptMJul0cifIouoCCy7avLn5bT1X4eD9x\", \"INTERNAL_API_CLIENT_CLIENTID\": \"org5-workspaces\", \"INTERNAL_API_CLIENT_ID\": \"48aa244c-1748-48f0-b78d-628e5aa21076\", \"INTERNAL_API_CLIENT_SECRET\": \"vXvGJpBWJizLS93wXbVd4WdbwdaPZzlg\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"system-org5-auth\", \"TOKEN_CHECK_CLIENT_ID\": \"380ba5aa-d8fd-4378-bfdd-cc930b2830d6\", \"TOKEN_CHECK_CLIENT_SECRET\": \"mJmaL5ZEbbnCL6J9TRVWDAyL7KgMt07Q\", \"API_TOKEN_CLIENT_CLIENTID\": \"_org5-api\", \"API_TOKEN_CLIENT_ID\": \"c2f880e9-65b0-4432-a364-bd6ad75e57b4\"}','2024-06-11 16:55:32','unittest-user01','2024-06-11 16:55:32','unittest-user01');
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
INSERT INTO `T_WORKSPACE` VALUES ('ws1','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:55:33','33341728-0658-4dda-8fc7-7b346e5714e7','2024-06-11 16:55:33','33341728-0658-4dda-8fc7-7b346e5714e7'),('ws2','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:55:43','33341728-0658-4dda-8fc7-7b346e5714e7','2024-06-11 16:55:43','33341728-0658-4dda-8fc7-7b346e5714e7'),('ws3','name of workspace','{\"environments\": [{\"name\": \"staging\"}, {\"name\": \"production\"}], \"description\": \"description of workspace\"}','2024-06-11 16:55:52','33341728-0658-4dda-8fc7-7b346e5714e7','2024-06-11 16:55:52','33341728-0658-4dda-8fc7-7b346e5714e7');
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
INSERT INTO `T_WORKSPACE_DB` VALUES ('org5','ws1','unittest-platform-db',3306,'PF_WS_W7STMD0QO2GNCC20MYAQ','PF_WS_W7STMD0QO2GNCC20MYAQ','Z6TYQ/shaJ3FbrlkdotTL4w3Yj7+ZI8EocnEJl5DqbhXV8n4pGscSVN0ej06IX2W','2024-06-11 16:55:33','33341728-0658-4dda-8fc7-7b346e5714e7','2024-06-11 16:56:03','33341728-0658-4dda-8fc7-7b346e5714e7'),('org5','ws2','unittest-platform-db',3306,'PF_WS_UI8TR34Z0T63CDSJ1TNI','PF_WS_UI8TR34Z0T63CDSJ1TNI','RkrWao9vSrOTgf3P1hs0JRSLapWTLvK2FHuXv2mVXpw2yJzBm8rNCc8pNyZj6wyS','2024-06-11 16:55:43','33341728-0658-4dda-8fc7-7b346e5714e7','2024-06-11 16:56:03','33341728-0658-4dda-8fc7-7b346e5714e7'),('org5','ws3','unittest-platform-db',3306,'PF_WS_PDNBFTPTLHKVOZ21J6ZY','PF_WS_PDNBFTPTLHKVOZ21J6ZY','+/qAYtaE8zPX4GOV0hQgHE6sF1K9+utChWCDVGBUA/CPvorBUXFagddWwVhk+YsV','2024-06-11 16:55:53','33341728-0658-4dda-8fc7-7b346e5714e7','2024-06-11 16:56:03','33341728-0658-4dda-8fc7-7b346e5714e7');
/*!40000 ALTER TABLE `T_WORKSPACE_DB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `PF_WS_W7STMD0QO2GNCC20MYAQ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_W7STMD0QO2GNCC20MYAQ` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_W7STMD0QO2GNCC20MYAQ`;

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
-- Current Database: `PF_WS_UI8TR34Z0T63CDSJ1TNI`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_UI8TR34Z0T63CDSJ1TNI` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_UI8TR34Z0T63CDSJ1TNI`;

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
-- Current Database: `PF_WS_PDNBFTPTLHKVOZ21J6ZY`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `PF_WS_PDNBFTPTLHKVOZ21J6ZY` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `PF_WS_PDNBFTPTLHKVOZ21J6ZY`;

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

-- Dump completed on 2024-06-11 16:56:05
