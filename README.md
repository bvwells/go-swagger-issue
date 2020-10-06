# Go-swagger issue

This repo contains some tests for illustrating an issue generating go-swagger
servers when go mod download has not been run first.

## Build a docker image to run go-swagger with go 1.15.0.
```
docker build -t goswagger:latest .
```

## Run go-swagger to generate server without running go mod download first.
```
docker run -it -v `pwd`:/go/src/go-swagger-issue goswagger:latest swagger generate server -f /go/src/go-swagger-issue/swagger.yaml -t /go/src/go-swagger-issue
```

## Run go-swagger to generate server with running go mod download first.
```
docker run -it -v `pwd`:/go/src/go-swagger-issue goswagger:latest /bin/bash -c "cd /go/src/go-swagger-issue; go mod download; swagger generate server -f /go/src/go-swagger-issue/swagger.yaml -t /go/src/go-swagger-issue"
```
