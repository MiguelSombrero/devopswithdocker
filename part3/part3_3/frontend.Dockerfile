FROM ubuntu:16.04

ENV API_URL=http://localhost:8000
EXPOSE 5000
WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    git clone https://github.com/docker-hy/frontend-example-docker.git /app && \
    npm install && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app /app && \
    chmod -R u+x /app

USER app

CMD npm start