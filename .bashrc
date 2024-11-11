#
# /etc/bash.bashrc
#

# Sourced files
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi

. ~/.bash/git-prompt.sh
. ~/.bash/lscolors.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt config
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h \W $(__git_ps1 "(%s)")\$ '

case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac

# Custom aliases
alias ranger='source ranger ranger'
alias ls="ls --color=auto"
