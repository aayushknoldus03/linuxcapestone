#!/bin/bash


echo "enter the file from where you want to perform the task"
read filename

echo -e "\tAWK command\n"
echo  -e "printing the first word of each line in $filename \t"
awk '{print $1}' $filename

echo -e "\tSED command\n"
echo  "enter the word you want to exchange within the $filename"
read firstword
read secondword
echo -e "\n"

sed "s/$firstword/$secondword/g" $filename

echo -e "\n\tGREP command\n"
echo  "enter the word you want to seach in the $filename:"
read wordtosearch
grep "$wordtosearch" $filename
