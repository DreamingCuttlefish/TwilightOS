#!/bin/bash

set -ouex pipefail

# Download mullvad rpm
# curl -o mullvad-client.rpm -OJL https://mullvad.net/download/app/rpm/latest
wget -P /tmp/mullvad-client.rpm https://mullvad.net/download/app/rpm/latest

rpm-ostree install /tmp/mullvad-client.rpm

