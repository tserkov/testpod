VERSION 0.6
FROM golang:1.18-bullseye
WORKDIR /testpod

build:
    COPY . .
    RUN go build -o build/testpod ./cmd/testpod
    SAVE ARTIFACT build/testpod /testpod AS LOCAL build/testpod

docker:
    ARG TAG
    COPY +build/testpod .
    LABEL org.opencontainers.image.source=https://github.com/tserkov/testpod
    EXPOSE 8080
    ENTRYPOINT ["/testpod/testpod"]
    SAVE IMAGE --push ghcr.io/tserkov/testpod:$TAG ghcr.io/tserkov/testpod:latest
