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
	@docker-compose exec php /bin/bash

shell-database: ## Log into the MySql database container
	@docker-compose exec database /bin/bash

##########################################################
## Auto help command
##########################################################
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
