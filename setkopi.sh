#!/data/data/com.termux/files/usr/bin/bash
clear
#warna
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

#variabel
myip=$(shodan myip)

apt update
apt upgrade -y 
easy_install shodan
shodan init qSCNG9LGkIliyCfD7EVqVMx7EBSyRCtn
clear

echo ""
echo -e "\033[34m ███████╗███████╗████████╗██╗  ██╗ ██████╗ ██████╗ ██╗ \033[0m"
echo -e "\033[34m ██╔════╝██╔════╝╚══██╔══╝██║ ██╔╝██╔═══██╗██╔══██╗██║ \033[0m"
echo -e "\033[34m ███████╗█████╗     ██║   █████╔╝ ██║   ██║██████╔╝██║ \033[0m"
echo -e "\033[34m ╚════██║██╔══╝     ██║   ██╔═██╗ ██║   ██║██╔═══╝ ██║ \033[0m"
echo -e "\033[34m ███████║███████╗   ██║   ██║  ██╗╚██████╔╝██║     ██║ \033[0m"
echo -e "\033[34m ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝         \033[0m"


echo ""
echo " [01] Check IP Public "
echo " [02] Install ZSH Style "
echo " [03] Red_Hawk "
echo " [04] D-TECT "
echo " [05] Xshell "
echo " [06] Lokomedia Auto Exploit "
echo " [07] RouterSploit "
echo " [08] Metasploit "
echo " [09] fsociety "
echo " [10] Namp "
echo " [11] WPSCAN "
echo " [12] Termux Sudo "
echo " [13] Kali Nethunter "
echo " [14] PyDdos "
echo " [15] Hunner "
echo " [16] Red_Hawk "
echo " [17] Red_Hawk "
echo " [x] EXIT "
echo ""
read -p " Masukan Pilihan [1-17] : " a
if [ $a -eq 1 ];
then
echo ""
echo "[+] This My Ip Public"
echo -e $okegreen "Ip Anda: $myip"
elif [ $a -eq 2 ];
then
echo"[+] Installing ZSH Style"
apt install -y zsh
apt install -y git
apt install -y unzip
apt install -y screenfetch
wget https://github.com/iqbalfaf/zsh-style/install.sh
chmod +x install.sh
wget -O $HOME/.oh-my-zsh/templates/termuxer.zsh-theme https://github.com/iqbalfaf/zsh-style/termuxer.zsh-theme 
cp $PREFIX/etc/profile profile.bak
wget -O $PREFIX/etc/profile https://github.com/iqbalfaf/zsh-style/profile
cp $HOME/.zshrc .zshrc.bak
wget -O $HOME/.zshrc https://github.com/zsh-style/.zshrc
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh



elif [ $a -eq 3 ];
then
clear
echo -e $BlueF "[+] Installing Red_Hawk "
sleep 1 
apt upgrade -y
apt install php -y
apt install git -y 
cd ..
git clone https://github.com/Tuhinshubhra/RED_HAWK.git
echo -e $lightgreen "[✔] Installation Red_Hawk Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 4 ];
then
clear
echo -e $BlueF "[+] Installing D-Tect "
sleep 1
apt update
apt upgrade -y
apt install git -y
apt install python2 -y 
cd ..
git clone https://github.com/shawarkhanethicalhacker/D-TECT.git
echo "python2 $HOME/D-TECT/d-tect.py" > $PREFIX/bin/d-tect
chmod +x $PREFIX/bin/d-tect
echo -e $lightgreen "[✔] Installation D-Tect Success "
echo -e $red "Untuk Menjalankan Ketik d-tect"
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 5 ];
then
echo -e $BlueF "[+] Installing Xshell "
sleep 1
apt update
apt upgrade -y
apt install git -y
apt install git  -y
apt install perl -y 
cd ..
git clone https://github.com/Manisso/Xshell.git
echo -e $lightgreen "[✔] Installation Xshell Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 6 ];
then
echo -e BlueF "[+] Installing lokomed "
sleep 1
apt upgrade -y
apt install wget -y
apt install php -y 
cd ..
mkdir lokmed
cd ~/lokmed
wget http://pastebin.com/raw/sPpJRjCZ -O lokmedia.php
chmod +x lokmedia.php
cd ~/
echo"Unuk Menggunakan Ketik php lokomedia.php target.txt"
echo -e $lightgreen "[✔] Installation lokomed Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 7 ];
then
clear
echo -e $BlueF "[+] Installing routersploit "
sleep 1
apt upgrade -y 
apt install git -y
apt install python2 -y
cd routersploit
pip2 install -r requirements 
pip2 install -r requirements-dev.txt
pip2 install requests 
cd ..
git clone https://github.com/reverse-shell/routersploit
echo -e $lightgreen "[✔] Installation routersploit Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 8 ];
then
clear
echo -e $BlueF "[+] Installing Metasploit "
sleep 1
apt upgrade -y
apt install wget
cd ..
wget https://raw.githubusercontent.com/verluchie/termux-metasploit/master/install.sh
chmod +x install.sh
sh install.sh
echo -e $lightgreen "[✔] Installation Metasploit Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 9 ];
then
clear
echo -e $BlueF"[+] Installing fsociety "
apt update 
apt upgrade -y
apt install wget -y 
apt install python2 -y
wget https://raw.githubusercontent.com/Manisso/fsociety/master/fsociety.py > $PREFIX/share/fsociety.py
wget https://raw.githubusercontent.com/Manisso/fsociety/master/fsociety.cfg > $PREFIX/share/fsociety.cfg
echo "python2 $PREFIX/share/fsociety.py" > $PREFIX/bin/fsociety
chmod +x $PREFIX/bin/fsociety
echo "Untuk Menjalankan Ketik fsociety"
echo -e $lightgreen"[✔] Installation fsociety Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh
elif [ $a -eq 10 ];
then
clear
echo -e $BlueF"[+] Installing Nmap "
apt update
apt upgrade -y 
apt install nmap -y
echo -e $lightgreen"[✔] Installation Nmap Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 11 ];
then
clear
echo -e $BlueF"[+] Installing WPSCAN "
apt upgrade -y
apt install ruby
apt install curl
apt install git
cd ..
git clone https://github.com/wpscanteam/wpscan
cd ~/wpscan
gem install bundle
bundle config build.nokogiri --use-system-libraries
bundle install
ruby wpscan.rb --update
cd ~/
echo -e $lightgreen"[✔] Installation WPSCAN Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 12 ];
then
clear
echo -e $BlueF"[+] Installing Termux Sudo "
apt upgrade -y 
apt install ncurses-utils -y
apt install git 
cd ..
git clone https://github.com/st42/termux-sudo
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
echo -e $lightgreen"[✔] Installation Termux Sudo Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 13 ];
then
clear
echo -e $BlueF"[+] Installing Kali Nethunter "
apt upgrade -y
apt install git -y
cd ..
git clone https://github.com/Hax4us/Nethunter-In-Termux.git
cd ~/Nethunter-In-Termux
chmod +x kalinethunter
./kalinethunter
echo -e $lightgreen"[✔] Installation Kali Nethunter Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 14 ];
then
clear
echo -e $BlueF"[+] Installing PyDdos "
apt update
apt upgrade -y 
apt install python -y 
wget https://raw.githubusercontent.com/t7hm1/pyddos/master/pyddos.py
chmod +x pyddos.py
echo "Cara menggunakan ketik python pyddos.py"
echo -e $lightgreen"[✔] Installation PyDdos Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq 15 ];
then
clear
echo -e $BlueF"[+] Installing Hunner "
apt update
apt upgrade -y 
apt install git -y
git clone https://github.com/b3-v3r/Hunner.git
echo "python $HOME/Hunner/hunner.py" > $PREFIX/bin/hunner
chmod +x $PREFIX/bin/hunner
echo -e $lightgreen"[✔] Installation Hunner Success "
read -p " Presh [ ENTER ] to return to menu... "
./setkopi.sh

elif [ $a -eq x ];
then
exit
else

echo -e $red " [!] Wrong Command! "
fi
