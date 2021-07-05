FROM golang:1.16

EXPOSE 8080

WORKDIR /go/src/example-frontend

COPY /example-backend .

RUN go build

CMD ./server