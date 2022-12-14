#!/bin/bash

set -e

for TAG in $PHP_VERSIONS ; do
	FPM_IMAGE_NAME="${REPOSITORY_NAME}:$TAG-fpm"
	DOCKERFILE=Dockerfile.fpm
	if [[ "$TAG" == "8.1" ]] ; then
		DOCKERFILE=Dockerfile.fpm8.1
	fi
	
	if [[ "$TAG" == "8.2" ]] ; then
		DOCKERFILE=Dockerfile.fpm8.2
	fi

	if docker build --tag ${FPM_IMAGE_NAME} --build-arg PHP_VERSION="${TAG}-fpm" --file $DOCKERFILE . --pull --compress	; then
		docker push ${FPM_IMAGE_NAME}
		if [[ "$TAG" == "$LATEST_VERSION" ]] ; then
			docker tag `docker image ls $FPM_IMAGE_NAME | awk -F ' ' 'NR==2 {print $3}'` "${REPOSITORY_NAME}:latest-fpm"
			docker push "${REPOSITORY_NAME}:latest-fpm"
		fi
	fi
	NGINX_IMAGE_NAME="${REPOSITORY_NAME}:${TAG}-nginx"
	if docker build --file Dockerfile.nginx . --tag ${NGINX_IMAGE_NAME} --build-arg FROM_FPM_IMAGE=${FPM_IMAGE_NAME} --pull --compress	; then
    	docker push ${NGINX_IMAGE_NAME}
		if [[ "$TAG" == "$LATEST_VERSION" ]] ; then
			docker tag `docker image ls $NGINX_IMAGE_NAME | awk -F ' ' 'NR==2 {print $3}'` "${REPOSITORY_NAME}:latest-nginx"
			docker push "${REPOSITORY_NAME}:latest-nginx"
			docker tag `docker image ls $NGINX_IMAGE_NAME | awk -F ' ' 'NR==2 {print $3}'` "${REPOSITORY_NAME}:latest"
			docker push "${REPOSITORY_NAME}:latest"
		fi
	fi
done