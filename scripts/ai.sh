#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing AI tools..."

pkg install -y git python

pip install transformers torch sentence-transformers

echo "[+] Installing llama.cpp..."
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
make -j4

echo "[+] Done."
