# How to backup and restore influxdb measurements

Make a backup of a measurement inclusing all tags and fields belonging to that measurement. For example to make a backup of the `prediction` measurement in the `forecast_latest` database of only the specified columns and `pid's` for a given timeframe use:

```shell
curl -GET http://localhost:8086/query?epoch=s&pretty=true \
        --data-urlencode "db=forecast_latest" \
        --data-urlencode "q=\
            show tag keys on forecast_latest from prediction;\
            show field keys on forecast_latest from prediction;\
            select time,customer,forecast,pid,quality,quantile_P05,quantile_P10,quantile_P30,quantile_P50,quantile_P70,quantile_P90,quantile_P95,stdev,tAhead,type from prediction\
                WHERE ("pid" = '459' OR "pid" = '321' OR "pid" = '317' OR "pid" = '313')\
                AND time >= now() - 2d\
            " > export.json
```

Next use the `json2line.py` script to conver the `json` output to InfluxDB line protocol:

```shell
python json2line.py export.json > line.txt
```

Finally to import this data back into InfluxDB use:

```shell
curl -i -XPOST "http://localhost:8086/write?precision=s" \
    --data-urlencode "db=forecast_latest" \
    --data-binary @line.txt
```