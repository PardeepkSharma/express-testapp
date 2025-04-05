FROM node:20-alpine

WORKDIR /testapp

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY server.js .
COPY public ./public

CMD ["node","/testapp/server.js"]
