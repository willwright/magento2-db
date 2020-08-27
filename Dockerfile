FROM mysql:8

MAINTAINER Will Wright <will@magesmith>

# disable interactive functions
ARG DEBIAN_FRONTEND=noninteractive

VOLUME /var/lib/mysql

#
#   Inject config files at the end to optimize build cache
#
COPY etc/mysql/mysql-config.cnf /etc/mysql/conf.d/mysql-config.cnf