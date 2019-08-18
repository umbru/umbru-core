FROM debian:stretch
LABEL maintainer="Umbru Developers <dev@umbru.org>"
LABEL description="Dockerised UmbruCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
