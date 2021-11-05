#!/bin/sh

ln -sf $PWD/*.mount /lib/systemd/system
systemctl daemon-reload
for mountfile in $(/bin/ls *.mount); do
	systemctl restart $mountfile
	systemctl enable $mountfile
done
