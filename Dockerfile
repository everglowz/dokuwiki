FROM linuxserver/dokuwiki:2018-04-22c-ls41

RUN \
 echo "**** install more packages ****" && \
 apk add --no-cache \
	php7-sqlite3 \
	php7-pdo_sqlite \
	php7-curl \
  && rm -rf /tmp/* /var/cache/apk/*

# ports and volumes
EXPOSE 80 443
VOLUME /config