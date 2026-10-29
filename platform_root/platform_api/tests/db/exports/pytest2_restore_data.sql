SET foreign_key_checks = 0;
DELETE FROM keycloak.databasechangelog;
DELETE FROM keycloak.idp_mapper_config;
DELETE FROM keycloak.databasechangeloglock;
DELETE FROM keycloak.realm_enabled_event_types;
DELETE FROM keycloak.client;
DELETE FROM keycloak.realm_smtp_config;
DELETE FROM keycloak.composite_role;
DELETE FROM keycloak.federated_user;
DELETE FROM keycloak.identity_provider_config;
DELETE FROM keycloak.event_entity;
DELETE FROM keycloak.resource_scope;
DELETE FROM keycloak.org;
DELETE FROM keycloak.org_domain;
DELETE FROM keycloak.identity_provider;
DELETE FROM keycloak.authenticator_config_entry;
DELETE FROM keycloak.redirect_uris;
DELETE FROM keycloak.scope_mapping;
DELETE FROM keycloak.component_config;
DELETE FROM keycloak.user_federation_provider;
DELETE FROM keycloak.group_attribute;
DELETE FROM keycloak.user_role_mapping;
DELETE FROM keycloak.realm_localizations;
DELETE FROM keycloak.outbox_entry;
DELETE FROM keycloak.fed_user_ver_credential;
DELETE FROM keycloak.web_origins;
DELETE FROM keycloak.user_federation_config;
DELETE FROM keycloak.revoked_token;
DELETE FROM keycloak.migration_model;
DELETE FROM keycloak.user_attribute;
DELETE FROM keycloak.keycloak_group;
DELETE FROM keycloak.server_config;
DELETE FROM keycloak.workflow_state;
DELETE FROM keycloak.org_invitation;
DELETE FROM keycloak.policy_config;
DELETE FROM keycloak.realm_attribute;
DELETE FROM keycloak.realm_events_listeners;
DELETE FROM keycloak.admin_event_entity;
DELETE FROM keycloak.user_entity;
DELETE FROM keycloak.broker_link;
DELETE FROM keycloak.client_auth_flow_bindings;
DELETE FROM keycloak.realm_required_credential;
DELETE FROM keycloak.resource_server_resource;
DELETE FROM keycloak.realm;
DELETE FROM keycloak.client_attributes;
DELETE FROM keycloak.jgroups_ping;
DELETE FROM keycloak.resource_server;
DELETE FROM keycloak.federated_identity;
DELETE FROM keycloak.realm_supported_locales;
DELETE FROM keycloak.login_failure;
DELETE FROM keycloak.protocol_mapper;
DELETE FROM keycloak.auth_session;
DELETE FROM keycloak.resource_uris;
DELETE FROM keycloak.client_initial_access;
DELETE FROM keycloak.identity_provider_mapper;
DELETE FROM keycloak.cluster_event;
DELETE FROM keycloak.resource_attribute;
DELETE FROM keycloak.user_ver_credential;
DELETE FROM keycloak.client_node_registrations;
DELETE FROM keycloak.client_scope_client;
DELETE FROM keycloak.fed_user_credential;
DELETE FROM keycloak.resource_server_policy;
DELETE FROM keycloak.fed_user_consent;
DELETE FROM keycloak.client_scope_role_mapping;
DELETE FROM keycloak.resource_server_scope;
DELETE FROM keycloak.scope_policy;
DELETE FROM keycloak.role_attribute;
DELETE FROM keycloak.associated_policy;
DELETE FROM keycloak.root_auth_session;
DELETE FROM keycloak.fed_user_group_membership;
DELETE FROM keycloak.offline_client_session;
DELETE FROM keycloak.keycloak_role;
DELETE FROM keycloak.user_required_action;
DELETE FROM keycloak.fed_user_role_mapping;
DELETE FROM keycloak.component;
DELETE FROM keycloak.issued_ver_credential;
DELETE FROM keycloak.authentication_flow;
DELETE FROM keycloak.authentication_execution;
DELETE FROM keycloak.user_federation_mapper;
DELETE FROM keycloak.user_federation_mapper_config;
DELETE FROM keycloak.protocol_mapper_config;
DELETE FROM keycloak.authenticator_config;
DELETE FROM keycloak.user_consent;
DELETE FROM keycloak.required_action_config;
DELETE FROM keycloak.required_action_provider;
DELETE FROM keycloak.user_consent_client_scope;
DELETE FROM keycloak.offline_user_session;
DELETE FROM keycloak.fed_user_consent_cl_scope;
DELETE FROM keycloak.fed_user_required_action;
DELETE FROM keycloak.user_group_membership;
DELETE FROM keycloak.group_role_mapping;
DELETE FROM keycloak.realm_default_groups;
DELETE FROM keycloak.credential;
DELETE FROM keycloak.client_scope;
DELETE FROM keycloak.resource_policy;
DELETE FROM keycloak.fed_user_attribute;
DELETE FROM keycloak.client_scope_attributes;
DELETE FROM keycloak.default_client_scope;
DELETE FROM keycloak.resource_server_perm_ticket;
DELETE FROM keycloak.fed_issued_ver_credential;
DELETE FROM keycloak.single_use_object;
DELETE FROM platform.t_platform_version;
DELETE FROM platform.t_platform_migration_history;
DELETE FROM platform.t_platform_private;
DELETE FROM platform.t_organization;
DELETE FROM platform.t_organization_db;
DELETE FROM platform.t_organization_plan;
DELETE FROM platform.t_plan;
DELETE FROM platform.t_plan_item;
DELETE FROM platform.t_refresh_token;
DELETE FROM platform.m_system_config;
DELETE FROM platform.t_maintenance_mode;
DELETE FROM platform.t_process_queue;
DELETE FROM platform.t_plan_limit;
DELETE FROM platform.t_process_queue_lock;
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

USE `keycloak`;

--
-- Dumping data for table `admin_event_entity`
--

LOCK TABLES `admin_event_entity` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `associated_policy`
--

LOCK TABLES `associated_policy` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `auth_session`
--

LOCK TABLES `auth_session` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `authentication_execution`
--

LOCK TABLES `authentication_execution` WRITE;
INSERT INTO `authentication_execution` VALUES ('083ce105-6c5a-4903-b8e3-fe13160896d5',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','2df6fa58-db59-4fa2-af08-d01f4653a8ca',2,30,1,'499cf2f2-a27d-4e27-9455-58f6483325ae',NULL),('0ae72e49-f0e9-4b9e-a35c-9d864e78a2a0',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','d5cbe7bb-c5ad-4c9c-ae3c-8f354b04fad3',1,30,1,'1edb5fca-d12e-4e56-b0d0-74ea74b3c958',NULL),('0d248860-4fd3-4b6b-898d-8be14fcff2bc',NULL,'direct-grant-validate-username','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','d5cbe7bb-c5ad-4c9c-ae3c-8f354b04fad3',0,10,0,NULL,NULL),('1316d59a-5f8a-4947-b769-67b1154b07e9',NULL,'webauthn-authenticator','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','bab025df-f9d2-4ec8-8c25-156af3a9b53e',3,40,0,NULL,NULL),('15f5bdd2-487e-43c3-a189-2487e4c5630e',NULL,'webauthn-authenticator','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','e3214eab-d3da-48d8-87b8-7d8760f09304',3,40,0,NULL,NULL),('17b2debb-5fad-404c-b94f-f3d861b79762',NULL,'auth-cookie','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','2df6fa58-db59-4fa2-af08-d01f4653a8ca',2,10,0,NULL,NULL),('22fb6c9a-ef6b-4ccf-8985-1ea2f6710cb2',NULL,'http-basic-authenticator','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','fad18964-9d76-4dc4-a4f9-5b76734efb36',0,10,0,NULL,NULL),('25f7057d-cf5e-48ad-97d7-d29459931b0b',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','cae20743-baba-47df-8ef9-0a4f4baf56e1',1,20,1,'bab025df-f9d2-4ec8-8c25-156af3a9b53e',NULL),('2621451c-d8fb-4963-9f1b-1006b42ed846',NULL,'registration-terms-and-conditions','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','4f431a13-1ece-4494-a28c-5bed98b2832d',3,70,0,NULL,NULL),('2692189c-b58e-4623-91aa-c0f9fe9f150c',NULL,'auth-spnego','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','2df6fa58-db59-4fa2-af08-d01f4653a8ca',3,20,0,NULL,NULL),('2de3ba35-acb3-422d-97bf-0396f15a2e0f',NULL,'conditional-user-configured','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1edb5fca-d12e-4e56-b0d0-74ea74b3c958',0,10,0,NULL,NULL),('32e2f130-3f5d-42e3-8267-f68df0f77b8d',NULL,'docker-http-basic-authenticator','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','b53175b2-f1e4-4a32-95fa-ab2ec69e9437',0,10,0,NULL,NULL),('3392dd0e-2964-47a8-b2cd-f18ab275f751',NULL,'registration-password-action','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','4f431a13-1ece-4494-a28c-5bed98b2832d',0,50,0,NULL,NULL),('3d853729-ea33-4a42-b8d1-1f877023a39e',NULL,'idp-create-user-if-unique','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','8f5b312b-ae34-4ffe-98b6-47b021ae4259',2,10,0,NULL,'9e3e0025-386a-49aa-89ea-4f28e86e75e5'),('4343c4c0-d50c-421e-9442-5f86ac05f4e1',NULL,'client-jwt','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1ed92a6e-8edc-448a-9007-c15b9fb4f03a',2,20,0,NULL,NULL),('44eb5a1e-d7f3-4b57-a21f-b96fecd55740',NULL,'auth-recovery-authn-code-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','e3214eab-d3da-48d8-87b8-7d8760f09304',3,50,0,NULL,NULL),('4b6278da-e9a0-4bba-b05e-a1c42041af4d',NULL,'reset-password','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','932ebe40-b118-418c-be77-34b919aca0df',0,30,0,NULL,NULL),('4c8e5d23-de33-45ab-943c-957cdfa613b0',NULL,'idp-email-verification','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','768f49ac-f3d3-4e0a-9fc1-92b14d380de4',2,10,0,NULL,NULL),('4ed8702d-0f0d-4a23-b071-fac5aa2ee015',NULL,'conditional-user-configured','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','cce6dcef-2f54-43df-bd5c-dca39b001af5',0,10,0,NULL,NULL),('50137f9d-27cc-43a4-863f-a965a3b699c9',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','932ebe40-b118-418c-be77-34b919aca0df',1,40,1,'cce6dcef-2f54-43df-bd5c-dca39b001af5',NULL),('58bcd14c-1745-4a91-b56f-5d119fb8eadd',NULL,'registration-user-creation','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','4f431a13-1ece-4494-a28c-5bed98b2832d',0,20,0,NULL,NULL),('5eb24c13-099b-4d2e-999f-f03c90325dba',NULL,'client-secret-jwt','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1ed92a6e-8edc-448a-9007-c15b9fb4f03a',2,30,0,NULL,NULL),('5f0b522f-7504-4708-a038-11f5f8765f21',NULL,'reset-otp','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','cce6dcef-2f54-43df-bd5c-dca39b001af5',0,20,0,NULL,NULL),('6846380c-2d28-4695-884b-b7cb449a532a',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','8f5b312b-ae34-4ffe-98b6-47b021ae4259',2,20,1,'97f1cc16-52a4-4636-b65e-c1d5d0858765',NULL),('72a9c58d-ddf5-4e89-ba6c-79fa389ed30b',NULL,'registration-recaptcha-action','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','4f431a13-1ece-4494-a28c-5bed98b2832d',3,60,0,NULL,NULL),('74d5876a-3c82-41db-a48f-828776ca6f05',NULL,'auth-username-password-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','499cf2f2-a27d-4e27-9455-58f6483325ae',0,10,0,NULL,NULL),('7665e762-0604-4c0e-80a9-e1b2283a38c4',NULL,'federated-jwt','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1ed92a6e-8edc-448a-9007-c15b9fb4f03a',2,50,0,NULL,NULL),('7e31186e-0da9-4986-bff2-00e7e624e568',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','768f49ac-f3d3-4e0a-9fc1-92b14d380de4',2,20,1,'cae20743-baba-47df-8ef9-0a4f4baf56e1',NULL),('83f0213c-d81c-4d6c-9194-4e788196b5e8',NULL,'reset-credentials-choose-user','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','932ebe40-b118-418c-be77-34b919aca0df',0,10,0,NULL,NULL),('8a4a6c95-f8cd-471c-a244-5ac80f47f210',NULL,'auth-otp-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','bab025df-f9d2-4ec8-8c25-156af3a9b53e',2,30,0,NULL,NULL),('94056135-a50c-4839-949b-b10af8eb84b2',NULL,'client-secret','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1ed92a6e-8edc-448a-9007-c15b9fb4f03a',2,10,0,NULL,NULL),('9916d673-67ca-40ad-9fc7-656847710e4b',NULL,'auth-recovery-authn-code-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','bab025df-f9d2-4ec8-8c25-156af3a9b53e',3,50,0,NULL,NULL),('9a05a1eb-be21-4e74-9c40-6d5f375cfbd0',NULL,'client-x509','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1ed92a6e-8edc-448a-9007-c15b9fb4f03a',2,40,0,NULL,NULL),('9a0e344d-bd2d-4236-90ac-1948f3ebfa01',NULL,'direct-grant-validate-password','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','d5cbe7bb-c5ad-4c9c-ae3c-8f354b04fad3',0,20,0,NULL,NULL),('9b426042-4595-4de1-9d2a-f1580cf1fba6',NULL,'conditional-user-configured','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','bab025df-f9d2-4ec8-8c25-156af3a9b53e',0,10,0,NULL,NULL),('a0529187-6cbd-4d4c-84d0-d18df045bb73',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','97f1cc16-52a4-4636-b65e-c1d5d0858765',0,20,1,'768f49ac-f3d3-4e0a-9fc1-92b14d380de4',NULL),('b0934ef8-f4e8-4e5f-88a9-03cd6a2ee6f2',NULL,'registration-page-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','ceefa514-6ea4-42b5-bb2d-dec36d4a3a63',0,10,1,'4f431a13-1ece-4494-a28c-5bed98b2832d',NULL),('b3478d50-54ba-45af-9b2d-9f30808f8828',NULL,'auth-otp-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','e3214eab-d3da-48d8-87b8-7d8760f09304',2,30,0,NULL,NULL),('b9d1dc1f-8ee3-4f50-b4fb-f3957d41f399',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','0ce70962-7205-475e-afa0-437df263220d',0,20,1,'8f5b312b-ae34-4ffe-98b6-47b021ae4259',NULL),('bbcd63ad-103d-45e5-ad9c-b8c4382e5298',NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','499cf2f2-a27d-4e27-9455-58f6483325ae',1,20,1,'e3214eab-d3da-48d8-87b8-7d8760f09304',NULL),('c17771ae-c491-4a0c-b6f9-e05240d0cd05',NULL,'idp-username-password-form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','cae20743-baba-47df-8ef9-0a4f4baf56e1',0,10,0,NULL,NULL),('c8746c3f-f858-43ec-8c52-42ae27d3e489',NULL,'identity-provider-redirector','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','2df6fa58-db59-4fa2-af08-d01f4653a8ca',2,25,0,NULL,NULL),('dea342ea-6706-4a66-a522-73d8242b8e17',NULL,'conditional-credential','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','bab025df-f9d2-4ec8-8c25-156af3a9b53e',0,20,0,NULL,'743be5a7-43c3-4cfb-9ae7-b68c3955875b'),('e08cab44-e0e3-4138-96c0-f6559801180d',NULL,'conditional-credential','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','e3214eab-d3da-48d8-87b8-7d8760f09304',0,20,0,NULL,'516179ac-6ef2-4f7f-8b0c-19120a4864f9'),('e5f52d44-a643-429e-975f-998f919e7996',NULL,'direct-grant-validate-otp','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1edb5fca-d12e-4e56-b0d0-74ea74b3c958',0,20,0,NULL,NULL),('ebe9dfaa-5faf-4790-b92f-cd1f25b0b393',NULL,'reset-credential-email','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','932ebe40-b118-418c-be77-34b919aca0df',0,20,0,NULL,NULL),('f416a0cc-2c31-4e4e-bf3f-7815947719a9',NULL,'conditional-user-configured','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','e3214eab-d3da-48d8-87b8-7d8760f09304',0,10,0,NULL,NULL),('f68fe4d4-1eba-4d64-bef6-ddc1ae18a3d4',NULL,'idp-confirm-link','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','97f1cc16-52a4-4636-b65e-c1d5d0858765',0,10,0,NULL,NULL),('fd5891cb-cbaf-4322-86f9-3372f82b5c3e',NULL,'idp-review-profile','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','0ce70962-7205-475e-afa0-437df263220d',0,10,0,NULL,'a56b6973-cacf-4929-904a-3be7b1d65a8d');
UNLOCK TABLES;

--
-- Dumping data for table `authentication_flow`
--

LOCK TABLES `authentication_flow` WRITE;
INSERT INTO `authentication_flow` VALUES ('0ce70962-7205-475e-afa0-437df263220d','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1),('1ed92a6e-8edc-448a-9007-c15b9fb4f03a','clients','Base authentication for clients','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','client-flow',1,1),('1edb5fca-d12e-4e56-b0d0-74ea74b3c958','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('2df6fa58-db59-4fa2-af08-d01f4653a8ca','browser','Browser based authentication','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1),('499cf2f2-a27d-4e27-9455-58f6483325ae','forms','Username, password, otp and other auth forms.','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('4f431a13-1ece-4494-a28c-5bed98b2832d','registration form','Registration form','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','form-flow',0,1),('768f49ac-f3d3-4e0a-9fc1-92b14d380de4','Account verification options','Method with which to verify the existing account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('8f5b312b-ae34-4ffe-98b6-47b021ae4259','User creation or linking','Flow for the existing/non-existing user alternatives','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('932ebe40-b118-418c-be77-34b919aca0df','reset credentials','Reset credentials for a user if they forgot their password or something','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1),('97f1cc16-52a4-4636-b65e-c1d5d0858765','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('b53175b2-f1e4-4a32-95fa-ab2ec69e9437','docker auth','Used by Docker clients to authenticate against the IDP','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1),('bab025df-f9d2-4ec8-8c25-156af3a9b53e','First broker login - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('cae20743-baba-47df-8ef9-0a4f4baf56e1','Verify Existing Account by Re-authentication','Reauthentication of existing account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('cce6dcef-2f54-43df-bd5c-dca39b001af5','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('ceefa514-6ea4-42b5-bb2d-dec36d4a3a63','registration','Registration flow','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1),('d5cbe7bb-c5ad-4c9c-ae3c-8f354b04fad3','direct grant','OpenID Connect Resource Owner Grant','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1),('e3214eab-d3da-48d8-87b8-7d8760f09304','Browser - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',0,1),('fad18964-9d76-4dc4-a4f9-5b76734efb36','saml ecp','SAML ECP Profile Authentication Flow','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','basic-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `authenticator_config`
--

LOCK TABLES `authenticator_config` WRITE;
INSERT INTO `authenticator_config` VALUES ('516179ac-6ef2-4f7f-8b0c-19120a4864f9','browser-conditional-credential','ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('743be5a7-43c3-4cfb-9ae7-b68c3955875b','first-broker-login-conditional-credential','ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('9e3e0025-386a-49aa-89ea-4f28e86e75e5','create unique user config','ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('a56b6973-cacf-4929-904a-3be7b1d65a8d','review profile config','ea73b9fd-491c-4c77-92db-2ce7ea2fb756');
UNLOCK TABLES;

--
-- Dumping data for table `authenticator_config_entry`
--

LOCK TABLES `authenticator_config_entry` WRITE;
INSERT INTO `authenticator_config_entry` VALUES ('516179ac-6ef2-4f7f-8b0c-19120a4864f9','webauthn-passwordless','credentials'),('743be5a7-43c3-4cfb-9ae7-b68c3955875b','webauthn-passwordless','credentials'),('9e3e0025-386a-49aa-89ea-4f28e86e75e5','false','require.password.update.after.registration'),('a56b6973-cacf-4929-904a-3be7b1d65a8d','missing','update.profile.on.first.login');
UNLOCK TABLES;

--
-- Dumping data for table `broker_link`
--

LOCK TABLES `broker_link` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
INSERT INTO `client` VALUES ('002d2472-4c6e-425a-8d8d-bbde9c9cffdb',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1785936493094,1785936493116),('3261927b-6484-4acf-accd-0e1127c832d6',1,1,'_platform',0,0,'6zfoFcc1NVliV6X7j2iXuS0TQTjCq6Zh1mibEUo7UkAOMKSYWkBSSYsxxAI9NLea42PK27Pbh3zzDpiFuZKiPr',NULL,0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0,1785936501101,1785936501160),('3d0d4b73-c084-4224-8858-543743457ffa',1,1,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0,1785936493133,1785936493157),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1785936492738,1785936492744),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4',1,1,'admin-cli',0,1,NULL,NULL,0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0,1785936493173,1785936493205),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0,1785936501306,1785936501323),('c195d0b8-0586-41a3-aae4-120f49b203c9',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1785936493057,1785936493077),('c212610c-4fc6-41b4-8772-ce82c13d3f02',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1785936492958,1785936492997),('cdffdf90-a104-4ca9-ae38-dc489e87d15b',1,0,'_platform-console',0,1,'YbJrkoxDqekoRpQL6XrapQXM0mHIE5NyRYaW539mzI74eDaKpjycaBRP0gspQo3sY1VnmTkcH1mml5eZejfsSX',NULL,0,NULL,0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0,1785936501999,1785936502084);
UNLOCK TABLES;

--
-- Dumping data for table `client_attributes`
--

LOCK TABLES `client_attributes` WRITE;
INSERT INTO `client_attributes` VALUES ('3261927b-6484-4acf-accd-0e1127c832d6','backchannel.logout.revoke.offline.tokens','false'),('3261927b-6484-4acf-accd-0e1127c832d6','backchannel.logout.session.required','true'),('3261927b-6484-4acf-accd-0e1127c832d6','client_credentials.use_refresh_token','false'),('3261927b-6484-4acf-accd-0e1127c832d6','client.secret.creation.time','1785936501'),('3261927b-6484-4acf-accd-0e1127c832d6','display.on.consent.screen','false'),('3261927b-6484-4acf-accd-0e1127c832d6','exclude.session.state.from.auth.response','false'),('3261927b-6484-4acf-accd-0e1127c832d6','id.token.as.detached.signature','false'),('3261927b-6484-4acf-accd-0e1127c832d6','oauth2.device.authorization.grant.enabled','false'),('3261927b-6484-4acf-accd-0e1127c832d6','oidc.ciba.grant.enabled','false'),('3261927b-6484-4acf-accd-0e1127c832d6','require.pushed.authorization.requests','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml_force_name_id_format','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.artifact.binding','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.assertion.signature','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.authnstatement','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.client.signature','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.encrypt','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.force.post.binding','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.multivalued.roles','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.onetimeuse.condition','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.server.signature','false'),('3261927b-6484-4acf-accd-0e1127c832d6','saml.server.signature.keyinfo.ext','false'),('3261927b-6484-4acf-accd-0e1127c832d6','tls.client.certificate.bound.access.tokens','false'),('3261927b-6484-4acf-accd-0e1127c832d6','use.refresh.tokens','true'),('3d0d4b73-c084-4224-8858-543743457ffa','client.use.lightweight.access.token.enabled','true'),('3d0d4b73-c084-4224-8858-543743457ffa','pkce.code.challenge.method','S256'),('3d0d4b73-c084-4224-8858-543743457ffa','post.logout.redirect.uris','+'),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','client.use.lightweight.access.token.enabled','true'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','access.token.lifespan','86400'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','acr.loa.map','{}'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','backchannel.logout.revoke.offline.tokens','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','backchannel.logout.session.required','true'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','client_credentials.use_refresh_token','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','client.session.idle.timeout','86400'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','client.session.max.lifespan','86400'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','display.on.consent.screen','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','exclude.session.state.from.auth.response','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','frontchannel.logout.session.required','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','id.token.as.detached.signature','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','oauth2.device.authorization.grant.enabled','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','oidc.ciba.grant.enabled','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','require.pushed.authorization.requests','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml_force_name_id_format','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.allow.ecp.flow','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.artifact.binding','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.assertion.signature','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.authnstatement','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.client.signature','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.encrypt','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.force.post.binding','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.multivalued.roles','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.onetimeuse.condition','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.server.signature','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','saml.server.signature.keyinfo.ext','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','tls.client.certificate.bound.access.tokens','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','token.response.type.bearer.lower-case','false'),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','use.refresh.tokens','true'),('c195d0b8-0586-41a3-aae4-120f49b203c9','pkce.code.challenge.method','S256'),('c195d0b8-0586-41a3-aae4-120f49b203c9','post.logout.redirect.uris','+'),('c212610c-4fc6-41b4-8772-ce82c13d3f02','post.logout.redirect.uris','+'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','backchannel.logout.revoke.offline.tokens','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','backchannel.logout.session.required','true'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','client_credentials.use_refresh_token','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','client.secret.creation.time','1785936502'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','display.on.consent.screen','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','exclude.session.state.from.auth.response','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','id.token.as.detached.signature','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','oauth2.device.authorization.grant.enabled','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','oidc.ciba.grant.enabled','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','post.logout.redirect.uris','/*'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','require.pushed.authorization.requests','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml_force_name_id_format','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.artifact.binding','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.assertion.signature','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.authnstatement','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.client.signature','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.encrypt','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.force.post.binding','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.multivalued.roles','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.onetimeuse.condition','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.server.signature','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','saml.server.signature.keyinfo.ext','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','tls.client.certificate.bound.access.tokens','false'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','use.refresh.tokens','true');
UNLOCK TABLES;

--
-- Dumping data for table `client_auth_flow_bindings`
--

LOCK TABLES `client_auth_flow_bindings` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `client_initial_access`
--

LOCK TABLES `client_initial_access` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `client_node_registrations`
--

LOCK TABLES `client_node_registrations` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `client_scope`
--

LOCK TABLES `client_scope` WRITE;
INSERT INTO `client_scope` VALUES ('06792d44-efd9-46e3-85c4-0024c68930b0','email','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect built-in scope: email','openid-connect'),('28185292-0d63-42ea-a0b6-6d3b01a378ac','role_list','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','SAML role list','saml'),('2a96b242-d236-4fcd-9608-b0b90401ec79','service_account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','Specific scope for a client enabled for service accounts','openid-connect'),('2c12fc49-65a5-46b8-8c73-a973c14a9cec','microprofile-jwt','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','Microprofile - JWT built-in scope','openid-connect'),('32f4baab-7429-4728-8bf3-fd9e5019aef8','web-origins','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('6415aae0-0156-40b3-8e6a-f56272a500ab','offline_access','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect built-in scope: offline_access','openid-connect'),('654b16cf-8d6e-414f-a566-a855b8bbf812','phone','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect built-in scope: phone','openid-connect'),('736c393a-6db4-4300-82ae-8868852b5561','AuthnContextClassRef','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','AuthnContextClassRef Level of Authentiation','saml'),('7933549e-2095-4e01-83c1-3f8950e612b8','roles','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect scope for add user roles to the access token','openid-connect'),('9269b884-e10b-4890-91cb-ba7b83045fd1','saml_organization','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','Organization Membership','saml'),('c4fdd96c-88fe-48e9-92a4-4843bfee989f','basic','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect scope for add all basic claims to the token','openid-connect'),('de8c46af-0dae-4b04-b2e7-31ebd078cf74','organization','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','Additional claims about the organization a subject belongs to','openid-connect'),('e1c5e703-5fb7-4e81-a9ed-88588836c607','acr','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('ea296d1c-d3fc-4a9f-a981-ae342673a313','address','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect built-in scope: address','openid-connect'),('f8b30c20-9f89-46fc-82c4-d283d81b683e','profile','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','OpenID Connect built-in scope: profile','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_attributes`
--

LOCK TABLES `client_scope_attributes` WRITE;
INSERT INTO `client_scope_attributes` VALUES ('06792d44-efd9-46e3-85c4-0024c68930b0','${emailScopeConsentText}','consent.screen.text'),('06792d44-efd9-46e3-85c4-0024c68930b0','true','display.on.consent.screen'),('06792d44-efd9-46e3-85c4-0024c68930b0','true','include.in.token.scope'),('28185292-0d63-42ea-a0b6-6d3b01a378ac','${samlRoleListScopeConsentText}','consent.screen.text'),('28185292-0d63-42ea-a0b6-6d3b01a378ac','true','display.on.consent.screen'),('2a96b242-d236-4fcd-9608-b0b90401ec79','false','display.on.consent.screen'),('2a96b242-d236-4fcd-9608-b0b90401ec79','false','include.in.token.scope'),('2c12fc49-65a5-46b8-8c73-a973c14a9cec','false','display.on.consent.screen'),('2c12fc49-65a5-46b8-8c73-a973c14a9cec','true','include.in.token.scope'),('32f4baab-7429-4728-8bf3-fd9e5019aef8','','consent.screen.text'),('32f4baab-7429-4728-8bf3-fd9e5019aef8','false','display.on.consent.screen'),('32f4baab-7429-4728-8bf3-fd9e5019aef8','false','include.in.token.scope'),('6415aae0-0156-40b3-8e6a-f56272a500ab','${offlineAccessScopeConsentText}','consent.screen.text'),('6415aae0-0156-40b3-8e6a-f56272a500ab','true','display.on.consent.screen'),('654b16cf-8d6e-414f-a566-a855b8bbf812','${phoneScopeConsentText}','consent.screen.text'),('654b16cf-8d6e-414f-a566-a855b8bbf812','true','display.on.consent.screen'),('654b16cf-8d6e-414f-a566-a855b8bbf812','true','include.in.token.scope'),('7933549e-2095-4e01-83c1-3f8950e612b8','${rolesScopeConsentText}','consent.screen.text'),('7933549e-2095-4e01-83c1-3f8950e612b8','true','display.on.consent.screen'),('7933549e-2095-4e01-83c1-3f8950e612b8','false','include.in.token.scope'),('9269b884-e10b-4890-91cb-ba7b83045fd1','false','display.on.consent.screen'),('c4fdd96c-88fe-48e9-92a4-4843bfee989f','false','display.on.consent.screen'),('c4fdd96c-88fe-48e9-92a4-4843bfee989f','false','include.in.token.scope'),('de8c46af-0dae-4b04-b2e7-31ebd078cf74','${organizationScopeConsentText}','consent.screen.text'),('de8c46af-0dae-4b04-b2e7-31ebd078cf74','true','display.on.consent.screen'),('de8c46af-0dae-4b04-b2e7-31ebd078cf74','true','include.in.token.scope'),('e1c5e703-5fb7-4e81-a9ed-88588836c607','false','display.on.consent.screen'),('e1c5e703-5fb7-4e81-a9ed-88588836c607','false','include.in.token.scope'),('ea296d1c-d3fc-4a9f-a981-ae342673a313','${addressScopeConsentText}','consent.screen.text'),('ea296d1c-d3fc-4a9f-a981-ae342673a313','true','display.on.consent.screen'),('ea296d1c-d3fc-4a9f-a981-ae342673a313','true','include.in.token.scope'),('f8b30c20-9f89-46fc-82c4-d283d81b683e','${profileScopeConsentText}','consent.screen.text'),('f8b30c20-9f89-46fc-82c4-d283d81b683e','true','display.on.consent.screen'),('f8b30c20-9f89-46fc-82c4-d283d81b683e','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_client`
--

LOCK TABLES `client_scope_client` WRITE;
INSERT INTO `client_scope_client` VALUES ('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','06792d44-efd9-46e3-85c4-0024c68930b0',1),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','7933549e-2095-4e01-83c1-3f8950e612b8',1),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('002d2472-4c6e-425a-8d8d-bbde9c9cffdb','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('3261927b-6484-4acf-accd-0e1127c832d6','06792d44-efd9-46e3-85c4-0024c68930b0',1),('3261927b-6484-4acf-accd-0e1127c832d6','2a96b242-d236-4fcd-9608-b0b90401ec79',1),('3261927b-6484-4acf-accd-0e1127c832d6','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('3261927b-6484-4acf-accd-0e1127c832d6','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('3261927b-6484-4acf-accd-0e1127c832d6','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('3261927b-6484-4acf-accd-0e1127c832d6','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('3261927b-6484-4acf-accd-0e1127c832d6','7933549e-2095-4e01-83c1-3f8950e612b8',1),('3261927b-6484-4acf-accd-0e1127c832d6','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('3261927b-6484-4acf-accd-0e1127c832d6','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('3261927b-6484-4acf-accd-0e1127c832d6','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('3d0d4b73-c084-4224-8858-543743457ffa','06792d44-efd9-46e3-85c4-0024c68930b0',1),('3d0d4b73-c084-4224-8858-543743457ffa','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('3d0d4b73-c084-4224-8858-543743457ffa','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('3d0d4b73-c084-4224-8858-543743457ffa','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('3d0d4b73-c084-4224-8858-543743457ffa','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('3d0d4b73-c084-4224-8858-543743457ffa','7933549e-2095-4e01-83c1-3f8950e612b8',1),('3d0d4b73-c084-4224-8858-543743457ffa','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('3d0d4b73-c084-4224-8858-543743457ffa','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('3d0d4b73-c084-4224-8858-543743457ffa','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('3d0d4b73-c084-4224-8858-543743457ffa','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('3d0d4b73-c084-4224-8858-543743457ffa','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','06792d44-efd9-46e3-85c4-0024c68930b0',1),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','7933549e-2095-4e01-83c1-3f8950e612b8',1),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('411f5e93-7ec5-45c5-988a-1c8d00ac33b1','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','06792d44-efd9-46e3-85c4-0024c68930b0',1),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','7933549e-2095-4e01-83c1-3f8950e612b8',1),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','06792d44-efd9-46e3-85c4-0024c68930b0',1),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','7933549e-2095-4e01-83c1-3f8950e612b8',1),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('8202453b-3830-4b0f-bfaf-d76ce8eca8f6','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('c195d0b8-0586-41a3-aae4-120f49b203c9','06792d44-efd9-46e3-85c4-0024c68930b0',1),('c195d0b8-0586-41a3-aae4-120f49b203c9','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('c195d0b8-0586-41a3-aae4-120f49b203c9','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('c195d0b8-0586-41a3-aae4-120f49b203c9','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('c195d0b8-0586-41a3-aae4-120f49b203c9','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('c195d0b8-0586-41a3-aae4-120f49b203c9','7933549e-2095-4e01-83c1-3f8950e612b8',1),('c195d0b8-0586-41a3-aae4-120f49b203c9','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('c195d0b8-0586-41a3-aae4-120f49b203c9','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('c195d0b8-0586-41a3-aae4-120f49b203c9','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('c195d0b8-0586-41a3-aae4-120f49b203c9','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('c195d0b8-0586-41a3-aae4-120f49b203c9','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('c212610c-4fc6-41b4-8772-ce82c13d3f02','06792d44-efd9-46e3-85c4-0024c68930b0',1),('c212610c-4fc6-41b4-8772-ce82c13d3f02','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('c212610c-4fc6-41b4-8772-ce82c13d3f02','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('c212610c-4fc6-41b4-8772-ce82c13d3f02','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('c212610c-4fc6-41b4-8772-ce82c13d3f02','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('c212610c-4fc6-41b4-8772-ce82c13d3f02','7933549e-2095-4e01-83c1-3f8950e612b8',1),('c212610c-4fc6-41b4-8772-ce82c13d3f02','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('c212610c-4fc6-41b4-8772-ce82c13d3f02','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('c212610c-4fc6-41b4-8772-ce82c13d3f02','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('c212610c-4fc6-41b4-8772-ce82c13d3f02','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('c212610c-4fc6-41b4-8772-ce82c13d3f02','f8b30c20-9f89-46fc-82c4-d283d81b683e',1),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','06792d44-efd9-46e3-85c4-0024c68930b0',1),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','7933549e-2095-4e01-83c1-3f8950e612b8',1),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','f8b30c20-9f89-46fc-82c4-d283d81b683e',1);
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_role_mapping`
--

LOCK TABLES `client_scope_role_mapping` WRITE;
INSERT INTO `client_scope_role_mapping` VALUES ('6415aae0-0156-40b3-8e6a-f56272a500ab','7f881f44-8269-4217-9f93-de7dfb733417');
UNLOCK TABLES;

--
-- Dumping data for table `cluster_event`
--

LOCK TABLES `cluster_event` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
INSERT INTO `component` VALUES ('0cd42aea-9a51-4ed6-9813-e9f0425a9f23','Allowed Client Scopes','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','authenticated'),('2342299c-ec35-487d-ade6-258abb3afd0e','Allowed Protocol Mapper Types','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous'),('3a88dacf-13fa-4e68-8cd5-6dc39546f053','Max Clients Limit','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous'),('5d2916d7-86e1-4444-91f6-64831e1e44f2',NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL),('74121af4-233b-440c-a66e-b5caee9d502f','aes-generated','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','aes-generated','org.keycloak.keys.KeyProvider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL),('94d2046d-b41e-4097-885a-72d9fe26861a','Allowed Client Scopes','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous'),('9c42d4c9-4a19-49ca-91ba-c0e93af8b107','rsa-enc-generated','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','rsa-enc-generated','org.keycloak.keys.KeyProvider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL),('9c735624-a9c0-466b-bfbe-c19c271bf177','Allowed Protocol Mapper Types','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','authenticated'),('aed0bd42-f7f1-4ee0-82fc-04d32d4663f6','rsa-generated','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','rsa-generated','org.keycloak.keys.KeyProvider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL),('b3c2f1bd-0875-429f-a445-aad72ef619e7','Allowed Registration Web Origins','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous'),('df27623a-1b9a-4fc0-b1c3-c2988ee48aa0','Consent Required','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous'),('e065e0f2-2f3c-4899-a52f-3219845bed4a','hmac-generated-hs512','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','hmac-generated','org.keycloak.keys.KeyProvider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL),('eada00c0-a9df-4e93-9de8-90d65c7f0528','Trusted Hosts','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous'),('f4994fa7-877e-4cc3-a4be-7c2273a86ff6','Allowed Registration Web Origins','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','authenticated'),('f9e09ceb-1706-400c-8ab8-755410f445cd','Full Scope Disabled','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','anonymous');
UNLOCK TABLES;

--
-- Dumping data for table `component_config`
--

LOCK TABLES `component_config` WRITE;
INSERT INTO `component_config` VALUES ('0284739f-40e3-420d-b24d-ed43268fc9bf','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','oidc-full-name-mapper'),('0728b9d4-4842-48ad-bf60-a19f5964375a','74121af4-233b-440c-a66e-b5caee9d502f','secret','EztZs7zXF1UPspCMzUBHXcD0ufgUb_OuZhbSozmVqLM'),('0a51e37b-dd82-4d68-88bf-c91b11147547','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('23c6c2a8-1c59-49e9-a224-e88e1aa44f09','5d2916d7-86e1-4444-91f6-64831e1e44f2','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('25bfabaf-f419-428b-ab24-8c13881b7ba9','e065e0f2-2f3c-4899-a52f-3219845bed4a','priority','100'),('29f2e43b-b8bf-4359-86fc-68e8ddacdd0f','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','saml-user-property-mapper'),('32079e97-e1a4-4716-951f-3d83f2c43140','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','saml-user-property-mapper'),('3b47155b-617d-4d49-a532-4ccc96f688c2','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('40696c7f-c31c-4b26-998e-f51cc2e8476a','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('415d96e2-8e7a-4b80-b4cb-92d3c4879e89','9c42d4c9-4a19-49ca-91ba-c0e93af8b107','priority','100'),('42b78a24-5973-41ec-b87e-527db82fc0c5','aed0bd42-f7f1-4ee0-82fc-04d32d4663f6','certificate','MIICmzCCAYMCBgGf0hw/HTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwODA1MTMyNjM0WhcNMzYwODA1MTMyODE0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDTsVvrgmVmjpHulMDrTjJVDGLFTxUqiIAWmY3kXJwquXK6o3OiDF2iRiQkOC5CbBXL7sFUWOR8X+fsvL6i7RLPSxBXDJQckqaVqB+d0+kDQzZlkH6+9ptCY/T24/oX5AFBmbDNitokGg87zY40Ype9mPGQru++eA+tHaIXMkTxrD6AVrc3pqnEALSEM9MepDkHargSbjjxX6sJFe2SZjyADoDR6E+eyvEsdUki4kGEe3GajkCNPTH77Yk3FBgpNfUDD72NiKaAdZrkq94upik447Z30jLexC8+ZTIaKpmCThgJIcgpPO7cVeIvCo20cz4QjE6jNXBusnmJvfKZAX9RAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAGiAgFsm7RA+7xioKOCLmsTeaQLuNVliMMkjFTT/4l9wIJK+RQnreMU1wlr6Myqx+sJWOVPLBASPrDqvFpthTVdZdejXfuhssiV3RckG+iRtv4U+EogkqXT+ViQDrWgooJkAP0D90sUfnECVO0PJ9vMcgMxjdC5b/J+t5dTzZFTTD/TJicyDqP78LMEb+WY2UtVzkY0MuwjdsYahe9hU1JNC29DLKSXg0Gm7nvmiPP0ouhlWQf78NUWz9V2YoxUGKOGFzOQs0jCWsoGMBPRRDoEacPblBwIWC5Jkv55tTpK/BKen91mjYQJACfod25KKTPQL+O4AG27UMoUT0SB6Bow='),('4d92a3d2-c872-4e5d-b1fb-a4292c7adada','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4df996bc-a164-481f-b242-7aee6bf58138','74121af4-233b-440c-a66e-b5caee9d502f','priority','100'),('60d1e991-44dc-4aa4-9053-ea42b3813fb8','eada00c0-a9df-4e93-9de8-90d65c7f0528','host-sending-registration-request-must-match','true'),('629d02a8-c423-4dac-86d8-255b63aac082','e065e0f2-2f3c-4899-a52f-3219845bed4a','kid','49609160-d7c9-48d8-ad3d-bce6236e3999'),('6c586867-92dd-4ca6-a36c-a80d7116036a','aed0bd42-f7f1-4ee0-82fc-04d32d4663f6','priority','100'),('6ce1db5b-27ed-49f6-a0f0-dfe5599df0f9','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','saml-role-list-mapper'),('75d7168e-44b8-431f-9d20-233101a0c053','0cd42aea-9a51-4ed6-9813-e9f0425a9f23','allow-default-scopes','true'),('7dba4d7c-da91-4237-bcfd-7ec49461b5c7','9c42d4c9-4a19-49ca-91ba-c0e93af8b107','certificate','MIICmzCCAYMCBgGf0hxAXTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwODA1MTMyNjM0WhcNMzYwODA1MTMyODE0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDAjq//kY2v3HgYjr/RxvGG6eUsKjZwPrWtyPhG/PU8FkAdACtSeN/dG6EDd0jFIyPjcheEcTSldBd135wxrvokJu25Cov+cdYYHhfFAeGN81lExOdaeXOsU7c0J3z1iV0Z67JkSaCiGCKl8ouGZaOWqyrkbVTemF3dT+VFlAqsYgezxyP61teJ0y3oNNhRo8g59NRdADOxxirki5InncvEXIBQAJobHBjJunI/4066fFWZJ4YSlLKfapLFPi3vHXr6YBe+lm88y22sN7Yt3A8eQHDRtgn8W5CKmDnJZAQ4ezT15Eq9YkwVc9vwMxacKGBH0K9wirkeQSSYbu5ojy2nAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJBMnqGjYsIo31RRTbOxluPY5ZvZGo1GFGUodIB7jFDgfrbw7DtzQEPQW3AgaMg6MLNEj4s0Guapz2bH9iaawXX6fF1L/UxtokBpVVD2wqPxWDTOkmZ/Wjyym5k5/Rzt+K3o0dcL9WCRgy/KdUl0rIjjLDJFd82I+8RbEDxpvEYL1HdyJlxW5G8+bTODj8yqDB1N/1XNUT8Gp9WQseHqeQcQluP7l89UP5a3uJdyHyBFNIRDmwy6uAfgLCzgMZaU+KhcFIbTe8zoAVfx/MT47xlCzWymVokxP30s/dg9sY59IUCxmGAhsfejJT8FUxlxkvJXSnfXSh+b2J7f6AnsQMg='),('7edfe2e2-d22e-482a-aab3-d71a0c87c598','9c42d4c9-4a19-49ca-91ba-c0e93af8b107','algorithm','RSA-OAEP'),('859c98a4-228f-4f08-9b7c-80311930e72c','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('96464eed-72c1-468d-ae5c-e518ac68433d','9c42d4c9-4a19-49ca-91ba-c0e93af8b107','privateKey','MIIEpAIBAAKCAQEAwI6v/5GNr9x4GI6/0cbxhunlLCo2cD61rcj4Rvz1PBZAHQArUnjf3RuhA3dIxSMj43IXhHE0pXQXdd+cMa76JCbtuQqL/nHWGB4XxQHhjfNZRMTnWnlzrFO3NCd89YldGeuyZEmgohgipfKLhmWjlqsq5G1U3phd3U/lRZQKrGIHs8cj+tbXidMt6DTYUaPIOfTUXQAzscYq5IuSJ53LxFyAUACaGxwYybpyP+NOunxVmSeGEpSyn2qSxT4t7x16+mAXvpZvPMttrDe2LdwPHkBw0bYJ/FuQipg5yWQEOHs09eRKvWJMFXPb8DMWnChgR9CvcIq5HkEkmG7uaI8tpwIDAQABAoIBAC9/40V5e8iaa5uvNv1CBJmBwBEVdqlYpstwTGKCiuIgIP+mZ4loHNz3sE/hEHfk07kLD2cR3+lCinj+yJJu9fCOE802H1OMdEItxjJIZQH1uhsfMWzdkd28JvC8HvSYxnka7b4UdYYWyxFBlA56qxCDN8jyeWGRl3H8//MackmUVJOYE+MJW4v9l7TTlTi4iAxnBnpHgQQxdr1HKtMVKO693OnuN6O7Q59uyfu1SuszUsaewaRILjglaB78kN0Z7kbinTLbJnDQDIEJX9BPNNQo7Cyccr6HgNN1nLn6aM1fuhqcI8MPv64EntqJS+bMyv7LrDbg7il8rqYSXeBeddUCgYEA/SYTUnlVr8UuIiTsIUuLNsdsFxlpKmj7l5fMpCW7Cz/gceqdtMwGqZwK8Uv/9SSY/PQqUzvocABunEpKSkcDCwZg+Keqwiq07OIesrrhxHUa3zY4DMSGrWP8w14vuYUJ9a49Vx6bRg+ofX/RkbLiP8ks/L4JQ/1erved01tmTtUCgYEAwrnnavB7U6BM+awg3WdP8Iv88qvfgmWYi4tsTs/e1ynW0jvA4nGM8/ASd5wmEdIGwRIZ4UNKGQRJu7Wmn6xl2r2k1/NHJsHHn3P2x7U3UYDv6e2COjMqCRm57ztrWrSzaDVl8TPBRYJ76vE+21yvkabXpzlO/3tmsnygDIro4IsCgYEA3mPiuaOKWT4aRzi0kJNzG46aMLjMIMvVqtlamCHlbf6RyMHaBgjvGXXSTyT7GXsrQ52kyTZp/msCwR6qoRI9ZCQYcJmrc6RdCXWkjlOLHzHZh5p0JxNHVW/vkBpgRtTPaRvHG4/xzNzYolf13c+O34Z2lRrFvQsLcR5rclBrUnkCgYAwVtAA9xPWbavOKxG5hKUOlOHFKC+DAk99DK5lXir2hNdkNxsp24BfKhCbirLUp6uvkBvGlNq3HR5kr7JeXwCl7YAXb7gRAffZOINhjjXeUMC99Izof70Gp1FF9x0uVj9XNjJJT0zCQaMbbqno8LhQ0vcj9xEKUQrscg2VL4KiAwKBgQCz8q4P2av+X80cL2y2L2yN9TvJ5yPA8todISIdKyMw+1yrOGc13iH3UJIvNU5xOH1DA4UGWk1C7ZRbCieyeR5mvPkV00iUGc6RPAgFAFdQYslHiSW4o4bCnnV4AL9mbPwt0WzffSKHEPpoAOMKUudCLkXMZWh68UFoOjIQwBnp/w=='),('966b08ff-1b05-4383-aba1-b801c4daa828','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','oidc-full-name-mapper'),('9a6d190a-9a95-44e8-b8cf-86ca6d59b5f1','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','saml-role-list-mapper'),('9cbaf480-6969-48a8-83d1-2e029137f394','eada00c0-a9df-4e93-9de8-90d65c7f0528','client-uris-must-match','true'),('a378af3e-385b-425c-abfd-7d179f944796','aed0bd42-f7f1-4ee0-82fc-04d32d4663f6','privateKey','MIIEowIBAAKCAQEA07Fb64JlZo6R7pTA604yVQxixU8VKoiAFpmN5FycKrlyuqNzogxdokYkJDguQmwVy+7BVFjkfF/n7Ly+ou0Sz0sQVwyUHJKmlagfndPpA0M2ZZB+vvabQmP09uP6F+QBQZmwzYraJBoPO82ONGKXvZjxkK7vvngPrR2iFzJE8aw+gFa3N6apxAC0hDPTHqQ5B2q4Em448V+rCRXtkmY8gA6A0ehPnsrxLHVJIuJBhHtxmo5AjT0x++2JNxQYKTX1Aw+9jYimgHWa5KveLqYpOOO2d9Iy3sQvPmUyGiqZgk4YCSHIKTzu3FXiLwqNtHM+EIxOozVwbrJ5ib3ymQF/UQIDAQABAoIBABM9XbGpjUEP7hrKnD9b67PScgZQFLK5QI2im8RzLPeubnX2Cw62+apDnl9IV96jkiuRtzJ3ox8xXD57klvzw1o3Dp91aN9b7hX7TLxRw9i5usTqUrVVFnFR7QlPWQM42WsL5odtJOb+aKoHxEfl5Lf6TDeDyWL8kyLUZvnyu1S3fORiJ6gB3As3LJSFWplpAdupfoTqFVu1Mk1FFCw3yvq4uR0phH+/jtGz9B6V5t0F5Ou2cJulG2jNXGRNwaNzbjO5y7jtsSYupimZNmL65Y6NoAaRKhsjd+6YEBx3H44kJOjzsMTJrIRl3nFU2FCF6snojkQBTG/xP/ByoYQmGw0CgYEA6h/zL4JExMgbpi3gHyXy1dIVPQA8csXi1Ag4lCDjgOUZ0XFcZnk6CUha8jdnE/LAXCo7olfJ/vZ++uzB5CuRl1Xjpm0VwD/W8b5Pel8Rpc8LdtxXGm1+Qyc0FA2L7ZH7pDWiU5YbTwVxmHcq2nLRGT79d7UX9C3uEshPcrCxu0sCgYEA53jbPZOJD5Z0L7d6SxyZAbPAATTsscN7b3l2hgPBxnT9M7rrZaHq4WPRp5GyNySAcqZCwlYnwPF8JLCbGUb9ntryCNORxQjiUwIkSbp3DKCmaQ9YZX3bEn9J0IjdBQYY0JYGmEUlx7/7Pu+mGCRauipWtxnqaCDVI8rR06QTklMCgYAcv0WN7NHi06tJcVKWoIM7q+r9rXy+nvumC0hfL9afagIMjH3K+1Gb+C1qllDqyyDBcFIYMe1UiBG5X77C9HKRAXPNaJGGJJCQ6Ew7+1ZgZJbExnNPhGg/eJ3VZIBs8ELUu90tpD3AKyvyi5dQcU6paemXfD3vtoAIAF5496crFwKBgQCz6bkm3FTNG9lE+WyBk0HOE+OqTHOpG9MGazdXpPXphicEHUY4IalJ9OcRQuptd96qvlXnbUXK7yfZ8Lcs54PcBDvZ5nBH4MbhVCnWcKt10ixmPnorsK4la3B5ONfpvrps7h9EHYLnBm6HlYfY/fDTAHOUL/2FX/eqsUt0H/TiZwKBgE2zc5OdGFYIprTN3FjDsedXu93AAmQ1C4T/KO/iyjjaf+FjiDG4JAjyJP4hGVjWhvI1dh0oZ90nwlR3o/dt+yCSIXDzEtC9Cq4IBlFnK1n0XkFa0TQBD/EUHsv8fnJRPLQW2RS2VKdCuPLBkeChYbTUd3IK8sHa69v0di4MSFyf'),('d326dfcc-a180-40e7-a3aa-0a1158495569','3a88dacf-13fa-4e68-8cd5-6dc39546f053','max-clients','200'),('d50af3cd-f551-43bc-be0c-be69237723c0','74121af4-233b-440c-a66e-b5caee9d502f','kid','5b8a41f1-97ff-4b17-8b86-030d72f58d9e'),('d5ca4346-0956-49c9-84e1-0dbc56e22ea4','94d2046d-b41e-4097-885a-72d9fe26861a','allow-default-scopes','true'),('dadfe72c-72e0-414e-850e-0750c1fe46e5','e065e0f2-2f3c-4899-a52f-3219845bed4a','secret','Z-ACyGwa_BEoSyBqA3pqpMkupFqkjp5EOyk04wSsQmef0dyS7EoLdYeUbzn2shguMkfTMEKonPtHI0PQx6g8iBFMc9WqPJ7kUHcaPsoc4guiFXvJ2H0YJdOxUilvMELwZhcsWFg8oCBqCosCICwjUpee9UosjrrNEEvd2zc_nzE'),('dc06a230-d5df-4a06-a956-a5076a0065b0','aed0bd42-f7f1-4ee0-82fc-04d32d4663f6','keyUse','SIG'),('e27ecd1a-963c-492b-bb17-957231277481','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e28b0158-92df-4797-95b1-953d7c417b44','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('e73c719b-144a-49b3-a290-ade462a3a37a','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ea72082d-bf92-4a7a-880b-e2a5eab23e5e','9c42d4c9-4a19-49ca-91ba-c0e93af8b107','keyUse','ENC'),('f3220eb8-6b13-48f5-b9bf-7c134e1622ba','2342299c-ec35-487d-ade6-258abb3afd0e','allowed-protocol-mapper-types','oidc-address-mapper'),('f85f3afe-a740-40b4-a583-87eb4c1c2f2e','9c735624-a9c0-466b-bfbe-c19c271bf177','allowed-protocol-mapper-types','oidc-address-mapper'),('fbee8279-c28e-4a4a-a656-785134c6edca','e065e0f2-2f3c-4899-a52f-3219845bed4a','algorithm','HS512');
UNLOCK TABLES;

--
-- Dumping data for table `composite_role`
--

LOCK TABLES `composite_role` WRITE;
INSERT INTO `composite_role` VALUES ('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','65d1d6a1-26c3-4e41-8d05-30463e8f2995'),('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','7f881f44-8269-4217-9f93-de7dfb733417'),('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','8318417d-f3eb-46ea-a1f3-8afdc413b6c2'),('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','d5e68ee9-b230-4aba-bb51-395e2c394063'),('3b0ca753-d4c6-4ca4-ab5f-af9f16eab694','4e3dccb4-2b8f-487b-ad0a-a3c2b207c9de'),('79569f79-e8d7-409b-a31d-caec73b95107','0a653438-893b-4a00-b783-d8a69131f6fd'),('79569f79-e8d7-409b-a31d-caec73b95107','17e1cbf3-b135-4fb1-92d1-91828e966ebb'),('79569f79-e8d7-409b-a31d-caec73b95107','21c7d095-9fce-4e73-b14c-cca88ce408a8'),('79569f79-e8d7-409b-a31d-caec73b95107','2fac808a-8618-4b6d-9d3d-ccebc5f42c57'),('79569f79-e8d7-409b-a31d-caec73b95107','3846ed3d-1c21-4572-a9de-e94f6a69e307'),('79569f79-e8d7-409b-a31d-caec73b95107','3b0ca753-d4c6-4ca4-ab5f-af9f16eab694'),('79569f79-e8d7-409b-a31d-caec73b95107','3c927a62-8746-43a3-a2d6-af8afb80b3f5'),('79569f79-e8d7-409b-a31d-caec73b95107','4e3dccb4-2b8f-487b-ad0a-a3c2b207c9de'),('79569f79-e8d7-409b-a31d-caec73b95107','62fa0b3a-1366-4844-9e39-4369bfbd5546'),('79569f79-e8d7-409b-a31d-caec73b95107','7aeddea0-33c3-4805-a22b-4b2a5f459126'),('79569f79-e8d7-409b-a31d-caec73b95107','83ca3b82-920f-4384-adbc-10c9db9d8a4f'),('79569f79-e8d7-409b-a31d-caec73b95107','877049f0-aa8a-4531-a24e-e78095d7d175'),('79569f79-e8d7-409b-a31d-caec73b95107','9e8173f3-f6a0-4faf-b76e-9dd8dedf03ab'),('79569f79-e8d7-409b-a31d-caec73b95107','a24d11e9-78a0-4b36-8c3b-b4d3dd985894'),('79569f79-e8d7-409b-a31d-caec73b95107','a326fe98-5b27-4065-abbc-ef7959098e84'),('79569f79-e8d7-409b-a31d-caec73b95107','ac30e946-5bf5-425a-a464-e049207b1bd7'),('79569f79-e8d7-409b-a31d-caec73b95107','c50420d2-5b79-44d6-80a1-403fc38aeee9'),('79569f79-e8d7-409b-a31d-caec73b95107','c7c52932-6bb5-4c59-b49b-16ee7f09189d'),('79569f79-e8d7-409b-a31d-caec73b95107','d8ac8ba8-1074-46df-b488-08b811210bcf'),('79569f79-e8d7-409b-a31d-caec73b95107','dfa0c40a-47ab-403d-8c57-f3e17274eae2'),('79569f79-e8d7-409b-a31d-caec73b95107','f8565242-95df-4a13-a07c-92881c12d6ea'),('79569f79-e8d7-409b-a31d-caec73b95107','fd6ac9d7-6d86-4c68-b471-d82ad7719ea8'),('7aeddea0-33c3-4805-a22b-4b2a5f459126','83ca3b82-920f-4384-adbc-10c9db9d8a4f'),('a14bf115-2328-41f6-b0c0-5a6e8438af2d','4489a93c-10dc-4fa5-bc19-09e0ec29041a'),('d5e68ee9-b230-4aba-bb51-395e2c394063','98d28894-6cc9-474d-a870-e32f8c7927c0'),('fd6ac9d7-6d86-4c68-b471-d82ad7719ea8','0a653438-893b-4a00-b783-d8a69131f6fd'),('fd6ac9d7-6d86-4c68-b471-d82ad7719ea8','a24d11e9-78a0-4b36-8c3b-b4d3dd985894');
UNLOCK TABLES;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
INSERT INTO `credential` VALUES ('7cdfeafe-4a40-4d2a-a841-debe9fe737d9',NULL,'password','afbc5c68-9f3a-457a-ba8d-b0c676f0590b',1785936495097,NULL,'{\"value\":\"w1GTtY8Dd6+MauMnxdDyX7UiUMG7lC5o5Cbddxc81NQ=\",\"salt\":\"ekN2Z08/HpZxjN7qwfIKSQ==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0);
UNLOCK TABLES;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
INSERT INTO `databasechangelog` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2026-08-05 22:27:53',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2026-08-05 22:27:53',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2026-08-05 22:27:54',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2026-08-05 22:27:54',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2026-08-05 22:27:54',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2026-08-05 22:27:54',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2026-08-05 22:27:55',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2026-08-05 22:27:55',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2026-08-05 22:27:55',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2026-08-05 22:27:56',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2026-08-05 22:27:56',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2026-08-05 22:27:56',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2026-08-05 22:27:56',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-08-05 22:27:56',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-08-05 22:27:56',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-08-05 22:27:56',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-08-05 22:27:56',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2026-08-05 22:27:57',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2026-08-05 22:27:57',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2026-08-05 22:27:57',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2026-08-05 22:27:57',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2026-08-05 22:27:57',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2026-08-05 22:27:57',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2026-08-05 22:27:57',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2026-08-05 22:27:57',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2026-08-05 22:27:58',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-08-05 22:28:04',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.33.0',NULL,NULL,'5936465482'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2026-08-05 22:28:04',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2026-08-05 22:28:04',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2026-08-05 22:28:04',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('18.0.15-30992-index-consent','keycloak','META-INF/jpa-changelog-18.0.15.xml','2026-08-05 22:28:04',107,'EXECUTED','9:80071ede7a05604b1f4906f3bf3b00f0','createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2026-08-05 22:28:04',108,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2026-08-05 22:27:59',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2026-08-05 22:27:59',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2026-08-05 22:27:59',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2026-08-05 22:27:59',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-08-05 22:27:59',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2026-08-05 22:27:59',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-08-05 22:27:59',34,'MARK_RAN','9:737ee933fd399814ed5e24f3b1bbe39d','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-08-05 22:27:59',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-08-05 22:27:59',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2026-08-05 22:27:59',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-08-05 22:28:04',109,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('20.0.0-12964-supported-dbs-edb-migration','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-08-05 22:28:04',110,'MARK_RAN','9:a6b18a8e38062df5793edbe064f4aecd','dropIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE; createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-08-05 22:28:04',111,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2026-08-05 22:28:04',115,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-08-05 22:28:04',116,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-08-05 22:28:04',117,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-08-05 22:28:04',118,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-08-05 22:28:04',119,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-08-05 22:28:05',120,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.33.0',NULL,NULL,'5936465482'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-08-05 22:28:05',121,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-08-05 22:28:05',124,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.0-26618-edb-migration','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-08-05 22:28:05',126,'MARK_RAN','9:2f684b29d414cd47efe3a3599f390741','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES; createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-08-05 22:28:05',125,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-08-05 22:28:05',122,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-08-05 22:28:05',123,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-08-05 22:28:05',127,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-08-05 22:28:05',128,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-08-05 22:28:05',129,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-2-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',136,'EXECUTED','9:b7ef76036d3126bb83c2423bf4d449d6','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-2-not-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',137,'MARK_RAN','9:23396cf51ab8bc1ae6f0cac7f9f6fcf7','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-cleanup-css-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',135,'EXECUTED','9:5411d2fb2891d3e8d63ddb55dfa3c0c9','dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-cleanup-uss-by-usersess','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',134,'EXECUTED','9:6eee220d024e38e89c799417ec33667f','dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-cleanup-uss-createdon','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',132,'EXECUTED','9:78ab4fc129ed5e8265dbcc3485fba92f','dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-cleanup-uss-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',133,'EXECUTED','9:de5f7c1f7e10994ed8b62e621d20eaab','dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',131,'EXECUTED','9:3e96709818458ae49f3c679ae58d263a','createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28265-tables','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',130,'EXECUTED','9:deda2df035df23388af95bbd36c17cef','addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-28861-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',142,'EXECUTED','9:b9acb58ac958d9ada0fe12a5d4794ab1','createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET','',NULL,'4.33.0',NULL,NULL,'5936465482'),('25.0.0-org','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',138,'EXECUTED','9:5c859965c2c9b9c72136c360649af157','createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-32583-drop-redundant-index-on-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',150,'EXECUTED','9:24972d83bf27317a055d234187bb4af9','dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-33201-org-redirect-url','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',152,'EXECUTED','9:4d0e22b0ac68ebe9794fa9cb752ea660','addColumn tableName=ORG','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-idps-for-login','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',149,'EXECUTED','9:51f5fffadf986983d4bd59582c6c1604','addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-org-alias','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',143,'EXECUTED','9:6ef7d63e4412b3c2d66ed179159886a4','addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-org-group','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',144,'EXECUTED','9:da8e8087d80ef2ace4f89d8c5b9ca223','addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-org-group-membership','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',146,'EXECUTED','9:a6ace2ce583a421d89b01ba2a28dc2d4','addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0-org-indexes','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',145,'EXECUTED','9:79b05dcd610a8c7f25ec05135eec0857','createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',151,'EXECUTED','9:febdc0f47f2ed241c59e60f58c3ceea5','dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.1.0-34013','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-08-05 22:28:05',154,'EXECUTED','9:e6b686a15759aef99a6d758a5c4c6a26','addColumn tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.1.0-34380','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-08-05 22:28:05',155,'EXECUTED','9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01','dropTable tableName=USERNAME_LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.2.0-26106','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-08-05 22:28:05',157,'EXECUTED','9:b5877d5dab7d10ff3a9d209d7beb6680','addColumn tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.2.0-36750','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-08-05 22:28:05',156,'EXECUTED','9:b49ce951c22f7eb16480ff085640a33a','createTable tableName=SERVER_CONFIG','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.2.6-39866-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-08-05 22:28:05',158,'EXECUTED','9:1dc67ccee24f30331db2cba4f372e40e','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.2.6-39866-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-08-05 22:28:05',159,'EXECUTED','9:b70b76f47210cf0a5f4ef0e219eac7cd','addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.2.6-40088-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-08-05 22:28:05',160,'EXECUTED','9:cc7e02ed69ab31979afb1982f9670e8f','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.2.6-40088-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-08-05 22:28:05',161,'EXECUTED','9:5bb848128da7bc4595cc507383325241','addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.3.0-groups-description','keycloak','META-INF/jpa-changelog-26.3.0.xml','2026-08-05 22:28:05',162,'EXECUTED','9:e1a3c05574326fb5b246b73b9a4c4d49','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.4.0-40933-saml-encryption-attributes','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-08-05 22:28:05',163,'EXECUTED','9:7e9eaba362ca105efdda202303a4fe49','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.4.0-51321','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-08-05 22:28:05',164,'EXECUTED','9:34bab2bc56f75ffd7e347c580874e306','createIndex indexName=IDX_EVENT_ENTITY_USER_ID_TYPE, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-add-remember-me','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',172,'EXECUTED','9:a7273ea8b21bd2f674c9c49141999f05','addColumn tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-add-sess-create-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',174,'EXECUTED','9:aaee09e23a4d8468fbc5c51b7b314c58','createIndex indexName=IDX_USER_SESSION_EXPIRATION_LAST_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-add-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',173,'EXECUTED','9:ce49383d317ccbcd3434d1f21172b0b7','createIndex indexName=IDX_USER_SESSION_EXPIRATION_CREATED, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-drop-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',175,'EXECUTED','9:f0082210b6ccbbaf81287c27aa23753c','dropIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-idp-config-allow-null','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',169,'EXECUTED','9:b667fb087874303b324c1af7fae4f606','dropDefaultValue columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=STORE_TOKEN, tableName=IDENTITY_PROVIDER; dropDefaultValue columnName...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-idp-config-allow-null-fixed-create-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',170,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-idp-config-allow-null-fixed-drop-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',168,'MARK_RAN','9:50c51d2c98cd1d624eb1c485c3cf1f75','dropIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-index-offline-css-by-client','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:05',166,'EXECUTED','9:680b59ca7854fa5b77a303301bb2a941','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-index-offline-css-by-client-storage-provider','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',167,'EXECUTED','9:809bc160e2bc92f9c28eea39db323ae2','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-invitations-table-fixed2','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',177,'EXECUTED','9:322cb11fc03181903dcd67a54f8b3cf0','createTable tableName=ORG_INVITATION; addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex index...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-mysql-mariadb-default-charset-collation','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',176,'EXECUTED','9:1b383fa60d2db0a8952b365e725f9d16','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.5.0-remove-workflow-provider-id-column','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-08-05 22:28:06',171,'EXECUTED','9:d8eeb324484d45e946d03b953e168b21','dropIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; dropColumn columnName=WORKFLOW_PROVIDER_ID, tableName=WORKFLOW_STATE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-43829-user-created-timestamp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',187,'EXECUTED','9:f2531a49b8bb21a7a97966d88fd1a411','createIndex indexName=IDX_USER_CREATED_TIMESTAMP, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-44424-create-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',182,'EXECUTED','9:77dbbc72d943e98cfe472ba8cc56a31c','addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-44424-idx-css-realm-and-clients','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',184,'EXECUTED','9:a093877fff41185ac24103be80e00968','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-44424-index-css-user-session-and-offline','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',181,'EXECUTED','9:a704d8598df241a3fd3cb91b6ab4b2d4','createIndex indexName=IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-44424-set-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',183,'EXECUTED','9:3964a3148d32a55ef81126e23cdf6721','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-45009-broker-link-identity-provider','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',179,'EXECUTED','9:7d9a0253c9de7be754efef8bba4265bd','createIndex indexName=IDX_BROKER_LINK_IDENTITY_PROVIDER, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-45009-broker-link-user-id','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',178,'EXECUTED','9:05026bbbc8d2ead5afcbda2f5fdf3a2b','createIndex indexName=IDX_BROKER_LINK_USER_ID, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-48716-create-mssql-idp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',188,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-add-last-modified-timestamp-user','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',185,'EXECUTED','9:8aa583d2cdd9e913dff42fecd626c560','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-add-timestamps-group','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',186,'EXECUTED','9:4363d45dc25105a3fc5db9ff6936b0a9','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.6.0-org-group-relationship','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-08-05 22:28:06',180,'EXECUTED','9:05685853fba030f53548ac6bf23245e3','addColumn tableName=KEYCLOAK_GROUP; addForeignKeyConstraint baseTableName=KEYCLOAK_GROUP, constraintName=FK_GROUP_ORGANIZATION, referencedTableName=ORG; createIndex indexName=IDX_GROUP_ORG_ID, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-45292-realm-display-name-add-column','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',190,'EXECUTED','9:1de8c7824ce4fd7c739db6195f42be21','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-45292-realm-display-name-migrate-data','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',191,'EXECUTED','9:293096bc554dd51428d1d9882f2de1dd','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-45292-realm-display-name-remove-attribute','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',192,'EXECUTED','9:a08357e3b0908c09d478e692cf82f865','delete tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-46204-issued-ver-credential-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',197,'EXECUTED','9:4918c6f68ba90ce417f1aaa031013168','createTable tableName=ISSUED_VER_CREDENTIAL; addPrimaryKey constraintName=PK_ISSUED_VER_CREDENTIAL, tableName=ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=ISSUED_VER_CREDENTIAL, constraintName=FK_ISSUED_VER_CREDENTIAL_USER, referen...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-9686-dynamic-scopes-consent','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',196,'EXECUTED','9:fb689bc3ff64e174d6319014b38876f1','addColumn tableName=USER_CONSENT_CLIENT_SCOPE; dropPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addColumn...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-add-last-modified-timestamp-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',209,'EXECUTED','9:bae67d2faa5438ee35adfbb20a53c3c6','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-add-timestamps-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',208,'EXECUTED','9:df5324c82398b446690b206c07649d40','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-cluster-event','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',210,'EXECUTED','9:556b201eb9c378fa05d5bf22ec9c8dcf','createTable tableName=CLUSTER_EVENT; addPrimaryKey constraintName=PK_CLUSTER_EVENT, tableName=CLUSTER_EVENT; createIndex indexName=IDX_CLUSTER_EVENT_TARGET, tableName=CLUSTER_EVENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-federated-issued-ver-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',200,'EXECUTED','9:3d610f5527879623a0d2362e64fa667f','createTable tableName=FED_ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=FED_ISSUED_VER_CREDENTIAL, constraintName=FK_FED_ISSUED_VC_VER_CRED, referencedTableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_ISSUED_VC_USER, ...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-federated-verifiable-credentials-1','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',194,'EXECUTED','9:49092fa73b1c2b3afca48d91b8111c65','createTable tableName=FED_USER_VER_CREDENTIAL; addUniqueConstraint constraintName=UK_FED_USER_VC, tableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_USER_VC_REALM_USER, tableName=FED_USER_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-issued-ver-credential-expires-at-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',198,'EXECUTED','9:ab9e4c0c9f21d9217ffe52968a3cf732','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-issued-ver-credential-vc-id-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',199,'EXECUTED','9:1c9b18926e48b4b66d0341400bd13834','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_VC, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-jdbcping-timestamp','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',189,'EXECUTED','9:9a91f62e494bd013594e007b74d01638','addColumn tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-login-failure-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',207,'EXECUTED','9:f554afc6ad14784c99f6ad8811ac30ec','createIndex indexName=IDX_LOGIN_FAILURE_EXPIRE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-login-failure-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',206,'EXECUTED','9:671b50f88904b24ceb02463dd2d0c045','createTable tableName=LOGIN_FAILURE; addPrimaryKey constraintName=PK_LOGIN_FAILURE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-outbox','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',195,'EXECUTED','9:338b2743ca1be95f895d8f9b0cbe7b55','createTable tableName=OUTBOX_ENTRY; addUniqueConstraint constraintName=UC_OUTBOX_KIND_OWNER_CORRELATION, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_DRAIN, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_REALM, tableName=OUTB...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-persistent-auth-session-root-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',202,'EXECUTED','9:3090cd11d2dfeb5df754f41c0ffa35d7','createIndex indexName=IDX_ROOT_AUTH_SESSION_REALM, tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-persistent-auth-session-root-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',201,'EXECUTED','9:ad622d5eebdf468747a0d08d2367a68e','createTable tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-persistent-auth-session-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',203,'EXECUTED','9:609b8a172e43f617bb8920efd2b9ae5f','createTable tableName=AUTH_SESSION; addPrimaryKey constraintName=PK_AUTH_SESSION, tableName=AUTH_SESSION; addForeignKeyConstraint baseTableName=AUTH_SESSION, constraintName=FK_AUTH_SESSION_ROOT, referencedTableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-single-use-object-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',205,'EXECUTED','9:b2ad66c013f48dc131ce109eface7fa5','createIndex indexName=IDX_SINGLE_USE_OBJ_EXPIRE, tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-single-use-object-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:07',204,'EXECUTED','9:22bc4eb8e456b3b7be2808e457a44cb7','createTable tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('26.7.0-verifiable-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-08-05 22:28:06',193,'EXECUTED','9:68d8df23794085e79ba08b5046cba31d','createTable tableName=USER_VER_CREDENTIAL; addPrimaryKey constraintName=CONSTRAINT_VCRED_PM, tableName=USER_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=USER_VER_CREDENTIAL, constraintName=FK_VCRED_USER, referencedTableName=USER_ENTITY; a...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('29399-jdbc-ping-default','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-08-05 22:28:05',153,'EXECUTED','9:007dbe99d7203fca403b89d4edfdf21e','createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2026-08-05 22:27:59',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-08-05 22:27:59',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2026-08-05 22:27:59',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-08-05 22:27:59',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-08-05 22:28:00',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2026-08-05 22:28:00',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2026-08-05 22:28:01',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2026-08-05 22:28:01',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2026-08-05 22:28:01',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2026-08-05 22:28:01',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2026-08-05 22:28:01',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('31296-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',147,'EXECUTED','9:64ef94489d42a358e8304b0e245f0ed4','createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'5936465482'),('31725-index-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-08-05 22:28:05',148,'EXECUTED','9:b994246ec2bf7c94da881e1d28782c7b','createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-08-05 22:28:01',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-08-05 22:28:03',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-08-05 22:28:02',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-08-05 22:28:01',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2026-08-05 22:28:03',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2026-08-05 22:28:03',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2026-08-05 22:28:03',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2026-08-05 22:28:03',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2026-08-05 22:28:03',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2026-08-05 22:28:03',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2026-08-05 22:28:03',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2026-08-05 22:28:03',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('40343-workflow-state-table','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-08-05 22:28:05',165,'EXECUTED','9:ed3ab4723ceed210e5b5e60ac4562106','createTable tableName=WORKFLOW_STATE; addPrimaryKey constraintName=PK_WORKFLOW_STATE, tableName=WORKFLOW_STATE; addUniqueConstraint constraintName=UQ_WORKFLOW_RESOURCE, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_STEP, table...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-08-05 22:28:03',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-08-05 22:28:03',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-08-05 22:28:03',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-08-05 22:28:03',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-08-05 22:28:03',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-08-05 22:28:03',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-08-05 22:28:03',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-08-05 22:28:04',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-08-05 22:28:04',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-08-05 22:28:04',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-08-05 22:28:04',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-08-05 22:28:04',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-08-05 22:28:04',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-08-05 22:28:04',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-08-05 22:28:01',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2026-08-05 22:27:58',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2026-08-05 22:27:58',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-08-05 22:28:00',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-08-05 22:28:00',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-08-05 22:28:00',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-08-05 22:28:01',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2026-08-05 22:28:03',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2026-08-05 22:28:03',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-08-05 22:28:03',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-08-05 22:28:03',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.33.0',NULL,NULL,'5936465482'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2026-08-05 22:28:03',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'5936465482'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-08-05 22:28:04',113,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('client-attributes-string-accomodation-fixed-post-create-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-08-05 22:28:04',114,'MARK_RAN','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('client-attributes-string-accomodation-fixed-pre-drop-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-08-05 22:28:04',112,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.33.0',NULL,NULL,'5936465482'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5936465482'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-08-05 22:28:04',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.33.0',NULL,NULL,'5936465482'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2026-08-05 22:28:04',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.33.0',NULL,NULL,'5936465482'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-08-05 22:28:04',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-08-05 22:28:04',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('unique-consentuser','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',139,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('unique-consentuser-edb-migration','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',140,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5936465482'),('unique-consentuser-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-08-05 22:28:05',141,'EXECUTED','9:b79478aad5adaa1bc428e31563f55e8e','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5936465482');
UNLOCK TABLES;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
INSERT INTO `databasechangeloglock` VALUES (1,0,NULL,NULL),(1000,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `default_client_scope`
--

LOCK TABLES `default_client_scope` WRITE;
INSERT INTO `default_client_scope` VALUES ('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','06792d44-efd9-46e3-85c4-0024c68930b0',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','28185292-0d63-42ea-a0b6-6d3b01a378ac',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','2c12fc49-65a5-46b8-8c73-a973c14a9cec',0),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','32f4baab-7429-4728-8bf3-fd9e5019aef8',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','6415aae0-0156-40b3-8e6a-f56272a500ab',0),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','654b16cf-8d6e-414f-a566-a855b8bbf812',0),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','736c393a-6db4-4300-82ae-8868852b5561',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','7933549e-2095-4e01-83c1-3f8950e612b8',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','9269b884-e10b-4890-91cb-ba7b83045fd1',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c4fdd96c-88fe-48e9-92a4-4843bfee989f',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','de8c46af-0dae-4b04-b2e7-31ebd078cf74',0),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','e1c5e703-5fb7-4e81-a9ed-88588836c607',1),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','ea296d1c-d3fc-4a9f-a981-ae342673a313',0),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','f8b30c20-9f89-46fc-82c4-d283d81b683e',1);
UNLOCK TABLES;

--
-- Dumping data for table `event_entity`
--

LOCK TABLES `event_entity` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_issued_ver_credential`
--

LOCK TABLES `fed_issued_ver_credential` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_attribute`
--

LOCK TABLES `fed_user_attribute` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_consent`
--

LOCK TABLES `fed_user_consent` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_consent_cl_scope`
--

LOCK TABLES `fed_user_consent_cl_scope` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_credential`
--

LOCK TABLES `fed_user_credential` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_group_membership`
--

LOCK TABLES `fed_user_group_membership` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_required_action`
--

LOCK TABLES `fed_user_required_action` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_role_mapping`
--

LOCK TABLES `fed_user_role_mapping` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `fed_user_ver_credential`
--

LOCK TABLES `fed_user_ver_credential` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `federated_identity`
--

LOCK TABLES `federated_identity` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `federated_user`
--

LOCK TABLES `federated_user` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `group_attribute`
--

LOCK TABLES `group_attribute` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `group_role_mapping`
--

LOCK TABLES `group_role_mapping` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `identity_provider`
--

LOCK TABLES `identity_provider` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `identity_provider_config`
--

LOCK TABLES `identity_provider_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `identity_provider_mapper`
--

LOCK TABLES `identity_provider_mapper` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `idp_mapper_config`
--

LOCK TABLES `idp_mapper_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `issued_ver_credential`
--

LOCK TABLES `issued_ver_credential` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `jgroups_ping`
--

LOCK TABLES `jgroups_ping` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `keycloak_group`
--

LOCK TABLES `keycloak_group` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `keycloak_role`
--

LOCK TABLES `keycloak_role` WRITE;
INSERT INTO `keycloak_role` VALUES ('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,'${role_default-roles}','default-roles-master','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL,NULL),('0a653438-893b-4a00-b783-d8a69131f6fd','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_query-users}','query-users','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('17e1cbf3-b135-4fb1-92d1-91828e966ebb','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-clients}','manage-clients','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('21c7d095-9fce-4e73-b14c-cca88ce408a8','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-users}','manage-users','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('2fac808a-8618-4b6d-9d3d-ccebc5f42c57','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_impersonation}','impersonation','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('3846ed3d-1c21-4572-a9de-e94f6a69e307','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_query-realms}','query-realms','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('3b0ca753-d4c6-4ca4-ab5f-af9f16eab694','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-organizations}','view-organizations','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('3c927a62-8746-43a3-a2d6-af8afb80b3f5','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-realm}','manage-realm','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('4489a93c-10dc-4fa5-bc19-09e0ec29041a','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_view-consent}','view-consent','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('4e3dccb4-2b8f-487b-ad0a-a3c2b207c9de','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_query-organizations}','query-organizations','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('4faa026e-bc02-40cd-8509-310915704e03','002d2472-4c6e-425a-8d8d-bbde9c9cffdb',1,'${role_read-token}','read-token','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','002d2472-4c6e-425a-8d8d-bbde9c9cffdb',NULL),('5eee2cc2-a79b-45a4-892f-2399b99e4bd1','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_delete-account}','delete-account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('62fa0b3a-1366-4844-9e39-4369bfbd5546','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-organizations}','manage-organizations','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('65d1d6a1-26c3-4e41-8d05-30463e8f2995','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,'${role_uma_authorization}','uma_authorization','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL,NULL),('79569f79-e8d7-409b-a31d-caec73b95107','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,'${role_admin}','admin','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL,NULL),('7aeddea0-33c3-4805-a22b-4b2a5f459126','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-clients}','view-clients','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('7f881f44-8269-4217-9f93-de7dfb733417','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,'${role_offline-access}','offline_access','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL,NULL),('8318417d-f3eb-46ea-a1f3-8afdc413b6c2','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_view-profile}','view-profile','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('83ca3b82-920f-4384-adbc-10c9db9d8a4f','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_query-clients}','query-clients','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('877049f0-aa8a-4531-a24e-e78095d7d175','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-events}','view-events','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('98720f29-f805-4a35-a3f1-f9a49fa832ad','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_view-applications}','view-applications','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('98d28894-6cc9-474d-a870-e32f8c7927c0','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_manage-account-links}','manage-account-links','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('9e8173f3-f6a0-4faf-b76e-9dd8dedf03ab','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-identity-providers}','manage-identity-providers','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('a14bf115-2328-41f6-b0c0-5a6e8438af2d','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_manage-consent}','manage-consent','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('a24d11e9-78a0-4b36-8c3b-b4d3dd985894','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_query-groups}','query-groups','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('a326fe98-5b27-4065-abbc-ef7959098e84','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-authorization}','view-authorization','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('ac30e946-5bf5-425a-a464-e049207b1bd7','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,'${role_create-realm}','create-realm','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',NULL,NULL),('c50420d2-5b79-44d6-80a1-403fc38aeee9','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-events}','manage-events','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('c7c52932-6bb5-4c59-b49b-16ee7f09189d','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_create-client}','create-client','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('d5e68ee9-b230-4aba-bb51-395e2c394063','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_manage-account}','manage-account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('d8ac8ba8-1074-46df-b488-08b811210bcf','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-realm}','view-realm','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('dfa0c40a-47ab-403d-8c57-f3e17274eae2','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-identity-providers}','view-identity-providers','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('f72437e8-0636-4937-89fb-5bb2bd2d29d2','c212610c-4fc6-41b4-8772-ce82c13d3f02',1,'${role_view-groups}','view-groups','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','c212610c-4fc6-41b4-8772-ce82c13d3f02',NULL),('f8565242-95df-4a13-a07c-92881c12d6ea','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_manage-authorization}','manage-authorization','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL),('fd6ac9d7-6d86-4c68-b471-d82ad7719ea8','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1,'${role_view-users}','view-users','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','411f5e93-7ec5-45c5-988a-1c8d00ac33b1',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `login_failure`
--

LOCK TABLES `login_failure` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `migration_model`
--

LOCK TABLES `migration_model` WRITE;
INSERT INTO `migration_model` VALUES ('5c8g6','26.7.0',1785936492);
UNLOCK TABLES;

--
-- Dumping data for table `offline_client_session`
--

LOCK TABLES `offline_client_session` WRITE;
INSERT INTO `offline_client_session` VALUES ('3wLqZeTRfd697fJymxRqNYIN','49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','0',1785936499,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"49b41a3c-a36b-4f7e-bdb6-15eb47c721d4\",\"userSessionStartedAt\":\"1785936499\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785936499\",\"level-of-authentication\":\"-1\"}}','local','local',0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('8I-pCkniworSlk1Awn3wASpt','49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','0',1785936503,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"49b41a3c-a36b-4f7e-bdb6-15eb47c721d4\",\"userSessionStartedAt\":\"1785936503\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785936503\",\"level-of-authentication\":\"-1\"}}','local','local',0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('liJ1qVbAksjpU9BHmApXVnQH','49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','0',1785936503,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"49b41a3c-a36b-4f7e-bdb6-15eb47c721d4\",\"userSessionStartedAt\":\"1785936503\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785936503\",\"level-of-authentication\":\"-1\"}}','local','local',0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('VhsQ9U0z3c-VzZBdZF846cM3','49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','0',1785936503,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"49b41a3c-a36b-4f7e-bdb6-15eb47c721d4\",\"userSessionStartedAt\":\"1785936503\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785936503\",\"level-of-authentication\":\"-1\"}}','local','local',0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756'),('y8rys04CjrGRkh880HOOcAdR','49b41a3c-a36b-4f7e-bdb6-15eb47c721d4','0',1785936500,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"49b41a3c-a36b-4f7e-bdb6-15eb47c721d4\",\"userSessionStartedAt\":\"1785936500\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785936500\",\"level-of-authentication\":\"-1\"}}','local','local',0,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756');
UNLOCK TABLES;

--
-- Dumping data for table `offline_user_session`
--

LOCK TABLES `offline_user_session` WRITE;
INSERT INTO `offline_user_session` VALUES ('3wLqZeTRfd697fJymxRqNYIN','afbc5c68-9f3a-457a-ba8d-b0c676f0590b','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1785936499,'0','{\"ipAddress\":\"172.18.0.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xOCIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"0d248860-4fd3-4b6b-898d-8be14fcff2bc\\\":1785936499,\\\"9a0e344d-bd2d-4236-90ac-1948f3ebfa01\\\":1785936499}\"},\"state\":\"LOGGED_IN\"}',1785936499,NULL,0,0),('8I-pCkniworSlk1Awn3wASpt','afbc5c68-9f3a-457a-ba8d-b0c676f0590b','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1785936503,'0','{\"ipAddress\":\"172.18.0.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xOCIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"0d248860-4fd3-4b6b-898d-8be14fcff2bc\\\":1785936503,\\\"9a0e344d-bd2d-4236-90ac-1948f3ebfa01\\\":1785936503}\"},\"state\":\"LOGGED_IN\"}',1785936503,NULL,0,0),('liJ1qVbAksjpU9BHmApXVnQH','afbc5c68-9f3a-457a-ba8d-b0c676f0590b','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1785936503,'0','{\"ipAddress\":\"172.18.0.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xOCIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"0d248860-4fd3-4b6b-898d-8be14fcff2bc\\\":1785936503,\\\"9a0e344d-bd2d-4236-90ac-1948f3ebfa01\\\":1785936503}\"},\"state\":\"LOGGED_IN\"}',1785936503,NULL,0,0),('VhsQ9U0z3c-VzZBdZF846cM3','afbc5c68-9f3a-457a-ba8d-b0c676f0590b','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1785936503,'0','{\"ipAddress\":\"172.18.0.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xOCIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"0d248860-4fd3-4b6b-898d-8be14fcff2bc\\\":1785936503,\\\"9a0e344d-bd2d-4236-90ac-1948f3ebfa01\\\":1785936503}\"},\"state\":\"LOGGED_IN\"}',1785936503,NULL,0,0),('y8rys04CjrGRkh880HOOcAdR','afbc5c68-9f3a-457a-ba8d-b0c676f0590b','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1785936500,'0','{\"ipAddress\":\"172.18.0.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xOCIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"0d248860-4fd3-4b6b-898d-8be14fcff2bc\\\":1785936500,\\\"9a0e344d-bd2d-4236-90ac-1948f3ebfa01\\\":1785936500}\"},\"state\":\"LOGGED_IN\"}',1785936500,NULL,0,0);
UNLOCK TABLES;

--
-- Dumping data for table `org`
--

LOCK TABLES `org` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `org_domain`
--

LOCK TABLES `org_domain` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `org_invitation`
--

LOCK TABLES `org_invitation` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `outbox_entry`
--

LOCK TABLES `outbox_entry` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `policy_config`
--

LOCK TABLES `policy_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `protocol_mapper`
--

LOCK TABLES `protocol_mapper` WRITE;
INSERT INTO `protocol_mapper` VALUES ('05fa6252-2319-4138-9c79-b0bd3332eb9d','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','3261927b-6484-4acf-accd-0e1127c832d6',NULL),('174143fa-4c3b-4adb-a57e-dd23f8975bbc','full name','openid-connect','oidc-full-name-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('1ad39c34-8833-4da1-92b2-5626350f078a','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'7933549e-2095-4e01-83c1-3f8950e612b8'),('2200e1de-1c20-4533-a90c-4774afe76a19','address','openid-connect','oidc-address-mapper',NULL,'ea296d1c-d3fc-4a9f-a981-ae342673a313'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'c4fdd96c-88fe-48e9-92a4-4843bfee989f'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','locale','openid-connect','oidc-usermodel-attribute-mapper','3d0d4b73-c084-4224-8858-543743457ffa',NULL),('28be95fd-1def-4c19-9b0f-c20df885a73d','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('2ca822ac-f96e-4aee-b0af-defd7a298da1','audience resolve','openid-connect','oidc-audience-resolve-mapper','c195d0b8-0586-41a3-aae4-120f49b203c9',NULL),('35e067f1-237b-41cd-bb70-88a17ea338a1','AuthnContextClassRef','saml','saml-authn-context-class-ref-mapper',NULL,'736c393a-6db4-4300-82ae-8868852b5561'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','organization','openid-connect','oidc-organization-membership-mapper',NULL,'de8c46af-0dae-4b04-b2e7-31ebd078cf74'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('589a916f-9adf-497b-a9d0-c641195a9936','audience-_platform','openid-connect','oidc-audience-mapper','cdffdf90-a104-4ca9-ae38-dc489e87d15b',NULL),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','Client Host','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'2a96b242-d236-4fcd-9608-b0b90401ec79'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7933549e-2095-4e01-83c1-3f8950e612b8'),('5c5f153f-aa01-4777-a511-7a2f85cbaf8f','organization','saml','saml-organization-membership-mapper',NULL,'9269b884-e10b-4890-91cb-ba7b83045fd1'),('5f10f3ad-c561-4b19-afed-2bc92ee0129b','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'32f4baab-7429-4728-8bf3-fd9e5019aef8'),('63caa7de-4a01-48ca-b087-7df3f058a963','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('644039a1-766e-41a7-a0e2-b1d976345cb2','acr loa level','openid-connect','oidc-acr-mapper',NULL,'e1c5e703-5fb7-4e81-a9ed-88588836c607'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'2c12fc49-65a5-46b8-8c73-a973c14a9cec'),('6ad584c7-3c43-4d37-8c15-133d1720ecaa','role list','saml','saml-role-list-mapper',NULL,'28185292-0d63-42ea-a0b6-6d3b01a378ac'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('770afa0d-80b4-4594-be49-c9dd155d04c1','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('81195c90-42ae-473f-8848-e187c9df7755','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('85e72732-9b03-440b-9083-c5e643f95079','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('88967b01-4669-4fe0-b530-020c483d9923','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'06792d44-efd9-46e3-85c4-0024c68930b0'),('95cfb214-a857-49cb-bd89-01095896938d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('9a671c06-6128-4ebf-bcf8-3af533343183','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','3261927b-6484-4acf-accd-0e1127c832d6',NULL),('9a8e900a-00fd-4172-ae50-20f9abeb9a19','sub','openid-connect','oidc-sub-mapper',NULL,'c4fdd96c-88fe-48e9-92a4-4843bfee989f'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','3261927b-6484-4acf-accd-0e1127c832d6',NULL),('9df1788d-5544-4846-b731-b26dab3dc9e3','Client ID','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'2a96b242-d236-4fcd-9608-b0b90401ec79'),('9e606b08-5a29-43f6-8c09-fc2d49a9a7fa','audience-_platform','openid-connect','oidc-audience-mapper','8202453b-3830-4b0f-bfaf-d76ce8eca8f6',NULL),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'654b16cf-8d6e-414f-a566-a855b8bbf812'),('c6273780-a818-4776-9266-9b6f9a45a8ec','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'06792d44-efd9-46e3-85c4-0024c68930b0'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('da472bad-4758-44ed-ab0a-396802d7f99a','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'2c12fc49-65a5-46b8-8c73-a973c14a9cec'),('dc6f204a-8396-4641-9220-8f6a0b92ec48','audience-_platform','openid-connect','oidc-audience-mapper','3261927b-6484-4acf-accd-0e1127c832d6',NULL),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'2a96b242-d236-4fcd-9608-b0b90401ec79'),('e1f1260d-a891-47ed-b834-78a010ad23cd','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'7933549e-2095-4e01-83c1-3f8950e612b8'),('e5219008-7f5c-476c-a1c5-4da7729f54be','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'654b16cf-8d6e-414f-a566-a855b8bbf812'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('faddd104-50f4-4216-835e-4f5745d484c3','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e'),('fc944dd1-9b0b-424f-9382-341f897747e3','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f8b30c20-9f89-46fc-82c4-d283d81b683e');
UNLOCK TABLES;

--
-- Dumping data for table `protocol_mapper_config`
--

LOCK TABLES `protocol_mapper_config` WRITE;
INSERT INTO `protocol_mapper_config` VALUES ('05fa6252-2319-4138-9c79-b0bd3332eb9d','true','access.token.claim'),('05fa6252-2319-4138-9c79-b0bd3332eb9d','clientId','claim.name'),('05fa6252-2319-4138-9c79-b0bd3332eb9d','true','id.token.claim'),('05fa6252-2319-4138-9c79-b0bd3332eb9d','String','jsonType.label'),('05fa6252-2319-4138-9c79-b0bd3332eb9d','clientId','user.session.note'),('05fa6252-2319-4138-9c79-b0bd3332eb9d','true','userinfo.token.claim'),('174143fa-4c3b-4adb-a57e-dd23f8975bbc','true','access.token.claim'),('174143fa-4c3b-4adb-a57e-dd23f8975bbc','true','id.token.claim'),('174143fa-4c3b-4adb-a57e-dd23f8975bbc','true','introspection.token.claim'),('174143fa-4c3b-4adb-a57e-dd23f8975bbc','true','userinfo.token.claim'),('1ad39c34-8833-4da1-92b2-5626350f078a','true','access.token.claim'),('1ad39c34-8833-4da1-92b2-5626350f078a','resource_access.${client_id}.roles','claim.name'),('1ad39c34-8833-4da1-92b2-5626350f078a','true','introspection.token.claim'),('1ad39c34-8833-4da1-92b2-5626350f078a','String','jsonType.label'),('1ad39c34-8833-4da1-92b2-5626350f078a','true','multivalued'),('1ad39c34-8833-4da1-92b2-5626350f078a','foo','user.attribute'),('2200e1de-1c20-4533-a90c-4774afe76a19','true','access.token.claim'),('2200e1de-1c20-4533-a90c-4774afe76a19','true','id.token.claim'),('2200e1de-1c20-4533-a90c-4774afe76a19','true','introspection.token.claim'),('2200e1de-1c20-4533-a90c-4774afe76a19','country','user.attribute.country'),('2200e1de-1c20-4533-a90c-4774afe76a19','formatted','user.attribute.formatted'),('2200e1de-1c20-4533-a90c-4774afe76a19','locality','user.attribute.locality'),('2200e1de-1c20-4533-a90c-4774afe76a19','postal_code','user.attribute.postal_code'),('2200e1de-1c20-4533-a90c-4774afe76a19','region','user.attribute.region'),('2200e1de-1c20-4533-a90c-4774afe76a19','street','user.attribute.street'),('2200e1de-1c20-4533-a90c-4774afe76a19','true','userinfo.token.claim'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','true','access.token.claim'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','auth_time','claim.name'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','true','id.token.claim'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','true','introspection.token.claim'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','long','jsonType.label'),('2580647e-9bcf-4dd2-b34e-c1b6a50eb846','AUTH_TIME','user.session.note'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','true','access.token.claim'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','locale','claim.name'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','true','id.token.claim'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','true','introspection.token.claim'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','String','jsonType.label'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','locale','user.attribute'),('261d2e84-d4af-4164-9583-02fcc01bd4e4','true','userinfo.token.claim'),('28be95fd-1def-4c19-9b0f-c20df885a73d','true','access.token.claim'),('28be95fd-1def-4c19-9b0f-c20df885a73d','birthdate','claim.name'),('28be95fd-1def-4c19-9b0f-c20df885a73d','true','id.token.claim'),('28be95fd-1def-4c19-9b0f-c20df885a73d','true','introspection.token.claim'),('28be95fd-1def-4c19-9b0f-c20df885a73d','String','jsonType.label'),('28be95fd-1def-4c19-9b0f-c20df885a73d','birthdate','user.attribute'),('28be95fd-1def-4c19-9b0f-c20df885a73d','true','userinfo.token.claim'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','true','access.token.claim'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','locale','claim.name'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','true','id.token.claim'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','true','introspection.token.claim'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','String','jsonType.label'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','locale','user.attribute'),('2ba4e7d4-764c-42d4-8029-53f4afc1204b','true','userinfo.token.claim'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','true','access.token.claim'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','organization','claim.name'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','true','id.token.claim'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','true','introspection.token.claim'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','String','jsonType.label'),('49a49a49-57c8-4a9f-9ebb-340ce6161759','true','multivalued'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','true','access.token.claim'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','zoneinfo','claim.name'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','true','id.token.claim'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','true','introspection.token.claim'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','String','jsonType.label'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','zoneinfo','user.attribute'),('4a0ce7fc-ca57-4160-ac00-bc08e252a228','true','userinfo.token.claim'),('589a916f-9adf-497b-a9d0-c641195a9936','true','access.token.claim'),('589a916f-9adf-497b-a9d0-c641195a9936','false','id.token.claim'),('589a916f-9adf-497b-a9d0-c641195a9936','_platform','included.client.audience'),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','true','access.token.claim'),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','clientHost','claim.name'),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','true','id.token.claim'),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','true','introspection.token.claim'),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','String','jsonType.label'),('5a851c5c-9b6c-4e26-bdc2-c4c0e50facee','clientHost','user.session.note'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','true','access.token.claim'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','realm_access.roles','claim.name'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','true','introspection.token.claim'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','String','jsonType.label'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','true','multivalued'),('5b6cdf1b-7aae-467a-8e04-8444240756a7','foo','user.attribute'),('5f10f3ad-c561-4b19-afed-2bc92ee0129b','true','access.token.claim'),('5f10f3ad-c561-4b19-afed-2bc92ee0129b','true','introspection.token.claim'),('63caa7de-4a01-48ca-b087-7df3f058a963','true','access.token.claim'),('63caa7de-4a01-48ca-b087-7df3f058a963','profile','claim.name'),('63caa7de-4a01-48ca-b087-7df3f058a963','true','id.token.claim'),('63caa7de-4a01-48ca-b087-7df3f058a963','true','introspection.token.claim'),('63caa7de-4a01-48ca-b087-7df3f058a963','String','jsonType.label'),('63caa7de-4a01-48ca-b087-7df3f058a963','profile','user.attribute'),('63caa7de-4a01-48ca-b087-7df3f058a963','true','userinfo.token.claim'),('644039a1-766e-41a7-a0e2-b1d976345cb2','true','access.token.claim'),('644039a1-766e-41a7-a0e2-b1d976345cb2','true','id.token.claim'),('644039a1-766e-41a7-a0e2-b1d976345cb2','true','introspection.token.claim'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','true','access.token.claim'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','groups','claim.name'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','true','id.token.claim'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','true','introspection.token.claim'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','String','jsonType.label'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','true','multivalued'),('66a8b89f-449f-406c-ab7f-46ae64e2d6dc','foo','user.attribute'),('6ad584c7-3c43-4d37-8c15-133d1720ecaa','Role','attribute.name'),('6ad584c7-3c43-4d37-8c15-133d1720ecaa','Basic','attribute.nameformat'),('6ad584c7-3c43-4d37-8c15-133d1720ecaa','false','single'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','true','access.token.claim'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','family_name','claim.name'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','true','id.token.claim'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','true','introspection.token.claim'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','String','jsonType.label'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','lastName','user.attribute'),('6b91fc85-f19a-4704-828f-c3e2b0eb6f3b','true','userinfo.token.claim'),('770afa0d-80b4-4594-be49-c9dd155d04c1','true','access.token.claim'),('770afa0d-80b4-4594-be49-c9dd155d04c1','preferred_username','claim.name'),('770afa0d-80b4-4594-be49-c9dd155d04c1','true','id.token.claim'),('770afa0d-80b4-4594-be49-c9dd155d04c1','true','introspection.token.claim'),('770afa0d-80b4-4594-be49-c9dd155d04c1','String','jsonType.label'),('770afa0d-80b4-4594-be49-c9dd155d04c1','username','user.attribute'),('770afa0d-80b4-4594-be49-c9dd155d04c1','true','userinfo.token.claim'),('81195c90-42ae-473f-8848-e187c9df7755','true','access.token.claim'),('81195c90-42ae-473f-8848-e187c9df7755','website','claim.name'),('81195c90-42ae-473f-8848-e187c9df7755','true','id.token.claim'),('81195c90-42ae-473f-8848-e187c9df7755','true','introspection.token.claim'),('81195c90-42ae-473f-8848-e187c9df7755','String','jsonType.label'),('81195c90-42ae-473f-8848-e187c9df7755','website','user.attribute'),('81195c90-42ae-473f-8848-e187c9df7755','true','userinfo.token.claim'),('85e72732-9b03-440b-9083-c5e643f95079','true','access.token.claim'),('85e72732-9b03-440b-9083-c5e643f95079','middle_name','claim.name'),('85e72732-9b03-440b-9083-c5e643f95079','true','id.token.claim'),('85e72732-9b03-440b-9083-c5e643f95079','true','introspection.token.claim'),('85e72732-9b03-440b-9083-c5e643f95079','String','jsonType.label'),('85e72732-9b03-440b-9083-c5e643f95079','middleName','user.attribute'),('85e72732-9b03-440b-9083-c5e643f95079','true','userinfo.token.claim'),('88967b01-4669-4fe0-b530-020c483d9923','true','access.token.claim'),('88967b01-4669-4fe0-b530-020c483d9923','email','claim.name'),('88967b01-4669-4fe0-b530-020c483d9923','true','id.token.claim'),('88967b01-4669-4fe0-b530-020c483d9923','true','introspection.token.claim'),('88967b01-4669-4fe0-b530-020c483d9923','String','jsonType.label'),('88967b01-4669-4fe0-b530-020c483d9923','email','user.attribute'),('88967b01-4669-4fe0-b530-020c483d9923','true','userinfo.token.claim'),('95cfb214-a857-49cb-bd89-01095896938d','true','access.token.claim'),('95cfb214-a857-49cb-bd89-01095896938d','updated_at','claim.name'),('95cfb214-a857-49cb-bd89-01095896938d','true','id.token.claim'),('95cfb214-a857-49cb-bd89-01095896938d','true','introspection.token.claim'),('95cfb214-a857-49cb-bd89-01095896938d','long','jsonType.label'),('95cfb214-a857-49cb-bd89-01095896938d','updatedAt','user.attribute'),('95cfb214-a857-49cb-bd89-01095896938d','true','userinfo.token.claim'),('9a671c06-6128-4ebf-bcf8-3af533343183','true','access.token.claim'),('9a671c06-6128-4ebf-bcf8-3af533343183','clientAddress','claim.name'),('9a671c06-6128-4ebf-bcf8-3af533343183','true','id.token.claim'),('9a671c06-6128-4ebf-bcf8-3af533343183','String','jsonType.label'),('9a671c06-6128-4ebf-bcf8-3af533343183','clientAddress','user.session.note'),('9a671c06-6128-4ebf-bcf8-3af533343183','true','userinfo.token.claim'),('9a8e900a-00fd-4172-ae50-20f9abeb9a19','true','access.token.claim'),('9a8e900a-00fd-4172-ae50-20f9abeb9a19','true','introspection.token.claim'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','true','access.token.claim'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','clientHost','claim.name'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','true','id.token.claim'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','String','jsonType.label'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','clientHost','user.session.note'),('9c3d93f2-ebe8-4621-ad35-4c7980413762','true','userinfo.token.claim'),('9df1788d-5544-4846-b731-b26dab3dc9e3','true','access.token.claim'),('9df1788d-5544-4846-b731-b26dab3dc9e3','client_id','claim.name'),('9df1788d-5544-4846-b731-b26dab3dc9e3','true','id.token.claim'),('9df1788d-5544-4846-b731-b26dab3dc9e3','true','introspection.token.claim'),('9df1788d-5544-4846-b731-b26dab3dc9e3','String','jsonType.label'),('9df1788d-5544-4846-b731-b26dab3dc9e3','client_id','user.session.note'),('9e606b08-5a29-43f6-8c09-fc2d49a9a7fa','true','access.token.claim'),('9e606b08-5a29-43f6-8c09-fc2d49a9a7fa','false','id.token.claim'),('9e606b08-5a29-43f6-8c09-fc2d49a9a7fa','_platform','included.client.audience'),('9e606b08-5a29-43f6-8c09-fc2d49a9a7fa','true','introspection.token.claim'),('9e606b08-5a29-43f6-8c09-fc2d49a9a7fa','false','userinfo.token.claim'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','true','access.token.claim'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','phone_number_verified','claim.name'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','true','id.token.claim'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','true','introspection.token.claim'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','boolean','jsonType.label'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','phoneNumberVerified','user.attribute'),('b2b7851b-6ddf-4e7b-97b1-1fca24d4115c','true','userinfo.token.claim'),('c6273780-a818-4776-9266-9b6f9a45a8ec','true','access.token.claim'),('c6273780-a818-4776-9266-9b6f9a45a8ec','email_verified','claim.name'),('c6273780-a818-4776-9266-9b6f9a45a8ec','true','id.token.claim'),('c6273780-a818-4776-9266-9b6f9a45a8ec','true','introspection.token.claim'),('c6273780-a818-4776-9266-9b6f9a45a8ec','boolean','jsonType.label'),('c6273780-a818-4776-9266-9b6f9a45a8ec','emailVerified','user.attribute'),('c6273780-a818-4776-9266-9b6f9a45a8ec','true','userinfo.token.claim'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','true','access.token.claim'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','nickname','claim.name'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','true','id.token.claim'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','true','introspection.token.claim'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','String','jsonType.label'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','nickname','user.attribute'),('d9dbd893-2d58-4e9f-9bbf-760bf3f60889','true','userinfo.token.claim'),('da472bad-4758-44ed-ab0a-396802d7f99a','true','access.token.claim'),('da472bad-4758-44ed-ab0a-396802d7f99a','upn','claim.name'),('da472bad-4758-44ed-ab0a-396802d7f99a','true','id.token.claim'),('da472bad-4758-44ed-ab0a-396802d7f99a','true','introspection.token.claim'),('da472bad-4758-44ed-ab0a-396802d7f99a','String','jsonType.label'),('da472bad-4758-44ed-ab0a-396802d7f99a','username','user.attribute'),('da472bad-4758-44ed-ab0a-396802d7f99a','true','userinfo.token.claim'),('dc6f204a-8396-4641-9220-8f6a0b92ec48','true','access.token.claim'),('dc6f204a-8396-4641-9220-8f6a0b92ec48','false','id.token.claim'),('dc6f204a-8396-4641-9220-8f6a0b92ec48','_platform','included.client.audience'),('dc6f204a-8396-4641-9220-8f6a0b92ec48','true','introspection.token.claim'),('dc6f204a-8396-4641-9220-8f6a0b92ec48','false','userinfo.token.claim'),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','true','access.token.claim'),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','clientAddress','claim.name'),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','true','id.token.claim'),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','true','introspection.token.claim'),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','String','jsonType.label'),('df1d4586-8b9d-4578-885e-6ea170c6f6f6','clientAddress','user.session.note'),('e1f1260d-a891-47ed-b834-78a010ad23cd','true','access.token.claim'),('e1f1260d-a891-47ed-b834-78a010ad23cd','true','introspection.token.claim'),('e5219008-7f5c-476c-a1c5-4da7729f54be','true','access.token.claim'),('e5219008-7f5c-476c-a1c5-4da7729f54be','phone_number','claim.name'),('e5219008-7f5c-476c-a1c5-4da7729f54be','true','id.token.claim'),('e5219008-7f5c-476c-a1c5-4da7729f54be','true','introspection.token.claim'),('e5219008-7f5c-476c-a1c5-4da7729f54be','String','jsonType.label'),('e5219008-7f5c-476c-a1c5-4da7729f54be','phoneNumber','user.attribute'),('e5219008-7f5c-476c-a1c5-4da7729f54be','true','userinfo.token.claim'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','true','access.token.claim'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','picture','claim.name'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','true','id.token.claim'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','true','introspection.token.claim'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','String','jsonType.label'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','picture','user.attribute'),('ef6dfd4a-468e-49b9-a0fc-7a7996d72d4e','true','userinfo.token.claim'),('faddd104-50f4-4216-835e-4f5745d484c3','true','access.token.claim'),('faddd104-50f4-4216-835e-4f5745d484c3','gender','claim.name'),('faddd104-50f4-4216-835e-4f5745d484c3','true','id.token.claim'),('faddd104-50f4-4216-835e-4f5745d484c3','true','introspection.token.claim'),('faddd104-50f4-4216-835e-4f5745d484c3','String','jsonType.label'),('faddd104-50f4-4216-835e-4f5745d484c3','gender','user.attribute'),('faddd104-50f4-4216-835e-4f5745d484c3','true','userinfo.token.claim'),('fc944dd1-9b0b-424f-9382-341f897747e3','true','access.token.claim'),('fc944dd1-9b0b-424f-9382-341f897747e3','given_name','claim.name'),('fc944dd1-9b0b-424f-9382-341f897747e3','true','id.token.claim'),('fc944dd1-9b0b-424f-9382-341f897747e3','true','introspection.token.claim'),('fc944dd1-9b0b-424f-9382-341f897747e3','String','jsonType.label'),('fc944dd1-9b0b-424f-9382-341f897747e3','firstName','user.attribute'),('fc944dd1-9b0b-424f-9382-341f897747e3','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `realm`
--

LOCK TABLES `realm` WRITE;
INSERT INTO `realm` VALUES ('ea73b9fd-491c-4c77-92db-2ce7ea2fb756',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',86400,86400,0,0,'411f5e93-7ec5-45c5-988a-1c8d00ac33b1',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','2df6fa58-db59-4fa2-af08-d01f4653a8ca','ceefa514-6ea4-42b5-bb2d-dec36d4a3a63','d5cbe7bb-c5ad-4c9c-ae3c-8f354b04fad3','932ebe40-b118-418c-be77-34b919aca0df','1ed92a6e-8edc-448a-9007-c15b9fb4f03a',31536000,0,900,1,0,'b53175b2-f1e4-4a32-95fa-ab2ec69e9437',0,0,0,0,'03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','Keycloak');
UNLOCK TABLES;

--
-- Dumping data for table `realm_attribute`
--

LOCK TABLES `realm_attribute` WRITE;
INSERT INTO `realm_attribute` VALUES ('_browser_header.contentSecurityPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',''),('_browser_header.referrerPolicy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','no-referrer'),('_browser_header.strictTransportSecurity','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','nosniff'),('_browser_header.xFrameOptions','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','SAMEORIGIN'),('_browser_header.xRobotsTag','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','none'),('bruteForceProtected','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','false'),('bruteForceStrategy','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','MULTIPLE'),('cibaAuthRequestedUserHint','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','login_hint'),('cibaBackchannelTokenDeliveryMode','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','poll'),('cibaExpiresIn','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','120'),('cibaInterval','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','5'),('defaultSignatureAlgorithm','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','RS256'),('displayNameHtml','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','30'),('firstBrokerLoginFlowId','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','0ce70962-7205-475e-afa0-437df263220d'),('maxDeltaTimeSeconds','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','43200'),('maxFailureWaitSeconds','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','900'),('maxSecondaryAuthFailures','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','0'),('maxTemporaryLockouts','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','0'),('minimumQuickLoginWaitSeconds','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','60'),('oauth2DeviceCodeLifespan','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','600'),('oauth2DevicePollingInterval','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','5'),('offlineSessionMaxLifespan','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','31536000'),('offlineSessionMaxLifespanEnabled','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','true'),('parRequestUriLifespan','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','60'),('permanentLockout','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','false'),('quickLoginCheckMilliSeconds','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','1000'),('realmReusableOtpCode','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','false'),('waitIncrementSeconds','ea73b9fd-491c-4c77-92db-2ce7ea2fb756','60');
UNLOCK TABLES;

--
-- Dumping data for table `realm_default_groups`
--

LOCK TABLES `realm_default_groups` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `realm_enabled_event_types`
--

LOCK TABLES `realm_enabled_event_types` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `realm_events_listeners`
--

LOCK TABLES `realm_events_listeners` WRITE;
INSERT INTO `realm_events_listeners` VALUES ('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','jboss-logging');
UNLOCK TABLES;

--
-- Dumping data for table `realm_localizations`
--

LOCK TABLES `realm_localizations` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `realm_required_credential`
--

LOCK TABLES `realm_required_credential` WRITE;
INSERT INTO `realm_required_credential` VALUES ('password','password',1,1,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756');
UNLOCK TABLES;

--
-- Dumping data for table `realm_smtp_config`
--

LOCK TABLES `realm_smtp_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `realm_supported_locales`
--

LOCK TABLES `realm_supported_locales` WRITE;
INSERT INTO `realm_supported_locales` VALUES ('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','en'),('ea73b9fd-491c-4c77-92db-2ce7ea2fb756','ja');
UNLOCK TABLES;

--
-- Dumping data for table `redirect_uris`
--

LOCK TABLES `redirect_uris` WRITE;
INSERT INTO `redirect_uris` VALUES ('3d0d4b73-c084-4224-8858-543743457ffa','/admin/master/console/*'),('c195d0b8-0586-41a3-aae4-120f49b203c9','/realms/master/account/*'),('c212610c-4fc6-41b4-8772-ce82c13d3f02','/realms/master/account/*'),('cdffdf90-a104-4ca9-ae38-dc489e87d15b','/*');
UNLOCK TABLES;

--
-- Dumping data for table `required_action_config`
--

LOCK TABLES `required_action_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `required_action_provider`
--

LOCK TABLES `required_action_provider` WRITE;
INSERT INTO `required_action_provider` VALUES ('06b8773b-a810-466e-90ba-5a2b4efa7579','TERMS_AND_CONDITIONS','Terms and Conditions','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,0,'TERMS_AND_CONDITIONS',20),('078fc783-e548-4c32-baa2-f5f99a3cb68b','CONFIGURE_TOTP','Configure OTP','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'CONFIGURE_TOTP',54),('2e92dbfe-992a-44c7-b735-991b1be9f94c','UPDATE_EMAIL','Update Email','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,0,'UPDATE_EMAIL',70),('30cdc1fe-c9cf-4e39-b86c-ac9db997dcf5','VERIFY_PROFILE','Verify Profile','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'VERIFY_PROFILE',100),('56db7259-0808-4ff7-8f1a-227270a3053b','UPDATE_PROFILE','Update Profile','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'UPDATE_PROFILE',40),('5ea0477d-8eed-4f8e-acae-212c24a37a39','delete_credential','Delete Credential','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'delete_credential',110),('7aac8e6c-3e69-45d3-899b-6898b1f7f364','idp_link','Linking Identity Provider','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'idp_link',120),('889ee538-f10e-4970-b72f-04f690b3ed87','delete_account','Delete Account','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',0,0,'delete_account',60),('94d5a6b7-1026-415e-a6d7-276cacedddd8','webauthn-register-passwordless','Webauthn Register Passwordless','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'webauthn-register-passwordless',90),('9983dfaa-acc8-4e7e-8732-137fda0ca936','UPDATE_PASSWORD','Update Password','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'UPDATE_PASSWORD',57),('99f727e5-d76e-4c8b-9e64-fdb02f0b23c5','webauthn-register','Webauthn Register','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'webauthn-register',80),('be2f9216-bc33-4d52-8aa0-ee1e464a67ce','VERIFY_EMAIL','Verify Email','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'VERIFY_EMAIL',50),('db04ebb6-e7d4-4cad-831b-2e41ec425d90','CONFIGURE_RECOVERY_AUTHN_CODES','Recovery Authentication Codes','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'CONFIGURE_RECOVERY_AUTHN_CODES',130),('eb771e2b-ba3e-4c8c-ae79-7e132f659141','update_user_locale','Update User Locale','ea73b9fd-491c-4c77-92db-2ce7ea2fb756',1,0,'update_user_locale',1000);
UNLOCK TABLES;

--
-- Dumping data for table `resource_attribute`
--

LOCK TABLES `resource_attribute` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_policy`
--

LOCK TABLES `resource_policy` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_scope`
--

LOCK TABLES `resource_scope` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_server`
--

LOCK TABLES `resource_server` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_server_perm_ticket`
--

LOCK TABLES `resource_server_perm_ticket` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_server_policy`
--

LOCK TABLES `resource_server_policy` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_server_resource`
--

LOCK TABLES `resource_server_resource` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_server_scope`
--

LOCK TABLES `resource_server_scope` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `resource_uris`
--

LOCK TABLES `resource_uris` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `revoked_token`
--

LOCK TABLES `revoked_token` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `role_attribute`
--

LOCK TABLES `role_attribute` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `root_auth_session`
--

LOCK TABLES `root_auth_session` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `scope_mapping`
--

LOCK TABLES `scope_mapping` WRITE;
INSERT INTO `scope_mapping` VALUES ('c195d0b8-0586-41a3-aae4-120f49b203c9','d5e68ee9-b230-4aba-bb51-395e2c394063'),('c195d0b8-0586-41a3-aae4-120f49b203c9','f72437e8-0636-4937-89fb-5bb2bd2d29d2');
UNLOCK TABLES;

--
-- Dumping data for table `scope_policy`
--

LOCK TABLES `scope_policy` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `server_config`
--

LOCK TABLES `server_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `single_use_object`
--

LOCK TABLES `single_use_object` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_attribute`
--

LOCK TABLES `user_attribute` WRITE;
INSERT INTO `user_attribute` VALUES ('is_temporary_admin','true','afbc5c68-9f3a-457a-ba8d-b0c676f0590b','a0546a40-d719-4a33-8f6d-277bdcecde64',NULL,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `user_consent`
--

LOCK TABLES `user_consent` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_consent_client_scope`
--

LOCK TABLES `user_consent_client_scope` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_entity`
--

LOCK TABLES `user_entity` WRITE;
INSERT INTO `user_entity` VALUES ('35fe5721-c363-4230-b717-9e2062b52eb3',NULL,'cd628ff4-55d6-4f65-9795-abf678ad2780',0,1,NULL,NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','service-account-_platform',1785936501220,'3261927b-6484-4acf-accd-0e1127c832d6',0,1785936501220),('afbc5c68-9f3a-457a-ba8d-b0c676f0590b',NULL,'5e15adc5-a35a-497f-9d31-b252c945eed7',0,1,NULL,NULL,NULL,'ea73b9fd-491c-4c77-92db-2ce7ea2fb756','admin',1785936494846,NULL,0,1785936494846);
UNLOCK TABLES;

--
-- Dumping data for table `user_federation_config`
--

LOCK TABLES `user_federation_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_federation_mapper`
--

LOCK TABLES `user_federation_mapper` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_federation_mapper_config`
--

LOCK TABLES `user_federation_mapper_config` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_federation_provider`
--

LOCK TABLES `user_federation_provider` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_group_membership`
--

LOCK TABLES `user_group_membership` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_required_action`
--

LOCK TABLES `user_required_action` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `user_role_mapping`
--

LOCK TABLES `user_role_mapping` WRITE;
INSERT INTO `user_role_mapping` VALUES ('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','35fe5721-c363-4230-b717-9e2062b52eb3'),('03bf6ea2-5742-4d7a-a8f3-30be0cbd60ea','afbc5c68-9f3a-457a-ba8d-b0c676f0590b'),('79569f79-e8d7-409b-a31d-caec73b95107','35fe5721-c363-4230-b717-9e2062b52eb3'),('79569f79-e8d7-409b-a31d-caec73b95107','afbc5c68-9f3a-457a-ba8d-b0c676f0590b');
UNLOCK TABLES;

--
-- Dumping data for table `user_ver_credential`
--

LOCK TABLES `user_ver_credential` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `web_origins`
--

LOCK TABLES `web_origins` WRITE;
INSERT INTO `web_origins` VALUES ('3d0d4b73-c084-4224-8858-543743457ffa','+');
UNLOCK TABLES;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
UNLOCK TABLES;

--
-- Current Database: `platform`
--

USE `platform`;

--
-- Dumping data for table `m_system_config`
--

LOCK TABLES `m_system_config` WRITE;
INSERT INTO `m_system_config` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2026-08-05 22:28:29','dummy','2026-08-05 22:28:29','dummy'),('ita.system.menu_export_import.buffer_size','10000','Maximum buffer size of menu Export/import for System default (Used for DB fetch size, file stream read size)','2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2026-08-05 22:28:22','dummy','2026-08-05 22:28:22','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `t_maintenance_mode`
--

LOCK TABLES `t_maintenance_mode` WRITE;
INSERT INTO `t_maintenance_mode` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2026-08-05 22:28:21.000000',NULL),('2','DATA_UPDATE_STOP','0','2026-08-05 22:28:21.000000',NULL);
UNLOCK TABLES;

--
-- Dumping data for table `t_organization`
--

LOCK TABLES `t_organization` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `t_organization_db`
--

LOCK TABLES `t_organization_db` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `t_organization_plan`
--

LOCK TABLES `t_organization_plan` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `t_plan`
--

LOCK TABLES `t_plan` WRITE;
INSERT INTO `t_plan` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2026-08-05 22:28:20','system','2026-08-05 22:28:20','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_plan_item`
--

LOCK TABLES `t_plan_item` WRITE;
INSERT INTO `t_plan_item` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2026-08-05 22:28:29','dummy','2026-08-05 22:28:29','dummy'),('ita.organization.common.maintenance_records_limit','{\"description\": \"Maximum number of maintenance records processing for organization default\", \"max\": 100000}','2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('ita.organization.common.upload_file_size_limit','{\"description\": \"Maximum byte size of upload file for organization default\", \"max\": 107374182400}','2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('ita.organization.menu_export_import.buffer_size','{\"description\": \"Maximum buffer size of menu Export/import for Organization default (Used for DB fetch size, file stream read size)\", \"max\": 10000}','2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2026-08-05 22:28:20','system','2026-08-05 22:28:22','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2026-08-05 22:28:20','system','2026-08-05 22:28:22','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2026-08-05 22:28:20','system','2026-08-05 22:28:22','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_plan_limit`
--

LOCK TABLES `t_plan_limit` WRITE;
INSERT INTO `t_plan_limit` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2026-08-05 22:28:29','dummy','2026-08-05 22:28:29','dummy'),('_default','ita.organization.common.maintenance_records_limit',10000,'2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('_default','ita.organization.common.upload_file_size_limit',104857600,'2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('_default','ita.organization.menu_export_import.buffer_size',1000,'2026-08-05 22:28:30','dummy','2026-08-05 22:28:30','dummy'),('_default','platform.roles',1000,'2026-08-05 22:28:20','system','2026-08-05 22:28:20','system'),('_default','platform.users',10000,'2026-08-05 22:28:20','system','2026-08-05 22:28:20','system'),('_default','platform.workspaces',100,'2026-08-05 22:28:20','system','2026-08-05 22:28:20','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_migration_history`
--

LOCK TABLES `t_platform_migration_history` WRITE;
INSERT INTO `t_platform_migration_history` VALUES (1,'1.3.0','START',NULL,'2026-08-05 22:28:20','2.9.0','2026-08-05 22:28:20','2.9.0'),(2,'1.3.0','SUCCEED',NULL,'2026-08-05 22:28:21','2.9.0','2026-08-05 22:28:21','2.9.0'),(3,'1.5.0','START',NULL,'2026-08-05 22:28:21','2.9.0','2026-08-05 22:28:21','2.9.0'),(4,'1.5.0','SUCCEED',NULL,'2026-08-05 22:28:21','2.9.0','2026-08-05 22:28:21','2.9.0'),(5,'1.5.2','START',NULL,'2026-08-05 22:28:21','2.9.0','2026-08-05 22:28:21','2.9.0'),(6,'1.5.2','SUCCEED',NULL,'2026-08-05 22:28:21','2.9.0','2026-08-05 22:28:21','2.9.0'),(7,'1.6.0','START',NULL,'2026-08-05 22:28:21','2.9.0','2026-08-05 22:28:21','2.9.0'),(8,'1.6.0','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(9,'1.7.0','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(10,'1.7.0','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(11,'1.8.0','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(12,'1.8.0','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(13,'1.8.1','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(14,'1.8.1','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(15,'1.8.100','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(16,'1.8.100','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(17,'1.9.0','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(18,'1.9.0','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(19,'1.10.0','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(20,'1.10.0','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(21,'1.11.0','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(22,'1.11.0','SUCCEED',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(23,'1.12.0','START',NULL,'2026-08-05 22:28:22','2.9.0','2026-08-05 22:28:22','2.9.0'),(24,'1.12.0','SUCCEED',NULL,'2026-08-05 22:28:23','2.9.0','2026-08-05 22:28:23','2.9.0'),(25,'2.9.0','START',NULL,'2026-08-05 22:28:23','2.9.0','2026-08-05 22:28:23','2.9.0'),(26,'2.9.0','SUCCEED',NULL,'2026-08-05 22:28:23','2.9.0','2026-08-05 22:28:23','2.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_private`
--

LOCK TABLES `t_platform_private` WRITE;
INSERT INTO `t_platform_private` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"3261927b-6484-4acf-accd-0e1127c832d6\", \"TOKEN_CHECK_CLIENT_SECRET\": \"6zfoFcc1NVliV6X7j2iXuS0TQTjCq6Zh1mibEUo7UkAOMKSYWkBSSYsxxAI9NLea42PK27Pbh3zzDpiFuZKiPr\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"8202453b-3830-4b0f-bfaf-d76ce8eca8f6\"}','2026-08-05 22:28:21','system','2026-08-05 22:28:21','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_version`
--

LOCK TABLES `t_platform_version` WRITE;
INSERT INTO `t_platform_version` VALUES (1,'2.10.0','2026-08-05 22:27:26','system','2026-08-05 22:28:23','2.10.0');
UNLOCK TABLES;

--
-- Dumping data for table `t_process_queue`
--

LOCK TABLES `t_process_queue` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `t_process_queue_lock`
--

LOCK TABLES `t_process_queue_lock` WRITE;
UNLOCK TABLES;

--
-- Dumping data for table `t_refresh_token`
--

LOCK TABLES `t_refresh_token` WRITE;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-05 22:30:20
SET foreign_key_checks = 1;
