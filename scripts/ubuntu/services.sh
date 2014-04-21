#!/bin/bash -eux

apt-get install rcconf -y
rcconf --off puppet
rcconf --off chef-client
rcconf --off vboxadd-x11
