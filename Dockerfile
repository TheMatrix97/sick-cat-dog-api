# syntax=docker/dockerfile:1
# Current LTS Node
FROM node:18.18.2-alpine3.18 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

USER node
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
