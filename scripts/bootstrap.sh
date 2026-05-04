#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Updating system..."
pkg update -y && pkg upgrade -y

echo "[+] Installing core tools..."
pkg install -y git curl wget nano vim zsh bash

echo "[+] Storage permission..."
termux-setup-storage

echo "[+] Installing build tools..."
pkg install -y build-essential clang make cmake

echo "[+] Installing SSH..."
pkg install -y openssh
sshd

echo "[+] Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[+] Done. Type: zsh"
