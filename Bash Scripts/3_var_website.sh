#!/bin/bash

# Variables declaration
PACKAGE="wget unzip apache2"
SVC="apache2"
URL="https://www.tooplate.com/zip-templates/2125_artxibition.zip"
ART_NAME="2125_artxibition"
TEMP_DIR="/tmp/webfiles"

# Installing dependencies 
echo "#####################################"
echo "Installing packages"
echo "#####################################"
sudo apt install $PACKAGE -y > /dev/null
echo

# Start and Enable Service
echo "#####################################"
echo "Start and Enable HTTPD Service"
echo "#####################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "#####################################"
echo "Starting Artifact Deployment"
echo "#####################################"
mkdir -p $TEMP_DIR
cd $TEMP_DIR
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
echo

# Bounce Service
echo "######################################"
echo "Restarting the HTTPD Service"
sudo systemctl restart $SVC
echo

# Cleanup 
echo "######################################"
echo "Removing the Temporary Files"
echo "######################################"
rm -rf $TEMP_DIR
echo
