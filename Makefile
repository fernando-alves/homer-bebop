.PHONY: start stop pull restart

CURRENT_USER := $(shell id -u)

start:
	env UID=${CURRENT_USER} docker-compose up -d

stop:
	docker-compose down

pull:
	git pull

restart: stop start