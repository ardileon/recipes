build :
	@go build -o bin/hello ./main.go

test :
	@go test -v ./...

run : build
	@./bin/hello

swaggerBuild :
	@swagger generate spec -o ./swagger.json

swagger: swaggerBuild
	@swagger serve -F swagger ./swagger.json