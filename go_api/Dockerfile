FROM golang:1.14.3-alpine3.11

WORKDIR /go/src/work

COPY . /go/src/work

RUN go install .

EXPOSE 8080

CMD ["work"]
