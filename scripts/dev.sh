#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing Python stack..."
pkg install -y python
pip install flask fastapi uvicorn requests httpx pandas numpy sqlalchemy django djangorestframework

echo "[+] Installing Node..."
pkg install -y nodejs
npm install -g express nodemon pm2 typescript ts-node

echo "[+] Installing Rust..."
pkg install -y rust

echo "[+] Installing C/C++ tools..."
pkg install -y clang gcc gdb

echo "[+] Done."
