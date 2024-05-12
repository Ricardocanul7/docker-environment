# Description

This project contains the images to create a dev/test environment equiped with Traefik for reverse proxy functionality to be able to run multiple websites in virtual domains and also includes MySQL 5.7 and Mailcatcher to use in multiple projects.

# Usage

- Run: `cp .env.example .env` and edit the values or leave it like it is depending on your needs.
- Turn on services for your environment `make docker-up`

For more details check: `make help`

After the services are running, you can check them out at:

- `localhost:8080` - Traefik Dashboard

- `localhost:3306` - MySQL database connection

- `localhost:1080` - Mailcatcher Inbox

- `localhost:1025` - Mailcatcher SMTP connection


# Note

> All services will be named depending on the `ENV_NAME` value, so for example if: `ENV_NAME=dev` then, traefik and db services will be named, `dev_traefik` and `dev_db`. This is important because when setting up values in a project for the database you have to set 'host'="dev_db" just as the name of the docker service.