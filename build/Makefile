.PHONY: all run shell


IP := $(shell ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep -v '192.168.59')


all: build run

build: 
	docker build -t build-ipxe .

run: build
	docker run -i -t -v ${PWD}:/data -e URL='http://${IP}' build-ipxe ipxe.iso
