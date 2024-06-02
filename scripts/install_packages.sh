#!/bin/bash

set -ouex pipefail

echo "Creating directories..."
#mkdir -p "/opt/Mullvad VPN/resources"
mkdir -p "/var/log/mullvad-vpn"

echo "Downloading repository files..."
curl -Lo /etc/yum.repos.d/mullvad.repo https://repository.mullvad.net/rpm/stable/mullvad.repo
curl -Lo /etc/yum.repos.d/jhyub-supergfxctl-plasmoid-fedora-40.repo https://copr.fedorainfracloud.org/coprs/jhyub/supergfxctl-plasmoid/repo/fedora-40/jhyub-supergfxctl-plasmoid-fedora-40.repo

echo "Installing Mullvad VPN package..."
rpm-ostree install mullvad-vpn
rpm-ostree install supergfxctl-plasmoid
