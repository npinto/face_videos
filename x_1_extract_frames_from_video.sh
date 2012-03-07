#!/bin/bash

set -e
set -x

command -v mplayer

test -f "$1"

VID_FNAME="$(realpath "$1")"
echo $VID_FNAME
DNAME=${VID_FNAME%.*}

mkdir -p "${DNAME}"
cd "${DNAME}"
mplayer -vo jpeg "${VID_FNAME}"
