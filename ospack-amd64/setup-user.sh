#!/bin/sh

adduser --gecos user \
  --disabled-password \
  --shell /bin/sh \
  user
adduser user sudo
echo "user:user" | chpasswd
