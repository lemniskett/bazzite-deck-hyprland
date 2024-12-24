ARG SOURCE_IMAGE="bazzite"
ARG SOURCE_SUFFIX="-deck-gnome"
ARG SOURCE_TAG="testing"
FROM ghcr.io/ublue-os/${SOURCE_IMAGE}${SOURCE_SUFFIX}:${SOURCE_TAG}

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
