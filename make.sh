#!/bin/bash

set -e

REPONAME="aronpc/cati-php"
LATEST_VERSION="8.1"
# 7.2 7.4 8.0 8.1-rc
for TAG in 8.1 ; do
	FPM_IMAGE_NAME="${REPONAME}:$TAG-fpm"
	DOCKERFILE=Dockerfile.fpm
	if [[ "$TAG" == "8.1" ]] ; then
		DOCKERFILE=Dockerfile.fpm8.1
	fi

	if docker build --tag ${FPM_IMAGE_NAME} --build-arg PHP_VERSION="${TAG}-fpm" --file $DOCKERFILE . --pull --compress	; then
		docker push ${FPM_IMAGE_NAME}
		if [[ "$TAG" == "$LATEST_VERSION" ]] ; then
			docker tag `docker image ls $FPM_IMAGE_NAME | awk -F ' ' 'NR==2 {print $3}'` "${REPONAME}:latest-fpm"
			docker push "${REPONAME}:latest-fpm"
		fi
	fi
	NGINX_IMAGE_NAME="${REPONAME}:${TAG}-nginx"
	if docker build --file Dockerfile.nginx . --tag ${NGINX_IMAGE_NAME} --build-arg FROM_FPM_IMAGE=${FPM_IMAGE_NAME} --pull --compress	; then
    	docker push ${NGINX_IMAGE_NAME}
		if [[ "$TAG" == "$LATEST_VERSION" ]] ; then
			docker tag `docker image ls $NGINX_IMAGE_NAME | awk -F ' ' 'NR==2 {print $3}'` "${REPONAME}:latest-nginx"
			docker push "${REPONAME}:latest-nginx"
			docker tag `docker image ls $NGINX_IMAGE_NAME | awk -F ' ' 'NR==2 {print $3}'` "${REPONAME}:latest"
			docker push "${REPONAME}:latest"
		fi
	fi
done
