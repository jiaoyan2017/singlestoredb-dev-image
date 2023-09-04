#!/usr/bin/env bash
set -euo pipefail

if [[ -f .env ]]; then
    source .env
fi

if [ -z "${BOOTSTRAP_LICENSE-}" ]; then
    echo "!!! ERROR !!!"
    echo "The BOOTSTRAP_LICENSE environment variable must be specified"
    exit 1
fi

IMAGE_REPO=nexus.viperbj.net
IMAGE_NAME=singlestoredb-dev

docker build \
    -t "${IMAGE_REPO}/${IMAGE_NAME}:7.9" \
    --build-arg BOOTSTRAP_LICENSE=${BOOTSTRAP_LICENSE} \
    --build-arg CONFIG="$(cat config.json)" \
    .
