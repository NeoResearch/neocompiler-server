#!/bin/bash
cd neocompiler-eco
COMMIT1=`git log --format="%H" -n 1`
./pull.sh
COMMIT2=`git log --format="%H" -n 1`

[[ $COMMIT1 == $COMMIT2 ]] && (echo "no change" && date) || (echo "git changed" && date && ./npm_prune_install.sh && (cd express-servers; nohup ./run-CompilerExpress-RPC.sh > ./outputs/nohupCompilers.out 2> ./outputs/nohupCompilers.err < /dev/null &) )
