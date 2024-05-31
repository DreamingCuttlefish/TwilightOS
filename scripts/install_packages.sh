#!/bin/bash

set -ouex pipefail

mkdir -p /opt/Mullvad\ VPN/resources
mkdir -p /var/log/mullvad-vpn 

curl -o /etc/yum.repos.d/mullvad.repo https://repository.mullvad.net/rpm/stable/mullvad.repo

rpm-ostree install mullvad-vpn

