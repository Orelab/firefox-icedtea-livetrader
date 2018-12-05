FROM ubuntu:18.04
MAINTAINER Robert Vojcik <robert@vojcik.net>

RUN apt-get update && apt-get install -y \
    firefox \
    icedtea-plugin \
    && rm -rf /var/lig/apt/lists/* 

RUN useradd -u 1000 -ms /bin/bash firefox

USER firefox

WORKDIR /home/firefox

ENV DISPLAY=":0"

ENTRYPOINT /usr/bin/firefox

