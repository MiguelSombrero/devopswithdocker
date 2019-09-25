FROM ubuntu:16.04
WORKDIR /mydir
EXPOSE 3000
RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
CMD ["/bin/bash"]