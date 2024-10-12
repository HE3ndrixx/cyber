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
clear
sqd="$(cat /etc/squid/squid.conf | grep -i http_port | awk '{print $2}' | head -n1)"
sqd2="$(cat /etc/squid/squid.conf | grep -i http_port | awk '{print $2}' | tail -n1)"
echo -e "======================================"
echo -e ""
echo -e "[1]. Change Port $sqd"
echo -e "[2]. Change Port $sqd2"
echo -e "[3]. Exit"
echo -e ""
echo -e "======================================"
echo -e ""
read -p "Select From Options [ 1-3 ] : " prot
echo -e ""
case $prot in
1)
read -p "New Port Squid: " squid
if [ -z $squid ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $squid)
if [[ -z $cek ]]; then
sed -i "s/$sqd/$squid/g" /etc/squid/squid.conf
sed -i "s/$sqd/$squid/g" /root/log-install.txt
/etc/init.d/squid restart > /dev/null
echo -e "\e[032;1mPort $squid modified successfully\e[0m"
else
echo "Port $squid is used"
fi
;;
2)
read -p "New Port Squid: " squid
if [ -z $squid ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $squid)
if [[ -z $cek ]]; then
sed -i "s/$sqd2/$squid/g" /etc/squid/squid.conf
sed -i "s/$sqd2/$squid/g" /root/log-install.txt
/etc/init.d/squid restart > /dev/null
echo -e "\e[032;1mPort $squid modified successfully\e[0m"
else
echo "Port $squid is used"
fi
;;
3)
exit
menu
;;
*)
echo "Please enter an correct number"
;;
esac

