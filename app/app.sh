#!/bin/bash

if [ -n "${GATEWAY}" ]; then
  echo "Setting default route via ${GATEWAY}"
  ip route del default
  ip route add default via ${GATEWAY}
fi

exec rtorrent -n -o import=/etc/rtorrent.rc
