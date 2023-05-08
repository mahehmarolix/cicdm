FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=7001
ENV STATIC_DIR="./client"

EXPOSE 7001

CMD ["node", "index.js"]
