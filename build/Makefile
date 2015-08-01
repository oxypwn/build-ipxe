.PHONY: all run shell



OUT = "undionly.kpxe"

all: build run

build: 
	docker build -t build-ipxe .

run: build
	docker run -it --rm -v ${PWD}:/data -e URL='http://${IP}' build-ipxe $(OUT)
