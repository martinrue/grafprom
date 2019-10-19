FROM ubuntu:18.04

RUN \ 
  apt-get update && \
  apt-get install -y curl software-properties-common && \
  curl https://packages.grafana.com/gpg.key | apt-key add - && \
  add-apt-repository "deb https://packages.grafana.com/oss/deb stable main" && \
  apt-get update && \
  apt-get install -y grafana && \
  curl -LO https://github.com/prometheus/prometheus/releases/download/v2.13.0/prometheus-2.13.0.linux-amd64.tar.gz && \
  mkdir /prometheus && \
  tar xzvf prometheus-2.13.0.linux-amd64.tar.gz -C /prometheus 

COPY ./prometheus.yml /prometheus/prometheus-2.13.0.linux-amd64/
COPY ./run.sh /

EXPOSE 9090
EXPOSE 3000

ENTRYPOINT ["/run.sh"]
