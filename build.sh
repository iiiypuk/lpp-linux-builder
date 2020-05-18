#!/bin/sh
echo -n "Insert homebrew name: "
read TITLE
echo -n "Insert homebrew title ID (4 characters): "
read ID

vita-mksfoex -s TITLE_ID="${ID}00001" $TITLE build/sce_sys/param.sfo
7z a -tzip "$TITLE.vpk" -r ./build/* ./build/eboot.bin
