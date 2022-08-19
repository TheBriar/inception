

COMPOSE := srcs/docker-compose.yml

up: 
	mkdir -p $(HOME)/data/mariadb
	mkdir -p $(HOME)/data/wordpress
	docker-compose -f $(COMPOSE) up -d --build --remove-orphans

down: 
	docker-compose -f $(COMPOSE) down 

re: 
	docker kill $(shell docker ps -q)
	docker rm $(shell docker ps -a -q)
	docker rmi $(shell docker images -q)
	docker volume rm $(shell docker volume ls -q)
	rm -rf $(HOME)/data/
	$(MAKE) up

.PHONY: up down re