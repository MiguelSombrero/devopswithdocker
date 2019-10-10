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

Frontend image size was before modifications 545MB and after that 256MB.

[Dockerfile-before](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_6/before.Dockerfile)

[Dockerfile-after](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_6/after.Dockerfile)

Commands

Before:

    docker build -t front-before -f before.Dockerfile .
    docker run -p 3000:3000 front-before

After:

    docker build -t front-after -f after.Dockerfile .
    docker run -p 3000:3000 front-after

## 3.7

