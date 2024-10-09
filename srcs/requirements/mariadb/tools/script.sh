#!/bin/bash

# Iniciar el servicio de MariaDB como un demonio
service mariadb start 

# Ejecutar los comandos SQL
mysql -e "FLUSH PRIVILEGES;"
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER@wordpress.srcs_incetion' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO $DB_USER IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "ALTER USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"

# Mantener el servicio en segundo plano con mysqld_safe
mysqld_safe --skip-syslog --datadir="/var/lib/mysql" &