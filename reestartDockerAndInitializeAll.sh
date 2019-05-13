echo "\n (RESTART) Reestarting service docker..."
service docker restart
echo "\n (RESTART) All dockers have been killed!"
echo "\n (RESTART) NGIX Building, down and up dettached"
docker-compose build && docker-compose down && docker-compose up -d
echo "\n (RESTART) calling standard ./updateAllNeoCompiler script..."
./updateAllNeoCompiler.sh
echo "\n (RESTART) Done! :)"
