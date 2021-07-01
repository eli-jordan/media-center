#!/bin/bash

# TODO: Wait for synodynamo.local to resolve, otherwise docker can't mount he NFS volume

# Transmission still needs to seed some torrents from when I was testing.
# This will go awaya eventually
osascript -e 'tell application "Finder" to mount volume "smb://admin@synodynamo.local/MediaServerData"'
open -a Transmission

# Plex is run natively rather than in docker so that it can access the GPU
# to perform video transcoding. This is not possible with docker on mac.
open -a "Plex Media Server"


cd ~/media-server
docker-compose up -d