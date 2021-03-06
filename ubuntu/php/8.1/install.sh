#!/usr/bin/env bash

# PHP Dependencies
sudo apt install -y php8.1-cli php8.1-dev \
    php8.1-pgsql php8.1-sqlite3 php8.1-gd \
    php8.1-curl php8.1-memcached \
    php8.1-imap php8.1-mysql php8.1-mbstring \
    php8.1-xml php8.1-zip php8.1-bcmath php8.1-soap \
    php8.1-intl php8.1-readline php8.1-pcov \
    php8.1-msgpack php8.1-igbinary php8.1-ldap \
    php8.1-redis php8.1-swoole php8.1-xdebug

# Database Drivers
sudo apt install -y mysql-client postgresql-client

sudo setcap "cap_net_bind_service=+ep" /usr/bin/php8.1
