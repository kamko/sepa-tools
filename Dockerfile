FROM golang:1.22-alpine AS builder

WORKDIR /build
COPY server.go .

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o server server.go

FROM scratch

COPY --from=builder /build/server /server
COPY index.html /static/

EXPOSE 8080

ENTRYPOINT ["/server"]
