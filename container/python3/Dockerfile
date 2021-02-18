FROM ubuntu:16.04

ENV PYTHON_VERSION=3.6.3
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim wget \
                       build-essential gcc zlib1g-dev libssl-dev \
                       language-pack-ja-base language-pack-ja \
                       tk-dev && \
    update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja && \
    wget -q https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz \
        && tar zxf Python-${PYTHON_VERSION}.tgz \
        && cd Python-${PYTHON_VERSION} \
        && ./configure --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib" CFLAGS=-fPIC \
        && make altinstall \
        && cd .. && rm -rf Python-${PYTHON_VERSION}* && \
    apt-get install -y curl vim && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
ENV PYTHONIOENCODING "utf-8"
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8

ADD requirements.txt /srv/
RUN pip3.6 install --upgrade -r /srv/requirements.txt

