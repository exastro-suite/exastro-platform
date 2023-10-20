CREATE USER keycloak IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON keycloak.* TO keycloak;

CREATE USER app_user IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON platform.* TO app_user;
