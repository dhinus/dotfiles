# load bashrc
test -f $HOME/.bashrc && source $HOME/.bashrc

export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=vim
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/heroku/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"

export PS1='\[\e[1;31m\]\h\[\e[m\] \[\e[0;32m\]\W\[\e[m\]\[\e[0;33m\]$(__git_ps1 " (%s)") \[\e[0;32m\]» \[\e[m\]'

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'

alias be='bundle exec'

# homebrew-installed bash_completion
test -f /usr/local/etc/bash_completion && source /usr/local/etc/bash_completion

# bash completion for grunt
test -x /usr/local/bin/grunt && eval "$(grunt --completion=bash)"

# rbenv
test -x /usr/local/bin/rbenv && eval "$(rbenv init -)"
