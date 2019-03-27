# A small docker image running rtorrent

## Base Docker Image
[Ubuntu](https://hub.docker.com/_/ubuntu) 18.04 (x64)

## Software
[rtorrent](https://rakshasa.github.io/rtorrent/) - An ncurses-based bittorrent application

## Get the image from Docker Hub
```
docker pull fullaxx/rtorrent
```

## Run the image
Run the image using the default port
```
docker run -it -p 49164:49164 fullaxx/rtorrent
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
Configuration: You can place a custom rtorrent.rc in /srv/docker/rtorrent/config/
```
-v /srv/docker/rtorrent/config:/rtorrent/config
```
Session State: Use this to save your session for fast restore/resume
```
-v /srv/docker/rtorrent/session:/rtorrent/session
```

## Build it locally using the github repository
```
docker build -t="fullaxx/rtorrent" github.com/fullaxx/rtorrent
```
