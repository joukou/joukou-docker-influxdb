InfluxDB Dockerfile for Joukou
==============================
[![Build Status](https://circleci.com/gh/joukou/joukou-docker-influxdb/tree/develop.png?circle-token=59e3c1cf78aaccd3c80f6c0b3bf83552bca1f072)](https://circleci.com/gh/joukou/joukou-docker-influxdb/tree/develop) [![Docker Repository on Quay.io](https://quay.io/repository/joukou/influxdb/status?token=6ca7a4cd-b7a7-47c0-a889-12d6d6edbe50 "Docker Repository on Quay.io")](https://quay.io/repository/joukou/influxdb) [![Apache 2.0](http://img.shields.io/badge/License-Apache%202.0-brightgreen.svg)](#license) [![Stories in Ready](https://badge.waffle.io/joukou/joukou-docker-influxdb.png?label=ready&title=Ready)](http://waffle.io/joukou/joukou-docker-influxdb) [![IRC](http://img.shields.io/badge/IRC-%23joukou-blue.svg)](http://webchat.freenode.net/?channels=joukou)

[InfluxDB](http://influxdb.com/) Dockerfile for
[Joukou](https://joukou.com).

## Usage

Executed via [Joukou Fleet Units](https://github.com/joukou/joukou-fleet).

## Base Image

See [`quay.io/joukou/golang`](https://github.com/joukou/joukou-docker-golang).

## Volumes

| Location                     | Purpose       |
| ---------------------------- | ------------- |
| `/opt/influxdb/shared/data/` | InfluxDB data |

## Ports

| Port      | Purpose                               |
| --------- | ------------------------------------- |
| 8083      | Admin server                          |
| 8086      | HTTP API                              |
| 8084      | HTTPS API                             |
| 8090      | Raft (for clustering)                 |
| 8099      | Protobuf (for clustering)             |

## Metrics

[![Throughput Graph](https://graphs.waffle.io/joukou/joukou-docker-influxdb/throughput.svg)](https://waffle.io/joukou/joukou-docker-influxdb/metrics)

## Contributors

[Isaac Johnston](https://github.com/superstructor) ([Joukou Ltd](https://joukou.com))

## License

Copyright &copy; 2014 Joukou Ltd.

InfluxDB Dockerfile for Joukou is under the Apache 2.0 license. See the
[LICENSE](LICENSE) file for details.