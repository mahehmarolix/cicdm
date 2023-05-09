FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=7008
ENV STATIC_DIR="./client"

EXPOSE 7008

CMD ["node", "index.js"]
