const KEYCLOAK_JSON = {
    "realm": "exastro-common-auth",
    "url": window.location.origin + "/auth/",
    "ssl-required": "none",
    "clientId": "exastro-common-auth-public",
    "public-client": true,
    "confidential-port": 0
};

let onProfileOnLoad = null;
