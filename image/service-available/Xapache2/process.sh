#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/cryrc.it/debian-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

exec /usr/sbin/apache2ctl -D FOREGROUND
