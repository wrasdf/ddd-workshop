FROM ruby:2.3.1

RUN mkdir -p /tmp/build
COPY ["./sinatra/Gemfile", "/tmp/build"]
RUN cd /tmp/build && bundle install && rm -rf /tmp/build

WORKDIR /root/app/

EXPOSE 9000
CMD ["ruby", "./src/api.rb"]


