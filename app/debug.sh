#!/bin/bash

ip addr show
ip route show

echo -n "www.icanhazip.com: "
curl https://www.icanhazip.com

echo -n "ifconfig.me: "
curl https://ifconfig.me
echo
