#!/bin/bash

docker run -d --name nfs-server --net=host --privileged \
-v /nfs-server-volume:/shared_folder \
-e SHARED_DIRECTORY=/shared_folder \
itsthenetwork/nfs-server-alpine:latest
