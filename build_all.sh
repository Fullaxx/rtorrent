#!/bin/bash

docker pull ubuntu:focal
docker build -f focal/Dockerfile -t "fullaxx/rtorrent:focal" .

docker pull ubuntu:jammy
docker build -f jammy/Dockerfile -t "fullaxx/rtorrent:jammy" .

docker pull ubuntu:noble
docker build -f noble/Dockerfile -t "fullaxx/rtorrent:noble" .

docker pull debian:bullseye
docker build -f bullseye/Dockerfile -t "fullaxx/rtorrent:bullseye" .

docker pull debian:bookworm
docker build -f bookworm/Dockerfile -t "fullaxx/rtorrent:bookworm" .

docker pull alpine:latest
docker build -f alpine/Dockerfile -t "fullaxx/rtorrent:alpine" .
docker tag fullaxx/rtorrent:alpine fullaxx/rtorrent:latest
