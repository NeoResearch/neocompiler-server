touch /root/LIGOUSERVIDOR_ALL.txt
rm /var/log/nginx/access.log

./updateMetadata.sh

cd neocompiler.io
git pull
(cd docker-compose-eco-network; ./cleanVolumes.sh)

./build_everything.sh --no-web

docker volume prune -f
