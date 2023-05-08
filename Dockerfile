FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=6000
ENV STATIC_DIR="./client"

EXPOSE 6000

CMD ["node", "server.js"]
