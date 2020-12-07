#! /usr/bin/bash

case `uname` in
  Darwin)
    # commands for OS X
    sudo cp zsh/zshrc /etc/zshrc
    echo "zshrc file copied for MacOS to /etc/zshrc"
  ;;
  Linux)
    # commands for Linux
    cp zsh/zshrc ~/.zshrc
    echo "zshrc file copied for linux to ~/.zshrc"
  ;;
esac