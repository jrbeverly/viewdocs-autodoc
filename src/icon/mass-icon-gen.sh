#!/usr/bin/env bash

for dir in $(pwd)/*
do
    test -d "$dir" || continue
    cd $dir

    echo $dir
    sh docs/tools/docker-icon.sh
    #sh docs/tools/docker-icon.sh
    #mv docs/icon/images/icon-256.png docs/icon/icon.png
done