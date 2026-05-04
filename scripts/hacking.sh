#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing security tools..."

pkg install -y nmap netcat-openbsd dnsutils whois hydra sqlmap

pkg install -y unstable-repo
pkg install -y metasploit

echo "[+] Done."
