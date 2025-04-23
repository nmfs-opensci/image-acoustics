FROM ghcr.io/nmfs-opensci/container-images/py-rocket-geospatial-2:2025.04.17
# The above results in a fully featured geospatial Python and R image
# If you want a small image (2Gb) with no extra Python packages but still with R use this
# FROM ghcr.io/nmfs-opensci/py-rocket-base:2025.04.17

LABEL org.opencontainers.image.maintainers="eli.holmes@noaa.gov"
LABEL org.opencontainers.image.authors="Wu-Jung Lee + echopype team"
LABEL org.opencontainers.image.source="https://github.com/nmfs-opensci/image-acoustics"
LABEL org.opencontainers.image.description="echopype tooling for ocean sonar data processing in Python. Author: Wu-Jung Lee + echopype team."
LABEL org.opencontainers.image.licenses=Apache2.0
LABEL org.opencontainers.image.version=2025.04.23

USER root

COPY . /tmp2/
RUN /pyrocket_scripts/install-conda-packages.sh /tmp2/environment.yml || echo "install-conda-packages.sh failed" || true
RUN rm -rf /tmp2

USER ${NB_USER}
WORKDIR ${HOME}
