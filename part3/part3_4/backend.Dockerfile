FROM node:alpine

ENV FRONT_URL=http://localhost:5000
EXPOSE 8000
WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/backend-example-docker.git /app && \
    npm install && \
    apk del git && \
    chown -R node /app && \
    chmod -R u+x /app

USER node

CMD npm start