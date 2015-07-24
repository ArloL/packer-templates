#!/usr/bin/env bash

set -x

zypper removerepo 1
zypper addrepo --name "openSUSE-13.1 OSS" http://linuxmirror.rz.evosec.de/opensuse/distribution/13.1/repo/oss/ repo-13.1-oss
zypper addrepo --name "openSUSE-13.1 Non-OSS" http://linuxmirror.rz.evosec.de/opensuse/distribution/13.1/repo/non-oss/ repo-13.1-non-oss
zypper addrepo --refresh --name "openSUSE-13.1 Updates OSS" http://linuxmirror.rz.evosec.de/opensuse/update/13.1/ repo-13.1-update-oss
zypper addrepo --refresh --name "openSUSE-13.1 Updates Non-OSS" http://linuxmirror.rz.evosec.de/opensuse/update/13.1-non-oss/ repo-13.1-update-non-oss
zypper refresh --non-interactive
zypper update --non-interactive
