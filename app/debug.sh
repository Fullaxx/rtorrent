#!/bin/bash

ip addr show
echo

ip route show
echo

echo -n "www.icanhazip.com: "
curl https://www.icanhazip.com
echo

echo -n "ifconfig.me: "
curl https://ifconfig.me
echo
