#!/bin/bash

echo  "Enter the number of days: "
read days


echo "List of files older than $days days:"
find   /home/knoldus -maxdepth 1 -type f -mtime +$days 


echo  "Do you want to continue? (yes/no): "
read answer

# Check the user's response
if [ "$answer" == "yes"  ]; then 
	'./filesystem.sh'
else
    echo "Exiting the script..."
    exit 
fi
