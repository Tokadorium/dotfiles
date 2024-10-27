#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# # Otherwise start tmux
# [[ -z "$TMUX" ]] && exec tmux

# PS1='[\u@\h \W] \$ '
PS1='[\u\[\e[2m\]@\[\e[0m\]\h \[\e[2m\]\W\[\e[0m\]] > '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
