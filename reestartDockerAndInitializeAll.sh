echo "\n (RESTART) STOP NGINX..."
./nginx_stop.sh

echo "\n (RESTART) STOPPING Ecoservices"
(cd neocompiler.io; ./stop_everything.sh)

echo "\n (RESTART) Reestarting service docker..."
service docker restart

echo "\n (RESTART) Docker prune network..."
docker network prune -f

echo "\n (RESTART) All dockers have been killed!"

./nginx_composeDetached.sh

echo "\n (RESTART) calling standard ./updateAllNeoCompiler script..."
./updateAllNeoCompiler.sh

echo "\n (RESTART) Done! :)"