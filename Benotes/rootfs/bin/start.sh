#!/bin/sh

#/var/www/storage/app/public/thumbnails
rm -rf /var/www/storage/app/public/thumbnails
mkdir -p /data/thumbnails
ln -s /data/thumbnails /var/www/storage/app/public/thumbnails

#/var/www/storage
rm -rf /var/www/storage
mkdir -p /data/storage
ln -s /data/storage /var/www/storage

#/var/www/logs
rm -rf /var/www/logs
mkdir -p /data/logs
ln -s /data/logs /var/www/logs



/bin/sh /entrypoint.sh