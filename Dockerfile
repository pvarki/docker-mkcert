FROM alpine:3.18 AS production

RUN apk add --no-cache \
        wget \
        bash \
        tini \
    # FIXME: detect the arch
    && wget -q https://dl.filippo.io/mkcert/latest\?for\=linux/amd64 -O /bin/mkcert \
    && chmod a+x /bin/mkcert \
    && true
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
COPY ./gencert.sh /gencert.sh

ENTRYPOINT ["/sbin/tini", "--", "/docker-entrypoint.sh"]
