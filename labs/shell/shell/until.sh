#!/bin/bash
# array and loops

DIRS[0]="TMP1"
DIRS[1]="TMP2"
DIRS[2]="TMP3"

LENGTH=${#DIRS[*]}

# until loop
echo -e "\e[31;43m UNTIL LOOP....\e[0m"
COUNTER=0

until [ ! $COUNTER -lt $LENGTH ]
do
 echo ${DIRS[$COUNTER] }
 COUNTER=`expr $COUNTER + 1`
done
