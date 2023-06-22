#!/bin/bash -e
set -o pipefail

# set -x (bash debug) if log level is trace
# https://github.com/cryrcit/debian-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

ln -sf ${CONTAINER_SERVICE_DIR}/Xapache2/assets/apache2.conf /etc/apache2/apache2.conf
ln -sf ${CONTAINER_SERVICE_DIR}/Xapache2/assets/conf-available/* /etc/apache2/conf-available/
ln -sf ${CONTAINER_SERVICE_DIR}/Xapache2/assets/sites-available/* /etc/apache2/sites-available/

exit 0
