FROM electrotumbao/ruby-yarn:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
WORKDIR /rails_app
COPY Gemfile /rails_app/Gemfile
COPY Gemfile.lock /rails_app/Gemfile.lock
RUN bundle install
COPY . /rails_app
COPY config/database.yml /rails_app/config/database.yml
RUN yarn

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
