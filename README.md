# opendaylight-docker

> Yet another Opendaylight Docker Container, mostly because Opendaylight hasn't really been keeping up their docker container.

## Current ODL Build
* Oxygen

## Build Options

### from Github
If you want to build the container and or optionally make changes to the Dockerfile, you can do so directly from github.
```
git clone https://github.com/netdevops/opendaylight-docker.git
cd opendaylight-docker
docker build -t opendaylight:latest .
```

### from Docker Hub
If you just want to run the container as is, getting it directly from docker hub is the best bet.
```
docker pull networkoverlay/opendaylight
```

## Run Options

### from Github
If you built the image from the `Dockerfile`:
```
docker run -itd -p 8181:8181 -p 8101:8101 --name odl opendaylight:latest
```

### from Docker Hub
If you pulled the image from docker hub:
```
docker run -itd -p 8181:8181 -p 8101:8101 --name odl networkoverlay/opendaylight:latest
```

