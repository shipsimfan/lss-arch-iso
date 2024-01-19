#!/bin/bash

set -e

# Clone the installer
rm -rf lss-arch
git clone https://github.com/shipsimfan/lss-arch

# Build the installer
cd lss-arch
cargo build --release
cd ..

# Copy the installer into the filesystem
cp lss-arch/target/release/lss-arch profile/airootfs/usr/local/bin/lss-arch

# Build the ISO
sudo mkarchiso -v profile
sudo rm -rf work