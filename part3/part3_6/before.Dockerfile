FROM ubuntu:16.04
WORKDIR /mydir
EXPOSE 3001
RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN git clone https://github.com/MiguelSombrero/bottlestash-app-frontend.git /mydir
RUN npm install
CMD npm start