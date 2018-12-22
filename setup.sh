#!/usr/bin/env bash

# Xcode command line tools
xcode-select --install

# VS Code extensions
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension editorconfig.editorconfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension ms-vscode.go
code --install-extension teabyii.ayu
code --install-extension esbenp.prettier-vscode

# NPM global modules
npm i -g eslint nodemon prettier pure-prompt trash-cli typescript

# macOS settings
defaults write com.apple.dock tilesize -int 36
defaults write com.apple.dock mru-spaces -bool false
