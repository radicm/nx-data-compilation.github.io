FROM gitlab.nine.ch:4567/ninech/ruby:2.5-bionic

LABEL maintainer="radicm.nx@gmail.ch"

COPY Gemfile ./

RUN bundle install

COPY . /app

WORKDIR /app

RUN bundle install
