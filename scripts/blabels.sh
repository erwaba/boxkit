#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update -y
#nothing to install
#grep -v '^#' ./blabels.packages | xargs dnf install -y
