#!/usr/bin/env bash
set -x

# Disable multiple kernel installs
# Zypper would otherwise update the kernel. This would in turn require
# a reboot of the system. Since it is apparently impossible to reboot
# an opensuse during a packer provisioning we simple disable it for
# kernels.
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
#
# The reboot works but the ssh connection is not terminated and thus
# packer just sits there and wait.
sed -i 's/^multiversion/# multiversion/' /etc/zypp/zypp.conf
