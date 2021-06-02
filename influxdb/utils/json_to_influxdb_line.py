import json
import datetime

# measurement, tag_set, field_set

# timestamp in RFC3339


filename = "test.json"


with open(filename, "r") as fh:
    json_data = json.load(fh)

# find series
series = json_data["results"][0]["series"]

measurement = series[0]["name"]

columns = [
    {"name": "time", "type": "time"},
    {"name": "algtype", "type": "field"},
    {"name": "created", "type": "tag"},
    {"name": "customer", "type": "tag"},
    {"name": "description", "type": "field"},
    {"name": "description_1", "type": "field"},
    {"name": "forecast", "type": "field"},
    {"name": "forecast_other", "type": "field"},
    {"name": "forecast_solar", "type": "field"},
    {"name": "forecast_wind_on_shore", "type": "field"},
    {"name": "pid", "type": "tag"},
    {"name": "quality", "type": "field"},
    {"name": "quantile_P05", "type": "field"},
    {"name": "quantile_P10", "type": "field"},
    {"name": "quantile_P30", "type": "field"},
    {"name": "quantile_P50", "type": "field"},
    {"name": "quantile_P70", "type": "field"},
    {"name": "quantile_P90", "type": "field"},
    {"name": "quantile_P95", "type": "field"},
    {"name": "stdev", "type": "field"},
    {"name": "tAhead", "type": "field"},
    {"name": "type", "type": "tag"},
]


def rfc3339_to_epoch(datetime_str):
    return int(datetime.datetime.strptime(datetime_str, "%Y-%m-%dT%H:%M:%SZ" ).timestamp())


line_data = []

for row in series[0]["values"]:

    tags = {}
    fields = {}
    time = None
    for i, col in enumerate(columns):
        name, col_type = col["name"], col["type"]
        value = row[i]

        if col_type == "time":
            timestamp = rfc3339_to_epoch(value)
            continue

        if value is None:
            continue

        if col_type == "tag":
            tags[name] = value
            continue

        if col_type == "field":
            fields[name] = value
            continue

    tag_set = ",".join([f"{k}={v}" for k, v in tags.items()])
    field_set = ",".join([f"{k}={v}" for k, v in fields.items()])
    line = f"{measurement},{tag_set} {field_set} {timestamp}"

    print(line)
    line_data.append(line)






