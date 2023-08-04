#!/bin/bash

echo Change and make the data dir consitent
rm -rf /var/lib/databag
ln -s /data/databag/data /var/lib/databag

echo start app
bash /app/entrypoint.sh