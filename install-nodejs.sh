#!/bin/bash

# Check if mise is installed
if ! command -v mise &>/dev/null; then
    echo "mise is not installed. Please run ./install-mise.sh first."
    exit 1
fi

# Install nodejs build dependencies
yay -S --noconfirm --needed base-devel openssl zlib

# Install Node.js LTS globally (mise use is idempotent)
mise use -g node@lts
