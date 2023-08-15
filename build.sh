#!/usr/bin/env bash
set -euo pipefail

BOOTSTRAP_LICENSE=BDM0YTEwNGQ4OTUxYTRjYTFhMjc1YzhjMmE2MWE5YjU4AAAAAAAAAAAAAAIAAAAAAAQwNQIZAMURb7ioCarkucnnOz+gUGz1A86EIsktiQIYH5IbjcETJ0F+1MVdqE7+YLP7Sut4FIgbAA==

IMAGE_REPO=nexus.viperbj.net
IMAGE_NAME=singlestoredb-dev

docker build \
    -t "${IMAGE_REPO}/${IMAGE_NAME}:7.5" \
    --build-arg BOOTSTRAP_LICENSE=${BOOTSTRAP_LICENSE} \
    --build-arg CONFIG="$(cat config.json)" \
    .
