#!/bin/sh

ln -sf $PWD/*.mount /lib/systemd/system
systemctl daemon-reload
for mountfile in $(/bin/ls *.mount); do
	systemctl restart /lib/systemd/system/$mountfile
	systemctl enable /lib/systemd/system/$mountfile
done
