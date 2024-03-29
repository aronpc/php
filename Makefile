include .env

.PHONY: all build update-readme

all: build

build: $(foreach TAG,$(PHP_VERSIONS),build-$(TAG))

build-%:
	@TAG=$*; \
	FPM_IMAGE_NAME="$(REPOSITORY_NAME):$${TAG}-fpm"; \
	echo "BUILDING PHP $${FPM_IMAGE_NAME}"; \
	if docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64/v8 --progress plain  --tag "$${FPM_IMAGE_NAME}" --build-arg PHP_VERSION="$${TAG}-fpm" --file fpm/Dockerfile ./fpm/ --pull --compress; then \
		docker push "$${FPM_IMAGE_NAME}"; \
		if [ "$${TAG}" = "$(LATEST_VERSION)" ]; then \
			FPM_IMAGE_ID=$$(docker image ls "$${FPM_IMAGE_NAME}" | awk 'NR==2 {print $$3}'); \
			docker tag "$${FPM_IMAGE_ID}" "$(REPOSITORY_NAME):latest-fpm"; \
			docker push "$(REPOSITORY_NAME):latest-fpm"; \
		fi; \
	fi; \
	NGINX_IMAGE_NAME="$(REPOSITORY_NAME):$${TAG}-nginx"; \
	if docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64/v8 --file nginx/Dockerfile ./nginx/ --tag "$${NGINX_IMAGE_NAME}" --build-arg FROM_FPM_IMAGE="$${FPM_IMAGE_NAME}" --pull --compress; then \
		echo "BUILDING PHP $${FPM_IMAGE_NAME}"; \
		docker push "$${NGINX_IMAGE_NAME}"; \
		if [ "$${TAG}" = "$(LATEST_VERSION)" ]; then \
			NGINX_IMAGE_ID=$$(docker image ls "$${NGINX_IMAGE_NAME}" | awk 'NR==2 {print $$3}'); \
			docker tag "$${NGINX_IMAGE_ID}" "$(REPOSITORY_NAME):latest-nginx"; \
			docker push "$(REPOSITORY_NAME):latest-nginx"; \
			docker tag "$${NGINX_IMAGE_ID}" "$(REPOSITORY_NAME):latest"; \
			docker push "$(REPOSITORY_NAME):latest"; \
		fi; \
	fi;

update-readme:
	@bash ./scripts/update-readme
