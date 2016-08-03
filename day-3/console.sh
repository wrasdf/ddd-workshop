#!/usr/bin/env bash

set -e

PROJECT_NAME="sinatra-server"
docker build -t $PROJECT_NAME .
docker run --name "$PROJECT_NAME" -d -p 9000:9000 -v $(pwd)/sinatra:/root/app $PROJECT_NAME
