#!/bin/bash

source /etc/os-release

nopreurl=${HOME_URL/https:\/\//}
nopreurl=${nopreurl%%\/}

echo "Welcome to $nopreurl, $(whoami)!"
echo 
echo "Using the $(uname -s) kernel on version $(uname -r)"
echo
echo "Hardware info:"
echo "CPU: <cpu>"
echo "GPU: <gpu>"
echo "MEM: <mem>"
echo "RES: <res>"
echo -e "\n\e[0;30m██\e[0;31m██\e[0;32m██\e[0;33m██\e[0;34m██\e[0;35m██\e[0;36m██\e[0;37m██\n\e[1;30m██\e[1;31m██\e[1;32m██\e[1;33m██\e[1;34m██\e[1;35m██\e[1;36m██\e[1;37m██\e[0m"
