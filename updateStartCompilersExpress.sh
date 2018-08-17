#!/bin/bash
cd neocompiler-eco
COMMIT1=`git log --format="%H" -n 1`
./pull.sh
COMMIT2=`git log --format="%H" -n 1`

[[ $COMMIT1 == $COMMIT2 ]] && (echo "no change" && date) || (echo "git changed" && date && ./npm_prune_install.sh && (cd compilers/docker-compiler-csharp; ./docker_build_list_of_compilers.sh) &&(cd express-servers; ./run-CompilerExpress-RPC.sh) )
