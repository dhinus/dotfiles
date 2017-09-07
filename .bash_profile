# load bashrc
test -f $HOME/.bashrc && source $HOME/.bashrc

export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=vim
export PATH="/usr/local/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"

test -f /usr/share/git/completion/git-prompt.sh && source /usr/share/git/completion/git-prompt.sh
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PS1='\[\e[1;31m\]\h\[\e[m\] \[\e[0;32m\]\W\[\e[m\]\[\e[0;33m\]$(type -t __git_ps1 >/dev/null && __git_ps1) \[\e[0;32m\]\$ \[\e[m\]'

# Prevent closing the shell pressing C-d by mistake
set -o ignoreeof

alias be='bundle exec'
alias flow='node_modules/.bin/flow'

# homebrew-installed bash_completion
test -f /usr/local/etc/bash_completion && source /usr/local/etc/bash_completion

# bash completion for grunt
test -x /usr/local/bin/grunt && eval "$(grunt --completion=bash)"

# emulate pbcopy and pbpaste on Linux
if [[ -x /usr/bin/xsel ]]; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi
