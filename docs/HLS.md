# HLS with NGINX

<https://singleboardblog.com/install-nginx-on-raspberry-pi/>

## Install ngnix

```sh
sudo apt install nginx
```

Start the server

```sh
sudo /etc/init.d/nginx start
```

Test with Browser -> <http://raspi-ip/>

Add hls output to nginx config

```sh
sudo nano /etc/nginx/sites-available/default
```

Add following entry

```nginx
location /hls/ {
    root /run/shm;
}
```

Restart nginx

```sh
sudo service nginx restart
```

## Start PiCam

Start picam with hls as output

```sh
cd ~/picam && ./picam -o /run/shm/hls
```

Test with VLC -> Network -> <http://raspi-ip/hls/index.m3u8>

## Links

- [Install and Configure NGINX Server on Raspberry Pi](https://singleboardblog.com/install-nginx-on-raspberry-pi/)