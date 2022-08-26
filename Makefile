

COMPOSE := srcs/docker-compose.yml

up: 
	mkdir -p $(HOME)/data/mariadb
	mkdir -p $(HOME)/data/wordpress
	docker-compose -f $(COMPOSE) up -d --build --remove-orphans

down: 
	docker-compose -f $(COMPOSE) down 

clean: 
	docker-compose -f $(COMPOSE) down --rmi all -v --remove-orphans
	docker system prune --force --volumes

re: clean 
	docker-compose -f $(COMPOSE) up -d --build --remove-orphans --force-recreate
	
vm:
	echo "127.0.0.1		pvan-dij.42.fr" >> /etc/hosts

.PHONY: up down re clean vm
