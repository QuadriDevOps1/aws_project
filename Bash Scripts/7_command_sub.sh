#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "###################################################"

FREERAM=$(free -m | grep Mem | awk ‘{print $4}’)
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/root' | awk '{print $4}')

echo "###################################################"
echo " Available free RAM is $FREERAM MB "
echo "###################################################"
echo " Current load on the machine is $LOAD "
echo "###################################################"
echo " Currently the available disk is $ROOTFREE "
echo "###################################################"