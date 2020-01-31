FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image
ENV RAILS_ROOT /my_app

RUN mkdir -p $RAILS_ROOT

# Set working directory
WORKDIR $RAILS_ROOT

# Adding gems
COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN bundle install --jobs 20 --retry 5 --without production

# Adding project files
COPY . .

RUN mkdir -p tmp/sockets