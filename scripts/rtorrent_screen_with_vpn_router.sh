#!/bin/bash

rm -f `pwd`/session/rtorrent.lock

RMARG="--rm"
GATEWAYARG="--cap-add=NET_ADMIN --network bt_vpn_net -e GATEWAY=172.18.0.2"

screen -S RTORRENT \
docker run -it \
${RMARG} \
--name rtorrent \
${GATEWAYARG} \
-v `pwd`/autoload:/rtorrent/autoload \
-v `pwd`/torrents:/rtorrent/torrents \
-v `pwd`/session:/rtorrent/session \
fullaxx/rtorrent:alpine
