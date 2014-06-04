#!/bin/sh -eux

cp /etc/apk/repositories /etc/apk/repositories.orig
echo "http://mirror.cabtec.net/alpine/v3.0/main" > /etc/apk/repositories

apk update
apk upgrade
