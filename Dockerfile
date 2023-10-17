# syntax=docker/dockerfile:1

FROM node:18-buster

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

USER node
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
