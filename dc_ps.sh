#!/bin/sh


CONSOLE=0
while getopts "c" opt
do
  case "$opt" in
     c ) CONSOLE=1
         shift;;
  esac
done

LST=`docker ps | awk '{print $0"\n"}'`

if [ $CONSOLE -eq 1 ]
then
  echo -e "$LST"
else
  zenity --info --width=850 --height=320 --text "$LST"
fi

exit 0

