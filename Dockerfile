FROM golang:1.12-alpine3.10 as compilador

WORKDIR /src

COPY . /src

RUN go build /src/codeeducation.go

##################################  scratch  ubuntu:latest

FROM scratch

COPY --from=compilador /src/codeeducation codeeducation.sh

WORKDIR /

ENTRYPOINT ["/codeeducation.sh"]
