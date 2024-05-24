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

sudo apt  update ; sudo apt install -y lolcat

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
sudo apt install -y lolcat wget git curl toilet figlet ;
#sudo apt -y update ;sudo rm /var/lib/apt/lists/lock ; sudo apt autoremove -y  ; sudo apt clean ; sudo apt autoclean ;sudo apt -y upgrade 

echo -e $BOLD"[+]Installing Wordlist...$NC ${result}" | lolcat
git clone https://github.com/ven0m90/wordinstall.sh.git  ~/wordlist

mkdir -p   ~/wordlist  ~/wordlist/dns  ~/wordlist/payloads-list  ~/wordlist/user-pass  ~/wordlist/words-list

chmod +rwx ~/wordlist

downloading_wordlist(){
#fuzzing-directory  
wget https://raw.githubusercontent.com/six2dez/OneListForAll/main/onelistforallshort.txt  -P ~/wordlist/
wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/extensions.txt  -P ~/wordlist/
wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt -P ~/wordlist/
wget https://raw.githubusercontent.com/maurosoria/dirsearch/master/db/dicc.txt -P ~/wordlist/
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_directories_1m_2024_04_28.txt -P ~/wordlist/

#js
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_js_2024_04_28.txt

#dns-bruteforce-shuffeldns
wget https://wordlists-cdn.assetnote.io/data/automated/httparchive_subdomains_2024_04_28.txt -P  ~/wordlist/dns/
wget https://raw.githubusercontent.com/netsecurity-as/subfuz/master/subdomain_megalist.txt -P  ~/wordlist/dns/
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/deepmagic.com-prefixes-top500.txt subdomain-top500.txt -P ~/wordlist/dns/
wget https://raw.githubusercontent.com/n0kovo/n0kovo_subdomains/main/n0kovo_subdomains_tiny.txt  -P subdomain50k.txt -P ~/wordlist/dns/
wget https://wordlists-cdn.assetnote.io/data/manual/2m-subdomains.txt -P ~/wordlist/dns/
wget https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt -P ~/wordlist/dns/
wget https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt -P ~/wordlist/dns/

#payloads
wget https://raw.githubusercontent.com/swisskyrepo/PayloadsAllTheThings/master/Directory%20Traversal/Intruder/dotdotpwn.txt 
cat dotdotpwn.txt | tee -a  ~/wordlist/payloads-list/lfipayloads.txt
rm dotdotpwn.txt

#resolver
sudo rm ~/wordlist/resolvers.txt ; curl -L https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt -o ~/wordlist/resolvers.txt


}
downloading_wordlist

echo -e $BOLD"[+]Done...$NC ${result}" | lolcat
echo -e $BOLD"[+]Wordlist installed in ~/wordlist$NC ${result}" | lolcat
