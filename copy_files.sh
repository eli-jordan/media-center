#!/bin/bash

rm -rf /mnt/user/appdata/media-center-data/*
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/jackett /mnt/user/appdata/media-center-data
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/organizr /mnt/user/appdata/media-center-data
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/overseerr /mnt/user/appdata/media-center-data
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/qbittorrent /mnt/user/appdata/media-center-data
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/radarr /mnt/user/appdata/media-center-data
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/sonarr /mnt/user/appdata/media-center-data
scp -r elijordan@mediacenter.local:/Users/elijordan/media-server/appdata/unpackerr /mnt/user/appdata/media-center-data