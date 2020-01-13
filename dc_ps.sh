#!/bin/sh

#docker ps
#echo "OK..."

LST=`docker ps | awk '{print $0"\n"}'`

zenity --info --width=850 --height=320 --text "$LST"

exit 0

