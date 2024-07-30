build :
	@go build -o bin/hello ./main.go

test :
	@go test -v ./...

run : build
	@./bin/hello