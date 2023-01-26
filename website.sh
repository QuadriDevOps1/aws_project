#!/bin/bash
sudo apt update
sudo apt install apache2 wget unzip -y
wget https://www.tooplate.com/zip-templates/2122_nano_folio.zip
unzip 2122_nano_folio.zip
cp -r 2122_nano_folio/* /var/www/html/
systemctl restart apache2