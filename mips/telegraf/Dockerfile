FROM rawkode/telegraf:byo

WORKDIR /go/src/github.com/influxdata/telegraf
RUN CGO_ENABLED=0 GOOS=linux GOARCH=mipsle go install -ldflags "-s -w" ./cmd/telegraf

CMD mkdir -p /usr/local/bin
CMD cp /go/bin/linux_mipsle/telegraf /usr/local/bin


