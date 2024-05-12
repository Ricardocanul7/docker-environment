# Description

This project contains the images to create a dev/test environment equiped with Traefik for reverse proxy functionality to be able to run multiple websites in virtual domains and also MySQL 5.7 to use for all projects.

# Usage

- Run: `cp .env.example .env` and edit the values or leave it like it is depending on your needs.
- Turn on services for your environment `make docker-up`

For more details check: `make help`

After the services are running, you can checkout Traefik panel in `localhost:8080` and connect to MySQL using your prefered Database Manager through `localhost:3306`

# Extra

All services will be named depending on the `ENV_NAME` value, so for example if:
`ENV_NAME=dev` then, traefik and db services will be named, `dev_traefik` and `dev_db`. This is important because when setting up values in a project for the database you have to set 'host'="dev_db" just as the name of the docker service.