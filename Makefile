.PHONY: start stop update

CURRENT_USER := $(shell id -u)

start:
	env UID=${CURRENT_USER} docker-compose up -d

stop:
	docker-compose down

pull:
	git pull

update: stop pull start