#!/bin/bash

set -ouex pipefail

# Download mullvad rpm
curl -o /tmp/mullvad-client.rpm https://mullvad.net/en/download/app/rpm/latest

rpm-ostree install /tmp/mullvad-client.rpm

