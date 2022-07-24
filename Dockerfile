FROM golang:1.18-bullseye as builder

WORKDIR /build
COPY . .
ENV GO111MODULE=on
ENV CGO_ENABLED=0
RUN go mod download
RUN go build -o ./bin/testpod ./cmd/testpod

FROM scratch
LABEL org.opencontainers.image.source https://github.com/tserkov/testpod

COPY --from=builder /build/bin/testpod /app/testpod
EXPOSE 8080
ENTRYPOINT ["/app/testpod"]
