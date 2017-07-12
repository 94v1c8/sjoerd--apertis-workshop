FROM debian:stretch-slim

ARG DEBIAN_FRONTEND=noninteractive

ENV HOME=/scratch
ENV GOPATH=/usr/local/go
ENV PATH=$PATH:/usr/local/go/bin

# Always install procps in case the docker file gets used in jenkins
RUN apt update && apt-get install  --no-install-recommends -y procps

# Bits needed to run fakemachine
RUN apt-get update  && \
    apt-get install --no-install-recommends -y qemu-system-x86 \
                                               busybox \
                                               linux-image-amd64 \
                                               systemd \
                                               dbus

# Bits needed to build fakemachine
RUN apt-get update  && \
    apt-get install --no-install-recommends -y golang-go git ca-certificates

# build yaib
RUN go get github.com/sjoerdsimons/yaib && \
    go get all && \
    go install github.com/sjoerdsimons/yaib

# Bits to build the image
RUN apt-get update  && \
    apt-get install --no-install-recommends -y parted \
                                               e2fsprogs \
                                               dosfstools \
                                               qemu-user-static \
                                               binfmt-support \
                                               python3 \
                                               bmap-tools \
                                               rsync \
                                               openssh-client \
                                               libnss-wrapper
