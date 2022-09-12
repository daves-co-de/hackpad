include ../.config/.ecr

build-base-docker-image:
	docker build --rm -t \
	$(IMAGE_TAG) \
	-f .docker/base.Dockerfile .docker
	
	# Uncomment line below if pushing to a registry
	# docker push $(IMAGE_TAG)

