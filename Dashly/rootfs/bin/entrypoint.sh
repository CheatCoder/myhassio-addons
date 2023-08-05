#!/bin/sh

FILE=/data/config.yml
if test -f "$FILE"; then
    echo "$FILE exists."
    ln -s /data/config.yml /app/dashly/public/config.yml
else
    cp /config.yml /data
    ln -s /data/config.yml /app/dashly/public/config.yml
fi

cd /app/dashly

yarn build-and-start