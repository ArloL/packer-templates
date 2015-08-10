#!/usr/bin/env bash

set -x

/sbin/reboot
systemctl stop network
sleep 60
