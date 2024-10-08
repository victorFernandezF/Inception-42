all : niceText up

niceText:
	@echo " _____ _   _  _____ ______ _____ _______ _____ ____  _   _ "
	@echo "|_   _| \ | |/ ____|  ____|  __ \__   __|_   _/ __ \| \ | |"
	@echo "  | | |  \| | |    | |__  | |__) | | |    | || |  | |  \| |"
	@echo "  | | | . ` | |    |  __| |  ___/  | |    | || |  | | . ` |"
	@echo " _| |_| |\  | |____| |____| |      | |   _| || |__| | |\  |"
	@echo "|_____|_| \_|\_____|______|_|      |_|  |_____\____/|_| \_|"

build : 
	@docker-compose -f ./srcs/docker-compose.yml up --build

delete:
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