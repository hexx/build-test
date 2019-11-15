# hadolint ignore=DL3007
FROM ruby:alpine
COPY Gemfile .
COPY app.rb .
RUN bundle install
CMD ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0", "-p", "80"]
