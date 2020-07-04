#!/usr/bin/env bash

# Xcode command line tools
xcode-select --install

# VS Code extensions
code --install-extension editorconfig.editorconfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension ms-vscode.go
code --install-extension teabyii.ayu
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension mikestead.dotenv

# NPM global modules
npm i -g eslint nodemon prettier pure-prompt trash-cli typescript

# PIP
pip3 install pipenv

# MACOS SETTINGS
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
