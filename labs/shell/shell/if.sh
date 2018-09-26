#!/bin/bash

SWITCH=$1
OPTION=$2

if [ $SWITCH == "-p" ]
then
 if [ $OPTION == "l" ]
 then
  ls
 elif [ $OPTION == "d" ]
 then
  date
 elif [ $OPTION == "c" ]
 then
  cal
 else
  echo "Usage: if_case.sh [ l | d | c ]"
 fi
else
 echo "Usage: if_case.sh [ l | d | c ]"
fi