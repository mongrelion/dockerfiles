NAME    = docker.io/mongrelion/node-red
VERSION = 3.0.2
TAG     = ${VERSION}

build:
	@docker build --build-arg VERSION=${VERSION} --tag ${NAME}:${TAG} .

push:
	@docker push ${NAME}:${TAG}
