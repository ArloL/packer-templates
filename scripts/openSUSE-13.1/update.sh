#!/usr/bin/env bash

set -e
set -x

zypper --non-interactive removerepo 1
zypper --non-interactive addrepo --name "openSUSE-13.1 OSS" http://linuxmirror.rz.evosec.de/opensuse/distribution/13.1/repo/oss/ repo-13.1-oss
zypper --non-interactive addrepo --name "openSUSE-13.1 Non-OSS" http://linuxmirror.rz.evosec.de/opensuse/distribution/13.1/repo/non-oss/ repo-13.1-non-oss
zypper --non-interactive addrepo --refresh --name "openSUSE-13.1 Updates OSS" http://linuxmirror.rz.evosec.de/opensuse/update/13.1/ repo-13.1-update-oss
zypper --non-interactive addrepo --refresh --name "openSUSE-13.1 Updates Non-OSS" http://linuxmirror.rz.evosec.de/opensuse/update/13.1-non-oss/ repo-13.1-update-non-oss
zypper --non-interactive refresh
zypper --non-interactive addlock 'kernel*'
zypper --non-interactive update
