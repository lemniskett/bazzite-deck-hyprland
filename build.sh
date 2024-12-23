#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

dnf5 install -y --setopt=install_weak_deps=False \
    hyprland \
    hyprpaper \
    swayidle \
    foot \
    waybar \
    nwg-drawer \
    mako \
    wob \
    grim \
    slurp \
    calcurse \
    fastfetch \
    stow \
    brightnessctl
