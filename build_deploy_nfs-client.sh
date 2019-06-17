#!/bin/bash

docker build -t nfs-client .
docker swarm init
sudo mkdir /nfs-client-volume
sudo apt install nfs-common
sudo mount $1:/ /nfs-client-volume
docker stack deploy -c docker-compose.yml nfs-cluster
