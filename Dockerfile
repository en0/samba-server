FROM ubuntu:14.04
MAINTAINER "Ian Laird"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y samba supervisor

RUN mkdir /data

COPY ./container_files/ /
COPY ./tools /tools

EXPOSE 137 138 139 445

CMD supervisord -n
