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
INSERT INTO `authentication_execution` VALUES ('00da806f-17dd-4acf-bd3c-e3936aa16615',NULL,'reset-credential-email','56659954-d51e-4f9c-bac8-11b514b5609e','580b805e-a9a0-471b-ba38-3d8cba5caa0b',0,20,0,NULL,NULL),('01f38177-731e-4c49-b253-2e91aa993195',NULL,'auth-otp-form','56659954-d51e-4f9c-bac8-11b514b5609e','5c045379-0c81-495b-ba73-7fef55894cde',2,30,0,NULL,NULL),('0352ba22-4e7a-4602-872c-b76596581298',NULL,'conditional-credential','56659954-d51e-4f9c-bac8-11b514b5609e','85aa4f5c-00cb-422a-8763-d5abfb5fb9c9',0,20,0,NULL,'a7befb0d-18e2-46dd-be05-1a786b925e0f'),('0b84b598-eae6-4207-aeb1-b5ddb51a0ae1',NULL,'idp-username-password-form','56659954-d51e-4f9c-bac8-11b514b5609e','2b40265f-8502-4ded-a2ca-3bb1fdf597fa',0,10,0,NULL,NULL),('221f105f-064f-43b7-8b20-ee3a40548c0e',NULL,'auth-recovery-authn-code-form','56659954-d51e-4f9c-bac8-11b514b5609e','85aa4f5c-00cb-422a-8763-d5abfb5fb9c9',3,50,0,NULL,NULL),('2e736953-0ef4-47bc-83ad-8f7bf29d825e',NULL,'auth-recovery-authn-code-form','56659954-d51e-4f9c-bac8-11b514b5609e','5c045379-0c81-495b-ba73-7fef55894cde',3,50,0,NULL,NULL),('37226bf9-7984-490c-a092-36f8d280cc1b',NULL,'conditional-user-configured','56659954-d51e-4f9c-bac8-11b514b5609e','12c7e6ba-c71c-4e40-8108-7299e886cc05',0,10,0,NULL,NULL),('3b376808-d2b1-46de-983c-259c6f6d7dce',NULL,'client-secret-jwt','56659954-d51e-4f9c-bac8-11b514b5609e','9e5c7ef1-00c1-40bd-982e-57511761197a',2,30,0,NULL,NULL),('3e735918-920c-4c56-baf4-d31d7295c93e',NULL,'identity-provider-redirector','56659954-d51e-4f9c-bac8-11b514b5609e','e31ec6ea-8a72-4183-ae29-73fc179bab56',2,25,0,NULL,NULL),('406b83d8-9ce3-4b39-9a1e-a8743921ead6',NULL,'docker-http-basic-authenticator','56659954-d51e-4f9c-bac8-11b514b5609e','c4088ea3-6154-4dc7-a2f7-58e7fed84701',0,10,0,NULL,NULL),('40b1c2ab-1c15-43b4-b0c5-d9f140224090',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','580b805e-a9a0-471b-ba38-3d8cba5caa0b',1,40,1,'12c7e6ba-c71c-4e40-8108-7299e886cc05',NULL),('43caafba-8ff8-425d-85da-6263f90d7064',NULL,'direct-grant-validate-password','56659954-d51e-4f9c-bac8-11b514b5609e','a1464a10-af2d-4a75-a7c6-ec0ac2eccc2f',0,20,0,NULL,NULL),('45fa3f87-ba5a-4674-a9db-da6fe9ab254b',NULL,'registration-user-creation','56659954-d51e-4f9c-bac8-11b514b5609e','38728684-ebfe-4b76-8ace-ccd4bf1967f3',0,20,0,NULL,NULL),('463770d9-bfb3-4f42-9a7c-686f1c3b9ff4',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','a1464a10-af2d-4a75-a7c6-ec0ac2eccc2f',1,30,1,'bb98e840-2fd3-4792-b637-4a3d6e3fe70d',NULL),('4b48824a-e8b7-49f6-93f1-048da8359bde',NULL,'reset-password','56659954-d51e-4f9c-bac8-11b514b5609e','580b805e-a9a0-471b-ba38-3d8cba5caa0b',0,30,0,NULL,NULL),('4dd1b980-3d71-4535-b569-8b9c6d1e1aca',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','e31ec6ea-8a72-4183-ae29-73fc179bab56',2,30,1,'cf5af593-5f59-40a2-8a50-ae0900eac3c4',NULL),('631bd11f-fe35-46d8-b6ac-a8e41f1c956b',NULL,'federated-jwt','56659954-d51e-4f9c-bac8-11b514b5609e','9e5c7ef1-00c1-40bd-982e-57511761197a',2,50,0,NULL,NULL),('63f03bb6-1637-4870-9c01-84a0571d179b',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','94ff27b2-fd59-45d0-9a93-cc9a1644605d',0,20,1,'62608558-0332-465f-8898-cb379132e41b',NULL),('6571e2c0-b214-435b-98c1-9f613c38b97f',NULL,'http-basic-authenticator','56659954-d51e-4f9c-bac8-11b514b5609e','a117db53-fc1c-400f-a54f-01c6cb5f3d97',0,10,0,NULL,NULL),('6698ae8e-371c-4df9-b627-31d9485005d8',NULL,'registration-terms-and-conditions','56659954-d51e-4f9c-bac8-11b514b5609e','38728684-ebfe-4b76-8ace-ccd4bf1967f3',3,70,0,NULL,NULL),('6f7f2588-1339-48ff-a7f2-8fb67004f9a3',NULL,'registration-password-action','56659954-d51e-4f9c-bac8-11b514b5609e','38728684-ebfe-4b76-8ace-ccd4bf1967f3',0,50,0,NULL,NULL),('6fd1327a-2420-40c1-970d-f11b60569cd6',NULL,'direct-grant-validate-otp','56659954-d51e-4f9c-bac8-11b514b5609e','bb98e840-2fd3-4792-b637-4a3d6e3fe70d',0,20,0,NULL,NULL),('7011f1bc-0da4-48ec-b87d-015949963e74',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','2b40265f-8502-4ded-a2ca-3bb1fdf597fa',1,20,1,'85aa4f5c-00cb-422a-8763-d5abfb5fb9c9',NULL),('76825db1-07ed-4c26-8b30-ab2b8997c61e',NULL,'idp-confirm-link','56659954-d51e-4f9c-bac8-11b514b5609e','94ff27b2-fd59-45d0-9a93-cc9a1644605d',0,10,0,NULL,NULL),('7b35da17-9b0b-4804-a4a0-999724ad0503',NULL,'registration-recaptcha-action','56659954-d51e-4f9c-bac8-11b514b5609e','38728684-ebfe-4b76-8ace-ccd4bf1967f3',3,60,0,NULL,NULL),('7eba5061-064c-43dd-a95f-7c4999bd1797',NULL,'idp-review-profile','56659954-d51e-4f9c-bac8-11b514b5609e','32a2f19a-872c-4bf3-ba97-b5b68e8b404f',0,10,0,NULL,'f4ca37ee-743a-4b35-9e4c-04f5c6c2d728'),('85cd6781-7532-459f-86b3-0086d6488656',NULL,'webauthn-authenticator','56659954-d51e-4f9c-bac8-11b514b5609e','85aa4f5c-00cb-422a-8763-d5abfb5fb9c9',3,40,0,NULL,NULL),('89651ed7-81ea-4b7d-bffd-46977ffce05a',NULL,'idp-create-user-if-unique','56659954-d51e-4f9c-bac8-11b514b5609e','0fde0245-404c-4403-bec0-3a5278b728a2',2,10,0,NULL,'fb82483a-9da5-4074-8a0d-995fdf1fa977'),('89ab9b43-bd0a-4533-86d4-eb35954cbae1',NULL,'client-secret','56659954-d51e-4f9c-bac8-11b514b5609e','9e5c7ef1-00c1-40bd-982e-57511761197a',2,10,0,NULL,NULL),('8e97646e-34b6-4b6d-b4e6-9a953f22b326',NULL,'auth-username-password-form','56659954-d51e-4f9c-bac8-11b514b5609e','cf5af593-5f59-40a2-8a50-ae0900eac3c4',0,10,0,NULL,NULL),('918224db-d7cf-4aa7-a9a1-593dac5465f2',NULL,'reset-credentials-choose-user','56659954-d51e-4f9c-bac8-11b514b5609e','580b805e-a9a0-471b-ba38-3d8cba5caa0b',0,10,0,NULL,NULL),('964eb36c-e4f5-4b77-b625-00828e49034f',NULL,'webauthn-authenticator','56659954-d51e-4f9c-bac8-11b514b5609e','5c045379-0c81-495b-ba73-7fef55894cde',3,40,0,NULL,NULL),('97e41956-3f2b-4b2a-be8c-a7992e056391',NULL,'direct-grant-validate-username','56659954-d51e-4f9c-bac8-11b514b5609e','a1464a10-af2d-4a75-a7c6-ec0ac2eccc2f',0,10,0,NULL,NULL),('a549185e-eb3d-4154-8a24-7f784c04d334',NULL,'conditional-credential','56659954-d51e-4f9c-bac8-11b514b5609e','5c045379-0c81-495b-ba73-7fef55894cde',0,20,0,NULL,'028b39ee-2614-4990-b692-84a12cf1d7ff'),('a894f8dd-506f-4a97-bbc2-892f87d78334',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','32a2f19a-872c-4bf3-ba97-b5b68e8b404f',0,20,1,'0fde0245-404c-4403-bec0-3a5278b728a2',NULL),('b2844c30-457f-4266-97f3-1d6af84ae1e2',NULL,'client-x509','56659954-d51e-4f9c-bac8-11b514b5609e','9e5c7ef1-00c1-40bd-982e-57511761197a',2,40,0,NULL,NULL),('b4d1a43a-c46e-41e2-9aa4-9015e10c0255',NULL,'conditional-user-configured','56659954-d51e-4f9c-bac8-11b514b5609e','bb98e840-2fd3-4792-b637-4a3d6e3fe70d',0,10,0,NULL,NULL),('d5ff5c22-8207-412f-9700-c5ff5d0231c3',NULL,'conditional-user-configured','56659954-d51e-4f9c-bac8-11b514b5609e','85aa4f5c-00cb-422a-8763-d5abfb5fb9c9',0,10,0,NULL,NULL),('d86984ce-8346-4037-8c25-ee2997a957dc',NULL,'idp-email-verification','56659954-d51e-4f9c-bac8-11b514b5609e','62608558-0332-465f-8898-cb379132e41b',2,10,0,NULL,NULL),('e608bda5-158a-40bc-9e4c-aa26ee013801',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','0fde0245-404c-4403-bec0-3a5278b728a2',2,20,1,'94ff27b2-fd59-45d0-9a93-cc9a1644605d',NULL),('ebddb315-cebb-4f7e-9b44-4aba7ad0e2fe',NULL,'client-jwt','56659954-d51e-4f9c-bac8-11b514b5609e','9e5c7ef1-00c1-40bd-982e-57511761197a',2,20,0,NULL,NULL),('ef22e2e6-ac7d-4951-a507-6e53e9617403',NULL,'registration-page-form','56659954-d51e-4f9c-bac8-11b514b5609e','efd6fb53-2cd0-4844-9cdb-5a683fff9fee',0,10,1,'38728684-ebfe-4b76-8ace-ccd4bf1967f3',NULL),('f0703654-1b50-432b-835e-fcdd37ff5fb3',NULL,'auth-spnego','56659954-d51e-4f9c-bac8-11b514b5609e','e31ec6ea-8a72-4183-ae29-73fc179bab56',3,20,0,NULL,NULL),('f331b999-0545-4fd7-a90f-92e68a47dc6c',NULL,'reset-otp','56659954-d51e-4f9c-bac8-11b514b5609e','12c7e6ba-c71c-4e40-8108-7299e886cc05',0,20,0,NULL,NULL),('f6adfe7d-c0cf-4c19-8b9b-02f10746b9cc',NULL,'auth-cookie','56659954-d51e-4f9c-bac8-11b514b5609e','e31ec6ea-8a72-4183-ae29-73fc179bab56',2,10,0,NULL,NULL),('f6f8c629-e5b7-4ad2-8674-30ee8c3e59d4',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','cf5af593-5f59-40a2-8a50-ae0900eac3c4',1,20,1,'5c045379-0c81-495b-ba73-7fef55894cde',NULL),('f816e30a-0c4f-42ee-8998-0924684ce821',NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','62608558-0332-465f-8898-cb379132e41b',2,20,1,'2b40265f-8502-4ded-a2ca-3bb1fdf597fa',NULL),('fd75ffde-1e7f-474b-b806-acca186146a6',NULL,'conditional-user-configured','56659954-d51e-4f9c-bac8-11b514b5609e','5c045379-0c81-495b-ba73-7fef55894cde',0,10,0,NULL,NULL),('fe39a500-12bb-4ea6-a819-fc4b3e0aea86',NULL,'auth-otp-form','56659954-d51e-4f9c-bac8-11b514b5609e','85aa4f5c-00cb-422a-8763-d5abfb5fb9c9',2,30,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `authentication_flow`
--

LOCK TABLES `authentication_flow` WRITE;
INSERT INTO `authentication_flow` VALUES ('0fde0245-404c-4403-bec0-3a5278b728a2','User creation or linking','Flow for the existing/non-existing user alternatives','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('12c7e6ba-c71c-4e40-8108-7299e886cc05','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('2b40265f-8502-4ded-a2ca-3bb1fdf597fa','Verify Existing Account by Re-authentication','Reauthentication of existing account','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('32a2f19a-872c-4bf3-ba97-b5b68e8b404f','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1),('38728684-ebfe-4b76-8ace-ccd4bf1967f3','registration form','Registration form','56659954-d51e-4f9c-bac8-11b514b5609e','form-flow',0,1),('580b805e-a9a0-471b-ba38-3d8cba5caa0b','reset credentials','Reset credentials for a user if they forgot their password or something','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1),('5c045379-0c81-495b-ba73-7fef55894cde','Browser - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('62608558-0332-465f-8898-cb379132e41b','Account verification options','Method with which to verify the existing account','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('85aa4f5c-00cb-422a-8763-d5abfb5fb9c9','First broker login - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('94ff27b2-fd59-45d0-9a93-cc9a1644605d','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('9e5c7ef1-00c1-40bd-982e-57511761197a','clients','Base authentication for clients','56659954-d51e-4f9c-bac8-11b514b5609e','client-flow',1,1),('a117db53-fc1c-400f-a54f-01c6cb5f3d97','saml ecp','SAML ECP Profile Authentication Flow','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1),('a1464a10-af2d-4a75-a7c6-ec0ac2eccc2f','direct grant','OpenID Connect Resource Owner Grant','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1),('bb98e840-2fd3-4792-b637-4a3d6e3fe70d','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('c4088ea3-6154-4dc7-a2f7-58e7fed84701','docker auth','Used by Docker clients to authenticate against the IDP','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1),('cf5af593-5f59-40a2-8a50-ae0900eac3c4','forms','Username, password, otp and other auth forms.','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',0,1),('e31ec6ea-8a72-4183-ae29-73fc179bab56','browser','Browser based authentication','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1),('efd6fb53-2cd0-4844-9cdb-5a683fff9fee','registration','Registration flow','56659954-d51e-4f9c-bac8-11b514b5609e','basic-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `authenticator_config`
--

LOCK TABLES `authenticator_config` WRITE;
INSERT INTO `authenticator_config` VALUES ('028b39ee-2614-4990-b692-84a12cf1d7ff','browser-conditional-credential','56659954-d51e-4f9c-bac8-11b514b5609e'),('a7befb0d-18e2-46dd-be05-1a786b925e0f','first-broker-login-conditional-credential','56659954-d51e-4f9c-bac8-11b514b5609e'),('f4ca37ee-743a-4b35-9e4c-04f5c6c2d728','review profile config','56659954-d51e-4f9c-bac8-11b514b5609e'),('fb82483a-9da5-4074-8a0d-995fdf1fa977','create unique user config','56659954-d51e-4f9c-bac8-11b514b5609e');
UNLOCK TABLES;

--
-- Dumping data for table `authenticator_config_entry`
--

LOCK TABLES `authenticator_config_entry` WRITE;
INSERT INTO `authenticator_config_entry` VALUES ('028b39ee-2614-4990-b692-84a12cf1d7ff','webauthn-passwordless','credentials'),('a7befb0d-18e2-46dd-be05-1a786b925e0f','webauthn-passwordless','credentials'),('f4ca37ee-743a-4b35-9e4c-04f5c6c2d728','missing','update.profile.on.first.login'),('fb82483a-9da5-4074-8a0d-995fdf1fa977','false','require.password.update.after.registration');
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
INSERT INTO `client` VALUES ('179041d9-6c43-48af-bf5a-18a8a21ce014',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1785115724286,1785115724308),('399cfec0-79d6-4e0e-9fba-fdba706590b2',1,1,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0,1785115724326,1785115724352),('4fb086db-f175-4a33-99a8-145b3ee867a1',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0,1785115730574,1785115730603),('618b6de7-e576-459f-852f-b8d50ed57b84',1,0,'_platform-console',0,1,'5ljoMJ9LEdAl6ZVSdWWdhblqqN0ZBUypGinIVxuUECdlKuI1YCSs9xi4WJEvy4mLqTw98VTAdWi7AFsFuemS8Z',NULL,0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0,1785115731219,1785115731317),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706',1,1,'admin-cli',0,1,NULL,NULL,0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0,1785115724384,1785115724413),('95b417a0-893d-4492-a197-618785908054',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1785115724126,1785115724167),('b53c8572-9481-4d78-980a-a36afc1497c0',1,1,'_platform',0,0,'OGsk5oWCzxjD3dH0IydhX0M87x5u7bzQJ3eabTW6lM2Y3LChMW6ZqCwYA4naVrF2IndC4OOzt3oiLGC7L54DuO',NULL,0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0,1785115730372,1785115730422),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1785115724234,1785115724259),('c706b6bc-873b-41e4-a911-af030a779735',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'56659954-d51e-4f9c-bac8-11b514b5609e',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1785115723878,1785115723884);
UNLOCK TABLES;

--
-- Dumping data for table `client_attributes`
--

LOCK TABLES `client_attributes` WRITE;
INSERT INTO `client_attributes` VALUES ('399cfec0-79d6-4e0e-9fba-fdba706590b2','client.use.lightweight.access.token.enabled','true'),('399cfec0-79d6-4e0e-9fba-fdba706590b2','pkce.code.challenge.method','S256'),('399cfec0-79d6-4e0e-9fba-fdba706590b2','post.logout.redirect.uris','+'),('4fb086db-f175-4a33-99a8-145b3ee867a1','access.token.lifespan','86400'),('4fb086db-f175-4a33-99a8-145b3ee867a1','acr.loa.map','{}'),('4fb086db-f175-4a33-99a8-145b3ee867a1','backchannel.logout.revoke.offline.tokens','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','backchannel.logout.session.required','true'),('4fb086db-f175-4a33-99a8-145b3ee867a1','client_credentials.use_refresh_token','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','client.session.idle.timeout','86400'),('4fb086db-f175-4a33-99a8-145b3ee867a1','client.session.max.lifespan','86400'),('4fb086db-f175-4a33-99a8-145b3ee867a1','display.on.consent.screen','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','exclude.session.state.from.auth.response','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','frontchannel.logout.session.required','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','id.token.as.detached.signature','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','oauth2.device.authorization.grant.enabled','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','oidc.ciba.grant.enabled','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','require.pushed.authorization.requests','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml_force_name_id_format','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.allow.ecp.flow','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.artifact.binding','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.assertion.signature','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.authnstatement','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.client.signature','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.encrypt','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.force.post.binding','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.multivalued.roles','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.onetimeuse.condition','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.server.signature','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','saml.server.signature.keyinfo.ext','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','tls.client.certificate.bound.access.tokens','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','token.response.type.bearer.lower-case','false'),('4fb086db-f175-4a33-99a8-145b3ee867a1','use.refresh.tokens','true'),('618b6de7-e576-459f-852f-b8d50ed57b84','backchannel.logout.revoke.offline.tokens','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','backchannel.logout.session.required','true'),('618b6de7-e576-459f-852f-b8d50ed57b84','client_credentials.use_refresh_token','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','client.secret.creation.time','1785115731'),('618b6de7-e576-459f-852f-b8d50ed57b84','display.on.consent.screen','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','exclude.session.state.from.auth.response','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','id.token.as.detached.signature','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','oauth2.device.authorization.grant.enabled','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','oidc.ciba.grant.enabled','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','post.logout.redirect.uris','/*'),('618b6de7-e576-459f-852f-b8d50ed57b84','require.pushed.authorization.requests','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml_force_name_id_format','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.artifact.binding','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.assertion.signature','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.authnstatement','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.client.signature','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.encrypt','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.force.post.binding','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.multivalued.roles','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.onetimeuse.condition','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.server.signature','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','saml.server.signature.keyinfo.ext','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','tls.client.certificate.bound.access.tokens','false'),('618b6de7-e576-459f-852f-b8d50ed57b84','use.refresh.tokens','true'),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','client.use.lightweight.access.token.enabled','true'),('95b417a0-893d-4492-a197-618785908054','post.logout.redirect.uris','+'),('b53c8572-9481-4d78-980a-a36afc1497c0','backchannel.logout.revoke.offline.tokens','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','backchannel.logout.session.required','true'),('b53c8572-9481-4d78-980a-a36afc1497c0','client_credentials.use_refresh_token','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','client.secret.creation.time','1785115730'),('b53c8572-9481-4d78-980a-a36afc1497c0','display.on.consent.screen','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','exclude.session.state.from.auth.response','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','id.token.as.detached.signature','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','oauth2.device.authorization.grant.enabled','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','oidc.ciba.grant.enabled','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','require.pushed.authorization.requests','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml_force_name_id_format','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.artifact.binding','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.assertion.signature','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.authnstatement','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.client.signature','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.encrypt','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.force.post.binding','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.multivalued.roles','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.onetimeuse.condition','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.server.signature','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','saml.server.signature.keyinfo.ext','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','tls.client.certificate.bound.access.tokens','false'),('b53c8572-9481-4d78-980a-a36afc1497c0','use.refresh.tokens','true'),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','pkce.code.challenge.method','S256'),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','post.logout.redirect.uris','+');
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
INSERT INTO `client_scope` VALUES ('0937cb81-e06c-45cd-a0da-74ce61c077b9','profile','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect built-in scope: profile','openid-connect'),('1d98db18-32d4-4d45-ad32-4345d027a7f6','offline_access','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect built-in scope: offline_access','openid-connect'),('1ee85805-0aae-4bf8-9338-dd0680ba98bb','web-origins','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('3328bc84-a063-43a4-ae95-1017d93c5840','phone','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect built-in scope: phone','openid-connect'),('3a4b25e4-cfbe-4f49-963a-a5127185e733','saml_organization','56659954-d51e-4f9c-bac8-11b514b5609e','Organization Membership','saml'),('4041285c-d49b-440e-a884-e452f831ad33','basic','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect scope for add all basic claims to the token','openid-connect'),('57e7b03d-0840-47ef-a490-332f5a005cbc','organization','56659954-d51e-4f9c-bac8-11b514b5609e','Additional claims about the organization a subject belongs to','openid-connect'),('63474775-c911-4008-9220-c6d28555f1b5','roles','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect scope for add user roles to the access token','openid-connect'),('6f05b268-e2f5-4831-971e-520f51742f9b','service_account','56659954-d51e-4f9c-bac8-11b514b5609e','Specific scope for a client enabled for service accounts','openid-connect'),('7d3e78a5-81a8-43bf-8bbe-607ac3ef1f6e','AuthnContextClassRef','56659954-d51e-4f9c-bac8-11b514b5609e','AuthnContextClassRef Level of Authentiation','saml'),('7e49c017-6d63-48f0-85cc-c56c9fecaae4','acr','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('7e6131d8-e0c6-4bf9-adef-6fcd59bd4203','microprofile-jwt','56659954-d51e-4f9c-bac8-11b514b5609e','Microprofile - JWT built-in scope','openid-connect'),('93137eff-efaf-4b80-8214-865ddd61b0d2','address','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect built-in scope: address','openid-connect'),('a691a30c-d2f6-4d01-b48a-6227eea3399c','role_list','56659954-d51e-4f9c-bac8-11b514b5609e','SAML role list','saml'),('d59b0321-5ebe-4882-baac-95aee56aade7','email','56659954-d51e-4f9c-bac8-11b514b5609e','OpenID Connect built-in scope: email','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_attributes`
--

LOCK TABLES `client_scope_attributes` WRITE;
INSERT INTO `client_scope_attributes` VALUES ('0937cb81-e06c-45cd-a0da-74ce61c077b9','${profileScopeConsentText}','consent.screen.text'),('0937cb81-e06c-45cd-a0da-74ce61c077b9','true','display.on.consent.screen'),('0937cb81-e06c-45cd-a0da-74ce61c077b9','true','include.in.token.scope'),('1d98db18-32d4-4d45-ad32-4345d027a7f6','${offlineAccessScopeConsentText}','consent.screen.text'),('1d98db18-32d4-4d45-ad32-4345d027a7f6','true','display.on.consent.screen'),('1ee85805-0aae-4bf8-9338-dd0680ba98bb','','consent.screen.text'),('1ee85805-0aae-4bf8-9338-dd0680ba98bb','false','display.on.consent.screen'),('1ee85805-0aae-4bf8-9338-dd0680ba98bb','false','include.in.token.scope'),('3328bc84-a063-43a4-ae95-1017d93c5840','${phoneScopeConsentText}','consent.screen.text'),('3328bc84-a063-43a4-ae95-1017d93c5840','true','display.on.consent.screen'),('3328bc84-a063-43a4-ae95-1017d93c5840','true','include.in.token.scope'),('3a4b25e4-cfbe-4f49-963a-a5127185e733','false','display.on.consent.screen'),('4041285c-d49b-440e-a884-e452f831ad33','false','display.on.consent.screen'),('4041285c-d49b-440e-a884-e452f831ad33','false','include.in.token.scope'),('57e7b03d-0840-47ef-a490-332f5a005cbc','${organizationScopeConsentText}','consent.screen.text'),('57e7b03d-0840-47ef-a490-332f5a005cbc','true','display.on.consent.screen'),('57e7b03d-0840-47ef-a490-332f5a005cbc','true','include.in.token.scope'),('63474775-c911-4008-9220-c6d28555f1b5','${rolesScopeConsentText}','consent.screen.text'),('63474775-c911-4008-9220-c6d28555f1b5','true','display.on.consent.screen'),('63474775-c911-4008-9220-c6d28555f1b5','false','include.in.token.scope'),('6f05b268-e2f5-4831-971e-520f51742f9b','false','display.on.consent.screen'),('6f05b268-e2f5-4831-971e-520f51742f9b','false','include.in.token.scope'),('7e49c017-6d63-48f0-85cc-c56c9fecaae4','false','display.on.consent.screen'),('7e49c017-6d63-48f0-85cc-c56c9fecaae4','false','include.in.token.scope'),('7e6131d8-e0c6-4bf9-adef-6fcd59bd4203','false','display.on.consent.screen'),('7e6131d8-e0c6-4bf9-adef-6fcd59bd4203','true','include.in.token.scope'),('93137eff-efaf-4b80-8214-865ddd61b0d2','${addressScopeConsentText}','consent.screen.text'),('93137eff-efaf-4b80-8214-865ddd61b0d2','true','display.on.consent.screen'),('93137eff-efaf-4b80-8214-865ddd61b0d2','true','include.in.token.scope'),('a691a30c-d2f6-4d01-b48a-6227eea3399c','${samlRoleListScopeConsentText}','consent.screen.text'),('a691a30c-d2f6-4d01-b48a-6227eea3399c','true','display.on.consent.screen'),('d59b0321-5ebe-4882-baac-95aee56aade7','${emailScopeConsentText}','consent.screen.text'),('d59b0321-5ebe-4882-baac-95aee56aade7','true','display.on.consent.screen'),('d59b0321-5ebe-4882-baac-95aee56aade7','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_client`
--

LOCK TABLES `client_scope_client` WRITE;
INSERT INTO `client_scope_client` VALUES ('179041d9-6c43-48af-bf5a-18a8a21ce014','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('179041d9-6c43-48af-bf5a-18a8a21ce014','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('179041d9-6c43-48af-bf5a-18a8a21ce014','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('179041d9-6c43-48af-bf5a-18a8a21ce014','3328bc84-a063-43a4-ae95-1017d93c5840',0),('179041d9-6c43-48af-bf5a-18a8a21ce014','4041285c-d49b-440e-a884-e452f831ad33',1),('179041d9-6c43-48af-bf5a-18a8a21ce014','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('179041d9-6c43-48af-bf5a-18a8a21ce014','63474775-c911-4008-9220-c6d28555f1b5',1),('179041d9-6c43-48af-bf5a-18a8a21ce014','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('179041d9-6c43-48af-bf5a-18a8a21ce014','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('179041d9-6c43-48af-bf5a-18a8a21ce014','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('179041d9-6c43-48af-bf5a-18a8a21ce014','d59b0321-5ebe-4882-baac-95aee56aade7',1),('399cfec0-79d6-4e0e-9fba-fdba706590b2','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('399cfec0-79d6-4e0e-9fba-fdba706590b2','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('399cfec0-79d6-4e0e-9fba-fdba706590b2','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('399cfec0-79d6-4e0e-9fba-fdba706590b2','3328bc84-a063-43a4-ae95-1017d93c5840',0),('399cfec0-79d6-4e0e-9fba-fdba706590b2','4041285c-d49b-440e-a884-e452f831ad33',1),('399cfec0-79d6-4e0e-9fba-fdba706590b2','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('399cfec0-79d6-4e0e-9fba-fdba706590b2','63474775-c911-4008-9220-c6d28555f1b5',1),('399cfec0-79d6-4e0e-9fba-fdba706590b2','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('399cfec0-79d6-4e0e-9fba-fdba706590b2','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('399cfec0-79d6-4e0e-9fba-fdba706590b2','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('399cfec0-79d6-4e0e-9fba-fdba706590b2','d59b0321-5ebe-4882-baac-95aee56aade7',1),('4fb086db-f175-4a33-99a8-145b3ee867a1','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('4fb086db-f175-4a33-99a8-145b3ee867a1','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('4fb086db-f175-4a33-99a8-145b3ee867a1','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('4fb086db-f175-4a33-99a8-145b3ee867a1','3328bc84-a063-43a4-ae95-1017d93c5840',0),('4fb086db-f175-4a33-99a8-145b3ee867a1','4041285c-d49b-440e-a884-e452f831ad33',1),('4fb086db-f175-4a33-99a8-145b3ee867a1','63474775-c911-4008-9220-c6d28555f1b5',1),('4fb086db-f175-4a33-99a8-145b3ee867a1','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('4fb086db-f175-4a33-99a8-145b3ee867a1','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('4fb086db-f175-4a33-99a8-145b3ee867a1','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('4fb086db-f175-4a33-99a8-145b3ee867a1','d59b0321-5ebe-4882-baac-95aee56aade7',1),('618b6de7-e576-459f-852f-b8d50ed57b84','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('618b6de7-e576-459f-852f-b8d50ed57b84','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('618b6de7-e576-459f-852f-b8d50ed57b84','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('618b6de7-e576-459f-852f-b8d50ed57b84','3328bc84-a063-43a4-ae95-1017d93c5840',0),('618b6de7-e576-459f-852f-b8d50ed57b84','4041285c-d49b-440e-a884-e452f831ad33',1),('618b6de7-e576-459f-852f-b8d50ed57b84','63474775-c911-4008-9220-c6d28555f1b5',1),('618b6de7-e576-459f-852f-b8d50ed57b84','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('618b6de7-e576-459f-852f-b8d50ed57b84','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('618b6de7-e576-459f-852f-b8d50ed57b84','d59b0321-5ebe-4882-baac-95aee56aade7',1),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','3328bc84-a063-43a4-ae95-1017d93c5840',0),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','4041285c-d49b-440e-a884-e452f831ad33',1),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','63474775-c911-4008-9220-c6d28555f1b5',1),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('83a73f92-4da4-4fc9-ba9c-cd10b73c9706','d59b0321-5ebe-4882-baac-95aee56aade7',1),('95b417a0-893d-4492-a197-618785908054','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('95b417a0-893d-4492-a197-618785908054','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('95b417a0-893d-4492-a197-618785908054','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('95b417a0-893d-4492-a197-618785908054','3328bc84-a063-43a4-ae95-1017d93c5840',0),('95b417a0-893d-4492-a197-618785908054','4041285c-d49b-440e-a884-e452f831ad33',1),('95b417a0-893d-4492-a197-618785908054','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('95b417a0-893d-4492-a197-618785908054','63474775-c911-4008-9220-c6d28555f1b5',1),('95b417a0-893d-4492-a197-618785908054','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('95b417a0-893d-4492-a197-618785908054','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('95b417a0-893d-4492-a197-618785908054','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('95b417a0-893d-4492-a197-618785908054','d59b0321-5ebe-4882-baac-95aee56aade7',1),('b53c8572-9481-4d78-980a-a36afc1497c0','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('b53c8572-9481-4d78-980a-a36afc1497c0','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('b53c8572-9481-4d78-980a-a36afc1497c0','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('b53c8572-9481-4d78-980a-a36afc1497c0','3328bc84-a063-43a4-ae95-1017d93c5840',0),('b53c8572-9481-4d78-980a-a36afc1497c0','4041285c-d49b-440e-a884-e452f831ad33',1),('b53c8572-9481-4d78-980a-a36afc1497c0','63474775-c911-4008-9220-c6d28555f1b5',1),('b53c8572-9481-4d78-980a-a36afc1497c0','6f05b268-e2f5-4831-971e-520f51742f9b',1),('b53c8572-9481-4d78-980a-a36afc1497c0','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('b53c8572-9481-4d78-980a-a36afc1497c0','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('b53c8572-9481-4d78-980a-a36afc1497c0','d59b0321-5ebe-4882-baac-95aee56aade7',1),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','3328bc84-a063-43a4-ae95-1017d93c5840',0),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','4041285c-d49b-440e-a884-e452f831ad33',1),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','63474775-c911-4008-9220-c6d28555f1b5',1),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','d59b0321-5ebe-4882-baac-95aee56aade7',1),('c706b6bc-873b-41e4-a911-af030a779735','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('c706b6bc-873b-41e4-a911-af030a779735','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('c706b6bc-873b-41e4-a911-af030a779735','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('c706b6bc-873b-41e4-a911-af030a779735','3328bc84-a063-43a4-ae95-1017d93c5840',0),('c706b6bc-873b-41e4-a911-af030a779735','4041285c-d49b-440e-a884-e452f831ad33',1),('c706b6bc-873b-41e4-a911-af030a779735','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('c706b6bc-873b-41e4-a911-af030a779735','63474775-c911-4008-9220-c6d28555f1b5',1),('c706b6bc-873b-41e4-a911-af030a779735','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('c706b6bc-873b-41e4-a911-af030a779735','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('c706b6bc-873b-41e4-a911-af030a779735','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('c706b6bc-873b-41e4-a911-af030a779735','d59b0321-5ebe-4882-baac-95aee56aade7',1);
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_role_mapping`
--

LOCK TABLES `client_scope_role_mapping` WRITE;
INSERT INTO `client_scope_role_mapping` VALUES ('1d98db18-32d4-4d45-ad32-4345d027a7f6','db8e885e-7fc0-4329-8787-f9b2ba314786');
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
INSERT INTO `component` VALUES ('132cf77e-c834-4901-8920-2f64eba12546','Max Clients Limit','56659954-d51e-4f9c-bac8-11b514b5609e','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous'),('2ef3d4d7-7def-4227-bf0b-31fa338d00d1','rsa-generated','56659954-d51e-4f9c-bac8-11b514b5609e','rsa-generated','org.keycloak.keys.KeyProvider','56659954-d51e-4f9c-bac8-11b514b5609e',NULL),('38b4d27f-6379-4475-8671-80cac6ddfcc0',NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','56659954-d51e-4f9c-bac8-11b514b5609e',NULL),('402db04d-46ae-494b-9576-d96c2305f3e9','Allowed Protocol Mapper Types','56659954-d51e-4f9c-bac8-11b514b5609e','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','authenticated'),('45aaf369-f70b-4f9c-97b3-0bf9c277d6d7','aes-generated','56659954-d51e-4f9c-bac8-11b514b5609e','aes-generated','org.keycloak.keys.KeyProvider','56659954-d51e-4f9c-bac8-11b514b5609e',NULL),('4c90e843-ee7d-4d50-a25e-30c0188e7070','Allowed Registration Web Origins','56659954-d51e-4f9c-bac8-11b514b5609e','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','authenticated'),('68832b99-e243-4c99-8f91-f8ff160d1180','Allowed Protocol Mapper Types','56659954-d51e-4f9c-bac8-11b514b5609e','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous'),('94e2de6f-06f9-4280-88d0-41bc7e4c8408','Allowed Client Scopes','56659954-d51e-4f9c-bac8-11b514b5609e','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','authenticated'),('9f00aeea-f963-4bc0-8725-143bddb687cb','Allowed Registration Web Origins','56659954-d51e-4f9c-bac8-11b514b5609e','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous'),('acec03a2-b5c3-4b45-98ea-0d35410644cb','Consent Required','56659954-d51e-4f9c-bac8-11b514b5609e','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous'),('b13f1c32-c63c-49e0-a573-27800deae8ba','Full Scope Disabled','56659954-d51e-4f9c-bac8-11b514b5609e','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous'),('b2619165-0fd8-4440-b324-d3231296cd7d','Trusted Hosts','56659954-d51e-4f9c-bac8-11b514b5609e','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous'),('b3aaff25-df5c-4ed5-88d9-0783aba5a8a8','hmac-generated-hs512','56659954-d51e-4f9c-bac8-11b514b5609e','hmac-generated','org.keycloak.keys.KeyProvider','56659954-d51e-4f9c-bac8-11b514b5609e',NULL),('bda24adc-2c32-4d80-90be-19a1a5038fd1','rsa-enc-generated','56659954-d51e-4f9c-bac8-11b514b5609e','rsa-enc-generated','org.keycloak.keys.KeyProvider','56659954-d51e-4f9c-bac8-11b514b5609e',NULL),('eee6119f-95f2-43d4-8f65-85ab9af62b5f','Allowed Client Scopes','56659954-d51e-4f9c-bac8-11b514b5609e','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','anonymous');
UNLOCK TABLES;

--
-- Dumping data for table `component_config`
--

LOCK TABLES `component_config` WRITE;
INSERT INTO `component_config` VALUES ('01ae1b8e-928d-4986-bb13-fd96cbd63660','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('01e80610-97e8-4df0-959d-0b6ea35a6f76','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('089f2ad8-7fc6-48b1-92b8-317503509353','45aaf369-f70b-4f9c-97b3-0bf9c277d6d7','priority','100'),('08f723cc-b77d-415f-b740-fc6c92c9aad5','b3aaff25-df5c-4ed5-88d9-0783aba5a8a8','kid','32443269-5a52-4bb2-b30c-f7d47066c887'),('0a4f933d-0f53-4f7d-8dfe-e72db52ebe50','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('2fff4115-81a2-43fd-9d63-ee0b26f63b94','38b4d27f-6379-4475-8671-80cac6ddfcc0','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('323e0c23-f3ac-46f6-ba84-fd4ae47d8171','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('432b95fe-602f-44e2-a686-ffcd8c745f72','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','oidc-full-name-mapper'),('46c97fff-30e3-44b4-8f75-776bd65e135c','2ef3d4d7-7def-4227-bf0b-31fa338d00d1','keyUse','SIG'),('53be7d00-a084-4544-aa14-a035bd4eeea1','b3aaff25-df5c-4ed5-88d9-0783aba5a8a8','priority','100'),('5d2dfb70-56e3-4f9c-ba02-1b238135d9aa','b2619165-0fd8-4440-b324-d3231296cd7d','host-sending-registration-request-must-match','true'),('601b02b5-8e6d-48f0-a8bd-5c8497e8081b','2ef3d4d7-7def-4227-bf0b-31fa338d00d1','priority','100'),('634ec6fa-ba10-4ae8-8394-c90bdc801d16','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','saml-role-list-mapper'),('66cdcbb8-0a2a-484b-a08a-7b2ed17efdeb','2ef3d4d7-7def-4227-bf0b-31fa338d00d1','privateKey','MIIEogIBAAKCAQEAojXHQOzJYyW5IQbwgrq6UedmoJIhqTq5D0joacF3QBZJThhMyOg6J5IYA9U9IeR2NfcIQ0tK14HRhXGzSiH846qX7pn0E0VwEBugHhyUAwUrFVDl7Kf8+SkuVCa3xK/QAzzb7Cu0OfGNHBwJ3/4PidfNxpHGEgSsN2yf5AEhsls+omKSTYaxmFxHpZ3//s0xr4I0BTNb86w4yGZoJDZ/wC70R716DQVw5LDBFoAqhmf1X52E5liLHsnlf4vilCMU8p92OKJMg31n08w4bCagab0J8rKsyD5osckCfVwpGPygIbSC/XEWBhFUL/X/NQ7oTBFyyCHXbH4rLNSJ0zpEuwIDAQABAoIBADWkNCK/yy9K88g8u793kZLxQ4p5GMGWZklsMlN6w31BgXdeaNINneGlGeT2mPNC0maxLR3X4cWXrBqFiaVLzQ3axciFR+Yxkcf54r7ic332MROo/4f925Xn7OauMRpNi6vubcnRgBWjUCdKDGfy49+RKn7uiQI/YlYnyU5Eo4iPxhZ8AEWgU/yv32pj58zx/Rj2rr9CAHHKdY+OS2ToIh9P/qcRT282qnt4T3riMN9d7QqqMWbOfD98PsK+lAj+EsrQjuYr/PZ+le2LxEwz4fKIdKEyZdGzU2k1kBr52XnHIV61RfS3ukjwuWr1Ir3ueqqEqHN/9sgExu14LxdRAb0CgYEA1qgHoSnc1UbmfK1rc26F6M7YTQ8d1LVsU/oHsYj4mVERtslrNfIt+Q2jcBgngpIlG/bb8nLWcFrIuOgY5ur/RxaJVVNJJUbjZ4RgqqBfb168j1K00Jd2OZFHBqdmTf2PkJxv0zQzw7d2xxcTcuIZqfBQ7EWXxP4HrNUyCwCA3z8CgYEAwXPNJrA9SBAj6lPr3NLInbIYvtR7ORueCe6EwtFe80lO0QJpaXp3WBBI2zxCCeBrRAr1ZDTYhySZVgpuWW/cd4UMy1lkht5Yc0bgqvdzm0z34LdPAP2FbRTihWsAW4WiWwUrTmN/tMD+NN0h3XeaTN6mrL6BR8gRzpLlL7eAd4UCgYA1Tz211MO3ZAhR5m/NFyHCk7w8RwjNjtD8ehf3C2FSEkQn9RXfK+om9DAm4pjNYKY+r6woJkUDWkiHQ30LvEjxyrMIscp0q4pGZyXqujF5YznJDm1BcJw359CP4nsR22sQKwnKlihU7vdcsmpuGaDuB3TReOccUUpurfPjr5hR2QKBgD8jmpu7/eRdUDuU9HB4Y34EuMrf8u/qsaQwMyiayVDCZnUVQm5oyDb36a+UdUFf++KTaRAxp1JEgb9xXB7Ywa5IwKpGHOdf/qJxSbbDWPohHu47Jg/+ruOxY1WEXPOCJEFs6HuHQhEuxElgu0LbXIMmUGQlMXDKPfWcQC1YyRc5AoGAOqoH1Hv8CNpFySXqku04WwI/o1SH8sIY6FmJdDeWPesoDpM2Qxa/Qxvun6cyIXnAmFcGppFij96aVAd3SnEs5PFYFbpeip4afnwWzRz2YfUSwuToYWYXb1OzJD0WPu/xM/8ydirxoYRyECKPWIUDumoyncRHoPUhp/n/kltBu+Q='),('6978b34b-784b-40e4-872c-3bed16ee40bb','bda24adc-2c32-4d80-90be-19a1a5038fd1','privateKey','MIIEpQIBAAKCAQEAz2qMGde1YC8zCKl7KM0Mtw95/Gwwx1bLrKWf+jUcoRxn59YMTVDFWEVJHcyj6fmWKWLxSbONVXdkrTDcWxSZyN/4PlSnZRllX22Lq3Q9dkGAEzB7Ejvqxj5XbOLfqiUPhqIA29RgIhP8QXieAiR4fBnp4pvAYDBJ0PzrDHIF8eS21IxxsEU9n4dCuYrnIQ1WssfkVk3I5iZoo7aA5THqV6yreBKF0MWYm4i4SZhchoU97rFvMCZqkKOwsglng33XnWJJDsZBkNiWGPjz6v/0ugMWXPT9ODFfoD2TRMoWk1GoDOgD/jSTG5dF1TSl9xNJwJlKl9XlQmocAlBUWPdxNwIDAQABAoIBAFL0VxIi3oyYc/274uD/mV1BmFUnZB7ljNIA78mfIlMhTEFBr2vgqPzTwRlk9g2m37KvurbyU81h0eceipL220ampN8w9j4N+ShAZMLu24IHUlTaZ+5z/kLJPifzWObwqZP8CQHin4whmBsLRY6vzWw85PjXuAoAZhVqggtZMx151nv9IfFCELSG6ZLIbRwSR5XtBLYPLr9tTvPKbvboOO/6eaB6rPr1g+nf/6+EAliAEeRyXT1RdgoKL9GaL48jvcG6jFHxRZMq8EMf2f1N3kBXHI+Ca03wES8DR9wDbReUeXWvQO5E8ZjgxwkYE33Pttu4xXIgm5H/Uj4wYCcaLZECgYEA6TPNhjlHjnhMvV/zOWeNXYbhvA6YMCOZnqF9GHHTGRYGVySLUjErvmWQxGBQmSsfEUO9pXDvwFrz3ZgGmcTbnO/PZWQX8zUWH9IsiJKuV68CvAVoomnD1g/FHMT9wN/bCoPSUbeE8igf7ZnQdbZNvowEWOOLZEgVaG9VfNAIUekCgYEA47Fpbkxbv95NjjsmKzlsP1+3XiJNnso5507y/bl5rYl2LrbkvpSgv8IdU0Ao6S3hn8j7pMrHzCKPn+LWdd5nCHi7X2OP9w7DHzlAL2dweK3F2aW5AEEHad635mzHfUbDFvm4JyHCN2boPbJU28e/gtS2r+fcFRE8O6k5CL7flh8CgYEAyaaPy8bwB1QjF4ZGrZbLeNpPi+wa0VWXWsJNh7u1THXtGaFyD6qRJtxwaD7YsvnErYskDFEyH+UGBtGUs5a0SGpdrlD1HMsEzJNTCu27b/rXpHoQ1pAaVZnhWlVFD2kC4X7HeP32KedkZHKi/Yach25PvAVW3WoviNTs2TaSWzECgYEA3cwUR71aIq0KH2K+65wkNhenJ6uCsQuNHCVrzny+aq1c0mSWro9Zh3Iv3sjBEWQARQYjG4Ps3I1OGxF8l5TuCPKSk3kI5EEdEW1TeNnqVaPw9vLYI8c00YyC15NfQEmOAPOAz52y8wTrdi4hO3Z4t5k93FyfpmYDpppRVJOaeUECgYEAiB2i9V0AdaOmSZjI1OQF4whiNiHjLtqjAyQMMYHyMhW6Td9ofsLCaGVaVhfqC2bZpePznW50tgN8B6WwM3zKfpVPf0e4FPNwoLgf+skE9PWADMmncZa/48h5YewIbakNJTOGWxrtk/4Ct4K12gfDAnXjbyEa/nV+YN5yKcGE2m4='),('73b50e7d-b74c-46ab-8d32-3a0244fa37d9','132cf77e-c834-4901-8920-2f64eba12546','max-clients','200'),('74bb8bb2-25db-4620-8a12-2f0d780c914b','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','saml-role-list-mapper'),('7847100c-a05c-4bf7-b846-30ab586a14ee','b3aaff25-df5c-4ed5-88d9-0783aba5a8a8','secret','NXzKezoAnzTt6vs5aLn8WP79cUB2Dyf3kmkdA9eiFujOiPPZiy-8GN1H875BTUkTQvBCCaNaaEuW8CBaZV2jOpHRaY5XxyquXpg_KZOZh0Wkkx5jf7mesRyDNx8_DHB1SXQ6r8LdqDdnkA-RtrEbqM3RRcr3eNVMmI9u5liWp_c'),('7c474380-daee-4d9b-89df-e0159c7657ab','bda24adc-2c32-4d80-90be-19a1a5038fd1','keyUse','ENC'),('8236532b-d664-4e59-90e8-ffd71329c3e1','b2619165-0fd8-4440-b324-d3231296cd7d','client-uris-must-match','true'),('82699e69-77fb-472b-b326-4bfbe92657de','b3aaff25-df5c-4ed5-88d9-0783aba5a8a8','algorithm','HS512'),('8a80cf64-d479-4890-92cb-a2eaa3e6824e','2ef3d4d7-7def-4227-bf0b-31fa338d00d1','certificate','MIICmzCCAYMCBgGfoTBP2DANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwNzI3MDEyNzA1WhcNMzYwNzI3MDEyODQ1WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCiNcdA7MljJbkhBvCCurpR52agkiGpOrkPSOhpwXdAFklOGEzI6DonkhgD1T0h5HY19whDS0rXgdGFcbNKIfzjqpfumfQTRXAQG6AeHJQDBSsVUOXsp/z5KS5UJrfEr9ADPNvsK7Q58Y0cHAnf/g+J183GkcYSBKw3bJ/kASGyWz6iYpJNhrGYXEelnf/+zTGvgjQFM1vzrDjIZmgkNn/ALvRHvXoNBXDksMEWgCqGZ/VfnYTmWIseyeV/i+KUIxTyn3Y4okyDfWfTzDhsJqBpvQnysqzIPmixyQJ9XCkY/KAhtIL9cRYGEVQv9f81DuhMEXLIIddsfiss1InTOkS7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBADDFFvs4xAhNDj36fk5ow6o54Y2b51RICbj2qzVbzALYNklzSDW/5swiNj2C7a0eOdulwT2f/p7GFPVTKjHXsH6fBq9iE9OsA1Ycmnt/z1AMhr7hw32u3NQhZhGqCGyuRdGxO5rknb4MQXuaU7lrfAF4ISfrOyM8MzrL3PvhTT2u3Lakwyg9oXSIFrXVJqjmg5xMiWtaJf4k6YD/eyA/+EBteyCyKO7EHqZWr34Pxk2UDylOrkAOEcguhFUSrtV0wALzf0ufgL+vskf+JHD5ddtCBKuAM+b/MY9ghgFD8elZWK6uz897BsSeD6q9k7OktseCSWi3Z/hh3UF3PXNseo4='),('901a8319-27e7-4a64-a2be-f2b47e6d31ed','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','saml-user-property-mapper'),('94eb03cc-8227-4fc6-8a4a-75d09d5b3725','eee6119f-95f2-43d4-8f65-85ab9af62b5f','allow-default-scopes','true'),('a65f84fa-cf74-4c06-b9b3-25aa12fce4b0','bda24adc-2c32-4d80-90be-19a1a5038fd1','priority','100'),('a66ec662-87fd-45ed-9c11-c16f8126cc0e','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a95581ce-00ca-44e3-879a-0090995b7b31','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','saml-user-property-mapper'),('b4c67c06-34d2-42e0-9cfc-817c5417b106','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('b522141c-624d-4e28-9b7a-90948136d81f','94e2de6f-06f9-4280-88d0-41bc7e4c8408','allow-default-scopes','true'),('c818906a-02c7-4644-860f-fe9bdcdc63a4','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dc7d8b49-dff5-480f-99ed-ae03d8c76108','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ddcf5398-8bdc-4567-9f40-6f4adba305f5','45aaf369-f70b-4f9c-97b3-0bf9c277d6d7','kid','b25ea9f9-f1f2-408d-904d-633e86d25d03'),('e20520a0-4d8c-441f-8851-1d4111274f5b','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','oidc-full-name-mapper'),('eb81a08f-6864-441f-8802-c74385176313','68832b99-e243-4c99-8f91-f8ff160d1180','allowed-protocol-mapper-types','oidc-address-mapper'),('f11214c3-010e-4852-8827-875dedf31273','402db04d-46ae-494b-9576-d96c2305f3e9','allowed-protocol-mapper-types','oidc-address-mapper'),('f48933d1-2644-40ca-8cd9-2677e792ca31','45aaf369-f70b-4f9c-97b3-0bf9c277d6d7','secret','hgR7I0VizuXcSf_7TqD-k044VQRLgnqqGF1yapfNSWw'),('f80a5e8a-ade1-4637-a72a-f55f3e7d0c2e','bda24adc-2c32-4d80-90be-19a1a5038fd1','certificate','MIICmzCCAYMCBgGfoTBRADANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwNzI3MDEyNzA2WhcNMzYwNzI3MDEyODQ2WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDPaowZ17VgLzMIqXsozQy3D3n8bDDHVsuspZ/6NRyhHGfn1gxNUMVYRUkdzKPp+ZYpYvFJs41Vd2StMNxbFJnI3/g+VKdlGWVfbYurdD12QYATMHsSO+rGPlds4t+qJQ+GogDb1GAiE/xBeJ4CJHh8Genim8BgMEnQ/OsMcgXx5LbUjHGwRT2fh0K5iuchDVayx+RWTcjmJmijtoDlMepXrKt4EoXQxZibiLhJmFyGhT3usW8wJmqQo7CyCWeDfdedYkkOxkGQ2JYY+PPq//S6AxZc9P04MV+gPZNEyhaTUagM6AP+NJMbl0XVNKX3E0nAmUqX1eVCahwCUFRY93E3AgMBAAEwDQYJKoZIhvcNAQELBQADggEBACqrB4vUXSmhr5mLhodPkLLKLzQUcGMJnvDRzMdOntTC7q8OzL3El2U7dpYc5k2GMov/VugXXFRljkr04FFUExrXAm19XkG6KF7zY8U9RI3T+Li0ulBUUge8oOeqCLFKiqvhfjSUon4siThuLlZ0msGwoIP7sFkniCbhI/dGly/sk9qaL3Qjgn7xle0WzUNkMP07mia8M3OuC3Y4n5jgLNg6KKIVw2DwI1Z3VqVPH6kHwn5p5aVX2DRZ1MMawCZaG6uT23GgZyKc3VAvko8Yozrp44GLvSzmByzgw46fvi2SxBMDlWsbCjFFx34uBJVF+MFuozZP9HxF4mwEwCdBsXM='),('fc9ee0dc-207e-4da4-9fd8-a1ebb92eb61d','bda24adc-2c32-4d80-90be-19a1a5038fd1','algorithm','RSA-OAEP');
UNLOCK TABLES;

--
-- Dumping data for table `composite_role`
--

LOCK TABLES `composite_role` WRITE;
INSERT INTO `composite_role` VALUES ('2412e3c6-8db0-4f9b-b28c-b6fff8632cfe','f7ba3a29-6b26-46e5-81bf-02b219c6f831'),('2a97fe28-a546-4898-8beb-eac810a1a50e','49a55b15-2c27-40f2-bf15-6ec5abe8462e'),('2a97fe28-a546-4898-8beb-eac810a1a50e','9a82d1c8-232c-40ac-975e-46f6864ffb3a'),('2a97fe28-a546-4898-8beb-eac810a1a50e','9ac7dd8a-be78-4ae7-9fff-423ee2b88d5c'),('2a97fe28-a546-4898-8beb-eac810a1a50e','db8e885e-7fc0-4329-8787-f9b2ba314786'),('3874a386-7dee-4941-b80e-db222cb54f8b','c0f7047a-82a8-416b-85b3-9f05325b0cac'),('3874a386-7dee-4941-b80e-db222cb54f8b','dd45f736-922f-4604-aa17-5b5b37be992b'),('49a55b15-2c27-40f2-bf15-6ec5abe8462e','67fbbb64-8b35-4787-85d5-0f6b3c333316'),('83ed4078-cee7-4e76-b72e-b6005c713ef9','db1a8bdb-095d-4cba-807f-01893ee0c641'),('8bec4dfb-4bfe-48c4-b83d-5cc9fb9a4af7','b8ae2bf7-6626-4bed-bf56-604370fd8c2a'),('bca1606c-dbf8-4542-b36e-2593168c0d01','0694b7ac-fca2-4f04-8d5f-2a1517c9bc6c'),('bca1606c-dbf8-4542-b36e-2593168c0d01','1f87a131-8125-4ee1-aad8-d083cc499cf5'),('bca1606c-dbf8-4542-b36e-2593168c0d01','2412e3c6-8db0-4f9b-b28c-b6fff8632cfe'),('bca1606c-dbf8-4542-b36e-2593168c0d01','3874a386-7dee-4941-b80e-db222cb54f8b'),('bca1606c-dbf8-4542-b36e-2593168c0d01','47fc8eb1-42dd-4474-928f-c7416d2f070b'),('bca1606c-dbf8-4542-b36e-2593168c0d01','4809c989-2585-4851-8ab3-6521e3e7688c'),('bca1606c-dbf8-4542-b36e-2593168c0d01','5cdc1206-7952-4339-b738-37c7bc02cf4b'),('bca1606c-dbf8-4542-b36e-2593168c0d01','63a967e9-246a-4ec3-9b9b-74550f2bd193'),('bca1606c-dbf8-4542-b36e-2593168c0d01','70586c64-de79-4cd6-a3ac-3e0bb8f37232'),('bca1606c-dbf8-4542-b36e-2593168c0d01','83ed4078-cee7-4e76-b72e-b6005c713ef9'),('bca1606c-dbf8-4542-b36e-2593168c0d01','8450be81-9d12-42de-85b7-f2f9bfb1e19d'),('bca1606c-dbf8-4542-b36e-2593168c0d01','84605aed-8d14-4ff8-b3d7-280ae2fb1d20'),('bca1606c-dbf8-4542-b36e-2593168c0d01','9045030b-6813-49df-a052-d29400c5616f'),('bca1606c-dbf8-4542-b36e-2593168c0d01','99c87ef9-a78f-44c3-a1e5-d62ce3747d13'),('bca1606c-dbf8-4542-b36e-2593168c0d01','9a0fd7f9-5030-4d63-9539-bb1d36e66629'),('bca1606c-dbf8-4542-b36e-2593168c0d01','9a923f62-deae-44f4-8d6d-4d5a31514384'),('bca1606c-dbf8-4542-b36e-2593168c0d01','a00b4ae8-9212-4f21-a4de-1992a4fb56ab'),('bca1606c-dbf8-4542-b36e-2593168c0d01','bac8d68a-f210-4b50-8662-1423eb8fee60'),('bca1606c-dbf8-4542-b36e-2593168c0d01','c0f7047a-82a8-416b-85b3-9f05325b0cac'),('bca1606c-dbf8-4542-b36e-2593168c0d01','db1a8bdb-095d-4cba-807f-01893ee0c641'),('bca1606c-dbf8-4542-b36e-2593168c0d01','dd45f736-922f-4604-aa17-5b5b37be992b'),('bca1606c-dbf8-4542-b36e-2593168c0d01','f7ba3a29-6b26-46e5-81bf-02b219c6f831');
UNLOCK TABLES;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
INSERT INTO `credential` VALUES ('b8333a40-3f03-4517-bbe0-7357169b1140',NULL,'password','298d0922-8963-4a37-bd41-816a8e8d4ccf',1785115726583,NULL,'{\"value\":\"+TtHiqVYGtp+lUssqygxLhq9ch/J80/LCWwhxIgtlqE=\",\"salt\":\"hK407r6sj24BaB07PZIYOw==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0);
UNLOCK TABLES;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
INSERT INTO `databasechangelog` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2026-07-27 10:28:24',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2026-07-27 10:28:24',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2026-07-27 10:28:24',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2026-07-27 10:28:24',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2026-07-27 10:28:25',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2026-07-27 10:28:25',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2026-07-27 10:28:26',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2026-07-27 10:28:26',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2026-07-27 10:28:26',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2026-07-27 10:28:26',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2026-07-27 10:28:27',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2026-07-27 10:28:27',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2026-07-27 10:28:27',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-27 10:28:27',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-27 10:28:27',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-27 10:28:27',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-27 10:28:27',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2026-07-27 10:28:27',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2026-07-27 10:28:28',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2026-07-27 10:28:28',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2026-07-27 10:28:28',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2026-07-27 10:28:28',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2026-07-27 10:28:28',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2026-07-27 10:28:28',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2026-07-27 10:28:28',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2026-07-27 10:28:28',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-07-27 10:28:35',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.33.0',NULL,NULL,'5115695190'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2026-07-27 10:28:35',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2026-07-27 10:28:35',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2026-07-27 10:28:35',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('18.0.15-30992-index-consent','keycloak','META-INF/jpa-changelog-18.0.15.xml','2026-07-27 10:28:35',107,'EXECUTED','9:80071ede7a05604b1f4906f3bf3b00f0','createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2026-07-27 10:28:35',108,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2026-07-27 10:28:29',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2026-07-27 10:28:29',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2026-07-27 10:28:29',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2026-07-27 10:28:29',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-27 10:28:29',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2026-07-27 10:28:30',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-27 10:28:29',34,'MARK_RAN','9:737ee933fd399814ed5e24f3b1bbe39d','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-27 10:28:30',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-27 10:28:30',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2026-07-27 10:28:30',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-27 10:28:35',109,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('20.0.0-12964-supported-dbs-edb-migration','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-27 10:28:35',110,'MARK_RAN','9:a6b18a8e38062df5793edbe064f4aecd','dropIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE; createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-27 10:28:35',111,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2026-07-27 10:28:35',115,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-07-27 10:28:35',116,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-07-27 10:28:35',117,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-07-27 10:28:35',118,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-07-27 10:28:35',119,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-07-27 10:28:35',120,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.33.0',NULL,NULL,'5115695190'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-07-27 10:28:35',121,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-27 10:28:35',124,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.0-26618-edb-migration','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-27 10:28:35',126,'MARK_RAN','9:2f684b29d414cd47efe3a3599f390741','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES; createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-27 10:28:35',125,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-27 10:28:35',122,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-27 10:28:35',123,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-07-27 10:28:35',127,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-07-27 10:28:36',128,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-07-27 10:28:36',129,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-2-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',136,'EXECUTED','9:b7ef76036d3126bb83c2423bf4d449d6','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-2-not-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',137,'MARK_RAN','9:23396cf51ab8bc1ae6f0cac7f9f6fcf7','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-cleanup-css-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',135,'EXECUTED','9:5411d2fb2891d3e8d63ddb55dfa3c0c9','dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-cleanup-uss-by-usersess','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',134,'EXECUTED','9:6eee220d024e38e89c799417ec33667f','dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-cleanup-uss-createdon','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',132,'EXECUTED','9:78ab4fc129ed5e8265dbcc3485fba92f','dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-cleanup-uss-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',133,'EXECUTED','9:de5f7c1f7e10994ed8b62e621d20eaab','dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',131,'EXECUTED','9:3e96709818458ae49f3c679ae58d263a','createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28265-tables','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',130,'EXECUTED','9:deda2df035df23388af95bbd36c17cef','addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-28861-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',142,'EXECUTED','9:b9acb58ac958d9ada0fe12a5d4794ab1','createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET','',NULL,'4.33.0',NULL,NULL,'5115695190'),('25.0.0-org','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',138,'EXECUTED','9:5c859965c2c9b9c72136c360649af157','createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-32583-drop-redundant-index-on-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',150,'EXECUTED','9:24972d83bf27317a055d234187bb4af9','dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-33201-org-redirect-url','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',152,'EXECUTED','9:4d0e22b0ac68ebe9794fa9cb752ea660','addColumn tableName=ORG','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-idps-for-login','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',149,'EXECUTED','9:51f5fffadf986983d4bd59582c6c1604','addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-org-alias','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',143,'EXECUTED','9:6ef7d63e4412b3c2d66ed179159886a4','addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-org-group','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',144,'EXECUTED','9:da8e8087d80ef2ace4f89d8c5b9ca223','addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-org-group-membership','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',146,'EXECUTED','9:a6ace2ce583a421d89b01ba2a28dc2d4','addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0-org-indexes','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',145,'EXECUTED','9:79b05dcd610a8c7f25ec05135eec0857','createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',151,'EXECUTED','9:febdc0f47f2ed241c59e60f58c3ceea5','dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.1.0-34013','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-07-27 10:28:36',154,'EXECUTED','9:e6b686a15759aef99a6d758a5c4c6a26','addColumn tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.1.0-34380','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-07-27 10:28:36',155,'EXECUTED','9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01','dropTable tableName=USERNAME_LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.2.0-26106','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-07-27 10:28:36',157,'EXECUTED','9:b5877d5dab7d10ff3a9d209d7beb6680','addColumn tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.2.0-36750','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-07-27 10:28:36',156,'EXECUTED','9:b49ce951c22f7eb16480ff085640a33a','createTable tableName=SERVER_CONFIG','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.2.6-39866-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-27 10:28:36',158,'EXECUTED','9:1dc67ccee24f30331db2cba4f372e40e','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.2.6-39866-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-27 10:28:36',159,'EXECUTED','9:b70b76f47210cf0a5f4ef0e219eac7cd','addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.2.6-40088-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-27 10:28:36',160,'EXECUTED','9:cc7e02ed69ab31979afb1982f9670e8f','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.2.6-40088-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-27 10:28:36',161,'EXECUTED','9:5bb848128da7bc4595cc507383325241','addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.3.0-groups-description','keycloak','META-INF/jpa-changelog-26.3.0.xml','2026-07-27 10:28:36',162,'EXECUTED','9:e1a3c05574326fb5b246b73b9a4c4d49','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.4.0-40933-saml-encryption-attributes','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-07-27 10:28:36',163,'EXECUTED','9:7e9eaba362ca105efdda202303a4fe49','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.4.0-51321','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-07-27 10:28:36',164,'EXECUTED','9:34bab2bc56f75ffd7e347c580874e306','createIndex indexName=IDX_EVENT_ENTITY_USER_ID_TYPE, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-add-remember-me','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',172,'EXECUTED','9:a7273ea8b21bd2f674c9c49141999f05','addColumn tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-add-sess-create-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',174,'EXECUTED','9:aaee09e23a4d8468fbc5c51b7b314c58','createIndex indexName=IDX_USER_SESSION_EXPIRATION_LAST_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-add-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',173,'EXECUTED','9:ce49383d317ccbcd3434d1f21172b0b7','createIndex indexName=IDX_USER_SESSION_EXPIRATION_CREATED, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-drop-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',175,'EXECUTED','9:f0082210b6ccbbaf81287c27aa23753c','dropIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-idp-config-allow-null','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:36',169,'EXECUTED','9:b667fb087874303b324c1af7fae4f606','dropDefaultValue columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=STORE_TOKEN, tableName=IDENTITY_PROVIDER; dropDefaultValue columnName...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-idp-config-allow-null-fixed-create-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:36',170,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-idp-config-allow-null-fixed-drop-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:36',168,'MARK_RAN','9:50c51d2c98cd1d624eb1c485c3cf1f75','dropIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-index-offline-css-by-client','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:36',166,'EXECUTED','9:680b59ca7854fa5b77a303301bb2a941','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-index-offline-css-by-client-storage-provider','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:36',167,'EXECUTED','9:809bc160e2bc92f9c28eea39db323ae2','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-invitations-table-fixed2','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',177,'EXECUTED','9:322cb11fc03181903dcd67a54f8b3cf0','createTable tableName=ORG_INVITATION; addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex index...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-mysql-mariadb-default-charset-collation','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',176,'EXECUTED','9:1b383fa60d2db0a8952b365e725f9d16','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.5.0-remove-workflow-provider-id-column','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-27 10:28:37',171,'EXECUTED','9:d8eeb324484d45e946d03b953e168b21','dropIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; dropColumn columnName=WORKFLOW_PROVIDER_ID, tableName=WORKFLOW_STATE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-43829-user-created-timestamp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',187,'EXECUTED','9:f2531a49b8bb21a7a97966d88fd1a411','createIndex indexName=IDX_USER_CREATED_TIMESTAMP, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-44424-create-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',182,'EXECUTED','9:77dbbc72d943e98cfe472ba8cc56a31c','addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-44424-idx-css-realm-and-clients','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',184,'EXECUTED','9:a093877fff41185ac24103be80e00968','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-44424-index-css-user-session-and-offline','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',181,'EXECUTED','9:a704d8598df241a3fd3cb91b6ab4b2d4','createIndex indexName=IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-44424-set-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',183,'EXECUTED','9:3964a3148d32a55ef81126e23cdf6721','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-45009-broker-link-identity-provider','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',179,'EXECUTED','9:7d9a0253c9de7be754efef8bba4265bd','createIndex indexName=IDX_BROKER_LINK_IDENTITY_PROVIDER, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-45009-broker-link-user-id','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',178,'EXECUTED','9:05026bbbc8d2ead5afcbda2f5fdf3a2b','createIndex indexName=IDX_BROKER_LINK_USER_ID, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-48716-create-mssql-idp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',188,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-add-last-modified-timestamp-user','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',185,'EXECUTED','9:8aa583d2cdd9e913dff42fecd626c560','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-add-timestamps-group','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',186,'EXECUTED','9:4363d45dc25105a3fc5db9ff6936b0a9','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.6.0-org-group-relationship','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-27 10:28:37',180,'EXECUTED','9:05685853fba030f53548ac6bf23245e3','addColumn tableName=KEYCLOAK_GROUP; addForeignKeyConstraint baseTableName=KEYCLOAK_GROUP, constraintName=FK_GROUP_ORGANIZATION, referencedTableName=ORG; createIndex indexName=IDX_GROUP_ORG_ID, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-45292-realm-display-name-add-column','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',190,'EXECUTED','9:1de8c7824ce4fd7c739db6195f42be21','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-45292-realm-display-name-migrate-data','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',191,'EXECUTED','9:293096bc554dd51428d1d9882f2de1dd','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-45292-realm-display-name-remove-attribute','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',192,'EXECUTED','9:a08357e3b0908c09d478e692cf82f865','delete tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-46204-issued-ver-credential-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',197,'EXECUTED','9:4918c6f68ba90ce417f1aaa031013168','createTable tableName=ISSUED_VER_CREDENTIAL; addPrimaryKey constraintName=PK_ISSUED_VER_CREDENTIAL, tableName=ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=ISSUED_VER_CREDENTIAL, constraintName=FK_ISSUED_VER_CREDENTIAL_USER, referen...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-9686-dynamic-scopes-consent','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',196,'EXECUTED','9:fb689bc3ff64e174d6319014b38876f1','addColumn tableName=USER_CONSENT_CLIENT_SCOPE; dropPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addColumn...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-add-last-modified-timestamp-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',209,'EXECUTED','9:bae67d2faa5438ee35adfbb20a53c3c6','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-add-timestamps-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',208,'EXECUTED','9:df5324c82398b446690b206c07649d40','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-cluster-event','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',210,'EXECUTED','9:556b201eb9c378fa05d5bf22ec9c8dcf','createTable tableName=CLUSTER_EVENT; addPrimaryKey constraintName=PK_CLUSTER_EVENT, tableName=CLUSTER_EVENT; createIndex indexName=IDX_CLUSTER_EVENT_TARGET, tableName=CLUSTER_EVENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-federated-issued-ver-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',200,'EXECUTED','9:3d610f5527879623a0d2362e64fa667f','createTable tableName=FED_ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=FED_ISSUED_VER_CREDENTIAL, constraintName=FK_FED_ISSUED_VC_VER_CRED, referencedTableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_ISSUED_VC_USER, ...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-federated-verifiable-credentials-1','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',194,'EXECUTED','9:49092fa73b1c2b3afca48d91b8111c65','createTable tableName=FED_USER_VER_CREDENTIAL; addUniqueConstraint constraintName=UK_FED_USER_VC, tableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_USER_VC_REALM_USER, tableName=FED_USER_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-issued-ver-credential-expires-at-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',198,'EXECUTED','9:ab9e4c0c9f21d9217ffe52968a3cf732','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-issued-ver-credential-vc-id-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',199,'EXECUTED','9:1c9b18926e48b4b66d0341400bd13834','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_VC, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-jdbcping-timestamp','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',189,'EXECUTED','9:9a91f62e494bd013594e007b74d01638','addColumn tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-login-failure-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',207,'EXECUTED','9:f554afc6ad14784c99f6ad8811ac30ec','createIndex indexName=IDX_LOGIN_FAILURE_EXPIRE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-login-failure-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',206,'EXECUTED','9:671b50f88904b24ceb02463dd2d0c045','createTable tableName=LOGIN_FAILURE; addPrimaryKey constraintName=PK_LOGIN_FAILURE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-outbox','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',195,'EXECUTED','9:338b2743ca1be95f895d8f9b0cbe7b55','createTable tableName=OUTBOX_ENTRY; addUniqueConstraint constraintName=UC_OUTBOX_KIND_OWNER_CORRELATION, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_DRAIN, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_REALM, tableName=OUTB...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-persistent-auth-session-root-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',202,'EXECUTED','9:3090cd11d2dfeb5df754f41c0ffa35d7','createIndex indexName=IDX_ROOT_AUTH_SESSION_REALM, tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-persistent-auth-session-root-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',201,'EXECUTED','9:ad622d5eebdf468747a0d08d2367a68e','createTable tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-persistent-auth-session-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',203,'EXECUTED','9:609b8a172e43f617bb8920efd2b9ae5f','createTable tableName=AUTH_SESSION; addPrimaryKey constraintName=PK_AUTH_SESSION, tableName=AUTH_SESSION; addForeignKeyConstraint baseTableName=AUTH_SESSION, constraintName=FK_AUTH_SESSION_ROOT, referencedTableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-single-use-object-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',205,'EXECUTED','9:b2ad66c013f48dc131ce109eface7fa5','createIndex indexName=IDX_SINGLE_USE_OBJ_EXPIRE, tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-single-use-object-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:38',204,'EXECUTED','9:22bc4eb8e456b3b7be2808e457a44cb7','createTable tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('26.7.0-verifiable-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-27 10:28:37',193,'EXECUTED','9:68d8df23794085e79ba08b5046cba31d','createTable tableName=USER_VER_CREDENTIAL; addPrimaryKey constraintName=CONSTRAINT_VCRED_PM, tableName=USER_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=USER_VER_CREDENTIAL, constraintName=FK_VCRED_USER, referencedTableName=USER_ENTITY; a...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('29399-jdbc-ping-default','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-07-27 10:28:36',153,'EXECUTED','9:007dbe99d7203fca403b89d4edfdf21e','createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2026-07-27 10:28:30',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-07-27 10:28:30',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2026-07-27 10:28:30',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-07-27 10:28:30',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-07-27 10:28:31',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2026-07-27 10:28:31',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2026-07-27 10:28:32',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2026-07-27 10:28:32',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2026-07-27 10:28:32',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2026-07-27 10:28:32',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2026-07-27 10:28:32',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('31296-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',147,'EXECUTED','9:64ef94489d42a358e8304b0e245f0ed4','createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'5115695190'),('31725-index-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-27 10:28:36',148,'EXECUTED','9:b994246ec2bf7c94da881e1d28782c7b','createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-27 10:28:32',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-27 10:28:33',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-27 10:28:32',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-27 10:28:32',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2026-07-27 10:28:34',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2026-07-27 10:28:34',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2026-07-27 10:28:34',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2026-07-27 10:28:34',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2026-07-27 10:28:34',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2026-07-27 10:28:34',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2026-07-27 10:28:34',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2026-07-27 10:28:34',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('40343-workflow-state-table','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-07-27 10:28:36',165,'EXECUTED','9:ed3ab4723ceed210e5b5e60ac4562106','createTable tableName=WORKFLOW_STATE; addPrimaryKey constraintName=PK_WORKFLOW_STATE, tableName=WORKFLOW_STATE; addUniqueConstraint constraintName=UQ_WORKFLOW_RESOURCE, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_STEP, table...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-27 10:28:34',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-27 10:28:34',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-27 10:28:34',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-27 10:28:34',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-27 10:28:34',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-27 10:28:34',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-27 10:28:34',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-27 10:28:35',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-27 10:28:35',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-27 10:28:35',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-27 10:28:35',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-27 10:28:35',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-27 10:28:35',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-27 10:28:35',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-27 10:28:31',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2026-07-27 10:28:29',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2026-07-27 10:28:29',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-27 10:28:31',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-27 10:28:31',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-27 10:28:31',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-27 10:28:31',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2026-07-27 10:28:34',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2026-07-27 10:28:34',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-07-27 10:28:34',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-07-27 10:28:34',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.33.0',NULL,NULL,'5115695190'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2026-07-27 10:28:34',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'5115695190'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-27 10:28:35',113,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('client-attributes-string-accomodation-fixed-post-create-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-27 10:28:35',114,'MARK_RAN','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('client-attributes-string-accomodation-fixed-pre-drop-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-27 10:28:35',112,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.33.0',NULL,NULL,'5115695190'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5115695190'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-27 10:28:35',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.33.0',NULL,NULL,'5115695190'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2026-07-27 10:28:35',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.33.0',NULL,NULL,'5115695190'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-07-27 10:28:35',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-27 10:28:35',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('unique-consentuser','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',139,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('unique-consentuser-edb-migration','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',140,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5115695190'),('unique-consentuser-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-27 10:28:36',141,'EXECUTED','9:b79478aad5adaa1bc428e31563f55e8e','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5115695190');
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
INSERT INTO `default_client_scope` VALUES ('56659954-d51e-4f9c-bac8-11b514b5609e','0937cb81-e06c-45cd-a0da-74ce61c077b9',1),('56659954-d51e-4f9c-bac8-11b514b5609e','1d98db18-32d4-4d45-ad32-4345d027a7f6',0),('56659954-d51e-4f9c-bac8-11b514b5609e','1ee85805-0aae-4bf8-9338-dd0680ba98bb',1),('56659954-d51e-4f9c-bac8-11b514b5609e','3328bc84-a063-43a4-ae95-1017d93c5840',0),('56659954-d51e-4f9c-bac8-11b514b5609e','3a4b25e4-cfbe-4f49-963a-a5127185e733',1),('56659954-d51e-4f9c-bac8-11b514b5609e','4041285c-d49b-440e-a884-e452f831ad33',1),('56659954-d51e-4f9c-bac8-11b514b5609e','57e7b03d-0840-47ef-a490-332f5a005cbc',0),('56659954-d51e-4f9c-bac8-11b514b5609e','63474775-c911-4008-9220-c6d28555f1b5',1),('56659954-d51e-4f9c-bac8-11b514b5609e','7d3e78a5-81a8-43bf-8bbe-607ac3ef1f6e',1),('56659954-d51e-4f9c-bac8-11b514b5609e','7e49c017-6d63-48f0-85cc-c56c9fecaae4',1),('56659954-d51e-4f9c-bac8-11b514b5609e','7e6131d8-e0c6-4bf9-adef-6fcd59bd4203',0),('56659954-d51e-4f9c-bac8-11b514b5609e','93137eff-efaf-4b80-8214-865ddd61b0d2',0),('56659954-d51e-4f9c-bac8-11b514b5609e','a691a30c-d2f6-4d01-b48a-6227eea3399c',1),('56659954-d51e-4f9c-bac8-11b514b5609e','d59b0321-5ebe-4882-baac-95aee56aade7',1);
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
INSERT INTO `keycloak_role` VALUES ('0694b7ac-fca2-4f04-8d5f-2a1517c9bc6c','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_impersonation}','impersonation','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('094faa75-e727-4b92-a8b4-8c0e3d5ea668','95b417a0-893d-4492-a197-618785908054',1,'${role_view-groups}','view-groups','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('0e210c5c-f334-4552-a2aa-29d79932beab','179041d9-6c43-48af-bf5a-18a8a21ce014',1,'${role_read-token}','read-token','56659954-d51e-4f9c-bac8-11b514b5609e','179041d9-6c43-48af-bf5a-18a8a21ce014',NULL),('1f87a131-8125-4ee1-aad8-d083cc499cf5','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-realm}','view-realm','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('2412e3c6-8db0-4f9b-b28c-b6fff8632cfe','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-clients}','view-clients','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('2a97fe28-a546-4898-8beb-eac810a1a50e','56659954-d51e-4f9c-bac8-11b514b5609e',0,'${role_default-roles}','default-roles-master','56659954-d51e-4f9c-bac8-11b514b5609e',NULL,NULL),('3874a386-7dee-4941-b80e-db222cb54f8b','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-users}','view-users','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('47fc8eb1-42dd-4474-928f-c7416d2f070b','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-identity-providers}','manage-identity-providers','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('4809c989-2585-4851-8ab3-6521e3e7688c','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-organizations}','manage-organizations','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('49a55b15-2c27-40f2-bf15-6ec5abe8462e','95b417a0-893d-4492-a197-618785908054',1,'${role_manage-account}','manage-account','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('5cdc1206-7952-4339-b738-37c7bc02cf4b','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-events}','manage-events','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('63a967e9-246a-4ec3-9b9b-74550f2bd193','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_query-realms}','query-realms','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('67fbbb64-8b35-4787-85d5-0f6b3c333316','95b417a0-893d-4492-a197-618785908054',1,'${role_manage-account-links}','manage-account-links','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('70586c64-de79-4cd6-a3ac-3e0bb8f37232','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-identity-providers}','view-identity-providers','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('83ed4078-cee7-4e76-b72e-b6005c713ef9','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-organizations}','view-organizations','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('8450be81-9d12-42de-85b7-f2f9bfb1e19d','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-authorization}','view-authorization','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('84605aed-8d14-4ff8-b3d7-280ae2fb1d20','56659954-d51e-4f9c-bac8-11b514b5609e',0,'${role_create-realm}','create-realm','56659954-d51e-4f9c-bac8-11b514b5609e',NULL,NULL),('8bec4dfb-4bfe-48c4-b83d-5cc9fb9a4af7','95b417a0-893d-4492-a197-618785908054',1,'${role_manage-consent}','manage-consent','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('9045030b-6813-49df-a052-d29400c5616f','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_create-client}','create-client','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('99c87ef9-a78f-44c3-a1e5-d62ce3747d13','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_view-events}','view-events','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('9a0fd7f9-5030-4d63-9539-bb1d36e66629','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-users}','manage-users','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('9a5424af-618d-4658-a04f-de9253405887','95b417a0-893d-4492-a197-618785908054',1,'${role_view-applications}','view-applications','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('9a82d1c8-232c-40ac-975e-46f6864ffb3a','56659954-d51e-4f9c-bac8-11b514b5609e',0,'${role_uma_authorization}','uma_authorization','56659954-d51e-4f9c-bac8-11b514b5609e',NULL,NULL),('9a923f62-deae-44f4-8d6d-4d5a31514384','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-authorization}','manage-authorization','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('9ac7dd8a-be78-4ae7-9fff-423ee2b88d5c','95b417a0-893d-4492-a197-618785908054',1,'${role_view-profile}','view-profile','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('a00b4ae8-9212-4f21-a4de-1992a4fb56ab','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-clients}','manage-clients','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('adf639d7-6212-4fc4-9fb3-02a9e99b9aa0','95b417a0-893d-4492-a197-618785908054',1,'${role_delete-account}','delete-account','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('b8ae2bf7-6626-4bed-bf56-604370fd8c2a','95b417a0-893d-4492-a197-618785908054',1,'${role_view-consent}','view-consent','56659954-d51e-4f9c-bac8-11b514b5609e','95b417a0-893d-4492-a197-618785908054',NULL),('bac8d68a-f210-4b50-8662-1423eb8fee60','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_manage-realm}','manage-realm','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('bca1606c-dbf8-4542-b36e-2593168c0d01','56659954-d51e-4f9c-bac8-11b514b5609e',0,'${role_admin}','admin','56659954-d51e-4f9c-bac8-11b514b5609e',NULL,NULL),('c0f7047a-82a8-416b-85b3-9f05325b0cac','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_query-users}','query-users','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('db1a8bdb-095d-4cba-807f-01893ee0c641','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_query-organizations}','query-organizations','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('db8e885e-7fc0-4329-8787-f9b2ba314786','56659954-d51e-4f9c-bac8-11b514b5609e',0,'${role_offline-access}','offline_access','56659954-d51e-4f9c-bac8-11b514b5609e',NULL,NULL),('dd45f736-922f-4604-aa17-5b5b37be992b','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_query-groups}','query-groups','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL),('f7ba3a29-6b26-46e5-81bf-02b219c6f831','c706b6bc-873b-41e4-a911-af030a779735',1,'${role_query-clients}','query-clients','56659954-d51e-4f9c-bac8-11b514b5609e','c706b6bc-873b-41e4-a911-af030a779735',NULL);
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
INSERT INTO `migration_model` VALUES ('hp9hb','26.7.0',1785115723);
UNLOCK TABLES;

--
-- Dumping data for table `offline_client_session`
--

LOCK TABLES `offline_client_session` WRITE;
INSERT INTO `offline_client_session` VALUES ('EV9DjqryTU6eLMHpciSnzxLm','83a73f92-4da4-4fc9-ba9c-cd10b73c9706','0',1785115732,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"83a73f92-4da4-4fc9-ba9c-cd10b73c9706\",\"userSessionStartedAt\":\"1785115732\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785115732\",\"level-of-authentication\":\"-1\"}}','local','local',0,'56659954-d51e-4f9c-bac8-11b514b5609e'),('G2yl99Wqxt3DoJigwF7UHMNM','83a73f92-4da4-4fc9-ba9c-cd10b73c9706','0',1785115730,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"83a73f92-4da4-4fc9-ba9c-cd10b73c9706\",\"userSessionStartedAt\":\"1785115730\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785115730\",\"level-of-authentication\":\"-1\"}}','local','local',0,'56659954-d51e-4f9c-bac8-11b514b5609e'),('suCBifa7AzxEljpXw7WYendq','83a73f92-4da4-4fc9-ba9c-cd10b73c9706','0',1785115733,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"83a73f92-4da4-4fc9-ba9c-cd10b73c9706\",\"userSessionStartedAt\":\"1785115733\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785115733\",\"level-of-authentication\":\"-1\"}}','local','local',0,'56659954-d51e-4f9c-bac8-11b514b5609e'),('wFoKAmGKMQCU0sk1cCgjMz4c','83a73f92-4da4-4fc9-ba9c-cd10b73c9706','0',1785115733,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"83a73f92-4da4-4fc9-ba9c-cd10b73c9706\",\"userSessionStartedAt\":\"1785115733\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785115733\",\"level-of-authentication\":\"-1\"}}','local','local',0,'56659954-d51e-4f9c-bac8-11b514b5609e'),('YH7WBcV_E3NU703aPDS8GzcX','83a73f92-4da4-4fc9-ba9c-cd10b73c9706','0',1785115728,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"83a73f92-4da4-4fc9-ba9c-cd10b73c9706\",\"userSessionStartedAt\":\"1785115728\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785115728\",\"level-of-authentication\":\"-1\"}}','local','local',0,'56659954-d51e-4f9c-bac8-11b514b5609e');
UNLOCK TABLES;

--
-- Dumping data for table `offline_user_session`
--

LOCK TABLES `offline_user_session` WRITE;
INSERT INTO `offline_user_session` VALUES ('EV9DjqryTU6eLMHpciSnzxLm','298d0922-8963-4a37-bd41-816a8e8d4ccf','56659954-d51e-4f9c-bac8-11b514b5609e',1785115732,'0','{\"ipAddress\":\"172.27.0.17\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjcuMC4xNyIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"97e41956-3f2b-4b2a-be8c-a7992e056391\\\":1785115732,\\\"43caafba-8ff8-425d-85da-6263f90d7064\\\":1785115732}\"},\"state\":\"LOGGED_IN\"}',1785115732,NULL,0,0),('G2yl99Wqxt3DoJigwF7UHMNM','298d0922-8963-4a37-bd41-816a8e8d4ccf','56659954-d51e-4f9c-bac8-11b514b5609e',1785115730,'0','{\"ipAddress\":\"172.27.0.17\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjcuMC4xNyIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"97e41956-3f2b-4b2a-be8c-a7992e056391\\\":1785115729,\\\"43caafba-8ff8-425d-85da-6263f90d7064\\\":1785115730}\"},\"state\":\"LOGGED_IN\"}',1785115730,NULL,0,0),('suCBifa7AzxEljpXw7WYendq','298d0922-8963-4a37-bd41-816a8e8d4ccf','56659954-d51e-4f9c-bac8-11b514b5609e',1785115733,'0','{\"ipAddress\":\"172.27.0.17\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjcuMC4xNyIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"97e41956-3f2b-4b2a-be8c-a7992e056391\\\":1785115733,\\\"43caafba-8ff8-425d-85da-6263f90d7064\\\":1785115733}\"},\"state\":\"LOGGED_IN\"}',1785115733,NULL,0,0),('wFoKAmGKMQCU0sk1cCgjMz4c','298d0922-8963-4a37-bd41-816a8e8d4ccf','56659954-d51e-4f9c-bac8-11b514b5609e',1785115733,'0','{\"ipAddress\":\"172.27.0.17\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjcuMC4xNyIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"97e41956-3f2b-4b2a-be8c-a7992e056391\\\":1785115733,\\\"43caafba-8ff8-425d-85da-6263f90d7064\\\":1785115733}\"},\"state\":\"LOGGED_IN\"}',1785115733,NULL,0,0),('YH7WBcV_E3NU703aPDS8GzcX','298d0922-8963-4a37-bd41-816a8e8d4ccf','56659954-d51e-4f9c-bac8-11b514b5609e',1785115728,'0','{\"ipAddress\":\"172.27.0.17\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMjcuMC4xNyIsIm9zIjoiT3RoZXIiLCJvc1ZlcnNpb24iOiJVbmtub3duIiwiYnJvd3NlciI6IlB5dGhvbiBSZXF1ZXN0cy8yLjM0IiwiZGV2aWNlIjoiT3RoZXIiLCJsYXN0QWNjZXNzIjowLCJtb2JpbGUiOmZhbHNlfQ==\",\"authenticators-completed\":\"{\\\"97e41956-3f2b-4b2a-be8c-a7992e056391\\\":1785115728,\\\"43caafba-8ff8-425d-85da-6263f90d7064\\\":1785115728}\"},\"state\":\"LOGGED_IN\"}',1785115728,NULL,0,0);
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
INSERT INTO `protocol_mapper` VALUES ('0236d8fd-434c-4024-a027-17cef0f8e171','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'d59b0321-5ebe-4882-baac-95aee56aade7'),('04659331-e06f-48bb-8fc9-5382fc3d26f3','audience-_platform','openid-connect','oidc-audience-mapper','95b417a0-893d-4492-a197-618785908054',NULL),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'d59b0321-5ebe-4882-baac-95aee56aade7'),('1afcaed6-f7a8-4b0a-b355-20122730180c','organization','openid-connect','oidc-organization-membership-mapper',NULL,'57e7b03d-0840-47ef-a490-332f5a005cbc'),('24c47a97-7b53-48a0-b908-33c6090c27b0','Client ID','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'6f05b268-e2f5-4831-971e-520f51742f9b'),('2da99bb6-5337-4a0e-97ee-b7995c0bcc52','organization','saml','saml-organization-membership-mapper',NULL,'3a4b25e4-cfbe-4f49-963a-a5127185e733'),('2eae108c-57e1-46cc-92d3-abbcce1452a5','audience-_platform','openid-connect','oidc-audience-mapper','4fb086db-f175-4a33-99a8-145b3ee867a1',NULL),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('3d6b202c-2868-4e7d-aaea-8dcc5b3e6162','audience-_platform','openid-connect','oidc-audience-mapper','399cfec0-79d6-4e0e-9fba-fdba706590b2',NULL),('4393943d-208a-4c66-a4bb-60f31d3261d7','address','openid-connect','oidc-address-mapper',NULL,'93137eff-efaf-4b80-8214-865ddd61b0d2'),('4964becb-f950-41ff-ae04-dc4a2952cab3','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'6f05b268-e2f5-4831-971e-520f51742f9b'),('4ae05c31-a615-4096-a224-3a3475602752','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'63474775-c911-4008-9220-c6d28555f1b5'),('5283b17b-f9f8-4c93-a78c-195060499291','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('5f9d5760-5c07-474f-b314-66f412fdaf35','acr loa level','openid-connect','oidc-acr-mapper',NULL,'7e49c017-6d63-48f0-85cc-c56c9fecaae4'),('64f2a57d-df2e-4ab5-93d2-38f80d8aebea','audience resolve','openid-connect','oidc-audience-resolve-mapper','b988b41c-ad1a-43f7-8a11-ef5b2d50cd75',NULL),('6885a0ea-3a15-49ab-87c3-2703723035f1','role list','saml','saml-role-list-mapper',NULL,'a691a30c-d2f6-4d01-b48a-6227eea3399c'),('6b4a97ed-69dc-40b3-baed-f357cfb6ea1d','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'63474775-c911-4008-9220-c6d28555f1b5'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3328bc84-a063-43a4-ae95-1017d93c5840'),('7dd78f3c-ad96-4ed0-86a7-0aeb39405c64','audience-_platform','openid-connect','oidc-audience-mapper','618b6de7-e576-459f-852f-b8d50ed57b84',NULL),('7ee30533-53f8-4620-9253-a1a541dc54b2','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'4041285c-d49b-440e-a884-e452f831ad33'),('8b4a6317-6dcb-4558-92fc-425d1182f23d','AuthnContextClassRef','saml','saml-authn-context-class-ref-mapper',NULL,'7d3e78a5-81a8-43bf-8bbe-607ac3ef1f6e'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('97e1bf27-2552-46a8-9b75-a89b355103d8','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','b53c8572-9481-4d78-980a-a36afc1497c0',NULL),('9eabb830-09b9-460d-b381-6effd3434010','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'1ee85805-0aae-4bf8-9338-dd0680ba98bb'),('9fe382da-575f-4424-9854-5ba05af07702','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('b330d28c-b965-4205-98d2-6f6ad5c88d84','sub','openid-connect','oidc-sub-mapper',NULL,'4041285c-d49b-440e-a884-e452f831ad33'),('b44f4944-290d-4754-9247-42e1bb48c609','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3328bc84-a063-43a4-ae95-1017d93c5840'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'7e6131d8-e0c6-4bf9-adef-6fcd59bd4203'),('ca6cc617-fb8c-42a1-988c-12b0b8d6c809','audience-_platform','openid-connect','oidc-audience-mapper','b988b41c-ad1a-43f7-8a11-ef5b2d50cd75',NULL),('cc38b590-6246-4df4-96a1-491167e4974b','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','b53c8572-9481-4d78-980a-a36afc1497c0',NULL),('d75f5f3f-4223-4218-b3e6-cca155e0913c','audience-_platform','openid-connect','oidc-audience-mapper','83a73f92-4da4-4fc9-ba9c-cd10b73c9706',NULL),('ebb4d7f0-38ae-453d-a6f8-ad5b2099d42f','full name','openid-connect','oidc-full-name-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('ef40454e-59e0-41df-a8d9-115257291331','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9'),('f4079535-021a-4f56-a7f9-598a54212f38','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'63474775-c911-4008-9220-c6d28555f1b5'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','b53c8572-9481-4d78-980a-a36afc1497c0',NULL),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','Client Host','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'6f05b268-e2f5-4831-971e-520f51742f9b'),('fd29f093-8e9d-484d-92ec-631e2015b854','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'7e6131d8-e0c6-4bf9-adef-6fcd59bd4203'),('fdb82790-a979-42c2-b284-7fd5108f2049','audience-_platform','openid-connect','oidc-audience-mapper','179041d9-6c43-48af-bf5a-18a8a21ce014',NULL),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','locale','openid-connect','oidc-usermodel-attribute-mapper','399cfec0-79d6-4e0e-9fba-fdba706590b2',NULL),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'0937cb81-e06c-45cd-a0da-74ce61c077b9');
UNLOCK TABLES;

--
-- Dumping data for table `protocol_mapper_config`
--

LOCK TABLES `protocol_mapper_config` WRITE;
INSERT INTO `protocol_mapper_config` VALUES ('0236d8fd-434c-4024-a027-17cef0f8e171','true','access.token.claim'),('0236d8fd-434c-4024-a027-17cef0f8e171','email_verified','claim.name'),('0236d8fd-434c-4024-a027-17cef0f8e171','true','id.token.claim'),('0236d8fd-434c-4024-a027-17cef0f8e171','true','introspection.token.claim'),('0236d8fd-434c-4024-a027-17cef0f8e171','boolean','jsonType.label'),('0236d8fd-434c-4024-a027-17cef0f8e171','emailVerified','user.attribute'),('0236d8fd-434c-4024-a027-17cef0f8e171','true','userinfo.token.claim'),('04659331-e06f-48bb-8fc9-5382fc3d26f3','true','access.token.claim'),('04659331-e06f-48bb-8fc9-5382fc3d26f3','false','id.token.claim'),('04659331-e06f-48bb-8fc9-5382fc3d26f3','_platform','included.client.audience'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','true','access.token.claim'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','updated_at','claim.name'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','true','id.token.claim'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','true','introspection.token.claim'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','long','jsonType.label'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','updatedAt','user.attribute'),('19bfb2e3-dbe5-4193-acf7-cc87bb17fcac','true','userinfo.token.claim'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','true','access.token.claim'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','email','claim.name'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','true','id.token.claim'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','true','introspection.token.claim'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','String','jsonType.label'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','email','user.attribute'),('1a7a5c0f-41ba-46ea-84ee-93d37194a953','true','userinfo.token.claim'),('1afcaed6-f7a8-4b0a-b355-20122730180c','true','access.token.claim'),('1afcaed6-f7a8-4b0a-b355-20122730180c','organization','claim.name'),('1afcaed6-f7a8-4b0a-b355-20122730180c','true','id.token.claim'),('1afcaed6-f7a8-4b0a-b355-20122730180c','true','introspection.token.claim'),('1afcaed6-f7a8-4b0a-b355-20122730180c','String','jsonType.label'),('1afcaed6-f7a8-4b0a-b355-20122730180c','true','multivalued'),('24c47a97-7b53-48a0-b908-33c6090c27b0','true','access.token.claim'),('24c47a97-7b53-48a0-b908-33c6090c27b0','client_id','claim.name'),('24c47a97-7b53-48a0-b908-33c6090c27b0','true','id.token.claim'),('24c47a97-7b53-48a0-b908-33c6090c27b0','true','introspection.token.claim'),('24c47a97-7b53-48a0-b908-33c6090c27b0','String','jsonType.label'),('24c47a97-7b53-48a0-b908-33c6090c27b0','client_id','user.session.note'),('2eae108c-57e1-46cc-92d3-abbcce1452a5','true','access.token.claim'),('2eae108c-57e1-46cc-92d3-abbcce1452a5','false','id.token.claim'),('2eae108c-57e1-46cc-92d3-abbcce1452a5','_platform','included.client.audience'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','true','access.token.claim'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','website','claim.name'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','true','id.token.claim'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','true','introspection.token.claim'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','String','jsonType.label'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','website','user.attribute'),('2fd9ccb4-54de-47ff-8f59-ea25e8f559a2','true','userinfo.token.claim'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','true','access.token.claim'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','picture','claim.name'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','true','id.token.claim'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','true','introspection.token.claim'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','String','jsonType.label'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','picture','user.attribute'),('341520b2-37bb-4729-afb0-a9e2577ae2c7','true','userinfo.token.claim'),('3d6b202c-2868-4e7d-aaea-8dcc5b3e6162','true','access.token.claim'),('3d6b202c-2868-4e7d-aaea-8dcc5b3e6162','false','id.token.claim'),('3d6b202c-2868-4e7d-aaea-8dcc5b3e6162','_platform','included.client.audience'),('4393943d-208a-4c66-a4bb-60f31d3261d7','true','access.token.claim'),('4393943d-208a-4c66-a4bb-60f31d3261d7','true','id.token.claim'),('4393943d-208a-4c66-a4bb-60f31d3261d7','true','introspection.token.claim'),('4393943d-208a-4c66-a4bb-60f31d3261d7','country','user.attribute.country'),('4393943d-208a-4c66-a4bb-60f31d3261d7','formatted','user.attribute.formatted'),('4393943d-208a-4c66-a4bb-60f31d3261d7','locality','user.attribute.locality'),('4393943d-208a-4c66-a4bb-60f31d3261d7','postal_code','user.attribute.postal_code'),('4393943d-208a-4c66-a4bb-60f31d3261d7','region','user.attribute.region'),('4393943d-208a-4c66-a4bb-60f31d3261d7','street','user.attribute.street'),('4393943d-208a-4c66-a4bb-60f31d3261d7','true','userinfo.token.claim'),('4964becb-f950-41ff-ae04-dc4a2952cab3','true','access.token.claim'),('4964becb-f950-41ff-ae04-dc4a2952cab3','clientAddress','claim.name'),('4964becb-f950-41ff-ae04-dc4a2952cab3','true','id.token.claim'),('4964becb-f950-41ff-ae04-dc4a2952cab3','true','introspection.token.claim'),('4964becb-f950-41ff-ae04-dc4a2952cab3','String','jsonType.label'),('4964becb-f950-41ff-ae04-dc4a2952cab3','clientAddress','user.session.note'),('4ae05c31-a615-4096-a224-3a3475602752','true','access.token.claim'),('4ae05c31-a615-4096-a224-3a3475602752','realm_access.roles','claim.name'),('4ae05c31-a615-4096-a224-3a3475602752','true','introspection.token.claim'),('4ae05c31-a615-4096-a224-3a3475602752','String','jsonType.label'),('4ae05c31-a615-4096-a224-3a3475602752','true','multivalued'),('4ae05c31-a615-4096-a224-3a3475602752','foo','user.attribute'),('5283b17b-f9f8-4c93-a78c-195060499291','true','access.token.claim'),('5283b17b-f9f8-4c93-a78c-195060499291','locale','claim.name'),('5283b17b-f9f8-4c93-a78c-195060499291','true','id.token.claim'),('5283b17b-f9f8-4c93-a78c-195060499291','true','introspection.token.claim'),('5283b17b-f9f8-4c93-a78c-195060499291','String','jsonType.label'),('5283b17b-f9f8-4c93-a78c-195060499291','locale','user.attribute'),('5283b17b-f9f8-4c93-a78c-195060499291','true','userinfo.token.claim'),('5f9d5760-5c07-474f-b314-66f412fdaf35','true','access.token.claim'),('5f9d5760-5c07-474f-b314-66f412fdaf35','true','id.token.claim'),('5f9d5760-5c07-474f-b314-66f412fdaf35','true','introspection.token.claim'),('6885a0ea-3a15-49ab-87c3-2703723035f1','Role','attribute.name'),('6885a0ea-3a15-49ab-87c3-2703723035f1','Basic','attribute.nameformat'),('6885a0ea-3a15-49ab-87c3-2703723035f1','false','single'),('6b4a97ed-69dc-40b3-baed-f357cfb6ea1d','true','access.token.claim'),('6b4a97ed-69dc-40b3-baed-f357cfb6ea1d','true','introspection.token.claim'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','true','access.token.claim'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','gender','claim.name'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','true','id.token.claim'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','true','introspection.token.claim'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','String','jsonType.label'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','gender','user.attribute'),('71af89a4-a3b1-48e7-91b8-096e325bfaef','true','userinfo.token.claim'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','true','access.token.claim'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','phone_number_verified','claim.name'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','true','id.token.claim'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','true','introspection.token.claim'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','boolean','jsonType.label'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','phoneNumberVerified','user.attribute'),('7512d956-c7ce-4e4d-9de1-a51a76fb030d','true','userinfo.token.claim'),('7dd78f3c-ad96-4ed0-86a7-0aeb39405c64','true','access.token.claim'),('7dd78f3c-ad96-4ed0-86a7-0aeb39405c64','false','id.token.claim'),('7dd78f3c-ad96-4ed0-86a7-0aeb39405c64','_platform','included.client.audience'),('7ee30533-53f8-4620-9253-a1a541dc54b2','true','access.token.claim'),('7ee30533-53f8-4620-9253-a1a541dc54b2','auth_time','claim.name'),('7ee30533-53f8-4620-9253-a1a541dc54b2','true','id.token.claim'),('7ee30533-53f8-4620-9253-a1a541dc54b2','true','introspection.token.claim'),('7ee30533-53f8-4620-9253-a1a541dc54b2','long','jsonType.label'),('7ee30533-53f8-4620-9253-a1a541dc54b2','AUTH_TIME','user.session.note'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','true','access.token.claim'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','middle_name','claim.name'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','true','id.token.claim'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','true','introspection.token.claim'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','String','jsonType.label'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','middleName','user.attribute'),('8c6a352a-bbcb-4dc9-ade5-af7760575e87','true','userinfo.token.claim'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','true','access.token.claim'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','given_name','claim.name'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','true','id.token.claim'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','true','introspection.token.claim'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','String','jsonType.label'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','firstName','user.attribute'),('8ea6d88e-5066-43d7-995e-8f1015baf9c6','true','userinfo.token.claim'),('97e1bf27-2552-46a8-9b75-a89b355103d8','true','access.token.claim'),('97e1bf27-2552-46a8-9b75-a89b355103d8','zoneinfo','claim.name'),('97e1bf27-2552-46a8-9b75-a89b355103d8','true','id.token.claim'),('97e1bf27-2552-46a8-9b75-a89b355103d8','true','introspection.token.claim'),('97e1bf27-2552-46a8-9b75-a89b355103d8','String','jsonType.label'),('97e1bf27-2552-46a8-9b75-a89b355103d8','zoneinfo','user.attribute'),('97e1bf27-2552-46a8-9b75-a89b355103d8','true','userinfo.token.claim'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','true','access.token.claim'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','clientId','claim.name'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','true','id.token.claim'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','String','jsonType.label'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','clientId','user.session.note'),('98dc56cb-bd13-46dd-8b4e-a4a4a4d70192','true','userinfo.token.claim'),('9eabb830-09b9-460d-b381-6effd3434010','true','access.token.claim'),('9eabb830-09b9-460d-b381-6effd3434010','true','introspection.token.claim'),('9fe382da-575f-4424-9854-5ba05af07702','true','access.token.claim'),('9fe382da-575f-4424-9854-5ba05af07702','profile','claim.name'),('9fe382da-575f-4424-9854-5ba05af07702','true','id.token.claim'),('9fe382da-575f-4424-9854-5ba05af07702','true','introspection.token.claim'),('9fe382da-575f-4424-9854-5ba05af07702','String','jsonType.label'),('9fe382da-575f-4424-9854-5ba05af07702','profile','user.attribute'),('9fe382da-575f-4424-9854-5ba05af07702','true','userinfo.token.claim'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','true','access.token.claim'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','preferred_username','claim.name'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','true','id.token.claim'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','true','introspection.token.claim'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','String','jsonType.label'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','username','user.attribute'),('a2e4f83a-9019-41ca-894b-2e0c2b27fe57','true','userinfo.token.claim'),('b330d28c-b965-4205-98d2-6f6ad5c88d84','true','access.token.claim'),('b330d28c-b965-4205-98d2-6f6ad5c88d84','true','introspection.token.claim'),('b44f4944-290d-4754-9247-42e1bb48c609','true','access.token.claim'),('b44f4944-290d-4754-9247-42e1bb48c609','phone_number','claim.name'),('b44f4944-290d-4754-9247-42e1bb48c609','true','id.token.claim'),('b44f4944-290d-4754-9247-42e1bb48c609','true','introspection.token.claim'),('b44f4944-290d-4754-9247-42e1bb48c609','String','jsonType.label'),('b44f4944-290d-4754-9247-42e1bb48c609','phoneNumber','user.attribute'),('b44f4944-290d-4754-9247-42e1bb48c609','true','userinfo.token.claim'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','true','access.token.claim'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','birthdate','claim.name'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','true','id.token.claim'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','true','introspection.token.claim'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','String','jsonType.label'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','birthdate','user.attribute'),('c3e6a3ac-81eb-4734-84e2-b610cd641eab','true','userinfo.token.claim'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','true','access.token.claim'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','upn','claim.name'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','true','id.token.claim'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','true','introspection.token.claim'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','String','jsonType.label'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','username','user.attribute'),('c8a8f32f-9d2e-4fc9-be80-42dfb3f91161','true','userinfo.token.claim'),('ca6cc617-fb8c-42a1-988c-12b0b8d6c809','true','access.token.claim'),('ca6cc617-fb8c-42a1-988c-12b0b8d6c809','false','id.token.claim'),('ca6cc617-fb8c-42a1-988c-12b0b8d6c809','_platform','included.client.audience'),('cc38b590-6246-4df4-96a1-491167e4974b','true','access.token.claim'),('cc38b590-6246-4df4-96a1-491167e4974b','clientHost','claim.name'),('cc38b590-6246-4df4-96a1-491167e4974b','true','id.token.claim'),('cc38b590-6246-4df4-96a1-491167e4974b','String','jsonType.label'),('cc38b590-6246-4df4-96a1-491167e4974b','clientHost','user.session.note'),('cc38b590-6246-4df4-96a1-491167e4974b','true','userinfo.token.claim'),('d75f5f3f-4223-4218-b3e6-cca155e0913c','true','access.token.claim'),('d75f5f3f-4223-4218-b3e6-cca155e0913c','false','id.token.claim'),('d75f5f3f-4223-4218-b3e6-cca155e0913c','_platform','included.client.audience'),('ebb4d7f0-38ae-453d-a6f8-ad5b2099d42f','true','access.token.claim'),('ebb4d7f0-38ae-453d-a6f8-ad5b2099d42f','true','id.token.claim'),('ebb4d7f0-38ae-453d-a6f8-ad5b2099d42f','true','introspection.token.claim'),('ebb4d7f0-38ae-453d-a6f8-ad5b2099d42f','true','userinfo.token.claim'),('ef40454e-59e0-41df-a8d9-115257291331','true','access.token.claim'),('ef40454e-59e0-41df-a8d9-115257291331','family_name','claim.name'),('ef40454e-59e0-41df-a8d9-115257291331','true','id.token.claim'),('ef40454e-59e0-41df-a8d9-115257291331','true','introspection.token.claim'),('ef40454e-59e0-41df-a8d9-115257291331','String','jsonType.label'),('ef40454e-59e0-41df-a8d9-115257291331','lastName','user.attribute'),('ef40454e-59e0-41df-a8d9-115257291331','true','userinfo.token.claim'),('f4079535-021a-4f56-a7f9-598a54212f38','true','access.token.claim'),('f4079535-021a-4f56-a7f9-598a54212f38','resource_access.${client_id}.roles','claim.name'),('f4079535-021a-4f56-a7f9-598a54212f38','true','introspection.token.claim'),('f4079535-021a-4f56-a7f9-598a54212f38','String','jsonType.label'),('f4079535-021a-4f56-a7f9-598a54212f38','true','multivalued'),('f4079535-021a-4f56-a7f9-598a54212f38','foo','user.attribute'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','true','access.token.claim'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','clientAddress','claim.name'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','true','id.token.claim'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','String','jsonType.label'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','clientAddress','user.session.note'),('f9215ec5-a613-4a4c-b81f-09004a3097a3','true','userinfo.token.claim'),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','true','access.token.claim'),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','clientHost','claim.name'),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','true','id.token.claim'),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','true','introspection.token.claim'),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','String','jsonType.label'),('f93a9f63-a9b7-44e3-ade6-7e6b151965da','clientHost','user.session.note'),('fd29f093-8e9d-484d-92ec-631e2015b854','true','access.token.claim'),('fd29f093-8e9d-484d-92ec-631e2015b854','groups','claim.name'),('fd29f093-8e9d-484d-92ec-631e2015b854','true','id.token.claim'),('fd29f093-8e9d-484d-92ec-631e2015b854','true','introspection.token.claim'),('fd29f093-8e9d-484d-92ec-631e2015b854','String','jsonType.label'),('fd29f093-8e9d-484d-92ec-631e2015b854','true','multivalued'),('fd29f093-8e9d-484d-92ec-631e2015b854','foo','user.attribute'),('fdb82790-a979-42c2-b284-7fd5108f2049','true','access.token.claim'),('fdb82790-a979-42c2-b284-7fd5108f2049','false','id.token.claim'),('fdb82790-a979-42c2-b284-7fd5108f2049','_platform','included.client.audience'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','true','access.token.claim'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','locale','claim.name'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','true','id.token.claim'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','true','introspection.token.claim'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','String','jsonType.label'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','locale','user.attribute'),('ffaa0a23-51d6-4f38-b651-bf20f1b48506','true','userinfo.token.claim'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','true','access.token.claim'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','nickname','claim.name'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','true','id.token.claim'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','true','introspection.token.claim'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','String','jsonType.label'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','nickname','user.attribute'),('ffbf77e0-86c1-48b7-a0b6-f44c7fa7fcb0','true','userinfo.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `realm`
--

LOCK TABLES `realm` WRITE;
INSERT INTO `realm` VALUES ('56659954-d51e-4f9c-bac8-11b514b5609e',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',86400,86400,0,0,'c706b6bc-873b-41e4-a911-af030a779735',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','e31ec6ea-8a72-4183-ae29-73fc179bab56','efd6fb53-2cd0-4844-9cdb-5a683fff9fee','a1464a10-af2d-4a75-a7c6-ec0ac2eccc2f','580b805e-a9a0-471b-ba38-3d8cba5caa0b','9e5c7ef1-00c1-40bd-982e-57511761197a',31536000,0,900,1,0,'c4088ea3-6154-4dc7-a2f7-58e7fed84701',0,0,0,0,'2a97fe28-a546-4898-8beb-eac810a1a50e','Keycloak');
UNLOCK TABLES;

--
-- Dumping data for table `realm_attribute`
--

LOCK TABLES `realm_attribute` WRITE;
INSERT INTO `realm_attribute` VALUES ('_browser_header.contentSecurityPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','56659954-d51e-4f9c-bac8-11b514b5609e',''),('_browser_header.referrerPolicy','56659954-d51e-4f9c-bac8-11b514b5609e','no-referrer'),('_browser_header.strictTransportSecurity','56659954-d51e-4f9c-bac8-11b514b5609e','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','56659954-d51e-4f9c-bac8-11b514b5609e','nosniff'),('_browser_header.xFrameOptions','56659954-d51e-4f9c-bac8-11b514b5609e','SAMEORIGIN'),('_browser_header.xRobotsTag','56659954-d51e-4f9c-bac8-11b514b5609e','none'),('bruteForceProtected','56659954-d51e-4f9c-bac8-11b514b5609e','false'),('bruteForceStrategy','56659954-d51e-4f9c-bac8-11b514b5609e','MULTIPLE'),('cibaAuthRequestedUserHint','56659954-d51e-4f9c-bac8-11b514b5609e','login_hint'),('cibaBackchannelTokenDeliveryMode','56659954-d51e-4f9c-bac8-11b514b5609e','poll'),('cibaExpiresIn','56659954-d51e-4f9c-bac8-11b514b5609e','120'),('cibaInterval','56659954-d51e-4f9c-bac8-11b514b5609e','5'),('defaultSignatureAlgorithm','56659954-d51e-4f9c-bac8-11b514b5609e','RS256'),('displayNameHtml','56659954-d51e-4f9c-bac8-11b514b5609e','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','56659954-d51e-4f9c-bac8-11b514b5609e','30'),('firstBrokerLoginFlowId','56659954-d51e-4f9c-bac8-11b514b5609e','32a2f19a-872c-4bf3-ba97-b5b68e8b404f'),('maxDeltaTimeSeconds','56659954-d51e-4f9c-bac8-11b514b5609e','43200'),('maxFailureWaitSeconds','56659954-d51e-4f9c-bac8-11b514b5609e','900'),('maxSecondaryAuthFailures','56659954-d51e-4f9c-bac8-11b514b5609e','0'),('maxTemporaryLockouts','56659954-d51e-4f9c-bac8-11b514b5609e','0'),('minimumQuickLoginWaitSeconds','56659954-d51e-4f9c-bac8-11b514b5609e','60'),('oauth2DeviceCodeLifespan','56659954-d51e-4f9c-bac8-11b514b5609e','600'),('oauth2DevicePollingInterval','56659954-d51e-4f9c-bac8-11b514b5609e','5'),('offlineSessionMaxLifespan','56659954-d51e-4f9c-bac8-11b514b5609e','31536000'),('offlineSessionMaxLifespanEnabled','56659954-d51e-4f9c-bac8-11b514b5609e','true'),('parRequestUriLifespan','56659954-d51e-4f9c-bac8-11b514b5609e','60'),('permanentLockout','56659954-d51e-4f9c-bac8-11b514b5609e','false'),('quickLoginCheckMilliSeconds','56659954-d51e-4f9c-bac8-11b514b5609e','1000'),('realmReusableOtpCode','56659954-d51e-4f9c-bac8-11b514b5609e','false'),('waitIncrementSeconds','56659954-d51e-4f9c-bac8-11b514b5609e','60');
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
INSERT INTO `realm_events_listeners` VALUES ('56659954-d51e-4f9c-bac8-11b514b5609e','jboss-logging');
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
INSERT INTO `realm_required_credential` VALUES ('password','password',1,1,'56659954-d51e-4f9c-bac8-11b514b5609e');
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
INSERT INTO `realm_supported_locales` VALUES ('56659954-d51e-4f9c-bac8-11b514b5609e','en'),('56659954-d51e-4f9c-bac8-11b514b5609e','ja');
UNLOCK TABLES;

--
-- Dumping data for table `redirect_uris`
--

LOCK TABLES `redirect_uris` WRITE;
INSERT INTO `redirect_uris` VALUES ('399cfec0-79d6-4e0e-9fba-fdba706590b2','/admin/master/console/*'),('618b6de7-e576-459f-852f-b8d50ed57b84','/*'),('95b417a0-893d-4492-a197-618785908054','/realms/master/account/*'),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','/realms/master/account/*');
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
INSERT INTO `required_action_provider` VALUES ('09ba5043-d48d-4d07-98ab-fb65d9293517','CONFIGURE_RECOVERY_AUTHN_CODES','Recovery Authentication Codes','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'CONFIGURE_RECOVERY_AUTHN_CODES',130),('13785250-7e77-450f-88e2-c4c7b38cd527','webauthn-register-passwordless','Webauthn Register Passwordless','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'webauthn-register-passwordless',90),('16eeb527-28f0-46e1-b727-570af761a551','VERIFY_EMAIL','Verify Email','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'VERIFY_EMAIL',50),('1b6eeb68-f9b7-4c0a-a544-86c8dcc62ba5','UPDATE_EMAIL','Update Email','56659954-d51e-4f9c-bac8-11b514b5609e',0,0,'UPDATE_EMAIL',70),('36641b17-dd6b-4696-a8f1-7c0030305d9f','delete_credential','Delete Credential','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'delete_credential',110),('533f595f-1a9c-46eb-9127-dac31469d038','VERIFY_PROFILE','Verify Profile','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'VERIFY_PROFILE',100),('5f9b6132-3f6c-4593-b37a-271ca24f5b6d','delete_account','Delete Account','56659954-d51e-4f9c-bac8-11b514b5609e',0,0,'delete_account',60),('6169ffc4-8d6a-4bbb-b434-cf309f928dff','webauthn-register','Webauthn Register','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'webauthn-register',80),('7111799d-b079-4898-855e-cae21783d572','UPDATE_PROFILE','Update Profile','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'UPDATE_PROFILE',40),('9f537895-8b9d-4c79-9a3a-340fd0e21534','update_user_locale','Update User Locale','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'update_user_locale',1000),('c1751943-a88a-483f-a0f5-c13c69532237','idp_link','Linking Identity Provider','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'idp_link',120),('cedc4cfc-3560-4800-801f-9558fe4a0e44','UPDATE_PASSWORD','Update Password','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'UPDATE_PASSWORD',57),('d430e3d0-9cdd-4487-acc3-e56474d18d54','CONFIGURE_TOTP','Configure OTP','56659954-d51e-4f9c-bac8-11b514b5609e',1,0,'CONFIGURE_TOTP',54),('e7420ccc-f4f2-4e65-8016-7571eba99282','TERMS_AND_CONDITIONS','Terms and Conditions','56659954-d51e-4f9c-bac8-11b514b5609e',0,0,'TERMS_AND_CONDITIONS',20);
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
INSERT INTO `scope_mapping` VALUES ('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','094faa75-e727-4b92-a8b4-8c0e3d5ea668'),('b988b41c-ad1a-43f7-8a11-ef5b2d50cd75','49a55b15-2c27-40f2-bf15-6ec5abe8462e');
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
INSERT INTO `user_attribute` VALUES ('is_temporary_admin','true','298d0922-8963-4a37-bd41-816a8e8d4ccf','5614965c-6157-4916-b1cc-695784c60b88',NULL,NULL,NULL);
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
INSERT INTO `user_entity` VALUES ('15a28843-5b76-4676-8d42-2c6a57305526',NULL,'d069f718-1376-4879-b7eb-bcdf27a4e4a0',0,1,NULL,NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','service-account-_platform',1785115730478,'b53c8572-9481-4d78-980a-a36afc1497c0',0,1785115730478),('298d0922-8963-4a37-bd41-816a8e8d4ccf',NULL,'085cfdeb-9f5d-411b-95c5-dd03446baeb0',0,1,NULL,NULL,NULL,'56659954-d51e-4f9c-bac8-11b514b5609e','admin',1785115726249,NULL,0,1785115726249);
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
INSERT INTO `user_role_mapping` VALUES ('2a97fe28-a546-4898-8beb-eac810a1a50e','15a28843-5b76-4676-8d42-2c6a57305526'),('2a97fe28-a546-4898-8beb-eac810a1a50e','298d0922-8963-4a37-bd41-816a8e8d4ccf'),('bca1606c-dbf8-4542-b36e-2593168c0d01','15a28843-5b76-4676-8d42-2c6a57305526'),('bca1606c-dbf8-4542-b36e-2593168c0d01','298d0922-8963-4a37-bd41-816a8e8d4ccf');
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
INSERT INTO `web_origins` VALUES ('399cfec0-79d6-4e0e-9fba-fdba706590b2','+');
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
INSERT INTO `m_system_config` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2026-07-27 10:28:59','dummy','2026-07-27 10:28:59','dummy'),('ita.system.menu_export_import.buffer_size','10000','Maximum buffer size of menu Export/import for System default (Used for DB fetch size, file stream read size)','2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2026-07-27 10:28:51','dummy','2026-07-27 10:28:51','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `t_maintenance_mode`
--

LOCK TABLES `t_maintenance_mode` WRITE;
INSERT INTO `t_maintenance_mode` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2026-07-27 10:28:51.000000',NULL),('2','DATA_UPDATE_STOP','0','2026-07-27 10:28:51.000000',NULL);
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
INSERT INTO `t_plan` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2026-07-27 10:28:49','system','2026-07-27 10:28:49','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_plan_item`
--

LOCK TABLES `t_plan_item` WRITE;
INSERT INTO `t_plan_item` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('ita.organization.common.maintenance_records_limit','{\"description\": \"Maximum number of maintenance records processing for organization default\", \"max\": 100000}','2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('ita.organization.common.upload_file_size_limit','{\"description\": \"Maximum byte size of upload file for organization default\", \"max\": 107374182400}','2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('ita.organization.menu_export_import.buffer_size','{\"description\": \"Maximum buffer size of menu Export/import for Organization default (Used for DB fetch size, file stream read size)\", \"max\": 10000}','2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2026-07-27 10:28:49','system','2026-07-27 10:28:51','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2026-07-27 10:28:49','system','2026-07-27 10:28:51','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2026-07-27 10:28:49','system','2026-07-27 10:28:51','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_plan_limit`
--

LOCK TABLES `t_plan_limit` WRITE;
INSERT INTO `t_plan_limit` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('_default','ita.organization.common.maintenance_records_limit',10000,'2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('_default','ita.organization.common.upload_file_size_limit',104857600,'2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('_default','ita.organization.menu_export_import.buffer_size',1000,'2026-07-27 10:29:00','dummy','2026-07-27 10:29:00','dummy'),('_default','platform.roles',1000,'2026-07-27 10:28:49','system','2026-07-27 10:28:49','system'),('_default','platform.users',10000,'2026-07-27 10:28:49','system','2026-07-27 10:28:49','system'),('_default','platform.workspaces',100,'2026-07-27 10:28:49','system','2026-07-27 10:28:49','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_migration_history`
--

LOCK TABLES `t_platform_migration_history` WRITE;
INSERT INTO `t_platform_migration_history` VALUES (1,'1.3.0','START',NULL,'2026-07-27 10:28:49','2.9.0','2026-07-27 10:28:49','2.9.0'),(2,'1.3.0','SUCCEED',NULL,'2026-07-27 10:28:50','2.9.0','2026-07-27 10:28:50','2.9.0'),(3,'1.5.0','START',NULL,'2026-07-27 10:28:50','2.9.0','2026-07-27 10:28:50','2.9.0'),(4,'1.5.0','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(5,'1.5.2','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(6,'1.5.2','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(7,'1.6.0','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(8,'1.6.0','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(9,'1.7.0','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(10,'1.7.0','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(11,'1.8.0','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(12,'1.8.0','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(13,'1.8.1','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(14,'1.8.1','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(15,'1.8.100','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(16,'1.8.100','SUCCEED',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(17,'1.9.0','START',NULL,'2026-07-27 10:28:51','2.9.0','2026-07-27 10:28:51','2.9.0'),(18,'1.9.0','SUCCEED',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(19,'1.10.0','START',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(20,'1.10.0','SUCCEED',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(21,'1.11.0','START',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(22,'1.11.0','SUCCEED',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(23,'1.12.0','START',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(24,'1.12.0','SUCCEED',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(25,'2.9.0','START',NULL,'2026-07-27 10:28:52','2.9.0','2026-07-27 10:28:52','2.9.0'),(26,'2.9.0','SUCCEED',NULL,'2026-07-27 10:28:53','2.9.0','2026-07-27 10:28:53','2.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_private`
--

LOCK TABLES `t_platform_private` WRITE;
INSERT INTO `t_platform_private` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"b53c8572-9481-4d78-980a-a36afc1497c0\", \"TOKEN_CHECK_CLIENT_SECRET\": \"OGsk5oWCzxjD3dH0IydhX0M87x5u7bzQJ3eabTW6lM2Y3LChMW6ZqCwYA4naVrF2IndC4OOzt3oiLGC7L54DuO\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"4fb086db-f175-4a33-99a8-145b3ee867a1\"}','2026-07-27 10:28:50','system','2026-07-27 10:28:50','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_version`
--

LOCK TABLES `t_platform_version` WRITE;
INSERT INTO `t_platform_version` VALUES (1,'2.9.0','2026-07-27 10:27:55','system','2026-07-27 10:28:53','2.9.0');
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

-- Dump completed on 2026-07-27 10:45:33
SET foreign_key_checks = 1;
