#!/bin/sh

echo "Limpiando Contenedores Docker..."

echo "`date`" >  ./dc_CleanContainer.log
echo "Lista Previa"  >> ./dc_CleanContainer.log
echo "------------"  >> ./dc_CleanContainer.log
docker container ls -a --filter status=exited --filter status=created >> ./dc_CleanContainer.log
echo "--------------"  >> ./dc_CleanContainer.log
echo "Ejecutando..."  >> ./dc_CleanContainer.log
echo "--------------"  >> ./dc_CleanContainer.log
docker container rm $(docker container ls -a --filter status=exited --filter status=created -q)  >> ./dc_CleanContainer.log
echo "Finalizado..."  >> ./dc_CleanContainer.log
echo "-------------"  >> ./dc_CleanContainer.log

exit 0

