FROM node:18-alpine

WORKDIR /app

COPY server.js .
COPY index.html .
COPY package.json .
COPY images ./images

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]