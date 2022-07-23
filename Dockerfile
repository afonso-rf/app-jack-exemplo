FROM python:3-alpine

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

WORKDIR /app

RUN rm -rf /tmp/*

COPY app.py ./app.py

CMD python ./app.py
