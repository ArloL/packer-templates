#!/usr/bin/env bash

set -e
set -x

zypper --non-interactive remove virtualbox-guest-kmp-default virtualbox-guest-tools

uname -a
rpm -qa kernel\*
mkdir -p /mnt/vboxguestadditions
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt/vboxguestadditions
yes | sh /mnt/vboxguestadditions/VBoxLinuxAdditions.run --nox11
umount /mnt/vboxguestadditions
rm -rf /mnt/vboxguestadditions
rm /home/vagrant/VBoxGuestAdditions.iso
