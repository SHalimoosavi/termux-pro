#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing MariaDB..."
pkg install -y mariadb
mysql_install_db
mysqld_safe &

echo "[+] Installing PostgreSQL..."
pkg install -y postgresql
initdb $PREFIX/var/lib/postgresql
pg_ctl -D $PREFIX/var/lib/postgresql start

echo "[+] Installing Redis..."
pkg install -y redis
redis-server &

echo "[+] Done."
