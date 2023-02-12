#!/bin/bash
sudo systemctl stop apache2
sudo rm -rf /var/www/html/*
sudo apt remove wget unzip apache2 -y