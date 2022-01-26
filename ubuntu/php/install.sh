#!/usr/bin/env bash

declare -a versions=("8.1" "8.0" "7.4")

if [[ ! "${versions[*]}" =~ "$1" ]]; then
    echo 'PHP Version provided is invalid'
    exit 1
fi

version=$1

bash ./ondrejppa.sh

bash ./deps.sh

bash "./$version/install.sh"

php -r "readfile('http://getcomposer.org/installer');" | sudo php -- --install-dir=/usr/bin/ --filename=composer
