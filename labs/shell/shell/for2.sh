#!/bin/bash
# array and loops

DIRS[0]="TMP1"
DIRS[1]="TMP2"
DIRS[2]="TMP3"

# another for loop
# you can also use ${DIRS[@]} instead of ${DIRS[*]}
echo -e "\e[31;43m FOR LOOP....\e[0m"
for DIR in ${DIRS[*]}
do
 echo $DIR
done