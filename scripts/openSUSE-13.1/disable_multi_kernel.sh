#!/usr/bin/env bash

set -e
set -x

# Zypper usually updates the kernel. To complete a kernel update you
# have to reboot the system. Sadly packer does not notice the system
# going down. The ssh connection just freezes but is not disconnected.
# Therefore I disable multiversion for kernels.

sed -i 's/^multiversion/# multiversion/' /etc/zypp/zypp.conf

# The following combinations were tried for rebooting:
# /sbin/shutdown -r +1
# pkill --signal 9 sshd
# sleep 120
#
# /sbin/reboot
# sleep 60
#
# systemctl --force reboot
# sleep 60
#
# /sbin/reboot
# systemctl stop network
# sleep 60
#
# /sbin/shutdown -r +1
# systemctl stop network
# sleep 120
#
# /sbin/shutdown -r +1
# /etc/init.d/network stop eth0
# sleep 120
