#!/bin/bash
echo "UPDATING REPO"
git pull
echo "BUILD API..."
go build
echo "KILL API"
sudo pkill server-linux-amd64
echo "RUN API"
./server-linux-amd64 &

