#!/bin/bash

// /root/obsidian-sync-share-server/user_store

mkdir -p /local/obsydian-sync-and-share/

ln -s /local/obsydian-sync-and-share/ /root/obsidian-sync-share-server/user_store

java $JAVA_OPTS -jar obsidian-sync-share-server.jar