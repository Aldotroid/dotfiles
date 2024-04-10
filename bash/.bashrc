#!/bin/bash

# https://bash-prompt-generator.org/
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")';
PS1='\[\e[2m\][\A] \w\[\e[0m\]${PS1_CMD1}\[\e[38;5;147m\]❯\[\e[0m\] '

[[ $- != *i* ]] && return

for file in "$HOME"/.bashrc.d/*.sh; do
  [[ -e "$file" ]] && source "$file"
done

[[ -f "$HOME"/.localrc ]] && source "$HOME"/.localrc
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/bashrc"
