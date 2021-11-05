#!/bin/sh

ln -sf *.mount /lib/systemd/system
systemctl daemon-reload
for mountfile in $(/bin/ls *.mount); do
	systemctl start /lib/systemd/system/$mountfile
	systemctl enable /lib/systemd/system/$mountfile
done
