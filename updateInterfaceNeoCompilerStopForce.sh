touch /root/LIGOUSERVIDOR_RESET.txt
cd neocompiler.io
./pull.sh
./npm_prune_install.sh

echo "BUILDING compilers";
./buildCompilers.sh

echo "RUNNING express servers: front-end, compilers and ecoservices";
nohup ./runHttpExpress.sh > ./express-servers/outputs/nohupOutputRunHttpExpress.out 2> ./express-servers/outputs/nohupOutputRunHttpExpress.err < /dev/null &
(cd express-servers; ./startAllExpressNohup.sh)
