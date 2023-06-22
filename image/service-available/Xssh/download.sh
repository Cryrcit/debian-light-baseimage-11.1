#!/bin/sh -e

# download openssh-server from apt-get
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openssh-server
