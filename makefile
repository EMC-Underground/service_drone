all: build


build:
	docker stack deploy -c docker-compose.yml drone 

refresh: destroy build

destroy:
	docker stack rm drone 
	sleep 2

