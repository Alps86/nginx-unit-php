FROM ubuntu:bionic

RUN apt-get update; \
    apt-get install -y --no-install-recommends ca-certificates curl tzdata gnupg; \
    echo "deb https://packages.nginx.org/unit/ubuntu/ bionic unit" >> /etc/apt/sources.list; \
    echo "deb-src https://packages.nginx.org/unit/ubuntu/ bionic unit " >> /etc/apt/sources.list; \
    curl http://nginx.org/keys/nginx_signing.key | apt-key add -; \
    apt-get update && apt-get install -y --no-install-recommends unit php7.2 libphp-embed unit-php

COPY json /var/lib/unit

CMD unitd --no-daemon --control unix:/var/run/control.unit.sock
