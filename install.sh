#!/bin/bash
apt-get update && apt-get upgrade -y && apt-get install git speedtest-cli mc -y

        sleep 2
    echo #############################################################
    echo установка DUF
    echo #############################################################

wget https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_linux_amd64.deb && dpkg -i duf_0.6.0_linux_amd64.deb

    echo #############################################################
    echo установка docker и docker-compose
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
    echo #############################################################
        sleep 3
curl -fsSL https://get.docker.com -o get-docker.sh  && sh get-docker.sh sudo systemctl start docker  && sudo systemctl enable docker && sudo curl -L --fail https://raw.githubusercontent.com/linuxserver/docker-docker-compose/master/run.sh -o /usr/local/bin/docker-compose  &&  chmod +x /usr/local/bin/docker-compose
    echo #############################################################
    echo #############################################################
    echo #############################################################
    echo установка wireguard
    echo #############################################################
        sleep 3
wget -qO- https://raw.githubusercontent.com/DigneZzZ/dwg-ui/main/setup.sh

apt remove ufw -y
    echo #############################################################
    echo #############################################################
    echo #############################################################
echo веб морда: iPадресVPS:51821
echo AdGuard HOME крутится внутри сети WireGuard по адресу http://10.2.0.100/     логин\пароль: admin
    echo #############################################################
    echo #############################################################
    echo #############################################################


# функция перезагрузки (может не заработать, я не провелил что то)
read -p "надо перезагрузиться (y/n): " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "перезагружаем..."
    reboot
else
    echo "без перезагрузки"
fi