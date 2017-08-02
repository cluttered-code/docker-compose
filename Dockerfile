FROM docker:1.12-dind

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache curl python python-dev py-pip build-base \
  && curl -L https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  && chmod +x /usr/local/bin/docker-compose
