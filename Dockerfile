# Use the official Ruby image
FROM ruby:2.7.7

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client

# Define the folder that the application will be stored in
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock ./

# Install the gems
RUN bundle install --without development test

# Copy the application into the image
COPY . .

# Assets precompile
RUN bundle exec rake assets:precompile

# Expose the port that the app runs in
EXPOSE 3000

# Run migrations and start the app
CMD ["bash", "-c", "bundle exec rails db:migrate && bundle exec rails server -b 0.0.0.0 -p 3000"]
