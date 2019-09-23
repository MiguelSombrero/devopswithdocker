FROM ubuntu:16.04

WORKDIR /mydir
EXPOSE 8000
RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker.git /mydir
COPY logs.txt .
RUN npm install
ENV FRONT_URL=http://localhost:5000
CMD npm start