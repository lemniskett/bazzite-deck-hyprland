#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

dnf5 install -y --setopt=install_weak_deps=False \
    xdg-desktop-portal-hyprland \
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
    stow \
    brightnessctl \
    seahorse \
    NetworkManager-tui \
    gnome-extensions-app \
    papirus-icon-theme \
    adw-gtk3-theme
