BIN:=simple-hello
TAG:=latest

.PHONY: test integration-test build-container run 
all: run

test:
	go test ./... -v -cover

integration-test:
	docker-compose up
	@echo we should integration test here!
	docker-compose down

build-container:
	docker build -t $(BIN):$(TAG) .

run:
	go run ./main.go
