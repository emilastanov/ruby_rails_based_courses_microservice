# syntax=docker/dockerfile:1
FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV BUNDLER_VERSION=2.3.13
RUN gem install bundler:2.3.13

COPY Gemfile.lock .
COPY Gemfile .
RUN bundle install
COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
