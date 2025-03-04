#!/usr/bin/env bash

# Xcode command line tools
xcode-select --install

# NPM global modules
npm i -g eslint nodemon prettier trash-cli typescript

# PIP
pip3 install pipenv

# MACOS SETTINGS
# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

stow -t ~/ alacritty ghostty lazygit nvim tmux wezterm zsh
