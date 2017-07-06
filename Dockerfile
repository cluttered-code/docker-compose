FROM docker:dind

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache --virtual .build-deps py-pip \
  && pip install docker-compose \
  && apk del .build-deps
