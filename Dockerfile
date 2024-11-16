FROM node:alpine

WORKDIR /app

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN yarn

EXPOSE 3000

CMD ["node", "server.js"]
