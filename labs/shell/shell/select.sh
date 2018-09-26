#!/bin/bash
# array and loops

# select loop
echo -e "\e[31;43m SELECT LOOP....\e[0m"

MENUS[0]="List"
MENUS[1]="Date"
MENUS[2]="Calendar"
MENUS[3]="Exit"

select MENU in ${MENUS[*]}
do
 case $MENU in
  List)
   echo 'Displaying directory contents...'
   ls
   ;;
  Date)
   echo 'Display date...'
   date
   ;;
  Calendar)
   echo 'Displaying calendar...'
   cal
   ;;
  Exit)
   break
   ;;
  *)
   echo 'ERROR: Invalid selection'
   ;;
 esac
done