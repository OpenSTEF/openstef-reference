FROM python:3.10-slim

RUN apt-get update \
 && pip install --upgrade pip \
 && apt-get install -y make automake gcc g++ subversion python3-dev libblas3 liblapack3 liblapack-dev libblas-dev \
 && pip install influxdb-client openstef-dbc==3.7.6 pydantic pydantic-settings


WORKDIR /opt/influxdb-configurator/

COPY . .

ENTRYPOINT [ "python", "load_data_to_influx.py" ]

