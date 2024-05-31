#!/bin/bash

set -ouex pipefail

# Download mullvad rpm
# curl -o mullvad-client.rpm -OJL https://mullvad.net/download/app/rpm/latest
# wget -P /tmp/mullvad-client.rpm https://mullvad.net/download/app/rpm/latest
mkdir /etc
mkdir /etc/yum.repos.d
curl -o /etc/yum.repos.d/mullvad.repo https://repository.mullvad.net/rpm/stable/mullvad.repo

# rpm-ostree install /tmp/mullvad-client.rpm
rpm-ostree install mullvad-vpn

