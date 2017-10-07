#!/usr/bin/env bash
ds1=$PWD/docker-icon.sh
ds2=$PWD/icon-gen.sh

for dir in $(pwd)/*
do
    test -d "$dir" || continue
    cd $dir

    echo $dir
    mkdir -p docs/icon/
    touch docs/icon/icon-gen.sh
    rm docs/icon/icon-gen.sh

    mkdir -p docs/tools/
    cp $ds1 docs/tools/docker-icon.sh
    cp $ds2 docs/tools/icon-gen.sh
done