.PHONY: start stop update

start:
	UID=${UID} GID=${GID} docker-compose up -d

stop:
	docker-compose down

pull:
	git pull

update: stop pull start