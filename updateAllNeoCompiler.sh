source ./.env

touch /root/LIGOUSERVIDOR_ALL.txt

if (($NEO2)); then
	rm /var/log/nginx/access.log
fi

./updateMetadata.sh

cd neocompiler.io
if (($NEO2)); then
	echo "CHECKOUT MASTER-2X";
	git checkout master-2x
fi

git pull

(cd docker-compose-eco-network; ./cleanVolumes.sh)

./build_everything.sh --no-web

docker volume prune -f
