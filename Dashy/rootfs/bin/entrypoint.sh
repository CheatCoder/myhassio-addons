#!/bin/bash

rm /app/dashy/public/conf.yml

mkdir -p /config/addons_config/dashy
FILE=/config/addons_config/dashy/conf.yml

if test -f "$FILE"; then
    echo "$FILE exists."
    ln -s $FILE /app/dashy/public/conf.yml
else
    cp /conf.yml $FILE
    ln -s $FILE /app/dashy/public/conf.yml
fi

cd /app/dashy

yarn start