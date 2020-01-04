FROM golang:1.12-alpine3.10

COPY . codeeducation/

WORKDIR codeeducation/

CMD go run codeeducation.go