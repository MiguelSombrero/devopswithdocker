FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget ffmpeg python3 python3-pip && \
    pip3 install -U yle-dl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
ENTRYPOINT ["yle-dl"]