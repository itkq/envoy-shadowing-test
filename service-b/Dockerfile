FROM envoyproxy/envoy:latest

RUN apt-get update && apt-get -q install -y \
    curl \
    ruby

RUN gem i bundler
RUN mkdir /app
WORKDIR /app
COPY Gemfile .
RUN bundle install
COPY app.rb .

ADD ./start_service.sh /usr/local/bin/start_service.sh
RUN chmod u+x /usr/local/bin/start_service.sh
ENTRYPOINT /usr/local/bin/start_service.sh
