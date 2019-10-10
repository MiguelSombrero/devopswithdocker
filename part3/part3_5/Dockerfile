FROM node:alpine as build-stage

ENV API_URL=http://localhost:8000
WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git /app && \
    npm install && \
    apk del git && \
    npm run build

FROM nginx:alpine

EXPOSE 80

COPY --from=build-stage /app/dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]