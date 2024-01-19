#!/bin/bash

#==========================================================
# CONFIGURATION
#==========================================================
RELEASE="2024.01.01"
MIRROR="https://mirror.csclub.uwaterloo.ca/archlinux/iso"
MOUNT="mnt"


#==========================================================
# CONSTANTS
#==========================================================
ARCH_ISO="archlinux-$RELEASE-x86_64.iso"
ARCH_ISO_URL="$MIRROR/$RELEASE/$ARCH_ISO"


#==========================================================
# BUILD
#==========================================================

# Download the Arch ISO and signature
echo "Downloading $ARCH_ISO . . ."
curl -# $ARCH_ISO_URL > $ARCH_ISO

# Mount the ISO
mkdir $MOUNT
mount $ARCH_ISO $MOUNT
