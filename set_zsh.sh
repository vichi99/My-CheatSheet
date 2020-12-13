#!/usr/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
NC="\033[0m" # No Color

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
  echo -e "${GREEN}1/3 oh my zsh installed${NC}" || \
  echo -e "${RED}1/3 oh my zsh Not installed, probably already exists${NC}"

# update default zshrc file from oh-my-zsh by my settings &&
# append actual zshrc to local zshrc without duplicate
python3 shell/update.py && \
  echo -e "${GREEN}2/3 oh-my-zshrc updated by custom settings${NC}" || \
  echo -e "${RED}2/3 oh-my-zshrc Not updated by custom settings${NC}"

# actualizating shell
source ~/.zshrc && \
  echo -e "${GREEN}3/3 sourced successfully" || \
  echo -e "${RED}3/3 sourced not successfully"

echo "${RED}Do not forget on install (sudo)-> pip3 install percol${NC}"
