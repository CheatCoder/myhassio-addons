#!/bin/sh

#/var/www/storage/app/public/thumbnails
rm -rf /var/www/storage/app/public/thumbnails
mkdir -p /share/benotes/thumbnails 2>/dev/null
ln -s /share/benotes/thumbnails /var/www/storage/app/public/thumbnails

#/var/www/storage
rm -rf /var/www/storage
mkdir -p /share/benotes/storage 2>/dev/null
ln -s /share/benotes/storage /var/www/storage




/bin/sh /entrypoint.sh