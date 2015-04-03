FROM ubuntu:trusty

RUN apt-get update &&  apt-get -y install \
    curl \
    openssl \
    build-essential \
    liblzma-dev \
    git-core \
    mkisofs \
    make \
    syslinux

RUN git clone https://github.com/ipxe/ipxe.git /ipxe

ADD boot.ipxe /
ADD run.sh /run.sh

VOLUME /data
ENTRYPOINT ["/run.sh"]

