#!/usr/bin/env bash

set -x

mkdir /home/vagrant/.ssh
wget --no-check-certificate \
    $URL \
    -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
