#!/bin/bash
set -u
set -e
touch nohup.out
mkdir -p /dev/shm/nginx_upload || true
rm ./nohup.out || true
docker stop $(docker ps -a -q --filter "name=cowtrans") || true
docker rm cowtrans || true
nohup docker run --rm --name cowtrans -p 8080:3000 -v /data/BizhaSend:/usr/src/app -v /dev/shm/nginx_upload/:/usr/src/app/data -w /usr/src/app node node app.js & 
