VERSION 0.6
FROM golang:1.18-bullseye
WORKDIR /testpod

build:
    COPY . .
    RUN go build -o build/testpod ./cmd/testpod
    SAVE ARTIFACT build/testpod /testpod AS LOCAL build/testpod

docker:
    COPY +build/testpod .
    ENTRYPOINT ["/testpod/testpod"]
    SAVE IMAGE --push gchr.io/tserkov/testpod:latest
