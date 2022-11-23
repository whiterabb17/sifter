#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
CHOICE=''

cd /opt/Infoga
echo -e "${RED}"
figlet -f mini "Infoga"
echo -e "${NC}"
echo -e "${YLW}Would you like to use a (s)ingle email or search a (d)omain? (s/d)"
read SDC
if [[ ${SDC} == "s" ]]; then 
    echo -e "${RED}Please enter the target email: ${NC}"
    read TAR
    CHOICE='--info '
elif; then
    echo -e "${RED}Please enter the target domain: ${NC}"
    read TAR
    CHOICE='--domain '
fi
echo -e "${YLW}Please enter the output file name: ${NC}"
read OUTFile
if [[ ! -d '/opt/sifter/results/Infoga' ]]; then
    sudo mkdir /opt/sifter/results/Infoga
    sudo chown $USER:$USER -R /opt/sifter/results
fi
sudo ./env/bin/python3 infoga.py ${CHOICE}${TAR} --source all --breach -v 2 --report /opt/sifter/results/Infoga/${OUTFile}
sleep 5 
echo -e "	============================================"


##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################
