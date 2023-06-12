.PHONY: all build push

all: build push

build: $(foreach TAG,$(PHP_VERSIONS),build-$(TAG))

build-%:
	@TAG=$*; \
	FPM_IMAGE_NAME="$(REPOSITORY_NAME):$${TAG}-fpm"; \
	DOCKERFILE=Dockerfile.fpm; \
	if [[ "$${TAG}" =~ ^8.1 ]]; then \
		DOCKERFILE=Dockerfile.fpm8.1; \
	elif [[ "$${TAG}" =~ ^8.2 ]]; then \
		DOCKERFILE=Dockerfile.fpm8.2; \
	elif [[ "$${TAG}" =~ ^8.3 ]]; then \
		DOCKERFILE=Dockerfile.fpm8.3; \
	fi; \
	if docker build --tag "$${FPM_IMAGE_NAME}" --build-arg PHP_VERSION="$${TAG}-fpm" --file "$${DOCKERFILE}" . --pull --compress; then \
		docker push "$${FPM_IMAGE_NAME}"; \
		if [ "$${TAG}" = "$(LATEST_VERSION)" ]; then \
			FPM_IMAGE_ID=$$(docker image ls "$${FPM_IMAGE_NAME}" | awk 'NR==2 {print $$3}'); \
			docker tag "$${FPM_IMAGE_ID}" "$(REPOSITORY_NAME):latest-fpm"; \
			docker push "$(REPOSITORY_NAME):latest-fpm"; \
		fi; \
	fi; \
	NGINX_IMAGE_NAME="$(REPOSITORY_NAME):$${TAG}-nginx"; \
	if docker build --file Dockerfile.nginx . --tag "$${NGINX_IMAGE_NAME}" --build-arg FROM_FPM_IMAGE="$${FPM_IMAGE_NAME}" --pull --compress; then \
		docker push "$${NGINX_IMAGE_NAME}"; \
		if [ "$${TAG}" = "$(LATEST_VERSION)" ]; then \
			NGINX_IMAGE_ID=$$(docker image ls "$${NGINX_IMAGE_NAME}" | awk 'NR==2 {print $$3}'); \
			docker tag "$${NGINX_IMAGE_ID}" "$(REPOSITORY_NAME):latest-nginx"; \
			docker push "$(REPOSITORY_NAME):latest-nginx"; \
			docker tag "$${NGINX_IMAGE_ID}" "$(REPOSITORY_NAME):latest"; \
			docker push "$(REPOSITORY_NAME):latest"; \
		fi; \
	fi;

push:
	@echo "Pushing completed."
