#!/bin/bash

# Check if mise is installed
if ! command -v mise &>/dev/null; then
    echo "mise is not installed. Please run ./install-mise.sh first."
    exit 1
fi

# Install Ruby build dependencies
echo "Installing Ruby build dependencies..."
yay -S --noconfirm --needed base-devel gcc make openssl readline zlib libyaml libffi

# Install latest Ruby globally (mise use is idempotent)
echo "Installing Ruby..."
mise use -g ruby@latest

echo "Ruby installation complete!"
