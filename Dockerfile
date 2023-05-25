FROM ruby:3.1.3

# Install dependencies
RUN apt-get update -qq
RUN apt-get install -yqq --no-install-recommends nodejs

# Copy the Gemfile and Gemfile.lock into the image and install gems
COPY . /usr/src/app

# Set working directory
WORKDIR /usr/src/app
RUN bundle install

# Runnung a command
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
