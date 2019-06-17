#!/bin/bash

sudo apt-get update
sudo apt -y install nfs-common
docker build -t nfs-client .
docker swarm init
sudo mkdir /nfs-client-volume
sudo mount $1:/ /nfs-client-volume
docker stack deploy -c docker-compose.yml nfs-cluster
