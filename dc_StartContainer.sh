#!/bin/sh

while :
do
  LST=""
  for IND in `docker container ls -a | awk 'BEGIN{getline}{ print $NF"@"$1}'`
  do
    NAME=`echo ${IND}| awk 'BEGIN{FS="@"}{print $1}'`
    ID=`echo ${IND}| awk 'BEGIN{FS="@"}{print $2}'`
    STATUS=`docker ps | awk 'BEGIN{getline}{print $NF}' | grep "${NAME}" | wc -l`
    if [ ${STATUS} -eq 0 ]
    then
      STATUS="Stop"
    else
      STATUS="Running"
    fi
    LST="${LST} ${NAME} ${ID} ${STATUS}"
  done

  OPC=$(zenity --width=460 --height=320 --print-column 1 --title "Docker Container Start.." --list --column "Container Name.." --column "Container ID" --column "Status" $LST)
  if ! test -z $OPC
  then
    docker start $OPC
  else 
    exit 0
  fi
done
exit 0
