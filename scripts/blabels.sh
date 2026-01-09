#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update -y
grep -v '^#' ./blabels.packages | xargs apt install -y
