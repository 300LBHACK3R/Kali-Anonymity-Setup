
![My Art](/Photo.png)

Kali-Anonymity-Setup
------------------------
🔒 Fully Automated Anonymity setup for Kali Linux!
======================================================
This script configures Tor, ProxyChains, MAC spoofing, and Anonsurf to route all your traffic anonymously.

🚀 Features
---------------------
✅ Installs: Tor, ProxyChains, Anonsurf, MAC Spoofing
✅ Fixes DNS issues (if detected)
✅ Routes all traffic through Tor automatically
✅ Configures ProxyChains for anonymous command execution
✅ Changes MAC address automatically on network connection
✅ Runs on fresh Kali Linux installs without breaking networking

1️⃣ Clone the Repository
---------------------------
git clone https://github.com/300LBHACK3R/Kali-Anonymity-Setup.git
---
cd Kali-Anonymity-Setup

2️⃣ Make the Script Executable
-----------------------------
chmod +x SetupKali.sh

3️⃣ Run the Script as Root
-----------------------------
sudo ./SetupKali.sh

📌 How to Use
---------------
🔹 Verify Your Anonymity
proxychains curl https://check.torproject.org
If you see "Congratulations. This browser is configured to use Tor", it's working! 🎉

🔹 Use ProxyChains
Run any tool through Tor:

proxychains firefox
proxychains nmap -sT Tatesplayground.ca
proxychains sqlmap -u "http://tatesplayground.ca"

🔹 Check MAC Spoofing
macchanger -s wlan0  # Replace wlan0 with your actual network interface

🔹 Stop Anonsurf (if needed)
anonsurf stop

❓ Troubleshooting
-----------------------
1️⃣ DNS Not Working After Running the Script?
If websites don’t load, reset /etc/resolv.conf:

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
Then restart networking:

sudo systemctl restart NetworkManager
2️⃣ Tor Not Working?
Restart the Tor service:

sudo systemctl restart tor
Manually test Tor connection:

proxychains curl https://check.torproject.org



📜 License
--------------
This project is licensed under the MIT License.

2025 Tate R.A Byers - Crafted with Intellect and Ingenuity 😎
🔥 Stay Anonymous, Stay Safe! 🔥


![ScreenShot](/Photo1.png)
![ScreenShot](/Photo2.png)
