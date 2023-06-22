#!/bin/sh -e
log-helper level eq trace && set -x
ln -sf "${CONTAINER_SERVICE_DIR}/Xssh/assets/ssh_config" /etc/ssh/ssh_config

chmod 444 -R "${CONTAINER_SERVICE_DIR}"/Xssh/assets/ssh_config
