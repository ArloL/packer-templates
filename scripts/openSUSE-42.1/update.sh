#!/usr/bin/env bash

set -e
set -x

zypper --non-interactive refresh
zypper --non-interactive addlock 'kernel*'
zypper --non-interactive update
