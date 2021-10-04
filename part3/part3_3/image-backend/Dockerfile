FROM golang:1.16

EXPOSE 8080

WORKDIR /backend

COPY /example-backend .

ENV REQUEST_ORIGIN=http://localhost:8000

RUN go build

RUN useradd -m client

RUN chown client: /backend

RUN chmod 700 /backend

USER client

CMD ./server
