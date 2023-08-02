export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=vim
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"

if [[ -f /usr/share/git/completion/git-prompt.sh ]]; then
  source /usr/share/git/completion/git-prompt.sh
elif [[ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
elif [[ -f /opt/homebrew/etc/bash_completion.d/git-prompt.sh ]]; then
  source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
fi
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PS1='\[\e[0;32m\]\W\[\e[m\]\[\e[0;33m\]$(type -t __git_ps1 >/dev/null && __git_ps1) \[\e[0;32m\]\$ \[\e[m\]'

# Prevent closing the shell pressing C-d by mistake
set -o ignoreeof

alias be='bundle exec'
alias flow='node_modules/.bin/flow'

# homebrew-installed bash_completion
test -f /usr/local/etc/bash_completion && source /usr/local/etc/bash_completion
test -f /opt/homebrew/etc/bash_completion && source /opt/homebrew/etc/bash_completion

# emulate pbcopy and pbpaste on Linux
if [[ -x /usr/bin/xsel ]]; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

# rbenv shell integration
if [[ -x /usr/local/bin/rbenv ]]; then
  eval "$(/usr/local/bin/rbenv init -)"
elif [[ -x /opt/homebrew/bin/rbenv ]]; then
  eval "$(/opt/homebrew/bin/rbenv init -)"
fi

# direnv
if [[ -x /usr/local/bin/direnv ]]; then
  eval "$(direnv hook bash)"
fi

# load bashrc
test -f $HOME/.bashrc && source $HOME/.bashrc
