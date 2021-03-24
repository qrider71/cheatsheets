# Docker Cheat Sheet

## Images

__Create an image from a local folder__
```
> docker build -t qrider/qbase-springboot-vue .
```

__Create an image from a remote repository (using the "main" branch)__
```
> docker build https://github.com/qrider71/qbase-springboot-vue.git#main
```

### Options

|Option      | Description         | Example |
|----------- | ------------------- | -------------------------------------|
|-t          |add a tag            | ```-t qrider/qbase-springboot-vue``` |
|-f          |specify docker file  | ```-f MyDockerfile```                |
|--build-arg | pass build variable | ```--build-arg XYZ=MyValue```        |

__List all images__
```
> docker image ls -a
```

__Delete image__
```
> docker image rm qrider/qbase-springboot-vue
> docker image rm b50d42fe3c3e
```

__Delete unused images__
```
> docker image prune
```

## Containers

__Start container__
```
> docker start qrider/qbase-springboot-vue
> docker start b50d42fe3c3e
```

__Run command in container__
```
> docker run -it b50d42fe3c3e /bin/bash
```

### Options

|Option      | Description            | Example |
|----------- | ---------------------- | -------------------------------|
|-p          |map port HOST:CONTAINER for network address| ```-p 192.168.1.100:8080:80``` |
|-p          |map port HOST:CONTAINER | ```-p 8080:80```               |
|-it         |interactive mode        | |
|-d          |detached mode           | |


## Misc





