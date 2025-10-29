FROM python:3.13-slim

RUN apt-get update \
 && pip install --upgrade pip \
 && apt-get install -y make automake gcc g++ subversion python3-dev libblas3 liblapack3 liblapack-dev libblas-dev wget \
 && pip install influxdb-client openstef-dbc==3.8.4 pydantic pydantic-settings


WORKDIR /opt/influxdb-configurator/

COPY . .
RUN chmod +x wait-for-influx.sh

ENTRYPOINT [ "./wait-for-influx.sh", "http://influxdb:8086", "python", "load_data_to_influx.py" ]

