import { nodeResolve } from '@rollup/plugin-node-resolve';
import terser from '@rollup/plugin-terser';

export default {
  input: 'node_modules/keycloak-js/lib/keycloak.js',
  output: {
    file: 'dist/keycloak.js',
    format: 'umd',
    name: 'Keycloak',
    sourcemap: false
  },
  plugins: [
    nodeResolve(),
    terser()
  ]
};
