touch /root/LIGOUSERVIDOR_ALL.txt
rm -rf /var/log/neopython-rest-rpc/*
rm -r ~/neocompiler.io/docker-compose-eco-network/logs*
rm /var/log/nginx/access.log

./updateMetadata.sh

cd neocompiler.io
./pull.sh
#git checkout v1.2

./npm_prune_install.sh
./build_everything.sh

docker volume prune -f
