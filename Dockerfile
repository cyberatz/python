FROM jfloff/alpine-python:2.7-slim

RUN /entrypoint.sh \
  -a openssl-dev \
  -a g++ \
  -a python-dev \
  -a gcc \
  -a freetds-dev \
  -a git \
  -p simplejson \
  -p requests

RUN pip install git+https://github.com/pymssql/pymssql.git
