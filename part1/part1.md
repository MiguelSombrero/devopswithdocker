# Exercises for part 1

## 1.1

$ docker ps -a

CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
-------------|-------|---------|---------|--------|-------|-------|
5cef58805633 | mongo | "docker-entrypoint.s…" | 43 seconds ago | Exited (0) 2 seconds ago | | gallant_khayyam |
4377fd4b65a8 | redis | "docker-entrypoint.s…" | 2 minutes ago | Exited (0) 2 seconds ago | | keen_sinoussi |
c93db3eefffd | nginx | "nginx -g 'daemon of…" | 2 minutes ago | Up 2 minutes | 80/tcp | stupefied_jang |


## 1.2

$ docker ps -a

CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
-------------|-------|---------|---------|--------|-------|-------|

$ docker images

REPOSITORY | TAG | IMAGE ID | CREATED | SIZE |
-------------|-------|---------|---------|--------|


## 1.3

password: basics
secret message: This is the secret message

## 1.4

Commands

    docker run -d -it devopsdockeruh/exec_bash_exercise
    docker exec f8 tail -f ./logs.txt
    secret message: Docker is easy

## 1.5

Commands

    docker run -d --rm -it --name part1-5 ubuntu:16.04 sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
    docker ps
    docker exec b8 apt-get update
    docker exec b8 apt-get -y install curl
    docker attach part1-5

## 1.6

[Dockerfile](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part1/part1_6/Dockerfile)

Commands

    docker build -t docker-clock .
    docker run docker-clock

## 1.7

[Dockerfile](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part1/part1_7/Dockerfile)

[Script-file](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part1/part1_7/script.sh)

Commands

    docker build -t curler .
    docker run -it curler

## 1.8

Commands

    touch logs.txt
    docker run -v $(pwd)/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise

## 1.9

Commands

    docker run -d -p 80:80 devopsdockeruh/ports_exercise

## 1.10

[Dockerfile](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part1/part1_10/Dockerfile)