#!/bin/sh
command -v docker >/dev/null 2>&1 || { echo >&2 "The script requires 'docker' but it's not installed.  Aborting."; exit 1; }

#
DIR_ICON="$1/docs"

mkdir -p "$DIR_ICON/icon/images"
docker run --rm -v "$DIR_ICON":/media/ jrbeverly/rsvg:privileged rsvg-iconset -f icon/icon.svg -o icon/images