#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Xcode command line tools (idempotent: only triggers installer if missing)
if ! xcode-select -p >/dev/null 2>&1; then
  xcode-select --install
  echo "Re-run this script once the Xcode CLT installer finishes."
  exit 0
fi

# Homebrew (install if missing, then load shellenv for this script)
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm + Node LTS — needed because Brewfile's `npm "..."` entries shell out to `npm install -g`
export NVM_DIR="$HOME/.nvm"
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  # PROFILE=/dev/null prevents the installer from appending nvm-sourcing lines
  # to ~/.zshrc (which is symlinked into this repo by stow).
  curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.5/install.sh | PROFILE=/dev/null bash
fi
# shellcheck source=/dev/null
. "$NVM_DIR/nvm.sh"
nvm install --lts --no-progress >/dev/null
nvm use --lts >/dev/null
nvm alias default lts/* >/dev/null

# All packages (brew, cask, vscode extensions, npm globals) come from Brewfile
brew bundle --file="$DOTFILES/Brewfile"

# macOS defaults
# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36
# Don't automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Apply Dock changes immediately
killall Dock 2>/dev/null || true

# Stow config modules into $HOME
stow -d "$DOTFILES" -t "$HOME" -v bat ghostty git lazygit nvim tmux zsh

# Git identity (kept out of the repo via ~/.gitconfig.local, included by ~/.gitconfig)
if [ ! -f "$HOME/.gitconfig.local" ]; then
  read -r -p "Git user.name: " git_name
  read -r -p "Git user.email: " git_email
  if [ -z "$git_name" ] || [ -z "$git_email" ]; then
    echo "Git name and email are required; aborting." >&2
    exit 1
  fi
  umask 077
  cat >"$HOME/.gitconfig.local" <<EOF
[user]
	name = $git_name
	email = $git_email
EOF
fi

# tmux plugin manager (required by ~/.tmux.conf)
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# Build bat's theme cache so the shipped tokyonight_night theme is usable
bat cache --build >/dev/null
