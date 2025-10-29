#!/bin/sh
# wait-for-influx.sh - Wait for InfluxDB to be ready

set -e

host="$1"
shift
cmd="$@"

until wget --spider --quiet --timeout=1 --tries=1 "$host/health" 2>/dev/null; do
  >&2 echo "InfluxDB is unavailable - sleeping"
  sleep 1
done

>&2 echo "InfluxDB is up - executing command"
exec $cmd