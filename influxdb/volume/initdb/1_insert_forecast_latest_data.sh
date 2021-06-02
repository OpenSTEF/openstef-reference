#!/bin/sh
set -e

FILENAME="/docker-entrypoint-initdb.d/forecast_latest_prediction.txt"

# This is very slow for a lot of data
# while read line; do
#     influx -database $INFLUXDB_FORECASTS_DB_NAME -execute "INSERT $line"
# done < $FILENAME

# Install curl in the Alpine container
apk add --no-cache curl
curl -i -XPOST "http://localhost:8086/write?db=forecast_latest&precision=s" \
    --data-binary "@$FILENAME"