#!/bin/sh

#echo "Conectando BASH a container Docker : $1"
#docker exec -ti $1 bash
#echo "OK..."

LST=`docker ps | awk 'BEGIN{getline;v=""}{ v= v $NF" "$1" "}END{print v}'`

OPC=$(zenity --width=460 --height=320 --print-column 1 --title "Docker Container BASH.." --list --column "Container Name.." --column "Container ID" $LST)
if ! test -z $OPC
then
  docker exec -ti $OPC bash
else 
  exit 0
fi
exit 0
