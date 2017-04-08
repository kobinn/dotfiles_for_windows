# Source global definitions
if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

# User specific aliases and functions
alias l='ls -ltrh'
alias la='ls -ltrah'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias view='vim -R'

# git completion and prompt setting
if [ -f $HOME/git-prompt.sh -a -f $HOME/git-completion.bash ]; then
  source $HOME/git-prompt.sh
  source $HOME/git-completion.bash
  PS1='\n[\t] \u@\h: \w\n\[\e[31;1m\]$(__git_ps1)\[\e[0m\] $ '
fi
