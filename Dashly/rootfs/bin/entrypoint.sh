#!/bin/sh

rm /app/dashly/public/conf.yml

FILE=/data/conf.yml
if test -f "$FILE"; then
    echo "$FILE exists."
    ln -s /data/conf.yml /app/dashly/public/conf.yml
else
    cp /conf.yml /data
    ln -s /data/conf.yml /app/dashly/public/conf.yml
fi

cd /app/dashly

yarn build-and-start