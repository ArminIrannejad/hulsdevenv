#!/usr/bin/env bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_DIR="${BASE_DIR}/.dotfiles"
TARGET_DIR="$HOME"

if ! command -v stow > /dev/null 2>&1; then
  echo "No stow no party"
  exit 1
fi

cd "$DOTFILES_DIR"

stow -v -t "$TARGET_DIR" nvim
stow -v -t "$TARGET_DIR" tmux
stow -v -t "$TARGET_DIR" zsh

echo "Welcome to dotfiles"

