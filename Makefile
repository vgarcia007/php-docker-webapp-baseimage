.PHONY: webapp docker-pull

build: webapp

docker-pull:
	docker pull php:8.1-apache

webapp: docker-pull
	docker build --no-cache -t webapp -f Dockerfile .
