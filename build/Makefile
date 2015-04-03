.PHONY: all run shell





all: build run

build: 
	docker build -t build-ipxe .

run: build
	docker run -i -t -v ${PWD}:/data -e URL='http://${IP}' build-ipxe ipxe.iso
