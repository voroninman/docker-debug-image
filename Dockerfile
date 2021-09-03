FROM ubuntu:focal

WORKDIR /root

RUN apt-get update -qq \
    && apt-get install -y \
    apt-transport-https \
    atop \
    ca-certificates \
    curl \
    dnsutils \
    dstat \
    htop \
    iproute2 \
    iputils-ping \
    jq \
    man \
    man-db \
    manpages-posix \
    net-tools \
    netcat \
    screen \
    software-properties-common \
    strace \
    tcpdump \
    traceroute \
    vim

CMD [ "sleep", "infinity" ]
