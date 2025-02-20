#!/bin/bash

# ---- 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎
# ---- 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎
# ---- 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎


# ---- Auto-Anonymity Script for Kali Linux. -----

echo "Starting BadAss Anonymous Setup On Kali Linux..."
echo "========================================="
sleep 2

# ---- Ensure Script Is Run As Root. ----
if [[ $EUID -ne 0 ]]; then
    echo "[-] This script must be run as root!" 
    exit 1
fi

# ---- Check DNS Reso And Fix If Necessary. ----
echo "[+] Checking DNS resolution..."
if ! host google.com > /dev/null 2>&1; then
    echo "[-] DNS resolution failed. Setting DNS to Google's 8.8.8.8..."
    echo "nameserver 8.8.8.8" > /etc/resolv.conf
else
    echo "[+] DNS resolution appears to be working."
fi

# ---- Update & Upgrade System. ----
echo "[+] Updating system..."
apt update -y && apt upgrade -y

# ---- Installs Necessary Tools. ----
echo "[+] Installing anonymity tools..."
apt install -y tor proxychains4 macchanger curl git

# ---- Installs Anonsurf. (if not already installed) ----
echo "[+] Installing Anonsurf manually..."
if ! command -v anonsurf &>/dev/null; then
    git clone https://github.com/Und3rf10w/kali-anonsurf.git /opt/kali-anonsurf
    if [ -d "/opt/kali-anonsurf" ]; then
        cd /opt/kali-anonsurf || exit
        chmod +x installer.sh
        ./installer.sh
        cd ~
    else
        echo "[-] Failed to clone kali-anonsurf repository."
    fi
else
    echo "[+] Anonsurf is already installed."
fi

# ---- Configure ProxyChains. ----
echo "[+] Configuring ProxyChains..."
sed -i 's/^socks4 127.0.0.1 9050/# socks4 127.0.0.1 9050/' /etc/proxychains4.conf
sed -i 's/^# socks5 127.0.0.1 9050/socks5 127.0.0.1 9050/' /etc/proxychains4.conf
sed -i 's/^#dynamic_chain/dynamic_chain/' /etc/proxychains4.conf
sed -i 's/^strict_chain/#strict_chain/' /etc/proxychains4.conf

# ---- Configure MAC Address Spoofing. ----
echo "[+] Configuring MAC Address Spoofing..."
echo "[+] Setting up automatic MAC change on network interface up..."
cat > /etc/network/if-pre-up.d/macchanger <<'EOF'

# ---- This Script Randomizes MAC Addresses For All Interfaces Except Loopback. ----
for iface in $(ip link | grep -o '^[0-9]*: [^:]*' | cut -d ' ' -f2 | grep -v lo); do
    macchanger -r "$iface"
done
EOF
chmod +x /etc/network/if-pre-up.d/macchanger

# ---- Enable Tor Service. ----
echo "[+] Enabling and starting Tor..."
systemctl enable tor
systemctl start tor

# ---- Enable Anonsurf. ----
echo "[+] Enabling Anonsurf..."
if command -v anonsurf &>/dev/null; then
    anonsurf start
else
    echo "[-] Error: Anonsurf installation failed!"
fi

# ---- Final Message ----
echo "========================================="
echo "[+] BOOM, HOW EASY WAS THAT!?"
echo "[+] Anonymous setup is complete!"
echo "[+] Your traffic is now routed through Tor."
echo "[+] Use 'proxychains' before commands to route them through Tor."
echo "[+] MAC addresses will change on each connection."
echo "[+] Stay safe and anonymous!"
echo "[+] Enjoy the Anonymity, YOU BADASS!!"
echo "========================================="

# ---- 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎 ----
# ---- 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎 ----
# ---- 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎 ----
