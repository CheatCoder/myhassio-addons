#!/bin/sh

rm /app/dashly/public/conf.yml

mkdir -p /config/addons_config/dashly
FILE=/config/addons_config/dashly/conf.yml

if test -f "$FILE"; then
    echo "$FILE exists."
    ln -s $FILE /app/dashly/public/conf.yml
else
    cp /conf.yml $FILE
    ln -s $FILE /app/dashly/public/conf.yml
fi

cd /app/dashly

yarn start