#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Completions
. /usr/share/bash-completion/bash_completion

# Sourced files
. ~/.bash/git-prompt.sh
. ~/.bash/lscolors.sh

# Prompt config

# Prompt color tag format is \[\e[COLORm\], where COLOR
# is color code ,eg. 38;2;R;G;B - color code for 24bit color terminals.
# To signify end of color formatting use \e[0m

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h \W $(__git_ps1 "(%s)") \$ '

# Custom aliases
alias ranger='source ranger ranger'
alias ls="ls -F --color=auto"
