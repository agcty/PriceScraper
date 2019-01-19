FROM tiangolo/uwsgi-nginx-flask:python3.7-alpine3.8

COPY ./app/requirements.txt /app
WORKDIR /app/

#--virtual groups build packages with the name build-dependencies to remove later
RUN apk add --update --no-cache --virtual \
    build-dependencies \
    python3-dev \
    build-base \
    libffi-dev \
    openssl-dev \
    libxml2-dev \
    libxslt-dev \
    && pip install -r requirements.txt
# && apk del build-dependencies

COPY ./app .