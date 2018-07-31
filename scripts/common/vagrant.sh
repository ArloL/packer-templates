#!/usr/bin/env bash

set -e
set -x

mkdir --parents --mode=0700 /home/vagrant/.ssh
mv /tmp/vagrant.pub /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

mkdir --parents --mode=0744 /vagrant
chown -R vagrant /vagrant

if [ -d /etc/sudoers.d ]
then
  echo "vagrant ALL=(ALL) NOPASSWD: ALL" >| /etc/sudoers.d/vagrant
  chmod 0440 /etc/sudoers.d/vagrant
else
  echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
fi

exit 0
