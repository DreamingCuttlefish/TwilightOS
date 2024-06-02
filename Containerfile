ARG SOURCE_IMAGE="bazzite-asus"
ARG SOURCE_SUFFIX=""
ARG SOURCE_TAG="latest"
FROM ghcr.io/ublue-os/${SOURCE_IMAGE}${SOURCE_SUFFIX}:${SOURCE_TAG}

COPY scripts /scripts

RUN chmod +x /scripts/* 
RUN	/scripts/preparation.sh
RUN	/scripts/install_packages.sh 
RUN	/scripts/cleanup.sh 
RUN	ostree container commit

# Leave Alone:

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
## NOTES:
# - /var/lib/alternatives is required to prevent failure with some RPM installs
# - All RUN commands must end with ostree container commit
#   see: https://coreos.github.io/rpm-ostree/container/#using-ostree-container-commit
