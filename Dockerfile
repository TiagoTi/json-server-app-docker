FROM node:latest

RUN npm i -g json-server
EXPOSE 80
USER node
WORKDIR /home/node

ADD db.json /home/node/db.json
ADD routes.json /home/node/routes.json

ENTRYPOINT [ "json-server", "--no-cors", "--port" ,"80", "--host", "0.0.0.0", "--watch", "db.json", "--routes","routes.json"]

# json-server --watch db.json --port 3004