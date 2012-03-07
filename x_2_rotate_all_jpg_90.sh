#!/bin/bash

set -e
set -x

command -v parallel

test -d "$1"

DNAME=$1


find "$1" -name "*.jpg" | parallel --eta convert {} -rotate 90 {}
