#! /bin/sh

export SNAP_URL="$(snapctl get url)"

exec $SNAP/electron-helloworld/electron-quick-start --no-sandbox
