#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update -y
grep -v '^#' ./blabel.packages | xargs apt install -y
