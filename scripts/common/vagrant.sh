#!/usr/bin/env bash

set -x

mkdir /home/vagrant/.ssh
wget $VAGRANT_KEY_URL \
    -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
