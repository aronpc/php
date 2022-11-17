# General purpose PHP images for Docker


## Usage

These images are based on the [official PHP image](https://hub.docker.com/_/php/).

Example with CLI:

```bash
$ docker run -it --rm --name php-cli-test -v "$PWD":/app aronpc/php:latest-fpm php -v
```

```yml
version: '3'
services:
  web:
    image: aronpc/php:latest-nginx
    working_dir: /app
    volumes:
      - ./:/app
```