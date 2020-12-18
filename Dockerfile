FROM ruby:2.6

RUN apt-get update && apt-get install -y libpq-dev

WORKDIR /usr/src/app

COPY Gemfile ./
RUN bundle install

COPY . .

CMD ["rails", "server"]