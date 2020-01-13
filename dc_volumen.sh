#!/bin/bash


if ! test -z $1 
then
  echo "VOLUMENES Container Docker: $1"
  docker volume inspect -f '{{range .Mountpoint}}{{end}}' $1
else
  #echo -e "DRIVER\t\tMOUNTPOINT\t\tRUTA"
  for LST in `docker volume ls | awk '{ print $1"@"$NF}'`
  do
    DRIVER=`echo $LST| awk 'BEGIN{FS="@"}{print $1}'`
    MOUNT=`echo $LST| awk 'BEGIN{FS="@"}{print $2}'`
    RUTA=`docker volume inspect -f '{{ .Mountpoint}}' $MOUNT`
    echo -e "$DRIVER\t$MOUNT\t$RUTA"
  done
fi
