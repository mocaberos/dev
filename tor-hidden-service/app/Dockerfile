FROM ruby:3.1.1-slim-bullseye

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install --jobs=3 --retry=3

COPY . /app
CMD ["bundle", "exec", "pumactl", "start"]
