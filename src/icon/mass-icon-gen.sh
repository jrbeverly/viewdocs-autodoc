#!/usr/bin/env bash

current="$(pwd)"
icon="$current/viewdocs-autodoc/src/icon/"
for dir in $(pwd)/*
do
    test -d "$dir" || continue

    sh "$icon"/docker-icon.sh $dir
    #sh docs/tools/docker-icon.sh
    #mv docs/icon/images/icon-256.png docs/icon/icon.png
done