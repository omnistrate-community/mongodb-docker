IMAGE_TAG?=6.0-3

.PHONY: all
all: build-and-push-docker

.PHONY: build-and-push-docker
build-and-push-docker:
	docker buildx build -f Dockerfile --platform=linux/amd64,linux/arm64 -t docker.io/omnistrate/mongodb:$(IMAGE_TAG) . --push
