#!/bin/bash

ln -s $PWD/* ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/local.mediaserver.*