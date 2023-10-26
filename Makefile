# terraform-provider-saladcloud

.PHONY: build
build: CGO_ENABLED=0
build:
	go build -o ./bin/terraform-provider-saladcloud ./main.go

.PHONY: clean
clean:
	rm -rf ./bin
	go clean

.PHONY: download
download:
	go mod download
	go mod verify

.PHONY: lint
lint:
	golangci-lint run ./...

.PHONY: tidy
tidy:
	go mod tidy
