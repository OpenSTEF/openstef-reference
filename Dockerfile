# Fix marc.van.raalte@alliander.com 2022 Alliander System Operation
FROM python:3.9
COPY ./influxdb-configurator /opt/influxdb-configurator
RUN apt-get update && pip install --upgrade pip && apt-get install make && apt-get install automake && apt-get install gcc && apt-get install g++ #subversion python3-dev 
RUN pip install pandas && pip install 'influxdb-client[ciso]' && pip install openstf-dbc
RUN cd /opt/influxdb-configurator/ 
CMD python load_data_to_influx.py
