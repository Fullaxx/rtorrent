#!/bin/bash

if [ -z "$1" ]; then
  >&2 echo "$0: <GATEWAY>"
  exit 1
fi

echo "Setting default route via $1"
ip route del default
ip route add default via $1
