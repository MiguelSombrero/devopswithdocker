FROM node:alpine

ENV API_URL=http://localhost:8000
EXPOSE 5000
WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git /app && \
    npm install && \
    apk del git && \
    chown -R node /app && \
    chmod -R u+x /app

USER node

CMD npm start