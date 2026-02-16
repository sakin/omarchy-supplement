#!/bin/bash

# Install mise if not already installed
if ! command -v mise &>/dev/null; then
    yay -S --noconfirm --needed mise
fi
