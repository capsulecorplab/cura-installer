#!/usr/bin/env bash

docker run --rm --volume "$PWD:/srv" -w "/srv" kramos/alpine-zip Ender3_v2_PETG.zip Ender3_v2_PETG/creality_* -j

if [ ! -r ./profiles ]; then
    mkdir profiles
fi

mv Ender3_v2_PETG.zip profiles/Ender3_v2_PETG.curaprofile
