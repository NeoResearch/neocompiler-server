#!/bin/sh
docker stop -f $(docker ps -a -q)
docker rm -f $(docker ps -a -q)

