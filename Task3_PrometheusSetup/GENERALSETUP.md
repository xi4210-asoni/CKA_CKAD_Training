## PROMETHEUS BASICS
STEP 1 INSTALLING PROMETHEUS WITH BINARY SETUP
https://prometheus.io/docs/prometheus/latest/getting_started/

wget https://github.com/prometheus/prometheus/releases/download/v2.44.0/prometheus-2.44.0.linux-amd64.tar.gz

tar xvfz prometheus-2.44.0.linux-amd64.tar.gz
./prometheus --config.file=prometheus.yml

Check prometheus.yml file in the folder - prometheus sends its own logs to /metrics endpoints

Configuration details to set the values - https://prometheus.io/docs/prometheus/latest/configuration/configuration/

Complete configuration prometheus.yml - https://github.com/prometheus/prometheus/blob/release-2.44/config/testdata/conf.good.yml

To check the default prometheus and metrics endpoints
http://172.25.211.186:9090/metrics
http://172.25.211.186:9090
For getting the node exporter
Reference - https://prometheus.io/docs/guides/node-exporter/ 

Getting References 

wget https://github.com/prometheus/node_exporter/releases/download/v1.6.0/node_exporter-1.6.0.linux-amd64.tar.gz

tar xvfz node_exporter-1.6.0.linux-amd64.tar.gz
./node_exporter --web.listen-address 127.0.0.1:8082

To check the rules files validation use this
https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/

sum by (area)(jvm_memory_used_bytes) - jvm memory used - not getting the kubernetes nodes/ pods memory directly here


## Add Grafana

https://grafana.com/grafana/download

./grafana server

## Add Alertmanager

Alertmanager binary setup 

$ mkdir -p $GOPATH/src/github.com/prometheus
$ cd $GOPATH/src/github.com/prometheus
$ git clone https://github.com/prometheus/alertmanager.git
$ cd alertmanager
$ make build
$ ./alertmanager --config.file=<your_file>

### Get the configuration properly here
https://prometheus.io/docs/alerting/latest/configuration/ - every block have an example proper