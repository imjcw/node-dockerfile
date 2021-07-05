FROM node:12.18.2-alpine3.11

COPY docker-entrypoint.sh /usr/bin/

RUN set -x; \
    chmod 655 /usr/bin/docker-entrypoint.sh; \
    mkdir -p /var/www/html; \
    npm i -g npm; \
    npm i -g @vue/cli;

WORKDIR /var/www/html

ENTRYPOINT ["sh", "/usr/bin/docker-entrypoint.sh"]
