.PHONY: all run

all: build run

build: 
	docker build -t build-ipxe .

run: build
	docker run -i -t -v ${PWD}:/out build-ipxe

upload:
	mv ipxe.iso ~/Dropbox/Public/github.com/pandrew/build-ipxe/ && \
	mv ipxe.iso.md5.txt ~/Dropbox/Public/github.com/pandrew/build-ipxe/
