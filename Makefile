OWNER=tserkov
PACKAGE=testpod

build:
	docker build -t ghcr.io/${OWNER}/${PACKAGE}:latest .

run:
	docker run -it --rm -p 8080:8080 ghcr.io/${OWNER}/${PACKAGE}

.PHONY: build run
