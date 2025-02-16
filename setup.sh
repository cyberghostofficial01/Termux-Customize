
#!/bin/bash 
clear
echo
pkg install pv -y >/dev/null 2>&1
echo -e "\033[32m\033[1m]────────────────────────────────────────────["
echo -e "\033[33m\033[1m   Installing Packages and All Dependencies" | pv -qL 10
apt update                    
apt upgrade -y 
pkg install python -y 
pkg install python2 -y 
pkg install python3 -y

pkg install termux-api -y 
termux-setup-storage
echo -e "\033[31m\033[1m        INSTALLED SUCCESSFULLY \033[32m[\033[36m✓\033[32m]" | pv -qL 12
echo -e "\033[33m\033[1m]────────────────────────────────────────────["


bash Login.sh