# zshrc config file for UNIX and MacOS, Jan Valosek

# OS specific commands are in case below
case `uname` in
  Darwin)
    # commands for OS X
    # Default prompt
    PS1='%F{green}%n@%m%f:%F{blue}%~$%f '
    alias ls='CLICOLOR_FORCE=1 ls -G'
    # nano from homebrew
    alias nano='/usr/local/bin/nano'
  ;;
  Linux)
    # commands for Linux
    # Default prompt - color codes - https://jonasjacek.github.io/colors/
    PS1='%F{76}%n@%m%f:%F{74}%~$%f '
    alias ls='ls --color=always'
    # Permissions
    umask 0002
  ;;
esac

alias ll='ls -lath --color=auto'
alias lh='ls -lath | head -10'
alias lt='ls -lath | tail -10'
alias grep='grep --color=always'

# count items in directory
alias countf='ls -1 $1 | wc -l'

# Use modern completion system
autoload -Uz compinit
compinit

# Uncomment the following line to enable command auto-correction
setopt correct

# Auto cd
setopt autocd

# Shared history between terminals
setopt sharehistory
# History substitution (replacement of !!)
setopt HIST_VERIFY

# Case insensitive globbing
setopt NO_CASE_GLOB

## percol -> add better history search by ctrl+r
## https://github.com/mooz/percol#zsh-history-search
function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi

