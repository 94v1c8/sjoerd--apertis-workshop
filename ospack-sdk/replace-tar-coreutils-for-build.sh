#!/bin/bash

echo "I: replacing GPLv2 tar/coreutils with latest versions used for building software"
cp /bin/rm /bin/tar /usr/local/bin
apt-get update
apt-get -y install coreutils tar
rm /usr/local/bin/rm /usr/local/bin/tar

