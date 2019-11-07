touch /root/LIGOUSERVIDOR_ALL.txt
rm /var/log/nginx/access.log

./updateMetadata.sh

cd neocompiler.io
(cd docker-compose-eco-network; ./cleanVolumes.sh)
git pull

./build_everything.sh --no-web

docker volume prune -f
