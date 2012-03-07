#!/bin/bash

set -e
set -x

command -v parallel

test -d "$1"

DNAME=$1


find "$1" -name "*.jpg" | parallel --eta convert {} -rotate 90 {}-90.jpg

mkdir -p "${DNAME}"-90

mv -vf "${DNAME}"/*-90.jpg "${DNAME}"-90/
