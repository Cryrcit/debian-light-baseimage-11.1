#!/bin/sh -e

rm -f /etc/ssh/ssh_config
#
mkdir /run/sshd
chmod 755 /run/sshd
