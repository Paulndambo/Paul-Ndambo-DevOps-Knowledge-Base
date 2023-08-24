## PHPMyAdmin 
### Default Bridge Network
#### docker run -p 8081:80 -e PMA_HOST=172.17.0.2 phpmyadmin/phpmyadmin

### Custom Bridge Network
#### docker run -p 8081:80 --network kadabonet -e PMA_HOST=kadabonet -d --name phpwebserver phpmyadmin/phpmyadmin

## MySQL
### Default Bridge Network
#### docker run -e MYSQL_ROOT_PASSWORD=root mysql

### Custom Bridge Network
# docker run --network kadabonet -e MYSQL_ROOT_PASSWORD=root -d --name mysqldb mysql

## Create A Docker Network
### docker network create <network name>