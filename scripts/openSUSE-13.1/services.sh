#!/usr/bin/env bash

set -e
set -x

systemctl enable sshd
systemctl enable network
