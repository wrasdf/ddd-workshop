#!/usr/bin/env bash

set -e

PROJECT_NAME="day-2"
docker build -t $PROJECT_NAME .
docker run -d --link sinatra-server:sinatra -p 4000:4000 -v $(pwd)/redux-todo:/root/app -v /root/app/node_modules $PROJECT_NAME npm start
