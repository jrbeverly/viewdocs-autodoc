#!/usr/bin/env bash
root=$(pwd)

docker run \
    -v "$root":/media \
    --workdir /media \
    --rm devorbitus/ubuntu-bash-jq-curl \
    bash viewdocs-autodoc/src/doc/docker-entrypoint.sh