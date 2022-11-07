#!/bin/sh
mkdir -p ~/node-red/data && chown -R 1000:1000 ~/node-red/data
docker compose up -d