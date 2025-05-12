#!/bin/bash
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
echo -e " \033[31;1m █░░ █▀█ █▀█ █▀▄ █░█ █▀█ ▀█ █▀█ █▀█"
echo -e " \033[37;1m █▄▄ █▄█ █▀▄ █▄▀ █▀█ █▄█ █▄ █▄█ █▄█ \033[31;1m V 1.0.1 "
echo -e "\033[37;1m┌──────────────────────────────────────────────────────────────┐ $white"
echo -e "│ $white AUTHOR   : LORDHOZOO                                        │"
echo -e "│ $white DILIRIS  : 2025-10-10 MEI SABTU                             │"
echo -e "│ $white YOUTUBE  : LORDHOZOO                                        │"
echo -e "│ $white TIKTOK   : LORDHOZOO                                        │" 
echo -e "│ $white STATUS   : $green ONLINE                                       $white   │ $white "
echo -e "└──────────────────────────────────────────────────────────────┘ $white"
echo -e " INSTALL TERMUX 💃 LOADING......"
pkg update -y
pkg upgrade -y
clear

clear
termux-setup-storage -y
clear
clear
termux-setup-storage -y
clear
pkg install git -y
clear
termux-setup-storage -y
clear
pkg install python -y
clear
pkg install python-pip -y
pip install -r requirements.txt
pkg install jq -y
clear
pkg install curl -y
clear
pkg install wget -y
clear
pkg install python2 -y
clear
pkg install nodejs -y
clear
pkg install bash -y
clear
pkg install openssh -y
clear
pkg install php -y
clear
pkg install ruby -y
clear
pkg install lolcat -y
pkg install termux-api
clear
pkg install nodejs -y
clear
termux-setup-storage -y
clear
clear
npm install node-telegram-bot-api
clear
npm install child_process
clear
npm install sqlite3
clear
npm install luxon
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
echo -e "│ $yellow[01]$green .MENU TEKS BANNED WHASTAPP                              │ "
echo -e "│ $yellow[02]$green .MENU TEKS UNBAN WHASTAPP                               │"
echo -e "│ $yellow[03]$green .MENU SUNTIK TIKTOK FOLLOWERS                           │"
echo -e "│ $yellow[05]$green .MENU DDOS GAME ONLINE                                  │"
echo -e "│ $yellow[06]$green .MENU DDOS WEB                                          │"
echo -e "│ $yellow[07]$green .MENU PHISING                                           │"
echo -e "│ $yellow[08]$green .MENU SPAM TELEGRAM TOKEN ID                            │"
echo -e "│ $yellow[09]$green .MENU ENC BASH 2025                                     │"
echo -e "│ $yellow[10]$green .MENU SPAM OTP WHASAPP                                  │"
echo -e "│ $yellow[11]$green .MENU SPAM TOKOPEDIA                                    │"
echo -e "│ $yellow[12]$green .MENU CEK TIKTOK FOLLOWERS                              │"
echo -e "│ $yellow[13]$green .MENU VPN TERMUX PORKY JAPAN                            │"
echo -e "│ $yellow[14]$green .MENU BANNER TERMUX LAUNCHER                            │"
echo -e "│ $yellow[15]$green .MENU APK TERKUNCI EDIT SENDIRI RESIKO ANDA             │"
echo -e "│ $yellow[16]$green .MENU INSTALL KALI LINUX RAM (3 dan 4 keatas )          │"
echo -e "│ $yellow[17]$green .MENU OSINT ABAL ABAL                                   │"
echo -e "│ $yellow[18]$green .MENU INSTALL TERMUX PKG DAN MODULE                     │"
echo -e "│ $yellow[19]$green .MENU INSTALL KALI LINUX DISRO DLL APT                  │"
echo -e "│ $yellow[20]$green .LAPOR BUG                                              │"
echo -e "└──────────────────────────────────────────────────────────────┘"
echo -e "\033[39;1m╭─ROOT@LORDHOZOO@localhost /home"
read -p "╰─$" updt
# data
if [ "$updt" -eq 1 ] || [ "$updt" -eq 01 ]; then
    # Add your code here for option 1
    clear
    pkg update -y
clear
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
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
echo -e "│ $yellow[01]$green .MENU TEKS BAN WA                                       │ "
echo -e "│ $yellow[02]$green .MENU TEKS BAN WA                                       │"
echo -e "│ $yellow[03]$green .MENU TEKS BAN WA                                       │"
echo -e "│ $yellow[05]$green .MENU TEKS BAN WA                                       │"
echo -e "│ $yellow[06]$green .MENU TEKS BAN WA                                       │"
echo -e "│ $yellow[07]$green .MENU TEKS BAN WA HARD                                  │"
echo -e "│ $yellow[08]$green .MENU TEKS BAN WA HARD                                  │"
echo -e "│ $yellow[09]$green .MENU TEKS BAN WA HARD                                  │"
echo -e "│ $yellow[10]$green .MENU TEKS BAN WA HARD                                  │"
echo -e "│ $yellow[11]$green .MENU TEKS BAN WA HARD                                  │"
echo -e "│ $yellow[12]$green .MENU TEKS UNBAN WA HARD                                │"
echo -e "│ $yellow[13]$green .MENU TEKS UNBAN WA HARD                                │"
echo -e "│ $yellow[14]$green .MENU TEKS UNBAN WA HARD                                │"
echo -e "│ $yellow[15]$green .MENU TEKS UNBAN WA HARD                                │"
echo -e "│ $yellow[16]$green .MENU TEKS UNBAN WA HARD                                │"
echo -e "│ $yellow[17]$green .MENU TKES UNBAN WA HARD                                │"
echo -e "│ $yellow[18]$green .MENU TEKS UNBAN WA HARD                                │"
echo -e "│ $yellow[19]$green .TEKS UNBAN WA HARD                                     │"
echo -e "│ $yellow[20]$green .TEKS UNBAN WA HARD                                     │"
echo -e "└──────────────────────────────────────────────────────────────┘"
echo -e "\033[39;1m╭─ROOT@LORDHOZOO@localhost /home"
read -p "╰─$" updt
# data
if [ "$updt" -eq 1 ] || [ "$updt" -eq 01 ]; then
    # Add your code here for option 1
    pkg update -y 
    clear
    termux-setup-storage
    clear
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
    echo -e "
Anda harus segera melihat mungkin tertarik dan anda membutuhkan uang :

Sperma 💦 340,000,00 IDR 
Khondom 👠 40,000,00 IDR 
Minyak zaitun 🫒 50,000,00 IDR
pelumas 🍦 120,000,00 IDR 

https://api.whatsapp.com/send?phone=+62




    "
fi

if [ "$updt" -eq 2 ] || [ "$updt" -eq 02 ]; then
    # Add your code here for option 2
    pkg update
    echo -e "
    Witam, sprzedaję porno i mam kilka firm.  Sprzedajemy pornografię innym organizacjom.  Jeśli chcesz z nami pracować i zarabiać 300 مااان م miesięcznie, skontaktuj się z nami!
https://api.whatsapp.com/send?phone=+62 
    "
fi

if [ "$updt" -eq 3 ] || [ "$updt" -eq 03 ]; then
    # Add your code here for option 3
    pkg update
    echo -e "
    ⚠️ Upozorenje: Prabowo Subianto će prikupiti porez svake godine u iznosu od 100 milijuna kako bi napravio alat koji će olakšati sakaćenje ljudskog tijela 😈🗡️ ovaj alat je vrlo koristan za teroriste u Indoneziji 🇮🇩☠️ ovo je curenje informacija o značajkama u alat koji će biti objavljen napravi u [2025] ⏳ 1. Sjeckanje tijela u cjelini 🚷 2. Čisti utrobu tijela 🚹 3. Brutalno vađenje očiju 👁️ Ako ste zainteresirani i želite platiti porez, kontaktirajte našeg pomoćnika u nastavku slanjem poruke putem WhatsAppa 👇🔥 https://blackmail.whatsapp.com/send?phone=+62

    "
fi

if [ "$updt" -eq 4 ] || [ "$updt" -eq 04 ]; then
    # Add your code here for option 4
    pkg update
    echo -e "
您好 WhatsApp Business Messenger 2024 用户，您玩 WhatsApp@gmail.com 的体验如何我是中国最大的企业家之一，他创造了 WhatsApp，并获得了数百万至数十亿的奖金 🤑🤑💰
你可以通过玩我自己公司的WhatsApp模组/创作来赚钱，当然它是官方的，不会被其他WhatsApp方屏蔽，因为它已经与20家公司合作🔥🔥🚫
您可以在下面获取 WhatsApp mod 应用程序 👇
https://arabic.cnn.com/tag/isis
您可以在 WhatsApp mod 上观看色情视频 - 性爱照片，您会感到满意，当然它是私人的 🔞😈😈👮‍♂️
如果您需要帮助，可以联系我 如果您下载并使用该应用程序，我将给您 20 美元💥🎁🎁https://api.whatsapp.com/send?phone=+62
    "
fi

if [ "$updt" -eq 5 ] || [ "$updt" -eq 05 ]; then
    # Add your code here for option 5
    pkg update
    echo -e "
مرحبًا مستخدمي WhatsApp، اسمحوا لي أن أعرفكم بنفسي، اسمي Boysz 444😈🔪، أنا قاتل مأجور من اليابان أقبل خدمات القتل الوحشي وأقدم الأعضاء للخدمات، كما أطمح لقتل مارك زوكربيرج (مالك WhatsApp)، إذا تريد أن ترى الصور/مقاطع الفيديو الخاصة بي. عند الانتهاء من الضحية، يمكنك التحقق من الرابط أدناه

 https://xgore.net/chinese-womans-corpse-was-slashed-and-her-throat-slit/

 إذا كنت مهتمًا بطلب خدماتي، يمكنك الاتصال مباشرة بالرقم أدناه
 https://xphone.whatsapp.com/send?phone=+62

    "
fi

if [ "$updt" -eq 6 ] || [ "$updt" -eq 06 ]; then
    # Add your code here for option 6
    pkg update
    echo -e "
    مرحبًا مستخدمي WhatsApp، اسمحوا لي أن أعرفكم بنفسي، اسمي Boysz 444😈🔪، أنا قاتل مأجور من اليابان أقبل خدمات القتل الوحشي وأقدم الأعضاء للخدمات، كما أطمح لقتل مارك زوكربيرج (مالك WhatsApp)، إذا تريد أن ترى الصور/مقاطع الفيديو الخاصة بي. عند الانتهاء من الضحية، يمكنك التحقق من الرابط أدناه

 https://xgore.net/chinese-womans-corpse-was-slashed-and-her-throat-slit/

 إذا كنت مهتمًا بطلب خدماتي، يمكنك الاتصال مباشرة بالرقم أدناه
 https://xphone.whatsapp.com/send?phone=+62
 "
fi

if [ "$updt" -eq 7 ] || [ "$updt" -eq 07 ]; then
    # Add your code here for option 7
  echo -e "
    pkg update
    Saya ingin memberikan anda modal sebesar 1jt 💰 untuk deposit di situs kami yang bernama #WAKROP77 uang ratusan juta telah menanti 💰😍 dijamin mendapatkan uang yang berlipat ganda dengan mengikuti pola berikut ini 👇
Spin normal: 50×
Spin turbo: 35×
Spin cepat: 55×
Saya jamin anda akan mendapatkan uang yang sangat banyak dari situs kami ✨ jika anda rungkad maka uang anda terjamin 100% kembali ✅ kami juga mengadakan kuis untuk member baru berupa mobil, motor, uang 💸 silahkan hubungi kontak WhatsApp saya jika ingin deposit 💸👇
https://wa.me/62


support@support.whatsapp.com "
fi

if [ "$updt" -eq 8 ] || [ "$updt" -eq 08 ]; then
    # Add your code here for option 8
    pkg update
    echo -e "
    Salam onlayn alış-veriş platforması ilə əlavə gəlir əldə etmək istəyirsiniz?
Evdə rahatlıqla 200-1000 Manat qazanın. Proses sadədir! (Yaşınız 22-dən yuxarıdırsa işdə iştirak edə
bilərsiniz))
Zəhmət olmasa
whatsapp-la əlaqə saxlayın: Zəhn t olmasa əvvəlcə [1] daxil edin, sonra işə qəbul meneceri ilə əlaqə saxlamaq üçün aşağıdakı Əlaqə məlumatını 2 saniyə basıb saxlayın və 4.88 manat qazanın!
👇👇👇👇https://api.whatsapp.com/send?phone=+62 "
fi

if [ "$updt" -eq 9 ] || [ "$updt" -eq 09 ]; then
    # Add your code here for option 9
    pkg update
    echo -e "
    support@support.whatsapp.com
Dobrý den, drahá, jsme společnost whatsapp Distribuujeme pornografická videa a obrázky Video o znásilnění dítěte si můžete prohlédnout v níže uvedeném odkazu nebo si jej zakoupit na našem oficiálním webu http://nanochanqzaytwlydykbg5nxkgyjxk3zsrctxuoxdmbx5jbh2ydyprid.onion/. Nebo si můžete koupit nemluvňata, abyste s nimi měli brutální sex, nebo si můžete koupit sexuální videa kontaktováním našeho čísla whatsapp. Whatsapp vydal video o sexu s dětmi, což nám umožnilo zveřejňovat dětské porno na Whatsapp a já budu zveřejňovat dětské porno ve všech skupinách Whatsapp a bavit se s dětmi http://xykxv6fmblogxgmzjm5wt6akdhm4wewiarjzcngev4tupgjlyugmc7qd.onion ewf3 /wpgld4q5nt 4leté děti znásilněni na trhu, support@support.whatsapp.com
Kontaktujte nás prosím na tomto čísle👇👇↙️
https://api.whatsapp.com/send?phone=+62
"
fi

if [ "$updt" -eq 10 ]; then
    # Add your code here for option 10
    pkg update
    echo -e "
    こんにちは、私たちはWhatsAppサポートチームです。私のチームに参加して、毎日の利益を勝ち取る
説明する時間はありません！早く行って;初心者の報酬はあなたが彼らに要求するのを待っています！
このTelegramコレクションに参加して、http：//www.watsap.com の詳細については、自宅でお金を稼ぐ方法
利益$ 5には、デジタル通貨の変更利益がないことはインターネットから無料です
https://api.whatsapp.com/send?phone=+62
"
fi

if [ "$updt" -eq 11 ]; then
    # Add your code here for option 11
    pkg update
    echo -e "
    Здравствуйте, один из разработчиков WhatsApp работает над получением дополнительного дохода в размере 1,01 доллара.
Разделите безумие и заработайте $ 1,22_ $ 5,22, используя платформу онлайн-покупок.
Нажмите кнопку вызова внизу на 1 секунду.
Пожалуйста, сначала
 Введите следующую контактную информацию в течение [2] секунд, чтобы связаться с менеджером и выиграть 0,1.2$!👇👇
https://api.whatsapp.com/отправить
?Телефон=+62 "
fi

if [ "$updt" -eq 12 ]; then
    # Add your code here for option 12
    pkg update
    echo -e "
    Hello, l would like to request an unban because l feel l have met the requirement to be released from restrictions . l promise to follow the rules and not commit any more violations. number +62thank you."
fi

if [ "$updt" -eq 13 ]; then
    # Add your code here for option 13
    pkg update
    echo -e "
    Lum whatsapp, orang Jepang tak dikenal mengambil alih whatsapp saya, dia menggunakan whatsapp saya untuk menjual 172 video porno dan 13 anak kecil untuk dijual dan diperkosa oleh pembeli, dia juga mengancam saya jika saya tidak memberikan whatsapp saya keluarga saya akan dibunuh dan kakak saya akan mencoba, awalnya saya tidak percaya tetapi Dia tahu rumah keluarga saya dan setelah pria Jepang itu menggunakan whatsapp saya dan saya akan menggunakan whatsapp saya nomor whatsapp saya diblokir setelah itu baca artikel di whatsapp tentang memperlakukan orang Jepang laki-laki itu melanggar ketentuan layanan yang ditemukan di whatsapp setelah saya menggunakan whatsapp pribadi saya. Saya benar-benar memohon kepada whatsapp untuk membatalkan pemblokiran whatsapp saya dan memulihkan akun whatsapp saya terima kasih nomor whatsapp saya +62
    "
fi

if [ "$updt" -eq 14 ]; then
    # Add your code here for option 14
    pkg update
    echo -e "
    Tim Dukungan WhatsApp, Saya Mendapat Keluhan Terkait Akun WhatsApp Saya, Akun WhatsApp Saya Terblokir Dan Saya Tidak Dapat Mengakses Akun Saya, Jika Saya Melakukan Kesalahan, Saya Meminta Maaf Atas Kesalahan Saya, Saya Telah Melakukan Reset Tapi Akun WhatsApp Saya Belum Juga Bisa Di Akses, Saya Sangat Menghormati Atas Pelanggaran Yang Di Beri, Dan Saya Sekarang Mengerti Bahwa Pentingnya Mematuhi Ketentuan Layanan WhatsApp, Karena Jika Tidak Mematuhi Ketentuan Layanan WhatsApp Maka Akan Berpengaruh Pada Akun WhatsApp Yang Saya Gunakan, Saya Dengan Hormat Meminta Kesempatan Untuk Memperbaiki Kesalahan Saya Dan Saya Akan Mematuhi Ketentuan Layanan WhatsApp Pada Masa Yang Mendatang, Saya Mohon Untuk Memulihkan Akun WhatsApp Saya Kembali Agar Dapat Di Akses Kembali, Akun WhatsApp support@support.whatsapp.com
Silakan hubungi kami di nomor ini👇👇↙️
https://api.whatsapp.com/send?phone=+62
"
fi

if [ "$updt" -eq 15 ]; then
    # Add your code here for option 15
    pkg update
    echo -e "
    Olá querido WhatsApp, a conta do WhatsApp que utilizo foi mal utilizada por um irresponsável sem o meu conhecimento, então o número do WhatsApp que utilizo foi bloqueado, espero que possa ser restaurado como todo mundo. Obrigado +62 "
fi

if [ "$updt" -eq 16 ]; then
    # Add your code here for option 16
    pkg update
    echo -e " helo WhatsApp nomor saya terblokir saya tidak ada salah pun tolong di aktifkan lagi nomor saya nomor +62 "
fi

if [ "$updt" -eq 17 ]; then
    # Add your code here for option 17
    pkg update
    echo -e " Hello WhatsApp please reactivate my number it's blocked +62"
fi

if [ "$updt" -eq 18 ]; then
    # Add your code here for option 18
    pkg update
fi

if [ "$updt" -eq 19 ]; then
    # Add your code here for option 19
    pkg update
    echo -e " tolong penggunaan WhatsApp nomor saja di blokir di menonaktifkan tolong pulihkan kembali nomor saja saja janji tidak pake WhatsApp gb clone dengan janji saya dan saya pun salah tolong pulihkan kembali lagi nomor saya nomor saya +62 "
fi

if [ "$updt" -eq 20 ]; then
    # Add your code here for option 20
    pkg update
    echo -e " aktifkan nomor saya terblokir +62 "
fi
fi

if [ "$updt" -eq 2 ] || [ "$updt" -eq 02 ]; then
    # Add your code here for option 2
    pkg update
    git clone https://github.com/VPSHOZOO/KANDURA.sh

cd KANDURA.sh

bash WA.sh
fi


if [ "$updt" -eq 3 ] || [ "$updt" -eq 03 ]; then
    # Add your code here for option 3
    pkg update
    
fi

if [ "$updt" -eq 4 ] || [ "$updt" -eq 04 ]; then
    # Add your code here for option 4
    pkg update
fi

if [ "$updt" -eq 5 ] || [ "$updt" -eq 05 ]; then
    # Add your code here for option 5
    pkg update -y
git clone https://github.com/VPSHOZOO/KANDURA.sh

cd KANDURA.sh

bash DDOS_GAME.sh
fi

if [ "$updt" -eq 6 ] || [ "$updt" -eq 06 ]; then
    # Add your code here for option 6
    pkg update
    rm -rf KANDURA.sh

git clone https://github.com/VPSHOZOO/KANDURA.sh

cd KANDURA.sh
chmod 777 DDOS.sh
bash DDOS.sh
fi

if [ "$updt" -eq 7 ] || [ "$updt" -eq 07 ]; then
    # Add your code here for option 7
    pkg update
fi

if [ "$updt" -eq 8 ] || [ "$updt" -eq 08 ]; then
    # Add your code here for option 8
    pkg update
fi

if [ "$updt" -eq 9 ] || [ "$updt" -eq 09 ]; then
    # Add your code here for option 9
    pkg update
fi

if [ "$updt" -eq 10 ]; then
    # Add your code here for option 10
    pkg update
fi

if [ "$updt" -eq 11 ]; then
    # Add your code here for option 11
    pkg update
fi

if [ "$updt" -eq 12 ]; then
    # Add your code here for option 12
    pkg update
fi

if [ "$updt" -eq 13 ]; then
    # Add your code here for option 13
    pkg update -y
    clear
    termux-setup-storage -y
    clear
    #!/bin/bash
# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
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
echo -e "${GREEN}"
cat << "EOF"
   ██╗ █████╗ ██████╗  █████╗ ███╗   ██╗
   ██║██╔══██╗██╔══██╗██╔══██╗████╗  ██║
   ██║███████║██████╔╝███████║██╔██╗ ██║
██╗██║██╔══██║██╔═══╝ ██╔══██║██║╚██╗██║
╚█████╔╝██║  ██║██║     ██║  ██║██║ ╚████║
 ╚════╝ ╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝ BY  EXECUTOR LORDHOZOO
EOF
echo -e "${NC}"
echo -e "${YELLOW}VPN Proxy Japan for Termux${NC}"
echo -e "${GREEN}1. WireGuard (Fast)${NC}"
echo -e "${GREEN}2. SSH Tunnel (Need VPS)${NC}"
echo -e "${GREEN}3. HTTP Proxy (Hoxy)${NC}"
echo -e "${RED}4. Exit${NC}"
read -p "Pilih metode [1-4]: " choice
case $choice in
    1)
        # WireGuard Method
        echo -e "${YELLOW}Installing WireGuard...${NC}"
        pkg update -y && pkg install -y wget
        wget https://github.com/TunSafe/TunSafe/releases/download/v1.4/tunsafe-linux-arm64 -O tunsafe
        chmod +x tunsafe
        echo -e "${GREEN}Download WireGuard Japan config:${NC}"
        read -p "Masukkan URL config WireGuard (.conf): " wg_url
        wget -O japan.conf "$wg_url"
        echo -e "${GREEN}Running VPN...${NC}"
        ./tunsafe -c japan.conf
        ;;
    2)
        # SSH Tunnel Method
        echo -e "${YELLOW}Setting up SSH Tunnel...${NC}"
        pkg update -y && pkg install -y openssh
        read -p "Masukkan IP VPS Jepang: " vps_ip
        read -p "Masukkan username VPS: " vps_user
        read -p "Masukkan port SSH (default 22): " ssh_port
        ssh_port=${ssh_port:-22}
        ssh -D 8080 -fN "$vps_user@$vps_ip" -p "$ssh_port"
        echo -e "${GREEN}Proxy SOCKS5 aktif di 127.0.0.1:8080${NC}"
        echo "Gunakan perintah ini untuk set proxy:"
        echo -e "${YELLOW}export ALL_PROXY=socks5://127.0.0.1:8080${NC}"
        ;;
    3)
        # HTTP Proxy (Hoxy)
        echo -e "${YELLOW}Installing Hoxy...${NC}"
        pkg update -y && pkg install -y python
        pip install hoxy
        echo -e "${GREEN}Running Hoxy Proxy (Japan)...${NC}"
        hoxy --country jp --type socks5
        ;;
    4)
        echo -e "${RED}Keluar...${NC}"
        exit 0
        ;;
    *)
        echo -e "${RED}Pilihan tidak valid!${NC}"
        exit 1
        ;;
esac
fi

if [ "$updt" -eq 14 ]; then
    # Add your code here for option 14
    pkg update
fi

if [ "$updt" -eq 15 ]; then
    # Add your code here for option 15
    pkg update
fi

if [ "$updt" -eq 16 ]; then
    # Add your code here for option 16
    pkg update
fi

if [ "$updt" -eq 17 ]; then
    # Add your code here for option 17
    pkg update
fi

if [ "$updt" -eq 18 ]; then
    # Add your code here for option 18
    pkg update
fi

if [ "$updt" -eq 19 ]; then
    # Add your code here for option 19
    pkg update
fi

if [ "$updt" -eq 20 ]; then
    # Add your code here for option 20
    pkg update
fi
