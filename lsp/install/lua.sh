#!/bin/zsh
brew install ninja
cd ~
mkdir -p ~/lsp
cd ~/lsp
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --init --recursive
# sudo apt install ninja-build

cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
