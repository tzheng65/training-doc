#!/bin/bash
# array and loops

# for loop with files / directories
echo -e "\e[31;43m FOR LOOP....\e[0m"
for FILE in /home/*
do
 echo -e "\e[28;33m $FILE  \e[0m"
done
