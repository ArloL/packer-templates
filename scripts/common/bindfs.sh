#!/usr/bin/env bash

set -e
set -x

zypper --non-interactive --gpg-auto-import-keys in \
  --auto-agree-with-licenses \
  bindfs
