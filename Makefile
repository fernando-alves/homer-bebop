.PHONY: start stop pull restart

CURRENT_USER := $(shell id -u)
USER_GROUP := $(shell id -g)

start:
	env PUID=${CURRENT_USER} PGID=${USER_GROUP} docker-compose up -d

stop:
	docker-compose down

pull:
	git pull

restart: stop start