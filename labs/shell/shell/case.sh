#!/bin/bash

SWITCH=$1
OPTION=$2

case $SWITCH in
 -p)
   case $OPTION in
     l)
       ls
       ;;
     d)
       date
       ;;
     c)
       cal
       ;;
     *)
       echo "Usage: if_case.sh [ l | d | c ]"
       ;;
     esac
     ;;
 *)
   echo "Usage: if_case.sh [ l | d | c ]"
   ;;
esac