FROM ubuntu:16.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl vim \
                       build-essential \
                       ffmpeg && \
    : [[ clean up ]] && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
