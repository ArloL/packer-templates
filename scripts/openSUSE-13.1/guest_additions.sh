#!/bin/sh
uname -a
rpm -qa kernel\*
zypper --non-interactive remove virtualbox-guest-tools virtualbox-guest-kmp-default
mkdir -p /mnt/vboxguestadditions
mount -o loop VBoxGuestAdditions.iso /mnt/vboxguestadditions
yes | sh /mnt/vboxguestadditions/VBoxLinuxAdditions.run
umount /mnt/vboxguestadditions
rm -rf /mnt/vboxguestadditions
rm VBoxGuestAdditions.iso
