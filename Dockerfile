FROM golang:latest as build
COPY . /go/src/justonecommand-uuidv4/
WORKDIR /go/src/justonecommand-uuidv4/
RUN CGO_ENABLED=0 GOOS=linux go build -o /bin/main

FROM scratch
COPY --from=build /bin/main /bin/main
ENTRYPOINT ["/bin/main"]
