#!/bin/bash

### This script prints system info ###
echo "Welcome to Bash Scripting"
echo

# Cheking system uptime
echo "#############################"
echo "The uptime of this system is"
uptime
echo
# Checking system memory utilization
echo "#############################"
echo "Memory utilization"
free -m 
echo
# Checking system Disk utilization

echo "#############################"
echo "Disk utilization"
df -h
