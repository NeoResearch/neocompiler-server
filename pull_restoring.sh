#!/bin/bash
cp ./neocompiler.io/docker-sock-express-compilers/docker-services/eco-metadata.json ./neocompiler.io/docker-sock-express-compilers/docker-services/eco-metadata.json.backup
(cd neocompiler.io && ./restore-ecometadata.sh && git pull)
mv ./neocompiler.io/docker-sock-express-compilers/docker-services/eco-metadata.json.backup ./neocompiler.io/docker-sock-express-compilers/docker-services/eco-metadata.json 
