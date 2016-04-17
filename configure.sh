#!/bin/sh

DIR="$1"
[ -n "$DIR" ] || exit 1

DEST="${DIR%/}/source"

git clone https://github.com/wlanslovenija/tunneldigger.git "$DEST"

cp "${DIR%/}/build/Makefile" "$DEST/client/Makefile"
make -C "$DEST/client/"

mkdir -p "${DIR%/}/usr/sbin/"
mv "$DEST/client/l2tp_client" "${DIR%/}/usr/sbin/tunneldigger"
chmod 755 "${DIR%/}/usr/sbin/tunneldigger"

rm -fr "$DEST"
