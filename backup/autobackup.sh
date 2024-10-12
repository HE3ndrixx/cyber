#!/bin/bash
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# System Request : Debian 9+/Ubuntu 18.04+/20+
# Develovers » 🗽🥷🎮🧑‍💻🔫Cyberpunk🥷🧑‍💻🗽TOpPLUG
# Email      » tuffgamer65@gmail.com
# telegram   » https://t.me/T_OpPLUG
# whatsapp   » wa.me/+254112386921
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🧑‍💻🏴‍☠️🥷🗽 TOpPLUG script 🧑‍💻🏴‍☠️🥷🗽
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
echo "🗽🥷🎮🧑‍💻🔫Cyberpunk🥷🧑‍💻🗽TOpPLUG☁️☁️☁️☁️☁️Checking VPS"
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
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# BEGIN_Backup" /etc/crontab)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
function start() {
email=$(cat /home/email)
if [[ "$email" = "" ]]; then
echo "🗽🥷🎮🧑‍💻🔫Cyberpunk🥷🧑‍💻🗽TOpPLUG☁️☁️☁️☁️☁️Please enter your email"
read -rp "Email : " -e email
cat <<EOF>>/home/email
$email
EOF
fi
cat << EOF >> /etc/crontab
# BEGIN_Backup
5 0 * * * root backup
# END_Backup
EOF
service cron restart
sleep 1
echo " Please Wait"
clear
echo " Autobackup Has Been Started"
echo " Data Will Be Backed Up Automatically at 00:05 GMT +7"
exit 0
}
function stop() {
email=$(cat /home/email)
sed -i "/^$email/d" /home/email
sed -i "/^# BEGIN_Backup/,/^# END_Backup/d" /etc/crontab
service cron restart
sleep 1
echo " Please Wait"
clear
echo " Autobackup Has Been Stopped"
exit 0
}
clear
echo -e "=============================="
echo -e "     Autobackup Data $sts     "
echo -e "=============================="
echo -e "1. Start Autobackup"
echo -e "2. Stop Autobackup"
echo -e "=============================="
read -rp "Please Enter The Correct Number : " -e num
if [[ "$num" = "1" ]]; then
start
elif [[ "$num" = "2" ]]; then
stop
else
clear
echo " You Entered The Wrong Number"
menu
fi