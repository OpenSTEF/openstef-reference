#!/bin/sh
set -e

# Install curl in the Alpine container
apk add --no-cache curl

# Write forecast_latest
FILENAME="/docker-entrypoint-initdb.d/forecast_latest_prediction.txt"
curl -i -XPOST "http://localhost:8086/write?db=forecast_latest&precision=s" \
    --data-binary "@$FILENAME"

# Write realised
FILENAME="/docker-entrypoint-initdb.d/realised_power.txt"
curl -i -XPOST "http://localhost:8086/write?db=realised&precision=s" \
    --data-binary "@$FILENAME"