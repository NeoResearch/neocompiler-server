#!/bin/bash
cd neocompiler-eco
echo "BUILDING docker with docker and express";
(cd docker-sock-express-compilers/docker-ubuntu-docker-node-express; ./docker_build.sh)

echo "TRYING TO STOP compilers express";
(cd docker-sock-express-compilers/docker-compilers; docker-compose down)
echo "RUNNING express compilers";
(cd docker-sock-express-compilers/docker-compilers; docker-compose up -d)
