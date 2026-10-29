# Keycloak.js Build Configuration

This directory contains the configuration for building keycloak.js from the official keycloak-js npm package.

## Overview

- **Source**: keycloak-js npm package (Keycloak 26.x)
- **Build tool**: Rollup
- **Output**: `../contents/common-auth/js/keycloak.js`
- **Format**: UMD with footer to expose `Keycloak` constructor directly

## Why we build keycloak.js

Keycloak 26+ no longer serves keycloak.js as a static file. We need to bundle it from the npm package and serve it ourselves.

The build process:
1. Imports keycloak-js from npm
2. Bundles it with Rollup in UMD format
3. Adds a footer to expose `Keycloak.default` as `Keycloak` directly
4. Outputs to `contents/common-auth/js/keycloak.js`

## Updating keycloak-js

### Method 1: Using update.sh (Recommended)

```bash
cd platform_root/platform_web/keycloak-js-build

# 1. Edit package.json to update keycloak-js version
vi package.json  # Change "keycloak-js": "26.7.0"

# 2. Run the build script
./update.sh

# 3. Commit the changes
git add package.json package-lock.json ../contents/common-auth/js/keycloak.js
git commit -m "Update keycloak-js to 26.7.0"
```

The script will:
1. Show the current keycloak-js version from package.json
2. Ask for confirmation
3. Run `npm install` in Docker
4. Build keycloak.js with Rollup
5. Copy the result to `contents/common-auth/js/keycloak.js`

### Method 2: Manual update

```bash
cd platform_root/platform_web/keycloak-js-build

# Update package.json manually
vi package.json  # Change "keycloak-js": "26.x.x"

# Build using Docker
docker run --rm -v "$(pwd)":/work -w /work node:20-slim npm install
docker run --rm -v "$(pwd)":/work -w /work node:20-slim npm run build

# Copy to contents
cp dist/keycloak.js ../contents/common-auth/js/keycloak.js

# Commit
git add package.json package-lock.json ../contents/common-auth/js/keycloak.js
git commit -m "Update keycloak-js to 26.x.x"
```

## Files

- **package.json**: Defines keycloak-js version and build dependencies
- **package-lock.json**: Locks dependency versions (committed to Git)
- **rollup.config.js**: Rollup configuration with footer to expose constructor
- **update.sh**: Script to update keycloak-js version
- **.gitignore**: Excludes node_modules/ and dist/

## Important Notes

- **keycloak.js is committed to Git**: Both dev and production use the same file
- **No Docker build step**: keycloak.js is NOT generated during Docker build
- **Manual update required**: When upgrading Keycloak, run `update.sh` and commit

## Troubleshooting

### "Keycloak is not a constructor" error

This means the footer in rollup.config.js is not working correctly. Check:

```javascript
footer: 'if (typeof Keycloak !== "undefined" && Keycloak.default) { var KeycloakExports = Keycloak; Keycloak = Keycloak.default; Keycloak.NetworkError = KeycloakExports.NetworkError; }'
```

The footer promotes `Keycloak.default` to `Keycloak` so that `new Keycloak()` works directly.

### Build fails with GLIBC error on host

Use Docker to build (already included in update.sh):

```bash
docker run --rm -v "$(pwd)":/work -w /work node:20-slim npm run build
```
