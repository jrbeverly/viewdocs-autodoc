#!/usr/bin/env bash
script=$PWD/viewdocs-autodoc/src/icon/icondoc-gen.sh
template=$PWD/viewdocs-autodoc/src/icon/TEMPLATE.md

for dir in $(pwd)/*
do
    test -d "$dir" || continue
    cd $dir

    echo $dir
    mkdir -p docs/icon/
    touch docs/icon/icon.json
    touch docs/icon/README.md
    
    bash $script docs/icon/icon.json $template > docs/icon/README.md
done