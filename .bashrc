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

# for docker
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="${USERPROFILE}\.docker\machine\machines\dev"
export DOCKER_MACHINE_NAME="dev"
export COMPOSE_CONVERT_WINDOWS_PATHS="true"
