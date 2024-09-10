#!/bin/bash
#colours
BOLD="\e[1m"
UNDERLINE="\e[4m"
RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34"
CYAN="\e[36m"
NC="\e[0m"
VERSION="2.0"  

clear ;

echo "


██╗    ██╗ ██████╗ ██████╗ ██████╗ ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗        ███████╗██╗  ██╗
██║    ██║██╔═══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║        ██╔════╝██║  ██║
██║ █╗ ██║██║   ██║██████╔╝██║  ██║██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║        ███████╗███████║
██║███╗██║██║   ██║██╔══██╗██║  ██║██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║        ╚════██║██╔══██║
╚███╔███╔╝╚██████╔╝██║  ██║██████╔╝██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██╗███████║██║  ██║
 ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝


"|lolcat


#-Update & Upgrade full
echo -e $BOLD"[+] Updating Packages...$NC ${result}" | lolcat
echo 'root' | sudo -kS  apt install -y lolcat wget git curl toilet figlet ;
# echo 'root' | sudo -kS  apt -y update ; echo 'root' | sudo -kS  rm /var/lib/apt/lists/lock ;  echo 'root' | sudo -kS  apt autoremove -y  ;  echo 'root' | sudo -kS  apt clean ;  echo 'root' | sudo -kS  apt autoclean ; echo 'root' | sudo -kS  apt -y upgrade 

echo -e $BOLD"[+]Installing Wordlist...$NC ${result}" | lolcat
git clone https://github.com/ven0m90/wordinstall.sh.git  ~/wordlist

mkdir -p   ~/wordlist  ~/wordlist/dns   ~/wordlist/user-pass  ~/wordlist/words-list   ~/wordlist/parameters  ~/wordlist/fuzzing

chmod +rwx ~/wordlist

downloading_wordlist(){

git clone https://github.com/random-robbie/bruteforce-lists  ~/wordlist/fuzzing/bruteforce-lists
git clone https://github.com/orwagodfather/WordList   ~/wordlist/fuzzing/gofather-wordlist

wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/namelist.txt -P   ~/wordlist/
#fuzzing-directory  
wget https://raw.githubusercontent.com/ayoubfathi/leaky-paths/main/leaky-paths.txt -P  ~/wordlist/
wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt -P  ~/wordlist/fuzzing/boom.txt
wget https://raw.githubusercontent.com/maurosoria/dirsearch/master/db/dicc.txt -P  ~/wordlist/fuzzing/
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_directories_1m_2024_05_28.txt -P  ~/wordlist/fuzzing/
wget  https://gist.githubusercontent.com/nullenc0de/96fb9e934fc16415fbda2f83f08b28e7/raw/146f367110973250785ced348455dc5173842ee4/content_discovery_nullenc0de.txt  -P  ~/wordlist/fuzzing/
git clone https://github.com/coffinsp/oneListForall  ~/wordlist/fuzzing/oneListForall-coffinxp

#parameter
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_parameters_top_1m_2024_05_28.txt -P  ~/wordlist/parameters/
wget https://raw.githubusercontent.com/s0md3v/Arjun/master/arjun/db/large.txt -P  ~/wordlist/parameters/

#dns-bruteforce-shuffeldns
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_subdomains_2024_05_28.txt -P  ~/wordlist/dns/
git clone https://github.com/n0kovo/n0kovo_subdomains  ~/wordlist/dns/n0kovo_subdomains 
curl -sL https://raw.githubusercontent.com/guelfoweb/knock/master/knock/wordlist/wordlist.txt -o ~/wordlist/dns/kockpy10k.txt
curl -sL  https://gist.githubusercontent.com/six2dez/ffc2b14d283e8f8eff6ac83e20a3c4b4/raw -o ~/wordlist/dns/permutations_list.txt 


#payloads
git clone https://github.com/coffinsp/payloads  ~/wordlist/payloads-conffinxp



#resolver
rm ~/wordlist/resolvers.txt ; curl -L https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt -o ~/wordlist/resolvers.txt


}
downloading_wordlist

echo -e $BOLD"[+]Done...$NC ${result}" | lolcat
echo -e $BOLD"[+]Wordlist installed in ~/wordlist$NC ${result}" | lolcat
