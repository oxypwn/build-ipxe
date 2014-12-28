FROM ubuntu:trusty

RUN apt-get update &&  apt-get -y install build-essential git-core mkisofs make syslinux
RUN git clone https://github.com/ipxe/ipxe.git /ipxe
ADD run.sh /
RUN chmod +x /run.sh
ADD boot.ipxe /
ENTRYPOINT ["/run.sh"]
