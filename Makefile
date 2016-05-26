.PHONY: all test clean build install

PKG_NAME = github.com/jindav/go-hdf5

all: install test

build:
	go build ./...

install:
	go install ./...

test:
	go test ./...

clean:
	@go clean -i ./...
