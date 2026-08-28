import { nodeResolve } from '@rollup/plugin-node-resolve';
import terser from '@rollup/plugin-terser';

export default {
  input: 'node_modules/keycloak-js/lib/keycloak.js',
  output: {
    file: 'dist/keycloak.js',
    format: 'umd',
    name: 'Keycloak',
    exports: 'named',
    sourcemap: false,
    // Polyfill crypto APIs for non-secure contexts (HTTP)
    banner: `(function() {
  // Polyfill crypto.randomUUID
  if (typeof crypto !== "undefined" && typeof crypto.randomUUID === "undefined") {
    crypto.randomUUID = function() {
      return ([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g, function(c) {
        return (c ^ crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16);
      });
    };
  }

  // Detect non-secure context and mark for PKCE disabling
  if (typeof crypto !== "undefined" && typeof crypto.subtle === "undefined") {
    console.warn("[KEYCLOAK] Running in non-secure context (HTTP). PKCE will be disabled. Consider using HTTPS for better security.");
    Object.defineProperty(window, '_keycloakPkceDisabled', { value: true, writable: false });
  }
})();`,
    // Override global to use .default directly and wrap methods for PKCE handling
    footer: `if (typeof Keycloak !== "undefined" && Keycloak.default) {
  var KeycloakExports = Keycloak;
  var OriginalKeycloak = Keycloak.default;

  // Disable PKCE in non-secure contexts by wrapping the constructor
  if (window._keycloakPkceDisabled) {
    console.info('[KEYCLOAK] PKCE automatically disabled for non-secure context (HTTP)');

    // Create a wrapped constructor that forces pkceMethod to false
    Keycloak = function(config) {
      var instance = new OriginalKeycloak(config);
      // Override pkceMethod property
      Object.defineProperty(instance, 'pkceMethod', {
        value: false,
        writable: false,
        configurable: false
      });
      return instance;
    };

    // Preserve prototype and static properties
    Keycloak.prototype = OriginalKeycloak.prototype;
    Keycloak.NetworkError = KeycloakExports.NetworkError;
  } else {
    Keycloak = OriginalKeycloak;
    Keycloak.NetworkError = KeycloakExports.NetworkError;
  }
}`
  },
  plugins: [
    nodeResolve(),
    terser()
  ]
};
