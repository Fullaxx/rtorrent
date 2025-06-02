# ------------------------------------------------------------------------------
# Pull base image
FROM debian:bookworm
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
COPY bookworm/rtorrent.rc /etc/rtorrent.rc

# ------------------------------------------------------------------------------
# Identify Volumes
VOLUME /rtorrent/autoload
VOLUME /rtorrent/torrents
VOLUME /rtorrent/session

# ------------------------------------------------------------------------------
# Define default command
CMD ["rtorrent", "-n", "-o", "import=/etc/rtorrent.rc"]
