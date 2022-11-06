#!/bin/sh
cd node-red-admin
./deploy.sh
cd ..
docker stop node-red-admin && docker rm node-red-admin
rm -Rf ~/node-red/data/ && mkdir ~/node-red/data  && sudo chown -R 1000:1000 ~/node-red/data
/usr/local/bin/docker-compose up -d