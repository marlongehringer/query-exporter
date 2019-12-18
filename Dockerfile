FROM python:3.7-alpine

WORKDIR /app

ADD . /app

RUN apk add --no-cache gcc musl-dev mariadb-connector-c-dev postgresql-dev

RUN pip install .
RUN pip install mysqlclient psycopg2

ENTRYPOINT [ "/usr/local/bin/query-exporter" ]