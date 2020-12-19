#!/bin/sh

echo "\n (RESTART) Reestarting service docker..."
service docker restart

echo "\n (RESTART) Docker prune network..."
docker network prune -f
echo "\n (RESTART) All dockers have been killed!"

echo "\n (RESTART) NGIX down and up dettached"
(cd DockerNginxHub && docker-compose down && docker-compose up -d)

echo "\n (RESTART) calling standard ./updateAllNeoCompiler script..."
./updateAllNeoCompiler.sh

echo "\n (RESTART) Done! :)"
