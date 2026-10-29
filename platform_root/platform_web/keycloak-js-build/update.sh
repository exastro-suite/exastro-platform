#!/bin/bash
#   Copyright 2025 NEC Corporation
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
KEYCLOAK_JS_DEST="$SCRIPT_DIR/../contents/common-auth/js/keycloak.js"

echo "===================================="
echo "Keycloak.js Build Script"
echo "===================================="
echo ""

cd "$SCRIPT_DIR"

# Read current version from package.json
CURRENT_VERSION=$(grep '"keycloak-js"' package.json | sed -E 's/.*"keycloak-js": "([^"]+)".*/\1/')

echo "Current keycloak-js version: $CURRENT_VERSION"
echo ""
echo "If you want to update the version:"
echo "  1. Edit package.json and change the keycloak-js version"
echo "  2. Run this script again"
echo ""

read -p "Continue building with version $CURRENT_VERSION? [y/N] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 0
fi

echo ""
echo "1. Installing dependencies..."
docker run --rm \
  -v "$(pwd)":/work -w /work \
  -e HTTP_PROXY="${HTTP_PROXY}" \
  -e http_proxy="${http_proxy}" \
  -e HTTPS_PROXY="${HTTPS_PROXY}" \
  -e https_proxy="${https_proxy}" \
  -e NO_PROXY="${NO_PROXY}" \
  -e no_proxy="${no_proxy}" \
  node:20-slim npm install

echo ""
echo "2. Building keycloak.js..."
docker run --rm -v "$(pwd)":/work -w /work node:20-slim npm run build

echo ""
echo "3. Copying to contents directory..."
cp dist/keycloak.js "$KEYCLOAK_JS_DEST"

echo ""
echo "4. Verifying file..."
ls -lh "$KEYCLOAK_JS_DEST"

echo ""
echo "===================================="
echo "✅ Build completed successfully!"
echo "===================================="
echo ""
echo "Next steps:"
echo "  1. Test the updated keycloak.js in dev environment"
echo "  2. Git add and commit:"
echo "     git add platform_root/platform_web/keycloak-js-build/package.json"
echo "     git add platform_root/platform_web/keycloak-js-build/package-lock.json"
echo "     git add platform_root/platform_web/contents/common-auth/js/keycloak.js"
echo "     git commit -m 'Update keycloak-js to $CURRENT_VERSION'"
echo ""
