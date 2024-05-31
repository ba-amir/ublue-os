#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install screen
rpm-ostree install syncthing
rpm-ostree install alacritty
rpm-ostree install zsh
rpm-ostree install river 
rpm-ostree install waybar
rpm-ostree install dunst
rpm-ostree install fuzzel
rpm-ostree install restic
rpm-ostree install rclone

# this would install a package from rpmfusion
# rpm-ostree install vlc
rpm-ostree install VirtualBox
#### Example for enabling a System Unit File

systemctl enable podman.socket
