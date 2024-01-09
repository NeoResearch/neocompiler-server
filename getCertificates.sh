#!/bin/bash
letsencrypt certonly --standalone --email igormachado@gmail.com -d neocompiler.io -d node1-neo3.neocompiler.io -d node2-neo3.neocompiler.io -d node3-neo3.neocompiler.io -d ecoservices-neo3.neocompiler.io -d compilers-neo3.neocompiler.io -d node3-neo3-rest.neocompiler.io 
