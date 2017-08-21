
FROM ubuntu:16.04

MAINTAINER "Omnious dev. team" <dev@omnious.com>

RUN apt-get update
RUN apt-get install -y wget zip git

ENV VERSION 3.4.0

RUN cd /tmp && wget --no-check-certificate https://github.com/google/protobuf/releases/download/v$VERSION/protoc-$VERSION-linux-x86_64.zip 
RUN cd /tmp && unzip protoc-$VERSION-linux-x86_64.zip
RUN chmod +x /tmp/bin/protoc && cp /tmp/bin/protoc /bin/

RUN rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
