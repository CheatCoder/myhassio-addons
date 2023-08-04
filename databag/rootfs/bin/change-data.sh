#!/bin/bash

echo Change and make the data dir consitent
rm -rf /var/lib/databag
mkdir -p /data/databag/data
ln -s /data/databag/data /var/lib/databag

echo start app
/bin/bash /app/entrypoint.sh