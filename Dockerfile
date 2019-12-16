FROM python:3.7-alpine

WORKDIR /app

ADD . /app

RUN apk add --no-cache gcc musl-dev

RUN pip install .

ENTRYPOINT [ "/usr/local/bin/query-exporter" ]