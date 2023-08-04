FROM  balzack/databag:latest

ADD rootfs/bin/change-data.sh /

RUN chmod +x change-data.sh

ENTRYPOINT ["change-data.sh"]