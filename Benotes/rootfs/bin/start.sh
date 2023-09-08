#!bin/bash

#/var/www/storage/app/public/thumbnails
rm -rf /var/www/storage/app/public/thumbnails
mkdir -p /data/thumbnails
ln -s /data/thumbnails /var/www/storage/app/public/thumbnails

#/var/www/storage
rm -rf /var/www/storage
mkdir -p /data/storage
ln -s /data/storage /var/www/storage

./entrypoint.sh