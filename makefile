all: build


build:
	docker stack deploy -c drone-compose.yml drone

refresh: destroy build

destroy:
	docker stack rm drone
	sleep 2

