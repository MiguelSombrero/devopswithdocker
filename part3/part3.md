# Exercises for part 3

## 3.1

Frontend image size was before refactoring about 525MB and backend image size about 428. After refactoring sizes are about 422MB and 326MB respectively.

[Dockerfile-frontend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_1/frontend.Dockerfile)

[Dockerfile-backend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_1/backend.Dockerfile)

## 3.2

[Dockerfile](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_2/Dockerfile)

Commands

    docker build -t yle-dl .
    docker run -v $(pwd)/downloads:/app yle-dl http://areena.yle.fi/1-50276570


## 3.3

[Dockerfile-frontend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_3/frontend.Dockerfile)

[Dockerfile-backend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_3/backend.Dockerfile)

## 3.4

Frontend image size was reduced with node:alpine image about 236MB and backend image 139MB (was 422MB and 326MB respectively).

[Dockerfile-frontend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_4/frontend.Dockerfile)

[Dockerfile-backend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_4/backend.Dockerfile)


## 3.5

[Dockerfile](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_5/Dockerfile)

Commands

    docker build -t nginx-front
    docker run -p 80:80 nginx-front

## 3.6

Frontend image size was before modifications 545MB and after that 26.4MB.

[Dockerfile-before](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_6/before.Dockerfile)

[Dockerfile-after](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_6/after.Dockerfile)

[nginx.conf](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_6/nginx.conf)

Commands

Before:

    docker build -t front-before -f before.Dockerfile .
    docker run -p 3000:3000 front-before

After:

    docker build -t front-after -f after.Dockerfile .
    docker run -p 80:8080 front-after

## 3.7b

### When to use Docker and what are its benefits

Docker can be used to easily deliver software in virtualized environments called 'containers'. These containers are isolated environments, but can communicate with other containers and a host machine.

Benefits of 'containerize' applications is that you can deploy identical software environments to multiple users, without having to set up and configure environment variables etc. to every machine you deploy. You configure these variables and dependencies only once (in Docker image) and deploy this image to its users, which run it as a container. This makes deploying software easier, faster and portable. Different parts of your system will also change over time, which may lead your software to not working. Docker solves this problem too, because all software dependencies are defined in the predefined image.

Consider an example: you need to deploy your software A for multiple customers, with multiple operating systems. Without Docker or other virtualization solution, you would have to install and configure all the dependencies of software A for every customer - including the operating system software A runs with. It's easy to see this is not very scalable solution with lots of customers. With Docker you can isolate all the dependencies of software A to a container and run the container in customer machines. All you need to set up on customers is Docker running that container.

![docker](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_7/docker.jpg)


## 3.8

(skipped)