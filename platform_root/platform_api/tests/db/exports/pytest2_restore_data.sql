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
INSERT INTO `authentication_execution` VALUES ('0a16deb0-de06-4a1e-8faa-ccf58e3a8688',NULL,'registration-password-action','a7863055-f04b-47fe-b68e-4075e5d50b12','f0aad4f2-cc8b-497c-b959-5b0c92ddf4a9',0,50,0,NULL,NULL),('0a902468-4b83-45a6-a05e-0173a8b53fbe',NULL,'auth-spnego','a7863055-f04b-47fe-b68e-4075e5d50b12','552429b4-4b5e-4e4d-85ce-6497bd750f26',3,20,0,NULL,NULL),('135d8654-ebe3-4f6c-a0d2-7c040a60a096',NULL,'reset-credential-email','a7863055-f04b-47fe-b68e-4075e5d50b12','4f1f1aa4-d0c0-49c0-9ed4-d983721d8384',0,20,0,NULL,NULL),('14f197b4-f17f-43c6-a892-9b84b33c70eb',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','e765a15e-85fe-47e3-ba7a-0e5c091d76e7',0,20,1,'b5ccb018-f1e0-43e4-84d0-c6d67f9b6e82',NULL),('16bb2581-b634-4c0c-973b-223cd8fd7c28',NULL,'client-x509','a7863055-f04b-47fe-b68e-4075e5d50b12','1d944405-a9fa-40a3-abb9-0c547065c701',2,40,0,NULL,NULL),('17ad7733-7b15-40d2-b03e-4d48051abcfb',NULL,'webauthn-authenticator','a7863055-f04b-47fe-b68e-4075e5d50b12','d2691126-08bf-4db4-a515-fe7c2bf46129',3,40,0,NULL,NULL),('1df33e75-96d4-4de8-94e0-cde678622cea',NULL,'conditional-user-configured','a7863055-f04b-47fe-b68e-4075e5d50b12','4094934d-b133-4ea1-b974-113484eae50e',0,10,0,NULL,NULL),('203d2afd-a089-4c94-8271-9838a3ac6120',NULL,'conditional-user-configured','a7863055-f04b-47fe-b68e-4075e5d50b12','cc8846bc-9212-487f-bb5b-8a92fad96354',0,10,0,NULL,NULL),('212f92c7-2de7-4a82-bd2a-79410e0d975f',NULL,'auth-recovery-authn-code-form','a7863055-f04b-47fe-b68e-4075e5d50b12','d2691126-08bf-4db4-a515-fe7c2bf46129',3,50,0,NULL,NULL),('227276b2-83e8-4cd0-9389-abbbaa2467b7',NULL,'direct-grant-validate-otp','a7863055-f04b-47fe-b68e-4075e5d50b12','1afa7dd8-e329-48b3-8766-31ad17cd41b8',0,20,0,NULL,NULL),('2b31abe7-6d8b-4e79-9072-acc4a4181d0f',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','fa25d70d-e448-48a9-9b69-2522923417a2',1,30,1,'1afa7dd8-e329-48b3-8766-31ad17cd41b8',NULL),('30a31d04-0e6e-410d-b01e-1ddc67b13be7',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','0a37772d-79fb-480a-9148-0d45d30487e8',0,20,1,'1937376a-d190-462e-bf47-b38e776a2385',NULL),('31904b95-bf34-412d-a26f-aa29c5aa7ec3',NULL,'idp-create-user-if-unique','a7863055-f04b-47fe-b68e-4075e5d50b12','1937376a-d190-462e-bf47-b38e776a2385',2,10,0,NULL,'ddc50d87-a6b0-46bf-a5a9-41b539a186d3'),('33d8bd91-caed-4f48-9d02-1d8a5b650335',NULL,'http-basic-authenticator','a7863055-f04b-47fe-b68e-4075e5d50b12','00b4e1eb-2ad8-4293-ab79-a0fcee07991e',0,10,0,NULL,NULL),('348b38bf-e0c2-4af6-964f-ece2aba8f97c',NULL,'auth-recovery-authn-code-form','a7863055-f04b-47fe-b68e-4075e5d50b12','4094934d-b133-4ea1-b974-113484eae50e',3,50,0,NULL,NULL),('3ce5eba4-c2b3-4d49-b313-1aec9ee21cd5',NULL,'reset-otp','a7863055-f04b-47fe-b68e-4075e5d50b12','cc8846bc-9212-487f-bb5b-8a92fad96354',0,20,0,NULL,NULL),('3dfd60b9-d3d2-4b7c-a92d-4221ba6a6b72',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','552429b4-4b5e-4e4d-85ce-6497bd750f26',2,30,1,'ac9522c8-6c39-4d0e-bd43-39d7eb474bff',NULL),('4316a39b-1c4d-414f-9d2c-72e3b63c94a9',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','4f1f1aa4-d0c0-49c0-9ed4-d983721d8384',1,40,1,'cc8846bc-9212-487f-bb5b-8a92fad96354',NULL),('45c63dd2-fbb6-41c3-955e-ed33897531aa',NULL,'docker-http-basic-authenticator','a7863055-f04b-47fe-b68e-4075e5d50b12','760eef92-4719-42fd-b695-3a4bcf153e41',0,10,0,NULL,NULL),('48909b37-c46c-4e22-9749-4f2931aa905e',NULL,'direct-grant-validate-username','a7863055-f04b-47fe-b68e-4075e5d50b12','fa25d70d-e448-48a9-9b69-2522923417a2',0,10,0,NULL,NULL),('4ff21554-741a-4170-8b55-e92aa1585b26',NULL,'client-secret','a7863055-f04b-47fe-b68e-4075e5d50b12','1d944405-a9fa-40a3-abb9-0c547065c701',2,10,0,NULL,NULL),('5410a4fb-e6a5-4100-870b-b82e1b6dfc2f',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','2c26f547-9bd4-42ea-bb3c-d1861464d945',1,20,1,'d2691126-08bf-4db4-a515-fe7c2bf46129',NULL),('5afffe91-4fa7-4938-86e7-6a8f95404456',NULL,'registration-recaptcha-action','a7863055-f04b-47fe-b68e-4075e5d50b12','f0aad4f2-cc8b-497c-b959-5b0c92ddf4a9',3,60,0,NULL,NULL),('6017c752-86e7-4110-89ba-cc9cf9a4d2f0',NULL,'client-jwt','a7863055-f04b-47fe-b68e-4075e5d50b12','1d944405-a9fa-40a3-abb9-0c547065c701',2,20,0,NULL,NULL),('60a8b4c8-cbc6-4cdb-9442-c49b1c4f5225',NULL,'reset-credentials-choose-user','a7863055-f04b-47fe-b68e-4075e5d50b12','4f1f1aa4-d0c0-49c0-9ed4-d983721d8384',0,10,0,NULL,NULL),('771fd8df-1395-4d37-99fa-c7ff2e61300d',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','ac9522c8-6c39-4d0e-bd43-39d7eb474bff',1,20,1,'4094934d-b133-4ea1-b974-113484eae50e',NULL),('772c7fb7-679d-48ad-a059-fb3f855cfb3e',NULL,'client-secret-jwt','a7863055-f04b-47fe-b68e-4075e5d50b12','1d944405-a9fa-40a3-abb9-0c547065c701',2,30,0,NULL,NULL),('7d5c4d7b-7dbe-4193-b392-fca1ee1215a0',NULL,'webauthn-authenticator','a7863055-f04b-47fe-b68e-4075e5d50b12','4094934d-b133-4ea1-b974-113484eae50e',3,40,0,NULL,NULL),('8ed873aa-117c-4001-af58-9577ac58ac74',NULL,'conditional-user-configured','a7863055-f04b-47fe-b68e-4075e5d50b12','1afa7dd8-e329-48b3-8766-31ad17cd41b8',0,10,0,NULL,NULL),('93c8cff4-fb72-4414-9194-58ab07c148a8',NULL,'conditional-user-configured','a7863055-f04b-47fe-b68e-4075e5d50b12','d2691126-08bf-4db4-a515-fe7c2bf46129',0,10,0,NULL,NULL),('94c090ef-6b88-426b-981b-12958909b160',NULL,'auth-otp-form','a7863055-f04b-47fe-b68e-4075e5d50b12','d2691126-08bf-4db4-a515-fe7c2bf46129',2,30,0,NULL,NULL),('982dd2a9-c75c-4417-865d-c3911aab3aae',NULL,'idp-confirm-link','a7863055-f04b-47fe-b68e-4075e5d50b12','e765a15e-85fe-47e3-ba7a-0e5c091d76e7',0,10,0,NULL,NULL),('9aad3cbe-7050-47ce-8fc2-3ab9d8d2cf43',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','b5ccb018-f1e0-43e4-84d0-c6d67f9b6e82',2,20,1,'2c26f547-9bd4-42ea-bb3c-d1861464d945',NULL),('9b1253d4-df67-4fb8-8f7d-f7a7a18802c2',NULL,'auth-username-password-form','a7863055-f04b-47fe-b68e-4075e5d50b12','ac9522c8-6c39-4d0e-bd43-39d7eb474bff',0,10,0,NULL,NULL),('9bc5cd67-d30a-462e-860f-12748593047b',NULL,'direct-grant-validate-password','a7863055-f04b-47fe-b68e-4075e5d50b12','fa25d70d-e448-48a9-9b69-2522923417a2',0,20,0,NULL,NULL),('9f75eef3-e034-4020-92f6-5bf177d3465a',NULL,'reset-password','a7863055-f04b-47fe-b68e-4075e5d50b12','4f1f1aa4-d0c0-49c0-9ed4-d983721d8384',0,30,0,NULL,NULL),('aaaa7a42-7319-405c-a1aa-a5cfa2292c04',NULL,'conditional-credential','a7863055-f04b-47fe-b68e-4075e5d50b12','4094934d-b133-4ea1-b974-113484eae50e',0,20,0,NULL,'77f174be-a2c3-41dc-b5b8-70b61a07d737'),('b0b3bc40-921e-42e0-a841-65ff0b5f27a9',NULL,'idp-review-profile','a7863055-f04b-47fe-b68e-4075e5d50b12','0a37772d-79fb-480a-9148-0d45d30487e8',0,10,0,NULL,'a3b73055-7211-4a5c-9b6a-91bb98346e41'),('b1caac30-5e5c-4f4e-a4f7-6282e068ca68',NULL,'idp-username-password-form','a7863055-f04b-47fe-b68e-4075e5d50b12','2c26f547-9bd4-42ea-bb3c-d1861464d945',0,10,0,NULL,NULL),('b3b765b2-09e2-42f8-b723-b2783df5ddc0',NULL,'idp-email-verification','a7863055-f04b-47fe-b68e-4075e5d50b12','b5ccb018-f1e0-43e4-84d0-c6d67f9b6e82',2,10,0,NULL,NULL),('c24b0069-070b-4ac1-86d8-df64eb5a6ad8',NULL,'registration-terms-and-conditions','a7863055-f04b-47fe-b68e-4075e5d50b12','f0aad4f2-cc8b-497c-b959-5b0c92ddf4a9',3,70,0,NULL,NULL),('c546e57a-c17a-4bd5-b86e-67b7886ebd38',NULL,'auth-cookie','a7863055-f04b-47fe-b68e-4075e5d50b12','552429b4-4b5e-4e4d-85ce-6497bd750f26',2,10,0,NULL,NULL),('c7fce881-0ed7-4fd7-95de-4ec8a122d9f7',NULL,'federated-jwt','a7863055-f04b-47fe-b68e-4075e5d50b12','1d944405-a9fa-40a3-abb9-0c547065c701',2,50,0,NULL,NULL),('d072923a-d986-4d99-8db1-e5967ca49a63',NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','1937376a-d190-462e-bf47-b38e776a2385',2,20,1,'e765a15e-85fe-47e3-ba7a-0e5c091d76e7',NULL),('d7f653b9-5bab-4bcf-aac4-2143855d502d',NULL,'conditional-credential','a7863055-f04b-47fe-b68e-4075e5d50b12','d2691126-08bf-4db4-a515-fe7c2bf46129',0,20,0,NULL,'437f59ea-6155-47b9-8ea2-5fd946b99ec0'),('e531d609-d18d-4f6c-ae8f-fe7597cf43cd',NULL,'registration-page-form','a7863055-f04b-47fe-b68e-4075e5d50b12','5492b807-19ac-4322-9e0f-b0b90a8ba537',0,10,1,'f0aad4f2-cc8b-497c-b959-5b0c92ddf4a9',NULL),('e569b13b-ecc7-4991-bbc8-b4b7de85f198',NULL,'identity-provider-redirector','a7863055-f04b-47fe-b68e-4075e5d50b12','552429b4-4b5e-4e4d-85ce-6497bd750f26',2,25,0,NULL,NULL),('f390d576-ea59-4fff-82ff-4b2dbb112066',NULL,'registration-user-creation','a7863055-f04b-47fe-b68e-4075e5d50b12','f0aad4f2-cc8b-497c-b959-5b0c92ddf4a9',0,20,0,NULL,NULL),('fb6b89fb-23d7-4bb1-9ccb-46efce2758dd',NULL,'auth-otp-form','a7863055-f04b-47fe-b68e-4075e5d50b12','4094934d-b133-4ea1-b974-113484eae50e',2,30,0,NULL,NULL);
UNLOCK TABLES;

--
-- Dumping data for table `authentication_flow`
--

LOCK TABLES `authentication_flow` WRITE;
INSERT INTO `authentication_flow` VALUES ('00b4e1eb-2ad8-4293-ab79-a0fcee07991e','saml ecp','SAML ECP Profile Authentication Flow','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1),('0a37772d-79fb-480a-9148-0d45d30487e8','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1),('1937376a-d190-462e-bf47-b38e776a2385','User creation or linking','Flow for the existing/non-existing user alternatives','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('1afa7dd8-e329-48b3-8766-31ad17cd41b8','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('1d944405-a9fa-40a3-abb9-0c547065c701','clients','Base authentication for clients','a7863055-f04b-47fe-b68e-4075e5d50b12','client-flow',1,1),('2c26f547-9bd4-42ea-bb3c-d1861464d945','Verify Existing Account by Re-authentication','Reauthentication of existing account','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('4094934d-b133-4ea1-b974-113484eae50e','Browser - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('4f1f1aa4-d0c0-49c0-9ed4-d983721d8384','reset credentials','Reset credentials for a user if they forgot their password or something','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1),('5492b807-19ac-4322-9e0f-b0b90a8ba537','registration','Registration flow','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1),('552429b4-4b5e-4e4d-85ce-6497bd750f26','browser','Browser based authentication','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1),('760eef92-4719-42fd-b695-3a4bcf153e41','docker auth','Used by Docker clients to authenticate against the IDP','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1),('ac9522c8-6c39-4d0e-bd43-39d7eb474bff','forms','Username, password, otp and other auth forms.','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('b5ccb018-f1e0-43e4-84d0-c6d67f9b6e82','Account verification options','Method with which to verify the existing account','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('cc8846bc-9212-487f-bb5b-8a92fad96354','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('d2691126-08bf-4db4-a515-fe7c2bf46129','First broker login - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('e765a15e-85fe-47e3-ba7a-0e5c091d76e7','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',0,1),('f0aad4f2-cc8b-497c-b959-5b0c92ddf4a9','registration form','Registration form','a7863055-f04b-47fe-b68e-4075e5d50b12','form-flow',0,1),('fa25d70d-e448-48a9-9b69-2522923417a2','direct grant','OpenID Connect Resource Owner Grant','a7863055-f04b-47fe-b68e-4075e5d50b12','basic-flow',1,1);
UNLOCK TABLES;

--
-- Dumping data for table `authenticator_config`
--

LOCK TABLES `authenticator_config` WRITE;
INSERT INTO `authenticator_config` VALUES ('437f59ea-6155-47b9-8ea2-5fd946b99ec0','first-broker-login-conditional-credential','a7863055-f04b-47fe-b68e-4075e5d50b12'),('77f174be-a2c3-41dc-b5b8-70b61a07d737','browser-conditional-credential','a7863055-f04b-47fe-b68e-4075e5d50b12'),('a3b73055-7211-4a5c-9b6a-91bb98346e41','review profile config','a7863055-f04b-47fe-b68e-4075e5d50b12'),('ddc50d87-a6b0-46bf-a5a9-41b539a186d3','create unique user config','a7863055-f04b-47fe-b68e-4075e5d50b12');
UNLOCK TABLES;

--
-- Dumping data for table `authenticator_config_entry`
--

LOCK TABLES `authenticator_config_entry` WRITE;
INSERT INTO `authenticator_config_entry` VALUES ('437f59ea-6155-47b9-8ea2-5fd946b99ec0','webauthn-passwordless','credentials'),('77f174be-a2c3-41dc-b5b8-70b61a07d737','webauthn-passwordless','credentials'),('a3b73055-7211-4a5c-9b6a-91bb98346e41','missing','update.profile.on.first.login'),('ddc50d87-a6b0-46bf-a5a9-41b539a186d3','false','require.password.update.after.registration');
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
INSERT INTO `client` VALUES ('0cf3924f-847d-4a6e-b01f-848f9c2bdf15',1,1,'_platform',0,0,'xJJ3cvvZKTtQB4jkrygiERndj7R9YcGrQWRL1KTbHMekFhEZO4bYHswugiRc4i3fT8LU3G63RnqJ8yLGVu4fU8',NULL,0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',-1,0,0,NULL,1,'client-secret',NULL,NULL,NULL,0,0,1,0,1785417063186,1785417063264),('41a9f940-60b5-4cf0-9989-2e39b8433bf4',1,0,'_platform-console',0,1,'I9U8nZpPvfCcWZUdGijkQ0490v3SNXl7vXnzMHUxMyLGWWt3mva0YioKpff8xzRkUaBfOWH6wQ1qoijEkir8HE',NULL,0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,1,0,1,0,1785417064181,1785417064276),('458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1785417052556,1785417052597),('5ccb92c0-f629-433d-bf1d-52a65ca09678',1,1,'admin-cli',0,1,NULL,NULL,0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0,1785417052815,1785417052834),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1785417052740,1785417052766),('9dff260d-226b-4d33-af0f-5a0903b2a89b',1,1,'_platform-api',0,1,NULL,NULL,0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',-1,0,0,NULL,0,'client-secret',NULL,NULL,NULL,0,0,1,0,1785417063443,1785417063463),('bf161c8b-98e2-4223-96e2-bbe92252ef89',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1785417052317,1785417052325),('c719dac6-f61c-44c5-a0c8-1743f753b115',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1785417052677,1785417052700),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755',1,1,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'a7863055-f04b-47fe-b68e-4075e5d50b12','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0,1785417052774,1785417052798);
UNLOCK TABLES;

--
-- Dumping data for table `client_attributes`
--

LOCK TABLES `client_attributes` WRITE;
INSERT INTO `client_attributes` VALUES ('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','backchannel.logout.revoke.offline.tokens','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','backchannel.logout.session.required','true'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','client_credentials.use_refresh_token','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','client.secret.creation.time','1785417063'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','display.on.consent.screen','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','exclude.session.state.from.auth.response','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','id.token.as.detached.signature','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','oauth2.device.authorization.grant.enabled','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','oidc.ciba.grant.enabled','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','require.pushed.authorization.requests','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml_force_name_id_format','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.artifact.binding','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.assertion.signature','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.authnstatement','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.client.signature','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.encrypt','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.force.post.binding','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.multivalued.roles','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.onetimeuse.condition','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.server.signature','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','saml.server.signature.keyinfo.ext','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','tls.client.certificate.bound.access.tokens','false'),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','use.refresh.tokens','true'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','backchannel.logout.revoke.offline.tokens','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','backchannel.logout.session.required','true'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','client_credentials.use_refresh_token','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','client.secret.creation.time','1785417064'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','display.on.consent.screen','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','exclude.session.state.from.auth.response','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','id.token.as.detached.signature','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','oauth2.device.authorization.grant.enabled','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','oidc.ciba.grant.enabled','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','post.logout.redirect.uris','/*'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','require.pushed.authorization.requests','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml_force_name_id_format','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.artifact.binding','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.assertion.signature','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.authnstatement','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.client.signature','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.encrypt','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.force.post.binding','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.multivalued.roles','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.onetimeuse.condition','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.server.signature','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','saml.server.signature.keyinfo.ext','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','tls.client.certificate.bound.access.tokens','false'),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','use.refresh.tokens','true'),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','post.logout.redirect.uris','+'),('5ccb92c0-f629-433d-bf1d-52a65ca09678','client.use.lightweight.access.token.enabled','true'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','access.token.lifespan','86400'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','acr.loa.map','{}'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','backchannel.logout.revoke.offline.tokens','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','backchannel.logout.session.required','true'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','client_credentials.use_refresh_token','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','client.session.idle.timeout','86400'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','client.session.max.lifespan','86400'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','display.on.consent.screen','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','exclude.session.state.from.auth.response','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','frontchannel.logout.session.required','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','id.token.as.detached.signature','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','oauth2.device.authorization.grant.enabled','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','oidc.ciba.grant.enabled','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','require.pushed.authorization.requests','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml_force_name_id_format','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.allow.ecp.flow','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.artifact.binding','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.assertion.signature','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.authnstatement','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.client.signature','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.encrypt','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.force.post.binding','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.multivalued.roles','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.onetimeuse.condition','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.server.signature','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','saml.server.signature.keyinfo.ext','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','tls.client.certificate.bound.access.tokens','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','token.response.type.bearer.lower-case','false'),('9dff260d-226b-4d33-af0f-5a0903b2a89b','use.refresh.tokens','true'),('c719dac6-f61c-44c5-a0c8-1743f753b115','pkce.code.challenge.method','S256'),('c719dac6-f61c-44c5-a0c8-1743f753b115','post.logout.redirect.uris','+'),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','client.use.lightweight.access.token.enabled','true'),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','pkce.code.challenge.method','S256'),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','post.logout.redirect.uris','+');
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
INSERT INTO `client_scope` VALUES ('14bbfe9c-c589-4448-b3c0-e83e6df4f2ca','acr','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect'),('2165056e-bc18-4292-a542-229176ab4e42','AuthnContextClassRef','a7863055-f04b-47fe-b68e-4075e5d50b12','AuthnContextClassRef Level of Authentiation','saml'),('227ff154-ca0d-4531-b1e7-ce618f83280e','saml_organization','a7863055-f04b-47fe-b68e-4075e5d50b12','Organization Membership','saml'),('2438ff9f-d118-44c2-9410-bfea69bee845','basic','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect scope for add all basic claims to the token','openid-connect'),('3f35afd4-3824-4f12-8845-e3cf712bef46','phone','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect built-in scope: phone','openid-connect'),('64088842-1e03-4617-a985-e17aca455cf5','organization','a7863055-f04b-47fe-b68e-4075e5d50b12','Additional claims about the organization a subject belongs to','openid-connect'),('990f6b00-9f27-49d3-abd6-8e64e74d629e','profile','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect built-in scope: profile','openid-connect'),('9ef9f676-badd-4e25-ba0a-4a9c06a92aa3','microprofile-jwt','a7863055-f04b-47fe-b68e-4075e5d50b12','Microprofile - JWT built-in scope','openid-connect'),('be82c52d-fa14-444f-9e49-b67f818cbc43','roles','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect scope for add user roles to the access token','openid-connect'),('c97ad829-04b3-4653-8990-2f283afae419','web-origins','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('d283ca1e-8400-48c1-9111-2831c8fec22e','offline_access','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect built-in scope: offline_access','openid-connect'),('d7c3eaf7-992d-440d-888a-9d07c605d022','role_list','a7863055-f04b-47fe-b68e-4075e5d50b12','SAML role list','saml'),('f908d04c-6719-43a7-ae62-c0f4c548b970','email','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect built-in scope: email','openid-connect'),('f9cbcffc-2686-4337-919f-a79828568b90','service_account','a7863055-f04b-47fe-b68e-4075e5d50b12','Specific scope for a client enabled for service accounts','openid-connect'),('fca0b363-fade-4e6e-bef3-e8d8627d9261','address','a7863055-f04b-47fe-b68e-4075e5d50b12','OpenID Connect built-in scope: address','openid-connect');
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_attributes`
--

LOCK TABLES `client_scope_attributes` WRITE;
INSERT INTO `client_scope_attributes` VALUES ('14bbfe9c-c589-4448-b3c0-e83e6df4f2ca','false','display.on.consent.screen'),('14bbfe9c-c589-4448-b3c0-e83e6df4f2ca','false','include.in.token.scope'),('227ff154-ca0d-4531-b1e7-ce618f83280e','false','display.on.consent.screen'),('2438ff9f-d118-44c2-9410-bfea69bee845','false','display.on.consent.screen'),('2438ff9f-d118-44c2-9410-bfea69bee845','false','include.in.token.scope'),('3f35afd4-3824-4f12-8845-e3cf712bef46','${phoneScopeConsentText}','consent.screen.text'),('3f35afd4-3824-4f12-8845-e3cf712bef46','true','display.on.consent.screen'),('3f35afd4-3824-4f12-8845-e3cf712bef46','true','include.in.token.scope'),('64088842-1e03-4617-a985-e17aca455cf5','${organizationScopeConsentText}','consent.screen.text'),('64088842-1e03-4617-a985-e17aca455cf5','true','display.on.consent.screen'),('64088842-1e03-4617-a985-e17aca455cf5','true','include.in.token.scope'),('990f6b00-9f27-49d3-abd6-8e64e74d629e','${profileScopeConsentText}','consent.screen.text'),('990f6b00-9f27-49d3-abd6-8e64e74d629e','true','display.on.consent.screen'),('990f6b00-9f27-49d3-abd6-8e64e74d629e','true','include.in.token.scope'),('9ef9f676-badd-4e25-ba0a-4a9c06a92aa3','false','display.on.consent.screen'),('9ef9f676-badd-4e25-ba0a-4a9c06a92aa3','true','include.in.token.scope'),('be82c52d-fa14-444f-9e49-b67f818cbc43','${rolesScopeConsentText}','consent.screen.text'),('be82c52d-fa14-444f-9e49-b67f818cbc43','true','display.on.consent.screen'),('be82c52d-fa14-444f-9e49-b67f818cbc43','false','include.in.token.scope'),('c97ad829-04b3-4653-8990-2f283afae419','','consent.screen.text'),('c97ad829-04b3-4653-8990-2f283afae419','false','display.on.consent.screen'),('c97ad829-04b3-4653-8990-2f283afae419','false','include.in.token.scope'),('d283ca1e-8400-48c1-9111-2831c8fec22e','${offlineAccessScopeConsentText}','consent.screen.text'),('d283ca1e-8400-48c1-9111-2831c8fec22e','true','display.on.consent.screen'),('d7c3eaf7-992d-440d-888a-9d07c605d022','${samlRoleListScopeConsentText}','consent.screen.text'),('d7c3eaf7-992d-440d-888a-9d07c605d022','true','display.on.consent.screen'),('f908d04c-6719-43a7-ae62-c0f4c548b970','${emailScopeConsentText}','consent.screen.text'),('f908d04c-6719-43a7-ae62-c0f4c548b970','true','display.on.consent.screen'),('f908d04c-6719-43a7-ae62-c0f4c548b970','true','include.in.token.scope'),('f9cbcffc-2686-4337-919f-a79828568b90','false','display.on.consent.screen'),('f9cbcffc-2686-4337-919f-a79828568b90','false','include.in.token.scope'),('fca0b363-fade-4e6e-bef3-e8d8627d9261','${addressScopeConsentText}','consent.screen.text'),('fca0b363-fade-4e6e-bef3-e8d8627d9261','true','display.on.consent.screen'),('fca0b363-fade-4e6e-bef3-e8d8627d9261','true','include.in.token.scope');
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_client`
--

LOCK TABLES `client_scope_client` WRITE;
INSERT INTO `client_scope_client` VALUES ('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','2438ff9f-d118-44c2-9410-bfea69bee845',1),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','c97ad829-04b3-4653-8990-2f283afae419',1),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','f9cbcffc-2686-4337-919f-a79828568b90',1),('0cf3924f-847d-4a6e-b01f-848f9c2bdf15','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','2438ff9f-d118-44c2-9410-bfea69bee845',1),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','c97ad829-04b3-4653-8990-2f283afae419',1),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('41a9f940-60b5-4cf0-9989-2e39b8433bf4','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','2438ff9f-d118-44c2-9410-bfea69bee845',1),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','64088842-1e03-4617-a985-e17aca455cf5',0),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','c97ad829-04b3-4653-8990-2f283afae419',1),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('5ccb92c0-f629-433d-bf1d-52a65ca09678','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('5ccb92c0-f629-433d-bf1d-52a65ca09678','2438ff9f-d118-44c2-9410-bfea69bee845',1),('5ccb92c0-f629-433d-bf1d-52a65ca09678','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('5ccb92c0-f629-433d-bf1d-52a65ca09678','64088842-1e03-4617-a985-e17aca455cf5',0),('5ccb92c0-f629-433d-bf1d-52a65ca09678','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('5ccb92c0-f629-433d-bf1d-52a65ca09678','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('5ccb92c0-f629-433d-bf1d-52a65ca09678','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('5ccb92c0-f629-433d-bf1d-52a65ca09678','c97ad829-04b3-4653-8990-2f283afae419',1),('5ccb92c0-f629-433d-bf1d-52a65ca09678','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('5ccb92c0-f629-433d-bf1d-52a65ca09678','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('5ccb92c0-f629-433d-bf1d-52a65ca09678','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','2438ff9f-d118-44c2-9410-bfea69bee845',1),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','64088842-1e03-4617-a985-e17aca455cf5',0),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','c97ad829-04b3-4653-8990-2f283afae419',1),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('9dff260d-226b-4d33-af0f-5a0903b2a89b','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('9dff260d-226b-4d33-af0f-5a0903b2a89b','2438ff9f-d118-44c2-9410-bfea69bee845',1),('9dff260d-226b-4d33-af0f-5a0903b2a89b','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('9dff260d-226b-4d33-af0f-5a0903b2a89b','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('9dff260d-226b-4d33-af0f-5a0903b2a89b','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('9dff260d-226b-4d33-af0f-5a0903b2a89b','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('9dff260d-226b-4d33-af0f-5a0903b2a89b','c97ad829-04b3-4653-8990-2f283afae419',1),('9dff260d-226b-4d33-af0f-5a0903b2a89b','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('9dff260d-226b-4d33-af0f-5a0903b2a89b','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('9dff260d-226b-4d33-af0f-5a0903b2a89b','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('bf161c8b-98e2-4223-96e2-bbe92252ef89','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('bf161c8b-98e2-4223-96e2-bbe92252ef89','2438ff9f-d118-44c2-9410-bfea69bee845',1),('bf161c8b-98e2-4223-96e2-bbe92252ef89','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('bf161c8b-98e2-4223-96e2-bbe92252ef89','64088842-1e03-4617-a985-e17aca455cf5',0),('bf161c8b-98e2-4223-96e2-bbe92252ef89','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('bf161c8b-98e2-4223-96e2-bbe92252ef89','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('bf161c8b-98e2-4223-96e2-bbe92252ef89','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('bf161c8b-98e2-4223-96e2-bbe92252ef89','c97ad829-04b3-4653-8990-2f283afae419',1),('bf161c8b-98e2-4223-96e2-bbe92252ef89','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('bf161c8b-98e2-4223-96e2-bbe92252ef89','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('bf161c8b-98e2-4223-96e2-bbe92252ef89','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('c719dac6-f61c-44c5-a0c8-1743f753b115','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('c719dac6-f61c-44c5-a0c8-1743f753b115','2438ff9f-d118-44c2-9410-bfea69bee845',1),('c719dac6-f61c-44c5-a0c8-1743f753b115','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('c719dac6-f61c-44c5-a0c8-1743f753b115','64088842-1e03-4617-a985-e17aca455cf5',0),('c719dac6-f61c-44c5-a0c8-1743f753b115','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('c719dac6-f61c-44c5-a0c8-1743f753b115','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('c719dac6-f61c-44c5-a0c8-1743f753b115','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('c719dac6-f61c-44c5-a0c8-1743f753b115','c97ad829-04b3-4653-8990-2f283afae419',1),('c719dac6-f61c-44c5-a0c8-1743f753b115','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('c719dac6-f61c-44c5-a0c8-1743f753b115','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('c719dac6-f61c-44c5-a0c8-1743f753b115','fca0b363-fade-4e6e-bef3-e8d8627d9261',0),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','2438ff9f-d118-44c2-9410-bfea69bee845',1),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','64088842-1e03-4617-a985-e17aca455cf5',0),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','c97ad829-04b3-4653-8990-2f283afae419',1),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','fca0b363-fade-4e6e-bef3-e8d8627d9261',0);
UNLOCK TABLES;

--
-- Dumping data for table `client_scope_role_mapping`
--

LOCK TABLES `client_scope_role_mapping` WRITE;
INSERT INTO `client_scope_role_mapping` VALUES ('d283ca1e-8400-48c1-9111-2831c8fec22e','11419de1-29d4-4405-acf0-32eb24d6fb34');
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
INSERT INTO `component` VALUES ('06be8b3d-62db-4ca5-b83a-2899e95331ef',NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL),('0e9fff0a-ccd4-424e-8f81-251518b262d7','Allowed Registration Web Origins','a7863055-f04b-47fe-b68e-4075e5d50b12','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous'),('1d551abf-4fa6-46d5-b67e-0a4466630579','Allowed Protocol Mapper Types','a7863055-f04b-47fe-b68e-4075e5d50b12','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','authenticated'),('57e5e0d5-34e9-452c-9655-1cee8e3494b4','Max Clients Limit','a7863055-f04b-47fe-b68e-4075e5d50b12','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous'),('58ea402e-f367-4020-9428-98492abdec06','rsa-enc-generated','a7863055-f04b-47fe-b68e-4075e5d50b12','rsa-enc-generated','org.keycloak.keys.KeyProvider','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL),('69c722e0-6ee5-448b-a19c-b13d1ef30494','Allowed Client Scopes','a7863055-f04b-47fe-b68e-4075e5d50b12','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous'),('844bfa8c-82f3-4061-ad7d-74065e95f3e3','Allowed Protocol Mapper Types','a7863055-f04b-47fe-b68e-4075e5d50b12','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous'),('92aeb94a-3739-4254-b85f-440f9c7b7f64','hmac-generated-hs512','a7863055-f04b-47fe-b68e-4075e5d50b12','hmac-generated','org.keycloak.keys.KeyProvider','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL),('99281b0e-9ba7-4bb8-bc6f-996c4e0579a8','Allowed Client Scopes','a7863055-f04b-47fe-b68e-4075e5d50b12','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','authenticated'),('b136a7d1-1d91-4db4-9aed-ae79faaf8056','Trusted Hosts','a7863055-f04b-47fe-b68e-4075e5d50b12','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous'),('c36721e8-0574-46c9-8977-5063738e88eb','rsa-generated','a7863055-f04b-47fe-b68e-4075e5d50b12','rsa-generated','org.keycloak.keys.KeyProvider','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL),('c77caa11-573c-4cc1-95eb-7f34de3049bf','Consent Required','a7863055-f04b-47fe-b68e-4075e5d50b12','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous'),('cb11bade-1a5d-46d1-882c-13f582b5c24e','Allowed Registration Web Origins','a7863055-f04b-47fe-b68e-4075e5d50b12','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','authenticated'),('dc342e73-6801-44b2-9179-41dad2607aec','aes-generated','a7863055-f04b-47fe-b68e-4075e5d50b12','aes-generated','org.keycloak.keys.KeyProvider','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL),('f639201a-2d3c-443e-bf96-b14e32ec0e3d','Full Scope Disabled','a7863055-f04b-47fe-b68e-4075e5d50b12','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','anonymous');
UNLOCK TABLES;

--
-- Dumping data for table `component_config`
--

LOCK TABLES `component_config` WRITE;
INSERT INTO `component_config` VALUES ('0c22de89-6edc-4f58-a32f-44b43bd7f16e','99281b0e-9ba7-4bb8-bc6f-996c4e0579a8','allow-default-scopes','true'),('15c0f777-4b9b-4725-ac62-98c5ed4e5c6a','06be8b3d-62db-4ca5-b83a-2899e95331ef','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"firstName\",\"displayName\":\"${firstName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),('178ca68f-a16b-4d5a-97be-5901d586bc85','92aeb94a-3739-4254-b85f-440f9c7b7f64','kid','65d23ec9-8353-4528-9d49-5cd317ff3ce4'),('178fd09e-427d-4cf3-ac5b-9fc5af05c60b','57e5e0d5-34e9-452c-9655-1cee8e3494b4','max-clients','200'),('1c413ccf-a01d-4968-985e-17ab3a9cde4d','dc342e73-6801-44b2-9179-41dad2607aec','kid','9d144fbc-4a34-4be7-9ce0-919f5545d987'),('30d58d3b-8a95-4bba-8816-bfb4b8d61b6e','b136a7d1-1d91-4db4-9aed-ae79faaf8056','host-sending-registration-request-must-match','true'),('34c14d01-d652-41dc-9e2f-9b6f3ec48415','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('392779ef-0fb8-4f01-bf06-17cf5795fe52','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','saml-role-list-mapper'),('3c5eb569-ca1e-491f-a1d3-3b9f1221c548','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','oidc-full-name-mapper'),('3e75dd46-6f6a-4c2c-8dc2-4a105b907bcf','92aeb94a-3739-4254-b85f-440f9c7b7f64','priority','100'),('5dddd69c-87bc-420c-8b28-c49947b7e321','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','oidc-address-mapper'),('5fb8ccf1-850f-4802-98d9-702a0e21693b','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','saml-user-property-mapper'),('602ed969-1035-4159-9bb0-1098978272af','c36721e8-0574-46c9-8977-5063738e88eb','certificate','MIICmzCCAYMCBgGfsyY4nDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwNzMwMTMwOTE0WhcNMzYwNzMwMTMxMDU0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDIDCPjbB95aEuThq/BKtZrWPau4viL4dbllt0Lbbq8NooWscUBZVALdQ93nU2jcUyjYpqvOHAu1ADTQ4tU6ZQ7HJRAaojG7X7cUT6kDLvv3IdFW7piH/tT5NWyPzDDiNXSxsw/vP0JSd3gom+6QEkpy/XLKgjudV1o4UUuIAZr0GvQubFxcRrLTYPw3tl+t3qsBkkATYM6zsyKk+lAiqtf7xLvTW2tALW/8OaiHxXDCrD6YMaSWtnurkoEKA/hqWPXvtNj1i+pgRS9iCat0cBZTkQyQfKHWlwoUucBXl3WeHIWpY9+b/LD4ndlp9Y4KIekT3U7ITjkQFepzVOmRGk9AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIp/fO7RdDmkv9BrHqu351Fwz76rbdRL1z2PDPWNG8FsOp4eHuOcQRvYbJECW6mV4jn9xJ1l47rtworFClErhiK9rGT5R5AqXV8YHbtCPpXQeKLfuBpWm5AVkacG9r7HRu3OIMYseMOmXFS8qGMMQpuc2W9TQIo1FuTb7WvC1Mq4F8etZJpIRxvgkKJigC3F2zhfNRXcpgIGfA6dGbWc/pY9spQZc8EImRpv606H8IYeEXHfFJKcS4Z4bQtlnfZkOj6bbDD+JC5VPhepDrwoqlQcrJhQTgiBQUjr0eaMow1PlKd2IVsEbNlNmTwQ2w+GMJAiKPPc8HJFagsWStHufuA='),('683e17a6-7590-4ef9-9d9a-e5dd6b081dd0','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('694aaf00-9ae5-403c-9ef5-1f4030d76322','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('6d7b3f31-54be-4e43-8d33-99b86ec96055','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('6f141123-ebb8-460e-bb15-ff5052c5d38f','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','oidc-address-mapper'),('732b9e07-acd5-4206-859f-ff0e305be628','58ea402e-f367-4020-9428-98492abdec06','certificate','MIICmzCCAYMCBgGfsyY6sDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwNzMwMTMwOTE0WhcNMzYwNzMwMTMxMDU0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCz8N1WrFO1BZCP9iaocDtKB+5o3J85Nil6cXpt7PdchWCK9gEKhpkPSZiKrhpw1oCpEfYGGm5g+orQKzODjT0QFDtZ0AdYM5cbrS7FoU+1r98EpJ45Haq1qKsK1piMaOqmOPE/UXKQNQisWwWGiS6zdFMGxRajaBCtXech/3/FlLvvQnoYF0BbrKIpOFa3fkAvIoN5JiCT715R+otMwilVBgUIHKV0ADbsoSMdQXL1g3SfHWp00Je1MqZXM0yMx0QaPNogMW4QQF9E9Grs6cya8SjiIhbmXNSS+jZIgKOSON3SGNTT/5XRN9n4jW4jxeKX2Pwt0thNO0LsvOUNjIK7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBACIurhkaQ7lHgsTnFIJVkD6T4gE94kBs18yHDdVp/f1qKand7X1+LsrdJNdb6TS8eS6egX+kizHYX1HVNymdoLuw33f4v74iai25hdw3pxVw6vhHk+A6AgH7vfkJhaG/NWXp0KzVMQo/Y1+KBAyRpmOLm2jMQu7exCF/RyTju9VBvmXC46gaptRSWzHNNPx26RHBJzHpEU7Vc8a2S0oM7fMOhwLtVjxD/tA/pARXWXeWXc8XjF/IvFNDMO9hPhbqf6CV8qwHUmE4tAl+LL6/IF5JCW/iVMV0fD60+pmWUi/0rQ+hj/dejympgVZWG8jkGpugs647+Ya0Pob3FoXUcZ0='),('7d0de497-663e-447c-b0c6-f0718fb62dab','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('841992f4-60bc-48e9-9c57-da3b6c7ec516','58ea402e-f367-4020-9428-98492abdec06','priority','100'),('851dc57a-23fa-428a-b838-6f934faf8e40','b136a7d1-1d91-4db4-9aed-ae79faaf8056','client-uris-must-match','true'),('8697bf0b-7031-4b45-9ee4-600b91943a49','dc342e73-6801-44b2-9179-41dad2607aec','secret','3gVWKeIDyJqwlITsT-fFi3BnBp8savdVbN2jCDUozzc'),('8d907c3c-617c-4626-9041-df1ac644fd34','58ea402e-f367-4020-9428-98492abdec06','privateKey','MIIEowIBAAKCAQEAs/DdVqxTtQWQj/YmqHA7SgfuaNyfOTYpenF6bez3XIVgivYBCoaZD0mYiq4acNaAqRH2BhpuYPqK0Cszg409EBQ7WdAHWDOXG60uxaFPta/fBKSeOR2qtairCtaYjGjqpjjxP1FykDUIrFsFhokus3RTBsUWo2gQrV3nIf9/xZS770J6GBdAW6yiKThWt35ALyKDeSYgk+9eUfqLTMIpVQYFCByldAA27KEjHUFy9YN0nx1qdNCXtTKmVzNMjMdEGjzaIDFuEEBfRPRq7OnMmvEo4iIW5lzUkvo2SICjkjjd0hjU0/+V0TfZ+I1uI8Xil9j8LdLYTTtC7LzlDYyCuwIDAQABAoIBAAyPsPPe/czyQYA7P8GcbBcj7Jm3ZQoaZNTeXRyVYUM9MFsjBzmT4dV2Xsa3lrLv1nV3AoS0jaYJd21GxsbVMkEQGICRjCG1IERXV5+GPklBqMDrOPxlvMgHqUENcALFRDQsX3L7HZNBkIRvqjgVFYSDh1Q+p/DqT9e6aWsvKd1CAXJYoJn42u/CXVTGJoZ1epSlJDFtERbI2G6tm2LRc2SfRKhadjGj4nE0YR3hxcsPE3mdb2QReDJrmLPTj5/iQxWtDjx4l9HXGnjDmoJDhBD6zgmGqR9LyIKMYqWn0UpxFtMRal1OhEOWCqBxPN25SsPN3I+wyo0pPq3pX4pl5nkCgYEA+yqleLlewiLlPS71uFPvR1cU0V8ory9zPJ0CabQqgOq9xvTCqcSSUtM5t6+7aXjynz2zaEW9l3mCERjbRU2anmqEcHZR6HCP3hT4z+oTkg+YpTM3M2mq1s82hsH5X3e2eeYF3NYUWu4ddD9yOFsG5O+6+yiDbi9LMlK5HASby0cCgYEAt2dUfSrvgNE+L0B1WrQio3KezKYlXe2U2ipdBE6gmVvdS1vAk4uAPXTYto//tEZLpESoV+/LpE2bewhGfR8seynAz6R0dhmCtwZY3o7IOJ0z+VdAPdvh2EFkYZN790LVIoAe+aFRX9ABQtXRxzd5hZGzG2a122AIlSc+2Y4JHu0CgYEA5heNe2kmO+dH5qMMjA6ol8xYz+3DEaoAgbi8qyVYAr4JmShE5M2l1qaWq4YbxGX+ro8RuiaZpxizZQJGbdjIGvQt2/Eo3C2yPpsrzRz9TMNo7X5bxYe58AvoQc+VqjW7PzTQjhy4jQyygvpUovgQ+s37l3bn4JsG4lUSK261YqUCgYBvw/aG+J1PwTPGE9/wUIozVOxVBoMLBHeLo/lfYJMaIhNvkxB+WariyMwwJPzM3XHHP1ffjvBoxiqUBWz/Xvn6bG1lnHCkb9NqueF6b0Swy4wazQMHL3IoGWGU3Q3UltPP3IgD1D0EyHucQTU/1ByoOywM7MCyWYmha3MvnREN2QKBgH4ZB+6ABOfaLZTQ9PTa18d+xjkbzHI9F7q36SLza3BLa0VLDpk2Desf03EFjrq3UtIjh+PorGxvYQ+ZR+vqDJknQ3iXLVx0tXjVfHskSXNFEn/1jILcIZrTCE/dt9S4so2PHXluftff7EWX1ff64kFw5i40J3sLArhTfnX6ebaR'),('a7a07c70-063e-4ed1-8134-796113996e00','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ae8bef88-3819-48e9-a0a1-31521c780989','92aeb94a-3739-4254-b85f-440f9c7b7f64','secret','VH3GEknSZGVU7M-PcnTXbxXjY_VNaf8eDYNNcKy4t91Op1_DMxysFb9qKNBm7PBHkobGNC0Q9rzsiDbIm12JARbfrxnjpbp1PDR_AOQEIo6GWI7rnqQddCzv6gK1pWuythhJAZ__Dnlcjk4GX6tDGHRChMFoQNXL1pboejJFzFg'),('aec579f1-cd37-42a5-a6a7-17f5683ef858','c36721e8-0574-46c9-8977-5063738e88eb','privateKey','MIIEowIBAAKCAQEAyAwj42wfeWhLk4avwSrWa1j2ruL4i+HW5ZbdC226vDaKFrHFAWVQC3UPd51No3FMo2KarzhwLtQA00OLVOmUOxyUQGqIxu1+3FE+pAy779yHRVu6Yh/7U+TVsj8ww4jV0sbMP7z9CUnd4KJvukBJKcv1yyoI7nVdaOFFLiAGa9Br0LmxcXEay02D8N7Zfrd6rAZJAE2DOs7MipPpQIqrX+8S701trQC1v/Dmoh8Vwwqw+mDGklrZ7q5KBCgP4alj177TY9YvqYEUvYgmrdHAWU5EMkHyh1pcKFLnAV5d1nhyFqWPfm/yw+J3ZafWOCiHpE91OyE45EBXqc1TpkRpPQIDAQABAoIBACAxq/jmpq4QNdF5JIHO1hESkSiWCG/imYX7YHl9YEb39AMw+sZ9uoMNhL64Rw1dp3rH3KMETzGKFtPpE9xHdv6IW+d9/aMeB4OHY7BdCEXS1MY5u+YcxYK72hREjSF6vQadzbMYRBShmZ6UJazwuZWLaHQYwLU3mB/P2SVSLBZffHsOt6LMrBEWkNMc1+Q96stqkgTzdau3PV64VTpLTk5PNsvdYaEvPGdhVAG+LGUfON7S15py7oJI28oBMVoS7wWuaQZs7V4f/dHgBO1Du8kwU/NF9d5hbrbsA3r4RxMwjGje8yrs48uFyqn5Lswpa8ZWnEZSZRBpZdzp+nwKDPUCgYEA7jTkf0hlHQLMvl1zsQvdzGka893Tw9K+6RBMWwvWPpyfrK9d9eoYZiFRQF1C5tA8Hy7w2pZU6prh/P3BPnFgDK+UombQ3Kk3A9VXonuuGZ0gfAioegfD6it5pRjq3MO3KC8mQbihU9FtqRJsxSQItPz1+oEiLuX4CFBLP6wPnvMCgYEA1v2MXLiu0C5ubI2HShy8oDlSpjEG/1XiYDz/yJb+oo9IMB7fSlvA4OYQQ3qebmnSxNBfFzsLnZjkczVq4yBsdcxCZeG3MlqGaIiDEkE4ecje2FAx0xMI3NNl7hJmTIliB5UJGMPW8/y7xg3QzuEyGfi5p9m0MroXIKqbEZ9dww8CgYBDhYizr8DBrXZ+C51stTFk7PIv6FRLsOReyjjqoftT+i+k0nzu5TGPWahfd1AsfyBbsoGhZHWjns2qWf+6BIc2cVrPghd4RRsMIiBaNXbPWePIZOfk12ioazRrIRoKBAxZ/qt4e653ROkxwMBGTYWOUBolrQ8UfimFqcT6wnoXEwKBgFLoGg3Tpo5fqXOxLF/3LwJ2uJmgRHuI6jCEtXrsR6v2pzbvYNpzAbF45wKusZQQuRfu5wy1V2hiAo8vJVYLNehDacOSRKxlXnnHUwxiHF5SiSVP37bvGzbVSvSBIfQX8rbL0WM8epNCfkMFJuXwz/pWAXpqKOR7ANo3EG++TlEfAoGBAM1UKYK9J6SnICns+OH/kM4NhcbTn2ZpM0jJBAsE7nG3YGHSwCmGa11AKxd699JKML+ubp0rmsNPiSOuTbLrwFym0LPiYicWSm90sPK4cyHLucUvtJv5cvFxmF9ajMjizeRH9i0mZ8ZJFeApPJFv19FAgbqmUYXBvnveJLMfox51'),('c09a7c31-0f7e-48d0-8889-3e28f2769f5d','dc342e73-6801-44b2-9179-41dad2607aec','priority','100'),('c4bec7be-0fba-492f-9cea-b4f90c6bd5ea','69c722e0-6ee5-448b-a19c-b13d1ef30494','allow-default-scopes','true'),('d0926c56-7725-4f47-a346-c9e82f714859','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','saml-role-list-mapper'),('d5f7d2ab-f708-4cf6-b2f7-220ec8157fca','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('dc717c9c-3f83-4a82-bfa8-abd5d692eb9c','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('e32ba0ce-be7a-4e66-960b-9468f64c5f8f','1d551abf-4fa6-46d5-b67e-0a4466630579','allowed-protocol-mapper-types','saml-user-property-mapper'),('e5855bf8-f67d-4708-9681-96c7797f7e59','58ea402e-f367-4020-9428-98492abdec06','algorithm','RSA-OAEP'),('e655918f-f378-4ecd-8ea6-569a55092755','92aeb94a-3739-4254-b85f-440f9c7b7f64','algorithm','HS512'),('e9eaa34f-8b1a-433f-a11c-eaa808883e19','c36721e8-0574-46c9-8977-5063738e88eb','keyUse','SIG'),('ea7867ae-8aee-48d1-a668-019a50e168ae','c36721e8-0574-46c9-8977-5063738e88eb','priority','100'),('ef27ddaf-7e4d-48e6-91f0-b528d43fbf98','58ea402e-f367-4020-9428-98492abdec06','keyUse','ENC'),('fe8cd1fb-4259-499c-9ab3-47b86be98dcc','844bfa8c-82f3-4061-ad7d-74065e95f3e3','allowed-protocol-mapper-types','oidc-full-name-mapper');
UNLOCK TABLES;

--
-- Dumping data for table `composite_role`
--

LOCK TABLES `composite_role` WRITE;
INSERT INTO `composite_role` VALUES ('0e3589ad-81de-4c62-aae8-e4e9cf26678a','0fa6512c-9cdc-492d-9ce4-6ce3f0b9b437'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','255c375c-c5e9-4380-8001-d01647789455'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','589e63c8-40e5-4f96-b99e-a29a1db2bd98'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','6612a0be-0874-4721-8cff-e64b7f22752f'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','6ccc1566-5227-47d8-8504-227505d76a54'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','73705074-83d7-4511-b223-62726dc06929'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','80540e39-5887-4233-b970-3e4af70a6de4'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','899ee628-0675-47af-b62b-4aceef218996'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','8ec1bfbf-36c8-4789-9519-e27d7efaec36'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','99563b4c-fee4-43d1-b570-b47385f4a623'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','99e8d7ab-5e51-4877-8f68-85ab32f0e82e'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','b1842347-152f-4a43-a694-22cb6e4f5eda'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','b4b7d1a9-af0e-4bbb-87fb-04d716c11b6f'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','be877e9c-d935-4769-8738-168a86a06178'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','c4b0c088-64f9-404f-a7d7-ca686ac818a9'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','c4dc057a-af70-4537-a605-cccc40a965ec'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','c97394a7-f8ba-4aae-9bed-547f5beccf70'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','cf645647-e34c-4a01-8bd0-1e272013ac1d'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','d6688b22-60a9-4751-bb4b-b252fb84a11f'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','d86f3701-abf9-4501-be8d-5e66327f9045'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','f3c80dd9-9c4c-4768-a93b-86e836fa61fa'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','fdff7100-34a4-4877-9ffc-c727bb13c8fd'),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','11419de1-29d4-4405-acf0-32eb24d6fb34'),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','6f3d7545-b2e6-48d6-a076-ab4de7727001'),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','7b2ed9e3-b9ad-4581-a165-fdbcb9c7dc65'),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','7f97a9e3-8052-4cdd-8373-e4114d6889f4'),('6ccc1566-5227-47d8-8504-227505d76a54','899ee628-0675-47af-b62b-4aceef218996'),('6f3d7545-b2e6-48d6-a076-ab4de7727001','dbb7c559-0f3d-4d57-ad88-6c173dcfea5c'),('746477da-6e64-4292-8fab-2ba6d9fd5c38','8a0f6e6f-3bb6-4059-8195-20b31afdd594'),('d6688b22-60a9-4751-bb4b-b252fb84a11f','99563b4c-fee4-43d1-b570-b47385f4a623'),('d6688b22-60a9-4751-bb4b-b252fb84a11f','d86f3701-abf9-4501-be8d-5e66327f9045'),('fdff7100-34a4-4877-9ffc-c727bb13c8fd','c4b0c088-64f9-404f-a7d7-ca686ac818a9');
UNLOCK TABLES;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
INSERT INTO `credential` VALUES ('cd44bcac-a5f6-42e8-baf3-d532909cc904',NULL,'password','295f8edf-7870-4e20-b95a-5fe76fe91317',1785417055421,NULL,'{\"value\":\"xPVi4Y728BTkjonAEd395cEbNI1UY8w+4Gp9YftkbJ0=\",\"salt\":\"28ok9Hqf/nAYEXJ3toyfuA==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0);
UNLOCK TABLES;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
INSERT INTO `databasechangelog` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2026-07-30 22:10:33',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2026-07-30 22:10:33',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2026-07-30 22:10:33',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2026-07-30 22:10:33',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2026-07-30 22:10:34',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2026-07-30 22:10:34',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2026-07-30 22:10:34',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2026-07-30 22:10:34',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2026-07-30 22:10:34',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2026-07-30 22:10:35',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2026-07-30 22:10:35',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2026-07-30 22:10:35',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2026-07-30 22:10:35',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-30 22:10:36',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-30 22:10:36',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-30 22:10:36',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-07-30 22:10:36',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2026-07-30 22:10:36',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2026-07-30 22:10:36',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2026-07-30 22:10:36',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2026-07-30 22:10:36',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2026-07-30 22:10:36',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2026-07-30 22:10:37',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2026-07-30 22:10:37',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2026-07-30 22:10:37',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2026-07-30 22:10:37',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-07-30 22:10:43',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.33.0',NULL,NULL,'5417024421'),('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2026-07-30 22:10:44',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2026-07-30 22:10:44',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2026-07-30 22:10:44',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('18.0.15-30992-index-consent','keycloak','META-INF/jpa-changelog-18.0.15.xml','2026-07-30 22:10:44',107,'EXECUTED','9:80071ede7a05604b1f4906f3bf3b00f0','createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2026-07-30 22:10:44',108,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2026-07-30 22:10:38',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2026-07-30 22:10:38',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2026-07-30 22:10:38',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2026-07-30 22:10:38',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-30 22:10:38',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2026-07-30 22:10:39',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-30 22:10:38',34,'MARK_RAN','9:737ee933fd399814ed5e24f3b1bbe39d','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-30 22:10:39',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-07-30 22:10:39',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2026-07-30 22:10:39',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-30 22:10:44',109,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('20.0.0-12964-supported-dbs-edb-migration','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-30 22:10:44',110,'MARK_RAN','9:a6b18a8e38062df5793edbe064f4aecd','dropIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE; createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-30 22:10:44',111,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2026-07-30 22:10:44',115,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-07-30 22:10:44',116,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-07-30 22:10:44',117,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-07-30 22:10:44',118,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-07-30 22:10:44',119,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-07-30 22:10:44',120,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.33.0',NULL,NULL,'5417024421'),('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-07-30 22:10:44',121,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-30 22:10:44',124,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.0-26618-edb-migration','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-30 22:10:44',126,'MARK_RAN','9:2f684b29d414cd47efe3a3599f390741','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES; createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-30 22:10:44',125,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-30 22:10:44',122,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-07-30 22:10:44',123,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-07-30 22:10:44',127,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-07-30 22:10:44',128,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-07-30 22:10:44',129,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-2-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',136,'EXECUTED','9:b7ef76036d3126bb83c2423bf4d449d6','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-2-not-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',137,'MARK_RAN','9:23396cf51ab8bc1ae6f0cac7f9f6fcf7','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-cleanup-css-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',135,'EXECUTED','9:5411d2fb2891d3e8d63ddb55dfa3c0c9','dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-cleanup-uss-by-usersess','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',134,'EXECUTED','9:6eee220d024e38e89c799417ec33667f','dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-cleanup-uss-createdon','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',132,'EXECUTED','9:78ab4fc129ed5e8265dbcc3485fba92f','dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-cleanup-uss-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',133,'EXECUTED','9:de5f7c1f7e10994ed8b62e621d20eaab','dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',131,'EXECUTED','9:3e96709818458ae49f3c679ae58d263a','createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28265-tables','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',130,'EXECUTED','9:deda2df035df23388af95bbd36c17cef','addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-28861-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:45',142,'EXECUTED','9:b9acb58ac958d9ada0fe12a5d4794ab1','createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET','',NULL,'4.33.0',NULL,NULL,'5417024421'),('25.0.0-org','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',138,'EXECUTED','9:5c859965c2c9b9c72136c360649af157','createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-32583-drop-redundant-index-on-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',150,'EXECUTED','9:24972d83bf27317a055d234187bb4af9','dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-33201-org-redirect-url','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',152,'EXECUTED','9:4d0e22b0ac68ebe9794fa9cb752ea660','addColumn tableName=ORG','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-idps-for-login','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',149,'EXECUTED','9:51f5fffadf986983d4bd59582c6c1604','addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-org-alias','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',143,'EXECUTED','9:6ef7d63e4412b3c2d66ed179159886a4','addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-org-group','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',144,'EXECUTED','9:da8e8087d80ef2ace4f89d8c5b9ca223','addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-org-group-membership','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',146,'EXECUTED','9:a6ace2ce583a421d89b01ba2a28dc2d4','addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0-org-indexes','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',145,'EXECUTED','9:79b05dcd610a8c7f25ec05135eec0857','createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',151,'EXECUTED','9:febdc0f47f2ed241c59e60f58c3ceea5','dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.1.0-34013','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-07-30 22:10:45',154,'EXECUTED','9:e6b686a15759aef99a6d758a5c4c6a26','addColumn tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.1.0-34380','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-07-30 22:10:45',155,'EXECUTED','9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01','dropTable tableName=USERNAME_LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.2.0-26106','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-07-30 22:10:45',157,'EXECUTED','9:b5877d5dab7d10ff3a9d209d7beb6680','addColumn tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.2.0-36750','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-07-30 22:10:45',156,'EXECUTED','9:b49ce951c22f7eb16480ff085640a33a','createTable tableName=SERVER_CONFIG','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.2.6-39866-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-30 22:10:45',158,'EXECUTED','9:1dc67ccee24f30331db2cba4f372e40e','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.2.6-39866-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-30 22:10:45',159,'EXECUTED','9:b70b76f47210cf0a5f4ef0e219eac7cd','addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.2.6-40088-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-30 22:10:45',160,'EXECUTED','9:cc7e02ed69ab31979afb1982f9670e8f','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.2.6-40088-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-07-30 22:10:45',161,'EXECUTED','9:5bb848128da7bc4595cc507383325241','addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.3.0-groups-description','keycloak','META-INF/jpa-changelog-26.3.0.xml','2026-07-30 22:10:45',162,'EXECUTED','9:e1a3c05574326fb5b246b73b9a4c4d49','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.4.0-40933-saml-encryption-attributes','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-07-30 22:10:45',163,'EXECUTED','9:7e9eaba362ca105efdda202303a4fe49','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.4.0-51321','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-07-30 22:10:45',164,'EXECUTED','9:34bab2bc56f75ffd7e347c580874e306','createIndex indexName=IDX_EVENT_ENTITY_USER_ID_TYPE, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-add-remember-me','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',172,'EXECUTED','9:a7273ea8b21bd2f674c9c49141999f05','addColumn tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-add-sess-create-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:46',174,'EXECUTED','9:aaee09e23a4d8468fbc5c51b7b314c58','createIndex indexName=IDX_USER_SESSION_EXPIRATION_LAST_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-add-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',173,'EXECUTED','9:ce49383d317ccbcd3434d1f21172b0b7','createIndex indexName=IDX_USER_SESSION_EXPIRATION_CREATED, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-drop-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:46',175,'EXECUTED','9:f0082210b6ccbbaf81287c27aa23753c','dropIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-idp-config-allow-null','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',169,'EXECUTED','9:b667fb087874303b324c1af7fae4f606','dropDefaultValue columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=STORE_TOKEN, tableName=IDENTITY_PROVIDER; dropDefaultValue columnName...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-idp-config-allow-null-fixed-create-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',170,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-idp-config-allow-null-fixed-drop-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',168,'MARK_RAN','9:50c51d2c98cd1d624eb1c485c3cf1f75','dropIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-index-offline-css-by-client','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',166,'EXECUTED','9:680b59ca7854fa5b77a303301bb2a941','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-index-offline-css-by-client-storage-provider','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',167,'EXECUTED','9:809bc160e2bc92f9c28eea39db323ae2','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-invitations-table-fixed2','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:46',177,'EXECUTED','9:322cb11fc03181903dcd67a54f8b3cf0','createTable tableName=ORG_INVITATION; addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex index...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-mysql-mariadb-default-charset-collation','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:46',176,'EXECUTED','9:1b383fa60d2db0a8952b365e725f9d16','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.5.0-remove-workflow-provider-id-column','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-07-30 22:10:45',171,'EXECUTED','9:d8eeb324484d45e946d03b953e168b21','dropIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; dropColumn columnName=WORKFLOW_PROVIDER_ID, tableName=WORKFLOW_STATE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-43829-user-created-timestamp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',187,'EXECUTED','9:f2531a49b8bb21a7a97966d88fd1a411','createIndex indexName=IDX_USER_CREATED_TIMESTAMP, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-44424-create-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',182,'EXECUTED','9:77dbbc72d943e98cfe472ba8cc56a31c','addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-44424-idx-css-realm-and-clients','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',184,'EXECUTED','9:a093877fff41185ac24103be80e00968','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-44424-index-css-user-session-and-offline','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',181,'EXECUTED','9:a704d8598df241a3fd3cb91b6ab4b2d4','createIndex indexName=IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-44424-set-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',183,'EXECUTED','9:3964a3148d32a55ef81126e23cdf6721','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-45009-broker-link-identity-provider','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',179,'EXECUTED','9:7d9a0253c9de7be754efef8bba4265bd','createIndex indexName=IDX_BROKER_LINK_IDENTITY_PROVIDER, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-45009-broker-link-user-id','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',178,'EXECUTED','9:05026bbbc8d2ead5afcbda2f5fdf3a2b','createIndex indexName=IDX_BROKER_LINK_USER_ID, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-48716-create-mssql-idp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',188,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-add-last-modified-timestamp-user','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',185,'EXECUTED','9:8aa583d2cdd9e913dff42fecd626c560','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-add-timestamps-group','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',186,'EXECUTED','9:4363d45dc25105a3fc5db9ff6936b0a9','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.6.0-org-group-relationship','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-07-30 22:10:46',180,'EXECUTED','9:05685853fba030f53548ac6bf23245e3','addColumn tableName=KEYCLOAK_GROUP; addForeignKeyConstraint baseTableName=KEYCLOAK_GROUP, constraintName=FK_GROUP_ORGANIZATION, referencedTableName=ORG; createIndex indexName=IDX_GROUP_ORG_ID, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-45292-realm-display-name-add-column','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',190,'EXECUTED','9:1de8c7824ce4fd7c739db6195f42be21','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-45292-realm-display-name-migrate-data','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',191,'EXECUTED','9:293096bc554dd51428d1d9882f2de1dd','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-45292-realm-display-name-remove-attribute','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',192,'EXECUTED','9:a08357e3b0908c09d478e692cf82f865','delete tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-46204-issued-ver-credential-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',197,'EXECUTED','9:4918c6f68ba90ce417f1aaa031013168','createTable tableName=ISSUED_VER_CREDENTIAL; addPrimaryKey constraintName=PK_ISSUED_VER_CREDENTIAL, tableName=ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=ISSUED_VER_CREDENTIAL, constraintName=FK_ISSUED_VER_CREDENTIAL_USER, referen...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-9686-dynamic-scopes-consent','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',196,'EXECUTED','9:fb689bc3ff64e174d6319014b38876f1','addColumn tableName=USER_CONSENT_CLIENT_SCOPE; dropPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addColumn...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-add-last-modified-timestamp-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',209,'EXECUTED','9:bae67d2faa5438ee35adfbb20a53c3c6','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-add-timestamps-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',208,'EXECUTED','9:df5324c82398b446690b206c07649d40','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-cluster-event','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',210,'EXECUTED','9:556b201eb9c378fa05d5bf22ec9c8dcf','createTable tableName=CLUSTER_EVENT; addPrimaryKey constraintName=PK_CLUSTER_EVENT, tableName=CLUSTER_EVENT; createIndex indexName=IDX_CLUSTER_EVENT_TARGET, tableName=CLUSTER_EVENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-federated-issued-ver-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',200,'EXECUTED','9:3d610f5527879623a0d2362e64fa667f','createTable tableName=FED_ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=FED_ISSUED_VER_CREDENTIAL, constraintName=FK_FED_ISSUED_VC_VER_CRED, referencedTableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_ISSUED_VC_USER, ...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-federated-verifiable-credentials-1','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',194,'EXECUTED','9:49092fa73b1c2b3afca48d91b8111c65','createTable tableName=FED_USER_VER_CREDENTIAL; addUniqueConstraint constraintName=UK_FED_USER_VC, tableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_USER_VC_REALM_USER, tableName=FED_USER_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-issued-ver-credential-expires-at-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',198,'EXECUTED','9:ab9e4c0c9f21d9217ffe52968a3cf732','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-issued-ver-credential-vc-id-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',199,'EXECUTED','9:1c9b18926e48b4b66d0341400bd13834','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_VC, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-jdbcping-timestamp','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',189,'EXECUTED','9:9a91f62e494bd013594e007b74d01638','addColumn tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-login-failure-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',207,'EXECUTED','9:f554afc6ad14784c99f6ad8811ac30ec','createIndex indexName=IDX_LOGIN_FAILURE_EXPIRE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-login-failure-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',206,'EXECUTED','9:671b50f88904b24ceb02463dd2d0c045','createTable tableName=LOGIN_FAILURE; addPrimaryKey constraintName=PK_LOGIN_FAILURE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-outbox','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',195,'EXECUTED','9:338b2743ca1be95f895d8f9b0cbe7b55','createTable tableName=OUTBOX_ENTRY; addUniqueConstraint constraintName=UC_OUTBOX_KIND_OWNER_CORRELATION, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_DRAIN, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_REALM, tableName=OUTB...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-persistent-auth-session-root-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',202,'EXECUTED','9:3090cd11d2dfeb5df754f41c0ffa35d7','createIndex indexName=IDX_ROOT_AUTH_SESSION_REALM, tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-persistent-auth-session-root-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',201,'EXECUTED','9:ad622d5eebdf468747a0d08d2367a68e','createTable tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-persistent-auth-session-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',203,'EXECUTED','9:609b8a172e43f617bb8920efd2b9ae5f','createTable tableName=AUTH_SESSION; addPrimaryKey constraintName=PK_AUTH_SESSION, tableName=AUTH_SESSION; addForeignKeyConstraint baseTableName=AUTH_SESSION, constraintName=FK_AUTH_SESSION_ROOT, referencedTableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-single-use-object-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',205,'EXECUTED','9:b2ad66c013f48dc131ce109eface7fa5','createIndex indexName=IDX_SINGLE_USE_OBJ_EXPIRE, tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-single-use-object-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:47',204,'EXECUTED','9:22bc4eb8e456b3b7be2808e457a44cb7','createTable tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('26.7.0-verifiable-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-07-30 22:10:46',193,'EXECUTED','9:68d8df23794085e79ba08b5046cba31d','createTable tableName=USER_VER_CREDENTIAL; addPrimaryKey constraintName=CONSTRAINT_VCRED_PM, tableName=USER_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=USER_VER_CREDENTIAL, constraintName=FK_VCRED_USER, referencedTableName=USER_ENTITY; a...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('29399-jdbc-ping-default','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-07-30 22:10:45',153,'EXECUTED','9:007dbe99d7203fca403b89d4edfdf21e','createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2026-07-30 22:10:39',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-07-30 22:10:39',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2026-07-30 22:10:39',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-07-30 22:10:39',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-07-30 22:10:40',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2026-07-30 22:10:40',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2026-07-30 22:10:41',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2026-07-30 22:10:41',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2026-07-30 22:10:41',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2026-07-30 22:10:41',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2026-07-30 22:10:41',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('31296-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',147,'EXECUTED','9:64ef94489d42a358e8304b0e245f0ed4','createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'5417024421'),('31725-index-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-07-30 22:10:45',148,'EXECUTED','9:b994246ec2bf7c94da881e1d28782c7b','createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-30 22:10:41',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-30 22:10:42',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-30 22:10:41',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-07-30 22:10:41',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2026-07-30 22:10:43',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2026-07-30 22:10:43',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2026-07-30 22:10:43',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2026-07-30 22:10:43',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2026-07-30 22:10:43',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2026-07-30 22:10:43',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2026-07-30 22:10:43',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2026-07-30 22:10:43',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('40343-workflow-state-table','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-07-30 22:10:45',165,'EXECUTED','9:ed3ab4723ceed210e5b5e60ac4562106','createTable tableName=WORKFLOW_STATE; addPrimaryKey constraintName=PK_WORKFLOW_STATE, tableName=WORKFLOW_STATE; addUniqueConstraint constraintName=UQ_WORKFLOW_RESOURCE, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_STEP, table...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-30 22:10:43',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-30 22:10:43',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-30 22:10:43',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-30 22:10:43',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-07-30 22:10:43',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-30 22:10:43',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-30 22:10:43',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-30 22:10:43',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-07-30 22:10:43',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-30 22:10:43',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-30 22:10:43',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-30 22:10:43',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-30 22:10:43',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-07-30 22:10:43',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-30 22:10:40',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2026-07-30 22:10:37',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2026-07-30 22:10:37',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-30 22:10:40',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-30 22:10:40',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-30 22:10:40',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-07-30 22:10:40',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2026-07-30 22:10:42',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2026-07-30 22:10:42',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-07-30 22:10:42',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-07-30 22:10:42',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.33.0',NULL,NULL,'5417024421'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2026-07-30 22:10:43',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'5417024421'),('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-30 22:10:44',113,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('client-attributes-string-accomodation-fixed-post-create-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-30 22:10:44',114,'MARK_RAN','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('client-attributes-string-accomodation-fixed-pre-drop-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-07-30 22:10:44',112,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:43',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.33.0',NULL,NULL,'5417024421'),('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'5417024421'),('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-07-30 22:10:44',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.33.0',NULL,NULL,'5417024421'),('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2026-07-30 22:10:43',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.33.0',NULL,NULL,'5417024421'),('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-07-30 22:10:43',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-07-30 22:10:44',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('unique-consentuser','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',139,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('unique-consentuser-edb-migration','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',140,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5417024421'),('unique-consentuser-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-07-30 22:10:44',141,'EXECUTED','9:b79478aad5adaa1bc428e31563f55e8e','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'5417024421');
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
INSERT INTO `default_client_scope` VALUES ('a7863055-f04b-47fe-b68e-4075e5d50b12','14bbfe9c-c589-4448-b3c0-e83e6df4f2ca',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','2165056e-bc18-4292-a542-229176ab4e42',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','227ff154-ca0d-4531-b1e7-ce618f83280e',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','2438ff9f-d118-44c2-9410-bfea69bee845',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','3f35afd4-3824-4f12-8845-e3cf712bef46',0),('a7863055-f04b-47fe-b68e-4075e5d50b12','64088842-1e03-4617-a985-e17aca455cf5',0),('a7863055-f04b-47fe-b68e-4075e5d50b12','990f6b00-9f27-49d3-abd6-8e64e74d629e',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','9ef9f676-badd-4e25-ba0a-4a9c06a92aa3',0),('a7863055-f04b-47fe-b68e-4075e5d50b12','be82c52d-fa14-444f-9e49-b67f818cbc43',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','c97ad829-04b3-4653-8990-2f283afae419',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','d283ca1e-8400-48c1-9111-2831c8fec22e',0),('a7863055-f04b-47fe-b68e-4075e5d50b12','d7c3eaf7-992d-440d-888a-9d07c605d022',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','f908d04c-6719-43a7-ae62-c0f4c548b970',1),('a7863055-f04b-47fe-b68e-4075e5d50b12','fca0b363-fade-4e6e-bef3-e8d8627d9261',0);
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
INSERT INTO `keycloak_role` VALUES ('0e3589ad-81de-4c62-aae8-e4e9cf26678a','a7863055-f04b-47fe-b68e-4075e5d50b12',0,'${role_admin}','admin','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL,NULL),('0fa6512c-9cdc-492d-9ce4-6ce3f0b9b437','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-identity-providers}','manage-identity-providers','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('11419de1-29d4-4405-acf0-32eb24d6fb34','a7863055-f04b-47fe-b68e-4075e5d50b12',0,'${role_offline-access}','offline_access','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL,NULL),('1cff64df-95e2-4513-a0a7-1f5807a2a170','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_view-applications}','view-applications','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','a7863055-f04b-47fe-b68e-4075e5d50b12',0,'${role_default-roles}','default-roles-master','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL,NULL),('255c375c-c5e9-4380-8001-d01647789455','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-clients}','manage-clients','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('589e63c8-40e5-4f96-b99e-a29a1db2bd98','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_impersonation}','impersonation','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('6612a0be-0874-4721-8cff-e64b7f22752f','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-events}','view-events','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('6ccc1566-5227-47d8-8504-227505d76a54','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-organizations}','view-organizations','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('6f3d7545-b2e6-48d6-a076-ab4de7727001','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_manage-account}','manage-account','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('73705074-83d7-4511-b223-62726dc06929','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_create-client}','create-client','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('746477da-6e64-4292-8fab-2ba6d9fd5c38','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_manage-consent}','manage-consent','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('7b2ed9e3-b9ad-4581-a165-fdbcb9c7dc65','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_view-profile}','view-profile','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('7dad3b58-0965-422a-9244-c634a7cb7c0b','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_delete-account}','delete-account','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('7f97a9e3-8052-4cdd-8373-e4114d6889f4','a7863055-f04b-47fe-b68e-4075e5d50b12',0,'${role_uma_authorization}','uma_authorization','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL,NULL),('80540e39-5887-4233-b970-3e4af70a6de4','a7863055-f04b-47fe-b68e-4075e5d50b12',0,'${role_create-realm}','create-realm','a7863055-f04b-47fe-b68e-4075e5d50b12',NULL,NULL),('899ee628-0675-47af-b62b-4aceef218996','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_query-organizations}','query-organizations','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('8a0f6e6f-3bb6-4059-8195-20b31afdd594','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_view-consent}','view-consent','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('8ec1bfbf-36c8-4789-9519-e27d7efaec36','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_query-realms}','query-realms','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('99563b4c-fee4-43d1-b570-b47385f4a623','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_query-users}','query-users','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('99e8d7ab-5e51-4877-8f68-85ab32f0e82e','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-authorization}','manage-authorization','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('b1842347-152f-4a43-a694-22cb6e4f5eda','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-users}','manage-users','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('b4b7d1a9-af0e-4bbb-87fb-04d716c11b6f','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-identity-providers}','view-identity-providers','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('be877e9c-d935-4769-8738-168a86a06178','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-realm}','manage-realm','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('c4b0c088-64f9-404f-a7d7-ca686ac818a9','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_query-clients}','query-clients','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('c4dc057a-af70-4537-a605-cccc40a965ec','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-events}','manage-events','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('c97394a7-f8ba-4aae-9bed-547f5beccf70','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-realm}','view-realm','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('cf645647-e34c-4a01-8bd0-1e272013ac1d','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-authorization}','view-authorization','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('cfc2d816-1269-47d2-9a29-c86a47b6f0e8','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_view-groups}','view-groups','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('d6688b22-60a9-4751-bb4b-b252fb84a11f','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-users}','view-users','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('d86f3701-abf9-4501-be8d-5e66327f9045','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_query-groups}','query-groups','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('dbb7c559-0f3d-4d57-ad88-6c173dcfea5c','458315a4-6cc2-4992-afa2-1c3cefb5eefa',1,'${role_manage-account-links}','manage-account-links','a7863055-f04b-47fe-b68e-4075e5d50b12','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('e5d4fb83-fb7a-46ec-bd7b-d31a6e0a1087','8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd',1,'${role_read-token}','read-token','a7863055-f04b-47fe-b68e-4075e5d50b12','8e6e8f00-c8c1-4d2b-bb34-cbdddbd8b0bd',NULL),('f3c80dd9-9c4c-4768-a93b-86e836fa61fa','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_manage-organizations}','manage-organizations','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL),('fdff7100-34a4-4877-9ffc-c727bb13c8fd','bf161c8b-98e2-4223-96e2-bbe92252ef89',1,'${role_view-clients}','view-clients','a7863055-f04b-47fe-b68e-4075e5d50b12','bf161c8b-98e2-4223-96e2-bbe92252ef89',NULL);
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
INSERT INTO `migration_model` VALUES ('0dvsl','26.7.0',1785417051);
UNLOCK TABLES;

--
-- Dumping data for table `offline_client_session`
--

LOCK TABLES `offline_client_session` WRITE;
INSERT INTO `offline_client_session` VALUES ('6i0hHmxSfZOYkMjWQ6T6uWrq','5ccb92c0-f629-433d-bf1d-52a65ca09678','0',1785417066,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"5ccb92c0-f629-433d-bf1d-52a65ca09678\",\"userSessionStartedAt\":\"1785417066\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785417066\",\"level-of-authentication\":\"-1\"}}','local','local',0,'a7863055-f04b-47fe-b68e-4075e5d50b12'),('gFG6t4Dj9K7V8B-NjZsZwc5k','5ccb92c0-f629-433d-bf1d-52a65ca09678','0',1785417065,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"5ccb92c0-f629-433d-bf1d-52a65ca09678\",\"userSessionStartedAt\":\"1785417065\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785417065\",\"level-of-authentication\":\"-1\"}}','local','local',0,'a7863055-f04b-47fe-b68e-4075e5d50b12'),('OIIUuRwmkIn6C1TG6Q1TPFG5','5ccb92c0-f629-433d-bf1d-52a65ca09678','0',1785417062,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"5ccb92c0-f629-433d-bf1d-52a65ca09678\",\"userSessionStartedAt\":\"1785417062\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785417062\",\"level-of-authentication\":\"-1\"}}','local','local',0,'a7863055-f04b-47fe-b68e-4075e5d50b12'),('S9AZcz4SVDcI_BV2rf3qvIyv','5ccb92c0-f629-433d-bf1d-52a65ca09678','0',1785417065,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"5ccb92c0-f629-433d-bf1d-52a65ca09678\",\"userSessionStartedAt\":\"1785417065\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785417065\",\"level-of-authentication\":\"-1\"}}','local','local',0,'a7863055-f04b-47fe-b68e-4075e5d50b12'),('W6Nzhx1dG3Q6YZlmsZQbYorv','5ccb92c0-f629-433d-bf1d-52a65ca09678','0',1785417061,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"5ccb92c0-f629-433d-bf1d-52a65ca09678\",\"userSessionStartedAt\":\"1785417061\",\"iss\":\"http://keycloak:8080/auth/realms/master\",\"startedAt\":\"1785417061\",\"level-of-authentication\":\"-1\"}}','local','local',0,'a7863055-f04b-47fe-b68e-4075e5d50b12');
UNLOCK TABLES;

--
-- Dumping data for table `offline_user_session`
--

LOCK TABLES `offline_user_session` WRITE;
INSERT INTO `offline_user_session` VALUES ('6i0hHmxSfZOYkMjWQ6T6uWrq','295f8edf-7870-4e20-b95a-5fe76fe91317','a7863055-f04b-47fe-b68e-4075e5d50b12',1785417066,'0','{\"ipAddress\":\"192.168.16.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjE2LjE4Iiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzQiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"48909b37-c46c-4e22-9749-4f2931aa905e\\\":1785417066,\\\"9bc5cd67-d30a-462e-860f-12748593047b\\\":1785417066}\"},\"state\":\"LOGGED_IN\"}',1785417066,NULL,0,0),('gFG6t4Dj9K7V8B-NjZsZwc5k','295f8edf-7870-4e20-b95a-5fe76fe91317','a7863055-f04b-47fe-b68e-4075e5d50b12',1785417065,'0','{\"ipAddress\":\"192.168.16.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjE2LjE4Iiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzQiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"48909b37-c46c-4e22-9749-4f2931aa905e\\\":1785417065,\\\"9bc5cd67-d30a-462e-860f-12748593047b\\\":1785417065}\"},\"state\":\"LOGGED_IN\"}',1785417065,NULL,0,0),('OIIUuRwmkIn6C1TG6Q1TPFG5','295f8edf-7870-4e20-b95a-5fe76fe91317','a7863055-f04b-47fe-b68e-4075e5d50b12',1785417062,'0','{\"ipAddress\":\"192.168.16.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjE2LjE4Iiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzQiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"48909b37-c46c-4e22-9749-4f2931aa905e\\\":1785417062,\\\"9bc5cd67-d30a-462e-860f-12748593047b\\\":1785417062}\"},\"state\":\"LOGGED_IN\"}',1785417062,NULL,0,0),('S9AZcz4SVDcI_BV2rf3qvIyv','295f8edf-7870-4e20-b95a-5fe76fe91317','a7863055-f04b-47fe-b68e-4075e5d50b12',1785417065,'0','{\"ipAddress\":\"192.168.16.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjE2LjE4Iiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzQiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"48909b37-c46c-4e22-9749-4f2931aa905e\\\":1785417065,\\\"9bc5cd67-d30a-462e-860f-12748593047b\\\":1785417065}\"},\"state\":\"LOGGED_IN\"}',1785417065,NULL,0,0),('W6Nzhx1dG3Q6YZlmsZQbYorv','295f8edf-7870-4e20-b95a-5fe76fe91317','a7863055-f04b-47fe-b68e-4075e5d50b12',1785417061,'0','{\"ipAddress\":\"192.168.16.18\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxOTIuMTY4LjE2LjE4Iiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uIFJlcXVlc3RzLzIuMzQiLCJkZXZpY2UiOiJPdGhlciIsImxhc3RBY2Nlc3MiOjAsIm1vYmlsZSI6ZmFsc2V9\",\"authenticators-completed\":\"{\\\"48909b37-c46c-4e22-9749-4f2931aa905e\\\":1785417061,\\\"9bc5cd67-d30a-462e-860f-12748593047b\\\":1785417061}\"},\"state\":\"LOGGED_IN\"}',1785417061,NULL,0,0);
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
INSERT INTO `protocol_mapper` VALUES ('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('01549626-63db-461d-9bca-0585cfc1dd65','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'f908d04c-6719-43a7-ae62-c0f4c548b970'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('0de3c588-afcb-4681-af5e-f0dfb678973a','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'9ef9f676-badd-4e25-ba0a-4a9c06a92aa3'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('17e1289c-b355-4df6-b280-96d533fdde0e','address','openid-connect','oidc-address-mapper',NULL,'fca0b363-fade-4e6e-bef3-e8d8627d9261'),('3c15d572-4552-40ff-8522-e13938a44c4f','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'be82c52d-fa14-444f-9e49-b67f818cbc43'),('41320036-875b-462d-8ebd-3851d7e20d10','audience-_platform','openid-connect','oidc-audience-mapper','e9f9d46b-0be1-4f73-b7bf-b9d475fca755',NULL),('4b034fae-af3f-4676-8a60-6628e9b86e69','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('502b1c30-b7ee-4802-af4f-1a1042b40125','organization','saml','saml-organization-membership-mapper',NULL,'227ff154-ca0d-4531-b1e7-ce618f83280e'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'f908d04c-6719-43a7-ae62-c0f4c548b970'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','locale','openid-connect','oidc-usermodel-attribute-mapper','e9f9d46b-0be1-4f73-b7bf-b9d475fca755',NULL),('6170c40f-e1c4-4e19-a237-6401a9df8300','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('63ed2398-bc23-495c-930b-cd92ddc24dd5','full name','openid-connect','oidc-full-name-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('691901bd-362b-4821-85e1-eb5b079fb44b','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('6a60de04-9256-4ac3-a441-deede040792e','sub','openid-connect','oidc-sub-mapper',NULL,'2438ff9f-d118-44c2-9410-bfea69bee845'),('778d7399-7b74-4f7a-bb58-f1adb46164a5','audience resolve','openid-connect','oidc-audience-resolve-mapper','c719dac6-f61c-44c5-a0c8-1743f753b115',NULL),('7a65920e-ba6d-4008-8031-a8a91155794f','audience-_platform','openid-connect','oidc-audience-mapper','458315a4-6cc2-4992-afa2-1c3cefb5eefa',NULL),('7d57462a-9cb1-4ad7-91f3-f8434237ca67','audience-_platform','openid-connect','oidc-audience-mapper','41a9f940-60b5-4cf0-9989-2e39b8433bf4',NULL),('7e6e1443-8a76-4529-a81a-feef06e14955','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','0cf3924f-847d-4a6e-b01f-848f9c2bdf15',NULL),('8f8b1ce2-014d-47e9-8b27-d1b0a0ce5081','acr loa level','openid-connect','oidc-acr-mapper',NULL,'14bbfe9c-c589-4448-b3c0-e83e6df4f2ca'),('94edab9a-516d-416c-9c5a-5ff208877bca','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','0cf3924f-847d-4a6e-b01f-848f9c2bdf15',NULL),('966fd729-d21b-40ab-ba19-336406903fa7','Client ID','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'f9cbcffc-2686-4337-919f-a79828568b90'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','0cf3924f-847d-4a6e-b01f-848f9c2bdf15',NULL),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'9ef9f676-badd-4e25-ba0a-4a9c06a92aa3'),('b0d10184-bb9d-45d7-a091-82a03602e74b','audience-_platform','openid-connect','oidc-audience-mapper','5ccb92c0-f629-433d-bf1d-52a65ca09678',NULL),('cfc652b0-8294-4698-ba72-0084edf3e1e1','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('d207411f-6e3d-45ae-855c-e7fb533e5642','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'be82c52d-fa14-444f-9e49-b67f818cbc43'),('d9bf9adb-b141-4a12-8b87-d3adb45d1d73','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'be82c52d-fa14-444f-9e49-b67f818cbc43'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f35afd4-3824-4f12-8845-e3cf712bef46'),('db8c2270-3d36-48ed-a705-6b73f74cbfd3','role list','saml','saml-role-list-mapper',NULL,'d7c3eaf7-992d-440d-888a-9d07c605d022'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','organization','openid-connect','oidc-organization-membership-mapper',NULL,'64088842-1e03-4617-a985-e17aca455cf5'),('e3e09c0a-59d0-430b-9ecb-713096ecde2f','audience-_platform','openid-connect','oidc-audience-mapper','9dff260d-226b-4d33-af0f-5a0903b2a89b',NULL),('e68c40d2-a40f-4a76-976e-722c2b656e9b','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'2438ff9f-d118-44c2-9410-bfea69bee845'),('e86c0df3-e336-4c8f-b944-633edd5571d8','Client Host','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'f9cbcffc-2686-4337-919f-a79828568b90'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'990f6b00-9f27-49d3-abd6-8e64e74d629e'),('f37ff82c-8364-46ac-b37e-69266c602926','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'f9cbcffc-2686-4337-919f-a79828568b90'),('f41e15dc-2005-4d40-b422-68ce17e95d2a','audience-_platform','openid-connect','oidc-audience-mapper','c719dac6-f61c-44c5-a0c8-1743f753b115',NULL),('f4cf62ec-4200-4af7-8de6-fd2c4c2612f4','audience-_platform','openid-connect','oidc-audience-mapper','0cf3924f-847d-4a6e-b01f-848f9c2bdf15',NULL),('f6dfb881-385e-404c-b27e-ab1f4365891d','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'3f35afd4-3824-4f12-8845-e3cf712bef46'),('fac73940-01ed-4ec9-852e-88f216dc8a30','AuthnContextClassRef','saml','saml-authn-context-class-ref-mapper',NULL,'2165056e-bc18-4292-a542-229176ab4e42'),('fdf78bd8-7d70-434f-8553-3af0e49745b9','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'c97ad829-04b3-4653-8990-2f283afae419');
UNLOCK TABLES;

--
-- Dumping data for table `protocol_mapper_config`
--

LOCK TABLES `protocol_mapper_config` WRITE;
INSERT INTO `protocol_mapper_config` VALUES ('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','true','access.token.claim'),('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','locale','claim.name'),('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','true','id.token.claim'),('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','true','introspection.token.claim'),('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','String','jsonType.label'),('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','locale','user.attribute'),('0139edb4-ad5b-47e9-b5ec-6a145eac0f0b','true','userinfo.token.claim'),('01549626-63db-461d-9bca-0585cfc1dd65','true','access.token.claim'),('01549626-63db-461d-9bca-0585cfc1dd65','middle_name','claim.name'),('01549626-63db-461d-9bca-0585cfc1dd65','true','id.token.claim'),('01549626-63db-461d-9bca-0585cfc1dd65','true','introspection.token.claim'),('01549626-63db-461d-9bca-0585cfc1dd65','String','jsonType.label'),('01549626-63db-461d-9bca-0585cfc1dd65','middleName','user.attribute'),('01549626-63db-461d-9bca-0585cfc1dd65','true','userinfo.token.claim'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','true','access.token.claim'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','email','claim.name'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','true','id.token.claim'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','true','introspection.token.claim'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','String','jsonType.label'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','email','user.attribute'),('03791754-38ac-44ea-9eef-bc2e1a1a70fb','true','userinfo.token.claim'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','true','access.token.claim'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','birthdate','claim.name'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','true','id.token.claim'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','true','introspection.token.claim'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','String','jsonType.label'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','birthdate','user.attribute'),('09bfb1ca-1a4c-44f3-9009-f760ed845972','true','userinfo.token.claim'),('0de3c588-afcb-4681-af5e-f0dfb678973a','true','access.token.claim'),('0de3c588-afcb-4681-af5e-f0dfb678973a','upn','claim.name'),('0de3c588-afcb-4681-af5e-f0dfb678973a','true','id.token.claim'),('0de3c588-afcb-4681-af5e-f0dfb678973a','true','introspection.token.claim'),('0de3c588-afcb-4681-af5e-f0dfb678973a','String','jsonType.label'),('0de3c588-afcb-4681-af5e-f0dfb678973a','username','user.attribute'),('0de3c588-afcb-4681-af5e-f0dfb678973a','true','userinfo.token.claim'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','true','access.token.claim'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','given_name','claim.name'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','true','id.token.claim'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','true','introspection.token.claim'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','String','jsonType.label'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','firstName','user.attribute'),('0e7b56a9-67a4-4009-a066-a9517dc6b48c','true','userinfo.token.claim'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','true','access.token.claim'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','updated_at','claim.name'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','true','id.token.claim'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','true','introspection.token.claim'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','long','jsonType.label'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','updatedAt','user.attribute'),('10cccc03-5d2c-44a9-a706-4ff85287bf3c','true','userinfo.token.claim'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','true','access.token.claim'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','zoneinfo','claim.name'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','true','id.token.claim'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','true','introspection.token.claim'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','String','jsonType.label'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','zoneinfo','user.attribute'),('11e6ab91-8fb5-4965-9afb-7d33e4ec5413','true','userinfo.token.claim'),('17e1289c-b355-4df6-b280-96d533fdde0e','true','access.token.claim'),('17e1289c-b355-4df6-b280-96d533fdde0e','true','id.token.claim'),('17e1289c-b355-4df6-b280-96d533fdde0e','true','introspection.token.claim'),('17e1289c-b355-4df6-b280-96d533fdde0e','country','user.attribute.country'),('17e1289c-b355-4df6-b280-96d533fdde0e','formatted','user.attribute.formatted'),('17e1289c-b355-4df6-b280-96d533fdde0e','locality','user.attribute.locality'),('17e1289c-b355-4df6-b280-96d533fdde0e','postal_code','user.attribute.postal_code'),('17e1289c-b355-4df6-b280-96d533fdde0e','region','user.attribute.region'),('17e1289c-b355-4df6-b280-96d533fdde0e','street','user.attribute.street'),('17e1289c-b355-4df6-b280-96d533fdde0e','true','userinfo.token.claim'),('3c15d572-4552-40ff-8522-e13938a44c4f','true','access.token.claim'),('3c15d572-4552-40ff-8522-e13938a44c4f','resource_access.${client_id}.roles','claim.name'),('3c15d572-4552-40ff-8522-e13938a44c4f','true','introspection.token.claim'),('3c15d572-4552-40ff-8522-e13938a44c4f','String','jsonType.label'),('3c15d572-4552-40ff-8522-e13938a44c4f','true','multivalued'),('3c15d572-4552-40ff-8522-e13938a44c4f','foo','user.attribute'),('41320036-875b-462d-8ebd-3851d7e20d10','true','access.token.claim'),('41320036-875b-462d-8ebd-3851d7e20d10','false','id.token.claim'),('41320036-875b-462d-8ebd-3851d7e20d10','_platform','included.client.audience'),('4b034fae-af3f-4676-8a60-6628e9b86e69','true','access.token.claim'),('4b034fae-af3f-4676-8a60-6628e9b86e69','nickname','claim.name'),('4b034fae-af3f-4676-8a60-6628e9b86e69','true','id.token.claim'),('4b034fae-af3f-4676-8a60-6628e9b86e69','true','introspection.token.claim'),('4b034fae-af3f-4676-8a60-6628e9b86e69','String','jsonType.label'),('4b034fae-af3f-4676-8a60-6628e9b86e69','nickname','user.attribute'),('4b034fae-af3f-4676-8a60-6628e9b86e69','true','userinfo.token.claim'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','true','access.token.claim'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','email_verified','claim.name'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','true','id.token.claim'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','true','introspection.token.claim'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','boolean','jsonType.label'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','emailVerified','user.attribute'),('557ba1d4-49fa-4f3b-85ed-96ace5ebb0f4','true','userinfo.token.claim'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','true','access.token.claim'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','locale','claim.name'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','true','id.token.claim'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','true','introspection.token.claim'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','String','jsonType.label'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','locale','user.attribute'),('5d2c6f2a-a044-4b2a-a70f-15e15d2bc0da','true','userinfo.token.claim'),('6170c40f-e1c4-4e19-a237-6401a9df8300','true','access.token.claim'),('6170c40f-e1c4-4e19-a237-6401a9df8300','family_name','claim.name'),('6170c40f-e1c4-4e19-a237-6401a9df8300','true','id.token.claim'),('6170c40f-e1c4-4e19-a237-6401a9df8300','true','introspection.token.claim'),('6170c40f-e1c4-4e19-a237-6401a9df8300','String','jsonType.label'),('6170c40f-e1c4-4e19-a237-6401a9df8300','lastName','user.attribute'),('6170c40f-e1c4-4e19-a237-6401a9df8300','true','userinfo.token.claim'),('63ed2398-bc23-495c-930b-cd92ddc24dd5','true','access.token.claim'),('63ed2398-bc23-495c-930b-cd92ddc24dd5','true','id.token.claim'),('63ed2398-bc23-495c-930b-cd92ddc24dd5','true','introspection.token.claim'),('63ed2398-bc23-495c-930b-cd92ddc24dd5','true','userinfo.token.claim'),('691901bd-362b-4821-85e1-eb5b079fb44b','true','access.token.claim'),('691901bd-362b-4821-85e1-eb5b079fb44b','preferred_username','claim.name'),('691901bd-362b-4821-85e1-eb5b079fb44b','true','id.token.claim'),('691901bd-362b-4821-85e1-eb5b079fb44b','true','introspection.token.claim'),('691901bd-362b-4821-85e1-eb5b079fb44b','String','jsonType.label'),('691901bd-362b-4821-85e1-eb5b079fb44b','username','user.attribute'),('691901bd-362b-4821-85e1-eb5b079fb44b','true','userinfo.token.claim'),('6a60de04-9256-4ac3-a441-deede040792e','true','access.token.claim'),('6a60de04-9256-4ac3-a441-deede040792e','true','introspection.token.claim'),('7a65920e-ba6d-4008-8031-a8a91155794f','true','access.token.claim'),('7a65920e-ba6d-4008-8031-a8a91155794f','false','id.token.claim'),('7a65920e-ba6d-4008-8031-a8a91155794f','_platform','included.client.audience'),('7d57462a-9cb1-4ad7-91f3-f8434237ca67','true','access.token.claim'),('7d57462a-9cb1-4ad7-91f3-f8434237ca67','false','id.token.claim'),('7d57462a-9cb1-4ad7-91f3-f8434237ca67','_platform','included.client.audience'),('7e6e1443-8a76-4529-a81a-feef06e14955','true','access.token.claim'),('7e6e1443-8a76-4529-a81a-feef06e14955','clientAddress','claim.name'),('7e6e1443-8a76-4529-a81a-feef06e14955','true','id.token.claim'),('7e6e1443-8a76-4529-a81a-feef06e14955','String','jsonType.label'),('7e6e1443-8a76-4529-a81a-feef06e14955','clientAddress','user.session.note'),('7e6e1443-8a76-4529-a81a-feef06e14955','true','userinfo.token.claim'),('8f8b1ce2-014d-47e9-8b27-d1b0a0ce5081','true','access.token.claim'),('8f8b1ce2-014d-47e9-8b27-d1b0a0ce5081','true','id.token.claim'),('8f8b1ce2-014d-47e9-8b27-d1b0a0ce5081','true','introspection.token.claim'),('94edab9a-516d-416c-9c5a-5ff208877bca','true','access.token.claim'),('94edab9a-516d-416c-9c5a-5ff208877bca','clientId','claim.name'),('94edab9a-516d-416c-9c5a-5ff208877bca','true','id.token.claim'),('94edab9a-516d-416c-9c5a-5ff208877bca','String','jsonType.label'),('94edab9a-516d-416c-9c5a-5ff208877bca','clientId','user.session.note'),('94edab9a-516d-416c-9c5a-5ff208877bca','true','userinfo.token.claim'),('966fd729-d21b-40ab-ba19-336406903fa7','true','access.token.claim'),('966fd729-d21b-40ab-ba19-336406903fa7','client_id','claim.name'),('966fd729-d21b-40ab-ba19-336406903fa7','true','id.token.claim'),('966fd729-d21b-40ab-ba19-336406903fa7','true','introspection.token.claim'),('966fd729-d21b-40ab-ba19-336406903fa7','String','jsonType.label'),('966fd729-d21b-40ab-ba19-336406903fa7','client_id','user.session.note'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','true','access.token.claim'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','website','claim.name'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','true','id.token.claim'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','true','introspection.token.claim'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','String','jsonType.label'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','website','user.attribute'),('96de6dea-4ae6-4b3d-a7f0-b996d0664d4f','true','userinfo.token.claim'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','true','access.token.claim'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','clientHost','claim.name'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','true','id.token.claim'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','String','jsonType.label'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','clientHost','user.session.note'),('a8be1e09-8c3a-44c4-b800-c114c861bc0c','true','userinfo.token.claim'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','true','access.token.claim'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','groups','claim.name'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','true','id.token.claim'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','true','introspection.token.claim'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','String','jsonType.label'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','true','multivalued'),('b03a49c4-5dc0-4e2f-baa8-7ebaacb44a26','foo','user.attribute'),('b0d10184-bb9d-45d7-a091-82a03602e74b','true','access.token.claim'),('b0d10184-bb9d-45d7-a091-82a03602e74b','false','id.token.claim'),('b0d10184-bb9d-45d7-a091-82a03602e74b','_platform','included.client.audience'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','true','access.token.claim'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','profile','claim.name'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','true','id.token.claim'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','true','introspection.token.claim'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','String','jsonType.label'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','profile','user.attribute'),('cfc652b0-8294-4698-ba72-0084edf3e1e1','true','userinfo.token.claim'),('d207411f-6e3d-45ae-855c-e7fb533e5642','true','access.token.claim'),('d207411f-6e3d-45ae-855c-e7fb533e5642','picture','claim.name'),('d207411f-6e3d-45ae-855c-e7fb533e5642','true','id.token.claim'),('d207411f-6e3d-45ae-855c-e7fb533e5642','true','introspection.token.claim'),('d207411f-6e3d-45ae-855c-e7fb533e5642','String','jsonType.label'),('d207411f-6e3d-45ae-855c-e7fb533e5642','picture','user.attribute'),('d207411f-6e3d-45ae-855c-e7fb533e5642','true','userinfo.token.claim'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','true','access.token.claim'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','realm_access.roles','claim.name'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','true','introspection.token.claim'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','String','jsonType.label'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','true','multivalued'),('d2e9ed59-3b37-4246-9d68-ffd389a2d055','foo','user.attribute'),('d9bf9adb-b141-4a12-8b87-d3adb45d1d73','true','access.token.claim'),('d9bf9adb-b141-4a12-8b87-d3adb45d1d73','true','introspection.token.claim'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','true','access.token.claim'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','phone_number_verified','claim.name'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','true','id.token.claim'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','true','introspection.token.claim'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','boolean','jsonType.label'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','phoneNumberVerified','user.attribute'),('daffb209-e0a2-4e3d-9c6d-d96e67f4237c','true','userinfo.token.claim'),('db8c2270-3d36-48ed-a705-6b73f74cbfd3','Role','attribute.name'),('db8c2270-3d36-48ed-a705-6b73f74cbfd3','Basic','attribute.nameformat'),('db8c2270-3d36-48ed-a705-6b73f74cbfd3','false','single'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','true','access.token.claim'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','organization','claim.name'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','true','id.token.claim'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','true','introspection.token.claim'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','String','jsonType.label'),('e1381961-6eb7-4476-b6e2-46aeae2c2215','true','multivalued'),('e3e09c0a-59d0-430b-9ecb-713096ecde2f','true','access.token.claim'),('e3e09c0a-59d0-430b-9ecb-713096ecde2f','false','id.token.claim'),('e3e09c0a-59d0-430b-9ecb-713096ecde2f','_platform','included.client.audience'),('e3e09c0a-59d0-430b-9ecb-713096ecde2f','true','introspection.token.claim'),('e3e09c0a-59d0-430b-9ecb-713096ecde2f','false','userinfo.token.claim'),('e68c40d2-a40f-4a76-976e-722c2b656e9b','true','access.token.claim'),('e68c40d2-a40f-4a76-976e-722c2b656e9b','auth_time','claim.name'),('e68c40d2-a40f-4a76-976e-722c2b656e9b','true','id.token.claim'),('e68c40d2-a40f-4a76-976e-722c2b656e9b','true','introspection.token.claim'),('e68c40d2-a40f-4a76-976e-722c2b656e9b','long','jsonType.label'),('e68c40d2-a40f-4a76-976e-722c2b656e9b','AUTH_TIME','user.session.note'),('e86c0df3-e336-4c8f-b944-633edd5571d8','true','access.token.claim'),('e86c0df3-e336-4c8f-b944-633edd5571d8','clientHost','claim.name'),('e86c0df3-e336-4c8f-b944-633edd5571d8','true','id.token.claim'),('e86c0df3-e336-4c8f-b944-633edd5571d8','true','introspection.token.claim'),('e86c0df3-e336-4c8f-b944-633edd5571d8','String','jsonType.label'),('e86c0df3-e336-4c8f-b944-633edd5571d8','clientHost','user.session.note'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','true','access.token.claim'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','gender','claim.name'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','true','id.token.claim'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','true','introspection.token.claim'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','String','jsonType.label'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','gender','user.attribute'),('efbcf722-b612-4204-bca3-fb7b2384dfe0','true','userinfo.token.claim'),('f37ff82c-8364-46ac-b37e-69266c602926','true','access.token.claim'),('f37ff82c-8364-46ac-b37e-69266c602926','clientAddress','claim.name'),('f37ff82c-8364-46ac-b37e-69266c602926','true','id.token.claim'),('f37ff82c-8364-46ac-b37e-69266c602926','true','introspection.token.claim'),('f37ff82c-8364-46ac-b37e-69266c602926','String','jsonType.label'),('f37ff82c-8364-46ac-b37e-69266c602926','clientAddress','user.session.note'),('f41e15dc-2005-4d40-b422-68ce17e95d2a','true','access.token.claim'),('f41e15dc-2005-4d40-b422-68ce17e95d2a','false','id.token.claim'),('f41e15dc-2005-4d40-b422-68ce17e95d2a','_platform','included.client.audience'),('f4cf62ec-4200-4af7-8de6-fd2c4c2612f4','true','access.token.claim'),('f4cf62ec-4200-4af7-8de6-fd2c4c2612f4','false','id.token.claim'),('f4cf62ec-4200-4af7-8de6-fd2c4c2612f4','_platform','included.client.audience'),('f4cf62ec-4200-4af7-8de6-fd2c4c2612f4','true','introspection.token.claim'),('f4cf62ec-4200-4af7-8de6-fd2c4c2612f4','false','userinfo.token.claim'),('f6dfb881-385e-404c-b27e-ab1f4365891d','true','access.token.claim'),('f6dfb881-385e-404c-b27e-ab1f4365891d','phone_number','claim.name'),('f6dfb881-385e-404c-b27e-ab1f4365891d','true','id.token.claim'),('f6dfb881-385e-404c-b27e-ab1f4365891d','true','introspection.token.claim'),('f6dfb881-385e-404c-b27e-ab1f4365891d','String','jsonType.label'),('f6dfb881-385e-404c-b27e-ab1f4365891d','phoneNumber','user.attribute'),('f6dfb881-385e-404c-b27e-ab1f4365891d','true','userinfo.token.claim'),('fdf78bd8-7d70-434f-8553-3af0e49745b9','true','access.token.claim'),('fdf78bd8-7d70-434f-8553-3af0e49745b9','true','introspection.token.claim');
UNLOCK TABLES;

--
-- Dumping data for table `realm`
--

LOCK TABLES `realm` WRITE;
INSERT INTO `realm` VALUES ('a7863055-f04b-47fe-b68e-4075e5d50b12',60,300,60,NULL,NULL,NULL,1,0,0,'exastro','master',0,NULL,0,0,0,0,'NONE',86400,86400,0,0,'bf161c8b-98e2-4223-96e2-bbe92252ef89',1800,1,'ja',0,0,0,0,0,1,30,6,'HmacSHA1','totp','552429b4-4b5e-4e4d-85ce-6497bd750f26','5492b807-19ac-4322-9e0f-b0b90a8ba537','fa25d70d-e448-48a9-9b69-2522923417a2','4f1f1aa4-d0c0-49c0-9ed4-d983721d8384','1d944405-a9fa-40a3-abb9-0c547065c701',31536000,0,900,1,0,'760eef92-4719-42fd-b695-3a4bcf153e41',0,0,0,0,'24743d43-d6f4-44f8-ae4f-18f489e34dbe','Keycloak');
UNLOCK TABLES;

--
-- Dumping data for table `realm_attribute`
--

LOCK TABLES `realm_attribute` WRITE;
INSERT INTO `realm_attribute` VALUES ('_browser_header.contentSecurityPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),('_browser_header.contentSecurityPolicyReportOnly','a7863055-f04b-47fe-b68e-4075e5d50b12',''),('_browser_header.referrerPolicy','a7863055-f04b-47fe-b68e-4075e5d50b12','no-referrer'),('_browser_header.strictTransportSecurity','a7863055-f04b-47fe-b68e-4075e5d50b12','max-age=31536000; includeSubDomains'),('_browser_header.xContentTypeOptions','a7863055-f04b-47fe-b68e-4075e5d50b12','nosniff'),('_browser_header.xFrameOptions','a7863055-f04b-47fe-b68e-4075e5d50b12','SAMEORIGIN'),('_browser_header.xRobotsTag','a7863055-f04b-47fe-b68e-4075e5d50b12','none'),('bruteForceProtected','a7863055-f04b-47fe-b68e-4075e5d50b12','false'),('bruteForceStrategy','a7863055-f04b-47fe-b68e-4075e5d50b12','MULTIPLE'),('cibaAuthRequestedUserHint','a7863055-f04b-47fe-b68e-4075e5d50b12','login_hint'),('cibaBackchannelTokenDeliveryMode','a7863055-f04b-47fe-b68e-4075e5d50b12','poll'),('cibaExpiresIn','a7863055-f04b-47fe-b68e-4075e5d50b12','120'),('cibaInterval','a7863055-f04b-47fe-b68e-4075e5d50b12','5'),('defaultSignatureAlgorithm','a7863055-f04b-47fe-b68e-4075e5d50b12','RS256'),('displayNameHtml','a7863055-f04b-47fe-b68e-4075e5d50b12','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),('failureFactor','a7863055-f04b-47fe-b68e-4075e5d50b12','30'),('firstBrokerLoginFlowId','a7863055-f04b-47fe-b68e-4075e5d50b12','0a37772d-79fb-480a-9148-0d45d30487e8'),('maxDeltaTimeSeconds','a7863055-f04b-47fe-b68e-4075e5d50b12','43200'),('maxFailureWaitSeconds','a7863055-f04b-47fe-b68e-4075e5d50b12','900'),('maxSecondaryAuthFailures','a7863055-f04b-47fe-b68e-4075e5d50b12','0'),('maxTemporaryLockouts','a7863055-f04b-47fe-b68e-4075e5d50b12','0'),('minimumQuickLoginWaitSeconds','a7863055-f04b-47fe-b68e-4075e5d50b12','60'),('oauth2DeviceCodeLifespan','a7863055-f04b-47fe-b68e-4075e5d50b12','600'),('oauth2DevicePollingInterval','a7863055-f04b-47fe-b68e-4075e5d50b12','5'),('offlineSessionMaxLifespan','a7863055-f04b-47fe-b68e-4075e5d50b12','31536000'),('offlineSessionMaxLifespanEnabled','a7863055-f04b-47fe-b68e-4075e5d50b12','true'),('parRequestUriLifespan','a7863055-f04b-47fe-b68e-4075e5d50b12','60'),('permanentLockout','a7863055-f04b-47fe-b68e-4075e5d50b12','false'),('quickLoginCheckMilliSeconds','a7863055-f04b-47fe-b68e-4075e5d50b12','1000'),('realmReusableOtpCode','a7863055-f04b-47fe-b68e-4075e5d50b12','false'),('waitIncrementSeconds','a7863055-f04b-47fe-b68e-4075e5d50b12','60');
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
INSERT INTO `realm_events_listeners` VALUES ('a7863055-f04b-47fe-b68e-4075e5d50b12','jboss-logging');
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
INSERT INTO `realm_required_credential` VALUES ('password','password',1,1,'a7863055-f04b-47fe-b68e-4075e5d50b12');
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
INSERT INTO `realm_supported_locales` VALUES ('a7863055-f04b-47fe-b68e-4075e5d50b12','en'),('a7863055-f04b-47fe-b68e-4075e5d50b12','ja');
UNLOCK TABLES;

--
-- Dumping data for table `redirect_uris`
--

LOCK TABLES `redirect_uris` WRITE;
INSERT INTO `redirect_uris` VALUES ('41a9f940-60b5-4cf0-9989-2e39b8433bf4','/*'),('458315a4-6cc2-4992-afa2-1c3cefb5eefa','/realms/master/account/*'),('c719dac6-f61c-44c5-a0c8-1743f753b115','/realms/master/account/*'),('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','/admin/master/console/*');
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
INSERT INTO `required_action_provider` VALUES ('07ee0ad1-ab9d-41fc-9660-b836190fca04','idp_link','Linking Identity Provider','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'idp_link',120),('19ab2526-23e2-4f49-8145-c29d85bb8eb4','CONFIGURE_RECOVERY_AUTHN_CODES','Recovery Authentication Codes','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'CONFIGURE_RECOVERY_AUTHN_CODES',130),('261e1016-b452-4925-a59a-ca3b9a3194b6','VERIFY_PROFILE','Verify Profile','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'VERIFY_PROFILE',100),('2cc86a61-91a8-4385-b184-cf2ec855ba69','UPDATE_EMAIL','Update Email','a7863055-f04b-47fe-b68e-4075e5d50b12',0,0,'UPDATE_EMAIL',70),('486f5dd5-e15a-4d28-b6bc-a6f444d74bfa','TERMS_AND_CONDITIONS','Terms and Conditions','a7863055-f04b-47fe-b68e-4075e5d50b12',0,0,'TERMS_AND_CONDITIONS',20),('4b70a725-c6e7-4258-9eee-10d51d835aa8','webauthn-register','Webauthn Register','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'webauthn-register',80),('4ddd212c-0fc3-4270-b190-facd0b548b1a','delete_account','Delete Account','a7863055-f04b-47fe-b68e-4075e5d50b12',0,0,'delete_account',60),('6545b86c-ea80-4b76-b30d-ee63704655e1','webauthn-register-passwordless','Webauthn Register Passwordless','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'webauthn-register-passwordless',90),('6b74a589-7e72-46c9-b566-cc77b2178a77','UPDATE_PROFILE','Update Profile','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'UPDATE_PROFILE',40),('7bbd3093-7730-4132-bad7-aac821606913','delete_credential','Delete Credential','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'delete_credential',110),('a1cdce23-f811-4c5f-8a29-95a979e138a3','CONFIGURE_TOTP','Configure OTP','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'CONFIGURE_TOTP',54),('aceab8f9-2039-4847-8876-e561440f57ff','VERIFY_EMAIL','Verify Email','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'VERIFY_EMAIL',50),('ad71b064-1263-47bb-b847-949692f1316b','update_user_locale','Update User Locale','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'update_user_locale',1000),('c079141f-3f26-4ef3-9577-2aab41ec2927','UPDATE_PASSWORD','Update Password','a7863055-f04b-47fe-b68e-4075e5d50b12',1,0,'UPDATE_PASSWORD',57);
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
INSERT INTO `scope_mapping` VALUES ('c719dac6-f61c-44c5-a0c8-1743f753b115','6f3d7545-b2e6-48d6-a076-ab4de7727001'),('c719dac6-f61c-44c5-a0c8-1743f753b115','cfc2d816-1269-47d2-9a29-c86a47b6f0e8');
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
INSERT INTO `user_attribute` VALUES ('is_temporary_admin','true','295f8edf-7870-4e20-b95a-5fe76fe91317','08fa342a-d50a-44d6-b623-b86276f7fd5a',NULL,NULL,NULL);
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
INSERT INTO `user_entity` VALUES ('295f8edf-7870-4e20-b95a-5fe76fe91317',NULL,'246b20d2-c385-4839-b309-40e77fba29ab',0,1,NULL,NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','admin',1785417055107,NULL,0,1785417055107),('b9512fd7-d42d-4551-a4ee-79b179db50cd',NULL,'b50a48ab-db3d-43b1-8006-3340aa5ada19',0,1,NULL,NULL,NULL,'a7863055-f04b-47fe-b68e-4075e5d50b12','service-account-_platform',1785417063343,'0cf3924f-847d-4a6e-b01f-848f9c2bdf15',0,1785417063343);
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
INSERT INTO `user_role_mapping` VALUES ('0e3589ad-81de-4c62-aae8-e4e9cf26678a','295f8edf-7870-4e20-b95a-5fe76fe91317'),('0e3589ad-81de-4c62-aae8-e4e9cf26678a','b9512fd7-d42d-4551-a4ee-79b179db50cd'),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','295f8edf-7870-4e20-b95a-5fe76fe91317'),('24743d43-d6f4-44f8-ae4f-18f489e34dbe','b9512fd7-d42d-4551-a4ee-79b179db50cd');
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
INSERT INTO `web_origins` VALUES ('e9f9d46b-0be1-4f73-b7bf-b9d475fca755','+');
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
INSERT INTO `m_system_config` VALUES ('ita.system.ansible.execution_limit','25','Maximum number of movement executions for whole of IT automation','2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('ita.system.menu_export_import.buffer_size','10000','Maximum buffer size of menu Export/import for System default (Used for DB fetch size, file stream read size)','2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('platform.system.audit_log.cleanup_time','04:00','Audit log cleanup time','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy'),('platform.system.audit_log.download_exp_days','7','Audit log download expiration days','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy'),('platform.system.audit_log.download_file_limit','100','Audit log download limit','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy'),('platform.system.audit_log.retention_days','365','Audit log retention days','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy'),('platform.system.chunk_size','102400','chunk size for upload/download','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy'),('platform.system.user_export_import.cleanup_time','04:01','User export and bulk import cleanup time','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy'),('platform.system.user_export_import.exp_days','7','User export and bulk import expiration days','2026-07-30 22:11:04','dummy','2026-07-30 22:11:04','dummy');
UNLOCK TABLES;

--
-- Dumping data for table `t_maintenance_mode`
--

LOCK TABLES `t_maintenance_mode` WRITE;
INSERT INTO `t_maintenance_mode` VALUES ('1','BACKYARD_EXECUTE_STOP','0','2026-07-30 22:11:04.000000',NULL),('2','DATA_UPDATE_STOP','0','2026-07-30 22:11:04.000000',NULL);
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
INSERT INTO `t_plan` VALUES ('_default','_default plan','{\"description\": \"default plan\"}','2026-07-30 22:11:02','system','2026-07-30 22:11:02','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_plan_item`
--

LOCK TABLES `t_plan_item` WRITE;
INSERT INTO `t_plan_item` VALUES ('ita.organization.ansible.execution_limit','{\"description\": \"Maximum number of movement executions for organization default\", \"max\": 1000}','2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('ita.organization.common.maintenance_records_limit','{\"description\": \"Maximum number of maintenance records processing for organization default\", \"max\": 100000}','2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('ita.organization.common.upload_file_size_limit','{\"description\": \"Maximum byte size of upload file for organization default\", \"max\": 107374182400}','2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('ita.organization.menu_export_import.buffer_size','{\"description\": \"Maximum buffer size of menu Export/import for Organization default (Used for DB fetch size, file stream read size)\", \"max\": 10000}','2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('platform.roles','{\"description\": \"Maximum number of roles for organization default\", \"max\": 1000}','2026-07-30 22:11:02','system','2026-07-30 22:11:04','system'),('platform.users','{\"description\": \"Maximum number of users for organization default\", \"max\": 10000}','2026-07-30 22:11:02','system','2026-07-30 22:11:04','system'),('platform.workspaces','{\"description\": \"Maximum number of workspaces for organization default\", \"max\": 1000}','2026-07-30 22:11:02','system','2026-07-30 22:11:04','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_plan_limit`
--

LOCK TABLES `t_plan_limit` WRITE;
INSERT INTO `t_plan_limit` VALUES ('_default','ita.organization.ansible.execution_limit',25,'2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('_default','ita.organization.common.maintenance_records_limit',10000,'2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('_default','ita.organization.common.upload_file_size_limit',104857600,'2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('_default','ita.organization.menu_export_import.buffer_size',1000,'2026-07-30 22:11:14','dummy','2026-07-30 22:11:14','dummy'),('_default','platform.roles',1000,'2026-07-30 22:11:02','system','2026-07-30 22:11:02','system'),('_default','platform.users',10000,'2026-07-30 22:11:02','system','2026-07-30 22:11:02','system'),('_default','platform.workspaces',100,'2026-07-30 22:11:02','system','2026-07-30 22:11:02','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_migration_history`
--

LOCK TABLES `t_platform_migration_history` WRITE;
INSERT INTO `t_platform_migration_history` VALUES (1,'1.3.0','START',NULL,'2026-07-30 22:11:02','2.9.0','2026-07-30 22:11:02','2.9.0'),(2,'1.3.0','SUCCEED',NULL,'2026-07-30 22:11:03','2.9.0','2026-07-30 22:11:03','2.9.0'),(3,'1.5.0','START',NULL,'2026-07-30 22:11:03','2.9.0','2026-07-30 22:11:03','2.9.0'),(4,'1.5.0','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(5,'1.5.2','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(6,'1.5.2','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(7,'1.6.0','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(8,'1.6.0','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(9,'1.7.0','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(10,'1.7.0','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(11,'1.8.0','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(12,'1.8.0','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(13,'1.8.1','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(14,'1.8.1','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(15,'1.8.100','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(16,'1.8.100','SUCCEED',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(17,'1.9.0','START',NULL,'2026-07-30 22:11:04','2.9.0','2026-07-30 22:11:04','2.9.0'),(18,'1.9.0','SUCCEED',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(19,'1.10.0','START',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(20,'1.10.0','SUCCEED',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(21,'1.11.0','START',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(22,'1.11.0','SUCCEED',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(23,'1.12.0','START',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(24,'1.12.0','SUCCEED',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(25,'2.9.0','START',NULL,'2026-07-30 22:11:05','2.9.0','2026-07-30 22:11:05','2.9.0'),(26,'2.9.0','SUCCEED',NULL,'2026-07-30 22:11:06','2.9.0','2026-07-30 22:11:06','2.9.0');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_private`
--

LOCK TABLES `t_platform_private` WRITE;
INSERT INTO `t_platform_private` VALUES (1,'{\"TOKEN_CHECK_REALM_ID\": \"master\", \"TOKEN_CHECK_CLIENT_CLIENTID\": \"_platform\", \"TOKEN_CHECK_CLIENT_ID\": \"0cf3924f-847d-4a6e-b01f-848f9c2bdf15\", \"TOKEN_CHECK_CLIENT_SECRET\": \"xJJ3cvvZKTtQB4jkrygiERndj7R9YcGrQWRL1KTbHMekFhEZO4bYHswugiRc4i3fT8LU3G63RnqJ8yLGVu4fU8\", \"API_TOKEN_CLIENT_CLIENTID\": \"_platform-api\", \"API_TOKEN_CLIENT_ID\": \"9dff260d-226b-4d33-af0f-5a0903b2a89b\"}','2026-07-30 22:11:03','system','2026-07-30 22:11:03','system');
UNLOCK TABLES;

--
-- Dumping data for table `t_platform_version`
--

LOCK TABLES `t_platform_version` WRITE;
INSERT INTO `t_platform_version` VALUES (1,'2.9.0','2026-07-30 22:10:03','system','2026-07-30 22:11:06','2.9.0');
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

-- Dump completed on 2026-07-30 22:12:40
SET foreign_key_checks = 1;
