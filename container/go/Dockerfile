FROM golang:1.9.2

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl vim strace && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

EXPOSE 8000
