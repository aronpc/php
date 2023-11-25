# General purpose PHP images for Docker

These images are based on the [official PHP image](https://hub.docker.com/_/php/).

These images install php extensions using [Easy installation of PHP extensions in official PHP Docker images](https://github.com/mlocati/docker-php-extension-installer)
## Container Info

**Default nginx port:** *8080*  
**Default fpm port:** *9000*

## Available versions

[//]: # (START OF VERSIONS LIST)

# Updated every sunday.
  - 8.3-rc - [aronpc/php:8.3-rc-fpm](https://hub.docker.com/r/aronpc-rc/php/tags?name=8.3-rc-fpm), [aronpc/php:8.3-rc-nginx](https://hub.docker.com/r/aronpc/php/tags?name=8.3-rc-nginx)
  - 8.2, latest - [aronpc/php:8.2-fpm, aronpc/php:8.2-latest](https://hub.docker.com/r/aronpc/php/tags?name=8.2-fpm), [aronpc/php:8.2-nginx, aronpc/php:8.2-latest](https://hub.docker.com/r/aronpc/php/tags?name=8.2-nginx)
  - 8.1 - [aronpc/php:8.1-fpm](https://hub.docker.com/r/aronpc/php/tags?name=8.1-fpm), [aronpc/php:8.1-nginx](https://hub.docker.com/r/aronpc/php/tags?name=8.1-nginx)
  - 8.0 - [aronpc/php:8.0-fpm](https://hub.docker.com/r/aronpc/php/tags?name=8.0-fpm), [aronpc/php:8.0-nginx](https://hub.docker.com/r/aronpc/php/tags?name=8.0-nginx)

#### Updated every first day of the month.
  - 7.4 - [aronpc/php:7.4-fpm](https://hub.docker.com/r/aronpc/php/tags?name=7.4-fpm), [aronpc/php:7.4-nginx](https://hub.docker.com/r/aronpc/php/tags?name=7.4-nginx)
  - 7.2 - [aronpc/php:7.2-fpm](https://hub.docker.com/r/aronpc/php/tags?name=7.2-fpm), [aronpc/php:7.2-nginx](https://hub.docker.com/r/aronpc/php/tags?name=7.2-nginx)
  - 7.1 - [aronpc/php:7.1-fpm](https://hub.docker.com/r/aronpc/php/tags?name=7.1-fpm), [aronpc/php:7.1-nginx](https://hub.docker.com/r/aronpc/php/tags?name=7.1-nginx)
  - 7.0 - [aronpc/php:7.0-fpm](https://hub.docker.com/r/aronpc/php/tags?name=7.0-fpm), [aronpc/php:7.0-nginx](https://hub.docker.com/r/aronpc/php/tags?name=7.0-nginx)
  - 5.6 - [aronpc/php:5.6-fpm](https://hub.docker.com/r/aronpc/php/tags?name=5.6-fpm), [aronpc/php:5.6-nginx](https://hub.docker.com/r/aronpc/php/tags?name=5.6-nginx)

[//]: # (END OF VERSIONS LIST)

## Installed extensions

[//]: # (START OF EXTENSIONS TABLE)

| Extensão | 5.6 | 7.0 | 7.1 | 7.2 | 7.3 | 7.4 | 8.0 | 8.1 | 8.2 | 8.3-rc |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| amqp | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| apcu | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| apcu_bc | | &check; | &check; | &check; | &check; | &check; | | | | |
| ast | | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| bcmath | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| bitset | | | | | | | | | | |
| blackfire | | | | | | | | | | |
| bz2 | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| calendar | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| cassandra | | | | | | | | | | |
| cmark | | &check; | &check; | &check; | &check; | &check; | | | | |
| csv | | | | | &check; | &check; | &check; | &check; | &check; | &check; |
| dba | | | | | | | | | | |
| ddtrace | | | | | | | | | | |
| decimal | | | | | | | | | | |
| ds | | | | | | | | | | |
| enchant | | | | | | | | | | |
| ev | | | | | | | | | | |
| event | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| excimer | | | | | | | | | | |
| exif | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| ffi | | | | | | | | | | |
| gd | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| gearman | | | | | | | | | | |
| geoip | &check; | &check; | &check; | &check; | &check; | &check; | | | | |
| geos | | | | | | | | | | |
| geospatial | | | | | | | | | | |
| gettext | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| gmagick | | | | | | | | | | |
| gmp | | | | | | | | | | |
| gnupg | | | | | | | | | | |
| grpc | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| http | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| igbinary | | | | | | | | | | |
| imagick | | | | | | | | | | |
| imap | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| inotify | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| interbase | &check; | &check; | &check; | &check; | &check; | | | | | |
| intl | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| ion | | | | | | | | &check; | &check; | &check; |
| ioncube_loader | &check; | &check; | &check; | &check; | &check; | &check; | | &check; | | |
| jsmin | &check; | &check; | &check; | &check; | &check; | &check; | | | | |
| json_post | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| jsonpath | | | | | | &check; | &check; | &check; | &check; | &check; |
| ldap | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| luasandbox | | | | | | | | | | |
| lz4 | | | | | | | | | | |
| lzf | | | | | | | | | | |
| mailparse | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| maxminddb | | | | | | | | | | |
| mcrypt | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| memcache | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| memcached | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| memprof | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| mongo | &check; | | | | | | | | | |
| mongodb | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| mosquitto | &check; | &check; | &check; | &check; | &check; | &check; | | | | |
| msgpack | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| mssql | &check; | | | | | | | | | |
| mysql | &check; | | | | | | | | | |
| mysqli | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| oauth | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| oci8 | | | | | | | | | | |
| odbc | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| opcache | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| opencensus | | | | | | | | | | |
| openswoole | | | | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| opentelemetry | | | | | | | | | | |
| parallel | | | | | | | | | | |
| parle | | | | | | | | | | |
| pcntl | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pcov | | | | | | | | | | |
| pdo_dblib | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pdo_firebird | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pdo_mysql | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pdo_oci | | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pdo_odbc | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pdo_pgsql | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pdo_sqlsrv | | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| pgsql | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| php_trie | | | | | &check; | &check; | &check; | &check; | &check; | &check; |
| pq | | | | | | | | | | |
| propro | | | | | | | | | | |
| protobuf | | | | | | | | | | |
| pspell | | | | | | | | | | |
| pthreads | &check; | &check; | | | | | | | | |
| raphf | | | | | | | | | | |
| rdkafka | | | | | | | | | | |
| recode | | | | | | | | | | |
| redis | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| relay | | | | | | | | | | |
| shmop | | | | | | | | | | |
| simdjson | | | | | | | | | | |
| smbclient | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| snappy | | | | | | | | | | |
| snmp | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| soap | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| sockets | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| sodium | &check; | &check; | &check; | | | | | | | |
| solr | | | | | | | | | | |
| sourceguardian | | | | | | | | | | |
| spx | | | | | | | | | | |
| sqlsrv | | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| ssh2 | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| stomp | | | | | | | | | | |
| swoole | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| sybase_ct | &check; | | | | | | | | | |
| sysvmsg | | | | | | | | | | |
| sysvsem | | | | | | | | | | |
| sysvshm | | | | | | | | | | |
| tensor | | | | &check; | &check; | &check; | &check; | | | |
| tidy | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| timezonedb | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| uopz | | | | | | | | | | |
| uploadprogress | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| uuid | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| vips | | | | | | | | | | |
| wddx | | | | | | | | | | |
| xdebug | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | |
| xdiff | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| xhprof | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| xlswriter | | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| xmldiff | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| xmlrpc | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| xsl | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| yac | | | | | | | | | | |
| yaml | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| yar | | | | | | | | | | |
| zephir_parser | | | | | | | | | | |
| zip | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| zmq | | | | | | | | | | |
| zookeeper | | | | | | | | | | |
| zstd | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; | &check; |

[//]: # (END OF EXTENSIONS TABLE)

# Usage

Example with CLI:

```bash
docker run -it --rm -v "$PWD":/app aronpc/php:latest-fpm php
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

## ZSH php/composer alias
```bash 
alias d-php="_php"
alias d-composer="_composer"

# using password and group files
# --volume /etc/passwd:/etc/passwd:ro
# --volume /etc/group:/etc/group:ro

# Set current user and group (solve permissions)
# --user $UID:$GID

# setting ssh agent to container (using 1password on example)
# --volume $HOME/.1password/agent.sock:/ssh-auth.sock
# --env SSH_AUTH_SOCK=/ssh-auth.sock

# mounting current dir as home of container and set workdir
# --volume $PWD:$PWD
# -w $PWD

# pass $argv to use console command

_php(){
	docker run --rm --interactive --tty \
	  --volume /etc/passwd:/etc/passwd:ro \
	  --volume /etc/group:/etc/group:ro \
	  --user $UID:$GID \
 	  --volume $PWD:$PWD \
	  -w $PWD\
	  aronpc/php:latest-fpm php $argv
}

_composer(){
	docker run --rm --interactive --tty \
	  --volume /etc/passwd:/etc/passwd:ro \
	  --volume /etc/group:/etc/group:ro \
	  --user $UID:$GID \
 	  --volume $PWD:$PWD \
	  -w $PWD\
	  aronpc/php:latest-fpm composer $argv
}
