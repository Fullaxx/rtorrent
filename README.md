# rtorrent
rtorrent running in docker

## Base Docker Image
[Alpine](https://hub.docker.com/_/alpine) (x64) \
[Debian](https://hub.docker.com/_/debian) (x64) Trixie/Bookworm/Bullseye \
[Ubuntu](https://hub.docker.com/_/ubuntu) (x64) Resolute/Noble/Jammy/Focal

## Software
[rtorrent](https://rakshasa.github.io/rtorrent/) - An ncurses-based bittorrent application

## Get the image from GitHub Container Registry or build it locally
```
docker pull ghcr.io/fullaxx/rtorrent:alpine
docker build -f alpine/Dockerfile   -t="ghcr.io/fullaxx/rtorrent:alpine" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:trixie
docker build -f trixie/Dockerfile   -t="ghcr.io/fullaxx/rtorrent:trixie" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:bookworm
docker build -f bookworm/Dockerfile -t="ghcr.io/fullaxx/rtorrent:bookworm" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:bullseye
docker build -f bullseye/Dockerfile -t="ghcr.io/fullaxx/rtorrent:bullseye" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:resolute
docker build -f resolute/Dockerfile -t="ghcr.io/fullaxx/rtorrent:resolute" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:noble
docker build -f noble/Dockerfile    -t="ghcr.io/fullaxx/rtorrent:noble" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:jammy
docker build -f jammy/Dockerfile    -t="ghcr.io/fullaxx/rtorrent:jammy" github.com/Fullaxx/rtorrent

docker pull ghcr.io/fullaxx/rtorrent:focal
docker build -f focal/Dockerfile    -t="ghcr.io/fullaxx/rtorrent:focal" github.com/Fullaxx/rtorrent
```

## Run the image
Run the image using the default port \
Optional: use screen to detach and re-attach \
The `latest` tag tracks the alpine image
```
docker run -it -p 49164:49164 ghcr.io/fullaxx/rtorrent:latest
screen -S RTORRENT docker run -it --rm ghcr.io/fullaxx/rtorrent:latest
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
