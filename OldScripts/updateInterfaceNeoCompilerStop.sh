#!/bin/bash
touch /root/LIGOUSERVIDOR_RESET.txt
cd neocompiler.io
COMMIT1=`git log --format="%H" -n 1`
./pull.sh
COMMIT2=`git log --format="%H" -n 1`

[[ $COMMIT1 == $COMMIT2 ]] && (echo "no change" && date) || (echo "git changed" && date && ./npm_prune_install.sh && ./buildCompilers.sh && nohup ./runHttpExpress.sh > ./express-servers/outputs/nohupOutputRunHttpExpress.out 2> ./express-servers/outputs/nohupOutputRunHttpExpress.err < /dev/null && (cd express-servers; ./startAllExpressNohup.sh) )

#./stop.sh
#git pull
#git checkout v1.2
#npm install
#./buildCompilers_startWebInterface.sh
