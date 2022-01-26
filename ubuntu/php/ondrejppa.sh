#!/usr/bin/env bash

if ! sudo grep -q "^deb .*ondrej/php" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo apt update
    sudo apt -y install software-properties-common
    sudo add-apt-repository ppa:ondrej/php -y
fi
