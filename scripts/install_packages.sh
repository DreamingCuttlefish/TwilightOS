#!/bin/bash

set -ouex pipefail

# Download mullvad rpm
wget -P /tmp/mullvad-client.rpm https://mullvad.net/en/download/app/rpm/latest

rpm-ostree install /tmp/mullvad-client.rpm

