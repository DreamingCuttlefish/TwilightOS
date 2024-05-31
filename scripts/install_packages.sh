#!/bin/bash

set -ouex pipefail

echo "Creating directories..."
mkdir -p "/opt/Mullvad VPN/resources"
mkdir -p "/var/log/mullvad-vpn"

echo "Downloading Mullvad repository file..."
curl -o /etc/yum.repos.d/mullvad.repo https://repository.mullvad.net/rpm/stable/mullvad.repo

echo "Installing Mullvad VPN package..."
rpm-ostree install mullvad-vpn
