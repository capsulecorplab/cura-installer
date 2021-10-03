#!/usr/bin/env bash

docker run --rm --volume "$PWD:/srv" -w "/srv" kramos/alpine-zip ender3_v2_petg.zip profiles/ender3_v2_petg/creality_* -j

if [ ! -r ./dist ]; then
    mkdir dist
fi

mv ender3_v2_petg.zip dist/ender3_v2_petg.curaprofile
