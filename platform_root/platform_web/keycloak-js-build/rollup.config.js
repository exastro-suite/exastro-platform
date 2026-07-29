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
    // Override global to use .default directly
    footer: 'if (typeof Keycloak !== "undefined" && Keycloak.default) { var KeycloakExports = Keycloak; Keycloak = Keycloak.default; Keycloak.NetworkError = KeycloakExports.NetworkError; }'
  },
  plugins: [
    nodeResolve(),
    terser()
  ]
};
