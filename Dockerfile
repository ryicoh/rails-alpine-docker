FROM ruby:2.6.2-alpine3.9

WORKDIR /app
COPY . /app

RUN apk add --update --no-cache \
      mariadb-dev \
      sqlite-dev \
      nodejs \
      tzdata && \
    apk add --update --no-cache --virtual=build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    gem install bundler && \
    bundle && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/*

CMD ["rails", "s", "-b", "0.0.0.0"]
