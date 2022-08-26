#!/bin/bash

source /etc/os-release

# colours
colour1="\e[1;32m"
colour2="\e[0;32m"
# url (this is dumb but im too retarded to figure out how to do it any other way)
finurl=$HOME_URL
finurl=${finurl/https:\/\//}
finurl=${finurl/http:\/\//}
finurl=${finurl##www.}
finurl=${finurl%%\/}

echo -e "\e[1;31mWelcome to $finurl, $(whoami)!"
echo #-e "\e[0;30m\e[1;40m▀\e[0;31m\e[1;41m▀\e[0;32m\e[1;42m▀\e[0;33m\e[1;43m▀\e[0;34m\e[1;44m▀\e[0;35m\e[1;45m▀\e[0;36m\e[1;46m▀\e[0;37m\e[1;47m▀\e[0m"
echo -e "${colour1}kernel   ${colour2}$(uname -sr)"
echo -e "${colour1}arch     ${colour2}$(uname -m)"
echo -e "${colour1}shell    ${colour2}$(basename $SHELL)"
echo -e "${colour1}desktop  ${colour2}$XDG_CURRENT_DESKTOP"
echo -e "${colour1}uptime  ${colour2}$(uptime -p | awk '{$1="";print $0}')"
echo -e "${colour1}host     ${colour2}$(cat /sys/class/dmi/id/product_name) $(cat /sys/class/dmi/id/product_version)"
echo -en "\e[0m"
