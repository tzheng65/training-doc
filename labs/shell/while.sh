#!/bin/bash
# array and loops

DIRS[0]="TMP1"
DIRS[1]="TMP2"
DIRS[2]="TMP3"

# while loop
echo -e "\e[31;43m WHILE LOOP....\e[0m"
COUNTER=0
LENGTH=${#DIRS[*]}
echo $LENGTH
while [ $COUNTER -lt $LENGTH ]
do
 echo ${DIRS[$COUNTER]}
 # use back-quotes below 
 COUNTER=`expr $COUNTER + 1`
done