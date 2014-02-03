# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
# Node
export PATH="/usr/local/share/npm/bin:$PATH"
# Heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Cabal Path
export PATH="/Users/hendricius/.cabal/bin:$PATH"


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Misc exports
export EDITOR=/usr/local/bin/vim
export PAGER=less

# Autoloads
autoload -U colors
#autoload -U compinit compinit
#compinit bashcompletion
autoload -U zfinit
autoload -U zmv

# Allow linefeeds in quoted expressions
unsetopt cshjunkiequotes
# Don't save the current line in the history if it's the same as the line
# above
setopt histignoredups
setopt histignorespace # Don't save lines beginning with a space
setopt interactivecomments # allow comments in command lines
setopt noclobber # don't accidentally overwrite files with >
setopt extendedglob

# Auto completion
#source ~/.zsh_autocomp

#Useful shortcuts (not SO useful if you use vi-mode, but still quite handy)
typeset -g -A key
bindkey '^I' complete-word # complete on tab, leave expansion to _expand
#WORDCHARS=${WORDCHARS//[&=\/;!#%{]}
#WORDCHARS=${WORDCHARS//[&=\  ;!#%{]}
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
#bindkey -v
bindkey -e
bindkey '^?' backward-delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[4~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char

# Nicer GREP colors
export GREP_COLORS="fn=34:mc=01;30:ms=33:sl=21:cx=31"

autoload edit-command-line
zle -N edit-command-line

# Custom aliases
source ~/.zsh_aliases
#eval "$(rbenv init -)"
eval "$(rbenv init - zsh)"
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export TERM="xterm-256color"

# Config vars for other applications.
source ~/.app_config_vars
source ~/.local_zsh_aliases
