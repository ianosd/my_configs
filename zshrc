# Lines configured by zsh-newuser-install
unsetopt beep
bindkey -v
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ion/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

typeset -U path
path=(~/.local/bin $path[@])
export EDITOR="vim"

alias prettyjson='python -m json.tool'

export PROMPT="%n@%m %F{blue}%1/%f# "
