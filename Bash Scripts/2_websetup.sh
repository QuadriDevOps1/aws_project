#!/bin/bash

# Installing dependencies 
echo "#####################################"
echo "Installing packages"
echo "#####################################"
sudo apt install wget unzip apache2 -y > /dev/null
echo

# Start and Enable Service
echo "#####################################"
echo "Start and Enable HTTPD Service"
echo "#####################################"
sudo systemctl start apache2
sudo systemctl enable apache2
echo

# Creating Temp Directory
echo "#####################################"
echo "Starting Artifact Deployment"
echo "#####################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2125_artxibition.zip > /dev/null
unzip 2125_artxibition.zip > /dev/null
sudo cp -r 2125_artxibition/* /var/www/html/
echo

# Bounce Service
echo "######################################"
echo "Restarting the HTTPD Service"
sudo systemctl restart apache2
echo

# Cleanup 
echo "######################################"
echo "Removing the Temporary Files"
echo "######################################"
rm -rf /tmp/webfiles
echo
