#!/bin/bash

source /etc/os-release

# colours
light="\e[1;32m"
dark="\e[0;32m"
# url
finurl=$HOME_URL
finurl=${finurl/https:\/\//}
finurl=${finurl/http:\/\//}
finurl=${finurl##www.}
finurl=${finurl%%\/}

echo -e "\e[1;30mWelcome to $finurl, $(whoami)!"
echo
echo -e "${light}kernel  ${dark}$(uname -sr)"
echo -e "${light}shell   ${dark}$(basename $SHELL)"
echo -e "${light}cpu     ${dark}"
echo -e "${light}gpu     ${dark}"
echo -e "${light}ram     ${dark}"
echo -e "${light}host    ${dark}$(cat /sys/class/dmi/id/sys_vendor) $(cat /sys/class/dmi/id/product_version)"




echo -e "\e[0;30m██\e[0;31m██\e[0;32m██\e[0;33m██\e[0;34m██\e[0;35m██\e[0;36m██\e[0;37m██\n\e[1;30m██\e[1;31m██\e[1;32m██\e[1;33m██\e[1;34m██\e[1;35m██\e[1;36m██\e[1;37m██\e[0m"
