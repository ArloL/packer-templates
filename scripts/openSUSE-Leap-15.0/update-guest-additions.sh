#!/usr/bin/env bash

set -x

zypper --non-interactive --gpg-auto-import-keys install \
    --auto-agree-with-licenses \
    virtualbox-guest-tools \
    virtualbox-guest-x11 \
    virtualbox-guest-kmp-default

echo vboxsf >/etc/modules-load.d/vboxsf.conf
