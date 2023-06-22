# Use cryrcit/debian-light-baseimage
# https://github.com/cryrcit/debian-light-baseimage
FROM cryrcit/debian-light-baseimage:11.1.1

# Install multiple process stack, nginx and php7.0-fpm and clean apt-get files

RUN apt-get -y update \
    && /container/tool/add-multiple-process-stack \
#   && /container/tool/add-service-available Xnginx Xphp7.4-fpm \
    && /container/tool/add-service-available Xapache2 Xphp7.4-fpm \
    && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
#   nginx \
#   php7.4-fpm \
    php7.4-cli \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
RUN /container/tool/install-service

# Add default env directory
ADD environment /container/environment/99-default

# Set /var/www/ in a data volume
VOLUME /var/www/

# Expose http and https default ports
EXPOSE 80 443
