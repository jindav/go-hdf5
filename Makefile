.PHONY: all test clean build install compile-native autoconf

PKG_NAME = github.com/jindav/go-hdf5

all: install test

build:
	go build ./...

install:
	go install ./...

install-full: compile-native
	go install ./...

test:
	go test ./...

clean:
	@go clean -i ./...

autoconf:
	@mkdir -p vendor/c-hdf5/build
	@cd vendor/c-hdf5 && ./configure --prefix=`pwd`/build

compile-native: autoconf
	@cd vendor/c-hdf5 && make install

