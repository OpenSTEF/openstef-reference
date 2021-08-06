"""Convert any InfluxDB 1.x output to line protocol.

Usage:
    json2line single_export_file.json

    json2line data.json tags.json fields.json

"""

from enum import Enum
from dataclasses import dataclass
import sys
import json


class ColumnType(Enum):
    TIMESTAMP = "timestamp"
    TAG = "tag"
    FIELD = "field"


@dataclass
class Column:
    name: str
    type: ColumnType
    index: int


def convert_data_to_line(data_serie, tags_serie, fields_serie):
    serie_name = data_serie["name"]
    column_names = data_serie["columns"]

    tag_names = get_tag_names(tags_serie)
    field_names = get_field_names(fields_serie)

    columns = determine_columns(column_names, tag_names, field_names)
    values = data_serie["values"]

    for row in values:
        line = convert_row_to_line(serie_name, row, columns)
        print(line)


def convert_row_to_line(serie_name, row, columns):
    tags = {}
    fields = {}
    timestamp = None
    for col in columns:
        value = row[col.index]

        if value is None:
            continue

        # HACK for some reason the exported json gives pid as a string value?
        if col.name == "pid":
            value = int(value)

        if type(value) is str:
            # '\' are required when using influx cli
            # value = f'\\"{value}\\"'
            # No '\' required when using curl
            value = f'"{value}"'

        if col.type is ColumnType.TIMESTAMP:
            timestamp = value

        if col.type is ColumnType.TAG:
            tags[col.name] = value

        if col.type is ColumnType.FIELD:
            fields[col.name] = value

    # For quoting guidelines, see influx v1.7 docs
    # Noting, except for string field values
    tag_set = ",".join([f"{k}={v}" for k, v in tags.items()]).replace('"', "")
    field_set = ",".join([f"{k}={v}" for k, v in fields.items()])
    line = f"{serie_name},{tag_set} {field_set} {timestamp}"

    return line


def get_field_names(serie):
    values = serie["values"]
    field_names = [v[0] for v in values]
    return field_names


def get_tag_names(serie):
    values = serie["values"]
    tag_names = [v[0] for v in values]
    return tag_names


def determine_columns(column_names, tag_names, field_names):
    colums = []
    for i, col_name in enumerate(column_names):

        if col_name == "time":
            colums.append(Column(name=col_name, index=i, type=ColumnType.TIMESTAMP))
            continue

        if col_name in tag_names:
            colums.append(Column(name=col_name, index=i, type=ColumnType.TAG))
            continue

        if col_name in field_names:
            colums.append(Column(name=col_name, index=i, type=ColumnType.FIELD))
            continue

    return colums


def parse_single_file(filename):
    with open(filename) as fh:
        json_data = json.load(fh)
    results = json_data["results"]

    if len(results) != 3:
        raise ValueError("Wrong number of results, expected 3 (data, tags, fields")

    tags_serie = None
    fields_serie = None
    data_serie = None

    for result in results:
        serie = result["series"][0]
        # we found the tags
        if "tagKey" in serie["columns"]:
            tags_serie = serie
        # we found the fields
        elif "fieldKey" in serie["columns"]:
            fields_serie = serie
        else:
            data_serie = serie

    return data_serie, tags_serie, fields_serie


if __name__ == "__main__":

    # single file mode
    if len(sys.argv) == 2:
        data_serie, tags_serie, fields_serie = parse_single_file(sys.argv[1])
    # separate file mode
    elif len(sys.argv) == 4:
        data_file = sys.argv[1]
        tags_file = sys.argv[2]
        fields_file = sys.argv[3]

        with open(data_file) as fh:
            data_serie = json.load(fh)["results"][0]["series"][0]

        with open(tags_file) as fh:
            tags_serie = json.load(fh)["results"][0]["series"][0]

        with open(fields_file) as fh:
            fields_serie = json.load(fh)["results"][0]["series"][0]

    convert_data_to_line(data_serie, tags_serie, fields_serie)
