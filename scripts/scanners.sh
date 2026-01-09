#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update -y
grep -v '^#' ./scanners.packages | xargs dnf install -y
