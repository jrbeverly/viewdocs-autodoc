#!/usr/bin/env bash
DIR=$(dirname "$(readlink -f "$0")")
DIR_DOCS=$(dirname "$DIR")

JSON_FILE="$1"
TEMPLATE_FILE="$2"

# 
# Properties
#
export NAME=$(jq -r '.name' "$JSON_FILE")
export LICENSE=$(jq -r '.license' "$JSON_FILE")
export URL=$(jq -r '.url' "$JSON_FILE")
export AUTHOR=$(jq -r '.author.name' "$JSON_FILE")
export AUTHOR_URL=$(jq -r '.author.url' "$JSON_FILE")
export TAGS=$(jq -r '.tags | join(", ")' "$JSON_FILE")

#
#
#
envsubst < $TEMPLATE_FILE