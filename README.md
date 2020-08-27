# MySQL for Magento2
__THIS IS NOT FOR PRODUCTION USE__

## Magento Version Support
* 2.4

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

## Documentation
[MySQL v8.0](https://hub.docker.com/_/mysql)

## Defaults
port 3306

adminuser: `root`

password and initial catalog are set via the Environment variables.


## Extensability
Override with volume mount
`etc/mysql/mysql-config.cnf:/etc/mysql/conf.d/mysql-config.cnf`