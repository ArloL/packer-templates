#!/bin/sh

set -e
set -x

echo "blacklist i2c_piix4" > /etc/modprobe.d/100-blacklist-i2c_piix4.conf
