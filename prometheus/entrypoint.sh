#!/bin/sh
set -e
envsubst < /etc/prometheus/prom.yml.template > /etc/prometheus/prom.yml
exec /bin/prometheus --config.file=/etc/prometheus/prom.yml --storage.tsdb.path=/prometheus
