FROM jfloff/alpine-python:2.7-slim
RUN apk --no-cache add git gcc openssl-dev python-dev
RUN pip install --upgrade pip
RUN pip install git+https://github.com/pymssql/pymssql.git
RUN /entrypoint.sh \
  -a g++ \
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


