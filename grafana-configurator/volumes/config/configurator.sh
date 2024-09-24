#!/bin/sh

BASEDIR=$(dirname $0)

# Install curl in the Alpine container
apk add --no-cache curl python3 git

python3 -m venv .

. ./bin/activate

pip3 install --upgrade pip

pip3 install rich pydantic

pip3 install --upgrade 'grafana-import[builder] @ git+https://github.com/grafana-toolbox/grafana-import.git'

# Posts the data sources to the API:
# https://grafana.com/docs/grafana/latest/http_api/data_source/
for i in ${BASEDIR}/datasources/*; do \
    curl -X "POST" "http://grafana:3000/api/datasources" \
        -H "Content-Type: application/json" \
        --user $GRAFANA_USER:$GRAFANA_PASSWORD \
        --data-binary @$i
done

export GRAFANA_URL=http://${GRAFANA_USER}:${GRAFANA_PASSWORD}@grafana:3000

grafana-import  -i ${BASEDIR}/dashboards/station_forecasts.json
