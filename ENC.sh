!/bin/bash
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
clear


echo -e "============================================"
echo -e "=  👰. ENC EXECUTOR LORDHOZOO 👰           ="
echo -e "============================================"
echo -e ""
echo -e "============================================"
echo -e "= [01]. ENC BASH TERKUAT 💃                ="
echo -e "============================================"
echo -e "==========================================="
echo -e "= [02]. ENC BASH TERKUAT 👰                ="
echo -e "============================================"
echo -e "==========================================="
echo -e "= [03]. ENC BASH TERKUAT EMOJI 👁️👄👁️     ="
echo -e "==========================================="
echo -e "\033[39;1m╭─ROOT@LORDHOZOO@localhost /home"
read -p "╰─$" updt
# data
if [ "$updt" -eq 1 ] || [ "$updt" -eq 01 ]; then
    # Add your code here for option 1
    clear
    pkg update -y
clear

fi
if [ "$updt" -eq 2 ] || [ "$updt" -eq 02 ]; then
    # Add your code here for option 1
    clear
    pkg update -y
clear

fi
if [ "$updt" -eq 3 ] || [ "$updt" -eq 03 ]; then
    # Add your code here for option 1
    clear
    pkg update -y
clear

fi
