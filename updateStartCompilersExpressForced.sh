#!/bin/bash
cd neocompiler-eco
./buildCompilers.sh 
(cd express-servers; nohup ./run-CompilerExpress-RPC.sh &)
