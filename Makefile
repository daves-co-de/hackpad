include .config/.ecr

up-hackpad:
	-UID=`id -u` GID=`id -g` \
	docker-compose \
	--env-file ./.config/.ecr \
	-f .docker-compose/jupyter.yaml \
	up --force-recreate -d

	@docker ps -aqf "name=$(PROJECT_NAME)-jupyter" | \
	xargs docker inspect --format \
	'http://{{range .NetworkSettings.Networks}}{{.IPAddress}}:8888{{end}}'	| \
	xargs google-chrome

	docker-compose \
	--env-file ./.config/.ecr \
	-f .docker-compose/jupyter.yaml \
	logs -f