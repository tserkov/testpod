OWNER=tserkov
PACKAGE=testpod

build:
	docker build -t ${OWNER}/${PACKAGE}:latest .

run:
	docker run -it --rm -p 8080:8080 ${OWNER}/${PACKAGE}

publish:
	docker push ghcr.io/${OWNER}/${PACKAGE}:latest

.PHONY: build publish run
