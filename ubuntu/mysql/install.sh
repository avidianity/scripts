#!/usr/bin/env bash

sudo apt update

sudo apt install -y mysql-server

sudo mysql_secure_installation

password='191799'

query="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password'; CREATE USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password'; FLUSH PRIVILEGES;"

sudo mysql --execute="$query"
