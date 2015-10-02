#!/usr/bin/env bash

set -e
set -x

zypper --non-interactive remove virtualbox-guest-kmp-default virtualbox-guest-tools

uname -a
rpm -qa kernel\*
mkdir -p /mnt/vboxguestadditions
mount -o loop /root/VBoxGuestAdditions.iso /mnt/vboxguestadditions
yes | sh /mnt/vboxguestadditions/VBoxLinuxAdditions.run
umount /mnt/vboxguestadditions
rm -rf /mnt/vboxguestadditions
rm /root/VBoxGuestAdditions.iso
