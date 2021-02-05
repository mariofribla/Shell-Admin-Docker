#!/bin/sh

echo "Limpiando Images Docker..."

echo "`date`" >  ./dc_CleanImages.log
echo "Lista Previa"  >> ./dc_CleanImages.log
echo "------------"  >> ./dc_CleanImages.log
docker image ls -f 'dangling=true' >> ./dc_CleanImages.log
echo "--------------"  >> ./dc_CleanImages.log
echo "Ejecutando..."  >> ./dc_CleanImages.log
echo "--------------"  >> ./dc_CleanImages.log
docker image rm $(docker image ls -f 'dangling=true' -q )  >> ./dc_CleanImages.log
echo "Finalizado..."  >> ./dc_CleanImages.log
echo "-------------"  >> ./dc_CleanImages.log

exit 0

