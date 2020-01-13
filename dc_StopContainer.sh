#!/bin/sh

while :
do
LST=`docker ps | awk 'BEGIN{getline;v=""}{ v= v $NF" "$1" "}END{print v}'`

OPC=$(zenity --width=460 --height=320 --print-column 2 --title "Docker Stop.." --list --column "Docker Name.." --column "Docker ID" $LST)
#echo $OPC
#echo "docker stop $OPC"
if ! test -z $OPC
then
  docker stop $OPC
else 
  exit 0
fi
done
exit 0
