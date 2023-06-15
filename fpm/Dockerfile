ARG PHP_VERSION
FROM php:${PHP_VERSION}

LABEL maintainer="Aron Peyroteo <aron@mqx.com.br>" \
  org.label-schema.name="aronpc/php" \
  org.label-schema.description="Docker images for PHP" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-url="https://github.com/aronpc/php"

ADD os-cases /tmp/os-cases
RUN chmod +x /tmp/os-cases
RUN /tmp/os-cases

RUN apt update -yqqq 2>/dev/null
RUN apt install -yqqq unzip git 2>/dev/null

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions

# Set correct environment variables
ENV HOME=/home/abc
ENV COMPOSER_HOME=$HOME/.composer

# Install composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY --from=composer:1 /usr/bin/composer /usr/bin/composer1

USER root

WORKDIR /tmp

ADD install_extensions /tmp/install_extensions
ADD extensions /tmp/extensions
RUN chmod +x /tmp/install_extensions

RUN /tmp/install_extensions ${PHP_VERSION}

# xdebug coverage mode
RUN echo "xdebug.mode=coverage,debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN adduser --disabled-password --gecos "" abc 
RUN echo "abc  ALL = ( ALL ) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir -p /var/www/html
RUN rm -rf ${COMPOSER_HOME}/cache/*
RUN chown -R abc:abc /var/www $HOME

ADD fpm-pool.conf /usr/local/etcq/php-fpm.d/www.conf
ADD php.ini /usr/local/etc/php/php.ini

ENV PATH "$PATH:$COMPOSER_HOME/vendor/bin"

RUN rm -rf /tmp/* \
  /usr/includes/* \
  /usr/share/man/* \
  /usr/src/* \
  /var/cache/apk/* \
  /var/tmp/* \
  /opt/oracle/instantclient* \
  /var/lib/apt/lists/*

VOLUME ${HOME}

USER abc

WORKDIR /var/www/html

EXPOSE 9000 9001
