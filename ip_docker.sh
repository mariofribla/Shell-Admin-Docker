#!/bin/bash


if ! test -z $1 
then
  echo "IP Container Docker: $1"
  docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
else
  LST=`echo "ID NAME IP" |awk '{printf("%-20s %-20s %-20s",$1,$2,$3)}'`
  for IND in `docker ps | awk 'BEGIN{getline}{ print $1"@"$NF}'`
  do
    ID=`echo $IND| awk 'BEGIN{FS="@"}{printf "%-20s", $1}'`
    NAME=`echo $IND| awk 'BEGIN{FS="@"}{printf "%-20s", $2}'`
    IP=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $NAME | awk '{printf "%-20s", $1}'`
    LST="$LST\n$ID$NAME$IP" 
  done
  zenity --info --width=350 --height=150 --text "$LST"
fi
