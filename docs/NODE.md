# Node-RTSP-RTMP-Server

## Install Docker

<https://www.blog.berrybase.de/blog/2022/02/23/docker-auf-dem-raspberry-pi-basics/>

Get Docker Install script

```sh
curl -fsSL https://get.docker.com -o get-docker.sh
```

Install Docker

```sh
sudo sh get-docker.sh
```

Append a non-root user on the Docker group

```sh
sudo usermod -aG docker pi
```

Reload group permissions

```sh
newgrp docker
```

## Install node-rtsp-rtmp-server

<https://github.com/iizukanao/node-rtsp-rtmp-server#docker-deploy-method>

Download code

```sh
git clone https://github.com/iizukanao/node-rtsp-rtmp-server.git
cd node-rtsp-rtmp-server
```

Build and run Docker Image

```sh
make build
```

Stop nginx (if running)

```sh
sudo service nginx stop
```

Start Docker

```sh
make console
```

## Start PiCam

Start picam with `rtspout` flag for node-server

```sh
cd ~/picam && ./picam --rtspout
```

*Note: This was working before, but now results in `no rtsp server found` error. Maybe further configuration with docker or local installation is needed to get it work again...*

## Links

- [github.com/iizukanao/node-rtsp-rtmp-server#docker-deploy-method](https://github.com/iizukanao/node-rtsp-rtmp-server#docker-deploy-method)