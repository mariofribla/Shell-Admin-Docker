

echo "Lista Docker Container..."

docker ps | awk '{ print $1"\t\t"$NF}'

echo "OK..."

