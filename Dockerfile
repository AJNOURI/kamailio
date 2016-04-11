FROM alpine
RUN apk update
RUN apk add sqlite
RUN apk add kamailio
RUN apk add kamailio-sqlite
RUN apk add nano vim
RUN apk add bash

