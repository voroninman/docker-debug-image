FROM ubuntu:focal

WORKDIR /root
ENV DEBIAN_FRONTEND noninteractive

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
    less \
    man \
    man-db \
    manpages-posix \
    miller \
    mysql-client \
    net-tools \
    netcat \
    postgresql-client \
    pv \
    python3-pip \
    screen \
    software-properties-common \
    strace \
    tcpdump \
    traceroute \
    vim
RUN pip install awscli

CMD [ "sleep", "infinity" ]
