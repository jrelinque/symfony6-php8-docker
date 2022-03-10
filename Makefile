##########################################################
##                                                      ##
## Local tasks:
##                                                      ##
##########################################################

up: ## Builds (if the container didn't exist previously) the image and start the containers.
	@CURRENT_UID=$(shell id -u):$(shell id -g) && \
	docker-compose up -d

stop: ##Stop the containers
	@docker-compose stop


build: ## Build environment
	@docker-compose build

down: ## Destroy the containers
	@docker-compose down

restart: ## Stop the containers and start them again
	@CURRENT_UID=$(shell id -u):$(shell id -g) && \
	docker-compose restart

destroy: ## Stop and destroy the containers
	@docker-compose down -v --rmi all --remove-orphans

ps: ## Show started containers
	@docker-compose ps

logs: ## Show logs from all containers
	@docker-compose logs 

shell-php: ## Log into the PHP container
	@docker exec php /bin/bash
