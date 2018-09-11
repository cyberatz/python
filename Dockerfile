FROM jfloff/alpine-python:2.7-slim
RUN apk --no-cache add git
RUN /entrypoint.sh \
  -a openssl-dev \
  -a g++ \
  -a python-dev \
  -a gcc \
  -a freetds-dev \
  -a freetds \
  -a cython \
  -a cython-dev \
  -a py-mysqldb \
  -p simplejson \
  -p requests  \
  -p SQLAlchemy \
  -p chardet \
  -p openpyxl

RUN pip install git+https://github.com/pymssql/pymssql.git
