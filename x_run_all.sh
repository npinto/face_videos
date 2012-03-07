#!/bin/bash

PWD=$(dirname $(realpath $0))

test -f "$1"
BNAME=$(basename "$1")

${PWD}/x_1_extract_frames_from_video.sh "$1"
${PWD}/x_2_rotate_all_jpg_90.sh "${BNAME%.*}"
