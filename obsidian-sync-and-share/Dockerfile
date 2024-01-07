FROM alterzz/obsidian-sync-share-server

ADD rootfs/bin/change-data.sh /

RUN chmod +x /change-data.sh

ENTRYPOINT ["/change-data.sh"]