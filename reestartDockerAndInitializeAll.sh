#!/bin/sh

echo "\n (RESTART) Reestarting service docker..."
service docker restart

echo "\n (RESTART) Docker prune network..."
docker network prune -f
echo "\n (RESTART) All dockers have been killed!"

echo "\n (RESTART) NGIX down and up dettached"
./stop_run_nginx.sh

echo "\n (RESTART) calling standard ./updateAllNeoCompiler script..."
./updateAllNeoCompiler.sh

echo "\n (RESTART) Done! :)"
