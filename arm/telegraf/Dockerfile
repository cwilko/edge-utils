FROM rawkode/telegraf:byo

WORKDIR /go/src/github.com/influxdata/telegraf
RUN CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7 go install -ldflags "-s -w" ./cmd/telegraf

CMD mkdir -p /usr/local/bin
CMD cp /go/bin/linux_arm/telegraf /usr/local/bin


