FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y python3 redis-server curl supervisor
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py
RUN pip3 install flask celery mysql-connector-python supervisor gunicorn redis