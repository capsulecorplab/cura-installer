#!/usr/bin/env bash

docker run --rm --volume "$PWD:/srv" -w "/srv" kramos/alpine-zip Ender3_v2_PETG.zip profiles/Ender3_v2_PETG/creality_* -j

if [ ! -r ./dist ]; then
    mkdir dist
fi

mv Ender3_v2_PETG.zip dist/Ender3_v2_PETG.curaprofile
