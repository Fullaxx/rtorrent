# ------------------------------------------------------------------------------
# Pull base image
FROM alpine:latest
LABEL author="Brett Kuskie <fullaxx@gmail.com>"

# ------------------------------------------------------------------------------
# Install rtorrent and clean up
RUN apk update && \
    apk add --no-cache bash rtorrent && \
    rm -rf /var/cache/apk/*

# ------------------------------------------------------------------------------
# Configure rtorrent
COPY alpine/rtorrent.rc /etc/rtorrent.rc

# ------------------------------------------------------------------------------
# Identify Volumes
VOLUME /rtorrent/autoload
VOLUME /rtorrent/torrents
VOLUME /rtorrent/session

# ------------------------------------------------------------------------------
# Define default command
CMD ["rtorrent", "-n", "-o", "import=/etc/rtorrent.rc"]
