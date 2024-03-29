#!/bin/bash

set -e
set -x

command -v mplayer2

test -f "$1"

VID_FNAME="$(realpath "$1")"
VID_BNAME="$(basename "${VID_FNAME}")"
echo $VID_FNAME
DNAME="${VID_BNAME%.*}"

mkdir -p "${DNAME}"
cd "${DNAME}"
mplayer2 -cache 8192 -vo jpeg "${VID_FNAME}"
