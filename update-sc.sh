#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl https://xmy01.vpnshopee.xyz/s/00-1-vvip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo -e "${red}Please Contact Admin  # NAK DAFTAR IP ? CONTACT SAYA @vpnshopee DI TELEGRAM | WhatsApp wa.me/60104557217#${NC}"
exit 0
fi
versi=$(cat /home/version)
if [[ $versi == 1.1 ]]; then
echo "You Have The Latest Version"
exit 0
fi
clear
echo -e "$green   =============================================$NC"
echo -e "$green                     UPDATE SCRIPT        $NC"
echo -e "$green   =============================================$NC"
sleep 5
cd /usr/bin
wget -O menu "http://raw.githubusercontent.com/shopeevpn/premium/main/menu.sh"
# menu ssh-ovpn
wget -O m-sshovpn "http://raw.githubusercontent.com/shopeevpn/premium/main/m-sshovpn.sh"
# menu wg
wget -O m-wg "http://raw.githubusercontent.com/shopeevpn/premium/main/m-wg.sh"
# menu ssr
wget -O m-ssr "http://raw.githubusercontent.com/shopeevpn/premium/main/m-ssr.sh"
# menu xray
wget -O xray-vmess "http://raw.githubusercontent.com/shopeevpn/premium/main/xray-vmess.sh"
wget -O xray-vless "http://raw.githubusercontent.com/shopeevpn/premium/main/xray-vless.sh"
wget -O xray-xtls "http://raw.githubusercontent.com/shopeevpn/premium/main/xray-xtls.sh"
# menu trojan
wget -O m-trojan "http://raw.githubusercontent.com/shopeevpn/premium/main/m-trojan.sh"
# menu system
wget -O m-system "http://raw.githubusercontent.com/shopeevpn/premium/main/m-system.sh"
chmod +x menu
chmod +x m-sshovpn
chmod +x m-wg
chmod +x m-ssr
chmod +x xray-vmess
chmod +x xray-vless
chmod +x xray-xtls
chmod +x m-trojan
chmod +x m-system
cd
rm /home/version
echo "1.1" > /home/version
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
