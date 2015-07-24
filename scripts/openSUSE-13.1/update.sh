#!/usr/bin/env bash

set -x

zypper rr 1
zypper ar -n "openSUSE-13.1 OSS" http://linuxmirror.rz.evosec.de/opensuse/distribution/13.1/repo/oss/ repo-13.1-oss
zypper ar -n "openSUSE-13.1 Non-OSS" http://linuxmirror.rz.evosec.de/opensuse/distribution/13.1/repo/non-oss/ repo-13.1-non-oss
zypper ar -f -n "openSUSE-13.1 Updates OSS" http://linuxmirror.rz.evosec.de/opensuse/update/13.1/ repo-13.1-update-oss
zypper ar -f -n "openSUSE-13.1 Updates Non-OSS" http://linuxmirror.rz.evosec.de/opensuse/update/13.1-non-oss/ repo-13.1-update-non-oss
zypper refresh
zypper update -y