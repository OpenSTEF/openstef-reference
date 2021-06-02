
export INFLUXDB_HOST="localhost"
export INFLUXDB_PORT="8086"
export INFLUXDB_FORECAST_DATABASENAME="forecast_latest"
export INFLUXDB_FORECAST_DATABASE_PREDICTION_SERIES_NAME="prediction"
# SELECT * FROM "prediction" WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313') AND time >= now() - 7d GROUP BY time(5m), "pid" fill(null)

# 459, 321, 317, 313

# Use this command to make a backup of a production instance
curl -G 'http://$INFLUXDB_HOST:$INFLUXDB_PORT/query?pretty=true' \
    --data-urlencode "db=$INFLUXDB_FORECAST_DATABASENAME" \
    --data-urlencode "q=\
    SELECT mean(\"forecast\") \
    FROM \"$INFLUXDB_FORECAST_DATABASE_PREDICTION_SERIES_NAME\" \
    WHERE (\"pid\" = '459' OR \"pid\" = '321' OR \"pid\" = '317' OR \"pid\" = '313') \
    AND time >= now() - 7d GROUP BY time(5m) fill(null)" > $INFLUXDB_FORECAST_DATABASENAME.$INFLUXDB_FORECAST_DATABASE_PREDICTION_SERIES_NAME.json

curl -G 'http://$INFLUXDB_HOST:$INFLUXDB_PORT/query?pretty=true' \
    -H 'Accept:application/csv'\
    --data-urlencode "db=$INFLUXDB_FORECAST_DATABASENAME" \
    --data-urlencode "q=\
    SELECT * FROM \"prediction\"\
    WHERE (\"pid\" = '459' OR \"pid\" = '321' OR \"pid\" = '317' OR \"pid\" = '313')\
    AND time >= now() - 1u"



curl -XPOST -d @forecast_latest.prediction.json "http://$INFLUXDB_HOST:$INFLUXDB_PORT/db/$INFLUXDB_FORECAST_DATABASENAME/$INFLUXDB_FORECAST_DATABASE_PREDICTION_SERIES_NAME"

curl -G 'http://$INFLUXDB_HOST:$INFLUXDB_PORT/query' \
    -H 'Accept:application/csv'\
    --data-urlencode "db=$INFLUXDB_FORECAST_DATABASENAME" \
    --data-urlencode "q=\
    SELECT mean(\"forecast\") \
    FROM \"$INFLUXDB_FORECAST_DATABASE_PREDICTION_SERIES_NAME\" \
    WHERE (\"pid\" = '459' OR \"pid\" = '321' OR \"pid\" = '317' OR \"pid\" = '313') \
    AND time >= now() - 7d GROUP BY time(5m) fill(null)" > forecast_latest.prediction.json

# InfluxDB API documentation: https://docs.influxdata.com/influxdb/v1.7/tools/api/

# Ping the database
# curl -sl -I http://localhost:8086/ping

# Export influxDB data into line protocol: influx_inspect
# https://docs.influxdata.com/influxdb/v1.7/tools/influx_inspect/
# https://www.influxdata.com/blog/tldr-influxdb-tech-tips-november-3-2016/


# get tags:

show tag keys on forecast_latest from prediction
influx -execute "show tag keys on forecast_latest from prediction"
curl -GET http://localhost:8086/query?pretty=true \
        --data-urlencode "db=forecast_latest" \
        --data-urlencode "q=show tag keys on forecast_latest from prediction"

# get fields:

show field keys on forecast_latest from prediction
influx -execute "show field keys on forecast_latest from prediction"
curl -GET http://localhost:8086/query?pretty=true \
        --data-urlencode "db=forecast_latest" \
        --data-urlencode "q=show field keys on forecast_latest from prediction"

# get data
select * from prediction WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313') AND time >= now() - 7d
influx -database forecast_latest -execute "select * from prediction WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313') AND time >= now() - 7d"

# Making backups

NUM_DAYS="7"

# Backup using `influx` cli
CLI_ARGS="-format json -precision s -execute"
# Backup tags
influx $CLI_ARGS "show tag keys on forecast_latest from prediction" > tags.json
# Backup fields
influx $CLI_ARGS "show field keys on forecast_latest from prediction" > fields.json
# Backup data
influx -database forecast_latest $CLI_ARGS "\
    select * from prediction\
    WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313')\
    AND time >= now() - ${NUM_DAYS}d limit 1"
# Backup all at the same time
influx -database forecast_latest $CLI_ARGS "\
    show tag keys on forecast_latest from prediction;\
    show field keys on forecast_latest from prediction;\
    select * from prediction\
        WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313')\
        AND time >= now() - 7d limit 1"

# Backup using `influx` API
curl -GET http://localhost:8086/query?epoch=s&pretty=true \
        --data-urlencode "db=forecast_latest" \
        --data-urlencode "q=\
            show tag keys on forecast_latest from prediction;\
            show field keys on forecast_latest from prediction;\
            select * from prediction\
                WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313')\
                AND time >= now() - 24h" > export.json

# Backup using `influx` API
curl -GET http://localhost:8086/query?epoch=s&pretty=true \
        --data-urlencode "db=forecast_latest" \
        --data-urlencode "q=\
            show tag keys on forecast_latest from prediction;\
            show field keys on forecast_latest from prediction;\
            select time,customer,forecast,pid,quality,quantile_P05,quantile_P10,quantile_P30,quantile_P50,quantile_P70,quantile_P90,quantile_P95,stdev,tAhead,type from prediction\
                WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313')\
                AND time >= now() - 2d" > export.json
['time', 'algtype', 'created', 'customer', 'description', 'description_1', 'forecast', 'forecast_other', 'forecast_solar', 'forecast_wind_on_shore', 'pid', 'quality', 'quantile_P05', 'quantile_P10', 'quantile_P30', 'quantile_P50', 'quantile_P70', 'quantile_P90', 'quantile_P95', 'stdev', 'tAhead', 'type']

COLUMNS="time,customer,description,forecast,pid,quality,quantile_P05,quantile_P10,quantile_P30,quantile_P50,quantile_P70,quantile_P90,quantile_P95,stdev,tAhead,type"

# Restore using `influx` API
curl -XPOST http://localhost:8086/query?precision=s \
    --data-urlencode "db=forecast_latest" \
    -d @forecast_latest_prediction.txt
