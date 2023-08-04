FROM  balzack/databag:latest

COPY rootfs /

RUN chmod +x /bin/change-data.sh

ENTRYPOINT ["/bin/change-data.sh"]