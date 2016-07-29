FROM node:6.3

WORKDIR /root/app

COPY ["./redux-todo/package.json", "/root/app"]
RUN npm install --loglevel warn

EXPOSE 4000
CMD ["/bin/bash"]
