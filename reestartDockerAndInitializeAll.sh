echo "Reestarting service docker..."
service docker restart
echo "Building, composing and up on nginx..."
docker-compose build && docker-compose down && docker-compose up -d
echo "updating all Neo Compiler Eco..."
./updateAllNeoCompiler.sh
echo "Done!"
