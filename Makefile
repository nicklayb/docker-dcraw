TAG=latest
IMAGE=dcraw:$(TAG)
REMOTE_IMAGE_TAG=nboisvert/$(IMAGE)

push: docker-build docker-tag docker-push

docker-build:
	docker build -t $(IMAGE) .

docker-tag:
	docker tag $(IMAGE) $(REMOTE_IMAGE_TAG)

docker-push:
	docker push $(REMOTE_IMAGE_TAG)
