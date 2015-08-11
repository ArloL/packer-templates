#!/usr/bin/env bash

set -x

uname -a
rpm -qa kernel\*
zypper --non-interactive remove virtualbox-guest-tools virtualbox-guest-kmp-default
mkdir -p /mnt/vboxguestadditions
mount -o loop /root/VBoxGuestAdditions.iso /mnt/vboxguestadditions
yes | sh /mnt/vboxguestadditions/VBoxLinuxAdditions.run
umount /mnt/vboxguestadditions
rm -rf /mnt/vboxguestadditions
rm /root/VBoxGuestAdditions.iso
