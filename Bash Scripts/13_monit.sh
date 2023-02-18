#!/bin/bash

echo "#####################################################"

ls /var/run/apache2/apache2.pid &> /dev/null

if [ $? -eq 0 ]
then
   echo "Apache2 process is running."
else
   echo "Apache2 process is NOT Running."
   echo "Starting the process"
   systemctl start apache2 
   if [ $? -eq 0 ]
   then
      echo "Process started successfully."
   else
      echo "Process Starting Failed, contact the admin."
   fi
fi
echo "#####################################################"
echo 