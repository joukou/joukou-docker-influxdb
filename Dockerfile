# Copyright 2014 Joukou Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
FROM quay.io/joukou/golang
MAINTAINER Isaac Johnston <isaac.johnston@joukou.com>

ENV DEBIAN_FRONTEND noninteractive
ENV INFLUXDB_VERSION 0.8.3

# Install InfluxDB
WORKDIR /tmp
RUN curl -o influxdb_amd64.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
    dpkg -i influxdb_amd64.deb && \
    go get github.com/BurntSushi/toml/cmd/tomlv && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD opt/influxdb/shared/influxdb.toml /opt/influxdb/shared/

# Expose ports
#   8083  Admin server
#   8086  HTTP API
#   8084  HTTPS API
#   8090  Raft (for clustering)
#   8099  Protobuf (for clustering)
EXPOSE 8083 8086 8084 8090 8099

VOLUME [ "/opt/influxdb/shared/data" ]

ADD bin/boot /bin/
CMD [ "/bin/boot" ]