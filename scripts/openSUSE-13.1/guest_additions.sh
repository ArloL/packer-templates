#!/bin/sh
zypper install make gcc kernel-default-devel
mkdir -p /mnt/vboxguestadditions
mount -o loop VBoxGuestAdditions.iso /mnt/vboxguestadditions
yes | sh /mnt/vboxguestadditions/VBoxLinuxAdditions.run
umount /mnt/vboxguestadditions
rm -rf /mnt/vboxguestadditions
rm VBoxGuestAdditions.iso
