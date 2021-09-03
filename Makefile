all: build push

build:
	docker build -t voroninman/debug:latest .

push:
	docker push voroninman/debug:latest
