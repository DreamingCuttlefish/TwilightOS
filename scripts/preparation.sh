#!/bin/bash

echo "Setting up symlinks for /opt"

mkdir -p "/var/opt"
mkdir -p "/usr/lib/opt"

ln -s "/var/opt" "/opt"

