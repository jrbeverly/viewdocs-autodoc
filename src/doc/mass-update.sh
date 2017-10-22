#!/usr/bin/env bash
root=$(pwd)
script=$root/viewdocs-autodoc/src/doc/icondoc-gen.sh
template=$root/viewdocs-autodoc/src/doc/TEMPLATE.md

for dir in $(pwd)/*
do
    test -d "$dir" || continue
    cd $dir

    echo $dir
    mkdir -p docs/icon/
    touch docs/icon/icon.json
    touch docs/pages/icon.md

    bash $script docs/icon/icon.json $template > docs/pages/icon.md
done