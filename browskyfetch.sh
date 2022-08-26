#!/bin/bash

source /etc/os-release

# url
finurl=$HOME_URL
finurl=${finurl/https:\/\//}
finurl=${finurl/http:\/\//}
finurl=${finurl##www.}
finurl=${finurl%%\/}

echo "Welcome to $finurl, $(whoami)!"
echo 
echo "Using the $(uname -s) kernel on version $(uname -r)"
echo
echo -e "\e[0;30m██\e[0;31m██\e[0;32m██\e[0;33m██\e[0;34m██\e[0;35m██\e[0;36m██\e[0;37m██\n\e[1;30m██\e[1;31m██\e[1;32m██\e[1;33m██\e[1;34m██\e[1;35m██\e[1;36m██\e[1;37m██\e[0m"
