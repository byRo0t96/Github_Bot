!/bin/bash
# v.0.0.1
# Github_Bot
# Coded by: Ro0t-96
# Github: https://github.com/byRo0t96
#!/bin/bash
printf '\033]2;Github_Bot\a'
#########################resize terminal window
resize -s 35 76 > /dev/null

#########################Colors
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
trap 'printf "\n";stop;exit 1' 2

#########################logo
logo() {
clear
printf "\e[1;32m"
printf " ▄▀▀▀▀▄   ▄▀▀█▀▄    ▄▀▀▀█▀▀▄  ▄▀▀▄ ▄▄   ▄▀▀▄ ▄▀▀▄  ▄▀▀█▄▄       ▄▀▀█▄▄   ▄▀▀▀▀▄   ▄▀▀▀█▀▀▄ \n"
printf "█        █   █  █  █    █  ▐ █  █   ▄▀ █   █    █ ▐ ▄▀   █     ▐ ▄▀   █ █      █ █    █  ▐ \n"
printf "█    ▀▄▄ ▐   █  ▐  ▐   █     ▐  █▄▄▄█  ▐  █    █    █▄▄▄▀        █▄▄▄▀  █      █ ▐   █     \n"
printf "█     █ █    █        █         █   █    █    █     █   █ v.0.0.1█   █  ▀▄    ▄▀    █      \n"
printf "▐▀▄▄▄▄▀ ▐ ▄▀▀▀▀▀▄   ▄▀         ▄▀  ▄▀     ▀▄▄▄▄▀   ▄▀▄▄▄▀       ▄▀▄▄▄▀    ▀▀▀▀    ▄▀       \n"
printf "▐        █       █ █          █   █               █    ▐       █    ▐            █         \n"
printf "         ▐       ▐ ▐          ▐   ▐               ▐            ▐                 ▐         \n"
printf "             https://github.com/byRo0t96          \n"
printf "\033"
}

#########################option
option() {
read -p $'\e[1;37mRo0t-96> github user name: ' user
echo -n 'Ro0t-96> github password: '
read -s pass
printf "\n"
read -p $'\e[1;37mRo0t-96> repository name: ' r_name
echo "user = '${user}'
passw = '${pass}'
repository_name = '${r_name}'" > userpass.py
}
#########################option2
option2() {
printf "\e[1;32m[\e[1;31m01\e[1;32m] \e[1;33mNew repository \033\n"
printf "\e[1;32m[\e[1;31m02\e[1;32m] \e[1;33mDelete repository\033\n"
printf "\e[1;32m[\e[1;31mCC\e[1;32m] \e[1;33mClear\033\n"
printf "\e[1;32m[\e[1;31mQQ\e[1;32m] \e[1;33mExit\033\n"
read -p $'\e[1;37mRo0t-96> Your option: ' option2

if [[ $option2 == q || $option2 == qq || $option2 == Q || $option2 == QQ ]]; then
exit 1

elif [[ $option2 == c || $option2 == cc || $option2 == C || $option2 == CC ]]; then
if [[ -e userpass.py ]]; then
rm -r userpass.py
fi
if [[ -e userpass.pyc ]]; then
rm -r userpass.pyc
fi
exit 1

elif [[ $option2 == 1 || $option2 == 01 ]]; then
python new_repository.py
clear
logo
option2

elif [[ $option2 == 2 || $option2 == 02 ]]; then
python delete_repository.py
clear
logo
option2

else
printf "\e[1;31m [!] Invalid option!\n"
sleep 1
option2
fi

}

logo
option
clear
logo
option2





