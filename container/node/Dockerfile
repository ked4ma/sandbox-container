FROM ubuntu:16.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl vim \
                       build-essential && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs && \
    : [[ clean up ]] && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
