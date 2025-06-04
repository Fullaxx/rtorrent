#!/bin/bash

# --sysctl net.ipv6.conf.all.disable_ipv6=0

RMARG="--rm"
DNSARG="--dns 8.8.8.8 --dns 8.8.4.4 --dns 1.1.1.1"
NETWORKARG="--cap-add=NET_ADMIN --device /dev/net/tun"

docker run -it \
${RMARG} \
--name openvpn \
${NETWORKARG} \
${DNSARG} \
-e RANDOMIZE_PROFILE_LIST=True \
-e CONFIGFILE=single_config.ovpn \
-v /srv/docker/openvpn/profiles:/profiles \
fullaxx/openvpn:alpine
