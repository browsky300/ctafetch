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

echo -e "\e[0;30m\e[1;40m▀\e[0;31m\e[1;41m▀\e[0;32m\e[1;42m▀\e[0;33m\e[1;43m▀\e[0;34m\e[1;44m▀\e[0;35m\e[1;45m▀\e[0;36m\e[1;46m▀\e[0;37m\e[1;47m▀\e[0m"

echo -e "${colour1}kernel  ${colour2}$(uname -sr)"
echo -e "${colour1}shell   ${colour2}$(basename $SHELL)"
echo -e "${colour1}cpu     ${colour2}"
echo -e "${colour1}gpu     ${colour2}"
echo -e "${colour1}ram     ${colour2}"
echo -e "${colour1}host    ${colour2}$(cat /sys/class/dmi/id/sys_vendor) $(cat /sys/class/dmi/id/product_version)"

echo -en "\e[0m"





# old color test
# echo -e "\e[0;30m██\e[0;31m██\e[0;32m██\e[0;33m██\e[0;34m██\e[0;35m██\e[0;36m██\e[0;37m██\n\e[1;30m██\e[1;31m██\e[1;32m██\e[1;33m██\e[1;34m██\e[1;35m██\e[1;36m██\e[1;37m██\e[0m"
