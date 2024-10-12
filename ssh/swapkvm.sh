#!/bin/bash
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# System Request : Debian 9+/Ubuntu 18.04+/20+
# Develovers » 🗽🥷🎮🧑‍💻🔫Cyberpunk🥷🧑‍💻🗽**TOpPLUG**
# Email      » tuffgamer65@gmail.com
# telegram   » https://t.me/T_OpPLUG
# whatsapp   » wa.me/+254112386921
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🧑‍💻🏴‍☠️🥷🗽**TOpPLUG script**🧑‍💻🏴‍☠️🥷🗽
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "🧑‍💻🥷🎮☁️🎰🌊🛫☁️☁️☁️☁️☁️☁️☁️🏦💵♾️⛽ Cyberpunk☁️Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/HE3ndrixx/cyber/main/ipvps.txt | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Facebook : https://TOpPLUG☁️☁️☁️☁️☁️🧑‍💻Cyberpunk🌊🧑‍💻☁️☁️☁️☁️☁️☁️🎰🗽☁️"
echo -e "${NC}${LIGHT}WhatsApp : 0112386921"
echo -e "${NC}${LIGHT}Telegram : https://t.me/T_OpPLUG"
exit 0
fi
dd if=/dev/zero of=/swapfile1 bs=1024 count=524288
dd if=/dev/zero of=/swapfile2 bs=1024 count=524288
mkswap /swapfile1
mkswap /swapfile2
chown root:root /swapfile1
chown root:root /swapfile2
chmod 0600 /swapfile1
chmod 0600 /swapfile2
swapon /swapfile1
swapon /swapfile2
sed -i '$ i\swapon /swapfile1' /etc/rc.local
sed -i '$ i\swapon /swapfile2' /etc/rc.local
sed -i '$ i\/swapfile1      swap swap   defaults    0 0' /etc/fstab
sed -i '$ i\/swapfile2      swap swap   defaults    0 0' /etc/fstab
rm -f swapkvm.sh