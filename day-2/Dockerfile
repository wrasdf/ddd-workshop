FROM node:6.3

RUN apt-get update && apt-get install -y --no-install-recommends netcat && \
    rm -rf /tmp/* /var/lib/apt/lists/*

WORKDIR /root/app

COPY ["./redux-todo/package.json", "/root/app"]
RUN npm install --loglevel warn

COPY ["./helpers", "/root/app/helpers"]
EXPOSE 4000

CMD ["/bin/bash"]
