FROM tiangolo/uwsgi-nginx-flask:python3.7-alpine3.8

COPY .app/requirements.txt /app
WORKDIR /app/

RUN pip install -r requirements.txt

COPY ./app /app