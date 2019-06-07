FROM ubuntu:xenial
MAINTAINER Cem Basoglu <cem.basoglu@web.de>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install -qy texlive-full && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]