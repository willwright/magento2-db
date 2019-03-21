FROM percona:5.7

MAINTAINER Will Wright <will@magesmith>

# disable interactive functions
ARG DEBIAN_FRONTEND=noninteractive

VOLUME /var/lib/mysql

#
#   Inject config files at the end to optimize build cache
#
COPY etc/mysql/percona-server.conf.d/mysqld.cnf /etc/mysql/percona-server.conf.d/mysqld.cnf