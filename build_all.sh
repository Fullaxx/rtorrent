#!/bin/bash

docker pull ubuntu:focal
docker build -f focal/Dockerfile -t "ghcr.io/fullaxx/rtorrent:focal" .

docker pull ubuntu:jammy
docker build -f jammy/Dockerfile -t "ghcr.io/fullaxx/rtorrent:jammy" .

docker pull ubuntu:noble
docker build -f noble/Dockerfile -t "ghcr.io/fullaxx/rtorrent:noble" .

docker pull ubuntu:resolute
docker build -f resolute/Dockerfile -t "ghcr.io/fullaxx/rtorrent:resolute" .

docker pull debian:bullseye
docker build -f bullseye/Dockerfile -t "ghcr.io/fullaxx/rtorrent:bullseye" .

docker pull debian:bookworm
docker build -f bookworm/Dockerfile -t "ghcr.io/fullaxx/rtorrent:bookworm" .

docker pull debian:trixie
docker build -f trixie/Dockerfile -t "ghcr.io/fullaxx/rtorrent:trixie" .

docker pull alpine:latest
docker build -f alpine/Dockerfile -t "ghcr.io/fullaxx/rtorrent:alpine" .

docker tag ghcr.io/fullaxx/rtorrent:alpine ghcr.io/fullaxx/rtorrent:latest
