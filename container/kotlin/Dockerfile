FROM ubuntu:16.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl vim \
                       zip unzip software-properties-common && \
    : [[ install java6 ]] && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | \
       debconf-set-selections && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y oracle-java8-installer && \
    : [[ install kotlin ]] && \
    curl -s https://get.sdkman.io | bash
RUN ["/bin/bash", "-c", "\
        source ~/.sdkman/bin/sdkman-init.sh && \
        sdk install kotlin 1.1.61 \
    "]
RUN : [[ clean up ]] && \
    apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
