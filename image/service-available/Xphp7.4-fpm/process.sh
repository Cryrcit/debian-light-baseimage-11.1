#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/cryrcit/debian-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

exec /usr/sbin/php-fpm7.4 --nodaemonize
