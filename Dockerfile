ARG PG_BASE_VER=latest
FROM postgres:${PG_BASE_VER}

COPY ./docker-entrypoint-wrapper.sh /docker-entrypoint-wrapper.sh
ENTRYPOINT ["/docker-entrypoint-wrapper.sh"] 
