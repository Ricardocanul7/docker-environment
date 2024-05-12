COMPOSE=docker compose -f docker-compose.yml

help:	## (USAGE) Display this help screen
	@grep -hE '^[A-Za-z0-9_ \-]*?:.*##.*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-35s\033[0m %s\n", $$1, $$2}'

docker-build:	## (SETUP) Build and start containers
	${COMPOSE} up -d --build

docker-up:	## (USAGE) Start the project without re-building containers
	${COMPOSE} up -d

docker-down:	## (USAGE) Stop containers
	${COMPOSE} down

docker-destroy:	## (USAGE) Stop containers and RESET database
	${COMPOSE} down -v