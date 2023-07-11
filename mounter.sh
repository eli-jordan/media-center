#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
exec > >(tee -a "${SCRIPT_DIR}/mounter.log") 2>&1

install() {
	echo "$(date) Installing..."
	crontab -l > /tmp/crontab_add_mounter
	echo "*/5 * * * * ${SCRIPT_DIR}/mounter.sh mount" >> /tmp/crontab_add_mounter
	crontab /tmp/crontab_add_mounter
	rm /tmp/crontab_add_mounter
}

mount() {
	echo "$(date) Mounting..."
	password="$(cat ~/.secrets/synodynamo)"
	osascript -e "tell application \"Finder\" to mount volume \"smb://admin:${password}@synodynamo.local/MediaServerData\""
}

if [[ "$1" == "install" ]]; then
	install
elif [[ "$1" == "mount" ]]; then
	mount
else
	echo "Unrecognized sub-command '$1'. Valid values are 'install' and 'mount'"
fi