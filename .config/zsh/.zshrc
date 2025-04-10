#!/bin/sh
export \
    PS1="%~ > " \
    HISTSIZE="10000000" \
    SAVEHIST="10000000" \
    HISTCONTROL="ignoreboth" \
    HISTFILE="$HOME/.local/share/history" \

autoload -U colors && colors
source "$HOME/.config/shell/aliasrc"
bindkey -s '^h' '^uxdotool type "$(cat "$HISTFILE" | fzf -i)"\n'
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete
zstyle ':completion:*' menu select
unsetopt prompt_sp
bindkey -s "^f" '^ucd "$(find . -type d | fzf -i)"\n'
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
