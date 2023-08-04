rm -rf /var/lib/databag
ln -s /data/databag/data /var/lib/databag

bash "/app/entrypoint.sh"