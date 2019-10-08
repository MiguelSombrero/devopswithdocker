# Exercises for part 3

## 3.1

Frontend image size was before refactoring about 404MB and backend image size about 307. After refactoring sizes are about 300MB and 204MB respectively.

[Dockerfile-frontend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/3/part3_1/frontend.Dockerfile)

[Dockerfile-backend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_1/backend.Dockerfile)

## 3.2

Commands

    docker build -t yle-dl .
    docker run -v $(pwd)/downloads:/app yle-dl http://areena.yle.fi/1-50276570


## 3.3

[Dockerfile-frontend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_3/frontend.Dockerfile)

[Dockerfile-backend](https://github.com/MiguelSombrero/devopswithdocker/blob/master/part3/part3_3/backend.Dockerfile)

## 3.4


