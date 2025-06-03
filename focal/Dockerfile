# ------------------------------------------------------------------------------
# Pull base image
FROM ubuntu:focal
LABEL author="Brett Kuskie <fullaxx@gmail.com>"

# ------------------------------------------------------------------------------
# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# ------------------------------------------------------------------------------
# Install rtorrent and clean up
RUN apt-get update && \
    apt-get install -y --no-install-recommends iproute2 rtorrent && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/* && \
    mkdir -p /rtorrent/autoload /rtorrent/torrents /rtorrent/session

# ------------------------------------------------------------------------------
# Configure rtorrent
COPY focal/rtorrent.rc /etc/rtorrent.rc

# ------------------------------------------------------------------------------
# Add helper scripts
COPY set_gateway.sh /usr/bin/set_gateway.sh

# ------------------------------------------------------------------------------
# Identify Volumes
VOLUME /rtorrent/autoload
VOLUME /rtorrent/torrents
VOLUME /rtorrent/session

# ------------------------------------------------------------------------------
# Define default command
CMD ["rtorrent", "-n", "-o", "import=/etc/rtorrent.rc"]
