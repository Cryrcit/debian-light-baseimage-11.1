#!/bin/sh -e
log-helper level eq trace && set -x

chmod 700 "${CONTAINER_SERVICE_DIR}"/Xssl-tools/assets/tool/*
ln -sf "${CONTAINER_SERVICE_DIR}"/Xssl-tools/assets/tool/* /usr/sbin
