#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing Nginx..."
pkg install -y nginx
nginx

echo "[+] Installing Apache + PHP..."
pkg install -y apache2 php php-apache
apachectl start

echo "[+] Installing MariaDB..."
pkg install -y mariadb
mysql_install_db
mysqld_safe --datadir=$PREFIX/var/lib/mysql &

echo "[+] Done."
