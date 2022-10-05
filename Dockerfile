# ------------------------------------------------------------------------------
# Pull base image
FROM ubuntu:focal
MAINTAINER Brett Kuskie <fullaxx@gmail.com>

# ------------------------------------------------------------------------------
# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# ------------------------------------------------------------------------------
# Install rtorrent and clean up
RUN apt-get update && apt-get install -y --no-install-recommends rtorrent && \
apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

# ------------------------------------------------------------------------------
# Prepare rtorrent directories
RUN mkdir -p /rtorrent/autoload /rtorrent/torrents \
/rtorrent/config /rtorrent/session /rtorrent/complete

# ------------------------------------------------------------------------------
# Configure rtorrent
COPY rtorrent.rc /rtorrent/config/rtorrent.rc

# ------------------------------------------------------------------------------
# Identify Volumes
VOLUME /rtorrent/autoload
VOLUME /rtorrent/torrents
VOLUME /rtorrent/config
VOLUME /rtorrent/session

# ------------------------------------------------------------------------------
# Define default command
CMD ["rtorrent", "-n", "-o", "import=/rtorrent/config/rtorrent.rc"]
