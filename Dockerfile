FROM golang:1.14 as builder
WORKDIR /
COPY ./main.go ./
RUN go build -o main ./main.go

FROM alpine:latest
WORKDIR /
COPY --from=builder ./main .
ENTRYPOINT [ "./main" ]

