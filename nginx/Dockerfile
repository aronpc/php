ARG FROM_FPM_IMAGE

FROM ${FROM_FPM_IMAGE}

LABEL maintainer="Aron Peyroteo <aron@mqx.com.br>" \
  org.label-schema.name="aronpc/php" \
  org.label-schema.description="Docker images for PHP" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-url="https://github.com/aronpc/php"

USER root

RUN apt update -yqqq
RUN apt install -yqqq nginx-full
RUN usermod -aG www-data abc

# Configure nginx
ADD config/nginx.conf /etc/nginx/nginx.conf
ADD config/startScript /home/abc/startScript

RUN chown -R abc.abc /home/abc/startScript
RUN chmod +x /home/abc/startScript

RUN mkdir -p /var/lib/nginx && \
  mkdir -p /var/tmp/nginx && \
  mkdir -p /var/log/nginx  && \
  mkdir /app

# Make sure files/folders needed by the processes are accessable when they run under the nobody user
RUN chown -R abc.abc /run && \
  chown -R abc.abc /var/lib/nginx && \
  chown -R abc.abc /var/tmp/nginx && \
  chown -R abc.abc /var/log/nginx  && \
  chown -R abc.abc /app

# Let startScript nginx & php-fpm & cron
CMD ["/home/abc/startScript"]

USER abc

WORKDIR /app

# Configure a healthcheck to validate that everything is up&running
#HEALTHCHECK --timeout=1s CMD curl --silent --fail http://127.0.0.1:8080/fpm-ping

EXPOSE 8080 9000 9001