From golang

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./
RUN GOOS=linux go build -o api

ENTRYPOINT ["./api"]

