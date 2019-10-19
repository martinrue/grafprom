#!/usr/bin/env bash

# Start Grafana
service grafana-server start

# Start Prometheus
cd /prometheus/prometheus-2.13.0.linux-amd64
./prometheus
