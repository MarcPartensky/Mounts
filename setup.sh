#!/bin/sh

ln -sf *.mount /etc/systemd/system
systemctl daemon-reload
for mountfile in $(ls *.mount); do
	systemctl start /etc/systemd/system/$mountfile
	systemctl enable /etc/systemd/system/$mountfile
done
