# Percona for Magento2
__THIS IS NOT FOR PRODUCTION USE__

## Documentation
[Percona v5.7](https://hub.docker.com/_/percona)

## Example Usage
`docker-compose.yaml`
```
  db:
    image: wwright/magento2-db
    volumes:
     - mysqldb:/var/lib/mysql
    ports:
     - "3306:3306"
    environment:
     - MYSQL_ROOT_PASSWORD=password123
     - MYSQL_DATABASE=magento
```
`docker run wwright/magento2-db`

## Defaults
port 3306

adminuser: `root`

password and initial catalog are set via the Environment variables.


## Extensability
Override with volume mount
`/etc/mysql/percona-server.conf.d/mysqld.cnf:/etc/mysql/percona-server.conf.d/mysqld.cnf`