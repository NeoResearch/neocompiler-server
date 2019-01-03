touch /root/LIGOUSERVIDOR_ALL.txt
rm -rf /var/log/neopython-rest-rpc/*
rm -r ~/neocompiler.io/docker-compose-eco-network/logs*
rm /var/log/nginx/access.log

./updateMetadata.sh

cd neocompiler.io
git pull
#./pull.sh
#git checkout v1.2

./npm_prune_install.sh
./build_everything.sh --no-web

docker volume prune -f
