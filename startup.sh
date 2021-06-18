#!/bin/bash

# Plex is run natively rather than in docker so that it can access the GPU
# to perform video transcoding. This is not possible with docker on mac.
open -a "Plex Media Server"

# TODO: Wait for synodynamo.local to resolve, otherwise docker can't mount he NFS volume

cd ~/media-server
docker-compose up -d