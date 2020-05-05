FROM linuxserver/dokuwiki:latest

RUN \
 echo "**** install more packages ****" && \
 apk add --no-cache \
	php7-sqlite3 \
	php7-pdo_sqlite \
 && rm -rf /tmp/* /var/cache/apk/* 

# ports and volumes
EXPOSE 80 443
VOLUME /config