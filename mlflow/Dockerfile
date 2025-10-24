FROM python:3.13-slim
# Build dependencies
RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential libpq-dev

# Pip dependencies
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# Port
EXPOSE 8099

CMD mlflow server \
--host 0.0.0.0 \
--port 8099 \
--backend-store-uri "mysql+pymysql://${MYSQL_USERNAME}:${MYSQL_PASSWORD}@${MYSQL_HOST}:${MYSQL_PORT}/${MYSQL_DATABASE}" \
--default-artifact-root "./nginx/volumes/data/icarus/visuals/trained_models/mlruns"
