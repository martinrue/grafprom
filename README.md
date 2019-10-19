# grafprom

A Docker image for playing with Grafana + Prometheus locally.

## Config

The [prometheus.yml](./prometheus.yml) file configures Prometheus to scrape a
local service running on the docker host on port 1234 every 15s. Update this as
necessary before building the image.

## Building

Run `make build` to build a new image.

## Usage

Run `make run` to start a new container.

Once started, the web UIs for [Grafana](http://localhost:3000) and
[Prometheus](http://localhost:9090) will both be available locally.
