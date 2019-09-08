# From Ruby 2.6.2
FROM ruby:2.6.2
# Work Directory
WORKDIR /opt/railschat
COPY . .
RUN gem install rails -v 5.2.3
RUN bundle
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y \
 build-essential \
 nodejs
RUN rails db:migrate

EXPOSE 3000
ENTRYPOINT ["rails", "s" , "-b", "0.0.0.0"]

