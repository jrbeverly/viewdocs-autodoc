#!/usr/bin/env bash
JSON_FILE=$1
TEMPLATE_FILE=$2

# 
# Properties
#
export name=$(jq -r '.name' "$JSON_FILE")
export description=$(jq -r '.description' "$JSON_FILE")
export icon_url=$(jq -r '.icon.url' "$JSON_FILE")
export pipeline_url=$(jq -r '.pipeline.url' "$JSON_FILE")
export pipeline_badge=$(jq -r '.pipeline.badge' "$JSON_FILE")
export license_url=$(jq -r '.license.url' "$JSON_FILE")
export license_badge=$(jq -r '.license.badge' "$JSON_FILE")
export repository_url=$(jq -r '.repository.url' "$JSON_FILE")
export repository_badge=$(jq -r '.repository.badge' "$JSON_FILE")

#
#
#
envsubst < $TEMPLATE_FILE