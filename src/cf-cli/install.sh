#!/bin/bash -i

set -e

source ./library_scripts.sh

ensure_nanolayer nanolayer_location "v0.4.45"

$nanolayer_location \
    install \
    devcontainer-feature \
    "ghcr.io/devcontainers-contrib/features/homebrew-package:1.0.7" \
    --option packages='cloudfoundry/tap/cf-cli' --option version="$VERSION"

echo 'Done!'