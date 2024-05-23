## Source image
FROM registry.fedoraproject.org/fedora-toolbox:40

## Files
COPY scripts /tmp/scripts

## Run Scripts
RUN /tmp/scripts/faster-dnf.sh && \
    /tmp/scripts/rpm.sh && \
    /tmp/scripts/vim-default-editor.sh
