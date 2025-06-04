#!/bin/bash

rm -f `pwd`/session/rtorrent.lock

RMARG="--rm"
NETWORKARG="--network container:openvpn"

screen -S RTORRENT \
docker run -it \
${RMARG} \
${NETWORKARG} \
--name rtorrent \
-v `pwd`/autoload:/rtorrent/autoload \
-v `pwd`/torrents:/rtorrent/torrents \
-v `pwd`/session:/rtorrent/session \
fullaxx/rtorrent:alpine
