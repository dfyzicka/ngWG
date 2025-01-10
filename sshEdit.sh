#!/bin/bash

# каким портом торчим наружу эсэсашем
read -p "на какой порт меняем SSH (по умолчанию 22): " new_port
new_port=${new_port:-22}

# SSH юзер 
read -p "какой юзер будет входить по SSH: " ssh_user

# Правим конфиг 
sed -i 's/^PermitRootLogin yes/#PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/^Port 22/#Port 22/' /etc/ssh/sshd_config
sed -i "/^#Port 22/a Port $new_port" /etc/ssh/sshd_config
sed -i "/^#PermitRootLogin yes/a PermitRootLogin no" /etc/ssh/sshd_config
sed -i "/^PermitRootLogin no/a AllowUsers $ssh_user" /etc/ssh/sshd_config

# ребут демона
echo "ребутаем демона SSH"
systemctl restart sshd && echo "SSH успешно перезапущен." || echo "Ошибка -тiкай с дому"
