#! /bin/sh

BASEDIR=$(dirname $0)

apk add --no-cache curl

for i in ${BASEDIR}/grafana_datasources/*; do \
    curl -X "POST" "http://grafana:3000/api/datasources" \
    -H "Content-Type: application/json" \
     --user admin:admin \
     --data-binary @$i
done
