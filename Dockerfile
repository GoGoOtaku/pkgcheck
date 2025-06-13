FROM python:3-slim
ARG PKGCHECK_VERSION

RUN apt-get update && apt-get install -y git zstd && \
    rm -rf /var/lib/apt/lists/ /var/cache/apt /var/cache/dpkg && \
    pip install pkgcheck==${PKGCHECK_VERSION} setuptools requests && \
    pip cache purge
