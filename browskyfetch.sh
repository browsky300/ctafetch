#!/bin/bash

source /etc/os-release

# colours
colour1="\e[1;32m"
colour2="\e[0;32m"

# url
finurl=$HOME_URL
finurl=${finurl/https:\/\//}
finurl=${finurl/http:\/\//}
finurl=${finurl##www.}
finurl=${finurl%%\/}

echo -e "\e[1;31mWelcome to $finurl, $(whoami) >:^)"
echo #-e "\e[0;30m\e[1;40m▀\e[0;31m\e[1;41m▀\e[0;32m\e[1;42m▀\e[0;33m\e[1;43m▀\e[0;34m\e[1;44m▀\e[0;35m\e[1;45m▀\e[0;36m\e[1;46m▀\e[0;37m\e[1;47m▀\e[0m"
echo -e "${colour1}kernel  ${colour2}$(uname -sr)"
echo -e "${colour1}shell   ${colour2}$(basename $SHELL)"
echo -e "${colour1}arch    ${colour2}$(uname -m)"
echo -e "${colour1}cpu   ${colour2}$(lscpu | awk '/Model name/ {$1=$2=""; print $0}')"
echo -e "${colour1}gpu     ${colour2}"
echo -e "${colour1}ram     ${colour2}"
echo -e "${colour1}res     ${colour2}$(xrandr | awk '/*/ {print $1}')"
echo -e "${colour1}host    ${colour2}$(cat /sys/class/dmi/id/sys_vendor) $(cat /sys/class/dmi/id/product_version)"
echo -en "\e[0m"
