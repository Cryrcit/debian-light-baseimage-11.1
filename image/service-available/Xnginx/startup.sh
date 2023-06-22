#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/cryrcit/debian-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

ln -sf ${CONTAINER_SERVICE_DIR}/Xnginx/assets/nginx.conf /etc/nginx/nginx.conf
ln -sf ${CONTAINER_SERVICE_DIR}/Xnginx/assets/conf-available/* /etc/nginx/conf-available

exit 0
