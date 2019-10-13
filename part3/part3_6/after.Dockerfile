FROM node:alpine as build-stage

WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/MiguelSombrero/bottlestash-app-frontend.git /app && \
    npm install && \
    npm run build

FROM nginx:alpine

RUN adduser -D app && \
    chown -R app:app /var/cache/nginx && \
    chown -R app:app /var/run/

USER app

COPY --from=build-stage /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]