#! /usr/bin/bash

sudo cp fish/config.fish ~/.config/fish/
sudo mkdir -p ~/.config/fish/conf.d/
sudo cp fish/fish_aliases_prompt.fish ~/.config/fish/conf.d/
sudo cp fish/fish_command_timer.fish ~/.config/fish/conf.d/
sudo cp fish/fish_prompt.fish ~/.config/fish/functions/