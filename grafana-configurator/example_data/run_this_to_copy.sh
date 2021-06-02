#! /bin/sh

BASEDIR=$(dirname $0)

# Install curl in the Alpine container
apk add --no-cache curl

# Posts the data sources to the API:
# https://grafana.com/docs/grafana/latest/http_api/data_source/
for i in ${BASEDIR}/grafana_datasources/*; do \
    curl -X "POST" "http://grafana:3000/api/datasources" \
    -H "Content-Type: application/json" \
     --user admin:admin \
     --data-binary @$i
done

# Wraps the dashboard in a JSON message and posts it to the API:
# https://grafana.com/docs/grafana/latest/http_api/dashboard/
for i in ${BASEDIR}/grafana_dashboards/*.json; do \
    json=`cat ${i}`
    curl -X "POST" "http://grafana:3000/api/dashboards/db" \
         -H "Content-Type: application/json" \
         --user admin:admin \
         --data "{\"dashboard\": ${json}, \"folderId\": 0, \"message\": \"Inital upload\", \"overwrite\": false}"
done
