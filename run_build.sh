#!/bin/bash

set -e

# Define target directory on the host
TARGET_DIR="$(pwd)/public/"

# Make sure the target directory exists
mkdir -p "$TARGET_DIR"

# Use Docker to clone, clean, and replace contents
# Copy files and resolve symlinks with cp -L
docker run --rm -v "$TARGET_DIR":/host-output alpine:latest sh -c '
  apk add --no-cache git &&
  cd /tmp &&
  git clone --depth=1 https://github.com/protomaps/basemaps-assets.git repo &&
  cd repo &&
  rm -rf .git/ .github/ .gitignore README.md scripts/ &&
  rm -rf /host-output/* &&
  cp -rL . /host-output/
'

# Conditionally copy _headers and _redirect
#[ -f "_headers" ] && cp _headers "$TARGET_DIR" && echo "_headers copied." || echo "_headers not found, skipping."
#[ -f "_redirect" ] && cp _redirect "$TARGET_DIR" && echo "_redirect copied." || echo "_redirect not found, skipping."

echo "Assets updated in $TARGET_DIR."
