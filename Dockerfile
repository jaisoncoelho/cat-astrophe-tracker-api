FROM ruby:2.7.3-alpine as builder

RUN apk update && apk upgrade
RUN apk add --update build-base tzdata postgresql-dev

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY . $APP_HOME/
RUN bundle config set --local path 'vendor/cache' && \
    bundle config set --local deployment 'true' && \
    bundle install

FROM ruby:2.7.3-alpine as installer
RUN apk update && apk upgrade
RUN apk add tzdata postgresql-dev && rm -rf /var/cache/apk/*

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ENV USERNAME app
RUN addgroup -g 1000 -S $USERNAME && adduser -S $USERNAME -G $USERNAME -u 1000

COPY --from=builder /app $APP_HOME
RUN chown -R app:app /usr/local/bundle
RUN chown -R app:app /app
RUN bundle config set --local path 'vendor/cache'

USER $USERNAME
CMD ["/bin/sh", "start.sh"]
