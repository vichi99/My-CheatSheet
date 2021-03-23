#!/bin/bash
#####################################
# Shell script will install my base dependencies.
#
# USAGE:
#   use from current directory !
#   . ./set.sh
#####################################
# Jan Vicha
# 2021
#####################################


sudo apt update
sudo apt install -y curl git vim python3-pip
git config --global user.name ""
git config --global user.email ""
# zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt-get install -y percol

# pyenv 
sudo apt-get install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv


