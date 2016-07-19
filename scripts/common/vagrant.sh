#!/usr/bin/env bash

set -e
set -x

mkdir --parents --mode=700 /home/vagrant/.ssh
mv /tmp/vagrant.pub /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
