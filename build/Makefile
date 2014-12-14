.PHONY: all run

all: build run

build: 
	docker build -t build-ipxe .

run: build
	docker run -i -t -v ${PWD}:/out build-ipxe
