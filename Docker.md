# Docker Cheat Sheet

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
|----------- | ------------------- | -------------------------------------|
|-t          |add a tag            | ```-t qbiker/qbase-springboot-vue``` |
|-f          |specify docker file  | ```-f MyDockerfile```                |
|--build-arg | pass build variable | ```--build-arg XYZ=MyValue```        |

__List all images__
```
> docker image ls -a
```

__Delete image__
```
> docker image rm qbiker/qbase-springboot-vue
> docker image rm b50d42fe3c3e
```

__Delete unused images__
```
> docker image prune
```

## Containers

__Run container:__ Creates a new container and starts it
```
> docker run --rm --name my-container -p 8080:8098 qbiker/qbase-springboot-vue
> docker run -it --rm -v "`pwd`/tmp:/data" --user `id -u`:`id -g` alpine:3.7 /bin/sh
```

__Start container:__ Starts an erxisting container (maybe after it has been stopped)
```
> docker start my-container
> docker start b50d42fe3c3e
```

### Options

|Option      | Description            | Example |
|----------- | ---------------------- | ---------------------------------------------------|
|-p          |map port HOST:CONTAINER for network address| ```-p 192.168.1.100:8080:80```  |
|-p          |map port HOST:CONTAINER | ```-p 8080:80```                                   |
|-v          |map file system HOST:CONTAINER             | ```-v /my/local/folder:/data``` |
|--user      |run container under specied user and group | ```--user user:group```         |
|--name      |assign name to container| ```-name my-container```                           |
|-it         |interactive mode        | |
|--rm        |remove container after termination         | |
|-d          |detached mode           | |

__Show all container processes:__
```
> docker ps -a
```

__Stop container:__
```
> docker stop my-container
```

__Remove unused container:__
```
> docker container prune
```
