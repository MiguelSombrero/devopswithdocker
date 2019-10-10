FROM node:alpine

WORKDIR /app
EXPOSE 3001

RUN apk add --no-cache git && \
    git clone https://github.com/MiguelSombrero/bottlestash-app-frontend.git /app && \
    npm install && \
    apk del git && \
    adduser -D app

USER app

CMD npm start