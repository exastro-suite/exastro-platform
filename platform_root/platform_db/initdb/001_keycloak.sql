CREATE USER keycloak IDENTIFIED BY 'password';
CREATE DATABASE keycloak CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON keycloak.* TO keycloak;
