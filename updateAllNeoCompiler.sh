touch /root/LIGOUSERVIDOR_ALL.txt

#/var/log/nginx/access.log

./updateMetadata.sh

#====================== move to neocompiler.io ====================
cd neocompiler.io

git pull

(cd docker-compose-eco-network; ./cleanVolumes.sh)

./build_everything.sh --no-web
#====================== end inside neocompiler.io ====================