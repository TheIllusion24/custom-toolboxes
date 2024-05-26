## Source image
FROM ghcr.io/ublue-os/fedora-toolbox:latest

## Files
COPY scripts /tmp/scripts

## Run Scripts
RUN /tmp/scripts/faster-dnf.sh && \
    /tmp/scripts/rpm.sh && \
    /tmp/scripts/vim-default-editor.sh
