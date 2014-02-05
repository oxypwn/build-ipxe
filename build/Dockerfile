FROM pandrew/ubuntu-lts

RUN apt-get -y install  gcc git-core mkisofs make syslinux
RUN git clone https://github.com/pandrew/ipxe.git /ipxe
ADD run.sh /
RUN chmod +x /run.sh
ADD boot.ipxe /
ENTRYPOINT ["/run.sh"]
