#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sourced files
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi
. ~/.bash/git-prompt.sh
. ~/.bash/lscolors.sh

# Prompt config

# Prompt color tag format is \[\e[COLORm\], where COLOR
# is color code ,eg. 38;2;R;G;B - color code for 24bit color terminals.
# To signify end of color formatting use \e[0m

export GIT_PS1_SHOWDIRTYSTATE=1
# export PS1='\u@\h \[\e[38;2;189;147;249m\]\W\e[0m $(__git_ps1 "(%s) ")\$ '
export PS1='\u@\h \[\e[34;2m\]\W\e[0m $(__git_ps1 "(%s) ")\$ '

# Custom aliases
alias ranger='source ranger ranger'
alias ls="ls -F --color=auto"
