FROM ruby:2.3.8

ENV LANG ja_JP.UTF-8
ENV TZ 'Asia/Tokyo'

RUN apt update -qq && \
    apt install -y \
    build-essential vim less fish

WORKDIR /app

COPY Gemfile* ./

RUN bundle

EXPOSE 3001
