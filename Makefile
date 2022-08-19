

COMPOSE := srcs/docker-compose.yml

up: 
	mkdir -p $(HOME)/data/mariadb
	mkdir -p $(HOME)/data/wordpress
	docker-compose -f $(COMPOSE) up -d --build --remove-orphans

down: 
	docker-compose -f $(COMPOSE) down 

clean: 
	docker-compose -f $(COMPOSE) down --rmi all -v --remove-orphans

re: clean 
	docker-compose -f $(COMPOSE) up -d --build --remove-orphans --force-recreate

.PHONY: up down re clean