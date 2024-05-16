## Source image
FROM registry.fedoraproject.org/fedora-toolbox:40

## Files
COPY files/etc/profile.d /etc/profile.d
COPY scripts /tmp/scripts

## Tweaks
RUN /tmp/scripts/faster-dnf.sh && \
    /tmp/scripts/rpm.sh && \
    /tmp/scripts/vim-default-editor.sh
