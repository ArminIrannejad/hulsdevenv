#!/usr/bin/env bash

version="v0.10.2"
if [ ! -z "$NVIM_VERSION" ]; then
    version="$NVIM_VERSION"
fi

echo "version: \"$version\""

NEOVIM_SRC="$HOME/.local/src/neovim"

if [ ! -d "$NEOVIM_SRC" ]; then
    mkdir -p "$HOME/.local/src"
    git clone https://github.com/neovim/neovim.git "$NEOVIM_SRC"
fi

sudo apt -y install cmake gettext lua5.1 liblua5.1-0-dev

git -C "$NEOVIM_SRC" fetch --all
git -C "$NEOVIM_SRC" checkout "$version"

make -C "$NEOVIM_SRC" clean
make -C "$NEOVIM_SRC" CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make -C "$NEOVIM_SRC" install

LUAROCKS_VERSION="3.11.1"
wget "https://luarocks.org/releases/luarocks-${LUAROCKS_VERSION}.tar.gz"
tar zxpf "luarocks-${LUAROCKS_VERSION}.tar.gz"
cd "luarocks-${LUAROCKS_VERSION}"
./configure && make && sudo make install
sudo luarocks install luasocket
luarocks install luacheck

cd -

LAZY_PATH="$HOME/.local/share/nvim/lazy/lazy.nvim"
if [ ! -d "$LAZY_PATH" ]; then
    mkdir -p "$(dirname "$LAZY_PATH")"
    git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable "$LAZY_PATH"
fi
