FROM ubuntu:16.04

ENV FRONT_URL=http://localhost:5000
EXPOSE 8000
WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker.git /app && \
    npm install && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /var/lib/apt/lists/*

COPY logs.txt .

CMD npm start