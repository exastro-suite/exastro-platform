const keycloak = new Keycloak(KEYCLOAK_JSON);
let keycloak_profile = null;

window.addEventListener('DOMContentLoaded', function () {
    console.log("[INFO] start keycloak.init :\n" + JSON.stringify(KEYCLOAK_JSON, "", 2));
    keycloak.init({
        onLoad: 'check-sso',
        silentCheckSsoRedirectUri: window.location.origin + window.location.pathname.replace(/[^/]*$/,"") + 'silent-check-sso.html',
    }).then(authenticated => {
        console.log("[INFO] authenticated :" + authenticated);
    }).then(keycloak.loadUserProfile)
    .then((profile) => {
        console.log("[INFO] finish loadUserProfile :");
        console.log(JSON.stringify(profile, "", 2));
        keycloak_profile = profile;
        if (onProfileOnLoad) {
            console.log("[INFO] call onProfileOnLoad");
            setTimeout( onProfileOnLoad, 0 );
        }
    }).catch((e) => {
        console.log("[INFO] authenticated");
        keycloak.login({redirectUri: location.href});
    });
});

function autoUpdateToken(enabled, callback) {
    if(enabled) {
        console.log("[INFO] try updateToken");
        keycloak.updateToken().then((refreshed) => {
            if(refreshed) {
                console.log("[INFO] scceed updateToken");
                if(callback !== null) {
                    setTimeout(callback,0);
                }
            }
            setTimeout(() => {autoUpdateToken(true, callback)},1000);
        }).catch(() => {
            console.log("[INFO] failied updateToken");
            keycloak.login({redirectUri: location.href});
        });
    }
}
