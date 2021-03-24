# Docker Cheat Sheet (https://github.com/qrider71/cheatsheets)

## Images

__Create an image from a local folder__
```
> docker build -t qbiker/qbase-springboot-vue .
```

__Create an image from a remote repository (using the "main" branch)__
```
> docker build https://github.com/qrider71/qbase-springboot-vue.git#main
```

### Options

|Option      | Description         | Example |
|----------- | ------------------- | ---------------------------------|
|-t          |add a tag            | `-t qbiker/qbase-springboot-vue` |
|-f          |specify docker file  | `-f MyDockerfile`                |
|--build-arg | pass build variable | `--build-arg XYZ=MyValue`        |

### More useful image commands
description                 | command
----------------------------|------------------------------------------------
List all images             | `docker images -a`
Pull an image from registry | `docker pull qbiker/qbase-springboot-vue`
Show imager details         | `docker inspect qbiker/qbase-springboot-vue`
Delete image                | `docker rmi qbiker/qbase-springboot-vue`
Delete all unused images    | `docker image prune`


## Containers

__Run container:__ Creates a new container and starts it
```
> docker run --rm --name my-container -p 8080:8098 qbiker/qbase-springboot-vue
> docker run -it --rm -v "`pwd`/myfolder:/data" --user `id -u`:`id -g` alpine:3.7 /bin/sh
```

### Options

|Option      | Description                               | Example                                 |
|----------- | ----------------------------------------- | ----------------------------------------|
|-p          |map port HOST:CONTAINER for network address| `-p 127.0.0.1:8080:8089`  `-p 8080:8089`|
|-v          |map file system HOST:CONTAINER             | `-v /my/local/folder:/data`             |
|--name      |assign name to container                   | `--name my-container`                   |
|--user      |run container under specied user and group | `--user user:group`                     |
|-it         |interactive mode                           |                                         |
|--rm        |remove container after termination         |                                         |
|-d          |detached mode                              |                                         |

### More useful container commands
description                                | command
-------------------------------------------|---------------------------------------
Starts an existing container               | `docker start my-container`
Execute command in running container       | `docker exec -it my-container /bin/sh`
Stop container                             | `docker stop my-container`
Remove container                           | `docker rm my-container`
Remove all unused containers               | `docker container prune`
Get logs from running container and follow | `docker logs -f my-container`
Show all container processes               | `docker ps -a`
Show statistics                            | `docker stats`
