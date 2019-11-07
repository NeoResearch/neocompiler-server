#!/bin/bash
cd neocompiler-eco
COMMIT1=`git log --format="%H" -n 1`
git pull
COMMIT2=`git log --format="%H" -n 1`

[[ $COMMIT1 == $COMMIT2 ]] && (echo "no change" && date) || (echo "git changed" && date && (cd docker-sock-express-compilers/docker-ubuntu-docker-node-express; ./docker_build.sh) && (cd docker-sock-express-compilers/docker-services; docker-compose down) && (cd docker-sock-express-compilers/docker-services; docker-compose up) )
