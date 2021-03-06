#!/usr/bin/env bash

# PHP Dependencies
sudo apt install -y php7.4-cli php7.4-dev \
    php7.4-pgsql php7.4-sqlite3 php7.4-gd \
    php7.4-curl php7.4-memcached \
    php7.4-imap php7.4-mysql php7.4-mbstring \
    php7.4-xml php7.4-zip php7.4-bcmath php7.4-soap \
    php7.4-intl php7.4-readline php7.4-pcov \
    php7.4-msgpack php7.4-igbinary php7.4-ldap \
    php7.4-redis php7.4-xdebug

# Database Drivers
sudo apt install -y mysql-client postgresql-client

sudo setcap "cap_net_bind_service=+ep" /usr/bin/php7.4
