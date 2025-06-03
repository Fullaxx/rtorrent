# rtorrent
rtorrent running in docker

## Base Docker Image
[Alpine](https://hub.docker.com/_/alpine) (x64) \
[Debian](https://hub.docker.com/_/debian) (x64) Bookworm/Bullseye \
[Ubuntu](https://hub.docker.com/_/ubuntu) (x64) Noble/Jammy/Focal

## Software
[rtorrent](https://rakshasa.github.io/rtorrent/) - An ncurses-based bittorrent application

## Get the image from Docker Hub or build it locally
```
docker pull fullaxx/rtorrent:alpine
docker build -f alpine/Dockerfile   -t="fullaxx/rtorrent:alpine" github.com/Fullaxx/rtorrent

docker pull fullaxx/rtorrent:bookworm
docker build -f bookworm/Dockerfile -t="fullaxx/rtorrent:bookworm" github.com/Fullaxx/rtorrent

docker pull fullaxx/rtorrent:bullseye
docker build -f bullseye/Dockerfile -t="fullaxx/rtorrent:bullseye" github.com/Fullaxx/rtorrent

docker pull fullaxx/rtorrent:noble
docker build -f noble/Dockerfile    -t="fullaxx/rtorrent:noble" github.com/Fullaxx/rtorrent

docker pull fullaxx/rtorrent:jammy
docker build -f jammy/Dockerfile    -t="fullaxx/rtorrent:jammy" github.com/Fullaxx/rtorrent

docker pull fullaxx/rtorrent:focal
docker build -f focal/Dockerfile    -t="fullaxx/rtorrent:focal" github.com/Fullaxx/rtorrent
```

## Run the image
Run the image using the default port \
Optional: use screen to detach and re-attach
```
docker run -it -p 49164:49164 fullaxx/rtorrent
screen -S RTORRENT docker run -it --rm fullaxx/rtorrent
```

## Required Volume Options
Input: Drop your torrents in /srv/docker/rtorrent/autoload/
```
-v /srv/docker/rtorrent/autoload:/rtorrent/autoload
```
Output: Your downloaded data will reside here
```
-v /srv/docker/rtorrent/torrents:/rtorrent/torrents
```

## Optional Volume Options
Configuration: You can overwrite the default config
```
-v /srv/docker/rtorrent/config/rtorrent.rc:/etc/rtorrent.rc
```
Session State: Use this to save your session for fast restore/resume
```
-v /srv/docker/rtorrent/session:/rtorrent/session
```

## Optional VPN Router
Using the GATEWAY variable, you can change the default route \
You will also need extra permissions for this
```
--cap-add=NET_ADMIN -e GATEWAY=172.18.0.2
```
