.DEFAULT_GOAL := build

.PHONY:fmt vet build clean
build: clean
		go clean
fmt:
		go fmt ./...

vet: fmt
		go vet ./...

build: vet
		go build -o ch12_app