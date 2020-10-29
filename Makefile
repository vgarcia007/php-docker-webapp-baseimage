.PHONY: webapp docker-pull

build: webapp

docker-pull:
	sudo docker pull php:7.4.3-apache

webapp: docker-pull
	sudo docker build --no-cache -t webapp -f Dockerfile .