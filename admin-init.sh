#!/bin/sh
mkdir ~/node-red/data  && sudo chown -R 1000:1000 ~/node-red/data
/usr/local/bin/docker-compose up -d