#!/usr/bin/env bash

docker run --rm --volume "$PWD:/srv" -w "/srv" kramos/alpine-zip ender3_v2_petg.zip profiles/ender3_v2_petg/* -j
docker run --rm --volume "$PWD:/srv" -w "/srv" kramos/alpine-zip cr30_pla+.zip profiles/cr30_pla+/* -j

if [ ! -r ./dist ]; then
    mkdir dist
fi

mv ender3_v2_petg.zip dist/ender3_v2_petg.curaprofile
mv cr30_pla+.zip dist/cr30_pla+.curaprofile
