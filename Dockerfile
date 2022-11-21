FROM webdevops/php-nginx:7.4-alpine

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thebaconguy"

# add local files
COPY / /app

# ports and volumes
EXPOSE 80 443
VOLUME /opt/docker/etc
