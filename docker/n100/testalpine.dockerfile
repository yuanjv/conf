FROM alpine
RUN echo -e "#!/bin/sh\n\n/usr/bin/tail -f /dev/null" > /entrypoint.sh \
    && chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]