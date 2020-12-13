
from pathlib import Path

PATH_ZSHRC = Path.home() / ".zshrc"
ZSH_THEME = 'ZSH_THEME="candy"\n'
ZSH_PLUGINS= """plugins=(
	git
	django
	docker
	docker-compose
	yarn
	npm
	pyenv
	percol
	timer
	)\n"""

def update_zshrc():
    """
    Update oh-my-zsh setting key 'ZSH_THEME' and 'plugins' in ~/.zshrc
    """
    with open(PATH_ZSHRC, 'r') as zshrc_file:
        zshrc_lines = zshrc_file.readlines()
        
    is_end_line_plugins = True
    for index, line in enumerate(zshrc_lines):
        ## Replace Theme
        if "ZSH_THEME=" in line and "#" not in line[0:2]:
            zshrc_lines[index]= ZSH_THEME


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


def append_zshrc():
    """
    Merge original ~/.zshrc file and my custom zshrc file withou duplicated
    """

    # Make original file list
    with open(PATH_ZSHRC, 'r') as zshrc_file:
        zshrc_orig = zshrc_file.readlines()

    # Make custom file list
    with open("shell/zshrc", 'r') as zshrc_file:
        zshrc_custom = zshrc_file.readlines()

    # Append custom lines to original list
    for line in zshrc_custom:
        if line not in zshrc_orig or line == "\n":
            zshrc_orig.append(line)

    # Remove last 'empty' items from original list 
    while True:
        if zshrc_orig[-1] == "\n":
            del zshrc_orig[-1]
        else:
            break

    # write original list to zshrc path
    with open(PATH_ZSHRC, 'w') as zshrc_file:
        zshrc_file.writelines(zshrc_orig)

if __name__ == "__main__":
    update_zshrc()
    append_zshrc()