#####################################
# Python3 script will read ~/.zshrc file, then find keyword:
#   "plugins=()"
# or
#  plugins=(git
#           otherlugin)
# and replace with custom settings.
#
# USAGE:
#   python3 update_plugins.py
#   However, this script is using by parrent script for set my zsh.
#####################################
# Jan Vicha
# 2020
#####################################
from pathlib import Path

PATH_ZSHRC = Path.home() / ".zshrc"
ZSH_PLUGINS= """plugins=(
    git
    django
    docker
    pyenv
    percol
    timer
    zsh-syntax-highlighting
    zsh-autosuggestions
    )\n"""

def update_plugins():
    """
    Update oh-my-zsh setting key plugins' in ~/.zshrc
    """
    with open(PATH_ZSHRC, 'r') as zshrc_file:
        zshrc_lines = zshrc_file.readlines()
        
    is_end_line_plugins = True
    for index, line in enumerate(zshrc_lines):
        ## Replace plugins
        if "plugins=(" in line and "#" not in line[0:2]:
            if ")" in line:
                zshrc_lines[index]= ZSH_PLUGINS
            else:
                is_end_line_plugins = False
                zshrc_lines[index]= ""
        elif not is_end_line_plugins:
            if ")" in line:
                zshrc_lines[index]= ZSH_PLUGINS
                is_end_line_plugins = True
            else:
                zshrc_lines[index]= ""

    with open(PATH_ZSHRC, 'w') as zshrc_file:
        zshrc_file.writelines(zshrc_lines)


if __name__ == "__main__":
    update_plugins()