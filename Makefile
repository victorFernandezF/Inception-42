GREEN=\033[0;32m
RED=\033[0;31m
BLUE=\033[0;34m
YELLOW = \033[0;93m
MAGENTA = \033[0;95m
END=\033[0m

all : niceText up

niceText:
	@echo "$(YELLOW)"
	@echo " _____ _   _  _____ ______ _____ _______ _____ ____  _   _ "
	@echo "|_   _| \ | |/ ____|  ____|  __ \__   __|_   _/ __ \| \ | |"
	@echo "  | | |  \| | |    | |__  | |__) | | |    | || |  | |  \| |"
	@echo "  | | |     | |    |  __| |  ___/  | |    | || |  | |     |"
	@echo " _| |_| |\  | |____| |____| |      | |   _| || |__| | |\  |"
	@echo "|_____|_| \_|\_____|______|_|      |_|  |_____\____/|_| \_|"
	@echo "  __________________________________________________________"
	@echo " |__________________________________________________________|"
	@echo "$(END)"
	

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