FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=7000
ENV STATIC_DIR="./client"

EXPOSE 7000

CMD ["node", "index.js"]
