FROM ruby:2.3-slim

# caching dependencies
COPY ["./sinatra/Gemfile", "./sinatra/Gemfile.lock", "/tmp/build/"]
RUN cd /tmp/build && \
  bundle install && \
  rm -rf /tmp/build

WORKDIR /root/app

EXPOSE 9000
CMD ["ruby", "./src/api.rb"]
