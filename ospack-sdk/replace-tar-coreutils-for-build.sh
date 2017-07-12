#!/bin/bash

echo "I: replacing GPLv2 tar/coreutils with latest versions used for building software"
cp /bin/rm /bin/tar /usr/local/bin
sudo apt-get -y install coreutils tar
sudo rm /usr/local/bin/rm /usr/local/bin/tar

