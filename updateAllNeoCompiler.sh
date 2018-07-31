touch /root/LIGOUSERVIDOR_ALL.txt
rm -rf /var/log/neopython-rest-rpc/*
cd neocompiler.io
./pull.sh
#git checkout v1.2

./npm_prune_install.sh
./build_everything.sh

docker volume prune -f
