all : up

exec-nginx:
	@docker-compose -f ./srcs/docker-compose.yml down --rmi all 
	@docker-compose -f ./srcs/docker-compose.yml up -d
	@docker-compose exec nginx /bin/bash

exec-mariadb:
	@docker-compose -f ./srcs/docker-compose.yml down --rmi all 
	@docker-compose -f ./srcs/docker-compose.yml up -d
	@docker-compose exec mariadb /bin/bash

exec-wordpress:
	@docker-compose -f ./srcs/docker-compose.yml down --rmi all 
	@docker-compose -f ./srcs/docker-compose.yml up -d
	@docker-compose exec wordpress /bin/bash


build : 
	@docker-compose -f ./srcs/docker-compose.yml up --build

clean:
	@docker-compose -f ./srcs/docker-compose.yml down
	@docker-compose -f ./srcs/docker-compose.yml down --rmi all 
	@docker-compose -f ./srcs/docker-compose.yml down --remove-orphans 

up : 
	@docker-compose -f ./srcs/docker-compose.yml up -d

down : 
	@docker-compose -f ./srcs/docker-compose.yml down

stop : 
	@docker-compose -f ./srcs/docker-compose.yml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yml start

status : 
	@docker ps