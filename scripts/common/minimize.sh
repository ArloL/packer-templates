#!/usr/bin/env bash

# disabled since dd will fail once the device is full
# set -e
set -x

rm -rf /var/cache/* /usr/share/doc/*

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
sync
