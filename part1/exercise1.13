FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

ENV REQUEST_ORIGIN https://example.com

ENV REDIS_HOST 6379

COPY . .

RUN go build

CMD ["./server"]
