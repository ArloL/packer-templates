#!/usr/bin/env bash

set -e
set -x

zypper --non-interactive refresh
zypper --non-interactive update
