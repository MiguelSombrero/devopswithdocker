FROM ubuntu:16.04

WORKDIR /mydir
EXPOSE 5000
RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN git clone https://github.com/docker-hy/frontend-example-docker.git /mydir
RUN npm install
ENV API_URL=http://localhost:8000
CMD npm start