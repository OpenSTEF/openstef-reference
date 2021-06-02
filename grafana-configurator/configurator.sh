#! /bin/sh

BASEDIR=$(dirname $0)

# Install curl in the Alpine container
apk add --no-cache curl

# Posts the data sources to the API:
# https://grafana.com/docs/grafana/latest/http_api/data_source/
for i in ${BASEDIR}/datasources/*; do \
    curl -X "POST" "http://grafana:3000/api/datasources" \
        -H "Content-Type: application/json" \
        --user $GRAFANA_USER:$GRAFANA_PASSWORD \
        --data-binary @$i
done

# Wraps the dashboard in a JSON message and posts it to the API:
# https://grafana.com/docs/grafana/latest/http_api/dashboard/
for i in ${BASEDIR}/dashboards/*.json; do \
    json=`cat ${i}`
    curl -X "POST" "http://grafana:3000/api/dashboards/db" \
        -H "Content-Type: application/json" \
        --user $GRAFANA_USER:$GRAFANA_PASSWORD \
        --data "{\"dashboard\": ${json}, \"folderId\": 0, \"message\": \"Inital upload\", \"overwrite\": false}"
done
