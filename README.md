# 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎

# 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎

# 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎

# Kali-Anonymity-Setup

🔒 **Fully automated anonymity setup for Kali Linux!**

![Kali Anonymity Setup](Photo.png)

---

This script configures Tor, ProxyChains, MAC spoofing, and Anonsurf to route all your traffic anonymously.

---

## 🚀 Features

✅ Installs **Tor, ProxyChains, Anonsurf, MAC Spoofing**  
✅ **Fixes DNS issues** (if detected)  
✅ Routes **all traffic** through Tor automatically  
✅ Configures **ProxyChains** for anonymous command execution  
✅ **Changes MAC address** automatically on network connection  
✅ **Runs on fresh Kali Linux installs** without breaking networking

---

## 📥 Installation & Usage

---

### **1️⃣ Clone the Repository**

---

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/Kali-Anonymity-Setup.git
cd Kali-Anonymity-Setup

2️⃣ Make the Script Executable
------------------------------
chmod +x SetupKali.sh

3️⃣ Run the Script as Root
---------------------------
sudo ./SetupKali.sh

📌 How to Use
------------------
🔹 Verify Your Anonymity
Run:

bash
Copy
Edit
proxychains curl https://check.torproject.org
If you see "Congratulations. This browser is configured to use Tor", it's working!

🔹 Use ProxyChains
Run any tool through Tor:

bash
Copy
Edit
proxychains firefox
proxychains nmap -sT example.com
proxychains sqlmap -u "http://example.com"
🔹 Check MAC Spoofing
bash
Copy
Edit
macchanger -s wlan0  # Replace wlan0 with your interface
🔹 Stop Anonsurf (if needed)
bash
Copy
Edit
anonsurf stop


❓ Troubleshooting
-------------------------
1️⃣ DNS Not Working After Running Script?
-----------------------------------------
If websites don’t load, reset /etc/resolv.conf:

bash
Copy
Edit
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
Restart networking:

bash
Copy
Edit
sudo systemctl restart NetworkManager

2️⃣ Tor Not Working?
-----------------------------------------
Restart the Tor service:

bash
Copy
Edit
sudo systemctl restart tor
Manually test Tor connection:

bash
Copy
Edit
proxychains curl https://check.torproject.org
```

# 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎

# 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎

# 2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎
