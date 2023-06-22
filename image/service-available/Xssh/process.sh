#!/bin/sh -e
log-helper level eq trace && set -x

#devo lanciare il procecsso
#exec /xxxxx/xxx/xxxx -f
#/etc/init.d/ssh start
exec /usr/sbin/sshd
