#!/bin/bash

echo "Inicializando o novo servidor"

apt-get update
apt-get updagre -y
apt-get install apache2 unzip -y

echo "Baixando e configurando o projeto"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim"
